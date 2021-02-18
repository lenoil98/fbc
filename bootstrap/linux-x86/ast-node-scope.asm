	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTSCOPEBEGIN
ASTSCOPEBEGIN:
.type ASTSCOPEBEGIN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
cmp dword ptr [PARSER+96], 128
jb .Lt_006A
mov dword ptr [ebp-4], 0
jmp .Lt_0068
.Lt_006A:
.Lt_0069:
sub esp, 4
push 0
push -2147483648
push 33
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call SYMBADDSCOPE
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [AST+132]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [PARSER+28]
mov dword ptr [eax+24], ebx
inc dword ptr [PARSER+28]
inc dword ptr [PARSER+96]
mov ebx, dword ptr [ebp-12]
mov dword ptr [PARSER+108], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [AST+132], ebx
mov ebx, dword ptr [ebp-12]
lea eax, [ebx+60]
mov dword ptr [SYMB+98536], eax
sub esp, 12
push dword ptr [ebp-12]
call dword ptr [IR+48]
add esp, 16
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp-12]
push 115
call ASTNEWDBG
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTSCOPEBEGIN, .-ASTSCOPEBEGIN
.balign 16

.globl ASTSCOPEBREAK
ASTSCOPEBREAK:
.type ASTSCOPEBREAK, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_006F:
sub esp, 4
push 0
push -2147483648
push 35
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [AST+132]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [PARSER+96]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+16564]
mov dword ptr [eax+28], ecx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [PARSER+28]
mov dword ptr [ecx+32], eax
sub esp, 4
push 0
push dword ptr [ebp+8]
push 98
call ASTNEWBRANCH
add esp, 16
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+56], eax
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax+56]
call ASTADD
add esp, 16
sub esp, 8
push dword ptr [ebp-4]
mov eax, dword ptr [AST+40]
lea ecx, [eax+40]
push ecx
call HADDTOBREAKLIST
add esp, 16
.Lt_0070:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTSCOPEBREAK, .-ASTSCOPEBREAK
.balign 16

.globl ASTSCOPEEND
ASTSCOPEEND:
.type ASTSCOPEEND, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0071:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
inc dword ptr [PARSER+28]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [PARSER+28]
mov dword ptr [ebx+28], eax
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax+68]
call ASTSCOPEDESTROYVARS
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call SYMBDELSCOPETB
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call dword ptr [IR+52]
add esp, 16
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+160]
mov dword ptr [SYMB+98536], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [AST+132], eax
mov eax, dword ptr [AST+132]
mov ebx, dword ptr [eax+12]
mov dword ptr [PARSER+108], ebx
add dword ptr [PARSER+96], 4294967295
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp-4]
push 116
call ASTNEWDBG
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 4
push 0
push -2147483648
push 34
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+8]
call ASTADD
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+12], ebx
.Lt_0072:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTSCOPEEND, .-ASTSCOPEEND
.balign 16

.globl ASTSCOPEUPDBREAKLIST
ASTSCOPEUPDBREAKLIST:
.type ASTSCOPEUPDBREAKLIST, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0073:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-8], ebx
.Lt_0075:
cmp dword ptr [ebp-8], 0
je .Lt_0076
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+36]
cmp dword ptr [ebx+12], ecx
jne .Lt_0078
sub esp, 8
push 0
push dword ptr [ebp-8]
call HDELLOCALS
add esp, 16
jmp .Lt_0077
.Lt_0078:
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HCHECKBRANCH
add esp, 16
test eax, eax
jne .Lt_007A
jmp .Lt_0074
.Lt_007A:
.Lt_0079:
.Lt_0077:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+68]
mov dword ptr [ebp-8], ecx
jmp .Lt_0075
.Lt_0076:
mov dword ptr [ebp-4], -1
.Lt_0074:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTSCOPEUPDBREAKLIST, .-ASTSCOPEUPDBREAKLIST
.balign 16

.globl ASTSCOPEDESTROYVARS
ASTSCOPEDESTROYVARS:
.type ASTSCOPEDESTROYVARS, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0102:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0104:
cmp dword ptr [ebp-4], 0
je .Lt_0105
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .Lt_0107
sub esp, 12
push dword ptr [ebp-4]
call SYMBGETVARHASDTOR
add esp, 16
test eax, eax
je .Lt_0109
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-4]
call _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_0109:
.Lt_0108:
.Lt_0107:
.Lt_0106:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-4], ebx
jmp .Lt_0104
.Lt_0105:
.Lt_0103:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTSCOPEDESTROYVARS, .-ASTSCOPEDESTROYVARS
.balign 16

.globl ASTSCOPEALLOCLOCALS
ASTSCOPEALLOCLOCALS:
.type ASTSCOPEALLOCLOCALS, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_010A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ENV+104], 1
jne .Lt_010D
.Lt_010E:
cmp dword ptr [ebp-4], 0
je .Lt_010F
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+4]
and ecx, 4096
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0111
sub esp, 12
push dword ptr [ebp-4]
call dword ptr [IR+168]
add esp, 16
.Lt_0111:
.Lt_0110:
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+172]
mov dword ptr [ebp-4], ebx
jmp .Lt_010E
.Lt_010F:
jmp .Lt_010C
.Lt_010D:
.Lt_0112:
cmp dword ptr [ebp-4], 0
je .Lt_0113
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 3
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_0115
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+4]
and ecx, 114688
test ecx, ecx
je .Lt_0117
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [PARSER+104]
call dword ptr [IR+36]
add esp, 16
jmp .Lt_0116
.Lt_0117:
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [PARSER+104]
call dword ptr [IR+40]
add esp, 16
.Lt_0116:
.Lt_0115:
.Lt_0114:
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-4], eax
jmp .Lt_0112
.Lt_0113:
.Lt_010C:
.Lt_010B:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTSCOPEALLOCLOCALS, .-ASTSCOPEALLOCLOCALS
.balign 16

.globl ASTLOADSCOPEBEGIN
ASTLOADSCOPEBEGIN:
.type ASTLOADSCOPEBEGIN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_011C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebx+88], ecx
cmp dword ptr [AST+136], 0
je .Lt_011F
sub esp, 12
push dword ptr [ebp-8]
call dword ptr [IR+160]
add esp, 16
sub esp, 12
mov ecx, dword ptr [ebp-8]
push dword ptr [ecx+64]
call ASTSCOPEALLOCLOCALS
add esp, 16
.Lt_011F:
.Lt_011E:
mov dword ptr [ebp-4], 0
.Lt_011D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTLOADSCOPEBEGIN, .-ASTLOADSCOPEBEGIN
.balign 16

.globl ASTLOADSCOPEEND
ASTLOADSCOPEEND:
.type ASTLOADSCOPEEND, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0120:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [AST+136], 0
je .Lt_0123
sub esp, 12
push dword ptr [ebp-8]
call dword ptr [IR+164]
add esp, 16
.Lt_0123:
.Lt_0122:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [PARSER+104]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebx+88]
mov dword ptr [ecx+8], eax
mov dword ptr [ebp-4], 0
.Lt_0121:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTLOADSCOPEEND, .-ASTLOADSCOPEEND
.balign 16

.globl ASTTEMPSCOPEBEGIN
ASTTEMPSCOPEBEGIN:
.type ASTTEMPSCOPEBEGIN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0124:
sub esp, 12
push dword ptr [ebp+12]
call SYMBADDSCOPE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [PARSER+108]
mov dword ptr [eax], ebx
inc dword ptr [PARSER+96]
mov ebx, dword ptr [ebp-8]
mov dword ptr [PARSER+108], ebx
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+60]
mov dword ptr [SYMB+98536], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0125:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTTEMPSCOPEBEGIN, .-ASTTEMPSCOPEBEGIN
.balign 16

.globl ASTTEMPSCOPEEND
ASTTEMPSCOPEEND:
.type ASTTEMPSCOPEEND, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0126:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDELSCOPETB
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+160]
mov dword ptr [SYMB+98536], ebx
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL_UNLINKONLY
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [PARSER+108], ebx
add dword ptr [PARSER+96], 4294967295
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
.Lt_0128:
cmp dword ptr [ebp-4], 0
je .Lt_0129
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .Lt_012B
sub esp, 12
push dword ptr [ebp-4]
call ASTDTORLISTDEL
add esp, 16
.Lt_012B:
.Lt_012A:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .Lt_0128
.Lt_0129:
.Lt_0127:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTTEMPSCOPEEND, .-ASTTEMPSCOPEEND
.balign 16

.globl ASTTEMPSCOPECLONE
ASTTEMPSCOPECLONE:
.type ASTTEMPSCOPECLONE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_012C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.Lt_012E:
cmp dword ptr [ebp-4], 0
je .Lt_012F
sub esp, 12
push dword ptr [ebp-4]
call SYMBCLONESYMBOL
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call ASTREPLACESYMBOLONTREE
add esp, 16
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .Lt_0131
sub esp, 12
push dword ptr [ebp-8]
call ASTDTORLISTADD
add esp, 16
.Lt_0131:
.Lt_0130:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .Lt_012E
.Lt_012F:
.Lt_012D:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTTEMPSCOPECLONE, .-ASTTEMPSCOPECLONE
.balign 16

.globl ASTTEMPSCOPEDELETE
ASTTEMPSCOPEDELETE:
.type ASTTEMPSCOPEDELETE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0132:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.Lt_0134:
cmp dword ptr [ebp-4], 0
je .Lt_0135
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-4]
call SYMBFREESYMBOL_REMONLY
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0134
.Lt_0135:
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL_REMONLY
add esp, 16
.Lt_0133:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTTEMPSCOPEDELETE, .-ASTTEMPSCOPEDELETE
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
.balign 16
HADDTOBREAKLIST:
.type HADDTOBREAKLIST, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_006B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
je .Lt_006E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+68], eax
jmp .Lt_006D
.Lt_006E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.Lt_006D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+64], ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+68], 0
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+4], eax
.Lt_006C:
pop ebx
mov esp, ebp
pop ebp
ret
.size HADDTOBREAKLIST, .-HADDTOBREAKLIST
.balign 16
HBRANCHERROR:
.type HBRANCHERROR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_007B:
mov eax, dword ptr [ENV+188]
mov dword ptr [Lt_0136], eax
mov dword ptr [ENV+188], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+16], 0
je .Lt_007E
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+16]
push 11
push offset Lt_007F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0137
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+16], 0
je .Lt_0082
sub esp, 12
push 0
push 3
push offset Lt_0083
push -1
push offset Lt_0137
call fb_StrConcatAssign
add esp, 32
.Lt_0082:
.Lt_0081:
.Lt_007E:
.Lt_007D:
cmp dword ptr [ebp+16], 0
je .Lt_0085
sub esp, 12
push 0
push 7
push offset Lt_0086
push -1
push offset Lt_0137
call fb_StrConcatAssign
add esp, 32
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .Lt_0088
sub esp, 12
push 0
push 9
push offset Lt_0089
push -1
push offset Lt_0137
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0087
.Lt_0088:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx+60], 0
je .Lt_008A
sub esp, 12
push 0
push 8
push offset Lt_008B
push -1
push offset Lt_0137
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0087
.Lt_008A:
sub esp, 12
push 0
push 9
push offset Lt_008C
push -1
push offset Lt_0137
call fb_StrConcatAssign
add esp, 32
.Lt_0087:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+16]
push -1
push offset Lt_0137
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0137
call fb_StrAssign
add esp, 32
.Lt_0085:
.Lt_0084:
sub esp, 12
push 0
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [Lt_0137]
push dword ptr [ebp+8]
call ERRREPORTEX
add esp, 32
mov eax, dword ptr [Lt_0136]
mov dword ptr [ENV+188], eax
.Lt_007C:
pop ebx
mov esp, ebp
pop ebp
ret
.size HBRANCHERROR, .-HBRANCHERROR

.section .bss
.balign 4
	.lcomm	Lt_0136,4
.balign 4
	.lcomm	Lt_0137,12

.section .text
.balign 16
HBRANCHWARNING:
.type HBRANCHWARNING, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_008E:
mov eax, dword ptr [ENV+188]
mov dword ptr [Lt_0138], eax
mov dword ptr [ENV+188], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+16], 0
je .Lt_0091
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+16]
push 11
push offset Lt_007F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0139
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+16], 0
je .Lt_0094
sub esp, 12
push 0
push 3
push offset Lt_0083
push -1
push offset Lt_0139
call fb_StrConcatAssign
add esp, 32
.Lt_0094:
.Lt_0093:
.Lt_0091:
.Lt_0090:
cmp dword ptr [ebp+16], 0
je .Lt_0096
sub esp, 12
push 0
push 11
push offset Lt_0097
push -1
push offset Lt_0139
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+16]
push -1
push offset Lt_0139
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0139
call fb_StrAssign
add esp, 32
.Lt_0096:
.Lt_0095:
sub esp, 12
push 0
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [Lt_0139]
push dword ptr [ebp+8]
call ERRREPORTWARNEX
add esp, 32
mov eax, dword ptr [Lt_0138]
mov dword ptr [ENV+188], eax
.Lt_008F:
pop ebx
mov esp, ebp
pop ebp
ret
.size HBRANCHWARNING, .-HBRANCHWARNING

.section .bss
.balign 4
	.lcomm	Lt_0138,4
.balign 4
	.lcomm	Lt_0139,12

.section .text
.balign 16
HFINDCOMMONPARENT:
.type HFINDCOMMONPARENT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0099:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
movzx ebx, word ptr [eax+36]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
movzx eax, word ptr [ebx+36]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .Lt_009C
.Lt_009D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
movzx ebx, word ptr [eax+36]
mov dword ptr [ebp-12], ebx
.Lt_009F:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jne .Lt_009D
.Lt_009E:
jmp .Lt_009B
.Lt_009C:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jge .Lt_00A0
.Lt_00A1:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
movzx eax, word ptr [ebx+36]
mov dword ptr [ebp-16], eax
.Lt_00A3:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
jne .Lt_00A1
.Lt_00A2:
.Lt_00A0:
.Lt_009B:
.Lt_00A4:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+8], eax
je .Lt_00A5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-8], eax
jmp .Lt_00A4
.Lt_00A5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
.Lt_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HFINDCOMMONPARENT, .-HFINDCOMMONPARENT
.balign 16
HCHECKCROSSING:
.type HCHECKCROSSING, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00A6:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 15
jne .Lt_00A9
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
jmp .Lt_00A8
.Lt_00A9:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-4], eax
.Lt_00A8:
.Lt_00AA:
cmp dword ptr [ebp-4], 0
je .Lt_00AB
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .Lt_00AD
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-8], ebx
jle .Lt_00AF
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebp-8], ebx
jge .Lt_00B1
sub esp, 12
push dword ptr [ebp-4]
call SYMBGETVARHASCTOR
add esp, 16
test eax, eax
je .Lt_00B3
sub esp, 4
push dword ptr [ebp-4]
push dword ptr [ebp+8]
push 105
call HBRANCHERROR
add esp, 16
jmp .Lt_00B2
.Lt_00B3:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 4099
test ebx, ebx
jne .Lt_00B5
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
and eax, 2048
test eax, eax
jne .Lt_00B7
sub esp, 4
push dword ptr [ebp-4]
push dword ptr [ebp+8]
push 14
call HBRANCHWARNING
add esp, 16
.Lt_00B7:
.Lt_00B6:
.Lt_00B5:
.Lt_00B4:
.Lt_00B2:
.Lt_00B1:
.Lt_00B0:
.Lt_00AF:
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .Lt_00AA
.Lt_00AB:
.Lt_00A7:
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKCROSSING, .-HCHECKCROSSING
.balign 16
HCHECKSCOPELOCALS:
.type HCHECKSCOPELOCALS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00B8:
cmp dword ptr [ebp+12], 0
jne .Lt_00BB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp+12], eax
.Lt_00BB:
.Lt_00BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-8], eax
.Lt_00BC:
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HCHECKCROSSING
add esp, 16
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+160], 0
jne .Lt_00C0
jmp .Lt_00BD
.Lt_00C0:
.Lt_00BF:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-8], eax
jne .Lt_00C2
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .Lt_00C4
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HCHECKCROSSING
add esp, 16
.Lt_00C4:
.Lt_00C3:
jmp .Lt_00BD
.Lt_00C2:
.Lt_00C1:
.Lt_00BE:
jmp .Lt_00BC
.Lt_00BD:
.Lt_00B9:
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKSCOPELOCALS, .-HCHECKSCOPELOCALS
.balign 16
HDESTROYBLOCKLOCALS:
.type HDESTROYBLOCKLOCALS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00C5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
jne .Lt_00C8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
jmp .Lt_00C7
.Lt_00C8:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
.Lt_00C7:
.Lt_00C9:
cmp dword ptr [ebp-4], 0
je .Lt_00CA
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .Lt_00CC
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp-12], ebx
jle .Lt_00CE
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-12], ebx
jge .Lt_00D0
sub esp, 12
push dword ptr [ebp-4]
call SYMBGETVARHASDTOR
add esp, 16
test eax, eax
je .Lt_00D2
sub esp, 8
push -1
push dword ptr [ebp-4]
call _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00D4
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTADDAFTER
add esp, 16
mov dword ptr [ebp+20], eax
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
.Lt_00D1:
.Lt_00D0:
.Lt_00CF:
.Lt_00CE:
.Lt_00CD:
.Lt_00CC:
.Lt_00CB:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-4], ebx
jmp .Lt_00C9
.Lt_00CA:
.Lt_00C6:
pop ebx
mov esp, ebp
pop ebp
ret
.size HDESTROYBLOCKLOCALS, .-HDESTROYBLOCKLOCALS
.balign 16
HDELBACKWARDLOCALS:
.type HDELBACKWARDLOCALS, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00D5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+64]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+64]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
push dword ptr [ebx+12]
call HDESTROYBLOCKLOCALS
add esp, 16
.Lt_00D6:
pop ebx
mov esp, ebp
pop ebp
ret
.size HDELBACKWARDLOCALS, .-HDELBACKWARDLOCALS
.balign 16
HDELLOCALS:
.type HDELLOCALS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-16], eax
.Lt_00D9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+64]
push dword ptr [ebp-12]
push 0
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+12]
call HDESTROYBLOCKLOCALS
add esp, 16
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00DD
jmp .Lt_00DA
.Lt_00DD:
.Lt_00DC:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+24]
cmp dword ptr [ebp-8], ebx
jl .Lt_00DE
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
cmp eax, dword ptr [ebx+28]
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .Lt_013A
.Lt_00DE:
mov dword ptr [ebp-20], 0
.Lt_013A:
cmp dword ptr [ebp-20], 0
je .Lt_00E1
cmp dword ptr [ebp+12], 0
je .Lt_00E3
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jg .Lt_00E5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+64]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+12]
call HDESTROYBLOCKLOCALS
add esp, 16
.Lt_00E5:
.Lt_00E4:
.Lt_00E3:
.Lt_00E2:
jmp .Lt_00DA
.Lt_00E1:
.Lt_00E0:
.Lt_00DB:
jmp .Lt_00D9
.Lt_00DA:
.Lt_00D8:
pop ebx
mov esp, ebp
pop ebp
ret
.size HDELLOCALS, .-HDELLOCALS
.balign 16
HISTARGETOUTSIDE:
.type HISTARGETOUTSIDE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 12288
test ebx, ebx
je .Lt_00E9
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+160]
lea ebx, [SYMB+98352]
cmp dword ptr [eax], ebx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-4], ecx
jmp .Lt_00E8
.Lt_00E9:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+160]
mov ecx, dword ptr [ebx]
cmp ecx, dword ptr [ebp+8]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_00E8:
.Lt_00E7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HISTARGETOUTSIDE, .-HISTARGETOUTSIDE
.balign 16
HCHECKBRANCH:
.type HCHECKBRANCH, @function
push ebp
mov ebp, esp
sub esp, 48
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00EA:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+60], 0
jne .Lt_00ED
sub esp, 4
push 0
push dword ptr [ebp+12]
push 104
call HBRANCHERROR
add esp, 16
jmp .Lt_00EB
.Lt_00ED:
.Lt_00EC:
sub esp, 8
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call HISTARGETOUTSIDE
add esp, 16
test eax, eax
je .Lt_00EF
sub esp, 4
push 0
push dword ptr [ebp+12]
push 104
call HBRANCHERROR
add esp, 16
jmp .Lt_00EB
.Lt_00EF:
.Lt_00EE:
mov eax, dword ptr [ebp-12]
movzx ebx, word ptr [eax+36]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+24]
cmp dword ptr [ebp-32], ebx
jl .Lt_00F0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-32]
cmp eax, dword ptr [ebx+28]
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .Lt_013E
.Lt_00F0:
mov dword ptr [ebp-40], 0
.Lt_013E:
cmp dword ptr [ebp-40], 0
je .Lt_00F3
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-24], eax
jle .Lt_00F5
sub esp, 8
push 0
push dword ptr [ebp+12]
call HCHECKSCOPELOCALS
add esp, 16
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jg .Lt_00F7
sub esp, 12
push dword ptr [ebp+12]
call HDELBACKWARDLOCALS
add esp, 16
.Lt_00F7:
.Lt_00F6:
jmp .Lt_00F4
.Lt_00F5:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jg .Lt_00F9
sub esp, 12
push dword ptr [ebp+12]
call HDELBACKWARDLOCALS
add esp, 16
jmp .Lt_00F8
.Lt_00F9:
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
call HCHECKCROSSING
add esp, 16
.Lt_00F8:
.Lt_00F4:
mov dword ptr [ebp-4], -1
jmp .Lt_00EB
.Lt_00F3:
.Lt_00F2:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 15
jne .Lt_00FB
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+24]
cmp ecx, dword ptr [eax+24]
setle cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebx+28]
cmp esi, dword ptr [eax+28]
setge dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
mov dword ptr [ebp-36], ecx
cmp dword ptr [ebp-36], 0
jne .Lt_00FD
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call HFINDCOMMONPARENT
add esp, 8
push eax
push dword ptr [ebp+12]
call HCHECKSCOPELOCALS
add esp, 16
.Lt_00FD:
.Lt_00FC:
jmp .Lt_00FA
.Lt_00FB:
mov dword ptr [ebp-36], -1
.Lt_00FA:
cmp dword ptr [ebp-36], 0
je .Lt_00FF
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jle .Lt_0101
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
call HCHECKCROSSING
add esp, 16
.Lt_0101:
.Lt_0100:
.Lt_00FF:
.Lt_00FE:
sub esp, 8
push -1
push dword ptr [ebp+12]
call HDELLOCALS
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_00EB:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKBRANCH, .-HCHECKBRANCH

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_007F:	.ascii	"to label: \0"
.balign 4
Lt_0083:	.ascii	", \0"
.balign 4
Lt_0086:	.ascii	"local \0"
.balign 4
Lt_0089:	.ascii	"string: \0"
.balign 4
Lt_008B:	.ascii	"array: \0"
.balign 4
Lt_008C:	.ascii	"object: \0"
.balign 4
Lt_0097:	.ascii	"variable: \0"
