	.intel_syntax noprefix

.section .text
.balign 16
fb_ctor__irzhlc:
.type fb_ctor__irzhlc, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__irzhlc, .-fb_ctor__irzhlc
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
_ZN12SECTIONENTRYC1Ev:
.type _ZN12SECTIONENTRYC1Ev, @function
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 16
mov dword ptr [eax], 0
.Lt_0067:
.Lt_0068:
mov esp, ebp
pop ebp
ret
.size _ZN12SECTIONENTRYC1Ev, .-_ZN12SECTIONENTRYC1Ev
.balign 16
_ZN12SECTIONENTRYaSERKS_:
.type _ZN12SECTIONENTRYaSERKS_, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0069:
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
mov ecx, dword ptr [ebp+12]
add ecx, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
.Lt_006A:
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN12SECTIONENTRYaSERKS_, .-_ZN12SECTIONENTRYaSERKS_
.balign 16
_ZN12SECTIONENTRYD1Ev:
.type _ZN12SECTIONENTRYD1Ev, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_006D:
.Lt_006E:
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN12SECTIONENTRYD1Ev, .-_ZN12SECTIONENTRYD1Ev
.balign 16
_ZN8IRHLCCTXC1Ev:
.type _ZN8IRHLCCTXC1Ev, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], 0
.Lt_0075:
sub esp, 12
push dword ptr [ebp-8]
call _ZN12SECTIONENTRYC1Ev
add esp, 16
add dword ptr [ebp-8], 20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .Lt_0075
mov ebx, dword ptr [ebp+8]
add ebx, 2580
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2584
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2588
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2592
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2604
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2608
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 8
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 2640
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 2652
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 2656
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 2668
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 2680
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 8
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 2712
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
add ebx, 2724
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 8
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 2756
mov dword ptr [eax], 0
.Lt_0072:
.Lt_0073:
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN8IRHLCCTXC1Ev, .-_ZN8IRHLCCTXC1Ev
.balign 16
_ZN8IRHLCCTXaSERKS_:
.type _ZN8IRHLCCTXaSERKS_, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0077:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
lea eax, [ebx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.Lt_007A:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ZN12SECTIONENTRYaSERKS_
add esp, 16
add dword ptr [ebp-8], 20
add dword ptr [ebp-12], 20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .Lt_007A
mov eax, dword ptr [ebp+12]
add eax, 2580
mov ebx, dword ptr [ebp+8]
add ebx, 2580
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 2584
mov ebx, dword ptr [ebp+8]
add ebx, 2584
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 2588
mov ebx, dword ptr [ebp+8]
add ebx, 2588
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
sub esp, 12
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 2592
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2592
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 32
mov ecx, dword ptr [ebp+12]
add ecx, 2604
mov ebx, dword ptr [ebp+8]
add ebx, 2604
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
add eax, 2608
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 2608
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 8
rep movsd
pop esi
pop edi
pop ecx
sub esp, 12
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 2640
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2640
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 32
mov ecx, dword ptr [ebp+12]
add ecx, 2652
mov ebx, dword ptr [ebp+8]
add ebx, 2652
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 2656
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2656
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 2668
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2668
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
add eax, 2680
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 2680
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 8
rep movsd
pop esi
pop edi
pop ecx
sub esp, 12
push 0
push -1
mov ecx, dword ptr [ebp+12]
add ecx, 2712
lea ebx, [ecx]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 2712
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 32
mov ecx, dword ptr [ebp+8]
add ecx, 2724
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 2724
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 8
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+12]
add eax, 2756
mov ebx, dword ptr [ebp+8]
add ebx, 2756
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
.Lt_0078:
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN8IRHLCCTXaSERKS_, .-_ZN8IRHLCCTXaSERKS_
.balign 16
_ZN8IRHLCCTXD1Ev:
.type _ZN8IRHLCCTXD1Ev, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0082:
.Lt_0083:
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 2712
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp+8]
add ebx, 2668
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 2656
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp+8]
add ebx, 2640
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 2592
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
mov ebx, dword ptr [ebp+8]
add ebx, 2560
lea eax, [ebx]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], 0
.Lt_0085:
sub esp, 12
push dword ptr [ebp-8]
call _ZN12SECTIONENTRYD1Ev
add esp, 16
add dword ptr [ebp-8], -20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .Lt_0085
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN8IRHLCCTXD1Ev, .-_ZN8IRHLCCTXD1Ev
.balign 16
_INIT:
.type _INIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0096:
call IRHLINIT
push 6
push 4
push 8
lea eax, [CTX+2608]
push eax
call LISTINIT
add esp, 16
push 7
push 28
push 32
lea eax, [CTX+2680]
push eax
call LISTINIT
add esp, 16
push 6
push 8
push 8
lea eax, [CTX+2724]
push eax
call LISTINIT
add esp, 16
or dword ptr [IR+276], 131074
call FBIS64BIT
test eax, eax
je .Lt_0099
mov eax, dword ptr [DTYPENAME+52]
mov dword ptr [DTYPENAME+32], eax
mov eax, dword ptr [DTYPENAME+56]
mov dword ptr [DTYPENAME+36], eax
jmp .Lt_0098
.Lt_0099:
mov eax, dword ptr [DTYPENAME+44]
mov dword ptr [DTYPENAME+32], eax
mov eax, dword ptr [DTYPENAME+48]
mov dword ptr [DTYPENAME+36], eax
.Lt_0098:
.Lt_0097:
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
.Lt_009A:
sub esp, 12
lea eax, [CTX+2724]
push eax
call LISTEND
add esp, 16
sub esp, 12
lea eax, [CTX+2680]
push eax
call LISTEND
add esp, 16
sub esp, 12
lea eax, [CTX+2608]
push eax
call LISTEND
add esp, 16
call IRHLEND
.Lt_009B:
mov esp, ebp
pop ebp
ret
.size _END, .-_END
.balign 16
SECTIONBEGIN:
.type SECTIONBEGIN, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_009C:
inc dword ptr [CTX+2580]
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], -1
cmp dword ptr [CTX+2580], 0
jle .Lt_00A0
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebx-4]
mov dword ptr [eax+16], ecx
jmp .Lt_009F
.Lt_00A0:
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+16], 0
.Lt_009F:
.Lt_009D:
pop ebx
mov esp, ebp
pop ebp
ret
.size SECTIONBEGIN, .-SECTIONBEGIN
.balign 16
SECTIONWRITELINE:
.type SECTIONWRITELINE, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_00A1:
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .Lt_00A5
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
jle .Lt_00A7
sub esp, 12
push 0
push -1
sub esp, 4
push 1
push offset Lt_00A8
call fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call fb_StrFill2
add esp, 12
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
push dword ptr [ebp+8]
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
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
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_00A6
.Lt_00A7:
sub esp, 12
push 0
push -1
push dword ptr [ebp+8]
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
.Lt_00A6:
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], 0
jmp .Lt_00A4
.Lt_00A5:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
jle .Lt_00AB
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push 1
push offset Lt_00A8
call fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call fb_StrFill2
add esp, 16
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea ebx, [ebp-40]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 32
.Lt_00AB:
.Lt_00AA:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
push dword ptr [ebp+8]
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
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
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 32
.Lt_00A4:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00AE
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 32
.Lt_00A2:
pop ebx
mov esp, ebp
pop ebp
ret
.size SECTIONWRITELINE, .-SECTIONWRITELINE
.balign 16
SECTIONINDENT:
.type SECTIONINDENT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00B0:
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
inc dword ptr [ebx+16]
.Lt_00B1:
pop ebx
mov esp, ebp
pop ebp
ret
.size SECTIONINDENT, .-SECTIONINDENT
.balign 16
SECTIONUNINDENT:
.type SECTIONUNINDENT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00B2:
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
dec dword ptr [ebx+16]
.Lt_00B3:
pop ebx
mov esp, ebp
pop ebp
ret
.size SECTIONUNINDENT, .-SECTIONUNINDENT
.balign 16
SECTIONINSIDEPROC:
.type SECTIONINSIDEPROC, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00B4:
mov eax, dword ptr [CTX+2580]
cmp eax, 2
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_00B5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size SECTIONINSIDEPROC, .-SECTIONINSIDEPROC
.balign 16
SECTIONEND:
.type SECTIONEND, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00B6:
cmp dword ptr [CTX+2580], 0
jle .Lt_00B9
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx-20]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [CTX+2580]
imul eax, 20
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .Lt_00BB
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .Lt_00BD
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], 0
jmp .Lt_00BC
.Lt_00BD:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
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
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 32
.Lt_00BC:
.Lt_00BB:
.Lt_00BA:
.Lt_00B9:
.Lt_00B8:
dec dword ptr [CTX+2580]
.Lt_00B7:
pop ebx
mov esp, ebp
pop ebp
ret
.size SECTIONEND, .-SECTIONEND
.balign 16
SECTIONGOSUB:
.type SECTIONGOSUB, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00BF:
mov eax, dword ptr [CTX+2580]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [CTX+2580], eax
inc dword ptr [CTX+2584]
.Lt_00C0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size SECTIONGOSUB, .-SECTIONGOSUB
.balign 16
SECTIONRETURN:
.type SECTIONRETURN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00C1:
dec dword ptr [CTX+2584]
mov eax, dword ptr [ebp+8]
mov dword ptr [CTX+2580], eax
.Lt_00C2:
mov esp, ebp
pop ebp
ret
.size SECTIONRETURN, .-SECTIONRETURN
.balign 16
HWRITELINE:
.type HWRITELINE, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00C3:
mov eax, dword ptr [ebp+12]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ENV+148]
je .Lt_00C6
sub esp, 12
push 0
push 7
push offset Lt_00C7
push -1
push offset Lt_0753
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [CTX+2588]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_0753
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_00C8
push -1
push offset Lt_0753
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [CTX+2592]
push eax
push -1
push offset Lt_0753
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00C9
push -1
push offset Lt_0753
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push offset Lt_0753
call SECTIONWRITELINE
add esp, 16
.Lt_00C6:
.Lt_00C5:
sub esp, 12
push dword ptr [ebp+8]
call SECTIONWRITELINE
add esp, 16
.Lt_00C4:
mov esp, ebp
pop ebp
ret
.size HWRITELINE, .-HWRITELINE

.section .bss
.balign 4
	.lcomm	Lt_0753,12

.section .text
.balign 16
HUPDATECURRENTFILENAME:
.type HUPDATECURRENTFILENAME, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00CA:
sub esp, 12
push 0
push -1
push offset Lt_00CD
push offset Lt_00CC
push dword ptr [ebp+8]
call HREPLACE
add esp, 12
push eax
push -1
lea eax, [CTX+2592]
push eax
call fb_StrAssign
add esp, 32
.Lt_00CB:
mov esp, ebp
pop ebp
ret
.size HUPDATECURRENTFILENAME, .-HUPDATECURRENTFILENAME
.balign 16
HWRITESTATICASSERT:
.type HWRITESTATICASSERT, @function
push ebp
mov ebp, esp
sub esp, 56
.Lt_00CE:
mov eax, dword ptr [CTX+2604]
and eax, 64
test eax, eax
jne .Lt_00D1
or dword ptr [CTX+2604], 64
sub esp, 12
push 0
call SECTIONGOSUB
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
push -1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 85
push offset Lt_00D2
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call SECTIONRETURN
add esp, 16
.Lt_00D1:
.Lt_00D0:
sub esp, 8
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_00D5
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
push 21
push offset Lt_00D4
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
add esp, 28
push eax
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
.Lt_00CF:
mov esp, ebp
pop ebp
ret
.size HWRITESTATICASSERT, .-HWRITESTATICASSERT
.balign 16
HAPPENDCTORATTRIB:
.type HAPPENDCTORATTRIB, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_00D9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 196608
je .Lt_00DC
cmp dword ptr [ebp+16], 0
jne .Lt_00DE
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00DF
push -1
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
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_00DE:
.Lt_00DD:
sub esp, 12
push 0
push -1
sub esp, 8
push 17
push offset Lt_00E1
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
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 65536
je .Lt_00E4
sub esp, 12
push 0
push -1
sub esp, 8
push 12
push offset Lt_00E5
push -1
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
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
jmp .Lt_00E3
.Lt_00E4:
sub esp, 12
push 0
push -1
sub esp, 8
push 11
push offset Lt_00E7
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
.Lt_00E3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_00EA
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 3
push offset Lt_00EC
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp-4]
call fb_IntToStr
add esp, 16
push eax
push 3
push offset Lt_00EB
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
.Lt_00EA:
.Lt_00E9:
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_00F0
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
cmp dword ptr [ebp+16], 0
je .Lt_00F3
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00DF
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
.Lt_00F3:
.Lt_00F2:
.Lt_00DC:
.Lt_00DB:
.Lt_00DA:
pop ebx
mov esp, ebp
pop ebp
ret
.size HAPPENDCTORATTRIB, .-HAPPENDCTORATTRIB
.balign 16
HGETMANGLEDNAMEFORASM:
.type HGETMANGLEDNAMEFORASM, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00F5:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ENV+268]
and eax, dword ptr [ebp+12]
je .Lt_00F8
sub esp, 12
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
push 2
push offset Lt_00F9
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
.Lt_00F8:
.Lt_00F7:
call FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_00FC
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 1
jne .Lt_00FE
sub esp, 12
push 0
push 2
push offset Lt_00FF
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
sub esp, 4
push dword ptr [ebp+8]
call SYMBPROCCALCSTDCALLSUFFIXN
add esp, 8
push edx
push eax
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_00FE:
.Lt_00FD:
.Lt_00FC:
.Lt_00FB:
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
.Lt_00F6:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETMANGLEDNAMEFORASM, .-HGETMANGLEDNAMEFORASM
.balign 16
HNEEDALIAS:
.type HNEEDALIAS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0100:
mov dword ptr [ebp-4], 0
call FBGETCPUFAMILY
test eax, eax
je .Lt_0103
jmp .Lt_0101
.Lt_0103:
.Lt_0102:
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0107
.Lt_0108:
cmp dword ptr [ebp-8], 1
je .Lt_0107
.Lt_0109:
cmp dword ptr [ebp-8], 4
jne .Lt_0106
.Lt_0107:
jmp .Lt_0104
.Lt_0106:
jmp .Lt_0101
.Lt_010A:
.Lt_0104:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
je .Lt_010E
.Lt_010F:
cmp dword ptr [ebp-8], 4
jne .Lt_010D
.Lt_010E:
mov dword ptr [ebp-4], -1
jmp .Lt_010B
.Lt_010D:
cmp dword ptr [ebp-8], 1
jne .Lt_0110
.Lt_0111:
mov dword ptr [ebp-4], -1
.Lt_0110:
.Lt_010B:
.Lt_0101:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HNEEDALIAS, .-HNEEDALIAS
.balign 16
HEMITPROCHEADER:
.type HEMITPROCHEADER, @function
push ebp
mov ebp, esp
sub esp, 116
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0112:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0115
sub esp, 4
push -1
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HAPPENDCTORATTRIB
add esp, 16
.Lt_0115:
.Lt_0114:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
jne .Lt_0117
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 64
test ebx, ebx
je .Lt_0119
sub esp, 12
push 0
push 8
push offset Lt_011A
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_0119:
.Lt_0118:
.Lt_0117:
.Lt_0116:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+92]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+88]
call HEMITTYPE
add esp, 16
push eax
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
call FBGETCPUFAMILY
test eax, eax
jne .Lt_011D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-72], ebx
cmp dword ptr [ebp-72], 1
je .Lt_0121
.Lt_0122:
cmp dword ptr [ebp-72], 2
je .Lt_0121
.Lt_0123:
cmp dword ptr [ebp-72], 4
jne .Lt_0120
.Lt_0121:
mov ebx, dword ptr [ENV+108]
mov dword ptr [ebp-76], ebx
cmp dword ptr [ebp-76], 0
je .Lt_0127
.Lt_0128:
cmp dword ptr [ebp-76], 4
jne .Lt_0126
.Lt_0127:
sub esp, 12
push 0
push 11
push offset Lt_0129
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0124
.Lt_0126:
sub esp, 12
push 0
push 26
push offset Lt_012B
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_012A:
.Lt_0124:
.Lt_0120:
.Lt_011E:
.Lt_011D:
.Lt_011C:
sub esp, 12
push 0
push 2
push offset Lt_00DF
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
and eax, 2
je .Lt_012D
sub esp, 12
push 0
push 3
push offset Lt_012E
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_012F
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_012C
.Lt_012D:
sub esp, 12
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_012C:
sub esp, 12
push 0
push 3
push offset Lt_00EB
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-60], 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBPROCRETURNSONSTACK
add esp, 16
test eax, eax
je .Lt_0131
mov eax, dword ptr [ebp+12]
and eax, 1
je .Lt_0133
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-60], ebx
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push dword ptr [ebp-60]
mov ebx, dword ptr [ebp-60]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 31
mov ebx, dword ptr [ebp-60]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp-60]
mov ebx, dword ptr [ecx+28]
and ebx, 511
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-60]
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
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0132
.Lt_0133:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-60], eax
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp-60]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-60]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 31
mov eax, dword ptr [ebp-60]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
add ebx, 32
or ecx, ebx
mov ebx, dword ptr [ebp-60]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ecx, eax
mov eax, dword ptr [ebp-60]
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
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
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
sub esp, 8
push -1
sub esp, 12
push 0
sub esp, 12
push dword ptr [ebp-60]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push 2
push offset Lt_00DF
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_0132:
mov eax, dword ptr [ebp+8]
movsx ecx, word ptr [eax+68]
test ecx, ecx
jle .Lt_0139
sub esp, 12
push 0
push 3
push offset Lt_013A
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 32
.Lt_0139:
.Lt_0138:
.Lt_0131:
.Lt_0130:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 4
jne .Lt_013B
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-64], eax
jmp .Lt_0756
.Lt_013B:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebp-64], ecx
.Lt_0756:
mov ecx, dword ptr [ebp-64]
mov dword ptr [ebp-68], ecx
cmp dword ptr [ebp-60], 0
sete cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-68], 0
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_013E
sub esp, 12
push 0
push 5
push offset Lt_0088
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_013E:
.Lt_013D:
.Lt_013F:
cmp dword ptr [ebp-68], 0
je .Lt_0140
mov eax, dword ptr [ebp-68]
cmp dword ptr [eax+56], 4
jne .Lt_0142
sub esp, 12
push 0
push 4
push offset Lt_0143
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0141
.Lt_0142:
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [eax+12]
and ecx, 524288
je .Lt_0145
sub esp, 12
push 0
push 7
push offset Lt_0146
push -1
lea ecx, [ebp-24]
push ecx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0144
.Lt_0145:
sub esp, 4
lea ecx, [ebp-44]
push ecx
lea ecx, [ebp-40]
push ecx
push dword ptr [ebp-68]
call _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
add esp, 16
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
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0144:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .Lt_0148
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 0
sub esp, 12
mov eax, dword ptr [ebp-68]
push dword ptr [eax+60]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push 2
push offset Lt_00DF
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_0148:
.Lt_0147:
.Lt_0141:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 4
jne .Lt_014B
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [eax+168]
mov dword ptr [ebp-72], ecx
jmp .Lt_0757
.Lt_014B:
mov ecx, dword ptr [ebp-68]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-72], eax
.Lt_0757:
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-68], eax
cmp dword ptr [ebp-68], 0
je .Lt_014E
sub esp, 12
push 0
push 3
push offset Lt_013A
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_014E:
.Lt_014D:
jmp .Lt_013F
.Lt_0140:
sub esp, 12
push 0
push 3
push offset Lt_00EC
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
and ecx, 1
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_0150
sub esp, 12
push dword ptr [ebp+8]
call HNEEDALIAS
add esp, 16
test eax, eax
je .Lt_0152
sub esp, 12
push 0
push 7
push offset Lt_0153
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
call HGETMANGLEDNAMEFORASM
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0154
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0152:
.Lt_0151:
sub esp, 4
push 0
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HAPPENDCTORATTRIB
add esp, 16
.Lt_0150:
.Lt_014F:
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
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
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
.size HEMITPROCHEADER, .-HEMITPROCHEADER
.balign 16
HGETUDTTAG:
.type HGETUDTTAG, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0155:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_0158
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
je .Lt_015A
sub esp, 12
push 0
push 7
push offset Lt_015B
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_0159
.Lt_015A:
sub esp, 12
push 0
push 8
push offset Lt_015C
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
.Lt_0159:
.Lt_0158:
.Lt_0157:
.Lt_0156:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETUDTTAG, .-HGETUDTTAG
.balign 16
HGETUDTID:
.type HGETUDTID, @function
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_015D:
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call SYMBGETVALISTTYPE
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
je .Lt_0162
.Lt_0163:
cmp dword ptr [ebp-28], 4
je .Lt_0162
.Lt_0164:
cmp dword ptr [ebp-28], 5
jne .Lt_0161
.Lt_0162:
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
jmp .Lt_015E
.Lt_0161:
.Lt_015F:
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
push 2
push offset Lt_0165
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
.Lt_015E:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HGETUDTID, .-HGETUDTID
.balign 16
HGETUDTNAME:
.type HGETUDTNAME, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0167:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call HGETUDTTAG
add esp, 12
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
call HGETUDTID
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0168:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HGETUDTNAME, .-HGETUDTNAME
.balign 16
HEMITUDT:
.type HEMITUDT, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_0169:
cmp dword ptr [ebp+8], 0
jne .Lt_016C
jmp .Lt_016A
.Lt_016C:
.Lt_016B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
je .Lt_016E
jmp .Lt_016A
.Lt_016E:
.Lt_016D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
je .Lt_0170
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
inc ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
movzx eax, word ptr [ebx+36]
test eax, eax
jne .Lt_0172
inc dword ptr [ebp-4]
jmp .Lt_0171
.Lt_0172:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
jne .Lt_0173
inc dword ptr [ebp-4]
.Lt_0173:
.Lt_0171:
mov eax, dword ptr [CTX+2580]
cmp dword ptr [ebp-4], eax
jle .Lt_0175
mov eax, dword ptr [CTX+2580]
mov dword ptr [ebp-4], eax
.Lt_0175:
.Lt_0174:
jmp .Lt_016F
.Lt_0170:
mov dword ptr [ebp-4], 0
.Lt_016F:
sub esp, 12
push dword ptr [ebp-4]
call SECTIONGOSUB
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_0177
.Lt_0179:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 67108864
sub esp, 8
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call HGETUDTNAME
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_00DF
push -1
sub esp, 4
push -1
sub esp, 8
push 0
push 10
call HEMITTYPE
add esp, 16
push eax
push 9
push offset Lt_017A
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
add esp, 24
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 24
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
lea eax, [ebp-68]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0176
.Lt_0181:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEMITSTRUCT
add esp, 16
jmp .Lt_0176
.Lt_0182:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .Lt_0184
sub esp, 12
push 0
push -1
sub esp, 4
push 3
push dword ptr [ebp+8]
call HEMITPROCHEADER
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
jne .Lt_0186
sub esp, 8
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
sub esp, 4
push -1
lea ebx, [ebp-20]
push ebx
push 9
push offset Lt_017A
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea ebx, [ebp-32]
push ebx
call fb_StrConcat
add esp, 24
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
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 67108864
.Lt_0186:
.Lt_0185:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.Lt_0184:
.Lt_0183:
jmp .Lt_0176
.Lt_0177:
mov eax, dword ptr [ebp-8]
add eax, 4294967293
cmp eax, 7
ja .Lt_0176
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_018A+eax*4-12]
.LT_018A:
.int .Lt_0182
.int .Lt_0176
.int .Lt_0176
.int .Lt_0176
.int .Lt_0176
.int .Lt_0176
.int .Lt_0179
.int .Lt_0181
.Lt_0176:
sub esp, 12
push dword ptr [ebp-4]
call SECTIONRETURN
add esp, 16
.Lt_016A:
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITUDT, .-HEMITUDT
.balign 16
HEMITARRAYDECL:
.type HEMITARRAYDECL, @function
push ebp
mov ebp, esp
sub esp, 80
push ebx
push esi
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_018B:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_018E
sub esp, 12
lea ebx, [ebp-24]
push ebx
call fb_StrDelete
add esp, 16
jmp .Lt_018C
.Lt_018E:
.Lt_018D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
je .Lt_0192
.Lt_0193:
cmp dword ptr [ebp-28], 12
jne .Lt_0191
.Lt_0192:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
jne .Lt_0195
mov dword ptr [ebp-32], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-36], eax
jmp .Lt_0197
.Lt_019A:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_019C
push -1
sub esp, 4
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-32]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-32]
sal eax, 4
mov esi, dword ptr [ebx+64]
add esi, eax
mov ebx, dword ptr [ecx+8]
mov eax, dword ptr [ecx+12]
sub ebx, dword ptr [esi]
sbb eax, dword ptr [esi+4]
add ebx, 1
adc eax, 0
push eax
push ebx
call fb_LongintToStr
add esp, 16
push eax
push 2
push offset Lt_019B
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
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_0198:
inc dword ptr [ebp-32]
.Lt_0197:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-32], eax
jle .Lt_019A
.Lt_0199:
.Lt_0195:
.Lt_0194:
.Lt_0191:
.Lt_018F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
jne .Lt_01A1
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 18
je .Lt_01A5
.Lt_01A6:
cmp dword ptr [ebp-36], 4
jne .Lt_01A4
.Lt_01A5:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-32], esi
mov dword ptr [ebp-28], ebx
jmp .Lt_01A2
.Lt_01A4:
cmp dword ptr [ebp-36], 7
jne .Lt_01A7
.Lt_01A8:
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov esi, ebx
sar esi, 31
push esi
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call __divdi3
add esp, 16
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], edx
.Lt_01A7:
.Lt_01A2:
cmp dword ptr [ebp-28], 0
jl .Lt_01AA
jg .Lt_075C
cmp dword ptr [ebp-32], 0
jbe .Lt_01AA
.Lt_075C:
sub esp, 12
push 0
push 2
push offset Lt_019B
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call fb_LongintToStr
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
push offset Lt_019C
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01AA:
.Lt_01A9:
.Lt_01A1:
.Lt_01A0:
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
.Lt_018C:
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
.size HEMITARRAYDECL, .-HEMITARRAYDECL
.balign 16
HEMITVARDECL:
.type HEMITVARDECL, @function
push ebp
mov ebp, esp
sub esp, 84
push ebx
.Lt_01AB:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_01AE
sub esp, 12
push 0
push 8
push offset Lt_01AF
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01AD
.Lt_01AE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 56
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_01B0
sub esp, 12
push 0
push 8
push offset Lt_011A
push -1
lea ecx, [ebp-12]
push ecx
call fb_StrConcatAssign
add esp, 32
.Lt_01B0:
.Lt_01AD:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
sub esp, 4
lea ecx, [ebp-20]
push ecx
lea ecx, [ebp-16]
push ecx
push dword ptr [ebp+12]
call SYMBGETREALTYPE
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+32]
push dword ptr [ebp-16]
call HEMITTYPE
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
push 2
push offset Lt_00DF
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-12]
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
sub esp, 8
push dword ptr [ebp+12]
call HEMITARRAYDECL
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
not eax
and ecx, eax
je .Lt_01B5
sub esp, 12
push 0
push 25
push offset Lt_01B6
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01B5:
.Lt_01B4:
cmp dword ptr [ebp+16], 0
je .Lt_01B8
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 0
push dword ptr [ebp+16]
push 4
push offset Lt_01B9
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
.Lt_01B8:
.Lt_01B7:
sub esp, 12
push 0
push 2
push offset Lt_017B
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
lea eax, [ebp-12]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_01AC:
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITVARDECL, .-HEMITVARDECL
.balign 16
HMAYBEEMITLOCALVAR:
.type HMAYBEEMITLOCALVAR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .Lt_01BF
jmp .Lt_01BD
.Lt_01BF:
.Lt_01BE:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 2
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_01C1
sub esp, 12
push dword ptr [ebp+8]
call IRHLFLUSHSTATICINITIALIZER
add esp, 16
jmp .Lt_01C0
.Lt_01C1:
sub esp, 4
push 0
push dword ptr [ebp+8]
push 0
call HEMITVARDECL
add esp, 16
.Lt_01C0:
.Lt_01BD:
pop ebx
mov esp, ebp
pop ebp
ret
.size HMAYBEEMITLOCALVAR, .-HMAYBEEMITLOCALVAR
.balign 16
HALLOCGLOBALVAR:
.type HALLOCGLOBALVAR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01C2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_01C5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_01C7
jmp .Lt_01C3
.Lt_01C7:
.Lt_01C6:
sub esp, 12
push dword ptr [ebp+8]
call IRHLFLUSHSTATICINITIALIZER
add esp, 16
jmp .Lt_01C4
.Lt_01C5:
sub esp, 4
push 0
push dword ptr [ebp+8]
push 0
call HEMITVARDECL
add esp, 16
.Lt_01C4:
.Lt_01C3:
pop ebx
mov esp, ebp
pop ebp
ret
.size HALLOCGLOBALVAR, .-HALLOCGLOBALVAR
.balign 16
HMAYBEEMITGLOBALVAR:
.type HMAYBEEMITGLOBALVAR, @function
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
.Lt_01C8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 16
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+12]
and esi, 2
test esi, esi
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ecx, esi
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx+4]
and esi, 16388
test esi, esi
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
je .Lt_01CB
jmp .Lt_01C9
.Lt_01CB:
.Lt_01CA:
mov esi, dword ptr [CTX+2756]
mov dword ptr [ebp-4], esi
cmp dword ptr [ebp-4], 1
jne .Lt_01CE
.Lt_01CF:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+4]
and ebx, 56
je .Lt_01D1
sub esp, 4
push 0
push dword ptr [ebp+8]
push -1
call HEMITVARDECL
add esp, 16
jmp .Lt_01D0
.Lt_01D1:
sub esp, 12
push dword ptr [ebp+8]
call HALLOCGLOBALVAR
add esp, 16
.Lt_01D0:
jmp .Lt_01CC
.Lt_01CE:
cmp dword ptr [ebp-4], 2
jne .Lt_01D2
.Lt_01D3:
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 40
je .Lt_01D5
sub esp, 12
push dword ptr [ebp+8]
call HALLOCGLOBALVAR
add esp, 16
.Lt_01D5:
.Lt_01D4:
.Lt_01D2:
.Lt_01CC:
.Lt_01C9:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HMAYBEEMITGLOBALVAR, .-HMAYBEEMITGLOBALVAR
.balign 16
HMAYBEEMITGLOBALVAREXCEPTDATASTMT:
.type HMAYBEEMITGLOBALVAREXCEPTDATASTMT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_01D6:
sub esp, 12
push dword ptr [ebp+8]
call SYMBISDATADESC
add esp, 16
test eax, eax
je .Lt_01D9
jmp .Lt_01D7
.Lt_01D9:
.Lt_01D8:
sub esp, 12
push dword ptr [ebp+8]
call HMAYBEEMITGLOBALVAR
add esp, 16
.Lt_01D7:
mov esp, ebp
pop ebp
ret
.size HMAYBEEMITGLOBALVAREXCEPTDATASTMT, .-HMAYBEEMITGLOBALVAREXCEPTDATASTMT
.balign 16
HMAYBEEMITPROCPROTO:
.type HMAYBEEMITPROCPROTO, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_01DA:
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
je .Lt_01DD
jmp .Lt_01DB
.Lt_01DD:
.Lt_01DC:
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
test eax, eax
jne .Lt_01DF
jmp .Lt_01DB
.Lt_01DF:
.Lt_01DE:
sub esp, 12
push 0
call SECTIONGOSUB
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
push 1
push dword ptr [ebp+8]
call HEMITPROCHEADER
add esp, 8
push eax
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
sub esp, 12
push dword ptr [ebp-4]
call SECTIONRETURN
add esp, 16
.Lt_01DB:
pop ebx
mov esp, ebp
pop ebp
ret
.size HMAYBEEMITPROCPROTO, .-HMAYBEEMITPROCPROTO
.balign 16
HEMITFIELDTYPES:
.type HEMITFIELDTYPES, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01E2:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_01E4:
cmp dword ptr [ebp-4], 0
je .Lt_01E5
sub esp, 8
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+32]
call HEMITUDT
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_01E4
.Lt_01E5:
.Lt_01E3:
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITFIELDTYPES, .-HEMITFIELDTYPES
.balign 16
HFINDPARENTANONALREADYONSTACK:
.type HFINDPARENTANONALREADYONSTACK, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01E6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+164]
mov dword ptr [ebp-12], ebx
.Lt_01E8:
sub esp, 12
lea ebx, [CTX+2608]
push ebx
call LISTGETTAIL
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_01EB:
cmp dword ptr [ebp-8], 0
je .Lt_01EC
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
cmp dword ptr [eax], ebx
jne .Lt_01EE
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_01E7
.Lt_01EE:
.Lt_01ED:
sub esp, 12
push dword ptr [ebp-8]
call LISTGETPREV
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_01EB
.Lt_01EC:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+164]
mov dword ptr [ebp-12], ebx
.Lt_01EA:
cmp dword ptr [ebp-12], 0
jne .Lt_01E8
.Lt_01E9:
mov dword ptr [ebp-4], 0
.Lt_01E7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HFINDPARENTANONALREADYONSTACK, .-HFINDPARENTANONALREADYONSTACK
.balign 16
HPUSHANONPARENTS:
.type HPUSHANONPARENTS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_01EF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp+12], eax
jne .Lt_01F2
jmp .Lt_01F0
.Lt_01F2:
.Lt_01F1:
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax+164]
push dword ptr [ebp+8]
call HPUSHANONPARENTS
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
je .Lt_01F4
sub esp, 8
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 8
push offset Lt_01F5
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
jmp .Lt_01F3
.Lt_01F4:
sub esp, 8
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 9
push offset Lt_01F7
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
.Lt_01F3:
call SECTIONINDENT
sub esp, 12
lea ebx, [CTX+2608]
push ebx
call LISTNEWNODE
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.Lt_01F0:
pop ebx
mov esp, ebp
pop ebp
ret
.size HPUSHANONPARENTS, .-HPUSHANONPARENTS
.balign 16
HPOPANONPARENTS:
.type HPOPANONPARENTS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_01F9:
.Lt_01FB:
sub esp, 12
lea eax, [CTX+2608]
push eax
call LISTGETTAIL
add esp, 16
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
je .Lt_01FC
call SECTIONUNINDENT
sub esp, 8
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 3
push offset Lt_01FD
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
sub esp, 8
sub esp, 4
lea ebx, [CTX+2608]
push ebx
call LISTGETTAIL
add esp, 8
push eax
lea eax, [CTX+2608]
push eax
call LISTDELNODE
add esp, 16
jmp .Lt_01FB
.Lt_01FC:
.Lt_01FA:
pop ebx
mov esp, ebp
pop ebp
ret
.size HPOPANONPARENTS, .-HPOPANONPARENTS
.balign 16
HEMITSTRUCTWITHFIELDS:
.type HEMITSTRUCTWITHFIELDS, @function
push ebp
mov ebp, esp
sub esp, 84
push ebx
.Lt_01FF:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_0201:
cmp dword ptr [ebp-20], 0
je .Lt_0202
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+164], ebx
jne .Lt_0204
sub esp, 12
push 0
call HPOPANONPARENTS
add esp, 16
jmp .Lt_0203
.Lt_0204:
sub esp, 12
push dword ptr [ebp-20]
call HFINDPARENTANONALREADYONSTACK
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp-24]
call HPOPANONPARENTS
add esp, 16
sub esp, 8
mov eax, dword ptr [ebp-20]
push dword ptr [eax+164]
cmp dword ptr [ebp-24], 0
je .Lt_0205
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-40], ebx
jmp .Lt_076B
.Lt_0205:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-40], ebx
.Lt_076B:
push dword ptr [ebp-40]
call HPUSHANONPARENTS
add esp, 16
.Lt_0203:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0208
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-16], eax
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call HEMITTYPE
add esp, 12
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
mov eax, dword ptr [ebp-20]
push dword ptr [eax+16]
push 2
push offset Lt_00DF
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-36]
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
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-20]
call HEMITARRAYDECL
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+121]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jle .Lt_020C
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call TYPECALCNATURALALIGN
add esp, 16
mov ebx, dword ptr [ebp-12]
cmp ebx, eax
setge bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_020D
mov dword ptr [ebp-68], 24
jmp .Lt_076C
.Lt_020D:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-68], ebx
.Lt_076C:
cmp dword ptr [ebp-68], 20
jne .Lt_0210
mov ebx, dword ptr [ebp-16]
mov al, byte ptr [ebx+121]
mov byte ptr [ebp-72], al
movzx eax, byte ptr [ebp-72]
test eax, eax
jle .Lt_0212
movzx eax, byte ptr [ebp-72]
mov ebx, dword ptr [ebp-12]
cmp ebx, eax
setge bl
shr ebx, 1
sbb ebx, ebx
or dword ptr [ebp-4], ebx
.Lt_0212:
.Lt_0211:
.Lt_0210:
.Lt_020F:
cmp dword ptr [ebp-4], 0
jne .Lt_0214
sub esp, 12
push 0
push 33
push offset Lt_0215
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-12]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0216
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0214:
.Lt_0213:
.Lt_020C:
.Lt_020B:
cmp dword ptr [ebp-12], 0
jle .Lt_0217
mov eax, dword ptr [ebp-4]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .Lt_076D
.Lt_0217:
mov dword ptr [ebp-64], -1
.Lt_076D:
cmp dword ptr [ebp-64], 0
je .Lt_021A
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_021B
mov dword ptr [ebp-68], 24
jmp .Lt_076E
.Lt_021B:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-68], eax
.Lt_076E:
cmp dword ptr [ebp-68], 20
jne .Lt_021E
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call TYPECALCNATURALALIGN
add esp, 16
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-12], 0
jle .Lt_021F
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-72]
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-76], eax
jmp .Lt_076F
.Lt_021F:
mov dword ptr [ebp-76], 0
.Lt_076F:
cmp dword ptr [ebp-76], 0
je .Lt_0222
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-72], eax
.Lt_0222:
.Lt_0221:
mov eax, dword ptr [ebp-16]
mov bl, byte ptr [eax+121]
mov byte ptr [ebp-80], bl
movzx ebx, byte ptr [ebp-80]
test ebx, ebx
jle .Lt_0223
movzx ebx, byte ptr [ebp-80]
mov eax, dword ptr [ebp-72]
cmp eax, ebx
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-84], eax
jmp .Lt_0770
.Lt_0223:
mov dword ptr [ebp-84], 0
.Lt_0770:
cmp dword ptr [ebp-84], 0
je .Lt_0226
sub esp, 12
push 0
push 25
push offset Lt_0227
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-72]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0216
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0226:
.Lt_0225:
.Lt_021E:
.Lt_021D:
.Lt_021A:
.Lt_0219:
sub esp, 12
push 0
push 2
push offset Lt_017B
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-36]
push eax
call HWRITELINE
add esp, 16
.Lt_0208:
.Lt_0207:
sub esp, 12
push dword ptr [ebp-20]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp-20], eax
jmp .Lt_0201
.Lt_0202:
sub esp, 12
push 0
call HPOPANONPARENTS
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.Lt_0200:
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITSTRUCTWITHFIELDS, .-HEMITSTRUCTWITHFIELDS
.balign 16
HEMITSTRUCT:
.type HEMITSTRUCT, @function
push ebp
mov ebp, esp
sub esp, 132
push ebx
.Lt_0228:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 134217728
test ebx, ebx
je .Lt_022B
cmp dword ptr [ebp+12], 0
je .Lt_022D
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .Lt_022F
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 2
sub esp, 8
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
sub esp, 4
push dword ptr [ebp+8]
call HGETUDTNAME
add esp, 8
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
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 16
.Lt_022F:
.Lt_022E:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0229
.Lt_022D:
.Lt_022C:
.Lt_022B:
.Lt_022A:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 134217728
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 32768
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_0233
sub esp, 12
push dword ptr [ebp+8]
call HEMITFIELDTYPES
add esp, 16
.Lt_0233:
.Lt_0232:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 67108864
test eax, eax
je .Lt_0235
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0229
.Lt_0235:
.Lt_0234:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 67108864
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call HGETUDTTAG
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
movzx ecx, byte ptr [ebx+121]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_0237
sub esp, 12
push 0
push 29
push offset Lt_0238
push -1
lea ecx, [ebp-16]
push ecx
call fb_StrConcatAssign
add esp, 32
.Lt_0237:
.Lt_0236:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call HGETUDTID
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0239
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-16]
push eax
call HWRITELINE
add esp, 16
call SECTIONINDENT
cmp dword ptr [ebp-4], 0
je .Lt_023B
sub esp, 12
push dword ptr [ebp+8]
call HEMITSTRUCTWITHFIELDS
add esp, 16
jmp .Lt_023A
.Lt_023B:
sub esp, 8
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
sub esp, 8
push 3
push offset Lt_023D
push -1
sub esp, 4
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call fb_LongintToStr
add esp, 16
push eax
push 24
push offset Lt_023C
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
.Lt_023A:
call SECTIONUNINDENT
sub esp, 8
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 3
push offset Lt_01FD
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
mov eax, dword ptr [ebp+8]
and dword ptr [eax+12], -134217729
sub esp, 12
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call fb_ULongintToStr
add esp, 16
push eax
push -1
sub esp, 4
push 7
push offset Lt_0243
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call HGETUDTID
add esp, 16
push eax
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp+8]
call HGETUDTTAG
add esp, 16
push eax
push 9
push offset Lt_0242
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
add esp, 28
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITESTATICASSERT
add esp, 16
sub esp, 12
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_0229:
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITSTRUCT, .-HEMITSTRUCT
.balign 16
HWRITEX86F2I:
.type HWRITEX86F2I, @function
push ebp
mov ebp, esp
sub esp, 356
push ebx
.Lt_0249:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+16]
call HEMITTYPE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
cmp dword ptr [ENV+132], 1
jne .Lt_024C
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_024D
mov dword ptr [ebp-352], 24
jmp .Lt_077A
.Lt_024D:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-352], eax
.Lt_077A:
mov eax, dword ptr [ebp-352]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-356], ebx
cmp dword ptr [ebp-356], 4
jne .Lt_0251
.Lt_0252:
sub esp, 12
push 0
push 2
push offset Lt_0253
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_024F
.Lt_0251:
cmp dword ptr [ebp-356], 8
jne .Lt_0254
.Lt_0255:
sub esp, 12
push 0
push 2
push offset Lt_0256
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrAssign
add esp, 32
.Lt_0254:
.Lt_024F:
cmp dword ptr [ebp+16], 15
jne .Lt_0258
sub esp, 12
push 0
push 2
push offset Lt_0259
push -1
lea ebx, [ebp-48]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_0257
.Lt_0258:
sub esp, 12
push 0
push 2
push offset Lt_0253
push -1
lea ebx, [ebp-48]
push ebx
call fb_StrAssign
add esp, 32
.Lt_0257:
.Lt_024C:
.Lt_024B:
sub esp, 8
push -1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-60]
push ebx
call fb_StrAssign
add esp, 20
lea ebx, [ebp-60]
push ebx
call HWRITELINE
add esp, 16
sub esp, 12
lea ebx, [ebp-60]
push ebx
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
sub esp, 8
push 9
push offset Lt_025D
push -1
sub esp, 4
push -1
lea ebx, [ebp-24]
push ebx
push -1
sub esp, 4
push 3
push offset Lt_00EB
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
push -1
sub esp, 4
push 5
push offset Lt_025C
push -1
sub esp, 4
push -1
lea ebx, [ebp-12]
push ebx
push 15
push offset Lt_025B
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ebx, [ebp-72]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 24
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
lea eax, [ebp-144]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-144]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 2
push offset Lt_0265
push -1
lea eax, [ebp-156]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-156]
push eax
call fb_StrDelete
add esp, 16
call SECTIONINDENT
sub esp, 8
push -1
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
sub esp, 8
push 9
push offset Lt_0268
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 10
push offset Lt_0267
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-192]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-192]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 9
push offset Lt_026C
push -1
lea eax, [ebp-204]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-204]
push eax
call fb_StrDelete
add esp, 16
call SECTIONINDENT
sub esp, 8
push -1
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
sub esp, 8
push 6
push offset Lt_026F
push -1
sub esp, 4
push -1
lea eax, [ebp-48]
push eax
push 5
push offset Lt_026E
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-240]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-240]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
sub esp, 8
push 6
push offset Lt_0274
push -1
sub esp, 4
push -1
lea eax, [ebp-36]
push eax
push 7
push offset Lt_0273
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-276]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-276]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
push 0
push 15
push offset Lt_0278
push -1
lea eax, [ebp-288]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-288]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-288]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 13
push offset Lt_027A
push -1
lea eax, [ebp-300]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-300]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-300]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push 6
push offset Lt_027C
push -1
lea eax, [ebp-312]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-312]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-312]
push eax
call fb_StrDelete
add esp, 16
call SECTIONUNINDENT
sub esp, 8
push -1
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push 3
push offset Lt_027E
push -1
lea eax, [ebp-324]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-324]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
push 0
push 15
push offset Lt_0280
push -1
lea eax, [ebp-336]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-336]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-336]
push eax
call fb_StrDelete
add esp, 16
call SECTIONUNINDENT
sub esp, 8
push -1
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
push 0
push 2
push offset Lt_0282
push -1
lea eax, [ebp-348]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-348]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-348]
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
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_024A:
pop ebx
mov esp, ebp
pop ebp
ret
.size HWRITEX86F2I, .-HWRITEX86F2I
.balign 16
HWRITEGENERICF2I:
.type HWRITEGENERICF2I, @function
push ebp
mov ebp, esp
sub esp, 104
.Lt_0284:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 15
jne .Lt_0287
sub esp, 12
push 0
push 11
push offset Lt_0288
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0286
.Lt_0287:
sub esp, 12
push 0
push 10
push offset Lt_0289
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0286:
sub esp, 8
push -1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
sub esp, 8
push 11
push offset Lt_028D
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 12
push offset Lt_028C
push -1
sub esp, 4
push -1
sub esp, 8
push 0
push dword ptr [ebp+12]
call HEMITTYPE
add esp, 16
push eax
push -1
sub esp, 4
push 13
push offset Lt_028B
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
push 12
push offset Lt_028A
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
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 28
push eax
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
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_0285:
mov esp, ebp
pop ebp
ret
.size HWRITEGENERICF2I, .-HWRITEGENERICF2I
.balign 16
HWRITEF2I:
.type HWRITEF2I, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0295:
call FBGETCPUFAMILY
test eax, eax
jne .Lt_0298
cmp dword ptr [ebp+12], 11
je .Lt_029B
.Lt_029C:
cmp dword ptr [ebp+12], 13
jne .Lt_029A
.Lt_029B:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HWRITEX86F2I
add esp, 16
jmp .Lt_0296
.Lt_029A:
.Lt_0299:
.Lt_0298:
.Lt_0297:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HWRITEGENERICF2I
add esp, 16
.Lt_0296:
mov esp, ebp
pop ebp
ret
.size HWRITEF2I, .-HWRITEF2I
.balign 16
HMAYBEEMITPROCEXPORT:
.type HMAYBEEMITPROCEXPORT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_029D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 256
test ebx, ebx
jne .Lt_02A0
jmp .Lt_029E
.Lt_02A0:
.Lt_029F:
sub esp, 12
push 0
push 3
push offset Lt_02A1
push -1
lea ebx, [CTX+2668]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 10
push offset Lt_02A2
push -1
lea ebx, [CTX+2668]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 16
push offset Lt_02A3
push -1
lea ebx, [CTX+2668]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+8]
call HGETMANGLEDNAMEFORASM
add esp, 12
push eax
push -1
lea eax, [CTX+2668]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 7
push offset Lt_02A4
push -1
lea eax, [CTX+2668]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_02A5
push -1
lea eax, [CTX+2668]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_02A6
push -1
lea eax, [CTX+2668]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_029E:
pop ebx
mov esp, ebp
pop ebp
ret
.size HMAYBEEMITPROCEXPORT, .-HMAYBEEMITPROCEXPORT
.balign 16
_EMITBEGIN:
.type _EMITBEGIN, @function
push ebp
mov ebp, esp
sub esp, 136
mov dword ptr [ebp-4], 0
.Lt_02A7:
sub esp, 12
lea eax, [ENV+560]
push eax
call HFILEEXISTS
add esp, 16
test eax, eax
je .Lt_02AA
sub esp, 12
lea eax, [ENV+560]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 16
.Lt_02AA:
.Lt_02A9:
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
je .Lt_02AC
mov dword ptr [ebp-4], 0
jmp .Lt_02A8
.Lt_02AC:
.Lt_02AB:
mov dword ptr [CTX+2580], -1
mov dword ptr [CTX+2584], 0
mov dword ptr [CTX+2588], 0
mov dword ptr [CTX+2604], 0
mov dword ptr [CTX+2756], 0
sub esp, 12
lea eax, [ENV+280]
push eax
call HUPDATECURRENTFILENAME
add esp, 16
call SECTIONBEGIN
cmp dword ptr [ENV+148], 0
je .Lt_02AE
push 0
push 0
push 0
push 113
call _EMITDBG
add esp, 16
.Lt_02AE:
.Lt_02AD:
sub esp, 8
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 34
push offset Lt_02AF
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
sub esp, 8
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 34
push offset Lt_02B1
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
sub esp, 8
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 35
push offset Lt_02B3
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
sub esp, 8
push -1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 35
push offset Lt_02B5
push -1
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 35
push offset Lt_02B7
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 35
push offset Lt_02B9
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 35
push offset Lt_02BB
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 35
push offset Lt_02BD
push -1
lea eax, [ebp-100]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-100]
push eax
call fb_StrDelete
add esp, 16
call FBIS64BIT
test eax, eax
je .Lt_02C0
sub esp, 8
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 64
push offset Lt_02C1
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_02BF
.Lt_02C0:
sub esp, 8
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 64
push offset Lt_02C3
push -1
lea eax, [ebp-124]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-124]
push eax
call fb_StrDelete
add esp, 16
.Lt_02BF:
sub esp, 8
push -1
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 22
push offset Lt_02C5
push -1
lea eax, [ebp-112]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-112]
push eax
call fb_StrDelete
add esp, 16
call SECTIONBEGIN
mov dword ptr [ebp-4], -1
.Lt_02A8:
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
sub esp, 40
.Lt_02C7:
sub esp, 12
lea eax, [ENV+280]
push eax
call HUPDATECURRENTFILENAME
add esp, 16
sub esp, 12
push 0
call SECTIONGOSUB
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [CTX+2604]
and eax, 1
je .Lt_02CA
sub esp, 4
push 15
push 11
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset Lt_02CB
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_02CA:
mov eax, dword ptr [CTX+2604]
and eax, 2
je .Lt_02CE
sub esp, 4
push 15
push 13
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset Lt_02CF
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_02CE:
mov eax, dword ptr [CTX+2604]
and eax, 4
je .Lt_02D2
sub esp, 4
push 15
push 14
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 5
push offset Lt_02D3
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_02D2:
mov eax, dword ptr [CTX+2604]
and eax, 8
je .Lt_02D6
sub esp, 4
push 16
push 11
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset Lt_02D7
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_02D6:
mov eax, dword ptr [CTX+2604]
and eax, 16
je .Lt_02DA
sub esp, 4
push 16
push 13
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset Lt_02DB
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_02DA:
mov eax, dword ptr [CTX+2604]
and eax, 32
je .Lt_02DE
sub esp, 4
push 16
push 14
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 5
push offset Lt_02DF
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HWRITEF2I
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_02DE:
sub esp, 8
push offset HMAYBEEMITPROCPROTO
push 3
call SYMBFOREACHGLOBAL
add esp, 16
mov dword ptr [CTX+2756], 1
sub esp, 8
push offset HMAYBEEMITGLOBALVAREXCEPTDATASTMT
push 1
call SYMBFOREACHGLOBAL
add esp, 16
sub esp, 12
push offset HMAYBEEMITGLOBALVAR
call IRFOREACHDATASTMT
add esp, 16
mov dword ptr [CTX+2756], 2
sub esp, 8
push offset HMAYBEEMITGLOBALVAREXCEPTDATASTMT
push 1
call SYMBFOREACHGLOBAL
add esp, 16
sub esp, 12
push offset HMAYBEEMITGLOBALVAR
call IRFOREACHDATASTMT
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call SECTIONRETURN
add esp, 16
mov eax, dword ptr [ENV+260]
and eax, 4
and eax, dword ptr [ENV+208]
je .Lt_02E2
sub esp, 8
push offset HMAYBEEMITPROCEXPORT
push 3
call SYMBFOREACHGLOBAL
add esp, 16
sub esp, 8
push -1
lea eax, [CTX+2668]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_02E4
sub esp, 8
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
sub esp, 8
push 3
push offset Lt_027E
push -1
sub esp, 4
push -1
lea eax, [CTX+2668]
push eax
push 35
push offset Lt_02E5
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
add esp, 28
push eax
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
.Lt_02E4:
.Lt_02E3:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+2668]
push eax
call fb_StrAssign
add esp, 32
.Lt_02E2:
.Lt_02E1:
call SECTIONEND
cmp dword ptr [CTX+12], 0
jne .Lt_02EA
push -1
lea eax, [CTX]
push eax
push 0
push dword ptr [ENV+556]
call fb_FilePutStr
add esp, 16
test eax, eax
je .Lt_02EC
.Lt_02EC:
.Lt_02EB:
.Lt_02EA:
.Lt_02E9:
call SECTIONEND
sub esp, 12
push dword ptr [ENV+556]
call fb_FileClose
add esp, 16
test eax, eax
je .Lt_02EE
.Lt_02EE:
.Lt_02ED:
mov dword ptr [ENV+556], 0
.Lt_02C8:
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
.Lt_02EF:
cmp dword ptr [ebp+8], 1
jne .Lt_02F2
.Lt_02F3:
mov dword ptr [ebp-4], 0
jmp .Lt_02F0
jmp .Lt_02F1
.Lt_02F2:
sub esp, 12
push 0
push 1
push 0
push offset Lt_02F5
push 21
call ERRREPORTEX
add esp, 32
.Lt_02F4:
.Lt_02F1:
.Lt_02F0:
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
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_02F6:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_02F9
.Lt_02FB:
mov dword ptr [ebp-4], 0
jmp .Lt_02F8
.Lt_02FC:
mov dword ptr [ebp-4], -1
jmp .Lt_02F8
.Lt_02F9:
mov eax, dword ptr [ebp-8]
add eax, 4294967239
cmp eax, 15
ja .Lt_02FC
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_02FD+eax*4-228]
.LT_02FD:
.int .Lt_02FB
.int .Lt_02FC
.int .Lt_02FC
.int .Lt_02FC
.int .Lt_02FC
.int .Lt_02FC
.int .Lt_02FC
.int .Lt_02FC
.int .Lt_02FC
.int .Lt_02FB
.int .Lt_02FB
.int .Lt_02FC
.int .Lt_02FC
.int .Lt_02FC
.int .Lt_02FB
.int .Lt_02FB
.Lt_02F8:
.Lt_02F7:
mov eax, dword ptr [ebp-4]
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
.Lt_02FE:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16564]
mov dword ptr [ecx+16], ebx
.Lt_02FF:
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
.Lt_0300:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16564]
mov dword ptr [ecx+20], ebx
.Lt_0301:
pop ebx
mov esp, ebp
pop ebp
ret
.size _PROCEND, .-_PROCEND
.balign 16
_SCOPEBEGIN:
.type _SCOPEBEGIN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0302:
.Lt_0303:
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
.Lt_0304:
.Lt_0305:
mov esp, ebp
pop ebp
ret
.size _SCOPEEND, .-_SCOPEEND
.balign 16
HISSTATICWITHDTOR:
.type HISSTATICWITHDTOR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0306:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 262144
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASDTOR
add esp, 16
and ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_0307:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HISSTATICWITHDTOR, .-HISSTATICWITHDTOR
.balign 16
_PROCALLOCSTATICVARS:
.type _PROCALLOCSTATICVARS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0308:
sub esp, 12
push 0
call SECTIONGOSUB
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_030A:
cmp dword ptr [ebp+8], 0
je .Lt_030B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 15
jne .Lt_030E
.Lt_030F:
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _PROCALLOCSTATICVARS
add esp, 16
jmp .Lt_030C
.Lt_030E:
cmp dword ptr [ebp-12], 1
jne .Lt_0310
.Lt_0311:
sub esp, 12
push dword ptr [ebp+8]
call HISSTATICWITHDTOR
add esp, 16
test eax, eax
je .Lt_0313
sub esp, 12
push dword ptr [ebp+8]
call HMAYBEEMITLOCALVAR
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_0315
sub esp, 12
push dword ptr [ebp-4]
call HMAYBEEMITLOCALVAR
add esp, 16
.Lt_0315:
.Lt_0314:
.Lt_0313:
.Lt_0312:
.Lt_0310:
.Lt_030C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp+8], eax
jmp .Lt_030A
.Lt_030B:
sub esp, 12
push dword ptr [ebp-8]
call SECTIONRETURN
add esp, 16
.Lt_0309:
pop ebx
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
.Lt_0316:
cmp dword ptr [ebp+8], 0
je .Lt_0319
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], eax
.Lt_0319:
.Lt_0318:
.Lt_0317:
pop ebx
mov esp, ebp
pop ebp
ret
.size _SETVREGDATATYPE, .-_SETVREGDATATYPE
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
.Lt_031A:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBGETVALISTTYPE
add esp, 16
cmp eax, 1
jle .Lt_031D
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBGETVALISTTYPE
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 2
jne .Lt_0320
.Lt_0321:
mov eax, dword ptr [ebp+8]
and eax, 31
mov ebx, dword ptr [ebp+8]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
or eax, ebx
and eax, -32
or eax, 19
mov dword ptr [ebp+8], eax
jmp .Lt_031E
.Lt_0320:
mov eax, dword ptr [ebp+8]
and eax, -32
or eax, 19
mov dword ptr [ebp+8], eax
.Lt_0322:
.Lt_031E:
.Lt_031D:
.Lt_031C:
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov dword ptr [ebp-28], eax
and dword ptr [ebp+8], 31
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .Lt_0324
.Lt_0326:
cmp dword ptr [ebp+12], 0
je .Lt_0328
sub esp, 8
mov eax, dword ptr [ebp-28]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push eax
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
jmp .Lt_0327
.Lt_0328:
cmp dword ptr [ebp+8], 10
jne .Lt_0329
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_032A
mov dword ptr [ebp-36], 24
jmp .Lt_077D
.Lt_032A:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_077D:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
push dword ptr [DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_0327
.Lt_0329:
sub esp, 12
push 0
push 0
push dword ptr [DTYPENAME]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 32
.Lt_0327:
jmp .Lt_0323
.Lt_032C:
dec dword ptr [ebp-28]
sub esp, 8
mov ebx, dword ptr [ebp-28]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp+12]
call HEMITUDT
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
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0323
.Lt_032D:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_032E
mov dword ptr [ebp-36], 24
jmp .Lt_077E
.Lt_032E:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_077E:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+16]
push dword ptr [DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_0323
.Lt_0330:
sub esp, 12
push 0
push 0
push dword ptr [DTYPENAME+12]
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_0323
.Lt_0331:
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
jmp .Lt_0323
.Lt_0324:
mov ebx, dword ptr [ebp-32]
add ebx, 4294967292
cmp ebx, 18
ja .Lt_0331
mov ebx, dword ptr [ebp-32]
jmp dword ptr [.LT_0332+ebx*4-16]
.LT_0332:
.int .Lt_032D
.int .Lt_0331
.int .Lt_0331
.int .Lt_032D
.int .Lt_0331
.int .Lt_0331
.int .Lt_0326
.int .Lt_0331
.int .Lt_0331
.int .Lt_0331
.int .Lt_0331
.int .Lt_0331
.int .Lt_0331
.int .Lt_0331
.int .Lt_0330
.int .Lt_0331
.int .Lt_0326
.int .Lt_0331
.int .Lt_032C
.Lt_0323:
cmp dword ptr [ebp-28], 0
jle .Lt_0334
sub esp, 12
push 0
push -1
sub esp, 4
push 1
push offset Lt_0335
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
.Lt_0334:
.Lt_0333:
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
.Lt_031B:
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
EXPRNEW:
.type EXPRNEW, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0336:
sub esp, 12
lea eax, [CTX+2680]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0337:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size EXPRNEW, .-EXPRNEW
.balign 16
EXPRFREENODE:
.type EXPRFREENODE, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0338:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_033B
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_033D
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call free
add esp, 16
.Lt_033D:
.Lt_033C:
.Lt_033B:
.Lt_033A:
sub esp, 8
push dword ptr [ebp+8]
lea eax, [CTX+2680]
push eax
call LISTDELNODE
add esp, 16
.Lt_0339:
mov esp, ebp
pop ebp
ret
.size EXPRFREENODE, .-EXPRFREENODE
.balign 16
EXPRFREETREE:
.type EXPRFREETREE, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_033E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_0341
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call EXPRFREETREE
add esp, 16
.Lt_0341:
.Lt_0340:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .Lt_0343
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call EXPRFREETREE
add esp, 16
.Lt_0343:
.Lt_0342:
sub esp, 12
push dword ptr [ebp+8]
call EXPRFREENODE
add esp, 16
.Lt_033F:
mov esp, ebp
pop ebp
ret
.size EXPRFREETREE, .-EXPRFREETREE
.balign 16
EXPRNEWTEXT:
.type EXPRNEWTEXT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0344:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call EXPRNEW
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp+16]
call ZSTRDUP
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0345:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size EXPRNEWTEXT, .-EXPRNEWTEXT
.balign 16
EXPRNEWIMMI:
.type EXPRNEWIMMI, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0346:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_0348
mov dword ptr [ebp-12], 24
jmp .Lt_0781
.Lt_0348:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0781:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .Lt_034B
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_034C
mov dword ptr [ebp-16], 24
jmp .Lt_0782
.Lt_034C:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_0782:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_034E
mov dword ptr [ebp-20], 13
jmp .Lt_0783
.Lt_034E:
mov dword ptr [ebp-20], 14
.Lt_0783:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+16], eax
jmp .Lt_034A
.Lt_034B:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_0350
mov dword ptr [ebp-16], 24
jmp .Lt_0784
.Lt_0350:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_0784:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_0352
mov dword ptr [ebp-20], 11
jmp .Lt_0785
.Lt_0352:
mov dword ptr [ebp-20], 12
.Lt_0785:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+16], eax
.Lt_034A:
sub esp, 4
push 0
push dword ptr [ebp+16]
push 1
call EXPRNEW
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_0347:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size EXPRNEWIMMI, .-EXPRNEWIMMI
.balign 16
EXPRNEWIMMF:
.type EXPRNEWIMMF, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0354:
sub esp, 4
push 0
push dword ptr [ebp+16]
push 1
call EXPRNEW
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+8]
push dword ptr [ebp+12]
pop dword ptr [eax+24]
pop dword ptr [eax+20]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0355:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size EXPRNEWIMMF, .-EXPRNEWIMMF
.balign 16
SYMBISCARRAY:
.type SYMBISCARRAY, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0356:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 81920
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0359
mov dword ptr [ebp-4], 0
jmp .Lt_0357
.Lt_0359:
.Lt_0358:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .Lt_035D
.Lt_035E:
cmp dword ptr [ebp-8], 12
jne .Lt_035C
.Lt_035D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
je .Lt_0360
mov dword ptr [ebp-4], 0
jmp .Lt_0357
.Lt_0360:
.Lt_035F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_0362
mov dword ptr [ebp-4], -1
jmp .Lt_0357
.Lt_0362:
.Lt_0361:
.Lt_035C:
.Lt_035A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 18
je .Lt_0366
.Lt_0367:
cmp dword ptr [ebp-8], 4
je .Lt_0366
.Lt_0368:
cmp dword ptr [ebp-8], 7
jne .Lt_0365
.Lt_0366:
mov dword ptr [ebp-4], -1
jmp .Lt_0357
.Lt_0365:
.Lt_0363:
mov dword ptr [ebp-4], 0
.Lt_0357:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBISCARRAY, .-SYMBISCARRAY
.balign 16
EXPRNEWCAST:
.type EXPRNEWCAST, @function
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0369:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
cmp ebx, dword ptr [ebp+8]
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+12]
cmp ecx, dword ptr [eax+8]
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and ebx, esi
je .Lt_036C
mov esi, dword ptr [ebp+16]
mov dword ptr [ebp-4], esi
jmp .Lt_036A
.Lt_036C:
.Lt_036B:
mov esi, dword ptr [ebp+16]
mov ebx, dword ptr [esi+4]
and ebx, 480
je .Lt_036D
mov dword ptr [ebp-8], 24
jmp .Lt_0789
.Lt_036D:
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+4]
and esi, 31
mov dword ptr [ebp-8], esi
.Lt_0789:
mov esi, dword ptr [ebp-8]
imul esi, 28
mov dword ptr [ebp-20], esi
mov esi, dword ptr [ebp+8]
and esi, 480
je .Lt_036F
mov dword ptr [ebp-12], 24
jmp .Lt_078A
.Lt_036F:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-12], esi
.Lt_078A:
mov esi, dword ptr [ebp-12]
imul esi, 28
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [SYMB_DTYPETB+esi+20]
cmp eax, dword ptr [SYMB_DTYPETB+ebx+20]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+4]
and esi, 480
test esi, esi
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and eax, esi
mov esi, dword ptr [ebp+8]
and esi, 480
test esi, esi
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and eax, esi
je .Lt_0372
mov esi, dword ptr [ebp+16]
mov dword ptr [ebp-4], esi
jmp .Lt_036A
.Lt_0372:
.Lt_0371:
mov esi, dword ptr [ebp+16]
cmp dword ptr [esi], 3
jne .Lt_0374
mov esi, dword ptr [ebp+8]
and esi, 480
sar esi, 5
test esi, esi
setg dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
sar ebx, 5
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
and esi, ebx
je .Lt_0376
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebp+8]
mov dword ptr [ebx+4], esi
mov esi, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
mov dword ptr [esi+8], ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .Lt_036A
.Lt_0376:
.Lt_0375:
.Lt_0374:
.Lt_0373:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 3
call EXPRNEW
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_036A:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size EXPRNEWCAST, .-EXPRNEWCAST
.balign 16
EXPRNEWMACRO:
.type EXPRNEWMACRO, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0377:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 6
call EXPRNEW
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0378:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size EXPRNEWMACRO, .-EXPRNEWMACRO
.balign 16
EXPRNEWSYM:
.type EXPRNEWSYM, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0379:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 4
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_037C
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+84]
mov dword ptr [ebp+8], ebx
.Lt_037C:
.Lt_037B:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 7
jne .Lt_037E
sub esp, 4
push 0
push 32
push 2
call EXPRNEW
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
jmp .Lt_037D
.Lt_037E:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 3
jne .Lt_037F
sub esp, 4
push dword ptr [ebp+8]
push 54
push 2
call EXPRNEW
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
jmp .Lt_037D
.Lt_037F:
sub esp, 12
push dword ptr [ebp+8]
call SYMBISCARRAY
add esp, 16
test eax, eax
je .Lt_0380
sub esp, 4
push 0
push -2147483648
push 2
call EXPRNEW
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
sub esp, 4
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 511
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
and ecx, 511
and ecx, 32505856
or eax, ecx
push eax
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_037D
.Lt_0380:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 524288
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_0381
sub esp, 4
push 0
push 66
push 2
call EXPRNEW
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+20], ecx
jmp .Lt_037D
.Lt_0381:
sub esp, 4
lea ecx, [ebp-16]
push ecx
lea ecx, [ebp-12]
push ecx
push dword ptr [ebp+8]
call SYMBGETREALTYPE
add esp, 16
sub esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 2
call EXPRNEW
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+20], ecx
.Lt_037D:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_037A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size EXPRNEWSYM, .-EXPRNEWSYM
.balign 16
TYPECBOP:
.type TYPECBOP, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_0382:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .Lt_0385
mov dword ptr [ebp-4], 11
jmp .Lt_0383
.Lt_0385:
.Lt_0384:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .Lt_0386
mov dword ptr [ebp-8], 24
jmp .Lt_0798
.Lt_0386:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-8], ebx
.Lt_0798:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .Lt_0388
mov dword ptr [ebp-12], 24
jmp .Lt_0799
.Lt_0388:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_0799:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp+16], ebx
mov ebx, dword ptr [ebp+12]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
cmp eax, 16
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_038B
mov dword ptr [ebp-4], 16
jmp .Lt_0383
.Lt_038B:
.Lt_038A:
mov eax, dword ptr [ebp+12]
cmp eax, 15
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
cmp ebx, 15
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_038D
mov dword ptr [ebp-4], 15
jmp .Lt_0383
.Lt_038D:
.Lt_038C:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .Lt_038E
mov dword ptr [ebp-16], 24
jmp .Lt_079A
.Lt_038E:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_079A:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 4
jg .Lt_0391
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .Lt_0392
mov dword ptr [ebp-48], 24
jmp .Lt_079B
.Lt_0392:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-48], ebx
.Lt_079B:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+8], 0
je .Lt_0394
mov dword ptr [ebp-52], 11
jmp .Lt_079C
.Lt_0394:
mov dword ptr [ebp-52], 12
.Lt_079C:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp+12], ebx
.Lt_0391:
.Lt_0390:
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .Lt_0396
mov dword ptr [ebp-20], 24
jmp .Lt_079D
.Lt_0396:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_079D:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 4
jg .Lt_0399
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .Lt_039A
mov dword ptr [ebp-48], 24
jmp .Lt_079E
.Lt_039A:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-48], ebx
.Lt_079E:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+8], 0
je .Lt_039C
mov dword ptr [ebp-52], 11
jmp .Lt_079F
.Lt_039C:
mov dword ptr [ebp-52], 12
.Lt_079F:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp+16], ebx
.Lt_0399:
.Lt_0398:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .Lt_039E
mov dword ptr [ebp-24], 24
jmp .Lt_07A0
.Lt_039E:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_07A0:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .Lt_03A0
mov dword ptr [ebp-28], 24
jmp .Lt_07A1
.Lt_03A0:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_07A1:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [ebp-48]
mov ecx, dword ptr [SYMB_DTYPETB+ebx+8]
and ecx, dword ptr [SYMB_DTYPETB+eax+8]
not ecx
test ecx, ecx
je .Lt_03A3
sub esp, 12
push dword ptr [ebp+12]
call TYPETOUNSIGNED
add esp, 16
mov dword ptr [ebp+12], eax
sub esp, 12
push dword ptr [ebp+16]
call TYPETOUNSIGNED
add esp, 16
mov dword ptr [ebp+16], eax
.Lt_03A3:
.Lt_03A2:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_03A4
mov dword ptr [ebp-32], 24
jmp .Lt_07A3
.Lt_03A4:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_07A3:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+4]
cmp ecx, 8
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
je .Lt_03A6
mov dword ptr [ebp-36], 24
jmp .Lt_07A4
.Lt_03A6:
mov ecx, dword ptr [ebp+16]
and ecx, 31
mov dword ptr [ebp-36], ecx
.Lt_07A4:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov eax, dword ptr [SYMB_DTYPETB+ecx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-48]
je .Lt_03A9
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_03AA
mov dword ptr [ebp-52], 24
jmp .Lt_07A6
.Lt_03AA:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_07A6:
mov eax, dword ptr [ebp-52]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_03AC
mov dword ptr [ebp-56], 13
jmp .Lt_07A7
.Lt_03AC:
mov dword ptr [ebp-56], 14
.Lt_07A7:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_03AE
mov dword ptr [ebp-60], 24
jmp .Lt_07A8
.Lt_03AE:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-60], eax
.Lt_07A8:
mov eax, dword ptr [ebp-60]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_03B0
mov dword ptr [ebp-64], 13
jmp .Lt_07A9
.Lt_03B0:
mov dword ptr [ebp-64], 14
.Lt_07A9:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp+16], eax
.Lt_03A9:
.Lt_03A8:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_03B2
mov dword ptr [ebp-40], 24
jmp .Lt_07AA
.Lt_03B2:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_07AA:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_03B4
mov dword ptr [ebp-44], 24
jmp .Lt_07AB
.Lt_03B4:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_07AB:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ecx, dword ptr [ebp-48]
mov ebx, dword ptr [SYMB_DTYPETB+eax+8]
and ebx, dword ptr [SYMB_DTYPETB+ecx+8]
not ebx
test ebx, ebx
je .Lt_03B7
sub esp, 12
push dword ptr [ebp+12]
call TYPETOUNSIGNED
add esp, 16
mov dword ptr [ebp+12], eax
sub esp, 12
push dword ptr [ebp+16]
call TYPETOUNSIGNED
add esp, 16
mov dword ptr [ebp+16], eax
.Lt_03B7:
.Lt_03B6:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_0383:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size TYPECBOP, .-TYPECBOP
.balign 16
EXPRNEWUOP:
.type EXPRNEWUOP, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_03B8:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .Lt_03BB
.Lt_03BD:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .Lt_03BF
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
cmp ebx, 76
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.Lt_03BF:
.Lt_03BE:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
jmp .Lt_03BA
.Lt_03C0:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .Lt_03C2
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
cmp ebx, 22
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.Lt_03C2:
.Lt_03C1:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
jmp .Lt_03BA
.Lt_03C3:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .Lt_03C5
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
cmp ebx, dword ptr [eax+20]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.Lt_03C5:
.Lt_03C4:
sub esp, 4
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+4]
push dword ptr [ebp+8]
call TYPECBOP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_03BA
.Lt_03C6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .Lt_03BA
.Lt_03C7:
jmp .Lt_03BA
.Lt_03BB:
mov ebx, dword ptr [ebp-20]
add ebx, 4294967274
cmp ebx, 54
ja .Lt_03C7
mov ebx, dword ptr [ebp-20]
jmp dword ptr [.LT_03C8+ebx*4-88]
.LT_03C8:
.int .Lt_03BD
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C3
.int .Lt_03C7
.int .Lt_03C3
.int .Lt_03C7
.int .Lt_03C6
.int .Lt_03C7
.int .Lt_03C6
.int .Lt_03C6
.int .Lt_03C6
.int .Lt_03C6
.int .Lt_03C6
.int .Lt_03C6
.int .Lt_03C7
.int .Lt_03C6
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C6
.int .Lt_03C6
.int .Lt_03C6
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C0
.Lt_03BA:
cmp dword ptr [ebp-16], 0
je .Lt_03CA
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp+12]
call EXPRFREENODE
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_03B9
.Lt_03CA:
.Lt_03C9:
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
push dword ptr [ebp-12]
push 4
call EXPRNEW
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_03B9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size EXPRNEWUOP, .-EXPRNEWUOP
.balign 16
EXPRNEWBOP:
.type EXPRNEWBOP, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_03CB:
sub esp, 4
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call TYPECBOP
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .Lt_03CE
.Lt_03D0:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
and ecx, 480
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_03D2
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+4]
and ebx, 32505856
sar ebx, 20
cmp ebx, 19
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+4]
and eax, 32505856
sar eax, 20
cmp eax, 19
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_03D4
sub esp, 4
push dword ptr [ebp+12]
push 0
push 35
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp+12], eax
sub esp, 4
push dword ptr [ebp+16]
push 0
push 35
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp+16], eax
.Lt_03D4:
.Lt_03D3:
.Lt_03D2:
.Lt_03D1:
jmp .Lt_03CD
.Lt_03CE:
mov eax, dword ptr [ebp-16]
add eax, 4294967251
cmp eax, 5
ja .Lt_03CD
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_03D5+eax*4-180]
.LT_03D5:
.int .Lt_03D0
.int .Lt_03D0
.int .Lt_03D0
.int .Lt_03D0
.int .Lt_03D0
.int .Lt_03D0
.Lt_03CD:
sub esp, 4
push 0
push dword ptr [ebp-12]
push 5
call EXPRNEW
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+16], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_03CC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size EXPRNEWBOP, .-EXPRNEWBOP
.balign 16
EXPRCACHE:
.type EXPRCACHE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_03D6:
sub esp, 12
lea eax, [CTX+2724]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
.Lt_03D7:
pop ebx
mov esp, ebp
pop ebp
ret
.size EXPRCACHE, .-EXPRCACHE
.balign 16
EXPRLOOKUP:
.type EXPRLOOKUP, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_03D8:
sub esp, 12
lea eax, [CTX+2724]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_03DA:
cmp dword ptr [ebp-8], 0
je .Lt_03DB
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .Lt_03DD
jmp .Lt_03DB
.Lt_03DD:
.Lt_03DC:
sub esp, 12
push dword ptr [ebp-8]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_03DA
.Lt_03DB:
cmp dword ptr [ebp-8], 0
je .Lt_03DF
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
sub esp, 8
push dword ptr [ebp-8]
lea ebx, [CTX+2724]
push ebx
call LISTDELNODE
add esp, 16
jmp .Lt_03DE
.Lt_03DF:
mov dword ptr [ebp-4], 0
.Lt_03DE:
.Lt_03D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size EXPRLOOKUP, .-EXPRLOOKUP
.balign 16
HEMITINT:
.type HEMITINT, @function
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_03E0:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_03E2
mov dword ptr [ebp-28], 24
jmp .Lt_07BA
.Lt_03E2:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_07BA:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_03E5
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_03E6
mov dword ptr [ebp-32], 24
jmp .Lt_07BB
.Lt_03E6:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_07BB:
mov eax, dword ptr [ebp-32]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .Lt_03E9
cmp dword ptr [ebp+16], 2147483648
jne .Lt_03EB
cmp dword ptr [ebp+12], 0
jne .Lt_03EB
.Lt_07BD:
sub esp, 12
push 0
push 2
push offset Lt_03EC
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_03EB:
.Lt_03EA:
sub esp, 12
push 0
push 3
push offset Lt_03ED
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_03E8
.Lt_03E9:
cmp dword ptr [ebp+16], 4294967295
jne .Lt_03EF
cmp dword ptr [ebp+12], 2147483648
jne .Lt_03EF
.Lt_07BE:
sub esp, 12
push 0
push 2
push offset Lt_03EC
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_03EF:
.Lt_03EE:
.Lt_03E8:
jmp .Lt_03E4
.Lt_03E5:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_03F0
mov dword ptr [ebp-32], 24
jmp .Lt_07BC
.Lt_03F0:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_07BC:
mov eax, dword ptr [ebp-32]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .Lt_03F3
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call fb_ULongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_03F4
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_03F2
.Lt_03F3:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+12]
push eax
call fb_UIntToStr
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
push offset Lt_03EC
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_03F2:
.Lt_03E4:
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
.Lt_03E1:
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
HEMITFLOAT:
.type HEMITFLOAT, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_03F5:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 2146435072
je .Lt_03F9
.Lt_03FA:
cmp dword ptr [ebp-28], 4293918720
jne .Lt_03F8
.Lt_03F9:
cmp dword ptr [ebp+8], 16
jne .Lt_03FC
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .Lt_03FE
sub esp, 12
push 0
push 19
push offset Lt_03FF
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_03FD
.Lt_03FE:
sub esp, 12
push 0
push 16
push offset Lt_0400
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_03FD:
jmp .Lt_03FB
.Lt_03FC:
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .Lt_0402
sub esp, 12
push 0
push 20
push offset Lt_0403
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0401
.Lt_0402:
sub esp, 12
push 0
push 17
push offset Lt_0404
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_0401:
.Lt_03FB:
jmp .Lt_03F7
.Lt_03F8:
cmp dword ptr [ebp-28], 2146959360
je .Lt_0406
.Lt_0407:
cmp dword ptr [ebp-28], 4294443008
jne .Lt_0405
.Lt_0406:
cmp dword ptr [ebp+8], 16
jne .Lt_0409
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .Lt_040B
sub esp, 12
push 0
push 23
push offset Lt_040C
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_040A
.Lt_040B:
sub esp, 12
push 0
push 20
push offset Lt_040D
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_040A:
jmp .Lt_0408
.Lt_0409:
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .Lt_040F
sub esp, 12
push 0
push 24
push offset Lt_0410
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_040E
.Lt_040F:
sub esp, 12
push 0
push 21
push offset Lt_0411
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_040E:
.Lt_0408:
jmp .Lt_03F7
.Lt_0405:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HFLOATTOHEX_C99
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+8], 15
jne .Lt_0414
sub esp, 12
push 0
push 2
push offset Lt_0415
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0414:
.Lt_0413:
.Lt_0412:
.Lt_03F7:
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
.Lt_03F6:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HEMITFLOAT, .-HEMITFLOAT
.balign 16
HBUILDSTRLIT:
.type HBUILDSTRLIT, @function
push ebp
mov ebp, esp
sub esp, 84
push ebx
.Lt_0416:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00C9
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
mov dword ptr [ebp-32], 0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
add ebx, 4294967294
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-36], ecx
jmp .Lt_041A
.Lt_041D:
mov ecx, dword ptr [ebp+12]
add ecx, dword ptr [ebp-32]
movzx ebx, byte ptr [ecx]
mov dword ptr [ebp-4], ebx
sub esp, 8
push 34
push dword ptr [ebp-4]
call HCHARNEEDSESCAPING
add esp, 16
test eax, eax
je .Lt_041F
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
push 3
push offset Lt_0420
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
sub esp, 12
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-32]
movzx ebx, byte ptr [eax+1]
push ebx
call HISVALIDHEXDIGIT
add esp, 16
test eax, eax
je .Lt_0424
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_0425
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0424:
.Lt_0423:
jmp .Lt_041E
.Lt_041F:
cmp dword ptr [ebp-4], 63
jne .Lt_0427
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0428
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
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-32]
movzx ebx, byte ptr [eax+1]
cmp ebx, 63
jne .Lt_042B
mov ebx, dword ptr [ebp+12]
add ebx, dword ptr [ebp-32]
mov al, byte ptr [ebx+2]
mov byte ptr [ebp-52], al
movzx eax, byte ptr [ebp-52]
cmp eax, 61
je .Lt_0436
.Lt_0437:
movzx eax, byte ptr [ebp-52]
cmp eax, 47
je .Lt_0436
.Lt_0438:
movzx eax, byte ptr [ebp-52]
cmp eax, 39
je .Lt_0436
.Lt_0439:
movzx eax, byte ptr [ebp-52]
cmp eax, 40
je .Lt_0436
.Lt_043A:
movzx eax, byte ptr [ebp-52]
cmp eax, 41
je .Lt_0436
.Lt_043B:
movzx eax, byte ptr [ebp-52]
cmp eax, 33
je .Lt_0436
.Lt_043C:
movzx eax, byte ptr [ebp-52]
cmp eax, 60
je .Lt_0436
.Lt_043D:
movzx eax, byte ptr [ebp-52]
cmp eax, 62
je .Lt_0436
.Lt_043E:
movzx eax, byte ptr [ebp-52]
cmp eax, 45
jne .Lt_042E
.Lt_0436:
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_0425
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
.Lt_042E:
.Lt_042C:
.Lt_042B:
.Lt_042A:
jmp .Lt_041E
.Lt_0427:
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
.Lt_041E:
.Lt_041B:
inc dword ptr [ebp-32]
.Lt_041A:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-32], eax
jle .Lt_041D
.Lt_041C:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00C9
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
.Lt_0417:
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
sub esp, 84
push ebx
.Lt_0442:
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_0444
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-36], 0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
add ebx, 4294967294
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-40], ecx
jmp .Lt_0447
.Lt_044A:
mov ecx, dword ptr [ebp-36]
sal ecx, 2
mov ebx, dword ptr [ebp+12]
add ebx, ecx
mov ecx, dword ptr [ebx]
mov dword ptr [ebp-4], ecx
sub esp, 8
push 34
push dword ptr [ebp-4]
call HCHARNEEDSESCAPING
add esp, 16
test eax, eax
je .Lt_044C
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 8
mov eax, dword ptr [ebp-8]
sal eax, 1
push eax
push dword ptr [ebp-4]
call fb_HEXEx_i
add esp, 16
push eax
push 3
push offset Lt_0420
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
sub esp, 12
mov eax, dword ptr [ebp-36]
sal eax, 2
mov ecx, dword ptr [ebp+12]
add ecx, eax
push dword ptr [ecx+4]
call HISVALIDHEXDIGIT
add esp, 16
test eax, eax
je .Lt_0450
sub esp, 12
push 0
push -1
sub esp, 8
push 5
push offset Lt_0451
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0450:
.Lt_044F:
jmp .Lt_044B
.Lt_044C:
cmp dword ptr [ebp-4], 63
jne .Lt_0453
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0428
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-36]
sal eax, 2
mov ecx, dword ptr [ebp+12]
add ecx, eax
cmp dword ptr [ecx+4], 63
jne .Lt_0456
mov ecx, dword ptr [ebp-36]
sal ecx, 2
mov eax, dword ptr [ebp+12]
add eax, ecx
mov ecx, dword ptr [eax+8]
mov dword ptr [ebp-56], ecx
cmp dword ptr [ebp-56], 61
je .Lt_045A
.Lt_045B:
cmp dword ptr [ebp-56], 47
je .Lt_045A
.Lt_045C:
cmp dword ptr [ebp-56], 39
je .Lt_045A
.Lt_045D:
cmp dword ptr [ebp-56], 40
je .Lt_045A
.Lt_045E:
cmp dword ptr [ebp-56], 41
je .Lt_045A
.Lt_045F:
cmp dword ptr [ebp-56], 33
je .Lt_045A
.Lt_0460:
cmp dword ptr [ebp-56], 60
je .Lt_045A
.Lt_0461:
cmp dword ptr [ebp-56], 62
je .Lt_045A
.Lt_0462:
cmp dword ptr [ebp-56], 45
jne .Lt_0459
.Lt_045A:
sub esp, 12
push 0
push -1
sub esp, 8
push 5
push offset Lt_0451
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ecx, [ebp-68]
push ecx
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0459:
.Lt_0457:
.Lt_0456:
.Lt_0455:
jmp .Lt_044B
.Lt_0453:
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
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_044B:
.Lt_0448:
inc dword ptr [ebp-36]
.Lt_0447:
mov eax, dword ptr [ebp-40]
cmp dword ptr [ebp-36], eax
jle .Lt_044A
.Lt_0449:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00C9
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0443:
pop ebx
mov esp, ebp
pop ebp
ret
.size HBUILDWSTRLIT, .-HBUILDWSTRLIT
.balign 16
HBOPTOSTR:
.type HBOPTOSTR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0466:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_0469
.Lt_046B:
mov eax, offset Lt_046C
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_046D:
mov eax, offset Lt_046E
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_046F:
mov eax, offset Lt_0470
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_0471:
mov eax, offset Lt_0472
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_0473:
mov eax, offset Lt_0472
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_0474:
mov eax, offset Lt_0475
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_0476:
mov eax, offset Lt_0477
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_0478:
mov eax, offset Lt_0479
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_047A:
mov eax, offset Lt_047B
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_047C:
mov eax, offset Lt_047D
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_047E:
mov eax, offset Lt_047F
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_0480:
mov eax, offset Lt_0481
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_0482:
mov eax, offset Lt_0483
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_0484:
mov eax, offset Lt_0485
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_0486:
mov eax, offset Lt_0487
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_0488:
mov eax, offset Lt_0489
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_048A:
mov eax, offset Lt_048B
mov dword ptr [ebp-4], eax
jmp .Lt_0468
.Lt_0469:
mov eax, dword ptr [ebp-8]
add eax, 4294967268
cmp eax, 22
ja .Lt_0468
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_048C+eax*4-112]
.LT_048C:
.int .Lt_046B
.int .Lt_046D
.int .Lt_046F
.int .Lt_0471
.int .Lt_0473
.int .Lt_0474
.int .Lt_047A
.int .Lt_047C
.int .Lt_0468
.int .Lt_0468
.int .Lt_047E
.int .Lt_0468
.int .Lt_0468
.int .Lt_0476
.int .Lt_0478
.int .Lt_0468
.int .Lt_0468
.int .Lt_0480
.int .Lt_0482
.int .Lt_0484
.int .Lt_0486
.int .Lt_0488
.int .Lt_048A
.Lt_0468:
.Lt_0467:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HBOPTOSTR, .-HBOPTOSTR
.balign 16
HUOPTOSTR:
.type HUOPTOSTR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_048D:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 22
jne .Lt_0490
.Lt_0491:
mov eax, offset Lt_0492
mov dword ptr [ebp-4], eax
jmp .Lt_048F
.Lt_0490:
cmp dword ptr [ebp+8], 76
jne .Lt_0493
.Lt_0494:
mov eax, offset Lt_0335
mov dword ptr [ebp-4], eax
jmp .Lt_048F
.Lt_0493:
cmp dword ptr [ebp+8], 54
jne .Lt_0495
.Lt_0496:
mov eax, offset Lt_0435
mov dword ptr [ebp-4], eax
jmp .Lt_048F
.Lt_0495:
cmp dword ptr [ebp+8], 52
jne .Lt_0497
.Lt_0498:
mov eax, offset Lt_0499
mov dword ptr [ebp-4], eax
jmp .Lt_048F
.Lt_0497:
cmp dword ptr [ebp+8], 56
jne .Lt_049A
.Lt_049B:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_049C
mov dword ptr [ebp-8], 24
jmp .Lt_07BF
.Lt_049C:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_07BF:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .Lt_049F
.Lt_04A1:
mov ebx, offset Lt_04A2
mov dword ptr [ebp-4], ebx
jmp .Lt_049E
.Lt_04A3:
mov ebx, offset Lt_04A4
mov dword ptr [ebp-4], ebx
jmp .Lt_049E
.Lt_04A5:
mov ebx, offset Lt_04A6
mov dword ptr [ebp-4], ebx
jmp .Lt_049E
.Lt_04A7:
mov ebx, offset Lt_04A8
mov dword ptr [ebp-4], ebx
jmp .Lt_049E
.Lt_049F:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967289
cmp ebx, 3
ja .Lt_04A7
mov ebx, dword ptr [ebp-12]
jmp dword ptr [.LT_04A9+ebx*4-28]
.LT_04A9:
.int .Lt_04A5
.int .Lt_04A5
.int .Lt_04A1
.int .Lt_04A3
.Lt_049E:
jmp .Lt_048F
.Lt_049A:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], -1
mov ebx, dword ptr [ebp+12]
and ebx, 511
cmp ebx, 15
jne .Lt_04AC
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .Lt_04AE
.Lt_04B0:
mov ebx, offset Lt_04B1
mov dword ptr [ebp-4], ebx
jmp .Lt_04AD
.Lt_04B2:
mov ebx, offset Lt_04B3
mov dword ptr [ebp-4], ebx
jmp .Lt_04AD
.Lt_04B4:
mov ebx, offset Lt_04B5
mov dword ptr [ebp-4], ebx
jmp .Lt_04AD
.Lt_04B6:
mov ebx, offset Lt_04B7
mov dword ptr [ebp-4], ebx
jmp .Lt_04AD
.Lt_04B8:
mov ebx, offset Lt_04B9
mov dword ptr [ebp-4], ebx
jmp .Lt_04AD
.Lt_04BA:
mov ebx, offset Lt_04BB
mov dword ptr [ebp-4], ebx
jmp .Lt_04AD
.Lt_04BC:
mov ebx, offset Lt_04BD
mov dword ptr [ebp-4], ebx
jmp .Lt_04AD
.Lt_04BE:
mov ebx, offset Lt_04BF
mov dword ptr [ebp-4], ebx
jmp .Lt_04AD
.Lt_04C0:
mov ebx, offset Lt_04C1
mov dword ptr [ebp-4], ebx
jmp .Lt_04AD
.Lt_04C2:
mov ebx, offset Lt_04C3
mov dword ptr [ebp-4], ebx
jmp .Lt_04AD
.Lt_04C4:
jmp .Lt_04AD
.Lt_04AE:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967238
cmp ebx, 12
ja .Lt_04C4
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.LT_04C5+ebx*4-232]
.LT_04C5:
.int .Lt_04B0
.int .Lt_04B2
.int .Lt_04B4
.int .Lt_04B6
.int .Lt_04B8
.int .Lt_04BA
.int .Lt_04C4
.int .Lt_04BC
.int .Lt_04C4
.int .Lt_04C4
.int .Lt_04BE
.int .Lt_04C0
.int .Lt_04C2
.Lt_04AD:
jmp .Lt_04AB
.Lt_04AC:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .Lt_04C7
.Lt_04C9:
mov ebx, offset Lt_04CA
mov dword ptr [ebp-4], ebx
jmp .Lt_04C6
.Lt_04CB:
mov ebx, offset Lt_04CC
mov dword ptr [ebp-4], ebx
jmp .Lt_04C6
.Lt_04CD:
mov ebx, offset Lt_04CE
mov dword ptr [ebp-4], ebx
jmp .Lt_04C6
.Lt_04CF:
mov ebx, offset Lt_04D0
mov dword ptr [ebp-4], ebx
jmp .Lt_04C6
.Lt_04D1:
mov ebx, offset Lt_04D2
mov dword ptr [ebp-4], ebx
jmp .Lt_04C6
.Lt_04D3:
mov ebx, offset Lt_04D4
mov dword ptr [ebp-4], ebx
jmp .Lt_04C6
.Lt_04D5:
mov ebx, offset Lt_04D6
mov dword ptr [ebp-4], ebx
jmp .Lt_04C6
.Lt_04D7:
mov ebx, offset Lt_04D8
mov dword ptr [ebp-4], ebx
jmp .Lt_04C6
.Lt_04D9:
mov ebx, offset Lt_04DA
mov dword ptr [ebp-4], ebx
jmp .Lt_04C6
.Lt_04DB:
mov ebx, offset Lt_04DC
mov dword ptr [ebp-4], ebx
jmp .Lt_04C6
.Lt_04DD:
jmp .Lt_04C6
.Lt_04C7:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967238
cmp ebx, 12
ja .Lt_04DD
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.LT_04DE+ebx*4-232]
.LT_04DE:
.int .Lt_04C9
.int .Lt_04CB
.int .Lt_04CD
.int .Lt_04CF
.int .Lt_04D1
.int .Lt_04D3
.int .Lt_04DD
.int .Lt_04D5
.int .Lt_04DD
.int .Lt_04DD
.int .Lt_04D7
.int .Lt_04D9
.int .Lt_04DB
.Lt_04C6:
.Lt_04AB:
.Lt_04AA:
.Lt_048F:
.Lt_048E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUOPTOSTR, .-HUOPTOSTR
.balign 16
HIMM2TEXT:
.type HIMM2TEXT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_04DF:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_04E1
mov dword ptr [ebp-4], 24
jmp .Lt_07C0
.Lt_04E1:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_07C0:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_04E4
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call HEMITFLOAT
add esp, 16
push eax
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
jmp .Lt_04E3
.Lt_04E4:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call HEMITINT
add esp, 16
push eax
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
.Lt_04E3:
.Lt_04E0:
pop ebx
mov esp, ebp
pop ebp
ret
.size HIMM2TEXT, .-HIMM2TEXT
.balign 16
HSYM2TEXT:
.type HSYM2TEXT, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_04E7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .Lt_04EA
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 7
jne .Lt_04EC
mov ebx, dword ptr [SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call __divdi3
add esp, 16
push edx
push eax
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call HUNESCAPEW
add esp, 8
push eax
push dword ptr [ebp+8]
call HBUILDWSTRLIT
add esp, 16
jmp .Lt_04EB
.Lt_04EC:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+44]
push dword ptr [eax+40]
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call HUNESCAPE
add esp, 8
push eax
push dword ptr [ebp+8]
call HBUILDSTRLIT
add esp, 16
.Lt_04EB:
jmp .Lt_04E9
.Lt_04EA:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 7
jne .Lt_04EE
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_04EF
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
jmp .Lt_04ED
.Lt_04EE:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .Lt_04F1
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0492
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
.Lt_04F1:
.Lt_04ED:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
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
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_04E9:
.Lt_04E8:
pop ebx
mov esp, ebp
pop ebp
ret
.size HSYM2TEXT, .-HSYM2TEXT
.balign 16
HEXPRFLUSH:
.type HEXPRFLUSH, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_04F4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .Lt_04F7
.Lt_04F9:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
push -1
lea ebx, [CTX+2712]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_04F6
.Lt_04FB:
sub esp, 8
push dword ptr [ebp+8]
lea eax, [CTX+2712]
push eax
call HIMM2TEXT
add esp, 16
jmp .Lt_04F6
.Lt_04FC:
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
lea eax, [CTX+2712]
push eax
call HSYM2TEXT
add esp, 16
jmp .Lt_04F6
.Lt_04FD:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_012F
push -1
sub esp, 4
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call HEMITTYPE
add esp, 16
push eax
push 2
push offset Lt_0431
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
add esp, 32
push eax
push -1
lea eax, [CTX+2712]
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
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 16
jmp .Lt_04F6
.Lt_0501:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 112
jne .Lt_0504
.Lt_0505:
sub esp, 12
push 0
push 19
push offset Lt_0506
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call HEXPRFLUSH
add esp, 16
sub esp, 12
push 0
push 3
push offset Lt_013A
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call HEMITTYPE
add esp, 16
push eax
push -1
lea eax, [CTX+2712]
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
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_012F
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0502
.Lt_0504:
cmp dword ptr [ebp-20], 109
jne .Lt_0508
.Lt_0509:
sub esp, 12
push 0
push 21
push offset Lt_050A
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 16
sub esp, 12
push 0
push 3
push offset Lt_013A
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call HEXPRFLUSH
add esp, 16
sub esp, 12
push 0
push 2
push offset Lt_012F
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0502
.Lt_0508:
cmp dword ptr [ebp-20], 110
jne .Lt_050B
.Lt_050C:
sub esp, 12
push 0
push 19
push offset Lt_050D
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 16
sub esp, 12
push 0
push 2
push offset Lt_012F
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0502
.Lt_050B:
cmp dword ptr [ebp-20], 111
jne .Lt_050E
.Lt_050F:
sub esp, 12
push 0
push 20
push offset Lt_0510
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 16
sub esp, 12
push 0
push 3
push offset Lt_013A
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call HEXPRFLUSH
add esp, 16
sub esp, 12
push 0
push 2
push offset Lt_012F
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_050E:
.Lt_0511:
.Lt_0502:
jmp .Lt_04F6
.Lt_0512:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 4
lea eax, [ebp-12]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call HUOPTOSTR
add esp, 16
push eax
push -1
lea eax, [CTX+2712]
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
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-12]
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
je .Lt_0515
sub esp, 12
push 0
push 2
push offset Lt_0431
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp-12], 0
je .Lt_0517
sub esp, 12
push 0
push 2
push offset Lt_00DF
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0517:
.Lt_0516:
.Lt_0515:
.Lt_0514:
sub esp, 8
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HEXPRFLUSH
add esp, 16
cmp dword ptr [ebp+12], 0
je .Lt_0519
cmp dword ptr [ebp-12], 0
je .Lt_051B
sub esp, 12
push 0
push 2
push offset Lt_00DF
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_051B:
.Lt_051A:
sub esp, 12
push 0
push 2
push offset Lt_012F
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0519:
.Lt_0518:
jmp .Lt_04F6
.Lt_051C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 64
jne .Lt_051F
.Lt_0520:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .Lt_0522
sub esp, 12
push 0
push 17
push offset Lt_0523
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0521
.Lt_0522:
sub esp, 12
push 0
push 16
push offset Lt_0524
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_0521:
sub esp, 12
push 0
push 2
push offset Lt_0431
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call HEXPRFLUSH
add esp, 16
sub esp, 12
push 0
push 3
push offset Lt_013A
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
call HEXPRFLUSH
add esp, 16
sub esp, 12
push 0
push 2
push offset Lt_012F
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_051D
.Lt_051F:
cmp dword ptr [ebp+12], 0
je .Lt_0527
sub esp, 12
push 0
push 2
push offset Lt_0431
push -1
lea ebx, [CTX+2712]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_0527:
.Lt_0526:
sub esp, 8
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call HEXPRFLUSH
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
call HBOPTOSTR
add esp, 16
push eax
push -1
lea eax, [CTX+2712]
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
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call HEXPRFLUSH
add esp, 16
cmp dword ptr [ebp+12], 0
je .Lt_052A
sub esp, 12
push 0
push 2
push offset Lt_012F
push -1
lea eax, [CTX+2712]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_052A:
.Lt_0529:
.Lt_0525:
.Lt_051D:
jmp .Lt_04F6
.Lt_04F7:
cmp dword ptr [ebp-16], 6
ja .Lt_04F6
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_052B+eax*4]
.LT_052B:
.int .Lt_04F9
.int .Lt_04FB
.int .Lt_04FC
.int .Lt_04FD
.int .Lt_0512
.int .Lt_051C
.int .Lt_0501
.Lt_04F6:
.Lt_04F5:
pop ebx
mov esp, ebp
pop ebp
ret
.size HEXPRFLUSH, .-HEXPRFLUSH
.balign 16
EXPRFLUSH:
.type EXPRFLUSH, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_052C:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HEXPRFLUSH
add esp, 16
sub esp, 12
push 0
push -1
lea eax, [CTX+2712]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+2712]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp+8]
call EXPRFREETREE
add esp, 16
.Lt_052D:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size EXPRFLUSH, .-EXPRFLUSH
.balign 16
EXPRNEWOFFSET:
.type EXPRNEWOFFSET, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_052E:
sub esp, 12
push dword ptr [ebp+8]
call EXPRNEWSYM
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
sub esp, 12
push dword ptr [ebp+8]
call SYMBISCARRAY
add esp, 16
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
test ebx, ebx
jne .Lt_0531
sub esp, 8
push dword ptr [ebp-8]
push 22
call EXPRNEWUOP
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0531:
.Lt_0530:
cmp dword ptr [ebp+16], 0
jne .Lt_07C5
cmp dword ptr [ebp+12], 0
je .Lt_0533
.Lt_07C5:
sub esp, 4
push dword ptr [ebp-8]
push 0
push 35
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 28
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0533:
.Lt_0532:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_052F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size EXPRNEWOFFSET, .-EXPRNEWOFFSET
.balign 16
EXPRNEWVREG:
.type EXPRNEWVREG, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_0534:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .Lt_0537
.Lt_0539:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+32], 0
jne .Lt_053B
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+48], 0
je .Lt_053D
sub esp, 8
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+48]
call EXPRNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .Lt_07CD
cmp dword ptr [eax+36], 0
je .Lt_053F
.Lt_07CD:
sub esp, 4
push dword ptr [ebp-8]
push 0
push 35
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 28
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_053F:
.Lt_053E:
jmp .Lt_053C
.Lt_053D:
sub esp, 4
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call EXPRNEWIMMI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_053C:
sub esp, 4
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
push ebx
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push dword ptr [ebp-8]
push 76
call EXPRNEWUOP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0536
.Lt_053B:
.Lt_053A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
mov ebx, -1
jne .Lt_07CE
cmp dword ptr [eax+36], 0
jne .Lt_07CE
.Lt_07CF:
xor ebx, ebx
.Lt_07CE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-16], ebx
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call SYMBISCARRAY
add esp, 16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-16]
mov dword ptr [ebp-28], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call EXPRNEWSYM
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-32]
cmp ebx, dword ptr [eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
cmp ecx, dword ptr [ebp-36]
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0541
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0542
mov dword ptr [ebp-40], 24
jmp .Lt_07C6
.Lt_0542:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_07C6:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-32]
and eax, 480
je .Lt_0544
mov dword ptr [ebp-44], 24
jmp .Lt_07C7
.Lt_0544:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_07C7:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ebx, dword ptr [ebp-48]
mov ecx, dword ptr [SYMB_DTYPETB+eax]
cmp ecx, dword ptr [SYMB_DTYPETB+ebx]
setne cl
shr ecx, 1
sbb ecx, ecx
or dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .Lt_0546
mov dword ptr [ebp-52], 24
jmp .Lt_07C9
.Lt_0546:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-52], ecx
.Lt_07C9:
mov ecx, dword ptr [ebp-52]
mov dword ptr [ebp-56], ecx
cmp dword ptr [ebp-56], 17
jne .Lt_054A
.Lt_054B:
mov dword ptr [ebp-28], -1
jmp .Lt_0548
.Lt_054A:
cmp dword ptr [ebp-56], 20
jne .Lt_054C
.Lt_054D:
sub esp, 8
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+32]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
push dword ptr [ecx+28]
call SYMBGETVALISTTYPE
add esp, 16
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
or dword ptr [ebp-28], eax
jmp .Lt_0548
.Lt_054C:
mov eax, dword ptr [ebp-32]
and eax, 480
je .Lt_054F
mov dword ptr [ebp-60], 24
jmp .Lt_07CA
.Lt_054F:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-60], eax
.Lt_07CA:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 17
jne .Lt_0553
.Lt_0554:
mov dword ptr [ebp-28], -1
jmp .Lt_0551
.Lt_0553:
cmp dword ptr [ebp-64], 20
jne .Lt_0555
.Lt_0556:
sub esp, 8
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+32]
push dword ptr [eax+28]
call SYMBGETVALISTTYPE
add esp, 16
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
or dword ptr [ebp-28], eax
.Lt_0555:
.Lt_0551:
.Lt_054E:
.Lt_0548:
.Lt_0541:
.Lt_0540:
cmp dword ptr [ebp-28], 0
jne .Lt_0558
jmp .Lt_0536
.Lt_0558:
.Lt_0557:
cmp dword ptr [ebp-24], 0
jne .Lt_055A
sub esp, 8
push dword ptr [ebp-8]
push 22
call EXPRNEWUOP
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_055A:
.Lt_0559:
cmp dword ptr [ebp-16], 0
je .Lt_055C
sub esp, 4
push dword ptr [ebp-8]
push 0
push 35
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
je .Lt_055E
sub esp, 4
sub esp, 4
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
call EXPRNEWVREG
add esp, 12
push eax
push dword ptr [ebp-8]
push 28
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_055E:
.Lt_055D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .Lt_07D6
cmp dword ptr [eax+36], 0
je .Lt_0560
.Lt_07D6:
sub esp, 4
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 28
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0560:
.Lt_055F:
.Lt_055C:
.Lt_055B:
sub esp, 4
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
add ebx, 32
or ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 261632
sal eax, 1
or ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32505856
or ecx, ebx
push ecx
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push dword ptr [ebp-8]
push 76
call EXPRNEWUOP
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0536
.Lt_0561:
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call EXPRNEWOFFSET
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0536
.Lt_0562:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .Lt_0563
mov dword ptr [ebp-24], 24
jmp .Lt_07CB
.Lt_0563:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-24], ecx
.Lt_07CB:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
cmp dword ptr [SYMB_DTYPETB+ecx], 1
jne .Lt_0566
sub esp, 4
push dword ptr [ebp-12]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+28]
push dword ptr [ecx+24]
call EXPRNEWIMMF
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0565
.Lt_0566:
cmp dword ptr [ebp-12], 1
jne .Lt_0567
sub esp, 4
push 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jne .Lt_07D7
cmp dword ptr [eax+24], 0
je .Lt_0568
.Lt_07D7:
mov dword ptr [ebp-28], 1
jmp .Lt_07CC
.Lt_0568:
mov dword ptr [ebp-28], 0
.Lt_07CC:
mov ecx, dword ptr [ebp-28]
mov eax, ecx
sar eax, 31
push eax
push ecx
call EXPRNEWIMMI
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0565
.Lt_0567:
sub esp, 4
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call EXPRNEWIMMI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0565:
jmp .Lt_0536
.Lt_056A:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call EXPRLOOKUP
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_056C
sub esp, 4
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
sub esp, 8
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
push offset Lt_056D
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
add esp, 28
push dword ptr [ebp-44]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWTEXT
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
.Lt_056C:
.Lt_056B:
jmp .Lt_0536
.Lt_0537:
cmp dword ptr [ebp-20], 5
ja .Lt_0536
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_0570+eax*4]
.LT_0570:
.int .Lt_0562
.int .Lt_0539
.int .Lt_0539
.int .Lt_0539
.int .Lt_056A
.int .Lt_0561
.Lt_0536:
cmp dword ptr [ebp+12], 0
jne .Lt_0572
sub esp, 4
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0572:
.Lt_0571:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0535:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size EXPRNEWVREG, .-EXPRNEWVREG
.balign 16
_EMITLABEL:
.type _EMITLABEL, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_0573:
call SECTIONINSIDEPROC
test eax, eax
je .Lt_0576
sub esp, 8
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push 3
push offset Lt_0577
push 0
sub esp, 4
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 8
push eax
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
.Lt_0576:
.Lt_0575:
.Lt_0574:
mov esp, ebp
pop ebp
ret
.size _EMITLABEL, .-_EMITLABEL
.balign 16
EXPRSTORE:
.type EXPRSTORE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_057A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .Lt_057D
cmp dword ptr [ebp+16], 0
je .Lt_057F
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
push offset Lt_056D
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_07D8
call fb_StrAssign
add esp, 32
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
push offset Lt_07D9
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00DF
push -1
push offset Lt_07D9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_07D8
push -1
push offset Lt_07D9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_01B9
push -1
push offset Lt_07D9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call EXPRFLUSH
add esp, 12
push eax
push -1
push offset Lt_07D9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_017B
push -1
push offset Lt_07D9
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push offset Lt_07D9
call HWRITELINE
add esp, 16
sub esp, 4
push dword ptr [Lt_07D8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWTEXT
add esp, 16
mov dword ptr [ebp+12], eax
jmp .Lt_057E
.Lt_057F:
sub esp, 4
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_057E:
sub esp, 8
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call EXPRCACHE
add esp, 16
jmp .Lt_057C
.Lt_057D:
sub esp, 8
push -1
push dword ptr [ebp+8]
call EXPRNEWVREG
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 4
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 480
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0582
sub esp, 4
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+4]
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_0582:
.Lt_0581:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp-4]
call EXPRFLUSH
add esp, 12
push eax
push -1
push offset Lt_07D9
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_01B9
push -1
push offset Lt_07D9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call EXPRFLUSH
add esp, 12
push eax
push -1
push offset Lt_07D9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_017B
push -1
push offset Lt_07D9
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push offset Lt_07D9
call HWRITELINE
add esp, 16
.Lt_057C:
.Lt_057B:
pop ebx
mov esp, ebp
pop ebp
ret
.size EXPRSTORE, .-EXPRSTORE

.section .bss
.balign 4
	.lcomm	Lt_07D9,12
.balign 4
	.lcomm	Lt_07D8,12

.section .text
.balign 16
_EMITBOP:
.type _EMITBOP, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0583:
sub esp, 8
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+24], 0
je .Lt_0586
sub esp, 12
push 0
push 5
push offset Lt_0587
push -1
push offset Lt_07DD
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 20
push eax
call EXPRFLUSH
add esp, 12
push eax
push -1
push offset Lt_07DD
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 9
push offset Lt_0588
push -1
push offset Lt_07DD
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+24]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
push offset Lt_07DD
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_07DD
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_017B
push -1
push offset Lt_07DD
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push offset Lt_07DD
call HWRITELINE
add esp, 16
jmp .Lt_0584
.Lt_0586:
.Lt_0585:
cmp dword ptr [ebp+20], 0
jne .Lt_058B
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
.Lt_058B:
.Lt_058A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_058D
.Lt_058F:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
je .Lt_0591
sub esp, 8
push dword ptr [ebp-4]
push 54
call EXPRNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0591:
.Lt_0590:
jmp .Lt_058C
.Lt_0592:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
je .Lt_0594
sub esp, 4
push dword ptr [ebp-4]
push 0
push 35
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0594:
.Lt_0593:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
je .Lt_0596
sub esp, 4
push dword ptr [ebp-8]
push 0
push 35
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0596:
.Lt_0595:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_058C
.Lt_0597:
sub esp, 4
push dword ptr [ebp-4]
push 0
push 16
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 4
push dword ptr [ebp-8]
push 0
push 16
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_058C
.Lt_0598:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_058C
.Lt_0599:
sub esp, 4
push 8
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_059A
mov dword ptr [ebp-16], 24
jmp .Lt_07DC
.Lt_059A:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_07DC:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
sal ebx, 3
dec ebx
mov ecx, ebx
mov eax, ecx
sar eax, 31
push eax
push ecx
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 34
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_058C
.Lt_059C:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 38
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
jne .Lt_059E
sub esp, 4
push 8
push 0
push 1
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 38
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_059D
.Lt_059E:
sub esp, 8
push dword ptr [ebp-4]
push 52
call EXPRNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_059D:
jmp .Lt_058C
.Lt_059F:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
jne .Lt_05A1
sub esp, 4
push 8
push 0
push 1
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 38
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_05A0
.Lt_05A1:
sub esp, 8
push dword ptr [ebp-4]
push 52
call EXPRNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_05A0:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 35
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_058C
.Lt_058D:
mov eax, dword ptr [ebp-12]
add eax, 4294967268
cmp eax, 22
ja .Lt_058C
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_05A2+eax*4-112]
.LT_05A2:
.int .Lt_0592
.int .Lt_0592
.int .Lt_0598
.int .Lt_0597
.int .Lt_0598
.int .Lt_0598
.int .Lt_0598
.int .Lt_0598
.int .Lt_058C
.int .Lt_058C
.int .Lt_0598
.int .Lt_059C
.int .Lt_059F
.int .Lt_0599
.int .Lt_0599
.int .Lt_058C
.int .Lt_058C
.int .Lt_058F
.int .Lt_058F
.int .Lt_058F
.int .Lt_058F
.int .Lt_058F
.int .Lt_058F
.Lt_058C:
sub esp, 4
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
call EXPRSTORE
add esp, 16
.Lt_0584:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITBOP, .-_EMITBOP

.section .bss
.balign 4
	.lcomm	Lt_07DD,12

.section .text
.balign 16
_EMITUOP:
.type _EMITUOP, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_05A3:
cmp dword ptr [ebp+16], 0
jne .Lt_05A6
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+16], eax
.Lt_05A6:
.Lt_05A5:
sub esp, 8
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
cmp eax, 52
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+4]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_05A8
sub esp, 4
push 8
push 0
push 0
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 45
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_05A7
.Lt_05A8:
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_05A7:
sub esp, 4
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+16]
call EXPRSTORE
add esp, 16
.Lt_05A4:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITUOP, .-_EMITUOP
.balign 16
_EMITCONVERT:
.type _EMITCONVERT, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_05A9:
sub esp, 8
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
cmp ebx, 1
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+4]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_05AC
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx], 1
jne .Lt_05AE
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+24], 0
mov ebx, -1
jne .Lt_07E9
cmp dword ptr [ecx+20], 0
jne .Lt_07E9
.Lt_07EA:
xor ebx, ebx
.Lt_07E9:
mov eax, ebx
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 11
jmp .Lt_05AD
.Lt_05AE:
sub esp, 8
push dword ptr [ebp-4]
push 54
call EXPRNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_05AD:
jmp .Lt_05AB
.Lt_05AC:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
cmp ecx, 1
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
cmp ebx, 1
setne bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .Lt_05AF
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 1
jne .Lt_05B1
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+4]
and ecx, 480
je .Lt_05B2
mov dword ptr [ebp-16], 24
jmp .Lt_07E0
.Lt_05B2:
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_07E0:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 1
jne .Lt_05B4
mov ebx, dword ptr [ebp-4]
fld qword ptr [ebx+20]
fcomp qword ptr [Lt_07E2]
push eax
fnstsw ax
test ah, 0b01000000
pop eax
setz bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_07E1
.Lt_05B4:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+24], 0
mov ecx, -1
jne .Lt_07EE
cmp dword ptr [ebx+20], 0
jne .Lt_07EE
.Lt_07EF:
xor ecx, ecx
.Lt_07EE:
mov dword ptr [ebp-20], ecx
.Lt_07E1:
mov ecx, dword ptr [ebp-20]
neg ecx
mov eax, ecx
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+20], eax
mov dword ptr [ecx+24], ebx
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 11
jmp .Lt_05B0
.Lt_05B1:
sub esp, 4
push 8
push 0
push 0
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 48
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_05B0:
jmp .Lt_05AB
.Lt_05AF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_05B7
mov dword ptr [ebp-8], 24
jmp .Lt_07E3
.Lt_05B7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_07E3:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_05B9
mov dword ptr [ebp-12], 24
jmp .Lt_07E4
.Lt_05B9:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_07E4:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-16]
je .Lt_05B6
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_05BB
mov dword ptr [ebp-36], 24
jmp .Lt_07E6
.Lt_05BB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_07E6:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 5
jg .Lt_05BF
.Lt_05C0:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .Lt_05C2
sub esp, 12
push 0
push 7
push offset Lt_05C3
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 32
or dword ptr [CTX+2604], 1
jmp .Lt_05C1
.Lt_05C2:
sub esp, 12
push 0
push 7
push offset Lt_05C4
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 32
or dword ptr [CTX+2604], 8
.Lt_05C1:
mov dword ptr [ebp-32], 11
jmp .Lt_05BD
.Lt_05BF:
cmp dword ptr [ebp-40], 7
jg .Lt_05C5
.Lt_05C6:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .Lt_05C8
sub esp, 12
push 0
push 7
push offset Lt_05C9
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 32
or dword ptr [CTX+2604], 2
jmp .Lt_05C7
.Lt_05C8:
sub esp, 12
push 0
push 7
push offset Lt_05CA
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 32
or dword ptr [CTX+2604], 16
.Lt_05C7:
mov dword ptr [ebp-32], 13
jmp .Lt_05BD
.Lt_05C5:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .Lt_05CD
sub esp, 12
push 0
push 8
push offset Lt_05CE
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 32
or dword ptr [CTX+2604], 4
jmp .Lt_05CC
.Lt_05CD:
sub esp, 12
push 0
push 8
push offset Lt_05CF
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrAssign
add esp, 32
or dword ptr [CTX+2604], 32
.Lt_05CC:
mov dword ptr [ebp-32], 14
.Lt_05CB:
.Lt_05BD:
sub esp, 12
push 0
push 3
push offset Lt_00EB
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp-4]
call EXPRFLUSH
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
push offset Lt_00EC
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 4
push dword ptr [ebp-28]
push 0
push dword ptr [ebp-32]
call EXPRNEWTEXT
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.Lt_05B6:
.Lt_05AB:
sub esp, 4
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call EXPRSTORE
add esp, 16
.Lt_05AA:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITCONVERT, .-_EMITCONVERT
.balign 16
_EMITSTORE:
.type _EMITSTORE, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_05D0:
sub esp, 4
push 0
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
push eax
push dword ptr [ebp+8]
call EXPRSTORE
add esp, 16
.Lt_05D1:
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
.Lt_05D2:
.Lt_05D3:
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
.Lt_05D4:
.Lt_05D5:
mov esp, ebp
pop ebp
ret
.size _EMITLOAD, .-_EMITLOAD
.balign 16
_EMITLOADRES:
.type _EMITLOADRES, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_05D6:
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call _EMITSTORE
add esp, 16
sub esp, 8
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
sub esp, 4
push -1
sub esp, 8
push 0
sub esp, 12
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 20
push eax
call EXPRFLUSH
add esp, 16
push eax
push 8
push offset Lt_05D8
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
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.Lt_05D7:
mov esp, ebp
pop ebp
ret
.size _EMITLOADRES, .-_EMITLOADRES
.balign 16
_EMITADDR:
.type _EMITADDR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_05DC:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 22
jne .Lt_05DF
.Lt_05E0:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+32], 0
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_05E2
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+32]
cmp dword ptr [ebx], 7
jne .Lt_05E4
sub esp, 12
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
call EXPRNEWSYM
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 4
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_05DE
.Lt_05E4:
.Lt_05E3:
.Lt_05E2:
.Lt_05E1:
sub esp, 8
push -1
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 8
push eax
push 22
call EXPRNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_05DE
.Lt_05DF:
cmp dword ptr [ebp+8], 76
jne .Lt_05E5
.Lt_05E6:
sub esp, 8
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_05E5:
.Lt_05DE:
sub esp, 4
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+16]
call EXPRSTORE
add esp, 16
.Lt_05DD:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITADDR, .-_EMITADDR
.balign 16
HDOCALL:
.type HDOCALL, @function
push ebp
mov ebp, esp
sub esp, 84
push ebx
.Lt_05E7:
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_00EB
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
sub esp, 12
lea eax, [IRHL+60]
push eax
call LISTGETTAIL
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_05EA:
cmp dword ptr [ebp-4], 0
je .Lt_05EC
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+8]
cmp ebx, dword ptr [ebp+20]
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
jmp .Lt_07F4
.Lt_05EC:
mov dword ptr [ebp-28], 0
.Lt_07F4:
cmp dword ptr [ebp-28], 0
je .Lt_05EB
sub esp, 12
push dword ptr [ebp-4]
call LISTGETPREV
add esp, 16
mov dword ptr [ebp-44], eax
sub esp, 8
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
call EXPRNEWVREG
add esp, 16
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
je .Lt_05EE
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx+56], 4
setne al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-52], ebx
jmp .Lt_07F5
.Lt_05EE:
mov dword ptr [ebp-52], 0
.Lt_07F5:
cmp dword ptr [ebp-52], 0
je .Lt_05F1
sub esp, 4
lea ebx, [ebp-12]
push ebx
lea ebx, [ebp-8]
push ebx
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx]
call _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
add esp, 16
sub esp, 4
push dword ptr [ebp-48]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-48], eax
.Lt_05F1:
.Lt_05F0:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push 0
push dword ptr [ebp-48]
call EXPRFLUSH
add esp, 16
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
sub esp, 8
push dword ptr [ebp-4]
lea eax, [IRHL+60]
push eax
call LISTDELNODE
add esp, 16
cmp dword ptr [ebp-44], 0
je .Lt_05F4
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [ebp+20]
cmp dword ptr [eax+8], ebx
jne .Lt_05F6
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_013A
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea ebx, [ebp-76]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_05F6:
.Lt_05F5:
.Lt_05F4:
.Lt_05F3:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-4], eax
jmp .Lt_05EA
.Lt_05EB:
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_00EC
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
cmp dword ptr [ebp+16], 0
jne .Lt_05FA
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [ebp+8]
call HWRITELINE
add esp, 16
jmp .Lt_05F9
.Lt_05FA:
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call EXPRNEWTEXT
add esp, 24
push eax
push dword ptr [ebp+16]
call EXPRSTORE
add esp, 16
.Lt_05F9:
.Lt_05E8:
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
sub esp, 8
.Lt_05FC:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
push offset Lt_07FA
call fb_StrAssign
add esp, 32
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push offset Lt_07FA
call HDOCALL
add esp, 16
.Lt_05FD:
mov esp, ebp
pop ebp
ret
.size _EMITCALL, .-_EMITCALL

.section .bss
.balign 4
	.lcomm	Lt_07FA,12

.section .text
.balign 16
_EMITCALLPTR:
.type _EMITCALLPTR, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_05FE:
sub esp, 12
push 0
push 2
push offset Lt_0431
push -1
push offset Lt_07FB
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 12
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 20
push eax
call EXPRFLUSH
add esp, 12
push eax
push -1
push offset Lt_07FB
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_012F
push -1
push offset Lt_07FB
call fb_StrConcatAssign
add esp, 32
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push offset Lt_07FB
call HDOCALL
add esp, 16
.Lt_05FF:
mov esp, ebp
pop ebp
ret
.size _EMITCALLPTR, .-_EMITCALLPTR

.section .bss
.balign 4
	.lcomm	Lt_07FB,12

.section .text
.balign 16
_EMITJUMPPTR:
.type _EMITJUMPPTR, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_0600:
sub esp, 8
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
sub esp, 4
push -1
sub esp, 8
push -1
sub esp, 12
push 0
push dword ptr [ebp+8]
call EXPRNEWVREG
add esp, 20
push eax
call EXPRFLUSH
add esp, 16
push eax
push 7
push offset Lt_0602
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
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.Lt_0601:
mov esp, ebp
pop ebp
ret
.size _EMITJUMPPTR, .-_EMITJUMPPTR
.balign 16
_EMITBRANCH:
.type _EMITBRANCH, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_0606:
sub esp, 8
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
sub esp, 4
push 0
sub esp, 12
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push 6
push offset Lt_0608
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
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.Lt_0607:
mov esp, ebp
pop ebp
ret
.size _EMITBRANCH, .-_EMITBRANCH
.balign 16
_EMITJMPTB:
.type _EMITJMPTB, @function
push ebp
mov ebp, esp
sub esp, 316
push ebx
push esi
push edi
.Lt_060C:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-44], ebx
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 12
push 0
push dword ptr [ebp+8]
call EXPRNEWVREG
add esp, 20
push eax
call EXPRFLUSH
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+24], 0
jg .Lt_060F
sub esp, 8
push -1
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
sub esp, 4
push 0
sub esp, 12
push dword ptr [ebp+28]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push 6
push offset Lt_0608
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-280]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-280]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push -1
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push 7
push offset Lt_0613
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
lea eax, [ebp-292]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-316]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-316]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-316]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_060D
.Lt_060F:
.Lt_060E:
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 4
push 8
mov ebx, dword ptr [ebp+40]
mov eax, dword ptr [ebp+44]
add ebx, 1
adc eax, 0
mov esi, ebx
mov ecx, eax
push ecx
push esi
call EXPRNEWIMMI
add esp, 16
mov dword ptr [ebp-40], eax
sub esp, 8
push -1
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
sub esp, 8
push 6
push offset Lt_0618
push -1
sub esp, 4
push -1
sub esp, 8
push 0
push dword ptr [ebp-40]
call EXPRFLUSH
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_019B
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 20
push offset Lt_0617
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
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
lea eax, [ebp-104]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-104]
push eax
call fb_StrDelete
add esp, 16
call SECTIONINDENT
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-112], 0
.Lt_061E:
mov dword ptr [ebp-248], 0
mov esi, dword ptr [ebp-112]
mov eax, esi
sar eax, 31
mov ecx, dword ptr [ebp-108]
sal ecx, 3
mov ebx, dword ptr [ebp+16]
add ebx, ecx
mov edi, dword ptr [ebx]
mov ecx, dword ptr [ebx+4]
cmp eax, ecx
jne .Lt_0622
cmp esi, edi
jne .Lt_0622
.Lt_07FC:
mov edi, dword ptr [ebp-108]
sal edi, 2
mov ecx, dword ptr [ebp+20]
add ecx, edi
mov edi, dword ptr [ecx]
mov dword ptr [ebp-248], edi
inc dword ptr [ebp-108]
jmp .Lt_0621
.Lt_0622:
mov edi, dword ptr [ebp+28]
mov dword ptr [ebp-248], edi
.Lt_0621:
sub esp, 8
push -1
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0623
push -1
sub esp, 4
push 0
sub esp, 12
push dword ptr [ebp-248]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push 3
push offset Lt_04EF
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
add esp, 28
push eax
push -1
lea eax, [ebp-284]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-284]
push eax
call fb_StrDelete
add esp, 16
mov edi, dword ptr [ebp-112]
mov eax, edi
sar eax, 31
mov esi, dword ptr [ebp+40]
mov ecx, dword ptr [ebp+44]
cmp eax, ecx
jne .Lt_0628
cmp edi, esi
jne .Lt_0628
.Lt_07FD:
jmp .Lt_061F
.Lt_0628:
.Lt_0627:
inc dword ptr [ebp-112]
.Lt_0620:
jmp .Lt_061E
.Lt_061F:
call SECTIONUNINDENT
sub esp, 8
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 3
push offset Lt_01FD
push -1
lea esi, [ebp-124]
push esi
call fb_StrAssign
add esp, 20
lea esi, [ebp-124]
push esi
call HWRITELINE
add esp, 16
sub esp, 12
lea esi, [ebp-124]
push esi
call fb_StrDelete
add esp, 16
sub esp, 4
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-44]
call EXPRNEWTEXT
add esp, 16
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp+36], 0
jne .Lt_07FE
cmp dword ptr [ebp+32], 0
je .Lt_062B
.Lt_07FE:
sub esp, 4
push dword ptr [ebp-44]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-40]
push 29
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-40], eax
.Lt_062B:
.Lt_062A:
sub esp, 4
push dword ptr [ebp-44]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-40]
push 46
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-40], eax
sub esp, 8
push -1
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
sub esp, 4
push 0
sub esp, 12
push dword ptr [ebp+28]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
sub esp, 4
push 9
push offset Lt_0588
push -1
sub esp, 4
push -1
sub esp, 8
push 0
push dword ptr [ebp-40]
call EXPRFLUSH
add esp, 16
push eax
push 5
push offset Lt_0587
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-184]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-184]
push eax
call fb_StrDelete
add esp, 16
sub esp, 4
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-44]
call EXPRNEWTEXT
add esp, 16
mov dword ptr [ebp-40], eax
sub esp, 4
push dword ptr [ebp-44]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-40]
push 29
call EXPRNEWBOP
add esp, 16
mov dword ptr [ebp-40], eax
sub esp, 8
push -1
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push -1
sub esp, 8
push 3
push offset Lt_023D
push -1
sub esp, 4
push -1
sub esp, 8
push 0
push dword ptr [ebp-40]
call EXPRFLUSH
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_019B
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 7
push offset Lt_0602
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-244]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-244]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-244]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_060D:
pop edi
pop esi
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
sub esp, 88
.Lt_0636:
cmp dword ptr [ebp+8], 107
jne .Lt_0639
.Lt_063A:
sub esp, 8
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_00D5
push -1
sub esp, 4
push -1
sub esp, 8
push 0
sub esp, 12
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 20
push eax
call EXPRFLUSH
add esp, 16
push eax
push -1
sub esp, 4
push 6
push offset Lt_063C
push -1
sub esp, 4
push -1
sub esp, 8
push 0
sub esp, 12
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 20
push eax
call EXPRFLUSH
add esp, 16
push eax
push 19
push offset Lt_063B
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
jmp .Lt_0638
.Lt_0639:
cmp dword ptr [ebp+8], 105
jne .Lt_0642
.Lt_0643:
sub esp, 8
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
sub esp, 8
push 4
push offset Lt_00D5
push -1
sub esp, 4
push -1
sub esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call fb_ULongintToStr
add esp, 16
push eax
push -1
sub esp, 4
push 3
push offset Lt_013A
push -1
sub esp, 4
push -1
sub esp, 8
push 0
sub esp, 12
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 20
push eax
call EXPRFLUSH
add esp, 16
push eax
push -1
sub esp, 4
push 3
push offset Lt_013A
push -1
sub esp, 4
push -1
sub esp, 8
push 0
sub esp, 12
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 20
push eax
call EXPRFLUSH
add esp, 16
push eax
push 19
push offset Lt_0644
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
.Lt_0642:
.Lt_0638:
.Lt_0637:
mov esp, ebp
pop ebp
ret
.size _EMITMEM, .-_EMITMEM
.balign 16
_EMITMACRO:
.type _EMITMACRO, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_064C:
cmp dword ptr [ebp+8], 109
jne .Lt_064F
.Lt_0650:
sub esp, 8
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call EXPRNEWMACRO
add esp, 20
push eax
call EXPRFLUSH
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
add esp, 20
lea eax, [ebp-32]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_064E
.Lt_064F:
cmp dword ptr [ebp+8], 110
jne .Lt_0653
.Lt_0654:
sub esp, 8
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
push 0
push 0
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call EXPRNEWMACRO
add esp, 20
push eax
call EXPRFLUSH
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
add esp, 20
lea eax, [ebp-32]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_064E
.Lt_0653:
cmp dword ptr [ebp+8], 112
jne .Lt_0657
.Lt_0658:
sub esp, 8
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call EXPRNEWMACRO
add esp, 32
mov dword ptr [ebp-4], eax
sub esp, 4
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
call EXPRSTORE
add esp, 16
jmp .Lt_064E
.Lt_0657:
cmp dword ptr [ebp+8], 111
jne .Lt_0659
.Lt_065A:
sub esp, 8
push 0
push dword ptr [ebp+12]
call EXPRNEWVREG
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
push 0
push dword ptr [ebp+16]
call EXPRNEWVREG
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call EXPRNEWMACRO
add esp, 20
push eax
call EXPRFLUSH
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
add esp, 20
lea eax, [ebp-32]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
.Lt_0659:
.Lt_064E:
.Lt_064D:
mov esp, ebp
pop ebp
ret
.size _EMITMACRO, .-_EMITMACRO
.balign 16
_EMITDECL:
.type _EMITDECL, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_065D:
sub esp, 12
push dword ptr [ebp+8]
call HISSTATICWITHDTOR
add esp, 16
test eax, eax
je .Lt_0660
jmp .Lt_065E
.Lt_0660:
.Lt_065F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_0662
sub esp, 12
push dword ptr [ebp-4]
call HISSTATICWITHDTOR
add esp, 16
test eax, eax
je .Lt_0664
jmp .Lt_065E
.Lt_0664:
.Lt_0663:
.Lt_0662:
.Lt_0661:
sub esp, 12
push dword ptr [ebp+8]
call HMAYBEEMITLOCALVAR
add esp, 16
.Lt_065E:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITDECL, .-_EMITDECL
.balign 16
_EMITDBG:
.type _EMITDBG, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0665:
cmp dword ptr [ebp+8], 113
jne .Lt_0668
mov eax, dword ptr [ebp+16]
mov dword ptr [CTX+2588], eax
cmp dword ptr [ebp+20], 0
je .Lt_066A
sub esp, 12
push dword ptr [ebp+20]
call HUPDATECURRENTFILENAME
add esp, 16
.Lt_066A:
.Lt_0669:
.Lt_0668:
.Lt_0667:
.Lt_0666:
mov esp, ebp
pop ebp
ret
.size _EMITDBG, .-_EMITDBG
.balign 16
_EMITCOMMENT:
.type _EMITCOMMENT, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_066B:
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_07FF
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_07FF
call fb_TRIM
add esp, 12
push eax
push -1
push offset Lt_07FF
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push offset Lt_07FF
call fb_StrLen
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jle .Lt_066E
mov eax, dword ptr [Lt_07FF]
add eax, dword ptr [ebp-4]
movzx ebx, byte ptr [eax-1]
cmp ebx, 92
jne .Lt_0670
sub esp, 12
push 0
push 14
push offset Lt_0671
push -1
push offset Lt_07FF
call fb_StrConcatAssign
add esp, 32
.Lt_0670:
.Lt_066F:
sub esp, 8
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_07FF
push 4
push offset Lt_0672
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
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
.Lt_066E:
.Lt_066D:
.Lt_066C:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITCOMMENT, .-_EMITCOMMENT

.section .bss
.balign 4
	.lcomm	Lt_07FF,12

.section .text
.balign 16
_EMITASMLINE:
.type _EMITASMLINE, @function
push ebp
mov ebp, esp
sub esp, 132
push ebx
.Lt_0675:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
.Lt_0677:
cmp dword ptr [ebp-12], 0
je .Lt_0678
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 1
jne .Lt_067A
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-80], eax
cmp dword ptr [ebp-80], 7
jne .Lt_067D
.Lt_067E:
mov dword ptr [ebp-4], -1
jmp .Lt_067B
.Lt_067D:
cmp dword ptr [ebp-80], 1
jne .Lt_067F
.Lt_0680:
inc dword ptr [ebp-8]
.Lt_067F:
.Lt_067B:
.Lt_067A:
.Lt_0679:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-12], ebx
jmp .Lt_0677
.Lt_0678:
sub esp, 12
push 0
push 8
push offset Lt_0681
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrInit
add esp, 32
call SECTIONINSIDEPROC
test eax, eax
je .Lt_0683
sub esp, 12
push 0
push 14
push offset Lt_0684
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0683:
.Lt_0682:
cmp dword ptr [ebp-4], 0
je .Lt_0686
sub esp, 12
push 0
push 6
push offset Lt_0687
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0686:
.Lt_0685:
sub esp, 12
push 0
push 3
push offset Lt_00EB
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
.Lt_0688:
cmp dword ptr [ebp-12], 0
je .Lt_0689
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-80], ebx
cmp dword ptr [ebp-80], 0
jne .Lt_068C
.Lt_068D:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+4]
push -1
lea ebx, [ebp-36]
push ebx
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea ebx, [ebp-92]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_068A
.Lt_068C:
cmp dword ptr [ebp-80], 1
jne .Lt_068F
.Lt_0690:
cmp dword ptr [ENV+132], 0
jne .Lt_0692
call SECTIONINSIDEPROC
test eax, eax
je .Lt_0694
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-84], eax
cmp dword ptr [ebp-84], 1
jne .Lt_0697
.Lt_0698:
sub esp, 12
push 0
push 2
push offset Lt_0699
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-40]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
inc dword ptr [ebp-40]
cmp dword ptr [ebp-4], 0
je .Lt_069B
sub esp, 8
push -1
lea eax, [ebp-64]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_069D
sub esp, 12
push 0
push 3
push offset Lt_013A
push -1
lea eax, [ebp-64]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_069D:
.Lt_069C:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_012F
push -1
sub esp, 4
push 0
sub esp, 12
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push 6
push offset Lt_069E
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-64]
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
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_069A
.Lt_069B:
sub esp, 8
push -1
lea eax, [ebp-52]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_06A3
sub esp, 12
push 0
push 3
push offset Lt_013A
push -1
lea eax, [ebp-52]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_06A3:
.Lt_06A2:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_012F
push -1
sub esp, 4
push 0
sub esp, 12
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push 7
push offset Lt_06A4
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-52]
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
lea eax, [ebp-52]
push eax
call fb_StrAssign
add esp, 32
.Lt_069A:
jmp .Lt_0695
.Lt_0697:
cmp dword ptr [ebp-84], 7
jne .Lt_06A8
.Lt_06A9:
sub esp, 12
push 0
push 3
push offset Lt_06AA
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-8]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
inc dword ptr [ebp-8]
sub esp, 8
push -1
lea eax, [ebp-76]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_06AC
sub esp, 12
push 0
push 3
push offset Lt_013A
push -1
lea eax, [ebp-76]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_06AC:
.Lt_06AB:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
lea eax, [ebp-76]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-76]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0695
.Lt_06A8:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push -1
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call HGETMANGLEDNAMEFORASM
add esp, 16
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
.Lt_06AE:
.Lt_0695:
jmp .Lt_0693
.Lt_0694:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push -1
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call HGETMANGLEDNAMEFORASM
add esp, 16
push eax
push -1
lea eax, [ebp-36]
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
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
.Lt_0693:
jmp .Lt_0691
.Lt_0692:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
lea eax, [ebp-36]
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
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
.Lt_0691:
.Lt_068F:
.Lt_068A:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-12], ebx
jmp .Lt_0688
.Lt_0689:
cmp dword ptr [ENV+132], 0
jne .Lt_06B3
sub esp, 8
push -1
lea ebx, [ebp-36]
push ebx
call fb_StrLen
add esp, 16
inc eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
push dword ptr [ebp-36]
lea ecx, [ebp-24]
push ecx
call HBUILDSTRLIT
add esp, 16
call SECTIONINSIDEPROC
test eax, eax
je .Lt_06B5
sub esp, 12
push 0
push 4
push offset Lt_06B6
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-52]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_06B6
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-64]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 18
push offset Lt_06B7
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
call FBGETCPUFAMILY
mov dword ptr [ebp-80], eax
cmp dword ptr [ebp-80], 0
je .Lt_06BB
.Lt_06BC:
cmp dword ptr [ebp-80], 1
jne .Lt_06BA
.Lt_06BB:
call FBGETCPUFAMILY
test eax, eax
jne .Lt_06BE
sub esp, 12
push 0
push 50
push offset Lt_06BF
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_06BD
.Lt_06BE:
sub esp, 12
push 0
push 50
push offset Lt_06C0
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 55
push offset Lt_06C1
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_06BD:
cmp dword ptr [ENV+116], 1
jne .Lt_06C3
sub esp, 12
push 0
push 57
push offset Lt_06C4
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 65
push offset Lt_06C5
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
call FBGETCPUFAMILY
cmp eax, 1
jne .Lt_06C7
sub esp, 12
push 0
push 71
push offset Lt_06C8
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_06C7:
.Lt_06C6:
.Lt_06C3:
.Lt_06C2:
jmp .Lt_06B8
.Lt_06BA:
cmp dword ptr [ebp-80], 2
je .Lt_06CA
.Lt_06CB:
cmp dword ptr [ebp-80], 3
jne .Lt_06C9
.Lt_06CA:
sub esp, 12
push 0
push 43
push offset Lt_06CC
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 55
push offset Lt_06C1
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
call FBGETCPUFAMILY
cmp eax, 3
jne .Lt_06CE
sub esp, 12
push 0
push 29
push offset Lt_06CF
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 64
push offset Lt_06D0
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 8
push offset Lt_06D1
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_06CE:
.Lt_06CD:
.Lt_06C9:
.Lt_06B8:
cmp dword ptr [ebp-4], 0
je .Lt_06D3
sub esp, 12
push 0
push 4
push offset Lt_06B6
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-76]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_06D3:
.Lt_06D2:
.Lt_06B5:
.Lt_06B4:
jmp .Lt_06B2
.Lt_06B3:
sub esp, 12
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_06B2:
sub esp, 12
push 0
push 4
push offset Lt_00D5
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
lea eax, [ebp-24]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-76]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-52]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_0676:
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
.Lt_06D4:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+2640]
push eax
call fb_StrAssign
add esp, 32
mov dword ptr [CTX+2652], 0
.Lt_06D5:
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
.Lt_06D6:
sub esp, 4
push dword ptr [CTX+2640]
push dword ptr [ebp+8]
push 0
call HEMITVARDECL
add esp, 16
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [CTX+2640]
push eax
call fb_StrAssign
add esp, 32
.Lt_06D7:
mov esp, ebp
pop ebp
ret
.size _EMITVARINIEND, .-_EMITVARINIEND
.balign 16
HVARINISEPARATOR:
.type HVARINISEPARATOR, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_06D8:
cmp dword ptr [CTX+2652], 0
jle .Lt_06DB
sub esp, 12
push 0
push 3
push offset Lt_013A
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_06DB:
.Lt_06DA:
.Lt_06D9:
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
.Lt_06DC:
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
jne .Lt_0801
cmp dword ptr [ebp+12], 0
jne .Lt_0801
.Lt_0802:
xor eax, eax
.Lt_0801:
and ebx, eax
je .Lt_06DF
mov dword ptr [ebp+12], 1
mov dword ptr [ebp+16], 0
.Lt_06DF:
.Lt_06DE:
sub esp, 4
push dword ptr [ebp-4]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EXPRNEWIMMI
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .Lt_06E1
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov eax, dword ptr [ebp-4]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 32505856
or ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_06E1:
.Lt_06E0:
sub esp, 4
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp-8]
call EXPRFLUSH
add esp, 12
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 32
call HVARINISEPARATOR
.Lt_06DD:
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
sub esp, 20
push ebx
.Lt_06E2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-4], ebx
sub esp, 4
push dword ptr [ebp-4]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EXPRNEWIMMF
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .Lt_06E5
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov eax, dword ptr [ebp-4]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 32505856
or ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_06E5:
.Lt_06E4:
sub esp, 4
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp-8]
call EXPRFLUSH
add esp, 12
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 32
call HVARINISEPARATOR
.Lt_06E3:
pop ebx
mov esp, ebp
pop ebp
ret
.size _EMITVARINIF, .-_EMITVARINIF
.balign 16
_EMITVARINIOFS:
.type _EMITVARINIOFS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_06E6:
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EXPRNEWOFFSET
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
je .Lt_06E9
mov eax, dword ptr [ebp-8]
and eax, 31
mov ebx, dword ptr [ebp-8]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-8], eax
.Lt_06E9:
.Lt_06E8:
sub esp, 4
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-8]
call EXPRNEWCAST
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp-4]
call EXPRFLUSH
add esp, 12
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 32
call HVARINISEPARATOR
.Lt_06E7:
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
.Lt_06EA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .Lt_06ED
jg .Lt_0803
cmp dword ptr [ebp+20], ebx
jbe .Lt_06ED
.Lt_0803:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
mov dword ptr [ebp+24], ebx
.Lt_06ED:
.Lt_06EC:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 1
adc eax, 0
push eax
push ebx
sub esp, 4
push dword ptr [ebp+16]
call HUNESCAPE
add esp, 8
push eax
lea eax, [CTX+2640]
push eax
call HBUILDSTRLIT
add esp, 16
call HVARINISEPARATOR
.Lt_06EB:
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
sub esp, 20
push ebx
.Lt_06EE:
sub esp, 12
push 0
push 3
push offset Lt_06F0
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [ebp+16]
call HUNESCAPEW
add esp, 16
mov dword ptr [ebp+16], eax
mov eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .Lt_06F2
jg .Lt_0804
cmp dword ptr [ebp+20], ebx
jbe .Lt_06F2
.Lt_0804:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
mov dword ptr [ebp+24], ebx
.Lt_06F2:
.Lt_06F1:
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 4294967295
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-16], ecx
jmp .Lt_06F4
.Lt_06F7:
cmp dword ptr [ebp-12], 0
jle .Lt_06F9
sub esp, 12
push 0
push 3
push offset Lt_013A
push -1
lea ecx, [CTX+2640]
push ecx
call fb_StrConcatAssign
add esp, 32
.Lt_06F9:
.Lt_06F8:
sub esp, 12
push 0
push 3
push offset Lt_06FA
push -1
lea ecx, [CTX+2640]
push ecx
call fb_StrConcatAssign
add esp, 32
mov ecx, dword ptr [ebp-12]
sal ecx, 2
mov ebx, dword ptr [ebp+16]
add ebx, ecx
mov ecx, dword ptr [ebx]
mov dword ptr [ebp-4], ecx
sub esp, 8
push 39
push dword ptr [ebp-4]
call HCHARNEEDSESCAPING
add esp, 16
test eax, eax
je .Lt_06FC
sub esp, 12
push 0
push 3
push offset Lt_0420
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp-8]
sal eax, 1
push eax
push dword ptr [ebp-4]
call fb_HEXEx_i
add esp, 12
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_06FB
.Lt_06FC:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-4]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_06FB:
sub esp, 12
push 0
push 2
push offset Lt_0430
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_06F5:
inc dword ptr [ebp-12]
.Lt_06F4:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .Lt_06F7
.Lt_06F6:
sub esp, 12
push 0
push 3
push offset Lt_06FD
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 32
call HVARINISEPARATOR
.Lt_06EF:
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
.Lt_06FE:
.Lt_06FF:
mov esp, ebp
pop ebp
ret
.size _EMITVARINIPAD, .-_EMITVARINIPAD
.balign 16
_EMITVARINISCOPEBEGIN:
.type _EMITVARINISCOPEBEGIN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0700:
inc dword ptr [CTX+2652]
sub esp, 12
push 0
push 3
push offset Lt_06F0
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0701:
mov esp, ebp
pop ebp
ret
.size _EMITVARINISCOPEBEGIN, .-_EMITVARINISCOPEBEGIN
.balign 16
_EMITVARINISCOPEEND:
.type _EMITVARINISCOPEEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0702:
push 3
push offset Lt_013A
push -1
sub esp, 12
push 2
lea eax, [CTX+2640]
push eax
call fb_RIGHT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0705
sub esp, 12
push 0
push -1
sub esp, 4
push -1
lea eax, [CTX+2640]
push eax
call fb_StrLen
add esp, 8
add eax, -2
push eax
lea eax, [CTX+2640]
push eax
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [CTX+2640]
push eax
call fb_StrAssign
add esp, 32
.Lt_0705:
.Lt_0704:
sub esp, 12
push 0
push 3
push offset Lt_06FD
push -1
lea eax, [CTX+2640]
push eax
call fb_StrConcatAssign
add esp, 32
dec dword ptr [CTX+2652]
call HVARINISEPARATOR
.Lt_0703:
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
.Lt_0706:
sub esp, 8
push -1
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
push 0
push 19
push offset Lt_0709
push -1
lea eax, [CTX+2656]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 44
push offset Lt_070D
push -1
lea eax, [CTX+2656]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 16
push offset Lt_070E
push -1
lea eax, [CTX+2656]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0707:
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
.Lt_070F:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 3
push offset Lt_0711
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
lea eax, [CTX+2656]
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
lea eax, [CTX+2656]
push eax
call fb_StrAssign
add esp, 32
.Lt_0710:
mov esp, ebp
pop ebp
ret
.size _EMITFBCTINFSTRING, .-_EMITFBCTINFSTRING
.balign 16
_EMITFBCTINFEND:
.type _EMITFBCTINFEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0714:
push 3
push offset Lt_0711
push -1
sub esp, 12
push 2
lea eax, [CTX+2656]
push eax
call fb_RIGHT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0717
sub esp, 12
push 0
push -1
sub esp, 4
push -1
lea eax, [CTX+2656]
push eax
call fb_StrLen
add esp, 8
add eax, -2
push eax
lea eax, [CTX+2656]
push eax
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [CTX+2656]
push eax
call fb_StrAssign
add esp, 32
.Lt_0717:
.Lt_0716:
sub esp, 12
push 0
push 3
push offset Lt_0718
push -1
lea eax, [CTX+2656]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push -1
lea eax, [CTX+2656]
push eax
call HWRITELINE
add esp, 16
.Lt_0715:
mov esp, ebp
pop ebp
ret
.size _EMITFBCTINFEND, .-_EMITFBCTINFEND
.balign 16
_EMITPROCBEGIN:
.type _EMITPROCBEGIN, @function
push ebp
mov ebp, esp
sub esp, 132
push ebx
.Lt_0719:
sub esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+24]
call HUPDATECURRENTFILENAME
add esp, 16
call IRHLEMITPROCBEGIN
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 8
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset Lt_0000
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
cmp dword ptr [ENV+148], 0
je .Lt_071D
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+16]
push dword ptr [ebp+8]
push 113
call _EMITDBG
add esp, 16
.Lt_071D:
.Lt_071C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
je .Lt_071F
sub esp, 12
push 0
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
call HGETMANGLEDNAMEFORASM
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 20
push offset Lt_0720
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
sub esp, 8
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_0723
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 18
push offset Lt_0722
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 24
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
sub esp, 8
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
sub esp, 8
push 6
push offset Lt_0728
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 11
push offset Lt_0727
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 24
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
lea eax, [ebp-132]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-132]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_071A
.Lt_071F:
.Lt_071E:
call SECTIONBEGIN
sub esp, 12
push dword ptr [ebp+8]
call HNEEDALIAS
add esp, 16
test eax, eax
je .Lt_072D
sub esp, 8
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_017B
push -1
push 1
push dword ptr [ebp+8]
call HEMITPROCHEADER
add esp, 8
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
.Lt_072D:
.Lt_072C:
sub esp, 8
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+8]
call HEMITPROCHEADER
add esp, 12
push eax
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
sub esp, 8
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 2
push offset Lt_0265
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
call SECTIONINDENT
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_071A:
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
sub esp, 100
push ebx
.Lt_0732:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
je .Lt_0735
cmp dword ptr [ENV+108], 2
jne .Lt_0737
sub esp, 12
push 0
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
call HGETMANGLEDNAMEFORASM
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
sub esp, 8
push 5
push offset Lt_0723
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 5
push offset Lt_0739
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
push 17
push offset Lt_0738
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
add esp, 28
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HWRITELINE
add esp, 16
sub esp, 12
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 16
.Lt_0737:
.Lt_0736:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0733
.Lt_0735:
.Lt_0734:
call SECTIONUNINDENT
sub esp, 8
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 2
push offset Lt_0282
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
call SECTIONEND
.Lt_0740:
sub esp, 12
lea eax, [CTX+2724]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0744
jmp .Lt_0741
.Lt_0744:
.Lt_0743:
sub esp, 12
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call EXPRFREETREE
add esp, 16
sub esp, 8
push dword ptr [ebp-16]
lea eax, [CTX+2724]
push eax
call LISTDELNODE
add esp, 16
.Lt_0742:
jmp .Lt_0740
.Lt_0741:
call IRHLEMITPROCEND
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_0733:
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
sub esp, 24
.Lt_0745:
call SECTIONBEGIN
sub esp, 8
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset Lt_0265
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
call SECTIONINDENT
.Lt_0746:
mov esp, ebp
pop ebp
ret
.size _EMITSCOPEBEGIN, .-_EMITSCOPEBEGIN
.balign 16
_EMITSCOPEEND:
.type _EMITSCOPEEND, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_0748:
call SECTIONUNINDENT
sub esp, 8
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset Lt_0282
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
call SECTIONEND
.Lt_0749:
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
.Lt_074C:
sub esp, 12
push offset CTX
call _ZN8IRHLCCTXC1Ev
add esp, 16
.Lt_074D:
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
.Lt_074F:
sub esp, 12
push offset CTX
call _ZN8IRHLCCTXD1Ev
add esp, 16
.Lt_0750:
mov esp, ebp
pop ebp
ret
.size _GLOBAL__D, .-_GLOBAL__D

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"

.section .data
.balign 4

.globl IRHLC_VTBL
IRHLC_VTBL:
.int _INIT
.int _END
.int _EMITBEGIN
.int _EMITEND
.int _GETOPTIONVALUE
.int _SUPPORTSOP
.int _PROCBEGIN
.int _PROCEND
.long 0
.long 0
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
.balign 4
	.lcomm	CTX,2760

.section .data
.balign 4
DTYPENAME:
.int Lt_0088
.int Lt_0089
.int Lt_008A
.int Lt_008B
.long 0
.int Lt_008C
.int Lt_008D
.long 0
.long 0
.long 0
.long 0
.int Lt_008E
.int Lt_008F
.int Lt_0090
.int Lt_0091
.int Lt_0092
.int Lt_0093
.int Lt_0094
.long 0
.int Lt_0095
.long 0
.long 0
.long 0
.int Lt_0088
.long 0
.skip 4,0

.section .rodata
.balign 4
Lt_0088:	.ascii	"void\0"
.balign 4
Lt_0089:	.ascii	"boolean\0"
.balign 4
Lt_008A:	.ascii	"int8\0"
.balign 4
Lt_008B:	.ascii	"uint8\0"
.balign 4
Lt_008C:	.ascii	"int16\0"
.balign 4
Lt_008D:	.ascii	"uint16\0"
.balign 4
Lt_008E:	.ascii	"int32\0"
.balign 4
Lt_008F:	.ascii	"uint32\0"
.balign 4
Lt_0090:	.ascii	"int64\0"
.balign 4
Lt_0091:	.ascii	"uint64\0"
.balign 4
Lt_0092:	.ascii	"float\0"
.balign 4
Lt_0093:	.ascii	"double\0"
.balign 4
Lt_0094:	.ascii	"FBSTRING\0"
.balign 4
Lt_0095:	.ascii	"__builtin_va_list\0"
.balign 4
Lt_00A8:	.ascii	"\t\0"
.balign 4
Lt_00AE:	.ascii	"\n\0"
.balign 4
Lt_00C7:	.ascii	"#line \0"
.balign 4
Lt_00C8:	.ascii	" \"\0"
.balign 4
Lt_00C9:	.ascii	"\"\0"
.balign 4
Lt_00CC:	.ascii	"\\\0"
.balign 4
Lt_00CD:	.ascii	"\\\\\0"
.balign 4
Lt_00D2:	.ascii	"#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]\0"
.balign 4
Lt_00D4:	.ascii	"__FB_STATIC_ASSERT( \0"
.balign 4
Lt_00D5:	.ascii	" );\0"
.balign 4
Lt_00DF:	.ascii	" \0"
.balign 4
Lt_00E1:	.ascii	"__attribute__(( \0"
.balign 4
Lt_00E5:	.ascii	"constructor\0"
.balign 4
Lt_00E7:	.ascii	"destructor\0"
.balign 4
Lt_00EB:	.ascii	"( \0"
.balign 4
Lt_00EC:	.ascii	" )\0"
.balign 4
Lt_00F0:	.ascii	" ))\0"
.balign 4
Lt_00F9:	.ascii	"_\0"
.balign 4
Lt_00FF:	.ascii	"@\0"
.balign 4
Lt_011A:	.ascii	"static \0"
.balign 4
Lt_0129:	.ascii	" __stdcall\0"
.balign 4
Lt_012B:	.ascii	" __attribute__((stdcall))\0"
.balign 4
Lt_012E:	.ascii	"(*\0"
.balign 4
Lt_012F:	.ascii	")\0"
.balign 4
Lt_013A:	.ascii	", \0"
.balign 4
Lt_0143:	.ascii	"...\0"
.balign 4
Lt_0146:	.ascii	"char**\0"
.balign 4
Lt_0153:	.ascii	" asm(\"\0"
.balign 4
Lt_0154:	.ascii	"\")\0"
.balign 4
Lt_015B:	.ascii	"union \0"
.balign 4
Lt_015C:	.ascii	"struct \0"
.balign 4
Lt_0165:	.ascii	"$\0"
.balign 4
Lt_017A:	.ascii	"typedef \0"
.balign 4
Lt_017B:	.ascii	";\0"
.balign 4
Lt_019B:	.ascii	"[\0"
.balign 4
Lt_019C:	.ascii	"]\0"
.balign 4
Lt_01AF:	.ascii	"extern \0"
.balign 4
Lt_01B6:	.ascii	" __attribute__((common))\0"
.balign 4
Lt_01B9:	.ascii	" = \0"
.balign 4
Lt_01F5:	.ascii	"union {\0"
.balign 4
Lt_01F7:	.ascii	"struct {\0"
.balign 4
Lt_01FD:	.ascii	"};\0"
.balign 4
Lt_0215:	.ascii	" __attribute__((packed, aligned(\0"
.balign 4
Lt_0216:	.ascii	")))\0"
.balign 4
Lt_0227:	.ascii	" __attribute__((aligned(\0"
.balign 4
Lt_0238:	.ascii	"__attribute__((gcc_struct)) \0"
.balign 4
Lt_0239:	.ascii	" {\0"
.balign 4
Lt_023C:	.ascii	"uint8 __fb_struct_body[\0"
.balign 4
Lt_023D:	.ascii	"];\0"
.balign 4
Lt_0242:	.ascii	"sizeof( \0"
.balign 4
Lt_0243:	.ascii	" ) == \0"
.balign 4
Lt_0253:	.ascii	"l\0"
.balign 4
Lt_0256:	.ascii	"q\0"
.balign 4
Lt_0259:	.ascii	"s\0"
.balign 4
Lt_025B:	.ascii	"static inline \0"
.balign 4
Lt_025C:	.ascii	" fb_\0"
.balign 4
Lt_025D:	.ascii	" value )\0"
.balign 4
Lt_0265:	.ascii	"{\0"
.balign 4
Lt_0267:	.ascii	"volatile \0"
.balign 4
Lt_0268:	.ascii	" result;\0"
.balign 4
Lt_026C:	.ascii	"__asm__(\0"
.balign 4
Lt_026E:	.ascii	"\"fld\0"
.balign 4
Lt_026F:	.ascii	" %1;\"\0"
.balign 4
Lt_0273:	.ascii	"\"fistp\0"
.balign 4
Lt_0274:	.ascii	" %0;\"\0"
.balign 4
Lt_0278:	.ascii	":\"=m\" (result)\0"
.balign 4
Lt_027A:	.ascii	":\"m\" (value)\0"
.balign 4
Lt_027C:	.ascii	":\"st\"\0"
.balign 4
Lt_027E:	.ascii	");\0"
.balign 4
Lt_0280:	.ascii	"return result;\0"
.balign 4
Lt_0282:	.ascii	"}\0"
.balign 4
Lt_0288:	.ascii	"nearbyintf\0"
.balign 4
Lt_0289:	.ascii	"nearbyint\0"
.balign 4
Lt_028A:	.ascii	"#define fb_\0"
.balign 4
Lt_028B:	.ascii	"( value ) ((\0"
.balign 4
Lt_028C:	.ascii	")__builtin_\0"
.balign 4
Lt_028D:	.ascii	"( value ))\0"
.balign 4
Lt_02A1:	.ascii	"\t\"\0"
.balign 4
Lt_02A2:	.ascii	"\\t.ascii \0"
.balign 4
Lt_02A3:	.ascii	"\\\" -export:\\\\\\\"\0"
.balign 4
Lt_02A4:	.ascii	"\\\\\\\"\\\"\0"
.balign 4
Lt_02A5:	.ascii	"\\n\0"
.balign 4
Lt_02A6:	.ascii	"\"\n\0"
.balign 4
Lt_02AF:	.ascii	"typedef   signed char       int8;\0"
.balign 4
Lt_02B1:	.ascii	"typedef unsigned char      uint8;\0"
.balign 4
Lt_02B3:	.ascii	"typedef   signed short      int16;\0"
.balign 4
Lt_02B5:	.ascii	"typedef unsigned short     uint16;\0"
.balign 4
Lt_02B7:	.ascii	"typedef   signed int        int32;\0"
.balign 4
Lt_02B9:	.ascii	"typedef unsigned int       uint32;\0"
.balign 4
Lt_02BB:	.ascii	"typedef   signed long long  int64;\0"
.balign 4
Lt_02BD:	.ascii	"typedef unsigned long long uint64;\0"
.balign 4
Lt_02C1:	.ascii	"typedef struct { char *data; int64 len; int64 size; } FBSTRING;\0"
.balign 4
Lt_02C3:	.ascii	"typedef struct { char *data; int32 len; int32 size; } FBSTRING;\0"
.balign 4
Lt_02C5:	.ascii	"typedef int8 boolean;\0"
.balign 4
Lt_02CB:	.ascii	"F2I\0"
.balign 4
Lt_02CF:	.ascii	"F2L\0"
.balign 4
Lt_02D3:	.ascii	"F2UL\0"
.balign 4
Lt_02D7:	.ascii	"D2I\0"
.balign 4
Lt_02DB:	.ascii	"D2L\0"
.balign 4
Lt_02DF:	.ascii	"D2UL\0"
.balign 4
Lt_02E5:	.ascii	"\n__asm__( \n\t\".section .drectve\\n\"\n\0"
.balign 4
Lt_02F5:	.ascii	"_GETOPTIONVALUE\0"
.balign 4
Lt_0335:	.ascii	"*\0"
.balign 4
Lt_03EC:	.ascii	"u\0"
.balign 4
Lt_03ED:	.ascii	"ll\0"
.balign 4
Lt_03F4:	.ascii	"ull\0"
.balign 4
Lt_03FF:	.ascii	"(-__builtin_inf())\0"
.balign 4
Lt_0400:	.ascii	"__builtin_inf()\0"
.balign 4
Lt_0403:	.ascii	"(-__builtin_inff())\0"
.balign 4
Lt_0404:	.ascii	"__builtin_inff()\0"
.balign 4
Lt_040C:	.ascii	"(-__builtin_nan( \"\" ))\0"
.balign 4
Lt_040D:	.ascii	"__builtin_nan( \"\" )\0"
.balign 4
Lt_0410:	.ascii	"(-__builtin_nanf( \"\" ))\0"
.balign 4
Lt_0411:	.ascii	"__builtin_nanf( \"\" )\0"
.balign 4
Lt_0415:	.ascii	"f\0"
.balign 4
Lt_0420:	.ascii	"\\x\0"
.balign 4
Lt_0425:	.ascii	"\" \"\0"
.balign 4
Lt_0428:	.ascii	"?\0"
.balign 4
Lt_0430:	.ascii	"'\0"
.balign 4
Lt_0431:	.ascii	"(\0"
.balign 4
Lt_0435:	.ascii	"-\0"
.balign 4
Lt_0444:	.ascii	"L\"\0"
.balign 4
Lt_0451:	.ascii	"\" L\"\0"
.balign 4
Lt_046C:	.ascii	" + \0"
.balign 4
Lt_046E:	.ascii	" - \0"
.balign 4
Lt_0470:	.ascii	" * \0"
.balign 4
Lt_0472:	.ascii	" / \0"
.balign 4
Lt_0475:	.ascii	" % \0"
.balign 4
Lt_0477:	.ascii	" << \0"
.balign 4
Lt_0479:	.ascii	" >> \0"
.balign 4
Lt_047B:	.ascii	" & \0"
.balign 4
Lt_047D:	.ascii	" | \0"
.balign 4
Lt_047F:	.ascii	" ^ \0"
.balign 4
Lt_0481:	.ascii	" == \0"
.balign 4
Lt_0483:	.ascii	" > \0"
.balign 4
Lt_0485:	.ascii	" < \0"
.balign 4
Lt_0487:	.ascii	" != \0"
.balign 4
Lt_0489:	.ascii	" >= \0"
.balign 4
Lt_048B:	.ascii	" <= \0"
.balign 4
Lt_0492:	.ascii	"&\0"
.balign 4
Lt_0499:	.ascii	"~\0"
.balign 4
Lt_04A2:	.ascii	"__builtin_fabsf\0"
.balign 4
Lt_04A4:	.ascii	"__builtin_fabs\0"
.balign 4
Lt_04A6:	.ascii	"__builtin_llabs\0"
.balign 4
Lt_04A8:	.ascii	"__builtin_abs\0"
.balign 4
Lt_04B1:	.ascii	"__builtin_sinf\0"
.balign 4
Lt_04B3:	.ascii	"__builtin_asinf\0"
.balign 4
Lt_04B5:	.ascii	"__builtin_cosf\0"
.balign 4
Lt_04B7:	.ascii	"__builtin_acosf\0"
.balign 4
Lt_04B9:	.ascii	"__builtin_tanf\0"
.balign 4
Lt_04BB:	.ascii	"__builtin_atanf\0"
.balign 4
Lt_04BD:	.ascii	"__builtin_sqrtf\0"
.balign 4
Lt_04BF:	.ascii	"__builtin_logf\0"
.balign 4
Lt_04C1:	.ascii	"__builtin_expf\0"
.balign 4
Lt_04C3:	.ascii	"__builtin_floorf\0"
.balign 4
Lt_04CA:	.ascii	"__builtin_sin\0"
.balign 4
Lt_04CC:	.ascii	"__builtin_asin\0"
.balign 4
Lt_04CE:	.ascii	"__builtin_cos\0"
.balign 4
Lt_04D0:	.ascii	"__builtin_acos\0"
.balign 4
Lt_04D2:	.ascii	"__builtin_tan\0"
.balign 4
Lt_04D4:	.ascii	"__builtin_atan\0"
.balign 4
Lt_04D6:	.ascii	"__builtin_sqrt\0"
.balign 4
Lt_04D8:	.ascii	"__builtin_log\0"
.balign 4
Lt_04DA:	.ascii	"__builtin_exp\0"
.balign 4
Lt_04DC:	.ascii	"__builtin_floor\0"
.balign 4
Lt_04EF:	.ascii	"&&\0"
.balign 4
Lt_0506:	.ascii	"__builtin_va_arg( \0"
.balign 4
Lt_050A:	.ascii	"__builtin_va_start( \0"
.balign 4
Lt_050D:	.ascii	"__builtin_va_end( \0"
.balign 4
Lt_0510:	.ascii	"__builtin_va_copy( \0"
.balign 4
Lt_0523:	.ascii	"__builtin_atan2f\0"
.balign 4
Lt_0524:	.ascii	"__builtin_atan2\0"
.balign 4
Lt_056D:	.ascii	"vr$\0"
.balign 4
Lt_0577:	.ascii	":;\0"
.balign 4
Lt_0587:	.ascii	"if( \0"
.balign 4
Lt_0588:	.ascii	" ) goto \0"
.balign 4
Lt_05C3:	.ascii	"fb_F2I\0"
.balign 4
Lt_05C4:	.ascii	"fb_D2I\0"
.balign 4
Lt_05C9:	.ascii	"fb_F2L\0"
.balign 4
Lt_05CA:	.ascii	"fb_D2L\0"
.balign 4
Lt_05CE:	.ascii	"fb_F2UL\0"
.balign 4
Lt_05CF:	.ascii	"fb_D2UL\0"
.balign 4
Lt_05D8:	.ascii	"return \0"
.balign 4
Lt_0602:	.ascii	"goto *\0"
.balign 4
Lt_0608:	.ascii	"goto \0"
.balign 4
Lt_0613:	.ascii	"(void)\0"
.balign 4
Lt_0617:	.ascii	"static const void* \0"
.balign 4
Lt_0618:	.ascii	"] = {\0"
.balign 4
Lt_0623:	.ascii	",\0"
.balign 4
Lt_063B:	.ascii	"__builtin_memset( \0"
.balign 4
Lt_063C:	.ascii	", 0, \0"
.balign 4
Lt_0644:	.ascii	"__builtin_memcpy( \0"
.balign 4
Lt_0671:	.ascii	"not_an_escape\0"
.balign 4
Lt_0672:	.ascii	"// \0"
.balign 4
Lt_0681:	.ascii	"__asm__\0"
.balign 4
Lt_0684:	.ascii	" __volatile__\0"
.balign 4
Lt_0687:	.ascii	" goto\0"
.balign 4
Lt_0699:	.ascii	"%\0"
.balign 4
Lt_069E:	.ascii	"\"m\" (\0"
.balign 4
Lt_06A4:	.ascii	"\"+m\" (\0"
.balign 4
Lt_06AA:	.ascii	"%l\0"
.balign 4
Lt_06B6:	.ascii	" : \0"
.balign 4
Lt_06B7:	.ascii	" : \"cc\", \"memory\"\0"
.balign 4
Lt_06BF:	.ascii	", \"eax\", \"ebx\", \"ecx\", \"edx\", \"esp\", \"edi\", \"esi\"\0"
.balign 4
Lt_06C0:	.ascii	", \"rax\", \"rbx\", \"rcx\", \"rdx\", \"rsp\", \"rdi\", \"rsi\"\0"
.balign 4
Lt_06C1:	.ascii	", \"r8\", \"r9\", \"r10\", \"r11\", \"r12\", \"r13\", \"r14\", \"r15\"\0"
.balign 4
Lt_06C4:	.ascii	", \"mm0\", \"mm1\", \"mm2\", \"mm3\", \"mm4\", \"mm5\", \"mm6\", \"mm7\"\0"
.balign 4
Lt_06C5:	.ascii	", \"xmm0\", \"xmm1\", \"xmm2\", \"xmm3\", \"xmm4\", \"xmm5\", \"xmm6\", \"xmm7\"\0"
.balign 4
Lt_06C8:	.ascii	", \"xmm8\", \"xmm9\", \"xmm10\", \"xmm11\", \"xmm12\", \"xmm13\", \"xmm14\", \"xmm15\"\0"
.balign 4
Lt_06CC:	.ascii	", \"r0\", \"r1\", \"r2\", \"r3\", \"r4\", \"r5\", \"r6\"\0"
.balign 4
Lt_06CF:	.ascii	", \"r16\", \"r17\", \"r18\", \"r19\"\0"
.balign 4
Lt_06D0:	.ascii	", \"r20\", \"r21\", \"r22\", \"r23\", \"r24\", \"r25\", \"r26\", \"r27\", \"r28\"\0"
.balign 4
Lt_06D1:	.ascii	", \"r30\"\0"
.balign 4
Lt_06F0:	.ascii	"{ \0"
.balign 4
Lt_06FA:	.ascii	"L'\0"
.balign 4
Lt_06FD:	.ascii	" }\0"
.balign 4
Lt_0709:	.ascii	"static const char \0"
.balign 4
Lt_070D:	.ascii	"__attribute__((used, section(\".fbctinf\"))) \0"
.balign 4
Lt_070E:	.ascii	"__fbctinf[] = \"\0"
.balign 4
Lt_0711:	.ascii	"\\0\0"
.balign 4
Lt_0718:	.ascii	"\";\0"
.balign 4
Lt_0720:	.ascii	"__asm__( \".text\" );\0"
.balign 4
Lt_0722:	.ascii	"__asm__( \".globl \0"
.balign 4
Lt_0723:	.ascii	"\" );\0"
.balign 4
Lt_0727:	.ascii	"__asm__( \"\0"
.balign 4
Lt_0728:	.ascii	":\" );\0"
.balign 4
Lt_0738:	.ascii	"__asm__( \".size \0"
.balign 4
Lt_0739:	.ascii	", .-\0"
.balign 8
Lt_07E2:	.quad	0x0000000000000000

.section .ctors, "aw", @progbits
.int fb_ctor__irzhlc
.int _GLOBAL__I

.section .dtors, "aw", @progbits
.int _GLOBAL__D
