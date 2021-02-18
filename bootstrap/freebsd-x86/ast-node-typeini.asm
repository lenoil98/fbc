	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTTYPEINIBEGIN
ASTTYPEINIBEGIN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 36
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+16], 0
jne .Lt_006A
mov ecx, dword ptr [PARSER+108]
cmp dword ptr [ecx], 15
jne .Lt_006C
mov ecx, dword ptr [PARSER+108]
mov ebx, dword ptr [ecx+56]
mov ecx, dword ptr [ebx]
cmp ecx, 36
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-12], ecx
jmp .Lt_006B
.Lt_006C:
mov dword ptr [ebp-12], -1
.Lt_006B:
.Lt_006A:
.Lt_0069:
cmp dword ptr [ebp-12], 0
je .Lt_006E
push dword ptr [ebp-8]
mov ecx, dword ptr [ebp-8]
lea ebx, [ecx+40]
push ebx
call ASTTEMPSCOPEBEGIN
add esp, 8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+36], eax
jmp .Lt_006D
.Lt_006E:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+36], 0
.Lt_006D:
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINIEND
ASTTYPEINIEND:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_0070:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+60], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0073
inc dword ptr [AST+140]
.Lt_0073:
.Lt_0072:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
.Lt_0074:
cmp dword ptr [ebp-4], 0
je .Lt_0075
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 38
jne .Lt_0077
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 36
jne .Lt_0079
dec dword ptr [AST+140]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], ebx
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+60]
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+56]
mov dword ptr [ebp-4], ecx
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
cmp dword ptr [ebp-8], 0
je .Lt_007B
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [ecx+60], ebx
jmp .Lt_007A
.Lt_007B:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
mov dword ptr [ebx+56], ecx
.Lt_007A:
.Lt_007C:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+60], 0
je .Lt_007D
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
add dword ptr [ecx+20], eax
adc dword ptr [ecx+24], ebx
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
jmp .Lt_007C
.Lt_007D:
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
add dword ptr [ebx+20], ecx
adc dword ptr [ebx+24], eax
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-16]
mov dword ptr [ecx+60], eax
.Lt_0079:
.Lt_0078:
.Lt_0077:
.Lt_0076:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-4], ecx
jmp .Lt_0074
.Lt_0075:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+36], 0
je .Lt_007F
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+40]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+36]
call ASTTEMPSCOPEEND
add esp, 8
.Lt_007F:
.Lt_007E:
.Lt_0071:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINIREMOVELASTNODE
ASTTYPEINIREMOVELASTNODE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0086:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
.Lt_0088:
cmp dword ptr [ebp-8], 0
je .Lt_0089
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+60], 0
jne .Lt_008B
cmp dword ptr [ebp-4], 0
je .Lt_008D
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+60], 0
jmp .Lt_008C
.Lt_008D:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+56], 0
.Lt_008C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+60], eax
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
jmp .Lt_0089
.Lt_008B:
.Lt_008A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
jmp .Lt_0088
.Lt_0089:
.Lt_0087:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINIADDPAD
ASTTYPEINIADDPAD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_008E:
push 0
push -2147483648
push 0
push 37
push dword ptr [ebp+8]
call HADDNODE
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+28], ecx
mov dword ptr [eax+32], ebx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebx+20], esi
mov dword ptr [ebx+24], eax
mov esi, dword ptr [ebp-8]
mov dword ptr [ebp-4], esi
.Lt_008F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINIADDASSIGN
ASTTYPEINIADDASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0090:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push 38
push dword ptr [ebp+8]
call HADDNODE
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [eax+20]
mov ecx, dword ptr [eax+24]
mov dword ptr [ebx+20], esi
mov dword ptr [ebx+24], ecx
cmp dword ptr [ebp+16], 0
je .Lt_0093
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+40]
mov ebx, dword ptr [ecx+44]
add dword ptr [esi+20], eax
adc dword ptr [esi+24], ebx
.Lt_0093:
.Lt_0092:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0091:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINIADDCTORCALL
ASTTYPEINIADDCTORCALL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0094:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push 39
push dword ptr [ebp+8]
call HADDNODE
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
mov dword ptr [eax+20], esi
mov dword ptr [eax+24], ecx
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
mov dword ptr [esi+56], ecx
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ebx, dword ptr [esi+40]
mov eax, dword ptr [esi+44]
add dword ptr [ecx+20], ebx
adc dword ptr [ecx+24], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0095:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINIADDCTORLIST
ASTTYPEINIADDCTORLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0096:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
push 40
push dword ptr [ebp+8]
call HADDNODE
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [ebx+20]
mov ecx, dword ptr [ebx+24]
mov dword ptr [eax+20], esi
mov dword ptr [eax+24], ecx
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+20]
mov dword ptr [esi+28], eax
mov dword ptr [esi+32], ecx
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
add dword ptr [eax+20], ebx
adc dword ptr [eax+24], esi
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0097:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINISCOPEBEGIN
ASTTYPEINISCOPEBEGIN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0098:
push 0
push -2147483648
push 0
push 41
push dword ptr [ebp+8]
call HADDNODE
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0099:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINISCOPEEND
ASTTYPEINISCOPEEND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_009A:
push 0
push -2147483648
push 0
push 42
push dword ptr [ebp+8]
call HADDNODE
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_009B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINICOPYELEMENTS
ASTTYPEINICOPYELEMENTS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_009C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp+12], eax
mov dword ptr [ebp-4], 0
.Lt_009E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 38
jne .Lt_009F
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp-4], eax
jl .Lt_00A1
push 0
push -2147483648
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call ASTCLONETREE
add esp, 4
push eax
push dword ptr [ebp+8]
call ASTTYPEINIADDASSIGN
add esp, 20
.Lt_00A1:
.Lt_00A0:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp+12], ebx
inc dword ptr [ebp-4]
jmp .Lt_009E
.Lt_009F:
.Lt_009D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINIREPLACEELEMENT
ASTTYPEINIREPLACEELEMENT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00A2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp+8], eax
mov dword ptr [ebp-4], 0
.Lt_00A4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 38
jne .Lt_00A5
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-4], eax
jne .Lt_00A7
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+56], ebx
jmp .Lt_00A3
.Lt_00A7:
.Lt_00A6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp+8], eax
inc dword ptr [ebp-4]
jmp .Lt_00A4
.Lt_00A5:
.Lt_00A3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
_Z15ASTTYPEINIFLUSHP7ASTNODES0_ll:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_00AC:
cmp dword ptr [ebp+16], 0
je .Lt_00AF
dec dword ptr [AST+140]
.Lt_00AF:
.Lt_00AE:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_00B1
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+60], 0
je .Lt_00B3
push dword ptr [ebp+8]
call ASTHASSIDEFX
add esp, 4
test eax, eax
je .Lt_00B5
lea eax, [ebp+8]
push eax
call ASTREMSIDEFX
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_00B5:
.Lt_00B4:
.Lt_00B3:
.Lt_00B2:
.Lt_00B1:
.Lt_00B0:
.Lt_00B6:
cmp dword ptr [ebp-8], 0
je .Lt_00B7
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 38
jne .Lt_00BA
.Lt_00BB:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+12], 0
je .Lt_00BD
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
cmp dword ptr [eax], 12
jne .Lt_00BF
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+112], 0
jle .Lt_00C1
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
cmp dword ptr [eax+108], 0
jne .Lt_00C3
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
mov dword ptr [ebp-20], eax
push 0
push 0
push 0
push 8
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 480
je .Lt_00C4
mov dword ptr [ebp-28], 24
jmp .Lt_00D0
.Lt_00C4:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_00D0:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-20]
push 107
call ASTNEWMEM
add esp, 20
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
.Lt_00C3:
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
.Lt_00BE:
.Lt_00BD:
.Lt_00BC:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+20]
or eax, 16
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
push dword ptr [ebp-20]
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_00B8
.Lt_00BA:
cmp dword ptr [ebp-24], 37
jne .Lt_00C6
.Lt_00C7:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
mov dword ptr [ebp-20], eax
push 0
push 0
push 0
push 8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push dword ptr [eax+28]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-20]
push 107
call ASTNEWMEM
add esp, 20
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_00B8
.Lt_00C6:
cmp dword ptr [ebp-24], 39
jne .Lt_00C8
.Lt_00C9:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call ASTPATCHCTORCALL
add esp, 8
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_00B8
.Lt_00C8:
cmp dword ptr [ebp-24], 40
jne .Lt_00CA
.Lt_00CB:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call HCALLCTORLIST
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_00B8
.Lt_00CA:
cmp dword ptr [ebp-24], 41
je .Lt_00CD
.Lt_00CE:
cmp dword ptr [ebp-24], 42
jne .Lt_00CC
.Lt_00CD:
.Lt_00CC:
.Lt_00CF:
.Lt_00B8:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-12], ecx
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ecx
jmp .Lt_00B6
.Lt_00B7:
push dword ptr [ebp+12]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 4
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ecx
.Lt_00AD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
_Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00D1:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00D2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADSTATICINITIALIZER
ASTLOADSTATICINITIALIZER:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00F5:
push dword ptr [ebp+12]
call dword ptr [IR+176]
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
.Lt_00F7:
cmp dword ptr [ebp-4], 0
je .Lt_00F8
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .Lt_00FA
.Lt_00FC:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+32]
push dword ptr [ebx+28]
call dword ptr [IR+204]
add esp, 8
jmp .Lt_00F9
.Lt_00FD:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
call dword ptr [IR+208]
add esp, 8
jmp .Lt_00F9
.Lt_00FE:
call dword ptr [IR+212]
jmp .Lt_00F9
.Lt_00FF:
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call HFLUSHEXPRSTATIC
add esp, 8
jmp .Lt_00F9
.Lt_00FA:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967259
cmp ebx, 5
ja .Lt_00FF
mov ebx, dword ptr [ebp-12]
jmp dword ptr [.LT_0100+ebx*4-148]
.LT_0100:
.int .Lt_00FC
.int .Lt_00FF
.int .Lt_00FF
.int .Lt_00FF
.int .Lt_00FD
.int .Lt_00FE
.Lt_00F9:
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_00F7
.Lt_00F8:
push dword ptr [ebp+12]
call dword ptr [IR+180]
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
.Lt_00F6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINIISCONST
ASTTYPEINIISCONST:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0120:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
.Lt_0122:
cmp dword ptr [ebp-8], 0
je .Lt_0123
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 38
jne .Lt_0126
.Lt_0127:
push dword ptr [ebp-8]
call HEXPRISCONST
add esp, 4
test eax, eax
jne .Lt_0129
mov dword ptr [ebp-4], 0
jmp .Lt_0121
.Lt_0129:
.Lt_0128:
jmp .Lt_0124
.Lt_0126:
cmp dword ptr [ebp-12], 39
je .Lt_012B
.Lt_012C:
cmp dword ptr [ebp-12], 40
jne .Lt_012A
.Lt_012B:
mov dword ptr [ebp-4], 0
jmp .Lt_0121
.Lt_012A:
.Lt_0124:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
jmp .Lt_0122
.Lt_0123:
mov dword ptr [ebp-4], -1
.Lt_0121:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINIUSESLOCALS
ASTTYPEINIUSESLOCALS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_012D:
cmp dword ptr [ebp+8], 0
jne .Lt_0130
mov dword ptr [ebp-4], 0
jmp .Lt_012E
.Lt_0130:
.Lt_012F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .Lt_0132
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
je .Lt_0134
mov dword ptr [ebp-4], -1
jmp .Lt_012E
.Lt_0134:
.Lt_0133:
.Lt_0132:
.Lt_0131:
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTTYPEINIUSESLOCALS
add esp, 8
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
mov ebx, eax
call ASTTYPEINIUSESLOCALS
add esp, 8
or ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_012E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINIUPDATE
ASTTYPEINIUPDATE:
push ebp
mov ebp, esp
sub esp, 80
mov dword ptr [ebp-4], 0
.Lt_013F:
cmp dword ptr [AST+140], 0
jg .Lt_0142
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0140
.Lt_0142:
.Lt_0141:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], -2147483648
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
lea eax, [ebp-80]
push eax
push dword ptr [ebp+8]
call HWALK
add esp, 8
mov dword ptr [ebp-8], eax
push 2
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0140:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINICLONE
ASTTYPEINICLONE:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0143:
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+36], 0
je .Lt_0146
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+36]
call ASTTEMPSCOPECLONE
add esp, 8
.Lt_0146:
.Lt_0145:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0144:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINITRYREMOVE
ASTTYPEINITRYREMOVE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0147:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx+60], 0
je .Lt_014A
jmp .Lt_0148
.Lt_014A:
.Lt_0149:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 38
je .Lt_014C
jmp .Lt_0148
.Lt_014C:
.Lt_014B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 511
cmp ebx, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+56]
mov ecx, dword ptr [eax+8]
cmp ecx, dword ptr [esi+8]
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_014E
jmp .Lt_0148
.Lt_014E:
.Lt_014D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 4
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
dec dword ptr [AST+140]
.Lt_0148:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTTYPEINIDELETE
ASTTYPEINIDELETE:
push ebp
mov ebp, esp
.Lt_0151:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+36], 0
je .Lt_0154
mov eax, dword ptr [ebp+8]
push dword ptr [eax+36]
call ASTTEMPSCOPEDELETE
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+36], 0
.Lt_0154:
.Lt_0153:
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 4
.Lt_0152:
mov esp, ebp
pop ebp
ret
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
.balign 16
HADDNODE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0080:
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
je .Lt_0083
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp+20], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp+24], ebx
.Lt_0083:
.Lt_0082:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_0085
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
jmp .Lt_0084
.Lt_0085:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+56], ebx
.Lt_0084:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLCTORLIST:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A8:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp+16]
call ASTCLONETREE
add esp, 4
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+32], 0
jl .Lt_00AB
jg .Lt_0157
cmp dword ptr [eax+28], 1
jbe .Lt_00AB
.Lt_0157:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 0
push 8
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-12], eax
push 4
push 0
call SYMBADDLABEL
add esp, 8
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
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-20], eax
push 0
push 64
push dword ptr [ebp-8]
call ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp-20]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
push -1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call ASTBUILDFORBEGIN
add esp, 20
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp-20]
call ASTBUILDVARDEREF
add esp, 4
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
call ASTBUILDCTORCALL
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
push 0
push 1
push dword ptr [ebp-20]
call ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
push 0
push 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
push dword ptr [eax+28]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call ASTBUILDFOREND
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_00AA
.Lt_00AB:
push 0
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
call ASTBUILDCTORCALL
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
.Lt_00AA:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00A9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFLUSHEXPRSTATIC:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_00D3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00D6
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.Lt_00D6:
.Lt_00D5:
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
je .Lt_00D8
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
.Lt_00D8:
.Lt_00D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-20], 4
je .Lt_00DB
.Lt_00DC:
cmp dword ptr [ebp-20], 7
jne .Lt_00DA
.Lt_00DB:
push dword ptr [ebp-16]
call ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_00DA:
.Lt_00D9:
cmp dword ptr [ebp-24], 0
jne .Lt_00DE
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 23
jne .Lt_00E0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+12]
push dword ptr [ebp-4]
call dword ptr [IR+192]
add esp, 16
jmp .Lt_00DF
.Lt_00E0:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-28], ebx
.Lt_00E1:
cmp dword ptr [ebp-28], 0
je .Lt_00E2
mov ebx, dword ptr [ebp-28]
cmp dword ptr [ebx], 23
jne .Lt_00E4
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx+12]
push dword ptr [ebp-4]
call dword ptr [IR+192]
add esp, 16
mov dword ptr [ebp-16], 0
jmp .Lt_00E2
.Lt_00E4:
.Lt_00E3:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-28], eax
jmp .Lt_00E1
.Lt_00E2:
cmp dword ptr [ebp-16], 0
je .Lt_00E6
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-20], eax
je .Lt_00E8
push 0
push 8
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
push dword ptr [ebp-12]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-16], eax
.Lt_00E8:
.Lt_00E7:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_00E9
mov dword ptr [ebp-28], 24
jmp .Lt_0158
.Lt_00E9:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_0158:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_00EC
mov eax, dword ptr [ebp-16]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp-4]
call dword ptr [IR+188]
add esp, 12
jmp .Lt_00EB
.Lt_00EC:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp-4]
call dword ptr [IR+184]
add esp, 12
.Lt_00EB:
.Lt_00E6:
.Lt_00E5:
.Lt_00DF:
jmp .Lt_00DD
.Lt_00DE:
cmp dword ptr [ebp-8], 7
je .Lt_00EE
cmp dword ptr [ebp-20], 7
je .Lt_00F0
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
call dword ptr [IR+196]
add esp, 20
jmp .Lt_00EF
.Lt_00F0:
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
mov ebx, dword ptr [ebp-24]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call __divdi3
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
call fb_WstrToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
add ebx, 4294967295
adc edx, 4294967295
push edx
push ebx
call dword ptr [IR+196]
add esp, 20
lea ebx, [ebp-36]
push ebx
call fb_StrDelete
add esp, 4
.Lt_00EF:
jmp .Lt_00ED
.Lt_00EE:
cmp dword ptr [ebp-20], 7
je .Lt_00F3
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+40]
mov edx, dword ptr [ebx+44]
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-28]
mov edx, dword ptr [SYMB_DTYPETB+200]
mov eax, edx
sar eax, 31
push eax
push edx
mov edx, dword ptr [ebp-4]
push dword ptr [edx+44]
push dword ptr [edx+40]
call __divdi3
add esp, 16
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
call dword ptr [IR+200]
add esp, 20
push dword ptr [ebp-28]
call fb_WstrDelete
add esp, 4
jmp .Lt_00F2
.Lt_00F3:
mov edx, dword ptr [SYMB_DTYPETB+200]
mov eax, edx
sar eax, 31
push eax
push edx
mov edx, dword ptr [ebp-24]
push dword ptr [edx+44]
push dword ptr [edx+40]
call __divdi3
add esp, 16
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
mov edx, dword ptr [SYMB_DTYPETB+200]
mov eax, edx
sar eax, 31
push eax
push edx
mov edx, dword ptr [ebp-4]
push dword ptr [edx+44]
push dword ptr [edx+40]
call __divdi3
add esp, 16
add eax, 4294967295
adc edx, 4294967295
push edx
push eax
call dword ptr [IR+200]
add esp, 20
.Lt_00F2:
.Lt_00ED:
.Lt_00DD:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
.Lt_00D4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HEXPRISCONST:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0101:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0104
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 12
jne .Lt_0105
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+112]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_0159
.Lt_0105:
mov dword ptr [ebp-16], 0
.Lt_0159:
cmp dword ptr [ebp-16], 0
je .Lt_0108
push 0
push -1
push 24
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_0102
.Lt_0108:
.Lt_0107:
.Lt_0104:
.Lt_0103:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 23
je .Lt_010C
.Lt_010D:
cmp dword ptr [ebp-16], 16
jne .Lt_010B
.Lt_010C:
mov dword ptr [ebp-4], -1
jmp .Lt_0102
jmp .Lt_0109
.Lt_010B:
cmp dword ptr [ebp-16], 5
jne .Lt_010E
.Lt_010F:
.Lt_0110:
cmp dword ptr [ebp-12], 0
je .Lt_0111
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 5
jne .Lt_0114
.Lt_0115:
jmp .Lt_0112
.Lt_0114:
cmp dword ptr [ebp-20], 23
jne .Lt_0116
.Lt_0117:
mov dword ptr [ebp-4], -1
jmp .Lt_0102
jmp .Lt_0112
.Lt_0116:
jmp .Lt_0111
.Lt_0118:
.Lt_0112:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
jmp .Lt_0110
.Lt_0111:
mov dword ptr [ebp-4], 0
jmp .Lt_0102
.Lt_010E:
.Lt_0109:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 4
je .Lt_011C
.Lt_011D:
cmp dword ptr [ebp-16], 7
jne .Lt_011B
.Lt_011C:
push dword ptr [ebp-12]
call ASTGETSTRLITSYMBOL
add esp, 4
test eax, eax
je .Lt_011F
mov dword ptr [ebp-4], -1
jmp .Lt_0102
.Lt_011F:
.Lt_011E:
.Lt_011B:
.Lt_0119:
mov dword ptr [ebp-4], 0
.Lt_0102:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HWALK:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0137:
cmp dword ptr [ebp+8], 0
jne .Lt_013A
mov dword ptr [ebp-4], 0
jmp .Lt_0138
.Lt_013A:
.Lt_0139:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 36
jne .Lt_013C
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call ASTDTORLISTADD
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+56], ebx
jne .Lt_013E
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
jmp .Lt_013D
.Lt_013E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+60], ebx
.Lt_013D:
push 64
push -1
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call ASTTYPEINIUPDATE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0138
.Lt_013C:
.Lt_013B:
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HWALK
add esp, 8
push eax
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HWALK
add esp, 8
push eax
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0138:
mov eax, dword ptr [ebp-4]
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
