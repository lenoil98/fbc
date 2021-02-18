	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBSTRUCTBEGIN
_SYMBSTRUCTBEGIN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+24], 0
jne .Lt_006B
cmp dword ptr [_PARSER+100], 0
je .Lt_006D
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp+24], eax
.Lt_006D:
.Lt_006C:
.Lt_006B:
.Lt_006A:
push 0
push dword ptr [ebp+40]
push 0
push 20
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 10
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp+44]
or eax, 32
push eax
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006F
jmp .Lt_0069
.Lt_006F:
.Lt_006E:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+116], 0
cmp dword ptr [ebp+28], 0
je .Lt_0071
mov eax, dword ptr [ebp-8]
or dword ptr [eax+116], 1
.Lt_0071:
.Lt_0070:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], 0
cmp dword ptr [ebp+16], 0
jne .Lt_0073
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+84], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+88], 0
push 0
push 16
mov eax, dword ptr [ebp-8]
lea ebx, [eax+72]
push ebx
call _HASHINIT
add esp, 12
jmp .Lt_0074
.Lt_0075:
push 12
push 0
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+72]
push eax
call _memset
add esp, 12
.Lt_0074:
jmp .Lt_0072
.Lt_0073:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+100], ebx
mov ebx, dword ptr [ebp-8]
or dword ptr [ebx+116], 2
.Lt_0072:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+92], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+48], 0
mov dword ptr [ebx+52], 0
cmp dword ptr [_ENV+136], 3
jne .Lt_0077
cmp dword ptr [ebp+32], 0
jne .Lt_0079
cmp dword ptr [_ENV+108], 11
je .Lt_007B
mov dword ptr [ebp+32], 1
.Lt_007B:
.Lt_007A:
.Lt_0079:
.Lt_0078:
.Lt_0077:
.Lt_0076:
mov bl, byte ptr [ebp+32]
mov eax, dword ptr [ebp-8]
mov byte ptr [eax+121], bl
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+104], 1
mov ebx, dword ptr [ebp-8]
mov byte ptr [ebx+120], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+108], 0
mov dword ptr [ebx+112], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+124], -2147483648
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+132], -1
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+136], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+96], 0
cmp dword ptr [ebp+36], 0
je .Lt_007D
mov ebx, dword ptr [ebp-8]
or dword ptr [ebx+12], 262144
push 0
push dword ptr [ebp-8]
call _SYMBNESTBEGIN
add esp, 8
.Lt_007D:
.Lt_007C:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBSTRUCTADDBASE
_SYMBSTRUCTADDBASE:
push ebp
mov ebp, esp
push ebx
.Lt_007E:
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push 20
push offset _Lt_0084
push 0
push offset _Lt_0081
push dword ptr [ebp+8]
call _SYMBADDFIELD
add esp, 40
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+96], eax
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call _SYMBNAMESPACEIMPORTEX
add esp, 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
je .Lt_0083
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 4194304
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT
add esp, 4
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+136]
mov ebx, dword ptr [eax+140]
mov dword ptr [ecx+140], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ecx+152]
mov dword ptr [eax+152], ebx
.Lt_0083:
.Lt_0082:
.Lt_007F:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0085,16

.section .data
.balign 4
_Lt_0084:
.int _Lt_0085
.int _Lt_0085
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _TYPECALCNATURALALIGN
_TYPECALCNATURALALIGN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0086:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0088
mov dword ptr [ebp-12], 24
jmp .Lt_0097
.Lt_0088:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0097:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_008B
.Lt_008D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+104]
mov dword ptr [ebp-8], ebx
jmp .Lt_008A
.Lt_008E:
mov ebx, dword ptr [_ENV+272]
mov dword ptr [ebp-8], ebx
jmp .Lt_008A
.Lt_008F:
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_0090
mov dword ptr [ebp-20], 24
jmp .Lt_0098
.Lt_0090:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_0098:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-8], eax
jmp .Lt_008A
.Lt_008B:
mov eax, dword ptr [ebp-16]
add eax, 4294967279
cmp eax, 3
ja .Lt_008F
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_0092+eax*4-68]
_.LT_0092:
.int .Lt_008E
.int .Lt_008F
.int .Lt_008F
.int .Lt_008D
.Lt_008A:
call _FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+108]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0094
cmp dword ptr [ebp-8], 8
jne .Lt_0096
mov dword ptr [ebp-8], 4
.Lt_0096:
.Lt_0095:
.Lt_0094:
.Lt_0093:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0087:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKBITFIELD
_SYMBCHECKBITFIELD:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_00A5:
mov eax, dword ptr [ebp+24]
test eax, eax
setle al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+24]
mov ebx, ecx
sar ebx, 31
mov edi, dword ptr [ebp+16]
mov esi, dword ptr [ebp+20]
shld esi, edi, 3
shl edi, 3
cmp ebx, esi
mov edx, -1
jg .Lt_00B4
jl .Lt_00B5
cmp ecx, edi
ja .Lt_00B4
.Lt_00B5:
xor edx, edx
.Lt_00B4:
or eax, edx
je .Lt_00A8
mov dword ptr [ebp-4], 0
jmp .Lt_00A6
.Lt_00A8:
.Lt_00A7:
mov edx, dword ptr [ebp+12]
and edx, 480
je .Lt_00A9
mov dword ptr [ebp-8], 24
jmp .Lt_00B2
.Lt_00A9:
mov edx, dword ptr [ebp+12]
and edx, 31
mov dword ptr [ebp-8], edx
.Lt_00B2:
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-12], edx
jmp .Lt_00AC
.Lt_00AE:
mov dword ptr [ebp-4], -1
jmp .Lt_00A6
jmp .Lt_00AB
.Lt_00AF:
call _FBIS64BIT
mov dword ptr [ebp-4], eax
jmp .Lt_00AB
.Lt_00B0:
mov dword ptr [ebp-4], 0
jmp .Lt_00A6
jmp .Lt_00AB
.Lt_00AC:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 13
ja .Lt_00B0
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00B1+eax*4-4]
_.LT_00B1:
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00B0
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00B0
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00B0
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AF
.int .Lt_00AF
.Lt_00AB:
.Lt_00A6:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDFIELD
_SYMBADDFIELD:
push ebp
mov ebp, esp
sub esp, 108
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00B6:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
cmp dword ptr [ebp+36], 0
jg .Lt_00B9
jl .Lt_010C
cmp dword ptr [ebp+32], 0
ja .Lt_00B9
.Lt_010C:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp+32], eax
mov dword ptr [ebp+36], edx
.Lt_00B9:
.Lt_00B8:
mov eax, dword ptr [ebp+44]
and eax, 4
je .Lt_00BB
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-72]
mov dword ptr [ebp-108], eax
lea eax, [ebp-72]
mov dword ptr [ebp-104], eax
mov dword ptr [ebp-100], 16
mov dword ptr [ebp-96], 16
mov dword ptr [ebp-92], 1
mov dword ptr [ebp-88], 49
mov dword ptr [ebp-84], 1
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
call _SYMBADDARRAYDESCRIPTORTYPE
add esp, 12
mov dword ptr [ebp-24], eax
push 8192
push 0
push 0
push 0
push dword ptr [ebp-24]
push 20
lea eax, [ebp-108]
push eax
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBADDFIELD
add esp, 40
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+48]
mov edx, dword ptr [eax+52]
mov dword ptr [ebp-48], ebx
mov dword ptr [ebp-44], edx
mov dword ptr [ebp-32], 0
jmp .Lt_00BA
.Lt_00BB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov edx, dword ptr [ebx+52]
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-44], edx
mov dword ptr [ebp-32], -1
.Lt_00BA:
cmp dword ptr [ebp+40], 0
jle .Lt_00BE
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 32768
mov eax, dword ptr [ebp+8]
movzx edx, byte ptr [eax+120]
test edx, edx
jle .Lt_00C0
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+64]
mov dword ptr [ebp-12], eax
.Lt_00C1:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 12
je .Lt_00C2
mov eax, dword ptr [ebp-12]
mov edx, dword ptr [eax+168]
mov dword ptr [ebp-12], edx
jmp .Lt_00C1
.Lt_00C2:
mov edx, dword ptr [ebp+8]
movzx eax, byte ptr [edx+120]
add eax, dword ptr [ebp+40]
mov ebx, eax
mov edx, ebx
sar edx, 31
mov eax, dword ptr [ebp-12]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
shld ecx, esi, 3
shl esi, 3
cmp edx, ecx
jl .Lt_00C4
jg .Lt_010D
cmp ebx, esi
jbe .Lt_00C4
.Lt_010D:
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+120], 0
jmp .Lt_00C3
.Lt_00C4:
mov esi, dword ptr [ebp-12]
mov ebx, dword ptr [esi+40]
mov ecx, dword ptr [esi+44]
cmp dword ptr [ebp+36], ecx
jne .Lt_010E
cmp dword ptr [ebp+32], ebx
je .Lt_00C6
.Lt_010E:
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+28]
and ecx, 511
mov dword ptr [ebp+24], ecx
mov ecx, dword ptr [ebp-12]
mov esi, dword ptr [ecx+40]
mov ebx, dword ptr [ecx+44]
mov dword ptr [ebp+32], esi
mov dword ptr [ebp+36], ebx
.Lt_00C6:
.Lt_00C5:
mov esi, dword ptr [ebp-12]
mov ecx, dword ptr [esi+48]
mov ebx, dword ptr [esi+52]
mov dword ptr [ebp-48], ecx
mov dword ptr [ebp-44], ebx
mov dword ptr [ebp-32], 0
.Lt_00C3:
.Lt_00C0:
.Lt_00BF:
jmp .Lt_00BD
.Lt_00BE:
mov ecx, dword ptr [ebp+8]
mov byte ptr [ecx+120], 0
.Lt_00BD:
cmp dword ptr [ebp-32], 0
je .Lt_00C8
push dword ptr [ebp+28]
push dword ptr [ebp+24]
mov ecx, dword ptr [ebp+8]
movzx ebx, byte ptr [ecx+121]
push ebx
push dword ptr [ebp-44]
push dword ptr [ebp-48]
call _HCALCPADDING
add esp, 20
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jle .Lt_00CA
cmp dword ptr [ebp+40], 0
jle .Lt_00CC
cmp dword ptr [_ENV+212], 0
jne .Lt_00CE
mov eax, dword ptr [ebp-28]
sal eax, 3
cmp dword ptr [ebp+40], eax
jg .Lt_00D0
mov ebx, dword ptr [ebp-28]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp+32], ebx
mov dword ptr [ebp+36], eax
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+36], 0
jne .Lt_00D2
cmp dword ptr [ebp+32], 1
jne .Lt_00D2
.Lt_010F:
.Lt_00D3:
mov ebx, dword ptr [ebp+24]
and ebx, 480
je .Lt_00D4
mov dword ptr [ebp-60], 24
jmp .Lt_010A
.Lt_00D4:
mov ebx, dword ptr [ebp+24]
and ebx, 31
mov dword ptr [ebp-60], ebx
.Lt_010A:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .Lt_00D7
mov dword ptr [ebp+24], 2
jmp .Lt_00D6
.Lt_00D7:
mov dword ptr [ebp+24], 3
.Lt_00D6:
jmp .Lt_00D1
.Lt_00D2:
cmp dword ptr [ebp+36], 0
jne .Lt_00D8
cmp dword ptr [ebp+32], 2
jne .Lt_00D8
.Lt_0110:
.Lt_00D9:
mov ebx, dword ptr [ebp+24]
and ebx, 480
je .Lt_00DA
mov dword ptr [ebp-60], 24
jmp .Lt_010B
.Lt_00DA:
mov ebx, dword ptr [ebp+24]
and ebx, 31
mov dword ptr [ebp-60], ebx
.Lt_010B:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .Lt_00DD
mov dword ptr [ebp+24], 5
jmp .Lt_00DC
.Lt_00DD:
mov dword ptr [ebp+24], 6
.Lt_00DC:
.Lt_00D8:
.Lt_00D1:
.Lt_00D0:
.Lt_00CF:
.Lt_00CE:
.Lt_00CD:
.Lt_00CC:
.Lt_00CB:
.Lt_00CA:
.Lt_00C9:
push dword ptr [ebp-28]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp-44]
push dword ptr [ebp-48]
call _HCHECKUDTSIZE
add esp, 20
test eax, eax
je .Lt_00DF
mov ebx, dword ptr [ebp-28]
mov eax, ebx
sar eax, 31
add dword ptr [ebp-48], ebx
adc dword ptr [ebp-44], eax
jmp .Lt_00DE
.Lt_00DF:
mov dword ptr [ebp-32], 0
.Lt_00DE:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _TYPECALCNATURALALIGN
add esp, 8
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+104]
cmp dword ptr [ebp-36], ebx
jle .Lt_00E1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-36]
mov dword ptr [ebx+104], eax
.Lt_00E1:
.Lt_00E0:
.Lt_00C8:
.Lt_00C7:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.Lt_00E2:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
je .Lt_00E3
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+100]
mov dword ptr [ebp-16], eax
jmp .Lt_00E2
.Lt_00E3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
or dword ptr [ebp+44], ebx
mov dword ptr [ebp-40], 0
mov ebx, dword ptr [ebp+44]
and ebx, 8192
test ebx, ebx
jne .Lt_00E5
mov dword ptr [ebp-40], 32
.Lt_00E5:
.Lt_00E4:
push 0
push dword ptr [ebp+44]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+12]
push 12
mov ebx, dword ptr [ebp-16]
lea eax, [ebx+68]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
push ebx
push 0
push dword ptr [ebp-40]
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00E7
jmp .Lt_00B7
.Lt_00E7:
.Lt_00E6:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+32]
mov ebx, dword ptr [ebp+36]
mov dword ptr [eax+40], ecx
mov dword ptr [eax+44], ebx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [ebp-44]
mov dword ptr [ecx+48], eax
mov dword ptr [ecx+52], ebx
push dword ptr [ebp-8]
call _SYMBVARINITFIELDS
add esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _SYMBVARINITARRAYDIMENSIONS
add esp, 12
cmp dword ptr [ebp-20], 0
je .Lt_00E9
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+84], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [eax+88], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-8]
mov dword ptr [ecx+92], eax
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call _ASTBUILDARRAYDESCINITREE
add esp, 12
mov ecx, dword ptr [ebp-20]
mov dword ptr [ecx+56], eax
.Lt_00E9:
.Lt_00E8:
mov eax, dword ptr [ebp+8]
movzx ecx, byte ptr [eax+120]
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+108], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+40]
mov dword ptr [ecx+112], eax
mov eax, dword ptr [ebp+44]
and eax, 4
je .Lt_00EB
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+116]
and ecx, 3
test ecx, ecx
je .Lt_00ED
push 0
push 0
push 162
call _ERRREPORT
add esp, 12
jmp .Lt_00EC
.Lt_00ED:
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 8
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 16
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 4
.Lt_00EC:
jmp .Lt_00EA
.Lt_00EB:
mov ecx, dword ptr [ebp+24]
and ecx, 511
mov dword ptr [ebp-60], ecx
cmp dword ptr [ebp-60], 17
jne .Lt_00F0
.Lt_00F1:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+116]
and eax, 3
test eax, eax
je .Lt_00F3
push 0
push 0
push 161
call _ERRREPORT
add esp, 12
jmp .Lt_00F2
.Lt_00F3:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 8
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 16
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 4
.Lt_00F2:
jmp .Lt_00EE
.Lt_00F0:
cmp dword ptr [ebp-60], 20
jne .Lt_00F4
.Lt_00F5:
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [eax+116]
and ecx, 4
test ecx, ecx
je .Lt_00F7
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+116], 4
.Lt_00F7:
.Lt_00F6:
push dword ptr [ebp+28]
call _SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
je .Lt_00F9
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+116]
and ecx, 3
test ecx, ecx
je .Lt_00FB
push 0
push 0
push 163
call _ERRREPORT
add esp, 12
jmp .Lt_00FA
.Lt_00FB:
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 8
.Lt_00FA:
.Lt_00F9:
.Lt_00F8:
push dword ptr [ebp+28]
call _SYMBGETCOMPDTOR
add esp, 4
test eax, eax
je .Lt_00FD
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+116]
and ecx, 3
test ecx, ecx
je .Lt_00FF
push 0
push 0
push 164
call _ERRREPORT
add esp, 12
jmp .Lt_00FE
.Lt_00FF:
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 16
.Lt_00FE:
.Lt_00FD:
.Lt_00FC:
.Lt_00F4:
.Lt_00EE:
.Lt_00EA:
mov ecx, dword ptr [ebp+24]
and ecx, 480
test ecx, ecx
je .Lt_0101
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+116], 4
.Lt_0101:
.Lt_0100:
push dword ptr [ebp-8]
call _SYMBGETREALSIZE
add esp, 4
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-52], edx
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+116]
and edx, 1
test edx, edx
je .Lt_0103
mov edx, dword ptr [ebp-8]
or dword ptr [edx+12], 16777216
cmp dword ptr [ebp-32], 0
je .Lt_0105
mov edx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-56]
mov eax, dword ptr [ebp-52]
cmp dword ptr [edx+44], eax
jg .Lt_0107
jl .Lt_0111
cmp dword ptr [edx+40], ecx
jae .Lt_0107
.Lt_0111:
mov ecx, dword ptr [ebp+8]
mov edx, dword ptr [ebp-56]
mov eax, dword ptr [ebp-52]
mov dword ptr [ecx+40], edx
mov dword ptr [ecx+44], eax
.Lt_0107:
.Lt_0106:
.Lt_0105:
.Lt_0104:
jmp .Lt_0102
.Lt_0103:
cmp dword ptr [ebp-32], 0
je .Lt_0109
mov eax, dword ptr [ebp-56]
mov edx, dword ptr [ebp-52]
add dword ptr [ebp-48], eax
adc dword ptr [ebp-44], edx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-48]
mov edx, dword ptr [ebp-44]
mov dword ptr [eax+48], ecx
mov dword ptr [eax+52], edx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-48]
mov edx, dword ptr [ebp-44]
mov dword ptr [ecx+40], eax
mov dword ptr [ecx+44], edx
.Lt_0109:
.Lt_0108:
mov eax, dword ptr [ebp+8]
movzx edx, byte ptr [eax+120]
add edx, dword ptr [ebp+40]
mov al, dl
mov edx, dword ptr [ebp+8]
mov byte ptr [edx+120], al
.Lt_0102:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+8]
mov dword ptr [eax+164], edx
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-4], edx
.Lt_00B7:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBINSERTINNERUDT
_SYMBINSERTINNERUDT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
.Lt_0112:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
jne .Lt_0115
push dword ptr [ebp+12]
push 20
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+121]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _HCALCPADDING
add esp, 20
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _HCHECKUDTSIZE
add esp, 20
test eax, eax
je .Lt_0117
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
mov ebx, ecx
sar ebx, 31
add dword ptr [eax+48], ecx
adc dword ptr [eax+52], ebx
.Lt_0117:
.Lt_0116:
.Lt_0115:
.Lt_0114:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+60]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_0119
jmp .Lt_0113
.Lt_0119:
.Lt_0118:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+64]
mov dword ptr [ecx+168], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
jne .Lt_011B
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
mov dword ptr [eax+60], ecx
jmp .Lt_011A
.Lt_011B:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+64]
mov ecx, dword ptr [ebp-4]
mov dword ptr [eax+172], ecx
.Lt_011A:
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+56]
mov dword ptr [ebp-8], eax
.Lt_011C:
cmp dword ptr [ebp-4], 0
je .Lt_011D
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-8]
mov dword ptr [eax+160], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+116]
and eax, 1
test eax, eax
je .Lt_011F
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 16777216
jmp .Lt_011E
.Lt_011F:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+48]
mov ebx, dword ptr [ecx+52]
add dword ptr [eax+48], esi
adc dword ptr [eax+52], ebx
.Lt_011E:
mov esi, dword ptr [ebp-4]
mov ebx, dword ptr [esi+172]
mov dword ptr [ebp-4], ebx
jmp .Lt_011C
.Lt_011D:
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [esi+64], eax
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+116]
and esi, 1
test esi, esi
jne .Lt_0121
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add dword ptr [esi+48], ecx
adc dword ptr [esi+52], ebx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+48]
mov esi, dword ptr [ecx+52]
mov dword ptr [ebx+40], eax
mov dword ptr [ebx+44], esi
jmp .Lt_0120
.Lt_0121:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+48], 0
mov dword ptr [eax+52], 0
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [esi+40]
mov ebx, dword ptr [esi+44]
cmp dword ptr [eax+44], ebx
jl .Lt_0123
jg .Lt_0128
cmp dword ptr [eax+40], ecx
jbe .Lt_0123
.Lt_0128:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+40]
mov eax, dword ptr [ecx+44]
mov dword ptr [ebx+40], esi
mov dword ptr [ebx+44], eax
.Lt_0123:
.Lt_0122:
.Lt_0120:
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+104]
cmp dword ptr [esi+104], ebx
jle .Lt_0125
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebx+104]
mov dword ptr [esi+104], eax
.Lt_0125:
.Lt_0124:
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+120], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+60], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+64], 0
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov dword ptr [eax+164], esi
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [esi+116]
and eax, 32768
test eax, eax
je .Lt_0127
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 32768
.Lt_0127:
.Lt_0126:
.Lt_0113:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HGETMAGICSTRUCTNUMBER
_HGETMAGICSTRUCTNUMBER:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_013D:
mov dword ptr [ebp-8], 2
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 1
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
push dword ptr [ebp+8]
call _STRUCT_ANALYZE
add esp, 16
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_013E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBSTRUCTEND
_SYMBSTRUCTEND:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.Lt_0188:
cmp dword ptr [ebp+12], 0
je .Lt_018B
push 0
call _SYMBNESTEND
add esp, 4
.Lt_018B:
.Lt_018A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
mov dword ptr [ebx+108], esi
mov dword ptr [ebx+112], ecx
push dword ptr [ebp+8]
push 20
mov esi, dword ptr [ebp+8]
movzx ecx, byte ptr [esi+121]
push ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call _HCALCPADDING
add esp, 20
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _HCHECKUDTSIZE
add esp, 20
test eax, eax
je .Lt_018D
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-24]
mov ecx, esi
sar ecx, 31
add dword ptr [eax+40], esi
adc dword ptr [eax+44], ecx
.Lt_018D:
.Lt_018C:
push dword ptr [ebp+8]
lea esi, [ebp-20]
push esi
call _SYMBUDTDECLAREDEFAULTMEMBERS
add esp, 8
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+128], 0
push dword ptr [ebp+8]
call _HGETRETURNTYPE
add esp, 4
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+124], eax
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call _SYMBUDTIMPLEMENTDEFAULTMEMBERS
add esp, 8
cmp dword ptr [_SYMB+98684], 0
jle .Lt_018F
push dword ptr [ebp+8]
call _SYMBCHECKFWDREF
add esp, 4
.Lt_018F:
.Lt_018E:
.Lt_0189:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELSTRUCT
_SYMBDELSTRUCT:
push ebp
mov ebp, esp
push ebx
.Lt_0190:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp+8]
call _SYMBDELNAMESPACEMEMBERS
add esp, 8
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+136], 0
je .Lt_0193
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+136]
call _free
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+136], 0
.Lt_0193:
.Lt_0192:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL
add esp, 4
.Lt_0191:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBUDTGETFIRSTFIELD
_SYMBUDTGETFIRSTFIELD:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_019B:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call _HSKIPTOFIELD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_019C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBUDTGETNEXTFIELD
_SYMBUDTGETNEXTFIELD:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_019D:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+172]
call _HSKIPTOFIELD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_019E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBUDTGETNEXTINITABLEFIELD
_SYMBUDTGETNEXTINITABLEFIELD:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A7:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.Lt_01A9:
push dword ptr [ebp+8]
call _SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_01AD
jmp .Lt_01AA
.Lt_01AD:
.Lt_01AC:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _HFINDCOMMONPARENT
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_01AF
jmp .Lt_01AA
.Lt_01AF:
.Lt_01AE:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
jne .Lt_01B1
jmp .Lt_01AA
.Lt_01B1:
.Lt_01B0:
.Lt_01AB:
jmp .Lt_01A9
.Lt_01AA:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_01A8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETUDTBASELEVEL
_SYMBGETUDTBASELEVEL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B2:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_01B5
mov dword ptr [ebp-4], 0
jmp .Lt_01B3
.Lt_01B5:
.Lt_01B4:
mov dword ptr [ebp-8], 1
.Lt_01B6:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+96], 0
je .Lt_01B7
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+96]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+32], ebx
jne .Lt_01B9
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_01B3
.Lt_01B9:
.Lt_01B8:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+96]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp+8], ebx
inc dword ptr [ebp-8]
jmp .Lt_01B6
.Lt_01B7:
mov dword ptr [ebp-4], 0
.Lt_01B3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCLONESIMPLESTRUCT
_SYMBCLONESIMPLESTRUCT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_01BC:
push 0
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _SYMBUNIQUELABEL
push eax
push 0
push 0
push 0
call _SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [ebp-8], eax
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_01BF:
cmp dword ptr [ebp-12], 0
je .Lt_01C0
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+28]
push offset _Lt_01C1
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
push dword ptr [ebp-8]
call _SYMBADDFIELD
add esp, 40
push dword ptr [ebp-12]
call _SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_01BF
.Lt_01C0:
push 0
push dword ptr [ebp-8]
call _SYMBSTRUCTEND
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_01BD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01C2,16

.section .data
.balign 4
_Lt_01C1:
.int _Lt_01C2
.int _Lt_01C2
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
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
.balign 16
_HCALCPADDING:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_009B:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _TYPECALCNATURALALIGN
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
jne .Lt_009E
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+16], eax
jmp .Lt_009D
.Lt_009E:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+16], eax
jle .Lt_00A0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+16], eax
.Lt_00A0:
.Lt_009F:
.Lt_009D:
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+16]
dec ecx
mov edi, ecx
mov esi, edi
sar esi, 31
and edi, dword ptr [ebp+8]
and esi, dword ptr [ebp+12]
sub ebx, edi
sbb eax, esi
mov edi, dword ptr [ebp+16]
dec edi
mov ecx, edi
mov esi, ecx
sar esi, 31
and ebx, ecx
and eax, esi
mov ecx, ebx
mov dword ptr [ebp-4], ecx
.Lt_009C:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKUDTSIZE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
add dword ptr [ebp-12], eax
adc dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+24]
mov eax, 0
add dword ptr [ebp-12], ebx
adc dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jb .Lt_00A4
ja .Lt_01C3
cmp dword ptr [ebp-12], 2147483647
jbe .Lt_00A4
.Lt_01C3:
mov dword ptr [ebp-4], 0
push 0
push 0
push 51
call _ERRREPORT
add esp, 12
jmp .Lt_00A3
.Lt_00A4:
mov dword ptr [ebp-4], -1
.Lt_00A3:
.Lt_00A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_STRUCT_ANALYZE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0129:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp+8], eax
.Lt_012B:
cmp dword ptr [ebp+8], 0
je .Lt_012C
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
mov ecx, -1
jg .Lt_01C7
jl .Lt_01C8
cmp dword ptr [eax+48], 7
ja .Lt_01C7
.Lt_01C8:
xor ecx, ecx
.Lt_01C7:
and ebx, ecx
je .Lt_012E
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], 2
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 8
.Lt_012E:
.Lt_012D:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 480
je .Lt_012F
mov dword ptr [ebp-8], 24
jmp .Lt_01C4
.Lt_012F:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 31
mov dword ptr [ebp-8], ecx
.Lt_01C4:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx], 3
jne .Lt_0132
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+32]
call _STRUCT_ANALYZE
add esp, 16
jmp .Lt_0131
.Lt_0132:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 480
je .Lt_0134
mov dword ptr [ebp-12], 24
jmp .Lt_01C5
.Lt_0134:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 31
mov dword ptr [ebp-12], ecx
.Lt_01C5:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx], 0
jne .Lt_0133
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx], 1
jne .Lt_0137
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 1
jmp .Lt_0136
.Lt_0137:
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 4
.Lt_0136:
.Lt_0133:
.Lt_0131:
push dword ptr [ebp+8]
call _SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp+8], eax
jmp .Lt_012B
.Lt_012C:
cmp dword ptr [ebp-4], 8
jle .Lt_0139
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx]
add ebx, dword ptr [eax]
cmp ebx, 1
jne .Lt_013B
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 5
jmp .Lt_013A
.Lt_013B:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebx]
cmp ecx, 2
jne .Lt_013C
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 10
.Lt_013C:
.Lt_013A:
.Lt_0139:
.Lt_0138:
.Lt_012A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETRETURNTYPEGAS64LINUX:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_013F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_SYMB_DTYPETB+368]
sal ebx, 1
mov esi, ebx
mov ecx, esi
sar ecx, 31
cmp dword ptr [eax+44], ecx
jg .Lt_0142
jl .Lt_01C9
cmp dword ptr [eax+40], esi
ja .Lt_0142
.Lt_01C9:
push dword ptr [ebp+8]
call _HGETMAGICSTRUCTNUMBER
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0144
.Lt_0146:
mov dword ptr [ebp-4], 13
jmp .Lt_0140
jmp .Lt_0143
.Lt_0147:
mov dword ptr [ebp-4], 16
jmp .Lt_0140
jmp .Lt_0143
.Lt_0148:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 2
mov dword ptr [ebp-4], 20
jmp .Lt_0140
jmp .Lt_0143
.Lt_0149:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 3
mov dword ptr [ebp-4], 20
jmp .Lt_0140
jmp .Lt_0143
.Lt_014A:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 5
mov dword ptr [ebp-4], 52
jmp .Lt_0140
jmp .Lt_0143
.Lt_014B:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 6
mov dword ptr [ebp-4], 20
jmp .Lt_0140
jmp .Lt_0143
.Lt_014C:
mov dword ptr [ebp-4], 20
jmp .Lt_0140
jmp .Lt_0143
.Lt_0144:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 9
ja .Lt_014C
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_014D+eax*4-4]
_.LT_014D:
.int .Lt_0146
.int .Lt_0147
.int .Lt_014C
.int .Lt_014C
.int .Lt_0148
.int .Lt_014A
.int .Lt_014C
.int .Lt_014C
.int .Lt_0149
.int .Lt_014B
.Lt_0143:
.Lt_0142:
.Lt_0141:
mov dword ptr [ebp-4], 52
.Lt_0140:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETRETURNTYPE:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_014E:
push dword ptr [ebp+8]
call _SYMBCOMPISTRIVIAL
add esp, 4
test eax, eax
jne .Lt_0151
mov dword ptr [ebp-4], 52
jmp .Lt_014F
.Lt_0151:
.Lt_0150:
cmp dword ptr [_ENV+104], 1
jne .Lt_0153
mov dword ptr [ebp-4], 20
jmp .Lt_014F
.Lt_0153:
.Lt_0152:
call _FBIS64BIT
test eax, eax
je .Lt_0155
cmp dword ptr [_ENV+104], 3
jne .Lt_0157
cmp dword ptr [_ENV+108], 2
jne .Lt_0159
push dword ptr [ebp+8]
call _HGETRETURNTYPEGAS64LINUX
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_014F
.Lt_0159:
.Lt_0158:
.Lt_0157:
.Lt_0156:
.Lt_0155:
.Lt_0154:
mov eax, dword ptr [_ENV+260]
and eax, 16
test eax, eax
jne .Lt_015B
mov dword ptr [ebp-4], 52
jmp .Lt_014F
.Lt_015B:
.Lt_015A:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+108]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], ebx
mov ecx, dword ptr [ebp-24]
mov dword ptr [ebp-16], ecx
mov ebx, dword ptr [ebp-16]
mov ecx, ebx
sar ecx, 31
mov esi, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
cmp ecx, eax
jne .Lt_01CA
cmp ebx, esi
je .Lt_015D
.Lt_01CA:
mov dword ptr [ebp-4], 20
jmp .Lt_014F
.Lt_015D:
.Lt_015C:
mov esi, dword ptr [ebp-16]
mov dword ptr [ebp-28], esi
jmp .Lt_015F
.Lt_0161:
mov dword ptr [ebp-12], 2
jmp .Lt_015E
.Lt_0162:
mov dword ptr [ebp-12], 5
jmp .Lt_015E
.Lt_0163:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+44], 0
jne .Lt_0165
cmp dword ptr [eax+40], 2
jne .Lt_0165
.Lt_01CB:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jl .Lt_0167
jg .Lt_01CC
cmp dword ptr [eax+40], 4
jb .Lt_0167
.Lt_01CC:
mov dword ptr [ebp-12], 8
.Lt_0167:
.Lt_0166:
.Lt_0165:
.Lt_0164:
jmp .Lt_015E
.Lt_0168:
.Lt_0169:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _SYMBUDTGETNEXTFIELD
add esp, 4
test eax, eax
je .Lt_016D
jmp .Lt_016A
.Lt_016D:
.Lt_016C:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+28]
and esi, 511
cmp esi, 15
jne .Lt_016F
mov dword ptr [ebp-12], 15
.Lt_016F:
.Lt_016E:
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [esi+28]
and eax, 511
cmp eax, 20
je .Lt_0171
jmp .Lt_016A
.Lt_0171:
.Lt_0170:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+32]
mov dword ptr [ebp+8], esi
.Lt_016B:
jmp .Lt_0169
.Lt_016A:
cmp dword ptr [ebp-12], 0
jne .Lt_0173
mov dword ptr [ebp-12], 8
.Lt_0173:
.Lt_0172:
jmp .Lt_015E
.Lt_0174:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+44], 0
jne .Lt_0176
cmp dword ptr [eax+40], 4
jne .Lt_0176
.Lt_01CD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jl .Lt_0178
jg .Lt_01CE
cmp dword ptr [eax+40], 8
jb .Lt_0178
.Lt_01CE:
mov dword ptr [ebp-12], 13
.Lt_0178:
.Lt_0177:
.Lt_0176:
.Lt_0175:
jmp .Lt_015E
.Lt_0179:
.Lt_017A:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _SYMBUDTGETNEXTFIELD
add esp, 4
test eax, eax
je .Lt_017E
jmp .Lt_017B
.Lt_017E:
.Lt_017D:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+28]
and esi, 511
cmp esi, 16
jne .Lt_0180
mov dword ptr [ebp-12], 16
.Lt_0180:
.Lt_017F:
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [esi+28]
and eax, 511
cmp eax, 20
je .Lt_0182
jmp .Lt_017B
.Lt_0182:
.Lt_0181:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+32]
mov dword ptr [ebp+8], esi
.Lt_017C:
jmp .Lt_017A
.Lt_017B:
cmp dword ptr [ebp-12], 0
jne .Lt_0184
mov dword ptr [ebp-12], 13
.Lt_0184:
.Lt_0183:
jmp .Lt_015E
.Lt_015F:
mov esi, dword ptr [ebp-28]
add esi, 4294967295
cmp esi, 7
ja .Lt_015E
mov esi, dword ptr [ebp-28]
jmp dword ptr [_.LT_0185+esi*4-4]
_.LT_0185:
.int .Lt_0161
.int .Lt_0162
.int .Lt_0163
.int .Lt_0168
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_0179
.Lt_015E:
cmp dword ptr [ebp-12], 0
jne .Lt_0187
mov dword ptr [ebp-12], 52
.Lt_0187:
.Lt_0186:
mov esi, dword ptr [ebp-12]
mov dword ptr [ebp-4], esi
.Lt_014F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSKIPTOFIELD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0195:
.Lt_0197:
cmp dword ptr [ebp+8], 0
je .Lt_0198
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
jne .Lt_019A
jmp .Lt_0198
.Lt_019A:
.Lt_0199:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp+8], ebx
jmp .Lt_0197
.Lt_0198:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_0196:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFINDCOMMONPARENT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_019F:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_01A1:
cmp dword ptr [ebp+8], 0
je .Lt_01A2
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+12], eax
.Lt_01A3:
cmp dword ptr [ebp+12], 0
je .Lt_01A4
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jne .Lt_01A6
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_01A0
.Lt_01A6:
.Lt_01A5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+164]
mov dword ptr [ebp+12], ebx
jmp .Lt_01A3
.Lt_01A4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+164]
mov dword ptr [ebp+8], eax
jmp .Lt_01A1
.Lt_01A2:
mov dword ptr [ebp-4], 0
.Lt_01A0:
mov eax, dword ptr [ebp-4]
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

.section .data
.balign 4
_Lt_0081:	.ascii	"base$\0"
