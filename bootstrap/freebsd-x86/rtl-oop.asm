	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLOOPMODINIT
RTLOOPMODINIT:
.Lt_0060:
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 4
.Lt_0061:
ret
.balign 16

.globl RTLOOPMODEND
RTLOOPMODEND:
.Lt_0062:
.Lt_0063:
ret
.balign 16

.globl RTLOOPISTYPEOF
RTLOOPISTYPEOF:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0064:
push 0
push 137
push offset Lt_005F
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
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
.balign 16
fb_ctor__rtlzoop:
.Lt_0002:
.Lt_0003:
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
push ebp
mov ebp, esp
push ebx
.Lt_0012:
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
add esp, 20
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
.balign 4
Lt_005F:	.ascii	"fb_IsTypeOf\0"

.section .ctors
.int fb_ctor__rtlzoop
