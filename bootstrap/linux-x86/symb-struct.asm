	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBSTRUCTBEGIN
SYMBSTRUCTBEGIN:
.type SYMBSTRUCTBEGIN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+24], 0
jne .Lt_006A
cmp dword ptr [PARSER+100], 0
je .Lt_006C
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp+24], eax
.Lt_006C:
.Lt_006B:
.Lt_006A:
.Lt_0069:
sub esp, 4
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
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006E
jmp .Lt_0068
.Lt_006E:
.Lt_006D:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+116], 0
cmp dword ptr [ebp+28], 0
je .Lt_0070
mov eax, dword ptr [ebp-8]
or dword ptr [eax+116], 1
.Lt_0070:
.Lt_006F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], 0
cmp dword ptr [ebp+16], 0
jne .Lt_0072
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+84], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+88], 0
sub esp, 4
push 0
push 16
mov eax, dword ptr [ebp-8]
lea ebx, [eax+72]
push ebx
call HASHINIT
add esp, 16
jmp .Lt_0073
.Lt_0074:
sub esp, 4
push 12
push 0
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+72]
push eax
call memset
add esp, 16
.Lt_0073:
jmp .Lt_0071
.Lt_0072:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+100], ebx
mov ebx, dword ptr [ebp-8]
or dword ptr [ebx+116], 2
.Lt_0071:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+92], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+48], 0
mov dword ptr [ebx+52], 0
cmp dword ptr [ENV+136], 3
jne .Lt_0076
cmp dword ptr [ebp+32], 0
jne .Lt_0078
cmp dword ptr [ENV+108], 11
je .Lt_007A
mov dword ptr [ebp+32], 1
.Lt_007A:
.Lt_0079:
.Lt_0078:
.Lt_0077:
.Lt_0076:
.Lt_0075:
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
je .Lt_007C
mov ebx, dword ptr [ebp-8]
or dword ptr [ebx+12], 262144
sub esp, 8
push 0
push dword ptr [ebp-8]
call SYMBNESTBEGIN
add esp, 16
.Lt_007C:
.Lt_007B:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBSTRUCTBEGIN, .-SYMBSTRUCTBEGIN
.balign 16

.globl SYMBSTRUCTADDBASE
SYMBSTRUCTADDBASE:
.type SYMBSTRUCTADDBASE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_007D:
sub esp, 8
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push 20
push offset Lt_0083
push 0
push offset Lt_0080
push dword ptr [ebp+8]
call SYMBADDFIELD
add esp, 48
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+96], eax
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call SYMBNAMESPACEIMPORTEX
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
je .Lt_0082
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 4194304
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 16
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
.Lt_0082:
.Lt_0081:
.Lt_007E:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBSTRUCTADDBASE, .-SYMBSTRUCTADDBASE

.section .bss
.balign 4
	.lcomm	Lt_0084,16

.section .data
.balign 4
Lt_0083:
.int Lt_0084
.int Lt_0084
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl TYPECALCNATURALALIGN
TYPECALCNATURALALIGN:
.type TYPECALCNATURALALIGN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0085:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0087
mov dword ptr [ebp-12], 24
jmp .Lt_0096
.Lt_0087:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0096:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_008A
.Lt_008C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+104]
mov dword ptr [ebp-8], ebx
jmp .Lt_0089
.Lt_008D:
mov ebx, dword ptr [ENV+272]
mov dword ptr [ebp-8], ebx
jmp .Lt_0089
.Lt_008E:
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_008F
mov dword ptr [ebp-20], 24
jmp .Lt_0097
.Lt_008F:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_0097:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-8], eax
jmp .Lt_0089
.Lt_008A:
mov eax, dword ptr [ebp-16]
add eax, 4294967279
cmp eax, 3
ja .Lt_008E
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_0091+eax*4-68]
.LT_0091:
.int .Lt_008D
.int .Lt_008E
.int .Lt_008E
.int .Lt_008C
.Lt_0089:
call FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+108]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0093
cmp dword ptr [ebp-8], 8
jne .Lt_0095
mov dword ptr [ebp-8], 4
.Lt_0095:
.Lt_0094:
.Lt_0093:
.Lt_0092:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0086:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size TYPECALCNATURALALIGN, .-TYPECALCNATURALALIGN
.balign 16

.globl SYMBCHECKBITFIELD
SYMBCHECKBITFIELD:
.type SYMBCHECKBITFIELD, @function
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_00A4:
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
jg .Lt_00B3
jl .Lt_00B4
cmp ecx, edi
ja .Lt_00B3
.Lt_00B4:
xor edx, edx
.Lt_00B3:
or eax, edx
je .Lt_00A7
mov dword ptr [ebp-4], 0
jmp .Lt_00A5
.Lt_00A7:
.Lt_00A6:
mov edx, dword ptr [ebp+12]
and edx, 480
je .Lt_00A8
mov dword ptr [ebp-8], 24
jmp .Lt_00B1
.Lt_00A8:
mov edx, dword ptr [ebp+12]
and edx, 31
mov dword ptr [ebp-8], edx
.Lt_00B1:
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-12], edx
jmp .Lt_00AB
.Lt_00AD:
mov dword ptr [ebp-4], -1
jmp .Lt_00A5
jmp .Lt_00AA
.Lt_00AE:
call FBIS64BIT
mov dword ptr [ebp-4], eax
jmp .Lt_00AA
.Lt_00AF:
mov dword ptr [ebp-4], 0
jmp .Lt_00A5
jmp .Lt_00AA
.Lt_00AB:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 13
ja .Lt_00AF
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00B0+eax*4-4]
.LT_00B0:
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AF
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AF
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AF
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00AE
.int .Lt_00AE
.Lt_00AA:
.Lt_00A5:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCHECKBITFIELD, .-SYMBCHECKBITFIELD
.balign 16

.globl SYMBADDFIELD
SYMBADDFIELD:
.type SYMBADDFIELD, @function
push ebp
mov ebp, esp
sub esp, 112
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00B5:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
cmp dword ptr [ebp+36], 0
jg .Lt_00B8
jl .Lt_010B
cmp dword ptr [ebp+32], 0
ja .Lt_00B8
.Lt_010B:
sub esp, 8
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call SYMBCALCLEN
add esp, 16
mov dword ptr [ebp+32], eax
mov dword ptr [ebp+36], edx
.Lt_00B8:
.Lt_00B7:
mov eax, dword ptr [ebp+44]
and eax, 4
je .Lt_00BA
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
sub esp, 4
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
call SYMBADDARRAYDESCRIPTORTYPE
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 8
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
call SYMBADDFIELD
add esp, 48
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+48]
mov edx, dword ptr [eax+52]
mov dword ptr [ebp-48], ebx
mov dword ptr [ebp-44], edx
mov dword ptr [ebp-32], 0
jmp .Lt_00B9
.Lt_00BA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov edx, dword ptr [ebx+52]
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-44], edx
mov dword ptr [ebp-32], -1
.Lt_00B9:
cmp dword ptr [ebp+40], 0
jle .Lt_00BD
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 32768
mov eax, dword ptr [ebp+8]
movzx edx, byte ptr [eax+120]
test edx, edx
jle .Lt_00BF
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+64]
mov dword ptr [ebp-12], eax
.Lt_00C0:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 12
je .Lt_00C1
mov eax, dword ptr [ebp-12]
mov edx, dword ptr [eax+168]
mov dword ptr [ebp-12], edx
jmp .Lt_00C0
.Lt_00C1:
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
jl .Lt_00C3
jg .Lt_010C
cmp ebx, esi
jbe .Lt_00C3
.Lt_010C:
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+120], 0
jmp .Lt_00C2
.Lt_00C3:
mov esi, dword ptr [ebp-12]
mov ebx, dword ptr [esi+40]
mov ecx, dword ptr [esi+44]
cmp dword ptr [ebp+36], ecx
jne .Lt_010D
cmp dword ptr [ebp+32], ebx
je .Lt_00C5
.Lt_010D:
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+28]
and ecx, 511
mov dword ptr [ebp+24], ecx
mov ecx, dword ptr [ebp-12]
mov esi, dword ptr [ecx+40]
mov ebx, dword ptr [ecx+44]
mov dword ptr [ebp+32], esi
mov dword ptr [ebp+36], ebx
.Lt_00C5:
.Lt_00C4:
mov esi, dword ptr [ebp-12]
mov ecx, dword ptr [esi+48]
mov ebx, dword ptr [esi+52]
mov dword ptr [ebp-48], ecx
mov dword ptr [ebp-44], ebx
mov dword ptr [ebp-32], 0
.Lt_00C2:
.Lt_00BF:
.Lt_00BE:
jmp .Lt_00BC
.Lt_00BD:
mov ecx, dword ptr [ebp+8]
mov byte ptr [ecx+120], 0
.Lt_00BC:
cmp dword ptr [ebp-32], 0
je .Lt_00C7
sub esp, 12
push dword ptr [ebp+28]
push dword ptr [ebp+24]
mov ecx, dword ptr [ebp+8]
movzx ebx, byte ptr [ecx+121]
push ebx
push dword ptr [ebp-44]
push dword ptr [ebp-48]
call HCALCPADDING
add esp, 32
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jle .Lt_00C9
cmp dword ptr [ebp+40], 0
jle .Lt_00CB
cmp dword ptr [ENV+212], 0
jne .Lt_00CD
mov eax, dword ptr [ebp-28]
sal eax, 3
cmp dword ptr [ebp+40], eax
jg .Lt_00CF
mov ebx, dword ptr [ebp-28]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp+32], ebx
mov dword ptr [ebp+36], eax
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+36], 0
jne .Lt_00D1
cmp dword ptr [ebp+32], 1
jne .Lt_00D1
.Lt_010E:
.Lt_00D2:
mov ebx, dword ptr [ebp+24]
and ebx, 480
je .Lt_00D3
mov dword ptr [ebp-60], 24
jmp .Lt_0109
.Lt_00D3:
mov ebx, dword ptr [ebp+24]
and ebx, 31
mov dword ptr [ebp-60], ebx
.Lt_0109:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+8], 0
je .Lt_00D6
mov dword ptr [ebp+24], 2
jmp .Lt_00D5
.Lt_00D6:
mov dword ptr [ebp+24], 3
.Lt_00D5:
jmp .Lt_00D0
.Lt_00D1:
cmp dword ptr [ebp+36], 0
jne .Lt_00D7
cmp dword ptr [ebp+32], 2
jne .Lt_00D7
.Lt_010F:
.Lt_00D8:
mov ebx, dword ptr [ebp+24]
and ebx, 480
je .Lt_00D9
mov dword ptr [ebp-60], 24
jmp .Lt_010A
.Lt_00D9:
mov ebx, dword ptr [ebp+24]
and ebx, 31
mov dword ptr [ebp-60], ebx
.Lt_010A:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+8], 0
je .Lt_00DC
mov dword ptr [ebp+24], 5
jmp .Lt_00DB
.Lt_00DC:
mov dword ptr [ebp+24], 6
.Lt_00DB:
.Lt_00D7:
.Lt_00D0:
.Lt_00CF:
.Lt_00CE:
.Lt_00CD:
.Lt_00CC:
.Lt_00CB:
.Lt_00CA:
.Lt_00C9:
.Lt_00C8:
sub esp, 12
push dword ptr [ebp-28]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp-44]
push dword ptr [ebp-48]
call HCHECKUDTSIZE
add esp, 32
test eax, eax
je .Lt_00DE
mov ebx, dword ptr [ebp-28]
mov eax, ebx
sar eax, 31
add dword ptr [ebp-48], ebx
adc dword ptr [ebp-44], eax
jmp .Lt_00DD
.Lt_00DE:
mov dword ptr [ebp-32], 0
.Lt_00DD:
sub esp, 8
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call TYPECALCNATURALALIGN
add esp, 16
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+104]
cmp dword ptr [ebp-36], ebx
jle .Lt_00E0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-36]
mov dword ptr [ebx+104], eax
.Lt_00E0:
.Lt_00DF:
.Lt_00C7:
.Lt_00C6:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.Lt_00E1:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
je .Lt_00E2
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+100]
mov dword ptr [ebp-16], eax
jmp .Lt_00E1
.Lt_00E2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
or dword ptr [ebp+44], ebx
mov dword ptr [ebp-40], 0
mov ebx, dword ptr [ebp+44]
and ebx, 8192
test ebx, ebx
jne .Lt_00E4
mov dword ptr [ebp-40], 32
.Lt_00E4:
.Lt_00E3:
sub esp, 4
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
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00E6
jmp .Lt_00B6
.Lt_00E6:
.Lt_00E5:
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
sub esp, 12
push dword ptr [ebp-8]
call SYMBVARINITFIELDS
add esp, 16
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call SYMBVARINITARRAYDIMENSIONS
add esp, 16
cmp dword ptr [ebp-20], 0
je .Lt_00E8
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
sub esp, 4
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call ASTBUILDARRAYDESCINITREE
add esp, 16
mov ecx, dword ptr [ebp-20]
mov dword ptr [ecx+56], eax
.Lt_00E8:
.Lt_00E7:
mov eax, dword ptr [ebp+8]
movzx ecx, byte ptr [eax+120]
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+108], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+40]
mov dword ptr [ecx+112], eax
mov eax, dword ptr [ebp+44]
and eax, 4
je .Lt_00EA
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+116]
and ecx, 3
test ecx, ecx
je .Lt_00EC
sub esp, 4
push 0
push 0
push 162
call ERRREPORT
add esp, 16
jmp .Lt_00EB
.Lt_00EC:
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 8
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 16
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 4
.Lt_00EB:
jmp .Lt_00E9
.Lt_00EA:
mov ecx, dword ptr [ebp+24]
and ecx, 511
mov dword ptr [ebp-60], ecx
cmp dword ptr [ebp-60], 17
jne .Lt_00EF
.Lt_00F0:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+116]
and eax, 3
test eax, eax
je .Lt_00F2
sub esp, 4
push 0
push 0
push 161
call ERRREPORT
add esp, 16
jmp .Lt_00F1
.Lt_00F2:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 8
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 16
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 4
.Lt_00F1:
jmp .Lt_00ED
.Lt_00EF:
cmp dword ptr [ebp-60], 20
jne .Lt_00F3
.Lt_00F4:
mov eax, dword ptr [ebp+28]
mov ecx, dword ptr [eax+116]
and ecx, 4
test ecx, ecx
je .Lt_00F6
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+116], 4
.Lt_00F6:
.Lt_00F5:
sub esp, 12
push dword ptr [ebp+28]
call SYMBGETCOMPCTORHEAD
add esp, 16
test eax, eax
je .Lt_00F8
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+116]
and ecx, 3
test ecx, ecx
je .Lt_00FA
sub esp, 4
push 0
push 0
push 163
call ERRREPORT
add esp, 16
jmp .Lt_00F9
.Lt_00FA:
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 8
.Lt_00F9:
.Lt_00F8:
.Lt_00F7:
sub esp, 12
push dword ptr [ebp+28]
call SYMBGETCOMPDTOR
add esp, 16
test eax, eax
je .Lt_00FC
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+116]
and ecx, 3
test ecx, ecx
je .Lt_00FE
sub esp, 4
push 0
push 0
push 164
call ERRREPORT
add esp, 16
jmp .Lt_00FD
.Lt_00FE:
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+116], 16
.Lt_00FD:
.Lt_00FC:
.Lt_00FB:
.Lt_00F3:
.Lt_00ED:
.Lt_00E9:
mov ecx, dword ptr [ebp+24]
and ecx, 480
test ecx, ecx
je .Lt_0100
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+116], 4
.Lt_0100:
.Lt_00FF:
sub esp, 12
push dword ptr [ebp-8]
call SYMBGETREALSIZE
add esp, 16
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-52], edx
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+116]
and edx, 1
test edx, edx
je .Lt_0102
mov edx, dword ptr [ebp-8]
or dword ptr [edx+12], 16777216
cmp dword ptr [ebp-32], 0
je .Lt_0104
mov edx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-56]
mov eax, dword ptr [ebp-52]
cmp dword ptr [edx+44], eax
jg .Lt_0106
jl .Lt_0110
cmp dword ptr [edx+40], ecx
jae .Lt_0106
.Lt_0110:
mov ecx, dword ptr [ebp+8]
mov edx, dword ptr [ebp-56]
mov eax, dword ptr [ebp-52]
mov dword ptr [ecx+40], edx
mov dword ptr [ecx+44], eax
.Lt_0106:
.Lt_0105:
.Lt_0104:
.Lt_0103:
jmp .Lt_0101
.Lt_0102:
cmp dword ptr [ebp-32], 0
je .Lt_0108
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
.Lt_0108:
.Lt_0107:
mov eax, dword ptr [ebp+8]
movzx edx, byte ptr [eax+120]
add edx, dword ptr [ebp+40]
mov al, dl
mov edx, dword ptr [ebp+8]
mov byte ptr [edx+120], al
.Lt_0101:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+8]
mov dword ptr [eax+164], edx
mov edx, dword ptr [ebp-8]
mov dword ptr [ebp-4], edx
.Lt_00B6:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBADDFIELD, .-SYMBADDFIELD
.balign 16

.globl SYMBINSERTINNERUDT
SYMBINSERTINNERUDT:
.type SYMBINSERTINNERUDT, @function
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
.Lt_0111:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
jne .Lt_0114
sub esp, 12
push dword ptr [ebp+12]
push 20
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+121]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call HCALCPADDING
add esp, 32
mov dword ptr [ebp-12], eax
sub esp, 12
push dword ptr [ebp-12]
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call HCHECKUDTSIZE
add esp, 32
test eax, eax
je .Lt_0116
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
mov ebx, ecx
sar ebx, 31
add dword ptr [eax+48], ecx
adc dword ptr [eax+52], ebx
.Lt_0116:
.Lt_0115:
.Lt_0114:
.Lt_0113:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+60]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_0118
jmp .Lt_0112
.Lt_0118:
.Lt_0117:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+64]
mov dword ptr [ecx+168], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
jne .Lt_011A
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
mov dword ptr [eax+60], ecx
jmp .Lt_0119
.Lt_011A:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+64]
mov ecx, dword ptr [ebp-4]
mov dword ptr [eax+172], ecx
.Lt_0119:
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+56]
mov dword ptr [ebp-8], eax
.Lt_011B:
cmp dword ptr [ebp-4], 0
je .Lt_011C
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-8]
mov dword ptr [eax+160], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+116]
and eax, 1
test eax, eax
je .Lt_011E
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 16777216
jmp .Lt_011D
.Lt_011E:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+48]
mov ebx, dword ptr [ecx+52]
add dword ptr [eax+48], esi
adc dword ptr [eax+52], ebx
.Lt_011D:
mov esi, dword ptr [ebp-4]
mov ebx, dword ptr [esi+172]
mov dword ptr [ebp-4], ebx
jmp .Lt_011B
.Lt_011C:
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [esi+64], eax
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+116]
and esi, 1
test esi, esi
jne .Lt_0120
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
jmp .Lt_011F
.Lt_0120:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+48], 0
mov dword ptr [eax+52], 0
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [esi+40]
mov ebx, dword ptr [esi+44]
cmp dword ptr [eax+44], ebx
jl .Lt_0122
jg .Lt_0127
cmp dword ptr [eax+40], ecx
jbe .Lt_0122
.Lt_0127:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+40]
mov eax, dword ptr [ecx+44]
mov dword ptr [ebx+40], esi
mov dword ptr [ebx+44], eax
.Lt_0122:
.Lt_0121:
.Lt_011F:
mov esi, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+104]
cmp dword ptr [esi+104], ebx
jle .Lt_0124
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebx+104]
mov dword ptr [esi+104], eax
.Lt_0124:
.Lt_0123:
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
je .Lt_0126
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 32768
.Lt_0126:
.Lt_0125:
.Lt_0112:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBINSERTINNERUDT, .-SYMBINSERTINNERUDT
.balign 16

.globl HGETMAGICSTRUCTNUMBER
HGETMAGICSTRUCTNUMBER:
.type HGETMAGICSTRUCTNUMBER, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_013C:
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
call STRUCT_ANALYZE
add esp, 16
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_013D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HGETMAGICSTRUCTNUMBER, .-HGETMAGICSTRUCTNUMBER
.balign 16

.globl SYMBSTRUCTEND
SYMBSTRUCTEND:
.type SYMBSTRUCTEND, @function
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.Lt_0187:
cmp dword ptr [ebp+12], 0
je .Lt_018A
sub esp, 12
push 0
call SYMBNESTEND
add esp, 16
.Lt_018A:
.Lt_0189:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
mov dword ptr [ebx+108], esi
mov dword ptr [ebx+112], ecx
sub esp, 12
push dword ptr [ebp+8]
push 20
mov esi, dword ptr [ebp+8]
movzx ecx, byte ptr [esi+121]
push ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call HCALCPADDING
add esp, 32
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp-24]
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call HCHECKUDTSIZE
add esp, 32
test eax, eax
je .Lt_018C
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-24]
mov ecx, esi
sar ecx, 31
add dword ptr [eax+40], esi
adc dword ptr [eax+44], ecx
.Lt_018C:
.Lt_018B:
sub esp, 8
push dword ptr [ebp+8]
lea esi, [ebp-20]
push esi
call SYMBUDTDECLAREDEFAULTMEMBERS
add esp, 16
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+128], 0
sub esp, 12
push dword ptr [ebp+8]
call HGETRETURNTYPE
add esp, 16
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+124], eax
sub esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call SYMBUDTIMPLEMENTDEFAULTMEMBERS
add esp, 16
cmp dword ptr [SYMB+98684], 0
jle .Lt_018E
sub esp, 12
push dword ptr [ebp+8]
call SYMBCHECKFWDREF
add esp, 16
.Lt_018E:
.Lt_018D:
.Lt_0188:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBSTRUCTEND, .-SYMBSTRUCTEND
.balign 16

.globl SYMBDELSTRUCT
SYMBDELSTRUCT:
.type SYMBDELSTRUCT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_018F:
sub esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp+8]
call SYMBDELNAMESPACEMEMBERS
add esp, 16
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+136], 0
je .Lt_0192
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+136]
call free
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+136], 0
.Lt_0192:
.Lt_0191:
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 16
.Lt_0190:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBDELSTRUCT, .-SYMBDELSTRUCT
.balign 16

.globl SYMBUDTGETFIRSTFIELD
SYMBUDTGETFIRSTFIELD:
.type SYMBUDTGETFIRSTFIELD, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_019A:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HSKIPTOFIELD
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_019B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size SYMBUDTGETFIRSTFIELD, .-SYMBUDTGETFIRSTFIELD
.balign 16

.globl SYMBUDTGETNEXTFIELD
SYMBUDTGETNEXTFIELD:
.type SYMBUDTGETNEXTFIELD, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_019C:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+172]
call HSKIPTOFIELD
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_019D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size SYMBUDTGETNEXTFIELD, .-SYMBUDTGETNEXTFIELD
.balign 16

.globl SYMBUDTGETNEXTINITABLEFIELD
SYMBUDTGETNEXTINITABLEFIELD:
.type SYMBUDTGETNEXTINITABLEFIELD, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A6:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.Lt_01A8:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_01AC
jmp .Lt_01A9
.Lt_01AC:
.Lt_01AB:
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call HFINDCOMMONPARENT
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_01AE
jmp .Lt_01A9
.Lt_01AE:
.Lt_01AD:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
jne .Lt_01B0
jmp .Lt_01A9
.Lt_01B0:
.Lt_01AF:
.Lt_01AA:
jmp .Lt_01A8
.Lt_01A9:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_01A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBUDTGETNEXTINITABLEFIELD, .-SYMBUDTGETNEXTINITABLEFIELD
.balign 16

.globl SYMBGETUDTBASELEVEL
SYMBGETUDTBASELEVEL:
.type SYMBGETUDTBASELEVEL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B1:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_01B4
mov dword ptr [ebp-4], 0
jmp .Lt_01B2
.Lt_01B4:
.Lt_01B3:
mov dword ptr [ebp-8], 1
.Lt_01B5:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+96], 0
je .Lt_01B6
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+96]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+32], ebx
jne .Lt_01B8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_01B2
.Lt_01B8:
.Lt_01B7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+96]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp+8], ebx
inc dword ptr [ebp-8]
jmp .Lt_01B5
.Lt_01B6:
mov dword ptr [ebp-4], 0
.Lt_01B2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBGETUDTBASELEVEL, .-SYMBGETUDTBASELEVEL
.balign 16

.globl SYMBCLONESIMPLESTRUCT
SYMBCLONESIMPLESTRUCT:
.type SYMBCLONESIMPLESTRUCT, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_01BB:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call SYMBUNIQUELABEL
push eax
push 0
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 48
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_01BE:
cmp dword ptr [ebp-12], 0
je .Lt_01BF
sub esp, 8
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+28]
push offset Lt_01C0
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
push dword ptr [ebp-8]
call SYMBADDFIELD
add esp, 48
sub esp, 12
push dword ptr [ebp-12]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_01BE
.Lt_01BF:
sub esp, 8
push 0
push dword ptr [ebp-8]
call SYMBSTRUCTEND
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_01BC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size SYMBCLONESIMPLESTRUCT, .-SYMBCLONESIMPLESTRUCT

.section .bss
.balign 4
	.lcomm	Lt_01C1,16

.section .data
.balign 4
Lt_01C0:
.int Lt_01C1
.int Lt_01C1
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
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
HCALCPADDING:
.type HCALCPADDING, @function
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_009A:
sub esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call TYPECALCNATURALALIGN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
jne .Lt_009D
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+16], eax
jmp .Lt_009C
.Lt_009D:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+16], eax
jle .Lt_009F
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+16], eax
.Lt_009F:
.Lt_009E:
.Lt_009C:
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
.Lt_009B:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HCALCPADDING, .-HCALCPADDING
.balign 16
HCHECKUDTSIZE:
.type HCHECKUDTSIZE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A0:
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
jb .Lt_00A3
ja .Lt_01C2
cmp dword ptr [ebp-12], 2147483647
jbe .Lt_00A3
.Lt_01C2:
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push 0
push 51
call ERRREPORT
add esp, 16
jmp .Lt_00A2
.Lt_00A3:
mov dword ptr [ebp-4], -1
.Lt_00A2:
.Lt_00A1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKUDTSIZE, .-HCHECKUDTSIZE
.balign 16
STRUCT_ANALYZE:
.type STRUCT_ANALYZE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0128:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-4], ebx
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_012A:
cmp dword ptr [ebp+8], 0
je .Lt_012B
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
mov ecx, -1
jg .Lt_01C6
jl .Lt_01C7
cmp dword ptr [eax+48], 7
ja .Lt_01C6
.Lt_01C7:
xor ecx, ecx
.Lt_01C6:
and ebx, ecx
je .Lt_012D
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], 2
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 8
.Lt_012D:
.Lt_012C:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 480
je .Lt_012E
mov dword ptr [ebp-8], 24
jmp .Lt_01C3
.Lt_012E:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 31
mov dword ptr [ebp-8], ecx
.Lt_01C3:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx], 3
jne .Lt_0131
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+32]
call STRUCT_ANALYZE
add esp, 16
jmp .Lt_0130
.Lt_0131:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 480
je .Lt_0133
mov dword ptr [ebp-12], 24
jmp .Lt_01C4
.Lt_0133:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 31
mov dword ptr [ebp-12], ecx
.Lt_01C4:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx], 0
jne .Lt_0132
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx], 1
jne .Lt_0136
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 1
jmp .Lt_0135
.Lt_0136:
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 4
.Lt_0135:
.Lt_0132:
.Lt_0130:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp+8], eax
jmp .Lt_012A
.Lt_012B:
cmp dword ptr [ebp-4], 8
jle .Lt_0138
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx]
add ebx, dword ptr [eax]
cmp ebx, 1
jne .Lt_013A
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 5
jmp .Lt_0139
.Lt_013A:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebx]
cmp ecx, 2
jne .Lt_013B
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 10
.Lt_013B:
.Lt_0139:
.Lt_0138:
.Lt_0137:
.Lt_0129:
pop ebx
mov esp, ebp
pop ebp
ret
.size STRUCT_ANALYZE, .-STRUCT_ANALYZE
.balign 16
HGETRETURNTYPEGAS64LINUX:
.type HGETRETURNTYPEGAS64LINUX, @function
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_013E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [SYMB_DTYPETB+368]
sal ebx, 1
mov esi, ebx
mov ecx, esi
sar ecx, 31
cmp dword ptr [eax+44], ecx
jg .Lt_0141
jl .Lt_01C8
cmp dword ptr [eax+40], esi
ja .Lt_0141
.Lt_01C8:
sub esp, 12
push dword ptr [ebp+8]
call HGETMAGICSTRUCTNUMBER
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0143
.Lt_0145:
mov dword ptr [ebp-4], 13
jmp .Lt_013F
jmp .Lt_0142
.Lt_0146:
mov dword ptr [ebp-4], 16
jmp .Lt_013F
jmp .Lt_0142
.Lt_0147:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 2
mov dword ptr [ebp-4], 20
jmp .Lt_013F
jmp .Lt_0142
.Lt_0148:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 3
mov dword ptr [ebp-4], 20
jmp .Lt_013F
jmp .Lt_0142
.Lt_0149:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 5
mov dword ptr [ebp-4], 52
jmp .Lt_013F
jmp .Lt_0142
.Lt_014A:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 6
mov dword ptr [ebp-4], 20
jmp .Lt_013F
jmp .Lt_0142
.Lt_014B:
mov dword ptr [ebp-4], 20
jmp .Lt_013F
jmp .Lt_0142
.Lt_0143:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 9
ja .Lt_014B
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_014C+eax*4-4]
.LT_014C:
.int .Lt_0145
.int .Lt_0146
.int .Lt_014B
.int .Lt_014B
.int .Lt_0147
.int .Lt_0149
.int .Lt_014B
.int .Lt_014B
.int .Lt_0148
.int .Lt_014A
.Lt_0142:
.Lt_0141:
.Lt_0140:
mov dword ptr [ebp-4], 52
.Lt_013F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETRETURNTYPEGAS64LINUX, .-HGETRETURNTYPEGAS64LINUX
.balign 16
HGETRETURNTYPE:
.type HGETRETURNTYPE, @function
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_014D:
sub esp, 12
push dword ptr [ebp+8]
call SYMBCOMPISTRIVIAL
add esp, 16
test eax, eax
jne .Lt_0150
mov dword ptr [ebp-4], 52
jmp .Lt_014E
.Lt_0150:
.Lt_014F:
cmp dword ptr [ENV+104], 1
jne .Lt_0152
mov dword ptr [ebp-4], 20
jmp .Lt_014E
.Lt_0152:
.Lt_0151:
call FBIS64BIT
test eax, eax
je .Lt_0154
cmp dword ptr [ENV+104], 3
jne .Lt_0156
cmp dword ptr [ENV+108], 2
jne .Lt_0158
sub esp, 12
push dword ptr [ebp+8]
call HGETRETURNTYPEGAS64LINUX
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_014E
.Lt_0158:
.Lt_0157:
.Lt_0156:
.Lt_0155:
.Lt_0154:
.Lt_0153:
mov eax, dword ptr [ENV+260]
and eax, 16
test eax, eax
jne .Lt_015A
mov dword ptr [ebp-4], 52
jmp .Lt_014E
.Lt_015A:
.Lt_0159:
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
jne .Lt_01C9
cmp ebx, esi
je .Lt_015C
.Lt_01C9:
mov dword ptr [ebp-4], 20
jmp .Lt_014E
.Lt_015C:
.Lt_015B:
mov esi, dword ptr [ebp-16]
mov dword ptr [ebp-28], esi
jmp .Lt_015E
.Lt_0160:
mov dword ptr [ebp-12], 2
jmp .Lt_015D
.Lt_0161:
mov dword ptr [ebp-12], 5
jmp .Lt_015D
.Lt_0162:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+44], 0
jne .Lt_0164
cmp dword ptr [eax+40], 2
jne .Lt_0164
.Lt_01CA:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jl .Lt_0166
jg .Lt_01CB
cmp dword ptr [eax+40], 4
jb .Lt_0166
.Lt_01CB:
mov dword ptr [ebp-12], 8
.Lt_0166:
.Lt_0165:
.Lt_0164:
.Lt_0163:
jmp .Lt_015D
.Lt_0167:
.Lt_0168:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-8]
call SYMBUDTGETNEXTFIELD
add esp, 16
test eax, eax
je .Lt_016C
jmp .Lt_0169
.Lt_016C:
.Lt_016B:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+28]
and esi, 511
cmp esi, 15
jne .Lt_016E
mov dword ptr [ebp-12], 15
.Lt_016E:
.Lt_016D:
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [esi+28]
and eax, 511
cmp eax, 20
je .Lt_0170
jmp .Lt_0169
.Lt_0170:
.Lt_016F:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+32]
mov dword ptr [ebp+8], esi
.Lt_016A:
jmp .Lt_0168
.Lt_0169:
cmp dword ptr [ebp-12], 0
jne .Lt_0172
mov dword ptr [ebp-12], 8
.Lt_0172:
.Lt_0171:
jmp .Lt_015D
.Lt_0173:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+44], 0
jne .Lt_0175
cmp dword ptr [eax+40], 4
jne .Lt_0175
.Lt_01CC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jl .Lt_0177
jg .Lt_01CD
cmp dword ptr [eax+40], 8
jb .Lt_0177
.Lt_01CD:
mov dword ptr [ebp-12], 13
.Lt_0177:
.Lt_0176:
.Lt_0175:
.Lt_0174:
jmp .Lt_015D
.Lt_0178:
.Lt_0179:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-8]
call SYMBUDTGETNEXTFIELD
add esp, 16
test eax, eax
je .Lt_017D
jmp .Lt_017A
.Lt_017D:
.Lt_017C:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+28]
and esi, 511
cmp esi, 16
jne .Lt_017F
mov dword ptr [ebp-12], 16
.Lt_017F:
.Lt_017E:
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [esi+28]
and eax, 511
cmp eax, 20
je .Lt_0181
jmp .Lt_017A
.Lt_0181:
.Lt_0180:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+32]
mov dword ptr [ebp+8], esi
.Lt_017B:
jmp .Lt_0179
.Lt_017A:
cmp dword ptr [ebp-12], 0
jne .Lt_0183
mov dword ptr [ebp-12], 13
.Lt_0183:
.Lt_0182:
jmp .Lt_015D
.Lt_015E:
mov esi, dword ptr [ebp-28]
add esi, 4294967295
cmp esi, 7
ja .Lt_015D
mov esi, dword ptr [ebp-28]
jmp dword ptr [.LT_0184+esi*4-4]
.LT_0184:
.int .Lt_0160
.int .Lt_0161
.int .Lt_0162
.int .Lt_0167
.int .Lt_0173
.int .Lt_0173
.int .Lt_0173
.int .Lt_0178
.Lt_015D:
cmp dword ptr [ebp-12], 0
jne .Lt_0186
mov dword ptr [ebp-12], 52
.Lt_0186:
.Lt_0185:
mov esi, dword ptr [ebp-12]
mov dword ptr [ebp-4], esi
.Lt_014E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETRETURNTYPE, .-HGETRETURNTYPE
.balign 16
HSKIPTOFIELD:
.type HSKIPTOFIELD, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0194:
.Lt_0196:
cmp dword ptr [ebp+8], 0
je .Lt_0197
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
jne .Lt_0199
jmp .Lt_0197
.Lt_0199:
.Lt_0198:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp+8], ebx
jmp .Lt_0196
.Lt_0197:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_0195:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HSKIPTOFIELD, .-HSKIPTOFIELD
.balign 16
HFINDCOMMONPARENT:
.type HFINDCOMMONPARENT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_019E:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_01A0:
cmp dword ptr [ebp+8], 0
je .Lt_01A1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+12], eax
.Lt_01A2:
cmp dword ptr [ebp+12], 0
je .Lt_01A3
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jne .Lt_01A5
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_019F
.Lt_01A5:
.Lt_01A4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+164]
mov dword ptr [ebp+12], ebx
jmp .Lt_01A2
.Lt_01A3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+164]
mov dword ptr [ebp+8], eax
jmp .Lt_01A0
.Lt_01A1:
mov dword ptr [ebp-4], 0
.Lt_019F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HFINDCOMMONPARENT, .-HFINDCOMMONPARENT

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_0080:	.ascii	"base$\0"
