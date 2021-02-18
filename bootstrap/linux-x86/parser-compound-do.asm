	.intel_syntax noprefix

.section .text
.balign 16

.globl CDOSTMTBEGIN
CDOSTMTBEGIN:
.type CDOSTMTBEGIN, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0067:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-16]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 273
jne .Lt_006B
.Lt_006C:
mov dword ptr [ebp-8], -1
jmp .Lt_0069
.Lt_006B:
cmp dword ptr [ebp-32], 274
jne .Lt_006D
.Lt_006E:
mov dword ptr [ebp-12], -1
.Lt_006D:
.Lt_0069:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
je .Lt_0070
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0072
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0072:
.Lt_0071:
push 0
mov eax, dword ptr [ebp-8]
not eax
push eax
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0074
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
call ASTNEWNOP
mov dword ptr [ebp-4], eax
.Lt_0074:
.Lt_0073:
sub esp, 12
push dword ptr [ebp-4]
call ASTADD
add esp, 16
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-24], eax
jmp .Lt_006F
.Lt_0070:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_006F:
sub esp, 8
push 1
push 278
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-28], eax
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+8], eax
cmp dword ptr [ebp-4], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+24], ebx
.Lt_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.size CDOSTMTBEGIN, .-CDOSTMTBEGIN
.balign 16

.globl CDOSTMTEND
CDOSTMTEND:
.type CDOSTMTEND, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0076:
sub esp, 8
push -1
push 278
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0079
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0077
.Lt_0079:
.Lt_0078:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 273
jne .Lt_007C
.Lt_007D:
mov dword ptr [ebp-8], -1
jmp .Lt_007A
.Lt_007C:
cmp dword ptr [ebp-20], 274
jne .Lt_007E
.Lt_007F:
mov dword ptr [ebp-12], -1
.Lt_007E:
.Lt_007A:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
and eax, dword ptr [ebx+12]
je .Lt_0081
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.Lt_0081:
.Lt_0080:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+8], 0
je .Lt_0083
sub esp, 12
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+8]
call ASTSCOPEEND
add esp, 16
.Lt_0083:
.Lt_0082:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
cmp dword ptr [ebx+20], ecx
je .Lt_0085
sub esp, 12
sub esp, 12
push -1
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+20]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_0085:
.Lt_0084:
mov eax, dword ptr [ebp-12]
or eax, dword ptr [ebp-8]
je .Lt_0087
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0089
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0089:
.Lt_0088:
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push dword ptr [ebp-4]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_008B
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
call ASTNEWNOP
mov dword ptr [ebp-4], eax
.Lt_008B:
.Lt_008A:
sub esp, 12
push dword ptr [ebp-4]
call ASTADD
add esp, 16
jmp .Lt_0086
.Lt_0087:
sub esp, 12
sub esp, 8
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_0086:
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [eax+24]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call CCOMPSTMTPOP
add esp, 16
.Lt_0077:
pop ebx
mov esp, ebp
pop ebp
ret
.size CDOSTMTEND, .-CDOSTMTEND
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
