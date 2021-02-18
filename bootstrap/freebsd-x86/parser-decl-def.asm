	.intel_syntax noprefix

.section .text
.balign 16

.globl CDEFDECL
CDEFDECL:
push ebp
mov ebp, esp
sub esp, 20
.Lt_0067:
mov eax, dword ptr [ENV+888]
and eax, 4194304
test eax, eax
jne .Lt_006A
push 0
push 146
push 4194304
call ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_006A:
.Lt_0069:
cmp dword ptr [ENV+136], 3
jne .Lt_006B
mov dword ptr [ebp-16], 9
jmp .Lt_008B
.Lt_006B:
mov dword ptr [ebp-16], 8
.Lt_008B:
push dword ptr [ebp-16]
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_006E
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_006E:
.Lt_006D:
mov dword ptr [ebp-4], -2147483648
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
jmp .Lt_0070
.Lt_0072:
mov dword ptr [ebp-4], 2
jmp .Lt_006F
.Lt_0073:
mov dword ptr [ebp-4], 3
jmp .Lt_006F
.Lt_0074:
mov dword ptr [ebp-4], 5
jmp .Lt_006F
.Lt_0075:
mov dword ptr [ebp-4], 6
jmp .Lt_006F
.Lt_0076:
mov eax, dword ptr [ENV+892]
mov dword ptr [ebp-4], eax
jmp .Lt_006F
.Lt_0077:
mov dword ptr [ebp-4], 9
jmp .Lt_006F
.Lt_0078:
mov dword ptr [ebp-4], 11
jmp .Lt_006F
.Lt_0079:
mov dword ptr [ebp-4], 12
jmp .Lt_006F
.Lt_007A:
mov dword ptr [ebp-4], 13
jmp .Lt_006F
.Lt_007B:
mov dword ptr [ebp-4], 14
jmp .Lt_006F
.Lt_007C:
mov dword ptr [ebp-4], 15
jmp .Lt_006F
.Lt_007D:
mov dword ptr [ebp-4], 16
jmp .Lt_006F
.Lt_007E:
mov dword ptr [ebp-4], 17
jmp .Lt_006F
.Lt_0070:
mov eax, dword ptr [ebp-20]
add eax, 4294966975
cmp eax, 12
ja .Lt_006F
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_007F+eax*4-1284]
.LT_007F:
.int .Lt_0072
.int .Lt_0073
.int .Lt_0074
.int .Lt_0075
.int .Lt_0076
.int .Lt_0077
.int .Lt_0078
.int .Lt_0079
.int .Lt_007A
.int .Lt_007B
.int .Lt_007C
.int .Lt_007D
.int .Lt_007E
.Lt_006F:
push 2048
call LEXSKIPTOKEN
add esp, 4
.Lt_0080:
push 0
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
push 33
push offset Lt_008C
call fb_StrAssign
add esp, 20
push 33
push offset Lt_008C
call fb_StrLen
add esp, 8
cmp eax, 1
je .Lt_0084
push 0
push 0
push 16
call ERRREPORT
add esp, 12
.Lt_0084:
.Lt_0083:
push 1
push offset Lt_008C
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_ASC
add esp, 8
mov dword ptr [ebp-8], eax
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 45
jne .Lt_0086
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
push 33
push offset Lt_008C
call fb_StrAssign
add esp, 20
push 33
push offset Lt_008C
call fb_StrLen
add esp, 8
cmp eax, 1
je .Lt_0088
push 0
push 0
push 16
call ERRREPORT
add esp, 12
.Lt_0088:
.Lt_0087:
push 1
push offset Lt_008C
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_ASC
add esp, 8
mov dword ptr [ebp-12], eax
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_0085
.Lt_0086:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
.Lt_0085:
push dword ptr [ebp-4]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call SYMBSETDEFTYPE
add esp, 12
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_008A
jmp .Lt_0081
.Lt_008A:
.Lt_0089:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0082:
jmp .Lt_0080
.Lt_0081:
.Lt_0068:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_008C,33

.section .text
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
