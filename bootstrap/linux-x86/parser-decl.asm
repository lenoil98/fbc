	.intel_syntax noprefix

.section .text
.balign 16

.globl CDECLARATION
CDECLARATION:
.type CDECLARATION, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ENV+136], 3
jne .Lt_006A
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], -2147483648
je .Lt_006C
mov dword ptr [ebp-4], 0
jmp .Lt_0068
.Lt_006C:
.Lt_006B:
.Lt_006A:
.Lt_0069:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-20], eax
jmp .Lt_006E
.Lt_0070:
call HCHECKSCOPE
test eax, eax
je .Lt_0072
mov dword ptr [ebp-8], 32
.Lt_0072:
.Lt_0071:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_006D
.Lt_0073:
call HCHECKSCOPE
test eax, eax
je .Lt_0075
mov dword ptr [ebp-8], 64
.Lt_0075:
.Lt_0074:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_006D
.Lt_0076:
call CPROCDECL
mov dword ptr [ebp-4], -1
jmp .Lt_0068
jmp .Lt_006D
.Lt_0077:
call CDEFDECL
mov dword ptr [ebp-4], -1
jmp .Lt_0068
jmp .Lt_006D
.Lt_0078:
call COPTDECL
mov dword ptr [ebp-4], -1
jmp .Lt_0068
jmp .Lt_006D
.Lt_006E:
mov eax, dword ptr [ebp-20]
add eax, 4294966975
cmp eax, 58
ja .Lt_006D
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_0079+eax*4-1284]
.LT_0079:
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0076
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_0078
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_006D
.int .Lt_0070
.int .Lt_0073
.Lt_006D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .Lt_007B
.Lt_007D:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_007F
.Lt_0081:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_007E
.Lt_0082:
cmp dword ptr [ebp-16], 335
jne .Lt_0084
.Lt_0085:
sub esp, 12
push dword ptr [ebp-8]
call CCONSTDECL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0083
.Lt_0084:
cmp dword ptr [ebp-16], 307
jne .Lt_0086
.Lt_0087:
sub esp, 12
push dword ptr [ebp-8]
call CVARIABLEDECL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0083
.Lt_0086:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.Lt_0088:
.Lt_0083:
jmp .Lt_007E
.Lt_007F:
mov eax, dword ptr [ebp-24]
add eax, 4294966951
cmp eax, 10
ja .Lt_0082
mov eax, dword ptr [ebp-24]
jmp dword ptr [.LT_0089+eax*4-1380]
.LT_0089:
.int .Lt_0081
.int .Lt_0081
.int .Lt_0081
.int .Lt_0081
.int .Lt_0081
.int .Lt_0081
.int .Lt_0082
.int .Lt_0082
.int .Lt_0082
.int .Lt_0081
.int .Lt_0081
.Lt_007E:
jmp .Lt_007A
.Lt_008A:
cmp dword ptr [ebp-8], 0
je .Lt_008C
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_008B
.Lt_008C:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 299
je .Lt_0090
.Lt_0091:
cmp dword ptr [ebp-24], 305
jne .Lt_008F
.Lt_0090:
jmp .Lt_008D
.Lt_008F:
sub esp, 8
push 0
push 0
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0092:
.Lt_008D:
.Lt_008B:
jmp .Lt_007A
.Lt_0093:
cmp dword ptr [ebp-8], 0
je .Lt_0095
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0094
.Lt_0095:
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
jne .Lt_0097
sub esp, 8
push 0
push 0
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0097:
.Lt_0096:
.Lt_0094:
jmp .Lt_007A
.Lt_0098:
cmp dword ptr [ebp-8], 0
je .Lt_009A
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0099
.Lt_009A:
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
jne .Lt_009C
sub esp, 8
push 0
push 0
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_009B
.Lt_009C:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 299
je .Lt_00A0
.Lt_00A1:
cmp dword ptr [ebp-24], 305
jne .Lt_009F
.Lt_00A0:
jmp .Lt_009D
.Lt_009F:
sub esp, 8
push 0
push 0
call CPROCSTMTBEGIN
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_00A2:
.Lt_009D:
.Lt_009B:
.Lt_0099:
jmp .Lt_007A
.Lt_00A3:
cmp dword ptr [ebp-8], 0
jne .Lt_00A5
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 301
je .Lt_00A9
.Lt_00AA:
cmp dword ptr [ebp-24], 40
jne .Lt_00A8
.Lt_00A9:
mov dword ptr [ebp-4], 0
jmp .Lt_0068
.Lt_00A8:
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
sub esp, 12
push dword ptr [ebp-8]
call CTYPEDECL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_007A
.Lt_00AB:
sub esp, 12
push dword ptr [ebp-8]
call CTYPEDECL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_007A
.Lt_00AC:
sub esp, 12
push dword ptr [ebp-8]
call CENUMDECL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_007A
.Lt_00AD:
sub esp, 12
push dword ptr [ebp-8]
call CVARIABLEDECL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_007A
.Lt_00AE:
cmp dword ptr [ebp-8], 0
je .Lt_00B0
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_00B0:
.Lt_00AF:
jmp .Lt_007A
.Lt_007B:
mov eax, dword ptr [ebp-20]
add eax, 4294966990
cmp eax, 49
ja .Lt_00AE
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_00B1+eax*4-1224]
.LT_00B1:
.int .Lt_00AD
.int .Lt_007D
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_007D
.int .Lt_00A3
.int .Lt_00AB
.int .Lt_00AC
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_008A
.int .Lt_008A
.int .Lt_0093
.int .Lt_008A
.int .Lt_0098
.int .Lt_008A
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_007D
.int .Lt_007D
.Lt_007A:
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CDECLARATION, .-CDECLARATION
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
