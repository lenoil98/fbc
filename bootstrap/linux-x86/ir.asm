	.intel_syntax noprefix

.section .text
.balign 16

.globl IRINIT
IRINIT:
.type IRINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0072:
mov eax, dword ptr [ENV+104]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
jne .Lt_0076
.Lt_0077:
lea eax, [IR+4]
push edi
push esi
mov edi, eax
mov esi, offset IRHLC_VTBL
mov ecx, 68
rep movsd
pop esi
pop edi
jmp .Lt_0074
.Lt_0076:
cmp dword ptr [ebp-4], 2
jne .Lt_0078
.Lt_0079:
lea eax, [IR+4]
push edi
push esi
mov edi, eax
mov esi, offset IRLLVM_VTBL
mov ecx, 68
rep movsd
pop esi
pop edi
jmp .Lt_0074
.Lt_0078:
cmp dword ptr [ebp-4], 3
jne .Lt_007A
.Lt_007B:
lea eax, [IR+4]
push edi
push esi
mov edi, eax
mov esi, offset IRGAS64_VTBL
mov ecx, 68
rep movsd
pop esi
pop edi
jmp .Lt_0074
.Lt_007A:
lea eax, [IR+4]
push edi
push esi
mov edi, eax
mov esi, offset IRTAC_VTBL
mov ecx, 68
rep movsd
pop esi
pop edi
.Lt_007C:
.Lt_0074:
call dword ptr [IR+4]
.Lt_0073:
mov esp, ebp
pop ebp
ret
.size IRINIT, .-IRINIT
.balign 16

.globl IREND
IREND:
.type IREND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_007D:
call dword ptr [IR+8]
.Lt_007E:
mov esp, ebp
pop ebp
ret
.size IREND, .-IREND
.balign 16

.globl IRHLINIT
IRHLINIT:
.type IRHLINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_007F:
sub esp, 4
push 68
push 6144
lea eax, [IRHL+4]
push eax
call FLISTINIT
add esp, 16
push 6
push 12
push 32
lea eax, [IRHL+60]
push eax
call LISTINIT
add esp, 16
.Lt_0080:
mov esp, ebp
pop ebp
ret
.size IRHLINIT, .-IRHLINIT
.balign 16

.globl IRHLEND
IRHLEND:
.type IRHLEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0081:
sub esp, 12
lea eax, [IRHL+60]
push eax
call LISTEND
add esp, 16
sub esp, 12
lea eax, [IRHL+4]
push eax
call FLISTEND
add esp, 16
.Lt_0082:
mov esp, ebp
pop ebp
ret
.size IRHLEND, .-IRHLEND
.balign 16

.globl IRHLEMITPROCBEGIN
IRHLEMITPROCBEGIN:
.type IRHLEMITPROCBEGIN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0083:
mov dword ptr [IRHL], 0
.Lt_0084:
mov esp, ebp
pop ebp
ret
.size IRHLEMITPROCBEGIN, .-IRHLEMITPROCBEGIN
.balign 16

.globl IRHLEMITPROCEND
IRHLEMITPROCEND:
.type IRHLEMITPROCEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0085:
sub esp, 12
lea eax, [IRHL+4]
push eax
call FLISTRESET
add esp, 16
.Lt_0086:
mov esp, ebp
pop ebp
ret
.size IRHLEMITPROCEND, .-IRHLEMITPROCEND
.balign 16

.globl IRHLEMITPUSHARG
IRHLEMITPUSHARG:
.type IRHLEMITPUSHARG, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0087:
sub esp, 12
lea eax, [IRHL+60]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+8], ebx
.Lt_0088:
pop ebx
mov esp, ebp
pop ebp
ret
.size IRHLEMITPUSHARG, .-IRHLEMITPUSHARG
.balign 16

.globl IRHLNEWVREG
IRHLNEWVREG:
.type IRHLNEWVREG, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0089:
sub esp, 12
lea eax, [IRHL+4]
push eax
call FLISTNEWITEM
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
cmp dword ptr [ebp+16], 4
jne .Lt_008C
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [IRHL]
mov dword ptr [ebx+12], eax
inc dword ptr [IRHL]
jmp .Lt_008B
.Lt_008C:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+12], -1
.Lt_008B:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+16], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+20], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+32], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+36], 0
mov dword ptr [eax+40], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+44], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+48], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+52], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_008A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size IRHLNEWVREG, .-IRHLNEWVREG
.balign 16

.globl IRHLALLOCVREG
IRHLALLOCVREG:
.type IRHLALLOCVREG, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_008D:
sub esp, 4
push 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_008E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size IRHLALLOCVREG, .-IRHLALLOCVREG
.balign 16

.globl IRHLALLOCVRIMM
IRHLALLOCVRIMM:
.type IRHLALLOCVRIMM, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_008F:
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_0090:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size IRHLALLOCVRIMM, .-IRHLALLOCVRIMM
.balign 16

.globl IRHLALLOCVRIMMF
IRHLALLOCVRIMMF:
.type IRHLALLOCVRIMMF, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0091:
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
pop dword ptr [eax+28]
pop dword ptr [eax+24]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0092:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size IRHLALLOCVRIMMF, .-IRHLALLOCVRIMMF
.balign 16

.globl IRHLALLOCVRVAR
IRHLALLOCVRVAR:
.type IRHLALLOCVRVAR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0093:
sub esp, 4
push 1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+36], ecx
mov dword ptr [ebx+40], eax
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_0094:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size IRHLALLOCVRVAR, .-IRHLALLOCVRVAR
.balign 16

.globl IRHLALLOCVRIDX
IRHLALLOCVRIDX:
.type IRHLALLOCVRIDX, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0095:
sub esp, 4
push 2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+36], ecx
mov dword ptr [ebx+40], eax
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+32]
mov dword ptr [ecx+48], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0096:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size IRHLALLOCVRIDX, .-IRHLALLOCVRIDX
.balign 16

.globl IRHLALLOCVRPTR
IRHLALLOCVRPTR:
.type IRHLALLOCVRPTR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0097:
sub esp, 4
push 3
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+36], ecx
mov dword ptr [eax+40], ebx
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [ecx+48], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0098:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size IRHLALLOCVRPTR, .-IRHLALLOCVRPTR
.balign 16

.globl IRHLALLOCVROFS
IRHLALLOCVROFS:
.type IRHLALLOCVROFS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0099:
sub esp, 4
push 5
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call IRHLNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+36], ecx
mov dword ptr [ebx+40], eax
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size IRHLALLOCVROFS, .-IRHLALLOCVROFS
.balign 16

.globl IRFOREACHDATASTMT
IRFOREACHDATASTMT:
.type IRFOREACHDATASTMT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_009B:
mov eax, dword ptr [AST+120]
mov dword ptr [ebp-4], eax
.Lt_009D:
cmp dword ptr [ebp-4], 0
je .Lt_009E
sub esp, 12
push dword ptr [ebp-4]
call dword ptr [ebp+8]
add esp, 16
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+104]
mov dword ptr [ebp-4], ebx
jmp .Lt_009D
.Lt_009E:
.Lt_009C:
pop ebx
mov esp, ebp
pop ebp
ret
.size IRFOREACHDATASTMT, .-IRFOREACHDATASTMT
.balign 16

.globl IRHLFLUSHSTATICINITIALIZER
IRHLFLUSHSTATICINITIALIZER:
.type IRHLFLUSHSTATICINITIALIZER, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_009F:
sub esp, 8
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOADSTATICINITIALIZER
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
.Lt_00A0:
mov esp, ebp
pop ebp
ret
.size IRHLFLUSHSTATICINITIALIZER, .-IRHLFLUSHSTATICINITIALIZER
.balign 16
fb_ctor__ir:
.type fb_ctor__ir, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__ir, .-fb_ctor__ir
.balign 16
_ZN11TSTRSETITEMaSERKS_:
.type _ZN11TSTRSETITEMaSERKS_, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0012:
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
add eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, 12
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
.Lt_0013:
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_

.section .bss

.globl IR
.balign 4
	.lcomm	IR,280
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
.balign 4
	.lcomm	Lt_0071,36

.globl IRHL
.balign 4
	.lcomm	IRHL,92

.section .ctors, "aw", @progbits
.int fb_ctor__ir
