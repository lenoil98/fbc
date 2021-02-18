	.intel_syntax noprefix

.section .text
.balign 16
fb_ctor__irzllvm:
.type fb_ctor__irzllvm, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__irzllvm, .-fb_ctor__irzllvm
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
_ZN13IRLLVMCONTEXTC1Ev:
.type _ZN13IRLLVMCONTEXTC1Ev, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 20
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 24
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 32
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 152
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 164
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 176
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 180
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 184
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 196
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 200
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 204
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 216
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 228
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
.Lt_007C:
.Lt_007D:
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN13IRLLVMCONTEXTC1Ev, .-_ZN13IRLLVMCONTEXTC1Ev
.balign 16
_ZN13IRLLVMCONTEXTaSERKS_:
.type _ZN13IRLLVMCONTEXTaSERKS_, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_007E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 8
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 8
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
add eax, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 24
lea ebx, [ecx]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
add ebx, 24
lea ecx, [ebx]
mov dword ptr [ebp-12], ecx
mov dword ptr [ebp-4], 0
.Lt_0081:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
inc dword ptr [ebp-8]
inc dword ptr [ebp-12]
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 128
jne .Lt_0081
sub esp, 12
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 152
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 152
lea ebx, [ecx]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 164
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 164
lea ebx, [ecx]
push ebx
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [ebp+12]
add ebx, 176
mov ecx, dword ptr [ebp+8]
add ecx, 176
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 180
mov ecx, dword ptr [ebp+8]
add ecx, 180
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
sub esp, 12
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 184
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 184
lea ebx, [ecx]
push ebx
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [ebp+12]
add ebx, 196
mov ecx, dword ptr [ebp+8]
add ecx, 196
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp+12]
add eax, 200
mov ecx, dword ptr [ebp+8]
add ecx, 200
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
sub esp, 12
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 204
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 204
lea ebx, [ecx]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 216
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 216
lea ebx, [ecx]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
mov ebx, dword ptr [ebp+12]
add ebx, 228
lea ecx, [ebx]
push ecx
push -1
mov ecx, dword ptr [ebp+8]
add ecx, 228
lea ebx, [ecx]
push ebx
call fb_StrAssign
add esp, 32
.Lt_007F:
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN13IRLLVMCONTEXTaSERKS_, .-_ZN13IRLLVMCONTEXTaSERKS_
.balign 16
_ZN13IRLLVMCONTEXTD1Ev:
.type _ZN13IRLLVMCONTEXTD1Ev, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0086:
.Lt_0087:
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 228
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp+8]
add ebx, 216
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 204
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp+8]
add ebx, 184
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 164
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp+8]
add ebx, 152
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 8
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN13IRLLVMCONTEXTD1Ev, .-_ZN13IRLLVMCONTEXTD1Ev
.balign 16
_INIT:
.type _INIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0090:
call IRHLINIT
or dword ptr [IR+276], 131074
call FBIS64BIT
test eax, eax
je .Lt_0093
mov eax, dword ptr [DTYPENAME+52]
mov dword ptr [DTYPENAME+32], eax
mov eax, dword ptr [DTYPENAME+56]
mov dword ptr [DTYPENAME+36], eax
jmp .Lt_0092
.Lt_0093:
mov eax, dword ptr [DTYPENAME+44]
mov dword ptr [DTYPENAME+32], eax
mov eax, dword ptr [DTYPENAME+48]
mov dword ptr [DTYPENAME+36], eax
.Lt_0092:
.Lt_0091:
mov esp, ebp
pop ebp
ret
.size _INIT, .-_INIT
.balign 16
_END:
.type _END, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0094:
call IRHLEND
.Lt_0095:
mov esp, ebp
pop ebp
ret
.size _END, .-_END
.balign 16
HWRITELINE:
.type HWRITELINE, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_0096:
cmp dword ptr [CTX], 0
jle .Lt_0098
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .Lt_0528
.Lt_0098:
mov dword ptr [ebp-4], 0
.Lt_0528:
cmp dword ptr [ebp-4], 0
je .Lt_009B
sub esp, 12
push 0
push -1
sub esp, 8
push -1
push dword ptr [ebp+8]
push -1
push 1
push offset Lt_009C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [CTX]
call fb_StrFill2
add esp, 8
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_009B:
.Lt_009A:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_009E
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [CTX+200]
mov dword ptr [ebp-20], eax
jmp .Lt_00A1
.Lt_00A3:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
push dword ptr [ebp+8]
push -1
lea eax, [CTX+204]
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
lea eax, [CTX+204]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_00A0
.Lt_00A5:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
push dword ptr [ebp+8]
push -1
lea eax, [CTX+216]
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
lea eax, [CTX+216]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_00A0
.Lt_00A7:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
push dword ptr [ebp+8]
push -1
lea eax, [CTX+228]
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
lea eax, [CTX+228]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_00A0
.Lt_00A1:
cmp dword ptr [ebp-20], 2
ja .Lt_00A0
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_00A9+eax*4]
.LT_00A9:
.int .Lt_00A3
.int .Lt_00A5
.int .Lt_00A7
.Lt_00A0:
.Lt_0097:
mov esp, ebp
pop ebp
ret
.size HWRITELINE, .-HWRITELINE
.balign 16
HINTERNALCOMMAND:
.type HINTERNALCOMMAND, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_00AA:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
push dword ptr [ebp+8]
push 3
push offset Lt_00AC
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
add esp, 20
lea eax, [ebp-24]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_00AB:
mov esp, ebp
pop ebp
ret
.size HINTERNALCOMMAND, .-HINTERNALCOMMAND
.balign 16
HASTCOMMAND:
.type HASTCOMMAND, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_00AF:
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call HINTERNALCOMMAND
add esp, 16
.Lt_00B0:
mov esp, ebp
pop ebp
ret
.size HASTCOMMAND, .-HASTCOMMAND
.balign 16
HWRITELABEL:
.type HWRITELABEL, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_00B2:
dec dword ptr [CTX]
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_00B4
push 0
push dword ptr [ebp+8]
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
add esp, 20
lea eax, [ebp-24]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
inc dword ptr [CTX]
.Lt_00B3:
mov esp, ebp
pop ebp
ret
.size HWRITELABEL, .-HWRITELABEL
.balign 16
HSYMNAME:
.type HSYMNAME, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00B7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_00BA
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_00B9
.Lt_00BA:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_00B9:
.Lt_00B8:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HSYMNAME, .-HSYMNAME
.balign 16
VREGPRETTY:
.type VREGPRETTY, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00BB:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 0
jne .Lt_00BF
.Lt_00C0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_00C1
mov dword ptr [ebp-32], 24
jmp .Lt_052A
.Lt_00C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_052A:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 1
jne .Lt_00C4
sub esp, 12
push 0
push -1
sub esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
call fb_DoubleToStr
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_00C3
.Lt_00C4:
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_00C3:
jmp .Lt_00BD
.Lt_00BF:
cmp dword ptr [ebp-28], 4
jne .Lt_00C5
.Lt_00C6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .Lt_00C8
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call HSYMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_00C7
.Lt_00C8:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call fb_IntToStr
add esp, 16
push eax
push 3
push offset Lt_00C9
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_00C7:
jmp .Lt_00BD
.Lt_00C5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .Lt_00CD
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call HSYMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_00CD:
.Lt_00CC:
.Lt_00CB:
.Lt_00BD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
je .Lt_00CF
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_00D1
sub esp, 12
push 0
push 2
push offset Lt_00D2
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_00D1:
.Lt_00D0:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
call VREGPRETTY
add esp, 16
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_00CF:
.Lt_00CE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .Lt_052B
cmp dword ptr [eax+36], 0
je .Lt_00D5
.Lt_052B:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call fb_LongintToStr
add esp, 16
push eax
push 2
push offset Lt_00D2
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_00D5:
.Lt_00D4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
je .Lt_00D9
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
call fb_IntToStr
add esp, 16
push eax
push 2
push offset Lt_00DA
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_00D9:
.Lt_00D8:
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
.Lt_00BC:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size VREGPRETTY, .-VREGPRETTY
.balign 16
HEMITPARAMNAME:
.type HEMITPARAMNAME, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00DD:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00DF
push 0
sub esp, 4
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 8
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_00DE:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HEMITPARAMNAME, .-HEMITPARAMNAME
.balign 16
HEMITPROCCALLCONV:
.type HEMITPROCCALLCONV, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00E1:
call FBGETCPUFAMILY
test eax, eax
je .Lt_00E4
jmp .Lt_00E2
.Lt_00E4:
.Lt_00E3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-16], ebx
jmp .Lt_00E6
.Lt_00E8:
sub esp, 12
push 0
push 15
push offset Lt_00E9
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_00E5
.Lt_00E6:
mov ebx, dword ptr [ebp-16]
add ebx, 4294967295
cmp ebx, 3
ja .Lt_00E5
mov ebx, dword ptr [ebp-16]
jmp dword ptr [.LT_00EA+ebx*4-4]
.LT_00EA:
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00E5
.int .Lt_00E8
.Lt_00E5:
.Lt_00E2:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITPROCCALLCONV, .-HEMITPROCCALLCONV
.balign 16
HEMITPROCHEADER:
.type HEMITPROCHEADER, @function
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00EB:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call HEMITPROCCALLCONV
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
and ebx, 511
push ebx
call HEMITTYPE
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
push 2
push offset Lt_00EE
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp+16], 0
jne .Lt_00F0
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_00F0:
.Lt_00EF:
sub esp, 12
push 0
push 3
push offset Lt_00F2
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-48], 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBPROCRETURNSONSTACK
add esp, 16
test eax, eax
je .Lt_00F4
cmp dword ptr [ebp+12], 0
je .Lt_00F6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-48], ebx
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push dword ptr [ebp-48]
mov ebx, dword ptr [ebp-48]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 31
mov ebx, dword ptr [ebp-48]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp-48]
mov ebx, dword ptr [ecx+28]
and ebx, 511
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-48]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 32505856
or eax, ecx
push eax
call HEMITTYPE
add esp, 16
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_00F5
.Lt_00F6:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-48], eax
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp-48]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-48]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 31
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
add ebx, 32
or ecx, ebx
mov ebx, dword ptr [ebp-48]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ecx, eax
mov eax, dword ptr [ebp-48]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 32505856
or ecx, ebx
push ecx
call HEMITTYPE
add esp, 16
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
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
push 2
push offset Lt_00EE
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-48]
call HEMITPARAMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_00F5:
mov eax, dword ptr [ebp+8]
movsx ecx, word ptr [eax+68]
test ecx, ecx
jle .Lt_00FA
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 32
.Lt_00FA:
.Lt_00F9:
.Lt_00F4:
.Lt_00F3:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 4
jne .Lt_00FC
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-52], eax
jmp .Lt_052C
.Lt_00FC:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebp-52], ecx
.Lt_052C:
mov ecx, dword ptr [ebp-52]
mov dword ptr [ebp-56], ecx
.Lt_00FE:
cmp dword ptr [ebp-56], 0
je .Lt_00FF
mov ecx, dword ptr [ebp-56]
cmp dword ptr [ecx+56], 4
jne .Lt_0101
sub esp, 12
push 0
push 4
push offset Lt_0102
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0100
.Lt_0101:
sub esp, 4
lea ecx, [ebp-32]
push ecx
lea ecx, [ebp-28]
push ecx
push dword ptr [ebp-56]
call _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-32]
push dword ptr [ebp-28]
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp+12], 0
jne .Lt_0104
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 12
mov eax, dword ptr [ebp-56]
push dword ptr [eax+60]
call HEMITPARAMNAME
add esp, 16
push eax
push 2
push offset Lt_00EE
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_0104:
.Lt_0103:
.Lt_0100:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 4
jne .Lt_0107
mov eax, dword ptr [ebp-56]
mov ecx, dword ptr [eax+168]
mov dword ptr [ebp-60], ecx
jmp .Lt_052D
.Lt_0107:
mov ecx, dword ptr [ebp-56]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-60], eax
.Lt_052D:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
je .Lt_010A
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_010A:
.Lt_0109:
jmp .Lt_00FE
.Lt_00FF:
sub esp, 12
push 0
push 3
push offset Lt_010B
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp+16], 0
jne .Lt_010D
sub esp, 12
push 0
push 10
push offset Lt_010E
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
and ecx, 128
je .Lt_0110
sub esp, 12
push 0
push 7
push offset Lt_0111
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 32
.Lt_0110:
.Lt_010F:
.Lt_010D:
.Lt_010C:
sub esp, 12
push 0
push -1
lea ecx, [ebp-24]
push ecx
push -1
lea ecx, [ebp-12]
push ecx
call fb_StrAssign
add esp, 32
sub esp, 12
lea ecx, [ebp-24]
push ecx
call fb_StrDelete
add esp, 16
.Lt_00EC:
sub esp, 12
lea ecx, [ebp-12]
push ecx
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITPROCHEADER, .-HEMITPROCHEADER
.balign 16
HGETUDTNAME:
.type HGETUDTNAME, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0112:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
sub esp, 12
push 0
push 2
push offset Lt_0114
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 32
.Lt_0115:
lea eax, [SYMB+98352]
cmp dword ptr [ebp-16], eax
je .Lt_0116
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+16]
push -1
lea eax, [ebp-28]
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
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0007
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
jmp .Lt_0115
.Lt_0116:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_0119
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-28]
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
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0118
.Lt_0119:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-28]
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
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
.Lt_0118:
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
.Lt_0113:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETUDTNAME, .-HGETUDTNAME
.balign 16
HEMITUDT:
.type HEMITUDT, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_011C:
cmp dword ptr [ebp+8], 0
jne .Lt_011F
jmp .Lt_011D
.Lt_011F:
.Lt_011E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
je .Lt_0121
jmp .Lt_011D
.Lt_0121:
.Lt_0120:
mov ebx, dword ptr [CTX+200]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
jne .Lt_0123
mov dword ptr [CTX+200], 0
.Lt_0123:
.Lt_0122:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_0125
.Lt_0127:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 67108864
sub esp, 12
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push 0
push 10
call HEMITTYPE
add esp, 16
push eax
push -1
sub esp, 4
push 9
push offset Lt_0128
push -1
sub esp, 4
push dword ptr [ebp+8]
call HGETUDTNAME
add esp, 8
push eax
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
add esp, 20
lea eax, [ebp-44]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0124
.Lt_012C:
sub esp, 12
push dword ptr [ebp+8]
call HEMITSTRUCT
add esp, 16
jmp .Lt_0124
.Lt_0125:
mov eax, dword ptr [ebp-8]
add eax, 4294967287
cmp eax, 1
ja .Lt_0124
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_012D+eax*4-36]
.LT_012D:
.int .Lt_0127
.int .Lt_012C
.Lt_0124:
mov eax, dword ptr [ebp-4]
mov dword ptr [CTX+200], eax
.Lt_011D:
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITUDT, .-HEMITUDT
.balign 16
HBUILDSTRLIT:
.type HBUILDSTRLIT, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_012E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jle .Lt_0131
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
.Lt_0131:
.Lt_0130:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-12], eax
jmp .Lt_0133
.Lt_0136:
mov eax, dword ptr [ebp+16]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-4], ebx
sub esp, 8
push 34
push dword ptr [ebp-4]
call HCHARNEEDSESCAPING
add esp, 16
test eax, eax
je .Lt_0139
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 8
push 2
push dword ptr [ebp-4]
call fb_HEXEx_i
add esp, 16
push eax
push 2
push offset Lt_013A
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
jmp .Lt_0138
.Lt_0139:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push dword ptr [ebp-4]
push 1
call fb_CHR
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0138:
.Lt_0134:
inc dword ptr [ebp-8]
.Lt_0133:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .Lt_0136
.Lt_0135:
.Lt_013E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jge .Lt_013F
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_0140
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
inc dword ptr [ebp+20]
jmp .Lt_013E
.Lt_013F:
.Lt_012F:
pop ebx
mov esp, ebp
pop ebp
ret
.size HBUILDSTRLIT, .-HBUILDSTRLIT
.balign 16
HBUILDWSTRLIT:
.type HBUILDWSTRLIT, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_0142:
mov eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jle .Lt_0145
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
.Lt_0145:
.Lt_0144:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-16], eax
jmp .Lt_0147
.Lt_014A:
mov eax, dword ptr [ebp-12]
sal eax, 2
mov ebx, dword ptr [ebp+16]
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
sub esp, 8
push 34
push dword ptr [ebp-4]
call HCHARNEEDSESCAPING
add esp, 16
test eax, eax
je .Lt_014C
cmp dword ptr [ebp-8], 1
jb .Lt_014E
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 8
push 2
mov eax, dword ptr [ebp-4]
and eax, 255
push eax
call fb_HEXEx_i
add esp, 16
push eax
push 2
push offset Lt_013A
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_014E:
.Lt_014D:
cmp dword ptr [ebp-8], 2
jb .Lt_0152
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 8
push 2
mov eax, dword ptr [ebp-4]
shr eax, 8
and eax, 255
push eax
call fb_HEXEx_i
add esp, 16
push eax
push 2
push offset Lt_013A
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0152:
.Lt_0151:
cmp dword ptr [ebp-8], 4
jb .Lt_0156
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 8
push 2
mov eax, dword ptr [ebp-4]
shr eax, 16
and eax, 255
push eax
call fb_HEXEx_i
add esp, 16
push eax
push 2
push offset Lt_013A
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 8
push 2
mov eax, dword ptr [ebp-4]
shr eax, 24
and eax, 255
push eax
call fb_HEXEx_i
add esp, 16
push eax
push 2
push offset Lt_013A
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0156:
.Lt_0155:
jmp .Lt_014B
.Lt_014C:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push dword ptr [ebp-4]
push 1
call fb_CHR
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
mov dword ptr [ebp-32], 2
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-36], eax
jmp .Lt_015D
.Lt_0160:
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_0140
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_015E:
inc dword ptr [ebp-32]
.Lt_015D:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-32], eax
jle .Lt_0160
.Lt_015F:
.Lt_014B:
.Lt_0148:
inc dword ptr [ebp-12]
.Lt_0147:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .Lt_014A
.Lt_0149:
.Lt_0162:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jge .Lt_0163
mov dword ptr [ebp-12], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-16], eax
jmp .Lt_0165
.Lt_0168:
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_0140
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0166:
inc dword ptr [ebp-12]
.Lt_0165:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .Lt_0168
.Lt_0167:
inc dword ptr [ebp+20]
jmp .Lt_0162
.Lt_0163:
.Lt_0143:
pop ebx
mov esp, ebp
pop ebp
ret
.size HBUILDWSTRLIT, .-HBUILDWSTRLIT
.balign 16
HEMITSTRLITTYPE:
.type HEMITSTRLITTYPE, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_016A:
sub esp, 12
push 0
push 2
push offset Lt_016C
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 7
push offset Lt_016D
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_016B:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HEMITSTRLITTYPE, .-HEMITSTRLITTYPE
.balign 16
HEMITSYMTYPE:
.type HEMITSYMTYPE, @function
push ebp
mov ebp, esp
sub esp, 96
push ebx
push esi
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_016E:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
je .Lt_0171
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-28]
and eax, 31
mov ebx, dword ptr [ebp-28]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-28]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-28]
and ebx, 32505856
or eax, ebx
push eax
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0170
.Lt_0171:
cmp dword ptr [ebp-28], 18
je .Lt_0174
.Lt_0175:
cmp dword ptr [ebp-28], 4
je .Lt_0174
.Lt_0176:
cmp dword ptr [ebp-28], 7
jne .Lt_0173
.Lt_0174:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
push ebx
call HEMITSTRLITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0172
.Lt_0173:
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-28]
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_0177:
.Lt_0172:
.Lt_0170:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .Lt_0179
jmp .Lt_0178
.Lt_0179:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
je .Lt_017D
.Lt_017E:
cmp dword ptr [ebp-32], 12
jne .Lt_017C
.Lt_017D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-36], ebx
jmp .Lt_017F
.Lt_0182:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-36]
sal eax, 4
mov ecx, dword ptr [ebx+64]
add ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-36]
sal ebx, 4
mov esi, dword ptr [eax+64]
add esi, ebx
mov eax, dword ptr [ecx+8]
mov ebx, dword ptr [ecx+12]
sub eax, dword ptr [esi]
sbb ebx, dword ptr [esi+4]
add eax, 1
adc ebx, 0
mov dword ptr [ebp-44], eax
mov dword ptr [ebp-40], ebx
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0184
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push 4
push offset Lt_0183
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
sub esp, 4
push -1
sub esp, 8
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call fb_LongintToStr
add esp, 16
push eax
push 2
push offset Lt_016C
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_0180:
dec dword ptr [ebp-36]
.Lt_017F:
cmp dword ptr [ebp-36], 0
jge .Lt_0182
.Lt_0181:
.Lt_017C:
.Lt_017A:
.Lt_0178:
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
.Lt_016F:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITSYMTYPE, .-HEMITSYMTYPE
.balign 16
HEMITVARIABLE:
.type HEMITVARIABLE, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0189:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .Lt_018C
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .Lt_018E
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_018A
.Lt_018E:
.Lt_018D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 4
je .Lt_0192
.Lt_0193:
cmp dword ptr [ebp-24], 7
jne .Lt_0191
.Lt_0192:
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_0194
push 0
sub esp, 4
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 8
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 18
push offset Lt_0196
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call HEMITSYMTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0197
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
jne .Lt_0199
mov eax, dword ptr [SYMB_DTYPETB+200]
mov ebx, eax
sar ebx, 31
push ebx
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call __divdi3
add esp, 16
mov ebx, eax
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call HUNESCAPEW
add esp, 12
push eax
push dword ptr [ebp-20]
lea eax, [ebp-12]
push eax
call HBUILDWSTRLIT
add esp, 16
jmp .Lt_0198
.Lt_0199:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call HUNESCAPE
add esp, 12
push eax
push dword ptr [ebp-20]
lea eax, [ebp-12]
push eax
call HBUILDSTRLIT
add esp, 16
.Lt_0198:
sub esp, 12
push 0
push 2
push offset Lt_0137
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
.Lt_0191:
.Lt_019A:
.Lt_018F:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_018A
.Lt_018C:
.Lt_018B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+4]
and edx, 128
test edx, edx
sete dl
shr edx, 1
sbb edx, edx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 2
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or edx, ecx
and ebx, edx
je .Lt_019C
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+4]
and ebx, 128
test ebx, ebx
jne .Lt_019E
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx+12]
and edx, 2
test edx, edx
jne .Lt_01A0
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+4]
and ebx, 32
test ebx, ebx
jne .Lt_01A2
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 16
jmp .Lt_018A
.Lt_01A2:
.Lt_01A1:
.Lt_01A0:
.Lt_019F:
.Lt_019E:
.Lt_019D:
sub esp, 12
push dword ptr [ebp+8]
call IRHLFLUSHSTATICINITIALIZER
add esp, 16
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 16
jmp .Lt_018A
.Lt_019C:
.Lt_019B:
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx+4]
and edx, 16388
test edx, edx
je .Lt_01A4
sub esp, 12
lea edx, [ebp-12]
push edx
call fb_StrDelete
add esp, 16
jmp .Lt_018A
.Lt_01A4:
.Lt_01A3:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+4]
and ebx, 59
mov dword ptr [ebp-16], ebx
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0194
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp-16], 0
je .Lt_01A6
sub esp, 12
push 0
push 7
push offset Lt_01A7
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01A5
.Lt_01A6:
sub esp, 12
push 0
push 7
push offset Lt_01A8
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01A5:
sub esp, 12
push 0
push 2
push offset Lt_00EE
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call HEMITSYMTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp-16], 0
je .Lt_01AA
sub esp, 12
push 0
push 17
push offset Lt_01AB
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01AA:
.Lt_01A9:
sub esp, 12
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_018A:
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITVARIABLE, .-HEMITVARIABLE
.balign 16
HMAYBEEMITGLOBALVAR:
.type HMAYBEEMITGLOBALVAR, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_01AC:
sub esp, 12
push dword ptr [ebp+8]
call SYMBISDATADESC
add esp, 16
test eax, eax
jne .Lt_01AF
sub esp, 12
push dword ptr [ebp+8]
call HEMITVARIABLE
add esp, 16
.Lt_01AF:
.Lt_01AE:
.Lt_01AD:
mov esp, ebp
pop ebp
ret
.size HMAYBEEMITGLOBALVAR, .-HMAYBEEMITGLOBALVAR
.balign 16
HMAYBEEMITPROCPROTO:
.type HMAYBEEMITPROCPROTO, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_01B0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_01B3
jmp .Lt_01B1
.Lt_01B3:
.Lt_01B2:
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
test eax, eax
jne .Lt_01B5
jmp .Lt_01B1
.Lt_01B5:
.Lt_01B4:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 128
test ecx, ecx
je .Lt_01B7
jmp .Lt_01B1
.Lt_01B7:
.Lt_01B6:
mov ecx, dword ptr [CTX+200]
mov dword ptr [ebp-4], ecx
mov dword ptr [CTX+200], 0
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 4
push 0
push -1
push dword ptr [ebp+8]
call HEMITPROCHEADER
add esp, 16
push eax
push 9
push offset Lt_01B8
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
mov eax, dword ptr [ebp-4]
mov dword ptr [CTX+200], eax
.Lt_01B1:
pop ebx
mov esp, ebp
pop ebp
ret
.size HMAYBEEMITPROCPROTO, .-HMAYBEEMITPROCPROTO
.balign 16
HEMITSTRUCT:
.type HEMITSTRUCT, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_01BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 134217728
test ebx, ebx
je .Lt_01BE
jmp .Lt_01BC
.Lt_01BE:
.Lt_01BD:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 134217728
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_01BF:
cmp dword ptr [ebp-4], 0
je .Lt_01C0
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
call HEMITUDT
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01BF
.Lt_01C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
je .Lt_01C2
jmp .Lt_01BC
.Lt_01C2:
.Lt_01C1:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 67108864
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 0
je .Lt_01C4
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call HGETUDTNAME
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01C3
.Lt_01C4:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 0
sub esp, 12
push 0
call SYMBUNIQUEID
add esp, 16
push eax
push 2
push offset Lt_0114
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
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
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
.Lt_01C3:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+121]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
sub esp, 12
push 0
push 9
push offset Lt_0128
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp-20], 0
je .Lt_01C8
sub esp, 12
push 0
push 2
push offset Lt_01C9
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_01C8:
sub esp, 12
push 0
push 3
push offset Lt_01CA
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_01CB:
cmp dword ptr [ebp-4], 0
je .Lt_01CC
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .Lt_01CE
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-4]
call HEMITSYMTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01CE:
.Lt_01CD:
sub esp, 12
push dword ptr [ebp-4]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_01D0
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01D0:
.Lt_01CF:
jmp .Lt_01CB
.Lt_01CC:
sub esp, 12
push 0
push 3
push offset Lt_01D1
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp-20], 0
je .Lt_01D3
sub esp, 12
push 0
push 2
push offset Lt_01D4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01D3:
sub esp, 12
lea eax, [ebp-16]
push eax
call HWRITELINE
add esp, 16
mov eax, dword ptr [ebp+8]
and dword ptr [eax+12], -134217729
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_01BC:
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITSTRUCT, .-HEMITSTRUCT
.balign 16
HEMITCTORDTORARRAYELEMENT:
.type HEMITCTORDTORARRAYELEMENT, @function
push ebp
mov ebp, esp
sub esp, 84
push ebx
.Lt_01D5:
sub esp, 8
push -1
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_01D8
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_00FB
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.Lt_01D8:
.Lt_01D7:
sub esp, 12
push 0
push -1
sub esp, 8
push 25
push offset Lt_01DA
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+56]
call fb_IntToStr
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 12
push offset Lt_01DD
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_01D1
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.Lt_01D6:
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITCTORDTORARRAYELEMENT, .-HEMITCTORDTORARRAYELEMENT
.balign 16
HADDGLOBALCTORDTOR:
.type HADDGLOBALCTORDTOR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01E1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .Lt_01E4
jmp .Lt_01E2
.Lt_01E4:
.Lt_01E3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 65536
test eax, eax
je .Lt_01E6
inc dword ptr [CTX+176]
sub esp, 8
lea eax, [CTX+152]
push eax
push dword ptr [ebp+8]
call HEMITCTORDTORARRAYELEMENT
add esp, 16
jmp .Lt_01E5
.Lt_01E6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 131072
test ebx, ebx
je .Lt_01E7
inc dword ptr [CTX+180]
sub esp, 8
lea ebx, [CTX+164]
push ebx
push dword ptr [ebp+8]
call HEMITCTORDTORARRAYELEMENT
add esp, 16
.Lt_01E7:
.Lt_01E5:
.Lt_01E2:
pop ebx
mov esp, ebp
pop ebp
ret
.size HADDGLOBALCTORDTOR, .-HADDGLOBALCTORDTOR
.balign 16
_EMITBEGIN:
.type _EMITBEGIN, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_01E8:
sub esp, 12
lea eax, [ENV+560]
push eax
call HFILEEXISTS
add esp, 16
test eax, eax
je .Lt_01EB
sub esp, 12
lea eax, [ENV+560]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 16
.Lt_01EB:
.Lt_01EA:
call fb_FileFree
mov dword ptr [ENV+556], eax
sub esp, 8
push 0
push dword ptr [ENV+556]
push 0
push 3
push 0
lea eax, [ENV+560]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileOpen
add esp, 32
test eax, eax
je .Lt_01ED
mov dword ptr [ebp-4], 0
jmp .Lt_01E9
.Lt_01ED:
.Lt_01EC:
mov dword ptr [CTX], 0
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+152]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+164]
push eax
call fb_StrAssign
add esp, 32
mov dword ptr [CTX+176], 0
mov dword ptr [CTX+180], 0
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+204]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+216]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+228]
push eax
call fb_StrAssign
add esp, 32
mov dword ptr [CTX+4], 0
mov dword ptr [CTX+200], 0
mov dword ptr [ebp-8], 0
.Lt_01F1:
mov eax, dword ptr [ebp-8]
mov dword ptr [BUILTINS+eax*8+4], 0
.Lt_01EF:
inc dword ptr [ebp-8]
.Lt_01EE:
cmp dword ptr [ebp-8], 17
jle .Lt_01F1
.Lt_01F0:
cmp dword ptr [ENV+148], 0
je .Lt_01F3
push 0
push 0
push 0
push 113
call _EMITDBG
add esp, 16
.Lt_01F3:
.Lt_01F2:
call FBIS64BIT
test eax, eax
je .Lt_01F5
sub esp, 12
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 35
push offset Lt_01F6
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_01F4
.Lt_01F5:
sub esp, 12
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 35
push offset Lt_01F8
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_01F4:
mov dword ptr [CTX+200], 1
mov dword ptr [ebp-4], -1
.Lt_01E9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size _EMITBEGIN, .-_EMITBEGIN
.balign 16
_EMITEND:
.type _EMITEND, @function
push ebp
mov ebp, esp
sub esp, 88
.Lt_01FA:
mov dword ptr [CTX+200], 0
mov dword ptr [ebp-28], 0
.Lt_01FF:
mov eax, dword ptr [ebp-28]
cmp dword ptr [BUILTINS+eax*8+4], 0
je .Lt_0201
sub esp, 12
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 0
mov eax, dword ptr [ebp-28]
push dword ptr [BUILTINS+eax*8]
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
.Lt_0201:
.Lt_0200:
.Lt_01FD:
inc dword ptr [ebp-28]
.Lt_01FC:
cmp dword ptr [ebp-28], 17
jle .Lt_01FF
.Lt_01FE:
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push offset HMAYBEEMITPROCPROTO
push 3
call SYMBFOREACHGLOBAL
add esp, 16
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push offset HMAYBEEMITGLOBALVAR
push 1
call SYMBFOREACHGLOBAL
add esp, 16
sub esp, 12
push offset HEMITVARIABLE
call IRFOREACHDATASTMT
add esp, 16
sub esp, 8
push offset HADDGLOBALCTORDTOR
push 3
call SYMBFOREACHGLOBAL
add esp, 16
cmp dword ptr [CTX+176], 0
jle .Lt_0206
sub esp, 12
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0184
push -1
sub esp, 4
push -1
lea eax, [CTX+152]
push eax
push 24
push offset Lt_0208
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
add esp, 32
push eax
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [CTX+176]
call fb_IntToStr
add esp, 16
push eax
push 40
push offset Lt_0207
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
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
add esp, 28
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 16
.Lt_0206:
.Lt_0205:
cmp dword ptr [CTX+180], 0
jle .Lt_020F
sub esp, 12
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0184
push -1
sub esp, 4
push -1
lea eax, [CTX+164]
push eax
push 24
push offset Lt_0208
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
add esp, 32
push eax
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [CTX+180]
call fb_IntToStr
add esp, 16
push eax
push 40
push offset Lt_0210
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
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
add esp, 28
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 16
.Lt_020F:
.Lt_020E:
mov dword ptr [CTX+200], 2
push -1
lea eax, [CTX+204]
push eax
push 0
push dword ptr [ENV+556]
call fb_FilePutStr
add esp, 16
test eax, eax
je .Lt_0217
.Lt_0217:
.Lt_0216:
push -1
lea eax, [CTX+216]
push eax
push 0
push dword ptr [ENV+556]
call fb_FilePutStr
add esp, 16
test eax, eax
je .Lt_0219
.Lt_0219:
.Lt_0218:
push -1
lea eax, [CTX+228]
push eax
push 0
push dword ptr [ENV+556]
call fb_FilePutStr
add esp, 16
test eax, eax
je .Lt_021B
.Lt_021B:
.Lt_021A:
sub esp, 12
push dword ptr [ENV+556]
call fb_FileClose
add esp, 16
test eax, eax
je .Lt_021D
.Lt_021D:
.Lt_021C:
mov dword ptr [ENV+556], 0
.Lt_01FB:
mov esp, ebp
pop ebp
ret
.size _EMITEND, .-_EMITEND
.balign 16
_GETOPTIONVALUE:
.type _GETOPTIONVALUE, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_021E:
cmp dword ptr [ebp+8], 1
jne .Lt_0221
.Lt_0222:
mov dword ptr [ebp-4], 0
jmp .Lt_021F
jmp .Lt_0220
.Lt_0221:
sub esp, 12
push 0
push 1
push 0
push offset Lt_0224
push 21
call ERRREPORTEX
add esp, 32
.Lt_0223:
.Lt_0220:
.Lt_021F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size _GETOPTIONVALUE, .-_GETOPTIONVALUE
.balign 16
_SUPPORTSOP:
.type _SUPPORTSOP, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0225:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_0228
.Lt_022A:
mov dword ptr [ebp-4], 0
jmp .Lt_0227
.Lt_022B:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_022C
mov dword ptr [ebp-12], 24
jmp .Lt_0534
.Lt_022C:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0534:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_0227
.Lt_022E:
mov dword ptr [ebp-4], -1
jmp .Lt_0227
.Lt_0228:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967240
cmp ebx, 16
ja .Lt_022E
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.LT_022F+ebx*4-224]
.LT_022F:
.int .Lt_022B
.int .Lt_022A
.int .Lt_022E
.int .Lt_022A
.int .Lt_022E
.int .Lt_022A
.int .Lt_022A
.int .Lt_022A
.int .Lt_022E
.int .Lt_022E
.int .Lt_022A
.int .Lt_022A
.int .Lt_022E
.int .Lt_022E
.int .Lt_022E
.int .Lt_022A
.int .Lt_022A
.Lt_0227:
.Lt_0226:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size _SUPPORTSOP, .-_SUPPORTSOP
.balign 16
_PROCBEGIN:
.type _PROCBEGIN, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0230:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16564]
mov dword ptr [ecx+16], ebx
.Lt_0231:
pop ebx
mov esp, ebp
pop ebp
ret
.size _PROCBEGIN, .-_PROCBEGIN
.balign 16
_PROCEND:
.type _PROCEND, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0232:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16564]
mov dword ptr [ecx+20], ebx
.Lt_0233:
pop ebx
mov esp, ebp
pop ebp
ret
.size _PROCEND, .-_PROCEND
.balign 16
_PROCALLOCARG:
.type _PROCALLOCARG, @function
push ebp
mov ebp, esp
sub esp, 100
push ebx
.Lt_0234:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+12]
call HSYMNAME
add esp, 16
push eax
push 10
push offset Lt_0236
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
sub esp, 4
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
push dword ptr [ebp+12]
call SYMBGETREALTYPE
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 11
push offset Lt_0239
push 0
sub esp, 4
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 8
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
push 0
push 7
push offset Lt_023B
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00EE
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call HEMITPARAMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 0
sub esp, 12
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_00EE
push -1
push dword ptr [ebp-44]
mov eax, dword ptr [ebp-40]
and eax, 31
mov ebx, dword ptr [ebp-40]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-40]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-40]
and ebx, 32505856
or eax, ebx
push eax
call HEMITTYPE
add esp, 8
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_0235:
pop ebx
mov esp, ebp
pop ebp
ret
.size _PROCALLOCARG, .-_PROCALLOCARG
.balign 16
_PROCALLOCLOCAL:
.type _PROCALLOCLOCAL, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_023F:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+12]
call HSYMNAME
add esp, 16
push eax
push 10
push offset Lt_0241
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
add esp, 20
lea eax, [ebp-24]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call HEMITVARIABLE
add esp, 16
.Lt_0240:
mov esp, ebp
pop ebp
ret
.size _PROCALLOCLOCAL, .-_PROCALLOCLOCAL
.balign 16
_SCOPEBEGIN:
.type _SCOPEBEGIN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0244:
.Lt_0245:
mov esp, ebp
pop ebp
ret
.size _SCOPEBEGIN, .-_SCOPEBEGIN
.balign 16
_SCOPEEND:
.type _SCOPEEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0246:
.Lt_0247:
mov esp, ebp
pop ebp
ret
.size _SCOPEEND, .-_SCOPEEND
.balign 16
_PROCALLOCSTATICVARS:
.type _PROCALLOCSTATICVARS, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0248:
.Lt_0249:
mov esp, ebp
pop ebp
ret
.size _PROCALLOCSTATICVARS, .-_PROCALLOCSTATICVARS
.balign 16
_SETVREGDATATYPE:
.type _SETVREGDATATYPE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_024A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp ebx, dword ptr [eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
cmp ecx, dword ptr [ebp+16]
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_024D
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call IRHLALLOCVREG
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call HEMITCONVERT
add esp, 16
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov ecx, 17
rep movsd
pop esi
pop edi
.Lt_024D:
.Lt_024C:
.Lt_024B:
pop ebx
mov esp, ebp
pop ebp
ret
.size _SETVREGDATATYPE, .-_SETVREGDATATYPE
.balign 16
HADDOFFSET:
.type HADDOFFSET, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_024E:
sub esp, 8
push 0
push 8
call IRHLALLOCVREG
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call HEMITCONVERT
add esp, 16
cmp dword ptr [ebp+24], 0
jne .Lt_0538
cmp dword ptr [ebp+20], 0
je .Lt_0251
.Lt_0538:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
push 8
call IRHLALLOCVRIMM
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 8
call IRHLALLOCVREG
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 28
call HEMITBOP
add esp, 32
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0251:
.Lt_0250:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call _SETVREGDATATYPE
add esp, 16
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov ecx, 17
rep movsd
pop esi
pop edi
.Lt_024F:
mov esp, ebp
pop ebp
ret
.size HADDOFFSET, .-HADDOFFSET
.balign 16
HPREPAREADDRESS:
.type HPREPAREADDRESS, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0252:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+36]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], ebx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+48]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 5
jne .Lt_0255
jmp .Lt_0254
.Lt_0255:
mov ecx, dword ptr [ebp-4]
and ecx, 31
mov ebx, dword ptr [ebp-4]
and ebx, 480
add ebx, 32
or ecx, ebx
mov ebx, dword ptr [ebp-4]
and ebx, 261632
sal ebx, 1
or ecx, ebx
mov ebx, dword ptr [ebp-4]
and ebx, 32505856
or ecx, ebx
mov dword ptr [ebp-4], ecx
.Lt_0254:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 3
jne .Lt_0257
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov ecx, 17
rep movsd
pop esi
pop edi
jmp .Lt_0256
.Lt_0257:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+12], -1
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+36], 0
mov dword ptr [ecx+40], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+48], 0
cmp dword ptr [ebp-24], 0
je .Lt_0259
sub esp, 4
mov ecx, dword ptr [ebp+8]
lea ebx, [ecx+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+4]
push ecx
push dword ptr [ebp-24]
call SYMBGETREALTYPE
add esp, 16
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 261632
sal ecx, 1
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 32505856
or ebx, eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], ebx
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _SETVREGDATATYPE
add esp, 16
jmp .Lt_0258
.Lt_0259:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.Lt_0258:
.Lt_0256:
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp-12], 0
mov eax, -1
jne .Lt_053A
cmp dword ptr [ebp-16], 0
jne .Lt_053A
.Lt_053B:
xor eax, eax
.Lt_053A:
or ebx, eax
je .Lt_025B
sub esp, 12
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HADDOFFSET
add esp, 32
.Lt_025B:
.Lt_025A:
.Lt_0253:
pop ebx
mov esp, ebp
pop ebp
ret
.size HPREPAREADDRESS, .-HPREPAREADDRESS
.balign 16
HLOADVREG:
.type HLOADVREG, @function
push ebp
mov ebp, esp
sub esp, 84
push ebx
.Lt_025C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 4
je .Lt_0261
.Lt_0262:
cmp dword ptr [ebp-4], 0
jne .Lt_0260
.Lt_0261:
jmp .Lt_025E
.Lt_0260:
cmp dword ptr [ebp-4], 5
jne .Lt_0263
.Lt_0264:
sub esp, 12
push dword ptr [ebp+8]
call HPREPAREADDRESS
add esp, 16
jmp .Lt_025E
.Lt_0263:
sub esp, 12
push dword ptr [ebp+8]
call HPREPAREADDRESS
add esp, 16
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 480
add ecx, -32
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 32505856
or eax, ecx
push eax
call IRHLALLOCVREG
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push -1
sub esp, 8
push 9
push offset Lt_0266
push -1
sub esp, 4
push dword ptr [ebp-8]
call HVREGTOSTR
add esp, 8
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
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 3
push offset Lt_00FB
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
add ebx, -32
or ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 261632
sar eax, 1
and eax, 261632
or ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32505856
or ecx, ebx
push ecx
call HEMITTYPE
add esp, 8
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00EE
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 8
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-20]
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
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-20]
push eax
call HWRITELINE
add esp, 16
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-8]
mov ecx, 17
rep movsd
pop esi
pop edi
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.Lt_0265:
.Lt_025E:
.Lt_025D:
pop ebx
mov esp, ebp
pop ebp
ret
.size HLOADVREG, .-HLOADVREG
.balign 16
HEMITTYPE:
.type HEMITTYPE, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_026C:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov dword ptr [ebp-28], eax
and dword ptr [ebp+8], 31
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .Lt_026F
.Lt_0271:
cmp dword ptr [ebp-28], 0
jne .Lt_0273
sub esp, 12
push 0
push 5
push offset Lt_0274
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0272
.Lt_0273:
sub esp, 12
push 0
push 0
push dword ptr [DTYPENAME]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_0272:
jmp .Lt_026E
.Lt_0275:
cmp dword ptr [ebp+12], 0
je .Lt_0277
sub esp, 12
push dword ptr [ebp+12]
call HEMITUDT
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call HGETUDTNAME
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0276
.Lt_0277:
cmp dword ptr [ebp+8], 10
jne .Lt_0278
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0279
mov dword ptr [ebp-36], 24
jmp .Lt_053C
.Lt_0279:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_053C:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
push dword ptr [DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_0276
.Lt_0278:
sub esp, 12
push 0
push 0
push dword ptr [DTYPENAME]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 32
.Lt_0276:
jmp .Lt_026E
.Lt_027B:
dec dword ptr [ebp-28]
sub esp, 12
push 0
push -1
push -1
push -1
push dword ptr [ebp+12]
call HEMITPROCHEADER
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00DA
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_026E
.Lt_027C:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_027D
mov dword ptr [ebp-36], 24
jmp .Lt_053D
.Lt_027D:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_053D:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
push dword ptr [DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_026E
.Lt_027F:
sub esp, 12
push 0
push 0
push dword ptr [DTYPENAME+12]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_026E
.Lt_0280:
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_026E
.Lt_026F:
cmp dword ptr [ebp-32], 22
ja .Lt_0280
mov ebx, dword ptr [ebp-32]
jmp dword ptr [.LT_0281+ebx*4]
.LT_0281:
.int .Lt_0271
.int .Lt_0280
.int .Lt_0280
.int .Lt_0280
.int .Lt_027C
.int .Lt_0280
.int .Lt_0280
.int .Lt_027C
.int .Lt_0280
.int .Lt_0280
.int .Lt_0275
.int .Lt_0280
.int .Lt_0280
.int .Lt_0280
.int .Lt_0280
.int .Lt_0280
.int .Lt_0280
.int .Lt_0280
.int .Lt_027F
.int .Lt_0280
.int .Lt_0275
.int .Lt_0280
.int .Lt_027B
.Lt_026E:
cmp dword ptr [ebp-28], 0
jle .Lt_0283
sub esp, 12
push 0
push -1
sub esp, 4
push 1
push offset Lt_00DA
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-28]
call fb_StrFill2
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0283:
.Lt_0282:
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
.Lt_026D:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITTYPE, .-HEMITTYPE
.balign 16
HEMITINT:
.type HEMITINT, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0284:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], 8
je .Lt_0288
.Lt_0289:
cmp dword ptr [ebp+8], 9
je .Lt_0288
.Lt_028A:
cmp dword ptr [ebp+8], 11
je .Lt_0288
.Lt_028B:
cmp dword ptr [ebp+8], 12
je .Lt_0288
.Lt_028C:
cmp dword ptr [ebp+8], 10
jne .Lt_0287
.Lt_0288:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0286
.Lt_0287:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .Lt_028F
sub esp, 12
push 0
push 10
push offset Lt_0290
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_028E
.Lt_028F:
sub esp, 12
push 0
push 7
push offset Lt_0291
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_028E:
sub esp, 12
push 0
push 2
push offset Lt_0292
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push 8
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00EE
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0293
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0294
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_028D:
.Lt_0286:
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
.Lt_0285:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HEMITINT, .-HEMITINT
.balign 16
HEMITLONG:
.type HEMITLONG, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0295:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0296:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HEMITLONG, .-HEMITLONG
.balign 16
HEMITFLOAT:
.type HEMITFLOAT, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0297:
sub esp, 12
push 0
push 3
push offset Lt_0299
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0298:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HEMITFLOAT, .-HEMITFLOAT
.balign 16
HISFIXLENSTR:
.type HISFIXLENSTR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_029A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 1
jne .Lt_029D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 18
je .Lt_02A1
.Lt_02A2:
cmp dword ptr [ebp-8], 4
je .Lt_02A1
.Lt_02A3:
cmp dword ptr [ebp-8], 7
jne .Lt_02A0
.Lt_02A1:
mov dword ptr [ebp-4], -1
jmp .Lt_029B
.Lt_02A0:
.Lt_029E:
.Lt_029D:
.Lt_029C:
mov dword ptr [ebp-4], 0
.Lt_029B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HISFIXLENSTR, .-HISFIXLENSTR
.balign 16
HVREGTOSTR:
.type HVREGTOSTR, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_02A4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .Lt_02A7
.Lt_02A9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_02AA
mov dword ptr [ebp-24], 24
jmp .Lt_053E
.Lt_02AA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_053E:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 1
jne .Lt_02AD
sub esp, 12
push 0
push -1
sub esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
call HEMITFLOAT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_02A5
.Lt_02AD:
.Lt_02AC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_02AE
mov dword ptr [ebp-28], 24
jmp .Lt_053F
.Lt_02AE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_053F:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .Lt_02B1
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call HEMITLONG
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_02A5
.Lt_02B1:
.Lt_02B0:
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call HEMITINT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_02A5
jmp .Lt_02A6
.Lt_02B2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
jne .Lt_02B4
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call fb_IntToStr
add esp, 16
push eax
push 4
push offset Lt_02B5
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_02A5
.Lt_02B4:
.Lt_02B3:
jmp .Lt_02A6
.Lt_02A7:
cmp dword ptr [ebp-20], 4
ja .Lt_02A6
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_02B7+eax*4]
.LT_02B7:
.int .Lt_02A9
.int .Lt_02A6
.int .Lt_02A6
.int .Lt_02A6
.int .Lt_02B2
.Lt_02A6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-16], ebx
sub esp, 12
push dword ptr [ebp-16]
call HISFIXLENSTR
add esp, 16
test eax, eax
je .Lt_02B9
sub esp, 12
push 0
push 10
push offset Lt_02BA
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-16]
call HEMITSYMTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_02BB
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp-16]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
lea eax, [ebp-28]
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
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0293
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 32505856
or ebx, ecx
push ebx
call HEMITTYPE
add esp, 16
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
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
push 2
push offset Lt_0294
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_02A5
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.Lt_02B9:
.Lt_02B8:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp-16]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.Lt_02A5:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HVREGTOSTR, .-HVREGTOSTR
.balign 16
_EMITLABEL:
.type _EMITLABEL, @function
push ebp
mov ebp, esp
sub esp, 56
.Lt_02BE:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+8]
call HSYMNAME
add esp, 16
push eax
push 7
push offset Lt_02C0
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
add esp, 20
lea eax, [ebp-24]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push 11
push offset Lt_02C3
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call HWRITELABEL
add esp, 16
.Lt_02BF:
mov esp, ebp
pop ebp
ret
.size _EMITLABEL, .-_EMITLABEL
.balign 16
HGETBOPCODE:
.type HGETBOPCODE, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_02C6:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_02C9
.Lt_02CB:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_02CC
mov dword ptr [ebp-12], 24
jmp .Lt_0540
.Lt_02CC:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0540:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_02CF
mov eax, offset Lt_02D0
mov dword ptr [ebp-4], eax
jmp .Lt_02CE
.Lt_02CF:
mov eax, offset Lt_02D1
mov dword ptr [ebp-4], eax
.Lt_02CE:
jmp .Lt_02C8
.Lt_02D2:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_02D3
mov dword ptr [ebp-12], 24
jmp .Lt_0541
.Lt_02D3:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0541:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_02D6
mov eax, offset Lt_02D7
mov dword ptr [ebp-4], eax
jmp .Lt_02D5
.Lt_02D6:
mov eax, offset Lt_02D8
mov dword ptr [ebp-4], eax
.Lt_02D5:
jmp .Lt_02C8
.Lt_02D9:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_02DA
mov dword ptr [ebp-12], 24
jmp .Lt_0542
.Lt_02DA:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0542:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_02DD
mov eax, offset Lt_02DE
mov dword ptr [ebp-4], eax
jmp .Lt_02DC
.Lt_02DD:
mov eax, offset Lt_02DF
mov dword ptr [ebp-4], eax
.Lt_02DC:
jmp .Lt_02C8
.Lt_02E0:
mov eax, offset Lt_02E1
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_02E2:
mov eax, offset Lt_02E3
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_02E4:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_02E5
mov dword ptr [ebp-12], 24
jmp .Lt_0543
.Lt_02E5:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0543:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_02E8
mov eax, offset Lt_02E9
mov dword ptr [ebp-4], eax
jmp .Lt_02E7
.Lt_02E8:
mov eax, offset Lt_02EA
mov dword ptr [ebp-4], eax
.Lt_02E7:
jmp .Lt_02C8
.Lt_02EB:
mov eax, offset Lt_02EC
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_02ED:
mov eax, offset Lt_02EE
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_02EF:
mov eax, offset Lt_02F0
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_02F1:
mov eax, offset Lt_02F2
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_02F3:
mov eax, offset Lt_02F4
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_02F5:
mov eax, offset Lt_02F6
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_02F7:
mov eax, offset Lt_02F8
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_02F9:
mov eax, offset Lt_02FA
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_02FB:
mov eax, offset Lt_02FC
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_02FD:
mov eax, offset Lt_02FE
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_02FF:
mov eax, offset Lt_0300
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_0301:
mov eax, offset Lt_0302
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_0303:
mov eax, offset Lt_0304
mov dword ptr [ebp-4], eax
jmp .Lt_02C8
.Lt_02C9:
mov eax, dword ptr [ebp-8]
add eax, 4294967268
cmp eax, 22
ja .Lt_02C8
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0305+eax*4-112]
.LT_0305:
.int .Lt_02CB
.int .Lt_02D2
.int .Lt_02D9
.int .Lt_02E0
.int .Lt_02E2
.int .Lt_02E4
.int .Lt_02EF
.int .Lt_02F1
.int .Lt_02C8
.int .Lt_02C8
.int .Lt_02F3
.int .Lt_0301
.int .Lt_0303
.int .Lt_02EB
.int .Lt_02ED
.int .Lt_02C8
.int .Lt_02C8
.int .Lt_02F5
.int .Lt_02F9
.int .Lt_02FB
.int .Lt_02F7
.int .Lt_02FD
.int .Lt_02FF
.Lt_02C8:
.Lt_02C7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HGETBOPCODE, .-HGETBOPCODE
.balign 16
HLOADOPERANDSANDWRITEBOP:
.type HLOADOPERANDSANDWRITEBOP, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_0306:
sub esp, 12
push dword ptr [ebp+12]
call HLOADVREG
add esp, 16
sub esp, 12
push dword ptr [ebp+16]
call HLOADVREG
add esp, 16
sub esp, 4
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call _SETVREGDATATYPE
add esp, 16
sub esp, 4
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
call _SETVREGDATATYPE
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+20]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0194
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+8]
call HGETBOPCODE
add esp, 16
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00EE
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00EE
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+16]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_0307:
mov esp, ebp
pop ebp
ret
.size HLOADOPERANDSANDWRITEBOP, .-HLOADOPERANDSANDWRITEBOP
.balign 16
HEMITBOP:
.type HEMITBOP, @function
push ebp
mov ebp, esp
sub esp, 132
push ebx
.Lt_0309:
cmp dword ptr [ebp+24], 0
je .Lt_030C
sub esp, 8
push 0
push 8
call IRHLALLOCVREG
add esp, 16
mov dword ptr [ebp+20], eax
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HLOADOPERANDSANDWRITEBOP
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+20]
call HVREGTOSTR
add esp, 16
push eax
push 7
push offset Lt_030D
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea eax, [ebp-96]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 0
sub esp, 12
push dword ptr [ebp+24]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push 8
push offset Lt_030F
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-96]
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea eax, [ebp-96]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 8
push offset Lt_030F
push -1
lea eax, [ebp-96]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-84]
push eax
push -1
lea eax, [ebp-96]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-96]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
push dword ptr [ebp-84]
call HWRITELABEL
add esp, 16
sub esp, 12
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_030A
sub esp, 12
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 16
.Lt_030C:
.Lt_030B:
mov dword ptr [ebp-4], 0
lea eax, [ebp-72]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 17
rep stosd
pop edi
pop eax
cmp dword ptr [ebp+20], 0
jne .Lt_0313
mov dword ptr [ebp-4], -1
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call IRHLALLOCVREG
add esp, 16
mov dword ptr [ebp+20], eax
lea eax, [ebp-72]
push edi
push esi
mov edi, eax
mov esi, dword ptr [ebp+12]
mov ecx, 17
rep movsd
pop esi
pop edi
.Lt_0313:
.Lt_0312:
sub esp, 8
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HLOADOPERANDSANDWRITEBOP
add esp, 32
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .Lt_0315
sub esp, 8
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+4]
call IRHLALLOCVREG
add esp, 16
mov dword ptr [ebp-76], eax
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-76]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push 9
push offset Lt_0316
push -1
lea eax, [ebp-88]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0317
push -1
lea eax, [ebp-88]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+20]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0293
push -1
lea eax, [ebp-88]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 16
push eax
push -1
lea eax, [ebp-88]
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-88]
push eax
call HWRITELINE
add esp, 16
push edi
push esi
mov edi, dword ptr [ebp+20]
mov esi, dword ptr [ebp-76]
mov ecx, 17
rep movsd
pop esi
pop edi
sub esp, 12
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 16
.Lt_0315:
.Lt_0314:
cmp dword ptr [ebp-4], 0
je .Lt_031A
sub esp, 8
push dword ptr [ebp+20]
lea eax, [ebp-72]
push eax
call HEMITSTORE
add esp, 16
.Lt_031A:
.Lt_0319:
.Lt_030A:
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITBOP, .-HEMITBOP
.balign 16
_EMITBOP:
.type _EMITBOP, @function
push ebp
mov ebp, esp
sub esp, 88
.Lt_031B:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+16]
call VREGPRETTY
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_00EE
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call ASTDUMPOPTOSTR
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_00EE
push -1
sub esp, 4
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 8
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
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ebp+24], 0
je .Lt_0322
sub esp, 12
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push 11
push offset Lt_0323
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0321
.Lt_0322:
cmp dword ptr [ebp+20], 0
jne .Lt_0326
sub esp, 12
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push 9
push offset Lt_0327
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0321
.Lt_0326:
sub esp, 12
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_032A
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-84]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_StrDelete
add esp, 16
.Lt_0321:
sub esp, 12
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITBOP
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_031C:
mov esp, ebp
pop ebp
ret
.size _EMITBOP, .-_EMITBOP
.balign 16
HBUILTINUOP:
.type HBUILTINUOP, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_032D:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push dword ptr [ebp+12]
call HLOADVREG
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+16]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 9
push offset Lt_032F
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], 15
jne .Lt_0331
sub esp, 12
push 0
push 13
push offset Lt_0332
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp+8], 56
jne .Lt_0334
.Lt_0335:
mov dword ptr [BUILTINS+116], -1
sub esp, 12
push 0
push 5
push offset Lt_0336
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0333
.Lt_0334:
cmp dword ptr [ebp+8], 58
jne .Lt_0337
.Lt_0338:
mov dword ptr [BUILTINS+20], -1
sub esp, 12
push 0
push 4
push offset Lt_0339
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0333
.Lt_0337:
cmp dword ptr [ebp+8], 60
jne .Lt_033A
.Lt_033B:
mov dword ptr [BUILTINS+36], -1
sub esp, 12
push 0
push 4
push offset Lt_033C
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0333
.Lt_033A:
cmp dword ptr [ebp+8], 69
jne .Lt_033D
.Lt_033E:
mov dword ptr [BUILTINS+52], -1
sub esp, 12
push 0
push 4
push offset Lt_033F
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0333
.Lt_033D:
cmp dword ptr [ebp+8], 68
jne .Lt_0340
.Lt_0341:
mov dword ptr [BUILTINS+68], -1
sub esp, 12
push 0
push 4
push offset Lt_0342
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0333
.Lt_0340:
cmp dword ptr [ebp+8], 65
jne .Lt_0343
.Lt_0344:
mov dword ptr [BUILTINS+84], -1
sub esp, 12
push 0
push 5
push offset Lt_0345
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0333
.Lt_0343:
cmp dword ptr [ebp+8], 70
jne .Lt_0346
.Lt_0347:
mov dword ptr [BUILTINS+100], -1
sub esp, 12
push 0
push 6
push offset Lt_0348
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0346:
.Lt_0349:
.Lt_0333:
sub esp, 12
push 0
push 12
push offset Lt_034A
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0330
.Lt_0331:
sub esp, 12
push 0
push 14
push offset Lt_034B
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp+8], 56
jne .Lt_034D
.Lt_034E:
mov dword ptr [BUILTINS+124], -1
sub esp, 12
push 0
push 5
push offset Lt_0336
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_034C
.Lt_034D:
cmp dword ptr [ebp+8], 58
jne .Lt_034F
.Lt_0350:
mov dword ptr [BUILTINS+28], -1
sub esp, 12
push 0
push 4
push offset Lt_0339
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_034C
.Lt_034F:
cmp dword ptr [ebp+8], 60
jne .Lt_0351
.Lt_0352:
mov dword ptr [BUILTINS+44], -1
sub esp, 12
push 0
push 4
push offset Lt_033C
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_034C
.Lt_0351:
cmp dword ptr [ebp+8], 69
jne .Lt_0353
.Lt_0354:
mov dword ptr [BUILTINS+60], -1
sub esp, 12
push 0
push 4
push offset Lt_033F
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_034C
.Lt_0353:
cmp dword ptr [ebp+8], 68
jne .Lt_0355
.Lt_0356:
mov dword ptr [BUILTINS+76], -1
sub esp, 12
push 0
push 4
push offset Lt_0342
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_034C
.Lt_0355:
cmp dword ptr [ebp+8], 65
jne .Lt_0357
.Lt_0358:
mov dword ptr [BUILTINS+92], -1
sub esp, 12
push 0
push 5
push offset Lt_0345
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_034C
.Lt_0357:
cmp dword ptr [ebp+8], 70
jne .Lt_0359
.Lt_035A:
mov dword ptr [BUILTINS+108], -1
sub esp, 12
push 0
push 6
push offset Lt_0348
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0359:
.Lt_035B:
.Lt_034C:
sub esp, 12
push 0
push 13
push offset Lt_035C
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0330:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0294
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_032E:
mov esp, ebp
pop ebp
ret
.size HBUILTINUOP, .-HBUILTINUOP
.balign 16
_EMITUOP:
.type _EMITUOP, @function
push ebp
mov ebp, esp
sub esp, 120
.Lt_035D:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_00EE
push -1
sub esp, 4
push dword ptr [ebp+8]
call ASTDUMPOPTOSTR
add esp, 8
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
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ebp+16], 0
jne .Lt_0362
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push 9
push offset Lt_0363
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0361
.Lt_0362:
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push 5
push offset Lt_0366
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
.Lt_0361:
cmp dword ptr [ebp+8], 54
jne .Lt_036A
.Lt_036B:
lea eax, [ebp-104]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 17
rep stosd
pop edi
pop eax
mov dword ptr [ebp-108], 0
cmp dword ptr [ebp+16], 0
jne .Lt_036D
mov dword ptr [ebp-108], -1
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call IRHLALLOCVREG
add esp, 16
mov dword ptr [ebp+16], eax
lea eax, [ebp-104]
push edi
push esi
mov edi, eax
mov esi, dword ptr [ebp+12]
mov ecx, 17
rep movsd
pop esi
pop edi
.Lt_036D:
.Lt_036C:
push 0
push 0
push 0
push 8
call IRHLALLOCVRIMM
add esp, 16
mov dword ptr [ebp-112], eax
sub esp, 12
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-112]
push 29
call HEMITBOP
add esp, 32
cmp dword ptr [ebp-108], 0
je .Lt_036F
sub esp, 8
push dword ptr [ebp+16]
lea eax, [ebp-104]
push eax
call HEMITSTORE
add esp, 16
.Lt_036F:
.Lt_036E:
jmp .Lt_0369
.Lt_036A:
cmp dword ptr [ebp+8], 52
jne .Lt_0370
.Lt_0371:
push 4294967295
push 4294967295
push 0
push 8
call IRHLALLOCVRIMM
add esp, 16
mov dword ptr [ebp-40], eax
sub esp, 12
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-40]
push dword ptr [ebp+12]
push 38
call HEMITBOP
add esp, 32
jmp .Lt_0369
.Lt_0370:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HBUILTINUOP
add esp, 16
.Lt_0372:
.Lt_0369:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_035E:
mov esp, ebp
pop ebp
ret
.size _EMITUOP, .-_EMITUOP
.balign 16
HGETCONVOPCODE:
.type HGETCONVOPCODE, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_0373:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0375
mov dword ptr [ebp-8], 24
jmp .Lt_0544
.Lt_0375:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0544:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_0378
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_0379
mov dword ptr [ebp-40], 24
jmp .Lt_0545
.Lt_0379:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_0545:
mov eax, dword ptr [ebp-40]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_037C
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_037D
mov dword ptr [ebp-52], 24
jmp .Lt_0546
.Lt_037D:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_0546:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_037F
mov dword ptr [ebp-56], 24
jmp .Lt_0547
.Lt_037F:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-56], eax
.Lt_0547:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov ebx, dword ptr [ebp-64]
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp dword ptr [SYMB_DTYPETB+ebx+4], ecx
jge .Lt_0383
mov ecx, offset Lt_0381
mov dword ptr [ebp-60], ecx
jmp .Lt_0548
.Lt_0383:
mov ecx, offset Lt_0382
mov dword ptr [ebp-60], ecx
.Lt_0548:
mov ecx, dword ptr [ebp-60]
mov dword ptr [ebp-4], ecx
jmp .Lt_0374
.Lt_037C:
.Lt_037B:
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .Lt_0385
mov dword ptr [ebp-44], 24
jmp .Lt_054A
.Lt_0385:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-44], ecx
.Lt_054A:
mov ecx, dword ptr [ebp-44]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
je .Lt_0389
mov ecx, offset Lt_0387
mov dword ptr [ebp-48], ecx
jmp .Lt_054B
.Lt_0389:
mov ecx, offset Lt_0388
mov dword ptr [ebp-48], ecx
.Lt_054B:
mov ecx, dword ptr [ebp-48]
mov dword ptr [ebp-4], ecx
jmp .Lt_0374
.Lt_0378:
.Lt_0377:
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .Lt_038B
mov dword ptr [ebp-12], 24
jmp .Lt_054C
.Lt_038B:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-12], ecx
.Lt_054C:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx], 1
jne .Lt_038E
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_038F
mov dword ptr [ebp-40], 24
jmp .Lt_054D
.Lt_038F:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-40], ecx
.Lt_054D:
mov ecx, dword ptr [ebp-40]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx+8], 0
je .Lt_0393
mov ecx, offset Lt_0391
mov dword ptr [ebp-44], ecx
jmp .Lt_054E
.Lt_0393:
mov ecx, offset Lt_0392
mov dword ptr [ebp-44], ecx
.Lt_054E:
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-4], ecx
jmp .Lt_0374
.Lt_038E:
.Lt_038D:
mov ecx, dword ptr [ebp+8]
and ecx, 480
test ecx, ecx
je .Lt_0396
mov ecx, dword ptr [ebp+12]
and ecx, 480
test ecx, ecx
je .Lt_0398
mov ecx, offset Lt_0399
mov dword ptr [ebp-4], ecx
jmp .Lt_0374
.Lt_0398:
.Lt_0397:
mov ecx, offset Lt_039A
mov dword ptr [ebp-4], ecx
jmp .Lt_0374
jmp .Lt_0395
.Lt_0396:
mov ecx, dword ptr [ebp+12]
and ecx, 480
test ecx, ecx
je .Lt_039B
mov ecx, offset Lt_039C
mov dword ptr [ebp-4], ecx
jmp .Lt_0374
.Lt_039B:
.Lt_0395:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_039D
mov dword ptr [ebp-16], 24
jmp .Lt_054F
.Lt_039D:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-16], ecx
.Lt_054F:
mov ecx, dword ptr [ebp-16]
imul ecx, 28
mov dword ptr [ebp-40], ecx
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .Lt_039F
mov dword ptr [ebp-20], 24
jmp .Lt_0550
.Lt_039F:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-20], ecx
.Lt_0550:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
mov ebx, dword ptr [ebp-40]
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
cmp dword ptr [SYMB_DTYPETB+ebx+4], eax
jne .Lt_03A2
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_03A3
mov dword ptr [ebp-44], 24
jmp .Lt_0552
.Lt_03A3:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_0552:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov dword ptr [ebp-52], eax
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_03A5
mov dword ptr [ebp-48], 24
jmp .Lt_0553
.Lt_03A5:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_0553:
mov eax, dword ptr [ebp-48]
imul eax, 28
mov ebx, dword ptr [ebp-52]
mov ecx, dword ptr [SYMB_DTYPETB+eax+20]
cmp dword ptr [SYMB_DTYPETB+ebx+20], ecx
jne .Lt_03A8
mov dword ptr [ebp-4], 0
jmp .Lt_0374
.Lt_03A8:
.Lt_03A7:
mov ecx, offset Lt_0399
mov dword ptr [ebp-4], ecx
jmp .Lt_0374
.Lt_03A2:
.Lt_03A1:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_03A9
mov dword ptr [ebp-24], 24
jmp .Lt_0555
.Lt_03A9:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-24], ecx
.Lt_0555:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov dword ptr [ebp-40], ecx
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .Lt_03AB
mov dword ptr [ebp-28], 24
jmp .Lt_0556
.Lt_03AB:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-28], ecx
.Lt_0556:
mov ecx, dword ptr [ebp-28]
imul ecx, 28
mov ebx, dword ptr [ebp-40]
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
cmp dword ptr [SYMB_DTYPETB+ebx+4], eax
jge .Lt_03AE
mov eax, offset Lt_03AF
mov dword ptr [ebp-4], eax
jmp .Lt_0374
.Lt_03AE:
.Lt_03AD:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_03B0
mov dword ptr [ebp-32], 24
jmp .Lt_0558
.Lt_03B0:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_0558:
mov eax, dword ptr [ebp-32]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_03B4
mov eax, offset Lt_03B2
mov dword ptr [ebp-36], eax
jmp .Lt_0559
.Lt_03B4:
mov eax, offset Lt_03B3
mov dword ptr [ebp-36], eax
.Lt_0559:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-4], eax
.Lt_0374:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETCONVOPCODE, .-HGETCONVOPCODE
.balign 16
HEMITCONVERT:
.type HEMITCONVERT, @function
push ebp
mov ebp, esp
sub esp, 132
push ebx
.Lt_03B6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_03B8
mov dword ptr [ebp-4], 24
jmp .Lt_055A
.Lt_03B8:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_055A:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-92], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_03BA
mov dword ptr [ebp-8], 24
jmp .Lt_055B
.Lt_03BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.Lt_055B:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-92]
je .Lt_03BD
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call IRHLALLOCVREG
add esp, 16
mov dword ptr [ebp-96], eax
sub esp, 12
push dword ptr [ebp+12]
call HLOADVREG
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 9
push offset Lt_032F
push -1
sub esp, 4
push dword ptr [ebp-96]
call HVREGTOSTR
add esp, 8
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrInit
add esp, 32
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], 15
jne .Lt_03C0
mov dword ptr [BUILTINS+132], -1
sub esp, 12
push 0
push 33
push offset Lt_03C1
push -1
lea eax, [ebp-108]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_03BF
.Lt_03C0:
mov dword ptr [BUILTINS+140], -1
sub esp, 12
push 0
push 35
push offset Lt_03C2
push -1
lea eax, [ebp-108]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_03BF:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-108]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0294
push -1
lea eax, [ebp-108]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-108]
push eax
call HWRITELINE
add esp, 16
push edi
push esi
mov edi, dword ptr [ebp+12]
mov esi, dword ptr [ebp-96]
mov ecx, 17
rep movsd
pop esi
pop edi
sub esp, 12
lea eax, [ebp-108]
push eax
call fb_StrDelete
add esp, 16
.Lt_03BD:
.Lt_03BC:
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HGETCONVOPCODE
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_03C4
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ecx, 17
rep movsd
pop esi
pop edi
jmp .Lt_03B7
.Lt_03C4:
.Lt_03C3:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .Lt_03C6
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .Lt_03C5
.Lt_03C6:
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call IRHLALLOCVREG
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_03C5:
sub esp, 12
push dword ptr [ebp+12]
call HLOADVREG
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00EE
push -1
sub esp, 4
push 0
push dword ptr [ebp-12]
push -1
sub esp, 4
push 4
push offset Lt_0194
push -1
sub esp, 4
push dword ptr [ebp-16]
call HVREGTOSTR
add esp, 8
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 16
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
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
push 2
push offset Lt_00EE
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0293
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 16
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
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
lea eax, [ebp-28]
push eax
call HWRITELINE
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .Lt_03CD
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HEMITSTORE
add esp, 16
.Lt_03CD:
.Lt_03CC:
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.Lt_03B7:
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITCONVERT, .-HEMITCONVERT
.balign 16
_EMITCONVERT:
.type _EMITCONVERT, @function
push ebp
mov ebp, esp
sub esp, 56
.Lt_03CE:
sub esp, 12
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+8]
call VREGPRETTY
add esp, 16
push eax
push -1
sub esp, 4
push 5
push offset Lt_03D1
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 16
push eax
push 6
push offset Lt_03D0
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
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITCONVERT
add esp, 16
.Lt_03CF:
mov esp, ebp
pop ebp
ret
.size _EMITCONVERT, .-_EMITCONVERT
.balign 16
HEMITSTORE:
.type HEMITSTORE, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_03D6:
sub esp, 12
push dword ptr [ebp+12]
call HLOADVREG
add esp, 16
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp+12]
call _SETVREGDATATYPE
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call HPREPAREADDRESS
add esp, 16
sub esp, 12
push 0
push 7
push offset Lt_023B
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00EE
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, -32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sar eax, 1
and eax, 261632
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
push ebx
call HEMITTYPE
add esp, 8
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00EE
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 8
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-12]
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
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_03D7:
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITSTORE, .-HEMITSTORE
.balign 16
_EMITSTORE:
.type _EMITSTORE, @function
push ebp
mov ebp, esp
sub esp, 56
.Lt_03DC:
sub esp, 12
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 16
push eax
push -1
sub esp, 4
push 5
push offset Lt_03DE
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call VREGPRETTY
add esp, 16
push eax
push 7
push offset Lt_023B
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
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITSTORE
add esp, 16
.Lt_03DD:
mov esp, ebp
pop ebp
ret
.size _EMITSTORE, .-_EMITSTORE
.balign 16
_EMITSPILLREGS:
.type _EMITSPILLREGS, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_03E3:
.Lt_03E4:
mov esp, ebp
pop ebp
ret
.size _EMITSPILLREGS, .-_EMITSPILLREGS
.balign 16
_EMITLOAD:
.type _EMITLOAD, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_03E5:
.Lt_03E6:
mov esp, ebp
pop ebp
ret
.size _EMITLOAD, .-_EMITLOAD
.balign 16
_EMITLOADRES:
.type _EMITLOADRES, @function
push ebp
mov ebp, esp
sub esp, 72
.Lt_03E7:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+8]
call VREGPRETTY
add esp, 16
push eax
push 9
push offset Lt_03E9
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
add esp, 20
lea eax, [ebp-24]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call HLOADVREG
add esp, 16
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call _SETVREGDATATYPE
add esp, 16
sub esp, 12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+8]
call HVREGTOSTR
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_00EE
push -1
sub esp, 4
push -1
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 16
push eax
push 5
push offset Lt_03EC
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
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
.Lt_03E8:
mov esp, ebp
pop ebp
ret
.size _EMITLOADRES, .-_EMITLOADRES
.balign 16
_EMITADDR:
.type _EMITADDR, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_03F1:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 22
jne .Lt_03F4
.Lt_03F5:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 16
push eax
push 8
push offset Lt_03F6
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call HPREPAREADDRESS
add esp, 16
sub esp, 4
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push dword ptr [ebp+12]
call _SETVREGDATATYPE
add esp, 16
jmp .Lt_03F3
.Lt_03F4:
cmp dword ptr [ebp+8], 76
jne .Lt_03F9
.Lt_03FA:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 16
push eax
push 7
push offset Lt_03FB
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call HLOADVREG
add esp, 16
.Lt_03F9:
.Lt_03F3:
push edi
push esi
mov edi, dword ptr [ebp+16]
mov esi, dword ptr [ebp+12]
mov ecx, 17
rep movsd
pop esi
pop edi
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_03F2:
mov esp, ebp
pop ebp
ret
.size _EMITADDR, .-_EMITADDR
.balign 16
HDOCALL:
.type HDOCALL, @function
push ebp
mov ebp, esp
sub esp, 100
push ebx
.Lt_03FE:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+20], 0
jne .Lt_0401
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_0403
sub esp, 8
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+92]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+88]
and eax, 511
push eax
call IRHLALLOCVREG
add esp, 16
mov dword ptr [ebp+20], eax
.Lt_0403:
.Lt_0402:
.Lt_0401:
.Lt_0400:
cmp dword ptr [ebp+20], 0
je .Lt_0405
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 4
jne .Lt_0407
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-28], eax
jmp .Lt_0406
.Lt_0407:
sub esp, 8
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
call IRHLALLOCVREG
add esp, 16
mov dword ptr [ebp-28], eax
.Lt_0406:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-28]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 9
push offset Lt_032F
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call HEMITPROCCALLCONV
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00EE
push -1
mov eax, dword ptr [ebp-28]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-28]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 8
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-12]
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
jmp .Lt_0404
.Lt_0405:
sub esp, 12
push 0
push 6
push offset Lt_040A
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call HEMITPROCCALLCONV
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 6
push offset Lt_040B
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0404:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 3
push offset Lt_00F2
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [IRHL+60]
push eax
call LISTGETTAIL
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_040E:
cmp dword ptr [ebp-16], 0
je .Lt_0410
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+8]
cmp ebx, dword ptr [ebp+24]
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-56], ebx
jmp .Lt_055F
.Lt_0410:
mov dword ptr [ebp-56], 0
.Lt_055F:
cmp dword ptr [ebp-56], 0
je .Lt_040F
sub esp, 12
push dword ptr [ebp-16]
call LISTGETPREV
add esp, 16
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-24], ebx
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp-24]
call VREGPRETTY
add esp, 16
push eax
push 5
push offset Lt_0412
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call HINTERNALCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call HLOADVREG
add esp, 16
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-88], 0
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 0
je .Lt_0416
sub esp, 4
lea eax, [ebp-88]
push eax
lea eax, [ebp-84]
push eax
mov eax, dword ptr [ebp-16]
push dword ptr [eax]
call _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
add esp, 16
jmp .Lt_0415
.Lt_0416:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-84], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-88], eax
.Lt_0415:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-88]
push dword ptr [ebp-84]
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 4
push dword ptr [ebp-88]
push dword ptr [ebp-84]
push dword ptr [ebp-24]
call _SETVREGDATATYPE
add esp, 16
sub esp, 12
push 0
push 2
push offset Lt_00EE
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-24]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push dword ptr [ebp-16]
lea eax, [IRHL+60]
push eax
call LISTDELNODE
add esp, 16
cmp dword ptr [ebp-20], 0
je .Lt_0418
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+24]
cmp dword ptr [eax+8], ebx
jne .Lt_041A
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_041A:
.Lt_0419:
.Lt_0418:
.Lt_0417:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-16], ebx
jmp .Lt_040E
.Lt_040F:
sub esp, 12
push 0
push 3
push offset Lt_010B
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea ebx, [ebp-12]
push ebx
call HWRITELINE
add esp, 16
cmp dword ptr [ebp+20], 0
je .Lt_041C
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx], 4
je .Lt_041E
sub esp, 8
push dword ptr [ebp-28]
push dword ptr [ebp+20]
call HEMITSTORE
add esp, 16
.Lt_041E:
.Lt_041D:
.Lt_041C:
.Lt_041B:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 16
.Lt_03FF:
pop ebx
mov esp, ebp
pop ebp
ret
.size HDOCALL, .-HDOCALL
.balign 16
_EMITCALL:
.type _EMITCALL, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_041F:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 3
push offset Lt_0421
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call HSYMNAME
add esp, 16
push eax
push 6
push offset Lt_040A
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
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call HDOCALL
add esp, 32
.Lt_0420:
mov esp, ebp
pop ebp
ret
.size _EMITCALL, .-_EMITCALL
.balign 16
_EMITCALLPTR:
.type _EMITCALLPTR, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_0425:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 16
push eax
push 9
push offset Lt_0427
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
add esp, 20
lea eax, [ebp-24]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call HLOADVREG
add esp, 16
sub esp, 12
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call HDOCALL
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.Lt_0426:
mov esp, ebp
pop ebp
ret
.size _EMITCALLPTR, .-_EMITCALLPTR
.balign 16
_EMITJUMPPTR:
.type _EMITJUMPPTR, @function
push ebp
mov ebp, esp
sub esp, 56
.Lt_042B:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+8]
call VREGPRETTY
add esp, 16
push eax
push 9
push offset Lt_042D
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
add esp, 20
lea eax, [ebp-24]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call HLOADVREG
add esp, 16
sub esp, 12
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+8]
call HVREGTOSTR
add esp, 16
push eax
push 7
push offset Lt_0430
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
.Lt_042C:
mov esp, ebp
pop ebp
ret
.size _EMITJUMPPTR, .-_EMITJUMPPTR
.balign 16
_EMITBRANCH:
.type _EMITBRANCH, @function
push ebp
mov ebp, esp
sub esp, 56
.Lt_0433:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+12]
call HSYMNAME
add esp, 16
push eax
push 6
push offset Lt_0435
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
add esp, 20
lea eax, [ebp-24]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push 11
push offset Lt_02C3
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
sub esp, 4
call SYMBUNIQUELABEL
add esp, 4
push eax
call HWRITELABEL
add esp, 16
.Lt_0434:
mov esp, ebp
pop ebp
ret
.size _EMITBRANCH, .-_EMITBRANCH
.balign 16
_EMITJMPTB:
.type _EMITJMPTB, @function
push ebp
mov ebp, esp
sub esp, 164
push ebx
.Lt_043A:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+8]
call VREGPRETTY
add esp, 16
push eax
push 7
push offset Lt_043C
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
add esp, 20
lea eax, [ebp-24]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 12
push dword ptr [ebp+8]
call HLOADVREG
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push 8
push offset Lt_043F
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-48]
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00EE
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00EE
push -1
sub esp, 4
push 0
sub esp, 12
push dword ptr [ebp+28]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push 8
push offset Lt_030F
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
add esp, 32
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016C
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call HWRITELINE
add esp, 16
inc dword ptr [CTX]
mov dword ptr [ebp-100], 0
mov eax, dword ptr [ebp+24]
dec eax
mov dword ptr [ebp-104], eax
jmp .Lt_0444
.Lt_0447:
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_00FB
push -1
sub esp, 4
push -1
sub esp, 8
mov eax, dword ptr [ebp-100]
sal eax, 3
mov ebx, dword ptr [ebp+16]
add ebx, eax
mov ecx, dword ptr [ebp+32]
mov eax, dword ptr [ebp+36]
add ecx, dword ptr [ebx]
adc eax, dword ptr [ebx+4]
push eax
push ecx
call fb_ULongintToStr
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_00EE
push -1
lea eax, [ebp-48]
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 0
sub esp, 12
mov eax, dword ptr [ebp-100]
sal eax, 2
mov ecx, dword ptr [ebp+20]
add ecx, eax
push dword ptr [ecx]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push 8
push offset Lt_030F
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call HWRITELINE
add esp, 16
.Lt_0445:
inc dword ptr [ebp-100]
.Lt_0444:
mov eax, dword ptr [ebp-104]
cmp dword ptr [ebp-100], eax
jle .Lt_0447
.Lt_0446:
dec dword ptr [CTX]
sub esp, 12
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 2
push offset Lt_0184
push -1
lea eax, [ebp-96]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-96]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.Lt_043B:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITJMPTB, .-_EMITJMPTB
.balign 16
_EMITMEM:
.type _EMITMEM, @function
push ebp
mov ebp, esp
sub esp, 72
.Lt_044E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
push 11
push offset Lt_0450
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+8], 107
jne .Lt_0452
.Lt_0453:
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 16
push eax
push 10
push offset Lt_0454
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0451
.Lt_0452:
cmp dword ptr [ebp+8], 105
jne .Lt_0457
.Lt_0458:
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [ebp+16]
call VREGPRETTY
add esp, 16
push eax
push -1
sub esp, 4
push 5
push offset Lt_045A
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+12]
call VREGPRETTY
add esp, 16
push eax
push 9
push offset Lt_0459
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
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HASTCOMMAND
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
.Lt_0457:
.Lt_0451:
sub esp, 12
push dword ptr [ebp+12]
call HLOADVREG
add esp, 16
sub esp, 12
push dword ptr [ebp+16]
call HLOADVREG
add esp, 16
cmp dword ptr [ebp+8], 107
jne .Lt_0460
.Lt_0461:
mov dword ptr [BUILTINS+4], -1
sub esp, 4
push 0
push 34
push dword ptr [ebp+12]
call _SETVREGDATATYPE
add esp, 16
sub esp, 4
push 0
push 8
push dword ptr [ebp+16]
call _SETVREGDATATYPE
add esp, 16
sub esp, 12
push 0
push 24
push offset Lt_0462
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0463
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 7
push offset Lt_0464
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0465
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+16]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_045F
.Lt_0460:
cmp dword ptr [ebp+8], 105
jne .Lt_0466
.Lt_0467:
mov dword ptr [BUILTINS+12], -1
sub esp, 4
push 0
push 34
push dword ptr [ebp+12]
call _SETVREGDATATYPE
add esp, 16
sub esp, 4
push 0
push 34
push dword ptr [ebp+16]
call _SETVREGDATATYPE
add esp, 16
sub esp, 12
push 0
push 30
push offset Lt_0468
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0463
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0463
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+16]
call HVREGTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0465
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call fb_ULongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0466:
.Lt_045F:
sub esp, 12
push 0
push 18
push offset Lt_0469
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_044F:
mov esp, ebp
pop ebp
ret
.size _EMITMEM, .-_EMITMEM
.balign 16
_EMITMACRO:
.type _EMITMACRO, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_046A:
.Lt_046B:
mov esp, ebp
pop ebp
ret
.size _EMITMACRO, .-_EMITMACRO
.balign 16
_EMITDECL:
.type _EMITDECL, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_046C:
.Lt_046D:
mov esp, ebp
pop ebp
ret
.size _EMITDECL, .-_EMITDECL
.balign 16
_EMITDBG:
.type _EMITDBG, @function
push ebp
mov ebp, esp
sub esp, 72
.Lt_046E:
cmp dword ptr [ebp+8], 113
jne .Lt_0471
cmp dword ptr [ebp+20], 0
je .Lt_0473
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0137
push -1
sub esp, 4
push -1
sub esp, 4
push offset Lt_0476
push offset Lt_013A
push dword ptr [ebp+20]
call HREPLACE
add esp, 16
push eax
push -1
sub esp, 4
push 3
push offset Lt_0475
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 16
push eax
push 7
push offset Lt_0474
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
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0472
.Lt_0473:
sub esp, 12
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0137
push -1
sub esp, 4
push -1
sub esp, 4
push offset Lt_0476
push offset Lt_013A
lea eax, [ENV+280]
push eax
call HREPLACE
add esp, 16
push eax
push -1
sub esp, 4
push 3
push offset Lt_0475
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 16
push eax
push 7
push offset Lt_0474
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
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
.Lt_0472:
mov eax, dword ptr [ebp+16]
mov dword ptr [CTX+4], eax
.Lt_0471:
.Lt_0470:
.Lt_046F:
mov esp, ebp
pop ebp
ret
.size _EMITDBG, .-_EMITDBG
.balign 16
_EMITCOMMENT:
.type _EMITCOMMENT, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_0481:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push 3
push offset Lt_00AC
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
add esp, 20
lea eax, [ebp-24]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_0482:
mov esp, ebp
pop ebp
ret
.size _EMITCOMMENT, .-_EMITCOMMENT
.balign 16
_EMITASMLINE:
.type _EMITASMLINE, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_0485:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.Lt_0487:
cmp dword ptr [ebp-16], 0
je .Lt_0488
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .Lt_048B
.Lt_048C:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+4]
push -1
lea ebx, [ebp-12]
push ebx
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea ebx, [ebp-32]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0489
.Lt_048B:
cmp dword ptr [ebp-20], 1
jne .Lt_048E
.Lt_048F:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
lea eax, [ebp-12]
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
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-40], ecx
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_0562
cmp dword ptr [ebp-40], 0
je .Lt_0492
.Lt_0562:
cmp dword ptr [ebp-36], 0
jl .Lt_0494
jg .Lt_0563
cmp dword ptr [ebp-40], 0
jbe .Lt_0494
.Lt_0563:
sub esp, 12
push 0
push 2
push offset Lt_00D2
push -1
lea ecx, [ebp-12]
push ecx
call fb_StrConcatAssign
add esp, 32
.Lt_0494:
.Lt_0493:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0492:
.Lt_0491:
.Lt_048E:
.Lt_0489:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebp-16], ecx
jmp .Lt_0487
.Lt_0488:
sub esp, 12
lea ecx, [ebp-12]
push ecx
call HWRITELINE
add esp, 16
sub esp, 12
lea ecx, [ebp-12]
push ecx
call fb_StrDelete
add esp, 16
.Lt_0486:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITASMLINE, .-_EMITASMLINE
.balign 16
_EMITVARINIBEGIN:
.type _EMITVARINIBEGIN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0495:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 11
push offset Lt_0497
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call HEMITSYMTYPE
add esp, 12
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00EE
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [CTX+20], 0
mov byte ptr [CTX+24], 0
.Lt_0496:
mov esp, ebp
pop ebp
ret
.size _EMITVARINIBEGIN, .-_EMITVARINIBEGIN
.balign 16
_EMITVARINIEND:
.type _EMITVARINIEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0498:
sub esp, 12
lea eax, [CTX+8]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+8]
push eax
call fb_StrAssign
add esp, 32
.Lt_0499:
mov esp, ebp
pop ebp
ret
.size _EMITVARINIEND, .-_EMITVARINIEND
.balign 16
HVARINIELEMENTTYPE:
.type HVARINIELEMENTTYPE, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_049A:
cmp dword ptr [CTX+20], 0
jle .Lt_049D
mov eax, offset CTX
add eax, dword ptr [CTX+20]
movsx ebx, byte ptr [eax+24]
test ebx, ebx
je .Lt_049F
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00EE
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call HEMITTYPE
add esp, 8
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [CTX+8]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_049E
.Lt_049F:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call HEMITSYMTYPE
add esp, 12
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00EE
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_049E:
.Lt_049D:
.Lt_049C:
.Lt_049B:
pop ebx
mov esp, ebp
pop ebp
ret
.size HVARINIELEMENTTYPE, .-HVARINIELEMENTTYPE
.balign 16
HVARINISEPARATOR:
.type HVARINISEPARATOR, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_04A2:
cmp dword ptr [CTX+20], 0
jle .Lt_04A5
sub esp, 12
push 0
push 3
push offset Lt_00FB
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_04A5:
.Lt_04A4:
.Lt_04A3:
mov esp, ebp
pop ebp
ret
.size HVARINISEPARATOR, .-HVARINISEPARATOR
.balign 16
_EMITVARINII:
.type _EMITVARINII, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_04A6:
sub esp, 12
push dword ptr [ebp+8]
call HVARINIELEMENTTYPE
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+16], 0
mov eax, -1
jne .Lt_0566
cmp dword ptr [ebp+12], 0
jne .Lt_0566
.Lt_0567:
xor eax, eax
.Lt_0566:
and ebx, eax
je .Lt_04A9
mov dword ptr [ebp+12], 1
mov dword ptr [ebp+16], 0
.Lt_04A9:
.Lt_04A8:
mov eax, dword ptr [ebp-4]
and eax, 480
je .Lt_04AA
mov dword ptr [ebp-8], 24
jmp .Lt_0564
.Lt_04AA:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0564:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .Lt_04AD
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HEMITLONG
add esp, 12
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_04AC
.Lt_04AD:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 4
mov eax, dword ptr [ebp+12]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call HEMITINT
add esp, 16
push eax
push -1
lea eax, [CTX+8]
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
lea eax, [CTX+8]
push eax
call fb_StrAssign
add esp, 32
.Lt_04AC:
call HVARINISEPARATOR
.Lt_04A7:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITVARINII, .-_EMITVARINII
.balign 16
_EMITVARINIF:
.type _EMITVARINIF, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_04AF:
sub esp, 12
push dword ptr [ebp+8]
call HVARINIELEMENTTYPE
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HEMITFLOAT
add esp, 12
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
call HVARINISEPARATOR
.Lt_04B0:
mov esp, ebp
pop ebp
ret
.size _EMITVARINIF, .-_EMITVARINIF
.balign 16
HMAYBEADDCONV:
.type HMAYBEADDCONV, @function
push ebp
mov ebp, esp
sub esp, 100
push ebx
.Lt_04B1:
mov eax, dword ptr [ebp+24]
cmp eax, dword ptr [ebp+12]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
cmp ebx, dword ptr [ebp+28]
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_04B4
jmp .Lt_04B2
.Lt_04B4:
.Lt_04B3:
sub esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call HGETCONVOPCODE
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_04B6
jmp .Lt_04B2
.Lt_04B6:
.Lt_04B5:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0294
push -1
sub esp, 4
push -1
push dword ptr [ebp+20]
push -1
sub esp, 4
push 5
push offset Lt_0293
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
push -1
sub esp, 4
push 2
push offset Lt_00EE
push -1
sub esp, 4
push -1
push dword ptr [ebp+32]
push -1
sub esp, 4
push 3
push offset Lt_04B7
push 0
push dword ptr [ebp-4]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
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
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_04B2:
pop ebx
mov esp, ebp
pop ebp
ret
.size HMAYBEADDCONV, .-HMAYBEADDCONV
.balign 16
_EMITVARINIOFS:
.type _EMITVARINIOFS, @function
push ebp
mov ebp, esp
sub esp, 308
push ebx
.Lt_04BF:
sub esp, 12
push dword ptr [ebp+8]
call HVARINIELEMENTTYPE
add esp, 16
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
sub esp, 12
push 0
push -1
sub esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-16]
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrInit
add esp, 32
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 32505856
or ebx, ecx
mov dword ptr [ebp-32], ebx
sub esp, 12
push 0
push -1
sub esp, 4
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
push dword ptr [ebp-32]
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ebp+20], 0
jne .Lt_056A
cmp dword ptr [ebp+16], 0
je .Lt_04C2
.Lt_056A:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push 9
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0294
push -1
sub esp, 4
push -1
lea eax, [ebp-68]
push eax
push -1
sub esp, 4
push 5
push offset Lt_0293
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 2
push offset Lt_00EE
push -1
sub esp, 4
push -1
lea eax, [ebp-44]
push eax
push 11
push offset Lt_04C3
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0294
push -1
sub esp, 4
push -1
sub esp, 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call fb_LongintToStr
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_00EE
push -1
sub esp, 4
push -1
lea eax, [ebp-68]
push eax
push -1
sub esp, 4
push 3
push offset Lt_00FB
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 2
push offset Lt_00EE
push -1
sub esp, 4
push -1
lea eax, [ebp-68]
push eax
push 6
push offset Lt_04CA
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0294
push -1
sub esp, 4
push -1
lea eax, [ebp-44]
push eax
push -1
sub esp, 4
push 5
push offset Lt_0293
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 2
push offset Lt_00EE
push -1
sub esp, 4
push -1
lea eax, [ebp-68]
push eax
push 11
push offset Lt_04D3
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
lea eax, [ebp-284]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
lea eax, [ebp-308]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
.Lt_04C2:
.Lt_04C1:
sub esp, 4
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
sub esp, 8
push 0
push -1
lea eax, [ebp-44]
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 28
lea eax, [ebp-56]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
push dword ptr [ebp-32]
lea eax, [ebp-28]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-16]
lea eax, [ebp-12]
push eax
call HMAYBEADDCONV
add esp, 32
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
call HVARINISEPARATOR
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_04C0:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITVARINIOFS, .-_EMITVARINIOFS
.balign 16
_EMITVARINISTR:
.type _EMITVARINISTR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_04DB:
cmp dword ptr [CTX+20], 0
jle .Lt_04DE
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push eax
call HEMITSTRLITTYPE
add esp, 12
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00EE
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_04DE:
.Lt_04DD:
sub esp, 12
push 0
push 3
push offset Lt_04DF
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 1
adc eax, 0
mov ecx, ebx
push ecx
sub esp, 8
push dword ptr [ebp+16]
call HUNESCAPE
add esp, 12
push eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
add ecx, 1
adc eax, 0
mov ebx, ecx
push ebx
lea ebx, [CTX+8]
push ebx
call HBUILDSTRLIT
add esp, 16
sub esp, 12
push 0
push 2
push offset Lt_0137
push -1
lea ebx, [CTX+8]
push ebx
call fb_StrConcatAssign
add esp, 32
call HVARINISEPARATOR
.Lt_04DC:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITVARINISTR, .-_EMITVARINISTR
.balign 16
_EMITVARINIWSTR:
.type _EMITVARINIWSTR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_04E0:
cmp dword ptr [CTX+20], 0
jle .Lt_04E3
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push eax
call HEMITSTRLITTYPE
add esp, 12
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00EE
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_04E3:
.Lt_04E2:
sub esp, 12
push 0
push 3
push offset Lt_04DF
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 1
adc eax, 0
mov ecx, ebx
push ecx
sub esp, 8
push dword ptr [ebp+16]
call HUNESCAPEW
add esp, 12
push eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
add ecx, 1
adc eax, 0
mov ebx, ecx
push ebx
lea ebx, [CTX+8]
push ebx
call HBUILDWSTRLIT
add esp, 16
sub esp, 12
push 0
push 2
push offset Lt_0137
push -1
lea ebx, [CTX+8]
push ebx
call fb_StrConcatAssign
add esp, 32
call HVARINISEPARATOR
.Lt_04E1:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITVARINIWSTR, .-_EMITVARINIWSTR
.balign 16
_EMITVARINIPAD:
.type _EMITVARINIPAD, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_04E4:
.Lt_04E5:
mov esp, ebp
pop ebp
ret
.size _EMITVARINIPAD, .-_EMITVARINIPAD
.balign 16
_EMITVARINISCOPEBEGIN:
.type _EMITVARINISCOPEBEGIN, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_04E6:
sub esp, 12
push dword ptr [ebp+8]
call HVARINIELEMENTTYPE
add esp, 16
inc dword ptr [CTX+20]
cmp dword ptr [CTX+20], 128
jl .Lt_04E9
sub esp, 4
push offset Lt_04ED
push 0
push 21
call ERRREPORT
add esp, 16
dec dword ptr [CTX+20]
.Lt_04E9:
.Lt_04E8:
mov al, byte ptr [ebp+12]
mov ebx, offset CTX
add ebx, dword ptr [CTX+20]
mov byte ptr [ebx+24], al
cmp dword ptr [ebp+12], 0
je .Lt_04EF
sub esp, 12
push 0
push 3
push offset Lt_04F0
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_04EE
.Lt_04EF:
sub esp, 12
push 0
push 3
push offset Lt_01CA
push -1
lea eax, [CTX+8]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_04EE:
.Lt_04E7:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITVARINISCOPEBEGIN, .-_EMITVARINISCOPEBEGIN
.balign 16
_EMITVARINISCOPEEND:
.type _EMITVARINISCOPEEND, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_04F1:
push 3
push offset Lt_00FB
push -1
sub esp, 12
push 2
lea eax, [CTX+8]
push eax
call fb_RIGHT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04F4
sub esp, 12
push 0
push -1
sub esp, 4
push -1
lea eax, [CTX+8]
push eax
call fb_StrLen
add esp, 8
add eax, -2
push eax
lea eax, [CTX+8]
push eax
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [CTX+8]
push eax
call fb_StrAssign
add esp, 32
.Lt_04F4:
.Lt_04F3:
mov eax, offset CTX
add eax, dword ptr [CTX+20]
movsx ebx, byte ptr [eax+24]
test ebx, ebx
je .Lt_04F6
sub esp, 12
push 0
push 3
push offset Lt_04F7
push -1
lea ebx, [CTX+8]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_04F5
.Lt_04F6:
sub esp, 12
push 0
push 3
push offset Lt_01D1
push -1
lea ebx, [CTX+8]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_04F5:
cmp dword ptr [CTX+20], 0
jle .Lt_04F9
dec dword ptr [CTX+20]
.Lt_04F9:
.Lt_04F8:
call HVARINISEPARATOR
.Lt_04F2:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITVARINISCOPEEND, .-_EMITVARINISCOPEEND
.balign 16
_EMITFBCTINFBEGIN:
.type _EMITFBCTINFBEGIN, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_04FA:
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_04FB:
mov esp, ebp
pop ebp
ret
.size _EMITFBCTINFBEGIN, .-_EMITFBCTINFBEGIN
.balign 16
_EMITFBCTINFSTRING:
.type _EMITFBCTINFSTRING, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_04FD:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 4
push offset Lt_0140
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [CTX+184]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [CTX+184]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
add eax, dword ptr [CTX+196]
inc eax
mov dword ptr [CTX+196], eax
.Lt_04FE:
mov esp, ebp
pop ebp
ret
.size _EMITFBCTINFSTRING, .-_EMITFBCTINFSTRING
.balign 16
_EMITFBCTINFEND:
.type _EMITFBCTINFEND, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_0501:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
push 32
push offset Lt_0503
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [CTX+196]
call HEMITSTRLITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0197
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [CTX+184]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0137
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 21
push offset Lt_0506
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
push 0
push 41
push offset Lt_0507
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_016C
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 14
push offset Lt_0508
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [CTX+196]
call HEMITSTRLITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 21
push offset Lt_0509
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0184
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 26
push offset Lt_050A
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+184]
push eax
call fb_StrAssign
add esp, 32
mov dword ptr [CTX+196], 0
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_0502:
mov esp, ebp
pop ebp
ret
.size _EMITFBCTINFEND, .-_EMITFBCTINFEND
.balign 16
_EMITPROCBEGIN:
.type _EMITPROCBEGIN, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_050B:
call IRHLEMITPROCBEGIN
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 0
push 8
push offset Lt_050E
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 256
test ebx, ebx
je .Lt_0510
sub esp, 12
push 0
push 11
push offset Lt_0511
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_050F
.Lt_0510:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 64
test eax, eax
je .Lt_0512
sub esp, 12
push 0
push 9
push offset Lt_0513
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0512:
.Lt_050F:
sub esp, 12
push 0
push -1
push 0
push 0
push dword ptr [ebp+8]
call HEMITPROCHEADER
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 2
push offset Lt_0514
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
inc dword ptr [CTX]
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_050C:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITPROCBEGIN, .-_EMITPROCBEGIN
.balign 16
_EMITPROCEND:
.type _EMITPROCEND, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0516:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
jne .Lt_0519
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 9
push offset Lt_051A
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-24]
push ebx
call HWRITELINE
add esp, 16
sub esp, 12
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 16
.Lt_0519:
.Lt_0518:
dec dword ptr [CTX]
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset Lt_051C
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-12]
push ebx
call HWRITELINE
add esp, 16
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 16
call IRHLEMITPROCEND
.Lt_0517:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITPROCEND, .-_EMITPROCEND
.balign 16
_EMITSCOPEBEGIN:
.type _EMITSCOPEBEGIN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_051E:
.Lt_051F:
mov esp, ebp
pop ebp
ret
.size _EMITSCOPEBEGIN, .-_EMITSCOPEBEGIN
.balign 16
_EMITSCOPEEND:
.type _EMITSCOPEEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0520:
.Lt_0521:
mov esp, ebp
pop ebp
ret
.size _EMITSCOPEEND, .-_EMITSCOPEEND
.balign 16
_GLOBAL__I:
.type _GLOBAL__I, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0523:
sub esp, 12
push offset CTX
call _ZN13IRLLVMCONTEXTC1Ev
add esp, 16
.Lt_0524:
mov esp, ebp
pop ebp
ret
.size _GLOBAL__I, .-_GLOBAL__I
.balign 16
_GLOBAL__D:
.type _GLOBAL__D, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0526:
sub esp, 12
push offset CTX
call _ZN13IRLLVMCONTEXTD1Ev
add esp, 16
.Lt_0527:
mov esp, ebp
pop ebp
ret
.size _GLOBAL__D, .-_GLOBAL__D

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0007:	.ascii	".\0"

.section .data
.balign 4

.globl IRLLVM_VTBL
IRLLVM_VTBL:
.int _INIT
.int _END
.int _EMITBEGIN
.int _EMITEND
.int _GETOPTIONVALUE
.int _SUPPORTSOP
.int _PROCBEGIN
.int _PROCEND
.int _PROCALLOCARG
.int _PROCALLOCLOCAL
.long 0
.int _SCOPEBEGIN
.int _SCOPEEND
.int _PROCALLOCSTATICVARS
.int _EMITCONVERT
.int _EMITLABEL
.int _EMITLABEL
.long 0
.int _EMITPROCBEGIN
.int _EMITPROCEND
.int IRHLEMITPUSHARG
.int _EMITASMLINE
.int _EMITCOMMENT
.int _EMITBOP
.int _EMITUOP
.int _EMITSTORE
.int _EMITSPILLREGS
.int _EMITLOAD
.int _EMITLOADRES
.long 0
.int _EMITADDR
.int _EMITCALL
.int _EMITCALLPTR
.long 0
.int _EMITJUMPPTR
.int _EMITBRANCH
.int _EMITJMPTB
.int _EMITMEM
.int _EMITMACRO
.int _EMITSCOPEBEGIN
.int _EMITSCOPEEND
.int _EMITDECL
.int _EMITDBG
.int _EMITVARINIBEGIN
.int _EMITVARINIEND
.int _EMITVARINII
.int _EMITVARINIF
.int _EMITVARINIOFS
.int _EMITVARINISTR
.int _EMITVARINIWSTR
.int _EMITVARINIPAD
.int _EMITVARINISCOPEBEGIN
.int _EMITVARINISCOPEEND
.int _EMITFBCTINFBEGIN
.int _EMITFBCTINFSTRING
.int _EMITFBCTINFEND
.int IRHLALLOCVREG
.int IRHLALLOCVRIMM
.int IRHLALLOCVRIMMF
.int IRHLALLOCVRVAR
.int IRHLALLOCVRIDX
.int IRHLALLOCVRPTR
.int IRHLALLOCVROFS
.int _SETVREGDATATYPE
.long 0
.long 0
.long 0
.long 0

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
BUILTINS:
.int Lt_006A
.skip 4,0
.int Lt_006B
.skip 4,0
.int Lt_006C
.skip 4,0
.int Lt_006D
.skip 4,0
.int Lt_006E
.skip 4,0
.int Lt_006F
.skip 4,0
.int Lt_0070
.skip 4,0
.int Lt_0071
.skip 4,0
.int Lt_0072
.skip 4,0
.int Lt_0073
.skip 4,0
.int Lt_0074
.skip 4,0
.int Lt_0075
.skip 4,0
.int Lt_0076
.skip 4,0
.int Lt_0077
.skip 4,0
.int Lt_0078
.skip 4,0
.int Lt_0079
.skip 4,0
.int Lt_007A
.skip 4,0
.int Lt_007B
.skip 4,0

.section .rodata
.balign 4
Lt_006A:	.ascii	"declare void @llvm.memset.p0i8.i32(i8*, i8, i32, i32, i1) nounwind\0"
.balign 4
Lt_006B:	.ascii	"declare void @llvm.memmove.p0i8.p0i8.i32(i8*, i8*, i32, i32, i1) nounwind\0"
.balign 4
Lt_006C:	.ascii	"declare float  @llvm.sin.f32(float ) nounwind\0"
.balign 4
Lt_006D:	.ascii	"declare double @llvm.sin.f64(double) nounwind\0"
.balign 4
Lt_006E:	.ascii	"declare float  @llvm.cos.f32(float ) nounwind\0"
.balign 4
Lt_006F:	.ascii	"declare double @llvm.cos.f64(double) nounwind\0"
.balign 4
Lt_0070:	.ascii	"declare float  @llvm.exp.f32(float ) nounwind\0"
.balign 4
Lt_0071:	.ascii	"declare double @llvm.exp.f64(double) nounwind\0"
.balign 4
Lt_0072:	.ascii	"declare float  @llvm.log.f32(float ) nounwind\0"
.balign 4
Lt_0073:	.ascii	"declare double @llvm.log.f64(double) nounwind\0"
.balign 4
Lt_0074:	.ascii	"declare float  @llvm.sqrt.f32(float ) nounwind\0"
.balign 4
Lt_0075:	.ascii	"declare double @llvm.sqrt.f64(double) nounwind\0"
.balign 4
Lt_0076:	.ascii	"declare float  @llvm.floor.f32(float ) nounwind\0"
.balign 4
Lt_0077:	.ascii	"declare double @llvm.floor.f64(double) nounwind\0"
.balign 4
Lt_0078:	.ascii	"declare float  @llvm.fabs.f32(float ) nounwind\0"
.balign 4
Lt_0079:	.ascii	"declare double @llvm.fabs.f64(double) nounwind\0"
.balign 4
Lt_007A:	.ascii	"declare float  @llvm.nearbyint.f32(float ) nounwind\0"
.balign 4
Lt_007B:	.ascii	"declare double @llvm.nearbyint.f64(double) nounwind\0"

.section .bss
.balign 4
	.lcomm	CTX,240

.section .data
.balign 4
DTYPENAME:
.int Lt_0089
.int Lt_0089
.int Lt_0089
.int Lt_0089
.int Lt_0089
.int Lt_008A
.int Lt_008A
.long 0
.long 0
.long 0
.long 0
.int Lt_008B
.int Lt_008B
.int Lt_008C
.int Lt_008C
.int Lt_008D
.int Lt_008E
.int Lt_008F
.int Lt_0089
.long 0
.long 0
.long 0
.int Lt_0089
.long 0
.skip 8,0

.section .rodata
.balign 4
Lt_0089:	.ascii	"i8\0"
.balign 4
Lt_008A:	.ascii	"i16\0"
.balign 4
Lt_008B:	.ascii	"i32\0"
.balign 4
Lt_008C:	.ascii	"i64\0"
.balign 4
Lt_008D:	.ascii	"float\0"
.balign 4
Lt_008E:	.ascii	"double\0"
.balign 4
Lt_008F:	.ascii	"%FBSTRING\0"
.balign 4
Lt_009C:	.ascii	"\t\0"
.balign 4
Lt_009E:	.ascii	"\n\0"
.balign 4
Lt_00AC:	.ascii	"; \0"
.balign 4
Lt_00B4:	.ascii	":\0"
.balign 4
Lt_00C9:	.ascii	"vr\0"
.balign 4
Lt_00D2:	.ascii	"+\0"
.balign 4
Lt_00DA:	.ascii	"*\0"
.balign 4
Lt_00DF:	.ascii	"$\0"
.balign 4
Lt_00E9:	.ascii	"x86_stdcallcc \0"
.balign 4
Lt_00EE:	.ascii	" \0"
.balign 4
Lt_00F2:	.ascii	"( \0"
.balign 4
Lt_00FB:	.ascii	", \0"
.balign 4
Lt_0102:	.ascii	"...\0"
.balign 4
Lt_010B:	.ascii	" )\0"
.balign 4
Lt_010E:	.ascii	" nounwind\0"
.balign 4
Lt_0111:	.ascii	" naked\0"
.balign 4
Lt_0114:	.ascii	"%\0"
.balign 4
Lt_0128:	.ascii	" = type \0"
.balign 4
Lt_0137:	.ascii	"\"\0"
.balign 4
Lt_013A:	.ascii	"\\\0"
.balign 4
Lt_0140:	.ascii	"\\00\0"
.balign 4
Lt_016C:	.ascii	"[\0"
.balign 4
Lt_016D:	.ascii	" x i8]\0"
.balign 4
Lt_0183:	.ascii	" x \0"
.balign 4
Lt_0184:	.ascii	"]\0"
.balign 4
Lt_0194:	.ascii	" = \0"
.balign 4
Lt_0196:	.ascii	"private constant \0"
.balign 4
Lt_0197:	.ascii	" c\"\0"
.balign 4
Lt_01A7:	.ascii	"global\0"
.balign 4
Lt_01A8:	.ascii	"alloca\0"
.balign 4
Lt_01AB:	.ascii	" zeroinitializer\0"
.balign 4
Lt_01B8:	.ascii	"declare \0"
.balign 4
Lt_01C9:	.ascii	"<\0"
.balign 4
Lt_01CA:	.ascii	"{ \0"
.balign 4
Lt_01D1:	.ascii	" }\0"
.balign 4
Lt_01D4:	.ascii	">\0"
.balign 4
Lt_01DA:	.ascii	"{ i32, void ()* } { i32 \0"
.balign 4
Lt_01DD:	.ascii	", void ()* \0"
.balign 4
Lt_01F6:	.ascii	"%FBSTRING = type { i8*, i64, i64 }\0"
.balign 4
Lt_01F8:	.ascii	"%FBSTRING = type { i8*, i32, i32 }\0"
.balign 4
Lt_0207:	.ascii	"@llvm.global_ctors = appending global [\0"
.balign 4
Lt_0208:	.ascii	" x { i32, void ()* }] [\0"
.balign 4
Lt_0210:	.ascii	"@llvm.global_dtors = appending global [\0"
.balign 4
Lt_0224:	.ascii	"_GETOPTIONVALUE\0"
.balign 4
Lt_0236:	.ascii	"paramvar \0"
.balign 4
Lt_0239:	.ascii	" = alloca \0"
.balign 4
Lt_023B:	.ascii	"store \0"
.balign 4
Lt_0241:	.ascii	"localvar \0"
.balign 4
Lt_0266:	.ascii	" = load \0"
.balign 4
Lt_0274:	.ascii	"void\0"
.balign 4
Lt_0290:	.ascii	"inttoptr \0"
.balign 4
Lt_0291:	.ascii	"trunc \0"
.balign 4
Lt_0292:	.ascii	"(\0"
.balign 4
Lt_0293:	.ascii	" to \0"
.balign 4
Lt_0294:	.ascii	")\0"
.balign 4
Lt_0299:	.ascii	"0x\0"
.balign 4
Lt_02B5:	.ascii	"%vr\0"
.balign 4
Lt_02BA:	.ascii	"bitcast (\0"
.balign 4
Lt_02BB:	.ascii	"* \0"
.balign 4
Lt_02C0:	.ascii	"label \0"
.balign 4
Lt_02C3:	.ascii	"br label %\0"
.balign 4
Lt_02D0:	.ascii	"fadd\0"
.balign 4
Lt_02D1:	.ascii	"add\0"
.balign 4
Lt_02D7:	.ascii	"fsub\0"
.balign 4
Lt_02D8:	.ascii	"sub\0"
.balign 4
Lt_02DE:	.ascii	"fmul\0"
.balign 4
Lt_02DF:	.ascii	"mul\0"
.balign 4
Lt_02E1:	.ascii	"fdiv\0"
.balign 4
Lt_02E3:	.ascii	"sdiv\0"
.balign 4
Lt_02E9:	.ascii	"frem\0"
.balign 4
Lt_02EA:	.ascii	"srem\0"
.balign 4
Lt_02EC:	.ascii	"shl\0"
.balign 4
Lt_02EE:	.ascii	"ashr\0"
.balign 4
Lt_02F0:	.ascii	"and\0"
.balign 4
Lt_02F2:	.ascii	"or\0"
.balign 4
Lt_02F4:	.ascii	"xor\0"
.balign 4
Lt_02F6:	.ascii	"icmp eq\0"
.balign 4
Lt_02F8:	.ascii	"icmp ne\0"
.balign 4
Lt_02FA:	.ascii	"icmp sgt\0"
.balign 4
Lt_02FC:	.ascii	"icmp slt\0"
.balign 4
Lt_02FE:	.ascii	"icmp sge\0"
.balign 4
Lt_0300:	.ascii	"icmp sle\0"
.balign 4
Lt_0302:	.ascii	"eqv\0"
.balign 4
Lt_0304:	.ascii	"imp\0"
.balign 4
Lt_030D:	.ascii	"br i1 \0"
.balign 4
Lt_030F:	.ascii	"label %\0"
.balign 4
Lt_0316:	.ascii	" = sext \0"
.balign 4
Lt_0317:	.ascii	"i1 \0"
.balign 4
Lt_0323:	.ascii	"branchbop \0"
.balign 4
Lt_0327:	.ascii	"selfbop \0"
.balign 4
Lt_032A:	.ascii	"bop \0"
.balign 4
Lt_032F:	.ascii	" = call \0"
.balign 4
Lt_0332:	.ascii	"float @llvm.\0"
.balign 4
Lt_0336:	.ascii	"fabs\0"
.balign 4
Lt_0339:	.ascii	"sin\0"
.balign 4
Lt_033C:	.ascii	"cos\0"
.balign 4
Lt_033F:	.ascii	"exp\0"
.balign 4
Lt_0342:	.ascii	"log\0"
.balign 4
Lt_0345:	.ascii	"sqrt\0"
.balign 4
Lt_0348:	.ascii	"floor\0"
.balign 4
Lt_034A:	.ascii	".f32(float \0"
.balign 4
Lt_034B:	.ascii	"double @llvm.\0"
.balign 4
Lt_035C:	.ascii	".f64(double \0"
.balign 4
Lt_0363:	.ascii	"selfuop \0"
.balign 4
Lt_0366:	.ascii	"uop \0"
.balign 4
Lt_0381:	.ascii	"fptrunc\0"
.balign 4
Lt_0382:	.ascii	"fpext\0"
.balign 4
Lt_0387:	.ascii	"sitofp\0"
.balign 4
Lt_0388:	.ascii	"uitofp\0"
.balign 4
Lt_0391:	.ascii	"fptosi\0"
.balign 4
Lt_0392:	.ascii	"fptoui\0"
.balign 4
Lt_0399:	.ascii	"bitcast\0"
.balign 4
Lt_039A:	.ascii	"inttoptr\0"
.balign 4
Lt_039C:	.ascii	"ptrtoint\0"
.balign 4
Lt_03AF:	.ascii	"trunc\0"
.balign 4
Lt_03B2:	.ascii	"sext\0"
.balign 4
Lt_03B3:	.ascii	"zext\0"
.balign 4
Lt_03C1:	.ascii	"float @llvm.nearbyint.f32(float \0"
.balign 4
Lt_03C2:	.ascii	"double @llvm.nearbyint.f64(double \0"
.balign 4
Lt_03D0:	.ascii	"conv \0"
.balign 4
Lt_03D1:	.ascii	" => \0"
.balign 4
Lt_03DE:	.ascii	" := \0"
.balign 4
Lt_03E9:	.ascii	"loadres \0"
.balign 4
Lt_03EC:	.ascii	"ret \0"
.balign 4
Lt_03F6:	.ascii	"addrof \0"
.balign 4
Lt_03FB:	.ascii	"deref \0"
.balign 4
Lt_040A:	.ascii	"call \0"
.balign 4
Lt_040B:	.ascii	"void \0"
.balign 4
Lt_0412:	.ascii	"arg \0"
.balign 4
Lt_0421:	.ascii	"()\0"
.balign 4
Lt_0427:	.ascii	"callptr \0"
.balign 4
Lt_042D:	.ascii	"jumpptr \0"
.balign 4
Lt_0430:	.ascii	"goto *\0"
.balign 4
Lt_0435:	.ascii	"goto \0"
.balign 4
Lt_043C:	.ascii	"jmptb \0"
.balign 4
Lt_043F:	.ascii	"switch \0"
.balign 4
Lt_0450:	.ascii	"call void \0"
.balign 4
Lt_0454:	.ascii	"memclear \0"
.balign 4
Lt_0459:	.ascii	"memmove \0"
.balign 4
Lt_045A:	.ascii	" <= \0"
.balign 4
Lt_0462:	.ascii	"@llvm.memset.p0i8.i32( \0"
.balign 4
Lt_0463:	.ascii	"i8* \0"
.balign 4
Lt_0464:	.ascii	"i8 0, \0"
.balign 4
Lt_0465:	.ascii	"i32 \0"
.balign 4
Lt_0468:	.ascii	"@llvm.memmove.p0i8.p0i8.i32( \0"
.balign 4
Lt_0469:	.ascii	"i32 1, i1 false )\0"
.balign 4
Lt_0474:	.ascii	"#line \0"
.balign 4
Lt_0475:	.ascii	" \"\0"
.balign 4
Lt_0476:	.ascii	"\\\\\0"
.balign 4
Lt_0497:	.ascii	" = global \0"
.balign 4
Lt_04B7:	.ascii	" (\0"
.balign 4
Lt_04C3:	.ascii	"ptrtoint (\0"
.balign 4
Lt_04CA:	.ascii	"add (\0"
.balign 4
Lt_04D3:	.ascii	"inttoptr (\0"
.balign 4
Lt_04DF:	.ascii	"c\"\0"
.balign 4
Lt_04ED:	.ascii	"global variable/array initializer nesting level too deep (MAXVARINISCOPES=128)\0"
.balign 4
Lt_04F0:	.ascii	"[ \0"
.balign 4
Lt_04F7:	.ascii	" ]\0"
.balign 4
Lt_0503:	.ascii	"@__fbctinf = internal constant \0"
.balign 4
Lt_0506:	.ascii	", section \".fbctinf\"\0"
.balign 4
Lt_0507:	.ascii	"@llvm.used = appending global [1 x i8*] \0"
.balign 4
Lt_0508:	.ascii	"i8* bitcast (\0"
.balign 4
Lt_0509:	.ascii	"* @__fbctinf to i8*)\0"
.balign 4
Lt_050A:	.ascii	", section \"llvm.metadata\"\0"
.balign 4
Lt_050E:	.ascii	"define \0"
.balign 4
Lt_0511:	.ascii	"dllexport \0"
.balign 4
Lt_0513:	.ascii	"private \0"
.balign 4
Lt_0514:	.ascii	"{\0"
.balign 4
Lt_051A:	.ascii	"ret void\0"
.balign 4
Lt_051C:	.ascii	"}\0"

.section .ctors, "aw", @progbits
.int fb_ctor__irzllvm
.int _GLOBAL__I

.section .dtors, "aw", @progbits
.int _GLOBAL__D
