.intel_syntax noprefix
.extern puts
.extern fgets
.extern printf
.global main

main:

push    rbp
mov    rbp, rsp
push    r12
push    rbx
sub    rsp, 0x50
mov    byte ptr [rbp - 0x11], 1
mov    rax, qword ptr [rip + 0x2cea]
mov    rdi, rax
mov    eax, 0
call    printf # ins_rel: -0x263
mov    rdx, qword ptr [rip + 0x2cf6]
lea    rax, [rbp - 0x60]
mov    esi, 0x40
mov    rdi, rax
call    fgets # ins_rel: -0x26b
movzx    eax, byte ptr [rbp - 0x57]
nop

movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x60]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x54]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x53]
movsx    eax, al
mov    esi, edx
mov    edi, eax
or    edi, esi  # from call 0x164a
mov    esi, r12d
mov    edi, eax
xor    edi, esi  # from call 0x16c8
mov    esi, ebx
mov    edi, eax
imul    edi, esi  # from call 0x153b
cmp    eax, 0x1326
sete    al
movzx    edx, al

movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x4c]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x4a]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x56]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x52]
movsx    eax, al
mov    esi, edx
mov    edi, eax
or    edi, esi  # from call 0x164a
mov    esi, r12d
mov    edi, eax
sub    edi, esi  # from call 0x1401
mov    esi, ebx

mov    edi, eax
xor    edi, esi  # from call 0x16c8
cmp    eax, -0x40
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x5e]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x54]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x56]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x59]
movsx    eax, al
mov    esi, edx
mov    edi, eax
nop

xor    edi, esi  # from call 0x16c8
mov    esi, r12d
mov    edi, eax
sub    edi, esi  # from call 0x1401
mov    esi, ebx
mov    edi, eax
sub    edi, esi  # from call 0x1401
cmp    eax, -0x47
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x55]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x50]
movsx    r12d, al
nop
nop

movzx    eax, byte ptr [rbp - 0x59]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x4c]
movsx    eax, al
mov    esi, edx
mov    edi, eax
xor    edi, esi  # from call 0x16c8
mov    esi, r12d
mov    edi, eax
and    edi, esi  # from call 0x15b8
mov    esi, ebx
mov    edi, eax
imul    edi, esi  # from call 0x153b
cmp    eax, 0x22e2
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al

mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x59]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x51]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x58]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x5f]
movsx    eax, al
mov    esi, edx
mov    edi, eax
imul    edi, esi  # from call 0x153b
mov    esi, r12d
mov    edi, eax
xor    edi, esi  # from call 0x16c8
mov    esi, ebx
mov    edi, eax
imul    edi, esi  # from call 0x153b
nop
nop
nop
nop

cmp    eax, 0x44126
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x4c]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x58]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x5f]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x4a]
movsx    eax, al
mov    esi, edx
mov    edi, eax
xor    edi, esi  # from call 0x16c8
nop

mov    esi, r12d
mov    edi, eax
xor    edi, esi  # from call 0x16c8
mov    esi, ebx
mov    edi, eax
or    edi, esi  # from call 0x164a
cmp    eax, 0x73
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x5f]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x55]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x4c]
movsx    edx, al

movzx    eax, byte ptr [rbp - 0x4e]
movsx    eax, al
mov    esi, edx
mov    edi, eax
or    edi, esi  # from call 0x164a
mov    esi, r12d
mov    edi, eax
add    edi, esi  # from call 0x1381
mov    esi, ebx
mov    edi, eax
xor    edi, esi  # from call 0x16c8
cmp    eax, 0xe5
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x4b]

movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x5c]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x60]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x53]
movsx    eax, al
mov    esi, edx
mov    edi, eax
imul    edi, esi  # from call 0x153b
mov    esi, r12d
mov    edi, eax
imul    edi, esi  # from call 0x153b
mov    esi, ebx
mov    edi, eax
and    edi, esi  # from call 0x15b8
cmp    eax, 0x50
sete    al
movzx    edx, al
nop
nop

movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x4a]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x5a]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x54]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x5c]
movsx    eax, al
mov    esi, edx
mov    edi, eax
add    edi, esi  # from call 0x1381
mov    esi, r12d
mov    edi, eax
xor    edi, esi  # from call 0x16c8
mov    esi, ebx

mov    edi, eax
xor    edi, esi  # from call 0x16c8
cmp    eax, 0x8c
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x5a]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x5d]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x4d]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x4f]
movsx    eax, al
mov    esi, edx
nop

mov    edi, eax
sub    edi, esi  # from call 0x1401
mov    esi, r12d
mov    edi, eax
and    edi, esi  # from call 0x15b8
mov    esi, ebx
mov    edi, eax
and    edi, esi  # from call 0x15b8
test    eax, eax
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x5b]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x4e]
movsx    r12d, al
nop

movzx    eax, byte ptr [rbp - 0x5e]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x5d]
movsx    eax, al
mov    esi, edx
mov    edi, eax
xor    edi, esi  # from call 0x16c8
mov    esi, r12d
mov    edi, eax
add    edi, esi  # from call 0x1381
mov    esi, ebx
mov    edi, eax
imul    edi, esi  # from call 0x153b
cmp    eax, 0x19a0
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al

mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x52]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x5a]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x60]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x4e]
movsx    eax, al
mov    esi, edx
mov    edi, eax
imul    edi, esi  # from call 0x153b
mov    esi, r12d
mov    edi, eax
and    edi, esi  # from call 0x15b8
mov    esi, ebx
mov    edi, eax
add    edi, esi  # from call 0x1381
cmp    eax, 0x40
nop

sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x5b]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x5c]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x5e]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x5e]
movsx    eax, al
mov    esi, edx
mov    edi, eax
and    edi, esi  # from call 0x15b8
mov    esi, r12d
mov    edi, eax
nop

or    edi, esi  # from call 0x164a
mov    esi, ebx
mov    edi, eax
and    edi, esi  # from call 0x15b8
cmp    eax, 0x52
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x51]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x54]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x57]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x60]
nop

movsx    eax, al
mov    esi, edx
mov    edi, eax
xor    edi, esi  # from call 0x16c8
mov    esi, r12d
mov    edi, eax
imul    edi, esi  # from call 0x153b
mov    esi, ebx
mov    edi, eax
sub    edi, esi  # from call 0x1401
cmp    eax, 0x7cc
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x55]
movsx    ebx, al
nop

movzx    eax, byte ptr [rbp - 0x4b]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x54]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x4f]
movsx    eax, al
mov    esi, edx
mov    edi, eax
imul    edi, esi  # from call 0x153b
mov    esi, r12d
mov    edi, eax
add    edi, esi  # from call 0x1381
mov    esi, ebx
mov    edi, eax
xor    edi, esi  # from call 0x16c8
cmp    eax, 0x21f4
sete    al
movzx    edx, al
nop
nop
nop

movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x4f]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x4a]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x54]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x4a]
movsx    eax, al
mov    esi, edx
mov    edi, eax
and    edi, esi  # from call 0x15b8
mov    esi, r12d
mov    edi, eax
add    edi, esi  # from call 0x1381
mov    esi, ebx

mov    edi, eax
xor    edi, esi  # from call 0x16c8
cmp    eax, 0xad
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x4f]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x49]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x50]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x49]
movsx    eax, al
mov    esi, edx
nop

mov    edi, eax
xor    edi, esi  # from call 0x16c8
mov    esi, r12d
mov    edi, eax
and    edi, esi  # from call 0x15b8
mov    esi, ebx
mov    edi, eax
imul    edi, esi  # from call 0x153b
cmp    eax, 0x69
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x4b]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x5f]
movsx    r12d, al

movzx    eax, byte ptr [rbp - 0x60]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x5e]
movsx    eax, al
mov    esi, edx
mov    edi, eax
sub    edi, esi  # from call 0x1401
mov    esi, r12d
mov    edi, eax
and    edi, esi  # from call 0x15b8
mov    esi, ebx
mov    edi, eax
sub    edi, esi  # from call 0x1401
cmp    eax, -0x41
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
nop
nop

mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x5e]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x60]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x4a]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x52]
movsx    eax, al
mov    esi, edx
mov    edi, eax
imul    edi, esi  # from call 0x153b
mov    esi, r12d
mov    edi, eax
xor    edi, esi  # from call 0x16c8
mov    esi, ebx
mov    edi, eax
imul    edi, esi  # from call 0x153b
nop
nop
nop
nop

cmp    eax, 0x73f8c
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x4c]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x4e]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x51]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x5c]
movsx    eax, al
mov    esi, edx
mov    edi, eax
sub    edi, esi  # from call 0x1401
nop

mov    esi, r12d
mov    edi, eax
imul    edi, esi  # from call 0x153b
mov    esi, ebx
mov    edi, eax
sub    edi, esi  # from call 0x1401
cmp    eax, 0x35b
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x5f]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x5b]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x58]
nop

movsx    edx, al
movzx    eax, byte ptr [rbp - 0x5f]
movsx    eax, al
mov    esi, edx
mov    edi, eax
sub    edi, esi  # from call 0x1401
mov    esi, r12d
mov    edi, eax
imul    edi, esi  # from call 0x153b
mov    esi, ebx
mov    edi, eax
imul    edi, esi  # from call 0x153b
cmp    eax, 0x3102
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
nop

movzx    eax, byte ptr [rbp - 0x5a]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x5d]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x50]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x52]
movsx    eax, al
mov    esi, edx
mov    edi, eax
sub    edi, esi  # from call 0x1401
mov    esi, r12d
mov    edi, eax
add    edi, esi  # from call 0x1381
mov    esi, ebx
mov    edi, eax
sub    edi, esi  # from call 0x1401
cmp    eax, -0x26
sete    al
nop

movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x55]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x4b]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x4b]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x49]
movsx    eax, al
mov    esi, edx
mov    edi, eax
xor    edi, esi  # from call 0x16c8
mov    esi, r12d
mov    edi, eax
nop
nop
nop
nop

and    edi, esi  # from call 0x15b8
mov    esi, ebx
mov    edi, eax
and    edi, esi  # from call 0x15b8
cmp    eax, 2
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x5a]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x4d]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x53]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x49]
nop

movsx    eax, al
mov    esi, edx
mov    edi, eax
and    edi, esi  # from call 0x15b8
mov    esi, r12d
mov    edi, eax
add    edi, esi  # from call 0x1381
mov    esi, ebx
mov    edi, eax
sub    edi, esi  # from call 0x1401
cmp    eax, 0x63
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x5c]
movsx    ebx, al
nop
nop
nop

movzx    eax, byte ptr [rbp - 0x50]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x49]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x55]
movsx    eax, al
mov    esi, edx
mov    edi, eax
add    edi, esi  # from call 0x1381
mov    esi, r12d
mov    edi, eax
xor    edi, esi  # from call 0x16c8
mov    esi, ebx
mov    edi, eax
xor    edi, esi  # from call 0x16c8
cmp    eax, 0xd9
sete    al
movzx    edx, al
nop
nop
nop

movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x58]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x5d]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x53]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x53]
movsx    eax, al
mov    esi, edx
mov    edi, eax
imul    edi, esi  # from call 0x153b
mov    esi, r12d
mov    edi, eax
xor    edi, esi  # from call 0x16c8
mov    esi, ebx

mov    edi, eax
add    edi, esi  # from call 0x1381
cmp    eax, 0x3562
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x58]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x5f]
movsx    r12d, al
movzx    eax, byte ptr [rbp - 0x51]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x4b]
movsx    eax, al
mov    esi, edx
nop

mov    edi, eax
and    edi, esi  # from call 0x15b8
mov    esi, r12d
mov    edi, eax
xor    edi, esi  # from call 0x16c8
mov    esi, ebx
mov    edi, eax
or    edi, esi  # from call 0x164a
cmp    eax, 0x71
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
mov    byte ptr [rbp - 0x11], al
movzx    eax, byte ptr [rbp - 0x55]
movsx    ebx, al
movzx    eax, byte ptr [rbp - 0x5e]
movsx    r12d, al

movzx    eax, byte ptr [rbp - 0x51]
movsx    edx, al
movzx    eax, byte ptr [rbp - 0x52]
movsx    eax, al
mov    esi, edx
mov    edi, eax
and    edi, esi  # from call 0x15b8
mov    esi, r12d
mov    edi, eax
sub    edi, esi  # from call 0x1401
mov    esi, ebx
mov    edi, eax
xor    edi, esi  # from call 0x16c8
cmp    eax, -0x60
sete    al
movzx    edx, al
movzx    eax, byte ptr [rbp - 0x11]
and    eax, edx
test    eax, eax
setne    al
nop
nop

mov    byte ptr [rbp - 0x11], al
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop

cmp    byte ptr [rbp - 0x11], 0
je    aaa # ins_rel: +0x11
mov    rax, qword ptr [rip + 0x2cfb]
mov    rdi, rax
call    puts # ins_rel: -0x285
jmp    bbb # ins_rel: +0xf
aaa:
mov    rax, qword ptr [rip + 0x2cf2]
mov    rdi, rax
call    puts # ins_rel: -0x296
mov    eax, 0
bbb:
add    rsp, 0x50
pop    rbx
pop    r12
pop    rbp
ret
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
nop
