	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLMEMMODINIT
RTLMEMMODINIT:
.Lt_0072:
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 4
.Lt_0073:
ret
.balign 16

.globl RTLMEMMODEND
RTLMEMMODEND:
.Lt_0074:
.Lt_0075:
ret
.balign 16

.globl RTLNULLPTRCHECK
RTLNULLPTRCHECK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0076:
mov dword ptr [ebp-4], 0
push 0
push 136
push offset Lt_005E
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push 32
push 0
push 16
push dword ptr [ebp+8]
push 0
push 32
call ASTNEWCONV
add esp, 20
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0079
jmp .Lt_0077
.Lt_0079:
.Lt_0078:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_007B
jmp .Lt_0077
.Lt_007B:
.Lt_007A:
push -1
push -2147483648
push dword ptr [ebp+16]
call ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_007D
jmp .Lt_0077
.Lt_007D:
.Lt_007C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0077:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLMEMSWAP
RTLMEMSWAP:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_007E:
mov dword ptr [ebp-4], 0
push 0
push 218
push offset Lt_005F
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp+8]
call RTLCALCEXPRLEN
add esp, 4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0081
jmp .Lt_007F
.Lt_0081:
.Lt_0080:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0083
jmp .Lt_007F
.Lt_0083:
.Lt_0082:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0085
jmp .Lt_007F
.Lt_0085:
.Lt_0084:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_007F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLMEMCOPYCLEAR
RTLMEMCOPYCLEAR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0086:
mov dword ptr [ebp-4], 0
push 0
push 219
push offset Lt_0060
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
jne .Lt_0089
jmp .Lt_0087
.Lt_0089:
.Lt_0088:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_008B
jmp .Lt_0087
.Lt_008B:
.Lt_008A:
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_008D
jmp .Lt_0087
.Lt_008D:
.Lt_008C:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_008F
jmp .Lt_0087
.Lt_008F:
.Lt_008E:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_0087:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLMEMNEWOP
RTLMEMNEWOP:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0090:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_0092
mov dword ptr [ebp-16], 24
jmp .Lt_00A0
.Lt_0092:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00A0:
cmp dword ptr [ebp-16], 20
jne .Lt_0095
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [AST_OPTB+eax+12]
push dword ptr [ebp+20]
call SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_0097
push dword ptr [ebp-12]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_0099
push 0
push 0
push 202
call ERRREPORT
add esp, 12
.Lt_0099:
.Lt_0098:
.Lt_0097:
.Lt_0096:
jmp .Lt_0094
.Lt_0095:
mov dword ptr [ebp-12], 0
.Lt_0094:
cmp dword ptr [ebp-12], 0
jne .Lt_009B
push 221
push offset Lt_0063
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_009D
mov dword ptr [ebp-4], 0
jmp .Lt_0091
.Lt_009D:
.Lt_009C:
.Lt_009B:
.Lt_009A:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_009F
jmp .Lt_0091
.Lt_009F:
.Lt_009E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0091:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLMEMDELETEOP
RTLMEMDELETEOP:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_00A1:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_00A3
mov dword ptr [ebp-16], 24
jmp .Lt_00B1
.Lt_00A3:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00B1:
cmp dword ptr [ebp-16], 20
jne .Lt_00A6
mov eax, dword ptr [ebp+8]
sal eax, 4
push dword ptr [AST_OPTB+eax+12]
push dword ptr [ebp+20]
call SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_00A8
push dword ptr [ebp-12]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00AA
push 0
push 0
push 202
call ERRREPORT
add esp, 12
.Lt_00AA:
.Lt_00A9:
.Lt_00A8:
.Lt_00A7:
jmp .Lt_00A5
.Lt_00A6:
mov dword ptr [ebp-12], 0
.Lt_00A5:
cmp dword ptr [ebp-12], 0
jne .Lt_00AC
push 222
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00AE
mov dword ptr [ebp-4], 0
jmp .Lt_00A2
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
.Lt_00AB:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00B0
jmp .Lt_00A2
.Lt_00B0:
.Lt_00AF:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__rtlzmem:
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
.int Lt_005E
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
.int Lt_005F
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
.int Lt_0060
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
.int Lt_0061
.int Lt_0062
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
.int Lt_0063
.int Lt_0064
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
.int Lt_0065
.int Lt_0066
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
.int Lt_0067
.int Lt_0068
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
.int Lt_0069
.int Lt_006A
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
.int Lt_006B
.int Lt_006C
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
.int Lt_006D
.int Lt_006E
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
.int Lt_006F
.int Lt_0070
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
Lt_005E:	.ascii	"fb_NullPtrChk\0"
.balign 4
Lt_005F:	.ascii	"fb_MemSwap\0"
.balign 4
Lt_0060:	.ascii	"fb_MemCopyClear\0"
.balign 4
Lt_0061:	.ascii	"fre\0"
.balign 4
Lt_0062:	.ascii	"fb_GetMemAvail\0"
.balign 4
Lt_0063:	.ascii	"allocate\0"
.balign 4
Lt_0064:	.ascii	"malloc\0"
.balign 4
Lt_0065:	.ascii	"callocate\0"
.balign 4
Lt_0066:	.ascii	"calloc\0"
.balign 4
Lt_0067:	.ascii	"reallocate\0"
.balign 4
Lt_0068:	.ascii	"realloc\0"
.balign 4
Lt_0069:	.ascii	"deallocate\0"
.balign 4
Lt_006A:	.ascii	"free\0"
.balign 4
Lt_006B:	.ascii	"clear\0"
.balign 4
Lt_006C:	.ascii	"memset\0"
.balign 4
Lt_006D:	.ascii	"fb_MemMove\0"
.balign 4
Lt_006E:	.ascii	"memmove\0"
.balign 4
Lt_006F:	.ascii	"fb_MemCopy\0"
.balign 4
Lt_0070:	.ascii	"memcpy\0"

.section .ctors
.int fb_ctor__rtlzmem
