	.intel_syntax noprefix

.section .text
.balign 16

.globl CALIASATTRIBUTE
CALIASATTRIBUTE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0068:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 384
jne .Lt_006B
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 4
jne .Lt_006D
push 0
push 0
call LEXGETTEXT
push eax
push 129
push offset Lt_0070
call fb_StrAssign
add esp, 20
push 0
call LEXSKIPTOKEN
add esp, 4
push 129
push offset Lt_0070
call fb_StrLen
add esp, 8
test eax, eax
jle .Lt_006F
mov eax, offset Lt_0070
mov dword ptr [ebp-4], eax
jmp .Lt_006E
.Lt_006F:
push 0
push 0
push 304
call ERRREPORT
add esp, 12
.Lt_006E:
jmp .Lt_006C
.Lt_006D:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.Lt_006C:
.Lt_006B:
.Lt_006A:
.Lt_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0070,129

.section .text
.balign 16

.globl CLIBATTRIBUTE
CLIBATTRIBUTE:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0071:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 385
jne .Lt_0074
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 4
jne .Lt_0076
call LEXGETTEXT
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
call fb_StrLen
add esp, 8
test eax, eax
jle .Lt_0078
push dword ptr [ebp-4]
call FBADDLIB
add esp, 4
jmp .Lt_0077
.Lt_0078:
push 0
push 0
push 305
call ERRREPORT
add esp, 12
.Lt_0077:
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_0075
.Lt_0076:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.Lt_0075:
.Lt_0074:
.Lt_0073:
.Lt_0072:
mov esp, ebp
pop ebp
ret
.balign 16

.globl CMETHODATTRIBUTES
CMETHODATTRIBUTES:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0079:
push 2048
push 307
call HMATCH
add esp, 8
test eax, eax
je .Lt_007C
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 2
jmp .Lt_007A
.Lt_007C:
.Lt_007B:
push 2048
push 335
call HMATCH
add esp, 8
test eax, eax
je .Lt_007E
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 2048
.Lt_007E:
.Lt_007D:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 355
jne .Lt_0081
.Lt_0082:
mov eax, dword ptr [ebp+16]
or dword ptr [eax], 768
cmp dword ptr [ebp+8], 0
je .Lt_0084
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .Lt_0086
push 0
push 0
push 222
call ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+16]
and dword ptr [ebx], -769
.Lt_0086:
.Lt_0085:
.Lt_0084:
.Lt_0083:
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_007F
.Lt_0081:
cmp dword ptr [ebp-4], 354
jne .Lt_0087
.Lt_0088:
mov ebx, dword ptr [ebp+16]
or dword ptr [ebx], 256
cmp dword ptr [ebp+8], 0
je .Lt_008A
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 4194304
test eax, eax
jne .Lt_008C
push 0
push 0
push 221
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+16]
and dword ptr [eax], -257
.Lt_008C:
.Lt_008B:
.Lt_008A:
.Lt_0089:
push 2048
call LEXSKIPTOKEN
add esp, 4
.Lt_0087:
.Lt_007F:
.Lt_007A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CPROCRETTYPE
CPROCRETTYPE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_00EB:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 1
mov eax, dword ptr [ebp+12]
and eax, 2048
je .Lt_00EE
cmp dword ptr [ebp+20], 0
je .Lt_00F0
or dword ptr [ebp-4], 2
.Lt_00F0:
.Lt_00EF:
and dword ptr [ebp-4], -2
or dword ptr [ebp-4], 4
.Lt_00EE:
.Lt_00ED:
cmp dword ptr [ebp+20], 0
je .Lt_00F2
and dword ptr [ebp-4], -2
.Lt_00F2:
.Lt_00F1:
push dword ptr [ebp-4]
mov dword ptr [ebp-16], 0
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-12]
push eax
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call CSYMBOLTYPE
add esp, 20
test eax, eax
jne .Lt_00F6
push 0
push 0
push 14
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
jmp .Lt_00F5
.Lt_00F6:
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 7
jne .Lt_00F9
.Lt_00FA:
mov ebx, dword ptr [ebp+12]
and ebx, 2048
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+20]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00FC
push 0
push 0
push 55
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 17
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
.Lt_00FC:
.Lt_00FB:
jmp .Lt_00F7
.Lt_00F9:
cmp dword ptr [ebp-20], 18
je .Lt_00FE
.Lt_00FF:
cmp dword ptr [ebp-20], 4
jne .Lt_00FD
.Lt_00FE:
mov eax, dword ptr [ebp+12]
and eax, 2048
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx]
and ecx, 511
cmp ecx, 18
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0101
push 0
push 0
push 55
call ERRREPORT
add esp, 12
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 17
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
.Lt_0101:
.Lt_0100:
jmp .Lt_00F7
.Lt_00FD:
cmp dword ptr [ebp-20], 0
jne .Lt_0102
.Lt_0103:
push 0
push 0
push 24
call ERRREPORT
add esp, 12
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx]
and eax, 31
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx]
and ecx, 261632
sal ecx, 1
or eax, ecx
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx]
and ebx, 32505856
or eax, ebx
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
jmp .Lt_00F7
.Lt_0102:
cmp dword ptr [ebp-20], 20
jne .Lt_0104
.Lt_0105:
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 0
je .Lt_0107
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+116]
and eax, 15728640
sar eax, 20
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 3
jne .Lt_010A
.Lt_010B:
mov eax, dword ptr [ebp+12]
and eax, 2048
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx]
and ecx, 480
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_010D
push 0
push 0
push 24
call ERRREPORT
add esp, 12
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ecx]
and eax, 31
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+24]
mov ecx, dword ptr [ebx]
and ecx, 261632
sal ecx, 1
or eax, ecx
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx]
and ebx, 32505856
or eax, ebx
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
.Lt_010D:
.Lt_010C:
.Lt_010A:
.Lt_0108:
.Lt_0107:
.Lt_0106:
.Lt_0104:
.Lt_00F7:
mov eax, dword ptr [ebp+12]
and eax, 2048
test eax, eax
jne .Lt_010F
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
call HCOMPLAINIFABSTRACTCLASS
add esp, 8
.Lt_010F:
.Lt_010E:
.Lt_00F5:
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
call CPROCRETURNMETHOD
add esp, 4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+96], eax
.Lt_00EC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CPROCRETURNMETHOD
CPROCRETURNMETHOD:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_0116:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 2
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0118
mov dword ptr [ebp-20], 24
jmp .Lt_0129
.Lt_0118:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_0129:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
je .Lt_011B
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_0117
.Lt_011B:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 343
jne .Lt_011D
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_011F
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_011E
.Lt_011F:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_011E:
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 4
je .Lt_0121
push 0
push 0
push 17
call ERRREPORT
add esp, 12
jmp .Lt_0120
.Lt_0121:
push 0
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
call fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 4
push offset Lt_0122
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0124
mov dword ptr [ebp-4], 1
jmp .Lt_0123
.Lt_0124:
push 4
push offset Lt_0126
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0125
mov dword ptr [ebp-4], 0
.Lt_0125:
.Lt_0123:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0120:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0128
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
jmp .Lt_0127
.Lt_0128:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0127:
.Lt_011D:
.Lt_011C:
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.Lt_0117:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CPROCCALLINGCONV
CPROCCALLINGCONV:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_012A:
cmp dword ptr [ebp+8], -1
jne .Lt_012D
mov eax, dword ptr [ENV+252]
mov dword ptr [ebp+8], eax
.Lt_012D:
.Lt_012C:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_012F
.Lt_0131:
mov dword ptr [ebp-4], 3
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_012E
.Lt_0132:
mov eax, dword ptr [ENV+256]
mov dword ptr [ebp-4], eax
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_012E
.Lt_0133:
mov dword ptr [ebp-4], 4
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_012E
.Lt_0134:
mov eax, dword ptr [PARSER+100]
mov dword ptr [ebp-12], eax
jmp .Lt_0136
.Lt_0138:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0135
.Lt_0139:
mov dword ptr [ebp-4], 3
jmp .Lt_0135
.Lt_013A:
mov eax, dword ptr [ENV+256]
mov dword ptr [ebp-4], eax
jmp .Lt_0135
.Lt_013B:
mov dword ptr [ebp-4], 2
jmp .Lt_0135
.Lt_0136:
cmp dword ptr [ebp-12], 6
ja .Lt_0135
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_013C+eax*4]
.LT_013C:
.int .Lt_0138
.int .Lt_0139
.int .Lt_013A
.int .Lt_013B
.int .Lt_0139
.int .Lt_0135
.int .Lt_0138
.Lt_0135:
jmp .Lt_012E
.Lt_012F:
mov eax, dword ptr [ebp-8]
add eax, 4294966915
cmp eax, 2
ja .Lt_0134
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_013D+eax*4-1524]
.LT_013D:
.int .Lt_0133
.int .Lt_0131
.int .Lt_0132
.Lt_012E:
.Lt_012B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CBYREFATTRIBUTE
CBYREFATTRIBUTE:
push ebp
mov ebp, esp
.Lt_014C:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 320
jne .Lt_014F
cmp dword ptr [ebp+12], 0
jne .Lt_0151
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.Lt_0151:
.Lt_0150:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
or dword ptr [eax], 2048
.Lt_014F:
.Lt_014E:
.Lt_014D:
mov esp, ebp
pop ebp
ret
.balign 16

.globl CPROCHEADER
CPROCHEADER:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.Lt_0228:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-32], -2147483648
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-64], 0
cmp dword ptr [ebp+24], 347
je .Lt_022C
.Lt_022D:
cmp dword ptr [ebp+24], 348
jne .Lt_022B
.Lt_022C:
or dword ptr [ebp+12], 2
cmp dword ptr [ebp+24], 347
jne .Lt_022F
or dword ptr [ebp+12], 5
jmp .Lt_022E
.Lt_022F:
or dword ptr [ebp+12], 8
.Lt_022E:
jmp .Lt_022A
.Lt_022B:
cmp dword ptr [ebp+24], 349
jne .Lt_0230
.Lt_0231:
or dword ptr [ebp+12], 17
jmp .Lt_022A
.Lt_0230:
cmp dword ptr [ebp+24], 350
jne .Lt_0232
.Lt_0233:
or dword ptr [ebp+12], 35
.Lt_0232:
.Lt_022A:
mov eax, dword ptr [ebp+20]
and eax, 2
je .Lt_0235
mov dword ptr [ebp-20], 0
jmp .Lt_0234
.Lt_0235:
mov dword ptr [ebp-68], 22
cmp dword ptr [ebp+24], 349
jne .Lt_0237
.Lt_0238:
or dword ptr [ebp-68], 8
jmp .Lt_0236
.Lt_0237:
cmp dword ptr [ebp+24], 347
je .Lt_023A
.Lt_023B:
cmp dword ptr [ebp+24], 348
jne .Lt_0239
.Lt_023A:
or dword ptr [ebp-68], 1
.Lt_0239:
.Lt_0236:
push dword ptr [ebp-68]
call CPARENTID
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_0234:
cmp dword ptr [ebp-20], 0
je .Lt_023D
mov eax, dword ptr [ebp+20]
and eax, 1
je .Lt_023F
push 0
push 0
push 158
call ERRREPORT
add esp, 12
mov dword ptr [ebp-20], 0
jmp .Lt_023E
.Lt_023F:
mov dword ptr [ebp-36], -1
.Lt_023E:
jmp .Lt_023C
.Lt_023D:
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .Lt_0241
mov eax, dword ptr [SYMB+98528]
mov dword ptr [ebp-20], eax
.Lt_0241:
.Lt_0240:
.Lt_023C:
cmp dword ptr [ebp-20], 0
je .Lt_0243
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-40], ebx
.Lt_0243:
.Lt_0242:
cmp dword ptr [ebp-40], 0
je .Lt_0245
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
and eax, 2
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0247
or dword ptr [ebp+12], 2
.Lt_0247:
.Lt_0246:
jmp .Lt_0244
.Lt_0245:
cmp dword ptr [ebp+24], 347
je .Lt_024A
.Lt_024B:
cmp dword ptr [ebp+24], 348
je .Lt_024A
.Lt_024C:
cmp dword ptr [ebp+24], 350
jne .Lt_0249
.Lt_024A:
cmp dword ptr [ebp-20], 0
jne .Lt_024E
push 0
push 0
push 160
call ERRREPORT
add esp, 12
jmp .Lt_024D
.Lt_024E:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 10
je .Lt_024F
push 0
push 0
push 168
call ERRREPORT
add esp, 12
.Lt_024F:
.Lt_024D:
mov eax, dword ptr [ebp+20]
and eax, 1
je .Lt_0251
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0250
.Lt_0251:
push 0
push -1
push dword ptr [ebp+24]
call HSKIPCOMPOUND
add esp, 12
.Lt_0250:
jmp .Lt_0229
.Lt_0249:
.Lt_0248:
push 258
push 2
lea eax, [ebp+8]
push eax
call HCHECKATTRIB
add esp, 12
push 259
push 2048
lea eax, [ebp+8]
push eax
call HCHECKATTRIB
add esp, 12
push 260
push 512
lea eax, [ebp+12]
push eax
call HCHECKATTRIB
add esp, 12
push 261
push 256
lea eax, [ebp+12]
push eax
call HCHECKATTRIB
add esp, 12
.Lt_0244:
cmp dword ptr [ebp+24], 347
je .Lt_0254
.Lt_0255:
cmp dword ptr [ebp+24], 348
jne .Lt_0253
.Lt_0254:
push 0
call SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-16], eax
jmp .Lt_0252
.Lt_0253:
cmp dword ptr [ebp+24], 349
jne .Lt_0256
.Lt_0257:
push -1
call COPERATOR
add esp, 4
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], -1
je .Lt_025A
.Lt_025B:
cmp dword ptr [ebp-52], 36
je .Lt_025A
.Lt_025C:
cmp dword ptr [ebp-52], 9
je .Lt_025A
.Lt_025D:
cmp dword ptr [ebp-52], 37
je .Lt_025A
.Lt_025E:
cmp dword ptr [ebp-52], 10
jne .Lt_0259
.Lt_025A:
push 0
push 0
push 157
call ERRREPORT
add esp, 12
mov dword ptr [ebp-52], 28
.Lt_0259:
.Lt_0258:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .Lt_0260
cmp dword ptr [ebp-40], 0
jne .Lt_0262
push 0
push -1
push 152
call ERRREPORT
add esp, 12
mov dword ptr [ebp-52], 28
.Lt_0262:
.Lt_0261:
jmp .Lt_025F
.Lt_0260:
cmp dword ptr [ebp-40], 0
je .Lt_0264
push offset Lt_0265
push -1
push 153
call ERRREPORT
add esp, 12
.Lt_0264:
.Lt_0263:
.Lt_025F:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp-72], ebx
jmp .Lt_0267
.Lt_0269:
mov ebx, dword ptr [ebp+12]
and ebx, 768
je .Lt_026B
push 0
push -1
push 233
call ERRREPORT
add esp, 12
and dword ptr [ebp+12], -769
.Lt_026B:
.Lt_026A:
mov ebx, dword ptr [ebp+8]
and ebx, 2048
je .Lt_026D
push 0
push -1
push 234
call ERRREPORT
add esp, 12
and dword ptr [ebp+8], -2049
.Lt_026D:
.Lt_026C:
or dword ptr [ebp+8], 2
and dword ptr [ebp+12], -3
jmp .Lt_0266
.Lt_026E:
cmp dword ptr [ebp-40], 0
je .Lt_0270
mov ebx, dword ptr [ebp+8]
and ebx, 2
je .Lt_0272
push 0
push -1
push 232
call ERRREPORT
add esp, 12
and dword ptr [ebp+8], -3
.Lt_0272:
.Lt_0271:
or dword ptr [ebp+12], 2
.Lt_0270:
.Lt_026F:
jmp .Lt_0266
.Lt_0267:
mov ebx, dword ptr [ebp-72]
add ebx, 4294967278
cmp ebx, 3
ja .Lt_026E
mov ebx, dword ptr [ebp-72]
jmp dword ptr [.LT_0273+ebx*4-72]
.LT_0273:
.int .Lt_0269
.int .Lt_0269
.int .Lt_0269
.int .Lt_0269
.Lt_0266:
push 0
call SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-16], eax
jmp .Lt_0252
.Lt_0256:
mov eax, dword ptr [ebp+24]
cmp eax, 345
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+24]
cmp ebx, 350
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
push eax
lea eax, [ebp-32]
push eax
push offset Lt_032B
push dword ptr [ebp-20]
call HGETID
add esp, 16
mov dword ptr [ebp-12], eax
push offset Lt_032B
call SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_0274:
.Lt_0252:
lea eax, [ebp+12]
push eax
call CNAKEDATTRIBUTE
add esp, 4
cmp dword ptr [ebp+24], 347
je .Lt_0277
.Lt_0278:
cmp dword ptr [ebp+24], 348
jne .Lt_0276
.Lt_0277:
mov dword ptr [ebp-44], 3
jmp .Lt_0275
.Lt_0276:
mov dword ptr [ebp-44], -1
.Lt_0279:
.Lt_0275:
push dword ptr [ebp-44]
call CPROCCALLINGCONV
add esp, 4
mov dword ptr [ebp-44], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 386
jne .Lt_027B
mov eax, dword ptr [ENV+888]
and eax, 16
test eax, eax
jne .Lt_027D
push 0
push 146
push 16
call ERRREPORTNOTALLOWED
add esp, 12
jmp .Lt_027C
.Lt_027D:
or dword ptr [ebp+12], 1
.Lt_027C:
push 2048
call LEXSKIPTOKEN
add esp, 4
.Lt_027B:
.Lt_027A:
mov eax, dword ptr [ebp+20]
and eax, 1
je .Lt_027F
call CLIBATTRIBUTE
.Lt_027F:
.Lt_027E:
call CALIASATTRIBUTE
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0281
mov ebx, dword ptr [SYMB+98528]
cmp dword ptr [ebp-20], ebx
je .Lt_0283
push -1
push dword ptr [ebp-20]
call SYMBNESTBEGIN
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], -1
.Lt_0283:
.Lt_0282:
.Lt_0281:
.Lt_0280:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp-44]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call CPARAMETERS
add esp, 16
cmp dword ptr [ebp+24], 348
jne .Lt_0285
.Lt_0286:
mov ebx, dword ptr [ebp-16]
movsx eax, word ptr [ebx+68]
cmp eax, 1
jle .Lt_0288
push 0
push 0
push 159
call ERRREPORT
add esp, 12
.Lt_0288:
.Lt_0287:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-24], 0
jmp .Lt_0284
.Lt_0285:
cmp dword ptr [ebp+24], 347
jne .Lt_0289
.Lt_028A:
push dword ptr [ebp+20]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call HCHECKISSELFCLONEBYVAL
add esp, 12
test eax, eax
je .Lt_028C
push 0
push -1
push 271
call ERRREPORT
add esp, 12
jmp .Lt_0229
.Lt_028C:
.Lt_028B:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+80]
cmp dword ptr [ebx+56], 4
jne .Lt_028E
push 143
push 0
push dword ptr [ebp-16]
call HPARAMERROR
add esp, 12
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+80]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+168]
mov dword ptr [ebx+80], ecx
mov ecx, dword ptr [ebp-28]
cmp dword ptr [ecx+168], 0
je .Lt_0290
mov ecx, dword ptr [ebp-28]
mov ebx, dword ptr [ecx+168]
mov dword ptr [ebx+172], 0
.Lt_0290:
.Lt_028F:
mov ebx, dword ptr [ebp-16]
movsx ecx, word ptr [ebx+68]
dec ecx
mov ebx, dword ptr [ebp-16]
mov word ptr [ebx+68], cx
push dword ptr [ebp-28]
call SYMBFREESYMBOL
add esp, 4
.Lt_028E:
.Lt_028D:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-24], 0
jmp .Lt_0284
.Lt_0289:
cmp dword ptr [ebp+24], 349
jne .Lt_0291
.Lt_0292:
cmp dword ptr [ebp-52], 29
jne .Lt_0294
.Lt_0295:
mov ecx, dword ptr [ebp-16]
movsx ebx, word ptr [ecx+68]
cmp ebx, 1
jne .Lt_0297
mov dword ptr [ebp-52], 54
.Lt_0297:
.Lt_0296:
jmp .Lt_0293
.Lt_0294:
cmp dword ptr [ebp-52], 28
jne .Lt_0298
.Lt_0299:
mov ebx, dword ptr [ebp-16]
movsx ecx, word ptr [ebx+68]
cmp ecx, 1
jne .Lt_029B
mov dword ptr [ebp-52], 53
.Lt_029B:
.Lt_029A:
jmp .Lt_0293
.Lt_0298:
cmp dword ptr [ebp-52], 30
jne .Lt_029C
.Lt_029D:
mov ecx, dword ptr [ebp-16]
movsx ebx, word ptr [ecx+68]
cmp ebx, 1
jne .Lt_029F
mov dword ptr [ebp-52], 76
.Lt_029F:
.Lt_029E:
.Lt_029C:
.Lt_0293:
mov ebx, dword ptr [ebp-52]
sal ebx, 4
mov ecx, dword ptr [AST_OPTB+ebx+4]
and ecx, 4
test ecx, ecx
je .Lt_02A1
mov dword ptr [ebp-32], 0
jmp .Lt_02A0
.Lt_02A1:
push -1
lea ecx, [ebp+12]
push ecx
call CBYREFATTRIBUTE
add esp, 8
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .Lt_02A3
lea eax, [ebp-24]
push eax
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCRETTYPE
add esp, 24
jmp .Lt_02A2
.Lt_02A3:
push 0
push 0
push 68
call ERRREPORT
add esp, 12
mov dword ptr [ebp-32], 8
.Lt_02A2:
.Lt_02A0:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-32]
mov dword ptr [eax+28], ecx
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-24]
mov dword ptr [ecx+32], eax
push dword ptr [ebp-16]
call SYMBPROCALLOCEXT
add esp, 4
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebp-52]
mov dword ptr [ecx+40], eax
cmp dword ptr [ebp-52], 0
jne .Lt_02A5
push dword ptr [ebp+20]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call HCHECKISSELFCLONEBYVAL
add esp, 12
test eax, eax
je .Lt_02A7
push 0
push -1
push 271
call ERRREPORT
add esp, 12
jmp .Lt_0229
.Lt_02A7:
.Lt_02A6:
.Lt_02A5:
.Lt_02A4:
push dword ptr [ebp-16]
push dword ptr [ebp-52]
push dword ptr [ebp-20]
call HCHECKOPOVLPARAMS
add esp, 12
test eax, eax
jne .Lt_02A9
jmp .Lt_0229
.Lt_02A9:
.Lt_02A8:
jmp .Lt_0284
.Lt_0291:
cmp dword ptr [ebp+24], 350
jne .Lt_02AA
.Lt_02AB:
push -1
lea eax, [ebp+12]
push eax
call CBYREFATTRIBUTE
add esp, 8
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .Lt_02AD
lea eax, [ebp-24]
push eax
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCRETTYPE
add esp, 24
mov eax, dword ptr [ebp-16]
movsx ecx, word ptr [eax+68]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-60], ecx
mov dword ptr [ebp-56], -1
jmp .Lt_02AC
.Lt_02AD:
mov ecx, dword ptr [ebp+12]
and ecx, 2048
je .Lt_02AF
push 0
push 0
push 68
call ERRREPORT
add esp, 12
and dword ptr [ebp+12], -2049
.Lt_02AF:
.Lt_02AE:
mov dword ptr [ebp-32], 0
mov ecx, dword ptr [ebp-16]
movsx eax, word ptr [ecx+68]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-60], eax
.Lt_02AC:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-32]
mov dword ptr [eax+28], ecx
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-24]
mov dword ptr [ecx+32], eax
push dword ptr [ebp-56]
push dword ptr [ebp-16]
call HCHECKPROPPARAMS
add esp, 8
jmp .Lt_0284
.Lt_02AA:
cmp dword ptr [ebp-40], 0
je .Lt_02B2
mov eax, dword ptr [ebp-16]
movsx ecx, word ptr [eax+68]
test ecx, ecx
jle .Lt_02B3
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+80]
mov ecx, dword ptr [eax+56]
cmp ecx, 4
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-72], ecx
jmp .Lt_0324
.Lt_02B3:
mov dword ptr [ebp-72], -1
.Lt_0324:
cmp dword ptr [ebp-72], 0
je .Lt_02B6
or dword ptr [ebp+12], 1
.Lt_02B6:
.Lt_02B5:
.Lt_02B2:
.Lt_02B1:
mov ecx, dword ptr [ebp+24]
cmp ecx, 346
sete cl
shr ecx, 1
sbb ecx, ecx
push ecx
lea ecx, [ebp+12]
push ecx
call CBYREFATTRIBUTE
add esp, 8
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .Lt_02B8
mov eax, dword ptr [ebp-32]
cmp eax, -2147483648
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+24]
cmp ecx, 345
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_02BA
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.Lt_02BA:
.Lt_02B9:
lea ecx, [ebp-24]
push ecx
lea ecx, [ebp-32]
push ecx
mov ecx, dword ptr [ebp+20]
and ecx, 1
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
push ecx
push dword ptr [ebp-16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCRETTYPE
add esp, 24
jmp .Lt_02B7
.Lt_02B8:
cmp dword ptr [ebp+24], 346
jne .Lt_02BC
mov ecx, dword ptr [ENV+888]
and ecx, 4194304
test ecx, ecx
je .Lt_02BE
cmp dword ptr [ebp-32], -2147483648
jne .Lt_02C0
push offset Lt_032B
call SYMBGETDEFTYPE
add esp, 4
mov dword ptr [ebp-32], eax
.Lt_02C0:
.Lt_02BF:
jmp .Lt_02BD
.Lt_02BE:
push 0
push 147
push 4194304
call ERRREPORTNOTALLOWED
add esp, 12
mov dword ptr [ebp-32], 8
.Lt_02BD:
jmp .Lt_02BB
.Lt_02BC:
mov dword ptr [ebp-32], 0
.Lt_02BB:
.Lt_02B7:
.Lt_02B0:
.Lt_0284:
mov eax, dword ptr [ebp+20]
and eax, 1
je .Lt_02C2
cmp dword ptr [ebp+24], 347
je .Lt_02C5
.Lt_02C6:
cmp dword ptr [ebp+24], 348
jne .Lt_02C4
.Lt_02C5:
push 0
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call SYMBADDCTOR
add esp, 24
mov dword ptr [ebp-16], eax
jmp .Lt_02C3
.Lt_02C4:
cmp dword ptr [ebp+24], 349
jne .Lt_02C7
.Lt_02C8:
push 0
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-52]
push dword ptr [ebp-16]
call SYMBADDOPERATOR
add esp, 36
mov dword ptr [ebp-16], eax
jmp .Lt_02C3
.Lt_02C7:
push 0
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push offset Lt_032B
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-16], eax
.Lt_02C9:
.Lt_02C3:
cmp dword ptr [ebp-16], 0
jne .Lt_02CB
push 0
push 0
push 4
call ERRREPORT
add esp, 12
jmp .Lt_0229
.Lt_02CB:
.Lt_02CA:
mov eax, dword ptr [ebp+20]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+24]
cmp ecx, 347
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_02CD
push dword ptr [ebp-16]
call COVERRIDEATTRIBUTE
add esp, 4
.Lt_02CD:
.Lt_02CC:
cmp dword ptr [ebp+24], 350
jne .Lt_02CF
push dword ptr [ebp-56]
push dword ptr [ebp-60]
push dword ptr [ebp-20]
call HSETUDTPROPERTYFLAGS
add esp, 12
.Lt_02CF:
.Lt_02CE:
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ecx
jmp .Lt_0229
.Lt_02C2:
.Lt_02C1:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 347
je .Lt_02D3
.Lt_02D4:
cmp dword ptr [ebp-72], 348
jne .Lt_02D2
.Lt_02D3:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+24]
cmp ecx, 346
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_02D6
push 0
push -1
push 17
call ERRREPORT
add esp, 12
jmp .Lt_02D5
.Lt_02D6:
mov ecx, dword ptr [ebp-16]
movsx eax, word ptr [ecx+68]
test eax, eax
je .Lt_02D7
push 0
push -1
push 1
call ERRREPORT
add esp, 12
jmp .Lt_02D5
.Lt_02D7:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 347
jne .Lt_02D9
or dword ptr [ebp-48], 65536
jmp .Lt_02D8
.Lt_02D9:
or dword ptr [ebp-48], 131072
.Lt_02D8:
.Lt_02D5:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 3
jne .Lt_02DB
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [eax+16548]
cmp dword ptr [ecx+8], 8
je .Lt_02DD
push 0
push 0
push 189
call ERRREPORT
add esp, 12
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_02DC
.Lt_02DD:
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VALINT
add esp, 4
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp-64]
cmp eax, 101
setl al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-64]
cmp ecx, 65535
setg cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_02DF
push 0
push 0
push 189
call ERRREPORT
add esp, 12
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_02DE
.Lt_02DF:
and dword ptr [ebp-64], 65535
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_02DE:
.Lt_02DC:
.Lt_02DB:
.Lt_02DA:
.Lt_02D2:
.Lt_02D0:
push 2048
push 307
call HMATCH
add esp, 8
test eax, eax
je .Lt_02E1
or dword ptr [ebp+12], 64
.Lt_02E1:
.Lt_02E0:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 341
jne .Lt_02E3
mov eax, dword ptr [ebp-48]
and eax, 196608
test eax, eax
je .Lt_02E5
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.Lt_02E5:
.Lt_02E4:
mov eax, dword ptr [ebp+8]
and eax, 64
je .Lt_02E7
push 0
push 0
push 17
call ERRREPORT
add esp, 12
and dword ptr [ebp+8], -65
.Lt_02E7:
.Lt_02E6:
push 2048
call LEXSKIPTOKEN
add esp, 4
push -1
push 28
call FBSETOPTION
add esp, 8
or dword ptr [ebp+8], 288
.Lt_02E3:
.Lt_02E2:
cmp dword ptr [ebp+24], 347
jne .Lt_02E9
.Lt_02EA:
push dword ptr [ebp-20]
call SYMBGETCOMPCTORHEAD
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_02E8
.Lt_02E9:
cmp dword ptr [ebp+24], 348
jne .Lt_02EB
.Lt_02EC:
push dword ptr [ebp-20]
call SYMBGETCOMPDTOR
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_02E8
.Lt_02EB:
cmp dword ptr [ebp+24], 349
jne .Lt_02ED
.Lt_02EE:
push dword ptr [ebp-52]
push dword ptr [ebp-20]
call SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-12], eax
.Lt_02ED:
.Lt_02E8:
cmp dword ptr [ebp-12], 0
jne .Lt_02F0
cmp dword ptr [ebp-36], 0
je .Lt_02F2
push 0
push 0
push 158
call ERRREPORT
add esp, 12
.Lt_02F2:
.Lt_02F1:
cmp dword ptr [ebp+24], 347
je .Lt_02F5
.Lt_02F6:
cmp dword ptr [ebp+24], 348
jne .Lt_02F4
.Lt_02F5:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call SYMBADDCTOR
add esp, 24
mov dword ptr [ebp-12], eax
jmp .Lt_02F3
.Lt_02F4:
cmp dword ptr [ebp+24], 349
jne .Lt_02F7
.Lt_02F8:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-52]
push dword ptr [ebp-16]
call SYMBADDOPERATOR
add esp, 36
mov dword ptr [ebp-12], eax
jmp .Lt_02F3
.Lt_02F7:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push offset Lt_032B
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-12], eax
.Lt_02F9:
.Lt_02F3:
cmp dword ptr [ebp-12], 0
jne .Lt_02FB
push 0
push -1
push 4
call ERRREPORT
add esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
call SYMBUNIQUELABEL
push eax
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-16], eax
jmp .Lt_02FA
.Lt_02FB:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.Lt_02FA:
jmp .Lt_02EF
.Lt_02F0:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+8]
and ecx, 32
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+24]
cmp eax, 350
sete al
shr eax, 1
sbb eax, eax
cmp ecx, eax
je .Lt_02FD
push 0
push -1
push 4
call ERRREPORT
add esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
call SYMBUNIQUELABEL
push eax
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-4], eax
jmp .Lt_0229
.Lt_02FD:
.Lt_02FC:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+8]
and ecx, 1
test ecx, ecx
jle .Lt_02FF
cmp dword ptr [ebp+24], 347
jne .Lt_0301
.Lt_0302:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call SYMBFINDCTORPROC
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_0300
.Lt_0301:
cmp dword ptr [ebp+24], 349
jne .Lt_0303
.Lt_0304:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-52]
call SYMBFINDOPOVLPROC
add esp, 12
mov dword ptr [ebp-12], eax
jmp .Lt_0300
.Lt_0303:
cmp dword ptr [ebp-56], 0
je .Lt_0306
mov dword ptr [ebp-72], 1
jmp .Lt_0325
.Lt_0306:
mov dword ptr [ebp-72], 0
.Lt_0325:
push dword ptr [ebp-72]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call SYMBFINDOVERLOADPROC
add esp, 12
mov dword ptr [ebp-12], eax
.Lt_0305:
.Lt_0300:
or dword ptr [ebp+12], 1
.Lt_02FF:
.Lt_02FE:
cmp dword ptr [ebp-12], 0
jne .Lt_0309
cmp dword ptr [ebp-36], 0
je .Lt_030B
push 0
push 0
push 158
call ERRREPORT
add esp, 12
.Lt_030B:
.Lt_030A:
cmp dword ptr [ebp+24], 347
je .Lt_030E
.Lt_030F:
cmp dword ptr [ebp+24], 348
jne .Lt_030D
.Lt_030E:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call SYMBADDCTOR
add esp, 24
mov dword ptr [ebp-12], eax
jmp .Lt_030C
.Lt_030D:
cmp dword ptr [ebp+24], 349
jne .Lt_0310
.Lt_0311:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-52]
push dword ptr [ebp-16]
call SYMBADDOPERATOR
add esp, 36
mov dword ptr [ebp-12], eax
jmp .Lt_030C
.Lt_0310:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push offset Lt_032B
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-12], eax
.Lt_0312:
.Lt_030C:
cmp dword ptr [ebp-12], 0
jne .Lt_0314
push 0
push -1
push 4
call ERRREPORT
add esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
call SYMBUNIQUELABEL
push eax
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-4], eax
jmp .Lt_0229
.Lt_0314:
.Lt_0313:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_0308
.Lt_0309:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+12]
and ecx, 8
test ecx, ecx
je .Lt_0316
push 0
push -1
push 4
call ERRREPORT
add esp, 12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
call SYMBUNIQUELABEL
push eax
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-4], eax
jmp .Lt_0229
.Lt_0316:
.Lt_0315:
push dword ptr [ebp-44]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call HCHECKPROTOTYPE
add esp, 24
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call HCHECKATTRIBS
add esp, 12
mov eax, dword ptr [ebp-48]
and eax, 196608
je .Lt_0318
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
je .Lt_031A
push 0
push -1
push 17
call ERRREPORT
add esp, 12
.Lt_031A:
.Lt_0319:
.Lt_0318:
.Lt_0317:
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+12], 8
.Lt_0308:
.Lt_02EF:
mov ecx, dword ptr [ebp-48]
and ecx, 65536
je .Lt_031C
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+4]
and eax, 6291456
je .Lt_031E
push 0
push -1
push 205
call ERRREPORT
add esp, 12
.Lt_031E:
.Lt_031D:
push dword ptr [ebp-16]
call SYMBADDGLOBALCTOR
add esp, 4
push dword ptr [ebp-16]
call SYMBPROCALLOCEXT
add esp, 4
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebp-64]
mov dword ptr [ecx+56], eax
jmp .Lt_031B
.Lt_031C:
mov eax, dword ptr [ebp-48]
and eax, 131072
je .Lt_031F
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+4]
and ecx, 6291456
je .Lt_0321
push 0
push -1
push 206
call ERRREPORT
add esp, 12
.Lt_0321:
.Lt_0320:
push dword ptr [ebp-16]
call SYMBADDGLOBALDTOR
add esp, 4
push dword ptr [ebp-16]
call SYMBPROCALLOCEXT
add esp, 4
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+112]
mov ecx, dword ptr [ebp-64]
mov dword ptr [eax+56], ecx
.Lt_031F:
.Lt_031B:
cmp dword ptr [ebp+24], 350
jne .Lt_0323
push dword ptr [ebp-56]
push dword ptr [ebp-60]
push dword ptr [ebp-20]
call HSETUDTPROPERTYFLAGS
add esp, 12
.Lt_0323:
.Lt_0322:
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ecx
.Lt_0229:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_032B,129

.section .text
.balign 16

.globl HDISALLOWSTATICATTRIB
HDISALLOWSTATICATTRIB:
push ebp
mov ebp, esp
push ebx
.Lt_0340:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 2
test ebx, ebx
je .Lt_0343
push 0
push 0
push 213
call ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
and dword ptr [ebx], -3
.Lt_0343:
.Lt_0342:
.Lt_0341:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HDISALLOWVIRTUALCTOR
HDISALLOWVIRTUALCTOR:
push ebp
mov ebp, esp
push ebx
.Lt_0344:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 768
je .Lt_0347
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 512
je .Lt_0349
push 0
push 0
push 210
call ERRREPORT
add esp, 12
jmp .Lt_0348
.Lt_0349:
push 0
push 0
push 211
call ERRREPORT
add esp, 12
.Lt_0348:
mov eax, dword ptr [ebp+12]
and dword ptr [eax], -724
.Lt_0347:
.Lt_0346:
.Lt_0345:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HDISALLOWABSTRACTDTOR
HDISALLOWABSTRACTDTOR:
push ebp
mov ebp, esp
push ebx
.Lt_034A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 512
je .Lt_034D
push 0
push 0
push 212
call ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+12]
and dword ptr [ebx], -513
.Lt_034D:
.Lt_034C:
.Lt_034B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HDISALLOWCONSTCTORDTOR
HDISALLOWCONSTCTORDTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_034E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 2048
je .Lt_0351
push 0
push 0
cmp dword ptr [ebp+8], 347
jne .Lt_0352
mov dword ptr [ebp-4], 314
jmp .Lt_0354
.Lt_0352:
mov dword ptr [ebp-4], 315
.Lt_0354:
push dword ptr [ebp-4]
call ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+12]
and dword ptr [ebx], -2049
.Lt_0351:
.Lt_0350:
.Lt_034F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CPROCSTMTBEGIN
CPROCSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0355:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
jne .Lt_0358
cmp dword ptr [ENV+936], 0
je .Lt_035A
or dword ptr [ebp+8], 32
jmp .Lt_0359
.Lt_035A:
or dword ptr [ebp+8], 64
.Lt_0359:
.Lt_0358:
.Lt_0357:
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
push 0
call CMETHODATTRIBUTES
add esp, 12
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-20], eax
jmp .Lt_035C
.Lt_035E:
jmp .Lt_035B
.Lt_035F:
mov eax, dword ptr [ENV+888]
and eax, 64
test eax, eax
jne .Lt_0361
push 0
push 146
push 64
call ERRREPORTNOTALLOWED
add esp, 12
jmp .Lt_0360
.Lt_0361:
or dword ptr [ebp+12], 4
.Lt_0360:
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call HDISALLOWSTATICATTRIB
add esp, 8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call HDISALLOWVIRTUALCTOR
add esp, 8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
push dword ptr [ebp-4]
call HDISALLOWCONSTCTORDTOR
add esp, 12
jmp .Lt_035B
.Lt_0362:
mov eax, dword ptr [ENV+888]
and eax, 64
test eax, eax
jne .Lt_0364
push 0
push 146
push 64
call ERRREPORTNOTALLOWED
add esp, 12
jmp .Lt_0363
.Lt_0364:
or dword ptr [ebp+12], 8
.Lt_0363:
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call HDISALLOWSTATICATTRIB
add esp, 8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call HDISALLOWABSTRACTDTOR
add esp, 8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
push dword ptr [ebp-4]
call HDISALLOWCONSTCTORDTOR
add esp, 12
jmp .Lt_035B
.Lt_0365:
mov eax, dword ptr [ENV+888]
and eax, 32
test eax, eax
jne .Lt_0367
push 0
push 146
push 32
call ERRREPORTNOTALLOWED
add esp, 12
.Lt_0367:
.Lt_0366:
jmp .Lt_035B
.Lt_0368:
mov eax, dword ptr [ENV+888]
and eax, 64
test eax, eax
jne .Lt_036A
push 0
push 146
push 64
call ERRREPORTNOTALLOWED
add esp, 12
.Lt_036A:
.Lt_0369:
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call HDISALLOWSTATICATTRIB
add esp, 8
jmp .Lt_035B
.Lt_036B:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0356
jmp .Lt_035B
.Lt_035C:
mov eax, dword ptr [ebp-20]
add eax, 4294966951
cmp eax, 5
ja .Lt_036B
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_036C+eax*4-1380]
.LT_036C:
.int .Lt_035E
.int .Lt_035E
.int .Lt_035F
.int .Lt_0362
.int .Lt_0365
.int .Lt_0368
.Lt_035B:
push 2
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_036E
push 0
push -1
push dword ptr [ebp-4]
call HSKIPCOMPOUND
add esp, 12
jmp .Lt_0356
.Lt_036E:
.Lt_036D:
push 2048
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-4]
push 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCHEADER
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0370
cmp dword ptr [ebp-8], 0
je .Lt_0372
push -1
call SYMBNESTEND
add esp, 4
.Lt_0372:
.Lt_0371:
push 0
push -1
push dword ptr [ebp-4]
call HSKIPCOMPOUND
add esp, 12
jmp .Lt_0356
.Lt_0370:
.Lt_036F:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+8]
and ebx, 512
test ebx, ebx
je .Lt_0374
push 0
push 0
push 224
call ERRREPORT
add esp, 12
.Lt_0374:
.Lt_0373:
push 0
push dword ptr [ebp-12]
call ASTPROCBEGIN
add esp, 8
push 33
push 346
call CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [AST+40]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+36]
mov dword ptr [ebx+20], ecx
.Lt_0356:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CPROCSTMTEND
CPROCSTMTEND:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0375:
push -1
push 346
call CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0378
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0376
.Lt_0378:
.Lt_0377:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
mov eax, dword ptr [ebp-4]
push dword ptr [eax+12]
call HMATCH
add esp, 8
test eax, eax
jne .Lt_037A
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 345
jne .Lt_037D
.Lt_037E:
push 0
push 0
push 125
call ERRREPORT
add esp, 12
jmp .Lt_037B
.Lt_037D:
cmp dword ptr [ebp-12], 346
jne .Lt_037F
.Lt_0380:
push 0
push 0
push 126
call ERRREPORT
add esp, 12
jmp .Lt_037B
.Lt_037F:
cmp dword ptr [ebp-12], 347
jne .Lt_0381
.Lt_0382:
push 0
push 0
push 127
call ERRREPORT
add esp, 12
jmp .Lt_037B
.Lt_0381:
cmp dword ptr [ebp-12], 348
jne .Lt_0383
.Lt_0384:
push 0
push 0
push 128
call ERRREPORT
add esp, 12
jmp .Lt_037B
.Lt_0383:
cmp dword ptr [ebp-12], 349
jne .Lt_0385
.Lt_0386:
push 0
push 0
push 129
call ERRREPORT
add esp, 12
jmp .Lt_037B
.Lt_0385:
cmp dword ptr [ebp-12], 350
jne .Lt_0387
.Lt_0388:
push 0
push 0
push 130
call ERRREPORT
add esp, 12
.Lt_0387:
.Lt_037B:
.Lt_037A:
.Lt_0379:
push dword ptr [PARSER+104]
call SYMBGETPROCRESULT
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_038A
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 2
test ebx, ebx
jne .Lt_038C
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+8]
and eax, 128
test eax, eax
jne .Lt_038E
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .Lt_0390
push 0
push 0
push 316
call ERRREPORT
add esp, 12
jmp .Lt_038F
.Lt_0390:
push 0
push 1
push 0
push 13
call ERRREPORTWARN
add esp, 16
.Lt_038F:
.Lt_038E:
.Lt_038D:
.Lt_038C:
.Lt_038B:
.Lt_038A:
.Lt_0389:
push 0
call ASTPROCEND
add esp, 4
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+16], 0
je .Lt_0392
push -1
call SYMBNESTEND
add esp, 4
.Lt_0392:
.Lt_0391:
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 4
.Lt_0376:
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
HPARAMERROR:
push ebp
mov ebp, esp
.Lt_008D:
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ERRREPORTPARAM
add esp, 16
.Lt_008E:
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKPROTOTYPE:
push ebp
mov ebp, esp
sub esp, 56
push ebx
push esi
.Lt_008F:
cmp dword ptr [ebp+16], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_0092
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+20]
push 0
push dword ptr [ebp+16]
call fb_StrCompare
add esp, 16
test eax, eax
je .Lt_0094
push 0
push 1
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 2
push offset Lt_0095
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset Lt_0095
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
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-56]
push 311
call ERRREPORTEX
add esp, 20
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 4
.Lt_0094:
.Lt_0093:
.Lt_0092:
.Lt_0091:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+20]
cmp ecx, dword ptr [eax+28]
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
cmp ebx, dword ptr [ebp+24]
setne al
shr eax, 1
sbb eax, eax
or ecx, eax
je .Lt_009A
push 0
push -1
push 40
call ERRREPORT
add esp, 12
.Lt_009A:
.Lt_0099:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+96]
cmp ecx, 2
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov esi, dword ptr [ebx+96]
cmp esi, dword ptr [eax+96]
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
je .Lt_009C
push 0
push 1
push 0
push 28
call ERRREPORTWARN
add esp, 16
.Lt_009C:
.Lt_009B:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+28]
cmp dword ptr [esi+84], ecx
je .Lt_009E
push 0
push -1
push 41
call ERRREPORT
add esp, 12
.Lt_009E:
.Lt_009D:
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+76]
mov dword ptr [ebp-4], esi
mov esi, dword ptr [ebp+12]
movsx ecx, word ptr [esi+68]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+12]
mov esi, dword ptr [ecx+8]
and esi, 2
test esi, esi
je .Lt_00A0
dec dword ptr [ebp-12]
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [esi+172]
mov dword ptr [ebp-4], ecx
.Lt_00A0:
.Lt_009F:
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+76]
mov dword ptr [ebp-8], esi
mov esi, dword ptr [ebp+8]
movsx ecx, word ptr [esi+68]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+8]
and esi, 2
test esi, esi
je .Lt_00A2
dec dword ptr [ebp-16]
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [esi+172]
mov dword ptr [ebp-8], ecx
.Lt_00A2:
.Lt_00A1:
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-16], ecx
je .Lt_00A4
push 0
push -1
push 1
call ERRREPORT
add esp, 12
.Lt_00A4:
.Lt_00A3:
mov dword ptr [ebp-20], 1
.Lt_00A5:
mov ecx, dword ptr [ebp-20]
cmp ecx, dword ptr [ebp-16]
setle cl
shr ecx, 1
sbb ecx, ecx
mov esi, dword ptr [ebp-20]
cmp esi, dword ptr [ebp-12]
setle dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
je .Lt_00A6
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [esi+28]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-24]
and ecx, 480
je .Lt_00A7
mov dword ptr [ebp-28], 24
jmp .Lt_0393
.Lt_00A7:
mov ecx, dword ptr [ebp-24]
and ecx, 31
mov dword ptr [ebp-28], ecx
.Lt_0393:
cmp dword ptr [ebp-28], 0
jne .Lt_00AA
mov ecx, dword ptr [ebp-4]
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ecx+28]
mov dword ptr [esi+28], eax
mov eax, dword ptr [ebp-4]
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
mov dword ptr [esi+32], ecx
jmp .Lt_00A9
.Lt_00AA:
mov ecx, dword ptr [ebp-4]
mov esi, dword ptr [ebp-24]
cmp dword ptr [ecx+28], esi
je .Lt_00AC
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call HPARAMERROR
add esp, 12
jmp .Lt_00AB
.Lt_00AC:
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+32]
cmp dword ptr [esi+32], eax
je .Lt_00AD
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call HPARAMERROR
add esp, 12
.Lt_00AD:
.Lt_00AB:
.Lt_00A9:
mov eax, dword ptr [ebp-4]
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [esi+56]
cmp dword ptr [eax+56], ecx
je .Lt_00AF
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call HPARAMERROR
add esp, 12
.Lt_00AF:
.Lt_00AE:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+56], 3
jne .Lt_00B1
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+68]
cmp dword ptr [ecx+68], esi
je .Lt_00B3
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call HPARAMERROR
add esp, 12
.Lt_00B3:
.Lt_00B2:
.Lt_00B1:
.Lt_00B0:
mov esi, dword ptr [ebp-4]
cmp dword ptr [esi+56], 4
je .Lt_00B5
mov esi, dword ptr [ebp-4]
push dword ptr [esi+16]
push dword ptr [ebp-8]
call SYMBSETNAME
add esp, 8
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [esi+4]
and ecx, 1048576
test ecx, ecx
je .Lt_00B7
mov ecx, dword ptr [ebp-8]
or dword ptr [ecx+4], 1048576
jmp .Lt_00B6
.Lt_00B7:
mov ecx, dword ptr [ebp-8]
and dword ptr [ecx+4], -1048577
.Lt_00B6:
.Lt_00B5:
.Lt_00B4:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ecx+64], 0
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+64], 0
setne al
shr eax, 1
sbb eax, eax
and esi, eax
je .Lt_00B9
mov eax, dword ptr [ebp-4]
push dword ptr [eax+64]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call ASTISEQUALPARAMINIT
add esp, 8
test eax, eax
jne .Lt_00BB
push 36
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call ERRREPORTPARAMWARN
add esp, 16
.Lt_00BB:
.Lt_00BA:
.Lt_00B9:
.Lt_00B8:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+172]
mov dword ptr [ebp-8], esi
mov esi, dword ptr [ebp-4]
mov eax, dword ptr [esi+172]
mov dword ptr [ebp-4], eax
inc dword ptr [ebp-20]
jmp .Lt_00A5
.Lt_00A6:
.Lt_0090:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKATTRIBS:
push ebp
mov ebp, esp
push ebx
.Lt_00BC:
mov eax, dword ptr [ebp+16]
and eax, 2048
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+8]
and ecx, 2048
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
cmp eax, ecx
je .Lt_00BF
push 0
push -1
push 20
call ERRREPORT
add esp, 12
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+8]
and eax, 2048
test eax, eax
je .Lt_00C1
or dword ptr [ebp+16], 2048
jmp .Lt_00C0
.Lt_00C1:
and dword ptr [ebp+16], -2049
.Lt_00C0:
.Lt_00BF:
.Lt_00BE:
mov eax, dword ptr [ebp+12]
and eax, 2
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 2
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00C3
push 0
push 0
push 217
call ERRREPORT
add esp, 12
.Lt_00C3:
.Lt_00C2:
mov ebx, dword ptr [ebp+12]
and ebx, 2048
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 2048
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_00C5
push 0
push 0
push 218
call ERRREPORT
add esp, 12
.Lt_00C5:
.Lt_00C4:
mov ecx, dword ptr [ebp+16]
and ecx, 512
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 512
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_00C7
push 0
push 0
push 220
call ERRREPORT
add esp, 12
jmp .Lt_00C6
.Lt_00C7:
mov eax, dword ptr [ebp+16]
and eax, 256
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+8]
and ebx, 256
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00C8
push 0
push 0
push 219
call ERRREPORT
add esp, 12
.Lt_00C8:
.Lt_00C6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
or dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
or dword ptr [eax+8], ebx
.Lt_00BD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKIDTOKEN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C9:
mov dword ptr [ebp-4], 0
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00CC
.Lt_00CE:
mov eax, dword ptr [ENV+888]
and eax, 524288
test eax, eax
je .Lt_00D0
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .Lt_00D2
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .Lt_00D4
push 0
push 0
push 90
call ERRREPORT
add esp, 12
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
.Lt_00D1:
.Lt_00D0:
.Lt_00CF:
jmp .Lt_00CB
.Lt_00D5:
cmp dword ptr [ENV+136], 3
je .Lt_00D7
mov ebx, dword ptr [ebp+8]
not ebx
cmp dword ptr [PARSER+96], 0
seta al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_00D9
push 0
push 0
push 4
call ERRREPORT
add esp, 12
jmp .Lt_00CA
.Lt_00D9:
.Lt_00D8:
.Lt_00D7:
.Lt_00D6:
jmp .Lt_00CB
.Lt_00DA:
cmp dword ptr [ENV+136], 3
je .Lt_00DC
push 0
push 0
push 4
call ERRREPORT
add esp, 12
jmp .Lt_00CA
.Lt_00DC:
.Lt_00DB:
jmp .Lt_00CB
.Lt_00DD:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
jmp .Lt_00CA
jmp .Lt_00CB
.Lt_00CC:
cmp dword ptr [ebp-8], 5
ja .Lt_00DD
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_00DE+eax*4]
.LT_00DE:
.int .Lt_00CE
.int .Lt_00DA
.int .Lt_00D5
.int .Lt_00DD
.int .Lt_00DD
.int .Lt_00DA
.Lt_00CB:
mov dword ptr [ebp-4], -1
.Lt_00CA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETID:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DF:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_00E2
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov dword ptr [ebp-8], eax
jmp .Lt_00E1
.Lt_00E2:
push 0
push 0
call LEXGETTEXT
push eax
push dword ptr [ebp+8]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00E1:
cmp dword ptr [ebp-8], 0
je .Lt_00E4
push 3
push dword ptr [ebp-8]
call SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_00E3
.Lt_00E4:
mov dword ptr [ebp-12], 0
.Lt_00E3:
cmp dword ptr [ebp+8], 0
setne al
shr eax, 1
sbb eax, eax
push eax
call HCHECKIDTOKEN
add esp, 4
test eax, eax
jne .Lt_00E6
push 0
push 0
call SYMBUNIQUELABEL
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -2147483648
push 0
push 0
push 0
push 40
call HSKIPUNTIL
add esp, 16
jmp .Lt_00E0
.Lt_00E6:
.Lt_00E5:
push 0
push 0
call LEXGETTEXT
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 20
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+8]
mov dword ptr [eax], ecx
cmp dword ptr [ebp+20], 0
je .Lt_00E8
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx], -2147483648
je .Lt_00EA
push 0
push 0
push 25
call ERRREPORT
add esp, 12
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], -2147483648
mov ecx, dword ptr [LEX+839936]
mov eax, dword ptr [ecx+16548]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [eax+16548]
mov dword ptr [ecx+4124], 0
.Lt_00EA:
.Lt_00E9:
.Lt_00E8:
.Lt_00E7:
push 4096
call LEXSKIPTOKEN
add esp, 4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
.Lt_00E0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
CNAKEDATTRIBUTE:
push ebp
mov ebp, esp
.Lt_013E:
push 6
push offset Lt_0140
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0142
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
or dword ptr [eax], 128
.Lt_0142:
.Lt_0141:
.Lt_013F:
mov esp, ebp
pop ebp
ret
.balign 16
COVERRIDEATTRIBUTE:
push ebp
mov ebp, esp
.Lt_0143:
push 0
push dword ptr [ebp+8]
call SYMBPROCCHECKOVERRIDDEN
add esp, 8
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 257
jne .Lt_0146
jmp .Lt_0144
.Lt_0146:
.Lt_0145:
push 9
push offset Lt_0147
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0149
push dword ptr [ebp+8]
call SYMBPROCGETOVERRIDDEN
add esp, 4
test eax, eax
jne .Lt_014B
push 0
push 0
push 223
call ERRREPORT
add esp, 12
.Lt_014B:
.Lt_014A:
push 2048
call LEXSKIPTOKEN
add esp, 4
.Lt_0149:
.Lt_0148:
.Lt_0144:
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKATTRIB:
push ebp
mov ebp, esp
push ebx
.Lt_0152:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
and ebx, dword ptr [eax]
je .Lt_0155
push 0
push -1
push dword ptr [ebp+16]
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
not ebx
and dword ptr [eax], ebx
.Lt_0155:
.Lt_0154:
.Lt_0153:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKOPOVLPARAMS:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.Lt_0156:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-4], 0
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov eax, dword ptr [AST_OPTB+ebx]
mov dword ptr [ebp-36], eax
jmp .Lt_0159
.Lt_015B:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .Lt_015C
mov dword ptr [ebp-40], 0
jmp .Lt_03A6
.Lt_015C:
mov dword ptr [ebp-40], 1
.Lt_03A6:
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .Lt_0158
.Lt_015E:
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .Lt_0158
.Lt_015F:
mov dword ptr [ebp-16], 1
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .Lt_0158
.Lt_0160:
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov eax, dword ptr [AST_OPTB+ebx+4]
and eax, 1
test eax, eax
je .Lt_0162
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 1
cmp dword ptr [ebp+12], 26
jne .Lt_0164
inc dword ptr [ebp-16]
inc dword ptr [ebp-20]
.Lt_0164:
.Lt_0163:
jmp .Lt_0161
.Lt_0162:
mov dword ptr [ebp-16], 2
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
.Lt_0161:
jmp .Lt_0158
.Lt_0165:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .Lt_0166
mov dword ptr [ebp-40], 1
jmp .Lt_03A7
.Lt_0166:
mov dword ptr [ebp-40], 2
.Lt_03A7:
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .Lt_0158
.Lt_0159:
mov ebx, dword ptr [ebp-36]
add ebx, 4294967294
cmp ebx, 12
ja .Lt_0165
mov ebx, dword ptr [ebp-36]
jmp dword ptr [.LT_0168+ebx*4-8]
.LT_0168:
.int .Lt_015F
.int .Lt_0165
.int .Lt_015B
.int .Lt_015E
.int .Lt_015B
.int .Lt_0165
.int .Lt_0165
.int .Lt_0165
.int .Lt_0165
.int .Lt_0165
.int .Lt_015F
.int .Lt_0165
.int .Lt_0160
.Lt_0158:
mov ebx, dword ptr [ebp+16]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-12], 0
je .Lt_0169
mov dword ptr [ebp-32], 1
jmp .Lt_03A8
.Lt_0169:
mov dword ptr [ebp-32], 0
.Lt_03A8:
mov eax, dword ptr [ebp-24]
sub eax, dword ptr [ebp-32]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
cmp eax, dword ptr [ebp-16]
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-28]
cmp ebx, dword ptr [ebp-20]
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_016C
push 0
push -1
push 1
call ERRREPORT
add esp, 12
jmp .Lt_0157
.Lt_016C:
.Lt_016B:
cmp dword ptr [ebp-24], 0
jle .Lt_016E
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+56], 4
jne .Lt_0170
push 143
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_0170:
.Lt_016F:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+64], 0
je .Lt_0172
push 145
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_0172:
.Lt_0171:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax]
mov dword ptr [ebp-40], ebx
jmp .Lt_0174
.Lt_0176:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 20
je .Lt_017A
.Lt_017B:
cmp dword ptr [ebp-44], 10
jne .Lt_0179
.Lt_017A:
jmp .Lt_0177
.Lt_0179:
push 137
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_017C:
.Lt_0177:
jmp .Lt_0173
.Lt_017D:
cmp dword ptr [ebp-24], 1
jle .Lt_017F
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+56], 4
jne .Lt_0181
push 143
push 2
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_0181:
.Lt_0180:
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+64], 0
je .Lt_0183
push 145
push 2
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_0183:
.Lt_0182:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 20
je .Lt_0187
.Lt_0188:
cmp dword ptr [ebp-48], 10
jne .Lt_0186
.Lt_0187:
jmp .Lt_0184
.Lt_0186:
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], 20
je .Lt_018D
.Lt_018E:
cmp dword ptr [ebp-52], 10
jne .Lt_018C
.Lt_018D:
jmp .Lt_018A
.Lt_018C:
push 137
push 2
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_018F:
.Lt_018A:
.Lt_0189:
.Lt_0184:
.Lt_017F:
.Lt_017E:
jmp .Lt_0173
.Lt_0190:
cmp dword ptr [ebp+12], 18
je .Lt_0193
.Lt_0194:
cmp dword ptr [ebp+12], 19
jne .Lt_0192
.Lt_0193:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
je .Lt_0195
mov dword ptr [ebp-44], 24
jmp .Lt_03A9
.Lt_0195:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_03A9:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .Lt_0198
mov dword ptr [ebp-48], -1
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
test eax, eax
je .Lt_019A
mov dword ptr [ebp-48], 0
.Lt_019A:
.Lt_0199:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], 4
je .Lt_019E
.Lt_019F:
cmp dword ptr [ebp-52], 7
jne .Lt_019D
.Lt_019E:
mov dword ptr [ebp-48], 0
.Lt_019D:
.Lt_019B:
cmp dword ptr [ebp-48], 0
jne .Lt_01A1
push 235
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_01A1:
.Lt_01A0:
jmp .Lt_0197
.Lt_0198:
push 235
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_0197:
jmp .Lt_0191
.Lt_0192:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
je .Lt_01A3
mov dword ptr [ebp-44], 24
jmp .Lt_03AA
.Lt_01A3:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_03AA:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 0
jne .Lt_01A6
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
test eax, eax
jne .Lt_01A8
push 236
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_01A8:
.Lt_01A7:
jmp .Lt_01A5
.Lt_01A6:
push 236
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_01A5:
.Lt_01A2:
.Lt_0191:
jmp .Lt_0173
.Lt_01A9:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-44], eax
jmp .Lt_01AB
.Lt_01AD:
cmp dword ptr [ebp-24], 1
jle .Lt_01AF
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebx+56], 4
jne .Lt_01B1
push 143
push 2
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_01B1:
.Lt_01B0:
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebx+64], 0
je .Lt_01B3
push 145
push 2
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_01B3:
.Lt_01B2:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 20
je .Lt_01B7
.Lt_01B8:
cmp dword ptr [ebp-52], 10
jne .Lt_01B6
.Lt_01B7:
jmp .Lt_01B4
.Lt_01B6:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-56], ebx
cmp dword ptr [ebp-56], 20
je .Lt_01BD
.Lt_01BE:
cmp dword ptr [ebp-56], 10
jne .Lt_01BC
.Lt_01BD:
jmp .Lt_01BA
.Lt_01BC:
push 137
push 2
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_01BF:
.Lt_01BA:
.Lt_01B9:
.Lt_01B4:
.Lt_01AF:
.Lt_01AE:
jmp .Lt_01AA
.Lt_01C0:
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov eax, dword ptr [AST_OPTB+ebx+4]
and eax, 1
test eax, eax
je .Lt_01C2
cmp dword ptr [ebp-24], 1
jle .Lt_01C4
cmp dword ptr [ebp-12], 0
je .Lt_01C6
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-36], ebx
.Lt_01C6:
.Lt_01C5:
cmp dword ptr [ebp-36], 0
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_01C8
push 142
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_01C8:
.Lt_01C7:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+56], 4
jne .Lt_01CA
push 143
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_01CA:
.Lt_01C9:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+64], 0
je .Lt_01CC
push 145
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_01CC:
.Lt_01CB:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ebx, ecx
setne bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp-36]
mov eax, dword ptr [ecx+32]
cmp eax, dword ptr [ebp+8]
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_01CE
push 142
push 1
push dword ptr [ebp+16]
call HPARAMERROR
add esp, 12
jmp .Lt_0157
.Lt_01CE:
.Lt_01CD:
.Lt_01C4:
.Lt_01C3:
.Lt_01C2:
.Lt_01C1:
jmp .Lt_01AA
.Lt_01CF:
jmp .Lt_01AA
.Lt_01AB:
mov ecx, dword ptr [ebp-44]
add ecx, 4294967272
cmp ecx, 26
ja .Lt_01CF
mov ecx, dword ptr [ebp-44]
jmp dword ptr [.LT_01D0+ecx*4-96]
.LT_01D0:
.int .Lt_01C0
.int .Lt_01C0
.int .Lt_01C0
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01CF
.int .Lt_01AD
.int .Lt_01AD
.int .Lt_01AD
.int .Lt_01AD
.int .Lt_01AD
.int .Lt_01AD
.Lt_01AA:
jmp .Lt_0173
.Lt_0174:
mov ecx, dword ptr [ebp-40]
add ecx, 4294967293
cmp ecx, 11
ja .Lt_0173
mov ecx, dword ptr [ebp-40]
jmp dword ptr [.LT_01D1+ecx*4-12]
.LT_01D1:
.int .Lt_017D
.int .Lt_0176
.int .Lt_0176
.int .Lt_0176
.int .Lt_0173
.int .Lt_0173
.int .Lt_0173
.int .Lt_0173
.int .Lt_0173
.int .Lt_0190
.int .Lt_0173
.int .Lt_01A9
.Lt_0173:
.Lt_016E:
.Lt_016D:
mov dword ptr [ebp-8], 0
mov ecx, dword ptr [ebp+12]
sal ecx, 4
mov ebx, dword ptr [AST_OPTB+ecx]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 5
jne .Lt_01D4
.Lt_01D5:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ebx+32], ecx
jne .Lt_01D7
push 0
push -1
push 140
call ERRREPORT
add esp, 12
jmp .Lt_0157
.Lt_01D7:
.Lt_01D6:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_01D2
.Lt_01D4:
cmp dword ptr [ebp-36], 4
jne .Lt_01D8
.Lt_01D9:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .Lt_01D2
.Lt_01D8:
cmp dword ptr [ebp-36], 2
jne .Lt_01DA
.Lt_01DB:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_01D2
.Lt_01DA:
cmp dword ptr [ebp-36], 6
jne .Lt_01DC
.Lt_01DD:
cmp dword ptr [ebp+12], 22
jne .Lt_01DF
.Lt_01E0:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 480
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .Lt_01DE
.Lt_01DF:
cmp dword ptr [ebp+12], 77
jne .Lt_01E1
.Lt_01E2:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp ebx, 20
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_01DE
.Lt_01E1:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
.Lt_01E3:
.Lt_01DE:
jmp .Lt_01D2
.Lt_01DC:
cmp dword ptr [ebp-36], 12
jne .Lt_01E4
.Lt_01E5:
cmp dword ptr [ebp+12], 18
je .Lt_01E8
.Lt_01E9:
cmp dword ptr [ebp+12], 19
jne .Lt_01E7
.Lt_01E8:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
and ebx, 480
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_01E6
.Lt_01E7:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
.Lt_01EA:
.Lt_01E6:
jmp .Lt_01D2
.Lt_01E4:
cmp dword ptr [ebp-36], 3
jne .Lt_01EB
.Lt_01EC:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-40], ecx
jmp .Lt_01EE
.Lt_01F0:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_01ED
.Lt_01F1:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .Lt_01ED
.Lt_01F2:
mov ecx, dword ptr [ebp+12]
sal ecx, 4
mov ebx, dword ptr [AST_OPTB+ecx+4]
and ebx, 1
test ebx, ebx
je .Lt_01F4
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .Lt_01F3
.Lt_01F4:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
.Lt_01F3:
jmp .Lt_01ED
.Lt_01EE:
mov ebx, dword ptr [ebp-40]
add ebx, 4294967273
cmp ebx, 27
ja .Lt_01F2
mov ebx, dword ptr [ebp-40]
jmp dword ptr [.LT_01F5+ebx*4-92]
.LT_01F5:
.int .Lt_01F1
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F2
.int .Lt_01F0
.int .Lt_01F0
.int .Lt_01F0
.int .Lt_01F0
.int .Lt_01F0
.int .Lt_01F0
.Lt_01ED:
jmp .Lt_01D2
.Lt_01EB:
cmp dword ptr [ebp-36], 14
jne .Lt_01F6
.Lt_01F7:
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov ecx, dword ptr [AST_OPTB+ebx+4]
and ecx, 1
test ecx, ecx
je .Lt_01F9
cmp dword ptr [ebp+12], 26
jne .Lt_01FB
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_01FA
.Lt_01FB:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
.Lt_01FA:
jmp .Lt_01F8
.Lt_01F9:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
.Lt_01F8:
.Lt_01F6:
.Lt_01D2:
cmp dword ptr [ebp-8], 0
je .Lt_01FD
push 0
push -1
push 141
call ERRREPORT
add esp, 12
jmp .Lt_0157
.Lt_01FD:
.Lt_01FC:
mov dword ptr [ebp-4], -1
.Lt_0157:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKISSELFCLONEBYVAL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_01FE:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 1
je .Lt_0201
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
.Lt_0201:
.Lt_0200:
cmp dword ptr [ebp-8], 0
jne .Lt_0203
jmp .Lt_01FF
.Lt_0203:
.Lt_0202:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
je .Lt_0205
jmp .Lt_01FF
.Lt_0205:
.Lt_0204:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebx+32], eax
je .Lt_0207
jmp .Lt_01FF
.Lt_0207:
.Lt_0206:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 1
je .Lt_0209
jmp .Lt_01FF
.Lt_0209:
.Lt_0208:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
je .Lt_020A
mov dword ptr [ebp-12], 24
jmp .Lt_03C1
.Lt_020A:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_03C1:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
jne .Lt_020D
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
test ebx, ebx
je .Lt_020F
jmp .Lt_01FF
.Lt_020F:
.Lt_020E:
.Lt_020D:
.Lt_020C:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
.Lt_0210:
cmp dword ptr [ebp-8], 0
je .Lt_0211
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+64], 0
jne .Lt_0213
jmp .Lt_01FF
.Lt_0213:
.Lt_0212:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .Lt_0210
.Lt_0211:
mov dword ptr [ebp-4], -1
.Lt_01FF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKPROPPARAMS:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0214:
cmp dword ptr [ebp+12], 0
je .Lt_0217
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 1
jmp .Lt_0216
.Lt_0217:
mov dword ptr [ebp-4], 1
mov dword ptr [ebp-8], 2
.Lt_0216:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
mov eax, dword ptr [ebp-4]
inc eax
cmp ebx, eax
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
movsx ecx, word ptr [eax+68]
mov eax, dword ptr [ebp-8]
inc eax
cmp ecx, eax
setg cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0219
push 0
push -1
cmp dword ptr [ebp+12], 0
je .Lt_021A
mov dword ptr [ebp-20], 190
jmp .Lt_03C2
.Lt_021A:
mov dword ptr [ebp-20], 191
.Lt_03C2:
push dword ptr [ebp-20]
call ERRREPORT
add esp, 12
.Lt_0219:
.Lt_0218:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-16], ebx
mov dword ptr [ebp-12], 0
.Lt_021C:
cmp dword ptr [ebp-16], 0
je .Lt_021D
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+64], 0
je .Lt_021F
push 145
mov ebx, dword ptr [ebp-12]
inc ebx
push ebx
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 12
.Lt_021F:
.Lt_021E:
inc dword ptr [ebp-12]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebx+172]
mov dword ptr [ebp-16], ecx
jmp .Lt_021C
.Lt_021D:
.Lt_0215:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSETUDTPROPERTYFLAGS:
push ebp
mov ebp, esp
.Lt_0220:
cmp dword ptr [ebp+12], 0
je .Lt_0223
cmp dword ptr [ebp+16], 0
jne .Lt_0225
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 1024
jmp .Lt_0224
.Lt_0225:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 512
.Lt_0224:
jmp .Lt_0222
.Lt_0223:
cmp dword ptr [ebp+16], 0
jne .Lt_0227
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 256
jmp .Lt_0226
.Lt_0227:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 128
.Lt_0226:
.Lt_0222:
.Lt_0221:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
Lt_0095:	.ascii	"\"\0"
.balign 4
Lt_0122:	.ascii	"SSE\0"
.balign 4
Lt_0126:	.ascii	"FPU\0"
.balign 4
Lt_0140:	.ascii	"NAKED\0"
.balign 4
Lt_0147:	.ascii	"OVERRIDE\0"
.balign 4
Lt_0265:	.ascii	" (TODO)\0"
