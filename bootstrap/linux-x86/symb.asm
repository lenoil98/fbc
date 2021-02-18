	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBINITSYMBOLS
SYMBINITSYMBOLS:
.type SYMBINITSYMBOLS, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_006A:
push 6
push 176
push 8000
lea eax, [SYMB+4]
push eax
call LISTINIT
add esp, 16
push 129
push 17
push 1000
lea eax, [SYMB+98608]
push eax
call POOLINIT
add esp, 16
mov dword ptr [SYMB+98348], 0
push 7
push 28
push 500
lea eax, [SYMB+98652]
push eax
call LISTINIT
add esp, 16
mov dword ptr [SYMB+98352], 8
mov word ptr [SYMB+98388], 0
lea eax, [SYMB+98408]
mov dword ptr [ebp-4], eax
lea eax, [SYMB+98352]
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+8], 0
lea eax, [SYMB+98352]
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+28], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+32], 0
sub esp, 4
push 0
push 8000
mov eax, dword ptr [ebp-4]
lea ebx, [eax+16]
push ebx
call HASHINIT
add esp, 16
jmp .Lt_006D
.Lt_006E:
sub esp, 4
push 12
push 0
mov ebx, dword ptr [ebp-4]
lea eax, [ebx+16]
push eax
call memset
add esp, 16
.Lt_006D:
sub esp, 12
lea eax, [SYMB+98652]
push eax
call LISTNEWNODE
add esp, 16
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+36], eax
lea eax, [SYMB+98352]
mov dword ptr [SYMB+98528], eax
lea eax, [SYMB+98408]
mov dword ptr [SYMB+98536], eax
lea eax, [SYMB+98420]
mov dword ptr [SYMB+98532], eax
mov dword ptr [SYMB+36], 0
mov dword ptr [SYMB+40], 0
sub esp, 12
push dword ptr [SYMB+98532]
call SYMBHASHLISTADD
add esp, 16
sub esp, 4
push 0
push 8000
lea eax, [SYMB+98564]
push eax
call HASHINIT
add esp, 16
push 6
push 24
push 4000
lea eax, [SYMB+98576]
push eax
call LISTINIT
add esp, 16
mov dword ptr [SYMB+99036], 0
call SYMBDATAINIT
.Lt_006B:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBINITSYMBOLS, .-SYMBINITSYMBOLS
.balign 16

.globl SYMBINIT
SYMBINIT:
.type SYMBINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0077:
cmp dword ptr [SYMB], 0
je .Lt_007A
jmp .Lt_0078
.Lt_007A:
.Lt_0079:
call SYMBINITSYMBOLS
call SYMBCOMPINIT
call SYMBMANGLEINIT
call SYMBKEYWORDINIT
sub esp, 12
push dword ptr [ebp+8]
call SYMBDEFINEINIT
add esp, 16
call SYMBFWDREFINIT
call SYMBVARINIT
call SYMBPROCINIT
call HINITDEFTYPETB
call SYMBCOMPRTTIINIT
call SYMBKEYWORDCONSTSINIT
call SYMBKEYWORDTYPEINIT
mov dword ptr [SYMB], -1
.Lt_0078:
mov esp, ebp
pop ebp
ret
.size SYMBINIT, .-SYMBINIT
.balign 16

.globl SYMBEND
SYMBEND:
.type SYMBEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_007B:
cmp dword ptr [SYMB], 0
jne .Lt_007E
jmp .Lt_007C
.Lt_007E:
.Lt_007D:
call SYMBDELGLOBALTB
mov dword ptr [SYMB+98412], 0
mov dword ptr [SYMB+98416], 0
mov dword ptr [SYMB+98536], 0
sub esp, 12
lea eax, [SYMB+98576]
push eax
call LISTEND
add esp, 16
sub esp, 12
lea eax, [SYMB+98564]
push eax
call HASHEND
add esp, 16
sub esp, 12
lea eax, [SYMB+98424]
push eax
call HASHEND
add esp, 16
call SYMBCOMPRTTIEND
call SYMBPROCEND
call SYMBVAREND
call SYMBFWDREFEND
call SYMBDEFINEEND
call SYMBMANGLEEND
call SYMBCOMPEND
sub esp, 8
push dword ptr [SYMB+98444]
lea eax, [SYMB+98652]
push eax
call LISTDELNODE
add esp, 16
sub esp, 12
lea eax, [SYMB+98652]
push eax
call LISTEND
add esp, 16
sub esp, 12
lea eax, [SYMB+98608]
push eax
call POOLEND
add esp, 16
sub esp, 12
lea eax, [SYMB+4]
push eax
call LISTEND
add esp, 16
mov dword ptr [SYMB], 0
.Lt_007C:
mov esp, ebp
pop ebp
ret
.size SYMBEND, .-SYMBEND
.balign 16

.globl SYMBCANDUPLICATE
SYMBCANDUPLICATE:
.type SYMBCANDUPLICATE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_007F:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_0082
.Lt_0084:
jmp .Lt_0080
jmp .Lt_0081
.Lt_0085:
.Lt_0086:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .Lt_008A
.Lt_008C:
jmp .Lt_0080
jmp .Lt_0089
.Lt_008A:
mov eax, dword ptr [ebp-12]
add eax, 4294967291
cmp eax, 8
ja .Lt_0089
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_008D+eax*4-20]
.LT_008D:
.int .Lt_008C
.int .Lt_0089
.int .Lt_0089
.int .Lt_008C
.int .Lt_008C
.int .Lt_008C
.int .Lt_008C
.int .Lt_008C
.int .Lt_008C
.Lt_0089:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp+8], ebx
.Lt_0088:
cmp dword ptr [ebp+8], 0
jne .Lt_0086
.Lt_0087:
jmp .Lt_0081
.Lt_008E:
.Lt_008F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 5
je .Lt_0095
.Lt_0096:
cmp dword ptr [ebp-12], 8
je .Lt_0095
.Lt_0097:
cmp dword ptr [ebp-12], 14
je .Lt_0095
.Lt_0098:
cmp dword ptr [ebp-12], 11
jne .Lt_0094
.Lt_0095:
jmp .Lt_0080
jmp .Lt_0092
.Lt_0094:
cmp dword ptr [ebp-12], 10
jne .Lt_0099
.Lt_009A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .Lt_009C
jmp .Lt_0080
.Lt_009C:
.Lt_009B:
.Lt_0099:
.Lt_0092:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp+8], eax
.Lt_0091:
cmp dword ptr [ebp+8], 0
jne .Lt_008F
.Lt_0090:
jmp .Lt_0081
.Lt_009D:
.Lt_009E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .Lt_00A2
.Lt_00A4:
jmp .Lt_00A1
.Lt_00A5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 262144
test eax, eax
je .Lt_00A7
jmp .Lt_0080
.Lt_00A7:
.Lt_00A6:
jmp .Lt_00A1
.Lt_00A8:
cmp dword ptr [ENV+136], 3
je .Lt_00AA
jmp .Lt_0080
.Lt_00AA:
.Lt_00A9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_00AC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
jne .Lt_00AE
jmp .Lt_0080
jmp .Lt_00AD
.Lt_00AE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 32
test eax, eax
je .Lt_00B0
jmp .Lt_0080
.Lt_00B0:
.Lt_00AF:
.Lt_00AD:
.Lt_00AC:
.Lt_00AB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .Lt_00B2
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 511
cmp eax, ecx
jne .Lt_00B4
jmp .Lt_0080
.Lt_00B4:
.Lt_00B3:
jmp .Lt_00B1
.Lt_00B2:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 511
cmp eax, 17
je .Lt_00B6
jmp .Lt_0080
.Lt_00B6:
.Lt_00B5:
.Lt_00B1:
jmp .Lt_00A1
.Lt_00B7:
jmp .Lt_0080
jmp .Lt_00A1
.Lt_00A2:
mov eax, dword ptr [ebp-12]
add eax, 4294967293
cmp eax, 11
ja .Lt_00B7
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00B8+eax*4-12]
.LT_00B8:
.int .Lt_00A8
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00A8
.int .Lt_00A4
.int .Lt_00B7
.int .Lt_00A4
.int .Lt_00A5
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00A4
.int .Lt_00A4
.Lt_00A1:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+156]
mov dword ptr [ebp+8], ecx
.Lt_00A0:
cmp dword ptr [ebp+8], 0
jne .Lt_009E
.Lt_009F:
jmp .Lt_0081
.Lt_00B9:
.Lt_00BA:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-12], eax
jmp .Lt_00BE
.Lt_00C0:
jmp .Lt_00BD
.Lt_00C1:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 262144
test ecx, ecx
je .Lt_00C3
jmp .Lt_0080
.Lt_00C3:
.Lt_00C2:
jmp .Lt_00BD
.Lt_00C4:
cmp dword ptr [ENV+136], 3
je .Lt_00C6
jmp .Lt_0080
.Lt_00C6:
.Lt_00C5:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 3
jne .Lt_00C8
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
and eax, 32
test eax, eax
jne .Lt_00CA
jmp .Lt_0080
.Lt_00CA:
.Lt_00C9:
.Lt_00C8:
.Lt_00C7:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 1048576
test ecx, ecx
je .Lt_00CC
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+28]
and eax, 511
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp eax, ebx
jne .Lt_00CE
jmp .Lt_0080
.Lt_00CE:
.Lt_00CD:
jmp .Lt_00CB
.Lt_00CC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 17
je .Lt_00D0
jmp .Lt_0080
.Lt_00D0:
.Lt_00CF:
.Lt_00CB:
jmp .Lt_00BD
.Lt_00D1:
mov eax, dword ptr [ebp+12]
movzx ebx, word ptr [eax+36]
mov eax, dword ptr [ebp+8]
movzx ecx, word ptr [eax+36]
cmp ebx, ecx
jne .Lt_00D3
jmp .Lt_0080
.Lt_00D3:
.Lt_00D2:
jmp .Lt_00BD
.Lt_00D4:
mov ecx, dword ptr [ebp+12]
movzx ebx, word ptr [ecx+36]
mov ecx, dword ptr [ebp+8]
movzx eax, word ptr [ecx+36]
cmp ebx, eax
jne .Lt_00D6
cmp dword ptr [ENV+136], 0
jne .Lt_00D8
jmp .Lt_0080
.Lt_00D8:
.Lt_00D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ebx, ecx
jne .Lt_00DA
jmp .Lt_0080
.Lt_00DA:
.Lt_00D9:
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
je .Lt_00DC
jmp .Lt_0080
.Lt_00DC:
.Lt_00DB:
.Lt_00D6:
.Lt_00D5:
jmp .Lt_00BD
.Lt_00DD:
jmp .Lt_0080
jmp .Lt_00BD
.Lt_00BE:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 13
ja .Lt_00DD
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00DE+eax*4-4]
.LT_00DE:
.int .Lt_00D4
.int .Lt_00DD
.int .Lt_00C4
.int .Lt_00DD
.int .Lt_00DD
.int .Lt_00C4
.int .Lt_00C0
.int .Lt_00DD
.int .Lt_00C0
.int .Lt_00C1
.int .Lt_00DD
.int .Lt_00D1
.int .Lt_00C0
.int .Lt_00C0
.Lt_00BD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp+8], ebx
.Lt_00BC:
cmp dword ptr [ebp+8], 0
jne .Lt_00BA
.Lt_00BB:
jmp .Lt_0081
.Lt_00DF:
.Lt_00E0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .Lt_00E4
.Lt_00E6:
jmp .Lt_0080
jmp .Lt_00E3
.Lt_00E7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .Lt_00E9
jmp .Lt_0080
.Lt_00E9:
.Lt_00E8:
jmp .Lt_00E3
.Lt_00E4:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967291
cmp ebx, 6
ja .Lt_00E3
mov ebx, dword ptr [ebp-12]
jmp dword ptr [.LT_00EA+ebx*4-20]
.LT_00EA:
.int .Lt_00E6
.int .Lt_00E6
.int .Lt_00E6
.int .Lt_00E6
.int .Lt_00E3
.int .Lt_00E7
.int .Lt_00E6
.Lt_00E3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp+8], eax
.Lt_00E2:
cmp dword ptr [ebp+8], 0
jne .Lt_00E0
.Lt_00E1:
jmp .Lt_0081
.Lt_00EB:
jmp .Lt_0081
.Lt_0082:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 13
ja .Lt_0081
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_00EC+eax*4-4]
.LT_00EC:
.int .Lt_00B9
.int .Lt_009D
.int .Lt_009D
.int .Lt_00EB
.int .Lt_0084
.int .Lt_0084
.int .Lt_00DF
.int .Lt_0084
.int .Lt_0085
.int .Lt_0085
.int .Lt_0084
.int .Lt_0084
.int .Lt_0085
.int .Lt_008E
.Lt_0081:
mov dword ptr [ebp-4], -1
.Lt_0080:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCANDUPLICATE, .-SYMBCANDUPLICATE
.balign 16

.globl SYMBNEWSYMBOL
SYMBNEWSYMBOL:
.type SYMBNEWSYMBOL, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EF:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 0
jne .Lt_00F2
mov eax, dword ptr [SYMB+98536]
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
jne .Lt_00F4
cmp dword ptr [PARSER+96], 0
jne .Lt_00F6
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
jne .Lt_00F8
lea eax, [SYMB+98408]
mov dword ptr [ebp+16], eax
.Lt_00F8:
.Lt_00F7:
and dword ptr [ebp+44], -129
jmp .Lt_00F5
.Lt_00F6:
or dword ptr [ebp+44], 128
.Lt_00F5:
jmp .Lt_00F3
.Lt_00F4:
or dword ptr [ebp+44], 128
.Lt_00F3:
.Lt_00F2:
.Lt_00F1:
cmp dword ptr [ebp+20], 0
jne .Lt_00FA
mov eax, dword ptr [SYMB+98532]
mov dword ptr [ebp+20], eax
.Lt_00FA:
.Lt_00F9:
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+12], 0
jne .Lt_00FC
mov dword ptr [ebp-12], -1
sub esp, 12
lea eax, [SYMB+4]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_00FC:
.Lt_00FB:
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
mov bx, word ptr [PARSER+100]
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
je .Lt_00FE
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+12]
and eax, 12288
test eax, eax
je .Lt_0100
mov eax, dword ptr [ebp+12]
mov word ptr [eax+36], 0
jmp .Lt_00FF
.Lt_0100:
mov eax, dword ptr [PARSER+104]
movzx ebx, word ptr [eax+36]
inc ebx
mov eax, dword ptr [ebp+12]
mov word ptr [eax+36], bx
.Lt_00FF:
jmp .Lt_00FD
.Lt_00FE:
mov bx, word ptr [PARSER+96]
mov eax, dword ptr [ebp+12]
mov word ptr [eax+36], bx
.Lt_00FD:
cmp dword ptr [ebp+28], 0
je .Lt_0101
sub esp, 8
push 0
push dword ptr [ebp+28]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-16], eax
jmp .Lt_0126
.Lt_0101:
mov dword ptr [ebp-16], 0
.Lt_0126:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jle .Lt_0104
sub esp, 8
mov eax, dword ptr [ebp-8]
inc eax
push eax
lea eax, [SYMB+98608]
push eax
call POOLNEWITEM
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp+8]
and eax, 1
test eax, eax
jne .Lt_0106
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
push dword ptr [ebp+28]
call HUCASE
add esp, 16
jmp .Lt_0105
.Lt_0106:
sub esp, 12
push 0
push 0
push dword ptr [ebp+28]
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
call fb_StrAssign
add esp, 32
.Lt_0105:
jmp .Lt_0103
.Lt_0104:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+16], 0
and dword ptr [ebp+8], -33
.Lt_0103:
cmp dword ptr [ebp+32], 0
je .Lt_0108
sub esp, 12
sub esp, 12
push 0
push dword ptr [ebp+32]
call fb_StrLen
add esp, 20
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+32]
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call fb_StrAssign
add esp, 32
jmp .Lt_0107
.Lt_0108:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 0
.Lt_0107:
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
je .Lt_010A
sub esp, 12
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
call HASHHASH
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+148], eax
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+148]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
mov eax, dword ptr [ebp+20]
lea ebx, [eax+4]
push ebx
call HASHLOOKUPEX
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_010C
mov eax, dword ptr [ebp+12]
push dword ptr [eax+148]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
mov eax, dword ptr [ebp+20]
lea ebx, [eax+4]
push ebx
call HASHADD
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+144], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+152], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+156], 0
jmp .Lt_010B
.Lt_010C:
mov eax, dword ptr [ebp+8]
and eax, 128
test eax, eax
jne .Lt_010E
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-20]
call SYMBCANDUPLICATE
add esp, 16
test eax, eax
jne .Lt_0110
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
lea eax, [SYMB+98608]
push eax
call POOLDELITEM
add esp, 16
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .Lt_0112
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call free
add esp, 16
.Lt_0112:
.Lt_0111:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+24], 0
je .Lt_0114
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
call free
add esp, 16
.Lt_0114:
.Lt_0113:
cmp dword ptr [ebp-12], 0
je .Lt_0116
sub esp, 8
push dword ptr [ebp+12]
lea eax, [SYMB+4]
push eax
call LISTDELNODE
add esp, 16
.Lt_0116:
.Lt_0115:
jmp .Lt_00F0
.Lt_0110:
.Lt_010F:
.Lt_010E:
.Lt_010D:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+144]
mov dword ptr [ebx+144], ecx
cmp dword ptr [ENV+136], 3
jne .Lt_0118
mov dword ptr [ebp-24], 0
.Lt_0119:
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx], 6
jne .Lt_011A
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ecx+156]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .Lt_011C
jmp .Lt_011A
.Lt_011C:
.Lt_011B:
jmp .Lt_0119
.Lt_011A:
cmp dword ptr [ebp-24], 0
jne .Lt_011E
jmp .Lt_011F
.Lt_011E:
.Lt_011D:
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
je .Lt_0121
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx+152], ebx
.Lt_0121:
.Lt_0120:
jmp .Lt_0117
.Lt_0118:
.Lt_011F:
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
.Lt_0117:
.Lt_010B:
jmp .Lt_0109
.Lt_010A:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+144], 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+152], 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+156], 0
.Lt_0109:
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+8], 0
je .Lt_0123
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax+172], ecx
jmp .Lt_0122
.Lt_0123:
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+4], eax
.Lt_0122:
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
jne .Lt_0125
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+40]
call SYMBADDTOFWDREF
add esp, 16
.Lt_0125:
.Lt_0124:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.Lt_00F0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBNEWSYMBOL, .-SYMBNEWSYMBOL
.balign 16

.globl SYMBHASHLISTADD
SYMBHASHLISTADD:
.type SYMBHASHLISTADD, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0127:
cmp dword ptr [SYMB+40], 0
je .Lt_012A
mov eax, dword ptr [SYMB+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
jmp .Lt_0129
.Lt_012A:
mov ebx, dword ptr [ebp+8]
mov dword ptr [SYMB+36], ebx
.Lt_0129:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [SYMB+40]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [SYMB+40], eax
.Lt_0128:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBHASHLISTADD, .-SYMBHASHLISTADD
.balign 16

.globl SYMBHASHLISTADDBEFORE
SYMBHASHLISTADDBEFORE:
.type SYMBHASHLISTADDBEFORE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_012B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .Lt_012E
mov eax, dword ptr [ebp+12]
mov dword ptr [SYMB+36], eax
jmp .Lt_012D
.Lt_012E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
.Lt_012D:
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
.Lt_012C:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBHASHLISTADDBEFORE, .-SYMBHASHLISTADDBEFORE
.balign 16

.globl SYMBHASHLISTDEL
SYMBHASHLISTDEL:
.type SYMBHASHLISTDEL, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_012F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .Lt_0132
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+16]
mov ebx, dword ptr [eax+20]
mov dword ptr [ecx+20], ebx
jmp .Lt_0131
.Lt_0132:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+20]
mov dword ptr [SYMB+36], ecx
.Lt_0131:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+20], 0
je .Lt_0134
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov ebx, dword ptr [ecx+16]
mov dword ptr [eax+16], ebx
jmp .Lt_0133
.Lt_0134:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [SYMB+40], eax
.Lt_0133:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], 0
.Lt_0130:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBHASHLISTDEL, .-SYMBHASHLISTDEL
.balign 16

.globl SYMBHASHLISTINSERTNAMESPACE
SYMBHASHLISTINSERTNAMESPACE:
.type SYMBHASHLISTINSERTNAMESPACE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0135:
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
.Lt_0137:
cmp dword ptr [ebp-12], 0
je .Lt_0138
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+144], 0
je .Lt_013A
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+152], 0
jne .Lt_013C
sub esp, 12
lea eax, [SYMB+98576]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], -1
sub esp, 4
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+148]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+16]
lea ebx, [SYMB+98564]
push ebx
call HASHLOOKUPEX
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_013E
mov eax, dword ptr [ebp-12]
push dword ptr [eax+148]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
lea eax, [SYMB+98564]
push eax
call HASHADD
add esp, 16
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+4], 0
jmp .Lt_013D
.Lt_013E:
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
.Lt_013D:
cmp dword ptr [ebp-8], 0
je .Lt_0140
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
mov dword ptr [ecx+20], ebx
jmp .Lt_013F
.Lt_0140:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_013F:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-8], ebx
.Lt_013C:
.Lt_013B:
.Lt_013A:
.Lt_0139:
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+172]
mov dword ptr [ebp-12], ecx
jmp .Lt_0137
.Lt_0138:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+92]
mov ecx, dword ptr [ebp-4]
mov dword ptr [ebx+20], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+92]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+24], ecx
.Lt_0136:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBHASHLISTINSERTNAMESPACE, .-SYMBHASHLISTINSERTNAMESPACE
.balign 16

.globl SYMBHASHLISTREMOVENAMESPACE
SYMBHASHLISTREMOVENAMESPACE:
.type SYMBHASHLISTREMOVENAMESPACE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0141:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
.Lt_0143:
cmp dword ptr [ebp-4], 0
je .Lt_0144
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
je .Lt_0146
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+4], ebx
cmp dword ptr [ebp-12], 0
je .Lt_0148
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
.Lt_0148:
.Lt_0147:
jmp .Lt_0145
.Lt_0146:
cmp dword ptr [ebp-12], 0
je .Lt_014A
mov eax, dword ptr [ebp-12]
mov dword ptr [eax+12], 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
jmp .Lt_0149
.Lt_014A:
sub esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
push dword ptr [ebx+148]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
lea ebx, [SYMB+98564]
push ebx
call HASHDEL
add esp, 16
.Lt_0149:
.Lt_0145:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
sub esp, 8
push dword ptr [ebp-4]
lea eax, [SYMB+98576]
push eax
call LISTDELNODE
add esp, 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .Lt_0143
.Lt_0144:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
mov dword ptr [eax+24], 0
.Lt_0142:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBHASHLISTREMOVENAMESPACE, .-SYMBHASHLISTREMOVENAMESPACE
.balign 16

.globl SYMBLOOKUP
SYMBLOOKUP:
.type SYMBLOOKUP, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_014F:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
sub esp, 8
push offset Lt_0160
push dword ptr [ebp+8]
call HUCASE
add esp, 16
mov eax, offset Lt_0160
mov dword ptr [ebp+8], eax
sub esp, 12
push dword ptr [ebp+8]
call HASHHASH
add esp, 16
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
mov eax, dword ptr [SYMB+40]
mov dword ptr [ebp-16], eax
.Lt_0151:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-16]
lea ebx, [eax+4]
push ebx
call HASHLOOKUPEX
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .Lt_0155
call CHAINPOOLNEXT
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
jne .Lt_0157
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
je .Lt_0159
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .Lt_0150
.Lt_0159:
.Lt_0158:
.Lt_0157:
.Lt_0156:
mov ebx, dword ptr [ebp-16]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
je .Lt_015B
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .Lt_0150
jmp .Lt_015A
.Lt_015B:
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
jne .Lt_015D
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .Lt_0150
.Lt_015D:
.Lt_015C:
jmp .Lt_0152
.Lt_015A:
.Lt_0155:
.Lt_0154:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-16], ebx
.Lt_0153:
cmp dword ptr [ebp-16], 0
jne .Lt_0151
.Lt_0152:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
lea ebx, [SYMB+98564]
push ebx
call HASHLOOKUPEX
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-12], 0
jne .Lt_015F
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
jmp .Lt_0150
.Lt_015F:
.Lt_015E:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.Lt_0150:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBLOOKUP, .-SYMBLOOKUP

.section .bss
.balign 4
	.lcomm	Lt_0160,129

.section .text
.balign 16

.globl SYMBLOOKUPAT
SYMBLOOKUPAT:
.type SYMBLOOKUPAT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0177:
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
je .Lt_017A
jmp .Lt_0178
.Lt_017A:
.Lt_0179:
cmp dword ptr [ebp+16], 0
jne .Lt_017C
sub esp, 8
push offset Lt_0189
push dword ptr [ebp+12]
call HUCASE
add esp, 16
mov ecx, offset Lt_0189
mov dword ptr [ebp+12], ecx
.Lt_017C:
.Lt_017B:
sub esp, 12
push dword ptr [ebp+12]
call HASHHASH
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea ecx, [eax+72]
push ecx
call HASHLOOKUPEX
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_017E
cmp dword ptr [ebp+20], 0
jne .Lt_0180
mov dword ptr [ebp-4], 0
jmp .Lt_0178
.Lt_0180:
.Lt_017F:
jmp .Lt_017D
.Lt_017E:
call CHAINPOOLNEXT
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
jmp .Lt_0178
.Lt_017D:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+92], 0
jne .Lt_0182
mov dword ptr [ebp-4], 0
jmp .Lt_0178
.Lt_0182:
.Lt_0181:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+92]
cmp dword ptr [eax], 0
jne .Lt_0184
mov dword ptr [ebp-4], 0
jmp .Lt_0178
.Lt_0184:
.Lt_0183:
lea eax, [SYMB+98352]
cmp dword ptr [ebp+8], eax
jne .Lt_0186
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HLOOKUPIMPORTHASH
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0178
jmp .Lt_0185
.Lt_0186:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HLOOKUPIMPORTLIST
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0185:
.Lt_0178:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBLOOKUPAT, .-SYMBLOOKUPAT

.section .bss
.balign 4
	.lcomm	Lt_0189,129

.section .text
.balign 16

.globl SYMBLOOKUPBYNAMEANDCLASS
SYMBLOOKUPBYNAMEANDCLASS:
.type SYMBLOOKUPBYNAMEANDCLASS, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_018A:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_018D
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_018C
.Lt_018D:
mov dword ptr [ebp-4], 0
.Lt_018C:
.Lt_018B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size SYMBLOOKUPBYNAMEANDCLASS, .-SYMBLOOKUPBYNAMEANDCLASS
.balign 16

.globl SYMBFINDBYCLASS
SYMBFINDBYCLASS:
.type SYMBFINDBYCLASS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_018E:
mov dword ptr [ebp-12], 0
.Lt_0190:
cmp dword ptr [ebp+8], 0
je .Lt_0191
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_0192:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .Lt_0196
mov dword ptr [ebp-12], -1
jmp .Lt_0191
.Lt_0196:
.Lt_0195:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
.Lt_0194:
cmp dword ptr [ebp-8], 0
jne .Lt_0192
.Lt_0193:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+8], eax
jmp .Lt_0190
.Lt_0191:
cmp dword ptr [ebp-12], 0
jne .Lt_0198
mov dword ptr [ebp-4], 0
jmp .Lt_018F
.Lt_0198:
.Lt_0197:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .Lt_019A
sub esp, 12
push dword ptr [ebp-8]
call SYMBVARCHECKACCESS
add esp, 16
test eax, eax
je .Lt_019C
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_018F
jmp .Lt_019B
.Lt_019C:
mov dword ptr [ebp-4], 0
jmp .Lt_018F
.Lt_019B:
.Lt_019A:
.Lt_0199:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_018F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBFINDBYCLASS, .-SYMBFINDBYCLASS
.balign 16

.globl SYMBFINDVARBYSUFFIX
SYMBFINDVARBYSUFFIX:
.type SYMBFINDVARBYSUFFIX, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_019D:
cmp dword ptr [ebp+12], 17
jne .Lt_01A0
.Lt_01A1:
cmp dword ptr [ebp+8], 0
je .Lt_01A2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_01A3:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 1
jne .Lt_01A7
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 17
je .Lt_01AB
.Lt_01AC:
cmp dword ptr [ebp-12], 18
je .Lt_01AB
.Lt_01AD:
cmp dword ptr [ebp-12], 4
jne .Lt_01AA
.Lt_01AB:
jmp .Lt_01AE
.Lt_01AA:
.Lt_01A8:
.Lt_01A7:
.Lt_01A6:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
.Lt_01A5:
cmp dword ptr [ebp-8], 0
jne .Lt_01A3
.Lt_01A4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+8], eax
jmp .Lt_01A1
.Lt_01A2:
jmp .Lt_019F
.Lt_01A0:
.Lt_01AF:
cmp dword ptr [ebp+8], 0
je .Lt_01B0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_01B1:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 1
jne .Lt_01B5
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+12]
cmp eax, ebx
jne .Lt_01B7
jmp .Lt_01AE
.Lt_01B7:
.Lt_01B6:
.Lt_01B5:
.Lt_01B4:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.Lt_01B3:
cmp dword ptr [ebp-8], 0
jne .Lt_01B1
.Lt_01B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .Lt_01AF
.Lt_01B0:
.Lt_019F:
mov dword ptr [ebp-4], 0
jmp .Lt_019E
.Lt_01AE:
sub esp, 12
push dword ptr [ebp-8]
call SYMBVARCHECKACCESS
add esp, 16
test eax, eax
je .Lt_01B9
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01B8
.Lt_01B9:
mov dword ptr [ebp-4], 0
.Lt_01B8:
.Lt_019E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBFINDVARBYSUFFIX, .-SYMBFINDVARBYSUFFIX
.balign 16

.globl SYMBFINDVARBYDEFTYPE
SYMBFINDVARBYDEFTYPE:
.type SYMBFINDVARBYDEFTYPE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01BA:
cmp dword ptr [ebp+12], 17
jne .Lt_01BD
.Lt_01BE:
cmp dword ptr [ebp+8], 0
je .Lt_01BF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_01C0:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 1
jne .Lt_01C4
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_01C6
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 17
je .Lt_01CA
.Lt_01CB:
cmp dword ptr [ebp-12], 18
je .Lt_01CA
.Lt_01CC:
cmp dword ptr [ebp-12], 4
jne .Lt_01C9
.Lt_01CA:
jmp .Lt_01CD
.Lt_01C9:
.Lt_01C7:
jmp .Lt_01C5
.Lt_01C6:
jmp .Lt_01CD
.Lt_01C5:
.Lt_01C4:
.Lt_01C3:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.Lt_01C2:
cmp dword ptr [ebp-8], 0
jne .Lt_01C0
.Lt_01C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .Lt_01BE
.Lt_01BF:
jmp .Lt_01BC
.Lt_01BD:
.Lt_01CE:
cmp dword ptr [ebp+8], 0
je .Lt_01CF
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_01D0:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .Lt_01D4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .Lt_01D6
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+12]
cmp eax, ebx
jne .Lt_01D8
jmp .Lt_01CD
.Lt_01D8:
.Lt_01D7:
jmp .Lt_01D5
.Lt_01D6:
jmp .Lt_01CD
.Lt_01D5:
.Lt_01D4:
.Lt_01D3:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.Lt_01D2:
cmp dword ptr [ebp-8], 0
jne .Lt_01D0
.Lt_01D1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .Lt_01CE
.Lt_01CF:
.Lt_01BC:
mov dword ptr [ebp-4], 0
jmp .Lt_01BB
.Lt_01CD:
sub esp, 12
push dword ptr [ebp-8]
call SYMBVARCHECKACCESS
add esp, 16
test eax, eax
je .Lt_01DA
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01D9
.Lt_01DA:
mov dword ptr [ebp-4], 0
.Lt_01D9:
.Lt_01BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBFINDVARBYDEFTYPE, .-SYMBFINDVARBYDEFTYPE
.balign 16

.globl SYMBFINDBYCLASSANDTYPE
SYMBFINDBYCLASSANDTYPE:
.type SYMBFINDBYCLASSANDTYPE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01DB:
mov dword ptr [ebp-4], 0
.Lt_01DD:
cmp dword ptr [ebp+8], 0
je .Lt_01DE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_01DF:
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
je .Lt_01E3
cmp dword ptr [ebp+12], 1
jne .Lt_01E5
sub esp, 12
push dword ptr [ebp-8]
call SYMBVARCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_01E7
jmp .Lt_01DC
.Lt_01E7:
.Lt_01E6:
.Lt_01E5:
.Lt_01E4:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01DC
.Lt_01E3:
.Lt_01E2:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+156]
mov dword ptr [ebp-8], ecx
.Lt_01E1:
cmp dword ptr [ebp-8], 0
jne .Lt_01DF
.Lt_01E0:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp+8], eax
jmp .Lt_01DD
.Lt_01DE:
.Lt_01DC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBFINDBYCLASSANDTYPE, .-SYMBFINDBYCLASSANDTYPE
.balign 16

.globl SYMBDELFROMCHAINLIST
SYMBDELFROMCHAINLIST:
.type SYMBDELFROMCHAINLIST, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_01EA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+152]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-4], 0
je .Lt_01ED
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+156], ebx
cmp dword ptr [ebp-8], 0
je .Lt_01EF
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+152], eax
.Lt_01EF:
.Lt_01EE:
jmp .Lt_01EC
.Lt_01ED:
cmp dword ptr [ebp-8], 0
je .Lt_01F1
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
jmp .Lt_01F0
.Lt_01F1:
sub esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+148]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+144]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+140]
lea ebx, [ecx+4]
push ebx
call HASHDEL
add esp, 16
.Lt_01F0:
.Lt_01EC:
.Lt_01EB:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBDELFROMCHAINLIST, .-SYMBDELFROMCHAINLIST
.balign 16

.globl SYMBDELFROMHASH
SYMBDELFROMHASH:
.type SYMBDELFROMHASH, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_01F2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+144], 0
jne .Lt_01F5
jmp .Lt_01F3
.Lt_01F5:
.Lt_01F4:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDELFROMCHAINLIST
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+144], 0
.Lt_01F3:
mov esp, ebp
pop ebp
ret
.size SYMBDELFROMHASH, .-SYMBDELFROMHASH
.balign 16

.globl SYMBFREESYMBOL
SYMBFREESYMBOL:
.type SYMBFREESYMBOL, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01F6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 31
cmp ebx, 23
jne .Lt_01F9
sub esp, 8
push dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call SYMBREMOVEFROMFWDREF
add esp, 16
.Lt_01F9:
.Lt_01F8:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDELFROMHASH
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL_UNLINKONLY
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL_REMONLY
add esp, 16
.Lt_01F7:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBFREESYMBOL, .-SYMBFREESYMBOL
.balign 16

.globl SYMBFREESYMBOL_REMONLY
SYMBFREESYMBOL_REMONLY:
.type SYMBFREESYMBOL_REMONLY, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_01FA:
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
lea eax, [SYMB+98608]
push eax
call POOLDELITEM
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_01FD
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call free
add esp, 16
.Lt_01FD:
.Lt_01FC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .Lt_01FF
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call free
add esp, 16
.Lt_01FF:
.Lt_01FE:
sub esp, 8
push dword ptr [ebp+8]
lea eax, [SYMB+4]
push eax
call LISTDELNODE
add esp, 16
.Lt_01FB:
mov esp, ebp
pop ebp
ret
.size SYMBFREESYMBOL_REMONLY, .-SYMBFREESYMBOL_REMONLY
.balign 16

.globl SYMBFREESYMBOL_UNLINKONLY
SYMBFREESYMBOL_UNLINKONLY:
.type SYMBFREESYMBOL_UNLINKONLY, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0200:
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
je .Lt_0203
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+172], eax
jmp .Lt_0202
.Lt_0203:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+4], ebx
.Lt_0202:
cmp dword ptr [ebp-12], 0
je .Lt_0205
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+168], eax
jmp .Lt_0204
.Lt_0205:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.Lt_0204:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+168], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+172], 0
.Lt_0201:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBFREESYMBOL_UNLINKONLY, .-SYMBFREESYMBOL_UNLINKONLY
.balign 16

.globl SYMBDELSYMBOL
SYMBDELSYMBOL:
.type SYMBDELSYMBOL, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0206:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .Lt_0209
.Lt_020B:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBDELVAR
add esp, 16
jmp .Lt_0208
.Lt_020C:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDELCONST
add esp, 16
jmp .Lt_0208
.Lt_020D:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDELPROTOTYPE
add esp, 16
jmp .Lt_0208
.Lt_020E:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDELDEFINE
add esp, 16
jmp .Lt_0208
.Lt_020F:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDELLABEL
add esp, 16
jmp .Lt_0208
.Lt_0210:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDELENUM
add esp, 16
jmp .Lt_0208
.Lt_0211:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDELSTRUCT
add esp, 16
jmp .Lt_0208
.Lt_0212:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDELSCOPE
add esp, 16
jmp .Lt_0208
.Lt_0213:
sub esp, 12
push dword ptr [ebp+8]
call SYMBDELNAMESPACE
add esp, 16
jmp .Lt_0208
.Lt_0214:
sub esp, 8
push 0
push dword ptr [ebp+8]
call SYMBNAMESPACEREMOVE
add esp, 16
jmp .Lt_0208
.Lt_0215:
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 16
jmp .Lt_0208
.Lt_0209:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967295
cmp ebx, 15
ja .Lt_0215
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.LT_0216+ebx*4-4]
.LT_0216:
.int .Lt_020B
.int .Lt_020C
.int .Lt_020D
.int .Lt_0215
.int .Lt_020E
.int .Lt_0215
.int .Lt_020F
.int .Lt_0213
.int .Lt_0210
.int .Lt_0211
.int .Lt_0215
.int .Lt_020B
.int .Lt_0215
.int .Lt_0215
.int .Lt_0212
.int .Lt_0214
.Lt_0208:
.Lt_0207:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBDELSYMBOL, .-SYMBDELSYMBOL
.balign 16

.globl SYMBCLONESYMBOL
SYMBCLONESYMBOL:
.type SYMBCLONESYMBOL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0217:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .Lt_021A
.Lt_021C:
sub esp, 12
push dword ptr [ebp+8]
call SYMBADDPROCPTRFROMFUNCTION
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0219
.Lt_021D:
sub esp, 12
push dword ptr [ebp+8]
call SYMBCLONEVAR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0219
.Lt_021E:
sub esp, 12
push dword ptr [ebp+8]
call SYMBCLONECONST
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0219
.Lt_021F:
sub esp, 12
push dword ptr [ebp+8]
call SYMBCLONELABEL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0219
.Lt_0220:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 8192
test ebx, ebx
je .Lt_0222
sub esp, 4
lea ebx, [ebp-12]
push ebx
lea ebx, [ebp-8]
push ebx
push dword ptr [ebp+8]
call SYMBGETDESCTYPEARRAYDTYPE
add esp, 16
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call SYMBGETDESCTYPEDIMENSIONS
add esp, 4
push eax
call SYMBADDARRAYDESCRIPTORTYPE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0221
.Lt_0222:
sub esp, 12
push dword ptr [ebp+8]
call SYMBCLONESIMPLESTRUCT
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0221:
jmp .Lt_0219
.Lt_0223:
mov dword ptr [ebp-4], 0
jmp .Lt_0219
.Lt_021A:
mov eax, dword ptr [ebp-16]
add eax, 4294967295
cmp eax, 9
ja .Lt_0223
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_0224+eax*4-4]
.LT_0224:
.int .Lt_021D
.int .Lt_021E
.int .Lt_021C
.int .Lt_0223
.int .Lt_0223
.int .Lt_0223
.int .Lt_021F
.int .Lt_0223
.int .Lt_0223
.int .Lt_0220
.Lt_0219:
.Lt_0218:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCLONESYMBOL, .-SYMBCLONESYMBOL
.balign 16

.globl SYMBDELGLOBALTB
SYMBDELGLOBALTB:
.type SYMBDELGLOBALTB, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0225:
.Lt_0227:
mov eax, dword ptr [SYMB+98416]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_022B
jmp .Lt_0228
.Lt_022B:
.Lt_022A:
sub esp, 8
push -1
push dword ptr [ebp-4]
call SYMBDELSYMBOL
add esp, 16
.Lt_0229:
jmp .Lt_0227
.Lt_0228:
.Lt_0226:
mov esp, ebp
pop ebp
ret
.size SYMBDELGLOBALTB, .-SYMBDELGLOBALTB
.balign 16

.globl SYMBDELSYMBOLTB
SYMBDELSYMBOLTB:
.type SYMBDELSYMBOLTB, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_022C:
cmp dword ptr [ebp+12], 0
je .Lt_022F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.Lt_0230:
cmp dword ptr [ebp-4], 0
je .Lt_0231
sub esp, 12
push dword ptr [ebp-4]
call SYMBDELFROMHASH
add esp, 16
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 16
jne .Lt_0233
sub esp, 8
push -1
push dword ptr [ebp-4]
call SYMBNAMESPACEREMOVE
add esp, 16
.Lt_0233:
.Lt_0232:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-4], eax
jmp .Lt_0230
.Lt_0231:
jmp .Lt_022E
.Lt_022F:
.Lt_0234:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_0238
jmp .Lt_0235
.Lt_0238:
.Lt_0237:
sub esp, 8
push -1
push dword ptr [ebp-4]
call SYMBDELSYMBOL
add esp, 16
.Lt_0236:
jmp .Lt_0234
.Lt_0235:
.Lt_022E:
.Lt_022D:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBDELSYMBOLTB, .-SYMBDELSYMBOLTB
.balign 16

.globl SYMBHASCTOR
SYMBHASCTOR:
.type SYMBHASCTOR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0239:
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call TYPEHASCTOR
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_023A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size SYMBHASCTOR, .-SYMBHASCTOR
.balign 16

.globl SYMBHASDEFCTOR
SYMBHASDEFCTOR:
.type SYMBHASDEFCTOR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_023B:
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call TYPEHASDEFCTOR
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_023C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size SYMBHASDEFCTOR, .-SYMBHASDEFCTOR
.balign 16

.globl SYMBHASDTOR
SYMBHASDTOR:
.type SYMBHASDTOR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_023D:
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call TYPEHASDTOR
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_023E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size SYMBHASDTOR, .-SYMBHASDTOR
.balign 16

.globl SYMBISDATADESC
SYMBISDATADESC:
.type SYMBISDATADESC, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_023F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .Lt_0242
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
cmp eax, dword ptr [AST+116]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_0242:
.Lt_0241:
.Lt_0240:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBISDATADESC, .-SYMBISDATADESC
.balign 16

.globl SYMBISARRAY
SYMBISARRAY:
.type SYMBISARRAY, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0244:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .Lt_0249
.Lt_024A:
cmp dword ptr [ebp-8], 12
jne .Lt_0248
.Lt_0249:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .Lt_0246
.Lt_0248:
mov dword ptr [ebp-4], 0
.Lt_024B:
.Lt_0246:
.Lt_0245:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBISARRAY, .-SYMBISARRAY
.balign 16

.globl SYMBISSTRING
SYMBISSTRING:
.type SYMBISSTRING, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_024D:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_0250
.Lt_0252:
mov dword ptr [ebp-4], -1
jmp .Lt_024F
.Lt_0253:
mov dword ptr [ebp-4], 0
jmp .Lt_024F
.Lt_0250:
mov eax, dword ptr [ebp-8]
add eax, 4294967292
cmp eax, 14
ja .Lt_0253
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0254+eax*4-16]
.LT_0254:
.int .Lt_0252
.int .Lt_0253
.int .Lt_0253
.int .Lt_0252
.int .Lt_0253
.int .Lt_0253
.int .Lt_0253
.int .Lt_0253
.int .Lt_0253
.int .Lt_0253
.int .Lt_0253
.int .Lt_0253
.int .Lt_0253
.int .Lt_0252
.int .Lt_0252
.Lt_024F:
.Lt_024E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size SYMBISSTRING, .-SYMBISSTRING
.balign 16

.globl SYMBGETVALISTTYPE
SYMBGETVALISTTYPE:
.type SYMBGETVALISTTYPE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0255:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .Lt_0258
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_025B
.Lt_025C:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .Lt_025E
mov dword ptr [ebp-4], 2
.Lt_025E:
.Lt_025D:
jmp .Lt_0259
.Lt_025B:
cmp dword ptr [ebp-8], 20
jne .Lt_025F
.Lt_0260:
cmp dword ptr [ebp+12], 0
je .Lt_0262
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+116]
and ebx, 15728640
sar ebx, 20
mov dword ptr [ebp-4], ebx
.Lt_0262:
.Lt_0261:
jmp .Lt_0259
.Lt_025F:
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_0264
mov dword ptr [ebp-12], 24
jmp .Lt_0273
.Lt_0264:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_0273:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .Lt_0267
mov ebx, dword ptr [ebp+8]
and ebx, 480
test ebx, ebx
je .Lt_0269
mov dword ptr [ebp-4], 1
.Lt_0269:
.Lt_0268:
.Lt_0267:
.Lt_0266:
.Lt_0263:
.Lt_0259:
jmp .Lt_0257
.Lt_0258:
cmp dword ptr [ebp+12], 0
je .Lt_026A
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_026D
.Lt_026E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 32505856
sar ebx, 20
cmp ebx, 19
jne .Lt_0270
mov dword ptr [ebp-4], 2
.Lt_0270:
.Lt_026F:
jmp .Lt_026B
.Lt_026D:
cmp dword ptr [ebp-8], 20
jne .Lt_0271
.Lt_0272:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+116]
and eax, 15728640
sar eax, 20
mov dword ptr [ebp-4], eax
.Lt_0271:
.Lt_026B:
.Lt_026A:
.Lt_0257:
.Lt_0256:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBGETVALISTTYPE, .-SYMBGETVALISTTYPE
.balign 16

.globl SYMBTYPETOSTR
SYMBTYPETOSTR:
.type SYMBTYPETOSTR, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0274:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], -2147483648
jne .Lt_0277
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0275
.Lt_0277:
.Lt_0276:
cmp dword ptr [ebp+20], 0
jg .Lt_0279
jl .Lt_02A0
cmp dword ptr [ebp+16], 0
ja .Lt_0279
.Lt_02A0:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBCALCLEN
add esp, 16
mov dword ptr [ebp+16], eax
mov dword ptr [ebp+20], edx
.Lt_0279:
.Lt_0278:
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
je .Lt_027B
sub esp, 12
push 0
push 7
push offset Lt_027C
push -1
lea edx, [ebp-24]
push edx
call fb_StrAssign
add esp, 32
jmp .Lt_027A
.Lt_027B:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea edx, [ebp-24]
push edx
call fb_StrAssign
add esp, 32
.Lt_027A:
mov edx, dword ptr [ebp-32]
mov dword ptr [ebp-36], edx
jmp .Lt_027E
.Lt_0280:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call HGETNAMESPACEPREFIX
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
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
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_027D
.Lt_0282:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp-32]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+24]
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov edx, ebx
sar edx, 31
cmp dword ptr [ebp+20], edx
mov eax, -1
jne .Lt_02A1
cmp dword ptr [ebp+16], ebx
jne .Lt_02A1
.Lt_02A2:
xor eax, eax
.Lt_02A1:
or eax, dword ptr [ebp+24]
je .Lt_0285
cmp dword ptr [ebp-32], 18
jne .Lt_0287
.Lt_0288:
add dword ptr [ebp+16], 4294967295
adc dword ptr [ebp+20], 4294967295
jmp .Lt_0286
.Lt_0287:
cmp dword ptr [ebp-32], 7
jne .Lt_0289
.Lt_028A:
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call __divdi3
add esp, 16
mov dword ptr [ebp+16], eax
mov dword ptr [ebp+20], edx
.Lt_0289:
.Lt_0286:
sub esp, 12
push 0
push 4
push offset Lt_028B
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0285:
.Lt_0284:
jmp .Lt_027D
.Lt_028C:
cmp dword ptr [ebp-28], 0
jle .Lt_028E
dec dword ptr [ebp-28]
.Lt_028E:
.Lt_028D:
cmp dword ptr [ebp-28], 0
jle .Lt_0290
sub esp, 12
push 0
push 8
push offset Lt_0291
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0290:
.Lt_028F:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call SYMBPROCPTRTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp-28], 0
jle .Lt_0293
sub esp, 12
push 0
push 2
push offset Lt_0294
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0293:
.Lt_0292:
jmp .Lt_027D
.Lt_0295:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp-32]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+24]
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_027D
.Lt_027E:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 19
ja .Lt_0295
mov eax, dword ptr [ebp-36]
jmp dword ptr [.LT_0297+eax*4-16]
.LT_0297:
.int .Lt_0282
.int .Lt_0295
.int .Lt_0295
.int .Lt_0282
.int .Lt_0295
.int .Lt_0295
.int .Lt_0280
.int .Lt_0295
.int .Lt_0295
.int .Lt_0295
.int .Lt_0295
.int .Lt_0295
.int .Lt_0295
.int .Lt_0295
.int .Lt_0282
.int .Lt_0295
.int .Lt_0280
.int .Lt_0295
.int .Lt_028C
.int .Lt_0280
.Lt_027D:
mov eax, dword ptr [ebp-28]
dec eax
mov dword ptr [ebp-36], eax
jmp .Lt_0298
.Lt_029B:
mov eax, dword ptr [ebp-36]
add eax, 9
mov edx, 1
mov ecx, eax
sal edx, cl
and edx, dword ptr [ebp+8]
test edx, edx
je .Lt_029D
sub esp, 12
push 0
push 7
push offset Lt_029E
push -1
lea edx, [ebp-24]
push edx
call fb_StrConcatAssign
add esp, 32
.Lt_029D:
.Lt_029C:
sub esp, 12
push 0
push 5
push offset Lt_029F
push -1
lea edx, [ebp-24]
push edx
call fb_StrConcatAssign
add esp, 32
.Lt_0299:
dec dword ptr [ebp-36]
.Lt_0298:
cmp dword ptr [ebp-36], 0
jge .Lt_029B
.Lt_029A:
sub esp, 12
push 0
push -1
lea edx, [ebp-24]
push edx
push -1
lea edx, [ebp-12]
push edx
call fb_StrAssign
add esp, 32
sub esp, 12
lea edx, [ebp-24]
push edx
call fb_StrDelete
add esp, 16
.Lt_0275:
sub esp, 12
lea edx, [ebp-12]
push edx
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBTYPETOSTR, .-SYMBTYPETOSTR
.balign 16

.globl SYMBGETDEFTYPE
SYMBGETDEFTYPE:
.type SYMBGETDEFTYPE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_02A3:
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
je .Lt_02A8
add dword ptr [ebp-8], 4294967264
.Lt_02A8:
.Lt_02A7:
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
je .Lt_02AA
cmp dword ptr [ENV+136], 3
jne .Lt_02AC
mov dword ptr [ebp-4], 15
jmp .Lt_02AB
.Lt_02AC:
mov dword ptr [ebp-4], 8
.Lt_02AB:
jmp .Lt_02A9
.Lt_02AA:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [DEFTYPETB+eax*4]
mov dword ptr [ebp-4], ebx
.Lt_02A9:
.Lt_02A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBGETDEFTYPE, .-SYMBGETDEFTYPE
.balign 16

.globl SYMBSETDEFTYPE
SYMBSETDEFTYPE:
.type SYMBSETDEFTYPE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_02B1:
cmp dword ptr [ebp+8], 65
jae .Lt_02B4
mov dword ptr [ebp+8], 65
jmp .Lt_02B3
.Lt_02B4:
cmp dword ptr [ebp+8], 95
jbe .Lt_02B5
mov dword ptr [ebp+8], 95
.Lt_02B5:
.Lt_02B3:
cmp dword ptr [ebp+12], 65
jae .Lt_02B7
mov dword ptr [ebp+12], 65
jmp .Lt_02B6
.Lt_02B7:
cmp dword ptr [ebp+12], 95
jbe .Lt_02B8
mov dword ptr [ebp+12], 95
.Lt_02B8:
.Lt_02B6:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jle .Lt_02BA
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+8], eax
pop dword ptr [ebp+12]
.Lt_02BA:
.Lt_02B9:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
jmp .Lt_02BC
.Lt_02BF:
mov eax, dword ptr [ebp-4]
add eax, 4294967231
mov ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [DEFTYPETB+ebx*4], eax
.Lt_02BD:
inc dword ptr [ebp-4]
.Lt_02BC:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .Lt_02BF
.Lt_02BE:
.Lt_02B2:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBSETDEFTYPE, .-SYMBSETDEFTYPE
.balign 16

.globl SYMBRECALCLEN
SYMBRECALCLEN:
.type SYMBRECALCLEN, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_02C0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .Lt_02C3
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call SYMBCALCPARAMLEN
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+40], eax
mov dword ptr [ebx+44], edx
jmp .Lt_02C2
.Lt_02C3:
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call SYMBCALCLEN
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+40], eax
mov dword ptr [ebx+44], edx
.Lt_02C2:
.Lt_02C1:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBRECALCLEN, .-SYMBRECALCLEN
.balign 16

.globl SYMBSETTYPE
SYMBSETTYPE:
.type SYMBSETTYPE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_02C4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+32], eax
sub esp, 12
push dword ptr [ebp+8]
call SYMBRECALCLEN
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_02C7
sub esp, 12
push dword ptr [ebp+8]
call SYMBPROCRECALCREALTYPE
add esp, 16
.Lt_02C7:
.Lt_02C6:
mov eax, dword ptr [ebp+12]
and eax, 31
cmp eax, 23
jne .Lt_02C9
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call SYMBADDTOFWDREF
add esp, 16
.Lt_02C9:
.Lt_02C8:
.Lt_02C5:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBSETTYPE, .-SYMBSETTYPE
.balign 16

.globl SYMBCALCLEN
SYMBCALCLEN:
.type SYMBCALCLEN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_02CA:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_02CC
mov dword ptr [ebp-12], 24
jmp .Lt_02D7
.Lt_02CC:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_02D7:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .Lt_02CF
.Lt_02D1:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_02CE
.Lt_02D2:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
jmp .Lt_02CE
.Lt_02D3:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_02D4
mov dword ptr [ebp-20], 24
jmp .Lt_02D8
.Lt_02D4:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-20], ecx
.Lt_02D8:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
mov ebx, eax
sar ebx, 31
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
jmp .Lt_02CE
.Lt_02CF:
mov eax, dword ptr [ebp-16]
add eax, 4294967278
cmp eax, 2
ja .Lt_02D3
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_02D6+eax*4-72]
.LT_02D6:
.int .Lt_02D1
.int .Lt_02D3
.int .Lt_02D2
.Lt_02CE:
.Lt_02CB:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCALCLEN, .-SYMBCALCLEN
.balign 16

.globl SYMBCALCDEREFLEN
SYMBCALCDEREFLEN:
.type SYMBCALCDEREFLEN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_02D9:
sub esp, 8
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
call SYMBCALCLEN
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jne .Lt_02DC
cmp dword ptr [ebp-16], 0
jne .Lt_02DC
.Lt_02DF:
cmp dword ptr [ebp+8], 32
jne .Lt_02DE
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 0
.Lt_02DE:
.Lt_02DD:
.Lt_02DC:
.Lt_02DB:
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], edx
mov dword ptr [ebp-4], eax
.Lt_02DA:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCALCDEREFLEN, .-SYMBCALCDEREFLEN
.balign 16

.globl SYMBCHECKACCESS
SYMBCHECKACCESS:
.type SYMBCHECKACCESS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_02E0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 6291456
test ebx, ebx
jne .Lt_02E3
mov dword ptr [ebp-4], -1
jmp .Lt_02E1
.Lt_02E3:
.Lt_02E2:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
.Lt_02E4:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_02E6:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 10
jne .Lt_02E4
.Lt_02E5:
mov ebx, dword ptr [SYMB+98528]
mov dword ptr [ebp-12], ebx
.Lt_02E7:
lea ebx, [SYMB+98352]
cmp dword ptr [ebp-12], ebx
je .Lt_02E8
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 10
jne .Lt_02EA
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-12], ebx
jne .Lt_02EC
mov dword ptr [ebp-4], -1
jmp .Lt_02E1
.Lt_02EC:
.Lt_02EB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4194304
je .Lt_02EE
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call SYMBGETUDTBASELEVEL
add esp, 16
test eax, eax
jle .Lt_02F0
mov dword ptr [ebp-4], -1
jmp .Lt_02E1
.Lt_02F0:
.Lt_02EF:
.Lt_02EE:
.Lt_02ED:
.Lt_02EA:
.Lt_02E9:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .Lt_02E7
.Lt_02E8:
mov dword ptr [ebp-4], 0
.Lt_02E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCHECKACCESS, .-SYMBCHECKACCESS
.balign 16

.globl SYMBCHECKCONSTASSIGNTOPLEVEL
SYMBCHECKCONSTASSIGNTOPLEVEL:
.type SYMBCHECKCONSTASSIGNTOPLEVEL, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_02F1:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
and eax, 261632
mov ebx, dword ptr [ebp+12]
and ebx, 261632
or eax, ebx
test eax, eax
jne .Lt_02F4
mov dword ptr [ebp-4], -1
jmp .Lt_02F2
.Lt_02F4:
.Lt_02F3:
cmp dword ptr [ebp+24], 4
jne .Lt_02F6
mov dword ptr [ebp-4], -1
jmp .Lt_02F2
.Lt_02F6:
.Lt_02F5:
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
jne .Lt_02F8
.Lt_02F9:
mov dword ptr [ebp-8], 1
mov eax, dword ptr [ebp-16]
inc eax
mov ebx, dword ptr [ebp+28]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
and eax, 512
test eax, eax
je .Lt_02FB
mov eax, dword ptr [ebp+28]
inc dword ptr [eax]
.Lt_02FB:
.Lt_02FA:
jmp .Lt_02F7
.Lt_02F8:
cmp dword ptr [ebp+24], 0
jne .Lt_02FC
.Lt_02FD:
mov dword ptr [ebp-8], 1
jmp .Lt_02F7
.Lt_02FC:
inc dword ptr [ebp-20]
.Lt_02FE:
.Lt_02F7:
.Lt_02FF:
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
je .Lt_0300
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
jne .Lt_0302
mov ebx, dword ptr [ebp+28]
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebx], eax
jge .Lt_0304
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax], ebx
.Lt_0304:
.Lt_0303:
.Lt_0302:
.Lt_0301:
mov ebx, dword ptr [ebp-24]
not ebx
and ebx, dword ptr [ebp-28]
je .Lt_0306
jmp .Lt_02F2
.Lt_0306:
.Lt_0305:
dec dword ptr [ebp-20]
inc dword ptr [ebp-8]
jmp .Lt_02FF
.Lt_0300:
mov dword ptr [ebp-4], -1
.Lt_02F2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCHECKCONSTASSIGNTOPLEVEL, .-SYMBCHECKCONSTASSIGNTOPLEVEL
.balign 16

.globl SYMBCHECKCONSTASSIGN
SYMBCHECKCONSTASSIGN:
.type SYMBCHECKCONSTASSIGN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_031C:
sub esp, 8
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBCHECKCONSTASSIGNTOPLEVEL
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_031F
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
je .Lt_0321
sub esp, 4
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HSYMBCHECKCONSTASSIGNFUNCPTR
add esp, 32
and dword ptr [ebp-8], eax
.Lt_0321:
.Lt_0320:
.Lt_031F:
.Lt_031E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_031D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCHECKCONSTASSIGN, .-SYMBCHECKCONSTASSIGN
.balign 16

.globl SYMBFOREACHGLOBAL
SYMBFOREACHGLOBAL:
.type SYMBFOREACHGLOBAL, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0332:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [SYMB+98412]
call HFOREACHGLOBAL
add esp, 16
.Lt_0333:
mov esp, ebp
pop ebp
ret
.size SYMBFOREACHGLOBAL, .-SYMBFOREACHGLOBAL
.balign 16

.globl SYMBDUMPPRETTYTOSTR
SYMBDUMPPRETTYTOSTR:
.type SYMBDUMPPRETTYTOSTR, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0350:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
sub esp, 4
push 2
push offset Lt_0352
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [CLASSNAMESPRETTY+ebx*4-4]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea ebx, [ebp-24]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0351:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBDUMPPRETTYTOSTR, .-SYMBDUMPPRETTYTOSTR
.balign 16
fb_ctor__symb:
.type fb_ctor__symb, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__symb, .-fb_ctor__symb
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
HINITDEFTYPETB:
.type HINITDEFTYPETB, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_006F:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ENV+136], 3
jne .Lt_0072
mov dword ptr [ebp-4], 15
jmp .Lt_0071
.Lt_0072:
mov dword ptr [ebp-4], 8
.Lt_0071:
mov dword ptr [ebp-8], 0
.Lt_0076:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [DEFTYPETB+eax*4], ebx
.Lt_0074:
inc dword ptr [ebp-8]
.Lt_0073:
cmp dword ptr [ebp-8], 30
jle .Lt_0076
.Lt_0075:
.Lt_0070:
pop ebx
mov esp, ebp
pop ebp
ret
.size HINITDEFTYPETB, .-HINITDEFTYPETB
.balign 16
CHAINPOOLNEXT:
.type CHAINPOOLNEXT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_014B:
inc dword ptr [SYMB+98348]
cmp dword ptr [SYMB+98348], 4096
jl .Lt_014E
mov dword ptr [SYMB+98348], 0
.Lt_014E:
.Lt_014D:
mov eax, dword ptr [SYMB+98348]
imul eax, 24
mov ebx, offset SYMB
add ebx, eax
lea eax, [ebx+44]
mov dword ptr [ebp-4], eax
.Lt_014C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CHAINPOOLNEXT, .-CHAINPOOLNEXT
.balign 16
HLOOKUPIMPORTHASH:
.type HLOOKUPIMPORTHASH, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0161:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [SYMB+98564]
push eax
call HASHLOOKUPEX
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0164
mov dword ptr [ebp-4], 0
jmp .Lt_0162
.Lt_0164:
.Lt_0163:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-20], eax
.Lt_0165:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-24], ebx
.Lt_0168:
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebx+68], eax
jne .Lt_016C
call CHAINPOOLNEXT
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
jne .Lt_016E
mov ecx, dword ptr [ebp-28]
mov dword ptr [ebp-12], ecx
jmp .Lt_016D
.Lt_016E:
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-28]
mov dword ptr [ecx+4], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .Lt_0162
.Lt_016D:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-16], ebx
.Lt_016C:
.Lt_016B:
mov ebx, dword ptr [ebp-24]
mov ecx, dword ptr [ebx+76]
mov dword ptr [ebp-24], ecx
.Lt_016A:
cmp dword ptr [ebp-24], 0
jne .Lt_0168
.Lt_0169:
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-20], ebx
.Lt_0167:
cmp dword ptr [ebp-20], 0
jne .Lt_0165
.Lt_0166:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.Lt_0162:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HLOOKUPIMPORTHASH, .-HLOOKUPIMPORTHASH
.balign 16
HLOOKUPIMPORTLIST:
.type HLOOKUPIMPORTLIST, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_016F:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
.Lt_0171:
cmp dword ptr [ebp-16], 0
je .Lt_0172
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+56]
lea eax, [ebx+72]
push eax
call HASHLOOKUPEX
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_0174
call CHAINPOOLNEXT
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+8], -1
cmp dword ptr [ebp-8], 0
jne .Lt_0176
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-8], ebx
jmp .Lt_0175
.Lt_0176:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0170
.Lt_0175:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-12], eax
.Lt_0174:
.Lt_0173:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-16], ebx
jmp .Lt_0171
.Lt_0172:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0170:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HLOOKUPIMPORTLIST, .-HLOOKUPIMPORTLIST
.balign 16
HSYMBCHECKCONSTASSIGNFUNCPTR:
.type HSYMBCHECKCONSTASSIGNFUNCPTR, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_030B:
mov dword ptr [ebp-4], 0
sub esp, 12
mov eax, dword ptr [ebp+20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .Lt_030D
mov dword ptr [ebp-8], 2
jmp .Lt_0355
.Lt_030D:
mov dword ptr [ebp-8], 1
.Lt_0355:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+28]
call TYPECALCMATCH
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0310
mov eax, dword ptr [ebp+32]
mov dword ptr [eax], 41
jmp .Lt_030C
.Lt_0310:
.Lt_030F:
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
je .Lt_0312
mov ecx, dword ptr [ebp+32]
mov dword ptr [ecx], 28
jmp .Lt_030C
.Lt_0312:
.Lt_0311:
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call SYMBAREPROCMODESEQUAL
add esp, 16
test eax, eax
jne .Lt_0314
mov eax, dword ptr [ebp+32]
mov dword ptr [eax], 42
jmp .Lt_030C
.Lt_0314:
.Lt_0313:
mov eax, dword ptr [ebp+16]
movsx ecx, word ptr [eax+68]
mov eax, dword ptr [ebp+20]
movsx ebx, word ptr [eax+68]
cmp ecx, ebx
je .Lt_0316
mov ebx, dword ptr [ebp+32]
mov dword ptr [ebx], 43
jmp .Lt_030C
.Lt_0316:
.Lt_0315:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+76]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-20], ebx
.Lt_0317:
cmp dword ptr [ebp-16], 0
je .Lt_0318
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
sub esp, 4
push dword ptr [ebp+32]
mov dword ptr [ebp-44], 0
lea ecx, [ebp-44]
push ecx
push dword ptr [ebp-40]
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call SYMBCHECKCONSTASSIGN
add esp, 32
test eax, eax
jne .Lt_031B
jmp .Lt_030C
.Lt_031B:
.Lt_031A:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-20], eax
jmp .Lt_0317
.Lt_0318:
mov dword ptr [ebp-4], -1
.Lt_030C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HSYMBCHECKCONSTASSIGNFUNCPTR, .-HSYMBCHECKCONSTASSIGNFUNCPTR
.balign 16
HFOREACHGLOBAL:
.type HFOREACHGLOBAL, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0324:
.Lt_0326:
cmp dword ptr [ebp+8], 0
je .Lt_0327
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 8
jne .Lt_032A
.Lt_032B:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call HFOREACHGLOBAL
add esp, 16
jmp .Lt_0328
.Lt_032A:
cmp dword ptr [ebp-4], 10
jne .Lt_032C
.Lt_032D:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call HFOREACHGLOBAL
add esp, 16
jmp .Lt_0328
.Lt_032C:
cmp dword ptr [ebp-4], 15
jne .Lt_032E
.Lt_032F:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call HFOREACHGLOBAL
add esp, 16
jmp .Lt_0328
.Lt_032E:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp-4], ebx
jne .Lt_0330
.Lt_0331:
sub esp, 12
push dword ptr [ebp+8]
call dword ptr [ebp+16]
add esp, 16
.Lt_0330:
.Lt_0328:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp+8], eax
jmp .Lt_0326
.Lt_0327:
.Lt_0325:
pop ebx
mov esp, ebp
pop ebp
ret
.size HFOREACHGLOBAL, .-HFOREACHGLOBAL
.balign 16
HGETNAMESPACEPREFIX:
.type HGETNAMESPACEPREFIX, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0334:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
jne .Lt_0337
sub esp, 12
push 0
push 13
push offset Lt_0338
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0335
.Lt_0337:
.Lt_0336:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
.Lt_0339:
lea eax, [SYMB+98352]
cmp dword ptr [ebp-16], eax
je .Lt_033A
sub esp, 12
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-28]
push eax
push -1
sub esp, 4
push 2
push offset Lt_0007
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+140], 0
jne .Lt_033E
jmp .Lt_033A
.Lt_033E:
.Lt_033D:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
jmp .Lt_0339
.Lt_033A:
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.Lt_0335:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETNAMESPACEPREFIX, .-HGETNAMESPACEPREFIX

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0007:	.ascii	".\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36

.globl SYMB
.balign 4
	.lcomm	SYMB,99640
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
.balign 4
	.lcomm	DEFTYPETB,124

.section .rodata
.balign 4
Lt_027C:	.ascii	"const \0"
.balign 4
Lt_028B:	.ascii	" * \0"
.balign 4
Lt_0291:	.ascii	"typeof(\0"
.balign 4
Lt_0294:	.ascii	")\0"
.balign 4
Lt_029E:	.ascii	" const\0"
.balign 4
Lt_029F:	.ascii	" ptr\0"
.balign 4
Lt_0338:	.ascii	"<no hash tb>\0"

.section .data
.balign 4
CLASSNAMESPRETTY:
.int Lt_0340
.int Lt_0341
.int Lt_0342
.int Lt_0343
.int Lt_0344
.int Lt_0345
.int Lt_0346
.int Lt_0347
.int Lt_0348
.int Lt_0349
.int Lt_034A
.int Lt_034B
.int Lt_034C
.int Lt_034D
.int Lt_034E
.int Lt_034F

.section .rodata
.balign 4
Lt_0340:	.ascii	"variable\0"
.balign 4
Lt_0341:	.ascii	"constant\0"
.balign 4
Lt_0342:	.ascii	"procedure\0"
.balign 4
Lt_0343:	.ascii	"parameter\0"
.balign 4
Lt_0344:	.ascii	"#define\0"
.balign 4
Lt_0345:	.ascii	"keyword\0"
.balign 4
Lt_0346:	.ascii	"label\0"
.balign 4
Lt_0347:	.ascii	"namespace\0"
.balign 4
Lt_0348:	.ascii	"enum\0"
.balign 4
Lt_0349:	.ascii	"type\0"
.balign 4
Lt_034A:	.ascii	"class\0"
.balign 4
Lt_034B:	.ascii	"field\0"
.balign 4
Lt_034C:	.ascii	"type alias\0"
.balign 4
Lt_034D:	.ascii	"forward reference\0"
.balign 4
Lt_034E:	.ascii	"scope\0"
.balign 4
Lt_034F:	.ascii	"namespace import\0"
.balign 4
Lt_0352:	.ascii	" \0"

.section .ctors, "aw", @progbits
.int fb_ctor__symb
