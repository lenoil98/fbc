	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLOOPMODINIT
RTLOOPMODINIT:
.type RTLOOPMODINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0060:
sub esp, 12
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 16
.Lt_0061:
mov esp, ebp
pop ebp
ret
.size RTLOOPMODINIT, .-RTLOOPMODINIT
.balign 16

.globl RTLOOPMODEND
RTLOOPMODEND:
.type RTLOOPMODEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0062:
.Lt_0063:
mov esp, ebp
pop ebp
ret
.size RTLOOPMODEND, .-RTLOOPMODEND
.balign 16

.globl RTLOOPISTYPEOF
RTLOOPISTYPEOF:
.type RTLOOPISTYPEOF, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0064:
sub esp, 8
push 0
sub esp, 12
push 137
push offset Lt_005F
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0067
jmp .Lt_0065
.Lt_0067:
.Lt_0066:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0069
jmp .Lt_0065
.Lt_0069:
.Lt_0068:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0065:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLOOPISTYPEOF, .-RTLOOPISTYPEOF
.balign 16
fb_ctor__rtlzoop:
.type fb_ctor__rtlzoop, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__rtlzoop, .-fb_ctor__rtlzoop
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
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
FUNCDATA:
.int Lt_005F
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 0
.int 2
.int 0
.skip 8,0
.int 0
.int 2
.int 0
.skip 8,0
.skip 280,0
.long 0
.skip 344,0
.skip 696,0

.section .rodata
.balign 4
Lt_005F:	.ascii	"fb_IsTypeOf\0"

.section .ctors, "aw", @progbits
.int fb_ctor__rtlzoop
