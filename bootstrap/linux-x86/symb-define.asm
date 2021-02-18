	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBDEFINEINIT
SYMBDEFINEINIT:
.type SYMBDEFINEINIT, @function
push ebp
mov ebp, esp
sub esp, 84
push ebx
.Lt_01DF:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 6
push 12
push 500
lea eax, [SYMB+98688]
push eax
call LISTINIT
add esp, 16
push 6
push 16
push 1000
lea eax, [SYMB+98720]
push eax
call LISTINIT
add esp, 16
sub esp, 4
push -1
push 16
lea eax, [SYMB+98752]
push eax
call HASHINIT
add esp, 16
mov dword ptr [ebp-56], 0
.Lt_01E4:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [DEFTB+eax+4]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-56]
sal eax, 4
cmp dword ptr [DEFTB+eax+4], 0
je .Lt_01E6
mov eax, dword ptr [ebp-56]
sal eax, 4
mov ebx, dword ptr [DEFTB+eax+8]
and ebx, 1
je .Lt_01E8
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_016A
push -1
sub esp, 4
push -1
lea ebx, [ebp-12]
push ebx
push 2
push offset Lt_016A
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_01E8:
.Lt_01E7:
.Lt_01E6:
.Lt_01E5:
sub esp, 8
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [DEFTB+eax+8]
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [DEFTB+eax+12]
push 0
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 12
push eax
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-56]
sal eax, 4
push dword ptr [DEFTB+eax]
call SYMBADDDEFINE
add esp, 32
.Lt_01E2:
inc dword ptr [ebp-56]
.Lt_01E1:
cmp dword ptr [ebp-56], 34
jle .Lt_01E4
.Lt_01E3:
sub esp, 8
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
sub esp, 8
push 3
push offset Lt_01EC
push -1
sub esp, 4
push -1
sub esp, 8
push 0
push dword ptr [ENV+244]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 16
push eax
push 6
push offset Lt_01EB
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call SYMBADDDEFINE
add esp, 32
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ENV+108], 11
jne .Lt_01F1
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_01F2
call SYMBADDDEFINE
add esp, 32
.Lt_01F1:
.Lt_01F0:
mov eax, dword ptr [ENV+260]
and eax, 1
je .Lt_01F4
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_01F5
call SYMBADDDEFINE
add esp, 32
jmp .Lt_01F3
.Lt_01F4:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_01F6
call SYMBADDDEFINE
add esp, 32
.Lt_01F3:
call FBIS64BIT
test eax, eax
je .Lt_01F8
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_01F9
call SYMBADDDEFINE
add esp, 32
.Lt_01F8:
.Lt_01F7:
call FBGETCPUFAMILY
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 2
je .Lt_01FD
.Lt_01FE:
cmp dword ptr [ebp-56], 3
jne .Lt_01FC
.Lt_01FD:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_01FF
call SYMBADDDEFINE
add esp, 32
jmp .Lt_01FA
.Lt_01FC:
cmp dword ptr [ebp-56], 0
je .Lt_0201
.Lt_0202:
cmp dword ptr [ebp-56], 1
jne .Lt_0200
.Lt_0201:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_0203
call SYMBADDDEFINE
add esp, 32
sub esp, 8
push 1
push offset HDEFASM_CB
push 0
push 0
push 0
push offset Lt_0204
call SYMBADDDEFINE
add esp, 32
jmp .Lt_01FA
.Lt_0200:
cmp dword ptr [ebp-56], 4
je .Lt_0206
.Lt_0207:
cmp dword ptr [ebp-56], 5
jne .Lt_0205
.Lt_0206:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_0208
call SYMBADDDEFINE
add esp, 32
.Lt_0205:
.Lt_01FA:
cmp dword ptr [ebp+8], 0
je .Lt_020A
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_020B
call SYMBADDDEFINE
add esp, 32
.Lt_020A:
.Lt_0209:
cmp dword ptr [ENV+116], 1
jl .Lt_020D
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_020E
call SYMBADDDEFINE
add esp, 32
.Lt_020D:
.Lt_020C:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ENV+124]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push 0
push 0
push 0
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 12
push eax
push dword ptr [ebp-12]
push offset Lt_020F
call SYMBADDDEFINE
add esp, 32
mov dword ptr [SYMB+98764], 0
sub esp, 4
push 0
push 32
lea eax, [SYMB+98768]
push eax
call HASHINIT
add esp, 16
mov dword ptr [ebp-56], 0
.Lt_0213:
sub esp, 8
mov eax, dword ptr [ebp-56]
imul eax, 40
push dword ptr [MACROTB+eax+20]
push 0
call SYMBADDDEFINEPARAM
add esp, 16
mov dword ptr [ebp-60], eax
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
mov dword ptr [ebp-72], 1
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [MACROTB+eax+16]
dec ebx
mov dword ptr [ebp-76], ebx
jmp .Lt_0215
.Lt_0218:
sub esp, 8
mov ebx, dword ptr [ebp-56]
imul ebx, 40
lea eax, [MACROTB+ebx]
mov ebx, dword ptr [ebp-72]
sal ebx, 2
add eax, ebx
push dword ptr [eax+20]
push dword ptr [ebp-64]
call SYMBADDDEFINEPARAM
add esp, 16
mov dword ptr [ebp-64], eax
.Lt_0216:
inc dword ptr [ebp-72]
.Lt_0215:
mov eax, dword ptr [ebp-76]
cmp dword ptr [ebp-72], eax
jle .Lt_0218
.Lt_0217:
sub esp, 12
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [MACROTB+eax+4]
or ebx, 8
push ebx
push dword ptr [ebp-60]
mov ebx, dword ptr [ebp-56]
imul ebx, 40
push dword ptr [MACROTB+ebx+16]
push 0
mov ebx, dword ptr [ebp-56]
imul ebx, 40
push dword ptr [MACROTB+ebx]
call SYMBADDDEFINEMACRO
add esp, 32
mov dword ptr [ebp-68], eax
mov eax, dword ptr [ebp-56]
imul eax, 40
mov ebx, dword ptr [ebp-68]
mov ecx, dword ptr [MACROTB+eax+8]
mov dword ptr [ebx+76], ecx
mov ecx, dword ptr [ebp-56]
imul ecx, 40
mov ebx, dword ptr [ebp-68]
mov eax, dword ptr [MACROTB+ecx+12]
mov dword ptr [ebx+80], eax
.Lt_0211:
inc dword ptr [ebp-56]
.Lt_0210:
cmp dword ptr [ebp-56], 10
jle .Lt_0213
.Lt_0212:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_01E0:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBDEFINEINIT, .-SYMBDEFINEINIT
.balign 16

.globl SYMBDEFINEEND
SYMBDEFINEEND:
.type SYMBDEFINEEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0219:
sub esp, 12
lea eax, [SYMB+98768]
push eax
call HASHEND
add esp, 16
mov dword ptr [SYMB+98764], 0
sub esp, 12
lea eax, [SYMB+98752]
push eax
call HASHEND
add esp, 16
sub esp, 12
lea eax, [SYMB+98688]
push eax
call LISTEND
add esp, 16
sub esp, 12
lea eax, [SYMB+98720]
push eax
call LISTEND
add esp, 16
.Lt_021A:
mov esp, ebp
pop ebp
ret
.size SYMBDEFINEEND, .-SYMBDEFINEEND
.balign 16

.globl SYMBADDDEFINE
SYMBADDDEFINE:
.type SYMBADDDEFINE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_021B:
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push 0
push 0
push 4
push 0
push dword ptr [ebp+8]
push 5
lea eax, [SYMB+98420]
push eax
push 0
push 0
push 32
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_021E
jmp .Lt_021C
.Lt_021E:
.Lt_021D:
sub esp, 12
mov eax, dword ptr [ebp+16]
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call fb_StrAssign
add esp, 32
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
.Lt_021C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBADDDEFINE, .-SYMBADDDEFINE
.balign 16

.globl SYMBADDDEFINEW
SYMBADDDEFINEW:
.type SYMBADDDEFINEW, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_021F:
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push 0
push 0
push 7
push 0
push dword ptr [ebp+8]
push 5
lea eax, [SYMB+98420]
push eax
push 0
push 0
push 32
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0222
jmp .Lt_0220
.Lt_0222:
.Lt_0221:
sub esp, 12
mov eax, dword ptr [ebp+16]
sal eax, 2
add eax, 4
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
sub esp, 4
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+64]
call fb_WstrAssign
add esp, 16
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
.Lt_0220:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBADDDEFINEW, .-SYMBADDDEFINEW
.balign 16

.globl SYMBADDDEFINEMACRO
SYMBADDDEFINEMACRO:
.type SYMBADDDEFINEMACRO, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0223:
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push 0
push 0
push -2147483648
push 0
push dword ptr [ebp+8]
push 5
lea eax, [SYMB+98420]
push eax
push 0
push 0
push 32
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0226
jmp .Lt_0224
.Lt_0226:
.Lt_0225:
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
.Lt_0224:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBADDDEFINEMACRO, .-SYMBADDDEFINEMACRO
.balign 16

.globl SYMBADDDEFINEPARAM
SYMBADDDEFINEPARAM:
.type SYMBADDDEFINEPARAM, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_022E:
mov dword ptr [ebp-4], 0
sub esp, 12
lea eax, [SYMB+98688]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [Lt_0238], eax
cmp dword ptr [ebp+8], 0
je .Lt_0231
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_0238]
mov dword ptr [eax+8], ebx
jmp .Lt_0230
.Lt_0231:
cmp dword ptr [SYMB+98764], 0
jle .Lt_0233
call HRESETDEFHASH
.Lt_0233:
.Lt_0232:
.Lt_0230:
sub esp, 12
sub esp, 12
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 20
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [Lt_0238]
mov dword ptr [ebx], eax
sub esp, 8
mov eax, dword ptr [Lt_0238]
push dword ptr [eax]
push dword ptr [ebp+12]
call HUCASE
add esp, 16
sub esp, 12
mov eax, dword ptr [Lt_0238]
push dword ptr [eax]
call HASHHASH
add esp, 16
mov dword ptr [Lt_0239], eax
sub esp, 4
push dword ptr [Lt_0239]
mov eax, dword ptr [Lt_0238]
push dword ptr [eax]
lea eax, [SYMB+98768]
push eax
call HASHLOOKUPEX
add esp, 16
test eax, eax
je .Lt_0235
mov eax, dword ptr [Lt_0238]
cmp dword ptr [eax], 0
je .Lt_0237
sub esp, 12
mov eax, dword ptr [Lt_0238]
push dword ptr [eax]
call free
add esp, 16
.Lt_0237:
.Lt_0236:
sub esp, 8
push dword ptr [Lt_0238]
lea eax, [SYMB+98688]
push eax
call LISTDELNODE
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_022F
.Lt_0235:
.Lt_0234:
push dword ptr [Lt_0239]
push dword ptr [Lt_0238]
mov eax, dword ptr [Lt_0238]
push dword ptr [eax]
lea eax, [SYMB+98768]
push eax
call HASHADD
add esp, 16
lea ebx, [SYMB+98688]
mov ecx, dword ptr [SYMB+98764]
sal ecx, 3
add ebx, ecx
mov dword ptr [ebx+92], eax
lea eax, [SYMB+98688]
mov ebx, dword ptr [SYMB+98764]
sal ebx, 3
add eax, ebx
mov ebx, dword ptr [Lt_0239]
mov dword ptr [eax+96], ebx
mov ebx, dword ptr [Lt_0238]
mov eax, dword ptr [SYMB+98764]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [Lt_0238]
mov dword ptr [eax+8], 0
inc dword ptr [SYMB+98764]
mov eax, dword ptr [Lt_0238]
mov dword ptr [ebp-4], eax
.Lt_022F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBADDDEFINEPARAM, .-SYMBADDDEFINEPARAM

.section .bss
.balign 4
	.lcomm	Lt_0238,4
.balign 4
	.lcomm	Lt_0239,4

.section .text
.balign 16

.globl SYMBADDDEFINETOK
SYMBADDDEFINETOK:
.type SYMBADDDEFINETOK, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_023A:
mov dword ptr [ebp-4], 0
sub esp, 12
lea eax, [SYMB+98720]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [Lt_0244], eax
cmp dword ptr [ebp+8], 0
je .Lt_023D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_0244]
mov dword ptr [eax+12], ebx
.Lt_023D:
.Lt_023C:
mov ebx, dword ptr [Lt_0244]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [Lt_0244]
mov dword ptr [eax+12], 0
mov eax, dword ptr [Lt_0244]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-8], ebx
jmp .Lt_023F
.Lt_0241:
mov ebx, dword ptr [Lt_0244]
mov dword ptr [ebx+4], 0
jmp .Lt_023E
.Lt_0242:
mov ebx, dword ptr [Lt_0244]
mov dword ptr [ebx+4], 0
jmp .Lt_023E
.Lt_023F:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967294
cmp ebx, 1
ja .Lt_023E
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.LT_0243+ebx*4-8]
.LT_0243:
.int .Lt_0241
.int .Lt_0242
.Lt_023E:
mov ebx, dword ptr [Lt_0244]
mov dword ptr [ebp-4], ebx
.Lt_023B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBADDDEFINETOK, .-SYMBADDDEFINETOK

.section .bss
.balign 4
	.lcomm	Lt_0244,4

.section .text
.balign 16

.globl SYMBDELDEFINETOK
SYMBDELDEFINETOK:
.type SYMBDELDEFINETOK, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0245:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .Lt_0248
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0247
.Lt_0248:
mov dword ptr [ebp-4], 0
.Lt_0247:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
jne .Lt_024B
.Lt_024C:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .Lt_024E
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call free
add esp, 16
.Lt_024E:
.Lt_024D:
jmp .Lt_0249
.Lt_024B:
cmp dword ptr [ebp-8], 3
jne .Lt_024F
.Lt_0250:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .Lt_0252
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call free
add esp, 16
.Lt_0252:
.Lt_0251:
.Lt_024F:
.Lt_0249:
sub esp, 8
push dword ptr [ebp+8]
lea ebx, [SYMB+98720]
push ebx
call LISTDELNODE
add esp, 16
.Lt_0246:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBDELDEFINETOK, .-SYMBDELDEFINETOK
.balign 16

.globl SYMBDELDEFINE
SYMBDELDEFINE:
.type SYMBDELDEFINE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_025D:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_0260
jmp .Lt_025E
.Lt_0260:
.Lt_025F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jne .Lt_0262
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .Lt_0264
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .Lt_0266
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call free
add esp, 16
.Lt_0266:
.Lt_0265:
jmp .Lt_0263
.Lt_0264:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .Lt_0268
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call free
add esp, 16
.Lt_0268:
.Lt_0267:
.Lt_0263:
jmp .Lt_0261
.Lt_0262:
sub esp, 12
push dword ptr [ebp+8]
call HDELDEFINETOKENS
add esp, 16
.Lt_0261:
sub esp, 12
push dword ptr [ebp+8]
call HDELDEFINEPARAMS
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_025E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBDELDEFINE, .-SYMBDELDEFINE
.balign 16
fb_ctor__symbzdefine:
.type fb_ctor__symbzdefine, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__symbzdefine, .-fb_ctor__symbzdefine
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
HDEFFILE_CB:
.type HDEFFILE_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0069:
sub esp, 12
push 0
push 261
lea eax, [ENV+280]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_006A:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFFILE_CB, .-HDEFFILE_CB
.balign 16
HDEFPATH_CB:
.type HDEFPATH_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_006B:
sub esp, 12
push 0
push -1
sub esp, 12
call FBGETINPUTFILEPARENTDIR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_006C:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFPATH_CB, .-HDEFPATH_CB
.balign 16
HDEFFUNCTION_CB:
.type HDEFFUNCTION_CB, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_006D:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+12]
and ebx, 4096
test ebx, ebx
je .Lt_0070
sub esp, 12
push 0
push 16
push offset Lt_001E
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_006F
.Lt_0070:
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+12]
and eax, 8192
test eax, eax
je .Lt_0071
sub esp, 12
push 0
push 20
push offset Lt_001F
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_006F
.Lt_0071:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [PARSER+104]
call SYMBGETFULLPROCNAME
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_006F:
.Lt_006E:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HDEFFUNCTION_CB, .-HDEFFUNCTION_CB
.balign 16
HDEFLINE_CB:
.type HDEFLINE_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0072:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16564]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0073:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFLINE_CB, .-HDEFLINE_CB
.balign 16
HDEFDATE_CB:
.type HDEFDATE_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0074:
sub esp, 12
push 0
push -1
sub esp, 12
call fb_Date
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0075:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFDATE_CB, .-HDEFDATE_CB
.balign 16
HDEFDATEISO_CB:
.type HDEFDATEISO_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0076:
sub esp, 12
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push 0
push 11
push offset Lt_0078
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 28
lea eax, [ebp-24]
push eax
sub esp, 8
call fb_Now
add esp, 8
sub esp,8
fstp qword ptr [esp]
call fb_StrFormat
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_0077:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFDATEISO_CB, .-HDEFDATEISO_CB
.balign 16
HDEFTIME_CB:
.type HDEFTIME_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_007A:
sub esp, 12
push 0
push -1
sub esp, 12
call fb_Time
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_007B:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFTIME_CB, .-HDEFTIME_CB
.balign 16
HDEFMULTITHREAD_CB:
.type HDEFMULTITHREAD_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_007C:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ENV+216]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_007D:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFMULTITHREAD_CB, .-HDEFMULTITHREAD_CB
.balign 16
HDEFOPTBYVAL_CB:
.type HDEFOPTBYVAL_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_007E:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+928]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_007F:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFOPTBYVAL_CB, .-HDEFOPTBYVAL_CB
.balign 16
HDEFOPTDYNAMIC_CB:
.type HDEFOPTDYNAMIC_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0080:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+944]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0081:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFOPTDYNAMIC_CB, .-HDEFOPTDYNAMIC_CB
.balign 16
HDEFOPTESCAPE_CB:
.type HDEFOPTESCAPE_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0082:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+940]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0083:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFOPTESCAPE_CB, .-HDEFOPTESCAPE_CB
.balign 16
HDEFOPTEXPLICIT_CB:
.type HDEFOPTEXPLICIT_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0084:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+932]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0085:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFOPTEXPLICIT_CB, .-HDEFOPTEXPLICIT_CB
.balign 16
HDEFOPTPRIVATE_CB:
.type HDEFOPTPRIVATE_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0086:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+936]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0087:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFOPTPRIVATE_CB, .-HDEFOPTPRIVATE_CB
.balign 16
HDEFOPTGOSUB_CB:
.type HDEFOPTGOSUB_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0088:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+948]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0089:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFOPTGOSUB_CB, .-HDEFOPTGOSUB_CB
.balign 16
HDEFOUTEXE_CB:
.type HDEFOUTEXE_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_008C:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+96]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_008D:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFOUTEXE_CB, .-HDEFOUTEXE_CB
.balign 16
HDEFOUTLIB_CB:
.type HDEFOUTLIB_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_008E:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+96]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_008F:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFOUTLIB_CB, .-HDEFOUTLIB_CB
.balign 16
HDEFOUTDLL_CB:
.type HDEFOUTDLL_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0090:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+96]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0091:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFOUTDLL_CB, .-HDEFOUTDLL_CB
.balign 16
HDEFOUTOBJ_CB:
.type HDEFOUTOBJ_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0092:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+96]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0093:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFOUTOBJ_CB, .-HDEFOUTOBJ_CB
.balign 16
HDEFDEBUG_CB:
.type HDEFDEBUG_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0094:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ENV+144]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0095:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFDEBUG_CB, .-HDEFDEBUG_CB
.balign 16
HDEFERR_CB:
.type HDEFERR_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0096:
mov dword ptr [ebp-16], 0
cmp dword ptr [ENV+156], 0
je .Lt_0099
mov dword ptr [ebp-16], 1
.Lt_0099:
.Lt_0098:
cmp dword ptr [ENV+160], 0
je .Lt_009B
or dword ptr [ebp-16], 2
.Lt_009B:
.Lt_009A:
cmp dword ptr [ENV+164], 0
je .Lt_009D
or dword ptr [ebp-16], 4
.Lt_009D:
.Lt_009C:
cmp dword ptr [ENV+172], 0
je .Lt_009F
or dword ptr [ebp-16], 8
.Lt_009F:
.Lt_009E:
cmp dword ptr [ENV+176], 0
je .Lt_00A1
or dword ptr [ebp-16], 16
.Lt_00A1:
.Lt_00A0:
cmp dword ptr [ENV+152], 0
je .Lt_00A3
or dword ptr [ebp-16], 32
.Lt_00A3:
.Lt_00A2:
cmp dword ptr [ENV+148], 0
je .Lt_00A5
or dword ptr [ebp-16], 64
.Lt_00A5:
.Lt_00A4:
cmp dword ptr [ENV+144], 0
je .Lt_00A7
or dword ptr [ebp-16], 128
.Lt_00A7:
.Lt_00A6:
cmp dword ptr [ENV+168], 0
je .Lt_00A9
or dword ptr [ebp-16], 256
.Lt_00A9:
.Lt_00A8:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-16]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0097:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFERR_CB, .-HDEFERR_CB
.balign 16
HDEFLANG_CB:
.type HDEFLANG_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00AA:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ENV+136]
call FBGETLANGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_00AB:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFLANG_CB, .-HDEFLANG_CB
.balign 16
HDEFBACKEND_CB:
.type HDEFBACKEND_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00AC:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ENV+104]
call FBGETBACKENDNAME
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_00AD:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFBACKEND_CB, .-HDEFBACKEND_CB
.balign 16
HDEFFPU_CB:
.type HDEFFPU_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00AE:
sub esp, 12
push 5
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00B2
.Lt_00B3:
sub esp, 12
push 0
push 4
push offset Lt_00B4
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_00AF
jmp .Lt_00B0
.Lt_00B2:
cmp dword ptr [ebp-16], 1
jne .Lt_00B5
.Lt_00B6:
sub esp, 12
push 0
push 4
push offset Lt_00B7
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_00AF
.Lt_00B5:
.Lt_00B8:
.Lt_00B0:
.Lt_00AF:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFFPU_CB, .-HDEFFPU_CB
.balign 16
HDEFFPMODE_CB:
.type HDEFFPMODE_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00B9:
sub esp, 12
push 6
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00BD
.Lt_00BE:
sub esp, 12
push 0
push 8
push offset Lt_00BF
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_00BA
jmp .Lt_00BB
.Lt_00BD:
cmp dword ptr [ebp-16], 1
jne .Lt_00C0
.Lt_00C1:
sub esp, 12
push 0
push 5
push offset Lt_00C2
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_00BA
.Lt_00C0:
.Lt_00C3:
.Lt_00BB:
.Lt_00BA:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFFPMODE_CB, .-HDEFFPMODE_CB
.balign 16
HDEFGCC_CB:
.type HDEFGCC_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00C4:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_00C5:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFGCC_CB, .-HDEFGCC_CB
.balign 16
HDEFASM_CB:
.type HDEFASM_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00C6:
mov eax, dword ptr [ENV+132]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00CA
.Lt_00CB:
sub esp, 12
push 0
push 6
push offset Lt_00CC
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_00C8
.Lt_00CA:
cmp dword ptr [ebp-16], 1
jne .Lt_00CD
.Lt_00CE:
sub esp, 12
push 0
push 4
push offset Lt_00CF
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_00CD:
.Lt_00C8:
.Lt_00C7:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFASM_CB, .-HDEFASM_CB
.balign 16
HMACRO_GETARGZ:
.type HMACRO_GETARGZ, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D0:
mov dword ptr [ebp-8], 0
cmp dword ptr [ENV+552], 0
jne .Lt_00D3
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00D5
mov dword ptr [ebp-4], 0
jmp .Lt_00D1
.Lt_00D5:
.Lt_00D4:
sub esp, 8
push dword ptr [ebp-12]
lea eax, [ebp-8]
push eax
call ZSTRASSIGN
add esp, 16
jmp .Lt_00D2
.Lt_00D3:
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00D7
mov dword ptr [ebp-4], 0
jmp .Lt_00D1
.Lt_00D7:
.Lt_00D6:
sub esp, 8
push dword ptr [ebp-12]
lea eax, [ebp-8]
push eax
call ZSTRASSIGNW
add esp, 16
.Lt_00D2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00D1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HMACRO_GETARGZ, .-HMACRO_GETARGZ
.balign 16
HMACRO_GETARGW:
.type HMACRO_GETARGW, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D8:
sub esp, 8
push 0
push offset Lt_0274
call DWSTRASSIGN
add esp, 16
cmp dword ptr [ENV+552], 0
jne .Lt_00DB
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00DD
mov dword ptr [ebp-4], 0
jmp .Lt_00D9
.Lt_00DD:
.Lt_00DC:
sub esp, 8
push dword ptr [ebp-8]
push offset Lt_0274
call DWSTRCONCATASSIGNA
add esp, 16
jmp .Lt_00DA
.Lt_00DB:
mov eax, dword ptr [ebp+12]
imul eax, 12
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00DF
mov dword ptr [ebp-4], 0
jmp .Lt_00D9
.Lt_00DF:
.Lt_00DE:
sub esp, 8
push dword ptr [ebp-8]
push offset Lt_0274
call DWSTRCONCATASSIGN
add esp, 16
.Lt_00DA:
mov eax, dword ptr [Lt_0274]
mov dword ptr [ebp-4], eax
.Lt_00D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HMACRO_GETARGW, .-HMACRO_GETARGW

.section .bss
.balign 4
	.lcomm	Lt_0274,12

.section .text
.balign 16
HDEFUNIQUEIDPUSH_CB:
.type HDEFUNIQUEIDPUSH_CB, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00E0:
cmp dword ptr [PP+212], 0
je .Lt_00E3
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_00E1
.Lt_00E3:
.Lt_00E2:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00E5
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_00E1
.Lt_00E5:
.Lt_00E4:
sub esp, 8
push dword ptr [ebp-16]
lea eax, [SYMB+98752]
push eax
call HASHLOOKUP
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00E7
sub esp, 8
push 1
push 4
call calloc
add esp, 16
mov dword ptr [ebp-20], eax
push 4294967295
push dword ptr [ebp-20]
push dword ptr [ebp-16]
lea eax, [SYMB+98752]
push eax
call HASHADD
add esp, 16
jmp .Lt_00E6
.Lt_00E7:
cmp dword ptr [ebp-16], 0
je .Lt_00E9
sub esp, 12
push dword ptr [ebp-16]
call free
add esp, 16
.Lt_00E9:
.Lt_00E8:
.Lt_00E6:
sub esp, 12
push 8
call malloc
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 12
push 1
call SYMBUNIQUEID
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 12
sub esp, 12
push 0
push dword ptr [ebp-28]
call fb_StrLen
add esp, 20
inc eax
mov ebx, eax
push ebx
call malloc
add esp, 16
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp-28]
push 0
mov eax, dword ptr [ebp-24]
push dword ptr [eax]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
mov ecx, dword ptr [eax]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-24]
mov dword ptr [ecx], ebx
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
.Lt_00E1:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HDEFUNIQUEIDPUSH_CB, .-HDEFUNIQUEIDPUSH_CB
.balign 16
HDEFUNIQUEID_CB:
.type HDEFUNIQUEID_CB, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00EA:
cmp dword ptr [PP+212], 0
je .Lt_00ED
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_00EB
.Lt_00ED:
.Lt_00EC:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00EF
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_00EB
.Lt_00EF:
.Lt_00EE:
sub esp, 8
push dword ptr [ebp-16]
lea eax, [SYMB+98752]
push eax
call HASHLOOKUP
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
je .Lt_00F1
sub esp, 12
push dword ptr [ebp-16]
call free
add esp, 16
.Lt_00F1:
.Lt_00F0:
cmp dword ptr [ebp-20], 0
je .Lt_00F3
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 0
je .Lt_00F5
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
push dword ptr [ebx]
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_00EB
.Lt_00F5:
.Lt_00F4:
.Lt_00F3:
.Lt_00F2:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
.Lt_00EB:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HDEFUNIQUEID_CB, .-HDEFUNIQUEID_CB
.balign 16
HDEFUNIQUEIDPOP_CB:
.type HDEFUNIQUEIDPOP_CB, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00F6:
cmp dword ptr [PP+212], 0
je .Lt_00F9
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_00F7
.Lt_00F9:
.Lt_00F8:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00FB
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_00F7
.Lt_00FB:
.Lt_00FA:
sub esp, 8
push dword ptr [ebp-16]
lea eax, [SYMB+98752]
push eax
call HASHLOOKUP
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
je .Lt_00FD
sub esp, 12
push dword ptr [ebp-16]
call free
add esp, 16
.Lt_00FD:
.Lt_00FC:
cmp dword ptr [ebp-20], 0
je .Lt_00FF
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 0
je .Lt_0101
sub esp, 12
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
push dword ptr [ebx]
call free
add esp, 16
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx], ecx
jmp .Lt_0100
.Lt_0101:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 17
.Lt_0100:
jmp .Lt_00FE
.Lt_00FF:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 17
.Lt_00FE:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea ecx, [ebp-12]
push ecx
call fb_StrAssign
add esp, 32
.Lt_00F7:
sub esp, 12
lea ecx, [ebp-12]
push ecx
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HDEFUNIQUEIDPOP_CB, .-HDEFUNIQUEIDPOP_CB
.balign 16
HDEFARGCOUNT_CB:
.type HDEFARGCOUNT_CB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0102:
cmp dword ptr [ebp+8], 0
je .Lt_0105
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+384]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_0103
.Lt_0105:
.Lt_0104:
sub esp, 12
push 0
push 2
push offset Lt_0006
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0103:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFARGCOUNT_CB, .-HDEFARGCOUNT_CB
.balign 16
HDEFARGEXTRACT_CB:
.type HDEFARGEXTRACT_CB, @function
push ebp
mov ebp, esp
sub esp, 196
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0106:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .Lt_0109
sub esp, 8
push 0
push dword ptr [ebp-28]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 48
mov dword ptr [ebp-36], 0
mov eax, dword ptr [ebp-32]
dec eax
mov dword ptr [ebp-48], eax
jmp .Lt_010B
.Lt_010E:
mov eax, dword ptr [ebp-28]
add eax, dword ptr [ebp-36]
movzx ebx, byte ptr [eax]
cmp ebx, 57
ja .Lt_0110
mov ebx, dword ptr [ebp-28]
add ebx, dword ptr [ebp-36]
movzx eax, byte ptr [ebx]
cmp eax, 48
setae bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-52], ebx
jmp .Lt_0275
.Lt_0110:
mov dword ptr [ebp-52], 0
.Lt_0275:
mov ebx, dword ptr [ebp-52]
not ebx
test ebx, ebx
je .Lt_0113
jmp .Lt_010D
.Lt_0113:
.Lt_0112:
mov eax, dword ptr [ebp-40]
imul eax, 10
mov dword ptr [ebp-40], eax
mov ebx, dword ptr [ebp-28]
add ebx, dword ptr [ebp-36]
movzx eax, byte ptr [ebx]
add eax, dword ptr [ebp-40]
sub eax, dword ptr [ebp-44]
mov dword ptr [ebp-40], eax
.Lt_010C:
inc dword ptr [ebp-36]
.Lt_010B:
mov eax, dword ptr [ebp-48]
cmp dword ptr [ebp-36], eax
jle .Lt_010E
.Lt_010D:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-36], eax
jne .Lt_0115
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+384]
dec ebx
mov eax, ebx
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-48]
cmp dword ptr [ebp-40], eax
jae .Lt_0117
sub esp, 8
push 1
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
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
sub esp, 4
lea eax, [ebp-172]
push eax
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
sub esp, 4
push 0
push 2
push offset Lt_0119
push -1
lea eax, [ebp-196]
push eax
call fb_StrAssign
add esp, 24
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
call fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call HSPLITSTR
add esp, 16
sub esp, 12
lea eax, [ebp-196]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
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
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-52], 0
je .Lt_011C
sub esp, 12
push dword ptr [ebp-52]
call free
add esp, 16
.Lt_011C:
.Lt_011B:
sub esp, 12
lea ebx, [ebp-172]
push ebx
call fb_ArrayStrErase
add esp, 16
.Lt_0117:
.Lt_0116:
jmp .Lt_0114
.Lt_0115:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 17
.Lt_0114:
cmp dword ptr [ebp-28], 0
je .Lt_011E
sub esp, 12
push dword ptr [ebp-28]
call free
add esp, 16
.Lt_011E:
.Lt_011D:
jmp .Lt_0108
.Lt_0109:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 1
.Lt_0108:
sub esp, 12
push 0
push -1
lea ebx, [ebp-24]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrInit
add esp, 32
sub esp, 12
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 16
jmp .Lt_0107
sub esp, 12
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 16
.Lt_0107:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HDEFARGEXTRACT_CB, .-HDEFARGEXTRACT_CB
.balign 16
HDEFARGLEFT_CB:
.type HDEFARGLEFT_CB, @function
push ebp
mov ebp, esp
sub esp, 180
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_011F:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 8
push 1
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 8
push 2
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
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
je .Lt_0122
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
sub esp, 8
lea ebx, [ebp-156]
push ebx
push dword ptr [ebp-28]
call HSTR2TOK
add esp, 16
mov dword ptr [ebp-160], eax
cmp dword ptr [ebp-160], 0
jle .Lt_0124
sub esp, 8
push dword ptr [ebp-32]
push dword ptr [ebp-32]
call HUCASE
add esp, 16
mov dword ptr [ebp-164], 0
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-168], eax
jmp .Lt_0126
.Lt_0129:
push 0
push dword ptr [ebp-32]
push -1
sub esp, 12
push 0
mov eax, dword ptr [ebp-164]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
call fb_StrUcase2
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_012B
mov dword ptr [ebp-172], 0
mov eax, dword ptr [ebp-164]
dec eax
mov dword ptr [ebp-176], eax
jmp .Lt_012D
.Lt_0130:
cmp dword ptr [ebp-172], 0
jle .Lt_0132
sub esp, 12
push 0
push 2
push offset Lt_0133
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0132:
.Lt_0131:
sub esp, 12
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
call fb_StrConcatAssign
add esp, 32
.Lt_012E:
inc dword ptr [ebp-172]
.Lt_012D:
mov ebx, dword ptr [ebp-176]
cmp dword ptr [ebp-172], ebx
jle .Lt_0130
.Lt_012F:
jmp .Lt_0128
.Lt_012B:
.Lt_012A:
.Lt_0127:
inc dword ptr [ebp-164]
.Lt_0126:
mov ebx, dword ptr [ebp-168]
cmp dword ptr [ebp-164], ebx
jle .Lt_0129
.Lt_0128:
sub esp, 8
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_0135
sub esp, 12
push 0
push 0
push dword ptr [ebp-36]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_0135:
.Lt_0134:
jmp .Lt_0123
.Lt_0124:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
.Lt_0123:
sub esp, 12
lea eax, [ebp-156]
push eax
call fb_ArrayStrErase
add esp, 16
jmp .Lt_0121
.Lt_0122:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.Lt_0121:
cmp dword ptr [ebp-36], 0
je .Lt_0137
sub esp, 12
push dword ptr [ebp-36]
call free
add esp, 16
.Lt_0137:
.Lt_0136:
cmp dword ptr [ebp-32], 0
je .Lt_0139
sub esp, 12
push dword ptr [ebp-32]
call free
add esp, 16
.Lt_0139:
.Lt_0138:
cmp dword ptr [ebp-28], 0
je .Lt_013B
sub esp, 12
push dword ptr [ebp-28]
call free
add esp, 16
.Lt_013B:
.Lt_013A:
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
jmp .Lt_0120
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_0120:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HDEFARGLEFT_CB, .-HDEFARGLEFT_CB
.balign 16
HDEFARGRIGHT_CB:
.type HDEFARGRIGHT_CB, @function
push ebp
mov ebp, esp
sub esp, 180
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_013C:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 8
push 1
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 8
push 2
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
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
je .Lt_013F
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
sub esp, 8
lea ebx, [ebp-156]
push ebx
push dword ptr [ebp-28]
call HSTR2TOK
add esp, 16
mov dword ptr [ebp-160], eax
cmp dword ptr [ebp-160], 0
jle .Lt_0141
sub esp, 8
push dword ptr [ebp-32]
push dword ptr [ebp-32]
call HUCASE
add esp, 16
mov dword ptr [ebp-164], 0
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-168], eax
jmp .Lt_0143
.Lt_0146:
push 0
push dword ptr [ebp-32]
push -1
sub esp, 12
push 0
mov eax, dword ptr [ebp-164]
imul eax, 12
add eax, dword ptr [ebp-156]
lea ebx, [eax]
push ebx
call fb_StrUcase2
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0148
mov eax, dword ptr [ebp-164]
inc eax
mov dword ptr [ebp-172], eax
mov eax, dword ptr [ebp-160]
dec eax
mov dword ptr [ebp-176], eax
jmp .Lt_014A
.Lt_014D:
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_014F
sub esp, 12
push 0
push 2
push offset Lt_0133
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_014F:
.Lt_014E:
sub esp, 12
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
call fb_StrConcatAssign
add esp, 32
.Lt_014B:
inc dword ptr [ebp-172]
.Lt_014A:
mov ebx, dword ptr [ebp-176]
cmp dword ptr [ebp-172], ebx
jle .Lt_014D
.Lt_014C:
jmp .Lt_0145
.Lt_0148:
.Lt_0147:
.Lt_0144:
inc dword ptr [ebp-164]
.Lt_0143:
mov ebx, dword ptr [ebp-168]
cmp dword ptr [ebp-164], ebx
jle .Lt_0146
.Lt_0145:
sub esp, 8
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_0151
sub esp, 12
push 0
push 0
push dword ptr [ebp-36]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_0151:
.Lt_0150:
jmp .Lt_0140
.Lt_0141:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 17
.Lt_0140:
sub esp, 12
lea eax, [ebp-156]
push eax
call fb_ArrayStrErase
add esp, 16
jmp .Lt_013E
.Lt_013F:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.Lt_013E:
cmp dword ptr [ebp-36], 0
je .Lt_0153
sub esp, 12
push dword ptr [ebp-36]
call free
add esp, 16
.Lt_0153:
.Lt_0152:
cmp dword ptr [ebp-32], 0
je .Lt_0155
sub esp, 12
push dword ptr [ebp-32]
call free
add esp, 16
.Lt_0155:
.Lt_0154:
cmp dword ptr [ebp-28], 0
je .Lt_0157
sub esp, 12
push dword ptr [ebp-28]
call free
add esp, 16
.Lt_0157:
.Lt_0156:
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_013D:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HDEFARGRIGHT_CB, .-HDEFARGRIGHT_CB
.balign 16
HDEFJOINZ_CB:
.type HDEFJOINZ_CB, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0158:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-28], eax
sub esp, 8
push 1
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
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
je .Lt_015B
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp-32]
push 0
push dword ptr [ebp-28]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_015A
.Lt_015B:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 1
.Lt_015A:
cmp dword ptr [ebp-28], 0
je .Lt_015E
sub esp, 12
push dword ptr [ebp-28]
call free
add esp, 16
.Lt_015E:
.Lt_015D:
cmp dword ptr [ebp-32], 0
je .Lt_0160
sub esp, 12
push dword ptr [ebp-32]
call free
add esp, 16
.Lt_0160:
.Lt_015F:
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_0159:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HDEFJOINZ_CB, .-HDEFJOINZ_CB
.balign 16
HDEFJOINW_CB:
.type HDEFJOINW_CB, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0161:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGW
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 1
push dword ptr [ebp+8]
call HMACRO_GETARGW
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push 0
push offset Lt_027D
call DWSTRASSIGN
add esp, 16
cmp dword ptr [ebp-8], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-12], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0164
sub esp, 8
push dword ptr [ebp-8]
push offset Lt_027D
call DWSTRCONCATASSIGN
add esp, 16
sub esp, 8
push dword ptr [ebp-12]
push offset Lt_027D
call DWSTRCONCATASSIGN
add esp, 16
jmp .Lt_0163
.Lt_0164:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 1
.Lt_0163:
mov ebx, dword ptr [Lt_027D]
mov dword ptr [ebp-4], ebx
.Lt_0162:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HDEFJOINW_CB, .-HDEFJOINW_CB

.section .bss
.balign 4
	.lcomm	Lt_027D,12

.section .text
.balign 16
HDEFQUOTEZ_CB:
.type HDEFQUOTEZ_CB, @function
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0165:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ebp-16], 0
je .Lt_0168
sub esp, 12
push 0
push 3
push offset Lt_016B
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_016C
push offset Lt_016A
push dword ptr [ebp-16]
call HREPLACE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016A
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0167
.Lt_0168:
sub esp, 12
push 0
push 3
push offset Lt_016C
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0167:
cmp dword ptr [ebp-16], 0
je .Lt_016E
sub esp, 12
push dword ptr [ebp-16]
call free
add esp, 16
.Lt_016E:
.Lt_016D:
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.Lt_0166:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HDEFQUOTEZ_CB, .-HDEFQUOTEZ_CB
.balign 16
HDEFQUOTEW_CB:
.type HDEFQUOTEW_CB, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_016F:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGW
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push offset Lt_0280
call DWSTRASSIGN
add esp, 16
cmp dword ptr [ebp-8], 0
je .Lt_0172
sub esp, 8
push offset Lt_0173
push offset Lt_0280
call DWSTRCONCATASSIGN
add esp, 16
sub esp, 8
sub esp, 12
push offset Lt_0175
push offset Lt_0174
push dword ptr [ebp-8]
call HREPLACEW
add esp, 24
push eax
push offset Lt_0280
call DWSTRCONCATASSIGN
add esp, 16
sub esp, 8
push offset Lt_0174
push offset Lt_0280
call DWSTRCONCATASSIGN
add esp, 16
jmp .Lt_0171
.Lt_0172:
sub esp, 8
push offset Lt_0175
push offset Lt_0280
call DWSTRCONCATASSIGN
add esp, 16
.Lt_0171:
mov eax, dword ptr [Lt_0280]
mov dword ptr [ebp-4], eax
.Lt_0170:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HDEFQUOTEW_CB, .-HDEFQUOTEW_CB

.section .bss
.balign 4
	.lcomm	Lt_0280,12

.section .text
.balign 16
HDEFUNQUOTEZ_CB:
.type HDEFUNQUOTEZ_CB, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0176:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ebp-16], 0
je .Lt_0179
sub esp, 8
push 0
push dword ptr [ebp-16]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 3
jl .Lt_017A
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
jmp .Lt_0281
.Lt_017A:
mov dword ptr [ebp-36], 0
.Lt_0281:
cmp dword ptr [ebp-36], 0
je .Lt_017D
sub esp, 12
push 0
push -1
push offset Lt_016A
push offset Lt_016C
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
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call HREPLACE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_017C
.Lt_017D:
cmp dword ptr [ebp-32], 2
jl .Lt_0180
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
jmp .Lt_0282
.Lt_0180:
mov dword ptr [ebp-40], 0
.Lt_0282:
cmp dword ptr [ebp-40], 0
je .Lt_017F
sub esp, 12
push 0
push -1
push offset Lt_016A
push offset Lt_016C
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
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-52]
call HREPLACE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_017C
.Lt_017F:
sub esp, 12
push 0
push 0
push dword ptr [ebp-16]
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
.Lt_017C:
.Lt_0179:
.Lt_0178:
cmp dword ptr [ebp-16], 0
je .Lt_0184
sub esp, 12
push dword ptr [ebp-16]
call free
add esp, 16
.Lt_0184:
.Lt_0183:
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.Lt_0177:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HDEFUNQUOTEZ_CB, .-HDEFUNQUOTEZ_CB
.balign 16
HDEFUNQUOTEW_CB:
.type HDEFUNQUOTEW_CB, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0185:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGW
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push offset Lt_028C
call DWSTRASSIGN
add esp, 16
cmp dword ptr [ebp-8], 0
je .Lt_0188
sub esp, 12
push dword ptr [ebp-8]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 3
jl .Lt_0189
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 36
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+4], 34
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp-12]
sal ecx, 2
mov eax, dword ptr [ebp-8]
add eax, ecx
cmp dword ptr [eax-4], 34
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .Lt_028A
.Lt_0189:
mov dword ptr [ebp-16], 0
.Lt_028A:
cmp dword ptr [ebp-16], 0
je .Lt_018C
sub esp, 8
sub esp, 12
push offset Lt_0174
push offset Lt_0175
sub esp, 8
mov ebx, dword ptr [ebp-12]
add ebx, -3
push ebx
push 3
push dword ptr [ebp-8]
call fb_WstrMid
add esp, 20
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call HREPLACEW
add esp, 24
push eax
push offset Lt_028C
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 16
jmp .Lt_018B
.Lt_018C:
cmp dword ptr [ebp-12], 2
jl .Lt_018F
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 34
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ecx, dword ptr [ebp-8]
add ecx, eax
cmp dword ptr [ecx-4], 34
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_028B
.Lt_018F:
mov dword ptr [ebp-20], 0
.Lt_028B:
cmp dword ptr [ebp-20], 0
je .Lt_018E
sub esp, 8
sub esp, 12
push offset Lt_0174
push offset Lt_0175
sub esp, 8
mov ebx, dword ptr [ebp-12]
add ebx, -2
push ebx
push 2
push dword ptr [ebp-8]
call fb_WstrMid
add esp, 20
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call HREPLACEW
add esp, 24
push eax
push offset Lt_028C
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call fb_WstrDelete
add esp, 16
jmp .Lt_018B
.Lt_018E:
sub esp, 8
push dword ptr [ebp-8]
push offset Lt_028C
call DWSTRASSIGN
add esp, 16
.Lt_018B:
.Lt_0188:
.Lt_0187:
mov eax, dword ptr [Lt_028C]
mov dword ptr [ebp-4], eax
.Lt_0186:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HDEFUNQUOTEW_CB, .-HDEFUNQUOTEW_CB

.section .bss
.balign 4
	.lcomm	Lt_028C,12

.section .text
.balign 16
HDEFEVAL_CB:
.type HDEFEVAL_CB, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0192:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HMACRO_GETARGZ
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ebp-16], 0
je .Lt_0195
call LEXPUSHCTX
sub esp, 8
push -1
push 0
call LEXINIT
add esp, 16
mov eax, dword ptr [LEX+839936]
inc dword ptr [eax+16572]
sub esp, 8
push dword ptr [ebp-16]
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16592]
push ebx
call DZSTRASSIGN
add esp, 16
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [ebx+16592]
mov dword ptr [eax+16588], ecx
mov ecx, dword ptr [LEX+839936]
sub esp, 8
push 0
push dword ptr [ebp-16]
mov ebx, ecx
call fb_StrLen
add esp, 16
add dword ptr [ebx+16584], eax
sub esp, 8
push offset Lt_0196
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16592]
push ebx
call DZSTRCONCATASSIGN
add esp, 16
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [ebx+16592]
mov dword ptr [eax+16588], ecx
mov ecx, dword ptr [LEX+839936]
inc dword ptr [ecx+16584]
call CEXPRESSION
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-36], 0
cmp dword ptr [ebp-32], 0
je .Lt_0198
sub esp, 12
push dword ptr [ebp-32]
call ASTOPTIMIZETREE
add esp, 16
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 16
jne .Lt_019A
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-32]
call ASTCONSTFLUSHTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 257
je .Lt_019C
mov dword ptr [ebp-36], 17
.Lt_019C:
.Lt_019B:
jmp .Lt_0199
.Lt_019A:
sub esp, 12
push dword ptr [ebp-32]
call ASTISCONSTANT
add esp, 16
test eax, eax
je .Lt_019D
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_019E
push -1
sub esp, 4
push -1
sub esp, 4
push offset Lt_016C
push offset Lt_016A
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+12]
push dword ptr [ecx+56]
call HREPLACE
add esp, 16
push eax
push 2
push offset Lt_019E
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
add esp, 28
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 257
je .Lt_01A2
mov dword ptr [ebp-36], 17
.Lt_01A2:
.Lt_01A1:
jmp .Lt_0199
.Lt_019D:
sub esp, 12
push dword ptr [ebp-32]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-36], 11
sub esp, 12
push 0
push 2
push offset Lt_0006
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
.Lt_0199:
jmp .Lt_0197
.Lt_0198:
mov dword ptr [ebp-36], 17
.Lt_0197:
mov eax, dword ptr [LEX+839936]
dec dword ptr [eax+16572]
call LEXPOPCTX
cmp dword ptr [ebp-36], 0
je .Lt_01A4
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-36]
call ERRREPORTEX
add esp, 32
push 0
push 0
push -1
push 257
call HSKIPUNTIL
add esp, 16
.Lt_01A4:
.Lt_01A3:
.Lt_0195:
.Lt_0194:
cmp dword ptr [ebp-16], 0
je .Lt_01A6
sub esp, 12
push dword ptr [ebp-16]
call free
add esp, 16
.Lt_01A6:
.Lt_01A5:
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.Lt_0193:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HDEFEVAL_CB, .-HDEFEVAL_CB
.balign 16
HRESETDEFHASH:
.type HRESETDEFHASH, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0227:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [SYMB+98764]
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_022A
.Lt_022D:
sub esp, 4
lea eax, [SYMB+98688]
mov ebx, dword ptr [ebp-4]
sal ebx, 3
add eax, ebx
push dword ptr [eax+96]
lea eax, [SYMB+98688]
mov ebx, dword ptr [ebp-4]
sal ebx, 3
add eax, ebx
push dword ptr [eax+92]
lea eax, [SYMB+98768]
push eax
call HASHDEL
add esp, 16
.Lt_022B:
inc dword ptr [ebp-4]
.Lt_022A:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
jle .Lt_022D
.Lt_022C:
mov dword ptr [SYMB+98764], 0
.Lt_0228:
pop ebx
mov esp, ebp
pop ebp
ret
.size HRESETDEFHASH, .-HRESETDEFHASH
.balign 16
HDELDEFINEPARAMS:
.type HDELDEFINEPARAMS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0253:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_0255:
cmp dword ptr [ebp-4], 0
je .Lt_0256
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
je .Lt_0258
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call free
add esp, 16
.Lt_0258:
.Lt_0257:
sub esp, 8
push dword ptr [ebp-4]
lea eax, [SYMB+98688]
push eax
call LISTDELNODE
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0255
.Lt_0256:
.Lt_0254:
pop ebx
mov esp, ebp
pop ebp
ret
.size HDELDEFINEPARAMS, .-HDELDEFINEPARAMS
.balign 16
HDELDEFINETOKENS:
.type HDELDEFINETOKENS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0259:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.Lt_025B:
cmp dword ptr [ebp-4], 0
je .Lt_025C
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-4]
call SYMBDELDEFINETOK
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_025B
.Lt_025C:
.Lt_025A:
pop ebx
mov esp, ebp
pop ebp
ret
.size HDELDEFINETOKENS, .-HDELDEFINETOKENS

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0004:	.ascii	"1\0"
.balign 4
Lt_0005:	.ascii	"08\0"
.balign 4
Lt_0006:	.ascii	"0\0"
.balign 4
Lt_000B:	.ascii	"1.08.0\0"
.balign 4
Lt_000C:	.ascii	"02-17-2021\0"
.balign 4
Lt_000D:	.ascii	"2021-02-17\0"
.balign 4
Lt_000F:	.ascii	"FreeBASIC 1.08.0\0"
.balign 4
Lt_001E:	.ascii	"__FB_MAINPROC__\0"
.balign 4
Lt_001F:	.ascii	"__FB_MODLEVELPROC__\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_0078:	.ascii	"yyyy-mm-dd\0"
.balign 4
Lt_00B4:	.ascii	"x87\0"
.balign 4
Lt_00B7:	.ascii	"sse\0"
.balign 4
Lt_00BF:	.ascii	"precise\0"
.balign 4
Lt_00C2:	.ascii	"fast\0"
.balign 4
Lt_00CC:	.ascii	"intel\0"
.balign 4
Lt_00CF:	.ascii	"att\0"
.balign 4
Lt_0119:	.ascii	",\0"
.balign 4
Lt_0133:	.ascii	" \0"
.balign 4
Lt_016A:	.ascii	"\"\0"
.balign 4
Lt_016B:	.ascii	"$\"\0"
.balign 4
Lt_016C:	.ascii	"\"\"\0"
.balign 4
Lt_0173:	.ascii	"\44\0\0\0\42\0\0\0\0\0\0\0"
.balign 4
Lt_0174:	.ascii	"\42\0\0\0\0\0\0\0"
.balign 4
Lt_0175:	.ascii	"\42\0\0\0\42\0\0\0\0\0\0\0"
.balign 4
Lt_0196:	.ascii	"\n\0"
.balign 4
Lt_019E:	.ascii	"\"\0"

.section .data
.balign 4
DEFTB:
.int Lt_01A7
.int Lt_000B
.int 1
.long 0
.int Lt_01A8
.int Lt_000C
.int 1
.long 0
.int Lt_01A9
.int Lt_000D
.int 1
.long 0
.int Lt_01AA
.int Lt_0004
.int 0
.long 0
.int Lt_01AB
.int Lt_0005
.int 0
.long 0
.int Lt_01AC
.int Lt_0006
.int 0
.long 0
.int Lt_01AD
.int Lt_000F
.int 1
.long 0
.int Lt_01AE
.int Lt_0000
.int 1
.long 0
.int Lt_01AF
.long 0
.int 0
.int HDEFMULTITHREAD_CB
.int Lt_01B0
.long 0
.int 1
.int HDEFFILE_CB
.int Lt_01B1
.long 0
.int 0
.int HDEFFILE_CB
.int Lt_01B2
.long 0
.int 1
.int HDEFFUNCTION_CB
.int Lt_01B3
.long 0
.int 0
.int HDEFFUNCTION_CB
.int Lt_01B4
.long 0
.int 0
.int HDEFLINE_CB
.int Lt_01B5
.long 0
.int 1
.int HDEFDATE_CB
.int Lt_01B6
.long 0
.int 1
.int HDEFDATEISO_CB
.int Lt_01B7
.long 0
.int 1
.int HDEFTIME_CB
.int Lt_01B8
.long 0
.int 1
.int HDEFPATH_CB
.int Lt_01B9
.long 0
.int 0
.int HDEFOPTBYVAL_CB
.int Lt_01BA
.long 0
.int 0
.int HDEFOPTDYNAMIC_CB
.int Lt_01BB
.long 0
.int 0
.int HDEFOPTESCAPE_CB
.int Lt_01BC
.long 0
.int 0
.int HDEFOPTEXPLICIT_CB
.int Lt_01BD
.long 0
.int 0
.int HDEFOPTPRIVATE_CB
.int Lt_01BE
.long 0
.int 0
.int HDEFOPTGOSUB_CB
.int Lt_01BF
.long 0
.int 0
.int HDEFOUTEXE_CB
.int Lt_01C0
.long 0
.int 0
.int HDEFOUTLIB_CB
.int Lt_01C1
.long 0
.int 0
.int HDEFOUTDLL_CB
.int Lt_01C2
.long 0
.int 0
.int HDEFOUTOBJ_CB
.int Lt_01C3
.long 0
.int 0
.int HDEFDEBUG_CB
.int Lt_01C4
.long 0
.int 0
.int HDEFERR_CB
.int Lt_01C5
.long 0
.int 1
.int HDEFLANG_CB
.int Lt_01C6
.long 0
.int 1
.int HDEFBACKEND_CB
.int Lt_01C7
.long 0
.int 1
.int HDEFFPU_CB
.int Lt_01C8
.long 0
.int 1
.int HDEFFPMODE_CB
.int Lt_01C9
.long 0
.int 0
.int HDEFGCC_CB

.section .rodata
.balign 4
Lt_01A7:	.ascii	"__FB_VERSION__\0"
.balign 4
Lt_01A8:	.ascii	"__FB_BUILD_DATE__\0"
.balign 4
Lt_01A9:	.ascii	"__FB_BUILD_DATE_ISO__\0"
.balign 4
Lt_01AA:	.ascii	"__FB_VER_MAJOR__\0"
.balign 4
Lt_01AB:	.ascii	"__FB_VER_MINOR__\0"
.balign 4
Lt_01AC:	.ascii	"__FB_VER_PATCH__\0"
.balign 4
Lt_01AD:	.ascii	"__FB_SIGNATURE__\0"
.balign 4
Lt_01AE:	.ascii	"__FB_BUILD_SHA1__\0"
.balign 4
Lt_01AF:	.ascii	"__FB_MT__\0"
.balign 4
Lt_01B0:	.ascii	"__FILE__\0"
.balign 4
Lt_01B1:	.ascii	"__FILE_NQ__\0"
.balign 4
Lt_01B2:	.ascii	"__FUNCTION__\0"
.balign 4
Lt_01B3:	.ascii	"__FUNCTION_NQ__\0"
.balign 4
Lt_01B4:	.ascii	"__LINE__\0"
.balign 4
Lt_01B5:	.ascii	"__DATE__\0"
.balign 4
Lt_01B6:	.ascii	"__DATE_ISO__\0"
.balign 4
Lt_01B7:	.ascii	"__TIME__\0"
.balign 4
Lt_01B8:	.ascii	"__PATH__\0"
.balign 4
Lt_01B9:	.ascii	"__FB_OPTION_BYVAL__\0"
.balign 4
Lt_01BA:	.ascii	"__FB_OPTION_DYNAMIC__\0"
.balign 4
Lt_01BB:	.ascii	"__FB_OPTION_ESCAPE__\0"
.balign 4
Lt_01BC:	.ascii	"__FB_OPTION_EXPLICIT__\0"
.balign 4
Lt_01BD:	.ascii	"__FB_OPTION_PRIVATE__\0"
.balign 4
Lt_01BE:	.ascii	"__FB_OPTION_GOSUB__\0"
.balign 4
Lt_01BF:	.ascii	"__FB_OUT_EXE__\0"
.balign 4
Lt_01C0:	.ascii	"__FB_OUT_LIB__\0"
.balign 4
Lt_01C1:	.ascii	"__FB_OUT_DLL__\0"
.balign 4
Lt_01C2:	.ascii	"__FB_OUT_OBJ__\0"
.balign 4
Lt_01C3:	.ascii	"__FB_DEBUG__\0"
.balign 4
Lt_01C4:	.ascii	"__FB_ERR__\0"
.balign 4
Lt_01C5:	.ascii	"__FB_LANG__\0"
.balign 4
Lt_01C6:	.ascii	"__FB_BACKEND__\0"
.balign 4
Lt_01C7:	.ascii	"__FB_FPU__\0"
.balign 4
Lt_01C8:	.ascii	"__FB_FPMODE__\0"
.balign 4
Lt_01C9:	.ascii	"__FB_GCC__\0"

.section .data
.balign 4
MACROTB:
.int Lt_01CB
.int 0
.int HDEFUNIQUEIDPUSH_CB
.long 0
.int 1
.int Lt_01CC
.skip 16,0
.int Lt_01CD
.int 0
.int HDEFUNIQUEID_CB
.long 0
.int 1
.int Lt_01CC
.skip 16,0
.int Lt_01CE
.int 0
.int HDEFUNIQUEIDPOP_CB
.long 0
.int 1
.int Lt_01CC
.skip 16,0
.int Lt_01CF
.int 4
.int HDEFARGCOUNT_CB
.long 0
.int 1
.int Lt_01D0
.skip 16,0
.int Lt_01D1
.int 4
.int HDEFARGEXTRACT_CB
.long 0
.int 2
.int Lt_01D2
.int Lt_01D0
.skip 12,0
.int Lt_01D3
.int 4
.int HDEFARGLEFT_CB
.long 0
.int 3
.int Lt_01D4
.int Lt_01D5
.int Lt_01D6
.skip 8,0
.int Lt_01D7
.int 4
.int HDEFARGRIGHT_CB
.long 0
.int 3
.int Lt_01D4
.int Lt_01D5
.int Lt_01D6
.skip 8,0
.int Lt_01D8
.int 0
.int HDEFJOINZ_CB
.int HDEFJOINW_CB
.int 2
.int Lt_01D9
.int Lt_01DA
.skip 12,0
.int Lt_01DB
.int 0
.int HDEFQUOTEZ_CB
.int HDEFQUOTEW_CB
.int 1
.int Lt_01D4
.skip 16,0
.int Lt_01DC
.int 0
.int HDEFUNQUOTEZ_CB
.int HDEFUNQUOTEW_CB
.int 1
.int Lt_01D4
.skip 16,0
.int Lt_01DD
.int 0
.int HDEFEVAL_CB
.long 0
.int 1
.int Lt_01D4
.skip 16,0

.section .rodata
.balign 4
Lt_01CB:	.ascii	"__FB_UNIQUEID_PUSH__\0"
.balign 4
Lt_01CC:	.ascii	"ID\0"
.balign 4
Lt_01CD:	.ascii	"__FB_UNIQUEID__\0"
.balign 4
Lt_01CE:	.ascii	"__FB_UNIQUEID_POP__\0"
.balign 4
Lt_01CF:	.ascii	"__FB_ARG_COUNT__\0"
.balign 4
Lt_01D0:	.ascii	"ARGS\0"
.balign 4
Lt_01D1:	.ascii	"__FB_ARG_EXTRACT__\0"
.balign 4
Lt_01D2:	.ascii	"ARGNUM\0"
.balign 4
Lt_01D3:	.ascii	"__FB_ARG_LEFTOF__\0"
.balign 4
Lt_01D4:	.ascii	"ARG\0"
.balign 4
Lt_01D5:	.ascii	"SEP\0"
.balign 4
Lt_01D6:	.ascii	"RET\0"
.balign 4
Lt_01D7:	.ascii	"__FB_ARG_RIGHTOF__\0"
.balign 4
Lt_01D8:	.ascii	"__FB_JOIN__\0"
.balign 4
Lt_01D9:	.ascii	"L\0"
.balign 4
Lt_01DA:	.ascii	"R\0"
.balign 4
Lt_01DB:	.ascii	"__FB_QUOTE__\0"
.balign 4
Lt_01DC:	.ascii	"__FB_UNQUOTE__\0"
.balign 4
Lt_01DD:	.ascii	"__FB_EVAL__\0"
.balign 4
Lt_01EB:	.ascii	"__FB_\0"
.balign 4
Lt_01EC:	.ascii	"__\0"
.balign 4
Lt_01F2:	.ascii	"__FB_LINUX__\0"
.balign 4
Lt_01F5:	.ascii	"__FB_UNIX__\0"
.balign 4
Lt_01F6:	.ascii	"__FB_PCOS__\0"
.balign 4
Lt_01F9:	.ascii	"__FB_64BIT__\0"
.balign 4
Lt_01FF:	.ascii	"__FB_ARM__\0"
.balign 4
Lt_0203:	.ascii	"__FB_X86__\0"
.balign 4
Lt_0204:	.ascii	"__FB_ASM__\0"
.balign 4
Lt_0208:	.ascii	"__FB_PPC__\0"
.balign 4
Lt_020B:	.ascii	"__FB_MAIN__\0"
.balign 4
Lt_020E:	.ascii	"__FB_SSE__\0"
.balign 4
Lt_020F:	.ascii	"__FB_VECTORIZE__\0"

.section .ctors, "aw", @progbits
.int fb_ctor__symbzdefine
