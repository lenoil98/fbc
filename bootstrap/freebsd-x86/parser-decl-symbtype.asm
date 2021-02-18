	.intel_syntax noprefix

.section .text
.balign 16

.globl CCONSTINTEXPR
CCONSTINTEXPR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0068:
cmp dword ptr [ebp+8], 0
jne .Lt_006B
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push dword ptr [ebp+12]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_006B:
.Lt_006A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
je .Lt_006D
push 0
push 0
push 11
call ERRREPORT
add esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 4
push 0
push dword ptr [ebp+12]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_006D:
.Lt_006C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTCONSTFLUSHTOINT
add esp, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.Lt_0069:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl HISCONSTINRANGE
HISCONSTINRANGE:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_006E:
mov eax, dword ptr [ebp+20]
and eax, 480
je .Lt_0071
mov dword ptr [ebp-12], 24
jmp .Lt_008B
.Lt_0071:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_008B:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
imul ebx, 24
lea eax, [Lt_0095+ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0073
mov dword ptr [ebp-16], 24
jmp .Lt_008C
.Lt_0073:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_008C:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_0076
mov eax, dword ptr [ebp+20]
and eax, 480
je .Lt_0077
mov dword ptr [ebp-20], 24
jmp .Lt_008D
.Lt_0077:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_008D:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_007A
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
cmp ebx, dword ptr [eax+4]
mov esi, -1
jg .Lt_0096
jl .Lt_0097
cmp ecx, dword ptr [eax]
jae .Lt_0096
.Lt_0097:
xor esi, esi
.Lt_0096:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
cmp ecx, dword ptr [eax+12]
mov edi, -1
jl .Lt_0098
jg .Lt_0099
cmp ebx, dword ptr [eax+8]
jbe .Lt_0098
.Lt_0099:
xor edi, edi
.Lt_0098:
and esi, edi
mov dword ptr [ebp-4], esi
jmp .Lt_0079
.Lt_007A:
mov esi, dword ptr [ebp+8]
and esi, 480
je .Lt_007B
mov dword ptr [ebp-24], 24
jmp .Lt_008E
.Lt_007B:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-24], esi
.Lt_008E:
mov esi, dword ptr [ebp-24]
imul esi, 28
mov edi, dword ptr [SYMB_DTYPETB+esi+20]
cmp edi, 7
sete dl
mov edi, edx
shr edi, 1
sbb edi, edi
mov dword ptr [ebp-32], edi
mov edi, dword ptr [ebp+20]
and edi, 480
je .Lt_007D
mov dword ptr [ebp-28], 24
jmp .Lt_008F
.Lt_007D:
mov edi, dword ptr [ebp+20]
and edi, 31
mov dword ptr [ebp-28], edi
.Lt_008F:
mov edi, dword ptr [ebp-28]
imul edi, 28
mov esi, dword ptr [SYMB_DTYPETB+edi+20]
cmp esi, 8
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and esi, dword ptr [ebp-32]
je .Lt_0080
cmp dword ptr [ebp+16], 0
mov esi, -1
jg .Lt_009C
jl .Lt_009D
cmp dword ptr [ebp+12], 0
jae .Lt_009C
.Lt_009D:
xor esi, esi
.Lt_009C:
mov edi, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
cmp eax, dword ptr [edi+12]
mov ecx, -1
jb .Lt_009E
ja .Lt_009F
cmp ebx, dword ptr [edi+8]
jbe .Lt_009E
.Lt_009F:
xor ecx, ecx
.Lt_009E:
and esi, ecx
mov dword ptr [ebp-4], esi
jmp .Lt_007F
.Lt_0080:
cmp dword ptr [ebp+16], 0
mov esi, -1
jg .Lt_00A0
jl .Lt_00A1
cmp dword ptr [ebp+12], 0
jae .Lt_00A0
.Lt_00A1:
xor esi, esi
.Lt_00A0:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov edi, dword ptr [ebp+16]
cmp edi, dword ptr [ecx+20]
mov eax, -1
jb .Lt_00A2
ja .Lt_00A3
cmp ebx, dword ptr [ecx+16]
jbe .Lt_00A2
.Lt_00A3:
xor eax, eax
.Lt_00A2:
and esi, eax
mov dword ptr [ebp-4], esi
.Lt_007F:
.Lt_0079:
jmp .Lt_0075
.Lt_0076:
mov esi, dword ptr [ebp+20]
and esi, 480
je .Lt_0081
mov dword ptr [ebp-20], 24
jmp .Lt_0091
.Lt_0081:
mov esi, dword ptr [ebp+20]
and esi, 31
mov dword ptr [ebp-20], esi
.Lt_0091:
mov esi, dword ptr [ebp-20]
imul esi, 28
cmp dword ptr [SYMB_DTYPETB+esi+8], 0
je .Lt_0084
mov esi, dword ptr [ebp+8]
and esi, 480
je .Lt_0085
mov dword ptr [ebp-24], 24
jmp .Lt_0092
.Lt_0085:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-24], esi
.Lt_0092:
mov esi, dword ptr [ebp-24]
imul esi, 28
mov eax, dword ptr [SYMB_DTYPETB+esi+20]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+20]
and eax, 480
je .Lt_0087
mov dword ptr [ebp-28], 24
jmp .Lt_0093
.Lt_0087:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_0093:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov esi, dword ptr [SYMB_DTYPETB+eax+20]
cmp esi, 7
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and esi, dword ptr [ebp-32]
je .Lt_008A
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
cmp eax, dword ptr [esi+12]
mov ebx, -1
jb .Lt_00A6
ja .Lt_00A7
cmp ecx, dword ptr [esi+8]
jbe .Lt_00A6
.Lt_00A7:
xor ebx, ebx
.Lt_00A6:
mov dword ptr [ebp-4], ebx
jmp .Lt_0089
.Lt_008A:
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+16]
cmp esi, dword ptr [ebx+20]
mov eax, -1
jb .Lt_00A8
ja .Lt_00A9
cmp ecx, dword ptr [ebx+16]
jbe .Lt_00A8
.Lt_00A9:
xor eax, eax
.Lt_00A8:
mov dword ptr [ebp-4], eax
.Lt_0089:
jmp .Lt_0083
.Lt_0084:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
cmp ebx, dword ptr [eax+20]
mov esi, -1
jb .Lt_00AA
ja .Lt_00AB
cmp ecx, dword ptr [eax+16]
jbe .Lt_00AA
.Lt_00AB:
xor esi, esi
.Lt_00AA:
mov dword ptr [ebp-4], esi
.Lt_0083:
.Lt_0075:
.Lt_006F:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0095:
.quad 0xFFFFFFFFFFFFFFFF
.quad 0x0
.quad 0x0
.quad 0xFFFFFFFFFFFFFF80
.quad 0x7F
.quad 0x7F
.quad 0x0
.quad 0x7F
.quad 0xFF
.quad 0xFFFFFFFFFFFF8000
.quad 0x7FFF
.quad 0x7FFF
.quad 0x0
.quad 0x7FFF
.quad 0xFFFF
.quad 0xFFFFFFFF80000000
.quad 0x7FFFFFFF
.quad 0x7FFFFFFF
.quad 0x0
.quad 0x7FFFFFFF
.quad 0xFFFFFFFF
.quad 0x8000000000000000
.quad 0x7FFFFFFFFFFFFFFF
.quad 0x7FFFFFFFFFFFFFFF
.quad 0x0
.quad 0x7FFFFFFFFFFFFFFF
.quad 0xFFFFFFFFFFFFFFFF

.section .text
.balign 16

.globl CCONSTINTEXPRRANGED
CCONSTINTEXPRRANGED:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00AC:
cmp dword ptr [ebp+8], 0
jne .Lt_00AF
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push dword ptr [ebp+12]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_00AF:
.Lt_00AE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
je .Lt_00B1
push 0
push 0
push 11
call ERRREPORT
add esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 4
push 0
push 13
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_00B1:
.Lt_00B0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
push 13
push dword ptr [ebp+8]
call ASTCONSTFLUSHTOINT
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
push dword ptr [ebp+12]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call HISCONSTINRANGE
add esp, 16
not eax
test eax, eax
je .Lt_00B3
push 0
push 1
push 0
push 25
call ERRREPORTWARN
add esp, 16
.Lt_00B3:
.Lt_00B2:
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], edx
mov dword ptr [ebp-4], eax
.Lt_00AD:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN
_ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00C7:
.Lt_00C9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.Lt_00CC:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 10
je .Lt_00D2
.Lt_00D3:
cmp dword ptr [ebp-8], 13
je .Lt_00D2
.Lt_00D4:
cmp dword ptr [ebp-8], 14
jne .Lt_00D1
.Lt_00D2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00D6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax], ebx
.Lt_00D6:
.Lt_00D5:
jmp .Lt_00CF
.Lt_00D1:
cmp dword ptr [ebp-8], 1
je .Lt_00D8
.Lt_00D9:
cmp dword ptr [ebp-8], 2
jne .Lt_00D7
.Lt_00D8:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
jne .Lt_00DB
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4], eax
.Lt_00DB:
.Lt_00DA:
.Lt_00D7:
.Lt_00CF:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-4], ebx
.Lt_00CE:
cmp dword ptr [ebp-4], 0
jne .Lt_00CC
.Lt_00CD:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+12], eax
.Lt_00CB:
cmp dword ptr [ebp+12], 0
jne .Lt_00C9
.Lt_00CA:
.Lt_00C8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll
_ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll:
push ebp
mov ebp, esp
sub esp, 44
push ebx
push esi
.Lt_00DC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00DF
jmp .Lt_00DD
.Lt_00DF:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
mov ecx, dword ptr [ebx]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [eax+32]
cmp esi, dword ptr [ebx]
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_00E1
jmp .Lt_00DD
.Lt_00E1:
.Lt_00E0:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
jne .Lt_00E3
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
pop dword ptr [ebp-8]
.Lt_00E3:
.Lt_00E2:
push 0
push -1
push 3
push offset Lt_00E5
push -1
push -1
push dword ptr [ebp+12]
call HGETTOKENDESCRIPTION
add esp, 4
push eax
push 11
push offset Lt_00E4
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 20
push 0
push 16
push offset Lt_00E8
push -1
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-4]
call SYMBDUMPPRETTYTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 14
push offset Lt_00E9
push -1
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-8]
call SYMBDUMPPRETTYTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 20
push dword ptr [ebp-20]
push 1
push 0
push 37
call ERRREPORTWARN
add esp, 16
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 4
.Lt_00DD:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CTYPEOREXPRESSION
CTYPEOREXPRESSION:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EF:
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 265
sete al
shr eax, 1
sbb eax, eax
push 0
push 1
mov ebx, eax
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00F2
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .Lt_00F4
push dword ptr [ebp-32]
lea eax, [ebp-20]
push eax
call _ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN
add esp, 8
.Lt_00F4:
.Lt_00F3:
.Lt_00F2:
.Lt_00F1:
push 0
push 1
call LEXGETLOOKAHEADCLASS
add esp, 8
cmp eax, 5
jne .Lt_00F5
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 42
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .Lt_0110
.Lt_00F5:
mov dword ptr [ebp-24], 0
.Lt_0110:
cmp dword ptr [ebp-24], 0
je .Lt_00F7
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 301
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .Lt_0111
.Lt_00F7:
mov dword ptr [ebp-28], 0
.Lt_0111:
cmp dword ptr [ebp-28], 0
je .Lt_00FA
mov dword ptr [ebp-12], 0
jmp .Lt_00F9
.Lt_00FA:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 91
jne .Lt_00FD
.Lt_00FE:
mov dword ptr [ebp-12], 0
jmp .Lt_00FB
.Lt_00FD:
cmp dword ptr [ebp-32], 40
jne .Lt_00FF
.Lt_0100:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 377
je .Lt_0104
.Lt_0105:
cmp dword ptr [ebp-36], 345
je .Lt_0104
.Lt_0106:
cmp dword ptr [ebp-36], 346
jne .Lt_0103
.Lt_0104:
jmp .Lt_0101
.Lt_0103:
mov dword ptr [ebp-12], 0
.Lt_0107:
.Lt_0101:
.Lt_00FF:
.Lt_00FB:
.Lt_00F9:
mov eax, dword ptr [ebp+8]
cmp eax, 463
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-12]
mov ebx, dword ptr [ENV+136]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0109
mov dword ptr [ebp-12], 0
.Lt_0109:
.Lt_0108:
cmp dword ptr [ebp-12], 0
je .Lt_010B
push 8
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call CSYMBOLTYPE
add esp, 20
test eax, eax
je .Lt_010D
push -1
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call _ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll
add esp, 12
mov dword ptr [PARSER+92], 0
mov dword ptr [ebp-4], 0
jmp .Lt_00F0
.Lt_010D:
.Lt_010C:
.Lt_010B:
.Lt_010A:
push 0
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call _ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll
add esp, 12
push -1
call CEXPRESSIONWITHNIDXARRAY
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_010F
mov dword ptr [PARSER+92], 0
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_010F:
.Lt_010E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00F0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CTYPEOF
CTYPEOF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0118:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 377
call CTYPEOREXPRESSION
add esp, 20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_011B
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CUDTTYPEMEMBER
add esp, 16
jmp .Lt_0119
.Lt_011B:
.Lt_011A:
push dword ptr [ebp-4]
call ASTREMOVENIDXARRAY
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebx], eax
push dword ptr [ebp+20]
push dword ptr [ebp-4]
call ASTSIZEOF
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 4
.Lt_0119:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HINTEGERTYPEFROMBITSIZE
HINTEGERTYPEFROMBITSIZE:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_011C:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_011F
cmp dword ptr [ebp+8], 8
jne .Lt_011F
.Lt_012A:
.Lt_0120:
mov dword ptr [ebp-8], 2
jmp .Lt_011E
.Lt_011F:
cmp dword ptr [ebp+12], 0
jne .Lt_0121
cmp dword ptr [ebp+8], 16
jne .Lt_0121
.Lt_012B:
.Lt_0122:
mov dword ptr [ebp-8], 5
jmp .Lt_011E
.Lt_0121:
cmp dword ptr [ebp+12], 0
jne .Lt_0123
cmp dword ptr [ebp+8], 32
jne .Lt_0123
.Lt_012C:
.Lt_0124:
mov dword ptr [ebp-8], 11
jmp .Lt_011E
.Lt_0123:
cmp dword ptr [ebp+12], 0
jne .Lt_0125
cmp dword ptr [ebp+8], 64
jne .Lt_0125
.Lt_012D:
.Lt_0126:
mov dword ptr [ebp-8], 13
jmp .Lt_011E
.Lt_0125:
push 0
push -1
push 310
call ERRREPORT
add esp, 12
mov dword ptr [ebp-8], 8
.Lt_0127:
.Lt_011E:
cmp dword ptr [ebp+16], 0
je .Lt_0129
push dword ptr [ebp-8]
call TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0129:
.Lt_0128:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_011D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CSYMBOLTYPE
CSYMBOLTYPE:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_0160:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], -2147483648
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 377
jne .Lt_0163
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 40
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0165
push 0
push 0
push 6
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
.Lt_0165:
.Lt_0164:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CTYPEOF
add esp, 16
push 0
push 41
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0167
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
.Lt_0167:
.Lt_0166:
jmp .Lt_0162
.Lt_0163:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 335
jne .Lt_0169
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-16], -1
.Lt_0169:
.Lt_0168:
push 2048
push 375
call HMATCH
add esp, 8
mov dword ptr [ebp-8], eax
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
jmp .Lt_016B
.Lt_016D:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CMANGLEMODIFIER
add esp, 8
jmp .Lt_016A
.Lt_016E:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
jmp .Lt_016A
.Lt_016F:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 2
jmp .Lt_016A
.Lt_0170:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 3
jmp .Lt_016A
.Lt_0171:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 5
jmp .Lt_016A
.Lt_0172:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 6
jmp .Lt_016A
.Lt_0173:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 301
call HMATCH
add esp, 8
test eax, eax
je .Lt_0175
push 8
call CGTINPARENSONLYEXPR
push eax
call CCONSTINTEXPR
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push dword ptr [eax]
call HINTEGERTYPEFROMBITSIZE
add esp, 12
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], eax
push 0
push 300
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0177
push 0
push -1
push 309
call ERRREPORT
add esp, 12
.Lt_0177:
.Lt_0176:
jmp .Lt_0174
.Lt_0175:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ENV+892]
mov dword ptr [eax], edx
.Lt_0174:
jmp .Lt_016A
.Lt_0178:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 301
call HMATCH
add esp, 8
test eax, eax
je .Lt_017A
push 8
call CGTINPARENSONLYEXPR
push eax
call CCONSTINTEXPR
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push dword ptr [eax]
call HINTEGERTYPEFROMBITSIZE
add esp, 12
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], eax
push 0
push 300
call HMATCH
add esp, 8
test eax, eax
jne .Lt_017C
push 0
push -1
push 309
call ERRREPORT
add esp, 12
.Lt_017C:
.Lt_017B:
jmp .Lt_0179
.Lt_017A:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 9
.Lt_0179:
jmp .Lt_016A
.Lt_017D:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 11
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CMANGLEMODIFIER
add esp, 8
jmp .Lt_016A
.Lt_017E:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 12
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CMANGLEMODIFIER
add esp, 8
jmp .Lt_016A
.Lt_017F:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 13
jmp .Lt_016A
.Lt_0180:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 14
jmp .Lt_016A
.Lt_0181:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 15
jmp .Lt_016A
.Lt_0182:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 16
jmp .Lt_016A
.Lt_0183:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 17
jmp .Lt_016A
.Lt_0184:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 4
jmp .Lt_016A
.Lt_0185:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 7
jmp .Lt_016A
.Lt_0186:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 346
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 54
inc dword ptr [ebp-20]
push dword ptr [ebp-12]
call CSYMBOLTYPEFUNCPTR
add esp, 4
mov edx, dword ptr [ebp+12]
mov dword ptr [edx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_0188
jmp .Lt_0161
.Lt_0188:
.Lt_0187:
jmp .Lt_016A
.Lt_016B:
mov eax, dword ptr [ebp-24]
add eax, 4294966951
cmp eax, 27
ja .Lt_016A
mov eax, dword ptr [ebp-24]
jmp dword ptr [.LT_0189+eax*4-1380]
.LT_0189:
.int .Lt_0186
.int .Lt_0186
.int .Lt_016A
.int .Lt_016A
.int .Lt_016A
.int .Lt_016A
.int .Lt_016A
.int .Lt_016A
.int .Lt_016A
.int .Lt_016A
.int .Lt_016A
.int .Lt_016E
.int .Lt_016F
.int .Lt_0170
.int .Lt_0171
.int .Lt_0172
.int .Lt_0173
.int .Lt_0178
.int .Lt_017D
.int .Lt_017E
.int .Lt_017F
.int .Lt_0180
.int .Lt_0181
.int .Lt_0182
.int .Lt_0183
.int .Lt_0184
.int .Lt_0185
.int .Lt_016D
.Lt_016A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], -2147483648
je .Lt_018B
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 511
mov dword ptr [ebp-24], edx
cmp dword ptr [ebp-24], 4
je .Lt_018F
.Lt_0190:
cmp dword ptr [ebp-24], 7
jne .Lt_018E
.Lt_018F:
mov edx, dword ptr [ebp+16]
mov dword ptr [edx], 0
mov dword ptr [edx+4], 0
jmp .Lt_018C
.Lt_018E:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 480
je .Lt_0192
mov dword ptr [ebp-28], 24
jmp .Lt_020F
.Lt_0192:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 31
mov dword ptr [ebp-28], edx
.Lt_020F:
mov edx, dword ptr [ebp-28]
imul edx, 28
mov ebx, dword ptr [SYMB_DTYPETB+edx+4]
mov eax, ebx
sar eax, 31
mov edx, dword ptr [ebp+16]
mov dword ptr [edx], ebx
mov dword ptr [edx+4], eax
.Lt_0191:
.Lt_018C:
jmp .Lt_018A
.Lt_018B:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-32], -1
cmp dword ptr [PARSER+52], 0
je .Lt_0195
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_0197
push 64
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
.Lt_0197:
.Lt_0196:
.Lt_0195:
.Lt_0194:
cmp dword ptr [ebp-32], 0
je .Lt_0199
mov eax, dword ptr [ebp+24]
and eax, 8
je .Lt_019A
mov dword ptr [ebp-36], 0
jmp .Lt_0210
.Lt_019A:
mov dword ptr [ebp-36], 50
.Lt_0210:
push dword ptr [ebp-36]
lea eax, [ebp-28]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp-24], eax
.Lt_0199:
.Lt_0198:
cmp dword ptr [ebp-24], 0
je .Lt_019D
mov eax, dword ptr [ebp+24]
and eax, 8
je .Lt_019F
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 2
je .Lt_01A3
.Lt_01A4:
cmp dword ptr [ebp-36], 1
je .Lt_01A3
.Lt_01A5:
cmp dword ptr [ebp-36], 12
jne .Lt_01A2
.Lt_01A3:
mov eax, dword ptr [ebp-24]
mov dword ptr [PARSER+92], eax
.Lt_01A2:
.Lt_01A0:
.Lt_019F:
.Lt_019E:
.Lt_01A6:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-36], ebx
.Lt_01A9:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 10
jne .Lt_01AE
.Lt_01AF:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-36]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+40]
mov edx, dword ptr [ebx+44]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], edx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CMANGLEMODIFIER
add esp, 8
jmp .Lt_01A7
jmp .Lt_01AC
.Lt_01AE:
cmp dword ptr [ebp-40], 9
jne .Lt_01B0
.Lt_01B1:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 10
mov ecx, dword ptr [ebp+12]
mov edx, dword ptr [ebp-36]
mov dword ptr [ecx], edx
mov ecx, dword ptr [SYMB_DTYPETB+284]
mov edx, ecx
sar edx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], edx
jmp .Lt_01A7
jmp .Lt_01AC
.Lt_01B0:
cmp dword ptr [ebp-40], 13
jne .Lt_01B2
.Lt_01B3:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov ecx, dword ptr [ebp-36]
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
mov dword ptr [edx], eax
mov eax, dword ptr [ebp-36]
mov edx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+32]
mov dword ptr [edx], ecx
mov ecx, dword ptr [ebp-36]
mov edx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+40]
mov eax, dword ptr [ecx+44]
mov dword ptr [edx], ebx
mov dword ptr [edx+4], eax
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+12]
and eax, 2097152
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
sar ebx, 5
add dword ptr [ebp-20], ebx
jmp .Lt_01A7
.Lt_01B2:
.Lt_01AC:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-36], eax
.Lt_01AB:
cmp dword ptr [ebp-36], 0
jne .Lt_01A9
.Lt_01AA:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-24], ebx
.Lt_01A8:
cmp dword ptr [ebp-24], 0
jne .Lt_01A6
.Lt_01A7:
mov ebx, dword ptr [ebp+24]
and ebx, 8
je .Lt_01B5
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], -2147483648
je .Lt_01B7
mov dword ptr [PARSER+92], 0
.Lt_01B7:
.Lt_01B6:
.Lt_01B5:
.Lt_01B4:
.Lt_019D:
.Lt_019C:
.Lt_018A:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], -2147483648
jne .Lt_01B9
cmp dword ptr [ebp-8], 0
je .Lt_01BB
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.Lt_01BB:
.Lt_01BA:
cmp dword ptr [ebp-16], 0
je .Lt_01BD
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 512
.Lt_01BD:
.Lt_01BC:
mov dword ptr [ebp-4], 0
jmp .Lt_0161
.Lt_01B9:
.Lt_01B8:
cmp dword ptr [ebp-8], 0
je .Lt_01BF
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 480
je .Lt_01C0
mov dword ptr [ebp-24], 24
jmp .Lt_0211
.Lt_01C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_0211:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
jmp .Lt_01C3
.Lt_01C5:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 3
jmp .Lt_01C2
.Lt_01C6:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 6
jmp .Lt_01C2
.Lt_01C7:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 9
jmp .Lt_01C2
.Lt_01C8:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 32505856
test eax, eax
je .Lt_01CA
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 9437196
jmp .Lt_01C9
.Lt_01CA:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 12
.Lt_01C9:
jmp .Lt_01C2
.Lt_01CB:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 14
jmp .Lt_01C2
.Lt_01CC:
push 0
push -1
push 17
call ERRREPORT
add esp, 12
jmp .Lt_01C2
.Lt_01C3:
mov eax, dword ptr [ebp-28]
add eax, 4294967294
cmp eax, 11
ja .Lt_01CC
mov eax, dword ptr [ebp-28]
jmp dword ptr [.LT_01CD+eax*4-8]
.LT_01CD:
.int .Lt_01C5
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01C6
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01C7
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01C8
.int .Lt_01CC
.int .Lt_01CB
.Lt_01C2:
.Lt_01BF:
.Lt_01BE:
.Lt_0162:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 42
jne .Lt_01CF
push 0
call LEXSKIPTOKEN
add esp, 4
push 8
call CEQINPARENSONLYEXPR
push eax
call CCONSTINTEXPR
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 480
je .Lt_01D0
mov dword ptr [ebp-24], 24
jmp .Lt_0212
.Lt_01D0:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_0212:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
jmp .Lt_01D3
.Lt_01D5:
mov eax, dword ptr [ebp+16]
add dword ptr [eax], 1
adc dword ptr [eax+4], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+4], 0
jg .Lt_01D7
jl .Lt_021A
cmp dword ptr [eax], 1
ja .Lt_01D7
.Lt_021A:
push 0
push -1
push 17
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 2
mov dword ptr [eax+4], 0
.Lt_01D7:
.Lt_01D6:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 18
jmp .Lt_01D2
.Lt_01D8:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+4], 0
jg .Lt_01DA
jl .Lt_021B
cmp dword ptr [eax], 1
jae .Lt_01DA
.Lt_021B:
push 0
push -1
push 17
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 1
mov dword ptr [eax+4], 0
.Lt_01DA:
.Lt_01D9:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 480
je .Lt_01DB
mov dword ptr [ebp-32], 24
jmp .Lt_0213
.Lt_01DB:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_0213:
cmp dword ptr [ebp-32], 7
jne .Lt_01DE
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov edx, ebx
sar edx, 31
push edx
push ebx
push dword ptr [eax+4]
push dword ptr [eax]
push edx
push eax
mov eax, [esp+8]
mul dword ptr [esp+16]
xchg eax, [esp+8]
imul eax, [esp+20]
add eax, edx
mov edx, [esp+12]
imul edx, [esp+16]
add edx, eax
mov [esp+12], edx
pop eax
pop edx
pop dword ptr [eax]
pop dword ptr [eax+4]
add esp, 8
.Lt_01DE:
.Lt_01DD:
jmp .Lt_01D2
.Lt_01DF:
push 0
push -1
push 17
call ERRREPORT
add esp, 12
jmp .Lt_01D2
.Lt_01D3:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967292
cmp ebx, 13
ja .Lt_01DF
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.LT_01E0+ebx*4-16]
.LT_01E0:
.int .Lt_01D8
.int .Lt_01DF
.int .Lt_01DF
.int .Lt_01D8
.int .Lt_01DF
.int .Lt_01DF
.int .Lt_01DF
.int .Lt_01DF
.int .Lt_01DF
.int .Lt_01DF
.int .Lt_01DF
.int .Lt_01DF
.int .Lt_01DF
.int .Lt_01D5
.Lt_01D2:
mov ebx, dword ptr [ebp+24]
and ebx, 4
je .Lt_01E2
push 0
push -1
push 324
call ERRREPORT
add esp, 12
.Lt_01E2:
.Lt_01E1:
cmp dword ptr [ebp-16], 0
je .Lt_01E4
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx], 512
.Lt_01E4:
.Lt_01E3:
jmp .Lt_01CE
.Lt_01CF:
cmp dword ptr [ebp-16], 0
je .Lt_01E6
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx], 512
.Lt_01E6:
.Lt_01E5:
.Lt_01E7:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
jmp .Lt_01EB
.Lt_01ED:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 373
je .Lt_01F1
.Lt_01F2:
cmp dword ptr [ebp-28], 374
jne .Lt_01F0
.Lt_01F1:
cmp dword ptr [ebp-20], 8
jl .Lt_01F4
push 0
push 0
push 274
call ERRREPORT
add esp, 12
jmp .Lt_01F3
.Lt_01F4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 480
add edx, 32
or ebx, edx
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 32505856
or ebx, edx
or ebx, 512
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], ebx
inc dword ptr [ebp-20]
.Lt_01F3:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_01EE
.Lt_01F0:
push 0
push 0
push 273
call ERRREPORT
add esp, 12
jmp .Lt_01E8
.Lt_01F5:
.Lt_01EE:
jmp .Lt_01EA
.Lt_01F6:
cmp dword ptr [ebp-20], 8
jl .Lt_01F8
push 0
push 0
push 274
call ERRREPORT
add esp, 12
jmp .Lt_01F7
.Lt_01F8:
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx]
and edx, 31
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 480
add eax, 32
or edx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 261632
sal ebx, 1
or edx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 32505856
or edx, eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], edx
inc dword ptr [ebp-20]
.Lt_01F7:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_01EA
.Lt_01F9:
jmp .Lt_01E8
jmp .Lt_01EA
.Lt_01EB:
mov edx, dword ptr [ebp-24]
add edx, 4294966961
cmp edx, 39
ja .Lt_01F9
mov edx, dword ptr [ebp-24]
jmp dword ptr [.LT_01FA+edx*4-1340]
.LT_01FA:
.int .Lt_01ED
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F9
.int .Lt_01F6
.int .Lt_01F6
.Lt_01EA:
.Lt_01E9:
jmp .Lt_01E7
.Lt_01E8:
.Lt_01CE:
cmp dword ptr [ebp-20], 0
jle .Lt_01FC
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 480
je .Lt_01FD
mov dword ptr [ebp-24], 24
jmp .Lt_0214
.Lt_01FD:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 31
mov dword ptr [ebp-24], edx
.Lt_0214:
mov edx, dword ptr [ebp-24]
imul edx, 28
mov ebx, dword ptr [SYMB_DTYPETB+edx+4]
mov eax, ebx
sar eax, 31
mov edx, dword ptr [ebp+16]
mov dword ptr [edx], ebx
mov dword ptr [edx+4], eax
jmp .Lt_01FB
.Lt_01FC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 480
je .Lt_01FF
mov dword ptr [ebp-24], 24
jmp .Lt_0215
.Lt_01FF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_0215:
cmp dword ptr [ebp-24], 23
jne .Lt_0202
mov ebx, dword ptr [ebp+24]
and ebx, 2
test ebx, ebx
jne .Lt_0204
push 0
push -1
push 71
call ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 32
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.Lt_0204:
.Lt_0203:
jmp .Lt_0201
.Lt_0202:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx+4], 0
jg .Lt_0205
jl .Lt_021C
cmp dword ptr [ebx], 0
ja .Lt_0205
.Lt_021C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 4
je .Lt_0209
.Lt_020A:
cmp dword ptr [ebp-28], 7
jne .Lt_0208
.Lt_0209:
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
je .Lt_020C
push 0
push 0
push 28
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 480
add edx, 32
or ebx, edx
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 32505856
or ebx, edx
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], ebx
.Lt_020C:
.Lt_020B:
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx]
and edx, 480
je .Lt_020D
mov dword ptr [ebp-32], 24
jmp .Lt_0216
.Lt_020D:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_0216:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov edx, eax
sar edx, 31
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.Lt_0208:
.Lt_0206:
.Lt_0205:
.Lt_0201:
.Lt_01FB:
mov dword ptr [ebp-4], -1
.Lt_0161:
mov eax, dword ptr [ebp-4]
pop ebx
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
CSYMBOLTYPEFUNCPTR:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-4], 0
.Lt_00B4:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-28], 0
push -1
call CPROCCALLINGCONV
add esp, 4
mov dword ptr [ebp-12], eax
push 0
call SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-24], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp-24]
push 0
call CPARAMETERS
add esp, 16
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call CBYREFATTRIBUTE
add esp, 8
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .Lt_00B7
cmp dword ptr [ebp+8], 0
jne .Lt_00B9
push 0
push 0
push 17
call ERRREPORT
add esp, 12
mov dword ptr [ebp-8], 0
jmp .Lt_00B8
.Lt_00B9:
lea eax, [ebp-28]
push eax
lea eax, [ebp-8]
push eax
push -1
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call CPROCRETTYPE
add esp, 24
.Lt_00B8:
jmp .Lt_00B6
.Lt_00B7:
cmp dword ptr [ebp+8], 0
je .Lt_00BB
push 0
push 0
push 68
call ERRREPORT
add esp, 12
mov dword ptr [ebp-8], 8
jmp .Lt_00BA
.Lt_00BB:
mov dword ptr [ebp-8], 0
.Lt_00BA:
.Lt_00B6:
push dword ptr [ebp-12]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call SYMBADDPROCPTR
add esp, 24
mov dword ptr [ebp-4], eax
.Lt_00B5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HGETTOKENDESCRIPTION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00BC:
cmp dword ptr [ebp+8], 377
jne .Lt_00BF
.Lt_00C0:
push 0
push 7
push offset Lt_00C1
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_00BE
.Lt_00BF:
cmp dword ptr [ebp+8], 463
jne .Lt_00C2
.Lt_00C3:
push 0
push 4
push offset Lt_00C4
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_00BE
.Lt_00C2:
push 0
push 7
push offset Lt_00C6
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.Lt_00C5:
.Lt_00BE:
.Lt_00BD:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
CMANGLEMODIFIER:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_012E:
mov dword ptr [ebp-4], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 384
jne .Lt_0131
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 4
jne .Lt_0133
push 0
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
push 5
push offset Lt_0137
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0136
.Lt_0138:
call FBIS64BIT
mov ebx, dword ptr [ENV+260]
and ebx, 1
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_013A
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 11
jne .Lt_013D
.Lt_013E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, -32505857
or ebx, 8388608
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov dword ptr [ebp-4], -1
jmp .Lt_013B
.Lt_013D:
cmp dword ptr [ebp-20], 12
jne .Lt_013F
.Lt_0140:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, -32505857
or eax, 9437184
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov dword ptr [ebp-4], -1
jmp .Lt_013B
.Lt_013F:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.Lt_0141:
.Lt_013B:
jmp .Lt_0139
.Lt_013A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 11
jne .Lt_0144
.Lt_0145:
jmp .Lt_0142
.Lt_0144:
cmp dword ptr [ebp-20], 12
jne .Lt_0146
.Lt_0147:
jmp .Lt_0142
.Lt_0146:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.Lt_0148:
.Lt_0142:
.Lt_0139:
jmp .Lt_0134
.Lt_0136:
push 5
push offset Lt_014A
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0149
.Lt_014B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .Lt_014E
.Lt_014F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, -32505857
or eax, 4194304
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_014C
.Lt_014E:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.Lt_0150:
.Lt_014C:
jmp .Lt_0134
.Lt_0149:
push 18
push offset Lt_0152
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .Lt_0154
.Lt_0155:
push 20
push offset Lt_0153
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0151
.Lt_0154:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .Lt_0158
.Lt_0159:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, -32505857
or eax, 19922944
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_0156
.Lt_0158:
cmp dword ptr [ebp-20], 20
jne .Lt_015A
.Lt_015B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, -32505857
or ebx, 19922944
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
mov ebx, eax
call FBGETBACKENDVALISTTYPE
sal eax, 20
and eax, 15728640
or dword ptr [ebx+116], eax
jmp .Lt_0156
.Lt_015A:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.Lt_015C:
.Lt_0156:
jmp .Lt_0134
.Lt_0151:
push 1
push offset Lt_0000
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_015D
.Lt_015E:
push 0
push 0
push 304
call ERRREPORT
add esp, 12
jmp .Lt_0134
.Lt_015D:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.Lt_015F:
.Lt_0134:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_0132
.Lt_0133:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.Lt_0132:
.Lt_0131:
.Lt_0130:
.Lt_012F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
Lt_00C1:	.ascii	"typeof\0"
.balign 4
Lt_00C4:	.ascii	"len\0"
.balign 4
Lt_00C6:	.ascii	"sizeof\0"
.balign 4
Lt_00E4:	.ascii	"Ambigious \0"
.balign 4
Lt_00E5:	.ascii	"()\0"
.balign 4
Lt_00E8:	.ascii	", referring to \0"
.balign 4
Lt_00E9:	.ascii	", instead of \0"
.balign 4
Lt_0137:	.ascii	"long\0"
.balign 4
Lt_014A:	.ascii	"char\0"
.balign 4
Lt_0152:	.ascii	"__builtin_va_list\0"
.balign 4
Lt_0153:	.ascii	"__builtin_va_list[]\0"
