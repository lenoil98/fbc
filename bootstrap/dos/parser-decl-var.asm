	.intel_syntax noprefix

.section .text
.balign 16

.globl _HCOMPLAINIFABSTRACTCLASS
_HCOMPLAINIFABSTRACTCLASS:
push ebp
mov ebp, esp
.Lt_0069:
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
jne .Lt_006C
push dword ptr [ebp+12]
call _SYMBCOMPGETABSTRACTCOUNT
add esp, 4
test eax, eax
jle .Lt_006E
push 0
push 0
push 306
call _ERRREPORT
add esp, 12
.Lt_006E:
.Lt_006D:
.Lt_006C:
.Lt_006B:
.Lt_006A:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HCOMPLAINABOUTCONSTDYNAMICARRAY
_HCOMPLAINABOUTCONSTDYNAMICARRAY:
push ebp
mov ebp, esp
push ebx
.Lt_006F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 512
test ebx, ebx
je .Lt_0072
push 0
push 0
push 275
call _ERRREPORT
add esp, 12
.Lt_0072:
.Lt_0071:
.Lt_0070:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HSYMBOLTYPE
_HSYMBOLTYPE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0073:
mov dword ptr [ebp-4], 1
cmp dword ptr [ebp+20], 0
je .Lt_0076
and dword ptr [ebp-4], -2
or dword ptr [ebp-4], 4
.Lt_0076:
.Lt_0075:
cmp dword ptr [ebp+24], 0
je .Lt_0078
and dword ptr [ebp-4], -2
.Lt_0078:
.Lt_0077:
push dword ptr [ebp-4]
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CSYMBOLTYPE
add esp, 20
test eax, eax
jne .Lt_007B
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
je .Lt_007C
mov dword ptr [ebp-12], 24
jmp .Lt_0086
.Lt_007C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0086:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], ebx
.Lt_007B:
.Lt_007A:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 0
jne .Lt_007F
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
and ebx, 31
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
and ecx, 261632
sal ecx, 1
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 32505856
or ebx, eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 480
je .Lt_0080
mov dword ptr [ebp-12], 24
jmp .Lt_0087
.Lt_0080:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_0087:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+4]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], ecx
mov dword ptr [ebx+4], eax
.Lt_007F:
.Lt_007E:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 32505856
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0083
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
and ecx, 32505856
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
and ecx, 480
je .Lt_0084
mov dword ptr [ebp-12], 24
jmp .Lt_0088
.Lt_0084:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0088:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov ecx, ebx
sar ecx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ebx
mov dword ptr [eax+4], ecx
.Lt_0083:
.Lt_0082:
.Lt_0074:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HCHECKSCOPE
_HCHECKSCOPE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_008B:
cmp dword ptr [_PARSER+96], 0
jbe .Lt_008E
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
je .Lt_0090
push 0
push 0
push 61
call _ERRREPORT
add esp, 12
jmp .Lt_008F
.Lt_0090:
push 0
push 0
push 96
call _ERRREPORT
add esp, 12
.Lt_008F:
mov dword ptr [ebp-4], 0
jmp .Lt_008D
.Lt_008E:
mov dword ptr [ebp-4], -1
.Lt_008D:
.Lt_008C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CVARIABLEDECL
_CVARIABLEDECL:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0091:
mov dword ptr [ebp-8], 0
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_0094
.Lt_0096:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0098
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0092
.Lt_0098:
.Lt_0097:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
je .Lt_009A
push 0
push 0
push 216
call _ERRREPORT
add esp, 12
and dword ptr [ebp+8], -33
.Lt_009A:
.Lt_0099:
push 2048
call _LEXSKIPTOKEN
add esp, 4
or dword ptr [ebp+8], 4
push 2048
push 313
call _HMATCH
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_0093
.Lt_009B:
or dword ptr [ebp+8], 10
or dword ptr [ebp+8], 4
call _HCHECKSCOPE
test eax, eax
jne .Lt_009D
and dword ptr [ebp+8], -9
.Lt_009D:
.Lt_009C:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
je .Lt_009F
push 0
push 0
push 216
call _ERRREPORT
add esp, 12
and dword ptr [ebp+8], -33
.Lt_009F:
.Lt_009E:
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0093
.Lt_00A0:
cmp dword ptr [ebp+8], 0
jne .Lt_00A2
push 0
push 1
call _LEXGETLOOKAHEADCLASS
add esp, 8
cmp eax, 4
jne .Lt_00A4
mov dword ptr [ebp-4], 0
jmp .Lt_0092
.Lt_00A4:
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
or dword ptr [ebp+8], 16
or dword ptr [ebp+8], 3
call _HCHECKSCOPE
test eax, eax
jne .Lt_00A6
and dword ptr [ebp+8], -18
.Lt_00A6:
.Lt_00A5:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
je .Lt_00A8
push 0
push 0
push 216
call _ERRREPORT
add esp, 12
and dword ptr [ebp+8], -33
.Lt_00A8:
.Lt_00A7:
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0093
.Lt_00A9:
push 9
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00AB
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0092
.Lt_00AB:
.Lt_00AA:
push 2048
call _LEXSKIPTOKEN
add esp, 4
or dword ptr [ebp+8], 2
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 309
jne .Lt_00AD
push dword ptr [ebp+8]
call _CAUTOVARDECL
add esp, 4
mov dword ptr [ebp-4], -1
jmp .Lt_0092
.Lt_00AD:
.Lt_00AC:
jmp .Lt_0093
.Lt_00AE:
push dword ptr [ebp+8]
call _CAUTOVARDECL
add esp, 4
mov dword ptr [ebp-4], -1
jmp .Lt_0092
jmp .Lt_0093
.Lt_00AF:
push 9
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00B1
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0092
.Lt_00B1:
.Lt_00B0:
push 4096
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0093
.Lt_0094:
mov eax, dword ptr [ebp-16]
add eax, 4294966990
cmp eax, 5
ja .Lt_00AF
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_00B2+eax*4-1224]
_.LT_00B2:
.int .Lt_00A0
.int .Lt_00A9
.int .Lt_00AF
.int .Lt_00AE
.int .Lt_0096
.int .Lt_009B
.Lt_0093:
cmp dword ptr [_ENV+944], 0
je .Lt_00B4
or dword ptr [ebp+8], 4
.Lt_00B4:
.Lt_00B3:
mov eax, dword ptr [ebp+8]
and eax, 16
test eax, eax
jne .Lt_00B6
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 312
jne .Lt_00B8
call _HCHECKSCOPE
test eax, eax
jne .Lt_00BA
or dword ptr [ebp+8], 2
jmp .Lt_00B9
.Lt_00BA:
or dword ptr [ebp+8], 3
.Lt_00B9:
push 2048
call _LEXSKIPTOKEN
add esp, 4
.Lt_00B8:
.Lt_00B7:
jmp .Lt_00B5
.Lt_00B6:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 342
jne .Lt_00BC
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_00C0
.Lt_00C1:
cmp dword ptr [ebp-16], 1
jne .Lt_00BF
.Lt_00C0:
or dword ptr [ebp+8], 512
.Lt_00BF:
.Lt_00BD:
.Lt_00BC:
.Lt_00BB:
.Lt_00B5:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 64
test ebx, ebx
je .Lt_00C3
or dword ptr [ebp+8], 2
.Lt_00C3:
.Lt_00C2:
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _CVARDECL
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0092:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HMAYBECONVERTEXPRTB2DIMTB
_HMAYBECONVERTEXPRTB2DIMTB:
push ebp
mov ebp, esp
push ebx
.Lt_0158:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HEXPRTBISCONST
add esp, 8
test eax, eax
je .Lt_015B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 4
test ebx, ebx
jne .Lt_015D
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HMAKEARRAYDIMTB
add esp, 12
.Lt_015D:
.Lt_015C:
jmp .Lt_015A
.Lt_015B:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx], 4
.Lt_015A:
.Lt_0159:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HCOMPLAINABOUTELLIPSIS
_HCOMPLAINABOUTELLIPSIS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_015E:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_0161
.Lt_0164:
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-4]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
cmp dword ptr [ebx+4], 0
jne .Lt_0166
push 0
push 0
push dword ptr [ebp+16]
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov ecx, dword ptr [ebx]
imul ecx, dword ptr [ebp-4]
sal ecx, 2
mov ebx, dword ptr [ebp+12]
add ecx, dword ptr [ebx]
mov dword ptr [ecx+4], eax
.Lt_0166:
.Lt_0165:
.Lt_0162:
inc dword ptr [ebp-4]
.Lt_0161:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .Lt_0164
.Lt_0163:
.Lt_015F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CVARDECL
_CVARDECL:
push ebp
mov ebp, esp
sub esp, 120
push ebx
mov dword ptr [ebp-4], 0
.Lt_020E:
mov dword ptr [ebp-4], 0
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .Lt_0213
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
jne .Lt_0215
or dword ptr [ebp+8], 3
.Lt_0215:
.Lt_0214:
.Lt_0213:
.Lt_0212:
push 2048
push 320
call _HMATCH
add esp, 8
mov dword ptr [ebp-96], eax
mov dword ptr [ebp-40], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .Lt_0217
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push dword ptr [ebp-96]
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call _HSYMBOLTYPE
add esp, 20
cmp dword ptr [ebp-96], 0
jne .Lt_0219
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call _HCOMPLAINIFABSTRACTCLASS
add esp, 8
.Lt_0219:
.Lt_0218:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], -1
cmp dword ptr [ebp-96], 0
je .Lt_021B
mov dword ptr [ebp-96], 0
or dword ptr [ebp+8], 262144
.Lt_021B:
.Lt_021A:
.Lt_0217:
.Lt_0216:
.Lt_021C:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-100], eax
cmp dword ptr [ebp-40], 0
jne .Lt_0220
cmp dword ptr [ebp-96], 0
je .Lt_0222
mov dword ptr [ebp-96], 0
or dword ptr [ebp-100], 262144
jmp .Lt_0221
.Lt_0222:
push 2048
push 320
call _HMATCH
add esp, 8
test eax, eax
je .Lt_0223
or dword ptr [ebp-100], 262144
.Lt_0223:
.Lt_0221:
.Lt_0220:
.Lt_021F:
mov eax, dword ptr [ebp+16]
cmp eax, 310
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-100]
and ebx, 1
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
je .Lt_0224
mov dword ptr [ebp-104], 0
jmp .Lt_02B6
.Lt_0224:
mov dword ptr [ebp-104], 4
.Lt_02B6:
mov eax, dword ptr [ebp-104]
or eax, 114
push eax
call _CPARENTID
add esp, 4
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-20], 0
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-56]
je .Lt_0227
mov dword ptr [ebp-64], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_0229
mov dword ptr [ebp-64], -1
jmp .Lt_0228
.Lt_0229:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-116], 40
je .Lt_022D
.Lt_022E:
cmp dword ptr [ebp-116], 44
je .Lt_022D
.Lt_022F:
cmp dword ptr [ebp-116], 376
je .Lt_022D
.Lt_0230:
cmp dword ptr [ebp-116], 258
je .Lt_022D
.Lt_0231:
cmp dword ptr [ebp-116], 257
je .Lt_022D
.Lt_0232:
cmp dword ptr [ebp-116], 256
jne .Lt_022C
.Lt_022D:
jmp .Lt_022A
.Lt_022C:
mov dword ptr [ebp-64], -1
.Lt_0233:
.Lt_022A:
.Lt_0228:
cmp dword ptr [ebp-64], 0
je .Lt_0235
call _HIDXINPARENSONLYEXPR
push eax
call _HCHECKDYNAMICARRAYEXPR
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_0235:
.Lt_0234:
.Lt_0227:
.Lt_0226:
cmp dword ptr [ebp-24], 0
je .Lt_0237
mov dword ptr [ebp-8], 0
push 0
push 0
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 129
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-80], -2147483648
jmp .Lt_0236
.Lt_0237:
push dword ptr [ebp-56]
lea ebx, [ebp-80]
push ebx
push offset _Lt_02BB
push dword ptr [ebp-20]
call _HGETID
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0236:
mov dword ptr [ebp-48], 0
cmp dword ptr [ebp-40], 0
jne .Lt_0239
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp-60], eax
mov dword ptr [ebp-16], 0
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-72], eax
mov dword ptr [ebp-68], edx
mov eax, dword ptr [ebp-80]
cmp eax, -2147483648
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .Lt_0238
.Lt_0239:
cmp dword ptr [ebp-80], -2147483648
je .Lt_023B
push 0
push 1
push 0
push offset _Lt_02BB
push 17
call _ERRREPORTEX
add esp, 20
mov dword ptr [ebp-80], -2147483648
.Lt_023B:
.Lt_023A:
.Lt_0238:
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-44], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
sete al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [ebp+20]
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
and eax, edx
je .Lt_023D
mov edx, dword ptr [ebp-100]
and edx, 262144
je .Lt_023F
push 0
push 0
push 322
call _ERRREPORT
add esp, 12
and dword ptr [ebp-100], -262145
.Lt_023F:
.Lt_023E:
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
jne .Lt_0241
mov dword ptr [ebp-76], -1
or dword ptr [ebp-100], 4
jmp .Lt_0240
.Lt_0241:
push offset _Lt_02BF
lea eax, [ebp-44]
push eax
lea eax, [ebp-76]
push eax
call _CARRAYDECL
add esp, 12
cmp dword ptr [ebp-44], 0
je .Lt_0243
mov eax, dword ptr [ebp-100]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov edx, dword ptr [ebp-100]
and edx, 16
test edx, edx
setne dl
shr edx, 1
sbb edx, edx
mov ebx, dword ptr [ebp-100]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and edx, ebx
or eax, edx
je .Lt_0245
push 0
push 0
push 136
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-76], -1
mov dword ptr [ebp-44], 0
.Lt_0245:
.Lt_0244:
jmp .Lt_0242
.Lt_0243:
or dword ptr [ebp-100], 4
.Lt_0242:
.Lt_0240:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0247
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
jmp .Lt_0246
.Lt_0247:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0246:
jmp .Lt_023C
.Lt_023D:
cmp dword ptr [ebp+16], 310
jne .Lt_0248
push 0
push 1
push 0
push offset _Lt_02BB
push 63
call _ERRREPORTEX
add esp, 20
mov dword ptr [ebp-76], -1
jmp .Lt_023C
.Lt_0248:
and dword ptr [ebp-100], -5
.Lt_023C:
mov eax, dword ptr [ebp-44]
and dword ptr [ebp-56], eax
mov dword ptr [ebp-84], 0
mov eax, dword ptr [ebp-100]
and eax, 48
test eax, eax
je .Lt_024A
call _CALIASATTRIBUTE
mov dword ptr [ebp-84], eax
.Lt_024A:
.Lt_0249:
cmp dword ptr [ebp-40], 0
jne .Lt_024C
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .Lt_024E
cmp dword ptr [ebp-60], -2147483648
je .Lt_0250
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-60], -2147483648
.Lt_0250:
.Lt_024F:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-100]
and eax, 262144
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-116], eax
push 0
push dword ptr [ebp-116]
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call _HSYMBOLTYPE
add esp, 20
cmp dword ptr [ebp-116], 0
jne .Lt_0252
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call _HCOMPLAINIFABSTRACTCLASS
add esp, 8
.Lt_0252:
.Lt_0251:
mov dword ptr [ebp-36], 0
jmp .Lt_024D
.Lt_024E:
cmp dword ptr [ebp-60], -2147483648
jne .Lt_0253
mov eax, dword ptr [_ENV+888]
and eax, 4194304
test eax, eax
je .Lt_0255
push offset _Lt_02BB
call _SYMBGETDEFTYPE
add esp, 4
mov dword ptr [ebp-60], eax
mov dword ptr [ebp-16], 0
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-72], eax
mov dword ptr [ebp-68], edx
mov dword ptr [ebp-36], -1
.Lt_0255:
.Lt_0254:
cmp dword ptr [ebp-56], 0
je .Lt_0257
mov dword ptr [ebp-48], -1
jmp .Lt_0256
.Lt_0257:
cmp dword ptr [ebp-60], -2147483648
jne .Lt_0259
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call _HERRORDEFTYPENOTALLOWED
add esp, 12
.Lt_0259:
.Lt_0258:
.Lt_0256:
.Lt_0253:
.Lt_024D:
.Lt_024C:
.Lt_024B:
cmp dword ptr [ebp-24], 0
je .Lt_025B
mov eax, dword ptr [ebp-24]
mov edx, dword ptr [eax+12]
mov dword ptr [ebp-12], edx
jmp .Lt_025A
.Lt_025B:
push dword ptr [ebp-56]
mov edx, dword ptr [ebp-80]
cmp edx, -2147483648
setne dl
shr edx, 1
sbb edx, edx
push edx
push dword ptr [ebp-48]
push dword ptr [ebp-60]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call _HLOOKUPVARANDCHECKPARENT
add esp, 24
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_025D
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 12
jne .Lt_025F
push dword ptr [ebp-56]
push dword ptr [ebp-12]
call _HMAYBEBUILDFIELDACCESS
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .Lt_0261
push dword ptr [ebp-24]
call _ASTNEWNIDXARRAY
add esp, 4
push eax
call _HCHECKDYNAMICARRAYEXPR
add esp, 4
mov dword ptr [ebp-24], eax
jmp .Lt_0260
.Lt_0261:
mov dword ptr [ebp-12], 0
.Lt_0260:
.Lt_025F:
.Lt_025E:
.Lt_025D:
.Lt_025C:
.Lt_025A:
cmp dword ptr [ebp-48], 0
je .Lt_0263
cmp dword ptr [ebp-12], 0
je .Lt_0265
mov eax, dword ptr [ebp-12]
mov edx, dword ptr [eax+28]
and edx, 511
mov dword ptr [ebp-60], edx
mov edx, dword ptr [ebp-12]
mov eax, dword ptr [edx+32]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
mov dword ptr [ebp-72], ebx
mov dword ptr [ebp-68], edx
jmp .Lt_0264
.Lt_0265:
mov ebx, dword ptr [_ENV+888]
and ebx, 4194304
test ebx, ebx
je .Lt_0266
jmp .Lt_0264
.Lt_0266:
lea ebx, [ebp-72]
push ebx
lea ebx, [ebp-16]
push ebx
lea ebx, [ebp-60]
push ebx
call _HERRORDEFTYPENOTALLOWED
add esp, 12
.Lt_0264:
.Lt_0263:
.Lt_0262:
cmp dword ptr [ebp-44], 0
je .Lt_0268
cmp dword ptr [ebp+16], 308
jne .Lt_026A
mov ebx, dword ptr [ebp-100]
and ebx, 4
test ebx, ebx
jne .Lt_026C
cmp dword ptr [ebp-12], 0
je .Lt_026E
mov ebx, dword ptr [ebp-12]
mov edx, dword ptr [ebx+4]
and edx, 8
test edx, edx
je .Lt_0270
mov edx, dword ptr [ebp-12]
cmp dword ptr [edx+60], 0
je .Lt_0272
or dword ptr [ebp-100], 4
mov dword ptr [ebp-56], -1
.Lt_0272:
.Lt_0271:
.Lt_0270:
.Lt_026F:
.Lt_026E:
.Lt_026D:
.Lt_026C:
.Lt_026B:
.Lt_026A:
.Lt_0269:
push offset _Lt_02C5
push offset _Lt_02BF
push dword ptr [ebp-76]
lea edx, [ebp-100]
push edx
call _HMAYBECONVERTEXPRTB2DIMTB
add esp, 16
mov edx, dword ptr [ebp-100]
and edx, 4
je .Lt_0274
push 76
push offset _Lt_02BF
push dword ptr [ebp-76]
call _HCOMPLAINABOUTELLIPSIS
add esp, 12
jmp .Lt_0273
.Lt_0274:
mov edx, dword ptr [ebp-100]
and edx, 3
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
push edx
push dword ptr [ebp-68]
push dword ptr [ebp-72]
push offset _Lt_02C7
push dword ptr [ebp-76]
call _SYMBCHECKARRAYSIZE
add esp, 20
test eax, eax
jne .Lt_0276
push 0
push 0
push 50
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-76], 1
mov dword ptr [_Lt_02C7], 0
mov dword ptr [_Lt_02C7+4], 0
mov dword ptr [_Lt_02C7+8], 0
mov dword ptr [_Lt_02C7+12], 0
.Lt_0276:
.Lt_0275:
.Lt_0273:
jmp .Lt_0267
.Lt_0268:
cmp dword ptr [ebp-76], 0
jne .Lt_0277
mov eax, dword ptr [ebp-100]
and eax, 3
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+228]
mov edx, ebx
sar edx, 31
cmp dword ptr [ebp-68], edx
mov ecx, -1
jg .Lt_02C9
jl .Lt_02CA
cmp dword ptr [ebp-72], ebx
ja .Lt_02C9
.Lt_02CA:
xor ecx, ecx
.Lt_02C9:
and eax, ecx
je .Lt_0279
push 0
push 1
push 0
push 24
call _ERRREPORTWARN
add esp, 16
.Lt_0279:
.Lt_0278:
.Lt_0277:
.Lt_0267:
mov ecx, dword ptr [ebp-100]
and ecx, 8
je .Lt_027B
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call _TYPEHASCTOR
add esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-60]
mov ebx, eax
call _TYPEHASDTOR
add esp, 8
or ebx, eax
je .Lt_027D
push 0
push -1
push 270
call _ERRREPORT
add esp, 12
.Lt_027D:
.Lt_027C:
.Lt_027B:
.Lt_027A:
mov eax, dword ptr [ebp-100]
and eax, 4
je .Lt_027F
mov eax, dword ptr [ebp+16]
cmp eax, 310
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-44]
je .Lt_0281
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0283
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_020F
.Lt_0283:
.Lt_0282:
.Lt_0281:
.Lt_0280:
cmp dword ptr [ebp-12], 0
je .Lt_0285
push dword ptr [ebp-12]
call _HCOMPLAINABOUTCONSTDYNAMICARRAY
add esp, 4
.Lt_0285:
.Lt_0284:
.Lt_027F:
.Lt_027E:
push dword ptr [ebp+16]
push offset _Lt_02C5
lea eax, [ebp-44]
push eax
lea eax, [ebp-76]
push eax
push dword ptr [ebp-100]
push dword ptr [ebp-36]
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
push dword ptr [ebp-84]
push offset _Lt_02BB
push dword ptr [ebp-20]
push dword ptr [ebp-12]
call _HADDVAR
add esp, 52
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-112], 0
cmp dword ptr [ebp-12], 0
je .Lt_0287
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 12
jne .Lt_0288
mov dword ptr [ebp-116], -1
jmp .Lt_02B7
.Lt_0288:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-116], ebx
.Lt_02B7:
mov ebx, dword ptr [ebp-116]
mov dword ptr [ebp-52], ebx
push dword ptr [ebp-12]
call _SYMBHASDEFCTOR
add esp, 4
mov dword ptr [ebp-108], eax
push dword ptr [ebp-12]
call _SYMBHASDTOR
add esp, 4
mov dword ptr [ebp-112], eax
jmp .Lt_0286
.Lt_0287:
mov dword ptr [ebp-52], 0
.Lt_0286:
cmp dword ptr [ebp+20], 0
jne .Lt_028B
mov dword ptr [ebp-88], 0
push 0
call _LEXGETTOKEN
add esp, 4
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_028D
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call _HVARINIT
add esp, 8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+888]
and ebx, 2
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_028F
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 11
test eax, eax
jne .Lt_0291
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-88], eax
push dword ptr [ebp-108]
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call _HVARINITDEFAULT
add esp, 12
mov dword ptr [ebp-28], eax
.Lt_0291:
.Lt_0290:
.Lt_028F:
.Lt_028E:
jmp .Lt_028C
.Lt_028D:
cmp dword ptr [ebp-12], 0
je .Lt_0293
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 262144
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0295
push 0
push 0
push 320
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_020F
.Lt_0295:
.Lt_0294:
push dword ptr [ebp-12]
call _SYMBARRAYHASUNKNOWNBOUNDS
add esp, 4
test eax, eax
je .Lt_0297
push 0
push 0
push 281
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_020F
.Lt_0297:
.Lt_0296:
.Lt_0293:
.Lt_0292:
push dword ptr [ebp-108]
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call _HVARINITDEFAULT
add esp, 12
mov dword ptr [ebp-28], eax
.Lt_028C:
jmp .Lt_028A
.Lt_028B:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-88], 0
.Lt_028A:
cmp dword ptr [ebp-12], 0
je .Lt_0299
cmp dword ptr [ebp+16], 306
je .Lt_029B
mov dword ptr [ebp-116], 0
cmp dword ptr [ebp-52], 0
jne .Lt_029D
mov dword ptr [ebp-120], 0
cmp dword ptr [ebp-28], 0
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+20]
not ecx
and eax, ecx
push eax
push dword ptr [ebp-12]
call _ASTNEWDECL
add esp, 8
mov dword ptr [ebp-116], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+84]
mov dword ptr [ebp-120], ecx
cmp dword ptr [ebp-120], 0
je .Lt_029F
push 0
mov ecx, dword ptr [ebp-120]
cmp dword ptr [ecx+56], 0
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-120]
call _ASTNEWDECL
add esp, 8
push eax
push dword ptr [ebp-116]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-116], eax
.Lt_029F:
.Lt_029E:
mov eax, dword ptr [ebp-100]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-76]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_02A1
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 11
test eax, eax
jne .Lt_02A3
push dword ptr [ebp-116]
call _HFLUSHDECL
add esp, 4
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-120], 0
je .Lt_02A5
push 0
push 64
push 0
mov eax, dword ptr [ebp-120]
push dword ptr [eax+56]
push dword ptr [ebp-120]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
push eax
push dword ptr [ebp-116]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-116], eax
mov eax, dword ptr [ebp-120]
mov dword ptr [eax+56], 0
.Lt_02A5:
.Lt_02A4:
.Lt_02A3:
.Lt_02A2:
.Lt_02A1:
.Lt_02A0:
mov eax, dword ptr [ebp-12]
or dword ptr [eax+12], 8
mov eax, dword ptr [_ENV+888]
and eax, 2
test eax, eax
je .Lt_02A7
push dword ptr [ebp-112]
push dword ptr [ebp-28]
push dword ptr [ebp-116]
push dword ptr [ebp-12]
call _HFLUSHINITIALIZER
add esp, 16
mov dword ptr [ebp-116], eax
jmp .Lt_02A6
.Lt_02A7:
push dword ptr [ebp-112]
push dword ptr [ebp-28]
push dword ptr [ebp-116]
push dword ptr [ebp-12]
call _HFLUSHINITIALIZER
add esp, 16
push eax
call _ASTADDUNSCOPED
add esp, 4
mov dword ptr [ebp-116], 0
cmp dword ptr [ebp-88], 0
je .Lt_02A9
push dword ptr [ebp-12]
call _SYMBGETVARHASDTOR
add esp, 4
test eax, eax
je .Lt_02AB
push 0
push -1
push dword ptr [ebp-12]
call __Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
add esp, 8
push eax
push dword ptr [ebp-116]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-116], eax
.Lt_02AB:
.Lt_02AA:
push 0
push 64
push 0
push dword ptr [ebp-88]
push dword ptr [ebp-12]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
push eax
push dword ptr [ebp-116]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-116], eax
.Lt_02A9:
.Lt_02A8:
.Lt_02A6:
.Lt_029D:
.Lt_029C:
mov eax, dword ptr [ebp-100]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-44]
je .Lt_02AD
cmp dword ptr [ebp-24], 0
jne .Lt_02AF
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-24], eax
.Lt_02AF:
.Lt_02AE:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+12]
and ecx, 2048
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
push ecx
push dword ptr [ebp+12]
push offset _Lt_02BF
push dword ptr [ebp-76]
push dword ptr [ebp-24]
call _RTLARRAYREDIM
add esp, 20
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 2
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 9
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
mov eax, dword ptr [ebp-52]
not eax
and ecx, eax
je .Lt_02B1
push dword ptr [ebp-32]
call _HWRAPINSTATICFLAG
add esp, 4
mov dword ptr [ebp-32], eax
.Lt_02B1:
.Lt_02B0:
push 0
push dword ptr [ebp-32]
push dword ptr [ebp-116]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-116], eax
.Lt_02AD:
.Lt_02AC:
push dword ptr [ebp-116]
call _ASTADD
add esp, 4
.Lt_029B:
.Lt_029A:
.Lt_0299:
.Lt_0298:
cmp dword ptr [ebp+20], 0
je .Lt_02B3
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .Lt_020F
.Lt_02B3:
.Lt_02B2:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_02B5
jmp .Lt_021D
.Lt_02B5:
.Lt_02B4:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_021E:
jmp .Lt_021C
.Lt_021D:
.Lt_020F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02BB,129
.balign 4
	.lcomm	_Lt_02DA,64

.section .data
.balign 4
_Lt_02BF:
.int _Lt_02DA
.int _Lt_02DA
.int 64
.int 4
.int 2
.int 50
.int 8
.int 0
.int 7
.int 2
.int 0
.int 1

.section .bss
.balign 4
	.lcomm	_Lt_02C7,128

.section .data
.balign 4
_Lt_02C5:
.int _Lt_02C7
.int _Lt_02C7
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16

.globl _CARRAYDECL
_CARRAYDECL:
push ebp
mov ebp, esp
push ebx
push esi
.Lt_02FF:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
.Lt_0301:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 8
jl .Lt_0305
push 0
push 0
push 49
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0302
.Lt_0305:
.Lt_0304:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 372
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebx]
test esi, esi
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ecx, esi
and eax, ecx
je .Lt_0307
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0306
.Lt_0307:
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 0
jne .Lt_0308
push 0
push 0
push 94
call _ERRREPORT
add esp, 12
jmp .Lt_0306
.Lt_0308:
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _CARRAYDIMENSION
add esp, 8
.Lt_0306:
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
.Lt_0303:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0301
.Lt_0302:
.Lt_0300:
pop esi
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
_HEXPRTBISCONST:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C4:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-12], eax
jmp .Lt_00C7
.Lt_00CA:
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
cmp dword ptr [eax], 16
je .Lt_00CC
mov dword ptr [ebp-4], 0
jmp .Lt_00C5
jmp .Lt_00CB
.Lt_00CC:
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
cmp dword ptr [ebx+4], 0
jne .Lt_00CD
jmp .Lt_00CB
.Lt_00CD:
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp-8]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
cmp dword ptr [ebx], 16
je .Lt_00CE
mov dword ptr [ebp-4], 0
jmp .Lt_00C5
.Lt_00CE:
.Lt_00CB:
.Lt_00C8:
inc dword ptr [ebp-8]
.Lt_00C7:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ebx
jle .Lt_00CA
.Lt_00C9:
mov dword ptr [ebp-4], -1
.Lt_00C5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKEXTERNVAR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_00CF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
cmp ebx, dword ptr [ebp+16]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+20]
cmp ecx, dword ptr [eax+32]
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
je .Lt_00D2
push 0
push 1
push 0
push dword ptr [ebp+12]
push 20
call _ERRREPORTEX
add esp, 20
jmp .Lt_00D0
.Lt_00D2:
.Lt_00D1:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov esi, dword ptr [ebp+32]
and esi, 262144
test esi, esi
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
cmp ebx, esi
je .Lt_00D4
push 0
push 1
push 0
push dword ptr [ebp+12]
push 20
call _ERRREPORTEX
add esp, 20
jmp .Lt_00D0
.Lt_00D4:
.Lt_00D3:
mov esi, dword ptr [ebp+16]
and esi, 511
mov dword ptr [ebp-8], esi
cmp dword ptr [ebp-8], 18
je .Lt_00D8
.Lt_00D9:
cmp dword ptr [ebp-8], 4
je .Lt_00D8
.Lt_00DA:
cmp dword ptr [ebp-8], 7
jne .Lt_00D7
.Lt_00D8:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+40]
mov ebx, dword ptr [esi+44]
cmp dword ptr [ebp+28], ebx
jne .Lt_0352
cmp dword ptr [ebp+24], eax
je .Lt_00DC
.Lt_0352:
push 0
push 1
push 0
push dword ptr [ebp+12]
push 20
call _ERRREPORTEX
add esp, 20
jmp .Lt_00D0
.Lt_00DC:
.Lt_00DB:
.Lt_00D7:
.Lt_00D5:
mov eax, dword ptr [ebp+32]
and eax, 4
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 4
cmp eax, esi
je .Lt_00DE
push 0
push 1
push 0
push dword ptr [ebp+12]
push 54
call _ERRREPORTEX
add esp, 20
jmp .Lt_00D0
.Lt_00DE:
.Lt_00DD:
mov esi, dword ptr [ebp+36]
cmp esi, -1
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
or esi, ebx
je .Lt_00E0
mov ebx, dword ptr [ebp+36]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+60]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
cmp ebx, eax
je .Lt_00E2
push 0
push 1
push 0
push dword ptr [ebp+12]
push 36
call _ERRREPORTEX
add esp, 20
jmp .Lt_00D0
.Lt_00E2:
.Lt_00E1:
mov dword ptr [ebp-4], -1
jmp .Lt_00D0
.Lt_00E0:
.Lt_00DF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebp+36], ebx
je .Lt_00E4
push 0
push 1
push 0
push dword ptr [ebp+12]
push 36
call _ERRREPORTEX
add esp, 20
jmp .Lt_00D0
.Lt_00E4:
.Lt_00E3:
mov ebx, dword ptr [ebp+32]
and ebx, 4
test ebx, ebx
jne .Lt_00E6
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+36]
dec ebx
mov dword ptr [ebp-12], ebx
jmp .Lt_00E8
.Lt_00EB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
sal eax, 4
mov esi, dword ptr [ebx+64]
add esi, eax
mov eax, dword ptr [ebp-8]
sal eax, 4
mov ebx, dword ptr [ebp+40]
add eax, dword ptr [ebx]
mov ecx, dword ptr [esi]
mov ebx, dword ptr [esi+4]
cmp ebx, dword ptr [eax+4]
mov esi, -1
jne .Lt_0357
cmp ecx, dword ptr [eax]
jne .Lt_0357
.Lt_0358:
xor esi, esi
.Lt_0357:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov ebx, dword ptr [eax+64]
add ebx, ecx
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov eax, dword ptr [ebp+40]
add ecx, dword ptr [eax]
mov edi, dword ptr [ebx+8]
mov eax, dword ptr [ebx+12]
cmp eax, dword ptr [ecx+12]
mov ebx, -1
jne .Lt_0359
cmp edi, dword ptr [ecx+8]
jne .Lt_0359
.Lt_035A:
xor ebx, ebx
.Lt_0359:
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov edi, dword ptr [ebp+40]
add ecx, dword ptr [edi]
cmp dword ptr [ecx+12], 2147483648
mov edi, -1
jne .Lt_035B
cmp dword ptr [ecx+8], 0
jne .Lt_035B
.Lt_035C:
xor edi, edi
.Lt_035B:
and ebx, edi
or esi, ebx
je .Lt_00ED
push 0
push 1
push 0
push dword ptr [ebp+12]
push 37
call _ERRREPORTEX
add esp, 20
.Lt_00ED:
.Lt_00EC:
.Lt_00E9:
inc dword ptr [ebp-8]
.Lt_00E8:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ebx
jle .Lt_00EB
.Lt_00EA:
.Lt_00E6:
.Lt_00E5:
mov dword ptr [ebp-4], -1
.Lt_00D0:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKEXTERNVARANDRECOVER:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.Lt_00EE:
push dword ptr [ebp+40]
mov eax, dword ptr [ebp+32]
push dword ptr [eax]
push dword ptr [ebp+28]
mov eax, dword ptr [ebp+24]
push dword ptr [eax+4]
push dword ptr [eax]
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKEXTERNVAR
add esp, 36
test eax, eax
jne .Lt_00F1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+24]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
mov dword ptr [ebx], esi
mov dword ptr [ebx+4], ecx
mov esi, dword ptr [ebp+28]
and esi, -262149
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 262148
or esi, ebx
mov dword ptr [ebp+28], esi
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+32]
mov ecx, dword ptr [esi+60]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+28]
and ecx, 4
je .Lt_00F3
mov ecx, dword ptr [ebp+36]
mov dword ptr [ecx], 0
jmp .Lt_00F2
.Lt_00F3:
mov ecx, dword ptr [ebp+32]
cmp dword ptr [ecx], 0
jle .Lt_00F4
mov ecx, dword ptr [ebp+36]
mov dword ptr [ecx], -1
mov dword ptr [ebp-4], 0
mov ecx, dword ptr [ebp+32]
mov ebx, dword ptr [ecx]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_00F6
.Lt_00F9:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
sal ecx, 4
mov esi, dword ptr [ebx+64]
add esi, ecx
mov ecx, dword ptr [ebp-4]
sal ecx, 4
mov ebx, dword ptr [ebp+40]
add ecx, dword ptr [ebx]
mov eax, dword ptr [esi]
mov ebx, dword ptr [esi+4]
mov dword ptr [ecx], eax
mov dword ptr [ecx+4], ebx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov eax, dword ptr [ebp+40]
add ebx, dword ptr [eax]
mov esi, dword ptr [ecx+8]
mov eax, dword ptr [ecx+12]
mov dword ptr [ebx+8], esi
mov dword ptr [ebx+12], eax
.Lt_00F7:
inc dword ptr [ebp-4]
.Lt_00F6:
mov esi, dword ptr [ebp-8]
cmp dword ptr [ebp-4], esi
jle .Lt_00F9
.Lt_00F8:
.Lt_00F4:
.Lt_00F2:
.Lt_00F1:
.Lt_00F0:
.Lt_00EF:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HADDVAR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00FA:
cmp dword ptr [ebp+8], 0
je .Lt_00FD
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+40]
and eax, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
cmp dword ptr [_PARSER+96], 0
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00FF
push dword ptr [ebp+52]
push dword ptr [ebp+48]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HCHECKEXTERNVARANDRECOVER
add esp, 36
mov eax, dword ptr [ebp+8]
and dword ptr [eax+4], -17
mov eax, dword ptr [ebp+8]
or dword ptr [eax+4], 33
mov eax, dword ptr [ebp+44]
cmp dword ptr [eax], 0
je .Lt_0101
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
and dword ptr [ebx+4], -17
mov ebx, dword ptr [ebp-12]
or dword ptr [ebx+4], 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
jne .Lt_0103
mov eax, dword ptr [ebp-12]
and dword ptr [eax+4], -33
jmp .Lt_0102
.Lt_0103:
mov eax, dword ptr [ebp-12]
or dword ptr [eax+4], 32
.Lt_0102:
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _ASTBUILDARRAYDESCINITREE
add esp, 12
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+56], eax
.Lt_0101:
.Lt_0100:
mov dword ptr [ebp-8], -1
jmp .Lt_00FE
.Lt_00FF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+40]
and eax, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0104
push dword ptr [ebp+52]
push dword ptr [ebp+48]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HCHECKEXTERNVARANDRECOVER
add esp, 36
mov dword ptr [ebp-8], -1
jmp .Lt_00FE
.Lt_0104:
mov eax, dword ptr [ebp+40]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+48]
and eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 16388
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
mov ecx, dword ptr [ebp+56]
cmp ecx, 310
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 8
test esi, esi
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ecx, esi
and eax, ecx
je .Lt_0105
mov dword ptr [ebp-8], -1
jmp .Lt_00FE
.Lt_0105:
mov dword ptr [ebp-8], 0
.Lt_00FE:
jmp .Lt_00FC
.Lt_00FD:
mov dword ptr [ebp-8], 0
.Lt_00FC:
cmp dword ptr [ebp-8], 0
je .Lt_0107
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 4
test eax, eax
je .Lt_0109
mov eax, dword ptr [ebp+44]
mov ecx, dword ptr [eax]
cmp ecx, -1
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+60]
cmp esi, -1
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
je .Lt_010B
mov esi, dword ptr [ebp+44]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [esi]
mov dword ptr [ecx+60], eax
.Lt_010B:
.Lt_010A:
.Lt_0109:
.Lt_0108:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 16388
test ecx, ecx
je .Lt_010D
mov ecx, dword ptr [ebp+44]
push dword ptr [ecx]
push dword ptr [ebp+8]
call _SYMBCHECKDYNAMICARRAYDIMENSIONS
add esp, 8
.Lt_010D:
.Lt_010C:
jmp .Lt_0106
.Lt_0107:
cmp dword ptr [ebp+12], 0
je .Lt_010F
push 0
push 1
push 0
push dword ptr [ebp+16]
push 4
call _ERRREPORTEX
add esp, 20
.Lt_010F:
.Lt_010E:
cmp dword ptr [ebp+36], 0
je .Lt_0111
or dword ptr [ebp+40], 1048576
.Lt_0111:
.Lt_0110:
mov ecx, dword ptr [_ENV+888]
and ecx, 2
test ecx, ecx
je .Lt_0112
mov dword ptr [ebp-12], 0
jmp .Lt_035D
.Lt_0112:
mov dword ptr [ebp-12], 2
.Lt_035D:
push dword ptr [ebp-12]
push dword ptr [ebp+40]
push dword ptr [ebp+52]
mov ecx, dword ptr [ebp+44]
push dword ptr [ecx]
mov ecx, dword ptr [ebp+32]
push dword ptr [ecx+4]
push dword ptr [ecx]
mov ecx, dword ptr [ebp+28]
push dword ptr [ecx]
mov ecx, dword ptr [ebp+24]
push dword ptr [ecx]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp+8], eax
.Lt_0106:
cmp dword ptr [ebp+8], 0
jne .Lt_0115
push 0
push 1
push 0
push dword ptr [ebp+16]
push 4
call _ERRREPORTEX
add esp, 20
.Lt_0115:
.Lt_0114:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00FB:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKFORIDTOKEN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0116:
mov dword ptr [ebp-4], 0
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0119
.Lt_011B:
mov eax, dword ptr [_ENV+888]
and eax, 524288
test eax, eax
je .Lt_011D
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .Lt_011F
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+1048], 0
jle .Lt_0121
mov dword ptr [ebp-4], 90
.Lt_0121:
.Lt_0120:
.Lt_011F:
.Lt_011E:
.Lt_011D:
.Lt_011C:
jmp .Lt_0118
.Lt_0122:
cmp dword ptr [_ENV+136], 3
je .Lt_0124
cmp dword ptr [ebp+8], 0
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [_PARSER+96], 0
seta al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0126
mov dword ptr [ebp-4], 4
.Lt_0126:
.Lt_0125:
.Lt_0124:
.Lt_0123:
jmp .Lt_0118
.Lt_0127:
cmp dword ptr [_ENV+136], 3
je .Lt_0129
mov dword ptr [ebp-4], 4
jmp .Lt_0128
.Lt_0129:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+8], -2147483648
jne .Lt_012B
mov dword ptr [ebp-4], 4
.Lt_012B:
.Lt_012A:
.Lt_0128:
jmp .Lt_0118
.Lt_012C:
mov dword ptr [ebp-4], 14
jmp .Lt_0118
.Lt_0119:
cmp dword ptr [ebp-8], 5
ja .Lt_012C
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.LT_012D+ebx*4]
_.LT_012D:
.int .Lt_011B
.int .Lt_0127
.int .Lt_0122
.int .Lt_012C
.int .Lt_012C
.int .Lt_0127
.Lt_0118:
.Lt_0117:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_012E:
push dword ptr [ebp+8]
call _HCHECKFORIDTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0131
push 0
push 0
call _LEXGETTEXT
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
push 4096
call _LEXCHECKTOKEN
add esp, 4
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+8]
mov dword ptr [eax], ecx
cmp dword ptr [ebp+8], 0
jne .Lt_0133
mov ecx, dword ptr [_LEX+213248]
mov eax, dword ptr [ecx+4260]
mov ecx, dword ptr [eax+1044]
mov dword ptr [ebp-4], ecx
jmp .Lt_0132
.Lt_0133:
push dword ptr [ebp+20]
push 0
call _LEXGETTEXT
push eax
push dword ptr [ebp+8]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0132:
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0130
.Lt_0131:
push 0
push 0
push dword ptr [ebp-8]
call _ERRREPORT
add esp, 12
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -2147483648
mov dword ptr [ebp-4], 0
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0130:
.Lt_012F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOOKUPVAR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0134:
cmp dword ptr [ebp+8], 0
jne .Lt_0137
jmp .Lt_0135
.Lt_0137:
.Lt_0136:
cmp dword ptr [ebp+16], 0
je .Lt_0139
mov eax, dword ptr [_ENV+888]
and eax, 4194304
test eax, eax
je .Lt_013B
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDVARBYDEFTYPE
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_013A
.Lt_013B:
push 1
push dword ptr [ebp+8]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_013D
push 12
push dword ptr [ebp+8]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_013D:
.Lt_013C:
.Lt_013A:
jmp .Lt_0138
.Lt_0139:
cmp dword ptr [ebp+20], 0
je .Lt_013E
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDVARBYSUFFIX
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_0138
.Lt_013E:
push dword ptr [ebp+12]
push 1
push dword ptr [ebp+8]
call _SYMBFINDBYCLASSANDTYPE
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0140
push dword ptr [ebp+12]
push 12
push dword ptr [ebp+8]
call _SYMBFINDBYCLASSANDTYPE
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_0140:
.Lt_013F:
.Lt_0138:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0135:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HLOOKUPVARANDCHECKPARENT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0141:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HLOOKUPVAR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .Lt_0144
cmp dword ptr [ebp-8], 0
je .Lt_0146
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+140]
mov eax, dword ptr [ecx]
cmp eax, dword ptr [ebp+8]
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+28]
not ecx
and ebx, ecx
je .Lt_0148
push 0
push 0
push 158
call _ERRREPORT
add esp, 12
.Lt_0148:
.Lt_0147:
jmp .Lt_0145
.Lt_0146:
push 0
push -1
push 131
call _ERRREPORT
add esp, 12
.Lt_0145:
jmp .Lt_0143
.Lt_0144:
cmp dword ptr [ebp-8], 0
je .Lt_014A
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+140]
mov ecx, dword ptr [ebx]
cmp ecx, dword ptr [_SYMB+98528]
setne bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+28]
not ecx
and ebx, ecx
je .Lt_014C
mov dword ptr [ebp-8], 0
.Lt_014C:
.Lt_014B:
.Lt_014A:
.Lt_0149:
.Lt_0143:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_0142:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMAKEARRAYDIMTB:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_014D:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_0150
.Lt_0153:
push 8
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-4]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
push dword ptr [ebx]
call _ASTCONSTFLUSHTOINT
add esp, 8
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov ecx, dword ptr [ebp+16]
add ebx, dword ptr [ecx]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
mov eax, dword ptr [ebp+12]
add eax, 36
mov edx, dword ptr [eax]
imul edx, dword ptr [ebp-4]
sal edx, 2
mov eax, dword ptr [ebp+12]
add edx, dword ptr [eax]
mov eax, dword ptr [edx+4]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0155
mov eax, dword ptr [ebp-4]
sal eax, 4
mov edx, dword ptr [ebp+16]
add eax, dword ptr [edx]
mov dword ptr [eax+8], 0
mov dword ptr [eax+12], 2147483648
jmp .Lt_0154
.Lt_0155:
push 8
push dword ptr [ebp-12]
call _ASTCONSTFLUSHTOINT
add esp, 8
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov ecx, dword ptr [ebp+16]
add ebx, dword ptr [ecx]
mov dword ptr [ebx+8], eax
mov dword ptr [ebx+12], edx
mov eax, dword ptr [ebp-4]
sal eax, 4
mov edx, dword ptr [ebp+16]
add eax, dword ptr [edx]
mov edx, dword ptr [ebp-4]
sal edx, 4
mov ebx, dword ptr [ebp+16]
add edx, dword ptr [ebx]
mov ecx, dword ptr [eax+8]
mov ebx, dword ptr [eax+12]
cmp ebx, dword ptr [edx+4]
mov eax, -1
jl .Lt_036E
jg .Lt_036F
cmp ecx, dword ptr [edx]
jb .Lt_036E
.Lt_036F:
xor eax, eax
.Lt_036E:
mov edx, dword ptr [ebp-4]
sal edx, 4
mov ecx, dword ptr [ebp+16]
add edx, dword ptr [ecx]
cmp dword ptr [edx+12], 2147483648
mov ecx, -1
jne .Lt_0371
cmp dword ptr [edx+8], 0
je .Lt_0370
.Lt_0371:
xor ecx, ecx
.Lt_0370:
or eax, ecx
je .Lt_0157
push 0
push 0
push 182
call _ERRREPORT
add esp, 12
mov ecx, dword ptr [ebp-4]
sal ecx, 4
mov eax, dword ptr [ebp+16]
add ecx, dword ptr [eax]
mov dword ptr [ecx], 0
mov dword ptr [ecx+4], 0
mov ecx, dword ptr [ebp-4]
sal ecx, 4
mov eax, dword ptr [ebp+16]
add ecx, dword ptr [eax]
mov dword ptr [ecx+8], 0
mov dword ptr [ecx+12], 0
.Lt_0157:
.Lt_0156:
.Lt_0154:
.Lt_0151:
inc dword ptr [ebp-4]
.Lt_0150:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .Lt_0153
.Lt_0152:
.Lt_014E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HVARINITDEFAULT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0167:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_016A
jmp .Lt_0168
.Lt_016A:
.Lt_0169:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
je .Lt_016C
jmp .Lt_0168
.Lt_016C:
.Lt_016B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 512
test eax, eax
je .Lt_016E
push 0
push 0
push 237
call _ERRREPORT
add esp, 12
jmp .Lt_0168
.Lt_016E:
.Lt_016D:
cmp dword ptr [ebp+16], 0
je .Lt_0170
mov eax, dword ptr [ebp+12]
not eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 12
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_0172
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+32]
call _SYMBGETCOMPDEFCTOR
add esp, 4
push eax
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_0174
push 0
push 0
push 204
call _ERRREPORT
add esp, 12
.Lt_0174:
.Lt_0173:
push dword ptr [ebp+8]
call _ASTBUILDTYPEINICTORLIST
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0172:
.Lt_0171:
jmp .Lt_016F
.Lt_0170:
push dword ptr [ebp+8]
call _SYMBHASCTOR
add esp, 4
test eax, eax
je .Lt_0176
push 0
push 0
push 183
call _ERRREPORT
add esp, 12
.Lt_0176:
.Lt_0175:
.Lt_016F:
.Lt_0168:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKVARSUSEDINGLOBALINIT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0177:
mov dword ptr [ebp-4], 12288
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1
test ebx, ebx
jne .Lt_017A
or dword ptr [ebp-4], 2
.Lt_017A:
.Lt_0179:
push dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call _ASTTYPEINIUSESLOCALS
add esp, 8
test eax, eax
je .Lt_017C
push 0
push 0
push 272
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
.Lt_017C:
.Lt_017B:
.Lt_0178:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HVALIDATEGLOBALVARINIT:
push ebp
mov ebp, esp
push ebx
.Lt_017D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 3
test ebx, ebx
jne .Lt_0180
jmp .Lt_017E
.Lt_0180:
.Lt_017F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 17
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 262144
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_0182
push 0
push -1
push 87
call _ERRREPORT
add esp, 12
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
call _ASTDELTREE
add esp, 4
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 0
jmp .Lt_017E
.Lt_0182:
.Lt_0181:
push dword ptr [ebp+8]
call _SYMBHASCTOR
add esp, 4
not eax
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0184
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call _ASTTYPEINIISCONST
add esp, 4
test eax, eax
jne .Lt_0186
push 0
push 0
push 11
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
jmp .Lt_017E
.Lt_0186:
.Lt_0185:
.Lt_0184:
.Lt_0183:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKVARSUSEDINGLOBALINIT
add esp, 8
.Lt_017E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBUILDFAKEBYREFINITEXPR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0187:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
push 0
push 8
push dword ptr [ebp-8]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
and eax, 31
mov ebx, dword ptr [ebp+8]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
or eax, ebx
push eax
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call _ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0188:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HRESOLVEREFTOREFINITIALIZER:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_0189:
cmp dword ptr [ebp+12], 0
je .Lt_018B
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 20
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_0376
.Lt_018B:
mov dword ptr [ebp-16], 0
.Lt_0376:
cmp dword ptr [ebp-16], 0
je .Lt_018E
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 0
je .Lt_018F
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 17
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_0377
.Lt_018F:
mov dword ptr [ebp-20], 0
.Lt_0377:
cmp dword ptr [ebp-20], 0
je .Lt_0192
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax+12], 0
je .Lt_0193
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_0378
.Lt_0193:
mov dword ptr [ebp-24], 0
.Lt_0378:
cmp dword ptr [ebp-24], 0
je .Lt_0195
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .Lt_0379
.Lt_0195:
mov dword ptr [ebp-28], 0
.Lt_0379:
cmp dword ptr [ebp-28], 0
je .Lt_0198
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0199
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 36
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-32], ebx
jmp .Lt_037A
.Lt_0199:
mov dword ptr [ebp-32], 0
.Lt_037A:
cmp dword ptr [ebp-32], 0
je .Lt_019C
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+56], 0
je .Lt_019D
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 38
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .Lt_037B
.Lt_019D:
mov dword ptr [ebp-36], 0
.Lt_037B:
cmp dword ptr [ebp-36], 0
je .Lt_01A0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_01A2
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 23
jne .Lt_01A5
.Lt_01A6:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_01A7
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 17
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .Lt_037C
.Lt_01A7:
mov dword ptr [ebp-44], 0
.Lt_037C:
cmp dword ptr [ebp-44], 0
je .Lt_01AA
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+4], ebx
jne .Lt_01AC
push dword ptr [ebp+12]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-12]
call _ASTCLONETREE
add esp, 4
mov dword ptr [ebp+12], eax
.Lt_01AC:
.Lt_01AB:
.Lt_01AA:
.Lt_01A9:
.Lt_01A5:
.Lt_01A3:
.Lt_01A2:
.Lt_01A1:
.Lt_01A0:
.Lt_019F:
.Lt_019C:
.Lt_019B:
.Lt_0198:
.Lt_0197:
.Lt_0192:
.Lt_0191:
.Lt_018E:
.Lt_018D:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_018A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKANDBUILDBYREFINITIALIZER:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01AD:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _ASTCHECKBYREFASSIGN
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01B0
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _HBUILDFAKEBYREFINITEXPR
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .Lt_01AF
.Lt_01B0:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _HRESOLVEREFTOREFINITIALIZER
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.Lt_01AF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 32505856
or ebx, ecx
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [ebp-16], ecx
push 0
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-20], eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp-20]
call _ASTTYPEINIADDASSIGN
add esp, 20
push -1
push dword ptr [ebp-20]
call _ASTTYPEINIEND
add esp, 8
lea eax, [ebp-20]
push eax
push dword ptr [ebp+8]
call _HVALIDATEGLOBALVARINIT
add esp, 8
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_01AE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HVARINIT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B1:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_01B4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01B3
.Lt_01B4:
mov dword ptr [ebp-8], 0
.Lt_01B3:
mov ebx, dword ptr [ebp-8]
and ebx, 24
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp+12]
je .Lt_01B6
push 0
push 0
push 135
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL
add esp, 16
jmp .Lt_01B2
.Lt_01B6:
.Lt_01B5:
mov ebx, dword ptr [_ENV+888]
and ebx, 128
test ebx, ebx
jne .Lt_01B8
push 0
push 146
push 128
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL
add esp, 16
jmp .Lt_01B2
.Lt_01B8:
.Lt_01B7:
push 0
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+8], 0
jne .Lt_01BA
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
jmp .Lt_01B2
.Lt_01BA:
.Lt_01B9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
je .Lt_01BC
push 4
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01BE
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_01B2
.Lt_01BE:
.Lt_01BD:
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call _HCHECKANDBUILDBYREFINITIALIZER
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_01B2
.Lt_01BC:
.Lt_01BB:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 372
jne .Lt_01C0
push dword ptr [ebp+8]
call _SYMBARRAYHASUNKNOWNBOUNDS
add esp, 4
test eax, eax
je .Lt_01C2
push 0
push 0
push 280
call _ERRREPORT
add esp, 12
jmp .Lt_01B2
.Lt_01C2:
.Lt_01C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .Lt_01C4
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
jmp .Lt_01C3
.Lt_01C4:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 2048
.Lt_01C3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 512
test eax, eax
je .Lt_01C6
push 0
push 0
push 237
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_01B2
.Lt_01C6:
.Lt_01C5:
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_01B2
.Lt_01C0:
.Lt_01BF:
push 0
push -2147483648
push 1
push dword ptr [ebp+8]
call _CINITIALIZER
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_01C8
mov dword ptr [ebp-4], 0
jmp .Lt_01B2
.Lt_01C8:
.Lt_01C7:
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _HVALIDATEGLOBALVARINIT
add esp, 8
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_01B2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHDECL:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_01C9:
mov eax, dword ptr [_ENV+888]
and eax, 2
test eax, eax
je .Lt_01CC
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_01CB
.Lt_01CC:
push dword ptr [ebp+8]
call _ASTADDUNSCOPED
add esp, 4
mov dword ptr [ebp-4], 0
.Lt_01CB:
.Lt_01CA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HWRAPINSTATICFLAG:
push ebp
mov ebp, esp
sub esp, 68
mov dword ptr [ebp-4], 0
.Lt_01CD:
lea eax, [ebp-24]
mov dword ptr [ebp-60], eax
lea eax, [ebp-24]
mov dword ptr [ebp-56], eax
mov dword ptr [ebp-52], 16
mov dword ptr [ebp-48], 16
mov dword ptr [ebp-44], 1
mov dword ptr [ebp-40], 49
mov dword ptr [ebp-36], 1
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 2
lea eax, [ebp-60]
push eax
push 0
push 0
push 0
push 0
push 8
push 0
call _SYMBUNIQUELABEL
push eax
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp-64]
or dword ptr [eax+12], 16
push -1
push dword ptr [ebp-64]
call _ASTNEWDECL
add esp, 8
mov dword ptr [ebp-8], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-68], eax
push 0
push -1
push 0
push dword ptr [ebp-68]
push 1
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-64]
call _ASTNEWVAR
add esp, 20
push eax
push 45
call _ASTNEWBOP
add esp, 20
push eax
call _ASTBUILDBRANCH
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 0
push 1
push dword ptr [ebp-64]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLll
add esp, 12
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push 0
call _ASTDTORLISTFLUSH
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push -1
push dword ptr [ebp-68]
call _ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_01CE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLSTATICCTOR:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_01D0:
push dword ptr [ebp+12]
call _HFLUSHDECL
add esp, 4
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+16], 0
je .Lt_01D3
push 64
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_01D3:
.Lt_01D2:
cmp dword ptr [ebp+20], 0
je .Lt_01D5
push dword ptr [ebp+8]
call _ASTPROCADDSTATICINSTANCE
add esp, 4
mov dword ptr [ebp-16], eax
push 0
push dword ptr [ebp-16]
call _ASTBUILDPROCADDROF
add esp, 4
push eax
call _RTLATEXIT
add esp, 4
push eax
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
.Lt_01D5:
.Lt_01D4:
cmp dword ptr [ebp-12], 0
je .Lt_01D7
push 0
push dword ptr [ebp-12]
call _HWRAPINSTATICFLAG
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_01D7:
.Lt_01D6:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_01D1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLGLOBALCTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_01D8:
push dword ptr [ebp+12]
call _HFLUSHDECL
add esp, 4
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+16], 0
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp+20]
je .Lt_01DB
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _ASTPROCADDGLOBALINSTANCE
add esp, 12
.Lt_01DB:
.Lt_01DA:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_01D9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHINITIALIZER:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01DC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp+20]
je .Lt_01DF
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call _SYMBGETCOMPDTOR
add esp, 4
push eax
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_01E1
push 0
push 0
push 206
call _ERRREPORT
add esp, 12
.Lt_01E1:
.Lt_01E0:
.Lt_01DF:
.Lt_01DE:
cmp dword ptr [ebp+16], 0
jne .Lt_01E3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 11
test ebx, ebx
je .Lt_01E5
cmp dword ptr [ebp+20], 0
je .Lt_01E7
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
je .Lt_01E9
push -1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCALLSTATICCTOR
add esp, 16
mov dword ptr [ebp+12], eax
jmp .Lt_01E8
.Lt_01E9:
push -1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCALLGLOBALCTOR
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_01E8:
.Lt_01E7:
.Lt_01E6:
.Lt_01E5:
.Lt_01E4:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_01DD
.Lt_01E3:
.Lt_01E2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 11
test ebx, ebx
jne .Lt_01EB
push dword ptr [ebp+12]
call _HFLUSHDECL
add esp, 4
mov dword ptr [ebp+12], eax
push 0
push 64
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
push eax
push dword ptr [ebp+12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_01DD
.Lt_01EB:
.Lt_01EA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp+8]
call _SYMBHASCTOR
add esp, 4
not eax
or ebx, eax
je .Lt_01ED
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+20]
not ebx
or eax, ebx
je .Lt_01EF
push dword ptr [ebp+12]
call _HFLUSHDECL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_01DD
.Lt_01EF:
.Lt_01EE:
mov dword ptr [ebp+16], 0
.Lt_01ED:
.Lt_01EC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .Lt_01F1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCALLSTATICCTOR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01F0
.Lt_01F1:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCALLGLOBALCTOR
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_01F0:
.Lt_01DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HIDXINPARENSONLYEXPR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_01F2:
mov eax, dword ptr [_PARSER+148]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
or dword ptr [_PARSER+148], 4096
jmp .Lt_01F4
.Lt_01F5:
and dword ptr [_PARSER+148], -4097
.Lt_01F4:
push -1
call _CEXPRESSIONWITHNIDXARRAY
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-8], 0
je .Lt_01F7
or dword ptr [_PARSER+148], 4096
jmp .Lt_01F6
.Lt_01F7:
and dword ptr [_PARSER+148], -4097
.Lt_01F6:
.Lt_01F3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKDYNAMICARRAYEXPR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01F8:
cmp dword ptr [ebp+8], 0
je .Lt_01FA
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 25
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_0391
.Lt_01FA:
mov dword ptr [ebp-8], 0
.Lt_0391:
cmp dword ptr [ebp-8], 0
je .Lt_01FD
push dword ptr [ebp+8]
call _ASTREMOVENIDXARRAY
add esp, 4
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 17
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 19
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_01FF
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
mov ecx, dword ptr [ebx]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax]
cmp ebx, 12
sete bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .Lt_0201
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ecx+4]
and ebx, 16388
test ebx, ebx
je .Lt_0203
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_01F9
.Lt_0203:
.Lt_0202:
.Lt_0201:
.Lt_0200:
.Lt_01FF:
.Lt_01FE:
.Lt_01FD:
.Lt_01FC:
push 0
push -1
push 54
call _ERRREPORT
add esp, 12
push dword ptr [ebp+8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
.Lt_01F9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HERRORDEFTYPENOTALLOWED:
push ebp
mov ebp, esp
push ebx
.Lt_0204:
push 0
push 147
push 4194304
call _ERRREPORTNOTALLOWED
add esp, 12
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBCALCLEN
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.Lt_0205:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMAYBEBUILDFIELDACCESS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0206:
cmp dword ptr [ebp+12], 0
jne .Lt_0209
jmp .Lt_0207
.Lt_0209:
.Lt_0208:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
jne .Lt_020B
jmp .Lt_0207
.Lt_020B:
.Lt_020A:
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_020D
jmp .Lt_0207
.Lt_020D:
.Lt_020C:
push 0
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+60]
call _ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0207:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMATCHELLIPSIS:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_02DB:
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_02DE
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .Lt_02E0
push 0
push 2
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .Lt_02E2
push 0
push 3
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 44
je .Lt_02E6
.Lt_02E7:
cmp dword ptr [ebp-8], 41
je .Lt_02E6
.Lt_02E8:
cmp dword ptr [ebp-8], 284
jne .Lt_02E5
.Lt_02E6:
mov dword ptr [ebp-4], -1
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_02E5:
.Lt_02E3:
.Lt_02E2:
.Lt_02E1:
.Lt_02E0:
.Lt_02DF:
.Lt_02DE:
.Lt_02DD:
.Lt_02DC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HINTEXPR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_02E9:
call _CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_02EC
push 0
push 0
push dword ptr [ebp-8]
push 0
push 8
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_02EE
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .Lt_02ED
.Lt_02EE:
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-8], 0
.Lt_02ED:
jmp .Lt_02EB
.Lt_02EC:
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 284
je .Lt_02F0
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
.Lt_02F0:
.Lt_02EF:
.Lt_02EB:
cmp dword ptr [ebp-8], 0
jne .Lt_02F2
cmp dword ptr [ebp+8], 0
je .Lt_02F4
push dword ptr [ebp+8]
call _ASTCLONETREE
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_02F3
.Lt_02F4:
push 0
push 8
mov ebx, dword ptr [_ENV+924]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_02F3:
.Lt_02F2:
.Lt_02F1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_02EA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_CARRAYDIMENSION:
push ebp
mov ebp, esp
push ebx
push esi
.Lt_02F5:
call _HMATCHELLIPSIS
test eax, eax
je .Lt_02F8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov ecx, dword ptr [ebx]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
mov dword ptr [ecx], 0
jmp .Lt_02F7
.Lt_02F8:
push 0
call _HINTEXPR
add esp, 4
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov esi, dword ptr [ebx]
imul esi, dword ptr [ecx]
sal esi, 2
mov ecx, dword ptr [ebp+12]
add esi, dword ptr [ecx]
mov dword ptr [esi], eax
.Lt_02F7:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 284
jne .Lt_02FA
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
add esi, 36
mov ecx, dword ptr [esi]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
cmp dword ptr [ecx], 0
jne .Lt_02FC
push 0
push 0
push 282
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
add esi, 36
mov ebx, dword ptr [esi]
imul ebx, dword ptr [ecx]
sal ebx, 2
mov ecx, dword ptr [ebp+12]
add ebx, dword ptr [ecx]
mov dword ptr [ebx], eax
.Lt_02FC:
.Lt_02FB:
call _HMATCHELLIPSIS
test eax, eax
je .Lt_02FE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov ecx, dword ptr [ebx]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
mov dword ptr [ecx+4], 0
jmp .Lt_02FD
.Lt_02FE:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ecx]
sal ebx, 2
mov ecx, dword ptr [ebp+12]
add ebx, dword ptr [ecx]
push dword ptr [ebx]
call _HINTEXPR
add esp, 4
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
add ecx, 36
mov esi, dword ptr [ecx]
imul esi, dword ptr [ebx]
sal esi, 2
mov ebx, dword ptr [ebp+12]
add esi, dword ptr [ebx]
mov dword ptr [esi+4], eax
.Lt_02FD:
jmp .Lt_02F9
.Lt_02FA:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
add esi, 36
mov ebx, dword ptr [esi]
imul ebx, dword ptr [eax]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
add esi, 36
mov ecx, dword ptr [esi]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
mov eax, dword ptr [ebx]
mov dword ptr [ecx+4], eax
push 0
push 8
mov ecx, dword ptr [_ENV+924]
mov eax, ecx
sar eax, 31
push eax
push ecx
call _ASTNEWCONSTI
add esp, 16
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov esi, dword ptr [ebx]
imul esi, dword ptr [ecx]
sal esi, 2
mov ecx, dword ptr [ebp+12]
add esi, dword ptr [ecx]
mov dword ptr [esi], eax
.Lt_02F9:
.Lt_02F6:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBUILDAUTOVARINITIALIZER:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_030C:
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call _ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-8], eax
push dword ptr [ebp+8]
call _SYMBHASCTOR
add esp, 4
test eax, eax
jne .Lt_030F
push 0
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN
add esp, 20
jmp .Lt_030E
.Lt_030F:
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
call _CBYDESCARRAYARGPARENS
add esp, 4
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
je .Lt_0311
cmp dword ptr [ebp-12], 0
je .Lt_0313
push 0
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTTYPEINIADDCTORCALL
add esp, 20
jmp .Lt_0312
.Lt_0313:
push 0
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN
add esp, 20
.Lt_0312:
.Lt_0311:
.Lt_0310:
.Lt_030E:
push -1
push dword ptr [ebp-8]
call _ASTTYPEINIEND
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_030D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKANDBUILDAUTOVARINITIALIZER:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0314:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBUILDAUTOVARINITIALIZER
add esp, 8
mov dword ptr [ebp-8], eax
lea eax, [ebp-8]
push eax
push dword ptr [ebp+8]
call _HVALIDATEGLOBALVARINIT
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0315:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_CAUTOVARDECL:
push ebp
mov ebp, esp
sub esp, 64
push ebx
.Lt_0316:
mov eax, dword ptr [_ENV+888]
and eax, 2048
test eax, eax
jne .Lt_031A
push 0
push 150
push 2048
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0317
.Lt_031A:
.Lt_0319:
push 9
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_031C
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0317
.Lt_031C:
.Lt_031B:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 312
jne .Lt_031E
call _HCHECKSCOPE
test eax, eax
jne .Lt_0320
or dword ptr [ebp+8], 2
jmp .Lt_031F
.Lt_0320:
or dword ptr [ebp+8], 3
.Lt_031F:
push 2048
call _LEXSKIPTOKEN
add esp, 4
.Lt_031E:
.Lt_031D:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 64
test ebx, ebx
je .Lt_0322
or dword ptr [ebp+8], 2
.Lt_0322:
.Lt_0321:
lea ebx, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], ebx
je .Lt_0324
mov ebx, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], ebx
jne .Lt_0326
or dword ptr [ebp+8], 3
.Lt_0326:
.Lt_0325:
.Lt_0324:
.Lt_0323:
.Lt_0327:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-12], ebx
push 2048
push 320
call _HMATCH
add esp, 8
test eax, eax
je .Lt_032B
or dword ptr [ebp-12], 262144
.Lt_032B:
.Lt_032A:
push 118
call _CPARENTID
add esp, 4
mov dword ptr [ebp-4], eax
push 0
lea eax, [ebp-16]
push eax
push offset _Lt_039B
push dword ptr [ebp-4]
call _HGETID
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], -2147483648
je .Lt_032D
push 0
push 1
push 0
push offset _Lt_039B
push 17
call _ERRREPORTEX
add esp, 20
.Lt_032D:
.Lt_032C:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_032F
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
.Lt_032F:
.Lt_032E:
push 0
push 0
push -1
push -2147483648
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _HLOOKUPVARANDCHECKPARENT
add esp, 24
mov dword ptr [ebp-8], eax
call _CASSIGNTOKEN
test eax, eax
jne .Lt_0331
push 0
push 0
push 10
call _ERRREPORT
add esp, 12
.Lt_0331:
.Lt_0330:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-12]
and eax, 262144
test eax, eax
jne .Lt_0334
cmp dword ptr [ebp-8], 0
je .Lt_0332
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
jmp .Lt_039A
.Lt_0332:
mov dword ptr [ebp-28], 0
.Lt_039A:
mov ebx, dword ptr [ebp-28]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-32], ebx
jmp .Lt_0399
.Lt_0334:
mov dword ptr [ebp-32], -1
.Lt_0399:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 0
je .Lt_0337
push 4
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-24], eax
jmp .Lt_0336
.Lt_0337:
call _CEXPRESSION
mov dword ptr [ebp-24], eax
.Lt_0336:
cmp dword ptr [ebp-24], 0
jne .Lt_0339
push 0
push 0
push 237
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
cmp dword ptr [ebp-36], 0
je .Lt_033B
push 0
push 8
call _HBUILDFAKEBYREFINITEXPR
add esp, 8
mov dword ptr [ebp-24], eax
jmp .Lt_033A
.Lt_033B:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_033A:
.Lt_0339:
.Lt_0338:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-36], 0
jne .Lt_033D
mov eax, dword ptr [ebp-40]
and eax, 511
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 7
jne .Lt_0340
.Lt_0341:
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-24]
call _ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-40], 8
mov dword ptr [ebp-44], 0
jmp .Lt_033E
.Lt_0340:
cmp dword ptr [ebp-64], 4
je .Lt_0343
.Lt_0344:
cmp dword ptr [ebp-64], 18
jne .Lt_0342
.Lt_0343:
mov dword ptr [ebp-40], 17
.Lt_0342:
.Lt_033E:
.Lt_033D:
.Lt_033C:
push 309
push offset _Lt_039F
mov dword ptr [ebp-60], 0
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-56], 0
lea eax, [ebp-56]
push eax
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call _SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], edx
lea eax, [ebp-52]
push eax
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
push 0
push offset _Lt_039B
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call _HADDVAR
add esp, 52
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0349
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+4]
and edx, 262144
test edx, edx
je .Lt_034B
lea edx, [ebp-24]
push edx
push dword ptr [ebp-8]
call _HCHECKANDBUILDBYREFINITIALIZER
add esp, 8
mov dword ptr [ebp-24], eax
jmp .Lt_034A
.Lt_034B:
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _HCHECKANDBUILDAUTOVARINITIALIZER
add esp, 8
mov dword ptr [ebp-24], eax
.Lt_034A:
push 0
push dword ptr [ebp-8]
call _ASTNEWDECL
add esp, 8
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 8
push dword ptr [ebp-8]
call _SYMBHASDTOR
add esp, 4
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-64]
push dword ptr [ebp-8]
call _HFLUSHINITIALIZER
add esp, 16
push eax
call _ASTADD
add esp, 4
.Lt_0349:
.Lt_0348:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_034D
jmp .Lt_0328
.Lt_034D:
.Lt_034C:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0329:
jmp .Lt_0327
.Lt_0328:
.Lt_0317:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_03A0,128

.section .data
.balign 4
_Lt_039F:
.int _Lt_03A0
.int _Lt_03A0
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .bss
.balign 4
	.lcomm	_Lt_039B,129
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
