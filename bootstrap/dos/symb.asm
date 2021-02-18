	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBINITSYMBOLS
_SYMBINITSYMBOLS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_006B:
push 6
push 176
push 8000
lea eax, [_SYMB+4]
push eax
call _LISTINIT
add esp, 16
push 129
push 17
push 1000
lea eax, [_SYMB+98608]
push eax
call _POOLINIT
add esp, 16
mov dword ptr [_SYMB+98348], 0
push 7
push 28
push 500
lea eax, [_SYMB+98652]
push eax
call _LISTINIT
add esp, 16
mov dword ptr [_SYMB+98352], 8
mov word ptr [_SYMB+98388], 0
lea eax, [_SYMB+98408]
mov dword ptr [ebp-4], eax
lea eax, [_SYMB+98352]
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+8], 0
lea eax, [_SYMB+98352]
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+28], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+32], 0
push 0
push 8000
mov eax, dword ptr [ebp-4]
lea ebx, [eax+16]
push ebx
call _HASHINIT
add esp, 12
jmp .Lt_006E
.Lt_006F:
push 12
push 0
mov ebx, dword ptr [ebp-4]
lea eax, [ebx+16]
push eax
call _memset
add esp, 12
.Lt_006E:
lea eax, [_SYMB+98652]
push eax
call _LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+36], eax
lea eax, [_SYMB+98352]
mov dword ptr [_SYMB+98528], eax
lea eax, [_SYMB+98408]
mov dword ptr [_SYMB+98536], eax
lea eax, [_SYMB+98420]
mov dword ptr [_SYMB+98532], eax
mov dword ptr [_SYMB+36], 0
mov dword ptr [_SYMB+40], 0
push dword ptr [_SYMB+98532]
call _SYMBHASHLISTADD
add esp, 4
push 0
push 8000
lea eax, [_SYMB+98564]
push eax
call _HASHINIT
add esp, 12
push 6
push 24
push 4000
lea eax, [_SYMB+98576]
push eax
call _LISTINIT
add esp, 16
mov dword ptr [_SYMB+99036], 0
call _SYMBDATAINIT
.Lt_006C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBINIT
_SYMBINIT:
push ebp
mov ebp, esp
.Lt_0078:
cmp dword ptr [_SYMB], 0
je .Lt_007B
jmp .Lt_0079
.Lt_007B:
.Lt_007A:
call _SYMBINITSYMBOLS
call _SYMBCOMPINIT
call _SYMBMANGLEINIT
call _SYMBKEYWORDINIT
push dword ptr [ebp+8]
call _SYMBDEFINEINIT
add esp, 4
call _SYMBFWDREFINIT
call _SYMBVARINIT
call _SYMBPROCINIT
call _HINITDEFTYPETB
call _SYMBCOMPRTTIINIT
call _SYMBKEYWORDCONSTSINIT
call _SYMBKEYWORDTYPEINIT
mov dword ptr [_SYMB], -1
.Lt_0079:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBEND
_SYMBEND:
.Lt_007C:
cmp dword ptr [_SYMB], 0
jne .Lt_007F
jmp .Lt_007D
.Lt_007F:
.Lt_007E:
call _SYMBDELGLOBALTB
mov dword ptr [_SYMB+98412], 0
mov dword ptr [_SYMB+98416], 0
mov dword ptr [_SYMB+98536], 0
lea eax, [_SYMB+98576]
push eax
call _LISTEND
add esp, 4
lea eax, [_SYMB+98564]
push eax
call _HASHEND
add esp, 4
lea eax, [_SYMB+98424]
push eax
call _HASHEND
add esp, 4
call _SYMBCOMPRTTIEND
call _SYMBPROCEND
call _SYMBVAREND
call _SYMBFWDREFEND
call _SYMBDEFINEEND
call _SYMBMANGLEEND
call _SYMBCOMPEND
push dword ptr [_SYMB+98444]
lea eax, [_SYMB+98652]
push eax
call _LISTDELNODE
add esp, 8
lea eax, [_SYMB+98652]
push eax
call _LISTEND
add esp, 4
lea eax, [_SYMB+98608]
push eax
call _POOLEND
add esp, 4
lea eax, [_SYMB+4]
push eax
call _LISTEND
add esp, 4
mov dword ptr [_SYMB], 0
.Lt_007D:
ret
.balign 16

.globl _SYMBCANDUPLICATE
_SYMBCANDUPLICATE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0080:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_0083
.Lt_0085:
jmp .Lt_0081
jmp .Lt_0082
.Lt_0086:
.Lt_0087:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .Lt_008B
.Lt_008D:
jmp .Lt_0081
jmp .Lt_008A
.Lt_008B:
mov eax, dword ptr [ebp-12]
add eax, 4294967291
cmp eax, 8
ja .Lt_008A
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_008E+eax*4-20]
_.LT_008E:
.int .Lt_008D
.int .Lt_008A
.int .Lt_008A
.int .Lt_008D
.int .Lt_008D
.int .Lt_008D
.int .Lt_008D
.int .Lt_008D
.int .Lt_008D
.Lt_008A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp+8], ebx
.Lt_0089:
cmp dword ptr [ebp+8], 0
jne .Lt_0087
.Lt_0088:
jmp .Lt_0082
.Lt_008F:
.Lt_0090:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 5
je .Lt_0096
.Lt_0097:
cmp dword ptr [ebp-12], 8
je .Lt_0096
.Lt_0098:
cmp dword ptr [ebp-12], 14
je .Lt_0096
.Lt_0099:
cmp dword ptr [ebp-12], 11
jne .Lt_0095
.Lt_0096:
jmp .Lt_0081
jmp .Lt_0093
.Lt_0095:
cmp dword ptr [ebp-12], 10
jne .Lt_009A
.Lt_009B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .Lt_009D
jmp .Lt_0081
.Lt_009D:
.Lt_009C:
.Lt_009A:
.Lt_0093:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp+8], eax
.Lt_0092:
cmp dword ptr [ebp+8], 0
jne .Lt_0090
.Lt_0091:
jmp .Lt_0082
.Lt_009E:
.Lt_009F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .Lt_00A3
.Lt_00A5:
jmp .Lt_00A2
.Lt_00A6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 262144
test eax, eax
je .Lt_00A8
jmp .Lt_0081
.Lt_00A8:
.Lt_00A7:
jmp .Lt_00A2
.Lt_00A9:
cmp dword ptr [_ENV+136], 3
je .Lt_00AB
jmp .Lt_0081
.Lt_00AB:
.Lt_00AA:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_00AD
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
jne .Lt_00AF
jmp .Lt_0081
jmp .Lt_00AE
.Lt_00AF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 32
test eax, eax
je .Lt_00B1
jmp .Lt_0081
.Lt_00B1:
.Lt_00B0:
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .Lt_00B3
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 511
cmp eax, ecx
jne .Lt_00B5
jmp .Lt_0081
.Lt_00B5:
.Lt_00B4:
jmp .Lt_00B2
.Lt_00B3:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 511
cmp eax, 17
je .Lt_00B7
jmp .Lt_0081
.Lt_00B7:
.Lt_00B6:
.Lt_00B2:
jmp .Lt_00A2
.Lt_00B8:
jmp .Lt_0081
jmp .Lt_00A2
.Lt_00A3:
mov eax, dword ptr [ebp-12]
add eax, 4294967293
cmp eax, 11
ja .Lt_00B8
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00B9+eax*4-12]
_.LT_00B9:
.int .Lt_00A9
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00A9
.int .Lt_00A5
.int .Lt_00B8
.int .Lt_00A5
.int .Lt_00A6
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00A5
.int .Lt_00A5
.Lt_00A2:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+156]
mov dword ptr [ebp+8], ecx
.Lt_00A1:
cmp dword ptr [ebp+8], 0
jne .Lt_009F
.Lt_00A0:
jmp .Lt_0082
.Lt_00BA:
.Lt_00BB:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-12], eax
jmp .Lt_00BF
.Lt_00C1:
jmp .Lt_00BE
.Lt_00C2:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 262144
test ecx, ecx
je .Lt_00C4
jmp .Lt_0081
.Lt_00C4:
.Lt_00C3:
jmp .Lt_00BE
.Lt_00C5:
cmp dword ptr [_ENV+136], 3
je .Lt_00C7
jmp .Lt_0081
.Lt_00C7:
.Lt_00C6:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 3
jne .Lt_00C9
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
and eax, 32
test eax, eax
jne .Lt_00CB
jmp .Lt_0081
.Lt_00CB:
.Lt_00CA:
.Lt_00C9:
.Lt_00C8:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 1048576
test ecx, ecx
je .Lt_00CD
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+28]
and eax, 511
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp eax, ebx
jne .Lt_00CF
jmp .Lt_0081
.Lt_00CF:
.Lt_00CE:
jmp .Lt_00CC
.Lt_00CD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 17
je .Lt_00D1
jmp .Lt_0081
.Lt_00D1:
.Lt_00D0:
.Lt_00CC:
jmp .Lt_00BE
.Lt_00D2:
mov eax, dword ptr [ebp+12]
movzx ebx, word ptr [eax+36]
mov eax, dword ptr [ebp+8]
movzx ecx, word ptr [eax+36]
cmp ebx, ecx
jne .Lt_00D4
jmp .Lt_0081
.Lt_00D4:
.Lt_00D3:
jmp .Lt_00BE
.Lt_00D5:
mov ecx, dword ptr [ebp+12]
movzx ebx, word ptr [ecx+36]
mov ecx, dword ptr [ebp+8]
movzx eax, word ptr [ecx+36]
cmp ebx, eax
jne .Lt_00D7
cmp dword ptr [_ENV+136], 0
jne .Lt_00D9
jmp .Lt_0081
.Lt_00D9:
.Lt_00D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ebx, ecx
jne .Lt_00DB
jmp .Lt_0081
.Lt_00DB:
.Lt_00DA:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 1048576
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+4]
and eax, 1048576
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00DD
jmp .Lt_0081
.Lt_00DD:
.Lt_00DC:
.Lt_00D7:
.Lt_00D6:
jmp .Lt_00BE
.Lt_00DE:
jmp .Lt_0081
jmp .Lt_00BE
.Lt_00BF:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 13
ja .Lt_00DE
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00DF+eax*4-4]
_.LT_00DF:
.int .Lt_00D5
.int .Lt_00DE
.int .Lt_00C5
.int .Lt_00DE
.int .Lt_00DE
.int .Lt_00C5
.int .Lt_00C1
.int .Lt_00DE
.int .Lt_00C1
.int .Lt_00C2
.int .Lt_00DE
.int .Lt_00D2
.int .Lt_00C1
.int .Lt_00C1
.Lt_00BE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp+8], ebx
.Lt_00BD:
cmp dword ptr [ebp+8], 0
jne .Lt_00BB
.Lt_00BC:
jmp .Lt_0082
.Lt_00E0:
.Lt_00E1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .Lt_00E5
.Lt_00E7:
jmp .Lt_0081
jmp .Lt_00E4
.Lt_00E8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .Lt_00EA
jmp .Lt_0081
.Lt_00EA:
.Lt_00E9:
jmp .Lt_00E4
.Lt_00E5:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967291
cmp ebx, 6
ja .Lt_00E4
mov ebx, dword ptr [ebp-12]
jmp dword ptr [_.LT_00EB+ebx*4-20]
_.LT_00EB:
.int .Lt_00E7
.int .Lt_00E7
.int .Lt_00E7
.int .Lt_00E7
.int .Lt_00E4
.int .Lt_00E8
.int .Lt_00E7
.Lt_00E4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp+8], eax
.Lt_00E3:
cmp dword ptr [ebp+8], 0
jne .Lt_00E1
.Lt_00E2:
jmp .Lt_0082
.Lt_00EC:
jmp .Lt_0082
.Lt_0083:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 13
ja .Lt_0082
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_00ED+eax*4-4]
_.LT_00ED:
.int .Lt_00BA
.int .Lt_009E
.int .Lt_009E
.int .Lt_00EC
.int .Lt_0085
.int .Lt_0085
.int .Lt_00E0
.int .Lt_0085
.int .Lt_0086
.int .Lt_0086
.int .Lt_0085
.int .Lt_0085
.int .Lt_0086
.int .Lt_008F
.Lt_0082:
mov dword ptr [ebp-4], -1
.Lt_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBNEWSYMBOL
_SYMBNEWSYMBOL:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F0:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 0
jne .Lt_00F3
mov eax, dword ptr [_SYMB+98536]
mov dword ptr [ebp+16], eax
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
jne .Lt_00F5
cmp dword ptr [_PARSER+96], 0
jne .Lt_00F7
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
jne .Lt_00F9
lea eax, [_SYMB+98408]
mov dword ptr [ebp+16], eax
.Lt_00F9:
.Lt_00F8:
and dword ptr [ebp+44], -129
jmp .Lt_00F6
.Lt_00F7:
or dword ptr [ebp+44], 128
.Lt_00F6:
jmp .Lt_00F4
.Lt_00F5:
or dword ptr [ebp+44], 128
.Lt_00F4:
.Lt_00F3:
.Lt_00F2:
cmp dword ptr [ebp+20], 0
jne .Lt_00FB
mov eax, dword ptr [_SYMB+98532]
mov dword ptr [ebp+20], eax
.Lt_00FB:
.Lt_00FA:
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+12], 0
jne .Lt_00FD
mov dword ptr [ebp-12], -1
lea eax, [_SYMB+4]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp+12], eax
.Lt_00FD:
.Lt_00FC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+44]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+48]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+12], 0
mov bx, word ptr [_PARSER+100]
mov eax, dword ptr [ebp+12]
mov word ptr [eax+38], bx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+36]
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+40]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 2
test ebx, ebx
je .Lt_00FF
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+12]
and eax, 12288
test eax, eax
je .Lt_0101
mov eax, dword ptr [ebp+12]
mov word ptr [eax+36], 0
jmp .Lt_0100
.Lt_0101:
mov eax, dword ptr [_PARSER+104]
movzx ebx, word ptr [eax+36]
inc ebx
mov eax, dword ptr [ebp+12]
mov word ptr [eax+36], bx
.Lt_0100:
jmp .Lt_00FE
.Lt_00FF:
mov bx, word ptr [_PARSER+96]
mov eax, dword ptr [ebp+12]
mov word ptr [eax+36], bx
.Lt_00FE:
cmp dword ptr [ebp+28], 0
je .Lt_0102
push 0
push dword ptr [ebp+28]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-16], eax
jmp .Lt_0127
.Lt_0102:
mov dword ptr [ebp-16], 0
.Lt_0127:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jle .Lt_0105
mov eax, dword ptr [ebp-8]
inc eax
push eax
lea eax, [_SYMB+98608]
push eax
call _POOLNEWITEM
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp+8]
and eax, 1
test eax, eax
jne .Lt_0107
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
push dword ptr [ebp+28]
call _HUCASE
add esp, 8
jmp .Lt_0106
.Lt_0107:
push 0
push 0
push dword ptr [ebp+28]
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
call _fb_StrAssign
add esp, 20
.Lt_0106:
jmp .Lt_0104
.Lt_0105:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+16], 0
and dword ptr [ebp+8], -33
.Lt_0104:
cmp dword ptr [ebp+32], 0
je .Lt_0109
push 0
push dword ptr [ebp+32]
call _fb_StrLen
add esp, 8
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
push 0
push 0
push dword ptr [ebp+32]
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call _fb_StrAssign
add esp, 20
jmp .Lt_0108
.Lt_0109:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 0
.Lt_0108:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+24], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+40], 0
mov dword ptr [eax+44], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+48], 0
mov dword ptr [eax+52], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+140], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 32
test ebx, ebx
je .Lt_010B
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
call _HASHHASH
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+148], eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+148]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
mov eax, dword ptr [ebp+20]
lea ebx, [eax+4]
push ebx
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_010D
mov eax, dword ptr [ebp+12]
push dword ptr [eax+148]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
mov eax, dword ptr [ebp+20]
lea ebx, [eax+4]
push ebx
call _HASHADD
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+144], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+152], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+156], 0
jmp .Lt_010C
.Lt_010D:
mov eax, dword ptr [ebp+8]
and eax, 128
test eax, eax
jne .Lt_010F
push dword ptr [ebp+12]
push dword ptr [ebp-20]
call _SYMBCANDUPLICATE
add esp, 8
test eax, eax
jne .Lt_0111
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
lea eax, [_SYMB+98608]
push eax
call _POOLDELITEM
add esp, 8
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .Lt_0113
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call _free
add esp, 4
.Lt_0113:
.Lt_0112:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+24], 0
je .Lt_0115
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
call _free
add esp, 4
.Lt_0115:
.Lt_0114:
cmp dword ptr [ebp-12], 0
je .Lt_0117
push dword ptr [ebp+12]
lea eax, [_SYMB+4]
push eax
call _LISTDELNODE
add esp, 8
.Lt_0117:
.Lt_0116:
jmp .Lt_00F1
.Lt_0111:
.Lt_0110:
.Lt_010F:
.Lt_010E:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+144]
mov dword ptr [ebx+144], ecx
cmp dword ptr [_ENV+136], 3
jne .Lt_0119
mov dword ptr [ebp-24], 0
.Lt_011A:
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx], 6
jne .Lt_011B
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ecx+156]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .Lt_011D
jmp .Lt_011B
.Lt_011D:
.Lt_011C:
jmp .Lt_011A
.Lt_011B:
cmp dword ptr [ebp-24], 0
jne .Lt_011F
jmp .Lt_0120
.Lt_011F:
.Lt_011E:
mov ebx, dword ptr [ebp-24]
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebx+156], ecx
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ecx+152], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebx+156], ecx
cmp dword ptr [ebp-20], 0
je .Lt_0122
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx+152], ebx
.Lt_0122:
.Lt_0121:
jmp .Lt_0118
.Lt_0119:
.Lt_0120:
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [ebx+144]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx+4], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+144]
mov ecx, dword ptr [ebx+16]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+152], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+152], 0
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-20]
mov dword ptr [eax+156], ecx
.Lt_0118:
.Lt_010C:
jmp .Lt_010A
.Lt_010B:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+144], 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+152], 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+156], 0
.Lt_010A:
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+8], 0
je .Lt_0124
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax+172], ecx
jmp .Lt_0123
.Lt_0124:
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+4], eax
.Lt_0123:
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ecx+168], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+172], 0
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
mov dword ptr [ebx+160], ecx
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx+8], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+164], 0
mov ebx, dword ptr [ebp+36]
and ebx, 31
cmp ebx, 23
jne .Lt_0126
push dword ptr [ebp+12]
push dword ptr [ebp+40]
call _SYMBADDTOFWDREF
add esp, 8
.Lt_0126:
.Lt_0125:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.Lt_00F1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASHLISTADD
_SYMBHASHLISTADD:
push ebp
mov ebp, esp
push ebx
.Lt_0128:
cmp dword ptr [_SYMB+40], 0
je .Lt_012B
mov eax, dword ptr [_SYMB+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
jmp .Lt_012A
.Lt_012B:
mov ebx, dword ptr [ebp+8]
mov dword ptr [_SYMB+36], ebx
.Lt_012A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_SYMB+40]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [_SYMB+40], eax
.Lt_0129:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASHLISTADDBEFORE
_SYMBHASHLISTADDBEFORE:
push ebp
mov ebp, esp
push ebx
.Lt_012C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .Lt_012F
mov eax, dword ptr [ebp+12]
mov dword ptr [_SYMB+36], eax
jmp .Lt_012E
.Lt_012F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
.Lt_012E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+16], ecx
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx+20], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebx+16], ecx
.Lt_012D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASHLISTDEL
_SYMBHASHLISTDEL:
push ebp
mov ebp, esp
push ebx
.Lt_0130:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .Lt_0133
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+16]
mov ebx, dword ptr [eax+20]
mov dword ptr [ecx+20], ebx
jmp .Lt_0132
.Lt_0133:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+20]
mov dword ptr [_SYMB+36], ecx
.Lt_0132:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+20], 0
je .Lt_0135
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov ebx, dword ptr [ecx+16]
mov dword ptr [eax+16], ebx
jmp .Lt_0134
.Lt_0135:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [_SYMB+40], eax
.Lt_0134:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 0
.Lt_0131:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASHLISTINSERTNAMESPACE
_SYMBHASHLISTINSERTNAMESPACE:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0136:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-12], eax
.Lt_0138:
cmp dword ptr [ebp-12], 0
je .Lt_0139
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+144], 0
je .Lt_013B
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+152], 0
jne .Lt_013D
lea eax, [_SYMB+98576]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], -1
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+148]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+16]
lea ebx, [_SYMB+98564]
push ebx
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_013F
mov eax, dword ptr [ebp-12]
push dword ptr [eax+148]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
lea eax, [_SYMB+98564]
push eax
call _HASHADD
add esp, 16
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+4], 0
jmp .Lt_013E
.Lt_013F:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+16], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ecx+16]
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
mov dword ptr [ecx+12], ebx
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebx+4], ecx
.Lt_013E:
cmp dword ptr [ebp-8], 0
je .Lt_0141
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
mov dword ptr [ecx+20], ebx
jmp .Lt_0140
.Lt_0141:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_0140:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-8], ebx
.Lt_013D:
.Lt_013C:
.Lt_013B:
.Lt_013A:
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+172]
mov dword ptr [ebp-12], ecx
jmp .Lt_0138
.Lt_0139:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+92]
mov ecx, dword ptr [ebp-4]
mov dword ptr [ebx+20], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+92]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+24], ecx
.Lt_0137:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASHLISTREMOVENAMESPACE
_SYMBHASHLISTREMOVENAMESPACE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0142:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
.Lt_0144:
cmp dword ptr [ebp-4], 0
je .Lt_0145
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
je .Lt_0147
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+4], ebx
cmp dword ptr [ebp-12], 0
je .Lt_0149
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
.Lt_0149:
.Lt_0148:
jmp .Lt_0146
.Lt_0147:
cmp dword ptr [ebp-12], 0
je .Lt_014B
mov eax, dword ptr [ebp-12]
mov dword ptr [eax+12], 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
jmp .Lt_014A
.Lt_014B:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
push dword ptr [ebx+148]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
lea ebx, [_SYMB+98564]
push ebx
call _HASHDEL
add esp, 12
.Lt_014A:
.Lt_0146:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-4]
lea eax, [_SYMB+98576]
push eax
call _LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .Lt_0144
.Lt_0145:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
mov dword ptr [eax+24], 0
.Lt_0143:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBLOOKUP
_SYMBLOOKUP:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0150:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
push offset _Lt_0161
push dword ptr [ebp+8]
call _HUCASE
add esp, 8
mov eax, offset _Lt_0161
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _HASHHASH
add esp, 4
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
mov eax, dword ptr [_SYMB+40]
mov dword ptr [ebp-16], eax
.Lt_0152:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-16]
lea ebx, [eax+4]
push ebx
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .Lt_0156
call _CHAINPOOLNEXT
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-24]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebx], 6
jne .Lt_0158
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+56]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+60]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 2
je .Lt_015A
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .Lt_0151
.Lt_015A:
.Lt_0159:
.Lt_0158:
.Lt_0157:
mov ebx, dword ptr [ebp-16]
lea eax, [_SYMB+98352]
cmp dword ptr [ebx], eax
je .Lt_015C
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .Lt_0151
jmp .Lt_015B
.Lt_015C:
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
jne .Lt_015E
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .Lt_0151
.Lt_015E:
.Lt_015D:
jmp .Lt_0153
.Lt_015B:
.Lt_0156:
.Lt_0155:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-16], ebx
.Lt_0154:
cmp dword ptr [ebp-16], 0
jne .Lt_0152
.Lt_0153:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
lea ebx, [_SYMB+98564]
push ebx
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0160
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
jmp .Lt_0151
.Lt_0160:
.Lt_015F:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.Lt_0151:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0161,129

.section .text
.balign 16

.globl _SYMBLOOKUPAT
_SYMBLOOKUPAT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0178:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 9
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_017B
jmp .Lt_0179
.Lt_017B:
.Lt_017A:
cmp dword ptr [ebp+16], 0
jne .Lt_017D
push offset _Lt_018A
push dword ptr [ebp+12]
call _HUCASE
add esp, 8
mov ecx, offset _Lt_018A
mov dword ptr [ebp+12], ecx
.Lt_017D:
.Lt_017C:
push dword ptr [ebp+12]
call _HASHHASH
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea ecx, [eax+72]
push ecx
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_017F
cmp dword ptr [ebp+20], 0
jne .Lt_0181
mov dword ptr [ebp-4], 0
jmp .Lt_0179
.Lt_0181:
.Lt_0180:
jmp .Lt_017E
.Lt_017F:
call _CHAINPOOLNEXT
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp-16]
mov dword ptr [ecx+4], 0
mov ecx, dword ptr [ebp-16]
mov dword ptr [ecx+8], 0
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ecx
jmp .Lt_0179
.Lt_017E:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+92], 0
jne .Lt_0183
mov dword ptr [ebp-4], 0
jmp .Lt_0179
.Lt_0183:
.Lt_0182:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+92]
cmp dword ptr [eax], 0
jne .Lt_0185
mov dword ptr [ebp-4], 0
jmp .Lt_0179
.Lt_0185:
.Lt_0184:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp+8], eax
jne .Lt_0187
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HLOOKUPIMPORTHASH
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0179
jmp .Lt_0186
.Lt_0187:
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HLOOKUPIMPORTLIST
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0186:
.Lt_0179:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_018A,129

.section .text
.balign 16

.globl _SYMBLOOKUPBYNAMEANDCLASS
_SYMBLOOKUPBYNAMEANDCLASS:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_018B:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_018E
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_018D
.Lt_018E:
mov dword ptr [ebp-4], 0
.Lt_018D:
.Lt_018C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDBYCLASS
_SYMBFINDBYCLASS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_018F:
mov dword ptr [ebp-12], 0
.Lt_0191:
cmp dword ptr [ebp+8], 0
je .Lt_0192
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_0193:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .Lt_0197
mov dword ptr [ebp-12], -1
jmp .Lt_0192
.Lt_0197:
.Lt_0196:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
.Lt_0195:
cmp dword ptr [ebp-8], 0
jne .Lt_0193
.Lt_0194:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+8], eax
jmp .Lt_0191
.Lt_0192:
cmp dword ptr [ebp-12], 0
jne .Lt_0199
mov dword ptr [ebp-4], 0
jmp .Lt_0190
.Lt_0199:
.Lt_0198:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .Lt_019B
push dword ptr [ebp-8]
call _SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .Lt_019D
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0190
jmp .Lt_019C
.Lt_019D:
mov dword ptr [ebp-4], 0
jmp .Lt_0190
.Lt_019C:
.Lt_019B:
.Lt_019A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0190:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDVARBYSUFFIX
_SYMBFINDVARBYSUFFIX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_019E:
cmp dword ptr [ebp+12], 17
jne .Lt_01A1
.Lt_01A2:
cmp dword ptr [ebp+8], 0
je .Lt_01A3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_01A4:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 1
jne .Lt_01A8
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 17
je .Lt_01AC
.Lt_01AD:
cmp dword ptr [ebp-12], 18
je .Lt_01AC
.Lt_01AE:
cmp dword ptr [ebp-12], 4
jne .Lt_01AB
.Lt_01AC:
jmp .Lt_01AF
.Lt_01AB:
.Lt_01A9:
.Lt_01A8:
.Lt_01A7:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
.Lt_01A6:
cmp dword ptr [ebp-8], 0
jne .Lt_01A4
.Lt_01A5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+8], eax
jmp .Lt_01A2
.Lt_01A3:
jmp .Lt_01A0
.Lt_01A1:
.Lt_01B0:
cmp dword ptr [ebp+8], 0
je .Lt_01B1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_01B2:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 1
jne .Lt_01B6
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+12]
cmp eax, ebx
jne .Lt_01B8
jmp .Lt_01AF
.Lt_01B8:
.Lt_01B7:
.Lt_01B6:
.Lt_01B5:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.Lt_01B4:
cmp dword ptr [ebp-8], 0
jne .Lt_01B2
.Lt_01B3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .Lt_01B0
.Lt_01B1:
.Lt_01A0:
mov dword ptr [ebp-4], 0
jmp .Lt_019F
.Lt_01AF:
push dword ptr [ebp-8]
call _SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .Lt_01BA
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01B9
.Lt_01BA:
mov dword ptr [ebp-4], 0
.Lt_01B9:
.Lt_019F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDVARBYDEFTYPE
_SYMBFINDVARBYDEFTYPE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_01BB:
cmp dword ptr [ebp+12], 17
jne .Lt_01BE
.Lt_01BF:
cmp dword ptr [ebp+8], 0
je .Lt_01C0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_01C1:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 1
jne .Lt_01C5
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_01C7
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 17
je .Lt_01CB
.Lt_01CC:
cmp dword ptr [ebp-12], 18
je .Lt_01CB
.Lt_01CD:
cmp dword ptr [ebp-12], 4
jne .Lt_01CA
.Lt_01CB:
jmp .Lt_01CE
.Lt_01CA:
.Lt_01C8:
jmp .Lt_01C6
.Lt_01C7:
jmp .Lt_01CE
.Lt_01C6:
.Lt_01C5:
.Lt_01C4:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.Lt_01C3:
cmp dword ptr [ebp-8], 0
jne .Lt_01C1
.Lt_01C2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .Lt_01BF
.Lt_01C0:
jmp .Lt_01BD
.Lt_01BE:
.Lt_01CF:
cmp dword ptr [ebp+8], 0
je .Lt_01D0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_01D1:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .Lt_01D5
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .Lt_01D7
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+12]
cmp eax, ebx
jne .Lt_01D9
jmp .Lt_01CE
.Lt_01D9:
.Lt_01D8:
jmp .Lt_01D6
.Lt_01D7:
jmp .Lt_01CE
.Lt_01D6:
.Lt_01D5:
.Lt_01D4:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.Lt_01D3:
cmp dword ptr [ebp-8], 0
jne .Lt_01D1
.Lt_01D2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .Lt_01CF
.Lt_01D0:
.Lt_01BD:
mov dword ptr [ebp-4], 0
jmp .Lt_01BC
.Lt_01CE:
push dword ptr [ebp-8]
call _SYMBVARCHECKACCESS
add esp, 4
test eax, eax
je .Lt_01DB
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01DA
.Lt_01DB:
mov dword ptr [ebp-4], 0
.Lt_01DA:
.Lt_01BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFINDBYCLASSANDTYPE
_SYMBFINDBYCLASSANDTYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01DC:
mov dword ptr [ebp-4], 0
.Lt_01DE:
cmp dword ptr [ebp+8], 0
je .Lt_01DF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_01E0:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
cmp eax, dword ptr [ebx]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
cmp ecx, dword ptr [ebx+28]
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_01E4
cmp dword ptr [ebp+12], 1
jne .Lt_01E6
push dword ptr [ebp-8]
call _SYMBVARCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_01E8
jmp .Lt_01DD
.Lt_01E8:
.Lt_01E7:
.Lt_01E6:
.Lt_01E5:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01DD
.Lt_01E4:
.Lt_01E3:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+156]
mov dword ptr [ebp-8], ecx
.Lt_01E2:
cmp dword ptr [ebp-8], 0
jne .Lt_01E0
.Lt_01E1:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp+8], eax
jmp .Lt_01DE
.Lt_01DF:
.Lt_01DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELFROMCHAINLIST
_SYMBDELFROMCHAINLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01EB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+152]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-4], 0
je .Lt_01EE
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+156], ebx
cmp dword ptr [ebp-8], 0
je .Lt_01F0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+152], eax
.Lt_01F0:
.Lt_01EF:
jmp .Lt_01ED
.Lt_01EE:
cmp dword ptr [ebp-8], 0
je .Lt_01F2
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+152], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+144]
mov ebx, dword ptr [eax+16]
mov dword ptr [ecx], ebx
jmp .Lt_01F1
.Lt_01F2:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+148]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+144]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+140]
lea ebx, [ecx+4]
push ebx
call _HASHDEL
add esp, 12
.Lt_01F1:
.Lt_01ED:
.Lt_01EC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELFROMHASH
_SYMBDELFROMHASH:
push ebp
mov ebp, esp
.Lt_01F3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+144], 0
jne .Lt_01F6
jmp .Lt_01F4
.Lt_01F6:
.Lt_01F5:
push dword ptr [ebp+8]
call _SYMBDELFROMCHAINLIST
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+144], 0
.Lt_01F4:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFREESYMBOL
_SYMBFREESYMBOL:
push ebp
mov ebp, esp
push ebx
.Lt_01F7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 31
cmp ebx, 23
jne .Lt_01FA
push dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call _SYMBREMOVEFROMFWDREF
add esp, 8
.Lt_01FA:
.Lt_01F9:
push dword ptr [ebp+8]
call _SYMBDELFROMHASH
add esp, 4
push dword ptr [ebp+8]
call _SYMBFREESYMBOL_UNLINKONLY
add esp, 4
push dword ptr [ebp+8]
call _SYMBFREESYMBOL_REMONLY
add esp, 4
.Lt_01F8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFREESYMBOL_REMONLY
_SYMBFREESYMBOL_REMONLY:
push ebp
mov ebp, esp
.Lt_01FB:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
lea eax, [_SYMB+98608]
push eax
call _POOLDELITEM
add esp, 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_01FE
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _free
add esp, 4
.Lt_01FE:
.Lt_01FD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .Lt_0200
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _free
add esp, 4
.Lt_0200:
.Lt_01FF:
push dword ptr [ebp+8]
lea eax, [_SYMB+4]
push eax
call _LISTDELNODE
add esp, 8
.Lt_01FC:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFREESYMBOL_UNLINKONLY
_SYMBFREESYMBOL_UNLINKONLY:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0201:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+168]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0204
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+172], eax
jmp .Lt_0203
.Lt_0204:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+4], ebx
.Lt_0203:
cmp dword ptr [ebp-12], 0
je .Lt_0206
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+168], eax
jmp .Lt_0205
.Lt_0206:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.Lt_0205:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+168], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+172], 0
.Lt_0202:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELSYMBOL
_SYMBDELSYMBOL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0207:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .Lt_020A
.Lt_020C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBDELVAR
add esp, 8
jmp .Lt_0209
.Lt_020D:
push dword ptr [ebp+8]
call _SYMBDELCONST
add esp, 4
jmp .Lt_0209
.Lt_020E:
push dword ptr [ebp+8]
call _SYMBDELPROTOTYPE
add esp, 4
jmp .Lt_0209
.Lt_020F:
push dword ptr [ebp+8]
call _SYMBDELDEFINE
add esp, 4
jmp .Lt_0209
.Lt_0210:
push dword ptr [ebp+8]
call _SYMBDELLABEL
add esp, 4
jmp .Lt_0209
.Lt_0211:
push dword ptr [ebp+8]
call _SYMBDELENUM
add esp, 4
jmp .Lt_0209
.Lt_0212:
push dword ptr [ebp+8]
call _SYMBDELSTRUCT
add esp, 4
jmp .Lt_0209
.Lt_0213:
push dword ptr [ebp+8]
call _SYMBDELSCOPE
add esp, 4
jmp .Lt_0209
.Lt_0214:
push dword ptr [ebp+8]
call _SYMBDELNAMESPACE
add esp, 4
jmp .Lt_0209
.Lt_0215:
push 0
push dword ptr [ebp+8]
call _SYMBNAMESPACEREMOVE
add esp, 8
jmp .Lt_0209
.Lt_0216:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL
add esp, 4
jmp .Lt_0209
.Lt_020A:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967295
cmp ebx, 15
ja .Lt_0216
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.LT_0217+ebx*4-4]
_.LT_0217:
.int .Lt_020C
.int .Lt_020D
.int .Lt_020E
.int .Lt_0216
.int .Lt_020F
.int .Lt_0216
.int .Lt_0210
.int .Lt_0214
.int .Lt_0211
.int .Lt_0212
.int .Lt_0216
.int .Lt_020C
.int .Lt_0216
.int .Lt_0216
.int .Lt_0213
.int .Lt_0215
.Lt_0209:
.Lt_0208:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCLONESYMBOL
_SYMBCLONESYMBOL:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0218:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .Lt_021B
.Lt_021D:
push dword ptr [ebp+8]
call _SYMBADDPROCPTRFROMFUNCTION
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_021A
.Lt_021E:
push dword ptr [ebp+8]
call _SYMBCLONEVAR
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_021A
.Lt_021F:
push dword ptr [ebp+8]
call _SYMBCLONECONST
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_021A
.Lt_0220:
push dword ptr [ebp+8]
call _SYMBCLONELABEL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_021A
.Lt_0221:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 8192
test ebx, ebx
je .Lt_0223
lea ebx, [ebp-12]
push ebx
lea ebx, [ebp-8]
push ebx
push dword ptr [ebp+8]
call _SYMBGETDESCTYPEARRAYDTYPE
add esp, 12
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _SYMBGETDESCTYPEDIMENSIONS
add esp, 4
push eax
call _SYMBADDARRAYDESCRIPTORTYPE
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0222
.Lt_0223:
push dword ptr [ebp+8]
call _SYMBCLONESIMPLESTRUCT
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0222:
jmp .Lt_021A
.Lt_0224:
mov dword ptr [ebp-4], 0
jmp .Lt_021A
.Lt_021B:
mov eax, dword ptr [ebp-16]
add eax, 4294967295
cmp eax, 9
ja .Lt_0224
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_0225+eax*4-4]
_.LT_0225:
.int .Lt_021E
.int .Lt_021F
.int .Lt_021D
.int .Lt_0224
.int .Lt_0224
.int .Lt_0224
.int .Lt_0220
.int .Lt_0224
.int .Lt_0224
.int .Lt_0221
.Lt_021A:
.Lt_0219:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELGLOBALTB
_SYMBDELGLOBALTB:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0226:
.Lt_0228:
mov eax, dword ptr [_SYMB+98416]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_022C
jmp .Lt_0229
.Lt_022C:
.Lt_022B:
push -1
push dword ptr [ebp-4]
call _SYMBDELSYMBOL
add esp, 8
.Lt_022A:
jmp .Lt_0228
.Lt_0229:
.Lt_0227:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELSYMBOLTB
_SYMBDELSYMBOLTB:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_022D:
cmp dword ptr [ebp+12], 0
je .Lt_0230
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.Lt_0231:
cmp dword ptr [ebp-4], 0
je .Lt_0232
push dword ptr [ebp-4]
call _SYMBDELFROMHASH
add esp, 4
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 16
jne .Lt_0234
push -1
push dword ptr [ebp-4]
call _SYMBNAMESPACEREMOVE
add esp, 8
.Lt_0234:
.Lt_0233:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-4], eax
jmp .Lt_0231
.Lt_0232:
jmp .Lt_022F
.Lt_0230:
.Lt_0235:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_0239
jmp .Lt_0236
.Lt_0239:
.Lt_0238:
push -1
push dword ptr [ebp-4]
call _SYMBDELSYMBOL
add esp, 8
.Lt_0237:
jmp .Lt_0235
.Lt_0236:
.Lt_022F:
.Lt_022E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASCTOR
_SYMBHASCTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_023A:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _TYPEHASCTOR
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_023B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASDEFCTOR
_SYMBHASDEFCTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_023C:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _TYPEHASDEFCTOR
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_023D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBHASDTOR
_SYMBHASDTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_023E:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _TYPEHASDTOR
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_023F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBISDATADESC
_SYMBISDATADESC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0240:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .Lt_0243
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
cmp eax, dword ptr [_AST+116]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_0243:
.Lt_0242:
.Lt_0241:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBISARRAY
_SYMBISARRAY:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0245:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .Lt_024A
.Lt_024B:
cmp dword ptr [ebp-8], 12
jne .Lt_0249
.Lt_024A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .Lt_0247
.Lt_0249:
mov dword ptr [ebp-4], 0
.Lt_024C:
.Lt_0247:
.Lt_0246:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBISSTRING
_SYMBISSTRING:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_024E:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_0251
.Lt_0253:
mov dword ptr [ebp-4], -1
jmp .Lt_0250
.Lt_0254:
mov dword ptr [ebp-4], 0
jmp .Lt_0250
.Lt_0251:
mov eax, dword ptr [ebp-8]
add eax, 4294967292
cmp eax, 14
ja .Lt_0254
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0255+eax*4-16]
_.LT_0255:
.int .Lt_0253
.int .Lt_0254
.int .Lt_0254
.int .Lt_0253
.int .Lt_0254
.int .Lt_0254
.int .Lt_0254
.int .Lt_0254
.int .Lt_0254
.int .Lt_0254
.int .Lt_0254
.int .Lt_0254
.int .Lt_0254
.int .Lt_0253
.int .Lt_0253
.Lt_0250:
.Lt_024F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETVALISTTYPE
_SYMBGETVALISTTYPE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0256:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .Lt_0259
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_025C
.Lt_025D:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .Lt_025F
mov dword ptr [ebp-4], 2
.Lt_025F:
.Lt_025E:
jmp .Lt_025A
.Lt_025C:
cmp dword ptr [ebp-8], 20
jne .Lt_0260
.Lt_0261:
cmp dword ptr [ebp+12], 0
je .Lt_0263
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+116]
and ebx, 15728640
sar ebx, 20
mov dword ptr [ebp-4], ebx
.Lt_0263:
.Lt_0262:
jmp .Lt_025A
.Lt_0260:
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_0265
mov dword ptr [ebp-12], 24
jmp .Lt_0274
.Lt_0265:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_0274:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .Lt_0268
mov ebx, dword ptr [ebp+8]
and ebx, 480
test ebx, ebx
je .Lt_026A
mov dword ptr [ebp-4], 1
.Lt_026A:
.Lt_0269:
.Lt_0268:
.Lt_0267:
.Lt_0264:
.Lt_025A:
jmp .Lt_0258
.Lt_0259:
cmp dword ptr [ebp+12], 0
je .Lt_026B
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_026E
.Lt_026F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 32505856
sar ebx, 20
cmp ebx, 19
jne .Lt_0271
mov dword ptr [ebp-4], 2
.Lt_0271:
.Lt_0270:
jmp .Lt_026C
.Lt_026E:
cmp dword ptr [ebp-8], 20
jne .Lt_0272
.Lt_0273:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+116]
and eax, 15728640
sar eax, 20
mov dword ptr [ebp-4], eax
.Lt_0272:
.Lt_026C:
.Lt_026B:
.Lt_0258:
.Lt_0257:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBTYPETOSTR
_SYMBTYPETOSTR:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0275:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], -2147483648
jne .Lt_0278
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0276
.Lt_0278:
.Lt_0277:
cmp dword ptr [ebp+20], 0
jg .Lt_027A
jl .Lt_02A1
cmp dword ptr [ebp+16], 0
ja .Lt_027A
.Lt_02A1:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp+16], eax
mov dword ptr [ebp+20], edx
.Lt_027A:
.Lt_0279:
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-28]
add eax, 9
mov edx, 1
mov ecx, eax
sal edx, cl
and edx, dword ptr [ebp+8]
test edx, edx
je .Lt_027C
push 0
push 7
push offset _Lt_027D
push -1
lea edx, [ebp-24]
push edx
call _fb_StrAssign
add esp, 20
jmp .Lt_027B
.Lt_027C:
push 0
push 1
push offset _Lt_0000
push -1
lea edx, [ebp-24]
push edx
call _fb_StrAssign
add esp, 20
.Lt_027B:
mov edx, dword ptr [ebp-32]
mov dword ptr [ebp-36], edx
jmp .Lt_027F
.Lt_0281:
push 0
push -1
push dword ptr [ebp+12]
call _HGETNAMESPACEPREFIX
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_027E
.Lt_0283:
push 0
push -1
push 0
mov eax, dword ptr [ebp-32]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+24]
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov edx, ebx
sar edx, 31
cmp dword ptr [ebp+20], edx
mov eax, -1
jne .Lt_02A2
cmp dword ptr [ebp+16], ebx
jne .Lt_02A2
.Lt_02A3:
xor eax, eax
.Lt_02A2:
or eax, dword ptr [ebp+24]
je .Lt_0286
cmp dword ptr [ebp-32], 18
jne .Lt_0288
.Lt_0289:
add dword ptr [ebp+16], 4294967295
adc dword ptr [ebp+20], 4294967295
jmp .Lt_0287
.Lt_0288:
cmp dword ptr [ebp-32], 7
jne .Lt_028A
.Lt_028B:
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call ___divdi3
add esp, 16
mov dword ptr [ebp+16], eax
mov dword ptr [ebp+20], edx
.Lt_028A:
.Lt_0287:
push 0
push 4
push offset _Lt_028C
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0286:
.Lt_0285:
jmp .Lt_027E
.Lt_028D:
cmp dword ptr [ebp-28], 0
jle .Lt_028F
dec dword ptr [ebp-28]
.Lt_028F:
.Lt_028E:
cmp dword ptr [ebp-28], 0
jle .Lt_0291
push 0
push 8
push offset _Lt_0292
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0291:
.Lt_0290:
push 0
push -1
push dword ptr [ebp+12]
call _SYMBPROCPTRTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp-28], 0
jle .Lt_0294
push 0
push 2
push offset _Lt_0295
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0294:
.Lt_0293:
jmp .Lt_027E
.Lt_0296:
push 0
push -1
push 0
mov eax, dword ptr [ebp-32]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+24]
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_027E
.Lt_027F:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 19
ja .Lt_0296
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.LT_0298+eax*4-16]
_.LT_0298:
.int .Lt_0283
.int .Lt_0296
.int .Lt_0296
.int .Lt_0283
.int .Lt_0296
.int .Lt_0296
.int .Lt_0281
.int .Lt_0296
.int .Lt_0296
.int .Lt_0296
.int .Lt_0296
.int .Lt_0296
.int .Lt_0296
.int .Lt_0296
.int .Lt_0283
.int .Lt_0296
.int .Lt_0281
.int .Lt_0296
.int .Lt_028D
.int .Lt_0281
.Lt_027E:
mov eax, dword ptr [ebp-28]
dec eax
mov dword ptr [ebp-36], eax
jmp .Lt_0299
.Lt_029C:
mov eax, dword ptr [ebp-36]
add eax, 9
mov edx, 1
mov ecx, eax
sal edx, cl
and edx, dword ptr [ebp+8]
test edx, edx
je .Lt_029E
push 0
push 7
push offset _Lt_029F
push -1
lea edx, [ebp-24]
push edx
call _fb_StrConcatAssign
add esp, 20
.Lt_029E:
.Lt_029D:
push 0
push 5
push offset _Lt_02A0
push -1
lea edx, [ebp-24]
push edx
call _fb_StrConcatAssign
add esp, 20
.Lt_029A:
dec dword ptr [ebp-36]
.Lt_0299:
cmp dword ptr [ebp-36], 0
jge .Lt_029C
.Lt_029B:
push 0
push -1
lea edx, [ebp-24]
push edx
push -1
lea edx, [ebp-12]
push edx
call _fb_StrAssign
add esp, 20
lea edx, [ebp-24]
push edx
call _fb_StrDelete
add esp, 4
.Lt_0276:
lea edx, [ebp-12]
push edx
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETDEFTYPE
_SYMBGETDEFTYPE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_02A4:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 97
setae bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp-8], 122
setbe al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_02A9
add dword ptr [ebp-8], 4294967264
.Lt_02A9:
.Lt_02A8:
mov eax, dword ptr [ebp-8]
add eax, 4294967231
mov ebx, eax
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
cmp eax, 30
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_02AB
cmp dword ptr [_ENV+136], 3
jne .Lt_02AD
mov dword ptr [ebp-4], 15
jmp .Lt_02AC
.Lt_02AD:
mov dword ptr [ebp-4], 8
.Lt_02AC:
jmp .Lt_02AA
.Lt_02AB:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [_DEFTYPETB+eax*4]
mov dword ptr [ebp-4], ebx
.Lt_02AA:
.Lt_02A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBSETDEFTYPE
_SYMBSETDEFTYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_02B2:
cmp dword ptr [ebp+8], 65
jae .Lt_02B5
mov dword ptr [ebp+8], 65
jmp .Lt_02B4
.Lt_02B5:
cmp dword ptr [ebp+8], 95
jbe .Lt_02B6
mov dword ptr [ebp+8], 95
.Lt_02B6:
.Lt_02B4:
cmp dword ptr [ebp+12], 65
jae .Lt_02B8
mov dword ptr [ebp+12], 65
jmp .Lt_02B7
.Lt_02B8:
cmp dword ptr [ebp+12], 95
jbe .Lt_02B9
mov dword ptr [ebp+12], 95
.Lt_02B9:
.Lt_02B7:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jle .Lt_02BB
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+8], eax
pop dword ptr [ebp+12]
.Lt_02BB:
.Lt_02BA:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
jmp .Lt_02BD
.Lt_02C0:
mov eax, dword ptr [ebp-4]
add eax, 4294967231
mov ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [_DEFTYPETB+ebx*4], eax
.Lt_02BE:
inc dword ptr [ebp-4]
.Lt_02BD:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .Lt_02C0
.Lt_02BF:
.Lt_02B3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBRECALCLEN
_SYMBRECALCLEN:
push ebp
mov ebp, esp
push ebx
.Lt_02C1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .Lt_02C4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _SYMBCALCPARAMLEN
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+40], eax
mov dword ptr [ebx+44], edx
jmp .Lt_02C3
.Lt_02C4:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _SYMBCALCLEN
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+40], eax
mov dword ptr [ebx+44], edx
.Lt_02C3:
.Lt_02C2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBSETTYPE
_SYMBSETTYPE:
push ebp
mov ebp, esp
push ebx
.Lt_02C5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+32], eax
push dword ptr [ebp+8]
call _SYMBRECALCLEN
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_02C8
push dword ptr [ebp+8]
call _SYMBPROCRECALCREALTYPE
add esp, 4
.Lt_02C8:
.Lt_02C7:
mov eax, dword ptr [ebp+12]
and eax, 31
cmp eax, 23
jne .Lt_02CA
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _SYMBADDTOFWDREF
add esp, 8
.Lt_02CA:
.Lt_02C9:
.Lt_02C6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCALCLEN
_SYMBCALCLEN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_02CB:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_02CD
mov dword ptr [ebp-12], 24
jmp .Lt_02D8
.Lt_02CD:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_02D8:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .Lt_02D0
.Lt_02D2:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_02CF
.Lt_02D3:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
jmp .Lt_02CF
.Lt_02D4:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_02D5
mov dword ptr [ebp-20], 24
jmp .Lt_02D9
.Lt_02D5:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-20], ecx
.Lt_02D9:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
mov ebx, eax
sar ebx, 31
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
jmp .Lt_02CF
.Lt_02D0:
mov eax, dword ptr [ebp-16]
add eax, 4294967278
cmp eax, 2
ja .Lt_02D4
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_02D7+eax*4-72]
_.LT_02D7:
.int .Lt_02D2
.int .Lt_02D4
.int .Lt_02D3
.Lt_02CF:
.Lt_02CC:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCALCDEREFLEN
_SYMBCALCDEREFLEN:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_02DA:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
and eax, 31
mov ebx, dword ptr [ebp+8]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
or eax, ebx
push eax
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jne .Lt_02DD
cmp dword ptr [ebp-16], 0
jne .Lt_02DD
.Lt_02E0:
cmp dword ptr [ebp+8], 32
jne .Lt_02DF
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 0
.Lt_02DF:
.Lt_02DE:
.Lt_02DD:
.Lt_02DC:
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], edx
mov dword ptr [ebp-4], eax
.Lt_02DB:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKACCESS
_SYMBCHECKACCESS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_02E1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 6291456
test ebx, ebx
jne .Lt_02E4
mov dword ptr [ebp-4], -1
jmp .Lt_02E2
.Lt_02E4:
.Lt_02E3:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
.Lt_02E5:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_02E7:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 10
jne .Lt_02E5
.Lt_02E6:
mov ebx, dword ptr [_SYMB+98528]
mov dword ptr [ebp-12], ebx
.Lt_02E8:
lea ebx, [_SYMB+98352]
cmp dword ptr [ebp-12], ebx
je .Lt_02E9
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 10
jne .Lt_02EB
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-12], ebx
jne .Lt_02ED
mov dword ptr [ebp-4], -1
jmp .Lt_02E2
.Lt_02ED:
.Lt_02EC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4194304
je .Lt_02EF
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jle .Lt_02F1
mov dword ptr [ebp-4], -1
jmp .Lt_02E2
.Lt_02F1:
.Lt_02F0:
.Lt_02EF:
.Lt_02EE:
.Lt_02EB:
.Lt_02EA:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .Lt_02E8
.Lt_02E9:
mov dword ptr [ebp-4], 0
.Lt_02E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKCONSTASSIGNTOPLEVEL
_SYMBCHECKCONSTASSIGNTOPLEVEL:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_02F2:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
and eax, 261632
mov ebx, dword ptr [ebp+12]
and ebx, 261632
or eax, ebx
test eax, eax
jne .Lt_02F5
mov dword ptr [ebp-4], -1
jmp .Lt_02F3
.Lt_02F5:
.Lt_02F4:
cmp dword ptr [ebp+24], 4
jne .Lt_02F7
mov dword ptr [ebp-4], -1
jmp .Lt_02F3
.Lt_02F7:
.Lt_02F6:
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+12]
and eax, 480
sar eax, 5
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+24], 1
jne .Lt_02F9
.Lt_02FA:
mov dword ptr [ebp-8], 1
mov eax, dword ptr [ebp-16]
inc eax
mov ebx, dword ptr [ebp+28]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
and eax, 512
test eax, eax
je .Lt_02FC
mov eax, dword ptr [ebp+28]
inc dword ptr [eax]
.Lt_02FC:
.Lt_02FB:
jmp .Lt_02F8
.Lt_02F9:
cmp dword ptr [ebp+24], 0
jne .Lt_02FD
.Lt_02FE:
mov dword ptr [ebp-8], 1
jmp .Lt_02F8
.Lt_02FD:
inc dword ptr [ebp-20]
.Lt_02FF:
.Lt_02F8:
.Lt_0300:
mov eax, dword ptr [ebp-8]
cmp eax, dword ptr [ebp-12]
setle al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, dword ptr [ebp-16]
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0301
mov ebx, dword ptr [ebp-8]
add ebx, 9
mov eax, 1
mov ecx, ebx
sal eax, cl
and eax, dword ptr [ebp+8]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-8]
add eax, 9
mov ebx, 1
mov ecx, eax
sal ebx, cl
and ebx, dword ptr [ebp+12]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-28]
cmp dword ptr [ebp-24], ebx
jne .Lt_0303
mov ebx, dword ptr [ebp+28]
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebx], eax
jge .Lt_0305
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax], ebx
.Lt_0305:
.Lt_0304:
.Lt_0303:
.Lt_0302:
mov ebx, dword ptr [ebp-24]
not ebx
and ebx, dword ptr [ebp-28]
je .Lt_0307
jmp .Lt_02F3
.Lt_0307:
.Lt_0306:
dec dword ptr [ebp-20]
inc dword ptr [ebp-8]
jmp .Lt_0300
.Lt_0301:
mov dword ptr [ebp-4], -1
.Lt_02F3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKCONSTASSIGN
_SYMBCHECKCONSTASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_031D:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBCHECKCONSTASSIGNTOPLEVEL
add esp, 24
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0320
mov eax, dword ptr [ebp+8]
and eax, 31
cmp eax, 22
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
and ebx, 31
cmp ebx, 22
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0322
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HSYMBCHECKCONSTASSIGNFUNCPTR
add esp, 28
and dword ptr [ebp-8], eax
.Lt_0322:
.Lt_0321:
.Lt_0320:
.Lt_031F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_031E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBFOREACHGLOBAL
_SYMBFOREACHGLOBAL:
push ebp
mov ebp, esp
.Lt_0333:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [_SYMB+98412]
call _HFOREACHGLOBAL
add esp, 12
.Lt_0334:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDUMPPRETTYTOSTR
_SYMBDUMPPRETTYTOSTR:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0351:
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
push 2
push offset _Lt_0353
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [_CLASSNAMESPRETTY+ebx*4-4]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea ebx, [ebp-24]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0352:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__symb:
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
_HINITDEFTYPETB:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0070:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [_ENV+136], 3
jne .Lt_0073
mov dword ptr [ebp-4], 15
jmp .Lt_0072
.Lt_0073:
mov dword ptr [ebp-4], 8
.Lt_0072:
mov dword ptr [ebp-8], 0
.Lt_0077:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [_DEFTYPETB+eax*4], ebx
.Lt_0075:
inc dword ptr [ebp-8]
.Lt_0074:
cmp dword ptr [ebp-8], 30
jle .Lt_0077
.Lt_0076:
.Lt_0071:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_CHAINPOOLNEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_014C:
inc dword ptr [_SYMB+98348]
cmp dword ptr [_SYMB+98348], 4096
jl .Lt_014F
mov dword ptr [_SYMB+98348], 0
.Lt_014F:
.Lt_014E:
mov eax, dword ptr [_SYMB+98348]
imul eax, 24
mov ebx, offset _SYMB
add ebx, eax
lea eax, [ebx+44]
mov dword ptr [ebp-4], eax
.Lt_014D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOOKUPIMPORTHASH:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_0162:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [_SYMB+98564]
push eax
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0165
mov dword ptr [ebp-4], 0
jmp .Lt_0163
.Lt_0165:
.Lt_0164:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-20], eax
.Lt_0166:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-24], ebx
.Lt_0169:
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebx+68], eax
jne .Lt_016D
call _CHAINPOOLNEXT
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-28]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-28]
mov dword ptr [ecx+4], 0
mov ecx, dword ptr [ebp-28]
mov dword ptr [ecx+8], -1
cmp dword ptr [ebp-12], 0
jne .Lt_016F
mov ecx, dword ptr [ebp-28]
mov dword ptr [ebp-12], ecx
jmp .Lt_016E
.Lt_016F:
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-28]
mov dword ptr [ecx+4], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .Lt_0163
.Lt_016E:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-16], ebx
.Lt_016D:
.Lt_016C:
mov ebx, dword ptr [ebp-24]
mov ecx, dword ptr [ebx+76]
mov dword ptr [ebp-24], ecx
.Lt_016B:
cmp dword ptr [ebp-24], 0
jne .Lt_0169
.Lt_016A:
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-20], ebx
.Lt_0168:
cmp dword ptr [ebp-20], 0
jne .Lt_0166
.Lt_0167:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.Lt_0163:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOOKUPIMPORTLIST:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0170:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
.Lt_0172:
cmp dword ptr [ebp-16], 0
je .Lt_0173
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+56]
lea eax, [ebx+72]
push eax
call _HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_0175
call _CHAINPOOLNEXT
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+8], -1
cmp dword ptr [ebp-8], 0
jne .Lt_0177
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-8], ebx
jmp .Lt_0176
.Lt_0177:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0171
.Lt_0176:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-12], eax
.Lt_0175:
.Lt_0174:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-16], ebx
jmp .Lt_0172
.Lt_0173:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0171:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSYMBCHECKCONSTASSIGNFUNCPTR:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_030C:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .Lt_030E
mov dword ptr [ebp-8], 2
jmp .Lt_0356
.Lt_030E:
mov dword ptr [ebp-8], 1
.Lt_0356:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+28]
call _TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0311
mov eax, dword ptr [ebp+32]
mov dword ptr [eax], 41
jmp .Lt_030D
.Lt_0311:
.Lt_0310:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+8]
and ecx, 2048
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
cmp ebx, ecx
je .Lt_0313
mov ecx, dword ptr [ebp+32]
mov dword ptr [ecx], 28
jmp .Lt_030D
.Lt_0313:
.Lt_0312:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _SYMBAREPROCMODESEQUAL
add esp, 8
test eax, eax
jne .Lt_0315
mov eax, dword ptr [ebp+32]
mov dword ptr [eax], 42
jmp .Lt_030D
.Lt_0315:
.Lt_0314:
mov eax, dword ptr [ebp+16]
movsx ecx, word ptr [eax+68]
mov eax, dword ptr [ebp+20]
movsx ebx, word ptr [eax+68]
cmp ecx, ebx
je .Lt_0317
mov ebx, dword ptr [ebp+32]
mov dword ptr [ebx], 43
jmp .Lt_030D
.Lt_0317:
.Lt_0316:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+76]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-20], ebx
.Lt_0318:
cmp dword ptr [ebp-16], 0
je .Lt_0319
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebx+28]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ecx+28]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebx+32]
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ecx+32]
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebx+56]
mov dword ptr [ebp-40], ecx
push dword ptr [ebp+32]
mov dword ptr [ebp-44], 0
lea ecx, [ebp-44]
push ecx
push dword ptr [ebp-40]
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _SYMBCHECKCONSTASSIGN
add esp, 28
test eax, eax
jne .Lt_031C
jmp .Lt_030D
.Lt_031C:
.Lt_031B:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-20], eax
jmp .Lt_0318
.Lt_0319:
mov dword ptr [ebp-4], -1
.Lt_030D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFOREACHGLOBAL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0325:
.Lt_0327:
cmp dword ptr [ebp+8], 0
je .Lt_0328
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 8
jne .Lt_032B
.Lt_032C:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call _HFOREACHGLOBAL
add esp, 12
jmp .Lt_0329
.Lt_032B:
cmp dword ptr [ebp-4], 10
jne .Lt_032D
.Lt_032E:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call _HFOREACHGLOBAL
add esp, 12
jmp .Lt_0329
.Lt_032D:
cmp dword ptr [ebp-4], 15
jne .Lt_032F
.Lt_0330:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _HFOREACHGLOBAL
add esp, 12
jmp .Lt_0329
.Lt_032F:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp-4], ebx
jne .Lt_0331
.Lt_0332:
push dword ptr [ebp+8]
call dword ptr [ebp+16]
add esp, 4
.Lt_0331:
.Lt_0329:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp+8], eax
jmp .Lt_0327
.Lt_0328:
.Lt_0326:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETNAMESPACEPREFIX:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0335:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
jne .Lt_0338
push 0
push 13
push offset _Lt_0339
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0336
.Lt_0338:
.Lt_0337:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
.Lt_033A:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp-16], eax
je .Lt_033B
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
push -1
push 2
push offset _Lt_0007
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
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
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+140], 0
jne .Lt_033F
jmp .Lt_033B
.Lt_033F:
.Lt_033E:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
jmp .Lt_033A
.Lt_033B:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0336:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0007:	.ascii	".\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36

.globl _SYMB
.balign 4
	.lcomm	_SYMB,99640
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
.balign 4
	.lcomm	_DEFTYPETB,124

.section .data
.balign 4
_Lt_027D:	.ascii	"const \0"
.balign 4
_Lt_028C:	.ascii	" * \0"
.balign 4
_Lt_0292:	.ascii	"typeof(\0"
.balign 4
_Lt_0295:	.ascii	")\0"
.balign 4
_Lt_029F:	.ascii	" const\0"
.balign 4
_Lt_02A0:	.ascii	" ptr\0"
.balign 4
_Lt_0339:	.ascii	"<no hash tb>\0"
.balign 4
_CLASSNAMESPRETTY:
.int _Lt_0341
.int _Lt_0342
.int _Lt_0343
.int _Lt_0344
.int _Lt_0345
.int _Lt_0346
.int _Lt_0347
.int _Lt_0348
.int _Lt_0349
.int _Lt_034A
.int _Lt_034B
.int _Lt_034C
.int _Lt_034D
.int _Lt_034E
.int _Lt_034F
.int _Lt_0350
.balign 4
_Lt_0341:	.ascii	"variable\0"
.balign 4
_Lt_0342:	.ascii	"constant\0"
.balign 4
_Lt_0343:	.ascii	"procedure\0"
.balign 4
_Lt_0344:	.ascii	"parameter\0"
.balign 4
_Lt_0345:	.ascii	"#define\0"
.balign 4
_Lt_0346:	.ascii	"keyword\0"
.balign 4
_Lt_0347:	.ascii	"label\0"
.balign 4
_Lt_0348:	.ascii	"namespace\0"
.balign 4
_Lt_0349:	.ascii	"enum\0"
.balign 4
_Lt_034A:	.ascii	"type\0"
.balign 4
_Lt_034B:	.ascii	"class\0"
.balign 4
_Lt_034C:	.ascii	"field\0"
.balign 4
_Lt_034D:	.ascii	"type alias\0"
.balign 4
_Lt_034E:	.ascii	"forward reference\0"
.balign 4
_Lt_034F:	.ascii	"scope\0"
.balign 4
_Lt_0350:	.ascii	"namespace import\0"
.balign 4
_Lt_0353:	.ascii	" \0"

.section .ctors
.int _fb_ctor__symb
