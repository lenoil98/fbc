	.intel_syntax noprefix

.section .text
.balign 16

.globl _CDECLARATION@0
_CDECLARATION@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [_ENV+136], 3
jne .Lt_006B
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], -2147483648
je .Lt_006D
mov dword ptr [ebp-4], 0
jmp .Lt_0069
.Lt_006D:
.Lt_006C:
.Lt_006B:
.Lt_006A:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-20], eax
jmp .Lt_006F
.Lt_0071:
call _HCHECKSCOPE@0
test eax, eax
je .Lt_0073
mov dword ptr [ebp-8], 32
.Lt_0073:
.Lt_0072:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_006E
.Lt_0074:
call _HCHECKSCOPE@0
test eax, eax
je .Lt_0076
mov dword ptr [ebp-8], 64
.Lt_0076:
.Lt_0075:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_006E
.Lt_0077:
call _CPROCDECL@0
mov dword ptr [ebp-4], -1
jmp .Lt_0069
jmp .Lt_006E
.Lt_0078:
call _CDEFDECL@0
mov dword ptr [ebp-4], -1
jmp .Lt_0069
jmp .Lt_006E
.Lt_0079:
call _COPTDECL@0
mov dword ptr [ebp-4], -1
jmp .Lt_0069
jmp .Lt_006E
.Lt_006F:
mov eax, dword ptr [ebp-20]
add eax, 4294966975
cmp eax, 58
ja .Lt_006E
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_007A+eax*4-1284]
_.LT_007A:
.int .Lt_0078
.int .Lt_0078
.int .Lt_0078
.int .Lt_0078
.int .Lt_0078
.int .Lt_0078
.int .Lt_0078
.int .Lt_0078
.int .Lt_0078
.int .Lt_0078
.int .Lt_0078
.int .Lt_0078
.int .Lt_0078
.int .Lt_0077
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_0079
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_006E
.int .Lt_0071
.int .Lt_0074
.Lt_006E:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .Lt_007C
.Lt_007E:
push 0
push 1
call _LEXGETLOOKAHEAD@8
mov dword ptr [ebp-24], eax
jmp .Lt_0080
.Lt_0082:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _CPROCSTMTBEGIN@8
mov dword ptr [ebp-4], -1
jmp .Lt_007F
.Lt_0083:
cmp dword ptr [ebp-16], 335
jne .Lt_0085
.Lt_0086:
push dword ptr [ebp-8]
call _CCONSTDECL@4
mov dword ptr [ebp-4], -1
jmp .Lt_0084
.Lt_0085:
cmp dword ptr [ebp-16], 307
jne .Lt_0087
.Lt_0088:
push dword ptr [ebp-8]
call _CVARIABLEDECL@4
mov dword ptr [ebp-4], eax
jmp .Lt_0084
.Lt_0087:
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_0089:
.Lt_0084:
jmp .Lt_007F
.Lt_0080:
mov eax, dword ptr [ebp-24]
add eax, 4294966951
cmp eax, 10
ja .Lt_0083
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.LT_008A+eax*4-1380]
_.LT_008A:
.int .Lt_0082
.int .Lt_0082
.int .Lt_0082
.int .Lt_0082
.int .Lt_0082
.int .Lt_0082
.int .Lt_0083
.int .Lt_0083
.int .Lt_0083
.int .Lt_0082
.int .Lt_0082
.Lt_007F:
jmp .Lt_007B
.Lt_008B:
cmp dword ptr [ebp-8], 0
je .Lt_008D
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _CPROCSTMTBEGIN@8
mov dword ptr [ebp-4], -1
jmp .Lt_008C
.Lt_008D:
push 0
push 1
call _LEXGETLOOKAHEAD@8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 299
je .Lt_0091
.Lt_0092:
cmp dword ptr [ebp-24], 305
jne .Lt_0090
.Lt_0091:
jmp .Lt_008E
.Lt_0090:
push 0
push 0
call _CPROCSTMTBEGIN@8
mov dword ptr [ebp-4], -1
.Lt_0093:
.Lt_008E:
.Lt_008C:
jmp .Lt_007B
.Lt_0094:
cmp dword ptr [ebp-8], 0
je .Lt_0096
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _CPROCSTMTBEGIN@8
mov dword ptr [ebp-4], -1
jmp .Lt_0095
.Lt_0096:
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
jne .Lt_0098
push 0
push 0
call _CPROCSTMTBEGIN@8
mov dword ptr [ebp-4], -1
.Lt_0098:
.Lt_0097:
.Lt_0095:
jmp .Lt_007B
.Lt_0099:
cmp dword ptr [ebp-8], 0
je .Lt_009B
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _CPROCSTMTBEGIN@8
mov dword ptr [ebp-4], -1
jmp .Lt_009A
.Lt_009B:
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
jne .Lt_009D
push 0
push 0
call _CPROCSTMTBEGIN@8
mov dword ptr [ebp-4], -1
jmp .Lt_009C
.Lt_009D:
push 0
push 1
call _LEXGETLOOKAHEAD@8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 299
je .Lt_00A1
.Lt_00A2:
cmp dword ptr [ebp-24], 305
jne .Lt_00A0
.Lt_00A1:
jmp .Lt_009E
.Lt_00A0:
push 0
push 0
call _CPROCSTMTBEGIN@8
mov dword ptr [ebp-4], -1
.Lt_00A3:
.Lt_009E:
.Lt_009C:
.Lt_009A:
jmp .Lt_007B
.Lt_00A4:
cmp dword ptr [ebp-8], 0
jne .Lt_00A6
push 0
push 1
call _LEXGETLOOKAHEAD@8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 301
je .Lt_00AA
.Lt_00AB:
cmp dword ptr [ebp-24], 40
jne .Lt_00A9
.Lt_00AA:
mov dword ptr [ebp-4], 0
jmp .Lt_0069
.Lt_00A9:
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
push dword ptr [ebp-8]
call _CTYPEDECL@4
mov dword ptr [ebp-4], -1
jmp .Lt_007B
.Lt_00AC:
push dword ptr [ebp-8]
call _CTYPEDECL@4
mov dword ptr [ebp-4], -1
jmp .Lt_007B
.Lt_00AD:
push dword ptr [ebp-8]
call _CENUMDECL@4
mov dword ptr [ebp-4], -1
jmp .Lt_007B
.Lt_00AE:
push dword ptr [ebp-8]
call _CVARIABLEDECL@4
mov dword ptr [ebp-4], eax
jmp .Lt_007B
.Lt_00AF:
cmp dword ptr [ebp-8], 0
je .Lt_00B1
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
.Lt_00B1:
.Lt_00B0:
jmp .Lt_007B
.Lt_007C:
mov eax, dword ptr [ebp-20]
add eax, 4294966990
cmp eax, 49
ja .Lt_00AF
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_00B2+eax*4-1224]
_.LT_00B2:
.int .Lt_00AE
.int .Lt_007E
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_007E
.int .Lt_00A4
.int .Lt_00AC
.int .Lt_00AD
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_008B
.int .Lt_008B
.int .Lt_0094
.int .Lt_008B
.int .Lt_0099
.int .Lt_008B
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_007E
.int .Lt_007E
.Lt_007B:
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
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
