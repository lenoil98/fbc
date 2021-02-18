	.intel_syntax noprefix

.section .text
.balign 16

.globl ERRINIT
ERRINIT:
.type ERRINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_01D9:
inc dword ptr [ERRCTX]
mov dword ptr [ERRCTX+4], 0
mov dword ptr [ERRCTX+8], 0
mov dword ptr [ERRCTX+12], -1
mov dword ptr [ERRCTX+16], -1
sub esp, 4
push -1
push 64
lea eax, [ERRCTX+20]
push eax
call HASHINIT
add esp, 16
push -1
push 16
push 4
lea eax, [ERRCTX+32]
push eax
call LISTINIT
add esp, 16
.Lt_01DA:
mov esp, ebp
pop ebp
ret
.size ERRINIT, .-ERRINIT
.balign 16

.globl ERREND
ERREND:
.type ERREND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_01DB:
sub esp, 12
lea eax, [ERRCTX+32]
push eax
call LISTEND
add esp, 16
sub esp, 12
lea eax, [ERRCTX+20]
push eax
call HASHEND
add esp, 16
dec dword ptr [ERRCTX]
.Lt_01DC:
mov esp, ebp
pop ebp
ret
.size ERREND, .-ERREND
.balign 16

.globl ERRHIDEFURTHERERRORS
ERRHIDEFURTHERERRORS:
.type ERRHIDEFURTHERERRORS, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_01DD:
mov dword ptr [ERRCTX+8], -1
.Lt_01DE:
mov esp, ebp
pop ebp
ret
.size ERRHIDEFURTHERERRORS, .-ERRHIDEFURTHERERRORS
.balign 16

.globl ERRGETCOUNT
ERRGETCOUNT:
.type ERRGETCOUNT, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_01DF:
mov eax, dword ptr [ERRCTX+4]
mov dword ptr [ebp-4], eax
.Lt_01E0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ERRGETCOUNT, .-ERRGETCOUNT
.balign 16

.globl ERRPUSHPARAMLOCATION
ERRPUSHPARAMLOCATION:
.type ERRPUSHPARAMLOCATION, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01E1:
cmp dword ptr [ebp+8], 0
je .Lt_01E4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_01E6
cmp dword ptr [ebp+16], 1
jle .Lt_01E8
dec dword ptr [ebp+16]
.Lt_01E8:
.Lt_01E7:
.Lt_01E6:
.Lt_01E5:
.Lt_01E4:
.Lt_01E3:
sub esp, 12
lea ebx, [ERRCTX+32]
push ebx
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+12], eax
.Lt_01E2:
pop ebx
mov esp, ebp
pop ebp
ret
.size ERRPUSHPARAMLOCATION, .-ERRPUSHPARAMLOCATION
.balign 16

.globl ERRPOPPARAMLOCATION
ERRPOPPARAMLOCATION:
.type ERRPOPPARAMLOCATION, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_01E9:
sub esp, 8
sub esp, 4
lea eax, [ERRCTX+32]
push eax
call LISTGETTAIL
add esp, 8
push eax
lea eax, [ERRCTX+32]
push eax
call LISTDELNODE
add esp, 16
.Lt_01EA:
mov esp, ebp
pop ebp
ret
.size ERRPOPPARAMLOCATION, .-ERRPOPPARAMLOCATION
.balign 16

.globl ERRREPORTEX
ERRREPORTEX:
.type ERRREPORTEX, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_021A:
cmp dword ptr [ERRCTX+8], 0
je .Lt_021D
jmp .Lt_021B
.Lt_021D:
.Lt_021C:
cmp dword ptr [ERRCTX], 0
jle .Lt_021F
sub esp, 12
push dword ptr [ebp+12]
call HMAKEPARAMDESC
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_021F:
.Lt_021E:
cmp dword ptr [ebp+16], 0
jne .Lt_0221
mov eax, dword ptr [ERRCTX+16]
cmp dword ptr [PARSER+28], eax
jne .Lt_0223
jmp .Lt_021B
.Lt_0223:
.Lt_0222:
cmp dword ptr [LEX+839936], 0
je .Lt_0225
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16564]
mov dword ptr [ebp+16], ebx
.Lt_0225:
.Lt_0224:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ERRCTX+12], ebx
mov ebx, dword ptr [PARSER+28]
mov dword ptr [ERRCTX+16], ebx
.Lt_0221:
.Lt_0220:
sub esp, 8
push dword ptr [ebp+24]
push dword ptr [ENV+188]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HPRINTERRMSG
add esp, 32
inc dword ptr [ERRCTX+4]
mov ebx, dword ptr [ENV+192]
cmp dword ptr [ERRCTX+4], ebx
jl .Lt_0227
sub esp, 8
push 0
push 0
push dword ptr [ebp+16]
push 0
push 0
push 133
call HPRINTERRMSG
add esp, 32
call ERRHIDEFURTHERERRORS
.Lt_0227:
.Lt_0226:
.Lt_021B:
pop ebx
mov esp, ebp
pop ebp
ret
.size ERRREPORTEX, .-ERRREPORTEX
.balign 16

.globl ERRREPORT
ERRREPORT:
.type ERRREPORT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_023B:
call ERRHAVEPARAMLOCATION
test eax, eax
je .Lt_023E
mov dword ptr [ebp-4], 0
jmp .Lt_023D
.Lt_023E:
sub esp, 4
push 0
push 0
push dword ptr [ebp+12]
call HADDTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_023D:
sub esp, 12
push dword ptr [ebp+16]
push 1
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call ERRREPORTEX
add esp, 32
.Lt_023C:
mov esp, ebp
pop ebp
ret
.size ERRREPORT, .-ERRREPORT
.balign 16

.globl ERRREPORTWARNEX
ERRREPORTWARNEX:
.type ERRREPORTWARNEX, @function
push ebp
mov ebp, esp
sub esp, 84
push ebx
.Lt_023F:
mov eax, dword ptr [ebp+8]
cmp eax, 1
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 45
setge bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0242
jmp .Lt_0240
.Lt_0242:
.Lt_0241:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ENV+184]
cmp dword ptr [WARNINGMSGS+ebx*8-8], eax
jge .Lt_0244
jmp .Lt_0240
.Lt_0244:
.Lt_0243:
cmp dword ptr [ERRCTX+8], 0
je .Lt_0246
jmp .Lt_0240
.Lt_0246:
.Lt_0245:
cmp dword ptr [ERRCTX], 0
jle .Lt_0248
sub esp, 12
push dword ptr [ebp+12]
call HMAKEPARAMDESC
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_0248:
.Lt_0247:
sub esp, 8
push 261
lea eax, [ENV+280]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_024A
sub esp, 4
push 0
sub esp, 4
lea eax, [ENV+280]
push eax
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_0249
.Lt_024A:
cmp dword ptr [ebp+12], 0
je .Lt_024C
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+12]
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
mov dword ptr [ebp+12], 0
.Lt_024C:
.Lt_024B:
.Lt_0249:
cmp dword ptr [ebp+16], 0
jle .Lt_024E
sub esp, 4
push 0
sub esp, 4
push 2
push offset Lt_024F
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 16
push eax
push 2
push offset Lt_01F5
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_024D
.Lt_024E:
sub esp, 4
push 0
push 2
push offset Lt_0252
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_024D:
sub esp, 4
push 0
sub esp, 4
push 4
push offset Lt_0254
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [WARNINGMSGS+eax*8-8]
call fb_IntToStr
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_01F5
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 16
push eax
push 10
push offset Lt_0253
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 0
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [WARNINGMSGS+eax*8-4]
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+24], 0
je .Lt_025A
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+24]
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_025A:
.Lt_0259:
cmp dword ptr [ebp+12], 0
je .Lt_025C
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .Lt_025E
sub esp, 4
push 0
push 2
push offset Lt_0209
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_025D
.Lt_025E:
mov eax, dword ptr [ebp+20]
and eax, 2
test eax, eax
je .Lt_025F
sub esp, 4
push 0
push 2
push offset Lt_01FD
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_025D
.Lt_025F:
sub esp, 4
push 0
push 1
push offset Lt_01FC
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_025D:
mov eax, dword ptr [ebp+20]
and eax, 4
test eax, eax
je .Lt_0261
sub esp, 4
push 0
push 1
push offset Lt_020D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_0261:
.Lt_0260:
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+12]
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
mov eax, dword ptr [ebp+20]
and eax, 4
test eax, eax
je .Lt_0263
sub esp, 4
push 0
push 1
push offset Lt_020D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_0263:
.Lt_0262:
.Lt_025C:
.Lt_025B:
sub esp, 8
push 1
push 0
call fb_PrintVoid
add esp, 16
.Lt_0240:
pop ebx
mov esp, ebp
pop ebp
ret
.size ERRREPORTWARNEX, .-ERRREPORTWARNEX
.balign 16

.globl ERRREPORTWARN
ERRREPORTWARN:
.type ERRREPORTWARN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0266:
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16564]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ERRREPORTWARNEX
add esp, 32
.Lt_0267:
mov esp, ebp
pop ebp
ret
.size ERRREPORTWARN, .-ERRREPORTWARN
.balign 16

.globl ERRREPORTNOTALLOWED
ERRREPORTNOTALLOWED:
.type ERRREPORTNOTALLOWED, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_0274:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call GETNOTALLOWEDMSG
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+12]
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_0275:
mov esp, ebp
pop ebp
ret
.size ERRREPORTNOTALLOWED, .-ERRREPORTNOTALLOWED
.balign 16

.globl ERRREPORTPARAM
ERRREPORTPARAM:
.type ERRREPORTPARAM, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_02B1:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push -1
push dword ptr [ebp+8]
call ERRPUSHPARAMLOCATION
add esp, 16
sub esp, 12
push 0
push 1
push 0
push 0
push dword ptr [ebp+20]
call ERRREPORTEX
add esp, 32
call ERRPOPPARAMLOCATION
.Lt_02B2:
mov esp, ebp
pop ebp
ret
.size ERRREPORTPARAM, .-ERRREPORTPARAM
.balign 16

.globl ERRREPORTPARAMWARN
ERRREPORTPARAMWARN:
.type ERRREPORTPARAMWARN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_02B3:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push -1
push dword ptr [ebp+8]
call ERRPUSHPARAMLOCATION
add esp, 16
push 0
push 1
push 0
push dword ptr [ebp+20]
call ERRREPORTWARN
add esp, 16
call ERRPOPPARAMLOCATION
.Lt_02B4:
mov esp, ebp
pop ebp
ret
.size ERRREPORTPARAMWARN, .-ERRREPORTPARAMWARN
.balign 16

.globl ERRREPORTUNDEF
ERRREPORTUNDEF:
.type ERRREPORTUNDEF, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_02B5:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
sub esp, 12
push dword ptr [ebp+12]
call HASHHASH
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 4
push dword ptr [ebp-4]
push dword ptr [ebp+12]
lea eax, [ERRCTX+20]
push eax
call HASHLOOKUPEX
add esp, 16
test eax, eax
je .Lt_02B8
jmp .Lt_02B6
.Lt_02B8:
.Lt_02B7:
mov dword ptr [ebp-8], 0
sub esp, 8
push dword ptr [ebp+12]
lea eax, [ebp-8]
push eax
call ZSTRASSIGN
add esp, 16
push dword ptr [ebp-4]
push dword ptr [ebp-8]
push dword ptr [ebp-8]
lea eax, [ERRCTX+20]
push eax
call HASHADD
add esp, 16
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ERRREPORTEX
add esp, 32
.Lt_02B6:
mov esp, ebp
pop ebp
ret
.size ERRREPORTUNDEF, .-ERRREPORTUNDEF
.balign 16
fb_ctor__error:
.type fb_ctor__error, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__error, .-fb_ctor__error
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
ERRHAVEPARAMLOCATION:
.type ERRHAVEPARAMLOCATION, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01EB:
sub esp, 12
lea eax, [ERRCTX+32]
push eax
call LISTGETTAIL
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_01EC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ERRHAVEPARAMLOCATION, .-ERRHAVEPARAMLOCATION
.balign 16
HPRINTERRMSG:
.type HPRINTERRMSG, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_01ED:
mov eax, dword ptr [ebp+8]
cmp eax, 1
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 325
setge bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_01F0
mov dword ptr [Lt_02BC], 0
jmp .Lt_01EF
.Lt_01F0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ERRORMSGS+ebx*4-4]
mov dword ptr [Lt_02BC], eax
.Lt_01EF:
cmp dword ptr [ebp+12], 0
jne .Lt_01F2
mov eax, offset Lt_0000
mov dword ptr [ebp+12], eax
.Lt_01F2:
.Lt_01F1:
sub esp, 8
push 261
lea eax, [ENV+280]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_01F4
sub esp, 4
push 0
sub esp, 4
lea eax, [ENV+280]
push eax
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 0
push 1
push offset Lt_01F5
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+20], 0
jle .Lt_01F7
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+20]
call fb_IntToStr
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_01F7:
.Lt_01F6:
sub esp, 4
push 0
push 2
push offset Lt_01F8
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_01F4:
.Lt_01F3:
sub esp, 4
push 0
push 5
push offset Lt_01F9
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
jl .Lt_01FB
sub esp, 4
push 0
sub esp, 4
push 0
push dword ptr [Lt_02BC]
push -1
sub esp, 4
push 3
push offset Lt_01FD
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 16
push eax
push 2
push offset Lt_01FC
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+28], 0
je .Lt_0202
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+28]
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_0202:
.Lt_0201:
cmp dword ptr [ebp+24], 0
je .Lt_0204
mov eax, dword ptr [ebp+20]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp+24], eax
.Lt_0204:
.Lt_0203:
sub esp, 8
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_0206
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .Lt_0208
sub esp, 4
push 0
push 2
push offset Lt_0209
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_0207
.Lt_0208:
mov eax, dword ptr [ebp+16]
and eax, 2
test eax, eax
je .Lt_020A
sub esp, 4
push 0
push 2
push offset Lt_01FD
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_0207
.Lt_020A:
sub esp, 4
push 0
push 1
push offset Lt_01FC
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_0207:
mov eax, dword ptr [ebp+16]
and eax, 4
test eax, eax
je .Lt_020C
sub esp, 4
push 0
push 1
push offset Lt_020D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_020C:
.Lt_020B:
sub esp, 4
push 0
sub esp, 4
push dword ptr [ebp+12]
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
mov eax, dword ptr [ebp+16]
and eax, 4
test eax, eax
je .Lt_020F
sub esp, 4
push 0
push 1
push offset Lt_020D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_020F:
.Lt_020E:
.Lt_0206:
.Lt_0205:
cmp dword ptr [ebp+24], 0
je .Lt_0211
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ENV+888]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push offset Lt_02BF
call LEXPEEKCURRENTLINE
add esp, 12
push eax
push -1
push offset Lt_02C0
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push offset Lt_02C0
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_0213
mov eax, dword ptr [ENV+888]
and eax, 256
test eax, eax
je .Lt_0215
sub esp, 4
push 1
sub esp, 4
push 2
push offset Lt_0217
push -1
sub esp, 4
push -1
push offset Lt_02C0
push 6
push offset Lt_0216
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_0214
.Lt_0215:
sub esp, 8
push 1
push 0
call fb_PrintVoid
add esp, 16
sub esp, 4
push 1
push 0
push offset Lt_02BF
call LEXPEEKCURRENTLINE
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push offset Lt_02BF
push 0
call fb_PrintString
add esp, 16
.Lt_0214:
jmp .Lt_0212
.Lt_0213:
sub esp, 8
push 1
push 0
call fb_PrintVoid
add esp, 16
.Lt_0212:
jmp .Lt_0210
.Lt_0211:
sub esp, 8
push 1
push 0
call fb_PrintVoid
add esp, 16
.Lt_0210:
jmp .Lt_01FA
.Lt_01FB:
sub esp, 4
push 0
push 2
push offset Lt_01FD
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
sub esp, 4
push dword ptr [ebp+12]
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_01FA:
.Lt_01EE:
pop ebx
mov esp, ebp
pop ebp
ret
.size HPRINTERRMSG, .-HPRINTERRMSG

.section .bss
.balign 4
	.lcomm	Lt_02BC,4
.balign 4
	.lcomm	Lt_02BF,12
.balign 4
	.lcomm	Lt_02C0,12

.section .text
.balign 16
HADDTOKEN:
.type HADDTOKEN, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0228:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_02C1
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+16], 0
jne .Lt_022B
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push -1
push offset Lt_02C2
call fb_StrAssign
add esp, 32
jmp .Lt_022A
.Lt_022B:
sub esp, 12
push 0
push 0
push dword ptr [ebp+16]
push -1
push offset Lt_02C2
call fb_StrAssign
add esp, 32
.Lt_022A:
sub esp, 8
push -1
push offset Lt_02C2
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_022D
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 32
jle .Lt_0231
.Lt_0232:
cmp dword ptr [ebp-8], 257
je .Lt_0231
.Lt_0233:
cmp dword ptr [ebp-8], 256
jne .Lt_0230
.Lt_0231:
jmp .Lt_022E
.Lt_0230:
cmp dword ptr [ebp+12], 0
je .Lt_0236
sub esp, 12
push 0
push 3
push offset Lt_0209
push -1
push offset Lt_02C1
call fb_StrConcatAssign
add esp, 32
.Lt_0236:
.Lt_0235:
cmp dword ptr [ebp+8], 0
je .Lt_0238
sub esp, 12
push 0
push 9
push offset Lt_0239
push -1
push offset Lt_02C1
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0237
.Lt_0238:
sub esp, 12
push 0
push 8
push offset Lt_023A
push -1
push offset Lt_02C1
call fb_StrConcatAssign
add esp, 32
.Lt_0237:
sub esp, 12
push 0
push -1
push offset Lt_02C2
push -1
push offset Lt_02C1
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0217
push -1
push offset Lt_02C1
call fb_StrConcatAssign
add esp, 32
.Lt_0234:
.Lt_022E:
.Lt_022D:
.Lt_022C:
mov eax, dword ptr [Lt_02C1]
mov dword ptr [ebp-4], eax
.Lt_0229:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HADDTOKEN, .-HADDTOKEN

.section .bss
.balign 4
	.lcomm	Lt_02C1,12
.balign 4
	.lcomm	Lt_02C2,12

.section .text
.balign 16
GETNOTALLOWEDMSG:
.type GETNOTALLOWEDMSG, @function
push ebp
mov ebp, esp
sub esp, 56
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0268:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
.Lt_026D:
sub esp, 12
push dword ptr [ebp-28]
call FBGETLANGOPTIONS
add esp, 16
and eax, dword ptr [ebp+8]
test eax, eax
je .Lt_026F
cmp dword ptr [ebp-32], 0
jle .Lt_0271
sub esp, 12
push 0
push 5
push offset Lt_0272
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0271:
.Lt_0270:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-28]
call FBGETLANGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
inc dword ptr [ebp-32]
.Lt_026F:
.Lt_026E:
.Lt_026B:
inc dword ptr [ebp-28]
.Lt_026A:
cmp dword ptr [ebp-28], 3
jle .Lt_026D
.Lt_026C:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 4
push dword ptr [ebp+12]
mov eax, dword ptr [ebp-32]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push eax
push 0
call HADDTOKEN
add esp, 16
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0269
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_0269:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size GETNOTALLOWEDMSG, .-GETNOTALLOWEDMSG
.balign 16
HMAKEPARAMDESC:
.type HMAKEPARAMDESC, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_0276:
sub esp, 12
lea eax, [ERRCTX+32]
push eax
call LISTGETTAIL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0279
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0277
.Lt_0279:
.Lt_0278:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_02C5
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+8], 0
je .Lt_027B
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_01FC
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea ebx, [ebp-40]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02C5
call fb_StrAssign
add esp, 32
.Lt_027B:
.Lt_027A:
cmp dword ptr [ebp-24], 0
jle .Lt_027E
sub esp, 12
push 0
push 14
push offset Lt_027F
push -1
push offset Lt_02C5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-24]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_02C5
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp-20], 0
jne .Lt_0281
cmp dword ptr [ebp-12], 0
je .Lt_0283
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+8]
and eax, 2
test eax, eax
je .Lt_0284
mov dword ptr [ebp-40], 0
jmp .Lt_02C4
.Lt_0284:
mov dword ptr [ebp-40], 1
.Lt_02C4:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-36], eax
.Lt_0286:
cmp dword ptr [ebp-32], 0
je .Lt_0287
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-36], eax
jne .Lt_0289
jmp .Lt_0287
.Lt_0289:
.Lt_0288:
inc dword ptr [ebp-36]
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-32], ebx
jmp .Lt_0286
.Lt_0287:
cmp dword ptr [ebp-32], 0
je .Lt_028B
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-20], eax
.Lt_028B:
.Lt_028A:
.Lt_0283:
.Lt_0282:
.Lt_0281:
.Lt_0280:
cmp dword ptr [ebp-20], 0
je .Lt_028D
sub esp, 8
push 0
push dword ptr [ebp-20]
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_028F
sub esp, 12
push 0
push 3
push offset Lt_0290
push -1
push offset Lt_02C5
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp-20]
push -1
push offset Lt_02C5
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02C5
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_024F
push -1
push offset Lt_02C5
call fb_StrConcatAssign
add esp, 32
.Lt_028F:
.Lt_028E:
.Lt_028D:
.Lt_028C:
.Lt_027E:
.Lt_027D:
cmp dword ptr [ebp-12], 0
je .Lt_0293
mov dword ptr [ebp-32], -1
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
je .Lt_0295
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+16], 0
je .Lt_0297
push 4
push offset Lt_0298
push -1
sub esp, 12
push 3
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+16]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_LEFT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_029A
mov dword ptr [ebp-32], 0
.Lt_029A:
.Lt_0299:
jmp .Lt_0296
.Lt_0297:
mov dword ptr [ebp-32], 0
.Lt_0296:
jmp .Lt_0294
.Lt_0295:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .Lt_029C
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-12]
call SYMBPROCPTRTOSTR
add esp, 12
push eax
push -1
push offset Lt_02C6
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_02C6]
mov dword ptr [ebp-16], eax
jmp .Lt_029B
.Lt_029C:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+8]
and ebx, 28
test ebx, ebx
je .Lt_029D
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-12]
call SYMBMETHODTOSTR
add esp, 12
push eax
push -1
push offset Lt_02C6
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_02C6]
mov dword ptr [ebp-16], eax
.Lt_029D:
.Lt_029B:
.Lt_0294:
cmp dword ptr [ebp-32], 0
je .Lt_029F
cmp dword ptr [ebp-16], 0
jne .Lt_02A1
mov dword ptr [ebp-28], -1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_02A3
sub esp, 8
push 0
push dword ptr [ebp-16]
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_02A5
sub esp, 12
push dword ptr [ebp-12]
call SYMBGETMANGLEDNAME
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_02A5:
.Lt_02A4:
.Lt_02A3:
.Lt_02A2:
jmp .Lt_02A0
.Lt_02A1:
mov dword ptr [ebp-28], 0
.Lt_02A0:
cmp dword ptr [ebp-16], 0
je .Lt_02A7
cmp dword ptr [ebp-24], 0
jle .Lt_02A9
sub esp, 12
push 0
push 5
push offset Lt_02AA
push -1
push offset Lt_02C5
call fb_StrConcatAssign
add esp, 32
.Lt_02A9:
.Lt_02A8:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp-16]
push -1
push offset Lt_02C5
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02C5
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-28], 0
je .Lt_02AD
sub esp, 12
push 0
push 3
push offset Lt_0252
push -1
push offset Lt_02C5
call fb_StrConcatAssign
add esp, 32
.Lt_02AD:
.Lt_02AC:
.Lt_02A7:
.Lt_02A6:
.Lt_029F:
.Lt_029E:
jmp .Lt_0292
.Lt_0293:
cmp dword ptr [ebp-24], 0
jle .Lt_02AF
sub esp, 12
push 0
push 5
push offset Lt_02AA
push -1
push offset Lt_02C5
call fb_StrConcatAssign
add esp, 32
.Lt_02AF:
.Lt_02AE:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call SYMBKEYWORDGETTEXT
add esp, 16
push eax
push -1
push offset Lt_02C5
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02C5
call fb_StrAssign
add esp, 32
.Lt_0292:
mov eax, dword ptr [Lt_02C5]
mov dword ptr [ebp-4], eax
.Lt_0277:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HMAKEPARAMDESC, .-HMAKEPARAMDESC

.section .bss
.balign 4
	.lcomm	Lt_02C5,12
.balign 4
	.lcomm	Lt_02C6,12

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
.balign 4
	.lcomm	ERRCTX,64

.section .data
.balign 4
WARNINGMSGS:
.int 2
.int Lt_0068
.int 2
.int Lt_0069
.int 2
.int Lt_006A
.int 2
.int Lt_006B
.int 1
.int Lt_006C
.int 2
.int Lt_006D
.int 2
.int Lt_006E
.int 2
.int Lt_006F
.int 2
.int Lt_0070
.int 1
.int Lt_0071
.int 1
.int Lt_0072
.int 1
.int Lt_0073
.int 1
.int Lt_0074
.int 2
.int Lt_0075
.int 1
.int Lt_0076
.int 1
.int Lt_0077
.int 1
.int Lt_0078
.int 2
.int Lt_0079
.int 2
.int Lt_007A
.int 3
.int Lt_007B
.int 3
.int Lt_007C
.int 1
.int Lt_007D
.int 3
.int Lt_007E
.int 3
.int Lt_007F
.int 1
.int Lt_0080
.int 1
.int Lt_0081
.int 1
.int Lt_0082
.int 1
.int Lt_0083
.int 1
.int Lt_0084
.int 1
.int Lt_0085
.int 1
.int Lt_0086
.int 1
.int Lt_0087
.int 1
.int Lt_0088
.int 1
.int Lt_0089
.int 1
.int Lt_008A
.int 1
.int Lt_008B
.int 2
.int Lt_0000
.int 1
.int Lt_008C
.int 1
.int Lt_008D
.int 0
.int Lt_008E
.int 0
.int Lt_008F
.int 0
.int Lt_0090
.int 0
.int Lt_0091
.int 1
.int Lt_0092

.section .rodata
.balign 4
Lt_0068:	.ascii	"Passing scalar as pointer\0"
.balign 4
Lt_0069:	.ascii	"Passing pointer to scalar\0"
.balign 4
Lt_006A:	.ascii	"Passing different pointer types\0"
.balign 4
Lt_006B:	.ascii	"Suspicious pointer assignment\0"
.balign 4
Lt_006C:	.ascii	"Implicit conversion\0"
.balign 4
Lt_006D:	.ascii	"Cannot export symbol without -export option\0"
.balign 4
Lt_006E:	.ascii	"Identifier's name too big, truncated\0"
.balign 4
Lt_006F:	.ascii	"Literal number too big, truncated\0"
.balign 4
Lt_0070:	.ascii	"Literal string too big, truncated\0"
.balign 4
Lt_0071:	.ascii	"UDT with pointer, var-len string, or var-len array fields\0"
.balign 4
Lt_0072:	.ascii	"Implicit variable allocation\0"
.balign 4
Lt_0073:	.ascii	"Missing closing quote in literal string\0"
.balign 4
Lt_0074:	.ascii	"Function result was not explicitly set\0"
.balign 4
Lt_0075:	.ascii	"Branch crossing local variable definition\0"
.balign 4
Lt_0076:	.ascii	"No explicit BYREF or BYVAL\0"
.balign 4
Lt_0077:	.ascii	"Possible escape sequence found in\0"
.balign 4
Lt_0078:	.ascii	"The type length is too large, consider passing BYREF\0"
.balign 4
Lt_0079:	.ascii	"The length of the parameters list is too large, consider passing UDT's BYREF\0"
.balign 4
Lt_007A:	.ascii	"The ANY initializer has no effect on UDT's with default constructors\0"
.balign 4
Lt_007B:	.ascii	"Object files or libraries with mixed multithreading (-mt) options\0"
.balign 4
Lt_007C:	.ascii	"Object files or libraries with mixed language (-lang) options\0"
.balign 4
Lt_007D:	.ascii	"Deleting ANY pointers is undefined\0"
.balign 4
Lt_007E:	.ascii	"Array too large for stack, consider making it var-len or SHARED\0"
.balign 4
Lt_007F:	.ascii	"Variable too large for stack, consider making it SHARED\0"
.balign 4
Lt_0080:	.ascii	"Overflow in constant conversion\0"
.balign 4
Lt_0081:	.ascii	"Variable following NEXT is meaningless\0"
.balign 4
Lt_0082:	.ascii	"Cast to non-pointer\0"
.balign 4
Lt_0083:	.ascii	"Return method mismatch\0"
.balign 4
Lt_0084:	.ascii	"Passing Pointer\0"
.balign 4
Lt_0085:	.ascii	"Command line option overrides directive\0"
.balign 4
Lt_0086:	.ascii	"Directive ignored after first pass\0"
.balign 4
Lt_0087:	.ascii	"'IF' statement found directly after multi-line 'ELSE'\0"
.balign 4
Lt_0088:	.ascii	"Shift value greater than or equal to number of bits in data type\0"
.balign 4
Lt_0089:	.ascii	"'=' parsed as equality operator in function argument, not assignment to BYREF function result\0"
.balign 4
Lt_008A:	.ascii	"Mixing signed/unsigned operands\0"
.balign 4
Lt_008B:	.ascii	"Mismatching parameter initializer\0"
.balign 4
Lt_008C:	.ascii	"Suspicious logic operation, mixed boolean and non-boolean operands\0"
.balign 4
Lt_008D:	.ascii	"Redefinition of intrinsic\0"
.balign 4
Lt_008E:	.ascii	"CONST qualifier discarded\0"
.balign 4
Lt_008F:	.ascii	"Return type mismatch\0"
.balign 4
Lt_0090:	.ascii	"Calling convention mismatch\0"
.balign 4
Lt_0091:	.ascii	"Argument count mismatch\0"
.balign 4
Lt_0092:	.ascii	"Suffix ignored\0"

.section .data
.balign 4
ERRORMSGS:
.int Lt_0091
.int Lt_0094
.int Lt_0095
.int Lt_0096
.int Lt_0097
.int Lt_0098
.int Lt_0099
.int Lt_009A
.int Lt_009B
.int Lt_009C
.int Lt_009D
.int Lt_009E
.int Lt_009F
.int Lt_00A0
.int Lt_00A1
.int Lt_00A2
.int Lt_00A3
.int Lt_00A4
.int Lt_00A5
.int Lt_00A6
.int Lt_00A7
.int Lt_00A8
.int Lt_00A9
.int Lt_00AA
.int Lt_00AB
.int Lt_00AC
.int Lt_00AD
.int Lt_00AE
.int Lt_00AF
.int Lt_00B0
.int Lt_00B1
.int Lt_00B2
.int Lt_00B3
.int Lt_00B4
.int Lt_00B5
.int Lt_00B6
.int Lt_00B7
.int Lt_00B8
.int Lt_00B9
.int Lt_00BA
.int Lt_00BB
.int Lt_00BC
.int Lt_00BD
.int Lt_00BE
.int Lt_00BF
.int Lt_00C0
.int Lt_00C1
.int Lt_00C2
.int Lt_00C3
.int Lt_00C4
.int Lt_00C5
.int Lt_00C6
.int Lt_00C7
.int Lt_00C8
.int Lt_00C9
.int Lt_00CA
.int Lt_00CB
.int Lt_00A6
.int Lt_00CC
.int Lt_00CD
.int Lt_00CE
.int Lt_00CF
.int Lt_00D0
.int Lt_00D1
.int Lt_00D2
.int Lt_00D3
.int Lt_00D4
.int Lt_00D5
.int Lt_00D6
.int Lt_00D7
.int Lt_00D8
.int Lt_00D9
.int Lt_00DA
.int Lt_00DB
.int Lt_00DC
.int Lt_00DD
.int Lt_00DE
.int Lt_00DF
.int Lt_00E0
.int Lt_00E1
.int Lt_00E2
.int Lt_00E3
.int Lt_00E4
.int Lt_00E5
.int Lt_00E6
.int Lt_00E7
.int Lt_00E8
.int Lt_00E9
.int Lt_00EA
.int Lt_00EB
.int Lt_00EC
.int Lt_00ED
.int Lt_00EE
.int Lt_00EF
.int Lt_00F0
.int Lt_00F1
.int Lt_00F2
.int Lt_00F3
.int Lt_00F4
.int Lt_00F5
.int Lt_00F6
.int Lt_00F7
.int Lt_00F8
.int Lt_00F9
.int Lt_00FA
.int Lt_00FB
.int Lt_00FC
.int Lt_00FD
.int Lt_00FE
.int Lt_00FF
.int Lt_0100
.int Lt_0101
.int Lt_0102
.int Lt_0103
.int Lt_0104
.int Lt_0105
.int Lt_0106
.int Lt_0107
.int Lt_0108
.int Lt_0109
.int Lt_010A
.int Lt_010B
.int Lt_010C
.int Lt_010D
.int Lt_010E
.int Lt_010F
.int Lt_0110
.int Lt_0111
.int Lt_0112
.int Lt_0113
.int Lt_0114
.int Lt_0115
.int Lt_0116
.int Lt_0117
.int Lt_0118
.int Lt_0119
.int Lt_011A
.int Lt_011B
.int Lt_011C
.int Lt_011D
.int Lt_011E
.int Lt_011F
.int Lt_0120
.int Lt_0121
.int Lt_0122
.int Lt_0123
.int Lt_0124
.int Lt_0125
.int Lt_0126
.int Lt_0127
.int Lt_0128
.int Lt_0129
.int Lt_012A
.int Lt_012B
.int Lt_012C
.int Lt_012D
.int Lt_012E
.int Lt_012F
.int Lt_0130
.int Lt_0131
.int Lt_0132
.int Lt_0133
.int Lt_0134
.int Lt_0135
.int Lt_0136
.int Lt_0137
.int Lt_0138
.int Lt_0139
.int Lt_013A
.int Lt_013B
.int Lt_013C
.int Lt_013D
.int Lt_013E
.int Lt_013F
.int Lt_0140
.int Lt_0141
.int Lt_0142
.int Lt_0144
.int Lt_0146
.int Lt_0147
.int Lt_0148
.int Lt_0149
.int Lt_014A
.int Lt_014B
.int Lt_014C
.int Lt_014D
.int Lt_014E
.int Lt_0150
.int Lt_0151
.int Lt_0152
.int Lt_0153
.int Lt_0154
.int Lt_0155
.int Lt_0156
.int Lt_0157
.int Lt_0158
.int Lt_0159
.int Lt_015A
.int Lt_015B
.int Lt_015C
.int Lt_015D
.int Lt_015E
.int Lt_015F
.int Lt_0160
.int Lt_0161
.int Lt_0162
.int Lt_0163
.int Lt_0164
.int Lt_0165
.int Lt_0166
.int Lt_0167
.int Lt_0168
.int Lt_0169
.int Lt_016A
.int Lt_016B
.int Lt_016C
.int Lt_016D
.int Lt_016E
.int Lt_016F
.int Lt_0170
.int Lt_0171
.int Lt_0172
.int Lt_0173
.int Lt_0174
.int Lt_0175
.int Lt_0176
.int Lt_0177
.int Lt_0178
.int Lt_0179
.int Lt_017A
.int Lt_017B
.int Lt_017C
.int Lt_017D
.int Lt_017E
.int Lt_017F
.int Lt_0180
.int Lt_0181
.int Lt_0182
.int Lt_0183
.int Lt_0184
.int Lt_0185
.int Lt_0186
.int Lt_0187
.int Lt_0188
.int Lt_0189
.int Lt_018A
.int Lt_018B
.int Lt_018C
.int Lt_018D
.int Lt_018E
.int Lt_018F
.int Lt_0190
.int Lt_0191
.int Lt_0192
.int Lt_0193
.int Lt_0194
.int Lt_0195
.int Lt_0196
.int Lt_0197
.int Lt_0198
.int Lt_0199
.int Lt_019A
.int Lt_019B
.int Lt_019C
.int Lt_019D
.int Lt_019E
.int Lt_019F
.int Lt_01A0
.int Lt_01A1
.int Lt_01A2
.int Lt_01A3
.int Lt_01A4
.int Lt_01A5
.int Lt_01A6
.int Lt_01A7
.int Lt_01A8
.int Lt_01A9
.int Lt_01AA
.int Lt_01AB
.int Lt_01AC
.int Lt_01AD
.int Lt_01AE
.int Lt_01AF
.int Lt_01B0
.int Lt_01B1
.int Lt_01B2
.int Lt_01B3
.int Lt_01B4
.int Lt_01B5
.int Lt_01B6
.int Lt_01B7
.int Lt_01B8
.int Lt_01B9
.int Lt_01BA
.int Lt_01BB
.int Lt_01BC
.int Lt_01BD
.int Lt_01BE
.int Lt_01BF
.int Lt_01C0
.int Lt_01C1
.int Lt_01C2
.int Lt_01C3
.int Lt_01C4
.int Lt_01C5
.int Lt_01C6
.int Lt_01C7
.int Lt_01C8
.int Lt_01C9
.int Lt_01CA
.int Lt_01CB
.int Lt_01CC
.int Lt_01CD
.int Lt_01CE
.int Lt_01CF
.int Lt_01D0
.int Lt_01D1
.int Lt_01D2
.int Lt_01D3
.int Lt_01D4
.int Lt_01D5
.int Lt_01D6
.int Lt_01D7
.int Lt_01D8

.section .rodata
.balign 4
Lt_0094:	.ascii	"Expected End-of-File\0"
.balign 4
Lt_0095:	.ascii	"Expected End-of-Line\0"
.balign 4
Lt_0096:	.ascii	"Duplicated definition\0"
.balign 4
Lt_0097:	.ascii	"Expected 'AS'\0"
.balign 4
Lt_0098:	.ascii	"Expected '('\0"
.balign 4
Lt_0099:	.ascii	"Expected ')'\0"
.balign 4
Lt_009A:	.ascii	"Undefined symbol\0"
.balign 4
Lt_009B:	.ascii	"Expected expression\0"
.balign 4
Lt_009C:	.ascii	"Expected '='\0"
.balign 4
Lt_009D:	.ascii	"Expected constant\0"
.balign 4
Lt_009E:	.ascii	"Expected 'TO'\0"
.balign 4
Lt_009F:	.ascii	"Expected 'NEXT'\0"
.balign 4
Lt_00A0:	.ascii	"Expected identifier\0"
.balign 4
Lt_00A1:	.ascii	"Expected '-'\0"
.balign 4
Lt_00A2:	.ascii	"Expected ','\0"
.balign 4
Lt_00A3:	.ascii	"Syntax error\0"
.balign 4
Lt_00A4:	.ascii	"Element not defined\0"
.balign 4
Lt_00A5:	.ascii	"Expected 'END TYPE' or 'END UNION'\0"
.balign 4
Lt_00A6:	.ascii	"Type mismatch\0"
.balign 4
Lt_00A7:	.ascii	"Internal!\0"
.balign 4
Lt_00A8:	.ascii	"Parameter type mismatch\0"
.balign 4
Lt_00A9:	.ascii	"File not found\0"
.balign 4
Lt_00AA:	.ascii	"Invalid data types\0"
.balign 4
Lt_00AB:	.ascii	"Invalid character\0"
.balign 4
Lt_00AC:	.ascii	"File access error\0"
.balign 4
Lt_00AD:	.ascii	"Recursion level too deep\0"
.balign 4
Lt_00AE:	.ascii	"Expected pointer\0"
.balign 4
Lt_00AF:	.ascii	"Expected 'LOOP'\0"
.balign 4
Lt_00B0:	.ascii	"Expected 'WEND'\0"
.balign 4
Lt_00B1:	.ascii	"Expected 'THEN'\0"
.balign 4
Lt_00B2:	.ascii	"Expected 'END IF'\0"
.balign 4
Lt_00B3:	.ascii	"Illegal 'END'\0"
.balign 4
Lt_00B4:	.ascii	"Expected 'CASE'\0"
.balign 4
Lt_00B5:	.ascii	"Expected 'END SELECT'\0"
.balign 4
Lt_00B6:	.ascii	"Wrong number of dimensions\0"
.balign 4
Lt_00B7:	.ascii	"Array boundaries do not match the original EXTERN declaration\0"
.balign 4
Lt_00B8:	.ascii	"'SUB' or 'FUNCTION' without 'END SUB' or 'END FUNCTION'\0"
.balign 4
Lt_00B9:	.ascii	"Expected 'END SUB' or 'END FUNCTION'\0"
.balign 4
Lt_00BA:	.ascii	"Return type here does not match DECLARE prototype\0"
.balign 4
Lt_00BB:	.ascii	"Calling convention does not match DECLARE prototype\0"
.balign 4
Lt_00BC:	.ascii	"Variable not declared\0"
.balign 4
Lt_00BD:	.ascii	"Variable required\0"
.balign 4
Lt_00BE:	.ascii	"Illegal outside a compound statement\0"
.balign 4
Lt_00BF:	.ascii	"Expected 'END ASM'\0"
.balign 4
Lt_00C0:	.ascii	"Function not declared\0"
.balign 4
Lt_00C1:	.ascii	"Expected ';'\0"
.balign 4
Lt_00C2:	.ascii	"Undefined label\0"
.balign 4
Lt_00C3:	.ascii	"Too many array dimensions\0"
.balign 4
Lt_00C4:	.ascii	"Array too big\0"
.balign 4
Lt_00C5:	.ascii	"User Defined Type too big\0"
.balign 4
Lt_00C6:	.ascii	"Expected scalar counter\0"
.balign 4
Lt_00C7:	.ascii	"Illegal outside a CONSTRUCTOR, DESTRUCTOR, FUNCTION, OPERATOR, PROPERTY or SUB block\0"
.balign 4
Lt_00C8:	.ascii	"Expected var-len array\0"
.balign 4
Lt_00C9:	.ascii	"Fixed-len strings cannot be returned from functions\0"
.balign 4
Lt_00CA:	.ascii	"Array already dimensioned\0"
.balign 4
Lt_00CB:	.ascii	"Illegal without the -ex option\0"
.balign 4
Lt_00CC:	.ascii	"Illegal specification\0"
.balign 4
Lt_00CD:	.ascii	"Expected 'END WITH'\0"
.balign 4
Lt_00CE:	.ascii	"Illegal inside functions\0"
.balign 4
Lt_00CF:	.ascii	"Statement in between SELECT and first CASE\0"
.balign 4
Lt_00D0:	.ascii	"Expected array\0"
.balign 4
Lt_00D1:	.ascii	"Expected '{'\0"
.balign 4
Lt_00D2:	.ascii	"Expected '}'\0"
.balign 4
Lt_00D3:	.ascii	"Expected ']'\0"
.balign 4
Lt_00D4:	.ascii	"Too many expressions\0"
.balign 4
Lt_00D5:	.ascii	"Expected explicit result type\0"
.balign 4
Lt_00D6:	.ascii	"Range too large\0"
.balign 4
Lt_00D7:	.ascii	"Forward references not allowed\0"
.balign 4
Lt_00D8:	.ascii	"Incomplete type\0"
.balign 4
Lt_00D9:	.ascii	"Array not dimensioned\0"
.balign 4
Lt_00DA:	.ascii	"Array access, index expected\0"
.balign 4
Lt_00DB:	.ascii	"Expected 'END ENUM'\0"
.balign 4
Lt_00DC:	.ascii	"Var-len arrays cannot be initialized\0"
.balign 4
Lt_00DD:	.ascii	"'...' ellipsis upper bound given for dynamic array (this is not supported)\0"
.balign 4
Lt_00DE:	.ascii	"'...' ellipsis upper bound given for array field (this is not supported)\0"
.balign 4
Lt_00DF:	.ascii	"Invalid bitfield\0"
.balign 4
Lt_00E0:	.ascii	"Too many parameters\0"
.balign 4
Lt_00E1:	.ascii	"Macro text too long\0"
.balign 4
Lt_00E2:	.ascii	"Invalid command-line option\0"
.balign 4
Lt_00E3:	.ascii	"Selected non-x86 CPU when compiling for DOS\0"
.balign 4
Lt_00E4:	.ascii	"Selected -gen gas|gas64 ASM backend is incompatible with CPU\0"
.balign 4
Lt_00E5:	.ascii	"-asm att used for -gen gas, but -gen gas only supports -asm intel\0"
.balign 4
Lt_00E6:	.ascii	"-pic used when making executable (only works when making a shared library)\0"
.balign 4
Lt_00E7:	.ascii	"-pic used, but not supported by target system (only works for non-x86 Unixes)\0"
.balign 4
Lt_00E8:	.ascii	"Var-len strings cannot be initialized\0"
.balign 4
Lt_00E9:	.ascii	"Recursive TYPE or UNION not allowed\0"
.balign 4
Lt_00EA:	.ascii	"Recursive DEFINE not allowed\0"
.balign 4
Lt_00EB:	.ascii	"Identifier cannot include periods\0"
.balign 4
Lt_00EC:	.ascii	"Executable not found\0"
.balign 4
Lt_00ED:	.ascii	"Array out-of-bounds\0"
.balign 4
Lt_00EE:	.ascii	"Missing command-line option for\0"
.balign 4
Lt_00EF:	.ascii	"Expected 'ANY'\0"
.balign 4
Lt_00F0:	.ascii	"Expected 'END SCOPE'\0"
.balign 4
Lt_00F1:	.ascii	"Illegal inside a compound statement or scoped block\0"
.balign 4
Lt_00F2:	.ascii	"UDT function results cannot be passed by reference\0"
.balign 4
Lt_00F3:	.ascii	"Ambiguous call to overloaded function\0"
.balign 4
Lt_00F4:	.ascii	"No matching overloaded function\0"
.balign 4
Lt_00F5:	.ascii	"Division by zero\0"
.balign 4
Lt_00F6:	.ascii	"Cannot pop stack, underflow\0"
.balign 4
Lt_00F7:	.ascii	"UDT's containing var-len string fields cannot be initialized\0"
.balign 4
Lt_00F8:	.ascii	"Branching to scope block containing local variables\0"
.balign 4
Lt_00F9:	.ascii	"Branching to other functions or to module-level\0"
.balign 4
Lt_00FA:	.ascii	"Branch crossing local array, var-len string or object definition\0"
.balign 4
Lt_00FB:	.ascii	"LOOP without DO\0"
.balign 4
Lt_00FC:	.ascii	"NEXT without FOR\0"
.balign 4
Lt_00FD:	.ascii	"WEND without WHILE\0"
.balign 4
Lt_00FE:	.ascii	"END WITH without WITH\0"
.balign 4
Lt_00FF:	.ascii	"END IF without IF\0"
.balign 4
Lt_0100:	.ascii	"END SELECT without SELECT\0"
.balign 4
Lt_0101:	.ascii	"END SUB or FUNCTION without SUB or FUNCTION\0"
.balign 4
Lt_0102:	.ascii	"END SCOPE without SCOPE\0"
.balign 4
Lt_0103:	.ascii	"END NAMESPACE without NAMESPACE\0"
.balign 4
Lt_0104:	.ascii	"END EXTERN without EXTERN\0"
.balign 4
Lt_0105:	.ascii	"ELSEIF without IF\0"
.balign 4
Lt_0106:	.ascii	"ELSE without IF\0"
.balign 4
Lt_0107:	.ascii	"CASE without SELECT\0"
.balign 4
Lt_0108:	.ascii	"Cannot modify a constant\0"
.balign 4
Lt_0109:	.ascii	"Expected period ('.')\0"
.balign 4
Lt_010A:	.ascii	"Expected 'END NAMESPACE'\0"
.balign 4
Lt_010B:	.ascii	"Illegal inside a NAMESPACE block\0"
.balign 4
Lt_010C:	.ascii	"Symbols defined inside namespaces cannot be removed\0"
.balign 4
Lt_010D:	.ascii	"Expected 'END EXTERN'\0"
.balign 4
Lt_010E:	.ascii	"Expected 'END SUB'\0"
.balign 4
Lt_010F:	.ascii	"Expected 'END FUNCTION'\0"
.balign 4
Lt_0110:	.ascii	"Expected 'END CONSTRUCTOR'\0"
.balign 4
Lt_0111:	.ascii	"Expected 'END DESTRUCTOR'\0"
.balign 4
Lt_0112:	.ascii	"Expected 'END OPERATOR'\0"
.balign 4
Lt_0113:	.ascii	"Expected 'END PROPERTY'\0"
.balign 4
Lt_0114:	.ascii	"Declaration outside the original namespace\0"
.balign 4
Lt_0115:	.ascii	"No end of multi-line comment, expected \"'/\"\0"
.balign 4
Lt_0116:	.ascii	"Too many errors, exiting\0"
.balign 4
Lt_0117:	.ascii	"Expected 'ENDMACRO'\0"
.balign 4
Lt_0118:	.ascii	"EXTERN or COMMON variables cannot be initialized\0"
.balign 4
Lt_0119:	.ascii	"EXTERN or COMMON dynamic arrays cannot have initial bounds\0"
.balign 4
Lt_011A:	.ascii	"At least one parameter must be a user-defined type\0"
.balign 4
Lt_011B:	.ascii	"Parameter or result must be a user-defined type\0"
.balign 4
Lt_011C:	.ascii	"Both parameters can't be of the same type\0"
.balign 4
Lt_011D:	.ascii	"Parameter and result can't be of the same type\0"
.balign 4
Lt_011E:	.ascii	"Invalid result type for this operator\0"
.balign 4
Lt_011F:	.ascii	"Invalid parameter type, it must be the same as the parent TYPE/CLASS\0"
.balign 4
Lt_0120:	.ascii	"Vararg parameters are not allowed in overloaded functions\0"
.balign 4
Lt_0121:	.ascii	"Illegal outside an OPERATOR block\0"
.balign 4
Lt_0122:	.ascii	"Parameter cannot be optional\0"
.balign 4
Lt_0123:	.ascii	"Only valid in -lang\0"
.balign 4
Lt_0124:	.ascii	"Default types or suffixes are only valid in -lang\0"
.balign 4
Lt_0125:	.ascii	"Suffixes are only valid in -lang\0"
.balign 4
Lt_0126:	.ascii	"Implicit variables are only valid in -lang\0"
.balign 4
Lt_0127:	.ascii	"Auto variables are only valid in -lang\0"
.balign 4
Lt_0128:	.ascii	"Invalid array index\0"
.balign 4
Lt_0129:	.ascii	"Operator must be a member function\0"
.balign 4
Lt_012A:	.ascii	"Operator cannot be a member function\0"
.balign 4
Lt_012B:	.ascii	"Method declared in anonymous UDT\0"
.balign 4
Lt_012C:	.ascii	"Constant declared in anonymous UDT\0"
.balign 4
Lt_012D:	.ascii	"Static variable declared in anonymous UDT\0"
.balign 4
Lt_012E:	.ascii	"Expected operator\0"
.balign 4
Lt_012F:	.ascii	"Declaration outside the original namespace or class\0"
.balign 4
Lt_0130:	.ascii	"A destructor should not have any parameters\0"
.balign 4
Lt_0131:	.ascii	"Expected class or UDT identifier\0"
.balign 4
Lt_0132:	.ascii	"Var-len strings cannot be part of UNION's or nested TYPE's\0"
.balign 4
Lt_0133:	.ascii	"Dynamic arrays cannot be part of UNION's or nested TYPE's\0"
.balign 4
Lt_0134:	.ascii	"Fields with constructors cannot be part of UNION's or nested TYPE's\0"
.balign 4
Lt_0135:	.ascii	"Fields with destructors cannot be part of UNION's or nested TYPE's\0"
.balign 4
Lt_0136:	.ascii	"Illegal outside a CONSTRUCTOR block\0"
.balign 4
Lt_0137:	.ascii	"Illegal outside a DESTRUCTOR block\0"
.balign 4
Lt_0138:	.ascii	"UDT's with methods must have unique names\0"
.balign 4
Lt_0139:	.ascii	"Parent is not a class or UDT\0"
.balign 4
Lt_013A:	.ascii	"CONSTRUCTOR() chain call not at top of constructor\0"
.balign 4
Lt_013B:	.ascii	"BASE() initializer not at top of constructor\0"
.balign 4
Lt_013C:	.ascii	"REDIM on UDT with non-CDECL constructor\0"
.balign 4
Lt_013D:	.ascii	"REDIM on UDT with non-CDECL destructor\0"
.balign 4
Lt_013E:	.ascii	"REDIM on UDT with non-parameterless default constructor\0"
.balign 4
Lt_013F:	.ascii	"ERASE on UDT with non-CDECL constructor\0"
.balign 4
Lt_0140:	.ascii	"ERASE on UDT with non-CDECL destructor\0"
.balign 4
Lt_0141:	.ascii	"ERASE on UDT with non-parameterless default constructor\0"
.balign 4
Lt_0142:	.ascii	"This symbol cannot be undefined\0"
.balign 4
Lt_0144:	.ascii	"RETURN mixed with 'FUNCTION =' or EXIT FUNCTION (using both styles together is unsupported when returning objects with constructors)\0"
.balign 4
Lt_0146:	.ascii	"'FUNCTION =' or EXIT FUNCTION mixed with RETURN (using both styles together is unsupported when returning objects with constructors)\0"
.balign 4
Lt_0147:	.ascii	"Missing RETURN to copy-construct function result\0"
.balign 4
Lt_0148:	.ascii	"Invalid assignment/conversion\0"
.balign 4
Lt_0149:	.ascii	"Invalid array subscript\0"
.balign 4
Lt_014A:	.ascii	"TYPE or CLASS has no default constructor\0"
.balign 4
Lt_014B:	.ascii	"Function result TYPE has no default constructor\0"
.balign 4
Lt_014C:	.ascii	"Missing BASE() initializer (base UDT without default constructor requires manual initialization)\0"
.balign 4
Lt_014D:	.ascii	"Missing default constructor implementation (base UDT without default constructor requires manual initialization)\0"
.balign 4
Lt_014E:	.ascii	"Missing UDT.constructor(byref as UDT) implementation (base UDT without default constructor requires manual initialization)\0"
.balign 4
Lt_0150:	.ascii	"Missing UDT.constructor(byref as const UDT) implementation (base UDT without default constructor requires manual initialization)\0"
.balign 4
Lt_0151:	.ascii	"Invalid priority attribute\0"
.balign 4
Lt_0152:	.ascii	"PROPERTY GET should have no parameter, or just one if indexed\0"
.balign 4
Lt_0153:	.ascii	"PROPERTY SET should have one parameter, or just two if indexed\0"
.balign 4
Lt_0154:	.ascii	"Expected 'PROPERTY'\0"
.balign 4
Lt_0155:	.ascii	"Illegal outside a PROPERTY block\0"
.balign 4
Lt_0156:	.ascii	"PROPERTY has no GET method/accessor\0"
.balign 4
Lt_0157:	.ascii	"PROPERTY has no SET method/accessor\0"
.balign 4
Lt_0158:	.ascii	"PROPERTY has no indexed GET method/accessor\0"
.balign 4
Lt_0159:	.ascii	"PROPERTY has no indexed SET method/accessor\0"
.balign 4
Lt_015A:	.ascii	"Missing overloaded operator: \0"
.balign 4
Lt_015B:	.ascii	"The NEW[] operator does not allow explicit calls to constructors\0"
.balign 4
Lt_015C:	.ascii	"The NEW[] operator only supports the { ANY } initialization\0"
.balign 4
Lt_015D:	.ascii	"The NEW operator cannot be used with fixed-length strings\0"
.balign 4
Lt_015E:	.ascii	"Illegal member access\0"
.balign 4
Lt_015F:	.ascii	"Expected ':'\0"
.balign 4
Lt_0160:	.ascii	"The default constructor has no public access\0"
.balign 4
Lt_0161:	.ascii	"Constructor has no public access\0"
.balign 4
Lt_0162:	.ascii	"Destructor has no public access\0"
.balign 4
Lt_0163:	.ascii	"Accessing base UDT's private default constructor\0"
.balign 4
Lt_0164:	.ascii	"Accessing base UDT's private destructor\0"
.balign 4
Lt_0165:	.ascii	"Illegal non-static member access\0"
.balign 4
Lt_0166:	.ascii	"Constructor declared ABSTRACT\0"
.balign 4
Lt_0167:	.ascii	"Constructor declared VIRTUAL\0"
.balign 4
Lt_0168:	.ascii	"Destructor declared ABSTRACT\0"
.balign 4
Lt_0169:	.ascii	"Member cannot be static\0"
.balign 4
Lt_016A:	.ascii	"Member isn't static\0"
.balign 4
Lt_016B:	.ascii	"Only static members can be accessed from static functions\0"
.balign 4
Lt_016C:	.ascii	"The PRIVATE and PUBLIC attributes are not allowed with REDIM, COMMON or EXTERN\0"
.balign 4
Lt_016D:	.ascii	"STATIC used here, but not the in the DECLARE statement\0"
.balign 4
Lt_016E:	.ascii	"CONST used here, but not the in the DECLARE statement\0"
.balign 4
Lt_016F:	.ascii	"VIRTUAL used here, but not the in the DECLARE statement\0"
.balign 4
Lt_0170:	.ascii	"ABSTRACT used here, but not the in the DECLARE statement\0"
.balign 4
Lt_0171:	.ascii	"Method declared VIRTUAL, but UDT does not extend OBJECT\0"
.balign 4
Lt_0172:	.ascii	"Method declared ABSTRACT, but UDT does not extend OBJECT\0"
.balign 4
Lt_0173:	.ascii	"Not overriding any virtual method\0"
.balign 4
Lt_0174:	.ascii	"Implemented body for an ABSTRACT method\0"
.balign 4
Lt_0175:	.ascii	"Override has different return type than overridden method\0"
.balign 4
Lt_0176:	.ascii	"Override has different calling convention than overridden method\0"
.balign 4
Lt_0177:	.ascii	"Implicit destructor override would have different calling convention\0"
.balign 4
Lt_0178:	.ascii	"Implicit LET operator override would have different calling convention\0"
.balign 4
Lt_0179:	.ascii	"Override is not a CONST member like the overridden method\0"
.balign 4
Lt_017A:	.ascii	"Override is a CONST member, but the overridden method is not\0"
.balign 4
Lt_017B:	.ascii	"Override has different parameters than overridden method\0"
.balign 4
Lt_017C:	.ascii	"This operator cannot be STATIC\0"
.balign 4
Lt_017D:	.ascii	"This operator is implicitly STATIC and cannot be VIRTUAL or ABSTRACT\0"
.balign 4
Lt_017E:	.ascii	"This operator is implicitly STATIC and cannot be CONST\0"
.balign 4
Lt_017F:	.ascii	"Parameter must be an integer\0"
.balign 4
Lt_0180:	.ascii	"Parameter must be a pointer\0"
.balign 4
Lt_0181:	.ascii	"Expected initializer\0"
.balign 4
Lt_0182:	.ascii	"Fields cannot be named as keywords in TYPE's that contain member functions or in CLASS'es\0"
.balign 4
Lt_0183:	.ascii	"Illegal outside a FOR compound statement\0"
.balign 4
Lt_0184:	.ascii	"Illegal outside a DO compound statement\0"
.balign 4
Lt_0185:	.ascii	"Illegal outside a WHILE compound statement\0"
.balign 4
Lt_0186:	.ascii	"Illegal outside a SELECT compound statement\0"
.balign 4
Lt_0187:	.ascii	"Expected 'FOR'\0"
.balign 4
Lt_0188:	.ascii	"Expected 'DO'\0"
.balign 4
Lt_0189:	.ascii	"Expected 'WHILE'\0"
.balign 4
Lt_018A:	.ascii	"Expected 'SELECT'\0"
.balign 4
Lt_018B:	.ascii	"No outer FOR compound statement found\0"
.balign 4
Lt_018C:	.ascii	"No outer DO compound statement found\0"
.balign 4
Lt_018D:	.ascii	"No outer WHILE compound statement found\0"
.balign 4
Lt_018E:	.ascii	"No outer SELECT compound statement found\0"
.balign 4
Lt_018F:	.ascii	"Expected 'CONSTRUCTOR', 'DESTRUCTOR', 'DO', 'FOR', 'FUNCTION', 'OPERATOR', 'PROPERTY', 'SELECT', 'SUB' or 'WHILE'\0"
.balign 4
Lt_0190:	.ascii	"Expected 'DO', 'FOR' or 'WHILE'\0"
.balign 4
Lt_0191:	.ascii	"Illegal outside a SUB block\0"
.balign 4
Lt_0192:	.ascii	"Illegal outside a FUNCTION block\0"
.balign 4
Lt_0193:	.ascii	"Ambiguous symbol access, explicit scope resolution required\0"
.balign 4
Lt_0194:	.ascii	"An ENUM, TYPE or UNION cannot be empty\0"
.balign 4
Lt_0195:	.ascii	"ENUM's declared inside EXTERN .. END EXTERN blocks don't open new scopes\0"
.balign 4
Lt_0196:	.ascii	"STATIC used on non-member procedure\0"
.balign 4
Lt_0197:	.ascii	"CONST used on non-member procedure\0"
.balign 4
Lt_0198:	.ascii	"ABSTRACT used on non-member procedure\0"
.balign 4
Lt_0199:	.ascii	"VIRTUAL used on non-member procedure\0"
.balign 4
Lt_019A:	.ascii	"Invalid initializer\0"
.balign 4
Lt_019B:	.ascii	"Objects with default [con|de]structors or methods are only allowed in the module level\0"
.balign 4
Lt_019C:	.ascii	"Static member variable in nested UDT (only allowed in toplevel UDTs)\0"
.balign 4
Lt_019D:	.ascii	"Symbol not a CLASS, ENUM, TYPE or UNION type\0"
.balign 4
Lt_019E:	.ascii	"Too many elements\0"
.balign 4
Lt_019F:	.ascii	"Only data members supported\0"
.balign 4
Lt_01A0:	.ascii	"UNIONs are not allowed\0"
.balign 4
Lt_01A1:	.ascii	"Arrays are not allowed\0"
.balign 4
Lt_01A2:	.ascii	"COMMON variables cannot be object instances of CLASS/TYPE's with cons/destructors\0"
.balign 4
Lt_01A3:	.ascii	"Cloning operators (LET, Copy constructors) can't take a byval arg of the parent's type\0"
.balign 4
Lt_01A4:	.ascii	"Local symbols can't be referenced\0"
.balign 4
Lt_01A5:	.ascii	"Expected 'PTR' or 'POINTER'\0"
.balign 4
Lt_01A6:	.ascii	"Too many levels of pointer indirection\0"
.balign 4
Lt_01A7:	.ascii	"Dynamic arrays can't be const\0"
.balign 4
Lt_01A8:	.ascii	"Const UDT cannot invoke non-const method\0"
.balign 4
Lt_01A9:	.ascii	"Elements must be empty for strings and arrays\0"
.balign 4
Lt_01AA:	.ascii	"GOSUB disabled, use 'OPTION GOSUB' to enable\0"
.balign 4
Lt_01AB:	.ascii	"Invalid -lang\0"
.balign 4
Lt_01AC:	.ascii	"Can't use ANY as initializer in array with ellipsis bound\0"
.balign 4
Lt_01AD:	.ascii	"Must have initializer with array with ellipsis bound\0"
.balign 4
Lt_01AE:	.ascii	"Can't use ... as lower bound\0"
.balign 4
Lt_01AF:	.ascii	"FOR/NEXT variable name mismatch\0"
.balign 4
Lt_01B0:	.ascii	"Selected option requires an SSE FPU mode\0"
.balign 4
Lt_01B1:	.ascii	"Expected relational operator ( =, >, <, <>, <=, >= )\0"
.balign 4
Lt_01B2:	.ascii	"Unsupported statement in -gen gcc mode\0"
.balign 4
Lt_01B3:	.ascii	"Too many labels\0"
.balign 4
Lt_01B4:	.ascii	"Unsupported function\0"
.balign 4
Lt_01B5:	.ascii	"Expected sub\0"
.balign 4
Lt_01B6:	.ascii	"Expected '#ENDIF'\0"
.balign 4
Lt_01B7:	.ascii	"Resource file given for target system that does not support them\0"
.balign 4
Lt_01B8:	.ascii	"-o <file> option without corresponding input file\0"
.balign 4
Lt_01B9:	.ascii	"Not extending a TYPE/UNION (a TYPE/UNION can only extend other TYPEs/UNIONs)\0"
.balign 4
Lt_01BA:	.ascii	"Illegal outside a CLASS, TYPE or UNION method\0"
.balign 4
Lt_01BB:	.ascii	"CLASS, TYPE or UNION not derived\0"
.balign 4
Lt_01BC:	.ascii	"CLASS, TYPE or UNION has no constructor\0"
.balign 4
Lt_01BD:	.ascii	"Symbol type has no Run-Time Type Info (RTTI)\0"
.balign 4
Lt_01BE:	.ascii	"Types have no hierarchical relation\0"
.balign 4
Lt_01BF:	.ascii	"Expected a CLASS, TYPE or UNION symbol type\0"
.balign 4
Lt_01C0:	.ascii	"Casting derived UDT pointer from incompatible pointer type\0"
.balign 4
Lt_01C1:	.ascii	"Casting derived UDT pointer from unrelated UDT pointer type\0"
.balign 4
Lt_01C2:	.ascii	"Casting derived UDT pointer to incompatible pointer type\0"
.balign 4
Lt_01C3:	.ascii	"Casting derived UDT pointer to unrelated UDT pointer type\0"
.balign 4
Lt_01C4:	.ascii	"ALIAS name string is empty\0"
.balign 4
Lt_01C5:	.ascii	"LIB name string is empty\0"
.balign 4
Lt_01C6:	.ascii	"UDT has unimplemented abstract methods\0"
.balign 4
Lt_01C7:	.ascii	"Non-virtual call to ABSTRACT method\0"
.balign 4
Lt_01C8:	.ascii	"#ASSERT condition failed\0"
.balign 4
Lt_01C9:	.ascii	"Expected '>'\0"
.balign 4
Lt_01CA:	.ascii	"Invalid size\0"
.balign 4
Lt_01CB:	.ascii	"ALIAS name here does not match ALIAS given in DECLARE prototype\0"
.balign 4
Lt_01CC:	.ascii	"vararg parameters are only allowed in CDECL procedures\0"
.balign 4
Lt_01CD:	.ascii	"the first parameter in a procedure may not be vararg\0"
.balign 4
Lt_01CE:	.ascii	"CONST used on constructor (not needed)\0"
.balign 4
Lt_01CF:	.ascii	"CONST used on destructor (not needed)\0"
.balign 4
Lt_01D0:	.ascii	"Byref function result not set\0"
.balign 4
Lt_01D1:	.ascii	"Function result assignment outside of the function\0"
.balign 4
Lt_01D2:	.ascii	"Type mismatch in byref function result assignment\0"
.balign 4
Lt_01D3:	.ascii	"-asm att|intel option given, but not supported for this target (only x86 or x86_64)\0"
.balign 4
Lt_01D4:	.ascii	"Reference not initialized\0"
.balign 4
Lt_01D5:	.ascii	"Incompatible reference initializer\0"
.balign 4
Lt_01D6:	.ascii	"Array of references - not supported yet\0"
.balign 4
Lt_01D7:	.ascii	"Invalid CASE range, start value is greater than the end value\0"
.balign 4
Lt_01D8:	.ascii	"Fixed-length string combined with BYREF (not supported)\0"
.balign 4
Lt_01F5:	.ascii	"(\0"
.balign 4
Lt_01F8:	.ascii	") \0"
.balign 4
Lt_01F9:	.ascii	"error\0"
.balign 4
Lt_01FC:	.ascii	" \0"
.balign 4
Lt_01FD:	.ascii	": \0"
.balign 4
Lt_0209:	.ascii	", \0"
.balign 4
Lt_020D:	.ascii	"\"\0"
.balign 4
Lt_0216:	.ascii	" in '\0"
.balign 4
Lt_0217:	.ascii	"'\0"
.balign 4
Lt_0239:	.ascii	"before '\0"
.balign 4
Lt_023A:	.ascii	"found '\0"
.balign 4
Lt_024F:	.ascii	")\0"
.balign 4
Lt_0252:	.ascii	"()\0"
.balign 4
Lt_0253:	.ascii	" warning \0"
.balign 4
Lt_0254:	.ascii	"): \0"
.balign 4
Lt_0272:	.ascii	" or \0"
.balign 4
Lt_027F:	.ascii	"at parameter \0"
.balign 4
Lt_0290:	.ascii	" (\0"
.balign 4
Lt_0298:	.ascii	"FB_\0"
.balign 4
Lt_02AA:	.ascii	" of \0"

.section .ctors, "aw", @progbits
.int fb_ctor__error
