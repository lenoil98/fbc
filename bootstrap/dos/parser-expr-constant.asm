	.intel_syntax noprefix

.section .text
.balign 16

.globl _CCONSTANT
_CCONSTANT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0068:
push dword ptr [ebp+8]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_006B
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
.Lt_006B:
.Lt_006A:
push 4096
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+8]
call _ASTBUILDCONST
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSTRLITERAL
_CSTRLITERAL:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_006C:
mov dword ptr [ebp-28], 0
.Lt_006E:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+1040]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+8], 7
je .Lt_0072
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 263
jne .Lt_0074
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call _LEXGETTEXT
push eax
call _HREESCAPE
add esp, 12
mov dword ptr [ebp-20], eax
jmp .Lt_0073
.Lt_0074:
call _LEXGETTEXT
mov dword ptr [ebp-20], eax
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+1048], 0
je .Lt_0076
mov ebx, dword ptr [_ENV+196]
and ebx, 1
test ebx, ebx
je .Lt_0078
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 264
je .Lt_007A
push dword ptr [ebp-20]
call _HHASESCAPE
add esp, 4
test eax, eax
je .Lt_007C
push 0
push 6
push dword ptr [ebp-20]
push 16
call _ERRREPORTWARN
add esp, 16
.Lt_007C:
.Lt_007B:
.Lt_007A:
.Lt_0079:
.Lt_0078:
.Lt_0077:
.Lt_0076:
.Lt_0075:
mov dword ptr [ebp-16], 0
.Lt_0073:
cmp dword ptr [ebp-16], 0
jne .Lt_007E
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call _SYMBALLOCSTRCONST
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_007D
.Lt_007E:
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
call _SYMBALLOCWSTRCONST
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-32]
call _fb_WstrDelete
add esp, 4
.Lt_007D:
jmp .Lt_0071
.Lt_0072:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 263
jne .Lt_0081
lea eax, [ebp-12]
push eax
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
lea eax, [ebx+12]
push eax
call _HREESCAPEW
add esp, 8
mov dword ptr [ebp-24], eax
jmp .Lt_0080
.Lt_0081:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
lea eax, [ebx+12]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+1048], 0
je .Lt_0083
mov ebx, dword ptr [_ENV+196]
and ebx, 1
test ebx, ebx
je .Lt_0085
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 264
je .Lt_0087
push dword ptr [ebp-24]
call _HHASESCAPEW
add esp, 4
test eax, eax
je .Lt_0089
push 0
push 1
push 0
push 16
call _ERRREPORTWARN
add esp, 16
.Lt_0089:
.Lt_0088:
.Lt_0087:
.Lt_0086:
.Lt_0085:
.Lt_0084:
.Lt_0083:
.Lt_0082:
.Lt_0080:
push dword ptr [ebp-12]
push dword ptr [ebp-24]
call _SYMBALLOCWSTRCONST
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_0071:
cmp dword ptr [ebp-28], 0
jne .Lt_008B
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-28], eax
jmp .Lt_008A
.Lt_008B:
push 1
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-28]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-28], eax
.Lt_008A:
cmp dword ptr [ebp+8], 0
je .Lt_008D
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
je .Lt_008F
jmp .Lt_006F
.Lt_008F:
.Lt_008E:
jmp .Lt_008C
.Lt_008D:
jmp .Lt_006F
.Lt_008C:
.Lt_0070:
jmp .Lt_006E
.Lt_006F:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.Lt_006D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CNUMLITERAL
_CNUMLITERAL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0090:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 16
jne .Lt_0093
.Lt_0094:
push dword ptr [ebp-8]
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_VAL
add esp, 4
sub esp,8
fstp qword ptr [esp]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0092
.Lt_0093:
cmp dword ptr [ebp-8], 15
jne .Lt_0095
.Lt_0096:
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_VAL
add esp, 4
fstp dword ptr [ebp-12]
push dword ptr [ebp-8]
fld dword ptr [ebp-12]
sub esp,8
fstp qword ptr [esp]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0092
.Lt_0095:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_0098
mov dword ptr [ebp-12], 24
jmp .Lt_009E
.Lt_0098:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_009E:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_009B
push 0
push dword ptr [ebp-8]
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_VALLNG
add esp, 4
push edx
push eax
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_009A
.Lt_009B:
push 0
push dword ptr [ebp-8]
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_VALULNG
add esp, 4
push edx
push eax
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_009A:
.Lt_0097:
.Lt_0092:
cmp dword ptr [ebp+8], 0
je .Lt_009D
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_009D:
.Lt_009C:
.Lt_0091:
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
