	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLGOSUBMODINIT
RTLGOSUBMODINIT:
.Lt_0072:
mov eax, dword ptr [ENV+888]
and eax, 65536
test eax, eax
je .Lt_0075
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 4
cmp dword ptr [ENV+108], 0
jne .Lt_0077
call FBIS64BIT
test eax, eax
je .Lt_0079
push offset FUNCDATA1_WIN64
call RTLADDINTRINSICPROCS
add esp, 4
jmp .Lt_0078
.Lt_0079:
push offset FUNCDATA1_WIN32
call RTLADDINTRINSICPROCS
add esp, 4
.Lt_0078:
jmp .Lt_0076
.Lt_0077:
push offset FUNCDATA2
call RTLADDINTRINSICPROCS
add esp, 4
.Lt_0076:
.Lt_0075:
.Lt_0074:
.Lt_0073:
ret
.balign 16

.globl RTLGOSUBMODEND
RTLGOSUBMODEND:
.Lt_007A:
.Lt_007B:
ret
.balign 16

.globl RTLGOSUBPUSH
RTLGOSUBPUSH:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_007C:
mov dword ptr [ebp-4], 0
push 0
push 335
push offset Lt_0067
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
jne .Lt_007F
jmp .Lt_007D
.Lt_007F:
.Lt_007E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_007D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGOSUBPOP
RTLGOSUBPOP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0080:
mov dword ptr [ebp-4], 0
push 0
push 336
push offset Lt_0068
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
jne .Lt_0083
jmp .Lt_0081
.Lt_0083:
.Lt_0082:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0081:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGOSUBRETURN
RTLGOSUBRETURN:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0084:
push 0
push 337
push offset Lt_0069
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
jne .Lt_0087
jmp .Lt_0085
.Lt_0087:
.Lt_0086:
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_0085:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLGOSUBEXIT
RTLGOSUBEXIT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0088:
mov dword ptr [ebp-4], 0
push 0
push 338
push offset Lt_006A
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
jne .Lt_008B
jmp .Lt_0089
.Lt_008B:
.Lt_008A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0089:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLSETJMP
RTLSETJMP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_008C:
mov dword ptr [ebp-4], 0
push 0
push 339
push offset Lt_006C
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
jne .Lt_008F
jmp .Lt_008D
.Lt_008F:
.Lt_008E:
cmp dword ptr [ENV+108], 0
jne .Lt_0091
call FBIS64BIT
test eax, eax
je .Lt_0093
push -1
push -2147483648
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0095
jmp .Lt_008D
.Lt_0095:
.Lt_0094:
.Lt_0093:
.Lt_0092:
.Lt_0091:
.Lt_0090:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_008D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__rtlzgosub:
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
.int Lt_0067
.long 0
.int 32
.int -1
.long 0
.int 0
.int 1
.int 64
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0068
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 64
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0069
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 64
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_006A
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 64
.int 1
.int 0
.skip 8,0
.skip 300,0
.long 0
.skip 344,0
.balign 4
Lt_0067:	.ascii	"fb_GosubPush\0"
.balign 4
Lt_0068:	.ascii	"fb_GosubPop\0"
.balign 4
Lt_0069:	.ascii	"fb_GosubReturn\0"
.balign 4
Lt_006A:	.ascii	"fb_GosubExit\0"
.balign 4
FUNCDATA1_WIN32:
.int Lt_006C
.int Lt_006D
.int 11
.int 3
.long 0
.int 0
.int 1
.int 32
.int 1
.int 0
.skip 8,0
.skip 300,0
.long 0
.skip 344,0
.balign 4
Lt_006C:	.ascii	"fb_SetJmp\0"
.balign 4
Lt_006D:	.ascii	"_setjmp\0"
.balign 4
FUNCDATA1_WIN64:
.int Lt_006C
.int Lt_006D
.int 11
.int 3
.long 0
.int 0
.int 2
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 280,0
.long 0
.skip 344,0
.balign 4
FUNCDATA2:
.int Lt_006C
.int Lt_0070
.int 11
.int 3
.long 0
.int 0
.int 1
.int 32
.int 1
.int 0
.skip 8,0
.skip 300,0
.long 0
.skip 344,0
.balign 4
Lt_0070:	.ascii	"setjmp\0"

.section .ctors
.int fb_ctor__rtlzgosub
