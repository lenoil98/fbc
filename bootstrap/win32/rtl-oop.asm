	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLOOPMODINIT@0
_RTLOOPMODINIT@0:
.Lt_0061:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS@4
.Lt_0062:
ret
.balign 16

.globl _RTLOOPMODEND@0
_RTLOOPMODEND@0:
.Lt_0063:
.Lt_0064:
ret
.balign 16

.globl _RTLOOPISTYPEOF@8
_RTLOOPISTYPEOF@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0065:
push 0
push 137
push offset _Lt_0060
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0068
jmp .Lt_0066
.Lt_0068:
.Lt_0067:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_006A
jmp .Lt_0066
.Lt_006A:
.Lt_0069:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0066:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_fb_ctor__rtlzoop:
.Lt_0002:
.Lt_0003:
ret
.balign 16
__ZN11TSTRSETITEMaSERKS_:
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
call _fb_StrAssign@20
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
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_FUNCDATA:
.int _Lt_0060
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
_Lt_0060:	.ascii	"fb_IsTypeOf\0"

.section .ctors
.int _fb_ctor__rtlzoop
