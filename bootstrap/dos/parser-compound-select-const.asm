	.intel_syntax noprefix

.section .text
.balign 16

.globl _PARSERSELCONSTSTMTINIT
_PARSERSELCONSTSTMTINIT:
.Lt_0069:
mov dword ptr [_CTX], 0
.Lt_006A:
ret
.balign 16

.globl _PARSERSELCONSTSTMTEND
_PARSERSELCONSTSTMTEND:
.Lt_006B:
.Lt_006C:
ret
.balign 16

.globl _CSELCONSTSTMTBEGIN
_CSELCONSTSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_006D:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
call _ASTSCOPEBEGIN
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_0070
push 0
push 0
push 27
call _ERRREPORT
add esp, 12
.Lt_0070:
.Lt_006F:
call _CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0072
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0072:
.Lt_0071:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_0073
mov dword ptr [ebp-36], 24
jmp .Lt_0090
.Lt_0073:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_0090:
mov eax, dword ptr [ebp-36]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
je .Lt_0076
push dword ptr [ebp-4]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .Lt_0075
.Lt_0076:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 4
je .Lt_007A
.Lt_007B:
cmp dword ptr [ebp-40], 7
jne .Lt_0079
.Lt_007A:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 20
je .Lt_007D
push dword ptr [ebp-4]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
.Lt_007D:
.Lt_007C:
.Lt_0079:
.Lt_0077:
.Lt_0075:
cmp dword ptr [ebp-4], 0
jne .Lt_007F
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_007F:
.Lt_007E:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 9
je .Lt_0081
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .Lt_0082
mov dword ptr [ebp-40], 24
jmp .Lt_0091
.Lt_0082:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-40], ebx
.Lt_0091:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+256]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], eax
jg .Lt_0085
push 0
push 0
push dword ptr [ebp-4]
push 0
push 9
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_0084
.Lt_0085:
push 0
push 0
push dword ptr [ebp-4]
push 0
push 14
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0084:
.Lt_0081:
.Lt_0080:
cmp dword ptr [ebp-28], 4
je .Lt_0088
.Lt_0089:
cmp dword ptr [ebp-28], 7
jne .Lt_0087
.Lt_0088:
mov eax, dword ptr [ebp-28]
and eax, 480
je .Lt_008A
mov dword ptr [ebp-40], 24
jmp .Lt_0092
.Lt_008A:
mov eax, dword ptr [ebp-28]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_0092:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
mov dword ptr [ebp-28], ebx
.Lt_0087:
.Lt_0086:
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-24], 0
mov eax, dword ptr [_ENV+888]
and eax, 2
test eax, eax
jne .Lt_008D
or dword ptr [ebp-24], 2
.Lt_008D:
.Lt_008C:
push dword ptr [ebp-24]
push 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _SYMBADDIMPLICITVAR
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2048
mov eax, dword ptr [ebp-24]
and eax, 2
je .Lt_008F
push -1
push dword ptr [ebp-8]
call _ASTNEWDECL
add esp, 8
push eax
call _ASTADDUNSCOPED
add esp, 4
push 0
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTADD
add esp, 4
jmp .Lt_008E
.Lt_008F:
push 0
push 64
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
push 0
push dword ptr [ebp-8]
call _ASTNEWDECL
add esp, 8
push eax
call _ASTNEWLINK
add esp, 12
push eax
call _ASTADD
add esp, 4
.Lt_008E:
push 0
push dword ptr [ebp-16]
push 98
call _ASTNEWBRANCH
add esp, 12
push eax
call _ASTADD
add esp, 4
push 0
push 270
call _CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+12], -1
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [_CTX]
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
.Lt_006E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSELCONSTSTMTNEXT
_CSELCONSTSTMTNEXT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.Lt_00A1:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .Lt_00A4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _ASTSCOPEEND
add esp, 4
.Lt_00A4:
.Lt_00A3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
jle .Lt_00A6
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
push 98
call _ASTNEWBRANCH
add esp, 12
push eax
call _ASTADD
add esp, 4
.Lt_00A6:
.Lt_00A5:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 268
jne .Lt_00A8
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+28], eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
call _ASTSCOPEBEGIN
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+20], -1
jmp .Lt_00A2
.Lt_00A8:
.Lt_00A7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_00A9:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _CEXPRESSION
push eax
call _CCONSTINTEXPRRANGED
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
mov eax, dword ptr [_CTX]
cmp dword ptr [ebp-4], eax
jne .Lt_00AD
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
add edx, 4294959104
adc eax, 4294967295
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+36], edx
mov dword ptr [ebx+40], eax
.Lt_00AD:
.Lt_00AC:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+36]
mov eax, dword ptr [edx+40]
sub dword ptr [ebp-16], ebx
sbb dword ptr [ebp-12], eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 284
jne .Lt_00AF
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _CEXPRESSION
push eax
call _CCONSTINTEXPRRANGED
add esp, 8
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
ja .Lt_00B1
jb .Lt_00BF
cmp dword ptr [ebp-24], edx
jae .Lt_00B1
.Lt_00BF:
push 0
push 0
push 323
call _ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp-16]
mov edx, dword ptr [ebp-12]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], edx
.Lt_00B1:
.Lt_00B0:
jmp .Lt_00AE
.Lt_00AF:
mov edx, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-24], edx
mov dword ptr [ebp-20], ebx
.Lt_00AE:
mov ebx, dword ptr [ebp-24]
mov edx, dword ptr [ebp-20]
sub ebx, dword ptr [ebp-16]
sbb edx, dword ptr [ebp-12]
add ebx, 1
adc edx, 0
mov eax, dword ptr [_CTX]
neg eax
add eax, 8192
mov esi, eax
mov ecx, esi
sar ecx, 31
cmp edx, ecx
jb .Lt_00B3
ja .Lt_00C0
cmp ebx, esi
jbe .Lt_00B3
.Lt_00C0:
push 0
push 0
push 69
call _ERRREPORT
add esp, 12
jmp .Lt_00AB
.Lt_00B3:
.Lt_00B2:
cmp dword ptr [ebp-12], 0
mov esi, -1
ja .Lt_00C1
jb .Lt_00C2
cmp dword ptr [ebp-16], 16384
jae .Lt_00C1
.Lt_00C2:
xor esi, esi
.Lt_00C1:
cmp dword ptr [ebp-20], 0
mov ecx, -1
ja .Lt_00C3
jb .Lt_00C4
cmp dword ptr [ebp-24], 16384
jae .Lt_00C3
.Lt_00C4:
xor ecx, ecx
.Lt_00C3:
or esi, ecx
je .Lt_00B5
push 0
push 0
push 69
call _ERRREPORT
add esp, 12
jmp .Lt_00AB
.Lt_00B5:
.Lt_00B4:
.Lt_00B6:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
call _HSELCONSTADDCASE
add esp, 16
test eax, eax
jne .Lt_00BA
cmp dword ptr [_CTX], 8192
jl .Lt_00BC
push 0
push 0
push 287
call _ERRREPORT
add esp, 12
jmp .Lt_00BB
.Lt_00BC:
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
.Lt_00BB:
jmp .Lt_00B7
.Lt_00BA:
.Lt_00B9:
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-12], eax
jne .Lt_00BE
cmp dword ptr [ebp-16], ecx
jne .Lt_00BE
.Lt_00C5:
jmp .Lt_00B7
.Lt_00BE:
.Lt_00BD:
add dword ptr [ebp-16], 1
adc dword ptr [ebp-12], 0
.Lt_00B8:
jmp .Lt_00B6
.Lt_00B7:
.Lt_00AB:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00A9
.Lt_00AA:
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
call _ASTSCOPEBEGIN
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], eax
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+20]
.Lt_00A2:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSELCONSTSTMTEND
_CSELCONSTSTMTEND:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_00C6:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00C9
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov dword ptr [ebp-4], eax
.Lt_00C9:
.Lt_00C8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .Lt_00CB
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _ASTSCOPEEND
add esp, 4
.Lt_00CB:
.Lt_00CA:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
push 98
call _ASTNEWBRANCH
add esp, 12
push eax
call _ASTADD
add esp, 4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
cmp dword ptr [_CTX], ebx
jle .Lt_00CD
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
sal eax, 3
mov ebx, offset _CTX
add ebx, eax
mov ecx, dword ptr [ebx+4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [_CTX]
dec eax
mov dword ptr [ebp-28], eax
jmp .Lt_00CF
.Lt_00D2:
mov eax, dword ptr [ebp-24]
sal eax, 3
mov ecx, offset _CTX
add ecx, eax
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-16]
sub dword ptr [ecx+4], ebx
sbb dword ptr [ecx+8], eax
mov ebx, dword ptr [ebp-24]
sal ebx, 3
mov eax, offset _CTX
add eax, ebx
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-8]
cmp dword ptr [eax+8], ebx
jb .Lt_00D4
ja .Lt_00D9
cmp dword ptr [eax+4], ecx
jbe .Lt_00D4
.Lt_00D9:
mov ecx, dword ptr [ebp-24]
sal ecx, 3
mov ebx, offset _CTX
add ebx, ecx
mov eax, dword ptr [ebx+4]
mov ecx, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], ecx
.Lt_00D4:
.Lt_00D3:
.Lt_00D0:
inc dword ptr [ebp-24]
.Lt_00CF:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jle .Lt_00D2
.Lt_00D1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [ebp-16]
add dword ptr [eax+36], ebx
adc dword ptr [eax+40], ecx
.Lt_00CD:
.Lt_00CC:
cmp dword ptr [ebp-8], 0
jb .Lt_00D6
ja .Lt_00DA
cmp dword ptr [ebp-12], 8192
jb .Lt_00D6
.Lt_00DA:
push 0
push 0
push 287
call _ERRREPORT
add esp, 12
.Lt_00D6:
.Lt_00D5:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+40]
push dword ptr [ebx+36]
push dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [_CTX]
sub ecx, dword ptr [ebx+24]
push ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+24]
sal ebx, 2
mov ecx, offset _CTX
add ecx, ebx
lea ebx, [ecx+65540]
push ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+24]
sal ecx, 3
mov ebx, offset _CTX
add ebx, ecx
lea ecx, [ebx+4]
push ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+16]
call _ASTBUILDJMPTB
add esp, 36
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov dword ptr [_CTX], ecx
push -1
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+48]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_00D8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTSCOPEEND
add esp, 4
.Lt_00D8:
.Lt_00D7:
push dword ptr [ebp+8]
call _CCOMPSTMTPOP
add esp, 4
.Lt_00C7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__parserzcompoundzselectzconst:
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
_HSELCONSTADDCASE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0093:
cmp dword ptr [_CTX], 8192
jl .Lt_0096
mov dword ptr [ebp-4], 0
jmp .Lt_0094
.Lt_0096:
.Lt_0095:
mov eax, dword ptr [_CTX]
sub eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], -1
.Lt_0097:
mov eax, dword ptr [ebp-8]
sub eax, dword ptr [ebp-12]
cmp eax, 1
jle .Lt_0098
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-12]
mov ebx, eax
shr ebx, 1
mov eax, ebx
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
add eax, dword ptr [ebp+8]
sal eax, 3
mov ebx, offset _CTX
add ebx, eax
mov ecx, dword ptr [ebx+4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], ecx
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ebp-20], ecx
ja .Lt_009A
jb .Lt_00DB
cmp dword ptr [ebp-24], eax
jae .Lt_009A
.Lt_00DB:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
jmp .Lt_0099
.Lt_009A:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp-20], eax
jb .Lt_009B
ja .Lt_00DC
cmp dword ptr [ebp-24], ecx
jbe .Lt_009B
.Lt_00DC:
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-8], ecx
jmp .Lt_0099
.Lt_009B:
mov dword ptr [ebp-4], 0
jmp .Lt_0094
.Lt_0099:
jmp .Lt_0097
.Lt_0098:
mov ecx, dword ptr [_CTX]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-8]
add ecx, dword ptr [ebp+8]
inc ecx
mov dword ptr [ebp-20], ecx
jmp .Lt_009D
.Lt_00A0:
mov ecx, dword ptr [ebp-16]
sal ecx, 3
mov eax, offset _CTX
add eax, ecx
mov ecx, dword ptr [ebp-16]
sal ecx, 3
mov ebx, offset _CTX
add ebx, ecx
mov esi, dword ptr [eax-4]
mov ecx, dword ptr [eax]
mov dword ptr [ebx+4], esi
mov dword ptr [ebx+8], ecx
mov esi, dword ptr [ebp-16]
sal esi, 2
mov ecx, offset _CTX
add ecx, esi
mov esi, dword ptr [ebp-16]
sal esi, 2
mov ebx, offset _CTX
add ebx, esi
mov esi, dword ptr [ecx+65536]
mov dword ptr [ebx+65540], esi
.Lt_009E:
dec dword ptr [ebp-16]
.Lt_009D:
mov esi, dword ptr [ebp-20]
cmp dword ptr [ebp-16], esi
jge .Lt_00A0
.Lt_009F:
mov esi, dword ptr [ebp-8]
add esi, dword ptr [ebp+8]
sal esi, 3
mov ebx, offset _CTX
add ebx, esi
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ebp+16]
mov dword ptr [ebx+4], ecx
mov dword ptr [ebx+8], esi
mov ecx, dword ptr [ebp-8]
add ecx, dword ptr [ebp+8]
sal ecx, 2
mov esi, offset _CTX
add esi, ecx
mov ecx, dword ptr [ebp+20]
mov dword ptr [esi+65540], ecx
inc dword ptr [_CTX]
mov dword ptr [ebp-4], -1
.Lt_0094:
mov eax, dword ptr [ebp-4]
pop esi
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
.balign 4
	.lcomm	_CTX,98308

.section .ctors
.int _fb_ctor__parserzcompoundzselectzconst
