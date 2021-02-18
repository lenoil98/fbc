	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTTYPEINIBEGIN@20
_ASTTYPEINIBEGIN@20:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 36
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+16], 0
jne .Lt_006B
mov ecx, dword ptr [_PARSER+108]
cmp dword ptr [ecx], 15
jne .Lt_006D
mov ecx, dword ptr [_PARSER+108]
mov ebx, dword ptr [ecx+56]
mov ecx, dword ptr [ebx]
cmp ecx, 36
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-12], ecx
jmp .Lt_006C
.Lt_006D:
mov dword ptr [ebp-12], -1
.Lt_006C:
.Lt_006B:
.Lt_006A:
cmp dword ptr [ebp-12], 0
je .Lt_006F
push dword ptr [ebp-8]
mov ecx, dword ptr [ebp-8]
lea ebx, [ecx+44]
push ebx
call _ASTTEMPSCOPEBEGIN@8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+40], eax
jmp .Lt_006E
.Lt_006F:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+40], 0
.Lt_006E:
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTTYPEINIEND@8
_ASTTYPEINIEND@8:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_0071:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0074
inc dword ptr [_AST+140]
.Lt_0074:
.Lt_0073:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.Lt_0075:
cmp dword ptr [ebp-4], 0
je .Lt_0076
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 38
jne .Lt_0078
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 36
jne .Lt_007A
dec dword ptr [_AST+140]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], ebx
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+68]
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-4]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+64]
mov dword ptr [ebp-4], ecx
push dword ptr [ebp-12]
call _ASTDELNODE@4
cmp dword ptr [ebp-8], 0
je .Lt_007C
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [ecx+68], ebx
jmp .Lt_007B
.Lt_007C:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
mov dword ptr [ebx+64], ecx
.Lt_007B:
.Lt_007D:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+68], 0
je .Lt_007E
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
add dword ptr [ecx+24], eax
adc dword ptr [ecx+28], ebx
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
jmp .Lt_007D
.Lt_007E:
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
add dword ptr [ebx+24], ecx
adc dword ptr [ebx+28], eax
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-16]
mov dword ptr [ecx+68], eax
.Lt_007A:
.Lt_0079:
.Lt_0078:
.Lt_0077:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+68]
mov dword ptr [ebp-4], ecx
jmp .Lt_0075
.Lt_0076:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+40], 0
je .Lt_0080
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+44]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+40]
call _ASTTEMPSCOPEEND@8
.Lt_0080:
.Lt_007F:
.Lt_0072:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTTYPEINIREMOVELASTNODE@4
_ASTTYPEINIREMOVELASTNODE@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0087:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
.Lt_0089:
cmp dword ptr [ebp-8], 0
je .Lt_008A
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+68], 0
jne .Lt_008C
cmp dword ptr [ebp-4], 0
je .Lt_008E
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+68], 0
jmp .Lt_008D
.Lt_008E:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], 0
.Lt_008D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+68], eax
push dword ptr [ebp-8]
call _ASTDELTREE@4
jmp .Lt_008A
.Lt_008C:
.Lt_008B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
jmp .Lt_0089
.Lt_008A:
.Lt_0088:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTTYPEINIADDPAD@12
_ASTTYPEINIADDPAD@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_008F:
push 0
push -2147483648
push 0
push 37
push dword ptr [ebp+8]
call _HADDNODE@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ecx
mov dword ptr [eax+36], ebx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [ecx+24]
mov eax, dword ptr [ecx+28]
mov dword ptr [ebx+24], esi
mov dword ptr [ebx+28], eax
mov esi, dword ptr [ebp-8]
mov dword ptr [ebp-4], esi
.Lt_0090:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTTYPEINIADDASSIGN@20
_ASTTYPEINIADDASSIGN@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0091:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push 38
push dword ptr [ebp+8]
call _HADDNODE@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [eax+24]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx+24], esi
mov dword ptr [ebx+28], ecx
cmp dword ptr [ebp+16], 0
je .Lt_0094
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+40]
mov ebx, dword ptr [ecx+44]
add dword ptr [esi+24], eax
adc dword ptr [esi+28], ebx
.Lt_0094:
.Lt_0093:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0092:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTTYPEINIADDCTORCALL@20
_ASTTYPEINIADDCTORCALL@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0095:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push 39
push dword ptr [ebp+8]
call _HADDNODE@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebx+24]
mov ecx, dword ptr [ebx+28]
mov dword ptr [eax+24], esi
mov dword ptr [eax+28], ecx
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
mov dword ptr [esi+64], ecx
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+40]
mov eax, dword ptr [esi+44]
add dword ptr [ecx+24], ebx
adc dword ptr [ecx+28], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0096:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTTYPEINIADDCTORLIST@24
_ASTTYPEINIADDCTORLIST@24:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0097:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
push 40
push dword ptr [ebp+8]
call _HADDNODE@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebx+24]
mov ecx, dword ptr [ebx+28]
mov dword ptr [eax+24], esi
mov dword ptr [eax+28], ecx
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+20]
mov dword ptr [esi+32], eax
mov dword ptr [esi+36], ecx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebp+20]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
push esi
push ebx
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop ebx
pop esi
add esp, 8
add dword ptr [eax+24], ebx
adc dword ptr [eax+28], esi
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0098:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _ASTTYPEINISCOPEBEGIN@12
_ASTTYPEINISCOPEBEGIN@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0099:
push 0
push -2147483648
push 0
push 41
push dword ptr [ebp+8]
call _HADDNODE@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTTYPEINISCOPEEND@8
_ASTTYPEINISCOPEEND@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_009B:
push 0
push -2147483648
push 0
push 42
push dword ptr [ebp+8]
call _HADDNODE@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_009C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTTYPEINICOPYELEMENTS@12
_ASTTYPEINICOPYELEMENTS@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_009D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp+12], eax
mov dword ptr [ebp-4], 0
.Lt_009F:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 38
jne .Lt_00A0
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp-4], eax
jl .Lt_00A2
push 0
push -2147483648
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
call _ASTCLONETREE@4
push eax
push dword ptr [ebp+8]
call _ASTTYPEINIADDASSIGN@20
.Lt_00A2:
.Lt_00A1:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp+12], ebx
inc dword ptr [ebp-4]
jmp .Lt_009F
.Lt_00A0:
.Lt_009E:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTTYPEINIREPLACEELEMENT@12
_ASTTYPEINIREPLACEELEMENT@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00A3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp+8], eax
mov dword ptr [ebp-4], 0
.Lt_00A5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 38
jne .Lt_00A6
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-4], eax
jne .Lt_00A8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELTREE@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+64], ebx
jmp .Lt_00A4
.Lt_00A8:
.Lt_00A7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp+8], eax
inc dword ptr [ebp-4]
jmp .Lt_00A5
.Lt_00A6:
.Lt_00A4:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl __Z15ASTTYPEINIFLUSHP7ASTNODES0_ll@16
__Z15ASTTYPEINIFLUSHP7ASTNODES0_ll@16:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_00AD:
cmp dword ptr [ebp+16], 0
je .Lt_00B0
dec dword ptr [_AST+140]
.Lt_00B0:
.Lt_00AF:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_00B2
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+68], 0
je .Lt_00B4
push dword ptr [ebp+8]
call _ASTHASSIDEFX@4
test eax, eax
je .Lt_00B6
lea eax, [ebp+8]
push eax
call _ASTREMSIDEFX@4
mov dword ptr [ebp-16], eax
.Lt_00B6:
.Lt_00B5:
.Lt_00B4:
.Lt_00B3:
.Lt_00B2:
.Lt_00B1:
.Lt_00B7:
cmp dword ptr [ebp-8], 0
je .Lt_00B8
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 38
jne .Lt_00BB
.Lt_00BC:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+12], 0
je .Lt_00BE
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
cmp dword ptr [eax], 12
jne .Lt_00C0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+116], 0
jle .Lt_00C2
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
cmp dword ptr [eax+112], 0
jne .Lt_00C4
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+28]
push dword ptr [eax+24]
push dword ptr [ebp+8]
call _ASTCLONETREE@4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp-20], eax
push 0
push 0
push 0
push 8
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 480
je .Lt_00C5
mov dword ptr [ebp-28], 24
jmp .Lt_00D1
.Lt_00C5:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_00D1:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-20]
push 107
call _ASTNEWMEM@20
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
.Lt_00C4:
.Lt_00C3:
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
.Lt_00BE:
.Lt_00BD:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+28]
push dword ptr [eax+24]
push dword ptr [ebp+8]
call _ASTCLONETREE@4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+20]
or eax, 16
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
push dword ptr [ebp-20]
call _ASTNEWASSIGN@12
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
jmp .Lt_00B9
.Lt_00BB:
cmp dword ptr [ebp-24], 37
jne .Lt_00C7
.Lt_00C8:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+28]
push dword ptr [eax+24]
push dword ptr [ebp+8]
call _ASTCLONETREE@4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp-20], eax
push 0
push 0
push 0
push 8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+36]
push dword ptr [eax+32]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-20]
push 107
call _ASTNEWMEM@20
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
jmp .Lt_00B9
.Lt_00C7:
cmp dword ptr [ebp-24], 39
jne .Lt_00C9
.Lt_00CA:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+28]
push dword ptr [eax+24]
push dword ptr [ebp+8]
call _ASTCLONETREE@4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call _ASTPATCHCTORCALL@8
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _ASTNEWLINK@12
mov dword ptr [ebp-16], eax
jmp .Lt_00B9
.Lt_00C9:
cmp dword ptr [ebp-24], 40
jne .Lt_00CB
.Lt_00CC:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _HCALLCTORLIST@12
mov dword ptr [ebp-16], eax
jmp .Lt_00B9
.Lt_00CB:
cmp dword ptr [ebp-24], 41
je .Lt_00CE
.Lt_00CF:
cmp dword ptr [ebp-24], 42
jne .Lt_00CD
.Lt_00CE:
.Lt_00CD:
.Lt_00D0:
.Lt_00B9:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+68]
mov dword ptr [ebp-12], ecx
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ecx
jmp .Lt_00B7
.Lt_00B8:
push dword ptr [ebp+12]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELTREE@4
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ecx
.Lt_00AE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll@16
__Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll@16:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00D2:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
call __Z15ASTTYPEINIFLUSHP7ASTNODES0_ll@16
mov dword ptr [ebp-4], eax
.Lt_00D3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTLOADSTATICINITIALIZER@8
_ASTLOADSTATICINITIALIZER@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00F6:
push dword ptr [ebp+12]
call dword ptr [_IR+176]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.Lt_00F8:
cmp dword ptr [ebp-4], 0
je .Lt_00F9
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .Lt_00FB
.Lt_00FD:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+36]
push dword ptr [ebx+32]
call dword ptr [_IR+204]
jmp .Lt_00FA
.Lt_00FE:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
call dword ptr [_IR+208]
jmp .Lt_00FA
.Lt_00FF:
call dword ptr [_IR+212]
jmp .Lt_00FA
.Lt_0100:
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call _HFLUSHEXPRSTATIC@8
jmp .Lt_00FA
.Lt_00FB:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967259
cmp ebx, 5
ja .Lt_0100
mov ebx, dword ptr [ebp-12]
jmp dword ptr [_.LT_0101+ebx*4-148]
_.LT_0101:
.int .Lt_00FD
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_00FE
.int .Lt_00FF
.Lt_00FA:
push dword ptr [ebp-4]
call _ASTDELNODE@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_00F8
.Lt_00F9:
push dword ptr [ebp+12]
call dword ptr [_IR+180]
push dword ptr [ebp+8]
call _ASTDELNODE@4
.Lt_00F7:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTTYPEINIISCONST@4
_ASTTYPEINIISCONST@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0121:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
.Lt_0123:
cmp dword ptr [ebp-8], 0
je .Lt_0124
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 38
jne .Lt_0127
.Lt_0128:
push dword ptr [ebp-8]
call _HEXPRISCONST@4
test eax, eax
jne .Lt_012A
mov dword ptr [ebp-4], 0
jmp .Lt_0122
.Lt_012A:
.Lt_0129:
jmp .Lt_0125
.Lt_0127:
cmp dword ptr [ebp-12], 39
je .Lt_012C
.Lt_012D:
cmp dword ptr [ebp-12], 40
jne .Lt_012B
.Lt_012C:
mov dword ptr [ebp-4], 0
jmp .Lt_0122
.Lt_012B:
.Lt_0125:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
jmp .Lt_0123
.Lt_0124:
mov dword ptr [ebp-4], -1
.Lt_0122:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTTYPEINIUSESLOCALS@8
_ASTTYPEINIUSESLOCALS@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_012E:
cmp dword ptr [ebp+8], 0
jne .Lt_0131
mov dword ptr [ebp-4], 0
jmp .Lt_012F
.Lt_0131:
.Lt_0130:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .Lt_0133
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ebp+12]
and ebx, dword ptr [ecx+4]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0135
mov dword ptr [ebp-4], -1
jmp .Lt_012F
.Lt_0135:
.Lt_0134:
.Lt_0133:
.Lt_0132:
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _ASTTYPEINIUSESLOCALS@8
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+68]
mov ebx, eax
call _ASTTYPEINIUSESLOCALS@8
or ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_012F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTTYPEINIUPDATE@4
_ASTTYPEINIUPDATE@4:
push ebp
mov ebp, esp
sub esp, 88
mov dword ptr [ebp-4], 0
.Lt_0140:
cmp dword ptr [_AST+140], 0
jg .Lt_0143
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0141
.Lt_0143:
.Lt_0142:
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], -2147483648
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
lea eax, [ebp-88]
push eax
push dword ptr [ebp+8]
call _HWALK@8
mov dword ptr [ebp-8], eax
push 2
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
.Lt_0141:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTTYPEINICLONE@4
_ASTTYPEINICLONE@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0144:
push dword ptr [ebp+8]
call _ASTCLONETREE@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
je .Lt_0147
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call _ASTTEMPSCOPECLONE@8
.Lt_0147:
.Lt_0146:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0145:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTTYPEINITRYREMOVE@4
_ASTTYPEINITRYREMOVE@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0148:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
cmp dword ptr [ebx+68], 0
je .Lt_014B
jmp .Lt_0149
.Lt_014B:
.Lt_014A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
cmp dword ptr [eax], 38
je .Lt_014D
jmp .Lt_0149
.Lt_014D:
.Lt_014C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov eax, dword ptr [ecx+4]
and eax, 511
cmp ebx, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+64]
mov ecx, dword ptr [eax+8]
cmp ecx, dword ptr [esi+8]
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_014F
jmp .Lt_0149
.Lt_014F:
.Lt_014E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELNODE@4
push dword ptr [ebp+8]
call _ASTDELNODE@4
dec dword ptr [_AST+140]
.Lt_0149:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTTYPEINIDELETE@4
_ASTTYPEINIDELETE@4:
push ebp
mov ebp, esp
.Lt_0152:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
je .Lt_0155
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call _ASTTEMPSCOPEDELETE@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+40], 0
.Lt_0155:
.Lt_0154:
push dword ptr [ebp+8]
call _ASTDELTREE@4
.Lt_0153:
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
_HADDNODE@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0081:
mov eax, dword ptr [ebp+20]
cmp eax, -2147483648
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+16], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0084
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp+20], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp+24], ebx
.Lt_0084:
.Lt_0083:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .Lt_0086
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
jmp .Lt_0085
.Lt_0086:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+64], ebx
.Lt_0085:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0082:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HCALLCTORLIST@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A9:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
push dword ptr [eax+24]
push dword ptr [ebp+16]
call _ASTCLONETREE@4
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+36], 0
jl .Lt_00AC
jg .Lt_0158
cmp dword ptr [eax+32], 1
jbe .Lt_00AC
.Lt_0158:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 0
push 8
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-12], eax
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
push ebx
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-20], eax
push 0
push 64
push dword ptr [ebp-8]
call _ASTNEWADDROF@4
push eax
push dword ptr [ebp-20]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
push -1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _ASTBUILDFORBEGIN@20
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp-20]
call _ASTBUILDVARDEREF@4
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
call _ASTBUILDCTORCALL@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
push 0
push 1
push dword ptr [ebp-20]
call _ASTBUILDVARINC@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
push 0
push 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+36]
push dword ptr [eax+32]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _ASTBUILDFOREND@16
mov dword ptr [ebp+8], eax
jmp .Lt_00AB
.Lt_00AC:
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
call _ASTBUILDCTORCALL@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
.Lt_00AB:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00AA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HFLUSHEXPRSTATIC@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_00D4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00D7
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.Lt_00D7:
.Lt_00D6:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
je .Lt_00D9
mov eax, dword ptr [ebp-8]
and eax, 31
mov ebx, dword ptr [ebp-8]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
.Lt_00D9:
.Lt_00D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-20], 4
je .Lt_00DC
.Lt_00DD:
cmp dword ptr [ebp-20], 7
jne .Lt_00DB
.Lt_00DC:
push dword ptr [ebp-16]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-24], eax
.Lt_00DB:
.Lt_00DA:
cmp dword ptr [ebp-24], 0
jne .Lt_00DF
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 23
jne .Lt_00E1
mov eax, dword ptr [ebp-16]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+12]
push dword ptr [ebp-4]
call dword ptr [_IR+192]
jmp .Lt_00E0
.Lt_00E1:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-28], ebx
.Lt_00E2:
cmp dword ptr [ebp-28], 0
je .Lt_00E3
mov ebx, dword ptr [ebp-28]
cmp dword ptr [ebx], 23
jne .Lt_00E5
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx+12]
push dword ptr [ebp-4]
call dword ptr [_IR+192]
mov dword ptr [ebp-16], 0
jmp .Lt_00E3
.Lt_00E5:
.Lt_00E4:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-28], eax
jmp .Lt_00E2
.Lt_00E3:
cmp dword ptr [ebp-16], 0
je .Lt_00E7
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-20], eax
je .Lt_00E9
push 0
push 8
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
push dword ptr [ebp-12]
call _ASTNEWCONV@20
mov dword ptr [ebp-16], eax
.Lt_00E9:
.Lt_00E8:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_00EA
mov dword ptr [ebp-28], 24
jmp .Lt_0159
.Lt_00EA:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_0159:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_00ED
mov eax, dword ptr [ebp-16]
push dword ptr [eax+28]
push dword ptr [eax+24]
push dword ptr [ebp-4]
call dword ptr [_IR+188]
jmp .Lt_00EC
.Lt_00ED:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+28]
push dword ptr [eax+24]
push dword ptr [ebp-4]
call dword ptr [_IR+184]
.Lt_00EC:
.Lt_00E7:
.Lt_00E6:
.Lt_00E0:
jmp .Lt_00DE
.Lt_00DF:
cmp dword ptr [ebp-8], 7
je .Lt_00EF
cmp dword ptr [ebp-20], 7
je .Lt_00F1
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add ecx, 4294967295
adc ebx, 4294967295
push ebx
push ecx
mov ecx, dword ptr [ebp-24]
push dword ptr [ecx+56]
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+40]
mov ebx, dword ptr [ecx+44]
add eax, 4294967295
adc ebx, 4294967295
push ebx
push eax
call dword ptr [_IR+196]
jmp .Lt_00F0
.Lt_00F1:
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
mov ebx, dword ptr [ebp-24]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call ___divdi3
add esp, 16
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call _fb_WstrToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
add ebx, 4294967295
adc edx, 4294967295
push edx
push ebx
call dword ptr [_IR+196]
lea ebx, [ebp-36]
push ebx
call _fb_StrDelete@4
.Lt_00F0:
jmp .Lt_00EE
.Lt_00EF:
cmp dword ptr [ebp-20], 7
je .Lt_00F4
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+40]
mov edx, dword ptr [ebx+44]
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call _fb_StrToWstr@4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-28]
mov edx, dword ptr [_SYMB_DTYPETB+200]
mov eax, edx
sar eax, 31
push eax
push edx
mov edx, dword ptr [ebp-4]
push dword ptr [edx+44]
push dword ptr [edx+40]
call ___divdi3
add esp, 16
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
call dword ptr [_IR+200]
push dword ptr [ebp-28]
call _fb_WstrDelete@4
jmp .Lt_00F3
.Lt_00F4:
mov edx, dword ptr [_SYMB_DTYPETB+200]
mov eax, edx
sar eax, 31
push eax
push edx
mov edx, dword ptr [ebp-24]
push dword ptr [edx+44]
push dword ptr [edx+40]
call ___divdi3
add esp, 16
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
mov edx, dword ptr [_SYMB_DTYPETB+200]
mov eax, edx
sar eax, 31
push eax
push edx
mov edx, dword ptr [ebp-4]
push dword ptr [edx+44]
push dword ptr [edx+40]
call ___divdi3
add esp, 16
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
call dword ptr [_IR+200]
.Lt_00F3:
.Lt_00EE:
.Lt_00DE:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELTREE@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
.Lt_00D5:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEXPRISCONST@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0102:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0105
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 12
jne .Lt_0106
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+116]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_015A
.Lt_0106:
mov dword ptr [ebp-16], 0
.Lt_015A:
cmp dword ptr [ebp-16], 0
je .Lt_0109
push 0
push -1
push 24
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
jmp .Lt_0103
.Lt_0109:
.Lt_0108:
.Lt_0105:
.Lt_0104:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 23
je .Lt_010D
.Lt_010E:
cmp dword ptr [ebp-16], 16
jne .Lt_010C
.Lt_010D:
mov dword ptr [ebp-4], -1
jmp .Lt_0103
jmp .Lt_010A
.Lt_010C:
cmp dword ptr [ebp-16], 5
jne .Lt_010F
.Lt_0110:
.Lt_0111:
cmp dword ptr [ebp-12], 0
je .Lt_0112
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 5
jne .Lt_0115
.Lt_0116:
jmp .Lt_0113
.Lt_0115:
cmp dword ptr [ebp-20], 23
jne .Lt_0117
.Lt_0118:
mov dword ptr [ebp-4], -1
jmp .Lt_0103
jmp .Lt_0113
.Lt_0117:
jmp .Lt_0112
.Lt_0119:
.Lt_0113:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-12], eax
jmp .Lt_0111
.Lt_0112:
mov dword ptr [ebp-4], 0
jmp .Lt_0103
.Lt_010F:
.Lt_010A:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 4
je .Lt_011D
.Lt_011E:
cmp dword ptr [ebp-16], 7
jne .Lt_011C
.Lt_011D:
push dword ptr [ebp-12]
call _ASTGETSTRLITSYMBOL@4
test eax, eax
je .Lt_0120
mov dword ptr [ebp-4], -1
jmp .Lt_0103
.Lt_0120:
.Lt_011F:
.Lt_011C:
.Lt_011A:
mov dword ptr [ebp-4], 0
.Lt_0103:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HWALK@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0138:
cmp dword ptr [ebp+8], 0
jne .Lt_013B
mov dword ptr [ebp-4], 0
jmp .Lt_0139
.Lt_013B:
.Lt_013A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 36
jne .Lt_013D
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call _ASTDTORLISTADD@4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+64], ebx
jne .Lt_013F
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
jmp .Lt_013E
.Lt_013F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+68], ebx
.Lt_013E:
push 64
push -1
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll@16
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _ASTTYPEINIUPDATE@4
mov dword ptr [ebp-4], eax
jmp .Lt_0139
.Lt_013D:
.Lt_013C:
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _HWALK@8
push eax
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _HWALK@8
push eax
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
.Lt_0139:
mov eax, dword ptr [ebp-4]
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
