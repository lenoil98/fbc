	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTSCOPEBEGIN@0
_ASTSCOPEBEGIN@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
cmp dword ptr [_PARSER+96], 128
jb .Lt_006B
mov dword ptr [ebp-4], 0
jmp .Lt_0069
.Lt_006B:
.Lt_006A:
push 0
push -2147483648
push 33
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _ASTADD@4
push dword ptr [ebp-8]
call _SYMBADDSCOPE@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [_AST+132]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_PARSER+28]
mov dword ptr [eax+28], ebx
inc dword ptr [_PARSER+28]
inc dword ptr [_PARSER+96]
mov ebx, dword ptr [ebp-12]
mov dword ptr [_PARSER+108], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [_AST+132], ebx
mov ebx, dword ptr [ebp-12]
lea eax, [ebx+60]
mov dword ptr [_SYMB+98544], eax
push dword ptr [ebp-12]
call dword ptr [_IR+48]
push 0
push dword ptr [ebp-12]
push 115
call _ASTNEWDBG@12
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTSCOPEBREAK@4
_ASTSCOPEBREAK@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0070:
push 0
push -2147483648
push 35
call _ASTNEWNODE@12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [_AST+132]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [_PARSER+96]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+8372]
mov dword ptr [eax+32], ecx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [_PARSER+28]
mov dword ptr [ecx+36], eax
push 0
push dword ptr [ebp+8]
push 98
call _ASTNEWBRANCH@12
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+64], eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+64]
call _ASTADD@4
push dword ptr [ebp-4]
mov eax, dword ptr [_AST+40]
lea ecx, [eax+44]
push ecx
call _HADDTOBREAKLIST@8
.Lt_0071:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTSCOPEEND@4
_ASTSCOPEEND@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0072:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
inc dword ptr [_PARSER+28]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_PARSER+28]
mov dword ptr [ebx+32], eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+68]
call _ASTSCOPEDESTROYVARS@4
push dword ptr [ebp-4]
call _SYMBDELSCOPETB@4
push dword ptr [ebp-4]
call dword ptr [_IR+52]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+164]
mov dword ptr [_SYMB+98544], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
mov dword ptr [_AST+132], eax
mov eax, dword ptr [_AST+132]
mov ebx, dword ptr [eax+12]
mov dword ptr [_PARSER+108], ebx
add dword ptr [_PARSER+96], 4294967295
push 0
push dword ptr [ebp-4]
push 116
call _ASTNEWDBG@12
push eax
call _ASTADD@4
push 0
push -2147483648
push 34
call _ASTNEWNODE@12
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _ASTADD@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+12], ebx
.Lt_0073:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTSCOPEUPDBREAKLIST@4
_ASTSCOPEUPDBREAKLIST@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0074:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-8], ebx
.Lt_0076:
cmp dword ptr [ebp-8], 0
je .Lt_0077
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+40]
cmp dword ptr [ebx+12], ecx
jne .Lt_0079
push 0
push dword ptr [ebp-8]
call _HDELLOCALS@8
jmp .Lt_0078
.Lt_0079:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HCHECKBRANCH@8
test eax, eax
jne .Lt_007B
jmp .Lt_0075
.Lt_007B:
.Lt_007A:
.Lt_0078:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebp-8], ecx
jmp .Lt_0076
.Lt_0077:
mov dword ptr [ebp-4], -1
.Lt_0075:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTSCOPEDESTROYVARS@4
_ASTSCOPEDESTROYVARS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0103:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0105:
cmp dword ptr [ebp-4], 0
je .Lt_0106
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .Lt_0108
push dword ptr [ebp-4]
call _SYMBGETVARHASDTOR@4
test eax, eax
je .Lt_010A
push -1
push dword ptr [ebp-4]
call __Z19ASTBUILDVARDTORCALLP8FBSYMBOLl@8
push eax
call _ASTADD@4
.Lt_010A:
.Lt_0109:
.Lt_0108:
.Lt_0107:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .Lt_0105
.Lt_0106:
.Lt_0104:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTSCOPEALLOCLOCALS@4
_ASTSCOPEALLOCLOCALS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_010B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
cmp dword ptr [_ENV+104], 1
jne .Lt_010E
.Lt_010F:
cmp dword ptr [ebp-4], 0
je .Lt_0110
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
je .Lt_0112
push dword ptr [ebp-4]
call dword ptr [_IR+168]
.Lt_0112:
.Lt_0111:
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+176]
mov dword ptr [ebp-4], ebx
jmp .Lt_010F
.Lt_0110:
jmp .Lt_010D
.Lt_010E:
.Lt_0113:
cmp dword ptr [ebp-4], 0
je .Lt_0114
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
je .Lt_0116
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+4]
and ecx, 114688
test ecx, ecx
je .Lt_0118
push dword ptr [ebp-4]
push dword ptr [_PARSER+104]
call dword ptr [_IR+36]
jmp .Lt_0117
.Lt_0118:
push dword ptr [ebp-4]
push dword ptr [_PARSER+104]
call dword ptr [_IR+40]
.Lt_0117:
.Lt_0116:
.Lt_0115:
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+176]
mov dword ptr [ebp-4], eax
jmp .Lt_0113
.Lt_0114:
.Lt_010D:
.Lt_010C:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTLOADSCOPEBEGIN@4
_ASTLOADSCOPEBEGIN@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_011D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebx+88], ecx
cmp dword ptr [_AST+136], 0
je .Lt_0120
push dword ptr [ebp-8]
call dword ptr [_IR+160]
mov ecx, dword ptr [ebp-8]
push dword ptr [ecx+64]
call _ASTSCOPEALLOCLOCALS@4
.Lt_0120:
.Lt_011F:
mov dword ptr [ebp-4], 0
.Lt_011E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTLOADSCOPEEND@4
_ASTLOADSCOPEEND@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0121:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [_AST+136], 0
je .Lt_0124
push dword ptr [ebp-8]
call dword ptr [_IR+164]
.Lt_0124:
.Lt_0123:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [_PARSER+104]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebx+88]
mov dword ptr [ecx+8], eax
mov dword ptr [ebp-4], 0
.Lt_0122:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTTEMPSCOPEBEGIN@8
_ASTTEMPSCOPEBEGIN@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0125:
push dword ptr [ebp+12]
call _SYMBADDSCOPE@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_PARSER+108]
mov dword ptr [eax], ebx
inc dword ptr [_PARSER+96]
mov ebx, dword ptr [ebp-8]
mov dword ptr [_PARSER+108], ebx
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+60]
mov dword ptr [_SYMB+98544], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0126:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTTEMPSCOPEEND@8
_ASTTEMPSCOPEEND@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0127:
push dword ptr [ebp+8]
call _SYMBDELSCOPETB@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+164]
mov dword ptr [_SYMB+98544], ebx
push dword ptr [ebp+8]
call _SYMBFREESYMBOL_UNLINKONLY@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [_PARSER+108], ebx
add dword ptr [_PARSER+96], 4294967295
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
.Lt_0129:
cmp dword ptr [ebp-4], 0
je .Lt_012A
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .Lt_012C
push dword ptr [ebp-4]
call _ASTDTORLISTDEL@4
.Lt_012C:
.Lt_012B:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-4], ebx
jmp .Lt_0129
.Lt_012A:
.Lt_0128:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTTEMPSCOPECLONE@8
_ASTTEMPSCOPECLONE@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_012D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.Lt_012F:
cmp dword ptr [ebp-4], 0
je .Lt_0130
push dword ptr [ebp-4]
call _SYMBCLONESYMBOL@4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call _ASTREPLACESYMBOLONTREE@12
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .Lt_0132
push dword ptr [ebp-8]
call _ASTDTORLISTADD@4
.Lt_0132:
.Lt_0131:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-4], ebx
jmp .Lt_012F
.Lt_0130:
.Lt_012E:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTTEMPSCOPEDELETE@4
_ASTTEMPSCOPEDELETE@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0133:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.Lt_0135:
cmp dword ptr [ebp-4], 0
je .Lt_0136
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
call _SYMBFREESYMBOL_REMONLY@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0135
.Lt_0136:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL_REMONLY@4
.Lt_0134:
pop ebx
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
.balign 16
_HADDTOBREAKLIST@8:
push ebp
mov ebp, esp
push ebx
.Lt_006C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
je .Lt_006F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+76], eax
jmp .Lt_006E
.Lt_006F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.Lt_006E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+72], ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+76], 0
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+4], eax
.Lt_006D:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HBRANCHERROR@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_007C:
mov eax, dword ptr [_ENV+188]
mov dword ptr [_Lt_0137], eax
mov dword ptr [_ENV+188], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+16], 0
je .Lt_007F
push 0
push -1
push 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+16]
push 11
push offset _Lt_0080
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0138
call _fb_StrAssign@20
cmp dword ptr [ebp+16], 0
je .Lt_0083
push 0
push 3
push offset _Lt_0084
push -1
push offset _Lt_0138
call _fb_StrConcatAssign@20
.Lt_0083:
.Lt_0082:
.Lt_007F:
.Lt_007E:
cmp dword ptr [ebp+16], 0
je .Lt_0086
push 0
push 7
push offset _Lt_0087
push -1
push offset _Lt_0138
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .Lt_0089
push 0
push 9
push offset _Lt_008A
push -1
push offset _Lt_0138
call _fb_StrConcatAssign@20
jmp .Lt_0088
.Lt_0089:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx+64], 0
je .Lt_008B
push 0
push 8
push offset _Lt_008C
push -1
push offset _Lt_0138
call _fb_StrConcatAssign@20
jmp .Lt_0088
.Lt_008B:
push 0
push 9
push offset _Lt_008D
push -1
push offset _Lt_0138
call _fb_StrConcatAssign@20
.Lt_0088:
push 0
push -1
push 0
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+16]
push -1
push offset _Lt_0138
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_0138
call _fb_StrAssign@20
.Lt_0086:
.Lt_0085:
push 0
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
push dword ptr [_Lt_0138]
push dword ptr [ebp+8]
call _ERRREPORTEX@20
mov eax, dword ptr [_Lt_0137]
mov dword ptr [_ENV+188], eax
.Lt_007D:
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0137,4
.balign 4
	.lcomm	_Lt_0138,12

.section .text
.balign 16
_HBRANCHWARNING@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_008F:
mov eax, dword ptr [_ENV+188]
mov dword ptr [_Lt_0139], eax
mov dword ptr [_ENV+188], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+16], 0
je .Lt_0092
push 0
push -1
push 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+16]
push 11
push offset _Lt_0080
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_013A
call _fb_StrAssign@20
cmp dword ptr [ebp+16], 0
je .Lt_0095
push 0
push 3
push offset _Lt_0084
push -1
push offset _Lt_013A
call _fb_StrConcatAssign@20
.Lt_0095:
.Lt_0094:
.Lt_0092:
.Lt_0091:
cmp dword ptr [ebp+16], 0
je .Lt_0097
push 0
push 11
push offset _Lt_0098
push -1
push offset _Lt_013A
call _fb_StrConcatAssign@20
push 0
push -1
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+16]
push -1
push offset _Lt_013A
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_013A
call _fb_StrAssign@20
.Lt_0097:
.Lt_0096:
push 0
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
push dword ptr [_Lt_013A]
push dword ptr [ebp+8]
call _ERRREPORTWARNEX@20
mov eax, dword ptr [_Lt_0139]
mov dword ptr [_ENV+188], eax
.Lt_0090:
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0139,4
.balign 4
	.lcomm	_Lt_013A,12

.section .text
.balign 16
_HFINDCOMMONPARENT@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_009A:
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
jle .Lt_009D
.Lt_009E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
movzx ebx, word ptr [eax+36]
mov dword ptr [ebp-12], ebx
.Lt_00A0:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jne .Lt_009E
.Lt_009F:
jmp .Lt_009C
.Lt_009D:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jge .Lt_00A1
.Lt_00A2:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
movzx eax, word ptr [ebx+36]
mov dword ptr [ebp-16], eax
.Lt_00A4:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
jne .Lt_00A2
.Lt_00A3:
.Lt_00A1:
.Lt_009C:
.Lt_00A5:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+8], eax
je .Lt_00A6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-8], eax
jmp .Lt_00A5
.Lt_00A6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
.Lt_009B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKCROSSING@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00A7:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 15
jne .Lt_00AA
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
jmp .Lt_00A9
.Lt_00AA:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-4], eax
.Lt_00A9:
.Lt_00AB:
cmp dword ptr [ebp-4], 0
je .Lt_00AC
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .Lt_00AE
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+100]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-8], ebx
jle .Lt_00B0
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebp-8], ebx
jge .Lt_00B2
push dword ptr [ebp-4]
call _SYMBGETVARHASCTOR@4
test eax, eax
je .Lt_00B4
push dword ptr [ebp-4]
push dword ptr [ebp+8]
push 105
call _HBRANCHERROR@12
jmp .Lt_00B3
.Lt_00B4:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 4099
test ebx, ebx
jne .Lt_00B6
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
and eax, 2048
test eax, eax
jne .Lt_00B8
push dword ptr [ebp-4]
push dword ptr [ebp+8]
push 14
call _HBRANCHWARNING@12
.Lt_00B8:
.Lt_00B7:
.Lt_00B6:
.Lt_00B5:
.Lt_00B3:
.Lt_00B2:
.Lt_00B1:
.Lt_00B0:
.Lt_00AF:
.Lt_00AE:
.Lt_00AD:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-4], ebx
jmp .Lt_00AB
.Lt_00AC:
.Lt_00A8:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HCHECKSCOPELOCALS@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_00B9:
cmp dword ptr [ebp+12], 0
jne .Lt_00BC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp+12], eax
.Lt_00BC:
.Lt_00BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
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
.Lt_00BD:
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HCHECKCROSSING@16
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+164], 0
jne .Lt_00C1
jmp .Lt_00BE
.Lt_00C1:
.Lt_00C0:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+164]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-8], eax
jne .Lt_00C3
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .Lt_00C5
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HCHECKCROSSING@16
.Lt_00C5:
.Lt_00C4:
jmp .Lt_00BE
.Lt_00C3:
.Lt_00C2:
.Lt_00BF:
jmp .Lt_00BD
.Lt_00BE:
.Lt_00BA:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDESTROYBLOCKLOCALS@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00C6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
jne .Lt_00C9
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
jmp .Lt_00C8
.Lt_00C9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
.Lt_00C8:
.Lt_00CA:
cmp dword ptr [ebp-4], 0
je .Lt_00CB
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 1
jne .Lt_00CD
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+100]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp-12], ebx
jle .Lt_00CF
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-12], ebx
jge .Lt_00D1
push dword ptr [ebp-4]
call _SYMBGETVARHASDTOR@4
test eax, eax
je .Lt_00D3
push -1
push dword ptr [ebp-4]
call __Z19ASTBUILDVARDTORCALLP8FBSYMBOLl@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00D5
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTADDAFTER@8
mov dword ptr [ebp+20], eax
.Lt_00D5:
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
.Lt_00D1:
.Lt_00D0:
.Lt_00CF:
.Lt_00CE:
.Lt_00CD:
.Lt_00CC:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .Lt_00CA
.Lt_00CB:
.Lt_00C7:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HDELBACKWARDLOCALS@4:
push ebp
mov ebp, esp
push ebx
.Lt_00D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
push dword ptr [ebx+72]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+36]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+64]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
push dword ptr [ebx+12]
call _HDESTROYBLOCKLOCALS@16
.Lt_00D7:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HDELLOCALS@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-16], eax
.Lt_00DA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
push dword ptr [ebx+72]
push dword ptr [ebp-12]
push 0
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+12]
call _HDESTROYBLOCKLOCALS@16
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00DE
jmp .Lt_00DB
.Lt_00DE:
.Lt_00DD:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
cmp dword ptr [ebp-8], ebx
jl .Lt_00DF
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
cmp eax, dword ptr [ebx+32]
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .Lt_013B
.Lt_00DF:
mov dword ptr [ebp-20], 0
.Lt_013B:
cmp dword ptr [ebp-20], 0
je .Lt_00E2
cmp dword ptr [ebp+12], 0
je .Lt_00E4
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jg .Lt_00E6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
push dword ptr [ebx+72]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+12]
call _HDESTROYBLOCKLOCALS@16
.Lt_00E6:
.Lt_00E5:
.Lt_00E4:
.Lt_00E3:
jmp .Lt_00DB
.Lt_00E2:
.Lt_00E1:
.Lt_00DC:
jmp .Lt_00DA
.Lt_00DB:
.Lt_00D9:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HISTARGETOUTSIDE@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 12288
test ebx, ebx
je .Lt_00EA
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+164]
lea ebx, [_SYMB+98352]
cmp dword ptr [eax], ebx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-4], ecx
jmp .Lt_00E9
.Lt_00EA:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+164]
mov ecx, dword ptr [ebx]
cmp ecx, dword ptr [ebp+8]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_00E9:
.Lt_00E8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKBRANCH@8:
push ebp
mov ebp, esp
sub esp, 40
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00EB:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+60], 0
jne .Lt_00EE
push 0
push dword ptr [ebp+12]
push 104
call _HBRANCHERROR@12
jmp .Lt_00EC
.Lt_00EE:
.Lt_00ED:
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _HISTARGETOUTSIDE@8
test eax, eax
je .Lt_00F0
push 0
push dword ptr [ebp+12]
push 104
call _HBRANCHERROR@12
jmp .Lt_00EC
.Lt_00F0:
.Lt_00EF:
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
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+36]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
cmp dword ptr [ebp-32], ebx
jl .Lt_00F1
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-32]
cmp eax, dword ptr [ebx+32]
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .Lt_013F
.Lt_00F1:
mov dword ptr [ebp-40], 0
.Lt_013F:
cmp dword ptr [ebp-40], 0
je .Lt_00F4
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-24], eax
jle .Lt_00F6
push 0
push dword ptr [ebp+12]
call _HCHECKSCOPELOCALS@8
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jg .Lt_00F8
push dword ptr [ebp+12]
call _HDELBACKWARDLOCALS@4
.Lt_00F8:
.Lt_00F7:
jmp .Lt_00F5
.Lt_00F6:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jg .Lt_00FA
push dword ptr [ebp+12]
call _HDELBACKWARDLOCALS@4
jmp .Lt_00F9
.Lt_00FA:
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
call _HCHECKCROSSING@16
.Lt_00F9:
.Lt_00F5:
mov dword ptr [ebp-4], -1
jmp .Lt_00EC
.Lt_00F4:
.Lt_00F3:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 15
jne .Lt_00FC
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+28]
cmp ecx, dword ptr [eax+28]
setle cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebx+32]
cmp esi, dword ptr [eax+32]
setge dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
mov dword ptr [ebp-36], ecx
cmp dword ptr [ebp-36], 0
jne .Lt_00FE
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _HFINDCOMMONPARENT@8
push eax
push dword ptr [ebp+12]
call _HCHECKSCOPELOCALS@8
.Lt_00FE:
.Lt_00FD:
jmp .Lt_00FB
.Lt_00FC:
mov dword ptr [ebp-36], -1
.Lt_00FB:
cmp dword ptr [ebp-36], 0
je .Lt_0100
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jle .Lt_0102
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
call _HCHECKCROSSING@16
.Lt_0102:
.Lt_0101:
.Lt_0100:
.Lt_00FF:
push -1
push dword ptr [ebp+12]
call _HDELLOCALS@8
mov dword ptr [ebp-4], -1
.Lt_00EC:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_0080:	.ascii	"to label: \0"
.balign 4
_Lt_0084:	.ascii	", \0"
.balign 4
_Lt_0087:	.ascii	"local \0"
.balign 4
_Lt_008A:	.ascii	"string: \0"
.balign 4
_Lt_008C:	.ascii	"array: \0"
.balign 4
_Lt_008D:	.ascii	"object: \0"
.balign 4
_Lt_0098:	.ascii	"variable: \0"
