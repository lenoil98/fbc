	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTINIT
ASTINIT:
.type ASTINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00CC:
push 6
push 72
push 8192
lea eax, [AST]
push eax
call LISTINIT
add esp, 16
mov dword ptr [AST+136], -1
mov dword ptr [AST+140], 0
mov dword ptr [AST+144], 0
mov dword ptr [AST+132], 0
mov dword ptr [AST+232], 0
call ASTCALLINIT
call ASTPROCLISTINIT
call ASTDATASTMTINIT
call ASTMISCINIT
push 6
push 12
push 16
lea eax, [AST+200]
push eax
call LISTINIT
add esp, 16
.Lt_00CD:
mov esp, ebp
pop ebp
ret
.size ASTINIT, .-ASTINIT
.balign 16

.globl ASTEND
ASTEND:
.type ASTEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00CE:
sub esp, 12
lea eax, [AST+200]
push eax
call LISTEND
add esp, 16
call ASTMISCEND
call ASTPROCLISTEND
call ASTCALLEND
sub esp, 12
lea eax, [AST]
push eax
call LISTEND
add esp, 16
.Lt_00CF:
mov esp, ebp
pop ebp
ret
.size ASTEND, .-ASTEND
.balign 16

.globl ASTCLONETREE
ASTCLONETREE:
.type ASTCLONETREE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D0:
cmp dword ptr [ebp+8], 0
jne .Lt_00D3
mov dword ptr [ebp-4], 0
jmp .Lt_00D1
.Lt_00D3:
.Lt_00D2:
sub esp, 4
push 0
push -2147483648
push -1
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
push edi
push esi
mov edi, dword ptr [ebp-8]
mov esi, dword ptr [ebp+8]
mov ecx, 18
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_00D5
sub esp, 12
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
.Lt_00D5:
.Lt_00D4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_00D7
sub esp, 12
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.Lt_00D7:
.Lt_00D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 17
jne .Lt_00DA
.Lt_00DB:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+12], 0
je .Lt_00DD
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+12]
mov eax, dword ptr [ecx+4]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00DF
sub esp, 12
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call ASTDTORLISTADDREF
add esp, 16
.Lt_00DF:
.Lt_00DE:
.Lt_00DD:
.Lt_00DC:
jmp .Lt_00D8
.Lt_00DA:
cmp dword ptr [ebp-16], 9
jne .Lt_00E0
.Lt_00E1:
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTCLONECALL
add esp, 16
jmp .Lt_00D8
.Lt_00E0:
cmp dword ptr [ebp-16], 26
jne .Lt_00E2
.Lt_00E3:
sub esp, 4
sub esp, 4
push 4
push 0
call SYMBADDLABEL
add esp, 12
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
push dword ptr [ebp-8]
call ASTREPLACESYMBOLONTREE
add esp, 16
jmp .Lt_00D8
.Lt_00E2:
cmp dword ptr [ebp-16], 13
jne .Lt_00E4
.Lt_00E5:
sub esp, 4
sub esp, 4
push 4
push 0
call SYMBADDLABEL
add esp, 12
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+28]
push dword ptr [ebp-8]
call ASTREPLACESYMBOLONTREE
add esp, 16
jmp .Lt_00D8
.Lt_00E4:
cmp dword ptr [ebp-16], 36
jne .Lt_00E6
.Lt_00E7:
inc dword ptr [AST+140]
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+36], 0
jmp .Lt_00D8
.Lt_00E6:
cmp dword ptr [ebp-16], 19
jne .Lt_00E8
.Lt_00E9:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+112], 0
jle .Lt_00EB
inc dword ptr [AST+144]
.Lt_00EB:
.Lt_00EA:
.Lt_00E8:
.Lt_00D8:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00D1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTCLONETREE, .-ASTCLONETREE
.balign 16

.globl ASTGETEFFECTIVENODE
ASTGETEFFECTIVENODE:
.type ASTGETEFFECTIVENODE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
jne .Lt_00F1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
jne .Lt_00F4
.Lt_00F5:
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call ASTGETEFFECTIVENODE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00F2
.Lt_00F4:
cmp dword ptr [ebp-8], 2
jne .Lt_00F6
.Lt_00F7:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTGETEFFECTIVENODE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00F2
.Lt_00F6:
mov dword ptr [ebp-4], 0
.Lt_00F8:
.Lt_00F2:
jmp .Lt_00F0
.Lt_00F1:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00F0:
.Lt_00EF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTGETEFFECTIVENODE, .-ASTGETEFFECTIVENODE
.balign 16

.globl ASTGETEFFECTIVECLASS
ASTGETEFFECTIVECLASS:
.type ASTGETEFFECTIVECLASS, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F9:
sub esp, 12
push dword ptr [ebp+8]
call ASTGETEFFECTIVENODE
add esp, 16
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.Lt_00FA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTGETEFFECTIVECLASS, .-ASTGETEFFECTIVECLASS
.balign 16

.globl ASTREBUILDWITHOUTEFFECTIVEPART
ASTREBUILDWITHOUTEFFECTIVEPART:
.type ASTREBUILDWITHOUTEFFECTIVEPART, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FB:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
jne .Lt_00FE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 1
jne .Lt_0101
.Lt_0102:
sub esp, 12
push dword ptr [ebp-8]
call ASTREBUILDWITHOUTEFFECTIVEPART
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00FF
.Lt_0101:
cmp dword ptr [ebp-16], 2
jne .Lt_0103
.Lt_0104:
sub esp, 12
push dword ptr [ebp-12]
call ASTREBUILDWITHOUTEFFECTIVEPART
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0103:
.Lt_0105:
.Lt_00FF:
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
jmp .Lt_00FD
.Lt_00FE:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], 0
.Lt_00FD:
.Lt_00FC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTREBUILDWITHOUTEFFECTIVEPART, .-ASTREBUILDWITHOUTEFFECTIVEPART
.balign 16

.globl ASTCANTAKEADDROF
ASTCANTAKEADDROF:
.type ASTCANTAKEADDROF, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0106:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_0109
.Lt_010B:
mov dword ptr [ebp-4], -1
jmp .Lt_0108
.Lt_010C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+112]
test ebx, ebx
setle bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_0108
.Lt_010D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
jne .Lt_0110
.Lt_0111:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTCANTAKEADDROF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_010E
.Lt_0110:
cmp dword ptr [ebp-12], 2
jne .Lt_0112
.Lt_0113:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTCANTAKEADDROF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_010E
.Lt_0112:
mov dword ptr [ebp-4], 0
.Lt_0114:
.Lt_010E:
jmp .Lt_0108
.Lt_0115:
mov dword ptr [ebp-4], 0
jmp .Lt_0108
.Lt_0109:
mov eax, dword ptr [ebp-8]
add eax, 4294967286
cmp eax, 26
ja .Lt_0115
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0116+eax*4-40]
.LT_0116:
.int .Lt_010B
.int .Lt_0115
.int .Lt_0115
.int .Lt_0115
.int .Lt_0115
.int .Lt_010D
.int .Lt_0115
.int .Lt_010B
.int .Lt_010B
.int .Lt_010C
.int .Lt_010B
.int .Lt_0115
.int .Lt_0115
.int .Lt_0115
.int .Lt_0115
.int .Lt_0115
.int .Lt_010B
.int .Lt_0115
.int .Lt_0115
.int .Lt_0115
.int .Lt_0115
.int .Lt_0115
.int .Lt_0115
.int .Lt_0115
.int .Lt_0115
.int .Lt_0115
.int .Lt_010B
.Lt_0108:
.Lt_0107:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTCANTAKEADDROF, .-ASTCANTAKEADDROF
.balign 16

.globl ASTMAKEREF
ASTMAKEREF:
.type ASTMAKEREF, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0118:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 19
jne .Lt_011A
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+112]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_0125
.Lt_011A:
mov dword ptr [ebp-16], 0
.Lt_0125:
cmp dword ptr [ebp-16], 0
je .Lt_011D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call ASTDELNODE
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call ASTMAKEREF
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call ASTNEWFIELD
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_0119
.Lt_011D:
.Lt_011C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 9
jne .Lt_011F
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 17
je .Lt_0123
.Lt_0124:
cmp dword ptr [ebp-20], 7
jne .Lt_0122
.Lt_0123:
sub esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+4]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+4]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+4]
and ebx, 32505856
or eax, ebx
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call ASTSETTYPE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTREMSIDEFX
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
push 0
push 0
push -2147483648
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call ASTNEWDEREF
add esp, 32
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_0119
.Lt_0122:
.Lt_0120:
.Lt_011F:
.Lt_011E:
sub esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ecx+4]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ecx+4]
and eax, 32505856
or ebx, eax
push ebx
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 64
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call ASTNEWADDROF
add esp, 8
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 32
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_0119:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTMAKEREF, .-ASTMAKEREF
.balign 16

.globl ASTREMSIDEFX
ASTREMSIDEFX:
.type ASTREMSIDEFX, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0127:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call ASTUPDSTRCONCAT
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-12], ebx
jmp .Lt_012A
.Lt_012C:
sub esp, 12
push dword ptr [ebp+8]
call ASTMAKEREF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0129
.Lt_012D:
sub esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
push dword ptr [eax+4]
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 64
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 32
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_0129
.Lt_012A:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 16
ja .Lt_012D
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_012E+eax*4-16]
.LT_012E:
.int .Lt_012C
.int .Lt_012D
.int .Lt_012D
.int .Lt_012C
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012D
.int .Lt_012C
.int .Lt_012C
.int .Lt_012D
.int .Lt_012C
.Lt_0129:
.Lt_0128:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTREMSIDEFX, .-ASTREMSIDEFX
.balign 16

.globl ASTDELTREE
ASTDELTREE:
.type ASTDELTREE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_012F:
cmp dword ptr [ebp+8], 0
jne .Lt_0132
jmp .Lt_0130
.Lt_0132:
.Lt_0131:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .Lt_0134
sub esp, 12
push dword ptr [ebp+8]
call ASTDELCALL
add esp, 16
.Lt_0134:
.Lt_0133:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_0136
sub esp, 12
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 16
.Lt_0136:
.Lt_0135:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_0138
sub esp, 12
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 16
.Lt_0138:
.Lt_0137:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
.Lt_0130:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTDELTREE, .-ASTDELTREE
.balign 16

.globl ASTNEWNODE
ASTNEWNODE:
.type ASTNEWNODE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0139:
sub esp, 12
lea eax, [AST]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_013A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTNEWNODE, .-ASTNEWNODE
.balign 16

.globl ASTDELNODE
ASTDELNODE:
.type ASTDELNODE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_013B:
cmp dword ptr [ebp+8], 0
jne .Lt_013E
jmp .Lt_013C
.Lt_013E:
.Lt_013D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .Lt_0140
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_0142
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ecx+4]
and ebx, 4096
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0144
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call ASTDTORLISTREMOVEREF
add esp, 16
.Lt_0144:
.Lt_0143:
.Lt_0142:
.Lt_0141:
.Lt_0140:
.Lt_013F:
sub esp, 8
push dword ptr [ebp+8]
lea ebx, [AST]
push ebx
call LISTDELNODE
add esp, 16
.Lt_013C:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTDELNODE, .-ASTDELNODE
.balign 16

.globl ASTGETINVERSELOGOP
ASTGETINVERSELOGOP:
.type ASTGETINVERSELOGOP, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0147:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_014A
.Lt_014C:
mov dword ptr [ebp+8], 48
jmp .Lt_0149
.Lt_014D:
mov dword ptr [ebp+8], 45
jmp .Lt_0149
.Lt_014E:
mov dword ptr [ebp+8], 50
jmp .Lt_0149
.Lt_014F:
mov dword ptr [ebp+8], 49
jmp .Lt_0149
.Lt_0150:
mov dword ptr [ebp+8], 47
jmp .Lt_0149
.Lt_0151:
mov dword ptr [ebp+8], 46
jmp .Lt_0149
.Lt_014A:
mov eax, dword ptr [ebp-8]
add eax, 4294967251
cmp eax, 5
ja .Lt_0149
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0152+eax*4-180]
.LT_0152:
.int .Lt_014C
.int .Lt_014E
.int .Lt_014F
.int .Lt_014D
.int .Lt_0150
.int .Lt_0151
.Lt_0149:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0148:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTGETINVERSELOGOP, .-ASTGETINVERSELOGOP
.balign 16

.globl ASTLOAD
ASTLOAD:
.type ASTLOAD, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0153:
cmp dword ptr [ebp+8], 0
je .Lt_0156
sub esp, 12
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
call dword ptr [AST_LOADCALLBACKS+ebx*4]
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0156:
.Lt_0155:
.Lt_0154:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTLOAD, .-ASTLOAD
.balign 16
fb_ctor__ast:
.type fb_ctor__ast, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__ast, .-fb_ctor__ast
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

.section .rodata
.balign 4
Lt_0019:	.ascii	"/\0"

.section .bss

.globl AST
.balign 4
	.lcomm	AST,236

.section .data
.balign 4

.globl AST_OPTB
AST_OPTB:
.int 2
.int 5
.int Lt_005F
.skip 4,0
.int 3
.int 5
.int Lt_0060
.int 28
.int 3
.int 5
.int Lt_0061
.int 29
.int 3
.int 5
.int Lt_0062
.int 30
.int 3
.int 5
.int Lt_0063
.int 31
.int 3
.int 5
.int Lt_0063
.int 32
.int 3
.int 5
.int Lt_0064
.int 33
.int 3
.int 5
.int Lt_0065
.int 34
.int 3
.int 5
.int Lt_0066
.int 35
.int 3
.int 5
.int Lt_0067
.int 36
.int 3
.int 5
.int Lt_0068
.int 37
.int 3
.int 5
.int Lt_0069
.int 38
.int 3
.int 5
.int Lt_006A
.int 39
.int 3
.int 5
.int Lt_006B
.int 40
.int 3
.int 5
.int Lt_006C
.int 41
.int 3
.int 5
.int Lt_006D
.int 42
.int 3
.int 5
.int Lt_006E
.int 43
.int 3
.int 5
.int Lt_006F
.int 44
.int 12
.int 1
.int Lt_0070
.skip 4,0
.int 12
.int 1
.int Lt_0071
.skip 4,0
.int 12
.int 5
.int Lt_0072
.skip 4,0
.int 12
.int 5
.int Lt_0073
.skip 4,0
.int 6
.int 1
.int Lt_0074
.skip 4,0
.int 3
.int 1
.int Lt_0075
.skip 4,0
.int 14
.int 5
.int Lt_0076
.skip 4,0
.int 14
.int 5
.int Lt_0077
.skip 4,0
.int 14
.int 1
.int Lt_0078
.skip 4,0
.int 5
.int 1
.int Lt_0079
.skip 4,0
.int 3
.int 2
.int Lt_007A
.int 1
.int 3
.int 0
.int Lt_007B
.int 2
.int 3
.int 2
.int Lt_007C
.int 3
.int 3
.int 0
.int Lt_0019
.int 4
.int 3
.int 0
.int Lt_0019
.int 5
.int 3
.int 0
.int Lt_007D
.int 6
.int 3
.int 2
.int Lt_007E
.int 7
.int 3
.int 2
.int Lt_007F
.int 8
.int 3
.int 2
.int Lt_0080
.int 9
.int 3
.int 2
.int Lt_0081
.int 10
.int 3
.int 2
.int Lt_0082
.int 11
.int 3
.int 0
.int Lt_0083
.int 12
.int 3
.int 0
.int Lt_0084
.int 13
.int 3
.int 0
.int Lt_0085
.int 14
.int 3
.int 0
.int Lt_0086
.int 15
.int 3
.int 0
.int Lt_0087
.int 16
.int 3
.int 0
.int Lt_0088
.int 17
.int 14
.int 10
.int Lt_0089
.skip 4,0
.int 14
.int 8
.int Lt_008A
.skip 4,0
.int 14
.int 8
.int Lt_008B
.skip 4,0
.int 14
.int 10
.int Lt_008C
.skip 4,0
.int 14
.int 8
.int Lt_008D
.skip 4,0
.int 14
.int 8
.int Lt_008E
.skip 4,0
.int 14
.int 0
.int Lt_008F
.skip 4,0
.int 4
.int 0
.int Lt_0090
.skip 4,0
.int 4
.int 0
.int Lt_007A
.skip 4,0
.int 4
.int 0
.int Lt_007B
.skip 4,0
.int 4
.int 0
.int Lt_0091
.skip 4,0
.int 4
.int 0
.int Lt_0092
.skip 4,0
.int 4
.int 0
.int Lt_0093
.skip 4,0
.int 4
.int 0
.int Lt_0094
.skip 4,0
.int 4
.int 0
.int Lt_0095
.skip 4,0
.int 4
.int 0
.int Lt_0096
.skip 4,0
.int 4
.int 0
.int Lt_0097
.skip 4,0
.int 4
.int 0
.int Lt_0098
.skip 4,0
.int 4
.int 0
.int Lt_0099
.skip 4,0
.int 3
.int 0
.int Lt_009A
.skip 4,0
.int 4
.int 0
.int Lt_009B
.skip 4,0
.int 4
.int 0
.int Lt_009C
.skip 4,0
.int 4
.int 0
.int Lt_009D
.skip 4,0
.int 4
.int 0
.int Lt_009E
.skip 4,0
.int 4
.int 0
.int Lt_009F
.skip 4,0
.int 4
.int 0
.int Lt_00A0
.skip 4,0
.int 4
.int 0
.int Lt_00A1
.skip 4,0
.int 4
.int 0
.int Lt_00A2
.skip 4,0
.int 4
.int 0
.int Lt_00A3
.skip 4,0
.int 4
.int 0
.int Lt_00A4
.skip 4,0
.int 4
.int 0
.int Lt_00A5
.skip 4,0
.int 6
.int 0
.int Lt_007C
.skip 4,0
.int 6
.int 0
.int Lt_00A6
.skip 4,0
.int 12
.int 0
.int Lt_0070
.int 18
.int 12
.int 0
.int Lt_0071
.int 19
.int 12
.int 0
.int Lt_0072
.int 20
.int 12
.int 0
.int Lt_0073
.int 21
.int 5
.int 0
.int Lt_00A7
.skip 4,0
.int 5
.int 0
.int Lt_00A8
.skip 4,0
.int 5
.int 0
.int Lt_00A9
.skip 4,0
.int 1
.int 0
.int Lt_00AA
.skip 4,0
.int 1
.int 0
.int Lt_00AB
.skip 4,0
.int 2
.int 0
.int Lt_00AC
.skip 4,0
.int 11
.int 0
.int Lt_00AD
.skip 4,0
.int 11
.int 0
.int Lt_00AE
.skip 4,0
.int 11
.int 0
.int Lt_00AF
.skip 4,0
.int 11
.int 0
.int Lt_00B0
.skip 4,0
.int 7
.int 0
.int Lt_00B1
.skip 4,0
.int 7
.int 0
.int Lt_00B2
.skip 4,0
.int 7
.int 0
.int Lt_00B3
.skip 4,0
.int 7
.int 0
.int Lt_00B4
.skip 4,0
.int 7
.int 0
.int Lt_00B5
.skip 4,0
.int 7
.int 0
.int Lt_00B6
.skip 4,0
.int 7
.int 0
.int Lt_00B7
.skip 4,0
.int 7
.int 0
.int Lt_00B8
.skip 4,0
.int 7
.int 0
.int Lt_00B9
.skip 4,0
.int 7
.int 0
.int Lt_00BA
.skip 4,0
.int 9
.int 0
.int Lt_00BB
.skip 4,0
.int 9
.int 0
.int Lt_00BC
.skip 4,0
.int 9
.int 0
.int Lt_00BD
.skip 4,0
.int 12
.int 0
.int Lt_00BE
.skip 4,0
.int 12
.int 0
.int Lt_00BF
.skip 4,0
.int 12
.int 0
.int Lt_00C0
.skip 4,0
.int 12
.int 0
.int Lt_00C1
.skip 4,0
.int 44
.int 0
.int Lt_00C2
.skip 4,0
.int 44
.int 0
.int Lt_00C3
.skip 4,0
.int 44
.int 0
.int Lt_00C4
.skip 4,0
.int 44
.int 0
.int Lt_00C5
.skip 4,0
.int 30
.int 0
.int Lt_00C6
.skip 4,0
.int 30
.int 0
.int Lt_00C7
.skip 4,0
.int 30
.int 0
.int Lt_00C8
.skip 4,0
.int 30
.int 0
.int Lt_00C9
.skip 4,0
.int 27
.int 0
.int Lt_00CA
.skip 4,0
.int 27
.int 0
.int Lt_00CB
.skip 4,0
.skip 32,0

.section .bss
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
AST_LOADCALLBACKS:
.int ASTLOADNOP
.int ASTLOADLOAD
.int ASTLOADASSIGN
.int ASTLOADBOP
.int ASTLOADUOP
.int ASTLOADCONV
.int ASTLOADADDROF
.int ASTLOADBRANCH
.int ASTLOADJMPTB
.int ASTLOADCALL
.int ASTLOADCALLCTOR
.int ASTLOADSTACK
.int ASTLOADMEM
.int ASTLOADLOOP
.long 0
.int ASTLOADLINK
.int ASTLOADCONST
.int ASTLOADVAR
.int ASTLOADIDX
.int ASTLOADFIELD
.int ASTLOADDEREF
.int ASTLOADLABEL
.long 0
.int ASTLOADOFFSET
.int ASTLOADDECL
.int ASTLOADNIDXARRAY
.int ASTLOADIIF
.int ASTLOADLIT
.int ASTLOADASM
.long 0
.int ASTLOADDBG
.int ASTLOADBOUNDCHK
.int ASTLOADPTRCHK
.int ASTLOADSCOPEBEGIN
.int ASTLOADSCOPEEND
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.int ASTLOADMACRO

.section .rodata
.balign 4
Lt_005F:	.ascii	"let\0"
.balign 4
Lt_0060:	.ascii	"+=\0"
.balign 4
Lt_0061:	.ascii	"-=\0"
.balign 4
Lt_0062:	.ascii	"*=\0"
.balign 4
Lt_0063:	.ascii	"/=\0"
.balign 4
Lt_0064:	.ascii	"mod=\0"
.balign 4
Lt_0065:	.ascii	"and=\0"
.balign 4
Lt_0066:	.ascii	"or=\0"
.balign 4
Lt_0067:	.ascii	"andalso=\0"
.balign 4
Lt_0068:	.ascii	"orelse=\0"
.balign 4
Lt_0069:	.ascii	"xor=\0"
.balign 4
Lt_006A:	.ascii	"eqv=\0"
.balign 4
Lt_006B:	.ascii	"imp=\0"
.balign 4
Lt_006C:	.ascii	"shl=\0"
.balign 4
Lt_006D:	.ascii	"shr=\0"
.balign 4
Lt_006E:	.ascii	"pow=\0"
.balign 4
Lt_006F:	.ascii	"&=\0"
.balign 4
Lt_0070:	.ascii	"new\0"
.balign 4
Lt_0071:	.ascii	"new[]\0"
.balign 4
Lt_0072:	.ascii	"delete\0"
.balign 4
Lt_0073:	.ascii	"delete[]\0"
.balign 4
Lt_0074:	.ascii	"@\0"
.balign 4
Lt_0075:	.ascii	"[]\0"
.balign 4
Lt_0076:	.ascii	"for\0"
.balign 4
Lt_0077:	.ascii	"step\0"
.balign 4
Lt_0078:	.ascii	"next\0"
.balign 4
Lt_0079:	.ascii	"cast\0"
.balign 4
Lt_007A:	.ascii	"+\0"
.balign 4
Lt_007B:	.ascii	"-\0"
.balign 4
Lt_007C:	.ascii	"*\0"
.balign 4
Lt_007D:	.ascii	"mod\0"
.balign 4
Lt_007E:	.ascii	"and\0"
.balign 4
Lt_007F:	.ascii	"or\0"
.balign 4
Lt_0080:	.ascii	"andalso\0"
.balign 4
Lt_0081:	.ascii	"orelse\0"
.balign 4
Lt_0082:	.ascii	"xor\0"
.balign 4
Lt_0083:	.ascii	"eqv\0"
.balign 4
Lt_0084:	.ascii	"imp\0"
.balign 4
Lt_0085:	.ascii	"shl\0"
.balign 4
Lt_0086:	.ascii	"shr\0"
.balign 4
Lt_0087:	.ascii	"pow\0"
.balign 4
Lt_0088:	.ascii	"&\0"
.balign 4
Lt_0089:	.ascii	"=\0"
.balign 4
Lt_008A:	.ascii	">\0"
.balign 4
Lt_008B:	.ascii	"<\0"
.balign 4
Lt_008C:	.ascii	"<>\0"
.balign 4
Lt_008D:	.ascii	">=\0"
.balign 4
Lt_008E:	.ascii	"<=\0"
.balign 4
Lt_008F:	.ascii	"is\0"
.balign 4
Lt_0090:	.ascii	"not\0"
.balign 4
Lt_0091:	.ascii	"HADD\0"
.balign 4
Lt_0092:	.ascii	"abs\0"
.balign 4
Lt_0093:	.ascii	"sgn\0"
.balign 4
Lt_0094:	.ascii	"sin\0"
.balign 4
Lt_0095:	.ascii	"asin\0"
.balign 4
Lt_0096:	.ascii	"cos\0"
.balign 4
Lt_0097:	.ascii	"acos\0"
.balign 4
Lt_0098:	.ascii	"tan\0"
.balign 4
Lt_0099:	.ascii	"atan\0"
.balign 4
Lt_009A:	.ascii	"atn2\0"
.balign 4
Lt_009B:	.ascii	"sqr\0"
.balign 4
Lt_009C:	.ascii	"rsqrt\0"
.balign 4
Lt_009D:	.ascii	"rcp\0"
.balign 4
Lt_009E:	.ascii	"log\0"
.balign 4
Lt_009F:	.ascii	"exp\0"
.balign 4
Lt_00A0:	.ascii	"int\0"
.balign 4
Lt_00A1:	.ascii	"fix\0"
.balign 4
Lt_00A2:	.ascii	"frac\0"
.balign 4
Lt_00A3:	.ascii	"len\0"
.balign 4
Lt_00A4:	.ascii	"convd2s\0"
.balign 4
Lt_00A5:	.ascii	"swzrep\0"
.balign 4
Lt_00A6:	.ascii	"->\0"
.balign 4
Lt_00A7:	.ascii	"cint\0"
.balign 4
Lt_00A8:	.ascii	"cflt\0"
.balign 4
Lt_00A9:	.ascii	"cbool\0"
.balign 4
Lt_00AA:	.ascii	"load\0"
.balign 4
Lt_00AB:	.ascii	"lres\0"
.balign 4
Lt_00AC:	.ascii	"spill\0"
.balign 4
Lt_00AD:	.ascii	"push\0"
.balign 4
Lt_00AE:	.ascii	"pop\0"
.balign 4
Lt_00AF:	.ascii	"pudt\0"
.balign 4
Lt_00B0:	.ascii	"stka\0"
.balign 4
Lt_00B1:	.ascii	"jeq\0"
.balign 4
Lt_00B2:	.ascii	"jgt\0"
.balign 4
Lt_00B3:	.ascii	"jlt\0"
.balign 4
Lt_00B4:	.ascii	"jne\0"
.balign 4
Lt_00B5:	.ascii	"jge\0"
.balign 4
Lt_00B6:	.ascii	"jle\0"
.balign 4
Lt_00B7:	.ascii	"jmp\0"
.balign 4
Lt_00B8:	.ascii	"call\0"
.balign 4
Lt_00B9:	.ascii	"lbl\0"
.balign 4
Lt_00BA:	.ascii	"ret\0"
.balign 4
Lt_00BB:	.ascii	"calf\0"
.balign 4
Lt_00BC:	.ascii	"calp\0"
.balign 4
Lt_00BD:	.ascii	"jmpp\0"
.balign 4
Lt_00BE:	.ascii	"mmov\0"
.balign 4
Lt_00BF:	.ascii	"mswp\0"
.balign 4
Lt_00C0:	.ascii	"mclr\0"
.balign 4
Lt_00C1:	.ascii	"stkc\0"
.balign 4
Lt_00C2:	.ascii	"va_start\0"
.balign 4
Lt_00C3:	.ascii	"va_end\0"
.balign 4
Lt_00C4:	.ascii	"va_copy\0"
.balign 4
Lt_00C5:	.ascii	"va_arg\0"
.balign 4
Lt_00C6:	.ascii	"lini\0"
.balign 4
Lt_00C7:	.ascii	"lend\0"
.balign 4
Lt_00C8:	.ascii	"sini\0"
.balign 4
Lt_00C9:	.ascii	"send\0"
.balign 4
Lt_00CA:	.ascii	"rem\0"
.balign 4
Lt_00CB:	.ascii	"asm\0"

.section .ctors, "aw", @progbits
.int fb_ctor__ast
