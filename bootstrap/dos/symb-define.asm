	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBDEFINEINIT
_SYMBDEFINEINIT:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.Lt_01E6:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 6
push 12
push 500
lea eax, [_SYMB+98688]
push eax
call _LISTINIT
add esp, 16
push 6
push 16
push 1000
lea eax, [_SYMB+98720]
push eax
call _LISTINIT
add esp, 16
push -1
push 16
lea eax, [_SYMB+98752]
push eax
call _HASHINIT
add esp, 12
mov dword ptr [ebp-56], 0
.Lt_01EB:
push 0
push 0
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [_DEFTB+eax+4]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-56]
sal eax, 4
cmp dword ptr [_DEFTB+eax+4], 0
je .Lt_01ED
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ebx, dword ptr [_DEFTB+eax+8]
and ebx, 1
je .Lt_01EF
push 0
push -1
push 2
push offset _Lt_016B
push -1
push -1
lea ebx, [ebp-12]
push ebx
push 2
push offset _Lt_016B
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_01EF:
.Lt_01EE:
.Lt_01ED:
.Lt_01EC:
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [_DEFTB+eax+8]
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [_DEFTB+eax+12]
push 0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen
add esp, 8
push eax
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [_DEFTB+eax]
call _SYMBADDDEFINE
add esp, 24
.Lt_01E9:
inc dword ptr [ebp-56]
.Lt_01E8:
cmp dword ptr [ebp-56], 34
jle .Lt_01EB
.Lt_01EA:
push 0
push 0
push 0
push 0
push 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
push 3
push offset _Lt_01F3
push -1
push -1
push 0
push dword ptr [_ENV+244]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrUcase2
add esp, 8
push eax
push 6
push offset _Lt_01F2
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _SYMBADDDEFINE
add esp, 24
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [_ENV+108], 11
jne .Lt_01F8
push 0
push 0
push 0
push 0
push 0
push offset _Lt_01F9
call _SYMBADDDEFINE
add esp, 24
.Lt_01F8:
.Lt_01F7:
mov eax, dword ptr [_ENV+260]
and eax, 1
je .Lt_01FB
push 0
push 0
push 0
push 0
push 0
push offset _Lt_01FC
call _SYMBADDDEFINE
add esp, 24
jmp .Lt_01FA
.Lt_01FB:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_01FD
call _SYMBADDDEFINE
add esp, 24
.Lt_01FA:
call _FBIS64BIT
test eax, eax
je .Lt_01FF
push 0
push 0
push 0
push 0
push 0
push offset _Lt_0200
call _SYMBADDDEFINE
add esp, 24
.Lt_01FF:
.Lt_01FE:
call _FBGETCPUFAMILY
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 2
je .Lt_0204
.Lt_0205:
cmp dword ptr [ebp-56], 3
jne .Lt_0203
.Lt_0204:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_0206
call _SYMBADDDEFINE
add esp, 24
jmp .Lt_0201
.Lt_0203:
cmp dword ptr [ebp-56], 0
je .Lt_0208
.Lt_0209:
cmp dword ptr [ebp-56], 1
jne .Lt_0207
.Lt_0208:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_020A
call _SYMBADDDEFINE
add esp, 24
push 1
push offset _HDEFASM_CB
push 0
push 0
push 0
push offset _Lt_020B
call _SYMBADDDEFINE
add esp, 24
jmp .Lt_0201
.Lt_0207:
cmp dword ptr [ebp-56], 4
je .Lt_020D
.Lt_020E:
cmp dword ptr [ebp-56], 5
jne .Lt_020C
.Lt_020D:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_020F
call _SYMBADDDEFINE
add esp, 24
.Lt_020C:
.Lt_0201:
cmp dword ptr [ebp+8], 0
je .Lt_0211
push 0
push 0
push 0
push 0
push 0
push offset _Lt_0212
call _SYMBADDDEFINE
add esp, 24
.Lt_0211:
.Lt_0210:
cmp dword ptr [_ENV+116], 1
jl .Lt_0214
push 0
push 0
push 0
push 0
push 0
push offset _Lt_0215
call _SYMBADDDEFINE
add esp, 24
.Lt_0214:
.Lt_0213:
push 0
push -1
push dword ptr [_ENV+124]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 0
push 0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen
add esp, 8
push eax
push dword ptr [ebp-12]
push offset _Lt_0216
call _SYMBADDDEFINE
add esp, 24
mov dword ptr [_SYMB+98764], 0
push 0
push 32
lea eax, [_SYMB+98768]
push eax
call _HASHINIT
add esp, 12
mov dword ptr [ebp-56], 0
.Lt_021A:
mov eax, dword ptr [ebp-56]
imul eax, 40
push dword ptr [_MACROTB+eax+20]
push 0
call _SYMBADDDEFINEPARAM
add esp, 8
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
mov dword ptr [ebp-72], 1
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [_MACROTB+eax+16]
dec ebx
mov dword ptr [ebp-76], ebx
jmp .Lt_021C
.Lt_021F:
mov ebx, dword ptr [ebp-56]
imul ebx, 40
lea eax, [_MACROTB+ebx]
mov ebx, dword ptr [ebp-72]
sal ebx, 2
add eax, ebx
push dword ptr [eax+20]
push dword ptr [ebp-64]
call _SYMBADDDEFINEPARAM
add esp, 8
mov dword ptr [ebp-64], eax
.Lt_021D:
inc dword ptr [ebp-72]
.Lt_021C:
mov eax, dword ptr [ebp-76]
cmp dword ptr [ebp-72], eax
jle .Lt_021F
.Lt_021E:
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [_MACROTB+eax+4]
or ebx, 8
push ebx
push dword ptr [ebp-60]
mov ebx, dword ptr [ebp-56]
imul ebx, 40
push dword ptr [_MACROTB+ebx+16]
push 0
mov ebx, dword ptr [ebp-56]
imul ebx, 40
push dword ptr [_MACROTB+ebx]
call _SYMBADDDEFINEMACRO
add esp, 20
mov dword ptr [ebp-68], eax
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [ebp-68]
mov ecx, dword ptr [_MACROTB+eax+8]
mov dword ptr [ebx+76], ecx
mov ecx, dword ptr [ebp-56]
imul ecx, 40
mov ebx, dword ptr [ebp-68]
mov eax, dword ptr [_MACROTB+ecx+12]
mov dword ptr [ebx+80], eax
.Lt_0218:
inc dword ptr [ebp-56]
.Lt_0217:
cmp dword ptr [ebp-56], 10
jle .Lt_021A
.Lt_0219:
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_01E7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDEFINEEND
_SYMBDEFINEEND:
.Lt_0220:
lea eax, [_SYMB+98768]
push eax
call _HASHEND
add esp, 4
mov dword ptr [_SYMB+98764], 0
lea eax, [_SYMB+98752]
push eax
call _HASHEND
add esp, 4
lea eax, [_SYMB+98688]
push eax
call _LISTEND
add esp, 4
lea eax, [_SYMB+98720]
push eax
call _LISTEND
add esp, 4
.Lt_0221:
ret
.balign 16

.globl _SYMBADDDEFINE
_SYMBADDDEFINE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0222:
mov dword ptr [ebp-4], 0
push 0
push 0
push 0
push 4
push 0
push dword ptr [ebp+8]
push 5
lea eax, [_SYMB+98420]
push eax
push 0
push 0
push 32
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0225
jmp .Lt_0223
.Lt_0225:
.Lt_0224:
mov eax, dword ptr [ebp+16]
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+40], ebx
mov dword ptr [ecx+44], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+76], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+28]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0223:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDDEFINEW
_SYMBADDDEFINEW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0226:
mov dword ptr [ebp-4], 0
push 0
push 0
push 0
push 7
push 0
push dword ptr [ebp+8]
push 5
lea eax, [_SYMB+98420]
push eax
push 0
push 0
push 32
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0229
jmp .Lt_0227
.Lt_0229:
.Lt_0228:
mov eax, dword ptr [ebp+16]
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call _fb_WstrAssign
add esp, 12
mov ebx, dword ptr [ebp+16]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+40], ebx
mov dword ptr [ecx+44], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+76], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+28]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0227:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDDEFINEMACRO
_SYMBADDDEFINEMACRO:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_022A:
mov dword ptr [ebp-4], 0
push 0
push 0
push 0
push -2147483648
push 0
push dword ptr [ebp+8]
push 5
lea eax, [_SYMB+98420]
push eax
push 0
push 0
push 32
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_022D
jmp .Lt_022B
.Lt_022D:
.Lt_022C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+68], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+76], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+80], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_022B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBADDDEFINEPARAM
_SYMBADDDEFINEPARAM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0235:
mov dword ptr [ebp-4], 0
lea eax, [_SYMB+98688]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [_Lt_023F], eax
cmp dword ptr [ebp+8], 0
je .Lt_0238
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_023F]
mov dword ptr [eax+8], ebx
jmp .Lt_0237
.Lt_0238:
cmp dword ptr [_SYMB+98764], 0
jle .Lt_023A
call _HRESETDEFHASH
.Lt_023A:
.Lt_0239:
.Lt_0237:
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [_Lt_023F]
mov dword ptr [ebx], eax
mov eax, dword ptr [_Lt_023F]
push dword ptr [eax]
push dword ptr [ebp+12]
call _HUCASE
add esp, 8
mov eax, dword ptr [_Lt_023F]
push dword ptr [eax]
call _HASHHASH
add esp, 4
mov dword ptr [_Lt_0240], eax
push dword ptr [_Lt_0240]
mov eax, dword ptr [_Lt_023F]
push dword ptr [eax]
lea eax, [_SYMB+98768]
push eax
call _HASHLOOKUPEX
add esp, 12
test eax, eax
je .Lt_023C
mov eax, dword ptr [_Lt_023F]
cmp dword ptr [eax], 0
je .Lt_023E
mov eax, dword ptr [_Lt_023F]
push dword ptr [eax]
call _free
add esp, 4
.Lt_023E:
.Lt_023D:
push dword ptr [_Lt_023F]
lea eax, [_SYMB+98688]
push eax
call _LISTDELNODE
add esp, 8
mov dword ptr [ebp-4], 0
jmp .Lt_0236
.Lt_023C:
.Lt_023B:
push dword ptr [_Lt_0240]
push dword ptr [_Lt_023F]
mov eax, dword ptr [_Lt_023F]
push dword ptr [eax]
lea eax, [_SYMB+98768]
push eax
call _HASHADD
add esp, 16
lea ebx, [_SYMB+98688]
mov ecx, dword ptr [_SYMB+98764]
sal ecx, 3
add ebx, ecx
mov dword ptr [ebx+92], eax
lea eax, [_SYMB+98688]
mov ebx, dword ptr [_SYMB+98764]
sal ebx, 3
add eax, ebx
mov ebx, dword ptr [_Lt_0240]
mov dword ptr [eax+96], ebx
mov ebx, dword ptr [_Lt_023F]
mov eax, dword ptr [_SYMB+98764]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [_Lt_023F]
mov dword ptr [eax+8], 0
inc dword ptr [_SYMB+98764]
mov eax, dword ptr [_Lt_023F]
mov dword ptr [ebp-4], eax
.Lt_0236:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_023F,4
.balign 4
	.lcomm	_Lt_0240,4

.section .text
.balign 16

.globl _SYMBADDDEFINETOK
_SYMBADDDEFINETOK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0241:
mov dword ptr [ebp-4], 0
lea eax, [_SYMB+98720]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [_Lt_024B], eax
cmp dword ptr [ebp+8], 0
je .Lt_0244
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_024B]
mov dword ptr [eax+12], ebx
.Lt_0244:
.Lt_0243:
mov ebx, dword ptr [_Lt_024B]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [_Lt_024B]
mov dword ptr [eax+12], 0
mov eax, dword ptr [_Lt_024B]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-8], ebx
jmp .Lt_0246
.Lt_0248:
mov ebx, dword ptr [_Lt_024B]
mov dword ptr [ebx+4], 0
jmp .Lt_0245
.Lt_0249:
mov ebx, dword ptr [_Lt_024B]
mov dword ptr [ebx+4], 0
jmp .Lt_0245
.Lt_0246:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967294
cmp ebx, 1
ja .Lt_0245
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.LT_024A+ebx*4-8]
_.LT_024A:
.int .Lt_0248
.int .Lt_0249
.Lt_0245:
mov ebx, dword ptr [_Lt_024B]
mov dword ptr [ebp-4], ebx
.Lt_0242:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_024B,4

.section .text
.balign 16

.globl _SYMBDELDEFINETOK
_SYMBDELDEFINETOK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_024C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .Lt_024F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
jmp .Lt_024E
.Lt_024F:
mov dword ptr [ebp-4], 0
.Lt_024E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
jne .Lt_0252
.Lt_0253:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .Lt_0255
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call _free
add esp, 4
.Lt_0255:
.Lt_0254:
jmp .Lt_0250
.Lt_0252:
cmp dword ptr [ebp-8], 3
jne .Lt_0256
.Lt_0257:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .Lt_0259
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call _free
add esp, 4
.Lt_0259:
.Lt_0258:
.Lt_0256:
.Lt_0250:
push dword ptr [ebp+8]
lea ebx, [_SYMB+98720]
push ebx
call _LISTDELNODE
add esp, 8
.Lt_024D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELDEFINE
_SYMBDELDEFINE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0264:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_0267
jmp .Lt_0265
.Lt_0267:
.Lt_0266:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jne .Lt_0269
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .Lt_026B
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .Lt_026D
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _free
add esp, 4
.Lt_026D:
.Lt_026C:
jmp .Lt_026A
.Lt_026B:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .Lt_026F
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _free
add esp, 4
.Lt_026F:
.Lt_026E:
.Lt_026A:
jmp .Lt_0268
.Lt_0269:
push dword ptr [ebp+8]
call _HDELDEFINETOKENS
add esp, 4
.Lt_0268:
push dword ptr [ebp+8]
call _HDELDEFINEPARAMS
add esp, 4
push dword ptr [ebp+8]
call _SYMBFREESYMBOL
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_0265:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__symbzdefine:
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
_HDEFFILE_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_006A:
push 0
push 261
lea eax, [_ENV+280]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_006B:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFPATH_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_006C:
push 0
push -1
call _FBGETINPUTFILEPARENTDIR
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_006D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFFUNCTION_CB:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_006E:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+12]
and ebx, 4096
test ebx, ebx
je .Lt_0071
push 0
push 16
push offset _Lt_001F
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0070
.Lt_0071:
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+12]
and eax, 8192
test eax, eax
je .Lt_0072
push 0
push 20
push offset _Lt_0020
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0070
.Lt_0072:
push 0
push 0
push dword ptr [_PARSER+104]
call _SYMBGETFULLPROCNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0070:
.Lt_006F:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFLINE_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0073:
push 0
push -1
mov eax, dword ptr [_LEX+213248]
push dword ptr [eax+4276]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0074:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFDATE_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0075:
push 0
push -1
call _fb_Date
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0076:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFDATEISO_CB:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0077:
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 11
push offset _Lt_0079
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_Now
sub esp,8
fstp qword ptr [esp]
call _fb_StrFormat
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0078:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFTIME_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_007B:
push 0
push -1
call _fb_Time
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_007C:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFMULTITHREAD_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_007D:
push 0
push -1
push dword ptr [_ENV+216]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_007E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTBYVAL_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_007F:
push 0
push -1
mov eax, dword ptr [_ENV+928]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0080:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTDYNAMIC_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0081:
push 0
push -1
mov eax, dword ptr [_ENV+944]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0082:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTESCAPE_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0083:
push 0
push -1
mov eax, dword ptr [_ENV+940]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0084:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTEXPLICIT_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0085:
push 0
push -1
mov eax, dword ptr [_ENV+932]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0086:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTPRIVATE_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0087:
push 0
push -1
mov eax, dword ptr [_ENV+936]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0088:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOPTGOSUB_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0089:
push 0
push -1
mov eax, dword ptr [_ENV+948]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_008A:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOUTEXE_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_008D:
push 0
push -1
mov eax, dword ptr [_ENV+96]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_008E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOUTLIB_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_008F:
push 0
push -1
mov eax, dword ptr [_ENV+96]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0090:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOUTDLL_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0091:
push 0
push -1
mov eax, dword ptr [_ENV+96]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0092:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFOUTOBJ_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0093:
push 0
push -1
mov eax, dword ptr [_ENV+96]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0094:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFDEBUG_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0095:
push 0
push -1
push dword ptr [_ENV+144]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0096:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFERR_CB:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0097:
mov dword ptr [ebp-16], 0
cmp dword ptr [_ENV+156], 0
je .Lt_009A
mov dword ptr [ebp-16], 1
.Lt_009A:
.Lt_0099:
cmp dword ptr [_ENV+160], 0
je .Lt_009C
or dword ptr [ebp-16], 2
.Lt_009C:
.Lt_009B:
cmp dword ptr [_ENV+164], 0
je .Lt_009E
or dword ptr [ebp-16], 4
.Lt_009E:
.Lt_009D:
cmp dword ptr [_ENV+172], 0
je .Lt_00A0
or dword ptr [ebp-16], 8
.Lt_00A0:
.Lt_009F:
cmp dword ptr [_ENV+176], 0
je .Lt_00A2
or dword ptr [ebp-16], 16
.Lt_00A2:
.Lt_00A1:
cmp dword ptr [_ENV+152], 0
je .Lt_00A4
or dword ptr [ebp-16], 32
.Lt_00A4:
.Lt_00A3:
cmp dword ptr [_ENV+148], 0
je .Lt_00A6
or dword ptr [ebp-16], 64
.Lt_00A6:
.Lt_00A5:
cmp dword ptr [_ENV+144], 0
je .Lt_00A8
or dword ptr [ebp-16], 128
.Lt_00A8:
.Lt_00A7:
cmp dword ptr [_ENV+168], 0
je .Lt_00AA
or dword ptr [ebp-16], 256
.Lt_00AA:
.Lt_00A9:
push 0
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0098:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFLANG_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00AB:
push 0
push -1
push dword ptr [_ENV+136]
call _FBGETLANGNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_00AC:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFBACKEND_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00AD:
push 0
push -1
push dword ptr [_ENV+104]
call _FBGETBACKENDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_00AE:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFFPU_CB:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00AF:
push 5
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00B3
.Lt_00B4:
push 0
push 4
push offset _Lt_00B5
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_00B0
jmp .Lt_00B1
.Lt_00B3:
cmp dword ptr [ebp-16], 1
jne .Lt_00B6
.Lt_00B7:
push 0
push 4
push offset _Lt_00B8
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_00B0
.Lt_00B6:
.Lt_00B9:
.Lt_00B1:
.Lt_00B0:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFFPMODE_CB:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00BA:
push 6
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00BE
.Lt_00BF:
push 0
push 8
push offset _Lt_00C0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_00BB
jmp .Lt_00BC
.Lt_00BE:
cmp dword ptr [ebp-16], 1
jne .Lt_00C1
.Lt_00C2:
push 0
push 5
push offset _Lt_00C3
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_00BB
.Lt_00C1:
.Lt_00C4:
.Lt_00BC:
.Lt_00BB:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFGCC_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00C5:
push 0
push -1
mov eax, dword ptr [_ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_00C6:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFASM_CB:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00C7:
mov eax, dword ptr [_ENV+132]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00CB
.Lt_00CC:
push 0
push 6
push offset _Lt_00CD
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_00C9
.Lt_00CB:
cmp dword ptr [ebp-16], 1
jne .Lt_00CE
.Lt_00CF:
push 0
push 4
push offset _Lt_00D0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_00CE:
.Lt_00C9:
.Lt_00C8:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HMACRO_GETARGZ:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D1:
mov dword ptr [ebp-8], 0
cmp dword ptr [_ENV+552], 0
jne .Lt_00D4
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00D6
mov dword ptr [ebp-4], 0
jmp .Lt_00D2
.Lt_00D6:
.Lt_00D5:
push dword ptr [ebp-12]
lea eax, [ebp-8]
push eax
call _ZSTRASSIGN
add esp, 8
jmp .Lt_00D3
.Lt_00D4:
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00D8
mov dword ptr [ebp-4], 0
jmp .Lt_00D2
.Lt_00D8:
.Lt_00D7:
push dword ptr [ebp-12]
lea eax, [ebp-8]
push eax
call _ZSTRASSIGNW
add esp, 8
.Lt_00D3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00D2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMACRO_GETARGW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D9:
push 0
push offset _Lt_027B
call _DWSTRASSIGN
add esp, 8
cmp dword ptr [_ENV+552], 0
jne .Lt_00DC
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00DE
mov dword ptr [ebp-4], 0
jmp .Lt_00DA
.Lt_00DE:
.Lt_00DD:
push dword ptr [ebp-8]
push offset _Lt_027B
call _DWSTRCONCATASSIGNA
add esp, 8
jmp .Lt_00DB
.Lt_00DC:
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00E0
mov dword ptr [ebp-4], 0
jmp .Lt_00DA
.Lt_00E0:
.Lt_00DF:
push dword ptr [ebp-8]
push offset _Lt_027B
call _DWSTRCONCATASSIGN
add esp, 8
.Lt_00DB:
mov eax, dword ptr [_Lt_027B]
mov dword ptr [ebp-4], eax
.Lt_00DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_027B,12

.section .text
.balign 16
_HDEFUNIQUEIDPUSH_CB:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00E1:
cmp dword ptr [_PP+212], 0
je .Lt_00E4
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_00E2
.Lt_00E4:
.Lt_00E3:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00E6
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_00E2
.Lt_00E6:
.Lt_00E5:
push dword ptr [ebp-16]
lea eax, [_SYMB+98752]
push eax
call _HASHLOOKUP
add esp, 8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00E8
push 1
push 4
call _calloc
add esp, 8
mov dword ptr [ebp-20], eax
push 4294967295
push dword ptr [ebp-20]
push dword ptr [ebp-16]
lea eax, [_SYMB+98752]
push eax
call _HASHADD
add esp, 16
jmp .Lt_00E7
.Lt_00E8:
cmp dword ptr [ebp-16], 0
je .Lt_00EA
push dword ptr [ebp-16]
call _free
add esp, 4
.Lt_00EA:
.Lt_00E9:
.Lt_00E7:
push 8
call _malloc
add esp, 4
mov dword ptr [ebp-24], eax
push 1
call _SYMBUNIQUEID
add esp, 4
mov dword ptr [ebp-28], eax
push 0
push dword ptr [ebp-28]
call _fb_StrLen
add esp, 8
inc eax
mov ebx, eax
push ebx
call _malloc
add esp, 4
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx], eax
push 0
push 0
push dword ptr [ebp-28]
push 0
mov eax, dword ptr [ebp-24]
push dword ptr [eax]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
mov ecx, dword ptr [eax]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ecx], ebx
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_00E2:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFUNIQUEID_CB:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00EB:
cmp dword ptr [_PP+212], 0
je .Lt_00EE
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_00EC
.Lt_00EE:
.Lt_00ED:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00F0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_00EC
.Lt_00F0:
.Lt_00EF:
push dword ptr [ebp-16]
lea eax, [_SYMB+98752]
push eax
call _HASHLOOKUP
add esp, 8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
je .Lt_00F2
push dword ptr [ebp-16]
call _free
add esp, 4
.Lt_00F2:
.Lt_00F1:
cmp dword ptr [ebp-20], 0
je .Lt_00F4
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 0
je .Lt_00F6
push 0
push 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
push dword ptr [ebx]
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_00EC
.Lt_00F6:
.Lt_00F5:
.Lt_00F4:
.Lt_00F3:
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_00EC:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFUNIQUEIDPOP_CB:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00F7:
cmp dword ptr [_PP+212], 0
je .Lt_00FA
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_00F8
.Lt_00FA:
.Lt_00F9:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00FC
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_00F8
.Lt_00FC:
.Lt_00FB:
push dword ptr [ebp-16]
lea eax, [_SYMB+98752]
push eax
call _HASHLOOKUP
add esp, 8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
je .Lt_00FE
push dword ptr [ebp-16]
call _free
add esp, 4
.Lt_00FE:
.Lt_00FD:
cmp dword ptr [ebp-20], 0
je .Lt_0100
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 0
je .Lt_0102
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
push dword ptr [ebx]
call _free
add esp, 4
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx], ecx
jmp .Lt_0101
.Lt_0102:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 17
.Lt_0101:
jmp .Lt_00FF
.Lt_0100:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 17
.Lt_00FF:
push 0
push 1
push offset _Lt_0000
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrAssign
add esp, 20
.Lt_00F8:
lea ecx, [ebp-12]
push ecx
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFARGCOUNT_CB:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0103:
cmp dword ptr [ebp+8], 0
je .Lt_0106
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+384]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
jmp .Lt_0104
.Lt_0106:
.Lt_0105:
push 0
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0104:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFARGEXTRACT_CB:
push ebp
mov ebp, esp
sub esp, 196
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0107:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .Lt_010A
push 0
push dword ptr [ebp-28]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 48
mov dword ptr [ebp-36], 0
mov eax, dword ptr [ebp-32]
dec eax
mov dword ptr [ebp-48], eax
jmp .Lt_010C
.Lt_010F:
mov eax, dword ptr [ebp-28]
add eax, dword ptr [ebp-36]
movzx ebx, byte ptr [eax]
cmp ebx, 57
ja .Lt_0111
mov ebx, dword ptr [ebp-28]
add ebx, dword ptr [ebp-36]
movzx eax, byte ptr [ebx]
cmp eax, 48
setae bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-52], ebx
jmp .Lt_027C
.Lt_0111:
mov dword ptr [ebp-52], 0
.Lt_027C:
mov ebx, dword ptr [ebp-52]
not ebx
test ebx, ebx
je .Lt_0114
jmp .Lt_010E
.Lt_0114:
.Lt_0113:
mov eax, dword ptr [ebp-40]
imul eax, 10
mov dword ptr [ebp-40], eax
mov ebx, dword ptr [ebp-28]
add ebx, dword ptr [ebp-36]
movzx eax, byte ptr [ebx]
add eax, dword ptr [ebp-40]
sub eax, dword ptr [ebp-44]
mov dword ptr [ebp-40], eax
.Lt_010D:
inc dword ptr [ebp-36]
.Lt_010C:
mov eax, dword ptr [ebp-48]
cmp dword ptr [ebp-36], eax
jle .Lt_010F
.Lt_010E:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-36], eax
jne .Lt_0116
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+384]
dec ebx
mov eax, ebx
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-48]
cmp dword ptr [ebp-40], eax
jae .Lt_0118
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 12
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 8
lea eax, [ebp-148]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 24
rep stosd
pop edi
pop eax
lea eax, [ebp-172]
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
push 0
push 2
push offset _Lt_011A
push -1
lea eax, [ebp-196]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-196]
push eax
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push 0
push dword ptr [ebp-52]
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call _HSPLITSTR
add esp, 12
lea eax, [ebp-196]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-184]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
mov eax, dword ptr [ebp-40]
imul eax, 12
add eax, dword ptr [ebp-172]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-52], 0
je .Lt_011D
push dword ptr [ebp-52]
call _free
add esp, 4
.Lt_011D:
.Lt_011C:
lea ebx, [ebp-172]
push ebx
call _fb_ArrayStrErase
add esp, 4
.Lt_0118:
.Lt_0117:
jmp .Lt_0115
.Lt_0116:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 17
.Lt_0115:
cmp dword ptr [ebp-28], 0
je .Lt_011F
push dword ptr [ebp-28]
call _free
add esp, 4
.Lt_011F:
.Lt_011E:
jmp .Lt_0109
.Lt_010A:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 1
.Lt_0109:
push 0
push -1
lea ebx, [ebp-24]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrInit
add esp, 20
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
jmp .Lt_0108
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
.Lt_0108:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFARGLEFT_CB:
push ebp
mov ebp, esp
sub esp, 176
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0120:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-28], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-32], eax
push 2
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0123
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 12
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 8
lea ebx, [ebp-132]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 24
rep stosd
pop edi
lea ebx, [ebp-156]
push ebx
push dword ptr [ebp-28]
call _HSTR2TOK
add esp, 8
mov dword ptr [ebp-160], eax
cmp dword ptr [ebp-160], 0
jle .Lt_0125
push dword ptr [ebp-32]
push dword ptr [ebp-32]
call _HUCASE
add esp, 8
mov dword ptr [ebp-164], 0
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-168], eax
jmp .Lt_0127
.Lt_012A:
push 0
push dword ptr [ebp-32]
push -1
push 0
mov eax, dword ptr [ebp-164]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_012C
mov dword ptr [ebp-172], 0
mov eax, dword ptr [ebp-164]
dec eax
mov dword ptr [ebp-176], eax
jmp .Lt_012E
.Lt_0131:
cmp dword ptr [ebp-172], 0
jle .Lt_0133
push 0
push 2
push offset _Lt_0134
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0133:
.Lt_0132:
push 0
push -1
mov eax, dword ptr [ebp-172]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_012F:
inc dword ptr [ebp-172]
.Lt_012E:
mov ebx, dword ptr [ebp-176]
cmp dword ptr [ebp-172], ebx
jle .Lt_0131
.Lt_0130:
jmp .Lt_0129
.Lt_012C:
.Lt_012B:
.Lt_0128:
inc dword ptr [ebp-164]
.Lt_0127:
mov ebx, dword ptr [ebp-168]
cmp dword ptr [ebp-164], ebx
jle .Lt_012A
.Lt_0129:
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_0136
push 0
push 0
push dword ptr [ebp-36]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0136:
.Lt_0135:
jmp .Lt_0124
.Lt_0125:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
.Lt_0124:
lea eax, [ebp-156]
push eax
call _fb_ArrayStrErase
add esp, 4
jmp .Lt_0122
.Lt_0123:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.Lt_0122:
cmp dword ptr [ebp-36], 0
je .Lt_0138
push dword ptr [ebp-36]
call _free
add esp, 4
.Lt_0138:
.Lt_0137:
cmp dword ptr [ebp-32], 0
je .Lt_013A
push dword ptr [ebp-32]
call _free
add esp, 4
.Lt_013A:
.Lt_0139:
cmp dword ptr [ebp-28], 0
je .Lt_013C
push dword ptr [ebp-28]
call _free
add esp, 4
.Lt_013C:
.Lt_013B:
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
jmp .Lt_0121
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0121:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFARGRIGHT_CB:
push ebp
mov ebp, esp
sub esp, 176
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_013D:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-28], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-32], eax
push 2
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0140
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 12
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 8
lea ebx, [ebp-132]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 24
rep stosd
pop edi
lea ebx, [ebp-156]
push ebx
push dword ptr [ebp-28]
call _HSTR2TOK
add esp, 8
mov dword ptr [ebp-160], eax
cmp dword ptr [ebp-160], 0
jle .Lt_0142
push dword ptr [ebp-32]
push dword ptr [ebp-32]
call _HUCASE
add esp, 8
mov dword ptr [ebp-164], 0
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-168], eax
jmp .Lt_0144
.Lt_0147:
push 0
push dword ptr [ebp-32]
push -1
push 0
mov eax, dword ptr [ebp-164]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0149
mov eax, dword ptr [ebp-164]
inc eax
mov dword ptr [ebp-172], eax
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-176], eax
jmp .Lt_014B
.Lt_014E:
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_0150
push 0
push 2
push offset _Lt_0134
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0150:
.Lt_014F:
push 0
push -1
mov eax, dword ptr [ebp-172]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_014C:
inc dword ptr [ebp-172]
.Lt_014B:
mov ebx, dword ptr [ebp-176]
cmp dword ptr [ebp-172], ebx
jle .Lt_014E
.Lt_014D:
jmp .Lt_0146
.Lt_0149:
.Lt_0148:
.Lt_0145:
inc dword ptr [ebp-164]
.Lt_0144:
mov ebx, dword ptr [ebp-168]
cmp dword ptr [ebp-164], ebx
jle .Lt_0147
.Lt_0146:
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_0152
push 0
push 0
push dword ptr [ebp-36]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0152:
.Lt_0151:
jmp .Lt_0141
.Lt_0142:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
.Lt_0141:
lea eax, [ebp-156]
push eax
call _fb_ArrayStrErase
add esp, 4
jmp .Lt_013F
.Lt_0140:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.Lt_013F:
cmp dword ptr [ebp-36], 0
je .Lt_0154
push dword ptr [ebp-36]
call _free
add esp, 4
.Lt_0154:
.Lt_0153:
cmp dword ptr [ebp-32], 0
je .Lt_0156
push dword ptr [ebp-32]
call _free
add esp, 4
.Lt_0156:
.Lt_0155:
cmp dword ptr [ebp-28], 0
je .Lt_0158
push dword ptr [ebp-28]
call _free
add esp, 4
.Lt_0158:
.Lt_0157:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_013E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFJOINZ_CB:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0159:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-28], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-28], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_015C
push 0
push -1
push 0
push dword ptr [ebp-32]
push 0
push dword ptr [ebp-28]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_015B
.Lt_015C:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.Lt_015B:
cmp dword ptr [ebp-28], 0
je .Lt_015F
push dword ptr [ebp-28]
call _free
add esp, 4
.Lt_015F:
.Lt_015E:
cmp dword ptr [ebp-32], 0
je .Lt_0161
push dword ptr [ebp-32]
call _free
add esp, 4
.Lt_0161:
.Lt_0160:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_015A:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFJOINW_CB:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0162:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGW
add esp, 8
mov dword ptr [ebp-8], eax
push 1
push dword ptr [ebp+8]
call _HMACRO_GETARGW
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push offset _Lt_0284
call _DWSTRASSIGN
add esp, 8
cmp dword ptr [ebp-8], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0165
push dword ptr [ebp-8]
push offset _Lt_0284
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-12]
push offset _Lt_0284
call _DWSTRCONCATASSIGN
add esp, 8
jmp .Lt_0164
.Lt_0165:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 1
.Lt_0164:
mov ebx, dword ptr [_Lt_0284]
mov dword ptr [ebp-4], ebx
.Lt_0163:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0284,12

.section .text
.balign 16
_HDEFQUOTEZ_CB:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0166:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [ebp-16], 0
je .Lt_0169
push 0
push 3
push offset _Lt_016C
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_016D
push offset _Lt_016B
push dword ptr [ebp-16]
call _HREPLACE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_016B
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0168
.Lt_0169:
push 0
push 3
push offset _Lt_016D
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0168:
cmp dword ptr [ebp-16], 0
je .Lt_016F
push dword ptr [ebp-16]
call _free
add esp, 4
.Lt_016F:
.Lt_016E:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0167:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFQUOTEW_CB:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0170:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGW
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push offset _Lt_0287
call _DWSTRASSIGN
add esp, 8
cmp dword ptr [ebp-8], 0
je .Lt_0173
push offset _Lt_016C
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push offset _Lt_0287
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-12]
call _fb_WstrDelete
add esp, 4
push offset _Lt_016D
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push offset _Lt_016B
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _HREPLACEW
add esp, 12
push eax
push offset _Lt_0287
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-20]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-16]
call _fb_WstrDelete
add esp, 4
push offset _Lt_016B
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push offset _Lt_0287
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-24]
call _fb_WstrDelete
add esp, 4
jmp .Lt_0172
.Lt_0173:
push offset _Lt_016D
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push offset _Lt_0287
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-12]
call _fb_WstrDelete
add esp, 4
.Lt_0172:
mov eax, dword ptr [_Lt_0287]
mov dword ptr [ebp-4], eax
.Lt_0171:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0287,12

.section .text
.balign 16
_HDEFUNQUOTEZ_CB:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0179:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [ebp-16], 0
je .Lt_017C
push 0
push dword ptr [ebp-16]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 3
jl .Lt_017D
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
cmp ebx, 36
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
movzx ecx, byte ptr [ebx+1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov ebx, dword ptr [ebp-16]
add ebx, dword ptr [ebp-32]
movzx ecx, byte ptr [ebx-1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-36], eax
jmp .Lt_0288
.Lt_017D:
mov dword ptr [ebp-36], 0
.Lt_0288:
cmp dword ptr [ebp-36], 0
je .Lt_0180
push 0
push -1
push offset _Lt_016B
push offset _Lt_016D
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
mov eax, dword ptr [ebp-32]
add eax, -3
push eax
push 3
push dword ptr [ebp-16]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _HREPLACE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_017F
.Lt_0180:
cmp dword ptr [ebp-32], 2
jl .Lt_0183
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
cmp ebx, 34
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
add ebx, dword ptr [ebp-32]
movzx ecx, byte ptr [ebx-1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .Lt_0289
.Lt_0183:
mov dword ptr [ebp-40], 0
.Lt_0289:
cmp dword ptr [ebp-40], 0
je .Lt_0182
push 0
push -1
push offset _Lt_016B
push offset _Lt_016D
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push -1
mov eax, dword ptr [ebp-32]
add eax, -2
push eax
push 2
push dword ptr [ebp-16]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call _HREPLACE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_017F
.Lt_0182:
push 0
push 0
push dword ptr [ebp-16]
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
.Lt_017F:
.Lt_017C:
.Lt_017B:
cmp dword ptr [ebp-16], 0
je .Lt_0187
push dword ptr [ebp-16]
call _free
add esp, 4
.Lt_0187:
.Lt_0186:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_017A:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDEFUNQUOTEW_CB:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0188:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGW
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push offset _Lt_0293
call _DWSTRASSIGN
add esp, 8
cmp dword ptr [ebp-8], 0
je .Lt_018B
push dword ptr [ebp-8]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 3
jl .Lt_018C
mov eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
cmp ebx, 36
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
movzx ecx, byte ptr [ebx+1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov ebx, dword ptr [ebp-8]
add ebx, dword ptr [ebp-12]
movzx ecx, byte ptr [ebx-1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_0291
.Lt_018C:
mov dword ptr [ebp-16], 0
.Lt_0291:
cmp dword ptr [ebp-16], 0
je .Lt_018F
push offset _Lt_016B
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push offset _Lt_016D
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-28]
mov eax, dword ptr [ebp-12]
add eax, -3
push eax
push 3
push dword ptr [ebp-8]
call _fb_WstrMid
add esp, 12
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _HREPLACEW
add esp, 12
push eax
push offset _Lt_0293
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-32]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-28]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-24]
call _fb_WstrDelete
add esp, 4
jmp .Lt_018E
.Lt_018F:
cmp dword ptr [ebp-12], 2
jl .Lt_0194
mov eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
cmp ebx, 34
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
add ebx, dword ptr [ebp-12]
movzx ecx, byte ptr [ebx-1]
cmp ecx, 34
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .Lt_0292
.Lt_0194:
mov dword ptr [ebp-20], 0
.Lt_0292:
cmp dword ptr [ebp-20], 0
je .Lt_0193
push offset _Lt_016B
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push offset _Lt_016D
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-28]
mov eax, dword ptr [ebp-12]
add eax, -2
push eax
push 2
push dword ptr [ebp-8]
call _fb_WstrMid
add esp, 12
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _HREPLACEW
add esp, 12
push eax
push offset _Lt_0293
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-32]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-28]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp-24]
call _fb_WstrDelete
add esp, 4
jmp .Lt_018E
.Lt_0193:
push dword ptr [ebp-8]
push offset _Lt_0293
call _DWSTRASSIGN
add esp, 8
.Lt_018E:
.Lt_018B:
.Lt_018A:
mov eax, dword ptr [_Lt_0293]
mov dword ptr [ebp-4], eax
.Lt_0189:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0293,12

.section .text
.balign 16
_HDEFEVAL_CB:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0199:
push 0
push dword ptr [ebp+8]
call _HMACRO_GETARGZ
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [ebp-16], 0
je .Lt_019C
call _LEXPUSHCTX
push -1
push 0
call _LEXINIT
add esp, 8
mov eax, dword ptr [_LEX+213248]
inc dword ptr [eax+4284]
push dword ptr [ebp-16]
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4304]
push ebx
call _DZSTRASSIGN
add esp, 8
mov ebx, dword ptr [_LEX+213248]
mov eax, dword ptr [_LEX+213248]
mov ecx, dword ptr [ebx+4304]
mov dword ptr [eax+4300], ecx
mov ecx, dword ptr [_LEX+213248]
push 0
push dword ptr [ebp-16]
mov ebx, ecx
call _fb_StrLen
add esp, 8
add dword ptr [ebx+4296], eax
push offset _Lt_019D
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4304]
push ebx
call _DZSTRCONCATASSIGN
add esp, 8
mov ebx, dword ptr [_LEX+213248]
mov eax, dword ptr [_LEX+213248]
mov ecx, dword ptr [ebx+4304]
mov dword ptr [eax+4300], ecx
mov ecx, dword ptr [_LEX+213248]
inc dword ptr [ecx+4296]
call _CEXPRESSION
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-36], 0
cmp dword ptr [ebp-32], 0
je .Lt_019F
push dword ptr [ebp-32]
call _ASTOPTIMIZETREE
add esp, 4
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 16
jne .Lt_01A1
push 0
push -1
push dword ptr [ebp-32]
call _ASTCONSTFLUSHTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 257
je .Lt_01A3
mov dword ptr [ebp-36], 17
.Lt_01A3:
.Lt_01A2:
jmp .Lt_01A0
.Lt_01A1:
push dword ptr [ebp-32]
call _ASTISCONSTANT
add esp, 4
test eax, eax
je .Lt_01A4
push 0
push -1
push 2
push offset _Lt_01A5
push -1
push -1
push offset _Lt_016D
push offset _Lt_016B
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+12]
push dword ptr [ecx+56]
call _HREPLACE
add esp, 12
push eax
push 2
push offset _Lt_01A5
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
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 257
je .Lt_01A9
mov dword ptr [ebp-36], 17
.Lt_01A9:
.Lt_01A8:
jmp .Lt_01A0
.Lt_01A4:
push dword ptr [ebp-32]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-36], 11
push 0
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
.Lt_01A0:
jmp .Lt_019E
.Lt_019F:
mov dword ptr [ebp-36], 17
.Lt_019E:
mov eax, dword ptr [_LEX+213248]
dec dword ptr [eax+4284]
call _LEXPOPCTX
cmp dword ptr [ebp-36], 0
je .Lt_01AB
push 0
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-36]
call _ERRREPORTEX
add esp, 20
push 0
push 0
push -1
push 257
call _HSKIPUNTIL
add esp, 16
.Lt_01AB:
.Lt_01AA:
.Lt_019C:
.Lt_019B:
cmp dword ptr [ebp-16], 0
je .Lt_01AD
push dword ptr [ebp-16]
call _free
add esp, 4
.Lt_01AD:
.Lt_01AC:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_019A:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HRESETDEFHASH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_022E:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [_SYMB+98764]
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_0231
.Lt_0234:
lea eax, [_SYMB+98688]
mov ebx, dword ptr [ebp-4]
sal ebx, 3
add eax, ebx
push dword ptr [eax+96]
lea eax, [_SYMB+98688]
mov ebx, dword ptr [ebp-4]
sal ebx, 3
add eax, ebx
push dword ptr [eax+92]
lea eax, [_SYMB+98768]
push eax
call _HASHDEL
add esp, 12
.Lt_0232:
inc dword ptr [ebp-4]
.Lt_0231:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .Lt_0234
.Lt_0233:
mov dword ptr [_SYMB+98764], 0
.Lt_022F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDELDEFINEPARAMS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_025A:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_025C:
cmp dword ptr [ebp-4], 0
je .Lt_025D
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
je .Lt_025F
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _free
add esp, 4
.Lt_025F:
.Lt_025E:
push dword ptr [ebp-4]
lea eax, [_SYMB+98688]
push eax
call _LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_025C
.Lt_025D:
.Lt_025B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDELDEFINETOKENS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0260:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.Lt_0262:
cmp dword ptr [ebp-4], 0
je .Lt_0263
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
call _SYMBDELDEFINETOK
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0262
.Lt_0263:
.Lt_0261:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0004:	.ascii	"1\0"
.balign 4
_Lt_0005:	.ascii	"08\0"
.balign 4
_Lt_0006:	.ascii	"0\0"
.balign 4
_Lt_000B:	.ascii	"1.08.0\0"
.balign 4
_Lt_000C:	.ascii	"02-18-2021\0"
.balign 4
_Lt_000D:	.ascii	"2021-02-18\0"
.balign 4
_Lt_000F:	.ascii	"FreeBASIC 1.08.0\0"
.balign 4
_Lt_001F:	.ascii	"__FB_MAINPROC__\0"
.balign 4
_Lt_0020:	.ascii	"__FB_MODLEVELPROC__\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_0079:	.ascii	"yyyy-mm-dd\0"
.balign 4
_Lt_00B5:	.ascii	"x87\0"
.balign 4
_Lt_00B8:	.ascii	"sse\0"
.balign 4
_Lt_00C0:	.ascii	"precise\0"
.balign 4
_Lt_00C3:	.ascii	"fast\0"
.balign 4
_Lt_00CD:	.ascii	"intel\0"
.balign 4
_Lt_00D0:	.ascii	"att\0"
.balign 4
_Lt_011A:	.ascii	",\0"
.balign 4
_Lt_0134:	.ascii	" \0"
.balign 4
_Lt_016B:	.ascii	"\"\0"
.balign 4
_Lt_016C:	.ascii	"$\"\0"
.balign 4
_Lt_016D:	.ascii	"\"\"\0"
.balign 4
_Lt_019D:	.ascii	"\n\0"
.balign 4
_Lt_01A5:	.ascii	"\"\0"
.balign 4
_DEFTB:
.int _Lt_01AE
.int _Lt_000B
.int 1
.long 0
.int _Lt_01AF
.int _Lt_000C
.int 1
.long 0
.int _Lt_01B0
.int _Lt_000D
.int 1
.long 0
.int _Lt_01B1
.int _Lt_0004
.int 0
.long 0
.int _Lt_01B2
.int _Lt_0005
.int 0
.long 0
.int _Lt_01B3
.int _Lt_0006
.int 0
.long 0
.int _Lt_01B4
.int _Lt_000F
.int 1
.long 0
.int _Lt_01B5
.int _Lt_0000
.int 1
.long 0
.int _Lt_01B6
.long 0
.int 0
.int _HDEFMULTITHREAD_CB
.int _Lt_01B7
.long 0
.int 1
.int _HDEFFILE_CB
.int _Lt_01B8
.long 0
.int 0
.int _HDEFFILE_CB
.int _Lt_01B9
.long 0
.int 1
.int _HDEFFUNCTION_CB
.int _Lt_01BA
.long 0
.int 0
.int _HDEFFUNCTION_CB
.int _Lt_01BB
.long 0
.int 0
.int _HDEFLINE_CB
.int _Lt_01BC
.long 0
.int 1
.int _HDEFDATE_CB
.int _Lt_01BD
.long 0
.int 1
.int _HDEFDATEISO_CB
.int _Lt_01BE
.long 0
.int 1
.int _HDEFTIME_CB
.int _Lt_01BF
.long 0
.int 1
.int _HDEFPATH_CB
.int _Lt_01C0
.long 0
.int 0
.int _HDEFOPTBYVAL_CB
.int _Lt_01C1
.long 0
.int 0
.int _HDEFOPTDYNAMIC_CB
.int _Lt_01C2
.long 0
.int 0
.int _HDEFOPTESCAPE_CB
.int _Lt_01C3
.long 0
.int 0
.int _HDEFOPTEXPLICIT_CB
.int _Lt_01C4
.long 0
.int 0
.int _HDEFOPTPRIVATE_CB
.int _Lt_01C5
.long 0
.int 0
.int _HDEFOPTGOSUB_CB
.int _Lt_01C6
.long 0
.int 0
.int _HDEFOUTEXE_CB
.int _Lt_01C7
.long 0
.int 0
.int _HDEFOUTLIB_CB
.int _Lt_01C8
.long 0
.int 0
.int _HDEFOUTDLL_CB
.int _Lt_01C9
.long 0
.int 0
.int _HDEFOUTOBJ_CB
.int _Lt_01CA
.long 0
.int 0
.int _HDEFDEBUG_CB
.int _Lt_01CB
.long 0
.int 0
.int _HDEFERR_CB
.int _Lt_01CC
.long 0
.int 1
.int _HDEFLANG_CB
.int _Lt_01CD
.long 0
.int 1
.int _HDEFBACKEND_CB
.int _Lt_01CE
.long 0
.int 1
.int _HDEFFPU_CB
.int _Lt_01CF
.long 0
.int 1
.int _HDEFFPMODE_CB
.int _Lt_01D0
.long 0
.int 0
.int _HDEFGCC_CB
.balign 4
_Lt_01AE:	.ascii	"__FB_VERSION__\0"
.balign 4
_Lt_01AF:	.ascii	"__FB_BUILD_DATE__\0"
.balign 4
_Lt_01B0:	.ascii	"__FB_BUILD_DATE_ISO__\0"
.balign 4
_Lt_01B1:	.ascii	"__FB_VER_MAJOR__\0"
.balign 4
_Lt_01B2:	.ascii	"__FB_VER_MINOR__\0"
.balign 4
_Lt_01B3:	.ascii	"__FB_VER_PATCH__\0"
.balign 4
_Lt_01B4:	.ascii	"__FB_SIGNATURE__\0"
.balign 4
_Lt_01B5:	.ascii	"__FB_BUILD_SHA1__\0"
.balign 4
_Lt_01B6:	.ascii	"__FB_MT__\0"
.balign 4
_Lt_01B7:	.ascii	"__FILE__\0"
.balign 4
_Lt_01B8:	.ascii	"__FILE_NQ__\0"
.balign 4
_Lt_01B9:	.ascii	"__FUNCTION__\0"
.balign 4
_Lt_01BA:	.ascii	"__FUNCTION_NQ__\0"
.balign 4
_Lt_01BB:	.ascii	"__LINE__\0"
.balign 4
_Lt_01BC:	.ascii	"__DATE__\0"
.balign 4
_Lt_01BD:	.ascii	"__DATE_ISO__\0"
.balign 4
_Lt_01BE:	.ascii	"__TIME__\0"
.balign 4
_Lt_01BF:	.ascii	"__PATH__\0"
.balign 4
_Lt_01C0:	.ascii	"__FB_OPTION_BYVAL__\0"
.balign 4
_Lt_01C1:	.ascii	"__FB_OPTION_DYNAMIC__\0"
.balign 4
_Lt_01C2:	.ascii	"__FB_OPTION_ESCAPE__\0"
.balign 4
_Lt_01C3:	.ascii	"__FB_OPTION_EXPLICIT__\0"
.balign 4
_Lt_01C4:	.ascii	"__FB_OPTION_PRIVATE__\0"
.balign 4
_Lt_01C5:	.ascii	"__FB_OPTION_GOSUB__\0"
.balign 4
_Lt_01C6:	.ascii	"__FB_OUT_EXE__\0"
.balign 4
_Lt_01C7:	.ascii	"__FB_OUT_LIB__\0"
.balign 4
_Lt_01C8:	.ascii	"__FB_OUT_DLL__\0"
.balign 4
_Lt_01C9:	.ascii	"__FB_OUT_OBJ__\0"
.balign 4
_Lt_01CA:	.ascii	"__FB_DEBUG__\0"
.balign 4
_Lt_01CB:	.ascii	"__FB_ERR__\0"
.balign 4
_Lt_01CC:	.ascii	"__FB_LANG__\0"
.balign 4
_Lt_01CD:	.ascii	"__FB_BACKEND__\0"
.balign 4
_Lt_01CE:	.ascii	"__FB_FPU__\0"
.balign 4
_Lt_01CF:	.ascii	"__FB_FPMODE__\0"
.balign 4
_Lt_01D0:	.ascii	"__FB_GCC__\0"
.balign 4
_MACROTB:
.int _Lt_01D2
.int 0
.int _HDEFUNIQUEIDPUSH_CB
.long 0
.int 1
.int _Lt_01D3
.skip 16,0
.int _Lt_01D4
.int 0
.int _HDEFUNIQUEID_CB
.long 0
.int 1
.int _Lt_01D3
.skip 16,0
.int _Lt_01D5
.int 0
.int _HDEFUNIQUEIDPOP_CB
.long 0
.int 1
.int _Lt_01D3
.skip 16,0
.int _Lt_01D6
.int 4
.int _HDEFARGCOUNT_CB
.long 0
.int 1
.int _Lt_01D7
.skip 16,0
.int _Lt_01D8
.int 4
.int _HDEFARGEXTRACT_CB
.long 0
.int 2
.int _Lt_01D9
.int _Lt_01D7
.skip 12,0
.int _Lt_01DA
.int 4
.int _HDEFARGLEFT_CB
.long 0
.int 3
.int _Lt_01DB
.int _Lt_01DC
.int _Lt_01DD
.skip 8,0
.int _Lt_01DE
.int 4
.int _HDEFARGRIGHT_CB
.long 0
.int 3
.int _Lt_01DB
.int _Lt_01DC
.int _Lt_01DD
.skip 8,0
.int _Lt_01DF
.int 0
.int _HDEFJOINZ_CB
.int _HDEFJOINW_CB
.int 2
.int _Lt_01E0
.int _Lt_01E1
.skip 12,0
.int _Lt_01E2
.int 0
.int _HDEFQUOTEZ_CB
.int _HDEFQUOTEW_CB
.int 1
.int _Lt_01DB
.skip 16,0
.int _Lt_01E3
.int 0
.int _HDEFUNQUOTEZ_CB
.int _HDEFUNQUOTEW_CB
.int 1
.int _Lt_01DB
.skip 16,0
.int _Lt_01E4
.int 0
.int _HDEFEVAL_CB
.long 0
.int 1
.int _Lt_01DB
.skip 16,0
.balign 4
_Lt_01D2:	.ascii	"__FB_UNIQUEID_PUSH__\0"
.balign 4
_Lt_01D3:	.ascii	"ID\0"
.balign 4
_Lt_01D4:	.ascii	"__FB_UNIQUEID__\0"
.balign 4
_Lt_01D5:	.ascii	"__FB_UNIQUEID_POP__\0"
.balign 4
_Lt_01D6:	.ascii	"__FB_ARG_COUNT__\0"
.balign 4
_Lt_01D7:	.ascii	"ARGS\0"
.balign 4
_Lt_01D8:	.ascii	"__FB_ARG_EXTRACT__\0"
.balign 4
_Lt_01D9:	.ascii	"ARGNUM\0"
.balign 4
_Lt_01DA:	.ascii	"__FB_ARG_LEFTOF__\0"
.balign 4
_Lt_01DB:	.ascii	"ARG\0"
.balign 4
_Lt_01DC:	.ascii	"SEP\0"
.balign 4
_Lt_01DD:	.ascii	"RET\0"
.balign 4
_Lt_01DE:	.ascii	"__FB_ARG_RIGHTOF__\0"
.balign 4
_Lt_01DF:	.ascii	"__FB_JOIN__\0"
.balign 4
_Lt_01E0:	.ascii	"L\0"
.balign 4
_Lt_01E1:	.ascii	"R\0"
.balign 4
_Lt_01E2:	.ascii	"__FB_QUOTE__\0"
.balign 4
_Lt_01E3:	.ascii	"__FB_UNQUOTE__\0"
.balign 4
_Lt_01E4:	.ascii	"__FB_EVAL__\0"
.balign 4
_Lt_01F2:	.ascii	"__FB_\0"
.balign 4
_Lt_01F3:	.ascii	"__\0"
.balign 4
_Lt_01F9:	.ascii	"__FB_LINUX__\0"
.balign 4
_Lt_01FC:	.ascii	"__FB_UNIX__\0"
.balign 4
_Lt_01FD:	.ascii	"__FB_PCOS__\0"
.balign 4
_Lt_0200:	.ascii	"__FB_64BIT__\0"
.balign 4
_Lt_0206:	.ascii	"__FB_ARM__\0"
.balign 4
_Lt_020A:	.ascii	"__FB_X86__\0"
.balign 4
_Lt_020B:	.ascii	"__FB_ASM__\0"
.balign 4
_Lt_020F:	.ascii	"__FB_PPC__\0"
.balign 4
_Lt_0212:	.ascii	"__FB_MAIN__\0"
.balign 4
_Lt_0215:	.ascii	"__FB_SSE__\0"
.balign 4
_Lt_0216:	.ascii	"__FB_VECTORIZE__\0"

.section .ctors
.int _fb_ctor__symbzdefine
