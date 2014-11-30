package main

import (
	"encoding/binary"
	"fmt"

	"rsc.io/x86/x86asm"
)

// Darwin 14.0.0 (Yosemite)
//
// Yosemite is like Mavericks but the code at the end of the function is
// an inlined task_vtimer_clear, and the two branches matching the top
// pattern are large enough that a short jump doesn't work.
// Instead of continuing to work hard to fit the new code into the hole
// where the old code was, disassemble the entire function and rewrite
// it in place. Removing NOPs that have been inserted for alignment
// is sufficient to make room for the longer code adjustments.

var fix_14_0_0 = fix{
	"14.0.0",
	current_thread_pop,
	[]*pattern{bsd_ast_14_0_0},
}

var fix_14_0_0_fixed = fix{
	"14.0.0 fixed",
	current_thread_pop,
	[]*pattern{bsd_ast_14_0_0_fixed},
}

var bsd_ast_14_0_0 = mustCompile(`
    * 0x31 0xf6                                     // 0 xor %esi, %esi
    0x31 0xd2                                       // 2 xor %edx, %edx
    0x31 0xc9                                       // 4 xor %ecx, %ecx
    0x41 0xb8 * 0x1a/0xfe 0x00 0x00 0x00            // 6 mov $0x1a, %r8d [or $0x1b]
    0x4c 0x89 0xff                                  // 12 mov %r15, %rdi
    0xe8 0x00/0x00 0x00/0x00 0x00/0x00 0x00/0x00 *  // 15 call psignal_internal
`)

var bsd_ast_14_0_0_fixed = mustCompile(`
    * 0x31 0xf6                                     // 0 xor %esi, %esi
    0x65 0x48 0x8b 0x14 0x25 0x08 0x00 0x00 0x00    // 2 mov %gs:0x8, %rdx
    0xb9 0x04 0x00 0x00 0x00                        // 4 mov $0x4, %ecx
    0x41 0xb8 * 0x1a/0xfe 0x00 0x00 0x00            // 6 mov $0x1a, %r8d [or $0x1b]
    0x31 0xff                                       // 12 mov %r15, %rdi
    0xe8 0x00/0x00 0x00/0x00 0x00/0x00 0x00/0x00 *  // 15 call psignal_internal
`)

type Inst struct {
	x86asm.Inst
	Enc   []byte
	OldPC int
	NewPC int
}

func (f *fix) apply14(tlsOff uint32, bsd_ast []byte, timers [][]int) ([]byte, error) {
	code := bsd_ast
	var prog []Inst
	n := 0
	nnop := 0
	pc0 := timers[0][0]
	pc1 := timers[0][1]

	pcmap := map[int]int{}

	var edx, ecx, rdi int
	for len(code) > 0 {
		xi, err := x86asm.Decode(code, 64)
		if err != nil {
			return nil, fmt.Errorf("decoding bsd_ast: %v", err)
		}
		prog = append(prog, Inst{Inst: xi, Enc: code[:xi.Len], OldPC: len(bsd_ast) - len(code)})
		code = code[xi.Len:]
		inst := &prog[len(prog)-1]
		if inst.Op == x86asm.NOP {
			nnop += inst.Len
			inst.Enc = nil
		}
		if pc0 <= inst.OldPC && inst.OldPC < pc0+15 || pc1 <= inst.OldPC && inst.OldPC < pc1+15 {
			if inst.Op == x86asm.XOR && inst.Args[0] == x86asm.EDX && inst.Args[1] == x86asm.EDX {
				edx++
				inst.Enc = []byte{0x65, 0x48, 0x8b, 0x14, 0x25, 0x08, 0x00, 0x00, 0x00} // mov %gs:0x8,%rdx
			}
			if inst.Op == x86asm.XOR && inst.Args[0] == x86asm.ECX && inst.Args[1] == x86asm.ECX {
				ecx++
				inst.Enc = []byte{0xb9, 0x04, 0x00, 0x00, 0x00} // mov $4, %ecx
			}
			if inst.Op == x86asm.MOV && inst.Args[0] == x86asm.RDI && inst.Args[1] == x86asm.R15 { // NOTE: inst.Args uses Intel order
				rdi++
				inst.Enc = []byte{0x31, 0xff}
			}
		}
		inst.NewPC = n
		pcmap[inst.OldPC] = inst.NewPC
		n += len(inst.Enc)
	}

	if edx != 2 || ecx != 2 || rdi != 2 {
		// Should be impossible - the patterns matched.
		return nil, fmt.Errorf("decoding bsd_ast did not find matched instructions")
	}

	// Update PC-relative references.
	var newcode []byte
	for i := range prog {
		inst := &prog[i]
		switch inst.PCRel {
		case 0:
			// ok
		case 1:
			addr := inst.OldPC + inst.PCRelOff + 1 + int(int8(inst.Enc[inst.PCRelOff]))
			if 0 <= addr && addr < len(bsd_ast) {
				new, ok := pcmap[addr]
				if !ok {
					return nil, fmt.Errorf("found PC-relative offset to unaligned instruction")
				}
				addr = new
			}
			newdelta := addr - (inst.NewPC + inst.PCRelOff + 1)
			if int(int8(newdelta)) != newdelta {
				return nil, fmt.Errorf("unable to expand 8-bit PC-relative offset to 32-bit PC-relative offset")
			}
			inst.Enc[inst.PCRelOff] = uint8(newdelta)
		case 4:
			addr := int64(inst.OldPC+inst.PCRelOff+4) + int64(int32(binary.LittleEndian.Uint32(inst.Enc[inst.PCRelOff:])))
			if 0 <= addr && addr < int64(len(bsd_ast)) {
				new, ok := pcmap[int(addr)]
				if !ok {
					return nil, fmt.Errorf("found PC-relative offset to unaligned instruction")
				}
				addr = int64(new)
			}
			newdelta := addr - int64(inst.NewPC+inst.PCRelOff+4)
			if int64(int32(newdelta)) != newdelta {
				return nil, fmt.Errorf("unable to encode 64-bit PC-relative offset")
			}
			binary.LittleEndian.PutUint32(inst.Enc[inst.PCRelOff:], uint32(newdelta))
		}
		newcode = append(newcode, inst.Enc...)
	}

	for len(newcode) < len(bsd_ast) {
		newcode = append(newcode, 0x90)
	}

	return newcode, nil
}
