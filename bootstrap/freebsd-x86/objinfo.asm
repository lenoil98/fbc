	.intel_syntax noprefix

.section .text
.balign 16

.globl OBJINFOREADOBJ
OBJINFOREADOBJ:
push ebp
mov ebp, esp
.Lt_0109:
push dword ptr [ebp+8]
call OBJINFOINIT
add esp, 4
push offset OBJDATA
push dword ptr [ebp+8]
call HLOADFILE
add esp, 8
cmp dword ptr [OBJDATA+4], 0
jne .Lt_010C
jmp .Lt_010A
.Lt_010C:
.Lt_010B:
call HLOADFBCTINFFROMOBJ
.Lt_010A:
mov esp, ebp
pop ebp
ret
.balign 16

.globl OBJINFOREADLIBFILE
OBJINFOREADLIBFILE:
push ebp
mov ebp, esp
.Lt_010D:
push dword ptr [ebp+8]
call OBJINFOINIT
add esp, 4
push offset ARDATA
push dword ptr [ebp+8]
call HLOADFILE
add esp, 8
cmp dword ptr [ARDATA+4], 0
jne .Lt_0110
jmp .Lt_010E
.Lt_0110:
.Lt_010F:
call HLOADOBJFROMAR
cmp dword ptr [OBJDATA+4], 0
jne .Lt_0112
jmp .Lt_010E
.Lt_0112:
.Lt_0111:
call HLOADFBCTINFFROMOBJ
.Lt_010E:
mov esp, ebp
pop ebp
ret
.balign 16

.globl OBJINFOREADLIB
OBJINFOREADLIB:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_0113:
push 0
push -1
push 3
push offset Lt_0116
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset Lt_0115
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_0121
call fb_StrAssign
add esp, 20
push dword ptr [ebp+12]
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0119:
cmp dword ptr [ebp-4], 0
je .Lt_011A
push 0
push -1
push -1
push offset Lt_0121
push -1
push 2
push offset Lt_001A
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea ebx, [ebp-40]
push ebx
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_0122
call fb_StrAssign
add esp, 20
push dword ptr [Lt_0122]
call HFILEEXISTS
add esp, 4
test eax, eax
je .Lt_011E
jmp .Lt_011A
.Lt_011E:
.Lt_011D:
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_011A:
cmp dword ptr [ebp-4], 0
jne .Lt_0120
jmp .Lt_0114
.Lt_0120:
.Lt_011F:
push offset Lt_0122
call OBJINFOREADLIBFILE
add esp, 4
.Lt_0114:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0122,12
.balign 4
	.lcomm	Lt_0121,12

.section .text
.balign 16

.globl OBJINFOREADNEXT
OBJINFOREADNEXT:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0129:
cmp dword ptr [FBCTINF+4], 0
jg .Lt_012C
mov dword ptr [ebp-4], -1
jmp .Lt_012A
.Lt_012C:
.Lt_012B:
cmp dword ptr [PARSER+16], 0
je .Lt_012E
.Lt_012F:
mov eax, dword ptr [FBCTINF+4]
cmp dword ptr [PARSER], eax
jge .Lt_0130
cmp dword ptr [PARSER+20], 0
jge .Lt_0132
mov eax, dword ptr [FBCTINF]
add eax, dword ptr [PARSER]
movzx ebx, byte ptr [eax]
mov dword ptr [PARSER+20], ebx
inc dword ptr [PARSER]
mov ebx, dword ptr [PARSER+20]
test ebx, ebx
setle bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [PARSER+20]
cmp eax, 3
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0134
mov dword ptr [PARSER+20], -1
mov eax, dword ptr [FBCTINF+4]
mov dword ptr [PARSER], eax
mov dword ptr [ebp-4], -1
jmp .Lt_012A
.Lt_0134:
.Lt_0133:
.Lt_0132:
.Lt_0131:
mov eax, dword ptr [FBCTINF+4]
cmp dword ptr [PARSER], eax
jl .Lt_0136
mov dword ptr [ebp-4], -1
jmp .Lt_012A
.Lt_0136:
.Lt_0135:
inc dword ptr [PARSER]
mov eax, dword ptr [FBCTINF]
add eax, dword ptr [PARSER]
movzx ebx, byte ptr [eax-1]
test ebx, ebx
jne .Lt_0138
mov dword ptr [PARSER+20], -1
jmp .Lt_012F
.Lt_0138:
.Lt_0137:
push 0
push 0
call HGETNEXTSTRING
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
mov eax, dword ptr [PARSER+20]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jne .Lt_013B
.Lt_013C:
mov dword ptr [ebp-4], 0
jmp .Lt_012A
jmp .Lt_0139
.Lt_013B:
cmp dword ptr [ebp-8], 2
jne .Lt_013D
.Lt_013E:
mov dword ptr [ebp-4], 1
jmp .Lt_012A
jmp .Lt_0139
.Lt_013D:
cmp dword ptr [ebp-8], 3
jne .Lt_013F
.Lt_0140:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 20
push 6
push offset Lt_0104
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0143
.Lt_0144:
push 0
push 0
call HGETNEXTSTRING
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
test eax, eax
jle .Lt_0146
mov dword ptr [ebp-4], 4
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_012A
.Lt_0146:
.Lt_0145:
jmp .Lt_0141
.Lt_0143:
push 4
push offset Lt_0102
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0147
.Lt_0148:
mov dword ptr [ebp-4], 2
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_012A
.Lt_0147:
.Lt_0141:
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.Lt_013F:
.Lt_0139:
jmp .Lt_012F
.Lt_0130:
jmp .Lt_012D
.Lt_012E:
push 0
push 0
call HGETNEXTSTRING
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
mov dword ptr [ebp-8], 0
.Lt_014C:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [ENTRIES+eax*8]
push -1
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_014E
mov eax, dword ptr [ebp-8]
cmp dword ptr [ENTRIES+eax*8+4], 0
je .Lt_0150
push 0
push 0
call HGETNEXTSTRING
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.Lt_0150:
.Lt_014F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_012A
.Lt_014E:
.Lt_014D:
.Lt_014A:
inc dword ptr [ebp-8]
.Lt_0149:
cmp dword ptr [ebp-8], 4
jle .Lt_014C
.Lt_014B:
.Lt_012D:
mov dword ptr [ebp-4], -1
.Lt_012A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl OBJINFOGETFILENAME
OBJINFOGETFILENAME:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0153:
mov eax, dword ptr [PARSER+4]
mov dword ptr [ebp-4], eax
.Lt_0154:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl OBJINFOREADEND
OBJINFOREADEND:
.Lt_0155:
cmp dword ptr [ARDATA], 0
je .Lt_0158
push dword ptr [ARDATA]
call free
add esp, 4
jmp .Lt_0157
.Lt_0158:
cmp dword ptr [OBJDATA], 0
je .Lt_0159
push dword ptr [OBJDATA]
call free
add esp, 4
.Lt_0159:
.Lt_0157:
call HRESETBUFFERS
.Lt_0156:
ret
.balign 16

.globl OBJINFOENCODE
OBJINFOENCODE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_015A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ENTRIES+eax*8]
mov dword ptr [ebp-4], ebx
.Lt_015B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__objinfo:
.Lt_0002:
.Lt_0003:
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
push ebp
mov ebp, esp
push ebx
.Lt_0013:
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
.Lt_0014:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN16OBJINFOPARSERCTXC1Ev:
push ebp
mov ebp, esp
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 16
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 20
mov dword ptr [eax], 0
.Lt_001F:
.Lt_0020:
mov esp, ebp
pop ebp
ret
.balign 16
_ZN16OBJINFOPARSERCTXaSERKS_:
push ebp
mov ebp, esp
push ebx
.Lt_0021:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 4
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 4
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 20
mov ecx, dword ptr [ebp+12]
add ecx, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
.Lt_0022:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN16OBJINFOPARSERCTXD1Ev:
push ebp
mov ebp, esp
push ebx
.Lt_0025:
.Lt_0026:
mov eax, dword ptr [ebp+8]
add eax, 4
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKELF32_SH:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_0029:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
imul ebx, 40
mov ecx, ebx
mov ebx, dword ptr [eax+32]
add ebx, ecx
mov eax, ebx
mov dword ptr [ebp-12], eax
mov ecx, dword ptr [ebp-12]
mov eax, ecx
sar eax, 31
add ecx, 40
adc eax, 0
mov esi, dword ptr [OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp eax, ebx
jb .Lt_002C
ja .Lt_0162
cmp ecx, esi
jbe .Lt_002C
.Lt_0162:
jmp .Lt_002A
.Lt_002C:
.Lt_002B:
mov esi, dword ptr [OBJDATA]
add esi, dword ptr [ebp-12]
mov dword ptr [ebp-8], esi
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [esi+16]
mov ebx, 0
mov esi, dword ptr [ebp-8]
mov edi, dword ptr [esi+20]
mov eax, 0
add ecx, edi
adc ebx, eax
mov eax, dword ptr [OBJDATA+4]
mov edi, eax
sar edi, 31
cmp ebx, edi
jb .Lt_002E
ja .Lt_0163
cmp ecx, eax
jbe .Lt_002E
.Lt_0163:
jmp .Lt_002A
.Lt_002E:
.Lt_002D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_002A:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETSECTIONNAMEELF32_SH:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_002F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKELF32_SH
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0032
jmp .Lt_0030
.Lt_0032:
.Lt_0031:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
add ebx, dword ptr [eax]
mov ecx, ebx
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-16], 0
.Lt_0033:
mov ecx, dword ptr [ebp-12]
cmp ecx, dword ptr [OBJDATA+4]
setl cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-16]
cmp eax, 32
setl al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_0034
mov eax, dword ptr [OBJDATA]
add eax, dword ptr [ebp-12]
movzx ecx, byte ptr [eax]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 0
jne .Lt_0036
jmp .Lt_0034
.Lt_0036:
.Lt_0035:
mov cl, byte ptr [ebp-20]
mov eax, offset Lt_0166
add eax, dword ptr [ebp-16]
mov byte ptr [eax], cl
inc dword ptr [ebp-12]
inc dword ptr [ebp-16]
jmp .Lt_0033
.Lt_0034:
mov ecx, offset Lt_0166
add ecx, dword ptr [ebp-16]
mov byte ptr [ecx], 0
mov ecx, offset Lt_0166
mov dword ptr [ebp-4], ecx
.Lt_0030:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0166,33

.section .text
.balign 16
HLOADFBCTINFFROMELF32_H:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
push edi
.Lt_0037:
mov dword ptr [FBCTINF], 0
mov dword ptr [FBCTINF+4], 0
cmp dword ptr [OBJDATA+4], 52
jge .Lt_003A
jmp .Lt_0038
.Lt_003A:
.Lt_0039:
mov eax, dword ptr [OBJDATA]
mov dword ptr [ebp-4], eax
mov byte ptr [ELFMAGIC+4], 1
mov dword ptr [ebp-20], 0
.Lt_003E:
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebp-20]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp-20]
movzx ecx, byte ptr [ELFMAGIC+eax]
cmp ebx, ecx
je .Lt_0040
jmp .Lt_0038
.Lt_0040:
.Lt_003F:
.Lt_003C:
inc dword ptr [ebp-20]
.Lt_003B:
cmp dword ptr [ebp-20], 15
jle .Lt_003E
.Lt_003D:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+40]
cmp ebx, 52
je .Lt_0042
jmp .Lt_0038
.Lt_0042:
.Lt_0041:
mov ebx, dword ptr [ebp-4]
movzx ecx, word ptr [ebx+16]
cmp ecx, 1
je .Lt_0044
jmp .Lt_0038
.Lt_0044:
.Lt_0043:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+18]
mov ecx, dword ptr [ebp+8]
cmp ebx, ecx
je .Lt_0046
jmp .Lt_0038
.Lt_0046:
.Lt_0045:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+46]
cmp ebx, 40
je .Lt_0048
jmp .Lt_0038
.Lt_0048:
.Lt_0047:
mov ebx, dword ptr [ebp-4]
movzx eax, word ptr [ebx+48]
mov ecx, 0
push 0
push 40
push ecx
push eax
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop eax
pop ecx
add esp, 8
mov esi, dword ptr [OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp ecx, ebx
jb .Lt_004A
ja .Lt_0167
cmp eax, esi
jbe .Lt_004A
.Lt_0167:
jmp .Lt_0038
.Lt_004A:
.Lt_0049:
mov esi, dword ptr [ebp-4]
movzx ebx, word ptr [esi+50]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
mov esi, dword ptr [ebp-4]
movzx eax, word ptr [esi+50]
mov esi, dword ptr [ebp-4]
movzx ecx, word ptr [esi+48]
cmp eax, ecx
setge al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_004C
jmp .Lt_0038
.Lt_004C:
.Lt_004B:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+32]
mov ebx, 0
mov eax, dword ptr [ebp-4]
movzx esi, word ptr [eax+48]
imul esi, 40
mov edi, esi
mov eax, edi
sar eax, 31
add ecx, edi
adc ebx, eax
mov eax, dword ptr [OBJDATA+4]
mov edi, eax
sar edi, 31
cmp ebx, edi
jb .Lt_004E
ja .Lt_016A
cmp ecx, eax
jbe .Lt_004E
.Lt_016A:
jmp .Lt_0038
.Lt_004E:
.Lt_004D:
mov eax, dword ptr [ebp-4]
movzx edi, word ptr [eax+50]
push edi
push dword ptr [ebp-4]
call HCHECKELF32_SH
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0050
jmp .Lt_0038
.Lt_0050:
.Lt_004F:
mov dword ptr [ebp-20], 1
mov eax, dword ptr [ebp-4]
movzx edi, word ptr [eax+48]
dec edi
mov dword ptr [ebp-24], edi
jmp .Lt_0052
.Lt_0055:
mov edi, dword ptr [ebp-12]
push dword ptr [edi+16]
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call HGETSECTIONNAMEELF32_SH
add esp, 12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_0057
push 9
push offset FBCTINFNAME
push 0
push dword ptr [ebp-16]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0059
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call HCHECKELF32_SH
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_005B
mov eax, dword ptr [ebp-8]
mov edi, dword ptr [OBJDATA]
add edi, dword ptr [eax+16]
mov dword ptr [FBCTINF], edi
mov edi, dword ptr [ebp-8]
mov eax, dword ptr [edi+20]
mov dword ptr [FBCTINF+4], eax
jmp .Lt_0054
.Lt_005B:
.Lt_005A:
.Lt_0059:
.Lt_0058:
.Lt_0057:
.Lt_0056:
.Lt_0053:
inc dword ptr [ebp-20]
.Lt_0052:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .Lt_0055
.Lt_0054:
.Lt_0038:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKELF64_SH:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_005C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sal ebx, 6
mov esi, ebx
mov ecx, esi
sar ecx, 31
add esi, dword ptr [eax+40]
adc ecx, dword ptr [eax+44]
mov eax, esi
mov dword ptr [ebp-12], eax
mov esi, dword ptr [ebp-12]
mov eax, esi
sar eax, 31
add esi, 64
adc eax, 0
mov ebx, dword ptr [OBJDATA+4]
mov ecx, ebx
sar ecx, 31
cmp eax, ecx
jb .Lt_005F
ja .Lt_016B
cmp esi, ebx
jbe .Lt_005F
.Lt_016B:
jmp .Lt_005D
.Lt_005F:
.Lt_005E:
mov ebx, dword ptr [OBJDATA]
add ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+32]
mov esi, dword ptr [ecx+36]
add eax, dword ptr [ebx+24]
adc esi, dword ptr [ebx+28]
mov ecx, dword ptr [OBJDATA+4]
mov ebx, ecx
sar ebx, 31
cmp esi, ebx
jb .Lt_0061
ja .Lt_016C
cmp eax, ecx
jbe .Lt_0061
.Lt_016C:
jmp .Lt_005D
.Lt_0061:
.Lt_0060:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_005D:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETSECTIONNAMEELF64_SH:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0062:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKELF64_SH
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0065
jmp .Lt_0063
.Lt_0065:
.Lt_0064:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
add ebx, dword ptr [eax]
mov ecx, ebx
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-16], 0
.Lt_0066:
mov ecx, dword ptr [ebp-12]
cmp ecx, dword ptr [OBJDATA+4]
setl cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-16]
cmp eax, 32
setl al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_0067
mov eax, dword ptr [OBJDATA]
add eax, dword ptr [ebp-12]
movzx ecx, byte ptr [eax]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 0
jne .Lt_0069
jmp .Lt_0067
.Lt_0069:
.Lt_0068:
mov cl, byte ptr [ebp-20]
mov eax, offset Lt_016F
add eax, dword ptr [ebp-16]
mov byte ptr [eax], cl
inc dword ptr [ebp-12]
inc dword ptr [ebp-16]
jmp .Lt_0066
.Lt_0067:
mov ecx, offset Lt_016F
add ecx, dword ptr [ebp-16]
mov byte ptr [ecx], 0
mov ecx, offset Lt_016F
mov dword ptr [ebp-4], ecx
.Lt_0063:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_016F,33

.section .text
.balign 16
HLOADFBCTINFFROMELF64_H:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.Lt_006A:
mov dword ptr [FBCTINF], 0
mov dword ptr [FBCTINF+4], 0
cmp dword ptr [OBJDATA+4], 64
jge .Lt_006D
jmp .Lt_006B
.Lt_006D:
.Lt_006C:
mov eax, dword ptr [OBJDATA]
mov dword ptr [ebp-4], eax
mov byte ptr [ELFMAGIC+4], 2
mov dword ptr [ebp-20], 0
.Lt_0071:
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebp-20]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp-20]
movzx ecx, byte ptr [ELFMAGIC+eax]
cmp ebx, ecx
je .Lt_0073
jmp .Lt_006B
.Lt_0073:
.Lt_0072:
.Lt_006F:
inc dword ptr [ebp-20]
.Lt_006E:
cmp dword ptr [ebp-20], 15
jle .Lt_0071
.Lt_0070:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+52]
cmp ebx, 64
je .Lt_0075
jmp .Lt_006B
.Lt_0075:
.Lt_0074:
mov ebx, dword ptr [ebp-4]
movzx ecx, word ptr [ebx+16]
cmp ecx, 1
je .Lt_0077
jmp .Lt_006B
.Lt_0077:
.Lt_0076:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+18]
mov ecx, dword ptr [ebp+8]
cmp ebx, ecx
je .Lt_0079
jmp .Lt_006B
.Lt_0079:
.Lt_0078:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+58]
cmp ebx, 64
je .Lt_007B
jmp .Lt_006B
.Lt_007B:
.Lt_007A:
mov ebx, dword ptr [ebp-4]
movzx eax, word ptr [ebx+60]
mov ecx, 0
shld ecx, eax, 6
shl eax, 6
mov esi, dword ptr [OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp ecx, ebx
jb .Lt_007D
ja .Lt_0170
cmp eax, esi
jbe .Lt_007D
.Lt_0170:
jmp .Lt_006B
.Lt_007D:
.Lt_007C:
mov esi, dword ptr [ebp-4]
movzx ebx, word ptr [esi+62]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
mov esi, dword ptr [ebp-4]
movzx eax, word ptr [esi+62]
mov esi, dword ptr [ebp-4]
movzx ecx, word ptr [esi+60]
cmp eax, ecx
setge al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_007F
jmp .Lt_006B
.Lt_007F:
.Lt_007E:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-4]
movzx ecx, word ptr [ebx+60]
sal ecx, 6
mov esi, ecx
mov ebx, esi
sar ebx, 31
add esi, dword ptr [eax+40]
adc ebx, dword ptr [eax+44]
mov ecx, dword ptr [OBJDATA+4]
mov eax, ecx
sar eax, 31
cmp ebx, eax
jb .Lt_0081
ja .Lt_0173
cmp esi, ecx
jbe .Lt_0081
.Lt_0173:
jmp .Lt_006B
.Lt_0081:
.Lt_0080:
mov ecx, dword ptr [ebp-4]
movzx eax, word ptr [ecx+62]
push eax
push dword ptr [ebp-4]
call HCHECKELF64_SH
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0083
jmp .Lt_006B
.Lt_0083:
.Lt_0082:
mov dword ptr [ebp-20], 1
mov eax, dword ptr [ebp-4]
movzx ecx, word ptr [eax+60]
dec ecx
mov dword ptr [ebp-24], ecx
jmp .Lt_0085
.Lt_0088:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+24]
push eax
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call HGETSECTIONNAMEELF64_SH
add esp, 12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_008A
push 9
push offset FBCTINFNAME
push 0
push dword ptr [ebp-16]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_008C
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call HCHECKELF64_SH
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_008E
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+24]
mov eax, dword ptr [OBJDATA]
add eax, ecx
mov dword ptr [FBCTINF], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
mov dword ptr [FBCTINF+4], ecx
jmp .Lt_0087
.Lt_008E:
.Lt_008D:
.Lt_008C:
.Lt_008B:
.Lt_008A:
.Lt_0089:
.Lt_0086:
inc dword ptr [ebp-20]
.Lt_0085:
mov ecx, dword ptr [ebp-24]
cmp dword ptr [ebp-20], ecx
jle .Lt_0088
.Lt_0087:
.Lt_006B:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HLOADFBCTINFFROMCOFF:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
push edi
.Lt_008F:
mov dword ptr [FBCTINF], 0
mov dword ptr [FBCTINF+4], 0
cmp dword ptr [OBJDATA+4], 20
jge .Lt_0092
jmp .Lt_0090
.Lt_0092:
.Lt_0091:
mov eax, dword ptr [OBJDATA]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
movzx ebx, word ptr [eax]
movzx eax, word ptr [ebp+8]
cmp ebx, eax
je .Lt_0094
jmp .Lt_0090
.Lt_0094:
.Lt_0093:
mov eax, dword ptr [ebp-4]
movzx ebx, word ptr [eax+16]
test ebx, ebx
je .Lt_0096
jmp .Lt_0090
.Lt_0096:
.Lt_0095:
mov ebx, dword ptr [ebp-4]
movzx ecx, word ptr [ebx+2]
mov eax, 0
push 0
push 40
push eax
push ecx
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop ecx
pop eax
add esp, 8
mov esi, dword ptr [OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp eax, ebx
jb .Lt_0098
ja .Lt_0174
cmp ecx, esi
jbe .Lt_0098
.Lt_0174:
jmp .Lt_0090
.Lt_0098:
.Lt_0097:
mov esi, dword ptr [ebp-4]
add esi, 20
mov dword ptr [ebp-12], esi
mov dword ptr [ebp-16], 0
mov esi, dword ptr [ebp-4]
movzx ebx, word ptr [esi+2]
dec ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_009A
.Lt_009D:
mov ebx, dword ptr [ebp-16]
imul ebx, 40
mov esi, dword ptr [ebp-12]
add esi, ebx
mov dword ptr [ebp-8], esi
mov dword ptr [ebp-24], 0
.Lt_00A1:
mov esi, dword ptr [ebp-8]
add esi, dword ptr [ebp-24]
movzx ebx, byte ptr [esi]
mov esi, offset FBCTINFNAME
add esi, dword ptr [ebp-24]
movzx ecx, byte ptr [esi]
cmp ebx, ecx
je .Lt_00A3
jmp .Lt_009B
.Lt_00A3:
.Lt_00A2:
.Lt_009F:
inc dword ptr [ebp-24]
.Lt_009E:
cmp dword ptr [ebp-24], 7
jle .Lt_00A1
.Lt_00A0:
mov ecx, dword ptr [ebp-8]
mov esi, dword ptr [ecx+20]
mov ebx, 0
mov ecx, dword ptr [ebp-8]
mov edi, dword ptr [ecx+16]
mov eax, 0
add esi, edi
adc ebx, eax
mov eax, dword ptr [OBJDATA+4]
mov edi, eax
sar edi, 31
cmp ebx, edi
jb .Lt_00A5
ja .Lt_0175
cmp esi, eax
jbe .Lt_00A5
.Lt_0175:
jmp .Lt_0090
.Lt_00A5:
.Lt_00A4:
mov eax, dword ptr [ebp-8]
mov edi, dword ptr [OBJDATA]
add edi, dword ptr [eax+20]
mov dword ptr [FBCTINF], edi
mov edi, dword ptr [ebp-8]
mov eax, dword ptr [edi+16]
mov dword ptr [FBCTINF+4], eax
jmp .Lt_009C
.Lt_009B:
inc dword ptr [ebp-16]
.Lt_009A:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .Lt_009D
.Lt_009C:
.Lt_0090:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HLOADARSTRING:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00AF:
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-8], eax
.Lt_00B1:
cmp dword ptr [ebp-8], 0
jl .Lt_00B2
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
cmp ebx, 32
je .Lt_00B5
jmp .Lt_00B2
.Lt_00B5:
.Lt_00B4:
dec dword ptr [ebp-8]
jmp .Lt_00B1
.Lt_00B2:
mov dword ptr [ebp-12], 0
.Lt_00B6:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-12], ebx
jg .Lt_00B7
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-12]
mov eax, offset Lt_0176
add eax, dword ptr [ebp-12]
mov cl, byte ptr [ebx]
mov byte ptr [eax], cl
inc dword ptr [ebp-12]
jmp .Lt_00B6
.Lt_00B7:
mov ecx, offset Lt_0176
add ecx, dword ptr [ebp-12]
mov byte ptr [ecx], 0
mov ecx, offset Lt_0176
mov dword ptr [ebp-4], ecx
.Lt_00B0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0176,17

.section .text
.balign 16
HLOADOBJFROMAR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_00B8:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [OBJDATA], 0
mov dword ptr [OBJDATA+4], 0
cmp dword ptr [ARDATA+4], 8
jge .Lt_00BB
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_00B9
.Lt_00BB:
.Lt_00BA:
mov dword ptr [ebp-20], 0
.Lt_00BF:
mov eax, dword ptr [ARDATA]
add eax, dword ptr [ebp-20]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp-20]
movzx ecx, byte ptr [ARMAGIC+eax]
cmp ebx, ecx
je .Lt_00C1
lea ecx, [ebp-16]
push ecx
call fb_StrDelete
add esp, 4
jmp .Lt_00B9
.Lt_00C1:
.Lt_00C0:
.Lt_00BD:
inc dword ptr [ebp-20]
.Lt_00BC:
cmp dword ptr [ebp-20], 7
jle .Lt_00BF
.Lt_00BE:
mov dword ptr [ebp-20], 8
.Lt_00C2:
mov ecx, dword ptr [ebp-20]
add ecx, 60
mov ebx, dword ptr [ARDATA+4]
cmp ecx, ebx
jle .Lt_00C6
lea ebx, [ebp-16]
push ebx
call fb_StrDelete
add esp, 4
jmp .Lt_00B9
.Lt_00C6:
.Lt_00C5:
mov ebx, dword ptr [ARDATA]
add ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
push 0
push 0
push 16
mov ebx, dword ptr [ebp-4]
lea ecx, [ebx]
push ecx
call HLOADARSTRING
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 10
mov eax, dword ptr [ebp-4]
lea ecx, [eax+48]
push ecx
call HLOADARSTRING
add esp, 8
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VAL
add esp, 4
fistp dword ptr [ebp-24]
cmp dword ptr [ebp-24], 0
jge .Lt_00C8
mov dword ptr [ebp-24], 0
jmp .Lt_00C7
.Lt_00C8:
mov eax, dword ptr [ebp-24]
cmp eax, dword ptr [ARDATA+4]
setg al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ARDATA+4]
sub ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
cmp ebx, ecx
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00C9
mov ebx, dword ptr [ARDATA+4]
sub ebx, dword ptr [ebp-20]
mov dword ptr [ebp-24], ebx
.Lt_00C9:
.Lt_00C7:
add dword ptr [ebp-20], 60
push 12
push offset Lt_001C
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
je .Lt_00CD
.Lt_00CE:
push 13
push offset Lt_00CC
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00CB
.Lt_00CD:
cmp dword ptr [ebp-24], 0
jle .Lt_00D0
mov eax, dword ptr [ARDATA]
add eax, dword ptr [ebp-20]
mov dword ptr [OBJDATA], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [OBJDATA+4], eax
.Lt_00D0:
.Lt_00CF:
jmp .Lt_00C3
jmp .Lt_00CA
.Lt_00CB:
push 2
push offset Lt_001A
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .Lt_00D4
.Lt_00D5:
push 3
push offset Lt_00D2
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .Lt_00D4
.Lt_00D6:
push 10
push offset Lt_00D3
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00D1
.Lt_00D4:
jmp .Lt_00CA
.Lt_00D1:
jmp .Lt_00C3
.Lt_00D7:
.Lt_00CA:
mov eax, dword ptr [ebp-24]
add dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
and eax, 1
add dword ptr [ebp-20], eax
.Lt_00C4:
jmp .Lt_00C2
.Lt_00C3:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.Lt_00B9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HLOADFILE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00D8:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 0
call fb_FileFree
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push 0
push 1
push 0
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 24
test eax, eax
je .Lt_00DB
jmp .Lt_00D9
.Lt_00DB:
.Lt_00DA:
push dword ptr [ebp-4]
call fb_FileSize
add esp, 4
mov ebx, eax
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jle .Lt_00DD
push dword ptr [ebp-8]
call malloc
add esp, 4
mov dword ptr [ebp-12], eax
lea eax, [ebp-8]
push eax
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-4]
call fb_FileGetIOB
add esp, 20
test eax, eax
je .Lt_00DF
jmp .Lt_00D9
.Lt_00DF:
.Lt_00DE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4], eax
.Lt_00DD:
.Lt_00DC:
push dword ptr [ebp-4]
call fb_FileClose
add esp, 4
test eax, eax
je .Lt_00E0
push 0
push 0
push offset Lt_00E1
push 616
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00E0:
.Lt_00D9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HLOADFBCTINFFROMOBJ:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00E2:
call FBTARGETSUPPORTSCOFF
test eax, eax
je .Lt_00E5
call FBGETCPUFAMILY
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
jne .Lt_00E8
.Lt_00E9:
push 34404
call HLOADFBCTINFFROMCOFF
add esp, 4
jmp .Lt_00E6
.Lt_00E8:
cmp dword ptr [ebp-4], 0
jne .Lt_00EA
.Lt_00EB:
push 332
call HLOADFBCTINFFROMCOFF
add esp, 4
.Lt_00EA:
.Lt_00E6:
jmp .Lt_00E4
.Lt_00E5:
call FBTARGETSUPPORTSELF
test eax, eax
je .Lt_00EC
call FBGETCPUFAMILY
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
jne .Lt_00EF
.Lt_00F0:
push 62
call HLOADFBCTINFFROMELF64_H
add esp, 4
jmp .Lt_00ED
.Lt_00EF:
cmp dword ptr [ebp-4], 0
jne .Lt_00F1
.Lt_00F2:
push 3
call HLOADFBCTINFFROMELF32_H
add esp, 4
jmp .Lt_00ED
.Lt_00F1:
cmp dword ptr [ebp-4], 3
jne .Lt_00F3
.Lt_00F4:
push 183
call HLOADFBCTINFFROMELF64_H
add esp, 4
jmp .Lt_00ED
.Lt_00F3:
cmp dword ptr [ebp-4], 2
jne .Lt_00F5
.Lt_00F6:
push 40
call HLOADFBCTINFFROMELF32_H
add esp, 4
jmp .Lt_00ED
.Lt_00F5:
cmp dword ptr [ebp-4], 5
jne .Lt_00F7
.Lt_00F8:
push 21
call HLOADFBCTINFFROMELF64_H
add esp, 4
jmp .Lt_00ED
.Lt_00F7:
cmp dword ptr [ebp-4], 4
jne .Lt_00F9
.Lt_00FA:
push 20
call HLOADFBCTINFFROMELF32_H
add esp, 4
.Lt_00F9:
.Lt_00ED:
.Lt_00EC:
.Lt_00E4:
cmp dword ptr [FBCTINF+4], 0
jne .Lt_00FC
jmp .Lt_00E3
.Lt_00FC:
.Lt_00FB:
mov eax, dword ptr [FBCTINF]
movzx ebx, byte ptr [eax]
cmp ebx, 16
jne .Lt_00FE
mov dword ptr [PARSER+16], -1
mov dword ptr [PARSER], 1
jmp .Lt_00FD
.Lt_00FE:
mov dword ptr [PARSER+16], 0
.Lt_00FD:
.Lt_00E3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HRESETBUFFERS:
.Lt_0105:
mov dword ptr [ARDATA], 0
mov dword ptr [ARDATA+4], 0
mov dword ptr [OBJDATA], 0
mov dword ptr [OBJDATA+4], 0
mov dword ptr [FBCTINF], 0
mov dword ptr [FBCTINF+4], 0
.Lt_0106:
ret
.balign 16
OBJINFOINIT:
push ebp
mov ebp, esp
.Lt_0107:
call HRESETBUFFERS
mov dword ptr [PARSER], 0
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [PARSER+4]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [PARSER+16], 0
mov dword ptr [PARSER+20], -1
.Lt_0108:
mov esp, ebp
pop ebp
ret
.balign 16
HGETNEXTSTRING:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0123:
mov eax, offset Lt_0000
mov dword ptr [ebp-4], eax
mov eax, dword ptr [PARSER]
mov dword ptr [ebp-8], eax
.Lt_0125:
mov eax, dword ptr [FBCTINF+4]
cmp dword ptr [PARSER], eax
jge .Lt_0126
inc dword ptr [PARSER]
mov eax, dword ptr [FBCTINF]
add eax, dword ptr [PARSER]
movzx ebx, byte ptr [eax-1]
test ebx, ebx
jne .Lt_0128
mov ebx, dword ptr [FBCTINF]
add ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_0124
.Lt_0128:
.Lt_0127:
jmp .Lt_0125
.Lt_0126:
.Lt_0124:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_GLOBAL__I:
.Lt_015D:
push offset PARSER
call _ZN16OBJINFOPARSERCTXC1Ev
add esp, 4
.Lt_015E:
ret
.balign 16
_GLOBAL__D:
.Lt_0160:
push offset PARSER
call _ZN16OBJINFOPARSERCTXD1Ev
add esp, 4
.Lt_0161:
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_001A:	.ascii	"/\0"
.balign 4
Lt_001C:	.ascii	"__fb_ct.inf\0"

.section .bss
.balign 4
	.lcomm	ARDATA,8
.balign 4
	.lcomm	OBJDATA,8
.balign 4
	.lcomm	FBCTINF,8
.balign 4
	.lcomm	PARSER,24

.section .data
.balign 4
FBCTINFNAME:
.ascii ".fbctinf\0"
.balign 4
ELFMAGIC:
.byte 127
.byte 69
.byte 76
.byte 70
.byte 0
.byte 1
.byte 1
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.skip 4,0
.balign 4
ARMAGIC:
.byte 33
.byte 60
.byte 97
.byte 114
.byte 99
.byte 104
.byte 62
.byte 10
.balign 4
Lt_00CC:	.ascii	"__fb_ct.inf/\0"
.balign 4
Lt_00D2:	.ascii	"//\0"
.balign 4
Lt_00D3:	.ascii	"__.SYMDEF\0"
.balign 4
Lt_00E1:	.ascii	"src/compiler/objinfo.bas\0"
.balign 4
ENTRIES:
.int Lt_0100
.int -1
.int Lt_0101
.int -1
.int Lt_0102
.int 0
.int Lt_0103
.int 0
.int Lt_0104
.int -1
.balign 4
Lt_0100:	.ascii	"-l\0"
.balign 4
Lt_0101:	.ascii	"-p\0"
.balign 4
Lt_0102:	.ascii	"-mt\0"
.balign 4
Lt_0103:	.ascii	"-gfx\0"
.balign 4
Lt_0104:	.ascii	"-lang\0"
.balign 4
Lt_0115:	.ascii	"lib\0"
.balign 4
Lt_0116:	.ascii	".a\0"

.section .ctors
.int fb_ctor__objinfo
.int _GLOBAL__I

.section .dtors
.int _GLOBAL__D
