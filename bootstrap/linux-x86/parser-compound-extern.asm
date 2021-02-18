	.intel_syntax noprefix

.section .text
.balign 16

.globl CEXTERNSTMTBEGIN
CEXTERNSTMTBEGIN:
.type CEXTERNSTMTBEGIN, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0067:
mov eax, dword ptr [ENV+888]
and eax, 8
test eax, eax
jne .Lt_006A
sub esp, 4
push 0
push 146
push 8
call ERRREPORTNOTALLOWED
add esp, 16
sub esp, 4
push 0
push -1
push 306
call HSKIPCOMPOUND
add esp, 16
jmp .Lt_0068
.Lt_006A:
.Lt_0069:
sub esp, 12
push 16
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_006C
sub esp, 4
push 0
push -1
push 306
call HSKIPCOMPOUND
add esp, 16
jmp .Lt_0068
.Lt_006C:
.Lt_006B:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
je .Lt_006E
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov eax, offset Lt_006F
mov dword ptr [ebp-12], eax
jmp .Lt_006D
.Lt_006E:
call LEXGETTEXT
mov dword ptr [ebp-12], eax
.Lt_006D:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp-12]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
push 2
push offset Lt_006F
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0072
.Lt_0073:
mov dword ptr [ebp-8], 1
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0070
.Lt_0072:
push 8
push offset Lt_0075
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0074
.Lt_0076:
mov dword ptr [ebp-8], 2
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0070
.Lt_0074:
push 11
push offset Lt_0078
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0077
.Lt_0079:
mov dword ptr [ebp-8], 3
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0070
.Lt_0077:
push 4
push offset Lt_007B
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_007A
.Lt_007C:
mov dword ptr [ebp-8], 4
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0070
.Lt_007A:
push 6
push offset Lt_007E
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_007D
.Lt_007F:
mov dword ptr [ebp-8], 6
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0070
.Lt_007D:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov dword ptr [ebp-8], 1
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0080:
.Lt_0070:
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
call CLIBATTRIBUTE
sub esp, 8
push -34
push 306
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [PARSER+100]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [PARSER+100], ebx
.Lt_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.size CEXTERNSTMTBEGIN, .-CEXTERNSTMTBEGIN
.balign 16

.globl CEXTERNSTMTEND
CEXTERNSTMTEND:
.type CEXTERNSTMTEND, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0081:
sub esp, 8
push -1
push 306
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0084
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0082
.Lt_0084:
.Lt_0083:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [PARSER+100], ebx
sub esp, 12
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 16
.Lt_0082:
pop ebx
mov esp, ebp
pop ebp
ret
.size CEXTERNSTMTEND, .-CEXTERNSTMTEND
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

.section .rodata
.balign 4
Lt_006F:	.ascii	"c\0"
.balign 4
Lt_0075:	.ascii	"windows\0"
.balign 4
Lt_0078:	.ascii	"windows-ms\0"
.balign 4
Lt_007B:	.ascii	"c++\0"
.balign 4
Lt_007E:	.ascii	"rtlib\0"
