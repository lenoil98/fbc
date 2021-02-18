	.intel_syntax noprefix

.section .text
.balign 16

.globl _CINITIALIZER
_CINITIALIZER:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EC:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00EF
push 0
push -1
push 75
call _ERRREPORT
add esp, 12
jmp .Lt_00ED
.Lt_00EF:
.Lt_00EE:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 1
jne .Lt_00F1
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_00F0
.Lt_00F1:
mov dword ptr [ebp-8], 0
.Lt_00F0:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-40], ebx
mov dword ptr [ebp-28], -1
mov dword ptr [ebp-16], 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
lea ebx, [ebp-40]
push ebx
call _HUPDATECONTEXTDTYPE
add esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+52]
push dword ptr [ebx+48]
push dword ptr [ebp-8]
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-24], eax
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _TYPEHASCTOR
add esp, 8
test eax, eax
je .Lt_00F3
or dword ptr [ebp-20], 2
.Lt_00F3:
.Lt_00F2:
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-40]
mov ecx, dword ptr [eax]
cmp ecx, 12
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00F5
push 0
lea ecx, [ebp-40]
push ecx
call _HARRAYINIT
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_00F4
.Lt_00F5:
mov eax, dword ptr [ebp-36]
and eax, 511
cmp eax, 20
jne .Lt_00F7
lea eax, [ebp-40]
push eax
call _HUDTINIT
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_00F6
.Lt_00F7:
push 0
lea eax, [ebp-40]
push eax
call _HELMINIT
add esp, 8
mov dword ptr [ebp-12], eax
.Lt_00F6:
.Lt_00F4:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-24]
call _ASTTYPEINIEND
add esp, 8
cmp dword ptr [ebp-12], 0
je .Lt_00F8
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-44], eax
jmp .Lt_00FA
.Lt_00F8:
mov dword ptr [ebp-44], 0
.Lt_00FA:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-4], eax
.Lt_00ED:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
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
_HUPDATECONTEXTDTYPE:
push ebp
mov ebp, esp
push ebx
.Lt_0068:
cmp dword ptr [ebp+12], -2147483648
jne .Lt_006B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ecx+8], ebx
jmp .Lt_006A
.Lt_006B:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [ecx+8], ebx
.Lt_006A:
.Lt_0069:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDOASSIGN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_006C:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _ASTCHECKASSIGNTOTYPE
add esp, 12
test eax, eax
jne .Lt_006F
push 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_0071
cmp dword ptr [ebp+16], 0
je .Lt_0073
jmp .Lt_006D
.Lt_0073:
.Lt_0072:
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp+12]
call _ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp+12], eax
.Lt_0071:
.Lt_0070:
.Lt_006F:
.Lt_006E:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _ASTTYPEINIADDASSIGN
add esp, 20
mov dword ptr [ebp-4], -1
.Lt_006D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HELMINIT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0074:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [_PARSER+156]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_PARSER+152]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+32]
mov dword ptr [_PARSER+156], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [_PARSER+152], eax
call _CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0077
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_0077:
.Lt_0076:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [_PARSER+156], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [_PARSER+152], ebx
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HDOASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0075:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HARRAYINIT:
push ebp
mov ebp, esp
sub esp, 36
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0078:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 123
jne .Lt_007B
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+12]
mov dword ptr [ebp-20], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+60]
cmp dword ptr [eax+12], ebx
jl .Lt_007D
push 0
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+60], 0
jle .Lt_007E
mov dword ptr [ebp-24], 67
jmp .Lt_0101
.Lt_007E:
mov dword ptr [ebp-24], 63
.Lt_0101:
push dword ptr [ebp-24]
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 125
call _HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
dec dword ptr [eax+12]
jmp .Lt_0079
.Lt_007D:
.Lt_007C:
jmp .Lt_007A
.Lt_007B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+60]
dec ebx
cmp dword ptr [eax+12], ebx
jge .Lt_0081
push 0
push 0
push 64
call _ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+12]
mov dword ptr [ebp-20], -1
.Lt_0081:
.Lt_0080:
.Lt_007A:
cmp dword ptr [ebp-20], 0
je .Lt_0083
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
call _ASTTYPEINISCOPEBEGIN
add esp, 12
.Lt_0083:
.Lt_0082:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+12], 0
jl .Lt_0085
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
sal ecx, 4
mov ebx, dword ptr [eax+64]
add ebx, ecx
cmp dword ptr [ebx+12], 2147483648
jne .Lt_0087
cmp dword ptr [ebx+8], 0
jne .Lt_0087
.Lt_0102:
mov dword ptr [ebp-16], 4294967295
mov dword ptr [ebp-12], 4294967295
jmp .Lt_0086
.Lt_0087:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
sal eax, 4
mov ebx, dword ptr [ecx+64]
add ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+12]
sal esi, 4
mov eax, dword ptr [ecx+64]
add eax, esi
mov ecx, dword ptr [ebx+8]
mov esi, dword ptr [ebx+12]
sub ecx, dword ptr [eax]
sbb esi, dword ptr [eax+4]
add ecx, 1
adc esi, 0
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], esi
.Lt_0086:
jmp .Lt_0084
.Lt_0085:
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 0
.Lt_0084:
mov dword ptr [ebp-8], 0
.Lt_0088:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi]
mov esi, dword ptr [eax+60]
dec esi
cmp dword ptr [ecx+12], esi
jge .Lt_008C
push 0
push dword ptr [ebp+8]
call _HARRAYINIT
add esp, 8
test eax, eax
jne .Lt_008E
jmp .Lt_0079
.Lt_008E:
.Lt_008D:
jmp .Lt_008B
.Lt_008C:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+4]
and esi, 511
cmp esi, 20
jne .Lt_0090
push dword ptr [ebp+8]
call _HUDTINIT
add esp, 4
test eax, eax
jne .Lt_0092
jmp .Lt_0079
.Lt_0092:
.Lt_0091:
jmp .Lt_008F
.Lt_0090:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HELMINIT
add esp, 8
test eax, eax
jne .Lt_0094
jmp .Lt_0079
.Lt_0094:
.Lt_0093:
.Lt_008F:
.Lt_008B:
inc dword ptr [ebp-8]
mov esi, dword ptr [ebp-8]
mov eax, esi
sar eax, 31
cmp eax, dword ptr [ebp-12]
mov ecx, -1
jg .Lt_0103
jl .Lt_0104
cmp esi, dword ptr [ebp-16]
jae .Lt_0103
.Lt_0104:
xor ecx, ecx
.Lt_0103:
cmp dword ptr [ebp-12], 4294967295
mov esi, -1
jne .Lt_0105
cmp dword ptr [ebp-16], 4294967295
jne .Lt_0105
.Lt_0106:
xor esi, esi
.Lt_0105:
and ecx, esi
je .Lt_0096
jmp .Lt_0089
.Lt_0096:
.Lt_0095:
.Lt_008A:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0088
.Lt_0089:
cmp dword ptr [ebp-12], 4294967295
jne .Lt_0098
cmp dword ptr [ebp-16], 4294967295
jne .Lt_0098
.Lt_0107:
mov esi, dword ptr [ebp-8]
mov eax, esi
sar eax, 31
mov dword ptr [ebp-16], esi
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push dword ptr [ebp-16]
mov esi, dword ptr [ebp+8]
push dword ptr [esi+12]
mov esi, dword ptr [ebp+8]
push dword ptr [esi]
call _SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS
add esp, 16
mov esi, dword ptr [ebp+8]
push dword ptr [esi]
call _SYMBMAYBEADDARRAYDESC
add esp, 4
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi]
mov esi, dword ptr [eax+4]
and esi, 3
test esi, esi
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
push esi
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi]
push dword ptr [eax+44]
push dword ptr [eax+40]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax]
push dword ptr [esi+64]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi]
push dword ptr [eax+60]
call _SYMBCHECKARRAYSIZE
add esp, 20
test eax, eax
jne .Lt_009A
push 0
push 0
push 50
call _ERRREPORT
add esp, 12
push 0
push 1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS
add esp, 16
.Lt_009A:
.Lt_0099:
.Lt_0098:
.Lt_0097:
mov esi, dword ptr [ebp-8]
mov eax, esi
sar eax, 31
sub dword ptr [ebp-16], esi
sbb dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jl .Lt_009C
jg .Lt_0109
cmp dword ptr [ebp-16], 0
jbe .Lt_009C
.Lt_0109:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+12]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBCALCARRAYELEMENTS
add esp, 8
push edx
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-16]
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
pop dword ptr [ebp-16]
pop dword ptr [ebp-12]
add esp, 8
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+20]
and edx, 2
test edx, edx
je .Lt_009E
mov edx, dword ptr [ebp+8]
push dword ptr [edx+8]
call _SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_00A0
push 0
push 0
push 183
call _ERRREPORT
add esp, 12
jmp .Lt_009F
.Lt_00A0:
push dword ptr [ebp-24]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00A2
push 0
push 0
push 204
call _ERRREPORT
add esp, 12
.Lt_00A2:
.Lt_00A1:
.Lt_009F:
.Lt_009E:
.Lt_009D:
cmp dword ptr [ebp-24], 0
je .Lt_00A4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _ASTTYPEINIADDCTORLIST
add esp, 24
jmp .Lt_00A3
.Lt_00A4:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
mov eax, dword ptr [edx+4]
and eax, 262144
test eax, eax
je .Lt_00A6
mov edx, dword ptr [_ENV+272]
mov eax, edx
sar eax, 31
mov dword ptr [ebp-32], edx
mov dword ptr [ebp-28], eax
jmp .Lt_00A5
.Lt_00A6:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+4]
and eax, 511
mov edx, eax
mov dword ptr [ebp-36], edx
jmp .Lt_00A8
.Lt_00AA:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
mov esi, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
mov dword ptr [ebp-32], esi
mov dword ptr [ebp-28], edx
jmp .Lt_00A7
.Lt_00AB:
mov esi, dword ptr [ebp+8]
push dword ptr [esi+8]
mov esi, dword ptr [ebp+8]
push dword ptr [esi+4]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], edx
jmp .Lt_00A7
.Lt_00A8:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 14
ja .Lt_00AB
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.LT_00AC+eax*4-16]
_.LT_00AC:
.int .Lt_00AA
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AA
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AA
.Lt_00A7:
.Lt_00A5:
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
push eax
push edx
push dword ptr [ebp-28]
push dword ptr [ebp-32]
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
pop dword ptr [ebp-32]
pop dword ptr [ebp-28]
add esp, 8
push dword ptr [ebp-28]
push dword ptr [ebp-32]
mov edx, dword ptr [ebp+8]
push dword ptr [edx+16]
call _ASTTYPEINIADDPAD
add esp, 12
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+16]
mov esi, dword ptr [ebp-32]
mov edx, dword ptr [ebp-28]
add dword ptr [eax+20], esi
adc dword ptr [eax+24], edx
.Lt_00A3:
.Lt_009C:
.Lt_009B:
cmp dword ptr [ebp-20], 0
je .Lt_00AE
mov esi, dword ptr [ebp+8]
push dword ptr [esi]
mov esi, dword ptr [ebp+8]
push dword ptr [esi+16]
call _ASTTYPEINISCOPEEND
add esp, 8
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 125
je .Lt_00B0
push 0
push 0
push 65
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 125
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00AF
.Lt_00B0:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00AF:
mov eax, dword ptr [ebp+8]
dec dword ptr [eax+12]
.Lt_00AE:
.Lt_00AD:
mov dword ptr [ebp-4], -1
.Lt_0079:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HUDTINIT:
push ebp
mov ebp, esp
sub esp, 100
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00B1:
mov dword ptr [ebp-4], 0
inc dword ptr [_Lt_010A]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 2
test ebx, ebx
je .Lt_00B4
mov ebx, dword ptr [_PARSER+156]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [_PARSER+152]
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [_PARSER+152], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [_PARSER+156], ebx
call _CEXPRESSION
mov dword ptr [ebp-96], eax
mov eax, dword ptr [ebp-48]
mov dword ptr [_PARSER+152], eax
mov eax, dword ptr [ebp-44]
mov dword ptr [_PARSER+156], eax
cmp dword ptr [ebp-96], 0
jne .Lt_00B6
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
mov dword ptr [ebp-96], eax
.Lt_00B6:
.Lt_00B5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 4
jne .Lt_00B8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+56], 2
jne .Lt_00BA
mov eax, dword ptr [ebp-96]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 511
cmp ebx, ecx
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp-96]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ecx+8]
cmp esi, dword ptr [eax+8]
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_00BC
dec dword ptr [_Lt_010A]
push 0
push dword ptr [ebp-96]
push dword ptr [ebp+8]
call _HDOASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00B2
.Lt_00BC:
.Lt_00BB:
.Lt_00BA:
.Lt_00B9:
.Lt_00B8:
.Lt_00B7:
lea eax, [ebp-100]
push eax
push dword ptr [ebp-96]
call _CBYDESCARRAYARGPARENS
add esp, 4
push eax
push dword ptr [ebp-96]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp-96], eax
cmp dword ptr [ebp-96], 0
jne .Lt_00BE
dec dword ptr [_Lt_010A]
jmp .Lt_00B2
.Lt_00BE:
.Lt_00BD:
cmp dword ptr [ebp-100], 0
je .Lt_00C0
dec dword ptr [_Lt_010A]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-96]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _ASTTYPEINIADDCTORCALL
add esp, 20
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-4], ecx
jmp .Lt_00B2
jmp .Lt_00BF
.Lt_00C0:
dec dword ptr [_Lt_010A]
push 0
push dword ptr [ebp-96]
push dword ptr [ebp+8]
call _HDOASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00B2
.Lt_00BF:
.Lt_00B4:
.Lt_00B3:
mov dword ptr [ebp-80], -1
mov dword ptr [ebp-84], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_00C2
cmp dword ptr [_Lt_010A], 1
jg .Lt_00C4
dec dword ptr [_Lt_010A]
push 0
push dword ptr [ebp+8]
call _HELMINIT
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_00B2
.Lt_00C4:
.Lt_00C3:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 44
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-84], eax
mov dword ptr [ebp-80], 0
jmp .Lt_00C1
.Lt_00C2:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _ASTTYPEINISCOPEBEGIN
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00C1:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+16]
mov ebx, dword ptr [ecx+20]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], eax
lea ebx, [ebp-76]
push edi
mov edi, ebx
mov esi, dword ptr [ebp+8]
mov ecx, 7
rep movsd
pop edi
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], -1
.Lt_00C5:
cmp dword ptr [ebp-36], 0
jne .Lt_00C9
push 0
push 0
push 67
call _ERRREPORT
add esp, 12
jmp .Lt_00C6
.Lt_00C9:
.Lt_00C8:
cmp dword ptr [ebp-12], 0
jl .Lt_00CB
jg .Lt_010F
cmp dword ptr [ebp-16], 0
jbe .Lt_00CB
.Lt_010F:
mov ebx, dword ptr [ebp-36]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
sub ecx, dword ptr [ebp-16]
sbb eax, dword ptr [ebp-12]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jl .Lt_00CD
jg .Lt_0110
cmp dword ptr [ebp-32], 0
jbe .Lt_00CD
.Lt_0110:
push dword ptr [ebp-28]
push dword ptr [ebp-32]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+16]
call _ASTTYPEINIADDPAD
add esp, 12
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [ebp-28]
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], ecx
.Lt_00CD:
.Lt_00CC:
.Lt_00CB:
.Lt_00CA:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+48]
mov ecx, dword ptr [eax+52]
add ebx, dword ptr [ebp-24]
adc ecx, dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+16]
mov dword ptr [esi+20], ebx
mov dword ptr [esi+24], ecx
push dword ptr [ebp-36]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00CF
push 0
push 0
push 202
call _ERRREPORT
add esp, 12
.Lt_00CF:
.Lt_00CE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-36]
mov dword ptr [eax], ebx
push 0
push -2147483648
push dword ptr [ebp+8]
call _HUPDATECONTEXTDTYPE
add esp, 12
mov ebx, dword ptr [ebp+8]
and dword ptr [ebx+20], -3
push dword ptr [ebp-36]
call _SYMBHASCTOR
add esp, 4
test eax, eax
je .Lt_00D1
mov eax, dword ptr [ebp+8]
or dword ptr [eax+20], 2
.Lt_00D1:
.Lt_00D0:
push -1
push dword ptr [ebp+8]
call _HARRAYINIT
add esp, 8
test eax, eax
jne .Lt_00D3
mov eax, dword ptr [ebp-36]
cmp eax, dword ptr [ebp-40]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00D5
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
dec dword ptr [_Lt_010A]
jmp .Lt_00B2
.Lt_00D5:
.Lt_00D4:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+24]
mov dword ptr [ebp-100], ebx
lea ebx, [ebp-76]
push edi
mov edi, dword ptr [ebp+8]
mov esi, ebx
mov ecx, 7
rep movsd
pop edi
lea ebx, [ebp-96]
push ebx
push -1
push dword ptr [ebp-100]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call _ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp-100], eax
cmp dword ptr [ebp-100], 0
jne .Lt_00D7
dec dword ptr [_Lt_010A]
jmp .Lt_00B2
.Lt_00D7:
.Lt_00D6:
cmp dword ptr [ebp-80], 0
je .Lt_00D9
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00DB
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
.Lt_00DB:
.Lt_00DA:
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _ASTTYPEINIREMOVELASTNODE
add esp, 4
.Lt_00D9:
.Lt_00D8:
dec dword ptr [_Lt_010A]
cmp dword ptr [ebp-96], 0
je .Lt_00DD
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-100]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _ASTTYPEINIADDCTORCALL
add esp, 20
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_00B2
jmp .Lt_00DC
.Lt_00DD:
push 0
push dword ptr [ebp-100]
push dword ptr [ebp+8]
call _HDOASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00B2
.Lt_00DC:
.Lt_00D3:
.Lt_00D2:
push dword ptr [ebp-36]
call _SYMBGETREALSIZE
add esp, 4
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], edx
push dword ptr [ebp-36]
call _SYMBUDTGETNEXTINITABLEFIELD
add esp, 4
mov dword ptr [ebp-36], eax
cmp dword ptr [_Lt_010A], 1
jle .Lt_00DF
cmp dword ptr [ebp-84], 0
je .Lt_00E1
cmp dword ptr [ebp-36], 0
jne .Lt_00E3
jmp .Lt_00C6
.Lt_00E3:
.Lt_00E2:
.Lt_00E1:
.Lt_00E0:
.Lt_00DF:
.Lt_00DE:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00E5
jmp .Lt_00C6
.Lt_00E5:
.Lt_00E4:
.Lt_00C7:
jmp .Lt_00C5
.Lt_00C6:
cmp dword ptr [ebp-80], 0
je .Lt_00E7
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00E9
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00E8
.Lt_00E9:
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _ASTTYPEINISCOPEEND
add esp, 8
.Lt_00E8:
.Lt_00E7:
.Lt_00E6:
lea eax, [ebp-76]
push edi
mov edi, dword ptr [ebp+8]
mov esi, eax
mov ecx, 7
rep movsd
pop edi
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-92], eax
mov dword ptr [ebp-88], edx
mov edx, dword ptr [ebp-92]
mov eax, dword ptr [ebp-88]
sub edx, dword ptr [ebp-16]
sbb eax, dword ptr [ebp-12]
mov dword ptr [ebp-32], edx
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jl .Lt_00EB
jg .Lt_0114
cmp dword ptr [ebp-32], 0
jbe .Lt_00EB
.Lt_0114:
push dword ptr [ebp-28]
push dword ptr [ebp-32]
mov edx, dword ptr [ebp+8]
push dword ptr [edx+16]
call _ASTTYPEINIADDPAD
add esp, 12
.Lt_00EB:
.Lt_00EA:
mov eax, dword ptr [ebp-92]
mov edx, dword ptr [ebp-88]
add eax, dword ptr [ebp-24]
adc edx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+16]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], edx
dec dword ptr [_Lt_010A]
mov dword ptr [ebp-4], -1
.Lt_00B2:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_010A,4
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
