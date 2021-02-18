	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLMEMMODINIT
_RTLMEMMODINIT:
.Lt_0073:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS
add esp, 4
.Lt_0074:
ret
.balign 16

.globl _RTLMEMMODEND
_RTLMEMMODEND:
.Lt_0075:
.Lt_0076:
ret
.balign 16

.globl _RTLNULLPTRCHECK
_RTLNULLPTRCHECK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0077:
mov dword ptr [ebp-4], 0
push 0
push 136
push offset _Lt_005F
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push 32
push 0
push 16
push dword ptr [ebp+8]
push 0
push 32
call _ASTNEWCONV
add esp, 20
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_007A
jmp .Lt_0078
.Lt_007A:
.Lt_0079:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_007C
jmp .Lt_0078
.Lt_007C:
.Lt_007B:
push -1
push -2147483648
push dword ptr [ebp+16]
call _ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_007E
jmp .Lt_0078
.Lt_007E:
.Lt_007D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0078:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMEMSWAP
_RTLMEMSWAP:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_007F:
mov dword ptr [ebp-4], 0
push 0
push 218
push offset _Lt_0060
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp+8]
call _RTLCALCEXPRLEN
add esp, 4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0082
jmp .Lt_0080
.Lt_0082:
.Lt_0081:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0084
jmp .Lt_0080
.Lt_0084:
.Lt_0083:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0086
jmp .Lt_0080
.Lt_0086:
.Lt_0085:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_0080:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMEMCOPYCLEAR
_RTLMEMCOPYCLEAR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0087:
mov dword ptr [ebp-4], 0
push 0
push 219
push offset _Lt_0061
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
jne .Lt_008A
jmp .Lt_0088
.Lt_008A:
.Lt_0089:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_008C
jmp .Lt_0088
.Lt_008C:
.Lt_008B:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_008E
jmp .Lt_0088
.Lt_008E:
.Lt_008D:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0090
jmp .Lt_0088
.Lt_0090:
.Lt_008F:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_0088:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMEMNEWOP
_RTLMEMNEWOP:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0091:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_0093
mov dword ptr [ebp-16], 24
jmp .Lt_00A1
.Lt_0093:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00A1:
cmp dword ptr [ebp-16], 20
jne .Lt_0096
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [_AST_OPTB+eax+12]
push dword ptr [ebp+20]
call _SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_0098
push dword ptr [ebp-12]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_009A
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
.Lt_009A:
.Lt_0099:
.Lt_0098:
.Lt_0097:
jmp .Lt_0095
.Lt_0096:
mov dword ptr [ebp-12], 0
.Lt_0095:
cmp dword ptr [ebp-12], 0
jne .Lt_009C
push 221
push offset _Lt_0064
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_009E
mov dword ptr [ebp-4], 0
jmp .Lt_0092
.Lt_009E:
.Lt_009D:
.Lt_009C:
.Lt_009B:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00A0
jmp .Lt_0092
.Lt_00A0:
.Lt_009F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0092:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMEMDELETEOP
_RTLMEMDELETEOP:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_00A2:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_00A4
mov dword ptr [ebp-16], 24
jmp .Lt_00B2
.Lt_00A4:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00B2:
cmp dword ptr [ebp-16], 20
jne .Lt_00A7
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [_AST_OPTB+eax+12]
push dword ptr [ebp+20]
call _SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_00A9
push dword ptr [ebp-12]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00AB
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
.Lt_00AB:
.Lt_00AA:
.Lt_00A9:
.Lt_00A8:
jmp .Lt_00A6
.Lt_00A7:
mov dword ptr [ebp-12], 0
.Lt_00A6:
cmp dword ptr [ebp-12], 0
jne .Lt_00AD
push 222
push offset _Lt_006A
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00AF
mov dword ptr [ebp-4], 0
jmp .Lt_00A3
.Lt_00AF:
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00B1
jmp .Lt_00A3
.Lt_00B1:
.Lt_00B0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__rtlzmem:
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
.int _Lt_005F
.long 0
.int 32
.int -1
.long 0
.int 2048
.int 3
.int 1056
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 1060
.int 1
.int 0
.skip 8,0
.skip 260,0
.int _Lt_0060
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 0
.int 2
.int 0
.int 0
.int -1
.int 0
.int 2
.int 0
.int 0
.int -1
.int 520
.int 1
.int 0
.skip 8,0
.skip 260,0
.int _Lt_0061
.long 0
.int 0
.int -1
.long 0
.int 0
.int 4
.int 0
.int 2
.int 0
.int 0
.int -1
.int 521
.int 1
.int 0
.skip 8,0
.int 512
.int 2
.int 0
.int 0
.int -1
.int 521
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_0062
.int _Lt_0063
.int 9
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 300,0
.int _Lt_0064
.int _Lt_0065
.int 32
.int 3
.long 0
.int 128
.int 1
.int 521
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0066
.int _Lt_0067
.int 32
.int 3
.long 0
.int 128
.int 2
.int 521
.int 1
.int 0
.skip 8,0
.int 521
.int 1
.int -1
.int 1
.skip 4,0
.skip 280,0
.int _Lt_0068
.int _Lt_0069
.int 32
.int 3
.long 0
.int 128
.int 2
.int 1056
.int 1
.int 0
.int 0
.int -1
.int 521
.int 1
.int 0
.skip 8,0
.skip 280,0
.int _Lt_006A
.int _Lt_006B
.int 0
.int 3
.long 0
.int 128
.int 1
.int 1056
.int 1
.int 0
.int 0
.int -1
.skip 300,0
.int _Lt_006C
.int _Lt_006D
.int 32
.int 3
.long 0
.int 0
.int 3
.int 0
.int 2
.int 0
.int 0
.int -1
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.int 521
.int 1
.int 0
.skip 8,0
.skip 260,0
.int _Lt_006E
.int _Lt_006F
.int 32
.int 3
.long 0
.int 0
.int 3
.int 0
.int 2
.int 0
.int 0
.int -1
.int 512
.int 2
.int 0
.int 0
.int -1
.int 521
.int 1
.int 0
.skip 8,0
.skip 260,0
.int _Lt_0070
.int _Lt_0071
.int 32
.int 3
.long 0
.int 0
.int 3
.int 0
.int 2
.int 0
.int 0
.int -1
.int 512
.int 2
.int 0
.int 0
.int -1
.int 521
.int 1
.int 0
.skip 8,0
.skip 260,0
.long 0
.skip 344,0
.balign 4
_Lt_005F:	.ascii	"fb_NullPtrChk\0"
.balign 4
_Lt_0060:	.ascii	"fb_MemSwap\0"
.balign 4
_Lt_0061:	.ascii	"fb_MemCopyClear\0"
.balign 4
_Lt_0062:	.ascii	"fre\0"
.balign 4
_Lt_0063:	.ascii	"fb_GetMemAvail\0"
.balign 4
_Lt_0064:	.ascii	"allocate\0"
.balign 4
_Lt_0065:	.ascii	"malloc\0"
.balign 4
_Lt_0066:	.ascii	"callocate\0"
.balign 4
_Lt_0067:	.ascii	"calloc\0"
.balign 4
_Lt_0068:	.ascii	"reallocate\0"
.balign 4
_Lt_0069:	.ascii	"realloc\0"
.balign 4
_Lt_006A:	.ascii	"deallocate\0"
.balign 4
_Lt_006B:	.ascii	"free\0"
.balign 4
_Lt_006C:	.ascii	"clear\0"
.balign 4
_Lt_006D:	.ascii	"memset\0"
.balign 4
_Lt_006E:	.ascii	"fb_MemMove\0"
.balign 4
_Lt_006F:	.ascii	"memmove\0"
.balign 4
_Lt_0070:	.ascii	"fb_MemCopy\0"
.balign 4
_Lt_0071:	.ascii	"memcpy\0"

.section .ctors
.int _fb_ctor__rtlzmem
