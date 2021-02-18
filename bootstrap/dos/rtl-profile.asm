	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLPROFILEMODINIT
_RTLPROFILEMODINIT:
push ebx
.Lt_0071:
mov eax, dword ptr [_ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBIS64BIT
and ebx, eax
je .Lt_0074
push offset _DATAMCOUNTWIN64
call _RTLADDINTRINSICPROCS
add esp, 4
jmp .Lt_0073
.Lt_0074:
push offset _DATAMCOUNTNORMAL
call _RTLADDINTRINSICPROCS
add esp, 4
.Lt_0073:
push offset _DATAMONSTARTUP
call _RTLADDINTRINSICPROCS
add esp, 4
.Lt_0072:
pop ebx
ret
.balign 16

.globl _RTLPROFILEMODEND
_RTLPROFILEMODEND:
.Lt_0076:
.Lt_0077:
ret
.balign 16

.globl _RTLPROFILECALL_MCOUNT
_RTLPROFILECALL_MCOUNT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0078:
push 0
push 333
push offset _Lt_006A
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0079:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLPROFILECALL_MONSTARTUP
_RTLPROFILECALL_MONSTARTUP:
.Lt_007A:
push 0
push 334
push offset _Lt_006F
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
push eax
call _ASTADD
add esp, 4
.Lt_007B:
ret
.balign 16
_fb_ctor__rtlzprofile:
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
call _fb_StrAssign
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
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_DATAMCOUNTNORMAL:
.int _Lt_006A
.int _Lt_006B
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 320,0
.long 0
.skip 344,0
.balign 4
_Lt_006A:	.ascii	"fb_mcount\0"
.balign 4
_Lt_006B:	.ascii	"mcount\0"
.balign 4
_DATAMCOUNTWIN64:
.int _Lt_006A
.int _Lt_006D
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 320,0
.long 0
.skip 344,0
.balign 4
_Lt_006D:	.ascii	"_mcount\0"
.balign 4
_DATAMONSTARTUP:
.int _Lt_006F
.int _Lt_0070
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 320,0
.long 0
.skip 344,0
.balign 4
_Lt_006F:	.ascii	"fb__monstartup\0"
.balign 4
_Lt_0070:	.ascii	"_monstartup\0"

.section .ctors
.int _fb_ctor__rtlzprofile
