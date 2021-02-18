	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLPROFILEMODINIT
RTLPROFILEMODINIT:
.type RTLPROFILEMODINIT, @function
push ebp
mov ebp, esp
sub esp, 4
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
sub esp, 12
push offset DATAMCOUNTWIN64
call RTLADDINTRINSICPROCS
add esp, 16
jmp .Lt_0072
.Lt_0073:
sub esp, 12
push offset DATAMCOUNTNORMAL
call RTLADDINTRINSICPROCS
add esp, 16
.Lt_0072:
sub esp, 12
push offset DATAMONSTARTUP
call RTLADDINTRINSICPROCS
add esp, 16
.Lt_0071:
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLPROFILEMODINIT, .-RTLPROFILEMODINIT
.balign 16

.globl RTLPROFILEMODEND
RTLPROFILEMODEND:
.type RTLPROFILEMODEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0075:
.Lt_0076:
mov esp, ebp
pop ebp
ret
.size RTLPROFILEMODEND, .-RTLPROFILEMODEND
.balign 16

.globl RTLPROFILECALL_MCOUNT
RTLPROFILECALL_MCOUNT:
.type RTLPROFILECALL_MCOUNT, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0077:
sub esp, 8
push 0
sub esp, 12
push 333
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0078:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLPROFILECALL_MCOUNT, .-RTLPROFILECALL_MCOUNT
.balign 16

.globl RTLPROFILECALL_MONSTARTUP
RTLPROFILECALL_MONSTARTUP:
.type RTLPROFILECALL_MONSTARTUP, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0079:
sub esp, 12
sub esp, 12
push 0
sub esp, 12
push 334
push offset Lt_006E
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_007A:
mov esp, ebp
pop ebp
ret
.size RTLPROFILECALL_MONSTARTUP, .-RTLPROFILECALL_MONSTARTUP
.balign 16
fb_ctor__rtlzprofile:
.type fb_ctor__rtlzprofile, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__rtlzprofile, .-fb_ctor__rtlzprofile
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

.section .rodata
.balign 4
Lt_0069:	.ascii	"fb_mcount\0"
.balign 4
Lt_006A:	.ascii	"mcount\0"

.section .data
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

.section .rodata
.balign 4
Lt_006C:	.ascii	"_mcount\0"

.section .data
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

.section .rodata
.balign 4
Lt_006E:	.ascii	"fb__monstartup\0"
.balign 4
Lt_006F:	.ascii	"_monstartup\0"

.section .ctors, "aw", @progbits
.int fb_ctor__rtlzprofile
