	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLGOSUBMODINIT
_RTLGOSUBMODINIT:
.Lt_0073:
mov eax, dword ptr [_ENV+888]
and eax, 65536
test eax, eax
je .Lt_0076
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS
add esp, 4
cmp dword ptr [_ENV+108], 0
jne .Lt_0078
call _FBIS64BIT
test eax, eax
je .Lt_007A
push offset _FUNCDATA1_WIN64
call _RTLADDINTRINSICPROCS
add esp, 4
jmp .Lt_0079
.Lt_007A:
push offset _FUNCDATA1_WIN32
call _RTLADDINTRINSICPROCS
add esp, 4
.Lt_0079:
jmp .Lt_0077
.Lt_0078:
push offset _FUNCDATA2
call _RTLADDINTRINSICPROCS
add esp, 4
.Lt_0077:
.Lt_0076:
.Lt_0075:
.Lt_0074:
ret
.balign 16

.globl _RTLGOSUBMODEND
_RTLGOSUBMODEND:
.Lt_007B:
.Lt_007C:
ret
.balign 16

.globl _RTLGOSUBPUSH
_RTLGOSUBPUSH:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_007D:
mov dword ptr [ebp-4], 0
push 0
push 335
push offset _Lt_0068
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0080
jmp .Lt_007E
.Lt_0080:
.Lt_007F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_007E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGOSUBPOP
_RTLGOSUBPOP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0081:
mov dword ptr [ebp-4], 0
push 0
push 336
push offset _Lt_0069
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0084
jmp .Lt_0082
.Lt_0084:
.Lt_0083:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0082:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGOSUBRETURN
_RTLGOSUBRETURN:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0085:
push 0
push 337
push offset _Lt_006A
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0088
jmp .Lt_0086
.Lt_0088:
.Lt_0087:
push dword ptr [ebp-8]
call _RTLERRORCHECK
add esp, 4
push eax
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_0086:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLGOSUBEXIT
_RTLGOSUBEXIT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0089:
mov dword ptr [ebp-4], 0
push 0
push 338
push offset _Lt_006B
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_008C
jmp .Lt_008A
.Lt_008C:
.Lt_008B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_008A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLSETJMP
_RTLSETJMP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_008D:
mov dword ptr [ebp-4], 0
push 0
push 339
push offset _Lt_006D
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0090
jmp .Lt_008E
.Lt_0090:
.Lt_008F:
cmp dword ptr [_ENV+108], 0
jne .Lt_0092
call _FBIS64BIT
test eax, eax
je .Lt_0094
push -1
push -2147483648
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0096
jmp .Lt_008E
.Lt_0096:
.Lt_0095:
.Lt_0094:
.Lt_0093:
.Lt_0092:
.Lt_0091:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_008E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__rtlzgosub:
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
_FUNCDATA:
.int _Lt_0068
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
.int _Lt_0069
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
.int _Lt_006A
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
.int _Lt_006B
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
_Lt_0068:	.ascii	"fb_GosubPush\0"
.balign 4
_Lt_0069:	.ascii	"fb_GosubPop\0"
.balign 4
_Lt_006A:	.ascii	"fb_GosubReturn\0"
.balign 4
_Lt_006B:	.ascii	"fb_GosubExit\0"
.balign 4
_FUNCDATA1_WIN32:
.int _Lt_006D
.int _Lt_006E
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
_Lt_006D:	.ascii	"fb_SetJmp\0"
.balign 4
_Lt_006E:	.ascii	"_setjmp\0"
.balign 4
_FUNCDATA1_WIN64:
.int _Lt_006D
.int _Lt_006E
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
_FUNCDATA2:
.int _Lt_006D
.int _Lt_0071
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
_Lt_0071:	.ascii	"setjmp\0"

.section .ctors
.int _fb_ctor__rtlzgosub
