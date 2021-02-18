	.intel_syntax noprefix

.section .text
.balign 16

.globl _CSTATEMENT@0
_CSTATEMENT@0:
.Lt_0068:
push 0
call _LEXGETTOKEN@4
cmp eax, 258
jne .Lt_006B
inc dword ptr [_PARSER+28]
push 0
call _LEXSKIPTOKEN@4
.Lt_006B:
.Lt_006A:
.Lt_006C:
call _CDECLARATION@0
test eax, eax
jne .Lt_0070
call _CCOMPOUNDSTMT@0
test eax, eax
jne .Lt_0072
call _CPROCCALLORASSIGN@0
test eax, eax
jne .Lt_0074
push -1
call _CQUIRKSTMT@4
test eax, eax
jne .Lt_0076
call _CASMBLOCK@0
test eax, eax
jne .Lt_0078
call _CASSIGNMENTORPTRCALL@0
.Lt_0078:
.Lt_0077:
.Lt_0076:
.Lt_0075:
.Lt_0074:
.Lt_0073:
.Lt_0072:
.Lt_0071:
.Lt_0070:
.Lt_006F:
push 0
call _LEXGETTOKEN@4
cmp eax, 258
je .Lt_007A
jmp .Lt_006D
.Lt_007A:
.Lt_0079:
inc dword ptr [_PARSER+28]
push 0
call _LEXSKIPTOKEN@4
.Lt_006E:
jmp .Lt_006C
.Lt_006D:
.Lt_0069:
ret
.balign 16

.globl _CSTMTSEPARATOR@4
_CSTMTSEPARATOR@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_007B:
mov dword ptr [ebp-4], 0
.Lt_007D:
push dword ptr [ebp+8]
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 258
je .Lt_0083
.Lt_0084:
cmp dword ptr [ebp-8], 257
jne .Lt_0082
.Lt_0083:
inc dword ptr [_PARSER+28]
push dword ptr [ebp+8]
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-4], -1
jmp .Lt_0080
.Lt_0082:
cmp dword ptr [ebp-8], 256
jne .Lt_0085
.Lt_0086:
mov dword ptr [ebp-4], -1
jmp .Lt_007E
jmp .Lt_0080
.Lt_0085:
jmp .Lt_007E
.Lt_0087:
.Lt_0080:
.Lt_007F:
jmp .Lt_007D
.Lt_007E:
.Lt_007C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
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
