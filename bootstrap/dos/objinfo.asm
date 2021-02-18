	.intel_syntax noprefix

.section .text
.balign 16

.globl _OBJINFOREADOBJ
_OBJINFOREADOBJ:
push ebp
mov ebp, esp
.Lt_010B:
push dword ptr [ebp+8]
call _OBJINFOINIT
add esp, 4
push offset _OBJDATA
push dword ptr [ebp+8]
call _HLOADFILE
add esp, 8
cmp dword ptr [_OBJDATA+4], 0
jne .Lt_010E
jmp .Lt_010C
.Lt_010E:
.Lt_010D:
call _HLOADFBCTINFFROMOBJ
.Lt_010C:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _OBJINFOREADLIBFILE
_OBJINFOREADLIBFILE:
push ebp
mov ebp, esp
.Lt_010F:
push dword ptr [ebp+8]
call _OBJINFOINIT
add esp, 4
push offset _ARDATA
push dword ptr [ebp+8]
call _HLOADFILE
add esp, 8
cmp dword ptr [_ARDATA+4], 0
jne .Lt_0112
jmp .Lt_0110
.Lt_0112:
.Lt_0111:
call _HLOADOBJFROMAR
cmp dword ptr [_OBJDATA+4], 0
jne .Lt_0114
jmp .Lt_0110
.Lt_0114:
.Lt_0113:
call _HLOADFBCTINFFROMOBJ
.Lt_0110:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _OBJINFOREADLIB
_OBJINFOREADLIB:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_0115:
push 0
push -1
push 3
push offset _Lt_0118
push -1
push -1
push dword ptr [ebp+8]
push 4
push offset _Lt_0117
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0123
call _fb_StrAssign
add esp, 20
push dword ptr [ebp+12]
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_011B:
cmp dword ptr [ebp-4], 0
je .Lt_011C
push 0
push -1
push -1
push offset _Lt_0123
push -1
push 2
push offset _Lt_001B
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea ebx, [ebp-40]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_0124
call _fb_StrAssign
add esp, 20
push dword ptr [_Lt_0124]
call _HFILEEXISTS
add esp, 4
test eax, eax
je .Lt_0120
jmp .Lt_011C
.Lt_0120:
.Lt_011F:
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_011B
.Lt_011C:
cmp dword ptr [ebp-4], 0
jne .Lt_0122
jmp .Lt_0116
.Lt_0122:
.Lt_0121:
push offset _Lt_0124
call _OBJINFOREADLIBFILE
add esp, 4
.Lt_0116:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0124,12
.balign 4
	.lcomm	_Lt_0123,12

.section .text
.balign 16

.globl _OBJINFOREADNEXT
_OBJINFOREADNEXT:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_012B:
cmp dword ptr [_FBCTINF+4], 0
jg .Lt_012E
mov dword ptr [ebp-4], -1
jmp .Lt_012C
.Lt_012E:
.Lt_012D:
cmp dword ptr [_PARSER+16], 0
je .Lt_0130
.Lt_0131:
mov eax, dword ptr [_FBCTINF+4]
cmp dword ptr [_PARSER], eax
jge .Lt_0132
cmp dword ptr [_PARSER+20], 0
jge .Lt_0134
mov eax, dword ptr [_FBCTINF]
add eax, dword ptr [_PARSER]
movzx ebx, byte ptr [eax]
mov dword ptr [_PARSER+20], ebx
inc dword ptr [_PARSER]
mov ebx, dword ptr [_PARSER+20]
test ebx, ebx
setle bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_PARSER+20]
cmp eax, 3
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0136
mov dword ptr [_PARSER+20], -1
mov eax, dword ptr [_FBCTINF+4]
mov dword ptr [_PARSER], eax
mov dword ptr [ebp-4], -1
jmp .Lt_012C
.Lt_0136:
.Lt_0135:
.Lt_0134:
.Lt_0133:
mov eax, dword ptr [_FBCTINF+4]
cmp dword ptr [_PARSER], eax
jl .Lt_0138
mov dword ptr [ebp-4], -1
jmp .Lt_012C
.Lt_0138:
.Lt_0137:
inc dword ptr [_PARSER]
mov eax, dword ptr [_FBCTINF]
add eax, dword ptr [_PARSER]
movzx ebx, byte ptr [eax-1]
test ebx, ebx
jne .Lt_013A
mov dword ptr [_PARSER+20], -1
jmp .Lt_0131
.Lt_013A:
.Lt_0139:
push 0
push 0
call _HGETNEXTSTRING
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_PARSER+20]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jne .Lt_013D
.Lt_013E:
mov dword ptr [ebp-4], 0
jmp .Lt_012C
jmp .Lt_013B
.Lt_013D:
cmp dword ptr [ebp-8], 2
jne .Lt_013F
.Lt_0140:
mov dword ptr [ebp-4], 1
jmp .Lt_012C
jmp .Lt_013B
.Lt_013F:
cmp dword ptr [ebp-8], 3
jne .Lt_0141
.Lt_0142:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
push 6
push offset _Lt_0106
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0145
.Lt_0146:
push 0
push 0
call _HGETNEXTSTRING
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_0148
mov dword ptr [ebp-4], 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_012C
.Lt_0148:
.Lt_0147:
jmp .Lt_0143
.Lt_0145:
push 4
push offset _Lt_0104
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0149
.Lt_014A:
mov dword ptr [ebp-4], 2
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_012C
.Lt_0149:
.Lt_0143:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0141:
.Lt_013B:
jmp .Lt_0131
.Lt_0132:
jmp .Lt_012F
.Lt_0130:
push 0
push 0
call _HGETNEXTSTRING
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-8], 0
.Lt_014E:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [_ENTRIES+eax*8]
push -1
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0150
mov eax, dword ptr [ebp-8]
cmp dword ptr [_ENTRIES+eax*8+4], 0
je .Lt_0152
push 0
push 0
call _HGETNEXTSTRING
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_0152:
.Lt_0151:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_012C
.Lt_0150:
.Lt_014F:
.Lt_014C:
inc dword ptr [ebp-8]
.Lt_014B:
cmp dword ptr [ebp-8], 4
jle .Lt_014E
.Lt_014D:
.Lt_012F:
mov dword ptr [ebp-4], -1
.Lt_012C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _OBJINFOGETFILENAME
_OBJINFOGETFILENAME:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0155:
mov eax, dword ptr [_PARSER+4]
mov dword ptr [ebp-4], eax
.Lt_0156:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _OBJINFOREADEND
_OBJINFOREADEND:
.Lt_0157:
cmp dword ptr [_ARDATA], 0
je .Lt_015A
push dword ptr [_ARDATA]
call _free
add esp, 4
jmp .Lt_0159
.Lt_015A:
cmp dword ptr [_OBJDATA], 0
je .Lt_015B
push dword ptr [_OBJDATA]
call _free
add esp, 4
.Lt_015B:
.Lt_0159:
call _HRESETBUFFERS
.Lt_0158:
ret
.balign 16

.globl _OBJINFOENCODE
_OBJINFOENCODE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_015C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_ENTRIES+eax*8]
mov dword ptr [ebp-4], ebx
.Lt_015D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__objinfo:
.Lt_0002:
.Lt_0003:
ret
.balign 16
__ZN11TSTRSETITEMaSERKS_:
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
call _fb_StrAssign
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
__ZN16OBJINFOPARSERCTXC1Ev:
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
.Lt_0020:
.Lt_0021:
mov esp, ebp
pop ebp
ret
.balign 16
__ZN16OBJINFOPARSERCTXaSERKS_:
push ebp
mov ebp, esp
push ebx
.Lt_0022:
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
call _fb_StrAssign
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
.Lt_0023:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN16OBJINFOPARSERCTXD1Ev:
push ebp
mov ebp, esp
push ebx
.Lt_0026:
.Lt_0027:
mov eax, dword ptr [ebp+8]
add eax, 4
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKELF32_SH:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_002A:
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
mov esi, dword ptr [_OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp eax, ebx
jb .Lt_002D
ja .Lt_0164
cmp ecx, esi
jbe .Lt_002D
.Lt_0164:
jmp .Lt_002B
.Lt_002D:
.Lt_002C:
mov esi, dword ptr [_OBJDATA]
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
mov eax, dword ptr [_OBJDATA+4]
mov edi, eax
sar edi, 31
cmp ebx, edi
jb .Lt_002F
ja .Lt_0165
cmp ecx, eax
jbe .Lt_002F
.Lt_0165:
jmp .Lt_002B
.Lt_002F:
.Lt_002E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_002B:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETSECTIONNAMEELF32_SH:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0030:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKELF32_SH
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0033
jmp .Lt_0031
.Lt_0033:
.Lt_0032:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
add ebx, dword ptr [eax]
mov ecx, ebx
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-16], 0
.Lt_0034:
mov ecx, dword ptr [ebp-12]
cmp ecx, dword ptr [_OBJDATA+4]
setl cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-16]
cmp eax, 32
setl al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_0035
mov eax, dword ptr [_OBJDATA]
add eax, dword ptr [ebp-12]
movzx ecx, byte ptr [eax]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 0
jne .Lt_0037
jmp .Lt_0035
.Lt_0037:
.Lt_0036:
mov cl, byte ptr [ebp-20]
mov eax, offset _Lt_0168
add eax, dword ptr [ebp-16]
mov byte ptr [eax], cl
inc dword ptr [ebp-12]
inc dword ptr [ebp-16]
jmp .Lt_0034
.Lt_0035:
mov ecx, offset _Lt_0168
add ecx, dword ptr [ebp-16]
mov byte ptr [ecx], 0
mov ecx, offset _Lt_0168
mov dword ptr [ebp-4], ecx
.Lt_0031:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0168,33

.section .text
.balign 16
_HLOADFBCTINFFROMELF32_H:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
push edi
.Lt_0038:
mov dword ptr [_FBCTINF], 0
mov dword ptr [_FBCTINF+4], 0
cmp dword ptr [_OBJDATA+4], 52
jge .Lt_003B
jmp .Lt_0039
.Lt_003B:
.Lt_003A:
mov eax, dword ptr [_OBJDATA]
mov dword ptr [ebp-4], eax
mov byte ptr [_ELFMAGIC+4], 1
mov dword ptr [ebp-20], 0
.Lt_003F:
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebp-20]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp-20]
movzx ecx, byte ptr [_ELFMAGIC+eax]
cmp ebx, ecx
je .Lt_0041
jmp .Lt_0039
.Lt_0041:
.Lt_0040:
.Lt_003D:
inc dword ptr [ebp-20]
.Lt_003C:
cmp dword ptr [ebp-20], 15
jle .Lt_003F
.Lt_003E:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+40]
cmp ebx, 52
je .Lt_0043
jmp .Lt_0039
.Lt_0043:
.Lt_0042:
mov ebx, dword ptr [ebp-4]
movzx ecx, word ptr [ebx+16]
cmp ecx, 1
je .Lt_0045
jmp .Lt_0039
.Lt_0045:
.Lt_0044:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+18]
mov ecx, dword ptr [ebp+8]
cmp ebx, ecx
je .Lt_0047
jmp .Lt_0039
.Lt_0047:
.Lt_0046:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+46]
cmp ebx, 40
je .Lt_0049
jmp .Lt_0039
.Lt_0049:
.Lt_0048:
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
mov esi, dword ptr [_OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp ecx, ebx
jb .Lt_004B
ja .Lt_0169
cmp eax, esi
jbe .Lt_004B
.Lt_0169:
jmp .Lt_0039
.Lt_004B:
.Lt_004A:
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
je .Lt_004D
jmp .Lt_0039
.Lt_004D:
.Lt_004C:
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
mov eax, dword ptr [_OBJDATA+4]
mov edi, eax
sar edi, 31
cmp ebx, edi
jb .Lt_004F
ja .Lt_016C
cmp ecx, eax
jbe .Lt_004F
.Lt_016C:
jmp .Lt_0039
.Lt_004F:
.Lt_004E:
mov eax, dword ptr [ebp-4]
movzx edi, word ptr [eax+50]
push edi
push dword ptr [ebp-4]
call _HCHECKELF32_SH
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0051
jmp .Lt_0039
.Lt_0051:
.Lt_0050:
mov dword ptr [ebp-20], 1
mov eax, dword ptr [ebp-4]
movzx edi, word ptr [eax+48]
dec edi
mov dword ptr [ebp-24], edi
jmp .Lt_0053
.Lt_0056:
mov edi, dword ptr [ebp-12]
push dword ptr [edi+16]
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _HGETSECTIONNAMEELF32_SH
add esp, 12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_0058
push 9
push offset _FBCTINFNAME
push 0
push dword ptr [ebp-16]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_005A
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _HCHECKELF32_SH
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_005C
mov eax, dword ptr [ebp-8]
mov edi, dword ptr [_OBJDATA]
add edi, dword ptr [eax+16]
mov dword ptr [_FBCTINF], edi
mov edi, dword ptr [ebp-8]
mov eax, dword ptr [edi+20]
mov dword ptr [_FBCTINF+4], eax
jmp .Lt_0055
.Lt_005C:
.Lt_005B:
.Lt_005A:
.Lt_0059:
.Lt_0058:
.Lt_0057:
.Lt_0054:
inc dword ptr [ebp-20]
.Lt_0053:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .Lt_0056
.Lt_0055:
.Lt_0039:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKELF64_SH:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_005D:
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
mov ebx, dword ptr [_OBJDATA+4]
mov ecx, ebx
sar ecx, 31
cmp eax, ecx
jb .Lt_0060
ja .Lt_016D
cmp esi, ebx
jbe .Lt_0060
.Lt_016D:
jmp .Lt_005E
.Lt_0060:
.Lt_005F:
mov ebx, dword ptr [_OBJDATA]
add ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+32]
mov esi, dword ptr [ecx+36]
add eax, dword ptr [ebx+24]
adc esi, dword ptr [ebx+28]
mov ecx, dword ptr [_OBJDATA+4]
mov ebx, ecx
sar ebx, 31
cmp esi, ebx
jb .Lt_0062
ja .Lt_016E
cmp eax, ecx
jbe .Lt_0062
.Lt_016E:
jmp .Lt_005E
.Lt_0062:
.Lt_0061:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_005E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETSECTIONNAMEELF64_SH:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0063:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKELF64_SH
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0066
jmp .Lt_0064
.Lt_0066:
.Lt_0065:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
add ebx, dword ptr [eax]
mov ecx, ebx
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-16], 0
.Lt_0067:
mov ecx, dword ptr [ebp-12]
cmp ecx, dword ptr [_OBJDATA+4]
setl cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-16]
cmp eax, 32
setl al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_0068
mov eax, dword ptr [_OBJDATA]
add eax, dword ptr [ebp-12]
movzx ecx, byte ptr [eax]
mov dword ptr [ebp-20], ecx
cmp dword ptr [ebp-20], 0
jne .Lt_006A
jmp .Lt_0068
.Lt_006A:
.Lt_0069:
mov cl, byte ptr [ebp-20]
mov eax, offset _Lt_0171
add eax, dword ptr [ebp-16]
mov byte ptr [eax], cl
inc dword ptr [ebp-12]
inc dword ptr [ebp-16]
jmp .Lt_0067
.Lt_0068:
mov ecx, offset _Lt_0171
add ecx, dword ptr [ebp-16]
mov byte ptr [ecx], 0
mov ecx, offset _Lt_0171
mov dword ptr [ebp-4], ecx
.Lt_0064:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0171,33

.section .text
.balign 16
_HLOADFBCTINFFROMELF64_H:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.Lt_006B:
mov dword ptr [_FBCTINF], 0
mov dword ptr [_FBCTINF+4], 0
cmp dword ptr [_OBJDATA+4], 64
jge .Lt_006E
jmp .Lt_006C
.Lt_006E:
.Lt_006D:
mov eax, dword ptr [_OBJDATA]
mov dword ptr [ebp-4], eax
mov byte ptr [_ELFMAGIC+4], 2
mov dword ptr [ebp-20], 0
.Lt_0072:
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebp-20]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp-20]
movzx ecx, byte ptr [_ELFMAGIC+eax]
cmp ebx, ecx
je .Lt_0074
jmp .Lt_006C
.Lt_0074:
.Lt_0073:
.Lt_0070:
inc dword ptr [ebp-20]
.Lt_006F:
cmp dword ptr [ebp-20], 15
jle .Lt_0072
.Lt_0071:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+52]
cmp ebx, 64
je .Lt_0076
jmp .Lt_006C
.Lt_0076:
.Lt_0075:
mov ebx, dword ptr [ebp-4]
movzx ecx, word ptr [ebx+16]
cmp ecx, 1
je .Lt_0078
jmp .Lt_006C
.Lt_0078:
.Lt_0077:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+18]
mov ecx, dword ptr [ebp+8]
cmp ebx, ecx
je .Lt_007A
jmp .Lt_006C
.Lt_007A:
.Lt_0079:
mov ecx, dword ptr [ebp-4]
movzx ebx, word ptr [ecx+58]
cmp ebx, 64
je .Lt_007C
jmp .Lt_006C
.Lt_007C:
.Lt_007B:
mov ebx, dword ptr [ebp-4]
movzx eax, word ptr [ebx+60]
mov ecx, 0
shld ecx, eax, 6
shl eax, 6
mov esi, dword ptr [_OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp ecx, ebx
jb .Lt_007E
ja .Lt_0172
cmp eax, esi
jbe .Lt_007E
.Lt_0172:
jmp .Lt_006C
.Lt_007E:
.Lt_007D:
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
je .Lt_0080
jmp .Lt_006C
.Lt_0080:
.Lt_007F:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-4]
movzx ecx, word ptr [ebx+60]
sal ecx, 6
mov esi, ecx
mov ebx, esi
sar ebx, 31
add esi, dword ptr [eax+40]
adc ebx, dword ptr [eax+44]
mov ecx, dword ptr [_OBJDATA+4]
mov eax, ecx
sar eax, 31
cmp ebx, eax
jb .Lt_0082
ja .Lt_0175
cmp esi, ecx
jbe .Lt_0082
.Lt_0175:
jmp .Lt_006C
.Lt_0082:
.Lt_0081:
mov ecx, dword ptr [ebp-4]
movzx eax, word ptr [ecx+62]
push eax
push dword ptr [ebp-4]
call _HCHECKELF64_SH
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0084
jmp .Lt_006C
.Lt_0084:
.Lt_0083:
mov dword ptr [ebp-20], 1
mov eax, dword ptr [ebp-4]
movzx ecx, word ptr [eax+60]
dec ecx
mov dword ptr [ebp-24], ecx
jmp .Lt_0086
.Lt_0089:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+24]
push eax
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _HGETSECTIONNAMEELF64_SH
add esp, 12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_008B
push 9
push offset _FBCTINFNAME
push 0
push dword ptr [ebp-16]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_008D
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _HCHECKELF64_SH
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_008F
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+24]
mov eax, dword ptr [_OBJDATA]
add eax, ecx
mov dword ptr [_FBCTINF], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
mov dword ptr [_FBCTINF+4], ecx
jmp .Lt_0088
.Lt_008F:
.Lt_008E:
.Lt_008D:
.Lt_008C:
.Lt_008B:
.Lt_008A:
.Lt_0087:
inc dword ptr [ebp-20]
.Lt_0086:
mov ecx, dword ptr [ebp-24]
cmp dword ptr [ebp-20], ecx
jle .Lt_0089
.Lt_0088:
.Lt_006C:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADFBCTINFFROMCOFF:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
push edi
.Lt_0090:
mov dword ptr [_FBCTINF], 0
mov dword ptr [_FBCTINF+4], 0
cmp dword ptr [_OBJDATA+4], 20
jge .Lt_0093
jmp .Lt_0091
.Lt_0093:
.Lt_0092:
mov eax, dword ptr [_OBJDATA]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
movzx ebx, word ptr [eax]
movzx eax, word ptr [ebp+8]
cmp ebx, eax
je .Lt_0095
jmp .Lt_0091
.Lt_0095:
.Lt_0094:
mov eax, dword ptr [ebp-4]
movzx ebx, word ptr [eax+16]
test ebx, ebx
je .Lt_0097
jmp .Lt_0091
.Lt_0097:
.Lt_0096:
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
mov esi, dword ptr [_OBJDATA+4]
mov ebx, esi
sar ebx, 31
cmp eax, ebx
jb .Lt_0099
ja .Lt_0176
cmp ecx, esi
jbe .Lt_0099
.Lt_0176:
jmp .Lt_0091
.Lt_0099:
.Lt_0098:
mov esi, dword ptr [ebp-4]
add esi, 20
mov dword ptr [ebp-12], esi
mov dword ptr [ebp-16], 0
mov esi, dword ptr [ebp-4]
movzx ebx, word ptr [esi+2]
dec ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_009B
.Lt_009E:
mov ebx, dword ptr [ebp-16]
imul ebx, 40
mov esi, dword ptr [ebp-12]
add esi, ebx
mov dword ptr [ebp-8], esi
mov dword ptr [ebp-24], 0
.Lt_00A2:
mov esi, dword ptr [ebp-8]
add esi, dword ptr [ebp-24]
movzx ebx, byte ptr [esi]
mov esi, offset _FBCTINFNAME
add esi, dword ptr [ebp-24]
movzx ecx, byte ptr [esi]
cmp ebx, ecx
je .Lt_00A4
jmp .Lt_009C
.Lt_00A4:
.Lt_00A3:
.Lt_00A0:
inc dword ptr [ebp-24]
.Lt_009F:
cmp dword ptr [ebp-24], 7
jle .Lt_00A2
.Lt_00A1:
mov ecx, dword ptr [ebp-8]
mov esi, dword ptr [ecx+20]
mov ebx, 0
mov ecx, dword ptr [ebp-8]
mov edi, dword ptr [ecx+16]
mov eax, 0
add esi, edi
adc ebx, eax
mov eax, dword ptr [_OBJDATA+4]
mov edi, eax
sar edi, 31
cmp ebx, edi
jb .Lt_00A6
ja .Lt_0177
cmp esi, eax
jbe .Lt_00A6
.Lt_0177:
jmp .Lt_0091
.Lt_00A6:
.Lt_00A5:
mov eax, dword ptr [ebp-8]
mov edi, dword ptr [_OBJDATA]
add edi, dword ptr [eax+20]
mov dword ptr [_FBCTINF], edi
mov edi, dword ptr [ebp-8]
mov eax, dword ptr [edi+16]
mov dword ptr [_FBCTINF+4], eax
jmp .Lt_009D
.Lt_009C:
inc dword ptr [ebp-16]
.Lt_009B:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .Lt_009E
.Lt_009D:
.Lt_0091:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADARSTRING:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B0:
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-8], eax
.Lt_00B2:
cmp dword ptr [ebp-8], 0
jl .Lt_00B3
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
cmp ebx, 32
je .Lt_00B6
jmp .Lt_00B3
.Lt_00B6:
.Lt_00B5:
dec dword ptr [ebp-8]
jmp .Lt_00B2
.Lt_00B3:
mov dword ptr [ebp-12], 0
.Lt_00B7:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-12], ebx
jg .Lt_00B8
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-12]
mov eax, offset _Lt_0178
add eax, dword ptr [ebp-12]
mov cl, byte ptr [ebx]
mov byte ptr [eax], cl
inc dword ptr [ebp-12]
jmp .Lt_00B7
.Lt_00B8:
mov ecx, offset _Lt_0178
add ecx, dword ptr [ebp-12]
mov byte ptr [ecx], 0
mov ecx, offset _Lt_0178
mov dword ptr [ebp-4], ecx
.Lt_00B1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0178,17

.section .text
.balign 16
_HLOADOBJFROMAR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_00B9:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [_OBJDATA], 0
mov dword ptr [_OBJDATA+4], 0
cmp dword ptr [_ARDATA+4], 8
jge .Lt_00BC
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_00BA
.Lt_00BC:
.Lt_00BB:
mov dword ptr [ebp-20], 0
.Lt_00C0:
mov eax, dword ptr [_ARDATA]
add eax, dword ptr [ebp-20]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp-20]
movzx ecx, byte ptr [_ARMAGIC+eax]
cmp ebx, ecx
je .Lt_00C2
lea ecx, [ebp-16]
push ecx
call _fb_StrDelete
add esp, 4
jmp .Lt_00BA
.Lt_00C2:
.Lt_00C1:
.Lt_00BE:
inc dword ptr [ebp-20]
.Lt_00BD:
cmp dword ptr [ebp-20], 7
jle .Lt_00C0
.Lt_00BF:
mov dword ptr [ebp-20], 8
.Lt_00C3:
mov ecx, dword ptr [ebp-20]
add ecx, 60
mov ebx, dword ptr [_ARDATA+4]
cmp ecx, ebx
jle .Lt_00C7
lea ebx, [ebp-16]
push ebx
call _fb_StrDelete
add esp, 4
jmp .Lt_00BA
.Lt_00C7:
.Lt_00C6:
mov ebx, dword ptr [_ARDATA]
add ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
push 0
push 0
push 16
mov ebx, dword ptr [ebp-4]
lea ecx, [ebx]
push ecx
call _HLOADARSTRING
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 10
mov eax, dword ptr [ebp-4]
lea ecx, [eax+48]
push ecx
call _HLOADARSTRING
add esp, 8
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_VAL
add esp, 4
fistp dword ptr [ebp-24]
cmp dword ptr [ebp-24], 0
jge .Lt_00C9
mov dword ptr [ebp-24], 0
jmp .Lt_00C8
.Lt_00C9:
mov eax, dword ptr [ebp-24]
cmp eax, dword ptr [_ARDATA+4]
setg al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_ARDATA+4]
sub ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
cmp ebx, ecx
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00CA
mov ebx, dword ptr [_ARDATA+4]
sub ebx, dword ptr [ebp-20]
mov dword ptr [ebp-24], ebx
.Lt_00CA:
.Lt_00C8:
add dword ptr [ebp-20], 60
push 12
push offset _Lt_001D
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_00CE
.Lt_00CF:
push 13
push offset _Lt_00CD
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00CC
.Lt_00CE:
cmp dword ptr [ebp-24], 0
jle .Lt_00D1
mov eax, dword ptr [_ARDATA]
add eax, dword ptr [ebp-20]
mov dword ptr [_OBJDATA], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [_OBJDATA+4], eax
.Lt_00D1:
.Lt_00D0:
jmp .Lt_00C4
jmp .Lt_00CB
.Lt_00CC:
push 2
push offset _Lt_00D3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_00D6
.Lt_00D7:
push 3
push offset _Lt_00D4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_00D6
.Lt_00D8:
push 10
push offset _Lt_00D5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00D2
.Lt_00D6:
jmp .Lt_00CB
.Lt_00D2:
jmp .Lt_00C4
.Lt_00D9:
.Lt_00CB:
mov eax, dword ptr [ebp-24]
add dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
and eax, 1
add dword ptr [ebp-20], eax
.Lt_00C5:
jmp .Lt_00C3
.Lt_00C4:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_00BA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADFILE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00DA:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 0
call _fb_FileFree
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push 0
push 1
push 0
push dword ptr [ebp+8]
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_00DD
jmp .Lt_00DB
.Lt_00DD:
.Lt_00DC:
push dword ptr [ebp-4]
call _fb_FileSize
add esp, 4
mov ebx, eax
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jle .Lt_00DF
push dword ptr [ebp-8]
call _malloc
add esp, 4
mov dword ptr [ebp-12], eax
lea eax, [ebp-8]
push eax
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-4]
call _fb_FileGetIOB
add esp, 20
test eax, eax
je .Lt_00E1
jmp .Lt_00DB
.Lt_00E1:
.Lt_00E0:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4], eax
.Lt_00DF:
.Lt_00DE:
push dword ptr [ebp-4]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_00E2
push 0
push 0
push offset _Lt_00E3
push 616
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00E2:
.Lt_00DB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADFBCTINFFROMOBJ:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00E4:
call _FBTARGETSUPPORTSCOFF
test eax, eax
je .Lt_00E7
call _FBGETCPUFAMILY
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
jne .Lt_00EA
.Lt_00EB:
push 34404
call _HLOADFBCTINFFROMCOFF
add esp, 4
jmp .Lt_00E8
.Lt_00EA:
cmp dword ptr [ebp-4], 0
jne .Lt_00EC
.Lt_00ED:
push 332
call _HLOADFBCTINFFROMCOFF
add esp, 4
.Lt_00EC:
.Lt_00E8:
jmp .Lt_00E6
.Lt_00E7:
call _FBTARGETSUPPORTSELF
test eax, eax
je .Lt_00EE
call _FBGETCPUFAMILY
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
jne .Lt_00F1
.Lt_00F2:
push 62
call _HLOADFBCTINFFROMELF64_H
add esp, 4
jmp .Lt_00EF
.Lt_00F1:
cmp dword ptr [ebp-4], 0
jne .Lt_00F3
.Lt_00F4:
push 3
call _HLOADFBCTINFFROMELF32_H
add esp, 4
jmp .Lt_00EF
.Lt_00F3:
cmp dword ptr [ebp-4], 3
jne .Lt_00F5
.Lt_00F6:
push 183
call _HLOADFBCTINFFROMELF64_H
add esp, 4
jmp .Lt_00EF
.Lt_00F5:
cmp dword ptr [ebp-4], 2
jne .Lt_00F7
.Lt_00F8:
push 40
call _HLOADFBCTINFFROMELF32_H
add esp, 4
jmp .Lt_00EF
.Lt_00F7:
cmp dword ptr [ebp-4], 5
jne .Lt_00F9
.Lt_00FA:
push 21
call _HLOADFBCTINFFROMELF64_H
add esp, 4
jmp .Lt_00EF
.Lt_00F9:
cmp dword ptr [ebp-4], 4
jne .Lt_00FB
.Lt_00FC:
push 20
call _HLOADFBCTINFFROMELF32_H
add esp, 4
.Lt_00FB:
.Lt_00EF:
.Lt_00EE:
.Lt_00E6:
cmp dword ptr [_FBCTINF+4], 0
jne .Lt_00FE
jmp .Lt_00E5
.Lt_00FE:
.Lt_00FD:
mov eax, dword ptr [_FBCTINF]
movzx ebx, byte ptr [eax]
cmp ebx, 16
jne .Lt_0100
mov dword ptr [_PARSER+16], -1
mov dword ptr [_PARSER], 1
jmp .Lt_00FF
.Lt_0100:
mov dword ptr [_PARSER+16], 0
.Lt_00FF:
.Lt_00E5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HRESETBUFFERS:
.Lt_0107:
mov dword ptr [_ARDATA], 0
mov dword ptr [_ARDATA+4], 0
mov dword ptr [_OBJDATA], 0
mov dword ptr [_OBJDATA+4], 0
mov dword ptr [_FBCTINF], 0
mov dword ptr [_FBCTINF+4], 0
.Lt_0108:
ret
.balign 16
_OBJINFOINIT:
push ebp
mov ebp, esp
.Lt_0109:
call _HRESETBUFFERS
mov dword ptr [_PARSER], 0
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [_PARSER+4]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [_PARSER+16], 0
mov dword ptr [_PARSER+20], -1
.Lt_010A:
mov esp, ebp
pop ebp
ret
.balign 16
_HGETNEXTSTRING:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0125:
mov eax, offset _Lt_0000
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_PARSER]
mov dword ptr [ebp-8], eax
.Lt_0127:
mov eax, dword ptr [_FBCTINF+4]
cmp dword ptr [_PARSER], eax
jge .Lt_0128
inc dword ptr [_PARSER]
mov eax, dword ptr [_FBCTINF]
add eax, dword ptr [_PARSER]
movzx ebx, byte ptr [eax-1]
test ebx, ebx
jne .Lt_012A
mov ebx, dword ptr [_FBCTINF]
add ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_0126
.Lt_012A:
.Lt_0129:
jmp .Lt_0127
.Lt_0128:
.Lt_0126:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__GLOBAL__I:
.Lt_015F:
push offset _PARSER
call __ZN16OBJINFOPARSERCTXC1Ev
add esp, 4
.Lt_0160:
ret
.balign 16
__GLOBAL__D:
.Lt_0162:
push offset _PARSER
call __ZN16OBJINFOPARSERCTXD1Ev
add esp, 4
.Lt_0163:
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_001B:	.ascii	"\\\0"
.balign 4
_Lt_001D:	.ascii	"__fb_ct.inf\0"

.section .bss
.balign 4
	.lcomm	_ARDATA,8
.balign 4
	.lcomm	_OBJDATA,8
.balign 4
	.lcomm	_FBCTINF,8
.balign 4
	.lcomm	_PARSER,24

.section .data
.balign 4
_FBCTINFNAME:
.ascii ".fbctinf\0"
.balign 4
_ELFMAGIC:
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
_ARMAGIC:
.byte 33
.byte 60
.byte 97
.byte 114
.byte 99
.byte 104
.byte 62
.byte 10
.balign 4
_Lt_00CD:	.ascii	"__fb_ct.inf/\0"
.balign 4
_Lt_00D3:	.ascii	"/\0"
.balign 4
_Lt_00D4:	.ascii	"//\0"
.balign 4
_Lt_00D5:	.ascii	"__.SYMDEF\0"
.balign 4
_Lt_00E3:	.ascii	"src/compiler/objinfo.bas\0"
.balign 4
_ENTRIES:
.int _Lt_0102
.int -1
.int _Lt_0103
.int -1
.int _Lt_0104
.int 0
.int _Lt_0105
.int 0
.int _Lt_0106
.int -1
.balign 4
_Lt_0102:	.ascii	"-l\0"
.balign 4
_Lt_0103:	.ascii	"-p\0"
.balign 4
_Lt_0104:	.ascii	"-mt\0"
.balign 4
_Lt_0105:	.ascii	"-gfx\0"
.balign 4
_Lt_0106:	.ascii	"-lang\0"
.balign 4
_Lt_0117:	.ascii	"lib\0"
.balign 4
_Lt_0118:	.ascii	".a\0"

.section .ctors
.int _fb_ctor__objinfo
.int __GLOBAL__I

.section .dtors
.int __GLOBAL__D
