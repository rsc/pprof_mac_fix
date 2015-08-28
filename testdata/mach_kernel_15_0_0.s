_version:
	.ascii "Darwin Kernel Version 15.0.0: Mon Aug 10 17:09:09 PDT 2015; root:xnu-3247.1.99~3/RELEASE_X86_64"

.globl _main
_main:
	ret

.globl _psignal_internal
_psignal_internal:
	ret

.globl _task_vtimer_clear
_task_vtimer_clear:
	ret

.globl _task_vtimer_set
_task_vtimer_set:
	ret
.globl OSCompareAndSwap
OSCompareAndSwap:
	ret

.globl addupc_task
addupc_task:
	ret

.globl bsdinit_task
bsdinit_task:
	ret

.globl current_proc
current_proc:
	ret

.globl get_useraddr
get_useraddr:
	ret

.globl hw_lock_unlock
hw_lock_unlock:
	ret

.globl issignal_locked
issignal_locked:
	ret

.globl itimerdecr
itimerdecr:
	ret

.globl lck_mtx_lock
lck_mtx_lock:
	ret

.globl lck_mtx_unlock
lck_mtx_unlock:
	ret

.globl postsig_locked
postsig_locked:
	ret

.globl proc_findinternal
proc_findinternal:
	ret

.globl proc_find
proc_find:
	ret

.globl proc_rele
proc_rele:
	ret

.globl task_resume_internal
task_resume_internal:
	ret

.globl task_suspend_internal
task_suspend_internal:
	ret

.globl task_vtimer_set
task_vtimer_set:
	ret

.globl usimple_lock
usimple_lock:
	ret

.globl _current_thread
_current_thread:
//    0xffffff80003d2050 <+0>:     push   %rbp
        .byte 0x55;
//    0xffffff80003d2051 <+1>:     mov    %rsp,%rbp
        .byte 0x48; .byte 0x89; .byte 0xe5;
//    0xffffff80003d2054 <+4>:     mov    %gs:0x8,%rax
        .byte 0x65; .byte 0x48; .byte 0x8b; .byte 0x04; .byte 0x25; .byte 0x08; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80003d205d <+13>:    pop    %rbp
        .byte 0x5d;
//    0xffffff80003d205e <+14>:    retq
        .byte 0xc3;
//    0xffffff80003d205f <+15>:    nop
        .byte 0x90;

.globl _bsd_ast
.align 16
_bsd_ast:
//    0xffffff80007b7740 <+0>:     push   %rbp
        .byte 0x55;
//    0xffffff80007b7741 <+1>:     mov    %rsp,%rbp
        .byte 0x48; .byte 0x89; .byte 0xe5;
//    0xffffff80007b7744 <+4>:     push   %r15
        .byte 0x41; .byte 0x57;
//    0xffffff80007b7746 <+6>:     push   %r14
        .byte 0x41; .byte 0x56;
//    0xffffff80007b7748 <+8>:     push   %r13
        .byte 0x41; .byte 0x55;
//    0xffffff80007b774a <+10>:    push   %r12
        .byte 0x41; .byte 0x54;
//    0xffffff80007b774c <+12>:    push   %rbx
        .byte 0x53;
//    0xffffff80007b774d <+13>:    push   %rax
        .byte 0x50;
//    0xffffff80007b774e <+14>:    mov    %rdi,%r15
        .byte 0x49; .byte 0x89; .byte 0xff;
//    0xffffff80007b7751 <+17>:    callq  0xffffff80008383b0 <current_proc>
        call current_proc
//    0xffffff80007b7756 <+22>:    mov    %rax,%r14
        .byte 0x49; .byte 0x89; .byte 0xc6;
//    0xffffff80007b7759 <+25>:    test   %r14,%r14
        .byte 0x4d; .byte 0x85; .byte 0xf6;
//    0xffffff80007b775c <+28>:    je     0xffffff80007b7be1 <bsd_ast+1185>
        .byte 0x0f; .byte 0x84; .byte 0x7f; .byte 0x04; .byte 0x00; .byte 0x00;
//    0xffffff80007b7762 <+34>:    mov    %r14,%r12
        .byte 0x4d; .byte 0x89; .byte 0xf4;
//    0xffffff80007b7765 <+37>:    mov    0x348(%r15),%rax
        .byte 0x49; .byte 0x8b; .byte 0x87; .byte 0x48; .byte 0x03; .byte 0x00; .byte 0x00;
//    0xffffff80007b776c <+44>:    mov    %rax,-0x30(%rbp)
        .byte 0x48; .byte 0x89; .byte 0x45; .byte 0xd0;
//    0xffffff80007b7770 <+48>:    mov    $0x8020,%eax
        .byte 0xb8; .byte 0x20; .byte 0x80; .byte 0x00; .byte 0x00;
//    0xffffff80007b7775 <+53>:    and    0x160(%r12),%eax
        .byte 0x41; .byte 0x23; .byte 0x84; .byte 0x24; .byte 0x60; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b777d <+61>:    cmp    $0x8020,%eax
        .byte 0x3d; .byte 0x20; .byte 0x80; .byte 0x00; .byte 0x00;
//    0xffffff80007b7782 <+66>:    jne    0xffffff80007b77a6 <bsd_ast+102>
        .byte 0x75; .byte 0x22;
//    0xffffff80007b7784 <+68>:    lea    0x160(%r14),%rbx
        .byte 0x49; .byte 0x8d; .byte 0x9e; .byte 0x60; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b778b <+75>:    callq  0xffffff80003d4a10 <get_useraddr>
        call get_useraddr
//    0xffffff80007b7790 <+80>:    mov    %eax,%esi
        .byte 0x89; .byte 0xc6;
//    0xffffff80007b7792 <+82>:    mov    $0x1,%edx
        .byte 0xba; .byte 0x01; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7797 <+87>:    mov    %r12,%rdi
        .byte 0x4c; .byte 0x89; .byte 0xe7;
//    0xffffff80007b779a <+90>:    callq  0xffffff80007c9750 <addupc_task>
        call addupc_task
//    0xffffff80007b779f <+95>:    lock andl $0xffff7fff,(%rbx)
        .byte 0xf0; .byte 0x81; .byte 0x23; .byte 0xff; .byte 0x7f; .byte 0xff; .byte 0xff;
//    0xffffff80007b77a6 <+102>:   mov    $0xffffffff,%r13d
        .byte 0x41; .byte 0xbd; .byte 0xff; .byte 0xff; .byte 0xff; .byte 0xff;
//    0xffffff80007b77ac <+108>:   cmpq   $0x0,0x1c8(%r12)
        .byte 0x49; .byte 0x83; .byte 0xbc; .byte 0x24; .byte 0xc8; .byte 0x01; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b77b5 <+117>:   jne    0xffffff80007b77c6 <bsd_ast+134>
        .byte 0x75; .byte 0x0f;
//    0xffffff80007b77b7 <+119>:   cmpl   $0x0,0x1d0(%r12)
        .byte 0x41; .byte 0x83; .byte 0xbc; .byte 0x24; .byte 0xd0; .byte 0x01; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b77c0 <+128>:   je     0xffffff80007b7889 <bsd_ast+329>
        .byte 0x0f; .byte 0x84; .byte 0xc3; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b77c6 <+134>:   lea    0x1b8(%r14),%rsi
        .byte 0x49; .byte 0x8d; .byte 0xb6; .byte 0xb8; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b77cd <+141>:   mov    %gs:0x8,%rdx
        .byte 0x65; .byte 0x48; .byte 0x8b; .byte 0x14; .byte 0x25; .byte 0x08; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b77d6 <+150>:   cmpl   $0x0,0x1b4(%rdx)
        .byte 0x83; .byte 0xba; .byte 0xb4; .byte 0x01; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b77dd <+157>:   mov    0x1d8(%rdx),%rax
        .byte 0x48; .byte 0x8b; .byte 0x82; .byte 0xd8; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b77e4 <+164>:   je     0xffffff80007b77ef <bsd_ast+175>
        .byte 0x74; .byte 0x09;
//    0xffffff80007b77e6 <+166>:   mov    0x1c0(%rdx),%rcx
        .byte 0x48; .byte 0x8b; .byte 0x8a; .byte 0xc0; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b77ed <+173>:   jmp    0xffffff80007b77f6 <bsd_ast+182>
        .byte 0xeb; .byte 0x07;
//    0xffffff80007b77ef <+175>:   mov    0x150(%rdx),%rcx
        .byte 0x48; .byte 0x8b; .byte 0x8a; .byte 0x50; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b77f6 <+182>:   mov    %rcx,0x1d8(%rdx)
        .byte 0x48; .byte 0x89; .byte 0x8a; .byte 0xd8; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b77fd <+189>:   sub    %eax,%ecx
        .byte 0x29; .byte 0xc1;
//    0xffffff80007b77ff <+191>:   and    %r13,%rcx
        .byte 0x4c; .byte 0x21; .byte 0xe9;
//    0xffffff80007b7802 <+194>:   mov    %rcx,%rax
        .byte 0x48; .byte 0x89; .byte 0xc8;
//    0xffffff80007b7805 <+197>:   shr    $0x9,%rax
        .byte 0x48; .byte 0xc1; .byte 0xe8; .byte 0x09;
//    0xffffff80007b7809 <+201>:   movabs $0x44b82fa09b5a53,%rdx
        .byte 0x48; .byte 0xba; .byte 0x53; .byte 0x5a; .byte 0x9b; .byte 0xa0; .byte 0x2f; .byte 0xb8; .byte 0x44; .byte 0x00;
//    0xffffff80007b7813 <+211>:   mul    %rdx
        .byte 0x48; .byte 0xf7; .byte 0xe2;
//    0xffffff80007b7816 <+214>:   shr    $0xb,%rdx
        .byte 0x48; .byte 0xc1; .byte 0xea; .byte 0x0b;
//    0xffffff80007b781a <+218>:   imul   $0x3b9aca00,%rdx,%rax
        .byte 0x48; .byte 0x69; .byte 0xc2; .byte 0x00; .byte 0xca; .byte 0x9a; .byte 0x3b;
//    0xffffff80007b7821 <+225>:   sub    %rax,%rcx
        .byte 0x48; .byte 0x29; .byte 0xc1;
//    0xffffff80007b7824 <+228>:   shr    $0x3,%rcx
        .byte 0x48; .byte 0xc1; .byte 0xe9; .byte 0x03;
//    0xffffff80007b7828 <+232>:   movabs $0x20c49ba5e353f7cf,%rdx
        .byte 0x48; .byte 0xba; .byte 0xcf; .byte 0xf7; .byte 0x53; .byte 0xe3; .byte 0xa5; .byte 0x9b; .byte 0xc4; .byte 0x20;
//    0xffffff80007b7832 <+242>:   mov    %rcx,%rax
        .byte 0x48; .byte 0x89; .byte 0xc8;
//    0xffffff80007b7835 <+245>:   mul    %rdx
        .byte 0x48; .byte 0xf7; .byte 0xe2;
//    0xffffff80007b7838 <+248>:   shr    $0x4,%rdx
        .byte 0x48; .byte 0xc1; .byte 0xea; .byte 0x04;
//    0xffffff80007b783c <+252>:   mov    %r12,%rdi
        .byte 0x4c; .byte 0x89; .byte 0xe7;
//    0xffffff80007b783f <+255>:   callq  0xffffff80007c4e10 <itimerdecr>
        call itimerdecr
//    0xffffff80007b7844 <+260>:   test   %eax,%eax
        .byte 0x85; .byte 0xc0;
//    0xffffff80007b7846 <+262>:   jne    0xffffff80007b7889 <bsd_ast+329>
        .byte 0x75; .byte 0x41;
//    0xffffff80007b7848 <+264>:   cmpq   $0x0,0x1c8(%r12)
        .byte 0x49; .byte 0x83; .byte 0xbc; .byte 0x24; .byte 0xc8; .byte 0x01; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7851 <+273>:   jne    0xffffff80007b7862 <bsd_ast+290>
        .byte 0x75; .byte 0x0f;
//    0xffffff80007b7853 <+275>:   cmpl   $0x0,0x1d0(%r12)
        .byte 0x41; .byte 0x83; .byte 0xbc; .byte 0x24; .byte 0xd0; .byte 0x01; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b785c <+284>:   je     0xffffff80007b7bf0 <bsd_ast+1200>
        .byte 0x0f; .byte 0x84; .byte 0x8e; .byte 0x03; .byte 0x00; .byte 0x00;
//    0xffffff80007b7862 <+290>:   mov    0x18(%r12),%rdi
        .byte 0x49; .byte 0x8b; .byte 0x7c; .byte 0x24; .byte 0x18;
//    0xffffff80007b7867 <+295>:   mov    $0x1,%esi
        .byte 0xbe; .byte 0x01; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b786c <+300>:   callq  0xffffff800030bf70 <task_vtimer_set>
        call task_vtimer_set
// psignal_internal(DI, SI, DX, CX, R8) aka
// psignal_internal(p, 0, XXX, 8, 0x1a)
//    0xffffff80007b7871 <+305>:   xor    %esi,%esi
        .byte 0x31; .byte 0xf6;
//    0xffffff80007b7873 <+307>:   mov    $0x8,%ecx
        .byte 0xb9; .byte 0x08; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7878 <+312>:   mov    $0x1a,%r8d
        .byte 0x41; .byte 0xb8; .byte 0x1a; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b787e <+318>:   mov    %r12,%rdi
        .byte 0x4c; .byte 0x89; .byte 0xe7;
//    0xffffff80007b7881 <+321>:   mov    %r15,%rdx
        .byte 0x4c; .byte 0x89; .byte 0xfa;
//    0xffffff80007b7884 <+324>:   callq  0xffffff80007b7ec0 <pgsigio+160>
        call _psignal_internal
//    0xffffff80007b7889 <+329>:   cmpq   $0x0,0x1e8(%r12)
        .byte 0x49; .byte 0x83; .byte 0xbc; .byte 0x24; .byte 0xe8; .byte 0x01; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7892 <+338>:   jne    0xffffff80007b78a3 <bsd_ast+355>
        .byte 0x75; .byte 0x0f;
//    0xffffff80007b7894 <+340>:   cmpl   $0x0,0x1f0(%r12)
        .byte 0x41; .byte 0x83; .byte 0xbc; .byte 0x24; .byte 0xf0; .byte 0x01; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b789d <+349>:   je     0xffffff80007b7960 <bsd_ast+544>
        .byte 0x0f; .byte 0x84; .byte 0xbd; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b78a3 <+355>:   lea    0x1d8(%r14),%rsi
        .byte 0x49; .byte 0x8d; .byte 0xb6; .byte 0xd8; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b78aa <+362>:   mov    %gs:0x8,%rdi
        .byte 0x65; .byte 0x48; .byte 0x8b; .byte 0x3c; .byte 0x25; .byte 0x08; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b78b3 <+371>:   mov    0x150(%rdi),%rbx
        .byte 0x48; .byte 0x8b; .byte 0x9f; .byte 0x50; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b78ba <+378>:   add    0x1c0(%rdi),%rbx
        .byte 0x48; .byte 0x03; .byte 0x9f; .byte 0xc0; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b78c1 <+385>:   mov    0x1e0(%rdi),%eax
        .byte 0x8b; .byte 0x87; .byte 0xe0; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b78c7 <+391>:   mov    %ebx,%ecx
        .byte 0x89; .byte 0xd9;
//    0xffffff80007b78c9 <+393>:   sub    %eax,%ecx
        .byte 0x29; .byte 0xc1;
//    0xffffff80007b78cb <+395>:   and    %r13,%rcx
        .byte 0x4c; .byte 0x21; .byte 0xe9;
//    0xffffff80007b78ce <+398>:   mov    %rcx,%rax
        .byte 0x48; .byte 0x89; .byte 0xc8;
//    0xffffff80007b78d1 <+401>:   shr    $0x9,%rax
        .byte 0x48; .byte 0xc1; .byte 0xe8; .byte 0x09;
//    0xffffff80007b78d5 <+405>:   movabs $0x44b82fa09b5a53,%rdx
        .byte 0x48; .byte 0xba; .byte 0x53; .byte 0x5a; .byte 0x9b; .byte 0xa0; .byte 0x2f; .byte 0xb8; .byte 0x44; .byte 0x00;
//    0xffffff80007b78df <+415>:   mul    %rdx
        .byte 0x48; .byte 0xf7; .byte 0xe2;
//    0xffffff80007b78e2 <+418>:   shr    $0xb,%rdx
        .byte 0x48; .byte 0xc1; .byte 0xea; .byte 0x0b;
//    0xffffff80007b78e6 <+422>:   imul   $0x3b9aca00,%rdx,%rax
        .byte 0x48; .byte 0x69; .byte 0xc2; .byte 0x00; .byte 0xca; .byte 0x9a; .byte 0x3b;
//    0xffffff80007b78ed <+429>:   sub    %rax,%rcx
        .byte 0x48; .byte 0x29; .byte 0xc1;
//    0xffffff80007b78f0 <+432>:   shr    $0x3,%rcx
        .byte 0x48; .byte 0xc1; .byte 0xe9; .byte 0x03;
//    0xffffff80007b78f4 <+436>:   movabs $0x20c49ba5e353f7cf,%rdx
        .byte 0x48; .byte 0xba; .byte 0xcf; .byte 0xf7; .byte 0x53; .byte 0xe3; .byte 0xa5; .byte 0x9b; .byte 0xc4; .byte 0x20;
//    0xffffff80007b78fe <+446>:   mov    %rcx,%rax
        .byte 0x48; .byte 0x89; .byte 0xc8;
//    0xffffff80007b7901 <+449>:   mul    %rdx
        .byte 0x48; .byte 0xf7; .byte 0xe2;
//    0xffffff80007b7904 <+452>:   shr    $0x4,%rdx
        .byte 0x48; .byte 0xc1; .byte 0xea; .byte 0x04;
//    0xffffff80007b7908 <+456>:   test   %edx,%edx
        .byte 0x85; .byte 0xd2;
//    0xffffff80007b790a <+458>:   je     0xffffff80007b7913 <bsd_ast+467>
        .byte 0x74; .byte 0x07;
//    0xffffff80007b790c <+460>:   mov    %rbx,0x1e0(%rdi)
        .byte 0x48; .byte 0x89; .byte 0x9f; .byte 0xe0; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b7913 <+467>:   mov    %r12,%rdi
        .byte 0x4c; .byte 0x89; .byte 0xe7;
//    0xffffff80007b7916 <+470>:   callq  0xffffff80007c4e10 <itimerdecr>
        call itimerdecr
//    0xffffff80007b791b <+475>:   test   %eax,%eax
        .byte 0x85; .byte 0xc0;
//    0xffffff80007b791d <+477>:   jne    0xffffff80007b7960 <bsd_ast+544>
        .byte 0x75; .byte 0x41;
//    0xffffff80007b791f <+479>:   cmpq   $0x0,0x1e8(%r12)
        .byte 0x49; .byte 0x83; .byte 0xbc; .byte 0x24; .byte 0xe8; .byte 0x01; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7928 <+488>:   jne    0xffffff80007b7939 <bsd_ast+505>
        .byte 0x75; .byte 0x0f;
//    0xffffff80007b792a <+490>:   cmpl   $0x0,0x1f0(%r12)
        .byte 0x41; .byte 0x83; .byte 0xbc; .byte 0x24; .byte 0xf0; .byte 0x01; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7933 <+499>:   je     0xffffff80007b7c11 <bsd_ast+1233>
        .byte 0x0f; .byte 0x84; .byte 0xd8; .byte 0x02; .byte 0x00; .byte 0x00;
//    0xffffff80007b7939 <+505>:   mov    0x18(%r12),%rdi
        .byte 0x49; .byte 0x8b; .byte 0x7c; .byte 0x24; .byte 0x18;
//    0xffffff80007b793e <+510>:   mov    $0x2,%esi
        .byte 0xbe; .byte 0x02; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7943 <+515>:   callq  0xffffff800030bf70 <task_vtimer_set>
        call task_vtimer_set
//    0xffffff80007b7948 <+520>:   xor    %esi,%esi
        .byte 0x31; .byte 0xf6;
//    0xffffff80007b794a <+522>:   mov    $0x8,%ecx
        .byte 0xb9; .byte 0x08; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b794f <+527>:   mov    $0x1b,%r8d
        .byte 0x41; .byte 0xb8; .byte 0x1b; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7955 <+533>:   mov    %r12,%rdi
        .byte 0x4c; .byte 0x89; .byte 0xe7;
//    0xffffff80007b7958 <+536>:   mov    %r15,%rdx
        .byte 0x4c; .byte 0x89; .byte 0xfa;
//    0xffffff80007b795b <+539>:   callq  0xffffff80007b7ec0 <pgsigio+160>
        call _psignal_internal
//    0xffffff80007b7960 <+544>:   cmpq   $0x0,0x1f8(%r12)
        .byte 0x49; .byte 0x83; .byte 0xbc; .byte 0x24; .byte 0xf8; .byte 0x01; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7969 <+553>:   jne    0xffffff80007b797a <bsd_ast+570>
        .byte 0x75; .byte 0x0f;
//    0xffffff80007b796b <+555>:   cmpl   $0x0,0x200(%r12)
        .byte 0x41; .byte 0x83; .byte 0xbc; .byte 0x24; .byte 0x00; .byte 0x02; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7974 <+564>:   je     0xffffff80007b7a8a <bsd_ast+842>
        .byte 0x0f; .byte 0x84; .byte 0x10; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b797a <+570>:   mov    %gs:0x8,%rax
        .byte 0x65; .byte 0x48; .byte 0x8b; .byte 0x04; .byte 0x25; .byte 0x08; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7983 <+579>:   mov    0x150(%rax),%rcx
        .byte 0x48; .byte 0x8b; .byte 0x88; .byte 0x50; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b798a <+586>:   add    0x1c0(%rax),%rcx
        .byte 0x48; .byte 0x03; .byte 0x88; .byte 0xc0; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b7991 <+593>:   mov    0x1e8(%rax),%edx
        .byte 0x8b; .byte 0x90; .byte 0xe8; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b7997 <+599>:   mov    %rcx,0x1e8(%rax)
        .byte 0x48; .byte 0x89; .byte 0x88; .byte 0xe8; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b799e <+606>:   sub    %edx,%ecx
        .byte 0x29; .byte 0xd1;
//    0xffffff80007b79a0 <+608>:   and    %r13,%rcx
        .byte 0x4c; .byte 0x21; .byte 0xe9;
//    0xffffff80007b79a3 <+611>:   mov    %rcx,%rax
        .byte 0x48; .byte 0x89; .byte 0xc8;
//    0xffffff80007b79a6 <+614>:   shr    $0x9,%rax
        .byte 0x48; .byte 0xc1; .byte 0xe8; .byte 0x09;
//    0xffffff80007b79aa <+618>:   movabs $0x44b82fa09b5a53,%rdx
        .byte 0x48; .byte 0xba; .byte 0x53; .byte 0x5a; .byte 0x9b; .byte 0xa0; .byte 0x2f; .byte 0xb8; .byte 0x44; .byte 0x00;
//    0xffffff80007b79b4 <+628>:   mul    %rdx
        .byte 0x48; .byte 0xf7; .byte 0xe2;
//    0xffffff80007b79b7 <+631>:   shr    $0xb,%rdx
        .byte 0x48; .byte 0xc1; .byte 0xea; .byte 0x0b;
//    0xffffff80007b79bb <+635>:   imul   $0x3b9aca00,%rdx,%rax
        .byte 0x48; .byte 0x69; .byte 0xc2; .byte 0x00; .byte 0xca; .byte 0x9a; .byte 0x3b;
//    0xffffff80007b79c2 <+642>:   sub    %rax,%rcx
        .byte 0x48; .byte 0x29; .byte 0xc1;
//    0xffffff80007b79c5 <+645>:   shr    $0x3,%rcx
        .byte 0x48; .byte 0xc1; .byte 0xe9; .byte 0x03;
//    0xffffff80007b79c9 <+649>:   movabs $0x20c49ba5e353f7cf,%rdx
        .byte 0x48; .byte 0xba; .byte 0xcf; .byte 0xf7; .byte 0x53; .byte 0xe3; .byte 0xa5; .byte 0x9b; .byte 0xc4; .byte 0x20;
//    0xffffff80007b79d3 <+659>:   mov    %rcx,%rax
        .byte 0x48; .byte 0x89; .byte 0xc8;
//    0xffffff80007b79d6 <+662>:   mul    %rdx
        .byte 0x48; .byte 0xf7; .byte 0xe2;
//    0xffffff80007b79d9 <+665>:   mov    %rdx,%rbx
        .byte 0x48; .byte 0x89; .byte 0xd3;
//    0xffffff80007b79dc <+668>:   shr    $0x4,%rbx
        .byte 0x48; .byte 0xc1; .byte 0xeb; .byte 0x04;
//    0xffffff80007b79e0 <+672>:   lea    0x108(%r14),%r13
        .byte 0x4d; .byte 0x8d; .byte 0xae; .byte 0x08; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b79e7 <+679>:   mov    %r13,%rdi
        .byte 0x4c; .byte 0x89; .byte 0xef;
//    0xffffff80007b79ea <+682>:   callq  0xffffff80003cf090 <usimple_lock>
        call usimple_lock
//    0xffffff80007b79ef <+687>:   mov    0x1f8(%r12),%rcx
        .byte 0x49; .byte 0x8b; .byte 0x8c; .byte 0x24; .byte 0xf8; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b79f7 <+695>:   test   %rcx,%rcx
        .byte 0x48; .byte 0x85; .byte 0xc9;
//    0xffffff80007b79fa <+698>:   mov    0x200(%r12),%eax
        .byte 0x41; .byte 0x8b; .byte 0x84; .byte 0x24; .byte 0x00; .byte 0x02; .byte 0x00; .byte 0x00;
//    0xffffff80007b7a02 <+706>:   jg     0xffffff80007b7a5e <bsd_ast+798>
        .byte 0x7f; .byte 0x5a;
//    0xffffff80007b7a04 <+708>:   cmp    %ebx,%eax
        .byte 0x39; .byte 0xd8;
//    0xffffff80007b7a06 <+710>:   jg     0xffffff80007b7a5e <bsd_ast+798>
        .byte 0x7f; .byte 0x56;
//    0xffffff80007b7a08 <+712>:   movl   $0x0,0x200(%r12)
        .byte 0x41; .byte 0xc7; .byte 0x84; .byte 0x24; .byte 0x00; .byte 0x02; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7a14 <+724>:   movq   $0x0,0x1f8(%r12)
        .byte 0x49; .byte 0xc7; .byte 0x84; .byte 0x24; .byte 0xf8; .byte 0x01; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7a20 <+736>:   mov    %r13,%rdi
        .byte 0x4c; .byte 0x89; .byte 0xef;
//    0xffffff80007b7a23 <+739>:   callq  0xffffff80003ca330 <hw_lock_unlock>
        call hw_lock_unlock
//    0xffffff80007b7a28 <+744>:   mov    0x18(%r12),%rbx
        .byte 0x49; .byte 0x8b; .byte 0x5c; .byte 0x24; .byte 0x18;
//    0xffffff80007b7a2d <+749>:   mov    %rbx,%rdi
        .byte 0x48; .byte 0x89; .byte 0xdf;
//    0xffffff80007b7a30 <+752>:   callq  0xffffff80003ca990 <lck_mtx_lock>
        call lck_mtx_lock
//    0xffffff80007b7a35 <+757>:   andb   $0xfb,0xc0(%rbx)
        .byte 0x80; .byte 0xa3; .byte 0xc0; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0xfb;
//    0xffffff80007b7a3c <+764>:   mov    %rbx,%rdi
        .byte 0x48; .byte 0x89; .byte 0xdf;
//    0xffffff80007b7a3f <+767>:   callq  0xffffff80003caf90 <lck_mtx_unlock>
        call lck_mtx_unlock
//    0xffffff80007b7a44 <+772>:   xor    %esi,%esi
        .byte 0x31; .byte 0xf6;
//    0xffffff80007b7a46 <+774>:   mov    $0x8,%ecx
        .byte 0xb9; .byte 0x08; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7a4b <+779>:   mov    $0x18,%r8d
        .byte 0x41; .byte 0xb8; .byte 0x18; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7a51 <+785>:   mov    %r12,%rdi
        .byte 0x4c; .byte 0x89; .byte 0xe7;
//    0xffffff80007b7a54 <+788>:   mov    %r15,%rdx
        .byte 0x4c; .byte 0x89; .byte 0xfa;
//    0xffffff80007b7a57 <+791>:   callq  0xffffff80007b7ec0 <pgsigio+160>
        call _psignal_internal
//    0xffffff80007b7a5c <+796>:   jmp    0xffffff80007b7a8a <bsd_ast+842>
        .byte 0xeb; .byte 0x2c;
//    0xffffff80007b7a5e <+798>:   sub    %ebx,%eax
        .byte 0x29; .byte 0xd8;
//    0xffffff80007b7a60 <+800>:   mov    %eax,0x200(%r12)
        .byte 0x41; .byte 0x89; .byte 0x84; .byte 0x24; .byte 0x00; .byte 0x02; .byte 0x00; .byte 0x00;
//    0xffffff80007b7a68 <+808>:   jns    0xffffff80007b7a82 <bsd_ast+834>
        .byte 0x79; .byte 0x18;
//    0xffffff80007b7a6a <+810>:   dec    %rcx
        .byte 0x48; .byte 0xff; .byte 0xc9;
//    0xffffff80007b7a6d <+813>:   mov    %rcx,0x1f8(%r12)
        .byte 0x49; .byte 0x89; .byte 0x8c; .byte 0x24; .byte 0xf8; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b7a75 <+821>:   add    $0xf4240,%eax
        .byte 0x05; .byte 0x40; .byte 0x42; .byte 0x0f; .byte 0x00;
//    0xffffff80007b7a7a <+826>:   mov    %eax,0x200(%r12)
        .byte 0x41; .byte 0x89; .byte 0x84; .byte 0x24; .byte 0x00; .byte 0x02; .byte 0x00; .byte 0x00;
//    0xffffff80007b7a82 <+834>:   mov    %r13,%rdi
        .byte 0x4c; .byte 0x89; .byte 0xef;
//    0xffffff80007b7a85 <+837>:   callq  0xffffff80003ca330 <hw_lock_unlock>
        call hw_lock_unlock
//    0xffffff80007b7a8a <+842>:   mov    -0x30(%rbp),%r13
        .byte 0x4c; .byte 0x8b; .byte 0x6d; .byte 0xd0;
//    0xffffff80007b7a8e <+846>:   movzbl 0x231(%r13),%r8d
        .byte 0x45; .byte 0x0f; .byte 0xb6; .byte 0x85; .byte 0x31; .byte 0x02; .byte 0x00; .byte 0x00;
//    0xffffff80007b7a96 <+854>:   test   %r8d,%r8d
        .byte 0x45; .byte 0x85; .byte 0xc0;
//    0xffffff80007b7a99 <+857>:   je     0xffffff80007b7ab1 <bsd_ast+881>
        .byte 0x74; .byte 0x16;
//    0xffffff80007b7a9b <+859>:   movb   $0x0,0x231(%r13)
        .byte 0x41; .byte 0xc6; .byte 0x85; .byte 0x31; .byte 0x02; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7aa3 <+867>:   xor    %esi,%esi
        .byte 0x31; .byte 0xf6;
//    0xffffff80007b7aa5 <+869>:   xor    %edx,%edx
        .byte 0x31; .byte 0xd2;
//    0xffffff80007b7aa7 <+871>:   xor    %ecx,%ecx
        .byte 0x31; .byte 0xc9;
//    0xffffff80007b7aa9 <+873>:   mov    %r12,%rdi
        .byte 0x4c; .byte 0x89; .byte 0xe7;
//    0xffffff80007b7aac <+876>:   callq  0xffffff80007b7ec0 <pgsigio+160>
        call _psignal_internal
//    0xffffff80007b7ab1 <+881>:   cmpb   $0x0,0x230(%r13)
        .byte 0x41; .byte 0x80; .byte 0xbd; .byte 0x30; .byte 0x02; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7ab9 <+889>:   je     0xffffff80007b7aea <bsd_ast+938>
        .byte 0x74; .byte 0x2f;
//    0xffffff80007b7abb <+891>:   movb   $0x0,0x230(%r13)
        .byte 0x41; .byte 0xc6; .byte 0x85; .byte 0x30; .byte 0x02; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7ac3 <+899>:   lea    0x58(%r14),%rbx
        .byte 0x49; .byte 0x8d; .byte 0x5e; .byte 0x58;
//    0xffffff80007b7ac7 <+903>:   mov    %rbx,%rdi
        .byte 0x48; .byte 0x89; .byte 0xdf;
//    0xffffff80007b7aca <+906>:   callq  0xffffff80003ca990 <lck_mtx_lock>
        call lck_mtx_lock
//    0xffffff80007b7acf <+911>:   movb   $0x1,0x278(%r12)
        .byte 0x41; .byte 0xc6; .byte 0x84; .byte 0x24; .byte 0x78; .byte 0x02; .byte 0x00; .byte 0x00; .byte 0x01;
//    0xffffff80007b7ad8 <+920>:   mov    %rbx,%rdi
        .byte 0x48; .byte 0x89; .byte 0xdf;
//    0xffffff80007b7adb <+923>:   callq  0xffffff80003caf90 <lck_mtx_unlock>
        call lck_mtx_unlock
//    0xffffff80007b7ae0 <+928>:   mov    0x18(%r12),%rdi
        .byte 0x49; .byte 0x8b; .byte 0x7c; .byte 0x24; .byte 0x18;
//    0xffffff80007b7ae5 <+933>:   callq  0xffffff800030ab40 <task_suspend_internal>
        call task_suspend_internal
//    0xffffff80007b7aea <+938>:   mov    0x228(%r13),%rdi
        .byte 0x49; .byte 0x8b; .byte 0xbd; .byte 0x28; .byte 0x02; .byte 0x00; .byte 0x00;
//    0xffffff80007b7af1 <+945>:   test   %rdi,%rdi
        .byte 0x48; .byte 0x85; .byte 0xff;
//    0xffffff80007b7af4 <+948>:   je     0xffffff80007b7b52 <bsd_ast+1042>
        .byte 0x74; .byte 0x5c;
//    0xffffff80007b7af6 <+950>:   callq  0xffffff80007a9270 <proc_find>
        call proc_find
//    0xffffff80007b7afb <+955>:   mov    %rax,%r15
        .byte 0x49; .byte 0x89; .byte 0xc7;
//    0xffffff80007b7afe <+958>:   movq   $0x0,0x228(%r13)
        .byte 0x49; .byte 0xc7; .byte 0x85; .byte 0x28; .byte 0x02; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7b09 <+969>:   test   %r15,%r15
        .byte 0x4d; .byte 0x85; .byte 0xff;
//    0xffffff80007b7b0c <+972>:   je     0xffffff80007b7b52 <bsd_ast+1042>
        .byte 0x74; .byte 0x44;
//    0xffffff80007b7b0e <+974>:   mov    %r15,%rbx
        .byte 0x4c; .byte 0x89; .byte 0xfb;
//    0xffffff80007b7b11 <+977>:   add    $0x58,%rbx
        .byte 0x48; .byte 0x83; .byte 0xc3; .byte 0x58;
//    0xffffff80007b7b15 <+981>:   mov    %rbx,%rdi
        .byte 0x48; .byte 0x89; .byte 0xdf;
//    0xffffff80007b7b18 <+984>:   callq  0xffffff80003ca990 <lck_mtx_lock>
        call lck_mtx_lock
//    0xffffff80007b7b1d <+989>:   cmpb   $0x0,0x278(%r15)
        .byte 0x41; .byte 0x80; .byte 0xbf; .byte 0x78; .byte 0x02; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7b25 <+997>:   je     0xffffff80007b7b42 <bsd_ast+1026>
        .byte 0x74; .byte 0x1b;
//    0xffffff80007b7b27 <+999>:   movb   $0x0,0x278(%r15)
        .byte 0x41; .byte 0xc6; .byte 0x87; .byte 0x78; .byte 0x02; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7b2f <+1007>:  mov    %rbx,%rdi
        .byte 0x48; .byte 0x89; .byte 0xdf;
//    0xffffff80007b7b32 <+1010>:  callq  0xffffff80003caf90 <lck_mtx_unlock>
        call lck_mtx_unlock
//    0xffffff80007b7b37 <+1015>:  mov    0x18(%r15),%rdi
        .byte 0x49; .byte 0x8b; .byte 0x7f; .byte 0x18;
//    0xffffff80007b7b3b <+1019>:  callq  0xffffff800030ac00 <task_resume_internal>
        call task_resume_internal
//    0xffffff80007b7b40 <+1024>:  jmp    0xffffff80007b7b4a <bsd_ast+1034>
        .byte 0xeb; .byte 0x08;
//    0xffffff80007b7b42 <+1026>:  mov    %rbx,%rdi
        .byte 0x48; .byte 0x89; .byte 0xdf;
//    0xffffff80007b7b45 <+1029>:  callq  0xffffff80003caf90 <lck_mtx_unlock>
        call lck_mtx_unlock
//    0xffffff80007b7b4a <+1034>:  mov    %r15,%rdi
        .byte 0x4c; .byte 0x89; .byte 0xff;
//    0xffffff80007b7b4d <+1037>:  callq  0xffffff80007a9310 <proc_rele>
        .byte 0xe8; .byte 0xbe; .byte 0x17; .byte 0xff; .byte 0xff;
//    0xffffff80007b7b52 <+1042>:  add    $0x58,%r14
        .byte 0x49; .byte 0x83; .byte 0xc6; .byte 0x58;
//    0xffffff80007b7b56 <+1046>:  mov    %r14,%rdi
        .byte 0x4c; .byte 0x89; .byte 0xf7;
//    0xffffff80007b7b59 <+1049>:  callq  0xffffff80003ca990 <lck_mtx_lock>
        call lck_mtx_lock
//    0xffffff80007b7b5e <+1054>:  mov    %gs:0x8,%rax
        .byte 0x65; .byte 0x48; .byte 0x8b; .byte 0x04; .byte 0x25; .byte 0x08; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7b67 <+1063>:  testb  $0x1,0x32c(%rax)
        .byte 0xf6; .byte 0x80; .byte 0x2c; .byte 0x03; .byte 0x00; .byte 0x00; .byte 0x01;
//    0xffffff80007b7b6e <+1070>:  je     0xffffff80007b7bc3 <bsd_ast+1155>
        .byte 0x74; .byte 0x53;
//    0xffffff80007b7b70 <+1072>:  mov    0x114(%r13),%eax
        .byte 0x41; .byte 0x8b; .byte 0x85; .byte 0x14; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b7b77 <+1079>:  mov    0x11c(%r13),%ecx
        .byte 0x41; .byte 0x8b; .byte 0x8d; .byte 0x1c; .byte 0x01; .byte 0x00; .byte 0x00;
//    0xffffff80007b7b7e <+1086>:  xor    %edx,%edx
        .byte 0x31; .byte 0xd2;
//    0xffffff80007b7b80 <+1088>:  testb  $0x4,0x165(%r12)
        .byte 0x41; .byte 0xf6; .byte 0x84; .byte 0x24; .byte 0x65; .byte 0x01; .byte 0x00; .byte 0x00; .byte 0x04;
//    0xffffff80007b7b89 <+1097>:  jne    0xffffff80007b7b93 <bsd_ast+1107>
        .byte 0x75; .byte 0x08;
//    0xffffff80007b7b8b <+1099>:  mov    0x2c4(%r12),%edx
        .byte 0x41; .byte 0x8b; .byte 0x94; .byte 0x24; .byte 0xc4; .byte 0x02; .byte 0x00; .byte 0x00;
//    0xffffff80007b7b93 <+1107>:  or     %edx,%ecx
        .byte 0x09; .byte 0xd1;
//    0xffffff80007b7b95 <+1109>:  or     $0x10100,%ecx
        .byte 0x81; .byte 0xc9; .byte 0x00; .byte 0x01; .byte 0x01; .byte 0x00;
//    0xffffff80007b7b9b <+1115>:  xor    $0xfffefeff,%ecx
        .byte 0x81; .byte 0xf1; .byte 0xff; .byte 0xfe; .byte 0xfe; .byte 0xff;
//    0xffffff80007b7ba1 <+1121>:  test   %ecx,%eax
        .byte 0x85; .byte 0xc8;
//    0xffffff80007b7ba3 <+1123>:  jne    0xffffff80007b7bb7 <bsd_ast+1143>
        .byte 0x75; .byte 0x12;
//    0xffffff80007b7ba5 <+1125>:  jmp    0xffffff80007b7bc3 <bsd_ast+1155>
        .byte 0xeb; .byte 0x1c;
//    0xffffff80007b7ba7 <+1127>:  nopw   0x0(%rax,%rax,1)
        .byte 0x66; .byte 0x0f; .byte 0x1f; .byte 0x84; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0x00;
//    0xffffff80007b7bb0 <+1136>:  mov    %eax,%edi
        .byte 0x89; .byte 0xc7;
//    0xffffff80007b7bb2 <+1138>:  callq  0xffffff80007b7330 <postsig_locked>
        call postsig_locked
//    0xffffff80007b7bb7 <+1143>:  mov    %r12,%rdi
        .byte 0x4c; .byte 0x89; .byte 0xe7;
//    0xffffff80007b7bba <+1146>:  callq  0xffffff80007b67b0 <issignal_locked>
        call issignal_locked
//    0xffffff80007b7bbf <+1151>:  test   %eax,%eax
        .byte 0x85; .byte 0xc0;
//    0xffffff80007b7bc1 <+1153>:  jne    0xffffff80007b7bb0 <bsd_ast+1136>
        .byte 0x75; .byte 0xed;
//    0xffffff80007b7bc3 <+1155>:  mov    %r14,%rdi
        .byte 0x4c; .byte 0x89; .byte 0xf7;
//    0xffffff80007b7bc6 <+1158>:  callq  0xffffff80003caf90 <lck_mtx_unlock>
        call lck_mtx_unlock
//    0xffffff80007b7bcb <+1163>:  mov    0x318467(%rip),%al        # 0xffffff8000ad0038
        .byte 0x8a; .byte 0x05; .byte 0x67; .byte 0x84; .byte 0x31; .byte 0x00;
//    0xffffff80007b7bd1 <+1169>:  test   %al,%al
        .byte 0x84; .byte 0xc0;
//    0xffffff80007b7bd3 <+1171>:  jne    0xffffff80007b7be1 <bsd_ast+1185>
        .byte 0x75; .byte 0x0c;
//    0xffffff80007b7bd5 <+1173>:  movb   $0x1,0x31845c(%rip)        # 0xffffff8000ad0038
        .byte 0xc6; .byte 0x05; .byte 0x5c; .byte 0x84; .byte 0x31; .byte 0x00; .byte 0x01;
//    0xffffff80007b7bdc <+1180>:  callq  0xffffff80007727d0 <bsdinit_task>
        call bsdinit_task
//    0xffffff80007b7be1 <+1185>:  add    $0x8,%rsp
        .byte 0x48; .byte 0x83; .byte 0xc4; .byte 0x08;
//    0xffffff80007b7be5 <+1189>:  pop    %rbx
        .byte 0x5b;
//    0xffffff80007b7be6 <+1190>:  pop    %r12
        .byte 0x41; .byte 0x5c;
//    0xffffff80007b7be8 <+1192>:  pop    %r13
        .byte 0x41; .byte 0x5d;
//    0xffffff80007b7bea <+1194>:  pop    %r14
        .byte 0x41; .byte 0x5e;
//    0xffffff80007b7bec <+1196>:  pop    %r15
        .byte 0x41; .byte 0x5f;
//    0xffffff80007b7bee <+1198>:  pop    %rbp
        .byte 0x5d;
//    0xffffff80007b7bef <+1199>:  retq
        .byte 0xc3;
//    0xffffff80007b7bf0 <+1200>:  mov    0x18(%r12),%rbx
        .byte 0x49; .byte 0x8b; .byte 0x5c; .byte 0x24; .byte 0x18;
//    0xffffff80007b7bf5 <+1205>:  mov    %rbx,%rdi
        .byte 0x48; .byte 0x89; .byte 0xdf;
//    0xffffff80007b7bf8 <+1208>:  callq  0xffffff80003ca990 <lck_mtx_lock>
        call lck_mtx_lock
//    0xffffff80007b7bfd <+1213>:  andb   $0xfe,0xc0(%rbx)
        .byte 0x80; .byte 0xa3; .byte 0xc0; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0xfe;
//    0xffffff80007b7c04 <+1220>:  mov    %rbx,%rdi
        .byte 0x48; .byte 0x89; .byte 0xdf;
//    0xffffff80007b7c07 <+1223>:  callq  0xffffff80003caf90 <lck_mtx_unlock>
        call lck_mtx_unlock
//    0xffffff80007b7c0c <+1228>:  jmpq   0xffffff80007b7871 <bsd_ast+305>
        .byte 0xe9; .byte 0x60; .byte 0xfc; .byte 0xff; .byte 0xff;
//    0xffffff80007b7c11 <+1233>:  mov    0x18(%r12),%rbx
        .byte 0x49; .byte 0x8b; .byte 0x5c; .byte 0x24; .byte 0x18;
//    0xffffff80007b7c16 <+1238>:  mov    %rbx,%rdi
        .byte 0x48; .byte 0x89; .byte 0xdf;
//    0xffffff80007b7c19 <+1241>:  callq  0xffffff80003ca990 <lck_mtx_lock>
        call lck_mtx_lock
//    0xffffff80007b7c1e <+1246>:  andb   $0xfd,0xc0(%rbx)
        .byte 0x80; .byte 0xa3; .byte 0xc0; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0xfd;
//    0xffffff80007b7c25 <+1253>:  mov    %rbx,%rdi
        .byte 0x48; .byte 0x89; .byte 0xdf;
//    0xffffff80007b7c28 <+1256>:  callq  0xffffff80003caf90 <lck_mtx_unlock>
        call lck_mtx_unlock
//    0xffffff80007b7c2d <+1261>:  jmpq   0xffffff80007b7948 <bsd_ast+520>
        .byte 0xe9; .byte 0x16; .byte 0xfd; .byte 0xff; .byte 0xff;
//    0xffffff80007b7c32 <+1266>:  data32 data32 data32 data32 nopw %cs:0x0(%rax,%rax,1)
        .byte 0x66; .byte 0x66; .byte 0x66; .byte 0x66; .byte 0x66; .byte 0x2e; .byte 0x0f; .byte 0x1f; .byte 0x84; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0x00; .byte 0x00;

.globl after_bsd_ast
after_bsd_ast:
	ret

.data
.globl other_sym
other_sym:
	.byte 0x80
