	.intel_syntax noprefix

.section .text
.balign 16

.globl _CALIASATTRIBUTE@0
_CALIASATTRIBUTE@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0069:
push 0
call _LEXGETTOKEN@4
cmp eax, 384
jne .Lt_006C
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETCLASS@4
cmp eax, 4
jne .Lt_006E
push 0
push 0
call _LEXGETTEXT@0
push eax
push 129
push offset _Lt_0071
call _fb_StrAssign@20
push 0
call _LEXSKIPTOKEN@4
push 129
push offset _Lt_0071
call _fb_StrLen@8
test eax, eax
jle .Lt_0070
mov eax, offset _Lt_0071
mov dword ptr [ebp-4], eax
jmp .Lt_006F
.Lt_0070:
push 0
push 0
push 304
call _ERRREPORT@12
.Lt_006F:
jmp .Lt_006D
.Lt_006E:
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_006D:
.Lt_006C:
.Lt_006B:
.Lt_006A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0071,129

.section .text
.balign 16

.globl _CLIBATTRIBUTE@0
_CLIBATTRIBUTE@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0072:
push 0
call _LEXGETTOKEN@4
cmp eax, 385
jne .Lt_0075
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETCLASS@4
cmp eax, 4
jne .Lt_0077
call _LEXGETTEXT@0
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
call _fb_StrLen@8
test eax, eax
jle .Lt_0079
push dword ptr [ebp-4]
call _FBADDLIB@4
jmp .Lt_0078
.Lt_0079:
push 0
push 0
push 305
call _ERRREPORT@12
.Lt_0078:
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_0076
.Lt_0077:
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_0076:
.Lt_0075:
.Lt_0074:
.Lt_0073:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CMETHODATTRIBUTES@12
_CMETHODATTRIBUTES@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_007A:
push 2048
push 307
call _HMATCH@8
test eax, eax
je .Lt_007D
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 2
jmp .Lt_007B
.Lt_007D:
.Lt_007C:
push 2048
push 335
call _HMATCH@8
test eax, eax
je .Lt_007F
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 2048
.Lt_007F:
.Lt_007E:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 355
jne .Lt_0082
.Lt_0083:
mov eax, dword ptr [ebp+16]
or dword ptr [eax], 768
cmp dword ptr [ebp+8], 0
je .Lt_0085
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .Lt_0087
push 0
push 0
push 222
call _ERRREPORT@12
mov ebx, dword ptr [ebp+16]
and dword ptr [ebx], -769
.Lt_0087:
.Lt_0086:
.Lt_0085:
.Lt_0084:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_0080
.Lt_0082:
cmp dword ptr [ebp-4], 354
jne .Lt_0088
.Lt_0089:
mov ebx, dword ptr [ebp+16]
or dword ptr [ebx], 256
cmp dword ptr [ebp+8], 0
je .Lt_008B
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 4194304
test eax, eax
jne .Lt_008D
push 0
push 0
push 221
call _ERRREPORT@12
mov eax, dword ptr [ebp+16]
and dword ptr [eax], -257
.Lt_008D:
.Lt_008C:
.Lt_008B:
.Lt_008A:
push 2048
call _LEXSKIPTOKEN@4
.Lt_0088:
.Lt_0080:
.Lt_007B:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _CPROCRETTYPE@24
_CPROCRETTYPE@24:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_00EC:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-4], 1
mov eax, dword ptr [ebp+12]
and eax, 2048
je .Lt_00EF
cmp dword ptr [ebp+20], 0
je .Lt_00F1
or dword ptr [ebp-4], 2
.Lt_00F1:
.Lt_00F0:
and dword ptr [ebp-4], -2
or dword ptr [ebp-4], 4
.Lt_00EF:
.Lt_00EE:
cmp dword ptr [ebp+20], 0
je .Lt_00F3
and dword ptr [ebp-4], -2
.Lt_00F3:
.Lt_00F2:
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
call _CSYMBOLTYPE@20
test eax, eax
jne .Lt_00F7
push 0
push 0
push 14
call _ERRREPORT@12
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 8
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
jmp .Lt_00F6
.Lt_00F7:
mov eax, dword ptr [ebp+24]
mov ebx, dword ptr [eax]
and ebx, 511
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 7
jne .Lt_00FA
.Lt_00FB:
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
je .Lt_00FD
push 0
push 0
push 55
call _ERRREPORT@12
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 17
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
.Lt_00FD:
.Lt_00FC:
jmp .Lt_00F8
.Lt_00FA:
cmp dword ptr [ebp-20], 18
je .Lt_00FF
.Lt_0100:
cmp dword ptr [ebp-20], 4
jne .Lt_00FE
.Lt_00FF:
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
je .Lt_0102
push 0
push 0
push 55
call _ERRREPORT@12
mov ecx, dword ptr [ebp+24]
mov dword ptr [ecx], 17
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
.Lt_0102:
.Lt_0101:
jmp .Lt_00F8
.Lt_00FE:
cmp dword ptr [ebp-20], 0
jne .Lt_0103
.Lt_0104:
push 0
push 0
push 24
call _ERRREPORT@12
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
jmp .Lt_00F8
.Lt_0103:
cmp dword ptr [ebp-20], 20
jne .Lt_0105
.Lt_0106:
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 0
je .Lt_0108
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+120]
and eax, 15728640
sar eax, 20
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 3
jne .Lt_010B
.Lt_010C:
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
je .Lt_010E
push 0
push 0
push 24
call _ERRREPORT@12
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
.Lt_010E:
.Lt_010D:
.Lt_010B:
.Lt_0109:
.Lt_0108:
.Lt_0107:
.Lt_0105:
.Lt_00F8:
mov eax, dword ptr [ebp+12]
and eax, 2048
test eax, eax
jne .Lt_0110
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
call _HCOMPLAINIFABSTRACTCLASS@8
.Lt_0110:
.Lt_010F:
.Lt_00F6:
mov eax, dword ptr [ebp+24]
push dword ptr [eax]
call _CPROCRETURNMETHOD@4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+96], eax
.Lt_00ED:
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _CPROCRETURNMETHOD@4
_CPROCRETURNMETHOD@4:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_0117:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 2
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0119
mov dword ptr [ebp-20], 24
jmp .Lt_012A
.Lt_0119:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_012A:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
je .Lt_011C
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_0118
.Lt_011C:
push 0
call _LEXGETTOKEN@4
cmp eax, 343
jne .Lt_011E
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0120
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_011F
.Lt_0120:
push 0
call _LEXSKIPTOKEN@4
.Lt_011F:
push 0
call _LEXGETCLASS@4
cmp eax, 4
je .Lt_0122
push 0
push 0
push 17
call _ERRREPORT@12
jmp .Lt_0121
.Lt_0122:
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
call _fb_TRIM@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 4
push offset _Lt_0123
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0125
mov dword ptr [ebp-4], 1
jmp .Lt_0124
.Lt_0125:
push 4
push offset _Lt_0127
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0126
mov dword ptr [ebp-4], 0
.Lt_0126:
.Lt_0124:
push 0
call _LEXSKIPTOKEN@4
.Lt_0121:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0129
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0128
.Lt_0129:
push 0
call _LEXSKIPTOKEN@4
.Lt_0128:
.Lt_011E:
.Lt_011D:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_0118:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CPROCCALLINGCONV@4
_CPROCCALLINGCONV@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_012B:
cmp dword ptr [ebp+8], -1
jne .Lt_012E
mov eax, dword ptr [_ENV+252]
mov dword ptr [ebp+8], eax
.Lt_012E:
.Lt_012D:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
jmp .Lt_0130
.Lt_0132:
mov dword ptr [ebp-4], 3
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_012F
.Lt_0133:
mov eax, dword ptr [_ENV+256]
mov dword ptr [ebp-4], eax
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_012F
.Lt_0134:
mov dword ptr [ebp-4], 4
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_012F
.Lt_0135:
mov eax, dword ptr [_PARSER+100]
mov dword ptr [ebp-12], eax
jmp .Lt_0137
.Lt_0139:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0136
.Lt_013A:
mov dword ptr [ebp-4], 3
jmp .Lt_0136
.Lt_013B:
mov eax, dword ptr [_ENV+256]
mov dword ptr [ebp-4], eax
jmp .Lt_0136
.Lt_013C:
mov dword ptr [ebp-4], 2
jmp .Lt_0136
.Lt_0137:
cmp dword ptr [ebp-12], 6
ja .Lt_0136
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_013D+eax*4]
_.LT_013D:
.int .Lt_0139
.int .Lt_013A
.int .Lt_013B
.int .Lt_013C
.int .Lt_013A
.int .Lt_0136
.int .Lt_0139
.Lt_0136:
jmp .Lt_012F
.Lt_0130:
mov eax, dword ptr [ebp-8]
add eax, 4294966915
cmp eax, 2
ja .Lt_0135
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_013E+eax*4-1524]
_.LT_013E:
.int .Lt_0134
.int .Lt_0132
.int .Lt_0133
.Lt_012F:
.Lt_012C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CBYREFATTRIBUTE@8
_CBYREFATTRIBUTE@8:
push ebp
mov ebp, esp
.Lt_014D:
push 0
call _LEXGETTOKEN@4
cmp eax, 320
jne .Lt_0150
cmp dword ptr [ebp+12], 0
jne .Lt_0152
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_0152:
.Lt_0151:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
or dword ptr [eax], 2048
.Lt_0150:
.Lt_014F:
.Lt_014E:
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _CPROCHEADER@20
_CPROCHEADER@20:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.Lt_0229:
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
je .Lt_022D
.Lt_022E:
cmp dword ptr [ebp+24], 348
jne .Lt_022C
.Lt_022D:
or dword ptr [ebp+12], 2
cmp dword ptr [ebp+24], 347
jne .Lt_0230
or dword ptr [ebp+12], 5
jmp .Lt_022F
.Lt_0230:
or dword ptr [ebp+12], 8
.Lt_022F:
jmp .Lt_022B
.Lt_022C:
cmp dword ptr [ebp+24], 349
jne .Lt_0231
.Lt_0232:
or dword ptr [ebp+12], 17
jmp .Lt_022B
.Lt_0231:
cmp dword ptr [ebp+24], 350
jne .Lt_0233
.Lt_0234:
or dword ptr [ebp+12], 35
.Lt_0233:
.Lt_022B:
mov eax, dword ptr [ebp+20]
and eax, 2
je .Lt_0236
mov dword ptr [ebp-20], 0
jmp .Lt_0235
.Lt_0236:
mov dword ptr [ebp-68], 22
cmp dword ptr [ebp+24], 349
jne .Lt_0238
.Lt_0239:
or dword ptr [ebp-68], 8
jmp .Lt_0237
.Lt_0238:
cmp dword ptr [ebp+24], 347
je .Lt_023B
.Lt_023C:
cmp dword ptr [ebp+24], 348
jne .Lt_023A
.Lt_023B:
or dword ptr [ebp-68], 1
.Lt_023A:
.Lt_0237:
push dword ptr [ebp-68]
call _CPARENTID@4
mov dword ptr [ebp-20], eax
.Lt_0235:
cmp dword ptr [ebp-20], 0
je .Lt_023E
mov eax, dword ptr [ebp+20]
and eax, 1
je .Lt_0240
push 0
push 0
push 158
call _ERRREPORT@12
mov dword ptr [ebp-20], 0
jmp .Lt_023F
.Lt_0240:
mov dword ptr [ebp-36], -1
.Lt_023F:
jmp .Lt_023D
.Lt_023E:
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98536], eax
je .Lt_0242
mov eax, dword ptr [_SYMB+98536]
mov dword ptr [ebp-20], eax
.Lt_0242:
.Lt_0241:
.Lt_023D:
cmp dword ptr [ebp-20], 0
je .Lt_0244
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-40], ebx
.Lt_0244:
.Lt_0243:
cmp dword ptr [ebp-40], 0
je .Lt_0246
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
je .Lt_0248
or dword ptr [ebp+12], 2
.Lt_0248:
.Lt_0247:
jmp .Lt_0245
.Lt_0246:
cmp dword ptr [ebp+24], 347
je .Lt_024B
.Lt_024C:
cmp dword ptr [ebp+24], 348
je .Lt_024B
.Lt_024D:
cmp dword ptr [ebp+24], 350
jne .Lt_024A
.Lt_024B:
cmp dword ptr [ebp-20], 0
jne .Lt_024F
push 0
push 0
push 160
call _ERRREPORT@12
jmp .Lt_024E
.Lt_024F:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 10
je .Lt_0250
push 0
push 0
push 168
call _ERRREPORT@12
.Lt_0250:
.Lt_024E:
mov eax, dword ptr [ebp+20]
and eax, 1
je .Lt_0252
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0251
.Lt_0252:
push 0
push -1
push dword ptr [ebp+24]
call _HSKIPCOMPOUND@12
.Lt_0251:
jmp .Lt_022A
.Lt_024A:
.Lt_0249:
push 258
push 2
lea eax, [ebp+8]
push eax
call _HCHECKATTRIB@12
push 259
push 2048
lea eax, [ebp+8]
push eax
call _HCHECKATTRIB@12
push 260
push 512
lea eax, [ebp+12]
push eax
call _HCHECKATTRIB@12
push 261
push 256
lea eax, [ebp+12]
push eax
call _HCHECKATTRIB@12
.Lt_0245:
cmp dword ptr [ebp+24], 347
je .Lt_0255
.Lt_0256:
cmp dword ptr [ebp+24], 348
jne .Lt_0254
.Lt_0255:
push 0
call _SYMBPREADDPROC@4
mov dword ptr [ebp-16], eax
jmp .Lt_0253
.Lt_0254:
cmp dword ptr [ebp+24], 349
jne .Lt_0257
.Lt_0258:
push -1
call _COPERATOR@4
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], -1
je .Lt_025B
.Lt_025C:
cmp dword ptr [ebp-52], 36
je .Lt_025B
.Lt_025D:
cmp dword ptr [ebp-52], 9
je .Lt_025B
.Lt_025E:
cmp dword ptr [ebp-52], 37
je .Lt_025B
.Lt_025F:
cmp dword ptr [ebp-52], 10
jne .Lt_025A
.Lt_025B:
push 0
push 0
push 157
call _ERRREPORT@12
mov dword ptr [ebp-52], 28
.Lt_025A:
.Lt_0259:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .Lt_0261
cmp dword ptr [ebp-40], 0
jne .Lt_0263
push 0
push -1
push 152
call _ERRREPORT@12
mov dword ptr [ebp-52], 28
.Lt_0263:
.Lt_0262:
jmp .Lt_0260
.Lt_0261:
cmp dword ptr [ebp-40], 0
je .Lt_0265
push offset _Lt_0266
push -1
push 153
call _ERRREPORT@12
.Lt_0265:
.Lt_0264:
.Lt_0260:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp-72], ebx
jmp .Lt_0268
.Lt_026A:
mov ebx, dword ptr [ebp+12]
and ebx, 768
je .Lt_026C
push 0
push -1
push 233
call _ERRREPORT@12
and dword ptr [ebp+12], -769
.Lt_026C:
.Lt_026B:
mov ebx, dword ptr [ebp+8]
and ebx, 2048
je .Lt_026E
push 0
push -1
push 234
call _ERRREPORT@12
and dword ptr [ebp+8], -2049
.Lt_026E:
.Lt_026D:
or dword ptr [ebp+8], 2
and dword ptr [ebp+12], -3
jmp .Lt_0267
.Lt_026F:
cmp dword ptr [ebp-40], 0
je .Lt_0271
mov ebx, dword ptr [ebp+8]
and ebx, 2
je .Lt_0273
push 0
push -1
push 232
call _ERRREPORT@12
and dword ptr [ebp+8], -3
.Lt_0273:
.Lt_0272:
or dword ptr [ebp+12], 2
.Lt_0271:
.Lt_0270:
jmp .Lt_0267
.Lt_0268:
mov ebx, dword ptr [ebp-72]
add ebx, 4294967278
cmp ebx, 3
ja .Lt_026F
mov ebx, dword ptr [ebp-72]
jmp dword ptr [_.LT_0274+ebx*4-72]
_.LT_0274:
.int .Lt_026A
.int .Lt_026A
.int .Lt_026A
.int .Lt_026A
.Lt_0267:
push 0
call _SYMBPREADDPROC@4
mov dword ptr [ebp-16], eax
jmp .Lt_0253
.Lt_0257:
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
push offset _Lt_032C
push dword ptr [ebp-20]
call _HGETID@16
mov dword ptr [ebp-12], eax
push offset _Lt_032C
call _SYMBPREADDPROC@4
mov dword ptr [ebp-16], eax
.Lt_0275:
.Lt_0253:
lea eax, [ebp+12]
push eax
call _CNAKEDATTRIBUTE@4
cmp dword ptr [ebp+24], 347
je .Lt_0278
.Lt_0279:
cmp dword ptr [ebp+24], 348
jne .Lt_0277
.Lt_0278:
mov dword ptr [ebp-44], 3
jmp .Lt_0276
.Lt_0277:
mov dword ptr [ebp-44], -1
.Lt_027A:
.Lt_0276:
push dword ptr [ebp-44]
call _CPROCCALLINGCONV@4
mov dword ptr [ebp-44], eax
push 0
call _LEXGETTOKEN@4
cmp eax, 386
jne .Lt_027C
mov eax, dword ptr [_ENV+888]
and eax, 16
test eax, eax
jne .Lt_027E
push 0
push 146
push 16
call _ERRREPORTNOTALLOWED@12
jmp .Lt_027D
.Lt_027E:
or dword ptr [ebp+12], 1
.Lt_027D:
push 2048
call _LEXSKIPTOKEN@4
.Lt_027C:
.Lt_027B:
mov eax, dword ptr [ebp+20]
and eax, 1
je .Lt_0280
call _CLIBATTRIBUTE@0
.Lt_0280:
.Lt_027F:
call _CALIASATTRIBUTE@0
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
je .Lt_0282
mov ebx, dword ptr [_SYMB+98536]
cmp dword ptr [ebp-20], ebx
je .Lt_0284
push -1
push dword ptr [ebp-20]
call _SYMBNESTBEGIN@8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], -1
.Lt_0284:
.Lt_0283:
.Lt_0282:
.Lt_0281:
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
call _CPARAMETERS@16
cmp dword ptr [ebp+24], 348
jne .Lt_0286
.Lt_0287:
mov ebx, dword ptr [ebp-16]
movsx eax, word ptr [ebx+68]
cmp eax, 1
jle .Lt_0289
push 0
push 0
push 159
call _ERRREPORT@12
.Lt_0289:
.Lt_0288:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-24], 0
jmp .Lt_0285
.Lt_0286:
cmp dword ptr [ebp+24], 347
jne .Lt_028A
.Lt_028B:
push dword ptr [ebp+20]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _HCHECKISSELFCLONEBYVAL@12
test eax, eax
je .Lt_028D
push 0
push -1
push 271
call _ERRREPORT@12
jmp .Lt_022A
.Lt_028D:
.Lt_028C:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+80]
cmp dword ptr [ebx+56], 4
jne .Lt_028F
push 143
push 0
push dword ptr [ebp-16]
call _HPARAMERROR@12
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+80]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebx+80], ecx
mov ecx, dword ptr [ebp-28]
cmp dword ptr [ecx+172], 0
je .Lt_0291
mov ecx, dword ptr [ebp-28]
mov ebx, dword ptr [ecx+172]
mov dword ptr [ebx+176], 0
.Lt_0291:
.Lt_0290:
mov ebx, dword ptr [ebp-16]
movsx ecx, word ptr [ebx+68]
dec ecx
mov ebx, dword ptr [ebp-16]
mov word ptr [ebx+68], cx
push dword ptr [ebp-28]
call _SYMBFREESYMBOL@4
.Lt_028F:
.Lt_028E:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-24], 0
jmp .Lt_0285
.Lt_028A:
cmp dword ptr [ebp+24], 349
jne .Lt_0292
.Lt_0293:
cmp dword ptr [ebp-52], 29
jne .Lt_0295
.Lt_0296:
mov ecx, dword ptr [ebp-16]
movsx ebx, word ptr [ecx+68]
cmp ebx, 1
jne .Lt_0298
mov dword ptr [ebp-52], 54
.Lt_0298:
.Lt_0297:
jmp .Lt_0294
.Lt_0295:
cmp dword ptr [ebp-52], 28
jne .Lt_0299
.Lt_029A:
mov ebx, dword ptr [ebp-16]
movsx ecx, word ptr [ebx+68]
cmp ecx, 1
jne .Lt_029C
mov dword ptr [ebp-52], 53
.Lt_029C:
.Lt_029B:
jmp .Lt_0294
.Lt_0299:
cmp dword ptr [ebp-52], 30
jne .Lt_029D
.Lt_029E:
mov ecx, dword ptr [ebp-16]
movsx ebx, word ptr [ecx+68]
cmp ebx, 1
jne .Lt_02A0
mov dword ptr [ebp-52], 76
.Lt_02A0:
.Lt_029F:
.Lt_029D:
.Lt_0294:
mov ebx, dword ptr [ebp-52]
sal ebx, 4
mov ecx, dword ptr [_AST_OPTB+ebx+4]
and ecx, 4
test ecx, ecx
je .Lt_02A2
mov dword ptr [ebp-32], 0
jmp .Lt_02A1
.Lt_02A2:
push -1
lea ecx, [ebp+12]
push ecx
call _CBYREFATTRIBUTE@8
push 0
call _LEXGETTOKEN@4
cmp eax, 376
jne .Lt_02A4
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
call _CPROCRETTYPE@24
jmp .Lt_02A3
.Lt_02A4:
push 0
push 0
push 68
call _ERRREPORT@12
mov dword ptr [ebp-32], 8
.Lt_02A3:
.Lt_02A1:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-32]
mov dword ptr [eax+28], ecx
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-24]
mov dword ptr [ecx+32], eax
push dword ptr [ebp-16]
call _SYMBPROCALLOCEXT@4
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebp-52]
mov dword ptr [ecx+40], eax
cmp dword ptr [ebp-52], 0
jne .Lt_02A6
push dword ptr [ebp+20]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _HCHECKISSELFCLONEBYVAL@12
test eax, eax
je .Lt_02A8
push 0
push -1
push 271
call _ERRREPORT@12
jmp .Lt_022A
.Lt_02A8:
.Lt_02A7:
.Lt_02A6:
.Lt_02A5:
push dword ptr [ebp-16]
push dword ptr [ebp-52]
push dword ptr [ebp-20]
call _HCHECKOPOVLPARAMS@12
test eax, eax
jne .Lt_02AA
jmp .Lt_022A
.Lt_02AA:
.Lt_02A9:
jmp .Lt_0285
.Lt_0292:
cmp dword ptr [ebp+24], 350
jne .Lt_02AB
.Lt_02AC:
push -1
lea eax, [ebp+12]
push eax
call _CBYREFATTRIBUTE@8
push 0
call _LEXGETTOKEN@4
cmp eax, 376
jne .Lt_02AE
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
call _CPROCRETTYPE@24
mov eax, dword ptr [ebp-16]
movsx ecx, word ptr [eax+68]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-60], ecx
mov dword ptr [ebp-56], -1
jmp .Lt_02AD
.Lt_02AE:
mov ecx, dword ptr [ebp+12]
and ecx, 2048
je .Lt_02B0
push 0
push 0
push 68
call _ERRREPORT@12
and dword ptr [ebp+12], -2049
.Lt_02B0:
.Lt_02AF:
mov dword ptr [ebp-32], 0
mov ecx, dword ptr [ebp-16]
movsx eax, word ptr [ecx+68]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-60], eax
.Lt_02AD:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-32]
mov dword ptr [eax+28], ecx
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-24]
mov dword ptr [ecx+32], eax
push dword ptr [ebp-56]
push dword ptr [ebp-16]
call _HCHECKPROPPARAMS@8
jmp .Lt_0285
.Lt_02AB:
cmp dword ptr [ebp-40], 0
je .Lt_02B3
mov eax, dword ptr [ebp-16]
movsx ecx, word ptr [eax+68]
test ecx, ecx
jle .Lt_02B4
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+80]
mov ecx, dword ptr [eax+56]
cmp ecx, 4
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-72], ecx
jmp .Lt_0325
.Lt_02B4:
mov dword ptr [ebp-72], -1
.Lt_0325:
cmp dword ptr [ebp-72], 0
je .Lt_02B7
or dword ptr [ebp+12], 1
.Lt_02B7:
.Lt_02B6:
.Lt_02B3:
.Lt_02B2:
mov ecx, dword ptr [ebp+24]
cmp ecx, 346
sete cl
shr ecx, 1
sbb ecx, ecx
push ecx
lea ecx, [ebp+12]
push ecx
call _CBYREFATTRIBUTE@8
push 0
call _LEXGETTOKEN@4
cmp eax, 376
jne .Lt_02B9
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
je .Lt_02BB
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_02BB:
.Lt_02BA:
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
call _CPROCRETTYPE@24
jmp .Lt_02B8
.Lt_02B9:
cmp dword ptr [ebp+24], 346
jne .Lt_02BD
mov ecx, dword ptr [_ENV+888]
and ecx, 4194304
test ecx, ecx
je .Lt_02BF
cmp dword ptr [ebp-32], -2147483648
jne .Lt_02C1
push offset _Lt_032C
call _SYMBGETDEFTYPE@4
mov dword ptr [ebp-32], eax
.Lt_02C1:
.Lt_02C0:
jmp .Lt_02BE
.Lt_02BF:
push 0
push 147
push 4194304
call _ERRREPORTNOTALLOWED@12
mov dword ptr [ebp-32], 8
.Lt_02BE:
jmp .Lt_02BC
.Lt_02BD:
mov dword ptr [ebp-32], 0
.Lt_02BC:
.Lt_02B8:
.Lt_02B1:
.Lt_0285:
mov eax, dword ptr [ebp+20]
and eax, 1
je .Lt_02C3
cmp dword ptr [ebp+24], 347
je .Lt_02C6
.Lt_02C7:
cmp dword ptr [ebp+24], 348
jne .Lt_02C5
.Lt_02C6:
push 0
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _SYMBADDCTOR@24
mov dword ptr [ebp-16], eax
jmp .Lt_02C4
.Lt_02C5:
cmp dword ptr [ebp+24], 349
jne .Lt_02C8
.Lt_02C9:
push 0
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-52]
push dword ptr [ebp-16]
call _SYMBADDOPERATOR@36
mov dword ptr [ebp-16], eax
jmp .Lt_02C4
.Lt_02C8:
push 0
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push offset _Lt_032C
push dword ptr [ebp-16]
call _SYMBADDPROC@36
mov dword ptr [ebp-16], eax
.Lt_02CA:
.Lt_02C4:
cmp dword ptr [ebp-16], 0
jne .Lt_02CC
push 0
push 0
push 4
call _ERRREPORT@12
jmp .Lt_022A
.Lt_02CC:
.Lt_02CB:
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
je .Lt_02CE
push dword ptr [ebp-16]
call _COVERRIDEATTRIBUTE@4
.Lt_02CE:
.Lt_02CD:
cmp dword ptr [ebp+24], 350
jne .Lt_02D0
push dword ptr [ebp-56]
push dword ptr [ebp-60]
push dword ptr [ebp-20]
call _HSETUDTPROPERTYFLAGS@12
.Lt_02D0:
.Lt_02CF:
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ecx
jmp .Lt_022A
.Lt_02C3:
.Lt_02C2:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 347
je .Lt_02D4
.Lt_02D5:
cmp dword ptr [ebp-72], 348
jne .Lt_02D3
.Lt_02D4:
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
je .Lt_02D7
push 0
push -1
push 17
call _ERRREPORT@12
jmp .Lt_02D6
.Lt_02D7:
mov ecx, dword ptr [ebp-16]
movsx eax, word ptr [ecx+68]
test eax, eax
je .Lt_02D8
push 0
push -1
push 1
call _ERRREPORT@12
jmp .Lt_02D6
.Lt_02D8:
push 0
call _LEXGETTOKEN@4
cmp eax, 347
jne .Lt_02DA
or dword ptr [ebp-48], 65536
jmp .Lt_02D9
.Lt_02DA:
or dword ptr [ebp-48], 131072
.Lt_02D9:
.Lt_02D6:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETCLASS@4
cmp eax, 3
jne .Lt_02DC
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [eax+8356]
cmp dword ptr [ecx+8], 8
je .Lt_02DE
push 0
push 0
push 189
call _ERRREPORT@12
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_02DD
.Lt_02DE:
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_VALINT@4
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
je .Lt_02E0
push 0
push 0
push 189
call _ERRREPORT@12
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_02DF
.Lt_02E0:
and dword ptr [ebp-64], 65535
push 0
call _LEXSKIPTOKEN@4
.Lt_02DF:
.Lt_02DD:
.Lt_02DC:
.Lt_02DB:
.Lt_02D3:
.Lt_02D1:
push 2048
push 307
call _HMATCH@8
test eax, eax
je .Lt_02E2
or dword ptr [ebp+12], 64
.Lt_02E2:
.Lt_02E1:
push 0
call _LEXGETTOKEN@4
cmp eax, 341
jne .Lt_02E4
mov eax, dword ptr [ebp-48]
and eax, 196608
test eax, eax
je .Lt_02E6
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_02E6:
.Lt_02E5:
mov eax, dword ptr [ebp+8]
and eax, 64
je .Lt_02E8
push 0
push 0
push 17
call _ERRREPORT@12
and dword ptr [ebp+8], -65
.Lt_02E8:
.Lt_02E7:
push 2048
call _LEXSKIPTOKEN@4
push -1
push 28
call _FBSETOPTION@8
or dword ptr [ebp+8], 288
.Lt_02E4:
.Lt_02E3:
cmp dword ptr [ebp+24], 347
jne .Lt_02EA
.Lt_02EB:
push dword ptr [ebp-20]
call _SYMBGETCOMPCTORHEAD@4
mov dword ptr [ebp-12], eax
jmp .Lt_02E9
.Lt_02EA:
cmp dword ptr [ebp+24], 348
jne .Lt_02EC
.Lt_02ED:
push dword ptr [ebp-20]
call _SYMBGETCOMPDTOR@4
mov dword ptr [ebp-12], eax
jmp .Lt_02E9
.Lt_02EC:
cmp dword ptr [ebp+24], 349
jne .Lt_02EE
.Lt_02EF:
push dword ptr [ebp-52]
push dword ptr [ebp-20]
call _SYMBGETCOMPOPOVLHEAD@8
mov dword ptr [ebp-12], eax
.Lt_02EE:
.Lt_02E9:
cmp dword ptr [ebp-12], 0
jne .Lt_02F1
cmp dword ptr [ebp-36], 0
je .Lt_02F3
push 0
push 0
push 158
call _ERRREPORT@12
.Lt_02F3:
.Lt_02F2:
cmp dword ptr [ebp+24], 347
je .Lt_02F6
.Lt_02F7:
cmp dword ptr [ebp+24], 348
jne .Lt_02F5
.Lt_02F6:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _SYMBADDCTOR@24
mov dword ptr [ebp-12], eax
jmp .Lt_02F4
.Lt_02F5:
cmp dword ptr [ebp+24], 349
jne .Lt_02F8
.Lt_02F9:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-52]
push dword ptr [ebp-16]
call _SYMBADDOPERATOR@36
mov dword ptr [ebp-12], eax
jmp .Lt_02F4
.Lt_02F8:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push offset _Lt_032C
push dword ptr [ebp-16]
call _SYMBADDPROC@36
mov dword ptr [ebp-12], eax
.Lt_02FA:
.Lt_02F4:
cmp dword ptr [ebp-12], 0
jne .Lt_02FC
push 0
push -1
push 4
call _ERRREPORT@12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
call _SYMBUNIQUELABEL@0
push eax
push dword ptr [ebp-16]
call _SYMBADDPROC@36
mov dword ptr [ebp-16], eax
jmp .Lt_02FB
.Lt_02FC:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.Lt_02FB:
jmp .Lt_02F0
.Lt_02F1:
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
je .Lt_02FE
push 0
push -1
push 4
call _ERRREPORT@12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
call _SYMBUNIQUELABEL@0
push eax
push dword ptr [ebp-16]
call _SYMBADDPROC@36
mov dword ptr [ebp-4], eax
jmp .Lt_022A
.Lt_02FE:
.Lt_02FD:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+8]
and ecx, 1
test ecx, ecx
jle .Lt_0300
cmp dword ptr [ebp+24], 347
jne .Lt_0302
.Lt_0303:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _SYMBFINDCTORPROC@8
mov dword ptr [ebp-12], eax
jmp .Lt_0301
.Lt_0302:
cmp dword ptr [ebp+24], 349
jne .Lt_0304
.Lt_0305:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-52]
call _SYMBFINDOPOVLPROC@12
mov dword ptr [ebp-12], eax
jmp .Lt_0301
.Lt_0304:
cmp dword ptr [ebp-56], 0
je .Lt_0307
mov dword ptr [ebp-72], 1
jmp .Lt_0326
.Lt_0307:
mov dword ptr [ebp-72], 0
.Lt_0326:
push dword ptr [ebp-72]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _SYMBFINDOVERLOADPROC@12
mov dword ptr [ebp-12], eax
.Lt_0306:
.Lt_0301:
or dword ptr [ebp+12], 1
.Lt_0300:
.Lt_02FF:
cmp dword ptr [ebp-12], 0
jne .Lt_030A
cmp dword ptr [ebp-36], 0
je .Lt_030C
push 0
push 0
push 158
call _ERRREPORT@12
.Lt_030C:
.Lt_030B:
cmp dword ptr [ebp+24], 347
je .Lt_030F
.Lt_0310:
cmp dword ptr [ebp+24], 348
jne .Lt_030E
.Lt_030F:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _SYMBADDCTOR@24
mov dword ptr [ebp-12], eax
jmp .Lt_030D
.Lt_030E:
cmp dword ptr [ebp+24], 349
jne .Lt_0311
.Lt_0312:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-52]
push dword ptr [ebp-16]
call _SYMBADDOPERATOR@36
mov dword ptr [ebp-12], eax
jmp .Lt_030D
.Lt_0311:
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push offset _Lt_032C
push dword ptr [ebp-16]
call _SYMBADDPROC@36
mov dword ptr [ebp-12], eax
.Lt_0313:
.Lt_030D:
cmp dword ptr [ebp-12], 0
jne .Lt_0315
push 0
push -1
push 4
call _ERRREPORT@12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
call _SYMBUNIQUELABEL@0
push eax
push dword ptr [ebp-16]
call _SYMBADDPROC@36
mov dword ptr [ebp-4], eax
jmp .Lt_022A
.Lt_0315:
.Lt_0314:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_0309
.Lt_030A:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+12]
and ecx, 8
test ecx, ecx
je .Lt_0317
push 0
push -1
push 4
call _ERRREPORT@12
push 4
push dword ptr [ebp-44]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push 0
call _SYMBUNIQUELABEL@0
push eax
push dword ptr [ebp-16]
call _SYMBADDPROC@36
mov dword ptr [ebp-4], eax
jmp .Lt_022A
.Lt_0317:
.Lt_0316:
push dword ptr [ebp-44]
push dword ptr [ebp-24]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _HCHECKPROTOTYPE@24
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call _HCHECKATTRIBS@12
mov eax, dword ptr [ebp-48]
and eax, 196608
je .Lt_0319
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
je .Lt_031B
push 0
push -1
push 17
call _ERRREPORT@12
.Lt_031B:
.Lt_031A:
.Lt_0319:
.Lt_0318:
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+12], 8
.Lt_0309:
.Lt_02F0:
mov ecx, dword ptr [ebp-48]
and ecx, 65536
je .Lt_031D
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+4]
and eax, 6291456
je .Lt_031F
push 0
push -1
push 205
call _ERRREPORT@12
.Lt_031F:
.Lt_031E:
push dword ptr [ebp-16]
call _SYMBADDGLOBALCTOR@4
push dword ptr [ebp-16]
call _SYMBPROCALLOCEXT@4
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebp-64]
mov dword ptr [ecx+56], eax
jmp .Lt_031C
.Lt_031D:
mov eax, dword ptr [ebp-48]
and eax, 131072
je .Lt_0320
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+4]
and ecx, 6291456
je .Lt_0322
push 0
push -1
push 206
call _ERRREPORT@12
.Lt_0322:
.Lt_0321:
push dword ptr [ebp-16]
call _SYMBADDGLOBALDTOR@4
push dword ptr [ebp-16]
call _SYMBPROCALLOCEXT@4
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+112]
mov ecx, dword ptr [ebp-64]
mov dword ptr [eax+56], ecx
.Lt_0320:
.Lt_031C:
cmp dword ptr [ebp+24], 350
jne .Lt_0324
push dword ptr [ebp-56]
push dword ptr [ebp-60]
push dword ptr [ebp-20]
call _HSETUDTPROPERTYFLAGS@12
.Lt_0324:
.Lt_0323:
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ecx
.Lt_022A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_032C,129

.section .text
.balign 16

.globl _HDISALLOWSTATICATTRIB@8
_HDISALLOWSTATICATTRIB@8:
push ebp
mov ebp, esp
push ebx
.Lt_0341:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 2
test ebx, ebx
je .Lt_0344
push 0
push 0
push 213
call _ERRREPORT@12
mov ebx, dword ptr [ebp+8]
and dword ptr [ebx], -3
.Lt_0344:
.Lt_0343:
.Lt_0342:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HDISALLOWVIRTUALCTOR@8
_HDISALLOWVIRTUALCTOR@8:
push ebp
mov ebp, esp
push ebx
.Lt_0345:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 768
je .Lt_0348
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 512
je .Lt_034A
push 0
push 0
push 210
call _ERRREPORT@12
jmp .Lt_0349
.Lt_034A:
push 0
push 0
push 211
call _ERRREPORT@12
.Lt_0349:
mov eax, dword ptr [ebp+12]
and dword ptr [eax], -724
.Lt_0348:
.Lt_0347:
.Lt_0346:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HDISALLOWABSTRACTDTOR@8
_HDISALLOWABSTRACTDTOR@8:
push ebp
mov ebp, esp
push ebx
.Lt_034B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 512
je .Lt_034E
push 0
push 0
push 212
call _ERRREPORT@12
mov ebx, dword ptr [ebp+12]
and dword ptr [ebx], -513
.Lt_034E:
.Lt_034D:
.Lt_034C:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HDISALLOWCONSTCTORDTOR@12
_HDISALLOWCONSTCTORDTOR@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_034F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 2048
je .Lt_0352
push 0
push 0
cmp dword ptr [ebp+8], 347
jne .Lt_0353
mov dword ptr [ebp-4], 314
jmp .Lt_0355
.Lt_0353:
mov dword ptr [ebp-4], 315
.Lt_0355:
push dword ptr [ebp-4]
call _ERRREPORT@12
mov ebx, dword ptr [ebp+12]
and dword ptr [ebx], -2049
.Lt_0352:
.Lt_0351:
.Lt_0350:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _CPROCSTMTBEGIN@8
_CPROCSTMTBEGIN@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0356:
mov eax, dword ptr [ebp+8]
and eax, 96
test eax, eax
jne .Lt_0359
cmp dword ptr [_ENV+936], 0
je .Lt_035B
or dword ptr [ebp+8], 32
jmp .Lt_035A
.Lt_035B:
or dword ptr [ebp+8], 64
.Lt_035A:
.Lt_0359:
.Lt_0358:
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
push 0
call _CMETHODATTRIBUTES@12
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-20], eax
jmp .Lt_035D
.Lt_035F:
jmp .Lt_035C
.Lt_0360:
mov eax, dword ptr [_ENV+888]
and eax, 64
test eax, eax
jne .Lt_0362
push 0
push 146
push 64
call _ERRREPORTNOTALLOWED@12
jmp .Lt_0361
.Lt_0362:
or dword ptr [ebp+12], 4
.Lt_0361:
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call _HDISALLOWSTATICATTRIB@8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call _HDISALLOWVIRTUALCTOR@8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
push dword ptr [ebp-4]
call _HDISALLOWCONSTCTORDTOR@12
jmp .Lt_035C
.Lt_0363:
mov eax, dword ptr [_ENV+888]
and eax, 64
test eax, eax
jne .Lt_0365
push 0
push 146
push 64
call _ERRREPORTNOTALLOWED@12
jmp .Lt_0364
.Lt_0365:
or dword ptr [ebp+12], 8
.Lt_0364:
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call _HDISALLOWSTATICATTRIB@8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call _HDISALLOWABSTRACTDTOR@8
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
push dword ptr [ebp-4]
call _HDISALLOWCONSTCTORDTOR@12
jmp .Lt_035C
.Lt_0366:
mov eax, dword ptr [_ENV+888]
and eax, 32
test eax, eax
jne .Lt_0368
push 0
push 146
push 32
call _ERRREPORTNOTALLOWED@12
.Lt_0368:
.Lt_0367:
jmp .Lt_035C
.Lt_0369:
mov eax, dword ptr [_ENV+888]
and eax, 64
test eax, eax
jne .Lt_036B
push 0
push 146
push 64
call _ERRREPORTNOTALLOWED@12
.Lt_036B:
.Lt_036A:
lea eax, [ebp+12]
push eax
lea eax, [ebp+8]
push eax
call _HDISALLOWSTATICATTRIB@8
jmp .Lt_035C
.Lt_036C:
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0357
jmp .Lt_035C
.Lt_035D:
mov eax, dword ptr [ebp-20]
add eax, 4294966951
cmp eax, 5
ja .Lt_036C
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_036D+eax*4-1380]
_.LT_036D:
.int .Lt_035F
.int .Lt_035F
.int .Lt_0360
.int .Lt_0363
.int .Lt_0366
.int .Lt_0369
.Lt_035C:
push 2
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_036F
push 0
push -1
push dword ptr [ebp-4]
call _HSKIPCOMPOUND@12
jmp .Lt_0357
.Lt_036F:
.Lt_036E:
push 2048
call _LEXSKIPTOKEN@4
push dword ptr [ebp-4]
push 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CPROCHEADER@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0371
cmp dword ptr [ebp-8], 0
je .Lt_0373
push -1
call _SYMBNESTEND@4
.Lt_0373:
.Lt_0372:
push 0
push -1
push dword ptr [ebp-4]
call _HSKIPCOMPOUND@12
jmp .Lt_0357
.Lt_0371:
.Lt_0370:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+8]
and ebx, 512
test ebx, ebx
je .Lt_0375
push 0
push 0
push 224
call _ERRREPORT@12
.Lt_0375:
.Lt_0374:
push 0
push dword ptr [ebp-12]
call _ASTPROCBEGIN@8
push 33
push 346
call _CCOMPSTMTPUSH@8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [_AST+40]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+40]
mov dword ptr [ebx+24], ecx
.Lt_0357:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _CPROCSTMTEND@0
_CPROCSTMTEND@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0376:
push -1
push 346
call _CCOMPSTMTGETTOS@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0379
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0377
.Lt_0379:
.Lt_0378:
push 2048
call _LEXSKIPTOKEN@4
push 2048
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call _HMATCH@8
test eax, eax
jne .Lt_037B
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 345
jne .Lt_037E
.Lt_037F:
push 0
push 0
push 125
call _ERRREPORT@12
jmp .Lt_037C
.Lt_037E:
cmp dword ptr [ebp-12], 346
jne .Lt_0380
.Lt_0381:
push 0
push 0
push 126
call _ERRREPORT@12
jmp .Lt_037C
.Lt_0380:
cmp dword ptr [ebp-12], 347
jne .Lt_0382
.Lt_0383:
push 0
push 0
push 127
call _ERRREPORT@12
jmp .Lt_037C
.Lt_0382:
cmp dword ptr [ebp-12], 348
jne .Lt_0384
.Lt_0385:
push 0
push 0
push 128
call _ERRREPORT@12
jmp .Lt_037C
.Lt_0384:
cmp dword ptr [ebp-12], 349
jne .Lt_0386
.Lt_0387:
push 0
push 0
push 129
call _ERRREPORT@12
jmp .Lt_037C
.Lt_0386:
cmp dword ptr [ebp-12], 350
jne .Lt_0388
.Lt_0389:
push 0
push 0
push 130
call _ERRREPORT@12
.Lt_0388:
.Lt_037C:
.Lt_037B:
.Lt_037A:
push dword ptr [_PARSER+104]
call _SYMBGETPROCRESULT@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_038B
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 2
test ebx, ebx
jne .Lt_038D
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+8]
and eax, 128
test eax, eax
jne .Lt_038F
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .Lt_0391
push 0
push 0
push 316
call _ERRREPORT@12
jmp .Lt_0390
.Lt_0391:
push 0
push 1
push 0
push 13
call _ERRREPORTWARN@16
.Lt_0390:
.Lt_038F:
.Lt_038E:
.Lt_038D:
.Lt_038C:
.Lt_038B:
.Lt_038A:
push 0
call _ASTPROCEND@4
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+20], 0
je .Lt_0393
push -1
call _SYMBNESTEND@4
.Lt_0393:
.Lt_0392:
push dword ptr [ebp-4]
call _CCOMPSTMTPOP@4
.Lt_0377:
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
_HPARAMERROR@12:
push ebp
mov ebp, esp
.Lt_008E:
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ERRREPORTPARAM@16
.Lt_008F:
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCHECKPROTOTYPE@24:
push ebp
mov ebp, esp
sub esp, 56
push ebx
push esi
.Lt_0090:
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
je .Lt_0093
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+20]
push 0
push dword ptr [ebp+16]
call _fb_StrCompare@16
test eax, eax
je .Lt_0095
push 0
push 1
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 2
push offset _Lt_0096
push -1
push 0
push dword ptr [ebp+16]
push 2
push offset _Lt_0096
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
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-56]
push 311
call _ERRREPORTEX@20
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
.Lt_0095:
.Lt_0094:
.Lt_0093:
.Lt_0092:
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
je .Lt_009B
push 0
push -1
push 40
call _ERRREPORT@12
.Lt_009B:
.Lt_009A:
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
je .Lt_009D
push 0
push 1
push 0
push 28
call _ERRREPORTWARN@16
.Lt_009D:
.Lt_009C:
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+28]
cmp dword ptr [esi+84], ecx
je .Lt_009F
push 0
push -1
push 41
call _ERRREPORT@12
.Lt_009F:
.Lt_009E:
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
je .Lt_00A1
dec dword ptr [ebp-12]
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [esi+176]
mov dword ptr [ebp-4], ecx
.Lt_00A1:
.Lt_00A0:
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
je .Lt_00A3
dec dword ptr [ebp-16]
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [esi+176]
mov dword ptr [ebp-8], ecx
.Lt_00A3:
.Lt_00A2:
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-16], ecx
je .Lt_00A5
push 0
push -1
push 1
call _ERRREPORT@12
.Lt_00A5:
.Lt_00A4:
mov dword ptr [ebp-20], 1
.Lt_00A6:
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
je .Lt_00A7
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [esi+28]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-24]
and ecx, 480
je .Lt_00A8
mov dword ptr [ebp-28], 24
jmp .Lt_0394
.Lt_00A8:
mov ecx, dword ptr [ebp-24]
and ecx, 31
mov dword ptr [ebp-28], ecx
.Lt_0394:
cmp dword ptr [ebp-28], 0
jne .Lt_00AB
mov ecx, dword ptr [ebp-4]
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ecx+28]
mov dword ptr [esi+28], eax
mov eax, dword ptr [ebp-4]
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
mov dword ptr [esi+32], ecx
jmp .Lt_00AA
.Lt_00AB:
mov ecx, dword ptr [ebp-4]
mov esi, dword ptr [ebp-24]
cmp dword ptr [ecx+28], esi
je .Lt_00AD
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HPARAMERROR@12
jmp .Lt_00AC
.Lt_00AD:
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+32]
cmp dword ptr [esi+32], eax
je .Lt_00AE
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HPARAMERROR@12
.Lt_00AE:
.Lt_00AC:
.Lt_00AA:
mov eax, dword ptr [ebp-4]
mov esi, dword ptr [ebp-8]
mov ecx, dword ptr [esi+56]
cmp dword ptr [eax+56], ecx
je .Lt_00B0
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HPARAMERROR@12
.Lt_00B0:
.Lt_00AF:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+56], 3
jne .Lt_00B2
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+68]
cmp dword ptr [ecx+68], esi
je .Lt_00B4
push 58
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HPARAMERROR@12
.Lt_00B4:
.Lt_00B3:
.Lt_00B2:
.Lt_00B1:
mov esi, dword ptr [ebp-4]
cmp dword ptr [esi+56], 4
je .Lt_00B6
mov esi, dword ptr [ebp-4]
push dword ptr [esi+16]
push dword ptr [ebp-8]
call _SYMBSETNAME@8
mov esi, dword ptr [ebp-4]
mov ecx, dword ptr [esi+4]
and ecx, 1048576
test ecx, ecx
je .Lt_00B8
mov ecx, dword ptr [ebp-8]
or dword ptr [ecx+4], 1048576
jmp .Lt_00B7
.Lt_00B8:
mov ecx, dword ptr [ebp-8]
and dword ptr [ecx+4], -1048577
.Lt_00B7:
.Lt_00B6:
.Lt_00B5:
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
je .Lt_00BA
mov eax, dword ptr [ebp-4]
push dword ptr [eax+64]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call _ASTISEQUALPARAMINIT@8
test eax, eax
jne .Lt_00BC
push 36
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _ERRREPORTPARAMWARN@16
.Lt_00BC:
.Lt_00BB:
.Lt_00BA:
.Lt_00B9:
mov eax, dword ptr [ebp-8]
mov esi, dword ptr [eax+176]
mov dword ptr [ebp-8], esi
mov esi, dword ptr [ebp-4]
mov eax, dword ptr [esi+176]
mov dword ptr [ebp-4], eax
inc dword ptr [ebp-20]
jmp .Lt_00A6
.Lt_00A7:
.Lt_0091:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16
_HCHECKATTRIBS@12:
push ebp
mov ebp, esp
push ebx
.Lt_00BD:
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
je .Lt_00C0
push 0
push -1
push 20
call _ERRREPORT@12
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+8]
and eax, 2048
test eax, eax
je .Lt_00C2
or dword ptr [ebp+16], 2048
jmp .Lt_00C1
.Lt_00C2:
and dword ptr [ebp+16], -2049
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
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
je .Lt_00C4
push 0
push 0
push 217
call _ERRREPORT@12
.Lt_00C4:
.Lt_00C3:
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
je .Lt_00C6
push 0
push 0
push 218
call _ERRREPORT@12
.Lt_00C6:
.Lt_00C5:
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
je .Lt_00C8
push 0
push 0
push 220
call _ERRREPORT@12
jmp .Lt_00C7
.Lt_00C8:
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
je .Lt_00C9
push 0
push 0
push 219
call _ERRREPORT@12
.Lt_00C9:
.Lt_00C7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
or dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
or dword ptr [eax+8], ebx
.Lt_00BE:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCHECKIDTOKEN@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00CA:
mov dword ptr [ebp-4], 0
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-8], eax
jmp .Lt_00CD
.Lt_00CF:
mov eax, dword ptr [_ENV+888]
and eax, 524288
test eax, eax
je .Lt_00D1
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98536], eax
je .Lt_00D3
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2072], 0
jle .Lt_00D5
push 0
push 0
push 90
call _ERRREPORT@12
.Lt_00D5:
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
.Lt_00D1:
.Lt_00D0:
jmp .Lt_00CC
.Lt_00D6:
cmp dword ptr [_ENV+136], 3
je .Lt_00D8
mov ebx, dword ptr [ebp+8]
not ebx
cmp dword ptr [_PARSER+96], 0
seta al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_00DA
push 0
push 0
push 4
call _ERRREPORT@12
jmp .Lt_00CB
.Lt_00DA:
.Lt_00D9:
.Lt_00D8:
.Lt_00D7:
jmp .Lt_00CC
.Lt_00DB:
cmp dword ptr [_ENV+136], 3
je .Lt_00DD
push 0
push 0
push 4
call _ERRREPORT@12
jmp .Lt_00CB
.Lt_00DD:
.Lt_00DC:
jmp .Lt_00CC
.Lt_00DE:
push 0
push 0
push 14
call _ERRREPORT@12
jmp .Lt_00CB
jmp .Lt_00CC
.Lt_00CD:
cmp dword ptr [ebp-8], 5
ja .Lt_00DE
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_00DF+eax*4]
_.LT_00DF:
.int .Lt_00CF
.int .Lt_00DB
.int .Lt_00D6
.int .Lt_00DE
.int .Lt_00DE
.int .Lt_00DB
.Lt_00CC:
mov dword ptr [ebp-4], -1
.Lt_00CB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETID@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E0:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_00E3
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx+2068]
mov dword ptr [ebp-8], eax
jmp .Lt_00E2
.Lt_00E3:
push 0
push 0
call _LEXGETTEXT@0
push eax
push dword ptr [ebp+8]
call _SYMBLOOKUPAT@16
mov dword ptr [ebp-8], eax
.Lt_00E2:
cmp dword ptr [ebp-8], 0
je .Lt_00E5
push 3
push dword ptr [ebp-8]
call _SYMBFINDBYCLASS@8
mov dword ptr [ebp-12], eax
jmp .Lt_00E4
.Lt_00E5:
mov dword ptr [ebp-12], 0
.Lt_00E4:
cmp dword ptr [ebp+8], 0
setne al
shr eax, 1
sbb eax, eax
push eax
call _HCHECKIDTOKEN@4
test eax, eax
jne .Lt_00E7
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign@20
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -2147483648
push 0
push 0
push 0
push 40
call _HSKIPUNTIL@16
jmp .Lt_00E1
.Lt_00E7:
.Lt_00E6:
push 0
push 0
call _LEXGETTEXT@0
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign@20
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+8]
mov dword ptr [eax], ecx
cmp dword ptr [ebp+20], 0
je .Lt_00E9
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx], -2147483648
je .Lt_00EB
push 0
push 0
push 25
call _ERRREPORT@12
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], -2147483648
mov ecx, dword ptr [_LEX+422144]
mov eax, dword ptr [ecx+8356]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [eax+8356]
mov dword ptr [ecx+2076], 0
.Lt_00EB:
.Lt_00EA:
.Lt_00E9:
.Lt_00E8:
push 4096
call _LEXSKIPTOKEN@4
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ecx
.Lt_00E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_CNAKEDATTRIBUTE@4:
push ebp
mov ebp, esp
.Lt_013F:
push 6
push offset _Lt_0141
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0143
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
or dword ptr [eax], 128
.Lt_0143:
.Lt_0142:
.Lt_0140:
mov esp, ebp
pop ebp
ret 4
.balign 16
_COVERRIDEATTRIBUTE@4:
push ebp
mov ebp, esp
.Lt_0144:
push 0
push dword ptr [ebp+8]
call _SYMBPROCCHECKOVERRIDDEN@8
push 0
call _LEXGETTOKEN@4
cmp eax, 257
jne .Lt_0147
jmp .Lt_0145
.Lt_0147:
.Lt_0146:
push 9
push offset _Lt_0148
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_014A
push dword ptr [ebp+8]
call _SYMBPROCGETOVERRIDDEN@4
test eax, eax
jne .Lt_014C
push 0
push 0
push 223
call _ERRREPORT@12
.Lt_014C:
.Lt_014B:
push 2048
call _LEXSKIPTOKEN@4
.Lt_014A:
.Lt_0149:
.Lt_0145:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCHECKATTRIB@12:
push ebp
mov ebp, esp
push ebx
.Lt_0153:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
and ebx, dword ptr [eax]
je .Lt_0156
push 0
push -1
push dword ptr [ebp+16]
call _ERRREPORT@12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
not ebx
and dword ptr [eax], ebx
.Lt_0156:
.Lt_0155:
.Lt_0154:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCHECKOPOVLPARAMS@12:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.Lt_0157:
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
mov eax, dword ptr [_AST_OPTB+ebx]
mov dword ptr [ebp-36], eax
jmp .Lt_015A
.Lt_015C:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .Lt_015D
mov dword ptr [ebp-40], 0
jmp .Lt_03A7
.Lt_015D:
mov dword ptr [ebp-40], 1
.Lt_03A7:
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .Lt_0159
.Lt_015F:
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .Lt_0159
.Lt_0160:
mov dword ptr [ebp-16], 1
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .Lt_0159
.Lt_0161:
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov eax, dword ptr [_AST_OPTB+ebx+4]
and eax, 1
test eax, eax
je .Lt_0163
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 1
cmp dword ptr [ebp+12], 26
jne .Lt_0165
inc dword ptr [ebp-16]
inc dword ptr [ebp-20]
.Lt_0165:
.Lt_0164:
jmp .Lt_0162
.Lt_0163:
mov dword ptr [ebp-16], 2
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
.Lt_0162:
jmp .Lt_0159
.Lt_0166:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .Lt_0167
mov dword ptr [ebp-40], 1
jmp .Lt_03A8
.Lt_0167:
mov dword ptr [ebp-40], 2
.Lt_03A8:
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .Lt_0159
.Lt_015A:
mov ebx, dword ptr [ebp-36]
add ebx, 4294967294
cmp ebx, 12
ja .Lt_0166
mov ebx, dword ptr [ebp-36]
jmp dword ptr [_.LT_0169+ebx*4-8]
_.LT_0169:
.int .Lt_0160
.int .Lt_0166
.int .Lt_015C
.int .Lt_015F
.int .Lt_015C
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0160
.int .Lt_0166
.int .Lt_0161
.Lt_0159:
mov ebx, dword ptr [ebp+16]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-12], 0
je .Lt_016A
mov dword ptr [ebp-32], 1
jmp .Lt_03A9
.Lt_016A:
mov dword ptr [ebp-32], 0
.Lt_03A9:
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
je .Lt_016D
push 0
push -1
push 1
call _ERRREPORT@12
jmp .Lt_0158
.Lt_016D:
.Lt_016C:
cmp dword ptr [ebp-24], 0
jle .Lt_016F
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+56], 4
jne .Lt_0171
push 143
push 1
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_0171:
.Lt_0170:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+64], 0
je .Lt_0173
push 145
push 1
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_0173:
.Lt_0172:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax]
mov dword ptr [ebp-40], ebx
jmp .Lt_0175
.Lt_0177:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 20
je .Lt_017B
.Lt_017C:
cmp dword ptr [ebp-44], 10
jne .Lt_017A
.Lt_017B:
jmp .Lt_0178
.Lt_017A:
push 137
push 1
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_017D:
.Lt_0178:
jmp .Lt_0174
.Lt_017E:
cmp dword ptr [ebp-24], 1
jle .Lt_0180
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+56], 4
jne .Lt_0182
push 143
push 2
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_0182:
.Lt_0181:
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+64], 0
je .Lt_0184
push 145
push 2
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_0184:
.Lt_0183:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 20
je .Lt_0188
.Lt_0189:
cmp dword ptr [ebp-48], 10
jne .Lt_0187
.Lt_0188:
jmp .Lt_0185
.Lt_0187:
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], 20
je .Lt_018E
.Lt_018F:
cmp dword ptr [ebp-52], 10
jne .Lt_018D
.Lt_018E:
jmp .Lt_018B
.Lt_018D:
push 137
push 2
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_0190:
.Lt_018B:
.Lt_018A:
.Lt_0185:
.Lt_0180:
.Lt_017F:
jmp .Lt_0174
.Lt_0191:
cmp dword ptr [ebp+12], 18
je .Lt_0194
.Lt_0195:
cmp dword ptr [ebp+12], 19
jne .Lt_0193
.Lt_0194:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
je .Lt_0196
mov dword ptr [ebp-44], 24
jmp .Lt_03AA
.Lt_0196:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_03AA:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .Lt_0199
mov dword ptr [ebp-48], -1
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
test eax, eax
je .Lt_019B
mov dword ptr [ebp-48], 0
.Lt_019B:
.Lt_019A:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], 4
je .Lt_019F
.Lt_01A0:
cmp dword ptr [ebp-52], 7
jne .Lt_019E
.Lt_019F:
mov dword ptr [ebp-48], 0
.Lt_019E:
.Lt_019C:
cmp dword ptr [ebp-48], 0
jne .Lt_01A2
push 235
push 1
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_01A2:
.Lt_01A1:
jmp .Lt_0198
.Lt_0199:
push 235
push 1
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_0198:
jmp .Lt_0192
.Lt_0193:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
je .Lt_01A4
mov dword ptr [ebp-44], 24
jmp .Lt_03AB
.Lt_01A4:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_03AB:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 0
jne .Lt_01A7
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
test eax, eax
jne .Lt_01A9
push 236
push 1
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_01A9:
.Lt_01A8:
jmp .Lt_01A6
.Lt_01A7:
push 236
push 1
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_01A6:
.Lt_01A3:
.Lt_0192:
jmp .Lt_0174
.Lt_01AA:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-44], eax
jmp .Lt_01AC
.Lt_01AE:
cmp dword ptr [ebp-24], 1
jle .Lt_01B0
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebx+56], 4
jne .Lt_01B2
push 143
push 2
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_01B2:
.Lt_01B1:
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebx+64], 0
je .Lt_01B4
push 145
push 2
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_01B4:
.Lt_01B3:
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 20
je .Lt_01B8
.Lt_01B9:
cmp dword ptr [ebp-52], 10
jne .Lt_01B7
.Lt_01B8:
jmp .Lt_01B5
.Lt_01B7:
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-56], ebx
cmp dword ptr [ebp-56], 20
je .Lt_01BE
.Lt_01BF:
cmp dword ptr [ebp-56], 10
jne .Lt_01BD
.Lt_01BE:
jmp .Lt_01BB
.Lt_01BD:
push 137
push 2
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_01C0:
.Lt_01BB:
.Lt_01BA:
.Lt_01B5:
.Lt_01B0:
.Lt_01AF:
jmp .Lt_01AB
.Lt_01C1:
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov eax, dword ptr [_AST_OPTB+ebx+4]
and eax, 1
test eax, eax
je .Lt_01C3
cmp dword ptr [ebp-24], 1
jle .Lt_01C5
cmp dword ptr [ebp-12], 0
je .Lt_01C7
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-36], ebx
.Lt_01C7:
.Lt_01C6:
cmp dword ptr [ebp-36], 0
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_01C9
push 142
push 1
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_01C9:
.Lt_01C8:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+56], 4
jne .Lt_01CB
push 143
push 1
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_01CB:
.Lt_01CA:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax+64], 0
je .Lt_01CD
push 145
push 1
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_01CD:
.Lt_01CC:
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
je .Lt_01CF
push 142
push 1
push dword ptr [ebp+16]
call _HPARAMERROR@12
jmp .Lt_0158
.Lt_01CF:
.Lt_01CE:
.Lt_01C5:
.Lt_01C4:
.Lt_01C3:
.Lt_01C2:
jmp .Lt_01AB
.Lt_01D0:
jmp .Lt_01AB
.Lt_01AC:
mov ecx, dword ptr [ebp-44]
add ecx, 4294967272
cmp ecx, 26
ja .Lt_01D0
mov ecx, dword ptr [ebp-44]
jmp dword ptr [_.LT_01D1+ecx*4-96]
_.LT_01D1:
.int .Lt_01C1
.int .Lt_01C1
.int .Lt_01C1
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01AE
.int .Lt_01AE
.int .Lt_01AE
.int .Lt_01AE
.int .Lt_01AE
.int .Lt_01AE
.Lt_01AB:
jmp .Lt_0174
.Lt_0175:
mov ecx, dword ptr [ebp-40]
add ecx, 4294967293
cmp ecx, 11
ja .Lt_0174
mov ecx, dword ptr [ebp-40]
jmp dword ptr [_.LT_01D2+ecx*4-12]
_.LT_01D2:
.int .Lt_017E
.int .Lt_0177
.int .Lt_0177
.int .Lt_0177
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_0174
.int .Lt_0191
.int .Lt_0174
.int .Lt_01AA
.Lt_0174:
.Lt_016F:
.Lt_016E:
mov dword ptr [ebp-8], 0
mov ecx, dword ptr [ebp+12]
sal ecx, 4
mov ebx, dword ptr [_AST_OPTB+ecx]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 5
jne .Lt_01D5
.Lt_01D6:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ebx+32], ecx
jne .Lt_01D8
push 0
push -1
push 140
call _ERRREPORT@12
jmp .Lt_0158
.Lt_01D8:
.Lt_01D7:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_01D3
.Lt_01D5:
cmp dword ptr [ebp-36], 4
jne .Lt_01D9
.Lt_01DA:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .Lt_01D3
.Lt_01D9:
cmp dword ptr [ebp-36], 2
jne .Lt_01DB
.Lt_01DC:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_01D3
.Lt_01DB:
cmp dword ptr [ebp-36], 6
jne .Lt_01DD
.Lt_01DE:
cmp dword ptr [ebp+12], 22
jne .Lt_01E0
.Lt_01E1:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 480
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .Lt_01DF
.Lt_01E0:
cmp dword ptr [ebp+12], 77
jne .Lt_01E2
.Lt_01E3:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp ebx, 20
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_01DF
.Lt_01E2:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
.Lt_01E4:
.Lt_01DF:
jmp .Lt_01D3
.Lt_01DD:
cmp dword ptr [ebp-36], 12
jne .Lt_01E5
.Lt_01E6:
cmp dword ptr [ebp+12], 18
je .Lt_01E9
.Lt_01EA:
cmp dword ptr [ebp+12], 19
jne .Lt_01E8
.Lt_01E9:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
and ebx, 480
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_01E7
.Lt_01E8:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
.Lt_01EB:
.Lt_01E7:
jmp .Lt_01D3
.Lt_01E5:
cmp dword ptr [ebp-36], 3
jne .Lt_01EC
.Lt_01ED:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebp-40], ecx
jmp .Lt_01EF
.Lt_01F1:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_01EE
.Lt_01F2:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .Lt_01EE
.Lt_01F3:
mov ecx, dword ptr [ebp+12]
sal ecx, 4
mov ebx, dword ptr [_AST_OPTB+ecx+4]
and ebx, 1
test ebx, ebx
je .Lt_01F5
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
jmp .Lt_01F4
.Lt_01F5:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
.Lt_01F4:
jmp .Lt_01EE
.Lt_01EF:
mov ebx, dword ptr [ebp-40]
add ebx, 4294967273
cmp ebx, 27
ja .Lt_01F3
mov ebx, dword ptr [ebp-40]
jmp dword ptr [_.LT_01F6+ebx*4-92]
_.LT_01F6:
.int .Lt_01F2
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F3
.int .Lt_01F1
.int .Lt_01F1
.int .Lt_01F1
.int .Lt_01F1
.int .Lt_01F1
.int .Lt_01F1
.Lt_01EE:
jmp .Lt_01D3
.Lt_01EC:
cmp dword ptr [ebp-36], 14
jne .Lt_01F7
.Lt_01F8:
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov ecx, dword ptr [_AST_OPTB+ebx+4]
and ecx, 1
test ecx, ecx
je .Lt_01FA
cmp dword ptr [ebp+12], 26
jne .Lt_01FC
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
cmp ebx, 8
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_01FB
.Lt_01FC:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+28]
and ecx, 511
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-8], ecx
.Lt_01FB:
jmp .Lt_01F9
.Lt_01FA:
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+28]
and ebx, 511
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
.Lt_01F9:
.Lt_01F7:
.Lt_01D3:
cmp dword ptr [ebp-8], 0
je .Lt_01FE
push 0
push -1
push 141
call _ERRREPORT@12
jmp .Lt_0158
.Lt_01FE:
.Lt_01FD:
mov dword ptr [ebp-4], -1
.Lt_0158:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCHECKISSELFCLONEBYVAL@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_01FF:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 1
je .Lt_0202
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp-8], eax
.Lt_0202:
.Lt_0201:
cmp dword ptr [ebp-8], 0
jne .Lt_0204
jmp .Lt_0200
.Lt_0204:
.Lt_0203:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
je .Lt_0206
jmp .Lt_0200
.Lt_0206:
.Lt_0205:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebx+32], eax
je .Lt_0208
jmp .Lt_0200
.Lt_0208:
.Lt_0207:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 1
je .Lt_020A
jmp .Lt_0200
.Lt_020A:
.Lt_0209:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
je .Lt_020B
mov dword ptr [ebp-12], 24
jmp .Lt_03C2
.Lt_020B:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_03C2:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
jne .Lt_020E
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
test ebx, ebx
je .Lt_0210
jmp .Lt_0200
.Lt_0210:
.Lt_020F:
.Lt_020E:
.Lt_020D:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp-8], eax
.Lt_0211:
cmp dword ptr [ebp-8], 0
je .Lt_0212
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+64], 0
jne .Lt_0214
jmp .Lt_0200
.Lt_0214:
.Lt_0213:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-8], ebx
jmp .Lt_0211
.Lt_0212:
mov dword ptr [ebp-4], -1
.Lt_0200:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCHECKPROPPARAMS@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0215:
cmp dword ptr [ebp+12], 0
je .Lt_0218
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 1
jmp .Lt_0217
.Lt_0218:
mov dword ptr [ebp-4], 1
mov dword ptr [ebp-8], 2
.Lt_0217:
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
je .Lt_021A
push 0
push -1
cmp dword ptr [ebp+12], 0
je .Lt_021B
mov dword ptr [ebp-20], 190
jmp .Lt_03C3
.Lt_021B:
mov dword ptr [ebp-20], 191
.Lt_03C3:
push dword ptr [ebp-20]
call _ERRREPORT@12
.Lt_021A:
.Lt_0219:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-16], ebx
mov dword ptr [ebp-12], 0
.Lt_021D:
cmp dword ptr [ebp-16], 0
je .Lt_021E
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+64], 0
je .Lt_0220
push 145
mov ebx, dword ptr [ebp-12]
inc ebx
push ebx
push dword ptr [ebp+8]
call _HPARAMERROR@12
.Lt_0220:
.Lt_021F:
inc dword ptr [ebp-12]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebx+176]
mov dword ptr [ebp-16], ecx
jmp .Lt_021D
.Lt_021E:
.Lt_0216:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HSETUDTPROPERTYFLAGS@12:
push ebp
mov ebp, esp
.Lt_0221:
cmp dword ptr [ebp+12], 0
je .Lt_0224
cmp dword ptr [ebp+16], 0
jne .Lt_0226
mov eax, dword ptr [ebp+8]
or dword ptr [eax+120], 1024
jmp .Lt_0225
.Lt_0226:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+120], 512
.Lt_0225:
jmp .Lt_0223
.Lt_0224:
cmp dword ptr [ebp+16], 0
jne .Lt_0228
mov eax, dword ptr [ebp+8]
or dword ptr [eax+120], 256
jmp .Lt_0227
.Lt_0228:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+120], 128
.Lt_0227:
.Lt_0223:
.Lt_0222:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_0096:	.ascii	"\"\0"
.balign 4
_Lt_0123:	.ascii	"SSE\0"
.balign 4
_Lt_0127:	.ascii	"FPU\0"
.balign 4
_Lt_0141:	.ascii	"NAKED\0"
.balign 4
_Lt_0148:	.ascii	"OVERRIDE\0"
.balign 4
_Lt_0266:	.ascii	" (TODO)\0"
