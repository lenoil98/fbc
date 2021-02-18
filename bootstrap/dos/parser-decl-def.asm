	.intel_syntax noprefix

.section .text
.balign 16

.globl _CDEFDECL
_CDEFDECL:
push ebp
mov ebp, esp
sub esp, 20
.Lt_0068:
mov eax, dword ptr [_ENV+888]
and eax, 4194304
test eax, eax
jne .Lt_006B
push 0
push 146
push 4194304
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_006B:
.Lt_006A:
cmp dword ptr [_ENV+136], 3
jne .Lt_006C
mov dword ptr [ebp-16], 9
jmp .Lt_008C
.Lt_006C:
mov dword ptr [ebp-16], 8
.Lt_008C:
push dword ptr [ebp-16]
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_006F
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_006F:
.Lt_006E:
mov dword ptr [ebp-4], -2147483648
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
jmp .Lt_0071
.Lt_0073:
mov dword ptr [ebp-4], 2
jmp .Lt_0070
.Lt_0074:
mov dword ptr [ebp-4], 3
jmp .Lt_0070
.Lt_0075:
mov dword ptr [ebp-4], 5
jmp .Lt_0070
.Lt_0076:
mov dword ptr [ebp-4], 6
jmp .Lt_0070
.Lt_0077:
mov eax, dword ptr [_ENV+892]
mov dword ptr [ebp-4], eax
jmp .Lt_0070
.Lt_0078:
mov dword ptr [ebp-4], 9
jmp .Lt_0070
.Lt_0079:
mov dword ptr [ebp-4], 11
jmp .Lt_0070
.Lt_007A:
mov dword ptr [ebp-4], 12
jmp .Lt_0070
.Lt_007B:
mov dword ptr [ebp-4], 13
jmp .Lt_0070
.Lt_007C:
mov dword ptr [ebp-4], 14
jmp .Lt_0070
.Lt_007D:
mov dword ptr [ebp-4], 15
jmp .Lt_0070
.Lt_007E:
mov dword ptr [ebp-4], 16
jmp .Lt_0070
.Lt_007F:
mov dword ptr [ebp-4], 17
jmp .Lt_0070
.Lt_0071:
mov eax, dword ptr [ebp-20]
add eax, 4294966975
cmp eax, 12
ja .Lt_0070
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_0080+eax*4-1284]
_.LT_0080:
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
.int .Lt_007F
.Lt_0070:
push 2048
call _LEXSKIPTOKEN
add esp, 4
.Lt_0081:
push 0
push -1
push 0
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 33
push offset _Lt_008D
call _fb_StrAssign
add esp, 20
push 33
push offset _Lt_008D
call _fb_StrLen
add esp, 8
cmp eax, 1
je .Lt_0085
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
.Lt_0085:
.Lt_0084:
push 1
push offset _Lt_008D
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_ASC
add esp, 8
mov dword ptr [ebp-8], eax
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 45
jne .Lt_0087
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
push -1
push 0
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 33
push offset _Lt_008D
call _fb_StrAssign
add esp, 20
push 33
push offset _Lt_008D
call _fb_StrLen
add esp, 8
cmp eax, 1
je .Lt_0089
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
.Lt_0089:
.Lt_0088:
push 1
push offset _Lt_008D
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_ASC
add esp, 8
mov dword ptr [ebp-12], eax
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0086
.Lt_0087:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
.Lt_0086:
push dword ptr [ebp-4]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _SYMBSETDEFTYPE
add esp, 12
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_008B
jmp .Lt_0082
.Lt_008B:
.Lt_008A:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0083:
jmp .Lt_0081
.Lt_0082:
.Lt_0069:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_008D,33

.section .text
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
