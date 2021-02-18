	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLPROFILEMODINIT
RTLPROFILEMODINIT:
push ebx
.Lt_0070:
mov eax, dword ptr [ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call FBIS64BIT
and ebx, eax
je .Lt_0073
push offset DATAMCOUNTWIN64
call RTLADDINTRINSICPROCS
add esp, 4
jmp .Lt_0072
.Lt_0073:
push offset DATAMCOUNTNORMAL
call RTLADDINTRINSICPROCS
add esp, 4
.Lt_0072:
push offset DATAMONSTARTUP
call RTLADDINTRINSICPROCS
add esp, 4
.Lt_0071:
pop ebx
ret
.balign 16

.globl RTLPROFILEMODEND
RTLPROFILEMODEND:
.Lt_0075:
.Lt_0076:
ret
.balign 16

.globl RTLPROFILECALL_MCOUNT
RTLPROFILECALL_MCOUNT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0077:
push 0
push 333
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0078:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLPROFILECALL_MONSTARTUP
RTLPROFILECALL_MONSTARTUP:
.Lt_0079:
push 0
push 334
push offset Lt_006E
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
push eax
call ASTADD
add esp, 4
.Lt_007A:
ret
.balign 16
fb_ctor__rtlzprofile:
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
DATAMCOUNTNORMAL:
.int Lt_0069
.int Lt_006A
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 320,0
.long 0
.skip 344,0
.balign 4
Lt_0069:	.ascii	"fb_mcount\0"
.balign 4
Lt_006A:	.ascii	"mcount\0"
.balign 4
DATAMCOUNTWIN64:
.int Lt_0069
.int Lt_006C
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 320,0
.long 0
.skip 344,0
.balign 4
Lt_006C:	.ascii	"_mcount\0"
.balign 4
DATAMONSTARTUP:
.int Lt_006E
.int Lt_006F
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 320,0
.long 0
.skip 344,0
.balign 4
Lt_006E:	.ascii	"fb__monstartup\0"
.balign 4
Lt_006F:	.ascii	"_monstartup\0"

.section .ctors
.int fb_ctor__rtlzprofile
