	.intel_syntax noprefix

.section .text
.balign 16

.globl CINITIALIZER
CINITIALIZER:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EB:
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
je .Lt_00EE
push 0
push -1
push 75
call ERRREPORT
add esp, 12
jmp .Lt_00EC
.Lt_00EE:
.Lt_00ED:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 1
jne .Lt_00F0
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_00EF
.Lt_00F0:
mov dword ptr [ebp-8], 0
.Lt_00EF:
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
call HUPDATECONTEXTDTYPE
add esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+52]
push dword ptr [ebx+48]
push dword ptr [ebp-8]
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-24], eax
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call TYPEHASCTOR
add esp, 8
test eax, eax
je .Lt_00F2
or dword ptr [ebp-20], 2
.Lt_00F2:
.Lt_00F1:
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
je .Lt_00F4
push 0
lea ecx, [ebp-40]
push ecx
call HARRAYINIT
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_00F3
.Lt_00F4:
mov eax, dword ptr [ebp-36]
and eax, 511
cmp eax, 20
jne .Lt_00F6
lea eax, [ebp-40]
push eax
call HUDTINIT
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_00F5
.Lt_00F6:
push 0
lea eax, [ebp-40]
push eax
call HELMINIT
add esp, 8
mov dword ptr [ebp-12], eax
.Lt_00F5:
.Lt_00F3:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-24]
call ASTTYPEINIEND
add esp, 8
cmp dword ptr [ebp-12], 0
je .Lt_00F7
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-44], eax
jmp .Lt_00F9
.Lt_00F7:
mov dword ptr [ebp-44], 0
.Lt_00F9:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-4], eax
.Lt_00EC:
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
HUPDATECONTEXTDTYPE:
push ebp
mov ebp, esp
push ebx
.Lt_0067:
cmp dword ptr [ebp+12], -2147483648
jne .Lt_006A
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
jmp .Lt_0069
.Lt_006A:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [ecx+8], ebx
.Lt_0069:
.Lt_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDOASSIGN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_006B:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call ASTCHECKASSIGNTOTYPE
add esp, 12
test eax, eax
jne .Lt_006E
push 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_0070
cmp dword ptr [ebp+16], 0
je .Lt_0072
jmp .Lt_006C
.Lt_0072:
.Lt_0071:
push 0
push -1
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp+12], eax
.Lt_0070:
.Lt_006F:
.Lt_006E:
.Lt_006D:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTTYPEINIADDASSIGN
add esp, 20
mov dword ptr [ebp-4], -1
.Lt_006C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HELMINIT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0073:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [PARSER+156]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [PARSER+152]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+32]
mov dword ptr [PARSER+156], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [PARSER+152], eax
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0076
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_0076:
.Lt_0075:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [PARSER+156], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [PARSER+152], ebx
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HDOASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0074:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HARRAYINIT:
push ebp
mov ebp, esp
sub esp, 36
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0077:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 123
jne .Lt_007A
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+12]
mov dword ptr [ebp-20], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+60]
cmp dword ptr [eax+12], ebx
jl .Lt_007C
push 0
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+60], 0
jle .Lt_007D
mov dword ptr [ebp-24], 67
jmp .Lt_0100
.Lt_007D:
mov dword ptr [ebp-24], 63
.Lt_0100:
push dword ptr [ebp-24]
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 125
call HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
dec dword ptr [eax+12]
jmp .Lt_0078
.Lt_007C:
.Lt_007B:
jmp .Lt_0079
.Lt_007A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+60]
dec ebx
cmp dword ptr [eax+12], ebx
jge .Lt_0080
push 0
push 0
push 64
call ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+12]
mov dword ptr [ebp-20], -1
.Lt_0080:
.Lt_007F:
.Lt_0079:
cmp dword ptr [ebp-20], 0
je .Lt_0082
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
call ASTTYPEINISCOPEBEGIN
add esp, 12
.Lt_0082:
.Lt_0081:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+12], 0
jl .Lt_0084
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
sal ecx, 4
mov ebx, dword ptr [eax+64]
add ebx, ecx
cmp dword ptr [ebx+12], 2147483648
jne .Lt_0086
cmp dword ptr [ebx+8], 0
jne .Lt_0086
.Lt_0101:
mov dword ptr [ebp-16], 4294967295
mov dword ptr [ebp-12], 4294967295
jmp .Lt_0085
.Lt_0086:
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
.Lt_0085:
jmp .Lt_0083
.Lt_0084:
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 0
.Lt_0083:
mov dword ptr [ebp-8], 0
.Lt_0087:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi]
mov esi, dword ptr [eax+60]
dec esi
cmp dword ptr [ecx+12], esi
jge .Lt_008B
push 0
push dword ptr [ebp+8]
call HARRAYINIT
add esp, 8
test eax, eax
jne .Lt_008D
jmp .Lt_0078
.Lt_008D:
.Lt_008C:
jmp .Lt_008A
.Lt_008B:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+4]
and esi, 511
cmp esi, 20
jne .Lt_008F
push dword ptr [ebp+8]
call HUDTINIT
add esp, 4
test eax, eax
jne .Lt_0091
jmp .Lt_0078
.Lt_0091:
.Lt_0090:
jmp .Lt_008E
.Lt_008F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HELMINIT
add esp, 8
test eax, eax
jne .Lt_0093
jmp .Lt_0078
.Lt_0093:
.Lt_0092:
.Lt_008E:
.Lt_008A:
inc dword ptr [ebp-8]
mov esi, dword ptr [ebp-8]
mov eax, esi
sar eax, 31
cmp eax, dword ptr [ebp-12]
mov ecx, -1
jg .Lt_0102
jl .Lt_0103
cmp esi, dword ptr [ebp-16]
jae .Lt_0102
.Lt_0103:
xor ecx, ecx
.Lt_0102:
cmp dword ptr [ebp-12], 4294967295
mov esi, -1
jne .Lt_0104
cmp dword ptr [ebp-16], 4294967295
jne .Lt_0104
.Lt_0105:
xor esi, esi
.Lt_0104:
and ecx, esi
je .Lt_0095
jmp .Lt_0088
.Lt_0095:
.Lt_0094:
.Lt_0089:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0087
.Lt_0088:
cmp dword ptr [ebp-12], 4294967295
jne .Lt_0097
cmp dword ptr [ebp-16], 4294967295
jne .Lt_0097
.Lt_0106:
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
call SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS
add esp, 16
mov esi, dword ptr [ebp+8]
push dword ptr [esi]
call SYMBMAYBEADDARRAYDESC
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
call SYMBCHECKARRAYSIZE
add esp, 20
test eax, eax
jne .Lt_0099
push 0
push 0
push 50
call ERRREPORT
add esp, 12
push 0
push 1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS
add esp, 16
.Lt_0099:
.Lt_0098:
.Lt_0097:
.Lt_0096:
mov esi, dword ptr [ebp-8]
mov eax, esi
sar eax, 31
sub dword ptr [ebp-16], esi
sbb dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jl .Lt_009B
jg .Lt_0108
cmp dword ptr [ebp-16], 0
jbe .Lt_009B
.Lt_0108:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+12]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBCALCARRAYELEMENTS
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
je .Lt_009D
mov edx, dword ptr [ebp+8]
push dword ptr [edx+8]
call SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_009F
push 0
push 0
push 183
call ERRREPORT
add esp, 12
jmp .Lt_009E
.Lt_009F:
push dword ptr [ebp-24]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00A1
push 0
push 0
push 204
call ERRREPORT
add esp, 12
.Lt_00A1:
.Lt_00A0:
.Lt_009E:
.Lt_009D:
.Lt_009C:
cmp dword ptr [ebp-24], 0
je .Lt_00A3
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
call ASTTYPEINIADDCTORLIST
add esp, 24
jmp .Lt_00A2
.Lt_00A3:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax]
mov eax, dword ptr [edx+4]
and eax, 262144
test eax, eax
je .Lt_00A5
mov edx, dword ptr [ENV+272]
mov eax, edx
sar eax, 31
mov dword ptr [ebp-32], edx
mov dword ptr [ebp-28], eax
jmp .Lt_00A4
.Lt_00A5:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+4]
and eax, 511
mov edx, eax
mov dword ptr [ebp-36], edx
jmp .Lt_00A7
.Lt_00A9:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx]
mov esi, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
mov dword ptr [ebp-32], esi
mov dword ptr [ebp-28], edx
jmp .Lt_00A6
.Lt_00AA:
mov esi, dword ptr [ebp+8]
push dword ptr [esi+8]
mov esi, dword ptr [ebp+8]
push dword ptr [esi+4]
call SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], edx
jmp .Lt_00A6
.Lt_00A7:
mov eax, dword ptr [ebp-36]
add eax, 4294967292
cmp eax, 14
ja .Lt_00AA
mov eax, dword ptr [ebp-36]
jmp dword ptr [.LT_00AB+eax*4-16]
.LT_00AB:
.int .Lt_00A9
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00A9
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00A9
.Lt_00A6:
.Lt_00A4:
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
call ASTTYPEINIADDPAD
add esp, 12
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+16]
mov esi, dword ptr [ebp-32]
mov edx, dword ptr [ebp-28]
add dword ptr [eax+20], esi
adc dword ptr [eax+24], edx
.Lt_00A2:
.Lt_009B:
.Lt_009A:
cmp dword ptr [ebp-20], 0
je .Lt_00AD
mov esi, dword ptr [ebp+8]
push dword ptr [esi]
mov esi, dword ptr [ebp+8]
push dword ptr [esi+16]
call ASTTYPEINISCOPEEND
add esp, 8
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 125
je .Lt_00AF
push 0
push 0
push 65
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 125
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AE
.Lt_00AF:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_00AE:
mov eax, dword ptr [ebp+8]
dec dword ptr [eax+12]
.Lt_00AD:
.Lt_00AC:
mov dword ptr [ebp-4], -1
.Lt_0078:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HUDTINIT:
push ebp
mov ebp, esp
sub esp, 100
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00B0:
mov dword ptr [ebp-4], 0
inc dword ptr [Lt_0109]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 2
test ebx, ebx
je .Lt_00B3
mov ebx, dword ptr [PARSER+156]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [PARSER+152]
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [PARSER+152], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [PARSER+156], ebx
call CEXPRESSION
mov dword ptr [ebp-96], eax
mov eax, dword ptr [ebp-48]
mov dword ptr [PARSER+152], eax
mov eax, dword ptr [ebp-44]
mov dword ptr [PARSER+156], eax
cmp dword ptr [ebp-96], 0
jne .Lt_00B5
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
mov dword ptr [ebp-96], eax
.Lt_00B5:
.Lt_00B4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 4
jne .Lt_00B7
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+56], 2
jne .Lt_00B9
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
je .Lt_00BB
dec dword ptr [Lt_0109]
push 0
push dword ptr [ebp-96]
push dword ptr [ebp+8]
call HDOASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00B1
.Lt_00BB:
.Lt_00BA:
.Lt_00B9:
.Lt_00B8:
.Lt_00B7:
.Lt_00B6:
lea eax, [ebp-100]
push eax
push dword ptr [ebp-96]
call CBYDESCARRAYARGPARENS
add esp, 4
push eax
push dword ptr [ebp-96]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp-96], eax
cmp dword ptr [ebp-96], 0
jne .Lt_00BD
dec dword ptr [Lt_0109]
jmp .Lt_00B1
.Lt_00BD:
.Lt_00BC:
cmp dword ptr [ebp-100], 0
je .Lt_00BF
dec dword ptr [Lt_0109]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-96]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTTYPEINIADDCTORCALL
add esp, 20
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-4], ecx
jmp .Lt_00B1
jmp .Lt_00BE
.Lt_00BF:
dec dword ptr [Lt_0109]
push 0
push dword ptr [ebp-96]
push dword ptr [ebp+8]
call HDOASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00B1
.Lt_00BE:
.Lt_00B3:
.Lt_00B2:
mov dword ptr [ebp-80], -1
mov dword ptr [ebp-84], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_00C1
cmp dword ptr [Lt_0109], 1
jg .Lt_00C3
dec dword ptr [Lt_0109]
push 0
push dword ptr [ebp+8]
call HELMINIT
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_00B1
.Lt_00C3:
.Lt_00C2:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 44
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-84], eax
mov dword ptr [ebp-80], 0
jmp .Lt_00C0
.Lt_00C1:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTTYPEINISCOPEBEGIN
add esp, 12
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_00C0:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call SYMBUDTGETFIRSTFIELD
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
.Lt_00C4:
cmp dword ptr [ebp-36], 0
jne .Lt_00C8
push 0
push 0
push 67
call ERRREPORT
add esp, 12
jmp .Lt_00C5
.Lt_00C8:
.Lt_00C7:
cmp dword ptr [ebp-12], 0
jl .Lt_00CA
jg .Lt_010E
cmp dword ptr [ebp-16], 0
jbe .Lt_00CA
.Lt_010E:
mov ebx, dword ptr [ebp-36]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
sub ecx, dword ptr [ebp-16]
sbb eax, dword ptr [ebp-12]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jl .Lt_00CC
jg .Lt_010F
cmp dword ptr [ebp-32], 0
jbe .Lt_00CC
.Lt_010F:
push dword ptr [ebp-28]
push dword ptr [ebp-32]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+16]
call ASTTYPEINIADDPAD
add esp, 12
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [ebp-28]
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], ecx
.Lt_00CC:
.Lt_00CB:
.Lt_00CA:
.Lt_00C9:
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
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00CE
push 0
push 0
push 202
call ERRREPORT
add esp, 12
.Lt_00CE:
.Lt_00CD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-36]
mov dword ptr [eax], ebx
push 0
push -2147483648
push dword ptr [ebp+8]
call HUPDATECONTEXTDTYPE
add esp, 12
mov ebx, dword ptr [ebp+8]
and dword ptr [ebx+20], -3
push dword ptr [ebp-36]
call SYMBHASCTOR
add esp, 4
test eax, eax
je .Lt_00D0
mov eax, dword ptr [ebp+8]
or dword ptr [eax+20], 2
.Lt_00D0:
.Lt_00CF:
push -1
push dword ptr [ebp+8]
call HARRAYINIT
add esp, 8
test eax, eax
jne .Lt_00D2
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
je .Lt_00D4
push 0
push -1
push 24
call ERRREPORT
add esp, 12
dec dword ptr [Lt_0109]
jmp .Lt_00B1
.Lt_00D4:
.Lt_00D3:
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
call ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp-100], eax
cmp dword ptr [ebp-100], 0
jne .Lt_00D6
dec dword ptr [Lt_0109]
jmp .Lt_00B1
.Lt_00D6:
.Lt_00D5:
cmp dword ptr [ebp-80], 0
je .Lt_00D8
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00DA
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
.Lt_00DA:
.Lt_00D9:
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTTYPEINIREMOVELASTNODE
add esp, 4
.Lt_00D8:
.Lt_00D7:
dec dword ptr [Lt_0109]
cmp dword ptr [ebp-96], 0
je .Lt_00DC
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp-100]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTTYPEINIADDCTORCALL
add esp, 20
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_00B1
jmp .Lt_00DB
.Lt_00DC:
push 0
push dword ptr [ebp-100]
push dword ptr [ebp+8]
call HDOASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00B1
.Lt_00DB:
.Lt_00D2:
.Lt_00D1:
push dword ptr [ebp-36]
call SYMBGETREALSIZE
add esp, 4
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], edx
push dword ptr [ebp-36]
call SYMBUDTGETNEXTINITABLEFIELD
add esp, 4
mov dword ptr [ebp-36], eax
cmp dword ptr [Lt_0109], 1
jle .Lt_00DE
cmp dword ptr [ebp-84], 0
je .Lt_00E0
cmp dword ptr [ebp-36], 0
jne .Lt_00E2
jmp .Lt_00C5
.Lt_00E2:
.Lt_00E1:
.Lt_00E0:
.Lt_00DF:
.Lt_00DE:
.Lt_00DD:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .Lt_00E4
jmp .Lt_00C5
.Lt_00E4:
.Lt_00E3:
.Lt_00C6:
jmp .Lt_00C4
.Lt_00C5:
cmp dword ptr [ebp-80], 0
je .Lt_00E6
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00E8
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
jmp .Lt_00E7
.Lt_00E8:
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTTYPEINISCOPEEND
add esp, 8
.Lt_00E7:
.Lt_00E6:
.Lt_00E5:
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
call SYMBCALCLEN
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
jl .Lt_00EA
jg .Lt_0113
cmp dword ptr [ebp-32], 0
jbe .Lt_00EA
.Lt_0113:
push dword ptr [ebp-28]
push dword ptr [ebp-32]
mov edx, dword ptr [ebp+8]
push dword ptr [edx+16]
call ASTTYPEINIADDPAD
add esp, 12
.Lt_00EA:
.Lt_00E9:
mov eax, dword ptr [ebp-92]
mov edx, dword ptr [ebp-88]
add eax, dword ptr [ebp-24]
adc edx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+16]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], edx
dec dword ptr [Lt_0109]
mov dword ptr [ebp-4], -1
.Lt_00B1:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0109,4
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
