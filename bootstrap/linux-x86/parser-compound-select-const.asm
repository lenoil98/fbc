	.intel_syntax noprefix

.section .text
.balign 16

.globl PARSERSELCONSTSTMTINIT
PARSERSELCONSTSTMTINIT:
.type PARSERSELCONSTSTMTINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0068:
mov dword ptr [CTX], 0
.Lt_0069:
mov esp, ebp
pop ebp
ret
.size PARSERSELCONSTSTMTINIT, .-PARSERSELCONSTSTMTINIT
.balign 16

.globl PARSERSELCONSTSTMTEND
PARSERSELCONSTSTMTEND:
.type PARSERSELCONSTSTMTEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_006A:
.Lt_006B:
mov esp, ebp
pop ebp
ret
.size PARSERSELCONSTSTMTEND, .-PARSERSELCONSTSTMTEND
.balign 16

.globl CSELCONSTSTMTBEGIN
CSELCONSTSTMTBEGIN:
.type CSELCONSTSTMTBEGIN, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_006C:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
call ASTSCOPEBEGIN
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_006F
sub esp, 4
push 0
push 0
push 27
call ERRREPORT
add esp, 16
.Lt_006F:
.Lt_006E:
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0071
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0071:
.Lt_0070:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_0072
mov dword ptr [ebp-36], 24
jmp .Lt_008F
.Lt_0072:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_008F:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
je .Lt_0075
sub esp, 12
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_0074
.Lt_0075:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 4
je .Lt_0079
.Lt_007A:
cmp dword ptr [ebp-40], 7
jne .Lt_0078
.Lt_0079:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 20
je .Lt_007C
sub esp, 12
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], 0
.Lt_007C:
.Lt_007B:
.Lt_0078:
.Lt_0076:
.Lt_0074:
cmp dword ptr [ebp-4], 0
jne .Lt_007E
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_007E:
.Lt_007D:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 9
je .Lt_0080
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .Lt_0081
mov dword ptr [ebp-40], 24
jmp .Lt_0090
.Lt_0081:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-40], ebx
.Lt_0090:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+256]
cmp dword ptr [SYMB_DTYPETB+ebx+4], eax
jg .Lt_0084
sub esp, 12
push 0
push 0
push dword ptr [ebp-4]
push 0
push 9
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-4], eax
jmp .Lt_0083
.Lt_0084:
sub esp, 12
push 0
push 0
push dword ptr [ebp-4]
push 0
push 14
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_0083:
.Lt_0080:
.Lt_007F:
cmp dword ptr [ebp-28], 4
je .Lt_0087
.Lt_0088:
cmp dword ptr [ebp-28], 7
jne .Lt_0086
.Lt_0087:
mov eax, dword ptr [ebp-28]
and eax, 480
je .Lt_0089
mov dword ptr [ebp-40], 24
jmp .Lt_0091
.Lt_0089:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_0091:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
mov dword ptr [ebp-28], ebx
.Lt_0086:
.Lt_0085:
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ENV+888]
and eax, 2
test eax, eax
jne .Lt_008C
or dword ptr [ebp-24], 2
.Lt_008C:
.Lt_008B:
sub esp, 4
push dword ptr [ebp-24]
push 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call SYMBADDIMPLICITVAR
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2048
mov eax, dword ptr [ebp-24]
and eax, 2
je .Lt_008E
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-8]
call ASTNEWDECL
add esp, 20
push eax
call ASTADDUNSCOPED
add esp, 16
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 20
push eax
call ASTADD
add esp, 16
jmp .Lt_008D
.Lt_008E:
sub esp, 12
sub esp, 8
push 0
sub esp, 12
push 64
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 24
push eax
sub esp, 12
push 0
push dword ptr [ebp-8]
call ASTNEWDECL
add esp, 20
push eax
call ASTNEWLINK
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_008D:
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp-16]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 8
push 0
push 270
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+12], -1
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [CTX]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+28], 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-28]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebx+36], 0
mov dword ptr [ebx+40], 0
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebx+44], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+48], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-32]
mov dword ptr [ebx+56], eax
.Lt_006D:
pop ebx
mov esp, ebp
pop ebp
ret
.size CSELCONSTSTMTBEGIN, .-CSELCONSTSTMTBEGIN
.balign 16

.globl CSELCONSTSTMTNEXT
CSELCONSTSTMTNEXT:
.type CSELCONSTSTMTNEXT, @function
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.Lt_00A0:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .Lt_00A3
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 16
.Lt_00A3:
.Lt_00A2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
jle .Lt_00A5
sub esp, 12
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_00A5:
.Lt_00A4:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 268
jne .Lt_00A7
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+28], eax
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], -1
jmp .Lt_00A1
.Lt_00A7:
.Lt_00A6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
sub esp, 8
push 0
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00A8:
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
sub esp, 4
call CEXPRESSION
add esp, 4
push eax
call CCONSTINTEXPRRANGED
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
mov eax, dword ptr [CTX]
cmp dword ptr [ebp-4], eax
jne .Lt_00AC
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
add edx, 4294959104
adc eax, 4294967295
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+36], edx
mov dword ptr [ebx+40], eax
.Lt_00AC:
.Lt_00AB:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+36]
mov eax, dword ptr [edx+40]
sub dword ptr [ebp-16], ebx
sbb dword ptr [ebp-12], eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 284
jne .Lt_00AE
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
sub esp, 4
call CEXPRESSION
add esp, 4
push eax
call CCONSTINTEXPRRANGED
add esp, 16
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov edx, dword ptr [eax+40]
sub dword ptr [ebp-24], ebx
sbb dword ptr [ebp-20], edx
mov edx, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-20], ebx
ja .Lt_00B0
jb .Lt_00BE
cmp dword ptr [ebp-24], edx
jae .Lt_00B0
.Lt_00BE:
sub esp, 4
push 0
push 0
push 323
call ERRREPORT
add esp, 16
mov ebx, dword ptr [ebp-16]
mov edx, dword ptr [ebp-12]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], edx
.Lt_00B0:
.Lt_00AF:
jmp .Lt_00AD
.Lt_00AE:
mov edx, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-24], edx
mov dword ptr [ebp-20], ebx
.Lt_00AD:
mov ebx, dword ptr [ebp-24]
mov edx, dword ptr [ebp-20]
sub ebx, dword ptr [ebp-16]
sbb edx, dword ptr [ebp-12]
add ebx, 1
adc edx, 0
mov eax, dword ptr [CTX]
neg eax
add eax, 8192
mov esi, eax
mov ecx, esi
sar ecx, 31
cmp edx, ecx
jb .Lt_00B2
ja .Lt_00BF
cmp ebx, esi
jbe .Lt_00B2
.Lt_00BF:
sub esp, 4
push 0
push 0
push 69
call ERRREPORT
add esp, 16
jmp .Lt_00AA
.Lt_00B2:
.Lt_00B1:
cmp dword ptr [ebp-12], 0
mov esi, -1
ja .Lt_00C0
jb .Lt_00C1
cmp dword ptr [ebp-16], 16384
jae .Lt_00C0
.Lt_00C1:
xor esi, esi
.Lt_00C0:
cmp dword ptr [ebp-20], 0
mov ecx, -1
ja .Lt_00C2
jb .Lt_00C3
cmp dword ptr [ebp-24], 16384
jae .Lt_00C2
.Lt_00C3:
xor ecx, ecx
.Lt_00C2:
or esi, ecx
je .Lt_00B4
sub esp, 4
push 0
push 0
push 69
call ERRREPORT
add esp, 16
jmp .Lt_00AA
.Lt_00B4:
.Lt_00B3:
.Lt_00B5:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
call HSELCONSTADDCASE
add esp, 16
test eax, eax
jne .Lt_00B9
cmp dword ptr [CTX], 8192
jl .Lt_00BB
sub esp, 4
push 0
push 0
push 287
call ERRREPORT
add esp, 16
jmp .Lt_00BA
.Lt_00BB:
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
.Lt_00BA:
jmp .Lt_00B6
.Lt_00B9:
.Lt_00B8:
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-12], eax
jne .Lt_00BD
cmp dword ptr [ebp-16], ecx
jne .Lt_00BD
.Lt_00C4:
jmp .Lt_00B6
.Lt_00BD:
.Lt_00BC:
add dword ptr [ebp-16], 1
adc dword ptr [ebp-12], 0
.Lt_00B7:
jmp .Lt_00B5
.Lt_00B6:
.Lt_00AA:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00A8
.Lt_00A9:
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
call ASTSCOPEBEGIN
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], eax
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+20]
.Lt_00A1:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size CSELCONSTSTMTNEXT, .-CSELCONSTSTMTNEXT
.balign 16

.globl CSELCONSTSTMTEND
CSELCONSTSTMTEND:
.type CSELCONSTSTMTEND, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_00C5:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00C8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov dword ptr [ebp-4], eax
.Lt_00C8:
.Lt_00C7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .Lt_00CA
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 16
.Lt_00CA:
.Lt_00C9:
sub esp, 12
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
cmp dword ptr [CTX], ebx
jle .Lt_00CC
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
sal eax, 3
mov ebx, offset CTX
add ebx, eax
mov ecx, dword ptr [ebx+4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [CTX]
dec eax
mov dword ptr [ebp-28], eax
jmp .Lt_00CE
.Lt_00D1:
mov eax, dword ptr [ebp-24]
sal eax, 3
mov ecx, offset CTX
add ecx, eax
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-16]
sub dword ptr [ecx+4], ebx
sbb dword ptr [ecx+8], eax
mov ebx, dword ptr [ebp-24]
sal ebx, 3
mov eax, offset CTX
add eax, ebx
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
cmp dword ptr [eax+8], ebx
jb .Lt_00D3
ja .Lt_00D8
cmp dword ptr [eax+4], ecx
jbe .Lt_00D3
.Lt_00D8:
mov ecx, dword ptr [ebp-24]
sal ecx, 3
mov ebx, offset CTX
add ebx, ecx
mov eax, dword ptr [ebx+4]
mov ecx, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], ecx
.Lt_00D3:
.Lt_00D2:
.Lt_00CF:
inc dword ptr [ebp-24]
.Lt_00CE:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jle .Lt_00D1
.Lt_00D0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [ebp-16]
add dword ptr [eax+36], ebx
adc dword ptr [eax+40], ecx
.Lt_00CC:
.Lt_00CB:
cmp dword ptr [ebp-8], 0
jb .Lt_00D5
ja .Lt_00D9
cmp dword ptr [ebp-12], 8192
jb .Lt_00D5
.Lt_00D9:
sub esp, 4
push 0
push 0
push 287
call ERRREPORT
add esp, 16
.Lt_00D5:
.Lt_00D4:
sub esp, 12
push dword ptr [ebp-8]
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
push dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [CTX]
sub ecx, dword ptr [ebx+24]
push ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+24]
sal ebx, 2
mov ecx, offset CTX
add ecx, ebx
lea ebx, [ecx+65540]
push ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+24]
sal ecx, 3
mov ebx, offset CTX
add ebx, ecx
lea ecx, [ebx+4]
push ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+16]
call ASTBUILDJMPTB
add esp, 36
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov dword ptr [CTX], ecx
sub esp, 12
sub esp, 12
push -1
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+48]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_00D7
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTSCOPEEND
add esp, 16
.Lt_00D7:
.Lt_00D6:
sub esp, 12
push dword ptr [ebp+8]
call CCOMPSTMTPOP
add esp, 16
.Lt_00C6:
pop ebx
mov esp, ebp
pop ebp
ret
.size CSELCONSTSTMTEND, .-CSELCONSTSTMTEND
.balign 16
fb_ctor__parserzcompoundzselectzconst:
.type fb_ctor__parserzcompoundzselectzconst, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__parserzcompoundzselectzconst, .-fb_ctor__parserzcompoundzselectzconst
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
HSELCONSTADDCASE:
.type HSELCONSTADDCASE, @function
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0092:
cmp dword ptr [CTX], 8192
jl .Lt_0095
mov dword ptr [ebp-4], 0
jmp .Lt_0093
.Lt_0095:
.Lt_0094:
mov eax, dword ptr [CTX]
sub eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], -1
.Lt_0096:
mov eax, dword ptr [ebp-8]
sub eax, dword ptr [ebp-12]
cmp eax, 1
jle .Lt_0097
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-12]
mov ebx, eax
shr ebx, 1
mov eax, ebx
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
add eax, dword ptr [ebp+8]
sal eax, 3
mov ebx, offset CTX
add ebx, eax
mov ecx, dword ptr [ebx+4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ebp-20], ecx
ja .Lt_0099
jb .Lt_00DA
cmp dword ptr [ebp-24], eax
jae .Lt_0099
.Lt_00DA:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
jmp .Lt_0098
.Lt_0099:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp-20], eax
jb .Lt_009A
ja .Lt_00DB
cmp dword ptr [ebp-24], ecx
jbe .Lt_009A
.Lt_00DB:
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-8], ecx
jmp .Lt_0098
.Lt_009A:
mov dword ptr [ebp-4], 0
jmp .Lt_0093
.Lt_0098:
jmp .Lt_0096
.Lt_0097:
mov ecx, dword ptr [CTX]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-8]
add ecx, dword ptr [ebp+8]
inc ecx
mov dword ptr [ebp-20], ecx
jmp .Lt_009C
.Lt_009F:
mov ecx, dword ptr [ebp-16]
sal ecx, 3
mov eax, offset CTX
add eax, ecx
mov ecx, dword ptr [ebp-16]
sal ecx, 3
mov ebx, offset CTX
add ebx, ecx
mov esi, dword ptr [eax-4]
mov ecx, dword ptr [eax]
mov dword ptr [ebx+4], esi
mov dword ptr [ebx+8], ecx
mov esi, dword ptr [ebp-16]
sal esi, 2
mov ecx, offset CTX
add ecx, esi
mov esi, dword ptr [ebp-16]
sal esi, 2
mov ebx, offset CTX
add ebx, esi
mov esi, dword ptr [ecx+65536]
mov dword ptr [ebx+65540], esi
.Lt_009D:
dec dword ptr [ebp-16]
.Lt_009C:
mov esi, dword ptr [ebp-20]
cmp dword ptr [ebp-16], esi
jge .Lt_009F
.Lt_009E:
mov esi, dword ptr [ebp-8]
add esi, dword ptr [ebp+8]
sal esi, 3
mov ebx, offset CTX
add ebx, esi
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+16]
mov dword ptr [ebx+4], ecx
mov dword ptr [ebx+8], esi
mov ecx, dword ptr [ebp-8]
add ecx, dword ptr [ebp+8]
sal ecx, 2
mov esi, offset CTX
add esi, ecx
mov ecx, dword ptr [ebp+20]
mov dword ptr [esi+65540], ecx
inc dword ptr [CTX]
mov dword ptr [ebp-4], -1
.Lt_0093:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HSELCONSTADDCASE, .-HSELCONSTADDCASE

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
.balign 4
	.lcomm	CTX,98308

.section .ctors, "aw", @progbits
.int fb_ctor__parserzcompoundzselectzconst
