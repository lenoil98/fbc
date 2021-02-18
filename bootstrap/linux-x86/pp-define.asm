	.intel_syntax noprefix

.section .text
.balign 16

.globl PPDEFINEINIT
PPDEFINEINIT:
.type PPDEFINEINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0067:
push 6
push 388
push 8
lea eax, [PP+176]
push eax
call LISTINIT
add esp, 16
.Lt_0068:
mov esp, ebp
pop ebp
ret
.size PPDEFINEINIT, .-PPDEFINEINIT
.balign 16

.globl PPDEFINEEND
PPDEFINEEND:
.type PPDEFINEEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0069:
sub esp, 12
lea eax, [PP+176]
push eax
call LISTEND
add esp, 16
.Lt_006A:
mov esp, ebp
pop ebp
ret
.size PPDEFINEEND, .-PPDEFINEEND
.balign 16

.globl PPDEFINELOAD
PPDEFINELOAD:
.type PPDEFINELOAD, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A6:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jne .Lt_01A9
sub esp, 4
push 0
push 0
push 89
call ERRREPORT
add esp, 16
push 0
push 62
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_01A7
.Lt_01A9:
.Lt_01A8:
cmp dword ptr [ENV+552], 0
jne .Lt_01AB
sub esp, 12
push dword ptr [ebp+8]
call HLOADDEFINE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01AA
.Lt_01AB:
sub esp, 12
push dword ptr [ebp+8]
call HLOADDEFINEW
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_01AA:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16584], 0
jle .Lt_01AD
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16576], 0
jne .Lt_01AF
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+16576], ebx
.Lt_01AF:
.Lt_01AE:
.Lt_01AD:
.Lt_01AC:
mov ebx, dword ptr [LEX+839936]
mov dword ptr [ebx+16556], 4294967295
.Lt_01A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size PPDEFINELOAD, .-PPDEFINELOAD
.balign 16

.globl PPDEFINE
PPDEFINE:
.type PPDEFINE, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_021E:
sub esp, 8
push 38
lea eax, [ebp-32]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-12], 62
cmp dword ptr [ebp+8], 0
je .Lt_0221
and dword ptr [ebp-12], -5
.Lt_0221:
.Lt_0220:
sub esp, 8
push dword ptr [ebp-12]
push offset Lt_0251
call LEXEATTOKEN
add esp, 16
sub esp, 12
push offset Lt_0251
call HISVALIDSYMBOLNAME
add esp, 16
test eax, eax
jne .Lt_0223
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .Lt_021F
.Lt_0223:
.Lt_0222:
sub esp, 12
push dword ptr [ebp-12]
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .Lt_0225
sub esp, 4
push 0
push 0
push 90
call ERRREPORT
add esp, 16
.Lt_0225:
.Lt_0224:
cmp dword ptr [ebp-28], 0
je .Lt_0227
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebx], 5
je .Lt_0229
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+12]
and eax, 1048576
test eax, eax
je .Lt_022B
push 0
push 1
push 0
push 39
call ERRREPORTWARN
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call SYMBDELFROMHASH
add esp, 16
mov dword ptr [ebp-24], 0
jmp .Lt_022A
.Lt_022B:
sub esp, 12
push 0
push 1
push 0
push offset Lt_0251
push 4
call ERRREPORTEX
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push 129
push offset Lt_0251
call fb_StrAssign
add esp, 32
.Lt_022A:
.Lt_0229:
.Lt_0228:
jmp .Lt_0226
.Lt_0227:
mov dword ptr [ebp-24], 0
.Lt_0226:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-40], 8
cmp dword ptr [ebp+8], 0
je .Lt_022D
sub esp, 12
push dword ptr [ebp-12]
call LEXGETTOKEN
add esp, 16
cmp eax, 63
jne .Lt_022F
sub esp, 12
push 2
call LEXSKIPTOKEN
add esp, 16
and dword ptr [ebp-40], -9
.Lt_022F:
.Lt_022E:
.Lt_022D:
.Lt_022C:
sub esp, 12
push dword ptr [ebp-12]
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .Lt_0231
sub esp, 12
push 34
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 34
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0233
mov dword ptr [ebp-20], 0
.Lt_0234:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-44], eax
jmp .Lt_0238
.Lt_023A:
sub esp, 8
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push dword ptr [ebp-20]
call SYMBADDDEFINEPARAM
add esp, 16
mov dword ptr [ebp-20], eax
jmp .Lt_0237
.Lt_023B:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
sub esp, 8
sub esp, 8
call SYMBUNIQUELABEL
add esp, 8
push eax
push dword ptr [ebp-20]
call SYMBADDDEFINEPARAM
add esp, 16
mov dword ptr [ebp-20], eax
jmp .Lt_0237
.Lt_0238:
cmp dword ptr [ebp-44], 2
ja .Lt_023B
mov eax, dword ptr [ebp-44]
jmp dword ptr [.LT_023C+eax*4]
.LT_023C:
.int .Lt_023A
.int .Lt_023A
.int .Lt_023A
.Lt_0237:
cmp dword ptr [ebp-20], 0
jne .Lt_023E
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
.Lt_023E:
.Lt_023D:
sub esp, 12
push 34
call LEXSKIPTOKEN
add esp, 16
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 32
jl .Lt_0240
sub esp, 4
push 0
push 0
push 79
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_021F
.Lt_0240:
.Lt_023F:
cmp dword ptr [ebp-16], 0
jne .Lt_0242
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
.Lt_0242:
.Lt_0241:
sub esp, 12
push 34
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0244
jmp .Lt_0235
.Lt_0244:
.Lt_0243:
sub esp, 12
push 34
call LEXSKIPTOKEN
add esp, 16
.Lt_0236:
jmp .Lt_0234
.Lt_0235:
call HMATCHPARAMELLIPSIS
test eax, eax
je .Lt_0246
or dword ptr [ebp-40], 4
.Lt_0246:
.Lt_0245:
jmp .Lt_0232
.Lt_0233:
mov dword ptr [ebp-8], -1
.Lt_0232:
sub esp, 12
push 62
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0248
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 62
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0247
.Lt_0248:
sub esp, 12
push 58
call LEXSKIPTOKEN
add esp, 16
.Lt_0247:
jmp .Lt_0230
.Lt_0231:
cmp dword ptr [ebp+8], 0
jne .Lt_024A
sub esp, 12
push 62
call LEXGETTOKEN
add esp, 16
cmp eax, 32
jne .Lt_024C
sub esp, 12
push 58
call LEXSKIPTOKEN
add esp, 16
.Lt_024C:
.Lt_024B:
.Lt_024A:
.Lt_0249:
.Lt_0230:
cmp dword ptr [ebp-4], 0
jne .Lt_024E
sub esp, 12
push dword ptr [ebp-40]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push offset Lt_0251
push dword ptr [ebp-24]
call HREADDEFINETEXT
add esp, 32
jmp .Lt_021F
.Lt_024E:
.Lt_024D:
cmp dword ptr [ebp-24], 0
je .Lt_0250
sub esp, 12
push 0
push 1
push 0
push offset Lt_0251
push 4
call ERRREPORTEX
add esp, 32
jmp .Lt_024F
.Lt_0250:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
call HREADMACROTEXT
add esp, 16
mov dword ptr [ebp-36], eax
sub esp, 12
push dword ptr [ebp-40]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push offset Lt_0251
call SYMBADDDEFINEMACRO
add esp, 32
.Lt_024F:
.Lt_021F:
pop ebx
mov esp, ebp
pop ebp
ret
.size PPDEFINE, .-PPDEFINE

.section .bss
.balign 4
	.lcomm	Lt_0251,129

.section .text
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
HREPORTMACROERROR:
.type HREPORTMACROERROR, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_006B:
sub esp, 12
push 0
push 1
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push 12
push offset Lt_006D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_006C:
mov esp, ebp
pop ebp
ret
.size HREPORTMACROERROR, .-HREPORTMACROERROR
.balign 16
ISMACROALLOWED:
.type ISMACROALLOWED, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0070:
cmp dword ptr [PP+212], 0
jne .Lt_0073
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 2
je .Lt_0075
cmp dword ptr [ENV+104], 1
jne .Lt_0077
sub esp, 4
push 0
push 0
push 286
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_0071
.Lt_0077:
.Lt_0076:
.Lt_0075:
.Lt_0074:
.Lt_0073:
.Lt_0072:
mov dword ptr [ebp-4], -1
.Lt_0071:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ISMACROALLOWED, .-ISMACROALLOWED
.balign 16
HLOADMACRO:
.type HLOADMACRO, @function
push ebp
mov ebp, esp
sub esp, 4208
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0078:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-4180], 0
sub esp, 12
push -1
call LEXCURRENTCHAR
add esp, 16
cmp eax, 40
jne .Lt_007B
mov dword ptr [ebp-4180], -1
jmp .Lt_007A
.Lt_007B:
mov eax, dword ptr [PP+216]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+72]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_007D
jmp .Lt_0079
.Lt_007D:
.Lt_007C:
.Lt_007A:
sub esp, 12
push dword ptr [ebp+8]
call ISMACROALLOWED
add esp, 16
test eax, eax
jne .Lt_007F
jmp .Lt_0079
.Lt_007F:
.Lt_007E:
inc dword ptr [PP+216]
cmp dword ptr [ebp-4180], 0
je .Lt_0081
call LEXEATCHAR
.Lt_0081:
.Lt_0080:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-8], ecx
cmp dword ptr [ebp-8], 0
je .Lt_0083
sub esp, 12
lea ecx, [PP+176]
push ecx
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-4156], eax
jmp .Lt_0082
.Lt_0083:
mov dword ptr [ebp-4156], 0
.Lt_0082:
mov dword ptr [ebp-4160], 1
mov dword ptr [ebp-4168], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+72]
and ecx, 4
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-4172], ecx
mov dword ptr [ebp-4184], -1
mov dword ptr [ebp-4164], 0
cmp dword ptr [ebp-4156], 0
je .Lt_0085
mov ecx, dword ptr [ebp-4156]
mov dword ptr [ecx+384], 0
.Lt_0085:
.Lt_0084:
.Lt_0086:
cmp dword ptr [ebp-4156], 0
je .Lt_008A
sub esp, 12
mov ecx, dword ptr [ebp-4164]
imul ecx, 12
mov eax, dword ptr [ebp-4156]
add eax, ecx
lea ecx, [eax]
push ecx
call DZSTRZERO
add esp, 16
.Lt_008A:
.Lt_0089:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_008C
mov eax, dword ptr [ebp-4172]
mov dword ptr [ebp-4168], eax
.Lt_008C:
.Lt_008B:
.Lt_008D:
sub esp, 8
push 92
lea eax, [ebp-4152]
push eax
call LEXNEXTTOKEN
add esp, 16
mov eax, dword ptr [ebp-4152]
mov dword ptr [ebp-4188], eax
jmp .Lt_0091
.Lt_0093:
inc dword ptr [ebp-4160]
jmp .Lt_0090
.Lt_0094:
cmp dword ptr [ebp-4160], 0
jle .Lt_0096
dec dword ptr [ebp-4160]
cmp dword ptr [ebp-4160], 0
jne .Lt_0098
jmp .Lt_008E
.Lt_0098:
.Lt_0097:
.Lt_0096:
.Lt_0095:
jmp .Lt_0090
.Lt_0099:
cmp dword ptr [ebp-4160], 1
jne .Lt_009B
cmp dword ptr [ebp-4156], 0
je .Lt_009D
mov eax, dword ptr [ebp-4156]
cmp dword ptr [eax+384], 0
jne .Lt_009F
mov eax, dword ptr [ebp-4156]
mov dword ptr [eax+384], 1
.Lt_009F:
.Lt_009E:
mov eax, dword ptr [ebp-4156]
inc dword ptr [eax+384]
.Lt_009D:
.Lt_009C:
cmp dword ptr [ebp-4168], 0
jne .Lt_00A1
jmp .Lt_008E
.Lt_00A1:
.Lt_00A0:
.Lt_009B:
.Lt_009A:
jmp .Lt_0090
.Lt_00A2:
mov eax, dword ptr [ebp-4180]
not eax
test eax, eax
je .Lt_00A4
mov dword ptr [ebp-4184], 58
mov dword ptr [ebp-4160], 0
jmp .Lt_008E
.Lt_00A4:
.Lt_00A3:
jmp .Lt_0090
.Lt_00A5:
cmp dword ptr [ebp-4180], 0
je .Lt_00A7
sub esp, 8
push 7
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
jmp .Lt_00A6
.Lt_00A7:
cmp dword ptr [ebp-4152], 256
jne .Lt_00A8
mov dword ptr [ebp-4192], 0
jmp .Lt_0252
.Lt_00A8:
mov dword ptr [ebp-4192], 10
.Lt_0252:
mov eax, dword ptr [ebp-4192]
mov dword ptr [ebp-4184], eax
.Lt_00A6:
mov dword ptr [ebp-4160], 0
jmp .Lt_008E
jmp .Lt_0090
.Lt_00AA:
jmp .Lt_0090
.Lt_00AB:
cmp dword ptr [ebp-4156], 0
je .Lt_00AD
mov eax, dword ptr [ebp-4156]
cmp dword ptr [eax+384], 0
jne .Lt_00AF
mov eax, dword ptr [ebp-4156]
mov dword ptr [eax+384], 1
.Lt_00AF:
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
jmp .Lt_0090
.Lt_0091:
mov eax, dword ptr [ebp-4188]
add eax, 4294967287
cmp eax, 249
ja .Lt_00AB
mov eax, dword ptr [ebp-4188]
jmp dword ptr [.LT_00B0+eax*4-36]
.LT_00B0:
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
.int .Lt_0093
.int .Lt_0094
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_0099
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
.int .Lt_00AB
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A2
.Lt_0090:
cmp dword ptr [ebp-4156], 0
je .Lt_00B2
cmp dword ptr [ebp-4144], 7
je .Lt_00B4
sub esp, 8
lea eax, [ebp-4140]
push eax
mov eax, dword ptr [ebp-4164]
imul eax, 12
mov ecx, dword ptr [ebp-4156]
add ecx, eax
lea eax, [ecx]
push eax
call DZSTRCONCATASSIGN
add esp, 16
jmp .Lt_00B3
.Lt_00B4:
sub esp, 8
lea eax, [ebp-4140]
push eax
mov eax, dword ptr [ebp-4164]
imul eax, 12
mov ecx, dword ptr [ebp-4156]
add ecx, eax
lea eax, [ecx]
push eax
call DZSTRCONCATASSIGNW
add esp, 16
.Lt_00B3:
.Lt_00B2:
.Lt_00B1:
.Lt_008F:
jmp .Lt_008D
.Lt_008E:
cmp dword ptr [ebp-4156], 0
je .Lt_00B6
mov eax, dword ptr [ebp-4164]
imul eax, 12
mov ecx, dword ptr [ebp-4156]
add ecx, eax
lea eax, [ecx]
mov dword ptr [ebp-4188], eax
mov eax, dword ptr [ebp-4188]
cmp dword ptr [eax], 0
je .Lt_00B9
mov eax, dword ptr [ebp-4188]
mov ecx, dword ptr [eax]
movzx eax, byte ptr [ecx]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-4188]
sub esp, 8
push 0
mov ebx, dword ptr [ebp-4188]
push dword ptr [ebx]
mov ebx, ecx
mov esi, eax
call fb_StrLen
add esp, 16
mov ecx, dword ptr [ebx]
add ecx, eax
movzx eax, byte ptr [ecx-1]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
or esi, eax
je .Lt_00BB
sub esp, 8
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
mov dword ptr [ebp-4192], 0
sub esp, 4
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp-4188]
push dword ptr [eax]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_TRIM
add esp, 12
push eax
push -1
lea eax, [ebp-4200]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-4200]
mov eax, dword ptr [ebp-4188]
lea esi, [eax]
push esi
call DZSTRASSIGN
add esp, 16
sub esp, 12
lea esi, [ebp-4200]
push esi
call fb_StrDelete
add esp, 16
.Lt_00BB:
.Lt_00BA:
.Lt_00B9:
.Lt_00B8:
.Lt_00B6:
.Lt_00B5:
cmp dword ptr [ebp-4160], 0
jne .Lt_00BE
cmp dword ptr [ebp-12], 0
je .Lt_00C0
mov esi, dword ptr [ebp-12]
cmp dword ptr [esi+8], 0
setne al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp-4172]
not esi
or eax, esi
je .Lt_00C2
sub esp, 8
push 1
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
.Lt_00C2:
.Lt_00C1:
.Lt_00C3:
inc dword ptr [ebp-4164]
sub esp, 12
mov esi, dword ptr [ebp-4164]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
lea esi, [eax]
push esi
call DZSTRZERO
add esp, 16
.Lt_00C5:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+56]
dec eax
cmp dword ptr [ebp-4164], eax
jl .Lt_00C3
.Lt_00C4:
.Lt_00C0:
.Lt_00BF:
jmp .Lt_0087
.Lt_00BE:
.Lt_00BD:
cmp dword ptr [ebp-12], 0
jne .Lt_00C7
sub esp, 8
push 1
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
push 0
push 62
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0087
.Lt_00C7:
.Lt_00C6:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-4164]
.Lt_0088:
jmp .Lt_0086
.Lt_0087:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_0259
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .Lt_00C9
mov dword ptr [ebp-4188], 0
sub esp, 12
push 0
push -1
sub esp, 4
lea eax, [ebp-4188]
push eax
push dword ptr [ebp-4156]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
add esp, 12
push eax
push -1
lea eax, [ebp-4200]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ebp-4188], 0
jne .Lt_00CB
sub esp, 12
push 0
push -1
lea eax, [ebp-4200]
push eax
push -1
push offset Lt_0259
call fb_StrAssign
add esp, 32
jmp .Lt_00CA
.Lt_00CB:
sub esp, 8
push dword ptr [ebp-4188]
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
.Lt_00CA:
sub esp, 12
lea eax, [ebp-4200]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00C8
.Lt_00C9:
cmp dword ptr [ebp-4156], 0
je .Lt_00CD
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+64]
mov dword ptr [ebp-16], esi
.Lt_00CE:
cmp dword ptr [ebp-16], 0
je .Lt_00CF
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi]
mov dword ptr [ebp-4188], eax
jmp .Lt_00D1
.Lt_00D3:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-4176], esi
cmp dword ptr [ebp-4176], 0
je .Lt_00D5
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp-4176]
push -1
push offset Lt_0259
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
mov dword ptr [ebp-4192], 0
lea esi, [ebp-4200]
push esi
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0259
call fb_StrAssign
add esp, 32
.Lt_00D5:
.Lt_00D4:
jmp .Lt_00D0
.Lt_00D7:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-4176], esi
cmp dword ptr [ebp-4176], 0
je .Lt_00D9
sub esp, 12
push 0
push 3
push offset Lt_00DC
push -1
push offset Lt_0259
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_00DD
push offset Lt_00DB
push dword ptr [ebp-4176]
call HREPLACE
add esp, 12
push eax
push -1
push offset Lt_0259
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00DB
push -1
push offset Lt_0259
call fb_StrConcatAssign
add esp, 32
jmp .Lt_00D8
.Lt_00D9:
sub esp, 12
push 0
push 3
push offset Lt_00DD
push -1
push offset Lt_0259
call fb_StrConcatAssign
add esp, 32
.Lt_00D8:
jmp .Lt_00D0
.Lt_00DE:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push -1
push offset Lt_0259
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
mov dword ptr [ebp-4192], 0
lea eax, [ebp-4200]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0259
call fb_StrAssign
add esp, 32
jmp .Lt_00D0
.Lt_00E0:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call fb_WstrToStr
add esp, 16
push eax
push -1
push offset Lt_0259
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
mov dword ptr [ebp-4192], 0
lea eax, [ebp-4200]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_0259
call fb_StrAssign
add esp, 32
jmp .Lt_00D0
.Lt_00D1:
cmp dword ptr [ebp-4188], 3
ja .Lt_00D0
mov eax, dword ptr [ebp-4188]
jmp dword ptr [.LT_00E2+eax*4]
.LT_00E2:
.int .Lt_00D3
.int .Lt_00D7
.int .Lt_00DE
.int .Lt_00E0
.Lt_00D0:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+12]
mov dword ptr [ebp-16], esi
jmp .Lt_00CE
.Lt_00CF:
.Lt_00E3:
cmp dword ptr [ebp-4164], 0
jle .Lt_00E4
dec dword ptr [ebp-4164]
sub esp, 8
push 0
mov esi, dword ptr [ebp-4164]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
lea esi, [eax]
push esi
call DZSTRASSIGN
add esp, 16
jmp .Lt_00E3
.Lt_00E4:
sub esp, 8
push dword ptr [ebp-4156]
lea esi, [PP+176]
push esi
call LISTDELNODE
add esp, 16
.Lt_00CD:
.Lt_00CC:
cmp dword ptr [ebp-4184], -1
je .Lt_00E6
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-4184]
push 1
call fb_CHR
add esp, 12
push eax
push -1
push offset Lt_0259
call fb_StrConcatAssign
add esp, 32
.Lt_00E6:
.Lt_00E5:
.Lt_00C8:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16584], 0
jne .Lt_00E8
sub esp, 8
push dword ptr [Lt_0259]
mov eax, dword ptr [LEX+839936]
lea esi, [eax+16592]
push esi
call DZSTRASSIGN
add esp, 16
jmp .Lt_00E7
.Lt_00E8:
sub esp, 8
mov dword ptr [ebp-4208], 0
mov dword ptr [ebp-4204], 0
mov dword ptr [ebp-4200], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 0
mov esi, dword ptr [LEX+839936]
push dword ptr [esi+16588]
push -1
push offset Lt_0259
mov dword ptr [ebp-4196], 0
mov dword ptr [ebp-4192], 0
mov dword ptr [ebp-4188], 0
lea esi, [ebp-4196]
push esi
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-4208]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-4208]
mov eax, dword ptr [LEX+839936]
lea esi, [eax+16592]
push esi
call DZSTRASSIGN
add esp, 16
sub esp, 12
lea esi, [ebp-4208]
push esi
call fb_StrDelete
add esp, 16
.Lt_00E7:
dec dword ptr [PP+216]
sub esp, 8
push -1
push offset Lt_0259
call fb_StrLen
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0079:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HLOADMACRO, .-HLOADMACRO

.section .bss
.balign 4
	.lcomm	Lt_0259,12

.section .text
.balign 16
HLOADDEFINE:
.type HLOADDEFINE, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EB:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jle .Lt_00EE
sub esp, 12
push dword ptr [ebp+8]
call HLOADMACRO
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_00F0
jmp .Lt_00EC
.Lt_00F0:
.Lt_00EF:
jmp .Lt_00ED
.Lt_00EE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .Lt_00F2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 1
je .Lt_00F4
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00DB
push -1
sub esp, 4
push -1
mov ebx, dword ptr [ebp+8]
call dword ptr [ebx+76]
push eax
push 3
push offset Lt_00DC
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_025A
call fb_StrAssign
add esp, 32
jmp .Lt_00F3
.Lt_00F4:
sub esp, 12
push 0
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
add esp, 12
push eax
push -1
push offset Lt_025A
call fb_StrAssign
add esp, 32
.Lt_00F3:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16584], 0
jne .Lt_00F8
sub esp, 8
push dword ptr [Lt_025A]
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16592]
push ebx
call DZSTRASSIGN
add esp, 16
jmp .Lt_00F7
.Lt_00F8:
sub esp, 8
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 0
mov ebx, dword ptr [LEX+839936]
push dword ptr [ebx+16588]
push -1
push offset Lt_025A
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-32]
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16592]
push ebx
call DZSTRASSIGN
add esp, 16
sub esp, 12
lea ebx, [ebp-32]
push ebx
call fb_StrDelete
add esp, 16
.Lt_00F7:
sub esp, 8
push -1
push offset Lt_025A
call fb_StrLen
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00F1
.Lt_00F2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .Lt_00FC
mov dword ptr [ebp-12], 0
sub esp, 12
push -1
call LEXCURRENTCHAR
add esp, 16
cmp eax, 40
jne .Lt_00FE
mov dword ptr [ebp-12], -1
jmp .Lt_00FD
.Lt_00FE:
mov eax, dword ptr [PP+216]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+72]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0100
jmp .Lt_00EC
.Lt_0100:
.Lt_00FF:
.Lt_00FD:
cmp dword ptr [ebp-12], 0
je .Lt_0102
call LEXEATCHAR
sub esp, 12
push -1
call LEXCURRENTCHAR
add esp, 16
cmp eax, 41
je .Lt_0104
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
jmp .Lt_0103
.Lt_0104:
call LEXEATCHAR
.Lt_0103:
.Lt_0102:
.Lt_0101:
.Lt_00FC:
.Lt_00FB:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ecx, 7
je .Lt_0106
mov ecx, dword ptr [LEX+839936]
cmp dword ptr [ecx+16584], 0
jne .Lt_0108
sub esp, 8
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
mov ecx, dword ptr [LEX+839936]
lea eax, [ecx+16592]
push eax
call DZSTRASSIGN
add esp, 16
jmp .Lt_0107
.Lt_0108:
sub esp, 8
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16588]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-32]
mov eax, dword ptr [LEX+839936]
lea ecx, [eax+16592]
push ecx
call DZSTRASSIGN
add esp, 16
sub esp, 12
lea ecx, [ebp-32]
push ecx
call fb_StrDelete
add esp, 16
.Lt_0107:
jmp .Lt_0105
.Lt_0106:
mov ecx, dword ptr [LEX+839936]
cmp dword ptr [ecx+16584], 0
jne .Lt_010C
sub esp, 8
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
mov ecx, dword ptr [LEX+839936]
lea eax, [ecx+16592]
push eax
call DZSTRASSIGNW
add esp, 16
jmp .Lt_010B
.Lt_010C:
sub esp, 8
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16588]
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call fb_WstrToStr
add esp, 8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-32]
mov eax, dword ptr [LEX+839936]
lea ecx, [eax+16592]
push ecx
call DZSTRASSIGN
add esp, 16
sub esp, 12
lea ecx, [ebp-32]
push ecx
call fb_StrDelete
add esp, 16
.Lt_010B:
.Lt_0105:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+40]
mov dword ptr [ebp-8], eax
.Lt_00F1:
.Lt_00ED:
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16592]
mov dword ptr [ecx+16588], ebx
mov ebx, dword ptr [LEX+839936]
mov ecx, dword ptr [ebp-8]
add dword ptr [ebx+16584], ecx
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+16556], 4294967295
mov dword ptr [ebp-4], -1
.Lt_00EC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HLOADDEFINE, .-HLOADDEFINE

.section .bss
.balign 4
	.lcomm	Lt_025A,12

.section .text
.balign 16
HLOADMACROW:
.type HLOADMACROW, @function
push ebp
mov ebp, esp
sub esp, 4208
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_010F:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-4184], 0
sub esp, 12
push -1
call LEXCURRENTCHAR
add esp, 16
cmp eax, 40
jne .Lt_0112
mov dword ptr [ebp-4184], -1
jmp .Lt_0111
.Lt_0112:
mov eax, dword ptr [PP+216]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+72]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0114
jmp .Lt_0110
.Lt_0114:
.Lt_0113:
.Lt_0111:
sub esp, 12
push dword ptr [ebp+8]
call ISMACROALLOWED
add esp, 16
test eax, eax
jne .Lt_0116
jmp .Lt_0110
.Lt_0116:
.Lt_0115:
inc dword ptr [PP+216]
cmp dword ptr [ebp-4184], 0
je .Lt_0118
call LEXEATCHAR
.Lt_0118:
.Lt_0117:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-8], ecx
cmp dword ptr [ebp-8], 0
je .Lt_011A
sub esp, 12
lea ecx, [PP+176]
push ecx
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-4156], eax
jmp .Lt_0119
.Lt_011A:
mov dword ptr [ebp-4156], 0
.Lt_0119:
mov dword ptr [ebp-4160], 1
mov dword ptr [ebp-4172], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+72]
and ecx, 4
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-4176], ecx
mov dword ptr [ebp-4188], -1
mov dword ptr [ebp-4168], 0
cmp dword ptr [ebp-4156], 0
je .Lt_011C
mov ecx, dword ptr [ebp-4156]
mov dword ptr [ecx+384], 0
.Lt_011C:
.Lt_011B:
.Lt_011D:
cmp dword ptr [ebp-4156], 0
je .Lt_0121
sub esp, 12
mov ecx, dword ptr [ebp-4168]
imul ecx, 12
mov eax, dword ptr [ebp-4156]
add eax, ecx
lea ecx, [eax]
push ecx
call DWSTRZERO
add esp, 16
.Lt_0121:
.Lt_0120:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0123
mov eax, dword ptr [ebp-4176]
mov dword ptr [ebp-4172], eax
.Lt_0123:
.Lt_0122:
.Lt_0124:
sub esp, 8
push 92
lea eax, [ebp-4152]
push eax
call LEXNEXTTOKEN
add esp, 16
mov eax, dword ptr [ebp-4152]
mov dword ptr [ebp-4192], eax
jmp .Lt_0128
.Lt_012A:
inc dword ptr [ebp-4160]
jmp .Lt_0127
.Lt_012B:
cmp dword ptr [ebp-4160], 0
jle .Lt_012D
dec dword ptr [ebp-4160]
cmp dword ptr [ebp-4160], 0
jne .Lt_012F
jmp .Lt_0125
.Lt_012F:
.Lt_012E:
.Lt_012D:
.Lt_012C:
jmp .Lt_0127
.Lt_0130:
cmp dword ptr [ebp-4160], 1
jne .Lt_0132
cmp dword ptr [ebp-4156], 0
je .Lt_0134
mov eax, dword ptr [ebp-4156]
cmp dword ptr [eax+384], 0
jne .Lt_0136
mov eax, dword ptr [ebp-4156]
mov dword ptr [eax+384], 1
.Lt_0136:
.Lt_0135:
mov eax, dword ptr [ebp-4156]
inc dword ptr [eax+384]
.Lt_0134:
.Lt_0133:
cmp dword ptr [ebp-4172], 0
jne .Lt_0138
jmp .Lt_0125
.Lt_0138:
.Lt_0137:
.Lt_0132:
.Lt_0131:
jmp .Lt_0127
.Lt_0139:
mov eax, dword ptr [ebp-4184]
not eax
test eax, eax
je .Lt_013B
mov dword ptr [ebp-4188], 58
mov dword ptr [ebp-4160], 0
jmp .Lt_0125
.Lt_013B:
.Lt_013A:
jmp .Lt_0127
.Lt_013C:
cmp dword ptr [ebp-4184], 0
je .Lt_013E
sub esp, 8
push 7
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
jmp .Lt_013D
.Lt_013E:
cmp dword ptr [ebp-4152], 256
jne .Lt_013F
mov dword ptr [ebp-4196], 0
jmp .Lt_025D
.Lt_013F:
mov dword ptr [ebp-4196], 10
.Lt_025D:
mov eax, dword ptr [ebp-4196]
mov dword ptr [ebp-4188], eax
.Lt_013D:
mov dword ptr [ebp-4160], 0
jmp .Lt_0125
jmp .Lt_0127
.Lt_0141:
jmp .Lt_0127
.Lt_0142:
cmp dword ptr [ebp-4156], 0
je .Lt_0144
mov eax, dword ptr [ebp-4156]
cmp dword ptr [eax+384], 0
jne .Lt_0146
mov eax, dword ptr [ebp-4156]
mov dword ptr [eax+384], 1
.Lt_0146:
.Lt_0145:
.Lt_0144:
.Lt_0143:
jmp .Lt_0127
.Lt_0128:
mov eax, dword ptr [ebp-4192]
add eax, 4294967287
cmp eax, 249
ja .Lt_0142
mov eax, dword ptr [ebp-4192]
jmp dword ptr [.LT_0147+eax*4-36]
.LT_0147:
.int .Lt_0141
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0141
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_012A
.int .Lt_012B
.int .Lt_0142
.int .Lt_0142
.int .Lt_0130
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_0142
.int .Lt_013C
.int .Lt_013C
.int .Lt_0139
.Lt_0127:
cmp dword ptr [ebp-4156], 0
je .Lt_0149
cmp dword ptr [ebp-4144], 7
je .Lt_014B
sub esp, 8
lea eax, [ebp-4140]
push eax
mov eax, dword ptr [ebp-4168]
imul eax, 12
mov ecx, dword ptr [ebp-4156]
add ecx, eax
lea eax, [ecx]
push eax
call DWSTRCONCATASSIGNA
add esp, 16
jmp .Lt_014A
.Lt_014B:
sub esp, 8
lea eax, [ebp-4140]
push eax
mov eax, dword ptr [ebp-4168]
imul eax, 12
mov ecx, dword ptr [ebp-4156]
add ecx, eax
lea eax, [ecx]
push eax
call DWSTRCONCATASSIGN
add esp, 16
.Lt_014A:
.Lt_0149:
.Lt_0148:
.Lt_0126:
jmp .Lt_0124
.Lt_0125:
cmp dword ptr [ebp-4156], 0
je .Lt_014D
mov eax, dword ptr [ebp-4168]
imul eax, 12
mov ecx, dword ptr [ebp-4156]
add ecx, eax
lea eax, [ecx]
mov dword ptr [ebp-4192], eax
mov eax, dword ptr [ebp-4192]
cmp dword ptr [eax], 0
je .Lt_0150
mov eax, dword ptr [ebp-4192]
mov ecx, dword ptr [eax]
cmp dword ptr [ecx], 32
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-4192]
sub esp, 12
mov ebx, dword ptr [ebp-4192]
push dword ptr [ebx]
mov ebx, ecx
mov esi, eax
call fb_WstrLen
add esp, 16
sal eax, 2
mov ecx, dword ptr [ebx]
add ecx, eax
cmp dword ptr [ecx-4], 32
sete al
shr eax, 1
sbb eax, eax
or esi, eax
je .Lt_0152
sub esp, 8
sub esp, 4
mov eax, dword ptr [ebp-4192]
push dword ptr [eax]
call fb_WstrTrim
add esp, 8
mov dword ptr [ebp-4196], eax
push dword ptr [ebp-4196]
mov eax, dword ptr [ebp-4192]
lea esi, [eax]
push esi
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-4196]
call fb_WstrDelete
add esp, 16
.Lt_0152:
.Lt_0151:
.Lt_0150:
.Lt_014F:
.Lt_014D:
.Lt_014C:
cmp dword ptr [ebp-4160], 0
jne .Lt_0155
cmp dword ptr [ebp-12], 0
je .Lt_0157
mov esi, dword ptr [ebp-12]
cmp dword ptr [esi+8], 0
setne al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp-4176]
not esi
or eax, esi
je .Lt_0159
sub esp, 8
push 1
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
.Lt_0159:
.Lt_0158:
.Lt_015A:
inc dword ptr [ebp-4168]
sub esp, 12
mov esi, dword ptr [ebp-4168]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
lea esi, [eax]
push esi
call DWSTRZERO
add esp, 16
.Lt_015C:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+56]
dec eax
cmp dword ptr [ebp-4168], eax
jl .Lt_015A
.Lt_015B:
.Lt_0157:
.Lt_0156:
jmp .Lt_011E
.Lt_0155:
.Lt_0154:
cmp dword ptr [ebp-12], 0
jne .Lt_015E
sub esp, 8
push 1
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
push 0
push 62
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_011E
.Lt_015E:
.Lt_015D:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-4168]
.Lt_011F:
jmp .Lt_011D
.Lt_011E:
sub esp, 8
push 0
push offset Lt_0264
call DWSTRASSIGN
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .Lt_0160
mov dword ptr [ebp-4192], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+80], 0
je .Lt_0162
sub esp, 8
lea eax, [ebp-4192]
push eax
push dword ptr [ebp-4156]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+80]
add esp, 16
mov dword ptr [ebp-4196], eax
cmp dword ptr [ebp-4192], 0
jne .Lt_0164
sub esp, 8
push dword ptr [ebp-4196]
push offset Lt_0264
call DWSTRASSIGN
add esp, 16
jmp .Lt_0163
.Lt_0164:
sub esp, 8
push dword ptr [ebp-4192]
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
.Lt_0163:
jmp .Lt_0161
.Lt_0162:
sub esp, 12
push 0
push -1
sub esp, 4
lea eax, [ebp-4192]
push eax
push dword ptr [ebp-4156]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
add esp, 12
push eax
push -1
lea eax, [ebp-4204]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ebp-4192], 0
jne .Lt_0166
sub esp, 8
push dword ptr [ebp-4204]
push offset Lt_0264
call DWSTRASSIGNA
add esp, 16
jmp .Lt_0165
.Lt_0166:
sub esp, 8
push dword ptr [ebp-4192]
push dword ptr [ebp+8]
call HREPORTMACROERROR
add esp, 16
.Lt_0165:
sub esp, 12
lea eax, [ebp-4204]
push eax
call fb_StrDelete
add esp, 16
.Lt_0161:
jmp .Lt_015F
.Lt_0160:
cmp dword ptr [ebp-4156], 0
je .Lt_0168
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+64]
mov dword ptr [ebp-16], esi
.Lt_0169:
cmp dword ptr [ebp-16], 0
je .Lt_016A
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi]
mov dword ptr [ebp-4192], eax
jmp .Lt_016C
.Lt_016E:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-4180], esi
cmp dword ptr [ebp-4180], 0
je .Lt_0170
sub esp, 8
push dword ptr [ebp-4180]
push offset Lt_0264
call DWSTRCONCATASSIGN
add esp, 16
.Lt_0170:
.Lt_016F:
jmp .Lt_016B
.Lt_0171:
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi+4]
imul eax, 12
mov esi, dword ptr [ebp-4156]
add esi, eax
mov eax, dword ptr [esi]
mov dword ptr [ebp-4180], eax
cmp dword ptr [ebp-4180], 0
je .Lt_0173
sub esp, 8
push offset Lt_0174
push offset Lt_0264
call DWSTRCONCATASSIGN
add esp, 16
sub esp, 8
sub esp, 12
push offset Lt_0176
push offset Lt_0175
push dword ptr [ebp-4180]
call HREPLACEW
add esp, 24
push eax
push offset Lt_0264
call DWSTRCONCATASSIGN
add esp, 16
sub esp, 8
push offset Lt_0175
push offset Lt_0264
call DWSTRCONCATASSIGN
add esp, 16
jmp .Lt_0172
.Lt_0173:
sub esp, 8
push offset Lt_0176
push offset Lt_0264
call DWSTRCONCATASSIGN
add esp, 16
.Lt_0172:
jmp .Lt_016B
.Lt_0177:
sub esp, 8
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push offset Lt_0264
call DWSTRCONCATASSIGNA
add esp, 16
jmp .Lt_016B
.Lt_0178:
sub esp, 8
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push offset Lt_0264
call DWSTRCONCATASSIGN
add esp, 16
jmp .Lt_016B
.Lt_016C:
cmp dword ptr [ebp-4192], 3
ja .Lt_016B
mov eax, dword ptr [ebp-4192]
jmp dword ptr [.LT_0179+eax*4]
.LT_0179:
.int .Lt_016E
.int .Lt_0171
.int .Lt_0177
.int .Lt_0178
.Lt_016B:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+12]
mov dword ptr [ebp-16], esi
jmp .Lt_0169
.Lt_016A:
.Lt_017A:
cmp dword ptr [ebp-4168], 0
jle .Lt_017B
dec dword ptr [ebp-4168]
sub esp, 8
push 0
mov esi, dword ptr [ebp-4168]
imul esi, 12
mov eax, dword ptr [ebp-4156]
add eax, esi
lea esi, [eax]
push esi
call DWSTRASSIGN
add esp, 16
jmp .Lt_017A
.Lt_017B:
sub esp, 8
push dword ptr [ebp-4156]
lea esi, [PP+176]
push esi
call LISTDELNODE
add esp, 16
.Lt_0168:
.Lt_0167:
.Lt_015F:
cmp dword ptr [ebp-4188], -1
je .Lt_017D
sub esp, 8
mov dword ptr [ebp-4200], 0
mov dword ptr [ebp-4196], 0
mov dword ptr [ebp-4192], 0
sub esp, 4
push 0
push -1
sub esp, 4
push dword ptr [ebp-4188]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [ebp-4200]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-4200]
push offset Lt_0264
call DWSTRCONCATASSIGNA
add esp, 16
sub esp, 12
lea eax, [ebp-4200]
push eax
call fb_StrDelete
add esp, 16
.Lt_017D:
.Lt_017C:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16584], 0
jne .Lt_0180
sub esp, 8
push dword ptr [Lt_0264]
mov eax, dword ptr [LEX+839936]
lea esi, [eax+16592]
push esi
call DWSTRASSIGN
add esp, 16
jmp .Lt_017F
.Lt_0180:
sub esp, 8
mov esi, dword ptr [LEX+839936]
push dword ptr [esi+16588]
push dword ptr [Lt_0264]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-4192], eax
push dword ptr [ebp-4192]
mov eax, dword ptr [LEX+839936]
lea esi, [eax+16592]
push esi
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-4192]
call fb_WstrDelete
add esp, 16
.Lt_017F:
dec dword ptr [PP+216]
sub esp, 12
push dword ptr [Lt_0264]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0110:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HLOADMACROW, .-HLOADMACROW

.section .bss
.balign 4
	.lcomm	Lt_0264,12

.section .text
.balign 16
HLOADDEFINEW:
.type HLOADDEFINEW, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_0182:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jle .Lt_0185
sub esp, 12
push dword ptr [ebp+8]
call HLOADMACROW
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_0187
jmp .Lt_0183
.Lt_0187:
.Lt_0186:
jmp .Lt_0184
.Lt_0185:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .Lt_0189
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 1
je .Lt_018B
sub esp, 8
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_00DB
push -1
sub esp, 4
push -1
mov ebx, dword ptr [ebp+8]
call dword ptr [ebx+76]
push eax
push 3
push offset Lt_00DC
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-44]
push offset Lt_0265
call DWSTRASSIGNA
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_018A
.Lt_018B:
sub esp, 8
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
sub esp, 4
push 0
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-20]
push offset Lt_0265
call DWSTRASSIGNA
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.Lt_018A:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16584], 0
jne .Lt_0191
sub esp, 8
push dword ptr [Lt_0265]
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16592]
push ebx
call DWSTRASSIGN
add esp, 16
jmp .Lt_0190
.Lt_0191:
sub esp, 8
mov ebx, dword ptr [LEX+839936]
push dword ptr [ebx+16588]
push dword ptr [Lt_0265]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16592]
push ebx
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call fb_WstrDelete
add esp, 16
.Lt_0190:
sub esp, 12
push dword ptr [Lt_0265]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0188
.Lt_0189:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .Lt_0194
mov dword ptr [ebp-12], 0
sub esp, 12
push -1
call LEXCURRENTCHAR
add esp, 16
cmp eax, 40
jne .Lt_0196
mov dword ptr [ebp-12], -1
jmp .Lt_0195
.Lt_0196:
mov eax, dword ptr [PP+216]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+72]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0198
jmp .Lt_0183
.Lt_0198:
.Lt_0197:
.Lt_0195:
cmp dword ptr [ebp-12], 0
je .Lt_019A
call LEXEATCHAR
sub esp, 12
push -1
call LEXCURRENTCHAR
add esp, 16
cmp eax, 41
je .Lt_019C
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
jmp .Lt_019B
.Lt_019C:
call LEXEATCHAR
.Lt_019B:
.Lt_019A:
.Lt_0199:
.Lt_0194:
.Lt_0193:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ecx, 7
je .Lt_019E
mov ecx, dword ptr [LEX+839936]
cmp dword ptr [ecx+16584], 0
jne .Lt_01A0
sub esp, 8
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
mov ecx, dword ptr [LEX+839936]
lea eax, [ecx+16592]
push eax
call DWSTRASSIGNA
add esp, 16
jmp .Lt_019F
.Lt_01A0:
sub esp, 8
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16588]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call fb_StrToWstr
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
mov eax, dword ptr [LEX+839936]
lea ecx, [eax+16592]
push ecx
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call fb_WstrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call fb_WstrDelete
add esp, 16
.Lt_019F:
jmp .Lt_019D
.Lt_019E:
mov ecx, dword ptr [LEX+839936]
cmp dword ptr [ecx+16584], 0
jne .Lt_01A4
sub esp, 8
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
mov ecx, dword ptr [LEX+839936]
lea eax, [ecx+16592]
push eax
call DWSTRASSIGN
add esp, 16
jmp .Lt_01A3
.Lt_01A4:
sub esp, 8
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16588]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call fb_WstrConcat
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [LEX+839936]
lea ecx, [eax+16592]
push ecx
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call fb_WstrDelete
add esp, 16
.Lt_01A3:
.Lt_019D:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+40]
mov dword ptr [ebp-8], eax
.Lt_0188:
.Lt_0184:
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16592]
mov dword ptr [ecx+16588], ebx
mov ebx, dword ptr [LEX+839936]
mov ecx, dword ptr [ebp-8]
add dword ptr [ebx+16584], ecx
mov dword ptr [ebp-4], -1
.Lt_0183:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HLOADDEFINEW, .-HLOADDEFINEW

.section .bss
.balign 4
	.lcomm	Lt_0265,12

.section .text
.balign 16
HRTRIMMACROTEXT:
.type HRTRIMMACROTEXT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B0:
.Lt_01B2:
cmp dword ptr [ebp+12], 0
je .Lt_01B3
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 2
je .Lt_01B5
jmp .Lt_01B3
.Lt_01B5:
.Lt_01B4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_01B7
.Lt_01B9:
sub esp, 12
push dword ptr [ebp+12]
call SYMBDELDEFINETOK
add esp, 16
mov dword ptr [ebp+12], eax
jmp .Lt_01B6
.Lt_01BA:
jmp .Lt_01B3
jmp .Lt_01B6
.Lt_01B7:
mov eax, dword ptr [ebp-8]
add eax, 4294967287
cmp eax, 23
ja .Lt_01BA
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_01BB+eax*4-36]
.LT_01BB:
.int .Lt_01B9
.int .Lt_01B9
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01B9
.Lt_01B6:
jmp .Lt_01B2
.Lt_01B3:
cmp dword ptr [ebp+12], 0
jne .Lt_01BD
mov dword ptr [ebp-4], 0
jmp .Lt_01BC
.Lt_01BD:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_01BC:
.Lt_01B1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HRTRIMMACROTEXT, .-HRTRIMMACROTEXT
.balign 16
HREADMACROTEXT:
.type HREADMACROTEXT, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_01BE:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-24], 0
.Lt_01C0:
mov dword ptr [ebp-20], 0
sub esp, 12
push 62
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-28], eax
jmp .Lt_01C4
.Lt_01C6:
cmp dword ptr [ebp+16], 0
je .Lt_01C8
sub esp, 4
push 0
push 0
push 134
call ERRREPORT
add esp, 16
.Lt_01C8:
.Lt_01C7:
jmp .Lt_01C1
jmp .Lt_01C3
.Lt_01C9:
cmp dword ptr [ebp+16], 0
jne .Lt_01CB
jmp .Lt_01C1
.Lt_01CB:
.Lt_01CA:
cmp dword ptr [ebp-16], 0
je .Lt_01CD
sub esp, 8
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push offset Lt_01CE
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 16
.Lt_01CD:
.Lt_01CC:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_01C2
jmp .Lt_01C3
.Lt_01CF:
cmp dword ptr [ebp+16], 0
jne .Lt_01D1
jmp .Lt_01C1
.Lt_01D1:
.Lt_01D0:
.Lt_01D2:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 62
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 257
je .Lt_01D8
.Lt_01D9:
cmp dword ptr [ebp-32], 256
jne .Lt_01D7
.Lt_01D8:
jmp .Lt_01D3
.Lt_01D7:
.Lt_01D5:
.Lt_01D4:
jmp .Lt_01D2
.Lt_01D3:
jmp .Lt_01C2
jmp .Lt_01C3
.Lt_01DA:
sub esp, 8
push 314
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 35
jne .Lt_01DD
.Lt_01DE:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_01C2
jmp .Lt_01DB
.Lt_01DD:
cmp dword ptr [ebp-32], 274
jne .Lt_01DF
.Lt_01E0:
cmp dword ptr [ebp+16], 0
je .Lt_01E2
inc dword ptr [ebp-24]
.Lt_01E2:
.Lt_01E1:
jmp .Lt_01DB
.Lt_01DF:
cmp dword ptr [ebp-32], 275
jne .Lt_01E3
.Lt_01E4:
cmp dword ptr [ebp+16], 0
je .Lt_01E6
cmp dword ptr [ebp-24], 0
jne .Lt_01E8
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call HRTRIMMACROTEXT
add esp, 16
mov dword ptr [ebp-16], eax
jmp .Lt_01C1
.Lt_01E8:
.Lt_01E7:
dec dword ptr [ebp-24]
.Lt_01E6:
.Lt_01E5:
jmp .Lt_01DB
.Lt_01E3:
cmp dword ptr [ebp-32], 265
jne .Lt_01E9
.Lt_01EA:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-20], -1
.Lt_01E9:
.Lt_01DB:
jmp .Lt_01C3
.Lt_01EB:
cmp dword ptr [ebp-16], 0
je .Lt_01ED
sub esp, 8
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push offset Lt_01EE
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 16
.Lt_01ED:
.Lt_01EC:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_01C2
jmp .Lt_01C3
.Lt_01C4:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967287
cmp ebx, 251
ja .Lt_01C3
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.LT_01EF+ebx*4-36]
.LT_01EF:
.int .Lt_01EB
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01EB
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01DA
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C6
.int .Lt_01C9
.int .Lt_01C3
.int .Lt_01CF
.int .Lt_01CF
.Lt_01C3:
sub esp, 12
push 62
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-28], eax
jmp .Lt_01F1
.Lt_01F3:
cmp dword ptr [ENV+552], 0
jne .Lt_01F5
sub esp, 8
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01F7
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.Lt_01F7:
.Lt_01F6:
sub esp, 8
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 16
jmp .Lt_01F4
.Lt_01F5:
sub esp, 8
push 3
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01F9
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.Lt_01F9:
.Lt_01F8:
sub esp, 8
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call WSTRASSIGN
add esp, 16
.Lt_01F4:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_01F0
.Lt_01FA:
sub esp, 8
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01FC
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.Lt_01FC:
.Lt_01FB:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 12
push eax
push 129
push offset Lt_0268
call fb_StrAssign
add esp, 32
sub esp, 8
push offset Lt_0268
lea eax, [SYMB+98768]
push eax
call HASHLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_01FE
cmp dword ptr [ebp-20], 0
jne .Lt_0200
mov eax, dword ptr [ebp-12]
mov dword ptr [eax], 0
jmp .Lt_01FF
.Lt_0200:
mov eax, dword ptr [ebp-12]
mov dword ptr [eax], 1
.Lt_01FF:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx+4], ecx
jmp .Lt_01FD
.Lt_01FE:
cmp dword ptr [ebp-20], 0
je .Lt_0202
sub esp, 8
push offset Lt_0203
mov ecx, dword ptr [ebp-12]
lea ebx, [ecx+4]
push ebx
call ZSTRASSIGN
add esp, 16
sub esp, 8
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRCONCATASSIGN
add esp, 16
jmp .Lt_0201
.Lt_0202:
sub esp, 8
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 16
.Lt_0201:
.Lt_01FD:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_01F0
.Lt_0204:
sub esp, 8
push 2
push dword ptr [ebp-12]
call SYMBADDDEFINETOK
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0206
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.Lt_0206:
.Lt_0205:
sub esp, 8
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call ZSTRASSIGN
add esp, 16
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_01F0
.Lt_01F1:
cmp dword ptr [ebp-28], 4
ja .Lt_0204
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.LT_0207+ebx*4]
.LT_0207:
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_01FA
.int .Lt_0204
.int .Lt_01F3
.Lt_01F0:
.Lt_01C2:
jmp .Lt_01C0
.Lt_01C1:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_01BF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HREADMACROTEXT, .-HREADMACROTEXT

.section .bss
.balign 4
	.lcomm	Lt_0268,129

.section .text
.balign 16
HREADDEFINETEXT:
.type HREADDEFINETEXT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0208:
cmp dword ptr [ENV+552], 0
jne .Lt_020B
sub esp, 12
push dword ptr [ebp+20]
call PPREADLITERAL
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
je .Lt_020D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ecx, 4
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_020F
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 32
jmp .Lt_020E
.Lt_020F:
push 0
push dword ptr [ebp-4]
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
call fb_StrCompare
add esp, 16
test eax, eax
je .Lt_0210
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 32
.Lt_0210:
.Lt_020E:
jmp .Lt_020C
.Lt_020D:
sub esp, 8
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+16]
sub esp, 4
push 0
push dword ptr [ebp-4]
call fb_StrLen
add esp, 12
push eax
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call SYMBADDDEFINE
add esp, 32
.Lt_020C:
jmp .Lt_020A
.Lt_020B:
sub esp, 12
push dword ptr [ebp+20]
call PPREADLITERALW
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .Lt_0212
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .Lt_0214
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 32
jmp .Lt_0213
.Lt_0214:
sub esp, 8
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call fb_WstrCompare
add esp, 16
test eax, eax
je .Lt_0215
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 32
.Lt_0215:
.Lt_0213:
jmp .Lt_0211
.Lt_0212:
sub esp, 8
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+16]
sub esp, 8
push dword ptr [ebp-8]
call fb_WstrLen
add esp, 12
push eax
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call SYMBADDDEFINEW
add esp, 32
.Lt_0211:
.Lt_020A:
.Lt_0209:
pop ebx
mov esp, ebp
pop ebp
ret
.size HREADDEFINETEXT, .-HREADDEFINETEXT
.balign 16
HMATCHPARAMELLIPSIS:
.type HMATCHPARAMELLIPSIS, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0216:
mov dword ptr [ebp-4], 0
sub esp, 12
push 34
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .Lt_0219
sub esp, 8
push 34
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
jne .Lt_021B
sub esp, 8
push 34
push 2
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
jne .Lt_021D
sub esp, 12
push 34
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 34
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 34
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_021D:
.Lt_021C:
.Lt_021B:
.Lt_021A:
.Lt_0219:
.Lt_0218:
.Lt_0217:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HMATCHPARAMELLIPSIS, .-HMATCHPARAMELLIPSIS

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_006D:	.ascii	"expanding: \0"
.balign 4
Lt_00DB:	.ascii	"\"\0"
.balign 4
Lt_00DC:	.ascii	"$\"\0"
.balign 4
Lt_00DD:	.ascii	"\"\"\0"
.balign 4
Lt_0174:	.ascii	"\44\0\0\0\42\0\0\0\0\0\0\0"
.balign 4
Lt_0175:	.ascii	"\42\0\0\0\0\0\0\0"
.balign 4
Lt_0176:	.ascii	"\42\0\0\0\42\0\0\0\0\0\0\0"
.balign 4
Lt_01CE:	.ascii	"\n\0"
.balign 4
Lt_01EE:	.ascii	" \0"
.balign 4
Lt_0203:	.ascii	"#\0"
