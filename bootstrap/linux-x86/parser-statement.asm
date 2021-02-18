	.intel_syntax noprefix

.section .text
.balign 16

.globl CSTATEMENT
CSTATEMENT:
.type CSTATEMENT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0067:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 258
jne .Lt_006A
inc dword ptr [PARSER+28]
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_006A:
.Lt_0069:
.Lt_006B:
call CDECLARATION
test eax, eax
jne .Lt_006F
call CCOMPOUNDSTMT
test eax, eax
jne .Lt_0071
call CPROCCALLORASSIGN
test eax, eax
jne .Lt_0073
sub esp, 12
push -1
call CQUIRKSTMT
add esp, 16
test eax, eax
jne .Lt_0075
call CASMBLOCK
test eax, eax
jne .Lt_0077
call CASSIGNMENTORPTRCALL
.Lt_0077:
.Lt_0076:
.Lt_0075:
.Lt_0074:
.Lt_0073:
.Lt_0072:
.Lt_0071:
.Lt_0070:
.Lt_006F:
.Lt_006E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 258
je .Lt_0079
jmp .Lt_006C
.Lt_0079:
.Lt_0078:
inc dword ptr [PARSER+28]
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_006D:
jmp .Lt_006B
.Lt_006C:
.Lt_0068:
mov esp, ebp
pop ebp
ret
.size CSTATEMENT, .-CSTATEMENT
.balign 16

.globl CSTMTSEPARATOR
CSTMTSEPARATOR:
.type CSTMTSEPARATOR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_007A:
mov dword ptr [ebp-4], 0
.Lt_007C:
sub esp, 12
push dword ptr [ebp+8]
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 258
je .Lt_0082
.Lt_0083:
cmp dword ptr [ebp-8], 257
jne .Lt_0081
.Lt_0082:
inc dword ptr [PARSER+28]
sub esp, 12
push dword ptr [ebp+8]
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_007F
.Lt_0081:
cmp dword ptr [ebp-8], 256
jne .Lt_0084
.Lt_0085:
mov dword ptr [ebp-4], -1
jmp .Lt_007D
jmp .Lt_007F
.Lt_0084:
jmp .Lt_007D
.Lt_0086:
.Lt_007F:
.Lt_007E:
jmp .Lt_007C
.Lt_007D:
.Lt_007B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CSTMTSEPARATOR, .-CSTMTSEPARATOR
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
