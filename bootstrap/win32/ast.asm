	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTINIT@0
_ASTINIT@0:
.Lt_00CE:
push 6
push 80
push 8192
lea eax, [_AST]
push eax
call _LISTINIT@16
mov dword ptr [_AST+136], -1
mov dword ptr [_AST+140], 0
mov dword ptr [_AST+144], 0
mov dword ptr [_AST+132], 0
mov dword ptr [_AST+232], 0
call _ASTCALLINIT@0
call _ASTPROCLISTINIT@0
call _ASTDATASTMTINIT@0
call _ASTMISCINIT@0
push 6
push 12
push 16
lea eax, [_AST+200]
push eax
call _LISTINIT@16
.Lt_00CF:
ret
.balign 16

.globl _ASTEND@0
_ASTEND@0:
.Lt_00D0:
lea eax, [_AST+200]
push eax
call _LISTEND@4
call _ASTMISCEND@0
call _ASTPROCLISTEND@0
call _ASTCALLEND@0
lea eax, [_AST]
push eax
call _LISTEND@4
.Lt_00D1:
ret
.balign 16

.globl _ASTCLONETREE@4
_ASTCLONETREE@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D2:
cmp dword ptr [ebp+8], 0
jne .Lt_00D5
mov dword ptr [ebp-4], 0
jmp .Lt_00D3
.Lt_00D5:
.Lt_00D4:
push 0
push -2147483648
push -1
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
push edi
push esi
mov edi, dword ptr [ebp-8]
mov esi, dword ptr [ebp+8]
mov ecx, 20
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_00D7
push dword ptr [ebp-12]
call _ASTCLONETREE@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
.Lt_00D7:
.Lt_00D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_00D9
push dword ptr [ebp-12]
call _ASTCLONETREE@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
.Lt_00D9:
.Lt_00D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 17
jne .Lt_00DC
.Lt_00DD:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+12], 0
je .Lt_00DF
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
je .Lt_00E1
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call _ASTDTORLISTADDREF@4
.Lt_00E1:
.Lt_00E0:
.Lt_00DF:
.Lt_00DE:
jmp .Lt_00DA
.Lt_00DC:
cmp dword ptr [ebp-16], 9
jne .Lt_00E2
.Lt_00E3:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTCLONECALL@8
jmp .Lt_00DA
.Lt_00E2:
cmp dword ptr [ebp-16], 26
jne .Lt_00E4
.Lt_00E5:
push 4
push 0
call _SYMBADDLABEL@8
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+24]
push dword ptr [ebp-8]
call _ASTREPLACESYMBOLONTREE@12
jmp .Lt_00DA
.Lt_00E4:
cmp dword ptr [ebp-16], 13
jne .Lt_00E6
.Lt_00E7:
push 4
push 0
call _SYMBADDLABEL@8
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push dword ptr [ebp-8]
call _ASTREPLACESYMBOLONTREE@12
jmp .Lt_00DA
.Lt_00E6:
cmp dword ptr [ebp-16], 36
jne .Lt_00E8
.Lt_00E9:
inc dword ptr [_AST+140]
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+40], 0
jmp .Lt_00DA
.Lt_00E8:
cmp dword ptr [ebp-16], 19
jne .Lt_00EA
.Lt_00EB:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+116], 0
jle .Lt_00ED
inc dword ptr [_AST+144]
.Lt_00ED:
.Lt_00EC:
.Lt_00EA:
.Lt_00DA:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00D3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTGETEFFECTIVENODE@4
_ASTGETEFFECTIVENODE@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
jne .Lt_00F3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
jne .Lt_00F6
.Lt_00F7:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _ASTGETEFFECTIVENODE@4
mov dword ptr [ebp-4], eax
jmp .Lt_00F4
.Lt_00F6:
cmp dword ptr [ebp-8], 2
jne .Lt_00F8
.Lt_00F9:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTGETEFFECTIVENODE@4
mov dword ptr [ebp-4], eax
jmp .Lt_00F4
.Lt_00F8:
mov dword ptr [ebp-4], 0
.Lt_00FA:
.Lt_00F4:
jmp .Lt_00F2
.Lt_00F3:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00F2:
.Lt_00F1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTGETEFFECTIVECLASS@4
_ASTGETEFFECTIVECLASS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FB:
push dword ptr [ebp+8]
call _ASTGETEFFECTIVENODE@4
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.Lt_00FC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTREBUILDWITHOUTEFFECTIVEPART@4
_ASTREBUILDWITHOUTEFFECTIVEPART@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
jne .Lt_0100
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 1
jne .Lt_0103
.Lt_0104:
push dword ptr [ebp-8]
call _ASTREBUILDWITHOUTEFFECTIVEPART@4
mov dword ptr [ebp-8], eax
jmp .Lt_0101
.Lt_0103:
cmp dword ptr [ebp-16], 2
jne .Lt_0105
.Lt_0106:
push dword ptr [ebp-12]
call _ASTREBUILDWITHOUTEFFECTIVEPART@4
mov dword ptr [ebp-12], eax
.Lt_0105:
.Lt_0107:
.Lt_0101:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
call _ASTDELNODE@4
jmp .Lt_00FF
.Lt_0100:
push dword ptr [ebp+8]
call _ASTDELTREE@4
mov dword ptr [ebp-4], 0
.Lt_00FF:
.Lt_00FE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTCANTAKEADDROF@4
_ASTCANTAKEADDROF@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0108:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_010B
.Lt_010D:
mov dword ptr [ebp-4], -1
jmp .Lt_010A
.Lt_010E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+116]
test ebx, ebx
setle bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_010A
.Lt_010F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
jne .Lt_0112
.Lt_0113:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTCANTAKEADDROF@4
mov dword ptr [ebp-4], eax
jmp .Lt_0110
.Lt_0112:
cmp dword ptr [ebp-12], 2
jne .Lt_0114
.Lt_0115:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTCANTAKEADDROF@4
mov dword ptr [ebp-4], eax
jmp .Lt_0110
.Lt_0114:
mov dword ptr [ebp-4], 0
.Lt_0116:
.Lt_0110:
jmp .Lt_010A
.Lt_0117:
mov dword ptr [ebp-4], 0
jmp .Lt_010A
.Lt_010B:
mov eax, dword ptr [ebp-8]
add eax, 4294967286
cmp eax, 26
ja .Lt_0117
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0118+eax*4-40]
_.LT_0118:
.int .Lt_010D
.int .Lt_0117
.int .Lt_0117
.int .Lt_0117
.int .Lt_0117
.int .Lt_010F
.int .Lt_0117
.int .Lt_010D
.int .Lt_010D
.int .Lt_010E
.int .Lt_010D
.int .Lt_0117
.int .Lt_0117
.int .Lt_0117
.int .Lt_0117
.int .Lt_0117
.int .Lt_010D
.int .Lt_0117
.int .Lt_0117
.int .Lt_0117
.int .Lt_0117
.int .Lt_0117
.int .Lt_0117
.int .Lt_0117
.int .Lt_0117
.int .Lt_0117
.int .Lt_010D
.Lt_010A:
.Lt_0109:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTMAKEREF@4
_ASTMAKEREF@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_011A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 19
jne .Lt_011C
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+116]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_0127
.Lt_011C:
mov dword ptr [ebp-16], 0
.Lt_0127:
cmp dword ptr [ebp-16], 0
je .Lt_011F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _ASTDELNODE@4
lea eax, [ebp-12]
push eax
call _ASTMAKEREF@4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _ASTNEWFIELD@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_011B
.Lt_011F:
.Lt_011E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 9
jne .Lt_0121
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 17
je .Lt_0125
.Lt_0126:
cmp dword ptr [ebp-20], 7
jne .Lt_0124
.Lt_0125:
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
call _ASTSETTYPE@12
push dword ptr [ebp+8]
call _ASTREMSIDEFX@4
mov dword ptr [ebp-4], eax
push 0
push 0
push 0
push -2147483648
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _ASTNEWDEREF@20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_011B
.Lt_0124:
.Lt_0122:
.Lt_0121:
.Lt_0120:
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
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-8], eax
push 64
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _ASTNEWADDROF@4
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp-4], eax
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
push eax
call _ASTNEWDEREF@20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_011B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTREMSIDEFX@4
_ASTREMSIDEFX@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0129:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _ASTUPDSTRCONCAT@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-12], ebx
jmp .Lt_012C
.Lt_012E:
push dword ptr [ebp+8]
call _ASTMAKEREF@4
mov dword ptr [ebp-4], eax
jmp .Lt_012B
.Lt_012F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
push dword ptr [eax+4]
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-8], eax
push 64
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp-4], eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_012B
.Lt_012C:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 16
ja .Lt_012F
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_0130+eax*4-16]
_.LT_0130:
.int .Lt_012E
.int .Lt_012F
.int .Lt_012F
.int .Lt_012E
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.int .Lt_012E
.int .Lt_012E
.int .Lt_012F
.int .Lt_012E
.Lt_012B:
.Lt_012A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTDELTREE@4
_ASTDELTREE@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0131:
cmp dword ptr [ebp+8], 0
jne .Lt_0134
jmp .Lt_0132
.Lt_0134:
.Lt_0133:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .Lt_0136
push dword ptr [ebp+8]
call _ASTDELCALL@4
.Lt_0136:
.Lt_0135:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_0138
push dword ptr [ebp-4]
call _ASTDELTREE@4
.Lt_0138:
.Lt_0137:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_013A
push dword ptr [ebp-4]
call _ASTDELTREE@4
.Lt_013A:
.Lt_0139:
push dword ptr [ebp+8]
call _ASTDELNODE@4
.Lt_0132:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWNODE@12
_ASTNEWNODE@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_013B:
lea eax, [_AST]
push eax
call _LISTNEWNODE@4
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
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+68], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_013C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTDELNODE@4
_ASTDELNODE@4:
push ebp
mov ebp, esp
push ebx
.Lt_013D:
cmp dword ptr [ebp+8], 0
jne .Lt_0140
jmp .Lt_013E
.Lt_0140:
.Lt_013F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .Lt_0142
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_0144
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
je .Lt_0146
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _ASTDTORLISTREMOVEREF@4
.Lt_0146:
.Lt_0145:
.Lt_0144:
.Lt_0143:
.Lt_0142:
.Lt_0141:
push dword ptr [ebp+8]
lea ebx, [_AST]
push ebx
call _LISTDELNODE@8
.Lt_013E:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTGETINVERSELOGOP@4
_ASTGETINVERSELOGOP@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0149:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_014C
.Lt_014E:
mov dword ptr [ebp+8], 48
jmp .Lt_014B
.Lt_014F:
mov dword ptr [ebp+8], 45
jmp .Lt_014B
.Lt_0150:
mov dword ptr [ebp+8], 50
jmp .Lt_014B
.Lt_0151:
mov dword ptr [ebp+8], 49
jmp .Lt_014B
.Lt_0152:
mov dword ptr [ebp+8], 47
jmp .Lt_014B
.Lt_0153:
mov dword ptr [ebp+8], 46
jmp .Lt_014B
.Lt_014C:
mov eax, dword ptr [ebp-8]
add eax, 4294967251
cmp eax, 5
ja .Lt_014B
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0154+eax*4-180]
_.LT_0154:
.int .Lt_014E
.int .Lt_0150
.int .Lt_0151
.int .Lt_014F
.int .Lt_0152
.int .Lt_0153
.Lt_014B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_014A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTLOAD@4
_ASTLOAD@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0155:
cmp dword ptr [ebp+8], 0
je .Lt_0158
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
call dword ptr [_AST_LOADCALLBACKS+ebx*4]
mov dword ptr [ebp-4], eax
.Lt_0158:
.Lt_0157:
.Lt_0156:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_fb_ctor__ast:
.Lt_0002:
.Lt_0003:
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

.section .bss

.globl _AST
.balign 4
	.lcomm	_AST,236

.section .data
.balign 4

.globl _AST_OPTB
_AST_OPTB:
.int 2
.int 5
.int _Lt_0060
.skip 4,0
.int 3
.int 5
.int _Lt_0061
.int 28
.int 3
.int 5
.int _Lt_0062
.int 29
.int 3
.int 5
.int _Lt_0063
.int 30
.int 3
.int 5
.int _Lt_0064
.int 31
.int 3
.int 5
.int _Lt_0064
.int 32
.int 3
.int 5
.int _Lt_0065
.int 33
.int 3
.int 5
.int _Lt_0066
.int 34
.int 3
.int 5
.int _Lt_0067
.int 35
.int 3
.int 5
.int _Lt_0068
.int 36
.int 3
.int 5
.int _Lt_0069
.int 37
.int 3
.int 5
.int _Lt_006A
.int 38
.int 3
.int 5
.int _Lt_006B
.int 39
.int 3
.int 5
.int _Lt_006C
.int 40
.int 3
.int 5
.int _Lt_006D
.int 41
.int 3
.int 5
.int _Lt_006E
.int 42
.int 3
.int 5
.int _Lt_006F
.int 43
.int 3
.int 5
.int _Lt_0070
.int 44
.int 12
.int 1
.int _Lt_0071
.skip 4,0
.int 12
.int 1
.int _Lt_0072
.skip 4,0
.int 12
.int 5
.int _Lt_0073
.skip 4,0
.int 12
.int 5
.int _Lt_0074
.skip 4,0
.int 6
.int 1
.int _Lt_0075
.skip 4,0
.int 3
.int 1
.int _Lt_0076
.skip 4,0
.int 14
.int 5
.int _Lt_0077
.skip 4,0
.int 14
.int 5
.int _Lt_0078
.skip 4,0
.int 14
.int 1
.int _Lt_0079
.skip 4,0
.int 5
.int 1
.int _Lt_007A
.skip 4,0
.int 3
.int 2
.int _Lt_007B
.int 1
.int 3
.int 0
.int _Lt_007C
.int 2
.int 3
.int 2
.int _Lt_007D
.int 3
.int 3
.int 0
.int _Lt_007E
.int 4
.int 3
.int 0
.int _Lt_007E
.int 5
.int 3
.int 0
.int _Lt_007F
.int 6
.int 3
.int 2
.int _Lt_0080
.int 7
.int 3
.int 2
.int _Lt_0081
.int 8
.int 3
.int 2
.int _Lt_0082
.int 9
.int 3
.int 2
.int _Lt_0083
.int 10
.int 3
.int 2
.int _Lt_0084
.int 11
.int 3
.int 0
.int _Lt_0085
.int 12
.int 3
.int 0
.int _Lt_0086
.int 13
.int 3
.int 0
.int _Lt_0087
.int 14
.int 3
.int 0
.int _Lt_0088
.int 15
.int 3
.int 0
.int _Lt_0089
.int 16
.int 3
.int 0
.int _Lt_008A
.int 17
.int 14
.int 10
.int _Lt_008B
.skip 4,0
.int 14
.int 8
.int _Lt_008C
.skip 4,0
.int 14
.int 8
.int _Lt_008D
.skip 4,0
.int 14
.int 10
.int _Lt_008E
.skip 4,0
.int 14
.int 8
.int _Lt_008F
.skip 4,0
.int 14
.int 8
.int _Lt_0090
.skip 4,0
.int 14
.int 0
.int _Lt_0091
.skip 4,0
.int 4
.int 0
.int _Lt_0092
.skip 4,0
.int 4
.int 0
.int _Lt_007B
.skip 4,0
.int 4
.int 0
.int _Lt_007C
.skip 4,0
.int 4
.int 0
.int _Lt_0093
.skip 4,0
.int 4
.int 0
.int _Lt_0094
.skip 4,0
.int 4
.int 0
.int _Lt_0095
.skip 4,0
.int 4
.int 0
.int _Lt_0096
.skip 4,0
.int 4
.int 0
.int _Lt_0097
.skip 4,0
.int 4
.int 0
.int _Lt_0098
.skip 4,0
.int 4
.int 0
.int _Lt_0099
.skip 4,0
.int 4
.int 0
.int _Lt_009A
.skip 4,0
.int 4
.int 0
.int _Lt_009B
.skip 4,0
.int 3
.int 0
.int _Lt_009C
.skip 4,0
.int 4
.int 0
.int _Lt_009D
.skip 4,0
.int 4
.int 0
.int _Lt_009E
.skip 4,0
.int 4
.int 0
.int _Lt_009F
.skip 4,0
.int 4
.int 0
.int _Lt_00A0
.skip 4,0
.int 4
.int 0
.int _Lt_00A1
.skip 4,0
.int 4
.int 0
.int _Lt_00A2
.skip 4,0
.int 4
.int 0
.int _Lt_00A3
.skip 4,0
.int 4
.int 0
.int _Lt_00A4
.skip 4,0
.int 4
.int 0
.int _Lt_00A5
.skip 4,0
.int 4
.int 0
.int _Lt_00A6
.skip 4,0
.int 4
.int 0
.int _Lt_00A7
.skip 4,0
.int 6
.int 0
.int _Lt_007D
.skip 4,0
.int 6
.int 0
.int _Lt_00A8
.skip 4,0
.int 12
.int 0
.int _Lt_0071
.int 18
.int 12
.int 0
.int _Lt_0072
.int 19
.int 12
.int 0
.int _Lt_0073
.int 20
.int 12
.int 0
.int _Lt_0074
.int 21
.int 5
.int 0
.int _Lt_00A9
.skip 4,0
.int 5
.int 0
.int _Lt_00AA
.skip 4,0
.int 5
.int 0
.int _Lt_00AB
.skip 4,0
.int 1
.int 0
.int _Lt_00AC
.skip 4,0
.int 1
.int 0
.int _Lt_00AD
.skip 4,0
.int 2
.int 0
.int _Lt_00AE
.skip 4,0
.int 11
.int 0
.int _Lt_00AF
.skip 4,0
.int 11
.int 0
.int _Lt_00B0
.skip 4,0
.int 11
.int 0
.int _Lt_00B1
.skip 4,0
.int 11
.int 0
.int _Lt_00B2
.skip 4,0
.int 7
.int 0
.int _Lt_00B3
.skip 4,0
.int 7
.int 0
.int _Lt_00B4
.skip 4,0
.int 7
.int 0
.int _Lt_00B5
.skip 4,0
.int 7
.int 0
.int _Lt_00B6
.skip 4,0
.int 7
.int 0
.int _Lt_00B7
.skip 4,0
.int 7
.int 0
.int _Lt_00B8
.skip 4,0
.int 7
.int 0
.int _Lt_00B9
.skip 4,0
.int 7
.int 0
.int _Lt_00BA
.skip 4,0
.int 7
.int 0
.int _Lt_00BB
.skip 4,0
.int 7
.int 0
.int _Lt_00BC
.skip 4,0
.int 9
.int 0
.int _Lt_00BD
.skip 4,0
.int 9
.int 0
.int _Lt_00BE
.skip 4,0
.int 9
.int 0
.int _Lt_00BF
.skip 4,0
.int 12
.int 0
.int _Lt_00C0
.skip 4,0
.int 12
.int 0
.int _Lt_00C1
.skip 4,0
.int 12
.int 0
.int _Lt_00C2
.skip 4,0
.int 12
.int 0
.int _Lt_00C3
.skip 4,0
.int 44
.int 0
.int _Lt_00C4
.skip 4,0
.int 44
.int 0
.int _Lt_00C5
.skip 4,0
.int 44
.int 0
.int _Lt_00C6
.skip 4,0
.int 44
.int 0
.int _Lt_00C7
.skip 4,0
.int 30
.int 0
.int _Lt_00C8
.skip 4,0
.int 30
.int 0
.int _Lt_00C9
.skip 4,0
.int 30
.int 0
.int _Lt_00CA
.skip 4,0
.int 30
.int 0
.int _Lt_00CB
.skip 4,0
.int 27
.int 0
.int _Lt_00CC
.skip 4,0
.int 27
.int 0
.int _Lt_00CD
.skip 4,0
.skip 32,0

.section .bss
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_AST_LOADCALLBACKS:
.int _ASTLOADNOP@4
.int _ASTLOADLOAD@4
.int _ASTLOADASSIGN@4
.int _ASTLOADBOP@4
.int _ASTLOADUOP@4
.int _ASTLOADCONV@4
.int _ASTLOADADDROF@4
.int _ASTLOADBRANCH@4
.int _ASTLOADJMPTB@4
.int _ASTLOADCALL@4
.int _ASTLOADCALLCTOR@4
.int _ASTLOADSTACK@4
.int _ASTLOADMEM@4
.int _ASTLOADLOOP@4
.long 0
.int _ASTLOADLINK@4
.int _ASTLOADCONST@4
.int _ASTLOADVAR@4
.int _ASTLOADIDX@4
.int _ASTLOADFIELD@4
.int _ASTLOADDEREF@4
.int _ASTLOADLABEL@4
.long 0
.int _ASTLOADOFFSET@4
.int _ASTLOADDECL@4
.int _ASTLOADNIDXARRAY@4
.int _ASTLOADIIF@4
.int _ASTLOADLIT@4
.int _ASTLOADASM@4
.long 0
.int _ASTLOADDBG@4
.int _ASTLOADBOUNDCHK@4
.int _ASTLOADPTRCHK@4
.int _ASTLOADSCOPEBEGIN@4
.int _ASTLOADSCOPEEND@4
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.long 0
.int _ASTLOADMACRO@4
.balign 4
_Lt_0060:	.ascii	"let\0"
.balign 4
_Lt_0061:	.ascii	"+=\0"
.balign 4
_Lt_0062:	.ascii	"-=\0"
.balign 4
_Lt_0063:	.ascii	"*=\0"
.balign 4
_Lt_0064:	.ascii	"/=\0"
.balign 4
_Lt_0065:	.ascii	"mod=\0"
.balign 4
_Lt_0066:	.ascii	"and=\0"
.balign 4
_Lt_0067:	.ascii	"or=\0"
.balign 4
_Lt_0068:	.ascii	"andalso=\0"
.balign 4
_Lt_0069:	.ascii	"orelse=\0"
.balign 4
_Lt_006A:	.ascii	"xor=\0"
.balign 4
_Lt_006B:	.ascii	"eqv=\0"
.balign 4
_Lt_006C:	.ascii	"imp=\0"
.balign 4
_Lt_006D:	.ascii	"shl=\0"
.balign 4
_Lt_006E:	.ascii	"shr=\0"
.balign 4
_Lt_006F:	.ascii	"pow=\0"
.balign 4
_Lt_0070:	.ascii	"&=\0"
.balign 4
_Lt_0071:	.ascii	"new\0"
.balign 4
_Lt_0072:	.ascii	"new[]\0"
.balign 4
_Lt_0073:	.ascii	"delete\0"
.balign 4
_Lt_0074:	.ascii	"delete[]\0"
.balign 4
_Lt_0075:	.ascii	"@\0"
.balign 4
_Lt_0076:	.ascii	"[]\0"
.balign 4
_Lt_0077:	.ascii	"for\0"
.balign 4
_Lt_0078:	.ascii	"step\0"
.balign 4
_Lt_0079:	.ascii	"next\0"
.balign 4
_Lt_007A:	.ascii	"cast\0"
.balign 4
_Lt_007B:	.ascii	"+\0"
.balign 4
_Lt_007C:	.ascii	"-\0"
.balign 4
_Lt_007D:	.ascii	"*\0"
.balign 4
_Lt_007E:	.ascii	"/\0"
.balign 4
_Lt_007F:	.ascii	"mod\0"
.balign 4
_Lt_0080:	.ascii	"and\0"
.balign 4
_Lt_0081:	.ascii	"or\0"
.balign 4
_Lt_0082:	.ascii	"andalso\0"
.balign 4
_Lt_0083:	.ascii	"orelse\0"
.balign 4
_Lt_0084:	.ascii	"xor\0"
.balign 4
_Lt_0085:	.ascii	"eqv\0"
.balign 4
_Lt_0086:	.ascii	"imp\0"
.balign 4
_Lt_0087:	.ascii	"shl\0"
.balign 4
_Lt_0088:	.ascii	"shr\0"
.balign 4
_Lt_0089:	.ascii	"pow\0"
.balign 4
_Lt_008A:	.ascii	"&\0"
.balign 4
_Lt_008B:	.ascii	"=\0"
.balign 4
_Lt_008C:	.ascii	">\0"
.balign 4
_Lt_008D:	.ascii	"<\0"
.balign 4
_Lt_008E:	.ascii	"<>\0"
.balign 4
_Lt_008F:	.ascii	">=\0"
.balign 4
_Lt_0090:	.ascii	"<=\0"
.balign 4
_Lt_0091:	.ascii	"is\0"
.balign 4
_Lt_0092:	.ascii	"not\0"
.balign 4
_Lt_0093:	.ascii	"HADD\0"
.balign 4
_Lt_0094:	.ascii	"abs\0"
.balign 4
_Lt_0095:	.ascii	"sgn\0"
.balign 4
_Lt_0096:	.ascii	"sin\0"
.balign 4
_Lt_0097:	.ascii	"asin\0"
.balign 4
_Lt_0098:	.ascii	"cos\0"
.balign 4
_Lt_0099:	.ascii	"acos\0"
.balign 4
_Lt_009A:	.ascii	"tan\0"
.balign 4
_Lt_009B:	.ascii	"atan\0"
.balign 4
_Lt_009C:	.ascii	"atn2\0"
.balign 4
_Lt_009D:	.ascii	"sqr\0"
.balign 4
_Lt_009E:	.ascii	"rsqrt\0"
.balign 4
_Lt_009F:	.ascii	"rcp\0"
.balign 4
_Lt_00A0:	.ascii	"log\0"
.balign 4
_Lt_00A1:	.ascii	"exp\0"
.balign 4
_Lt_00A2:	.ascii	"int\0"
.balign 4
_Lt_00A3:	.ascii	"fix\0"
.balign 4
_Lt_00A4:	.ascii	"frac\0"
.balign 4
_Lt_00A5:	.ascii	"len\0"
.balign 4
_Lt_00A6:	.ascii	"convd2s\0"
.balign 4
_Lt_00A7:	.ascii	"swzrep\0"
.balign 4
_Lt_00A8:	.ascii	"->\0"
.balign 4
_Lt_00A9:	.ascii	"cint\0"
.balign 4
_Lt_00AA:	.ascii	"cflt\0"
.balign 4
_Lt_00AB:	.ascii	"cbool\0"
.balign 4
_Lt_00AC:	.ascii	"load\0"
.balign 4
_Lt_00AD:	.ascii	"lres\0"
.balign 4
_Lt_00AE:	.ascii	"spill\0"
.balign 4
_Lt_00AF:	.ascii	"push\0"
.balign 4
_Lt_00B0:	.ascii	"pop\0"
.balign 4
_Lt_00B1:	.ascii	"pudt\0"
.balign 4
_Lt_00B2:	.ascii	"stka\0"
.balign 4
_Lt_00B3:	.ascii	"jeq\0"
.balign 4
_Lt_00B4:	.ascii	"jgt\0"
.balign 4
_Lt_00B5:	.ascii	"jlt\0"
.balign 4
_Lt_00B6:	.ascii	"jne\0"
.balign 4
_Lt_00B7:	.ascii	"jge\0"
.balign 4
_Lt_00B8:	.ascii	"jle\0"
.balign 4
_Lt_00B9:	.ascii	"jmp\0"
.balign 4
_Lt_00BA:	.ascii	"call\0"
.balign 4
_Lt_00BB:	.ascii	"lbl\0"
.balign 4
_Lt_00BC:	.ascii	"ret\0"
.balign 4
_Lt_00BD:	.ascii	"calf\0"
.balign 4
_Lt_00BE:	.ascii	"calp\0"
.balign 4
_Lt_00BF:	.ascii	"jmpp\0"
.balign 4
_Lt_00C0:	.ascii	"mmov\0"
.balign 4
_Lt_00C1:	.ascii	"mswp\0"
.balign 4
_Lt_00C2:	.ascii	"mclr\0"
.balign 4
_Lt_00C3:	.ascii	"stkc\0"
.balign 4
_Lt_00C4:	.ascii	"va_start\0"
.balign 4
_Lt_00C5:	.ascii	"va_end\0"
.balign 4
_Lt_00C6:	.ascii	"va_copy\0"
.balign 4
_Lt_00C7:	.ascii	"va_arg\0"
.balign 4
_Lt_00C8:	.ascii	"lini\0"
.balign 4
_Lt_00C9:	.ascii	"lend\0"
.balign 4
_Lt_00CA:	.ascii	"sini\0"
.balign 4
_Lt_00CB:	.ascii	"send\0"
.balign 4
_Lt_00CC:	.ascii	"rem\0"
.balign 4
_Lt_00CD:	.ascii	"asm\0"

.section .ctors
.int _fb_ctor__ast
