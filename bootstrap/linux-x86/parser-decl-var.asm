	.intel_syntax noprefix

.section .text
.balign 16

.globl HCOMPLAINIFABSTRACTCLASS
HCOMPLAINIFABSTRACTCLASS:
.type HCOMPLAINIFABSTRACTCLASS, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0068:
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
jne .Lt_006B
sub esp, 12
push dword ptr [ebp+12]
call SYMBCOMPGETABSTRACTCOUNT
add esp, 16
test eax, eax
jle .Lt_006D
sub esp, 4
push 0
push 0
push 306
call ERRREPORT
add esp, 16
.Lt_006D:
.Lt_006C:
.Lt_006B:
.Lt_006A:
.Lt_0069:
mov esp, ebp
pop ebp
ret
.size HCOMPLAINIFABSTRACTCLASS, .-HCOMPLAINIFABSTRACTCLASS
.balign 16

.globl HCOMPLAINABOUTCONSTDYNAMICARRAY
HCOMPLAINABOUTCONSTDYNAMICARRAY:
.type HCOMPLAINABOUTCONSTDYNAMICARRAY, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_006E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 512
test ebx, ebx
je .Lt_0071
sub esp, 4
push 0
push 0
push 275
call ERRREPORT
add esp, 16
.Lt_0071:
.Lt_0070:
.Lt_006F:
pop ebx
mov esp, ebp
pop ebp
ret
.size HCOMPLAINABOUTCONSTDYNAMICARRAY, .-HCOMPLAINABOUTCONSTDYNAMICARRAY
.balign 16

.globl HSYMBOLTYPE
HSYMBOLTYPE:
.type HSYMBOLTYPE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0072:
mov dword ptr [ebp-4], 1
cmp dword ptr [ebp+20], 0
je .Lt_0075
and dword ptr [ebp-4], -2
or dword ptr [ebp-4], 4
.Lt_0075:
.Lt_0074:
cmp dword ptr [ebp+24], 0
je .Lt_0077
and dword ptr [ebp-4], -2
.Lt_0077:
.Lt_0076:
sub esp, 12
push dword ptr [ebp-4]
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CSYMBOLTYPE
add esp, 32
test eax, eax
jne .Lt_007A
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
je .Lt_007B
mov dword ptr [ebp-12], 24
jmp .Lt_0085
.Lt_007B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0085:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
mov ebx, ecx
sar ebx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], ebx
.Lt_007A:
.Lt_0079:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 0
jne .Lt_007E
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
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
je .Lt_007F
mov dword ptr [ebp-12], 24
jmp .Lt_0086
.Lt_007F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_0086:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov ecx, dword ptr [SYMB_DTYPETB+ebx+4]
mov eax, ecx
sar eax, 31
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], ecx
mov dword ptr [ebx+4], eax
.Lt_007E:
.Lt_007D:
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
je .Lt_0082
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
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
je .Lt_0083
mov dword ptr [ebp-12], 24
jmp .Lt_0087
.Lt_0083:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0087:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov ecx, ebx
sar ecx, 31
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ebx
mov dword ptr [eax+4], ecx
.Lt_0082:
.Lt_0081:
.Lt_0073:
pop ebx
mov esp, ebp
pop ebp
ret
.size HSYMBOLTYPE, .-HSYMBOLTYPE
.balign 16

.globl HCHECKSCOPE
HCHECKSCOPE:
.type HCHECKSCOPE, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_008A:
cmp dword ptr [PARSER+96], 0
jbe .Lt_008D
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
je .Lt_008F
sub esp, 4
push 0
push 0
push 61
call ERRREPORT
add esp, 16
jmp .Lt_008E
.Lt_008F:
sub esp, 4
push 0
push 0
push 96
call ERRREPORT
add esp, 16
.Lt_008E:
mov dword ptr [ebp-4], 0
jmp .Lt_008C
.Lt_008D:
mov dword ptr [ebp-4], -1
.Lt_008C:
.Lt_008B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HCHECKSCOPE, .-HCHECKSCOPE
.balign 16

.globl CVARIABLEDECL
CVARIABLEDECL:
.type CVARIABLEDECL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0090:
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_0093
.Lt_0095:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0097
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0091
.Lt_0097:
.Lt_0096:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
je .Lt_0099
sub esp, 4
push 0
push 0
push 216
call ERRREPORT
add esp, 16
and dword ptr [ebp+8], -33
.Lt_0099:
.Lt_0098:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
or dword ptr [ebp+8], 4
sub esp, 8
push 2048
push 313
call HMATCH
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0092
.Lt_009A:
or dword ptr [ebp+8], 10
or dword ptr [ebp+8], 4
call HCHECKSCOPE
test eax, eax
jne .Lt_009C
and dword ptr [ebp+8], -9
.Lt_009C:
.Lt_009B:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
je .Lt_009E
sub esp, 4
push 0
push 0
push 216
call ERRREPORT
add esp, 16
and dword ptr [ebp+8], -33
.Lt_009E:
.Lt_009D:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0092
.Lt_009F:
cmp dword ptr [ebp+8], 0
jne .Lt_00A1
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEADCLASS
add esp, 16
cmp eax, 4
jne .Lt_00A3
mov dword ptr [ebp-4], 0
jmp .Lt_0091
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
or dword ptr [ebp+8], 16
or dword ptr [ebp+8], 3
call HCHECKSCOPE
test eax, eax
jne .Lt_00A5
and dword ptr [ebp+8], -18
.Lt_00A5:
.Lt_00A4:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
je .Lt_00A7
sub esp, 4
push 0
push 0
push 216
call ERRREPORT
add esp, 16
and dword ptr [ebp+8], -33
.Lt_00A7:
.Lt_00A6:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0092
.Lt_00A8:
sub esp, 12
push 9
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_00AA
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0091
.Lt_00AA:
.Lt_00A9:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
or dword ptr [ebp+8], 2
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 309
jne .Lt_00AC
sub esp, 12
push dword ptr [ebp+8]
call CAUTOVARDECL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0091
.Lt_00AC:
.Lt_00AB:
jmp .Lt_0092
.Lt_00AD:
sub esp, 12
push dword ptr [ebp+8]
call CAUTOVARDECL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0091
jmp .Lt_0092
.Lt_00AE:
sub esp, 12
push 9
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_00B0
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0091
.Lt_00B0:
.Lt_00AF:
sub esp, 12
push 4096
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0092
.Lt_0093:
mov eax, dword ptr [ebp-16]
add eax, 4294966990
cmp eax, 5
ja .Lt_00AE
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_00B1+eax*4-1224]
.LT_00B1:
.int .Lt_009F
.int .Lt_00A8
.int .Lt_00AE
.int .Lt_00AD
.int .Lt_0095
.int .Lt_009A
.Lt_0092:
cmp dword ptr [ENV+944], 0
je .Lt_00B3
or dword ptr [ebp+8], 4
.Lt_00B3:
.Lt_00B2:
mov eax, dword ptr [ebp+8]
and eax, 16
test eax, eax
jne .Lt_00B5
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 312
jne .Lt_00B7
call HCHECKSCOPE
test eax, eax
jne .Lt_00B9
or dword ptr [ebp+8], 2
jmp .Lt_00B8
.Lt_00B9:
or dword ptr [ebp+8], 3
.Lt_00B8:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.Lt_00B7:
.Lt_00B6:
jmp .Lt_00B4
.Lt_00B5:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 342
jne .Lt_00BB
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_00BF
.Lt_00C0:
cmp dword ptr [ebp-16], 1
jne .Lt_00BE
.Lt_00BF:
or dword ptr [ebp+8], 512
.Lt_00BE:
.Lt_00BC:
.Lt_00BB:
.Lt_00BA:
.Lt_00B4:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 64
test ebx, ebx
je .Lt_00C2
or dword ptr [ebp+8], 2
.Lt_00C2:
.Lt_00C1:
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call CVARDECL
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0091:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CVARIABLEDECL, .-CVARIABLEDECL
.balign 16

.globl HMAYBECONVERTEXPRTB2DIMTB
HMAYBECONVERTEXPRTB2DIMTB:
.type HMAYBECONVERTEXPRTB2DIMTB, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0157:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HEXPRTBISCONST
add esp, 16
test eax, eax
je .Lt_015A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 4
test ebx, ebx
jne .Lt_015C
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HMAKEARRAYDIMTB
add esp, 16
.Lt_015C:
.Lt_015B:
jmp .Lt_0159
.Lt_015A:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx], 4
.Lt_0159:
.Lt_0158:
pop ebx
mov esp, ebp
pop ebp
ret
.size HMAYBECONVERTEXPRTB2DIMTB, .-HMAYBECONVERTEXPRTB2DIMTB
.balign 16

.globl HCOMPLAINABOUTELLIPSIS
HCOMPLAINABOUTELLIPSIS:
.type HCOMPLAINABOUTELLIPSIS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_015D:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_0160
.Lt_0163:
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-4]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
cmp dword ptr [ebx+4], 0
jne .Lt_0165
sub esp, 4
push 0
push 0
push dword ptr [ebp+16]
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov ecx, dword ptr [ebx]
imul ecx, dword ptr [ebp-4]
sal ecx, 2
mov ebx, dword ptr [ebp+12]
add ecx, dword ptr [ebx]
mov dword ptr [ecx+4], eax
.Lt_0165:
.Lt_0164:
.Lt_0161:
inc dword ptr [ebp-4]
.Lt_0160:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .Lt_0163
.Lt_0162:
.Lt_015E:
pop ebx
mov esp, ebp
pop ebp
ret
.size HCOMPLAINABOUTELLIPSIS, .-HCOMPLAINABOUTELLIPSIS
.balign 16

.globl CVARDECL
CVARDECL:
.type CVARDECL, @function
push ebp
mov ebp, esp
sub esp, 132
push ebx
mov dword ptr [ebp-4], 0
.Lt_020D:
mov dword ptr [ebp-4], 0
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .Lt_0212
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
jne .Lt_0214
or dword ptr [ebp+8], 3
.Lt_0214:
.Lt_0213:
.Lt_0212:
.Lt_0211:
sub esp, 8
push 2048
push 320
call HMATCH
add esp, 16
mov dword ptr [ebp-96], eax
mov dword ptr [ebp-40], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .Lt_0216
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
push dword ptr [ebp-96]
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call HSYMBOLTYPE
add esp, 32
cmp dword ptr [ebp-96], 0
jne .Lt_0218
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call HCOMPLAINIFABSTRACTCLASS
add esp, 16
.Lt_0218:
.Lt_0217:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], -1
cmp dword ptr [ebp-96], 0
je .Lt_021A
mov dword ptr [ebp-96], 0
or dword ptr [ebp+8], 262144
.Lt_021A:
.Lt_0219:
.Lt_0216:
.Lt_0215:
.Lt_021B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-100], eax
cmp dword ptr [ebp-40], 0
jne .Lt_021F
cmp dword ptr [ebp-96], 0
je .Lt_0221
mov dword ptr [ebp-96], 0
or dword ptr [ebp-100], 262144
jmp .Lt_0220
.Lt_0221:
sub esp, 8
push 2048
push 320
call HMATCH
add esp, 16
test eax, eax
je .Lt_0222
or dword ptr [ebp-100], 262144
.Lt_0222:
.Lt_0220:
.Lt_021F:
.Lt_021E:
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
sub esp, 12
cmp dword ptr [ebp-56], 0
je .Lt_0223
mov dword ptr [ebp-104], 0
jmp .Lt_02B5
.Lt_0223:
mov dword ptr [ebp-104], 4
.Lt_02B5:
mov eax, dword ptr [ebp-104]
or eax, 114
push eax
call CPARENTID
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-20], 0
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-56]
je .Lt_0226
mov dword ptr [ebp-64], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .Lt_0228
mov dword ptr [ebp-64], -1
jmp .Lt_0227
.Lt_0228:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-116], 40
je .Lt_022C
.Lt_022D:
cmp dword ptr [ebp-116], 44
je .Lt_022C
.Lt_022E:
cmp dword ptr [ebp-116], 376
je .Lt_022C
.Lt_022F:
cmp dword ptr [ebp-116], 258
je .Lt_022C
.Lt_0230:
cmp dword ptr [ebp-116], 257
je .Lt_022C
.Lt_0231:
cmp dword ptr [ebp-116], 256
jne .Lt_022B
.Lt_022C:
jmp .Lt_0229
.Lt_022B:
mov dword ptr [ebp-64], -1
.Lt_0232:
.Lt_0229:
.Lt_0227:
cmp dword ptr [ebp-64], 0
je .Lt_0234
sub esp, 12
sub esp, 4
call HIDXINPARENSONLYEXPR
add esp, 4
push eax
call HCHECKDYNAMICARRAYEXPR
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_0234:
.Lt_0233:
.Lt_0226:
.Lt_0225:
cmp dword ptr [ebp-24], 0
je .Lt_0236
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+12]
push dword ptr [ebx+16]
push 129
push offset Lt_02BA
call fb_StrAssign
add esp, 32
mov dword ptr [ebp-80], -2147483648
jmp .Lt_0235
.Lt_0236:
push dword ptr [ebp-56]
lea ebx, [ebp-80]
push ebx
push offset Lt_02BA
push dword ptr [ebp-20]
call HGETID
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0235:
mov dword ptr [ebp-48], 0
cmp dword ptr [ebp-40], 0
jne .Lt_0238
mov eax, dword ptr [ebp-80]
mov dword ptr [ebp-60], eax
mov dword ptr [ebp-16], 0
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call SYMBCALCLEN
add esp, 16
mov dword ptr [ebp-72], eax
mov dword ptr [ebp-68], edx
mov eax, dword ptr [ebp-80]
cmp eax, -2147483648
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .Lt_0237
.Lt_0238:
cmp dword ptr [ebp-80], -2147483648
je .Lt_023A
sub esp, 12
push 0
push 1
push 0
push offset Lt_02BA
push 17
call ERRREPORTEX
add esp, 32
mov dword ptr [ebp-80], -2147483648
.Lt_023A:
.Lt_0239:
.Lt_0237:
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-44], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
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
je .Lt_023C
mov edx, dword ptr [ebp-100]
and edx, 262144
je .Lt_023E
sub esp, 4
push 0
push 0
push 322
call ERRREPORT
add esp, 16
and dword ptr [ebp-100], -262145
.Lt_023E:
.Lt_023D:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
jne .Lt_0240
mov dword ptr [ebp-76], -1
or dword ptr [ebp-100], 4
jmp .Lt_023F
.Lt_0240:
sub esp, 4
push offset Lt_02BE
lea eax, [ebp-44]
push eax
lea eax, [ebp-76]
push eax
call CARRAYDECL
add esp, 16
cmp dword ptr [ebp-44], 0
je .Lt_0242
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
je .Lt_0244
sub esp, 4
push 0
push 0
push 136
call ERRREPORT
add esp, 16
mov dword ptr [ebp-76], -1
mov dword ptr [ebp-44], 0
.Lt_0244:
.Lt_0243:
jmp .Lt_0241
.Lt_0242:
or dword ptr [ebp-100], 4
.Lt_0241:
.Lt_023F:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0246
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
jmp .Lt_0245
.Lt_0246:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0245:
jmp .Lt_023B
.Lt_023C:
cmp dword ptr [ebp+16], 310
jne .Lt_0247
sub esp, 12
push 0
push 1
push 0
push offset Lt_02BA
push 63
call ERRREPORTEX
add esp, 32
mov dword ptr [ebp-76], -1
jmp .Lt_023B
.Lt_0247:
and dword ptr [ebp-100], -5
.Lt_023B:
mov eax, dword ptr [ebp-44]
and dword ptr [ebp-56], eax
mov dword ptr [ebp-84], 0
mov eax, dword ptr [ebp-100]
and eax, 48
test eax, eax
je .Lt_0249
call CALIASATTRIBUTE
mov dword ptr [ebp-84], eax
.Lt_0249:
.Lt_0248:
cmp dword ptr [ebp-40], 0
jne .Lt_024B
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .Lt_024D
cmp dword ptr [ebp-60], -2147483648
je .Lt_024F
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov dword ptr [ebp-60], -2147483648
.Lt_024F:
.Lt_024E:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-100]
and eax, 262144
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-116], eax
sub esp, 12
push 0
push dword ptr [ebp-116]
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call HSYMBOLTYPE
add esp, 32
cmp dword ptr [ebp-116], 0
jne .Lt_0251
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call HCOMPLAINIFABSTRACTCLASS
add esp, 16
.Lt_0251:
.Lt_0250:
mov dword ptr [ebp-36], 0
jmp .Lt_024C
.Lt_024D:
cmp dword ptr [ebp-60], -2147483648
jne .Lt_0252
mov eax, dword ptr [ENV+888]
and eax, 4194304
test eax, eax
je .Lt_0254
sub esp, 12
push offset Lt_02BA
call SYMBGETDEFTYPE
add esp, 16
mov dword ptr [ebp-60], eax
mov dword ptr [ebp-16], 0
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call SYMBCALCLEN
add esp, 16
mov dword ptr [ebp-72], eax
mov dword ptr [ebp-68], edx
mov dword ptr [ebp-36], -1
.Lt_0254:
.Lt_0253:
cmp dword ptr [ebp-56], 0
je .Lt_0256
mov dword ptr [ebp-48], -1
jmp .Lt_0255
.Lt_0256:
cmp dword ptr [ebp-60], -2147483648
jne .Lt_0258
sub esp, 4
lea eax, [ebp-72]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-60]
push eax
call HERRORDEFTYPENOTALLOWED
add esp, 16
.Lt_0258:
.Lt_0257:
.Lt_0255:
.Lt_0252:
.Lt_024C:
.Lt_024B:
.Lt_024A:
cmp dword ptr [ebp-24], 0
je .Lt_025A
mov eax, dword ptr [ebp-24]
mov edx, dword ptr [eax+12]
mov dword ptr [ebp-12], edx
jmp .Lt_0259
.Lt_025A:
sub esp, 8
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
call HLOOKUPVARANDCHECKPARENT
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_025C
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 12
jne .Lt_025E
sub esp, 8
push dword ptr [ebp-56]
push dword ptr [ebp-12]
call HMAYBEBUILDFIELDACCESS
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .Lt_0260
sub esp, 12
push dword ptr [ebp-24]
call ASTNEWNIDXARRAY
add esp, 4
push eax
call HCHECKDYNAMICARRAYEXPR
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_025F
.Lt_0260:
mov dword ptr [ebp-12], 0
.Lt_025F:
.Lt_025E:
.Lt_025D:
.Lt_025C:
.Lt_025B:
.Lt_0259:
cmp dword ptr [ebp-48], 0
je .Lt_0262
cmp dword ptr [ebp-12], 0
je .Lt_0264
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
jmp .Lt_0263
.Lt_0264:
mov ebx, dword ptr [ENV+888]
and ebx, 4194304
test ebx, ebx
je .Lt_0265
jmp .Lt_0263
.Lt_0265:
sub esp, 4
lea ebx, [ebp-72]
push ebx
lea ebx, [ebp-16]
push ebx
lea ebx, [ebp-60]
push ebx
call HERRORDEFTYPENOTALLOWED
add esp, 16
.Lt_0263:
.Lt_0262:
.Lt_0261:
cmp dword ptr [ebp-44], 0
je .Lt_0267
cmp dword ptr [ebp+16], 308
jne .Lt_0269
mov ebx, dword ptr [ebp-100]
and ebx, 4
test ebx, ebx
jne .Lt_026B
cmp dword ptr [ebp-12], 0
je .Lt_026D
mov ebx, dword ptr [ebp-12]
mov edx, dword ptr [ebx+4]
and edx, 8
test edx, edx
je .Lt_026F
mov edx, dword ptr [ebp-12]
cmp dword ptr [edx+60], 0
je .Lt_0271
or dword ptr [ebp-100], 4
mov dword ptr [ebp-56], -1
.Lt_0271:
.Lt_0270:
.Lt_026F:
.Lt_026E:
.Lt_026D:
.Lt_026C:
.Lt_026B:
.Lt_026A:
.Lt_0269:
.Lt_0268:
push offset Lt_02C4
push offset Lt_02BE
push dword ptr [ebp-76]
lea edx, [ebp-100]
push edx
call HMAYBECONVERTEXPRTB2DIMTB
add esp, 16
mov edx, dword ptr [ebp-100]
and edx, 4
je .Lt_0273
sub esp, 4
push 76
push offset Lt_02BE
push dword ptr [ebp-76]
call HCOMPLAINABOUTELLIPSIS
add esp, 16
jmp .Lt_0272
.Lt_0273:
sub esp, 12
mov edx, dword ptr [ebp-100]
and edx, 3
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
push edx
push dword ptr [ebp-68]
push dword ptr [ebp-72]
push offset Lt_02C6
push dword ptr [ebp-76]
call SYMBCHECKARRAYSIZE
add esp, 32
test eax, eax
jne .Lt_0275
sub esp, 4
push 0
push 0
push 50
call ERRREPORT
add esp, 16
mov dword ptr [ebp-76], 1
mov dword ptr [Lt_02C6], 0
mov dword ptr [Lt_02C6+4], 0
mov dword ptr [Lt_02C6+8], 0
mov dword ptr [Lt_02C6+12], 0
.Lt_0275:
.Lt_0274:
.Lt_0272:
jmp .Lt_0266
.Lt_0267:
cmp dword ptr [ebp-76], 0
jne .Lt_0276
mov eax, dword ptr [ebp-100]
and eax, 3
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+228]
mov edx, ebx
sar edx, 31
cmp dword ptr [ebp-68], edx
mov ecx, -1
jg .Lt_02C8
jl .Lt_02C9
cmp dword ptr [ebp-72], ebx
ja .Lt_02C8
.Lt_02C9:
xor ecx, ecx
.Lt_02C8:
and eax, ecx
je .Lt_0278
push 0
push 1
push 0
push 24
call ERRREPORTWARN
add esp, 16
.Lt_0278:
.Lt_0277:
.Lt_0276:
.Lt_0266:
mov ecx, dword ptr [ebp-100]
and ecx, 8
je .Lt_027A
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-60]
call TYPEHASCTOR
add esp, 16
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-60]
mov ebx, eax
call TYPEHASDTOR
add esp, 16
or ebx, eax
je .Lt_027C
sub esp, 4
push 0
push -1
push 270
call ERRREPORT
add esp, 16
.Lt_027C:
.Lt_027B:
.Lt_027A:
.Lt_0279:
mov eax, dword ptr [ebp-100]
and eax, 4
je .Lt_027E
mov eax, dword ptr [ebp+16]
cmp eax, 310
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-44]
je .Lt_0280
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0282
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_020E
.Lt_0282:
.Lt_0281:
.Lt_0280:
.Lt_027F:
cmp dword ptr [ebp-12], 0
je .Lt_0284
sub esp, 12
push dword ptr [ebp-12]
call HCOMPLAINABOUTCONSTDYNAMICARRAY
add esp, 16
.Lt_0284:
.Lt_0283:
.Lt_027E:
.Lt_027D:
sub esp, 12
push dword ptr [ebp+16]
push offset Lt_02C4
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
push offset Lt_02BA
push dword ptr [ebp-20]
push dword ptr [ebp-12]
call HADDVAR
add esp, 64
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-112], 0
cmp dword ptr [ebp-12], 0
je .Lt_0286
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 12
jne .Lt_0287
mov dword ptr [ebp-116], -1
jmp .Lt_02B6
.Lt_0287:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-116], ebx
.Lt_02B6:
mov ebx, dword ptr [ebp-116]
mov dword ptr [ebp-52], ebx
sub esp, 12
push dword ptr [ebp-12]
call SYMBHASDEFCTOR
add esp, 16
mov dword ptr [ebp-108], eax
sub esp, 12
push dword ptr [ebp-12]
call SYMBHASDTOR
add esp, 16
mov dword ptr [ebp-112], eax
jmp .Lt_0285
.Lt_0286:
mov dword ptr [ebp-52], 0
.Lt_0285:
cmp dword ptr [ebp+20], 0
jne .Lt_028A
mov dword ptr [ebp-88], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .Lt_028C
sub esp, 8
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call HVARINIT
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+888]
and ebx, 2
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_028E
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 11
test eax, eax
jne .Lt_0290
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-88], eax
sub esp, 4
push dword ptr [ebp-108]
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call HVARINITDEFAULT
add esp, 16
mov dword ptr [ebp-28], eax
.Lt_0290:
.Lt_028F:
.Lt_028E:
.Lt_028D:
jmp .Lt_028B
.Lt_028C:
cmp dword ptr [ebp-12], 0
je .Lt_0292
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
je .Lt_0294
sub esp, 4
push 0
push 0
push 320
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_020E
.Lt_0294:
.Lt_0293:
sub esp, 12
push dword ptr [ebp-12]
call SYMBARRAYHASUNKNOWNBOUNDS
add esp, 16
test eax, eax
je .Lt_0296
sub esp, 4
push 0
push 0
push 281
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_020E
.Lt_0296:
.Lt_0295:
.Lt_0292:
.Lt_0291:
sub esp, 4
push dword ptr [ebp-108]
push dword ptr [ebp-52]
push dword ptr [ebp-12]
call HVARINITDEFAULT
add esp, 16
mov dword ptr [ebp-28], eax
.Lt_028B:
jmp .Lt_0289
.Lt_028A:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-88], 0
.Lt_0289:
cmp dword ptr [ebp-12], 0
je .Lt_0298
cmp dword ptr [ebp+16], 306
je .Lt_029A
mov dword ptr [ebp-116], 0
cmp dword ptr [ebp-52], 0
jne .Lt_029C
mov dword ptr [ebp-120], 0
sub esp, 8
cmp dword ptr [ebp-28], 0
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+20]
not ecx
and eax, ecx
push eax
push dword ptr [ebp-12]
call ASTNEWDECL
add esp, 16
mov dword ptr [ebp-116], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+84]
mov dword ptr [ebp-120], ecx
cmp dword ptr [ebp-120], 0
je .Lt_029E
sub esp, 4
push 0
mov ecx, dword ptr [ebp-120]
cmp dword ptr [ecx+56], 0
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-120]
call ASTNEWDECL
add esp, 8
push eax
push dword ptr [ebp-116]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-116], eax
.Lt_029E:
.Lt_029D:
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
je .Lt_02A0
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 11
test eax, eax
jne .Lt_02A2
sub esp, 12
push dword ptr [ebp-116]
call HFLUSHDECL
add esp, 16
mov dword ptr [ebp-116], eax
cmp dword ptr [ebp-120], 0
je .Lt_02A4
sub esp, 4
push 0
sub esp, 8
push 64
push 0
mov eax, dword ptr [ebp-120]
push dword ptr [eax+56]
push dword ptr [ebp-120]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 24
push eax
push dword ptr [ebp-116]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-116], eax
mov eax, dword ptr [ebp-120]
mov dword ptr [eax+56], 0
.Lt_02A4:
.Lt_02A3:
.Lt_02A2:
.Lt_02A1:
.Lt_02A0:
.Lt_029F:
mov eax, dword ptr [ebp-12]
or dword ptr [eax+12], 8
mov eax, dword ptr [ENV+888]
and eax, 2
test eax, eax
je .Lt_02A6
push dword ptr [ebp-112]
push dword ptr [ebp-28]
push dword ptr [ebp-116]
push dword ptr [ebp-12]
call HFLUSHINITIALIZER
add esp, 16
mov dword ptr [ebp-116], eax
jmp .Lt_02A5
.Lt_02A6:
sub esp, 12
sub esp, 4
push dword ptr [ebp-112]
push dword ptr [ebp-28]
push dword ptr [ebp-116]
push dword ptr [ebp-12]
call HFLUSHINITIALIZER
add esp, 20
push eax
call ASTADDUNSCOPED
add esp, 16
mov dword ptr [ebp-116], 0
cmp dword ptr [ebp-88], 0
je .Lt_02A8
sub esp, 12
push dword ptr [ebp-12]
call SYMBGETVARHASDTOR
add esp, 16
test eax, eax
je .Lt_02AA
sub esp, 4
push 0
push -1
push dword ptr [ebp-12]
call _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
add esp, 8
push eax
push dword ptr [ebp-116]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-116], eax
.Lt_02AA:
.Lt_02A9:
sub esp, 4
push 0
sub esp, 8
push 64
push 0
push dword ptr [ebp-88]
push dword ptr [ebp-12]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 24
push eax
push dword ptr [ebp-116]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-116], eax
.Lt_02A8:
.Lt_02A7:
.Lt_02A5:
.Lt_029C:
.Lt_029B:
mov eax, dword ptr [ebp-100]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-44]
je .Lt_02AC
cmp dword ptr [ebp-24], 0
jne .Lt_02AE
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-24], eax
.Lt_02AE:
.Lt_02AD:
sub esp, 12
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+12]
and ecx, 2048
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
push ecx
push dword ptr [ebp+12]
push offset Lt_02BE
push dword ptr [ebp-76]
push dword ptr [ebp-24]
call RTLARRAYREDIM
add esp, 32
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
je .Lt_02B0
sub esp, 12
push dword ptr [ebp-32]
call HWRAPINSTATICFLAG
add esp, 16
mov dword ptr [ebp-32], eax
.Lt_02B0:
.Lt_02AF:
sub esp, 4
push 0
push dword ptr [ebp-32]
push dword ptr [ebp-116]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-116], eax
.Lt_02AC:
.Lt_02AB:
sub esp, 12
push dword ptr [ebp-116]
call ASTADD
add esp, 16
.Lt_029A:
.Lt_0299:
.Lt_0298:
.Lt_0297:
cmp dword ptr [ebp+20], 0
je .Lt_02B2
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .Lt_020E
.Lt_02B2:
.Lt_02B1:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_02B4
jmp .Lt_021C
.Lt_02B4:
.Lt_02B3:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_021D:
jmp .Lt_021B
.Lt_021C:
.Lt_020E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CVARDECL, .-CVARDECL

.section .bss
.balign 4
	.lcomm	Lt_02BA,129
.balign 4
	.lcomm	Lt_02D9,64

.section .data
.balign 4
Lt_02BE:
.int Lt_02D9
.int Lt_02D9
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
	.lcomm	Lt_02C6,128

.section .data
.balign 4
Lt_02C4:
.int Lt_02C6
.int Lt_02C6
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16

.globl CARRAYDECL
CARRAYDECL:
.type CARRAYDECL, @function
push ebp
mov ebp, esp
push ebx
push esi
.Lt_02FE:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
.Lt_0300:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 8
jl .Lt_0304
sub esp, 4
push 0
push 0
push 49
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0301
.Lt_0304:
.Lt_0303:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
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
je .Lt_0306
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0305
.Lt_0306:
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 0
jne .Lt_0307
sub esp, 4
push 0
push 0
push 94
call ERRREPORT
add esp, 16
jmp .Lt_0305
.Lt_0307:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call CARRAYDIMENSION
add esp, 16
.Lt_0305:
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
.Lt_0302:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0300
.Lt_0301:
.Lt_02FF:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size CARRAYDECL, .-CARRAYDECL
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
HEXPRTBISCONST:
.type HEXPRTBISCONST, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C3:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-12], eax
jmp .Lt_00C6
.Lt_00C9:
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
cmp dword ptr [eax], 16
je .Lt_00CB
mov dword ptr [ebp-4], 0
jmp .Lt_00C4
jmp .Lt_00CA
.Lt_00CB:
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
cmp dword ptr [ebx+4], 0
jne .Lt_00CC
jmp .Lt_00CA
.Lt_00CC:
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov eax, dword ptr [ebx]
imul eax, dword ptr [ebp-8]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
cmp dword ptr [ebx], 16
je .Lt_00CD
mov dword ptr [ebp-4], 0
jmp .Lt_00C4
.Lt_00CD:
.Lt_00CA:
.Lt_00C7:
inc dword ptr [ebp-8]
.Lt_00C6:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ebx
jle .Lt_00C9
.Lt_00C8:
mov dword ptr [ebp-4], -1
.Lt_00C4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HEXPRTBISCONST, .-HEXPRTBISCONST
.balign 16
HCHECKEXTERNVAR:
.type HCHECKEXTERNVAR, @function
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_00CE:
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
je .Lt_00D1
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 20
call ERRREPORTEX
add esp, 32
jmp .Lt_00CF
.Lt_00D1:
.Lt_00D0:
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
je .Lt_00D3
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 20
call ERRREPORTEX
add esp, 32
jmp .Lt_00CF
.Lt_00D3:
.Lt_00D2:
mov esi, dword ptr [ebp+16]
and esi, 511
mov dword ptr [ebp-8], esi
cmp dword ptr [ebp-8], 18
je .Lt_00D7
.Lt_00D8:
cmp dword ptr [ebp-8], 4
je .Lt_00D7
.Lt_00D9:
cmp dword ptr [ebp-8], 7
jne .Lt_00D6
.Lt_00D7:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+40]
mov ebx, dword ptr [esi+44]
cmp dword ptr [ebp+28], ebx
jne .Lt_0351
cmp dword ptr [ebp+24], eax
je .Lt_00DB
.Lt_0351:
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 20
call ERRREPORTEX
add esp, 32
jmp .Lt_00CF
.Lt_00DB:
.Lt_00DA:
.Lt_00D6:
.Lt_00D4:
mov eax, dword ptr [ebp+32]
and eax, 4
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 4
cmp eax, esi
je .Lt_00DD
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 54
call ERRREPORTEX
add esp, 32
jmp .Lt_00CF
.Lt_00DD:
.Lt_00DC:
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
je .Lt_00DF
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
je .Lt_00E1
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 36
call ERRREPORTEX
add esp, 32
jmp .Lt_00CF
.Lt_00E1:
.Lt_00E0:
mov dword ptr [ebp-4], -1
jmp .Lt_00CF
.Lt_00DF:
.Lt_00DE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebp+36], ebx
je .Lt_00E3
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 36
call ERRREPORTEX
add esp, 32
jmp .Lt_00CF
.Lt_00E3:
.Lt_00E2:
mov ebx, dword ptr [ebp+32]
and ebx, 4
test ebx, ebx
jne .Lt_00E5
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+36]
dec ebx
mov dword ptr [ebp-12], ebx
jmp .Lt_00E7
.Lt_00EA:
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
jne .Lt_0356
cmp ecx, dword ptr [eax]
jne .Lt_0356
.Lt_0357:
xor esi, esi
.Lt_0356:
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
jne .Lt_0358
cmp edi, dword ptr [ecx+8]
jne .Lt_0358
.Lt_0359:
xor ebx, ebx
.Lt_0358:
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov edi, dword ptr [ebp+40]
add ecx, dword ptr [edi]
cmp dword ptr [ecx+12], 2147483648
mov edi, -1
jne .Lt_035A
cmp dword ptr [ecx+8], 0
jne .Lt_035A
.Lt_035B:
xor edi, edi
.Lt_035A:
and ebx, edi
or esi, ebx
je .Lt_00EC
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 37
call ERRREPORTEX
add esp, 32
.Lt_00EC:
.Lt_00EB:
.Lt_00E8:
inc dword ptr [ebp-8]
.Lt_00E7:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ebx
jle .Lt_00EA
.Lt_00E9:
.Lt_00E5:
.Lt_00E4:
mov dword ptr [ebp-4], -1
.Lt_00CF:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKEXTERNVAR, .-HCHECKEXTERNVAR
.balign 16
HCHECKEXTERNVARANDRECOVER:
.type HCHECKEXTERNVARANDRECOVER, @function
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
.Lt_00ED:
sub esp, 12
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
call HCHECKEXTERNVAR
add esp, 48
test eax, eax
jne .Lt_00F0
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
je .Lt_00F2
mov ecx, dword ptr [ebp+36]
mov dword ptr [ecx], 0
jmp .Lt_00F1
.Lt_00F2:
mov ecx, dword ptr [ebp+32]
cmp dword ptr [ecx], 0
jle .Lt_00F3
mov ecx, dword ptr [ebp+36]
mov dword ptr [ecx], -1
mov dword ptr [ebp-4], 0
mov ecx, dword ptr [ebp+32]
mov ebx, dword ptr [ecx]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_00F5
.Lt_00F8:
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
.Lt_00F6:
inc dword ptr [ebp-4]
.Lt_00F5:
mov esi, dword ptr [ebp-8]
cmp dword ptr [ebp-4], esi
jle .Lt_00F8
.Lt_00F7:
.Lt_00F3:
.Lt_00F1:
.Lt_00F0:
.Lt_00EF:
.Lt_00EE:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKEXTERNVARANDRECOVER, .-HCHECKEXTERNVARANDRECOVER
.balign 16
HADDVAR:
.type HADDVAR, @function
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00F9:
cmp dword ptr [ebp+8], 0
je .Lt_00FC
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
cmp dword ptr [PARSER+96], 0
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00FE
sub esp, 12
push dword ptr [ebp+52]
push dword ptr [ebp+48]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HCHECKEXTERNVARANDRECOVER
add esp, 48
mov eax, dword ptr [ebp+8]
and dword ptr [eax+4], -17
mov eax, dword ptr [ebp+8]
or dword ptr [eax+4], 33
mov eax, dword ptr [ebp+44]
cmp dword ptr [eax], 0
je .Lt_0100
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
jne .Lt_0102
mov eax, dword ptr [ebp-12]
and dword ptr [eax+4], -33
jmp .Lt_0101
.Lt_0102:
mov eax, dword ptr [ebp-12]
or dword ptr [eax+4], 32
.Lt_0101:
sub esp, 4
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call ASTBUILDARRAYDESCINITREE
add esp, 16
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+56], eax
.Lt_0100:
.Lt_00FF:
mov dword ptr [ebp-8], -1
jmp .Lt_00FD
.Lt_00FE:
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
je .Lt_0103
sub esp, 12
push dword ptr [ebp+52]
push dword ptr [ebp+48]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HCHECKEXTERNVARANDRECOVER
add esp, 48
mov dword ptr [ebp-8], -1
jmp .Lt_00FD
.Lt_0103:
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
je .Lt_0104
mov dword ptr [ebp-8], -1
jmp .Lt_00FD
.Lt_0104:
mov dword ptr [ebp-8], 0
.Lt_00FD:
jmp .Lt_00FB
.Lt_00FC:
mov dword ptr [ebp-8], 0
.Lt_00FB:
cmp dword ptr [ebp-8], 0
je .Lt_0106
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 4
test eax, eax
je .Lt_0108
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
je .Lt_010A
mov esi, dword ptr [ebp+44]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [esi]
mov dword ptr [ecx+60], eax
.Lt_010A:
.Lt_0109:
.Lt_0108:
.Lt_0107:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 16388
test ecx, ecx
je .Lt_010C
sub esp, 8
mov ecx, dword ptr [ebp+44]
push dword ptr [ecx]
push dword ptr [ebp+8]
call SYMBCHECKDYNAMICARRAYDIMENSIONS
add esp, 16
.Lt_010C:
.Lt_010B:
jmp .Lt_0105
.Lt_0106:
cmp dword ptr [ebp+12], 0
je .Lt_010E
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+16]
push 4
call ERRREPORTEX
add esp, 32
.Lt_010E:
.Lt_010D:
cmp dword ptr [ebp+36], 0
je .Lt_0110
or dword ptr [ebp+40], 1048576
.Lt_0110:
.Lt_010F:
sub esp, 8
mov ecx, dword ptr [ENV+888]
and ecx, 2
test ecx, ecx
je .Lt_0111
mov dword ptr [ebp-12], 0
jmp .Lt_035C
.Lt_0111:
mov dword ptr [ebp-12], 2
.Lt_035C:
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
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp+8], eax
.Lt_0105:
cmp dword ptr [ebp+8], 0
jne .Lt_0114
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+16]
push 4
call ERRREPORTEX
add esp, 32
.Lt_0114:
.Lt_0113:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00FA:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HADDVAR, .-HADDVAR
.balign 16
HCHECKFORIDTOKEN:
.type HCHECKFORIDTOKEN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0115:
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0118
.Lt_011A:
mov eax, dword ptr [ENV+888]
and eax, 524288
test eax, eax
je .Lt_011C
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .Lt_011E
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .Lt_0120
mov dword ptr [ebp-4], 90
.Lt_0120:
.Lt_011F:
.Lt_011E:
.Lt_011D:
.Lt_011C:
.Lt_011B:
jmp .Lt_0117
.Lt_0121:
cmp dword ptr [ENV+136], 3
je .Lt_0123
cmp dword ptr [ebp+8], 0
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [PARSER+96], 0
seta al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0125
mov dword ptr [ebp-4], 4
.Lt_0125:
.Lt_0124:
.Lt_0123:
.Lt_0122:
jmp .Lt_0117
.Lt_0126:
cmp dword ptr [ENV+136], 3
je .Lt_0128
mov dword ptr [ebp-4], 4
jmp .Lt_0127
.Lt_0128:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], -2147483648
jne .Lt_012A
mov dword ptr [ebp-4], 4
.Lt_012A:
.Lt_0129:
.Lt_0127:
jmp .Lt_0117
.Lt_012B:
mov dword ptr [ebp-4], 14
jmp .Lt_0117
.Lt_0118:
cmp dword ptr [ebp-8], 5
ja .Lt_012B
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.LT_012C+ebx*4]
.LT_012C:
.int .Lt_011A
.int .Lt_0126
.int .Lt_0121
.int .Lt_012B
.int .Lt_012B
.int .Lt_0126
.Lt_0117:
.Lt_0116:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKFORIDTOKEN, .-HCHECKFORIDTOKEN
.balign 16
HGETID:
.type HGETID, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_012D:
sub esp, 12
push dword ptr [ebp+8]
call HCHECKFORIDTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0130
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
push 4096
call LEXCHECKTOKEN
add esp, 16
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+8]
mov dword ptr [eax], ecx
cmp dword ptr [ebp+8], 0
jne .Lt_0132
mov ecx, dword ptr [LEX+839936]
mov eax, dword ptr [ecx+16548]
mov ecx, dword ptr [eax+4116]
mov dword ptr [ebp-4], ecx
jmp .Lt_0131
.Lt_0132:
push dword ptr [ebp+20]
push 0
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push dword ptr [ebp+8]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0131:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_012F
.Lt_0130:
sub esp, 4
push 0
push 0
push dword ptr [ebp-8]
call ERRREPORT
add esp, 16
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -2147483648
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_012F:
.Lt_012E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETID, .-HGETID
.balign 16
HLOOKUPVAR:
.type HLOOKUPVAR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0133:
cmp dword ptr [ebp+8], 0
jne .Lt_0136
jmp .Lt_0134
.Lt_0136:
.Lt_0135:
cmp dword ptr [ebp+16], 0
je .Lt_0138
mov eax, dword ptr [ENV+888]
and eax, 4194304
test eax, eax
je .Lt_013A
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDVARBYDEFTYPE
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0139
.Lt_013A:
sub esp, 8
push 1
push dword ptr [ebp+8]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_013C
sub esp, 8
push 12
push dword ptr [ebp+8]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_013C:
.Lt_013B:
.Lt_0139:
jmp .Lt_0137
.Lt_0138:
cmp dword ptr [ebp+20], 0
je .Lt_013D
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDVARBYSUFFIX
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0137
.Lt_013D:
sub esp, 4
push dword ptr [ebp+12]
push 1
push dword ptr [ebp+8]
call SYMBFINDBYCLASSANDTYPE
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_013F
sub esp, 4
push dword ptr [ebp+12]
push 12
push dword ptr [ebp+8]
call SYMBFINDBYCLASSANDTYPE
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_013F:
.Lt_013E:
.Lt_0137:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0134:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HLOOKUPVAR, .-HLOOKUPVAR
.balign 16
HLOOKUPVARANDCHECKPARENT:
.type HLOOKUPVARANDCHECKPARENT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0140:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HLOOKUPVAR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .Lt_0143
cmp dword ptr [ebp-8], 0
je .Lt_0145
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
je .Lt_0147
sub esp, 4
push 0
push 0
push 158
call ERRREPORT
add esp, 16
.Lt_0147:
.Lt_0146:
jmp .Lt_0144
.Lt_0145:
sub esp, 4
push 0
push -1
push 131
call ERRREPORT
add esp, 16
.Lt_0144:
jmp .Lt_0142
.Lt_0143:
cmp dword ptr [ebp-8], 0
je .Lt_0149
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+140]
mov ecx, dword ptr [ebx]
cmp ecx, dword ptr [SYMB+98528]
setne bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+28]
not ecx
and ebx, ecx
je .Lt_014B
mov dword ptr [ebp-8], 0
.Lt_014B:
.Lt_014A:
.Lt_0149:
.Lt_0148:
.Lt_0142:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_0141:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HLOOKUPVARANDCHECKPARENT, .-HLOOKUPVARANDCHECKPARENT
.balign 16
HMAKEARRAYDIMTB:
.type HMAKEARRAYDIMTB, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_014C:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_014F
.Lt_0152:
sub esp, 8
push 8
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ebp-4]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
push dword ptr [ebx]
call ASTCONSTFLUSHTOINT
add esp, 16
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
jne .Lt_0154
mov eax, dword ptr [ebp-4]
sal eax, 4
mov edx, dword ptr [ebp+16]
add eax, dword ptr [edx]
mov dword ptr [eax+8], 0
mov dword ptr [eax+12], 2147483648
jmp .Lt_0153
.Lt_0154:
sub esp, 8
push 8
push dword ptr [ebp-12]
call ASTCONSTFLUSHTOINT
add esp, 16
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
jl .Lt_036D
jg .Lt_036E
cmp ecx, dword ptr [edx]
jb .Lt_036D
.Lt_036E:
xor eax, eax
.Lt_036D:
mov edx, dword ptr [ebp-4]
sal edx, 4
mov ecx, dword ptr [ebp+16]
add edx, dword ptr [ecx]
cmp dword ptr [edx+12], 2147483648
mov ecx, -1
jne .Lt_0370
cmp dword ptr [edx+8], 0
je .Lt_036F
.Lt_0370:
xor ecx, ecx
.Lt_036F:
or eax, ecx
je .Lt_0156
sub esp, 4
push 0
push 0
push 182
call ERRREPORT
add esp, 16
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
.Lt_0156:
.Lt_0155:
.Lt_0153:
.Lt_0150:
inc dword ptr [ebp-4]
.Lt_014F:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .Lt_0152
.Lt_0151:
.Lt_014D:
pop ebx
mov esp, ebp
pop ebp
ret
.size HMAKEARRAYDIMTB, .-HMAKEARRAYDIMTB
.balign 16
HVARINITDEFAULT:
.type HVARINITDEFAULT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0166:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_0169
jmp .Lt_0167
.Lt_0169:
.Lt_0168:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
je .Lt_016B
jmp .Lt_0167
.Lt_016B:
.Lt_016A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 512
test eax, eax
je .Lt_016D
sub esp, 4
push 0
push 0
push 237
call ERRREPORT
add esp, 16
jmp .Lt_0167
.Lt_016D:
.Lt_016C:
cmp dword ptr [ebp+16], 0
je .Lt_016F
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
je .Lt_0171
sub esp, 12
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+32]
call SYMBGETCOMPDEFCTOR
add esp, 4
push eax
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_0173
sub esp, 4
push 0
push 0
push 204
call ERRREPORT
add esp, 16
.Lt_0173:
.Lt_0172:
sub esp, 12
push dword ptr [ebp+8]
call ASTBUILDTYPEINICTORLIST
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0171:
.Lt_0170:
jmp .Lt_016E
.Lt_016F:
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASCTOR
add esp, 16
test eax, eax
je .Lt_0175
sub esp, 4
push 0
push 0
push 183
call ERRREPORT
add esp, 16
.Lt_0175:
.Lt_0174:
.Lt_016E:
.Lt_0167:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HVARINITDEFAULT, .-HVARINITDEFAULT
.balign 16
HCHECKVARSUSEDINGLOBALINIT:
.type HCHECKVARSUSEDINGLOBALINIT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0176:
mov dword ptr [ebp-4], 12288
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1
test ebx, ebx
jne .Lt_0179
or dword ptr [ebp-4], 2
.Lt_0179:
.Lt_0178:
sub esp, 8
push dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call ASTTYPEINIUSESLOCALS
add esp, 16
test eax, eax
je .Lt_017B
sub esp, 4
push 0
push 0
push 272
call ERRREPORT
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call ASTDELTREE
add esp, 16
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
.Lt_017B:
.Lt_017A:
.Lt_0177:
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKVARSUSEDINGLOBALINIT, .-HCHECKVARSUSEDINGLOBALINIT
.balign 16
HVALIDATEGLOBALVARINIT:
.type HVALIDATEGLOBALVARINIT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_017C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 3
test ebx, ebx
jne .Lt_017F
jmp .Lt_017D
.Lt_017F:
.Lt_017E:
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
je .Lt_0181
sub esp, 4
push 0
push -1
push 87
call ERRREPORT
add esp, 16
sub esp, 12
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
call ASTDELTREE
add esp, 16
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 0
jmp .Lt_017D
.Lt_0181:
.Lt_0180:
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASCTOR
add esp, 16
not eax
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0183
sub esp, 12
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx]
call ASTTYPEINIISCONST
add esp, 16
test eax, eax
jne .Lt_0185
sub esp, 4
push 0
push 0
push 11
call ERRREPORT
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call ASTDELTREE
add esp, 16
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
jmp .Lt_017D
.Lt_0185:
.Lt_0184:
.Lt_0183:
.Lt_0182:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKVARSUSEDINGLOBALINIT
add esp, 16
.Lt_017D:
pop ebx
mov esp, ebp
pop ebp
ret
.size HVALIDATEGLOBALVARINIT, .-HVALIDATEGLOBALVARINIT
.balign 16
HBUILDFAKEBYREFINITEXPR:
.type HBUILDFAKEBYREFINITEXPR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0186:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
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
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_0187:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HBUILDFAKEBYREFINITEXPR, .-HBUILDFAKEBYREFINITEXPR
.balign 16
HRESOLVEREFTOREFINITIALIZER:
.type HRESOLVEREFTOREFINITIALIZER, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_0188:
cmp dword ptr [ebp+12], 0
je .Lt_018A
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
jmp .Lt_0375
.Lt_018A:
mov dword ptr [ebp-16], 0
.Lt_0375:
cmp dword ptr [ebp-16], 0
je .Lt_018D
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 0
je .Lt_018E
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
jmp .Lt_0376
.Lt_018E:
mov dword ptr [ebp-20], 0
.Lt_0376:
cmp dword ptr [ebp-20], 0
je .Lt_0191
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax+12], 0
je .Lt_0192
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
jmp .Lt_0377
.Lt_0192:
mov dword ptr [ebp-24], 0
.Lt_0377:
cmp dword ptr [ebp-24], 0
je .Lt_0194
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .Lt_0378
.Lt_0194:
mov dword ptr [ebp-28], 0
.Lt_0378:
cmp dword ptr [ebp-28], 0
je .Lt_0197
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0198
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
jmp .Lt_0379
.Lt_0198:
mov dword ptr [ebp-32], 0
.Lt_0379:
cmp dword ptr [ebp-32], 0
je .Lt_019B
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+56], 0
je .Lt_019C
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
jmp .Lt_037A
.Lt_019C:
mov dword ptr [ebp-36], 0
.Lt_037A:
cmp dword ptr [ebp-36], 0
je .Lt_019F
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_01A1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 23
jne .Lt_01A4
.Lt_01A5:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_01A6
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
jmp .Lt_037B
.Lt_01A6:
mov dword ptr [ebp-44], 0
.Lt_037B:
cmp dword ptr [ebp-44], 0
je .Lt_01A9
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+4], ebx
jne .Lt_01AB
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_01AB:
.Lt_01AA:
.Lt_01A9:
.Lt_01A8:
.Lt_01A4:
.Lt_01A2:
.Lt_01A1:
.Lt_01A0:
.Lt_019F:
.Lt_019E:
.Lt_019B:
.Lt_019A:
.Lt_0197:
.Lt_0196:
.Lt_0191:
.Lt_0190:
.Lt_018D:
.Lt_018C:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_0189:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HRESOLVEREFTOREFINITIALIZER, .-HRESOLVEREFTOREFINITIALIZER
.balign 16
HCHECKANDBUILDBYREFINITIALIZER:
.type HCHECKANDBUILDBYREFINITIALIZER, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01AC:
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call ASTCHECKBYREFASSIGN
add esp, 16
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
jne .Lt_01AF
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call ASTDELTREE
add esp, 16
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call HBUILDFAKEBYREFINITEXPR
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
jmp .Lt_01AE
.Lt_01AF:
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call HRESOLVEREFTOREFINITIALIZER
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
.Lt_01AE:
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
sub esp, 12
push 0
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call ASTTYPEINIBEGIN
add esp, 32
mov dword ptr [ebp-20], eax
sub esp, 12
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call ASTNEWADDROF
add esp, 8
push eax
push dword ptr [ebp-20]
call ASTTYPEINIADDASSIGN
add esp, 32
sub esp, 8
push -1
push dword ptr [ebp-20]
call ASTTYPEINIEND
add esp, 16
sub esp, 8
lea eax, [ebp-20]
push eax
push dword ptr [ebp+8]
call HVALIDATEGLOBALVARINIT
add esp, 16
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_01AD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKANDBUILDBYREFINITIALIZER, .-HCHECKANDBUILDBYREFINITIALIZER
.balign 16
HVARINIT:
.type HVARINIT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B0:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_01B3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
jmp .Lt_01B2
.Lt_01B3:
mov dword ptr [ebp-8], 0
.Lt_01B2:
mov ebx, dword ptr [ebp-8]
and ebx, 24
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp+12]
je .Lt_01B5
sub esp, 4
push 0
push 0
push 135
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .Lt_01B1
.Lt_01B5:
.Lt_01B4:
mov ebx, dword ptr [ENV+888]
and ebx, 128
test ebx, ebx
jne .Lt_01B7
sub esp, 4
push 0
push 146
push 128
call ERRREPORTNOTALLOWED
add esp, 16
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .Lt_01B1
.Lt_01B7:
.Lt_01B6:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp+8], 0
jne .Lt_01B9
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .Lt_01B1
.Lt_01B9:
.Lt_01B8:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
je .Lt_01BB
sub esp, 12
push 4
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01BD
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_01B1
.Lt_01BD:
.Lt_01BC:
sub esp, 8
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call HCHECKANDBUILDBYREFINITIALIZER
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01B1
.Lt_01BB:
.Lt_01BA:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 372
jne .Lt_01BF
sub esp, 12
push dword ptr [ebp+8]
call SYMBARRAYHASUNKNOWNBOUNDS
add esp, 16
test eax, eax
je .Lt_01C1
sub esp, 4
push 0
push 0
push 280
call ERRREPORT
add esp, 16
jmp .Lt_01B1
.Lt_01C1:
.Lt_01C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .Lt_01C3
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .Lt_01C2
.Lt_01C3:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 2048
.Lt_01C2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 512
test eax, eax
je .Lt_01C5
sub esp, 4
push 0
push 0
push 237
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_01B1
.Lt_01C5:
.Lt_01C4:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_01B1
.Lt_01BF:
.Lt_01BE:
push 0
push -2147483648
push 1
push dword ptr [ebp+8]
call CINITIALIZER
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_01C7
mov dword ptr [ebp-4], 0
jmp .Lt_01B1
.Lt_01C7:
.Lt_01C6:
sub esp, 8
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call HVALIDATEGLOBALVARINIT
add esp, 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_01B1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HVARINIT, .-HVARINIT
.balign 16
HFLUSHDECL:
.type HFLUSHDECL, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_01C8:
mov eax, dword ptr [ENV+888]
and eax, 2
test eax, eax
je .Lt_01CB
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_01CA
.Lt_01CB:
sub esp, 12
push dword ptr [ebp+8]
call ASTADDUNSCOPED
add esp, 16
mov dword ptr [ebp-4], 0
.Lt_01CA:
.Lt_01C9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HFLUSHDECL, .-HFLUSHDECL
.balign 16
HWRAPINSTATICFLAG:
.type HWRAPINSTATICFLAG, @function
push ebp
mov ebp, esp
sub esp, 72
mov dword ptr [ebp-4], 0
.Lt_01CC:
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
sub esp, 8
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
sub esp, 4
call SYMBUNIQUELABEL
add esp, 4
push eax
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp-64]
or dword ptr [eax+12], 16
sub esp, 8
push -1
push dword ptr [ebp-64]
call ASTNEWDECL
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-68], eax
sub esp, 4
push 0
sub esp, 8
push -1
push 0
push dword ptr [ebp-68]
push 1
push 0
sub esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-64]
call ASTNEWVAR
add esp, 24
push eax
push 45
call ASTNEWBOP
add esp, 20
push eax
call ASTBUILDBRANCH
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
sub esp, 12
push 0
push 1
push dword ptr [ebp-64]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLll
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
sub esp, 4
push 0
call ASTDTORLISTFLUSH
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
push -1
push dword ptr [ebp-68]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_01CD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HWRAPINSTATICFLAG, .-HWRAPINSTATICFLAG
.balign 16
HCALLSTATICCTOR:
.type HCALLSTATICCTOR, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_01CF:
sub esp, 12
push dword ptr [ebp+12]
call HFLUSHDECL
add esp, 16
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+16], 0
je .Lt_01D2
push 64
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_01D2:
.Lt_01D1:
cmp dword ptr [ebp+20], 0
je .Lt_01D4
sub esp, 12
push dword ptr [ebp+8]
call ASTPROCADDSTATICINSTANCE
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp-16]
call ASTBUILDPROCADDROF
add esp, 4
push eax
call RTLATEXIT
add esp, 8
push eax
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_01D4:
.Lt_01D3:
cmp dword ptr [ebp-12], 0
je .Lt_01D6
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp-12]
call HWRAPINSTATICFLAG
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_01D6:
.Lt_01D5:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_01D0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HCALLSTATICCTOR, .-HCALLSTATICCTOR
.balign 16
HCALLGLOBALCTOR:
.type HCALLGLOBALCTOR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_01D7:
sub esp, 12
push dword ptr [ebp+12]
call HFLUSHDECL
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+16], 0
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp+20]
je .Lt_01DA
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call ASTPROCADDGLOBALINSTANCE
add esp, 16
.Lt_01DA:
.Lt_01D9:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_01D8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HCALLGLOBALCTOR, .-HCALLGLOBALCTOR
.balign 16
HFLUSHINITIALIZER:
.type HFLUSHINITIALIZER, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01DB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp+20]
je .Lt_01DE
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call SYMBGETCOMPDTOR
add esp, 4
push eax
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_01E0
sub esp, 4
push 0
push 0
push 206
call ERRREPORT
add esp, 16
.Lt_01E0:
.Lt_01DF:
.Lt_01DE:
.Lt_01DD:
cmp dword ptr [ebp+16], 0
jne .Lt_01E2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 11
test ebx, ebx
je .Lt_01E4
cmp dword ptr [ebp+20], 0
je .Lt_01E6
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
je .Lt_01E8
push -1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCALLSTATICCTOR
add esp, 16
mov dword ptr [ebp+12], eax
jmp .Lt_01E7
.Lt_01E8:
push -1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCALLGLOBALCTOR
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_01E7:
.Lt_01E6:
.Lt_01E5:
.Lt_01E4:
.Lt_01E3:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_01DC
.Lt_01E2:
.Lt_01E1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 11
test ebx, ebx
jne .Lt_01EA
sub esp, 12
push dword ptr [ebp+12]
call HFLUSHDECL
add esp, 16
mov dword ptr [ebp+12], eax
sub esp, 4
push 0
sub esp, 8
push 64
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 24
push eax
push dword ptr [ebp+12]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01DC
.Lt_01EA:
.Lt_01E9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASCTOR
add esp, 16
not eax
or ebx, eax
je .Lt_01EC
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
je .Lt_01EE
sub esp, 12
push dword ptr [ebp+12]
call HFLUSHDECL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01DC
.Lt_01EE:
.Lt_01ED:
mov dword ptr [ebp+16], 0
.Lt_01EC:
.Lt_01EB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .Lt_01F0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCALLSTATICCTOR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01EF
.Lt_01F0:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCALLGLOBALCTOR
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_01EF:
.Lt_01DC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HFLUSHINITIALIZER, .-HFLUSHINITIALIZER
.balign 16
HIDXINPARENSONLYEXPR:
.type HIDXINPARENSONLYEXPR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_01F1:
mov eax, dword ptr [PARSER+148]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
or dword ptr [PARSER+148], 4096
jmp .Lt_01F3
.Lt_01F4:
and dword ptr [PARSER+148], -4097
.Lt_01F3:
sub esp, 12
push -1
call CEXPRESSIONWITHNIDXARRAY
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-8], 0
je .Lt_01F6
or dword ptr [PARSER+148], 4096
jmp .Lt_01F5
.Lt_01F6:
and dword ptr [PARSER+148], -4097
.Lt_01F5:
.Lt_01F2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HIDXINPARENSONLYEXPR, .-HIDXINPARENSONLYEXPR
.balign 16
HCHECKDYNAMICARRAYEXPR:
.type HCHECKDYNAMICARRAYEXPR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01F7:
cmp dword ptr [ebp+8], 0
je .Lt_01F9
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
jmp .Lt_0390
.Lt_01F9:
mov dword ptr [ebp-8], 0
.Lt_0390:
cmp dword ptr [ebp-8], 0
je .Lt_01FC
sub esp, 12
push dword ptr [ebp+8]
call ASTREMOVENIDXARRAY
add esp, 16
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
je .Lt_01FE
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
je .Lt_0200
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
mov ebx, dword ptr [ecx+4]
and ebx, 16388
test ebx, ebx
je .Lt_0202
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_01F8
.Lt_0202:
.Lt_0201:
.Lt_0200:
.Lt_01FF:
.Lt_01FE:
.Lt_01FD:
.Lt_01FC:
.Lt_01FB:
sub esp, 4
push 0
push -1
push 54
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], 0
.Lt_01F8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKDYNAMICARRAYEXPR, .-HCHECKDYNAMICARRAYEXPR
.balign 16
HERRORDEFTYPENOTALLOWED:
.type HERRORDEFTYPENOTALLOWED, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0203:
sub esp, 4
push 0
push 147
push 4194304
call ERRREPORTNOTALLOWED
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call SYMBCALCLEN
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.Lt_0204:
pop ebx
mov esp, ebp
pop ebp
ret
.size HERRORDEFTYPENOTALLOWED, .-HERRORDEFTYPENOTALLOWED
.balign 16
HMAYBEBUILDFIELDACCESS:
.type HMAYBEBUILDFIELDACCESS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0205:
cmp dword ptr [ebp+12], 0
jne .Lt_0208
jmp .Lt_0206
.Lt_0208:
.Lt_0207:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
jne .Lt_020A
jmp .Lt_0206
.Lt_020A:
.Lt_0209:
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_020C
jmp .Lt_0206
.Lt_020C:
.Lt_020B:
push 0
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+60]
call ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0206:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HMAYBEBUILDFIELDACCESS, .-HMAYBEBUILDFIELDACCESS
.balign 16
HMATCHELLIPSIS:
.type HMATCHELLIPSIS, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_02DA:
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .Lt_02DD
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
jne .Lt_02DF
sub esp, 8
push 0
push 2
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
jne .Lt_02E1
sub esp, 8
push 0
push 3
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 44
je .Lt_02E5
.Lt_02E6:
cmp dword ptr [ebp-8], 41
je .Lt_02E5
.Lt_02E7:
cmp dword ptr [ebp-8], 284
jne .Lt_02E4
.Lt_02E5:
mov dword ptr [ebp-4], -1
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_02E4:
.Lt_02E2:
.Lt_02E1:
.Lt_02E0:
.Lt_02DF:
.Lt_02DE:
.Lt_02DD:
.Lt_02DC:
.Lt_02DB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HMATCHELLIPSIS, .-HMATCHELLIPSIS
.balign 16
HINTEXPR:
.type HINTEXPR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_02E8:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_02EB
sub esp, 12
push 0
push 0
push dword ptr [ebp-8]
push 0
push 8
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_02ED
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .Lt_02EC
.Lt_02ED:
sub esp, 4
push 0
push -1
push 24
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-8], 0
.Lt_02EC:
jmp .Lt_02EA
.Lt_02EB:
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 284
je .Lt_02EF
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
.Lt_02EF:
.Lt_02EE:
.Lt_02EA:
cmp dword ptr [ebp-8], 0
jne .Lt_02F1
cmp dword ptr [ebp+8], 0
je .Lt_02F3
sub esp, 12
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_02F2
.Lt_02F3:
push 0
push 8
mov ebx, dword ptr [ENV+924]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_02F2:
.Lt_02F1:
.Lt_02F0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_02E9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HINTEXPR, .-HINTEXPR
.balign 16
CARRAYDIMENSION:
.type CARRAYDIMENSION, @function
push ebp
mov ebp, esp
push ebx
push esi
.Lt_02F4:
call HMATCHELLIPSIS
test eax, eax
je .Lt_02F7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov ecx, dword ptr [ebx]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
mov dword ptr [ecx], 0
jmp .Lt_02F6
.Lt_02F7:
sub esp, 12
push 0
call HINTEXPR
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
.Lt_02F6:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 284
jne .Lt_02F9
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
add esi, 36
mov ecx, dword ptr [esi]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
cmp dword ptr [ecx], 0
jne .Lt_02FB
sub esp, 4
push 0
push 0
push 282
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
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
.Lt_02FB:
.Lt_02FA:
call HMATCHELLIPSIS
test eax, eax
je .Lt_02FD
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
add ebx, 36
mov ecx, dword ptr [ebx]
imul ecx, dword ptr [eax]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add ecx, dword ptr [eax]
mov dword ptr [ecx+4], 0
jmp .Lt_02FC
.Lt_02FD:
sub esp, 12
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [eax]
imul ebx, dword ptr [ecx]
sal ebx, 2
mov ecx, dword ptr [ebp+12]
add ebx, dword ptr [ecx]
push dword ptr [ebx]
call HINTEXPR
add esp, 16
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
add ecx, 36
mov esi, dword ptr [ecx]
imul esi, dword ptr [ebx]
sal esi, 2
mov ebx, dword ptr [ebp+12]
add esi, dword ptr [ebx]
mov dword ptr [esi+4], eax
.Lt_02FC:
jmp .Lt_02F8
.Lt_02F9:
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
mov ecx, dword ptr [ENV+924]
mov eax, ecx
sar eax, 31
push eax
push ecx
call ASTNEWCONSTI
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
.Lt_02F8:
.Lt_02F5:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size CARRAYDIMENSION, .-CARRAYDIMENSION
.balign 16
HBUILDAUTOVARINITIALIZER:
.type HBUILDAUTOVARINITIALIZER, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_030B:
sub esp, 12
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
call ASTTYPEINIBEGIN
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASCTOR
add esp, 16
test eax, eax
jne .Lt_030E
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 32
jmp .Lt_030D
.Lt_030E:
lea eax, [ebp-12]
push eax
sub esp, 8
push dword ptr [ebp+12]
call CBYDESCARRAYARGPARENS
add esp, 12
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
je .Lt_0310
cmp dword ptr [ebp-12], 0
je .Lt_0312
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTTYPEINIADDCTORCALL
add esp, 32
jmp .Lt_0311
.Lt_0312:
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 32
.Lt_0311:
.Lt_0310:
.Lt_030F:
.Lt_030D:
sub esp, 8
push -1
push dword ptr [ebp-8]
call ASTTYPEINIEND
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_030C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HBUILDAUTOVARINITIALIZER, .-HBUILDAUTOVARINITIALIZER
.balign 16
HCHECKANDBUILDAUTOVARINITIALIZER:
.type HCHECKANDBUILDAUTOVARINITIALIZER, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0313:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HBUILDAUTOVARINITIALIZER
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
lea eax, [ebp-8]
push eax
push dword ptr [ebp+8]
call HVALIDATEGLOBALVARINIT
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0314:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HCHECKANDBUILDAUTOVARINITIALIZER, .-HCHECKANDBUILDAUTOVARINITIALIZER
.balign 16
CAUTOVARDECL:
.type CAUTOVARDECL, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_0315:
mov eax, dword ptr [ENV+888]
and eax, 2048
test eax, eax
jne .Lt_0319
sub esp, 4
push 0
push 150
push 2048
call ERRREPORTNOTALLOWED
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0316
.Lt_0319:
.Lt_0318:
sub esp, 12
push 9
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_031B
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0316
.Lt_031B:
.Lt_031A:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 312
jne .Lt_031D
call HCHECKSCOPE
test eax, eax
jne .Lt_031F
or dword ptr [ebp+8], 2
jmp .Lt_031E
.Lt_031F:
or dword ptr [ebp+8], 3
.Lt_031E:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.Lt_031D:
.Lt_031C:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 64
test ebx, ebx
je .Lt_0321
or dword ptr [ebp+8], 2
.Lt_0321:
.Lt_0320:
lea ebx, [SYMB+98352]
cmp dword ptr [SYMB+98528], ebx
je .Lt_0323
mov ebx, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], ebx
jne .Lt_0325
or dword ptr [ebp+8], 3
.Lt_0325:
.Lt_0324:
.Lt_0323:
.Lt_0322:
.Lt_0326:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-12], ebx
sub esp, 8
push 2048
push 320
call HMATCH
add esp, 16
test eax, eax
je .Lt_032A
or dword ptr [ebp-12], 262144
.Lt_032A:
.Lt_0329:
sub esp, 12
push 118
call CPARENTID
add esp, 16
mov dword ptr [ebp-4], eax
push 0
lea eax, [ebp-16]
push eax
push offset Lt_039A
push dword ptr [ebp-4]
call HGETID
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], -2147483648
je .Lt_032C
sub esp, 12
push 0
push 1
push 0
push offset Lt_039A
push 17
call ERRREPORTEX
add esp, 32
.Lt_032C:
.Lt_032B:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .Lt_032E
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
.Lt_032E:
.Lt_032D:
sub esp, 8
push 0
push 0
push -1
push -2147483648
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call HLOOKUPVARANDCHECKPARENT
add esp, 32
mov dword ptr [ebp-8], eax
call CASSIGNTOKEN
test eax, eax
jne .Lt_0330
sub esp, 4
push 0
push 0
push 10
call ERRREPORT
add esp, 16
.Lt_0330:
.Lt_032F:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp-12]
and eax, 262144
test eax, eax
jne .Lt_0333
cmp dword ptr [ebp-8], 0
je .Lt_0331
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
jmp .Lt_0399
.Lt_0331:
mov dword ptr [ebp-28], 0
.Lt_0399:
mov ebx, dword ptr [ebp-28]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-32], ebx
jmp .Lt_0398
.Lt_0333:
mov dword ptr [ebp-32], -1
.Lt_0398:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 0
je .Lt_0336
sub esp, 12
push 4
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_0335
.Lt_0336:
call CEXPRESSION
mov dword ptr [ebp-24], eax
.Lt_0335:
cmp dword ptr [ebp-24], 0
jne .Lt_0338
sub esp, 4
push 0
push 0
push 237
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
cmp dword ptr [ebp-36], 0
je .Lt_033A
sub esp, 8
push 0
push 8
call HBUILDFAKEBYREFINITEXPR
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_0339
.Lt_033A:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_0339:
.Lt_0338:
.Lt_0337:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-36], 0
jne .Lt_033C
mov eax, dword ptr [ebp-40]
and eax, 511
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 7
jne .Lt_033F
.Lt_0340:
sub esp, 4
push 0
push -1
push 24
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call ASTDELTREE
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-40], 8
mov dword ptr [ebp-44], 0
jmp .Lt_033D
.Lt_033F:
cmp dword ptr [ebp-64], 4
je .Lt_0342
.Lt_0343:
cmp dword ptr [ebp-64], 18
jne .Lt_0341
.Lt_0342:
mov dword ptr [ebp-40], 17
.Lt_0341:
.Lt_033D:
.Lt_033C:
.Lt_033B:
sub esp, 12
push 309
push offset Lt_039E
mov dword ptr [ebp-60], 0
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-56], 0
lea eax, [ebp-56]
push eax
push dword ptr [ebp-12]
push 0
sub esp, 4
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call SYMBCALCLEN
add esp, 12
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], edx
lea eax, [ebp-52]
push eax
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
push 0
push offset Lt_039A
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call HADDVAR
add esp, 64
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0348
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+4]
and edx, 262144
test edx, edx
je .Lt_034A
sub esp, 8
lea edx, [ebp-24]
push edx
push dword ptr [ebp-8]
call HCHECKANDBUILDBYREFINITIALIZER
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_0349
.Lt_034A:
sub esp, 8
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call HCHECKANDBUILDAUTOVARINITIALIZER
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_0349:
sub esp, 8
push 0
push dword ptr [ebp-8]
call ASTNEWDECL
add esp, 16
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 8
sub esp, 12
sub esp, 4
sub esp, 12
push dword ptr [ebp-8]
call SYMBHASDTOR
add esp, 16
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-64]
push dword ptr [ebp-8]
call HFLUSHINITIALIZER
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_0348:
.Lt_0347:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_034C
jmp .Lt_0327
.Lt_034C:
.Lt_034B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0328:
jmp .Lt_0326
.Lt_0327:
.Lt_0316:
pop ebx
mov esp, ebp
pop ebp
ret
.size CAUTOVARDECL, .-CAUTOVARDECL

.section .bss
.balign 4
	.lcomm	Lt_039F,128

.section .data
.balign 4
Lt_039E:
.int Lt_039F
.int Lt_039F
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .bss
.balign 4
	.lcomm	Lt_039A,129
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
