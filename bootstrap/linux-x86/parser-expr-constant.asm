	.intel_syntax noprefix

.section .text
.balign 16

.globl CCONSTANT
CCONSTANT:
.type CCONSTANT, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0067:
sub esp, 12
push dword ptr [ebp+8]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_006A
sub esp, 4
push 0
push 0
push 202
call ERRREPORT
add esp, 16
.Lt_006A:
.Lt_0069:
sub esp, 12
push 4096
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTBUILDCONST
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CCONSTANT, .-CCONSTANT
.balign 16

.globl CSTRLITERAL
CSTRLITERAL:
.type CSTRLITERAL, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_006B:
mov dword ptr [ebp-28], 0
.Lt_006D:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4112]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], 7
je .Lt_0071
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 263
jne .Lt_0073
sub esp, 4
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call HREESCAPE
add esp, 16
mov dword ptr [ebp-20], eax
jmp .Lt_0072
.Lt_0073:
call LEXGETTEXT
mov dword ptr [ebp-20], eax
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
je .Lt_0075
mov ebx, dword ptr [ENV+196]
and ebx, 1
test ebx, ebx
je .Lt_0077
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 264
je .Lt_0079
sub esp, 12
push dword ptr [ebp-20]
call HHASESCAPE
add esp, 16
test eax, eax
je .Lt_007B
push 0
push 6
push dword ptr [ebp-20]
push 16
call ERRREPORTWARN
add esp, 16
.Lt_007B:
.Lt_007A:
.Lt_0079:
.Lt_0078:
.Lt_0077:
.Lt_0076:
.Lt_0075:
.Lt_0074:
mov dword ptr [ebp-16], 0
.Lt_0072:
cmp dword ptr [ebp-16], 0
jne .Lt_007D
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call SYMBALLOCSTRCONST
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_007C
.Lt_007D:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call SYMBALLOCWSTRCONST
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-32]
call fb_WstrDelete
add esp, 16
.Lt_007C:
jmp .Lt_0070
.Lt_0071:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 263
jne .Lt_0080
sub esp, 8
lea eax, [ebp-12]
push eax
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
push eax
call HREESCAPEW
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_007F
.Lt_0080:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
je .Lt_0082
mov ebx, dword ptr [ENV+196]
and ebx, 1
test ebx, ebx
je .Lt_0084
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 264
je .Lt_0086
sub esp, 12
push dword ptr [ebp-24]
call HHASESCAPEW
add esp, 16
test eax, eax
je .Lt_0088
push 0
push 1
push 0
push 16
call ERRREPORTWARN
add esp, 16
.Lt_0088:
.Lt_0087:
.Lt_0086:
.Lt_0085:
.Lt_0084:
.Lt_0083:
.Lt_0082:
.Lt_0081:
.Lt_007F:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call SYMBALLOCWSTRCONST
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0070:
cmp dword ptr [ebp-28], 0
jne .Lt_008A
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-28], eax
jmp .Lt_0089
.Lt_008A:
sub esp, 12
push 1
push 0
sub esp, 8
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 28
push eax
push dword ptr [ebp-28]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-28], eax
.Lt_0089:
cmp dword ptr [ebp+8], 0
je .Lt_008C
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
je .Lt_008E
jmp .Lt_006E
.Lt_008E:
.Lt_008D:
jmp .Lt_008B
.Lt_008C:
jmp .Lt_006E
.Lt_008B:
.Lt_006F:
jmp .Lt_006D
.Lt_006E:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.Lt_006C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CSTRLITERAL, .-CSTRLITERAL
.balign 16

.globl CNUMLITERAL
CNUMLITERAL:
.type CNUMLITERAL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_008F:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 16
jne .Lt_0092
.Lt_0093:
sub esp, 4
push dword ptr [ebp-8]
sub esp, 4
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VAL
add esp, 8
sub esp,8
fstp qword ptr [esp]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0091
.Lt_0092:
cmp dword ptr [ebp-8], 15
jne .Lt_0094
.Lt_0095:
sub esp, 12
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VAL
add esp, 16
fstp dword ptr [ebp-12]
sub esp, 4
push dword ptr [ebp-8]
fld dword ptr [ebp-12]
sub esp,8
fstp qword ptr [esp]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0091
.Lt_0094:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_0097
mov dword ptr [ebp-12], 24
jmp .Lt_009D
.Lt_0097:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_009D:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_009A
push 0
push dword ptr [ebp-8]
sub esp, 4
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VALLNG
add esp, 8
push edx
push eax
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0099
.Lt_009A:
push 0
push dword ptr [ebp-8]
sub esp, 4
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VALULNG
add esp, 8
push edx
push eax
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0099:
.Lt_0096:
.Lt_0091:
cmp dword ptr [ebp+8], 0
je .Lt_009C
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_009C:
.Lt_009B:
.Lt_0090:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CNUMLITERAL, .-CNUMLITERAL
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
