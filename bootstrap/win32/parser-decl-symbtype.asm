	.intel_syntax noprefix

.section .text
.balign 16

.globl _CCONSTINTEXPR@8
_CCONSTINTEXPR@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0069:
cmp dword ptr [ebp+8], 0
jne .Lt_006C
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push dword ptr [ebp+12]
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.Lt_006C:
.Lt_006B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
je .Lt_006E
push 0
push 0
push 11
call _ERRREPORT@12
push dword ptr [ebp+8]
call _ASTDELTREE@4
push 0
push dword ptr [ebp+12]
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.Lt_006E:
.Lt_006D:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTCONSTFLUSHTOINT@8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.Lt_006A:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HISCONSTINRANGE@16
_HISCONSTINRANGE@16:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_006F:
mov eax, dword ptr [ebp+20]
and eax, 480
je .Lt_0072
mov dword ptr [ebp-12], 24
jmp .Lt_008C
.Lt_0072:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_008C:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
imul ebx, 24
lea eax, [_Lt_0096+ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0074
mov dword ptr [ebp-16], 24
jmp .Lt_008D
.Lt_0074:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_008D:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_0077
mov eax, dword ptr [ebp+20]
and eax, 480
je .Lt_0078
mov dword ptr [ebp-20], 24
jmp .Lt_008E
.Lt_0078:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_008E:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_007B
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
cmp ebx, dword ptr [eax+4]
mov esi, -1
jg .Lt_0097
jl .Lt_0098
cmp ecx, dword ptr [eax]
jae .Lt_0097
.Lt_0098:
xor esi, esi
.Lt_0097:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
cmp ecx, dword ptr [eax+12]
mov edi, -1
jl .Lt_0099
jg .Lt_009A
cmp ebx, dword ptr [eax+8]
jbe .Lt_0099
.Lt_009A:
xor edi, edi
.Lt_0099:
and esi, edi
mov dword ptr [ebp-4], esi
jmp .Lt_007A
.Lt_007B:
mov esi, dword ptr [ebp+8]
and esi, 480
je .Lt_007C
mov dword ptr [ebp-24], 24
jmp .Lt_008F
.Lt_007C:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-24], esi
.Lt_008F:
mov esi, dword ptr [ebp-24]
imul esi, 28
mov edi, dword ptr [_SYMB_DTYPETB+esi+20]
cmp edi, 7
sete dl
mov edi, edx
shr edi, 1
sbb edi, edi
mov dword ptr [ebp-32], edi
mov edi, dword ptr [ebp+20]
and edi, 480
je .Lt_007E
mov dword ptr [ebp-28], 24
jmp .Lt_0090
.Lt_007E:
mov edi, dword ptr [ebp+20]
and edi, 31
mov dword ptr [ebp-28], edi
.Lt_0090:
mov edi, dword ptr [ebp-28]
imul edi, 28
mov esi, dword ptr [_SYMB_DTYPETB+edi+20]
cmp esi, 8
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and esi, dword ptr [ebp-32]
je .Lt_0081
cmp dword ptr [ebp+16], 0
mov esi, -1
jg .Lt_009D
jl .Lt_009E
cmp dword ptr [ebp+12], 0
jae .Lt_009D
.Lt_009E:
xor esi, esi
.Lt_009D:
mov edi, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
cmp eax, dword ptr [edi+12]
mov ecx, -1
jb .Lt_009F
ja .Lt_00A0
cmp ebx, dword ptr [edi+8]
jbe .Lt_009F
.Lt_00A0:
xor ecx, ecx
.Lt_009F:
and esi, ecx
mov dword ptr [ebp-4], esi
jmp .Lt_0080
.Lt_0081:
cmp dword ptr [ebp+16], 0
mov esi, -1
jg .Lt_00A1
jl .Lt_00A2
cmp dword ptr [ebp+12], 0
jae .Lt_00A1
.Lt_00A2:
xor esi, esi
.Lt_00A1:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov edi, dword ptr [ebp+16]
cmp edi, dword ptr [ecx+20]
mov eax, -1
jb .Lt_00A3
ja .Lt_00A4
cmp ebx, dword ptr [ecx+16]
jbe .Lt_00A3
.Lt_00A4:
xor eax, eax
.Lt_00A3:
and esi, eax
mov dword ptr [ebp-4], esi
.Lt_0080:
.Lt_007A:
jmp .Lt_0076
.Lt_0077:
mov esi, dword ptr [ebp+20]
and esi, 480
je .Lt_0082
mov dword ptr [ebp-20], 24
jmp .Lt_0092
.Lt_0082:
mov esi, dword ptr [ebp+20]
and esi, 31
mov dword ptr [ebp-20], esi
.Lt_0092:
mov esi, dword ptr [ebp-20]
imul esi, 28
cmp dword ptr [_SYMB_DTYPETB+esi+8], 0
je .Lt_0085
mov esi, dword ptr [ebp+8]
and esi, 480
je .Lt_0086
mov dword ptr [ebp-24], 24
jmp .Lt_0093
.Lt_0086:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-24], esi
.Lt_0093:
mov esi, dword ptr [ebp-24]
imul esi, 28
mov eax, dword ptr [_SYMB_DTYPETB+esi+20]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+20]
and eax, 480
je .Lt_0088
mov dword ptr [ebp-28], 24
jmp .Lt_0094
.Lt_0088:
mov eax, dword ptr [ebp+20]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_0094:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov esi, dword ptr [_SYMB_DTYPETB+eax+20]
cmp esi, 7
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and esi, dword ptr [ebp-32]
je .Lt_008B
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
cmp eax, dword ptr [esi+12]
mov ebx, -1
jb .Lt_00A7
ja .Lt_00A8
cmp ecx, dword ptr [esi+8]
jbe .Lt_00A7
.Lt_00A8:
xor ebx, ebx
.Lt_00A7:
mov dword ptr [ebp-4], ebx
jmp .Lt_008A
.Lt_008B:
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+16]
cmp esi, dword ptr [ebx+20]
mov eax, -1
jb .Lt_00A9
ja .Lt_00AA
cmp ecx, dword ptr [ebx+16]
jbe .Lt_00A9
.Lt_00AA:
xor eax, eax
.Lt_00A9:
mov dword ptr [ebp-4], eax
.Lt_008A:
jmp .Lt_0084
.Lt_0085:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
cmp ebx, dword ptr [eax+20]
mov esi, -1
jb .Lt_00AB
ja .Lt_00AC
cmp ecx, dword ptr [eax+16]
jbe .Lt_00AB
.Lt_00AC:
xor esi, esi
.Lt_00AB:
mov dword ptr [ebp-4], esi
.Lt_0084:
.Lt_0076:
.Lt_0070:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .data
.balign 4
_Lt_0096:
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

.globl _CCONSTINTEXPRRANGED@8
_CCONSTINTEXPRRANGED@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00AD:
cmp dword ptr [ebp+8], 0
jne .Lt_00B0
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push dword ptr [ebp+12]
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.Lt_00B0:
.Lt_00AF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
je .Lt_00B2
push 0
push 0
push 11
call _ERRREPORT@12
push dword ptr [ebp+8]
call _ASTDELTREE@4
push 0
push 13
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.Lt_00B2:
.Lt_00B1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
push 13
push dword ptr [ebp+8]
call _ASTCONSTFLUSHTOINT@8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
push dword ptr [ebp+12]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _HISCONSTINRANGE@16
not eax
test eax, eax
je .Lt_00B4
push 0
push 1
push 0
push 25
call _ERRREPORTWARN@16
.Lt_00B4:
.Lt_00B3:
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], edx
mov dword ptr [ebp-4], eax
.Lt_00AE:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl __ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN@8
__ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00C8:
.Lt_00CA:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.Lt_00CD:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 10
je .Lt_00D3
.Lt_00D4:
cmp dword ptr [ebp-8], 13
je .Lt_00D3
.Lt_00D5:
cmp dword ptr [ebp-8], 14
jne .Lt_00D2
.Lt_00D3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00D7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax], ebx
.Lt_00D7:
.Lt_00D6:
jmp .Lt_00D0
.Lt_00D2:
cmp dword ptr [ebp-8], 1
je .Lt_00D9
.Lt_00DA:
cmp dword ptr [ebp-8], 2
jne .Lt_00D8
.Lt_00D9:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
jne .Lt_00DC
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4], eax
.Lt_00DC:
.Lt_00DB:
.Lt_00D8:
.Lt_00D0:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-4], ebx
.Lt_00CF:
cmp dword ptr [ebp-4], 0
jne .Lt_00CD
.Lt_00CE:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+12], eax
.Lt_00CC:
cmp dword ptr [ebp+12], 0
jne .Lt_00CA
.Lt_00CB:
.Lt_00C9:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl __ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll@12
__ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll@12:
push ebp
mov ebp, esp
sub esp, 44
push ebx
push esi
.Lt_00DD:
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
je .Lt_00E0
jmp .Lt_00DE
.Lt_00E0:
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
je .Lt_00E2
jmp .Lt_00DE
.Lt_00E2:
.Lt_00E1:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
jne .Lt_00E4
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
pop dword ptr [ebp-8]
.Lt_00E4:
.Lt_00E3:
push 0
push -1
push 3
push offset _Lt_00E6
push -1
push -1
push dword ptr [ebp+12]
call _HGETTOKENDESCRIPTION@4
push eax
push 11
push offset _Lt_00E5
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 0
push 16
push offset _Lt_00E9
push -1
lea eax, [ebp-20]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-4]
call _SYMBDUMPPRETTYTOSTR@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrConcatAssign@20
push 0
push 14
push offset _Lt_00EA
push -1
lea eax, [ebp-20]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-8]
call _SYMBDUMPPRETTYTOSTR@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp-20]
push 1
push 0
push 37
call _ERRREPORTWARN@16
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.Lt_00DE:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _CTYPEOREXPRESSION@20
_CTYPEOREXPRESSION@20:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F0:
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 265
sete al
shr eax, 1
sbb eax, eax
push 0
push 1
mov ebx, eax
call _LEXGETLOOKAHEAD@8
cmp eax, 41
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00F3
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx+2068]
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .Lt_00F5
push dword ptr [ebp-32]
lea eax, [ebp-20]
push eax
call __ZN19AMBIGIOUSSIZEOFINFO13CHECKSYMCHAINEP10FBSYMCHAIN@8
.Lt_00F5:
.Lt_00F4:
.Lt_00F3:
.Lt_00F2:
push 0
push 1
call _LEXGETLOOKAHEADCLASS@8
cmp eax, 5
jne .Lt_00F6
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 42
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .Lt_0111
.Lt_00F6:
mov dword ptr [ebp-24], 0
.Lt_0111:
cmp dword ptr [ebp-24], 0
je .Lt_00F8
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 301
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .Lt_0112
.Lt_00F8:
mov dword ptr [ebp-28], 0
.Lt_0112:
cmp dword ptr [ebp-28], 0
je .Lt_00FB
mov dword ptr [ebp-12], 0
jmp .Lt_00FA
.Lt_00FB:
push 0
push 1
call _LEXGETLOOKAHEAD@8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 91
jne .Lt_00FE
.Lt_00FF:
mov dword ptr [ebp-12], 0
jmp .Lt_00FC
.Lt_00FE:
cmp dword ptr [ebp-32], 40
jne .Lt_0100
.Lt_0101:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 377
je .Lt_0105
.Lt_0106:
cmp dword ptr [ebp-36], 345
je .Lt_0105
.Lt_0107:
cmp dword ptr [ebp-36], 346
jne .Lt_0104
.Lt_0105:
jmp .Lt_0102
.Lt_0104:
mov dword ptr [ebp-12], 0
.Lt_0108:
.Lt_0102:
.Lt_0100:
.Lt_00FC:
.Lt_00FA:
mov eax, dword ptr [ebp+8]
cmp eax, 463
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-12]
mov ebx, dword ptr [_ENV+136]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_010A
mov dword ptr [ebp-12], 0
.Lt_010A:
.Lt_0109:
cmp dword ptr [ebp-12], 0
je .Lt_010C
push 8
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _CSYMBOLTYPE@20
test eax, eax
je .Lt_010E
push -1
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call __ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll@12
mov dword ptr [_PARSER+92], 0
mov dword ptr [ebp-4], 0
jmp .Lt_00F1
.Lt_010E:
.Lt_010D:
.Lt_010C:
.Lt_010B:
push 0
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call __ZN19AMBIGIOUSSIZEOFINFO9MAYBEWARNEll@12
push -1
call _CEXPRESSIONWITHNIDXARRAY@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0110
mov dword ptr [_PARSER+92], 0
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.Lt_0110:
.Lt_010F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00F1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _CTYPEOF@16
_CTYPEOF@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0119:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 377
call _CTYPEOREXPRESSION@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_011C
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CUDTTYPEMEMBER@16
jmp .Lt_011A
.Lt_011C:
.Lt_011B:
push dword ptr [ebp-4]
call _ASTREMOVENIDXARRAY@4
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
call _ASTSIZEOF@8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
push dword ptr [ebp-4]
call _ASTDELTREE@4
.Lt_011A:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _HINTEGERTYPEFROMBITSIZE@12
_HINTEGERTYPEFROMBITSIZE@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_011D:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0120
cmp dword ptr [ebp+8], 8
jne .Lt_0120
.Lt_012B:
.Lt_0121:
mov dword ptr [ebp-8], 2
jmp .Lt_011F
.Lt_0120:
cmp dword ptr [ebp+12], 0
jne .Lt_0122
cmp dword ptr [ebp+8], 16
jne .Lt_0122
.Lt_012C:
.Lt_0123:
mov dword ptr [ebp-8], 5
jmp .Lt_011F
.Lt_0122:
cmp dword ptr [ebp+12], 0
jne .Lt_0124
cmp dword ptr [ebp+8], 32
jne .Lt_0124
.Lt_012D:
.Lt_0125:
mov dword ptr [ebp-8], 11
jmp .Lt_011F
.Lt_0124:
cmp dword ptr [ebp+12], 0
jne .Lt_0126
cmp dword ptr [ebp+8], 64
jne .Lt_0126
.Lt_012E:
.Lt_0127:
mov dword ptr [ebp-8], 13
jmp .Lt_011F
.Lt_0126:
push 0
push -1
push 310
call _ERRREPORT@12
mov dword ptr [ebp-8], 8
.Lt_0128:
.Lt_011F:
cmp dword ptr [ebp+16], 0
je .Lt_012A
push dword ptr [ebp-8]
call _TYPETOUNSIGNED@4
mov dword ptr [ebp-8], eax
.Lt_012A:
.Lt_0129:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_011E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _CSYMBOLTYPE@20
_CSYMBOLTYPE@20:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_0161:
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
call _LEXGETTOKEN@4
cmp eax, 377
jne .Lt_0164
push 2048
call _LEXSKIPTOKEN@4
push 0
push 40
call _HMATCH@8
test eax, eax
jne .Lt_0166
push 0
push 0
push 6
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
.Lt_0166:
.Lt_0165:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CTYPEOF@16
push 0
push 41
call _HMATCH@8
test eax, eax
jne .Lt_0168
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
.Lt_0168:
.Lt_0167:
jmp .Lt_0163
.Lt_0164:
push 0
call _LEXGETTOKEN@4
cmp eax, 335
jne .Lt_016A
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-16], -1
.Lt_016A:
.Lt_0169:
push 2048
push 375
call _HMATCH@8
mov dword ptr [ebp-8], eax
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-24], eax
jmp .Lt_016C
.Lt_016E:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CMANGLEMODIFIER@8
jmp .Lt_016B
.Lt_016F:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
jmp .Lt_016B
.Lt_0170:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 2
jmp .Lt_016B
.Lt_0171:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 3
jmp .Lt_016B
.Lt_0172:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 5
jmp .Lt_016B
.Lt_0173:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 6
jmp .Lt_016B
.Lt_0174:
push 2048
call _LEXSKIPTOKEN@4
push 0
push 301
call _HMATCH@8
test eax, eax
je .Lt_0176
push 8
call _CGTINPARENSONLYEXPR@0
push eax
call _CCONSTINTEXPR@8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push dword ptr [eax]
call _HINTEGERTYPEFROMBITSIZE@12
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], eax
push 0
push 300
call _HMATCH@8
test eax, eax
jne .Lt_0178
push 0
push -1
push 309
call _ERRREPORT@12
.Lt_0178:
.Lt_0177:
jmp .Lt_0175
.Lt_0176:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [_ENV+892]
mov dword ptr [eax], edx
.Lt_0175:
jmp .Lt_016B
.Lt_0179:
push 2048
call _LEXSKIPTOKEN@4
push 0
push 301
call _HMATCH@8
test eax, eax
je .Lt_017B
push 8
call _CGTINPARENSONLYEXPR@0
push eax
call _CCONSTINTEXPR@8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push dword ptr [eax]
call _HINTEGERTYPEFROMBITSIZE@12
mov edx, dword ptr [ebp+8]
mov dword ptr [edx], eax
push 0
push 300
call _HMATCH@8
test eax, eax
jne .Lt_017D
push 0
push -1
push 309
call _ERRREPORT@12
.Lt_017D:
.Lt_017C:
jmp .Lt_017A
.Lt_017B:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 9
.Lt_017A:
jmp .Lt_016B
.Lt_017E:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 11
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CMANGLEMODIFIER@8
jmp .Lt_016B
.Lt_017F:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 12
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CMANGLEMODIFIER@8
jmp .Lt_016B
.Lt_0180:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 13
jmp .Lt_016B
.Lt_0181:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 14
jmp .Lt_016B
.Lt_0182:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 15
jmp .Lt_016B
.Lt_0183:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 16
jmp .Lt_016B
.Lt_0184:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 17
jmp .Lt_016B
.Lt_0185:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 4
jmp .Lt_016B
.Lt_0186:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 7
jmp .Lt_016B
.Lt_0187:
push 0
call _LEXGETTOKEN@4
cmp eax, 346
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 54
inc dword ptr [ebp-20]
push dword ptr [ebp-12]
call _CSYMBOLTYPEFUNCPTR@4
mov edx, dword ptr [ebp+12]
mov dword ptr [edx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_0189
jmp .Lt_0162
.Lt_0189:
.Lt_0188:
jmp .Lt_016B
.Lt_016C:
mov eax, dword ptr [ebp-24]
add eax, 4294966951
cmp eax, 27
ja .Lt_016B
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.LT_018A+eax*4-1380]
_.LT_018A:
.int .Lt_0187
.int .Lt_0187
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016F
.int .Lt_0170
.int .Lt_0171
.int .Lt_0172
.int .Lt_0173
.int .Lt_0174
.int .Lt_0179
.int .Lt_017E
.int .Lt_017F
.int .Lt_0180
.int .Lt_0181
.int .Lt_0182
.int .Lt_0183
.int .Lt_0184
.int .Lt_0185
.int .Lt_0186
.int .Lt_016E
.Lt_016B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], -2147483648
je .Lt_018C
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 511
mov dword ptr [ebp-24], edx
cmp dword ptr [ebp-24], 4
je .Lt_0190
.Lt_0191:
cmp dword ptr [ebp-24], 7
jne .Lt_018F
.Lt_0190:
mov edx, dword ptr [ebp+16]
mov dword ptr [edx], 0
mov dword ptr [edx+4], 0
jmp .Lt_018D
.Lt_018F:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 480
je .Lt_0193
mov dword ptr [ebp-28], 24
jmp .Lt_0210
.Lt_0193:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 31
mov dword ptr [ebp-28], edx
.Lt_0210:
mov edx, dword ptr [ebp-28]
imul edx, 28
mov ebx, dword ptr [_SYMB_DTYPETB+edx+4]
mov eax, ebx
sar eax, 31
mov edx, dword ptr [ebp+16]
mov dword ptr [edx], ebx
mov dword ptr [edx+4], eax
.Lt_0192:
.Lt_018D:
jmp .Lt_018B
.Lt_018C:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-32], -1
cmp dword ptr [_PARSER+52], 0
je .Lt_0196
push 0
call _LEXGETTOKEN@4
cmp eax, 46
jne .Lt_0198
push 64
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 46
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
.Lt_0198:
.Lt_0197:
.Lt_0196:
.Lt_0195:
cmp dword ptr [ebp-32], 0
je .Lt_019A
mov eax, dword ptr [ebp+24]
and eax, 8
je .Lt_019B
mov dword ptr [ebp-36], 0
jmp .Lt_0211
.Lt_019B:
mov dword ptr [ebp-36], 50
.Lt_0211:
push dword ptr [ebp-36]
lea eax, [ebp-28]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-24], eax
.Lt_019A:
.Lt_0199:
cmp dword ptr [ebp-24], 0
je .Lt_019E
mov eax, dword ptr [ebp+24]
and eax, 8
je .Lt_01A0
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 2
je .Lt_01A4
.Lt_01A5:
cmp dword ptr [ebp-36], 1
je .Lt_01A4
.Lt_01A6:
cmp dword ptr [ebp-36], 12
jne .Lt_01A3
.Lt_01A4:
mov eax, dword ptr [ebp-24]
mov dword ptr [_PARSER+92], eax
.Lt_01A3:
.Lt_01A1:
.Lt_01A0:
.Lt_019F:
.Lt_01A7:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-36], ebx
.Lt_01AA:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 10
jne .Lt_01AF
.Lt_01B0:
push 2048
call _LEXSKIPTOKEN@4
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
call _CMANGLEMODIFIER@8
jmp .Lt_01A8
jmp .Lt_01AD
.Lt_01AF:
cmp dword ptr [ebp-40], 9
jne .Lt_01B1
.Lt_01B2:
push 2048
call _LEXSKIPTOKEN@4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 10
mov ecx, dword ptr [ebp+12]
mov edx, dword ptr [ebp-36]
mov dword ptr [ecx], edx
mov ecx, dword ptr [_SYMB_DTYPETB+284]
mov edx, ecx
sar edx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], edx
jmp .Lt_01A8
jmp .Lt_01AD
.Lt_01B1:
cmp dword ptr [ebp-40], 13
jne .Lt_01B3
.Lt_01B4:
push 2048
call _LEXSKIPTOKEN@4
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
jmp .Lt_01A8
.Lt_01B3:
.Lt_01AD:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+160]
mov dword ptr [ebp-36], eax
.Lt_01AC:
cmp dword ptr [ebp-36], 0
jne .Lt_01AA
.Lt_01AB:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-24], ebx
.Lt_01A9:
cmp dword ptr [ebp-24], 0
jne .Lt_01A7
.Lt_01A8:
mov ebx, dword ptr [ebp+24]
and ebx, 8
je .Lt_01B6
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], -2147483648
je .Lt_01B8
mov dword ptr [_PARSER+92], 0
.Lt_01B8:
.Lt_01B7:
.Lt_01B6:
.Lt_01B5:
.Lt_019E:
.Lt_019D:
.Lt_018B:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], -2147483648
jne .Lt_01BA
cmp dword ptr [ebp-8], 0
je .Lt_01BC
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_01BC:
.Lt_01BB:
cmp dword ptr [ebp-16], 0
je .Lt_01BE
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 512
.Lt_01BE:
.Lt_01BD:
mov dword ptr [ebp-4], 0
jmp .Lt_0162
.Lt_01BA:
.Lt_01B9:
cmp dword ptr [ebp-8], 0
je .Lt_01C0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 480
je .Lt_01C1
mov dword ptr [ebp-24], 24
jmp .Lt_0212
.Lt_01C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_0212:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
jmp .Lt_01C4
.Lt_01C6:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 3
jmp .Lt_01C3
.Lt_01C7:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 6
jmp .Lt_01C3
.Lt_01C8:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 9
jmp .Lt_01C3
.Lt_01C9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 32505856
test eax, eax
je .Lt_01CB
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 9437196
jmp .Lt_01CA
.Lt_01CB:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 12
.Lt_01CA:
jmp .Lt_01C3
.Lt_01CC:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 14
jmp .Lt_01C3
.Lt_01CD:
push 0
push -1
push 17
call _ERRREPORT@12
jmp .Lt_01C3
.Lt_01C4:
mov eax, dword ptr [ebp-28]
add eax, 4294967294
cmp eax, 11
ja .Lt_01CD
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.LT_01CE+eax*4-8]
_.LT_01CE:
.int .Lt_01C6
.int .Lt_01CD
.int .Lt_01CD
.int .Lt_01C7
.int .Lt_01CD
.int .Lt_01CD
.int .Lt_01C8
.int .Lt_01CD
.int .Lt_01CD
.int .Lt_01C9
.int .Lt_01CD
.int .Lt_01CC
.Lt_01C3:
.Lt_01C0:
.Lt_01BF:
.Lt_0163:
push 0
call _LEXGETTOKEN@4
cmp eax, 42
jne .Lt_01D0
push 0
call _LEXSKIPTOKEN@4
push 8
call _CEQINPARENSONLYEXPR@0
push eax
call _CCONSTINTEXPR@8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 480
je .Lt_01D1
mov dword ptr [ebp-24], 24
jmp .Lt_0213
.Lt_01D1:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_0213:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
jmp .Lt_01D4
.Lt_01D6:
mov eax, dword ptr [ebp+16]
add dword ptr [eax], 1
adc dword ptr [eax+4], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+4], 0
jg .Lt_01D8
jl .Lt_021B
cmp dword ptr [eax], 1
ja .Lt_01D8
.Lt_021B:
push 0
push -1
push 17
call _ERRREPORT@12
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 2
mov dword ptr [eax+4], 0
.Lt_01D8:
.Lt_01D7:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 18
jmp .Lt_01D3
.Lt_01D9:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+4], 0
jg .Lt_01DB
jl .Lt_021C
cmp dword ptr [eax], 1
jae .Lt_01DB
.Lt_021C:
push 0
push -1
push 17
call _ERRREPORT@12
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 1
mov dword ptr [eax+4], 0
.Lt_01DB:
.Lt_01DA:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 480
je .Lt_01DC
mov dword ptr [ebp-32], 24
jmp .Lt_0214
.Lt_01DC:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_0214:
cmp dword ptr [ebp-32], 7
jne .Lt_01DF
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [_SYMB_DTYPETB+200]
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
.Lt_01DF:
.Lt_01DE:
jmp .Lt_01D3
.Lt_01E0:
push 0
push -1
push 17
call _ERRREPORT@12
jmp .Lt_01D3
.Lt_01D4:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967292
cmp ebx, 13
ja .Lt_01E0
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.LT_01E1+ebx*4-16]
_.LT_01E1:
.int .Lt_01D9
.int .Lt_01E0
.int .Lt_01E0
.int .Lt_01D9
.int .Lt_01E0
.int .Lt_01E0
.int .Lt_01E0
.int .Lt_01E0
.int .Lt_01E0
.int .Lt_01E0
.int .Lt_01E0
.int .Lt_01E0
.int .Lt_01E0
.int .Lt_01D6
.Lt_01D3:
mov ebx, dword ptr [ebp+24]
and ebx, 4
je .Lt_01E3
push 0
push -1
push 324
call _ERRREPORT@12
.Lt_01E3:
.Lt_01E2:
cmp dword ptr [ebp-16], 0
je .Lt_01E5
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx], 512
.Lt_01E5:
.Lt_01E4:
jmp .Lt_01CF
.Lt_01D0:
cmp dword ptr [ebp-16], 0
je .Lt_01E7
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx], 512
.Lt_01E7:
.Lt_01E6:
.Lt_01E8:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-24], eax
jmp .Lt_01EC
.Lt_01EE:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 373
je .Lt_01F2
.Lt_01F3:
cmp dword ptr [ebp-28], 374
jne .Lt_01F1
.Lt_01F2:
cmp dword ptr [ebp-20], 8
jl .Lt_01F5
push 0
push 0
push 274
call _ERRREPORT@12
jmp .Lt_01F4
.Lt_01F5:
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
.Lt_01F4:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_01EF
.Lt_01F1:
push 0
push 0
push 273
call _ERRREPORT@12
jmp .Lt_01E9
.Lt_01F6:
.Lt_01EF:
jmp .Lt_01EB
.Lt_01F7:
cmp dword ptr [ebp-20], 8
jl .Lt_01F9
push 0
push 0
push 274
call _ERRREPORT@12
jmp .Lt_01F8
.Lt_01F9:
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
.Lt_01F8:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_01EB
.Lt_01FA:
jmp .Lt_01E9
jmp .Lt_01EB
.Lt_01EC:
mov edx, dword ptr [ebp-24]
add edx, 4294966961
cmp edx, 39
ja .Lt_01FA
mov edx, dword ptr [ebp-24]
jmp dword ptr [_.LT_01FB+edx*4-1340]
_.LT_01FB:
.int .Lt_01EE
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01F7
.int .Lt_01F7
.Lt_01EB:
.Lt_01EA:
jmp .Lt_01E8
.Lt_01E9:
.Lt_01CF:
cmp dword ptr [ebp-20], 0
jle .Lt_01FD
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
and eax, 480
je .Lt_01FE
mov dword ptr [ebp-24], 24
jmp .Lt_0215
.Lt_01FE:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
and edx, 31
mov dword ptr [ebp-24], edx
.Lt_0215:
mov edx, dword ptr [ebp-24]
imul edx, 28
mov ebx, dword ptr [_SYMB_DTYPETB+edx+4]
mov eax, ebx
sar eax, 31
mov edx, dword ptr [ebp+16]
mov dword ptr [edx], ebx
mov dword ptr [edx+4], eax
jmp .Lt_01FC
.Lt_01FD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 480
je .Lt_0200
mov dword ptr [ebp-24], 24
jmp .Lt_0216
.Lt_0200:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_0216:
cmp dword ptr [ebp-24], 23
jne .Lt_0203
mov ebx, dword ptr [ebp+24]
and ebx, 2
test ebx, ebx
jne .Lt_0205
push 0
push -1
push 71
call _ERRREPORT@12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 32
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.Lt_0205:
.Lt_0204:
jmp .Lt_0202
.Lt_0203:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx+4], 0
jg .Lt_0206
jl .Lt_021D
cmp dword ptr [ebx], 0
ja .Lt_0206
.Lt_021D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 4
je .Lt_020A
.Lt_020B:
cmp dword ptr [ebp-28], 7
jne .Lt_0209
.Lt_020A:
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
je .Lt_020D
push 0
push 0
push 28
call _ERRREPORT@12
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
.Lt_020D:
.Lt_020C:
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx]
and edx, 480
je .Lt_020E
mov dword ptr [ebp-32], 24
jmp .Lt_0217
.Lt_020E:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_0217:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov edx, eax
sar edx, 31
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.Lt_0209:
.Lt_0207:
.Lt_0206:
.Lt_0202:
.Lt_01FC:
mov dword ptr [ebp-4], -1
.Lt_0162:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
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
.balign 16
_CSYMBOLTYPEFUNCPTR@4:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-4], 0
.Lt_00B5:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-28], 0
push -1
call _CPROCCALLINGCONV@4
mov dword ptr [ebp-12], eax
push 0
call _SYMBPREADDPROC@4
mov dword ptr [ebp-24], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp-24]
push 0
call _CPARAMETERS@16
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call _CBYREFATTRIBUTE@8
push 0
call _LEXGETTOKEN@4
cmp eax, 376
jne .Lt_00B8
cmp dword ptr [ebp+8], 0
jne .Lt_00BA
push 0
push 0
push 17
call _ERRREPORT@12
mov dword ptr [ebp-8], 0
jmp .Lt_00B9
.Lt_00BA:
lea eax, [ebp-28]
push eax
lea eax, [ebp-8]
push eax
push -1
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _CPROCRETTYPE@24
.Lt_00B9:
jmp .Lt_00B7
.Lt_00B8:
cmp dword ptr [ebp+8], 0
je .Lt_00BC
push 0
push 0
push 68
call _ERRREPORT@12
mov dword ptr [ebp-8], 8
jmp .Lt_00BB
.Lt_00BC:
mov dword ptr [ebp-8], 0
.Lt_00BB:
.Lt_00B7:
push dword ptr [ebp-12]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call _SYMBADDPROCPTR@24
mov dword ptr [ebp-4], eax
.Lt_00B6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETTOKENDESCRIPTION@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00BD:
cmp dword ptr [ebp+8], 377
jne .Lt_00C0
.Lt_00C1:
push 0
push 7
push offset _Lt_00C2
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_00BF
.Lt_00C0:
cmp dword ptr [ebp+8], 463
jne .Lt_00C3
.Lt_00C4:
push 0
push 4
push offset _Lt_00C5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_00BF
.Lt_00C3:
push 0
push 7
push offset _Lt_00C7
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_00C6:
.Lt_00BF:
.Lt_00BE:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_CMANGLEMODIFIER@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_012F:
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 384
jne .Lt_0132
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETCLASS@4
cmp eax, 4
jne .Lt_0134
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_0138
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0137
.Lt_0139:
call _FBIS64BIT@0
mov ebx, dword ptr [_ENV+260]
and ebx, 1
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_013B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 11
jne .Lt_013E
.Lt_013F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, -32505857
or ebx, 8388608
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov dword ptr [ebp-4], -1
jmp .Lt_013C
.Lt_013E:
cmp dword ptr [ebp-20], 12
jne .Lt_0140
.Lt_0141:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, -32505857
or eax, 9437184
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov dword ptr [ebp-4], -1
jmp .Lt_013C
.Lt_0140:
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_0142:
.Lt_013C:
jmp .Lt_013A
.Lt_013B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 11
jne .Lt_0145
.Lt_0146:
jmp .Lt_0143
.Lt_0145:
cmp dword ptr [ebp-20], 12
jne .Lt_0147
.Lt_0148:
jmp .Lt_0143
.Lt_0147:
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_0149:
.Lt_0143:
.Lt_013A:
jmp .Lt_0135
.Lt_0137:
push 5
push offset _Lt_014B
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .Lt_014A
.Lt_014C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .Lt_014F
.Lt_0150:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, -32505857
or eax, 4194304
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_014D
.Lt_014F:
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_0151:
.Lt_014D:
jmp .Lt_0135
.Lt_014A:
push 18
push offset _Lt_0153
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
je .Lt_0155
.Lt_0156:
push 20
push offset _Lt_0154
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0152
.Lt_0155:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .Lt_0159
.Lt_015A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, -32505857
or eax, 19922944
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_0157
.Lt_0159:
cmp dword ptr [ebp-20], 20
jne .Lt_015B
.Lt_015C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, -32505857
or ebx, 19922944
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
mov ebx, eax
call _FBGETBACKENDVALISTTYPE@0
sal eax, 20
and eax, 15728640
or dword ptr [ebx+120], eax
jmp .Lt_0157
.Lt_015B:
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_015D:
.Lt_0157:
jmp .Lt_0135
.Lt_0152:
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_015E
.Lt_015F:
push 0
push 0
push 304
call _ERRREPORT@12
jmp .Lt_0135
.Lt_015E:
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_0160:
.Lt_0135:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_0133
.Lt_0134:
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_0133:
.Lt_0132:
.Lt_0131:
.Lt_0130:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_00C2:	.ascii	"typeof\0"
.balign 4
_Lt_00C5:	.ascii	"len\0"
.balign 4
_Lt_00C7:	.ascii	"sizeof\0"
.balign 4
_Lt_00E5:	.ascii	"Ambigious \0"
.balign 4
_Lt_00E6:	.ascii	"()\0"
.balign 4
_Lt_00E9:	.ascii	", referring to \0"
.balign 4
_Lt_00EA:	.ascii	", instead of \0"
.balign 4
_Lt_0138:	.ascii	"long\0"
.balign 4
_Lt_014B:	.ascii	"char\0"
.balign 4
_Lt_0153:	.ascii	"__builtin_va_list\0"
.balign 4
_Lt_0154:	.ascii	"__builtin_va_list[]\0"
