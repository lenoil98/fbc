	.intel_syntax noprefix

.section .text
.balign 16

.globl _ERRINIT
_ERRINIT:
.Lt_01DA:
inc dword ptr [_ERRCTX]
mov dword ptr [_ERRCTX+4], 0
mov dword ptr [_ERRCTX+8], 0
mov dword ptr [_ERRCTX+12], -1
mov dword ptr [_ERRCTX+16], -1
push -1
push 64
lea eax, [_ERRCTX+20]
push eax
call _HASHINIT
add esp, 12
push -1
push 16
push 4
lea eax, [_ERRCTX+32]
push eax
call _LISTINIT
add esp, 16
.Lt_01DB:
ret
.balign 16

.globl _ERREND
_ERREND:
.Lt_01DC:
lea eax, [_ERRCTX+32]
push eax
call _LISTEND
add esp, 4
lea eax, [_ERRCTX+20]
push eax
call _HASHEND
add esp, 4
dec dword ptr [_ERRCTX]
.Lt_01DD:
ret
.balign 16

.globl _ERRHIDEFURTHERERRORS
_ERRHIDEFURTHERERRORS:
.Lt_01DE:
mov dword ptr [_ERRCTX+8], -1
.Lt_01DF:
ret
.balign 16

.globl _ERRGETCOUNT
_ERRGETCOUNT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_01E0:
mov eax, dword ptr [_ERRCTX+4]
mov dword ptr [ebp-4], eax
.Lt_01E1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ERRPUSHPARAMLOCATION
_ERRPUSHPARAMLOCATION:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01E2:
cmp dword ptr [ebp+8], 0
je .Lt_01E5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_01E7
cmp dword ptr [ebp+16], 1
jle .Lt_01E9
dec dword ptr [ebp+16]
.Lt_01E9:
.Lt_01E8:
.Lt_01E7:
.Lt_01E6:
.Lt_01E5:
.Lt_01E4:
lea ebx, [_ERRCTX+32]
push ebx
call _LISTNEWNODE
add esp, 4
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
.Lt_01E3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ERRPOPPARAMLOCATION
_ERRPOPPARAMLOCATION:
.Lt_01EA:
lea eax, [_ERRCTX+32]
push eax
call _LISTGETTAIL
add esp, 4
push eax
lea eax, [_ERRCTX+32]
push eax
call _LISTDELNODE
add esp, 8
.Lt_01EB:
ret
.balign 16

.globl _ERRREPORTEX
_ERRREPORTEX:
push ebp
mov ebp, esp
push ebx
.Lt_021B:
cmp dword ptr [_ERRCTX+8], 0
je .Lt_021E
jmp .Lt_021C
.Lt_021E:
.Lt_021D:
cmp dword ptr [_ERRCTX], 0
jle .Lt_0220
push dword ptr [ebp+12]
call _HMAKEPARAMDESC
add esp, 4
mov dword ptr [ebp+12], eax
.Lt_0220:
.Lt_021F:
cmp dword ptr [ebp+16], 0
jne .Lt_0222
mov eax, dword ptr [_ERRCTX+16]
cmp dword ptr [_PARSER+28], eax
jne .Lt_0224
jmp .Lt_021C
.Lt_0224:
.Lt_0223:
cmp dword ptr [_LEX+213248], 0
je .Lt_0226
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4276]
mov dword ptr [ebp+16], ebx
.Lt_0226:
.Lt_0225:
mov ebx, dword ptr [ebp+16]
mov dword ptr [_ERRCTX+12], ebx
mov ebx, dword ptr [_PARSER+28]
mov dword ptr [_ERRCTX+16], ebx
.Lt_0222:
.Lt_0221:
push dword ptr [ebp+24]
push dword ptr [_ENV+188]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPRINTERRMSG
add esp, 24
inc dword ptr [_ERRCTX+4]
mov ebx, dword ptr [_ENV+192]
cmp dword ptr [_ERRCTX+4], ebx
jl .Lt_0228
push 0
push 0
push dword ptr [ebp+16]
push 0
push 0
push 133
call _HPRINTERRMSG
add esp, 24
call _ERRHIDEFURTHERERRORS
.Lt_0228:
.Lt_0227:
.Lt_021C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ERRREPORT
_ERRREPORT:
push ebp
mov ebp, esp
sub esp, 4
.Lt_023C:
call _ERRHAVEPARAMLOCATION
test eax, eax
je .Lt_023F
mov dword ptr [ebp-4], 0
jmp .Lt_023E
.Lt_023F:
push 0
push 0
push dword ptr [ebp+12]
call _HADDTOKEN
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_023E:
push dword ptr [ebp+16]
push 1
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _ERRREPORTEX
add esp, 20
.Lt_023D:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ERRREPORTWARNEX
_ERRREPORTWARNEX:
push ebp
mov ebp, esp
sub esp, 72
push ebx
.Lt_0240:
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
je .Lt_0243
jmp .Lt_0241
.Lt_0243:
.Lt_0242:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_ENV+184]
cmp dword ptr [_WARNINGMSGS+ebx*8-8], eax
jge .Lt_0245
jmp .Lt_0241
.Lt_0245:
.Lt_0244:
cmp dword ptr [_ERRCTX+8], 0
je .Lt_0247
jmp .Lt_0241
.Lt_0247:
.Lt_0246:
cmp dword ptr [_ERRCTX], 0
jle .Lt_0249
push dword ptr [ebp+12]
call _HMAKEPARAMDESC
add esp, 4
mov dword ptr [ebp+12], eax
.Lt_0249:
.Lt_0248:
push 261
lea eax, [_ENV+280]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_024B
push 0
lea eax, [_ENV+280]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_024A
.Lt_024B:
cmp dword ptr [ebp+12], 0
je .Lt_024D
push 0
push dword ptr [ebp+12]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
mov dword ptr [ebp+12], 0
.Lt_024D:
.Lt_024C:
.Lt_024A:
cmp dword ptr [ebp+16], 0
jle .Lt_024F
push 0
push 2
push offset _Lt_0250
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr
add esp, 4
push eax
push 2
push offset _Lt_01F6
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_024E
.Lt_024F:
push 0
push 2
push offset _Lt_0253
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_024E:
push 0
push 4
push offset _Lt_0255
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [_WARNINGMSGS+eax*8-8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 2
push offset _Lt_01F6
push -1
push -1
push dword ptr [ebp+8]
call _fb_IntToStr
add esp, 4
push eax
push 10
push offset _Lt_0254
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [_WARNINGMSGS+eax*8-4]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+24], 0
je .Lt_025B
push 0
push dword ptr [ebp+24]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_025B:
.Lt_025A:
cmp dword ptr [ebp+12], 0
je .Lt_025D
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .Lt_025F
push 0
push 2
push offset _Lt_020A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_025E
.Lt_025F:
mov eax, dword ptr [ebp+20]
and eax, 2
test eax, eax
je .Lt_0260
push 0
push 2
push offset _Lt_01FE
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_025E
.Lt_0260:
push 0
push 1
push offset _Lt_01FD
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_025E:
mov eax, dword ptr [ebp+20]
and eax, 4
test eax, eax
je .Lt_0262
push 0
push 1
push offset _Lt_020E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_0262:
.Lt_0261:
push 0
push dword ptr [ebp+12]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
mov eax, dword ptr [ebp+20]
and eax, 4
test eax, eax
je .Lt_0264
push 0
push 1
push offset _Lt_020E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_0264:
.Lt_0263:
.Lt_025D:
.Lt_025C:
push 1
push 0
call _fb_PrintVoid
add esp, 8
.Lt_0241:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ERRREPORTWARN
_ERRREPORTWARN:
push ebp
mov ebp, esp
.Lt_0267:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
mov eax, dword ptr [_LEX+213248]
push dword ptr [eax+4276]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ERRREPORTWARNEX
add esp, 20
.Lt_0268:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ERRREPORTNOTALLOWED
_ERRREPORTNOTALLOWED:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0275:
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _GETNOTALLOWEDMSG
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
push 0
push 0
push 0
push dword ptr [ebp-12]
push dword ptr [ebp+12]
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0276:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ERRREPORTPARAM
_ERRREPORTPARAM:
push ebp
mov ebp, esp
.Lt_02B2:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push -1
push dword ptr [ebp+8]
call _ERRPUSHPARAMLOCATION
add esp, 16
push 0
push 1
push 0
push 0
push dword ptr [ebp+20]
call _ERRREPORTEX
add esp, 20
call _ERRPOPPARAMLOCATION
.Lt_02B3:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ERRREPORTPARAMWARN
_ERRREPORTPARAMWARN:
push ebp
mov ebp, esp
.Lt_02B4:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push -1
push dword ptr [ebp+8]
call _ERRPUSHPARAMLOCATION
add esp, 16
push 0
push 1
push 0
push dword ptr [ebp+20]
call _ERRREPORTWARN
add esp, 16
call _ERRPOPPARAMLOCATION
.Lt_02B5:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ERRREPORTUNDEF
_ERRREPORTUNDEF:
push ebp
mov ebp, esp
sub esp, 8
.Lt_02B6:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
push dword ptr [ebp+12]
call _HASHHASH
add esp, 4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
push dword ptr [ebp+12]
lea eax, [_ERRCTX+20]
push eax
call _HASHLOOKUPEX
add esp, 12
test eax, eax
je .Lt_02B9
jmp .Lt_02B7
.Lt_02B9:
.Lt_02B8:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+12]
lea eax, [ebp-8]
push eax
call _ZSTRASSIGN
add esp, 8
push dword ptr [ebp-4]
push dword ptr [ebp-8]
push dword ptr [ebp-8]
lea eax, [_ERRCTX+20]
push eax
call _HASHADD
add esp, 16
push 0
push 1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ERRREPORTEX
add esp, 20
.Lt_02B7:
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__error:
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
_ERRHAVEPARAMLOCATION:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01EC:
lea eax, [_ERRCTX+32]
push eax
call _LISTGETTAIL
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_01ED:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPRINTERRMSG:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.Lt_01EE:
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
je .Lt_01F1
mov dword ptr [_Lt_02BD], 0
jmp .Lt_01F0
.Lt_01F1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_ERRORMSGS+ebx*4-4]
mov dword ptr [_Lt_02BD], eax
.Lt_01F0:
cmp dword ptr [ebp+12], 0
jne .Lt_01F3
mov eax, offset _Lt_0000
mov dword ptr [ebp+12], eax
.Lt_01F3:
.Lt_01F2:
push 261
lea eax, [_ENV+280]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_01F5
push 0
lea eax, [_ENV+280]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
push 0
push 1
push offset _Lt_01F6
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+20], 0
jle .Lt_01F8
push 0
push dword ptr [ebp+20]
call _fb_IntToStr
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_01F8:
.Lt_01F7:
push 0
push 2
push offset _Lt_01F9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_01F5:
.Lt_01F4:
push 0
push 5
push offset _Lt_01FA
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
jl .Lt_01FC
push 0
push 0
push dword ptr [_Lt_02BD]
push -1
push 3
push offset _Lt_01FE
push -1
push -1
push dword ptr [ebp+8]
call _fb_IntToStr
add esp, 4
push eax
push 2
push offset _Lt_01FD
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+28], 0
je .Lt_0203
push 0
push dword ptr [ebp+28]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_0203:
.Lt_0202:
cmp dword ptr [ebp+24], 0
je .Lt_0205
mov eax, dword ptr [ebp+20]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp+24], eax
.Lt_0205:
.Lt_0204:
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_0207
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .Lt_0209
push 0
push 2
push offset _Lt_020A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_0208
.Lt_0209:
mov eax, dword ptr [ebp+16]
and eax, 2
test eax, eax
je .Lt_020B
push 0
push 2
push offset _Lt_01FE
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_0208
.Lt_020B:
push 0
push 1
push offset _Lt_01FD
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_0208:
mov eax, dword ptr [ebp+16]
and eax, 4
test eax, eax
je .Lt_020D
push 0
push 1
push offset _Lt_020E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_020D:
.Lt_020C:
push 0
push dword ptr [ebp+12]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
mov eax, dword ptr [ebp+16]
and eax, 4
test eax, eax
je .Lt_0210
push 0
push 1
push offset _Lt_020E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_0210:
.Lt_020F:
.Lt_0207:
.Lt_0206:
cmp dword ptr [ebp+24], 0
je .Lt_0212
push 0
push -1
mov eax, dword ptr [_ENV+888]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push offset _Lt_02C0
call _LEXPEEKCURRENTLINE
add esp, 8
push eax
push -1
push offset _Lt_02C1
call _fb_StrAssign
add esp, 20
push -1
push offset _Lt_02C1
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_0214
mov eax, dword ptr [_ENV+888]
and eax, 256
test eax, eax
je .Lt_0216
push 1
push 2
push offset _Lt_0218
push -1
push -1
push offset _Lt_02C1
push 6
push offset _Lt_0217
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_0215
.Lt_0216:
push 1
push 0
call _fb_PrintVoid
add esp, 8
push 1
push 0
push offset _Lt_02C0
call _LEXPEEKCURRENTLINE
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push offset _Lt_02C0
push 0
call _fb_PrintString
add esp, 12
.Lt_0215:
jmp .Lt_0213
.Lt_0214:
push 1
push 0
call _fb_PrintVoid
add esp, 8
.Lt_0213:
jmp .Lt_0211
.Lt_0212:
push 1
push 0
call _fb_PrintVoid
add esp, 8
.Lt_0211:
jmp .Lt_01FB
.Lt_01FC:
push 0
push 2
push offset _Lt_01FE
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push dword ptr [ebp+12]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_01FB:
.Lt_01EF:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02BD,4
.balign 4
	.lcomm	_Lt_02C0,12
.balign 4
	.lcomm	_Lt_02C1,12

.section .text
.balign 16
_HADDTOKEN:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0229:
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_02C2
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+16], 0
jne .Lt_022C
push 0
push 0
call _LEXGETTEXT
push eax
push -1
push offset _Lt_02C3
call _fb_StrAssign
add esp, 20
jmp .Lt_022B
.Lt_022C:
push 0
push 0
push dword ptr [ebp+16]
push -1
push offset _Lt_02C3
call _fb_StrAssign
add esp, 20
.Lt_022B:
push -1
push offset _Lt_02C3
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_022E
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 32
jle .Lt_0232
.Lt_0233:
cmp dword ptr [ebp-8], 257
je .Lt_0232
.Lt_0234:
cmp dword ptr [ebp-8], 256
jne .Lt_0231
.Lt_0232:
jmp .Lt_022F
.Lt_0231:
cmp dword ptr [ebp+12], 0
je .Lt_0237
push 0
push 3
push offset _Lt_020A
push -1
push offset _Lt_02C2
call _fb_StrConcatAssign
add esp, 20
.Lt_0237:
.Lt_0236:
cmp dword ptr [ebp+8], 0
je .Lt_0239
push 0
push 9
push offset _Lt_023A
push -1
push offset _Lt_02C2
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0238
.Lt_0239:
push 0
push 8
push offset _Lt_023B
push -1
push offset _Lt_02C2
call _fb_StrConcatAssign
add esp, 20
.Lt_0238:
push 0
push -1
push offset _Lt_02C3
push -1
push offset _Lt_02C2
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0218
push -1
push offset _Lt_02C2
call _fb_StrConcatAssign
add esp, 20
.Lt_0235:
.Lt_022F:
.Lt_022E:
.Lt_022D:
mov eax, dword ptr [_Lt_02C2]
mov dword ptr [ebp-4], eax
.Lt_022A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02C2,12
.balign 4
	.lcomm	_Lt_02C3,12

.section .text
.balign 16
_GETNOTALLOWEDMSG:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0269:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
.Lt_026E:
push dword ptr [ebp-28]
call _FBGETLANGOPTIONS
add esp, 4
and eax, dword ptr [ebp+8]
test eax, eax
je .Lt_0270
cmp dword ptr [ebp-32], 0
jle .Lt_0272
push 0
push 5
push offset _Lt_0273
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0272:
.Lt_0271:
push 0
push -1
push dword ptr [ebp-28]
call _FBGETLANGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
inc dword ptr [ebp-32]
.Lt_0270:
.Lt_026F:
.Lt_026C:
inc dword ptr [ebp-28]
.Lt_026B:
cmp dword ptr [ebp-28], 3
jle .Lt_026E
.Lt_026D:
push 0
push -1
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp-32]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push eax
push 0
call _HADDTOKEN
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_026A
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_026A:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HMAKEPARAMDESC:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_0277:
lea eax, [_ERRCTX+32]
push eax
call _LISTGETTAIL
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_027A
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0278
.Lt_027A:
.Lt_0279:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_02C6
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+8], 0
je .Lt_027C
push 0
push -1
push 2
push offset _Lt_01FD
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea ebx, [ebp-40]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02C6
call _fb_StrAssign
add esp, 20
.Lt_027C:
.Lt_027B:
cmp dword ptr [ebp-24], 0
jle .Lt_027F
push 0
push 14
push offset _Lt_0280
push -1
push offset _Lt_02C6
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-24]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_02C6
call _fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp-20], 0
jne .Lt_0282
cmp dword ptr [ebp-12], 0
je .Lt_0284
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+8]
and eax, 2
test eax, eax
je .Lt_0285
mov dword ptr [ebp-40], 0
jmp .Lt_02C5
.Lt_0285:
mov dword ptr [ebp-40], 1
.Lt_02C5:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-36], eax
.Lt_0287:
cmp dword ptr [ebp-32], 0
je .Lt_0288
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-36], eax
jne .Lt_028A
jmp .Lt_0288
.Lt_028A:
.Lt_0289:
inc dword ptr [ebp-36]
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-32], ebx
jmp .Lt_0287
.Lt_0288:
cmp dword ptr [ebp-32], 0
je .Lt_028C
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-20], eax
.Lt_028C:
.Lt_028B:
.Lt_0284:
.Lt_0283:
.Lt_0282:
.Lt_0281:
cmp dword ptr [ebp-20], 0
je .Lt_028E
push 0
push dword ptr [ebp-20]
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_0290
push 0
push 3
push offset _Lt_0291
push -1
push offset _Lt_02C6
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp-20]
push -1
push offset _Lt_02C6
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02C6
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0250
push -1
push offset _Lt_02C6
call _fb_StrConcatAssign
add esp, 20
.Lt_0290:
.Lt_028F:
.Lt_028E:
.Lt_028D:
.Lt_027F:
.Lt_027E:
cmp dword ptr [ebp-12], 0
je .Lt_0294
mov dword ptr [ebp-32], -1
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
je .Lt_0296
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+16], 0
je .Lt_0298
push 4
push offset _Lt_0299
push -1
push 3
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+16]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_LEFT
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_029B
mov dword ptr [ebp-32], 0
.Lt_029B:
.Lt_029A:
jmp .Lt_0297
.Lt_0298:
mov dword ptr [ebp-32], 0
.Lt_0297:
jmp .Lt_0295
.Lt_0296:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .Lt_029D
push 0
push -1
push dword ptr [ebp-12]
call _SYMBPROCPTRTOSTR
add esp, 4
push eax
push -1
push offset _Lt_02C7
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_Lt_02C7]
mov dword ptr [ebp-16], eax
jmp .Lt_029C
.Lt_029D:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+8]
and ebx, 28
test ebx, ebx
je .Lt_029E
push 0
push -1
push dword ptr [ebp-12]
call _SYMBMETHODTOSTR
add esp, 4
push eax
push -1
push offset _Lt_02C7
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_Lt_02C7]
mov dword ptr [ebp-16], eax
.Lt_029E:
.Lt_029C:
.Lt_0295:
cmp dword ptr [ebp-32], 0
je .Lt_02A0
cmp dword ptr [ebp-16], 0
jne .Lt_02A2
mov dword ptr [ebp-28], -1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_02A4
push 0
push dword ptr [ebp-16]
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_02A6
push dword ptr [ebp-12]
call _SYMBGETMANGLEDNAME
add esp, 4
mov dword ptr [ebp-16], eax
.Lt_02A6:
.Lt_02A5:
.Lt_02A4:
.Lt_02A3:
jmp .Lt_02A1
.Lt_02A2:
mov dword ptr [ebp-28], 0
.Lt_02A1:
cmp dword ptr [ebp-16], 0
je .Lt_02A8
cmp dword ptr [ebp-24], 0
jle .Lt_02AA
push 0
push 5
push offset _Lt_02AB
push -1
push offset _Lt_02C6
call _fb_StrConcatAssign
add esp, 20
.Lt_02AA:
.Lt_02A9:
push 0
push -1
push 0
push dword ptr [ebp-16]
push -1
push offset _Lt_02C6
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02C6
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-28], 0
je .Lt_02AE
push 0
push 3
push offset _Lt_0253
push -1
push offset _Lt_02C6
call _fb_StrConcatAssign
add esp, 20
.Lt_02AE:
.Lt_02AD:
.Lt_02A8:
.Lt_02A7:
.Lt_02A0:
.Lt_029F:
jmp .Lt_0293
.Lt_0294:
cmp dword ptr [ebp-24], 0
jle .Lt_02B0
push 0
push 5
push offset _Lt_02AB
push -1
push offset _Lt_02C6
call _fb_StrConcatAssign
add esp, 20
.Lt_02B0:
.Lt_02AF:
push 0
push -1
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _SYMBKEYWORDGETTEXT
add esp, 4
push eax
push -1
push offset _Lt_02C6
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02C6
call _fb_StrAssign
add esp, 20
.Lt_0293:
mov eax, dword ptr [_Lt_02C6]
mov dword ptr [ebp-4], eax
.Lt_0278:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02C6,12
.balign 4
	.lcomm	_Lt_02C7,12

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
.balign 4
	.lcomm	_ERRCTX,64

.section .data
.balign 4
_WARNINGMSGS:
.int 2
.int _Lt_0069
.int 2
.int _Lt_006A
.int 2
.int _Lt_006B
.int 2
.int _Lt_006C
.int 1
.int _Lt_006D
.int 2
.int _Lt_006E
.int 2
.int _Lt_006F
.int 2
.int _Lt_0070
.int 2
.int _Lt_0071
.int 1
.int _Lt_0072
.int 1
.int _Lt_0073
.int 1
.int _Lt_0074
.int 1
.int _Lt_0075
.int 2
.int _Lt_0076
.int 1
.int _Lt_0077
.int 1
.int _Lt_0078
.int 1
.int _Lt_0079
.int 2
.int _Lt_007A
.int 2
.int _Lt_007B
.int 3
.int _Lt_007C
.int 3
.int _Lt_007D
.int 1
.int _Lt_007E
.int 3
.int _Lt_007F
.int 3
.int _Lt_0080
.int 1
.int _Lt_0081
.int 1
.int _Lt_0082
.int 1
.int _Lt_0083
.int 1
.int _Lt_0084
.int 1
.int _Lt_0085
.int 1
.int _Lt_0086
.int 1
.int _Lt_0087
.int 1
.int _Lt_0088
.int 1
.int _Lt_0089
.int 1
.int _Lt_008A
.int 1
.int _Lt_008B
.int 1
.int _Lt_008C
.int 2
.int _Lt_0000
.int 1
.int _Lt_008D
.int 1
.int _Lt_008E
.int 0
.int _Lt_008F
.int 0
.int _Lt_0090
.int 0
.int _Lt_0091
.int 0
.int _Lt_0092
.int 1
.int _Lt_0093
.balign 4
_Lt_0069:	.ascii	"Passing scalar as pointer\0"
.balign 4
_Lt_006A:	.ascii	"Passing pointer to scalar\0"
.balign 4
_Lt_006B:	.ascii	"Passing different pointer types\0"
.balign 4
_Lt_006C:	.ascii	"Suspicious pointer assignment\0"
.balign 4
_Lt_006D:	.ascii	"Implicit conversion\0"
.balign 4
_Lt_006E:	.ascii	"Cannot export symbol without -export option\0"
.balign 4
_Lt_006F:	.ascii	"Identifier's name too big, truncated\0"
.balign 4
_Lt_0070:	.ascii	"Literal number too big, truncated\0"
.balign 4
_Lt_0071:	.ascii	"Literal string too big, truncated\0"
.balign 4
_Lt_0072:	.ascii	"UDT with pointer, var-len string, or var-len array fields\0"
.balign 4
_Lt_0073:	.ascii	"Implicit variable allocation\0"
.balign 4
_Lt_0074:	.ascii	"Missing closing quote in literal string\0"
.balign 4
_Lt_0075:	.ascii	"Function result was not explicitly set\0"
.balign 4
_Lt_0076:	.ascii	"Branch crossing local variable definition\0"
.balign 4
_Lt_0077:	.ascii	"No explicit BYREF or BYVAL\0"
.balign 4
_Lt_0078:	.ascii	"Possible escape sequence found in\0"
.balign 4
_Lt_0079:	.ascii	"The type length is too large, consider passing BYREF\0"
.balign 4
_Lt_007A:	.ascii	"The length of the parameters list is too large, consider passing UDT's BYREF\0"
.balign 4
_Lt_007B:	.ascii	"The ANY initializer has no effect on UDT's with default constructors\0"
.balign 4
_Lt_007C:	.ascii	"Object files or libraries with mixed multithreading (-mt) options\0"
.balign 4
_Lt_007D:	.ascii	"Object files or libraries with mixed language (-lang) options\0"
.balign 4
_Lt_007E:	.ascii	"Deleting ANY pointers is undefined\0"
.balign 4
_Lt_007F:	.ascii	"Array too large for stack, consider making it var-len or SHARED\0"
.balign 4
_Lt_0080:	.ascii	"Variable too large for stack, consider making it SHARED\0"
.balign 4
_Lt_0081:	.ascii	"Overflow in constant conversion\0"
.balign 4
_Lt_0082:	.ascii	"Variable following NEXT is meaningless\0"
.balign 4
_Lt_0083:	.ascii	"Cast to non-pointer\0"
.balign 4
_Lt_0084:	.ascii	"Return method mismatch\0"
.balign 4
_Lt_0085:	.ascii	"Passing Pointer\0"
.balign 4
_Lt_0086:	.ascii	"Command line option overrides directive\0"
.balign 4
_Lt_0087:	.ascii	"Directive ignored after first pass\0"
.balign 4
_Lt_0088:	.ascii	"'IF' statement found directly after multi-line 'ELSE'\0"
.balign 4
_Lt_0089:	.ascii	"Shift value greater than or equal to number of bits in data type\0"
.balign 4
_Lt_008A:	.ascii	"'=' parsed as equality operator in function argument, not assignment to BYREF function result\0"
.balign 4
_Lt_008B:	.ascii	"Mixing signed/unsigned operands\0"
.balign 4
_Lt_008C:	.ascii	"Mismatching parameter initializer\0"
.balign 4
_Lt_008D:	.ascii	"Suspicious logic operation, mixed boolean and non-boolean operands\0"
.balign 4
_Lt_008E:	.ascii	"Redefinition of intrinsic\0"
.balign 4
_Lt_008F:	.ascii	"CONST qualifier discarded\0"
.balign 4
_Lt_0090:	.ascii	"Return type mismatch\0"
.balign 4
_Lt_0091:	.ascii	"Calling convention mismatch\0"
.balign 4
_Lt_0092:	.ascii	"Argument count mismatch\0"
.balign 4
_Lt_0093:	.ascii	"Suffix ignored\0"
.balign 4
_ERRORMSGS:
.int _Lt_0092
.int _Lt_0095
.int _Lt_0096
.int _Lt_0097
.int _Lt_0098
.int _Lt_0099
.int _Lt_009A
.int _Lt_009B
.int _Lt_009C
.int _Lt_009D
.int _Lt_009E
.int _Lt_009F
.int _Lt_00A0
.int _Lt_00A1
.int _Lt_00A2
.int _Lt_00A3
.int _Lt_00A4
.int _Lt_00A5
.int _Lt_00A6
.int _Lt_00A7
.int _Lt_00A8
.int _Lt_00A9
.int _Lt_00AA
.int _Lt_00AB
.int _Lt_00AC
.int _Lt_00AD
.int _Lt_00AE
.int _Lt_00AF
.int _Lt_00B0
.int _Lt_00B1
.int _Lt_00B2
.int _Lt_00B3
.int _Lt_00B4
.int _Lt_00B5
.int _Lt_00B6
.int _Lt_00B7
.int _Lt_00B8
.int _Lt_00B9
.int _Lt_00BA
.int _Lt_00BB
.int _Lt_00BC
.int _Lt_00BD
.int _Lt_00BE
.int _Lt_00BF
.int _Lt_00C0
.int _Lt_00C1
.int _Lt_00C2
.int _Lt_00C3
.int _Lt_00C4
.int _Lt_00C5
.int _Lt_00C6
.int _Lt_00C7
.int _Lt_00C8
.int _Lt_00C9
.int _Lt_00CA
.int _Lt_00CB
.int _Lt_00CC
.int _Lt_00A7
.int _Lt_00CD
.int _Lt_00CE
.int _Lt_00CF
.int _Lt_00D0
.int _Lt_00D1
.int _Lt_00D2
.int _Lt_00D3
.int _Lt_00D4
.int _Lt_00D5
.int _Lt_00D6
.int _Lt_00D7
.int _Lt_00D8
.int _Lt_00D9
.int _Lt_00DA
.int _Lt_00DB
.int _Lt_00DC
.int _Lt_00DD
.int _Lt_00DE
.int _Lt_00DF
.int _Lt_00E0
.int _Lt_00E1
.int _Lt_00E2
.int _Lt_00E3
.int _Lt_00E4
.int _Lt_00E5
.int _Lt_00E6
.int _Lt_00E7
.int _Lt_00E8
.int _Lt_00E9
.int _Lt_00EA
.int _Lt_00EB
.int _Lt_00EC
.int _Lt_00ED
.int _Lt_00EE
.int _Lt_00EF
.int _Lt_00F0
.int _Lt_00F1
.int _Lt_00F2
.int _Lt_00F3
.int _Lt_00F4
.int _Lt_00F5
.int _Lt_00F6
.int _Lt_00F7
.int _Lt_00F8
.int _Lt_00F9
.int _Lt_00FA
.int _Lt_00FB
.int _Lt_00FC
.int _Lt_00FD
.int _Lt_00FE
.int _Lt_00FF
.int _Lt_0100
.int _Lt_0101
.int _Lt_0102
.int _Lt_0103
.int _Lt_0104
.int _Lt_0105
.int _Lt_0106
.int _Lt_0107
.int _Lt_0108
.int _Lt_0109
.int _Lt_010A
.int _Lt_010B
.int _Lt_010C
.int _Lt_010D
.int _Lt_010E
.int _Lt_010F
.int _Lt_0110
.int _Lt_0111
.int _Lt_0112
.int _Lt_0113
.int _Lt_0114
.int _Lt_0115
.int _Lt_0116
.int _Lt_0117
.int _Lt_0118
.int _Lt_0119
.int _Lt_011A
.int _Lt_011B
.int _Lt_011C
.int _Lt_011D
.int _Lt_011E
.int _Lt_011F
.int _Lt_0120
.int _Lt_0121
.int _Lt_0122
.int _Lt_0123
.int _Lt_0124
.int _Lt_0125
.int _Lt_0126
.int _Lt_0127
.int _Lt_0128
.int _Lt_0129
.int _Lt_012A
.int _Lt_012B
.int _Lt_012C
.int _Lt_012D
.int _Lt_012E
.int _Lt_012F
.int _Lt_0130
.int _Lt_0131
.int _Lt_0132
.int _Lt_0133
.int _Lt_0134
.int _Lt_0135
.int _Lt_0136
.int _Lt_0137
.int _Lt_0138
.int _Lt_0139
.int _Lt_013A
.int _Lt_013B
.int _Lt_013C
.int _Lt_013D
.int _Lt_013E
.int _Lt_013F
.int _Lt_0140
.int _Lt_0141
.int _Lt_0142
.int _Lt_0143
.int _Lt_0145
.int _Lt_0147
.int _Lt_0148
.int _Lt_0149
.int _Lt_014A
.int _Lt_014B
.int _Lt_014C
.int _Lt_014D
.int _Lt_014E
.int _Lt_014F
.int _Lt_0151
.int _Lt_0152
.int _Lt_0153
.int _Lt_0154
.int _Lt_0155
.int _Lt_0156
.int _Lt_0157
.int _Lt_0158
.int _Lt_0159
.int _Lt_015A
.int _Lt_015B
.int _Lt_015C
.int _Lt_015D
.int _Lt_015E
.int _Lt_015F
.int _Lt_0160
.int _Lt_0161
.int _Lt_0162
.int _Lt_0163
.int _Lt_0164
.int _Lt_0165
.int _Lt_0166
.int _Lt_0167
.int _Lt_0168
.int _Lt_0169
.int _Lt_016A
.int _Lt_016B
.int _Lt_016C
.int _Lt_016D
.int _Lt_016E
.int _Lt_016F
.int _Lt_0170
.int _Lt_0171
.int _Lt_0172
.int _Lt_0173
.int _Lt_0174
.int _Lt_0175
.int _Lt_0176
.int _Lt_0177
.int _Lt_0178
.int _Lt_0179
.int _Lt_017A
.int _Lt_017B
.int _Lt_017C
.int _Lt_017D
.int _Lt_017E
.int _Lt_017F
.int _Lt_0180
.int _Lt_0181
.int _Lt_0182
.int _Lt_0183
.int _Lt_0184
.int _Lt_0185
.int _Lt_0186
.int _Lt_0187
.int _Lt_0188
.int _Lt_0189
.int _Lt_018A
.int _Lt_018B
.int _Lt_018C
.int _Lt_018D
.int _Lt_018E
.int _Lt_018F
.int _Lt_0190
.int _Lt_0191
.int _Lt_0192
.int _Lt_0193
.int _Lt_0194
.int _Lt_0195
.int _Lt_0196
.int _Lt_0197
.int _Lt_0198
.int _Lt_0199
.int _Lt_019A
.int _Lt_019B
.int _Lt_019C
.int _Lt_019D
.int _Lt_019E
.int _Lt_019F
.int _Lt_01A0
.int _Lt_01A1
.int _Lt_01A2
.int _Lt_01A3
.int _Lt_01A4
.int _Lt_01A5
.int _Lt_01A6
.int _Lt_01A7
.int _Lt_01A8
.int _Lt_01A9
.int _Lt_01AA
.int _Lt_01AB
.int _Lt_01AC
.int _Lt_01AD
.int _Lt_01AE
.int _Lt_01AF
.int _Lt_01B0
.int _Lt_01B1
.int _Lt_01B2
.int _Lt_01B3
.int _Lt_01B4
.int _Lt_01B5
.int _Lt_01B6
.int _Lt_01B7
.int _Lt_01B8
.int _Lt_01B9
.int _Lt_01BA
.int _Lt_01BB
.int _Lt_01BC
.int _Lt_01BD
.int _Lt_01BE
.int _Lt_01BF
.int _Lt_01C0
.int _Lt_01C1
.int _Lt_01C2
.int _Lt_01C3
.int _Lt_01C4
.int _Lt_01C5
.int _Lt_01C6
.int _Lt_01C7
.int _Lt_01C8
.int _Lt_01C9
.int _Lt_01CA
.int _Lt_01CB
.int _Lt_01CC
.int _Lt_01CD
.int _Lt_01CE
.int _Lt_01CF
.int _Lt_01D0
.int _Lt_01D1
.int _Lt_01D2
.int _Lt_01D3
.int _Lt_01D4
.int _Lt_01D5
.int _Lt_01D6
.int _Lt_01D7
.int _Lt_01D8
.int _Lt_01D9
.balign 4
_Lt_0095:	.ascii	"Expected End-of-File\0"
.balign 4
_Lt_0096:	.ascii	"Expected End-of-Line\0"
.balign 4
_Lt_0097:	.ascii	"Duplicated definition\0"
.balign 4
_Lt_0098:	.ascii	"Expected 'AS'\0"
.balign 4
_Lt_0099:	.ascii	"Expected '('\0"
.balign 4
_Lt_009A:	.ascii	"Expected ')'\0"
.balign 4
_Lt_009B:	.ascii	"Undefined symbol\0"
.balign 4
_Lt_009C:	.ascii	"Expected expression\0"
.balign 4
_Lt_009D:	.ascii	"Expected '='\0"
.balign 4
_Lt_009E:	.ascii	"Expected constant\0"
.balign 4
_Lt_009F:	.ascii	"Expected 'TO'\0"
.balign 4
_Lt_00A0:	.ascii	"Expected 'NEXT'\0"
.balign 4
_Lt_00A1:	.ascii	"Expected identifier\0"
.balign 4
_Lt_00A2:	.ascii	"Expected '-'\0"
.balign 4
_Lt_00A3:	.ascii	"Expected ','\0"
.balign 4
_Lt_00A4:	.ascii	"Syntax error\0"
.balign 4
_Lt_00A5:	.ascii	"Element not defined\0"
.balign 4
_Lt_00A6:	.ascii	"Expected 'END TYPE' or 'END UNION'\0"
.balign 4
_Lt_00A7:	.ascii	"Type mismatch\0"
.balign 4
_Lt_00A8:	.ascii	"Internal!\0"
.balign 4
_Lt_00A9:	.ascii	"Parameter type mismatch\0"
.balign 4
_Lt_00AA:	.ascii	"File not found\0"
.balign 4
_Lt_00AB:	.ascii	"Invalid data types\0"
.balign 4
_Lt_00AC:	.ascii	"Invalid character\0"
.balign 4
_Lt_00AD:	.ascii	"File access error\0"
.balign 4
_Lt_00AE:	.ascii	"Recursion level too deep\0"
.balign 4
_Lt_00AF:	.ascii	"Expected pointer\0"
.balign 4
_Lt_00B0:	.ascii	"Expected 'LOOP'\0"
.balign 4
_Lt_00B1:	.ascii	"Expected 'WEND'\0"
.balign 4
_Lt_00B2:	.ascii	"Expected 'THEN'\0"
.balign 4
_Lt_00B3:	.ascii	"Expected 'END IF'\0"
.balign 4
_Lt_00B4:	.ascii	"Illegal 'END'\0"
.balign 4
_Lt_00B5:	.ascii	"Expected 'CASE'\0"
.balign 4
_Lt_00B6:	.ascii	"Expected 'END SELECT'\0"
.balign 4
_Lt_00B7:	.ascii	"Wrong number of dimensions\0"
.balign 4
_Lt_00B8:	.ascii	"Array boundaries do not match the original EXTERN declaration\0"
.balign 4
_Lt_00B9:	.ascii	"'SUB' or 'FUNCTION' without 'END SUB' or 'END FUNCTION'\0"
.balign 4
_Lt_00BA:	.ascii	"Expected 'END SUB' or 'END FUNCTION'\0"
.balign 4
_Lt_00BB:	.ascii	"Return type here does not match DECLARE prototype\0"
.balign 4
_Lt_00BC:	.ascii	"Calling convention does not match DECLARE prototype\0"
.balign 4
_Lt_00BD:	.ascii	"Variable not declared\0"
.balign 4
_Lt_00BE:	.ascii	"Variable required\0"
.balign 4
_Lt_00BF:	.ascii	"Illegal outside a compound statement\0"
.balign 4
_Lt_00C0:	.ascii	"Expected 'END ASM'\0"
.balign 4
_Lt_00C1:	.ascii	"Function not declared\0"
.balign 4
_Lt_00C2:	.ascii	"Expected ';'\0"
.balign 4
_Lt_00C3:	.ascii	"Undefined label\0"
.balign 4
_Lt_00C4:	.ascii	"Too many array dimensions\0"
.balign 4
_Lt_00C5:	.ascii	"Array too big\0"
.balign 4
_Lt_00C6:	.ascii	"User Defined Type too big\0"
.balign 4
_Lt_00C7:	.ascii	"Expected scalar counter\0"
.balign 4
_Lt_00C8:	.ascii	"Illegal outside a CONSTRUCTOR, DESTRUCTOR, FUNCTION, OPERATOR, PROPERTY or SUB block\0"
.balign 4
_Lt_00C9:	.ascii	"Expected var-len array\0"
.balign 4
_Lt_00CA:	.ascii	"Fixed-len strings cannot be returned from functions\0"
.balign 4
_Lt_00CB:	.ascii	"Array already dimensioned\0"
.balign 4
_Lt_00CC:	.ascii	"Illegal without the -ex option\0"
.balign 4
_Lt_00CD:	.ascii	"Illegal specification\0"
.balign 4
_Lt_00CE:	.ascii	"Expected 'END WITH'\0"
.balign 4
_Lt_00CF:	.ascii	"Illegal inside functions\0"
.balign 4
_Lt_00D0:	.ascii	"Statement in between SELECT and first CASE\0"
.balign 4
_Lt_00D1:	.ascii	"Expected array\0"
.balign 4
_Lt_00D2:	.ascii	"Expected '{'\0"
.balign 4
_Lt_00D3:	.ascii	"Expected '}'\0"
.balign 4
_Lt_00D4:	.ascii	"Expected ']'\0"
.balign 4
_Lt_00D5:	.ascii	"Too many expressions\0"
.balign 4
_Lt_00D6:	.ascii	"Expected explicit result type\0"
.balign 4
_Lt_00D7:	.ascii	"Range too large\0"
.balign 4
_Lt_00D8:	.ascii	"Forward references not allowed\0"
.balign 4
_Lt_00D9:	.ascii	"Incomplete type\0"
.balign 4
_Lt_00DA:	.ascii	"Array not dimensioned\0"
.balign 4
_Lt_00DB:	.ascii	"Array access, index expected\0"
.balign 4
_Lt_00DC:	.ascii	"Expected 'END ENUM'\0"
.balign 4
_Lt_00DD:	.ascii	"Var-len arrays cannot be initialized\0"
.balign 4
_Lt_00DE:	.ascii	"'...' ellipsis upper bound given for dynamic array (this is not supported)\0"
.balign 4
_Lt_00DF:	.ascii	"'...' ellipsis upper bound given for array field (this is not supported)\0"
.balign 4
_Lt_00E0:	.ascii	"Invalid bitfield\0"
.balign 4
_Lt_00E1:	.ascii	"Too many parameters\0"
.balign 4
_Lt_00E2:	.ascii	"Macro text too long\0"
.balign 4
_Lt_00E3:	.ascii	"Invalid command-line option\0"
.balign 4
_Lt_00E4:	.ascii	"Selected non-x86 CPU when compiling for DOS\0"
.balign 4
_Lt_00E5:	.ascii	"Selected -gen gas|gas64 ASM backend is incompatible with CPU\0"
.balign 4
_Lt_00E6:	.ascii	"-asm att used for -gen gas, but -gen gas only supports -asm intel\0"
.balign 4
_Lt_00E7:	.ascii	"-pic used when making executable (only works when making a shared library)\0"
.balign 4
_Lt_00E8:	.ascii	"-pic used, but not supported by target system (only works for non-x86 Unixes)\0"
.balign 4
_Lt_00E9:	.ascii	"Var-len strings cannot be initialized\0"
.balign 4
_Lt_00EA:	.ascii	"Recursive TYPE or UNION not allowed\0"
.balign 4
_Lt_00EB:	.ascii	"Recursive DEFINE not allowed\0"
.balign 4
_Lt_00EC:	.ascii	"Identifier cannot include periods\0"
.balign 4
_Lt_00ED:	.ascii	"Executable not found\0"
.balign 4
_Lt_00EE:	.ascii	"Array out-of-bounds\0"
.balign 4
_Lt_00EF:	.ascii	"Missing command-line option for\0"
.balign 4
_Lt_00F0:	.ascii	"Expected 'ANY'\0"
.balign 4
_Lt_00F1:	.ascii	"Expected 'END SCOPE'\0"
.balign 4
_Lt_00F2:	.ascii	"Illegal inside a compound statement or scoped block\0"
.balign 4
_Lt_00F3:	.ascii	"UDT function results cannot be passed by reference\0"
.balign 4
_Lt_00F4:	.ascii	"Ambiguous call to overloaded function\0"
.balign 4
_Lt_00F5:	.ascii	"No matching overloaded function\0"
.balign 4
_Lt_00F6:	.ascii	"Division by zero\0"
.balign 4
_Lt_00F7:	.ascii	"Cannot pop stack, underflow\0"
.balign 4
_Lt_00F8:	.ascii	"UDT's containing var-len string fields cannot be initialized\0"
.balign 4
_Lt_00F9:	.ascii	"Branching to scope block containing local variables\0"
.balign 4
_Lt_00FA:	.ascii	"Branching to other functions or to module-level\0"
.balign 4
_Lt_00FB:	.ascii	"Branch crossing local array, var-len string or object definition\0"
.balign 4
_Lt_00FC:	.ascii	"LOOP without DO\0"
.balign 4
_Lt_00FD:	.ascii	"NEXT without FOR\0"
.balign 4
_Lt_00FE:	.ascii	"WEND without WHILE\0"
.balign 4
_Lt_00FF:	.ascii	"END WITH without WITH\0"
.balign 4
_Lt_0100:	.ascii	"END IF without IF\0"
.balign 4
_Lt_0101:	.ascii	"END SELECT without SELECT\0"
.balign 4
_Lt_0102:	.ascii	"END SUB or FUNCTION without SUB or FUNCTION\0"
.balign 4
_Lt_0103:	.ascii	"END SCOPE without SCOPE\0"
.balign 4
_Lt_0104:	.ascii	"END NAMESPACE without NAMESPACE\0"
.balign 4
_Lt_0105:	.ascii	"END EXTERN without EXTERN\0"
.balign 4
_Lt_0106:	.ascii	"ELSEIF without IF\0"
.balign 4
_Lt_0107:	.ascii	"ELSE without IF\0"
.balign 4
_Lt_0108:	.ascii	"CASE without SELECT\0"
.balign 4
_Lt_0109:	.ascii	"Cannot modify a constant\0"
.balign 4
_Lt_010A:	.ascii	"Expected period ('.')\0"
.balign 4
_Lt_010B:	.ascii	"Expected 'END NAMESPACE'\0"
.balign 4
_Lt_010C:	.ascii	"Illegal inside a NAMESPACE block\0"
.balign 4
_Lt_010D:	.ascii	"Symbols defined inside namespaces cannot be removed\0"
.balign 4
_Lt_010E:	.ascii	"Expected 'END EXTERN'\0"
.balign 4
_Lt_010F:	.ascii	"Expected 'END SUB'\0"
.balign 4
_Lt_0110:	.ascii	"Expected 'END FUNCTION'\0"
.balign 4
_Lt_0111:	.ascii	"Expected 'END CONSTRUCTOR'\0"
.balign 4
_Lt_0112:	.ascii	"Expected 'END DESTRUCTOR'\0"
.balign 4
_Lt_0113:	.ascii	"Expected 'END OPERATOR'\0"
.balign 4
_Lt_0114:	.ascii	"Expected 'END PROPERTY'\0"
.balign 4
_Lt_0115:	.ascii	"Declaration outside the original namespace\0"
.balign 4
_Lt_0116:	.ascii	"No end of multi-line comment, expected \"'/\"\0"
.balign 4
_Lt_0117:	.ascii	"Too many errors, exiting\0"
.balign 4
_Lt_0118:	.ascii	"Expected 'ENDMACRO'\0"
.balign 4
_Lt_0119:	.ascii	"EXTERN or COMMON variables cannot be initialized\0"
.balign 4
_Lt_011A:	.ascii	"EXTERN or COMMON dynamic arrays cannot have initial bounds\0"
.balign 4
_Lt_011B:	.ascii	"At least one parameter must be a user-defined type\0"
.balign 4
_Lt_011C:	.ascii	"Parameter or result must be a user-defined type\0"
.balign 4
_Lt_011D:	.ascii	"Both parameters can't be of the same type\0"
.balign 4
_Lt_011E:	.ascii	"Parameter and result can't be of the same type\0"
.balign 4
_Lt_011F:	.ascii	"Invalid result type for this operator\0"
.balign 4
_Lt_0120:	.ascii	"Invalid parameter type, it must be the same as the parent TYPE/CLASS\0"
.balign 4
_Lt_0121:	.ascii	"Vararg parameters are not allowed in overloaded functions\0"
.balign 4
_Lt_0122:	.ascii	"Illegal outside an OPERATOR block\0"
.balign 4
_Lt_0123:	.ascii	"Parameter cannot be optional\0"
.balign 4
_Lt_0124:	.ascii	"Only valid in -lang\0"
.balign 4
_Lt_0125:	.ascii	"Default types or suffixes are only valid in -lang\0"
.balign 4
_Lt_0126:	.ascii	"Suffixes are only valid in -lang\0"
.balign 4
_Lt_0127:	.ascii	"Implicit variables are only valid in -lang\0"
.balign 4
_Lt_0128:	.ascii	"Auto variables are only valid in -lang\0"
.balign 4
_Lt_0129:	.ascii	"Invalid array index\0"
.balign 4
_Lt_012A:	.ascii	"Operator must be a member function\0"
.balign 4
_Lt_012B:	.ascii	"Operator cannot be a member function\0"
.balign 4
_Lt_012C:	.ascii	"Method declared in anonymous UDT\0"
.balign 4
_Lt_012D:	.ascii	"Constant declared in anonymous UDT\0"
.balign 4
_Lt_012E:	.ascii	"Static variable declared in anonymous UDT\0"
.balign 4
_Lt_012F:	.ascii	"Expected operator\0"
.balign 4
_Lt_0130:	.ascii	"Declaration outside the original namespace or class\0"
.balign 4
_Lt_0131:	.ascii	"A destructor should not have any parameters\0"
.balign 4
_Lt_0132:	.ascii	"Expected class or UDT identifier\0"
.balign 4
_Lt_0133:	.ascii	"Var-len strings cannot be part of UNION's or nested TYPE's\0"
.balign 4
_Lt_0134:	.ascii	"Dynamic arrays cannot be part of UNION's or nested TYPE's\0"
.balign 4
_Lt_0135:	.ascii	"Fields with constructors cannot be part of UNION's or nested TYPE's\0"
.balign 4
_Lt_0136:	.ascii	"Fields with destructors cannot be part of UNION's or nested TYPE's\0"
.balign 4
_Lt_0137:	.ascii	"Illegal outside a CONSTRUCTOR block\0"
.balign 4
_Lt_0138:	.ascii	"Illegal outside a DESTRUCTOR block\0"
.balign 4
_Lt_0139:	.ascii	"UDT's with methods must have unique names\0"
.balign 4
_Lt_013A:	.ascii	"Parent is not a class or UDT\0"
.balign 4
_Lt_013B:	.ascii	"CONSTRUCTOR() chain call not at top of constructor\0"
.balign 4
_Lt_013C:	.ascii	"BASE() initializer not at top of constructor\0"
.balign 4
_Lt_013D:	.ascii	"REDIM on UDT with non-CDECL constructor\0"
.balign 4
_Lt_013E:	.ascii	"REDIM on UDT with non-CDECL destructor\0"
.balign 4
_Lt_013F:	.ascii	"REDIM on UDT with non-parameterless default constructor\0"
.balign 4
_Lt_0140:	.ascii	"ERASE on UDT with non-CDECL constructor\0"
.balign 4
_Lt_0141:	.ascii	"ERASE on UDT with non-CDECL destructor\0"
.balign 4
_Lt_0142:	.ascii	"ERASE on UDT with non-parameterless default constructor\0"
.balign 4
_Lt_0143:	.ascii	"This symbol cannot be undefined\0"
.balign 4
_Lt_0145:	.ascii	"RETURN mixed with 'FUNCTION =' or EXIT FUNCTION (using both styles together is unsupported when returning objects with constructors)\0"
.balign 4
_Lt_0147:	.ascii	"'FUNCTION =' or EXIT FUNCTION mixed with RETURN (using both styles together is unsupported when returning objects with constructors)\0"
.balign 4
_Lt_0148:	.ascii	"Missing RETURN to copy-construct function result\0"
.balign 4
_Lt_0149:	.ascii	"Invalid assignment/conversion\0"
.balign 4
_Lt_014A:	.ascii	"Invalid array subscript\0"
.balign 4
_Lt_014B:	.ascii	"TYPE or CLASS has no default constructor\0"
.balign 4
_Lt_014C:	.ascii	"Function result TYPE has no default constructor\0"
.balign 4
_Lt_014D:	.ascii	"Missing BASE() initializer (base UDT without default constructor requires manual initialization)\0"
.balign 4
_Lt_014E:	.ascii	"Missing default constructor implementation (base UDT without default constructor requires manual initialization)\0"
.balign 4
_Lt_014F:	.ascii	"Missing UDT.constructor(byref as UDT) implementation (base UDT without default constructor requires manual initialization)\0"
.balign 4
_Lt_0151:	.ascii	"Missing UDT.constructor(byref as const UDT) implementation (base UDT without default constructor requires manual initialization)\0"
.balign 4
_Lt_0152:	.ascii	"Invalid priority attribute\0"
.balign 4
_Lt_0153:	.ascii	"PROPERTY GET should have no parameter, or just one if indexed\0"
.balign 4
_Lt_0154:	.ascii	"PROPERTY SET should have one parameter, or just two if indexed\0"
.balign 4
_Lt_0155:	.ascii	"Expected 'PROPERTY'\0"
.balign 4
_Lt_0156:	.ascii	"Illegal outside a PROPERTY block\0"
.balign 4
_Lt_0157:	.ascii	"PROPERTY has no GET method/accessor\0"
.balign 4
_Lt_0158:	.ascii	"PROPERTY has no SET method/accessor\0"
.balign 4
_Lt_0159:	.ascii	"PROPERTY has no indexed GET method/accessor\0"
.balign 4
_Lt_015A:	.ascii	"PROPERTY has no indexed SET method/accessor\0"
.balign 4
_Lt_015B:	.ascii	"Missing overloaded operator: \0"
.balign 4
_Lt_015C:	.ascii	"The NEW[] operator does not allow explicit calls to constructors\0"
.balign 4
_Lt_015D:	.ascii	"The NEW[] operator only supports the { ANY } initialization\0"
.balign 4
_Lt_015E:	.ascii	"The NEW operator cannot be used with fixed-length strings\0"
.balign 4
_Lt_015F:	.ascii	"Illegal member access\0"
.balign 4
_Lt_0160:	.ascii	"Expected ':'\0"
.balign 4
_Lt_0161:	.ascii	"The default constructor has no public access\0"
.balign 4
_Lt_0162:	.ascii	"Constructor has no public access\0"
.balign 4
_Lt_0163:	.ascii	"Destructor has no public access\0"
.balign 4
_Lt_0164:	.ascii	"Accessing base UDT's private default constructor\0"
.balign 4
_Lt_0165:	.ascii	"Accessing base UDT's private destructor\0"
.balign 4
_Lt_0166:	.ascii	"Illegal non-static member access\0"
.balign 4
_Lt_0167:	.ascii	"Constructor declared ABSTRACT\0"
.balign 4
_Lt_0168:	.ascii	"Constructor declared VIRTUAL\0"
.balign 4
_Lt_0169:	.ascii	"Destructor declared ABSTRACT\0"
.balign 4
_Lt_016A:	.ascii	"Member cannot be static\0"
.balign 4
_Lt_016B:	.ascii	"Member isn't static\0"
.balign 4
_Lt_016C:	.ascii	"Only static members can be accessed from static functions\0"
.balign 4
_Lt_016D:	.ascii	"The PRIVATE and PUBLIC attributes are not allowed with REDIM, COMMON or EXTERN\0"
.balign 4
_Lt_016E:	.ascii	"STATIC used here, but not the in the DECLARE statement\0"
.balign 4
_Lt_016F:	.ascii	"CONST used here, but not the in the DECLARE statement\0"
.balign 4
_Lt_0170:	.ascii	"VIRTUAL used here, but not the in the DECLARE statement\0"
.balign 4
_Lt_0171:	.ascii	"ABSTRACT used here, but not the in the DECLARE statement\0"
.balign 4
_Lt_0172:	.ascii	"Method declared VIRTUAL, but UDT does not extend OBJECT\0"
.balign 4
_Lt_0173:	.ascii	"Method declared ABSTRACT, but UDT does not extend OBJECT\0"
.balign 4
_Lt_0174:	.ascii	"Not overriding any virtual method\0"
.balign 4
_Lt_0175:	.ascii	"Implemented body for an ABSTRACT method\0"
.balign 4
_Lt_0176:	.ascii	"Override has different return type than overridden method\0"
.balign 4
_Lt_0177:	.ascii	"Override has different calling convention than overridden method\0"
.balign 4
_Lt_0178:	.ascii	"Implicit destructor override would have different calling convention\0"
.balign 4
_Lt_0179:	.ascii	"Implicit LET operator override would have different calling convention\0"
.balign 4
_Lt_017A:	.ascii	"Override is not a CONST member like the overridden method\0"
.balign 4
_Lt_017B:	.ascii	"Override is a CONST member, but the overridden method is not\0"
.balign 4
_Lt_017C:	.ascii	"Override has different parameters than overridden method\0"
.balign 4
_Lt_017D:	.ascii	"This operator cannot be STATIC\0"
.balign 4
_Lt_017E:	.ascii	"This operator is implicitly STATIC and cannot be VIRTUAL or ABSTRACT\0"
.balign 4
_Lt_017F:	.ascii	"This operator is implicitly STATIC and cannot be CONST\0"
.balign 4
_Lt_0180:	.ascii	"Parameter must be an integer\0"
.balign 4
_Lt_0181:	.ascii	"Parameter must be a pointer\0"
.balign 4
_Lt_0182:	.ascii	"Expected initializer\0"
.balign 4
_Lt_0183:	.ascii	"Fields cannot be named as keywords in TYPE's that contain member functions or in CLASS'es\0"
.balign 4
_Lt_0184:	.ascii	"Illegal outside a FOR compound statement\0"
.balign 4
_Lt_0185:	.ascii	"Illegal outside a DO compound statement\0"
.balign 4
_Lt_0186:	.ascii	"Illegal outside a WHILE compound statement\0"
.balign 4
_Lt_0187:	.ascii	"Illegal outside a SELECT compound statement\0"
.balign 4
_Lt_0188:	.ascii	"Expected 'FOR'\0"
.balign 4
_Lt_0189:	.ascii	"Expected 'DO'\0"
.balign 4
_Lt_018A:	.ascii	"Expected 'WHILE'\0"
.balign 4
_Lt_018B:	.ascii	"Expected 'SELECT'\0"
.balign 4
_Lt_018C:	.ascii	"No outer FOR compound statement found\0"
.balign 4
_Lt_018D:	.ascii	"No outer DO compound statement found\0"
.balign 4
_Lt_018E:	.ascii	"No outer WHILE compound statement found\0"
.balign 4
_Lt_018F:	.ascii	"No outer SELECT compound statement found\0"
.balign 4
_Lt_0190:	.ascii	"Expected 'CONSTRUCTOR', 'DESTRUCTOR', 'DO', 'FOR', 'FUNCTION', 'OPERATOR', 'PROPERTY', 'SELECT', 'SUB' or 'WHILE'\0"
.balign 4
_Lt_0191:	.ascii	"Expected 'DO', 'FOR' or 'WHILE'\0"
.balign 4
_Lt_0192:	.ascii	"Illegal outside a SUB block\0"
.balign 4
_Lt_0193:	.ascii	"Illegal outside a FUNCTION block\0"
.balign 4
_Lt_0194:	.ascii	"Ambiguous symbol access, explicit scope resolution required\0"
.balign 4
_Lt_0195:	.ascii	"An ENUM, TYPE or UNION cannot be empty\0"
.balign 4
_Lt_0196:	.ascii	"ENUM's declared inside EXTERN .. END EXTERN blocks don't open new scopes\0"
.balign 4
_Lt_0197:	.ascii	"STATIC used on non-member procedure\0"
.balign 4
_Lt_0198:	.ascii	"CONST used on non-member procedure\0"
.balign 4
_Lt_0199:	.ascii	"ABSTRACT used on non-member procedure\0"
.balign 4
_Lt_019A:	.ascii	"VIRTUAL used on non-member procedure\0"
.balign 4
_Lt_019B:	.ascii	"Invalid initializer\0"
.balign 4
_Lt_019C:	.ascii	"Objects with default [con|de]structors or methods are only allowed in the module level\0"
.balign 4
_Lt_019D:	.ascii	"Static member variable in nested UDT (only allowed in toplevel UDTs)\0"
.balign 4
_Lt_019E:	.ascii	"Symbol not a CLASS, ENUM, TYPE or UNION type\0"
.balign 4
_Lt_019F:	.ascii	"Too many elements\0"
.balign 4
_Lt_01A0:	.ascii	"Only data members supported\0"
.balign 4
_Lt_01A1:	.ascii	"UNIONs are not allowed\0"
.balign 4
_Lt_01A2:	.ascii	"Arrays are not allowed\0"
.balign 4
_Lt_01A3:	.ascii	"COMMON variables cannot be object instances of CLASS/TYPE's with cons/destructors\0"
.balign 4
_Lt_01A4:	.ascii	"Cloning operators (LET, Copy constructors) can't take a byval arg of the parent's type\0"
.balign 4
_Lt_01A5:	.ascii	"Local symbols can't be referenced\0"
.balign 4
_Lt_01A6:	.ascii	"Expected 'PTR' or 'POINTER'\0"
.balign 4
_Lt_01A7:	.ascii	"Too many levels of pointer indirection\0"
.balign 4
_Lt_01A8:	.ascii	"Dynamic arrays can't be const\0"
.balign 4
_Lt_01A9:	.ascii	"Const UDT cannot invoke non-const method\0"
.balign 4
_Lt_01AA:	.ascii	"Elements must be empty for strings and arrays\0"
.balign 4
_Lt_01AB:	.ascii	"GOSUB disabled, use 'OPTION GOSUB' to enable\0"
.balign 4
_Lt_01AC:	.ascii	"Invalid -lang\0"
.balign 4
_Lt_01AD:	.ascii	"Can't use ANY as initializer in array with ellipsis bound\0"
.balign 4
_Lt_01AE:	.ascii	"Must have initializer with array with ellipsis bound\0"
.balign 4
_Lt_01AF:	.ascii	"Can't use ... as lower bound\0"
.balign 4
_Lt_01B0:	.ascii	"FOR/NEXT variable name mismatch\0"
.balign 4
_Lt_01B1:	.ascii	"Selected option requires an SSE FPU mode\0"
.balign 4
_Lt_01B2:	.ascii	"Expected relational operator ( =, >, <, <>, <=, >= )\0"
.balign 4
_Lt_01B3:	.ascii	"Unsupported statement in -gen gcc mode\0"
.balign 4
_Lt_01B4:	.ascii	"Too many labels\0"
.balign 4
_Lt_01B5:	.ascii	"Unsupported function\0"
.balign 4
_Lt_01B6:	.ascii	"Expected sub\0"
.balign 4
_Lt_01B7:	.ascii	"Expected '#ENDIF'\0"
.balign 4
_Lt_01B8:	.ascii	"Resource file given for target system that does not support them\0"
.balign 4
_Lt_01B9:	.ascii	"-o <file> option without corresponding input file\0"
.balign 4
_Lt_01BA:	.ascii	"Not extending a TYPE/UNION (a TYPE/UNION can only extend other TYPEs/UNIONs)\0"
.balign 4
_Lt_01BB:	.ascii	"Illegal outside a CLASS, TYPE or UNION method\0"
.balign 4
_Lt_01BC:	.ascii	"CLASS, TYPE or UNION not derived\0"
.balign 4
_Lt_01BD:	.ascii	"CLASS, TYPE or UNION has no constructor\0"
.balign 4
_Lt_01BE:	.ascii	"Symbol type has no Run-Time Type Info (RTTI)\0"
.balign 4
_Lt_01BF:	.ascii	"Types have no hierarchical relation\0"
.balign 4
_Lt_01C0:	.ascii	"Expected a CLASS, TYPE or UNION symbol type\0"
.balign 4
_Lt_01C1:	.ascii	"Casting derived UDT pointer from incompatible pointer type\0"
.balign 4
_Lt_01C2:	.ascii	"Casting derived UDT pointer from unrelated UDT pointer type\0"
.balign 4
_Lt_01C3:	.ascii	"Casting derived UDT pointer to incompatible pointer type\0"
.balign 4
_Lt_01C4:	.ascii	"Casting derived UDT pointer to unrelated UDT pointer type\0"
.balign 4
_Lt_01C5:	.ascii	"ALIAS name string is empty\0"
.balign 4
_Lt_01C6:	.ascii	"LIB name string is empty\0"
.balign 4
_Lt_01C7:	.ascii	"UDT has unimplemented abstract methods\0"
.balign 4
_Lt_01C8:	.ascii	"Non-virtual call to ABSTRACT method\0"
.balign 4
_Lt_01C9:	.ascii	"#ASSERT condition failed\0"
.balign 4
_Lt_01CA:	.ascii	"Expected '>'\0"
.balign 4
_Lt_01CB:	.ascii	"Invalid size\0"
.balign 4
_Lt_01CC:	.ascii	"ALIAS name here does not match ALIAS given in DECLARE prototype\0"
.balign 4
_Lt_01CD:	.ascii	"vararg parameters are only allowed in CDECL procedures\0"
.balign 4
_Lt_01CE:	.ascii	"the first parameter in a procedure may not be vararg\0"
.balign 4
_Lt_01CF:	.ascii	"CONST used on constructor (not needed)\0"
.balign 4
_Lt_01D0:	.ascii	"CONST used on destructor (not needed)\0"
.balign 4
_Lt_01D1:	.ascii	"Byref function result not set\0"
.balign 4
_Lt_01D2:	.ascii	"Function result assignment outside of the function\0"
.balign 4
_Lt_01D3:	.ascii	"Type mismatch in byref function result assignment\0"
.balign 4
_Lt_01D4:	.ascii	"-asm att|intel option given, but not supported for this target (only x86 or x86_64)\0"
.balign 4
_Lt_01D5:	.ascii	"Reference not initialized\0"
.balign 4
_Lt_01D6:	.ascii	"Incompatible reference initializer\0"
.balign 4
_Lt_01D7:	.ascii	"Array of references - not supported yet\0"
.balign 4
_Lt_01D8:	.ascii	"Invalid CASE range, start value is greater than the end value\0"
.balign 4
_Lt_01D9:	.ascii	"Fixed-length string combined with BYREF (not supported)\0"
.balign 4
_Lt_01F6:	.ascii	"(\0"
.balign 4
_Lt_01F9:	.ascii	") \0"
.balign 4
_Lt_01FA:	.ascii	"error\0"
.balign 4
_Lt_01FD:	.ascii	" \0"
.balign 4
_Lt_01FE:	.ascii	": \0"
.balign 4
_Lt_020A:	.ascii	", \0"
.balign 4
_Lt_020E:	.ascii	"\"\0"
.balign 4
_Lt_0217:	.ascii	" in '\0"
.balign 4
_Lt_0218:	.ascii	"'\0"
.balign 4
_Lt_023A:	.ascii	"before '\0"
.balign 4
_Lt_023B:	.ascii	"found '\0"
.balign 4
_Lt_0250:	.ascii	")\0"
.balign 4
_Lt_0253:	.ascii	"()\0"
.balign 4
_Lt_0254:	.ascii	" warning \0"
.balign 4
_Lt_0255:	.ascii	"): \0"
.balign 4
_Lt_0273:	.ascii	" or \0"
.balign 4
_Lt_0280:	.ascii	"at parameter \0"
.balign 4
_Lt_0291:	.ascii	" (\0"
.balign 4
_Lt_0299:	.ascii	"FB_\0"
.balign 4
_Lt_02AB:	.ascii	" of \0"

.section .ctors
.int _fb_ctor__error
