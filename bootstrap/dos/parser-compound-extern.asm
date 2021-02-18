	.intel_syntax noprefix

.section .text
.balign 16

.globl _CEXTERNSTMTBEGIN
_CEXTERNSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_0068:
mov eax, dword ptr [_ENV+888]
and eax, 8
test eax, eax
jne .Lt_006B
push 0
push 146
push 8
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push -1
push 306
call _HSKIPCOMPOUND
add esp, 12
jmp .Lt_0069
.Lt_006B:
.Lt_006A:
push 16
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_006D
push 0
push -1
push 306
call _HSKIPCOMPOUND
add esp, 12
jmp .Lt_0069
.Lt_006D:
.Lt_006C:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
je .Lt_006F
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
mov eax, offset _Lt_0070
mov dword ptr [ebp-12], eax
jmp .Lt_006E
.Lt_006F:
call _LEXGETTEXT
mov dword ptr [ebp-12], eax
.Lt_006E:
push 0
push -1
push 0
push dword ptr [ebp-12]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push 2
push offset _Lt_0070
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0073
.Lt_0074:
mov dword ptr [ebp-8], 1
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0071
.Lt_0073:
push 8
push offset _Lt_0076
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0075
.Lt_0077:
mov dword ptr [ebp-8], 2
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0071
.Lt_0075:
push 11
push offset _Lt_0079
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0078
.Lt_007A:
mov dword ptr [ebp-8], 3
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0071
.Lt_0078:
push 4
push offset _Lt_007C
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_007B
.Lt_007D:
mov dword ptr [ebp-8], 4
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0071
.Lt_007B:
push 6
push offset _Lt_007F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_007E
.Lt_0080:
mov dword ptr [ebp-8], 6
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0071
.Lt_007E:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-8], 1
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0081:
.Lt_0071:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
call _CLIBATTRIBUTE
push -34
push 306
call _CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [_PARSER+100]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [_PARSER+100], ebx
.Lt_0069:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CEXTERNSTMTEND
_CEXTERNSTMTEND:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0082:
push -1
push 306
call _CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0085
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0083
.Lt_0085:
.Lt_0084:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [_PARSER+100], ebx
push dword ptr [ebp-4]
call _CCOMPSTMTPOP
add esp, 4
.Lt_0083:
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
_Lt_0070:	.ascii	"c\0"
.balign 4
_Lt_0076:	.ascii	"windows\0"
.balign 4
_Lt_0079:	.ascii	"windows-ms\0"
.balign 4
_Lt_007C:	.ascii	"c++\0"
.balign 4
_Lt_007F:	.ascii	"rtlib\0"
