	.intel_syntax noprefix

.section .text
.balign 16
_fb_ctor__irzhlc:
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
__ZN12SECTIONENTRYC1Ev:
push ebp
mov ebp, esp
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
.Lt_0068:
.Lt_0069:
mov esp, ebp
pop ebp
ret
.balign 16
__ZN12SECTIONENTRYaSERKS_:
push ebp
mov ebp, esp
push ebx
.Lt_006A:
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
mov ecx, dword ptr [ebp+12]
add ecx, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
.Lt_006B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN12SECTIONENTRYD1Ev:
push ebp
mov ebp, esp
push ebx
.Lt_006E:
.Lt_006F:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN8IRHLCCTXC1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], 0
.Lt_0076:
push dword ptr [ebp-8]
call __ZN12SECTIONENTRYC1Ev
add esp, 4
add dword ptr [ebp-8], 20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .Lt_0076
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
.Lt_0073:
.Lt_0074:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN8IRHLCCTXaSERKS_:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0078:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
lea eax, [ebx]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
.Lt_007B:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call __ZN12SECTIONENTRYaSERKS_
add esp, 8
add dword ptr [ebp-8], 20
add dword ptr [ebp-12], 20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .Lt_007B
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
mov ecx, dword ptr [ebp+12]
add ecx, 2652
mov ebx, dword ptr [ebp+8]
add ebx, 2652
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
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
.Lt_0079:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN8IRHLCCTXD1Ev:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0083:
.Lt_0084:
mov eax, dword ptr [ebp+8]
add eax, 2712
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2668
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 2656
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2640
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
add eax, 2592
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 2560
lea eax, [ebx]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], 0
.Lt_0086:
push dword ptr [ebp-8]
call __ZN12SECTIONENTRYD1Ev
add esp, 4
add dword ptr [ebp-8], -20
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 129
jne .Lt_0086
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__INIT:
.Lt_0097:
call _IRHLINIT
push 6
push 4
push 8
lea eax, [_CTX+2608]
push eax
call _LISTINIT
add esp, 16
push 7
push 28
push 32
lea eax, [_CTX+2680]
push eax
call _LISTINIT
add esp, 16
push 6
push 8
push 8
lea eax, [_CTX+2724]
push eax
call _LISTINIT
add esp, 16
or dword ptr [_IR+276], 131074
call _FBIS64BIT
test eax, eax
je .Lt_009A
mov eax, dword ptr [_DTYPENAME+52]
mov dword ptr [_DTYPENAME+32], eax
mov eax, dword ptr [_DTYPENAME+56]
mov dword ptr [_DTYPENAME+36], eax
jmp .Lt_0099
.Lt_009A:
mov eax, dword ptr [_DTYPENAME+44]
mov dword ptr [_DTYPENAME+32], eax
mov eax, dword ptr [_DTYPENAME+48]
mov dword ptr [_DTYPENAME+36], eax
.Lt_0099:
.Lt_0098:
ret
.balign 16
__END:
.Lt_009B:
lea eax, [_CTX+2724]
push eax
call _LISTEND
add esp, 4
lea eax, [_CTX+2680]
push eax
call _LISTEND
add esp, 4
lea eax, [_CTX+2608]
push eax
call _LISTEND
add esp, 4
call _IRHLEND
.Lt_009C:
ret
.balign 16
_SECTIONBEGIN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_009D:
inc dword ptr [_CTX+2580]
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], -1
cmp dword ptr [_CTX+2580], 0
jle .Lt_00A1
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebx-4]
mov dword ptr [eax+16], ecx
jmp .Lt_00A0
.Lt_00A1:
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+16], 0
.Lt_00A0:
.Lt_009E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SECTIONWRITELINE:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_00A2:
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .Lt_00A6
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
jle .Lt_00A8
push 0
push -1
push 1
push offset _Lt_00A9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call _fb_StrFill2
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push -1
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
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_00A7
.Lt_00A8:
push 0
push -1
push dword ptr [ebp+8]
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
.Lt_00A7:
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], 0
jmp .Lt_00A5
.Lt_00A6:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
jle .Lt_00AC
push 0
push -1
push -1
push 1
push offset _Lt_00A9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call _fb_StrFill2
add esp, 8
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
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_00AC:
.Lt_00AB:
push 0
push -1
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
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_00A5:
push 0
push -1
push 3
push offset _Lt_00AF
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_00A3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SECTIONINDENT:
push ebx
.Lt_00B1:
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
inc dword ptr [ebx+16]
.Lt_00B2:
pop ebx
ret
.balign 16
_SECTIONUNINDENT:
push ebx
.Lt_00B3:
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
dec dword ptr [ebx+16]
.Lt_00B4:
pop ebx
ret
.balign 16
_SECTIONINSIDEPROC:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00B5:
mov eax, dword ptr [_CTX+2580]
cmp eax, 2
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_00B6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_SECTIONEND:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00B7:
cmp dword ptr [_CTX+2580], 0
jle .Lt_00BA
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx-20]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_CTX+2580]
imul eax, 20
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .Lt_00BC
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .Lt_00BE
push 0
push -1
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp-4]
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+12], 0
jmp .Lt_00BD
.Lt_00BE:
push 0
push -1
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
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_00BD:
.Lt_00BC:
.Lt_00BB:
.Lt_00BA:
.Lt_00B9:
dec dword ptr [_CTX+2580]
.Lt_00B8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SECTIONGOSUB:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00C0:
mov eax, dword ptr [_CTX+2580]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [_CTX+2580], eax
inc dword ptr [_CTX+2584]
.Lt_00C1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_SECTIONRETURN:
push ebp
mov ebp, esp
.Lt_00C2:
dec dword ptr [_CTX+2584]
mov eax, dword ptr [ebp+8]
mov dword ptr [_CTX+2580], eax
.Lt_00C3:
mov esp, ebp
pop ebp
ret
.balign 16
_HWRITELINE:
push ebp
mov ebp, esp
.Lt_00C4:
mov eax, dword ptr [ebp+12]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [_ENV+148]
je .Lt_00C7
push 0
push 7
push offset _Lt_00C8
push -1
push offset _Lt_0755
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [_CTX+2588]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_0755
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_00C9
push -1
push offset _Lt_0755
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [_CTX+2592]
push eax
push -1
push offset _Lt_0755
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_00CA
push -1
push offset _Lt_0755
call _fb_StrConcatAssign
add esp, 20
push offset _Lt_0755
call _SECTIONWRITELINE
add esp, 4
.Lt_00C7:
.Lt_00C6:
push dword ptr [ebp+8]
call _SECTIONWRITELINE
add esp, 4
.Lt_00C5:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0755,12

.section .text
.balign 16
_HUPDATECURRENTFILENAME:
push ebp
mov ebp, esp
.Lt_00CB:
push 0
push -1
push offset _Lt_00CE
push offset _Lt_00CD
push dword ptr [ebp+8]
call _HREPLACE
add esp, 12
push eax
push -1
lea eax, [_CTX+2592]
push eax
call _fb_StrAssign
add esp, 20
.Lt_00CC:
mov esp, ebp
pop ebp
ret
.balign 16
_HWRITESTATICASSERT:
push ebp
mov ebp, esp
sub esp, 52
.Lt_00CF:
mov eax, dword ptr [_CTX+2604]
and eax, 64
test eax, eax
jne .Lt_00D2
or dword ptr [_CTX+2604], 64
push 0
call _SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-4], eax
push -1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 85
push offset _Lt_00D3
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-4]
call _SECTIONRETURN
add esp, 4
.Lt_00D2:
.Lt_00D1:
push 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 4
push offset _Lt_00D6
push -1
push -1
push dword ptr [ebp+8]
push 21
push offset _Lt_00D5
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.Lt_00D0:
mov esp, ebp
pop ebp
ret
.balign 16
_HAPPENDCTORATTRIB:
push ebp
mov ebp, esp
sub esp, 64
push ebx
.Lt_00DA:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 196608
je .Lt_00DD
cmp dword ptr [ebp+16], 0
jne .Lt_00DF
push 0
push -1
push 2
push offset _Lt_00E0
push -1
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
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_00DF:
.Lt_00DE:
push 0
push -1
push 17
push offset _Lt_00E2
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 65536
je .Lt_00E5
push 0
push -1
push 12
push offset _Lt_00E6
push -1
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
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .Lt_00E4
.Lt_00E5:
push 0
push -1
push 11
push offset _Lt_00E8
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_00E4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_00EB
push 0
push -1
push -1
push 3
push offset _Lt_00ED
push -1
push -1
push dword ptr [ebp-4]
call _fb_IntToStr
add esp, 4
push eax
push 3
push offset _Lt_00EC
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_00EB:
.Lt_00EA:
push 0
push -1
push 4
push offset _Lt_00F1
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+16], 0
je .Lt_00F4
push 0
push -1
push 2
push offset _Lt_00E0
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_00F4:
.Lt_00F3:
.Lt_00DD:
.Lt_00DC:
.Lt_00DB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETMANGLEDNAMEFORASM:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00F6:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_ENV+268]
and eax, dword ptr [ebp+12]
je .Lt_00F9
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push 2
push offset _Lt_00FA
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.Lt_00F9:
.Lt_00F8:
call _FBGETCPUFAMILY
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
je .Lt_00FD
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 1
jne .Lt_00FF
push 0
push 2
push offset _Lt_0100
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call _SYMBPROCCALCSTDCALLSUFFIXN
add esp, 4
push edx
push eax
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_00FF:
.Lt_00FE:
.Lt_00FD:
.Lt_00FC:
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
.Lt_00F7:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HNEEDALIAS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0101:
mov dword ptr [ebp-4], 0
call _FBGETCPUFAMILY
test eax, eax
je .Lt_0104
jmp .Lt_0102
.Lt_0104:
.Lt_0103:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0108
.Lt_0109:
cmp dword ptr [ebp-8], 1
je .Lt_0108
.Lt_010A:
cmp dword ptr [ebp-8], 4
jne .Lt_0107
.Lt_0108:
jmp .Lt_0105
.Lt_0107:
jmp .Lt_0102
.Lt_010B:
.Lt_0105:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
je .Lt_010F
.Lt_0110:
cmp dword ptr [ebp-8], 4
jne .Lt_010E
.Lt_010F:
mov dword ptr [ebp-4], -1
jmp .Lt_010C
.Lt_010E:
cmp dword ptr [ebp-8], 1
jne .Lt_0111
.Lt_0112:
mov dword ptr [ebp-4], -1
.Lt_0111:
.Lt_010C:
.Lt_0102:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITPROCHEADER:
push ebp
mov ebp, esp
sub esp, 104
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0113:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0116
push -1
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HAPPENDCTORATTRIB
add esp, 12
.Lt_0116:
.Lt_0115:
mov eax, dword ptr [ebp+12]
and eax, 2
test eax, eax
jne .Lt_0118
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 64
test ebx, ebx
je .Lt_011A
push 0
push 8
push offset _Lt_011B
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_011A:
.Lt_0119:
.Lt_0118:
.Lt_0117:
push 0
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+92]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+88]
call _HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
call _FBGETCPUFAMILY
test eax, eax
jne .Lt_011E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-72], ebx
cmp dword ptr [ebp-72], 1
je .Lt_0122
.Lt_0123:
cmp dword ptr [ebp-72], 2
je .Lt_0122
.Lt_0124:
cmp dword ptr [ebp-72], 4
jne .Lt_0121
.Lt_0122:
mov ebx, dword ptr [_ENV+108]
mov dword ptr [ebp-76], ebx
cmp dword ptr [ebp-76], 0
je .Lt_0128
.Lt_0129:
cmp dword ptr [ebp-76], 4
jne .Lt_0127
.Lt_0128:
push 0
push 11
push offset _Lt_012A
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0125
.Lt_0127:
push 0
push 26
push offset _Lt_012C
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_012B:
.Lt_0125:
.Lt_0121:
.Lt_011F:
.Lt_011E:
.Lt_011D:
push 0
push 2
push offset _Lt_00E0
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
and eax, 2
je .Lt_012E
push 0
push 3
push offset _Lt_012F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0130
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_012D
.Lt_012E:
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_012D:
push 0
push 3
push offset _Lt_00EC
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-60], 0
push dword ptr [ebp+8]
call _SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .Lt_0132
mov eax, dword ptr [ebp+12]
and eax, 1
je .Lt_0134
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-60], ebx
push 0
push -1
push -1
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
call _HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0133
.Lt_0134:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-60], eax
push 0
push -1
push -1
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
call _HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
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
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 0
push dword ptr [ebp-60]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 2
push offset _Lt_00E0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0133:
mov eax, dword ptr [ebp+8]
movsx ecx, word ptr [eax+68]
test ecx, ecx
jle .Lt_013A
push 0
push 3
push offset _Lt_013B
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign
add esp, 20
.Lt_013A:
.Lt_0139:
.Lt_0132:
.Lt_0131:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 4
jne .Lt_013C
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-64], eax
jmp .Lt_0758
.Lt_013C:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebp-64], ecx
.Lt_0758:
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
je .Lt_013F
push 0
push 5
push offset _Lt_0089
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_013F:
.Lt_013E:
.Lt_0140:
cmp dword ptr [ebp-68], 0
je .Lt_0141
mov eax, dword ptr [ebp-68]
cmp dword ptr [eax+56], 4
jne .Lt_0143
push 0
push 4
push offset _Lt_0144
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0142
.Lt_0143:
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [eax+12]
and ecx, 524288
je .Lt_0146
push 0
push 7
push offset _Lt_0147
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0145
.Lt_0146:
lea ecx, [ebp-44]
push ecx
lea ecx, [ebp-40]
push ecx
push dword ptr [ebp-68]
call __Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
add esp, 12
push 0
push -1
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call _HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0145:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .Lt_0149
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp-68]
push dword ptr [eax+60]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 2
push offset _Lt_00E0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0149:
.Lt_0148:
.Lt_0142:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 4
jne .Lt_014C
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [eax+168]
mov dword ptr [ebp-72], ecx
jmp .Lt_0759
.Lt_014C:
mov ecx, dword ptr [ebp-68]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-72], eax
.Lt_0759:
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-68], eax
cmp dword ptr [ebp-68], 0
je .Lt_014F
push 0
push 3
push offset _Lt_013B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_014F:
.Lt_014E:
jmp .Lt_0140
.Lt_0141:
push 0
push 3
push offset _Lt_00ED
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
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
je .Lt_0151
push dword ptr [ebp+8]
call _HNEEDALIAS
add esp, 4
test eax, eax
je .Lt_0153
push 0
push 7
push offset _Lt_0154
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_0155
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0153:
.Lt_0152:
push 0
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HAPPENDCTORATTRIB
add esp, 12
.Lt_0151:
.Lt_0150:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0114:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETUDTTAG:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0156:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_0159
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
je .Lt_015B
push 0
push 7
push offset _Lt_015C
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_015A
.Lt_015B:
push 0
push 8
push offset _Lt_015D
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_015A:
.Lt_0159:
.Lt_0158:
.Lt_0157:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETUDTID:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_015E:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _SYMBGETVALISTTYPE
add esp, 8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
je .Lt_0163
.Lt_0164:
cmp dword ptr [ebp-28], 4
je .Lt_0163
.Lt_0165:
cmp dword ptr [ebp-28], 5
jne .Lt_0162
.Lt_0163:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_015F
.Lt_0162:
.Lt_0160:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 2
push offset _Lt_0166
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_015F:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HGETUDTNAME:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0168:
push 0
push -1
push dword ptr [ebp+8]
call _HGETUDTTAG
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call _HGETUDTID
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0169:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITUDT:
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_016A:
cmp dword ptr [ebp+8], 0
jne .Lt_016D
jmp .Lt_016B
.Lt_016D:
.Lt_016C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
je .Lt_016F
jmp .Lt_016B
.Lt_016F:
.Lt_016E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
je .Lt_0171
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
inc ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
movzx eax, word ptr [ebx+36]
test eax, eax
jne .Lt_0173
inc dword ptr [ebp-4]
jmp .Lt_0172
.Lt_0173:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [_SYMB+98352]
cmp dword ptr [ebx], eax
jne .Lt_0174
inc dword ptr [ebp-4]
.Lt_0174:
.Lt_0172:
mov eax, dword ptr [_CTX+2580]
cmp dword ptr [ebp-4], eax
jle .Lt_0176
mov eax, dword ptr [_CTX+2580]
mov dword ptr [ebp-4], eax
.Lt_0176:
.Lt_0175:
jmp .Lt_0170
.Lt_0171:
mov dword ptr [ebp-4], 0
.Lt_0170:
push dword ptr [ebp-4]
call _SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_0178
.Lt_017A:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 67108864
push 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push 2
push offset _Lt_017C
push -1
push -1
push dword ptr [ebp+8]
call _HGETUDTNAME
add esp, 4
push eax
push -1
push 2
push offset _Lt_00E0
push -1
push -1
push 0
push 10
call _HEMITTYPE
add esp, 8
push eax
push 9
push offset _Lt_017B
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-68]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-68]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0177
.Lt_0182:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HEMITSTRUCT
add esp, 8
jmp .Lt_0177
.Lt_0183:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .Lt_0185
push 0
push -1
push 3
push dword ptr [ebp+8]
call _HEMITPROCHEADER
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
jne .Lt_0187
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
push 2
push offset _Lt_017C
push -1
push -1
lea ebx, [ebp-20]
push ebx
push 9
push offset _Lt_017B
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea ebx, [ebp-32]
push ebx
call _fb_StrConcat
add esp, 20
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
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 67108864
.Lt_0187:
.Lt_0186:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0185:
.Lt_0184:
jmp .Lt_0177
.Lt_0178:
mov eax, dword ptr [ebp-8]
add eax, 4294967293
cmp eax, 7
ja .Lt_0177
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_018B+eax*4-12]
_.LT_018B:
.int .Lt_0183
.int .Lt_0177
.int .Lt_0177
.int .Lt_0177
.int .Lt_0177
.int .Lt_0177
.int .Lt_017A
.int .Lt_0182
.Lt_0177:
push dword ptr [ebp-4]
call _SECTIONRETURN
add esp, 4
.Lt_016B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITARRAYDECL:
push ebp
mov ebp, esp
sub esp, 72
push ebx
push esi
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_018C:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_018F
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
jmp .Lt_018D
.Lt_018F:
.Lt_018E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
je .Lt_0193
.Lt_0194:
cmp dword ptr [ebp-28], 12
jne .Lt_0192
.Lt_0193:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
jne .Lt_0196
mov dword ptr [ebp-32], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-36], eax
jmp .Lt_0198
.Lt_019B:
push 0
push -1
push -1
push 2
push offset _Lt_019D
push -1
push -1
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
call _fb_LongintToStr
add esp, 8
push eax
push 2
push offset _Lt_019C
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
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0199:
inc dword ptr [ebp-32]
.Lt_0198:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-32], eax
jle .Lt_019B
.Lt_019A:
.Lt_0196:
.Lt_0195:
.Lt_0192:
.Lt_0190:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
jne .Lt_01A2
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 18
je .Lt_01A6
.Lt_01A7:
cmp dword ptr [ebp-36], 4
jne .Lt_01A5
.Lt_01A6:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-32], esi
mov dword ptr [ebp-28], ebx
jmp .Lt_01A3
.Lt_01A5:
cmp dword ptr [ebp-36], 7
jne .Lt_01A8
.Lt_01A9:
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov esi, ebx
sar esi, 31
push esi
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call ___divdi3
add esp, 16
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], edx
.Lt_01A8:
.Lt_01A3:
cmp dword ptr [ebp-28], 0
jl .Lt_01AB
jg .Lt_075E
cmp dword ptr [ebp-32], 0
jbe .Lt_01AB
.Lt_075E:
push 0
push 2
push offset _Lt_019C
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_019D
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_01AB:
.Lt_01AA:
.Lt_01A2:
.Lt_01A1:
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
.Lt_018D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITVARDECL:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.Lt_01AC:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_01AF
push 0
push 8
push offset _Lt_01B0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_01AE
.Lt_01AF:
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
je .Lt_01B1
push 0
push 8
push offset _Lt_011B
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrConcatAssign
add esp, 20
.Lt_01B1:
.Lt_01AE:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
lea ecx, [ebp-20]
push ecx
lea ecx, [ebp-16]
push ecx
push dword ptr [ebp+12]
call _SYMBGETREALTYPE
add esp, 12
push 0
push -1
push -1
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+32]
push dword ptr [ebp-16]
call _HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 2
push offset _Lt_00E0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
call _HEMITARRAYDECL
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
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
je .Lt_01B6
push 0
push 25
push offset _Lt_01B7
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_01B6:
.Lt_01B5:
cmp dword ptr [ebp+16], 0
je .Lt_01B9
push 0
push -1
push -1
push 0
push dword ptr [ebp+16]
push 4
push offset _Lt_01BA
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
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
.Lt_01B9:
.Lt_01B8:
push 0
push 2
push offset _Lt_017C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
lea eax, [ebp-12]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_01AD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMAYBEEMITLOCALVAR:
push ebp
mov ebp, esp
push ebx
.Lt_01BD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .Lt_01C0
jmp .Lt_01BE
.Lt_01C0:
.Lt_01BF:
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
je .Lt_01C2
push dword ptr [ebp+8]
call _IRHLFLUSHSTATICINITIALIZER
add esp, 4
jmp .Lt_01C1
.Lt_01C2:
push 0
push dword ptr [ebp+8]
push 0
call _HEMITVARDECL
add esp, 12
.Lt_01C1:
.Lt_01BE:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HALLOCGLOBALVAR:
push ebp
mov ebp, esp
push ebx
.Lt_01C3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_01C6
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
je .Lt_01C8
jmp .Lt_01C4
.Lt_01C8:
.Lt_01C7:
push dword ptr [ebp+8]
call _IRHLFLUSHSTATICINITIALIZER
add esp, 4
jmp .Lt_01C5
.Lt_01C6:
push 0
push dword ptr [ebp+8]
push 0
call _HEMITVARDECL
add esp, 12
.Lt_01C5:
.Lt_01C4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMAYBEEMITGLOBALVAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
.Lt_01C9:
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
je .Lt_01CC
jmp .Lt_01CA
.Lt_01CC:
.Lt_01CB:
mov esi, dword ptr [_CTX+2756]
mov dword ptr [ebp-4], esi
cmp dword ptr [ebp-4], 1
jne .Lt_01CF
.Lt_01D0:
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [esi+4]
and ebx, 56
je .Lt_01D2
push 0
push dword ptr [ebp+8]
push -1
call _HEMITVARDECL
add esp, 12
jmp .Lt_01D1
.Lt_01D2:
push dword ptr [ebp+8]
call _HALLOCGLOBALVAR
add esp, 4
.Lt_01D1:
jmp .Lt_01CD
.Lt_01CF:
cmp dword ptr [ebp-4], 2
jne .Lt_01D3
.Lt_01D4:
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [ebx+4]
and esi, 40
je .Lt_01D6
push dword ptr [ebp+8]
call _HALLOCGLOBALVAR
add esp, 4
.Lt_01D6:
.Lt_01D5:
.Lt_01D3:
.Lt_01CD:
.Lt_01CA:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMAYBEEMITGLOBALVAREXCEPTDATASTMT:
push ebp
mov ebp, esp
.Lt_01D7:
push dword ptr [ebp+8]
call _SYMBISDATADESC
add esp, 4
test eax, eax
je .Lt_01DA
jmp .Lt_01D8
.Lt_01DA:
.Lt_01D9:
push dword ptr [ebp+8]
call _HMAYBEEMITGLOBALVAR
add esp, 4
.Lt_01D8:
mov esp, ebp
pop ebp
ret
.balign 16
_HMAYBEEMITPROCPROTO:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_01DB:
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
je .Lt_01DE
jmp .Lt_01DC
.Lt_01DE:
.Lt_01DD:
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
test eax, eax
jne .Lt_01E0
jmp .Lt_01DC
.Lt_01E0:
.Lt_01DF:
push 0
call _SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-4], eax
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 2
push offset _Lt_017C
push -1
push 1
push dword ptr [ebp+8]
call _HEMITPROCHEADER
add esp, 8
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-4]
call _SECTIONRETURN
add esp, 4
.Lt_01DC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITFIELDTYPES:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01E3:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_01E5:
cmp dword ptr [ebp-4], 0
je .Lt_01E6
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
call _HEMITUDT
add esp, 8
push dword ptr [ebp-4]
call _SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_01E5
.Lt_01E6:
.Lt_01E4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFINDPARENTANONALREADYONSTACK:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_01E7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+164]
mov dword ptr [ebp-12], ebx
.Lt_01E9:
lea ebx, [_CTX+2608]
push ebx
call _LISTGETTAIL
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01EC:
cmp dword ptr [ebp-8], 0
je .Lt_01ED
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
cmp dword ptr [eax], ebx
jne .Lt_01EF
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_01E8
.Lt_01EF:
.Lt_01EE:
push dword ptr [ebp-8]
call _LISTGETPREV
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_01EC
.Lt_01ED:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+164]
mov dword ptr [ebp-12], ebx
.Lt_01EB:
cmp dword ptr [ebp-12], 0
jne .Lt_01E9
.Lt_01EA:
mov dword ptr [ebp-4], 0
.Lt_01E8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPUSHANONPARENTS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_01F0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp+12], eax
jne .Lt_01F3
jmp .Lt_01F1
.Lt_01F3:
.Lt_01F2:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+164]
push dword ptr [ebp+8]
call _HPUSHANONPARENTS
add esp, 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
je .Lt_01F5
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 8
push offset _Lt_01F6
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
lea ebx, [ebp-12]
push ebx
call _HWRITELINE
add esp, 8
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete
add esp, 4
jmp .Lt_01F4
.Lt_01F5:
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 9
push offset _Lt_01F8
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
lea ebx, [ebp-12]
push ebx
call _HWRITELINE
add esp, 8
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete
add esp, 4
.Lt_01F4:
call _SECTIONINDENT
lea ebx, [_CTX+2608]
push ebx
call _LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.Lt_01F1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPOPANONPARENTS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_01FA:
.Lt_01FC:
lea eax, [_CTX+2608]
push eax
call _LISTGETTAIL
add esp, 4
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
je .Lt_01FD
call _SECTIONUNINDENT
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 3
push offset _Lt_01FE
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
lea ebx, [ebp-12]
push ebx
call _HWRITELINE
add esp, 8
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete
add esp, 4
lea ebx, [_CTX+2608]
push ebx
call _LISTGETTAIL
add esp, 4
push eax
lea eax, [_CTX+2608]
push eax
call _LISTDELNODE
add esp, 8
jmp .Lt_01FC
.Lt_01FD:
.Lt_01FB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITSTRUCTWITHFIELDS:
push ebp
mov ebp, esp
sub esp, 84
push ebx
.Lt_0200:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_0202:
cmp dword ptr [ebp-20], 0
je .Lt_0203
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+164], ebx
jne .Lt_0205
push 0
call _HPOPANONPARENTS
add esp, 4
jmp .Lt_0204
.Lt_0205:
push dword ptr [ebp-20]
call _HFINDPARENTANONALREADYONSTACK
add esp, 4
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _HPOPANONPARENTS
add esp, 4
mov eax, dword ptr [ebp-20]
push dword ptr [eax+164]
cmp dword ptr [ebp-24], 0
je .Lt_0206
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-40], ebx
jmp .Lt_076D
.Lt_0206:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-40], ebx
.Lt_076D:
push dword ptr [ebp-40]
call _HPUSHANONPARENTS
add esp, 8
.Lt_0204:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0209
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-16], eax
push 0
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp-20]
push dword ptr [eax+16]
push 2
push offset _Lt_00E0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
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
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-20]
call _HEMITARRAYDECL
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+121]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jle .Lt_020D
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _TYPECALCNATURALALIGN
add esp, 8
mov ebx, dword ptr [ebp-12]
cmp ebx, eax
setge bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_020E
mov dword ptr [ebp-68], 24
jmp .Lt_076E
.Lt_020E:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-68], ebx
.Lt_076E:
cmp dword ptr [ebp-68], 20
jne .Lt_0211
mov ebx, dword ptr [ebp-16]
mov al, byte ptr [ebx+121]
mov byte ptr [ebp-72], al
movzx eax, byte ptr [ebp-72]
test eax, eax
jle .Lt_0213
movzx eax, byte ptr [ebp-72]
mov ebx, dword ptr [ebp-12]
cmp ebx, eax
setge bl
shr ebx, 1
sbb ebx, ebx
or dword ptr [ebp-4], ebx
.Lt_0213:
.Lt_0212:
.Lt_0211:
.Lt_0210:
cmp dword ptr [ebp-4], 0
jne .Lt_0215
push 0
push 33
push offset _Lt_0216
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-12]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_0217
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0215:
.Lt_0214:
.Lt_020D:
.Lt_020C:
cmp dword ptr [ebp-12], 0
jle .Lt_0218
mov eax, dword ptr [ebp-4]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-64], eax
jmp .Lt_076F
.Lt_0218:
mov dword ptr [ebp-64], -1
.Lt_076F:
cmp dword ptr [ebp-64], 0
je .Lt_021B
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_021C
mov dword ptr [ebp-68], 24
jmp .Lt_0770
.Lt_021C:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-68], eax
.Lt_0770:
cmp dword ptr [ebp-68], 20
jne .Lt_021F
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _TYPECALCNATURALALIGN
add esp, 8
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-12], 0
jle .Lt_0220
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-72]
setl al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-76], eax
jmp .Lt_0771
.Lt_0220:
mov dword ptr [ebp-76], 0
.Lt_0771:
cmp dword ptr [ebp-76], 0
je .Lt_0223
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-72], eax
.Lt_0223:
.Lt_0222:
mov eax, dword ptr [ebp-16]
mov bl, byte ptr [eax+121]
mov byte ptr [ebp-80], bl
movzx ebx, byte ptr [ebp-80]
test ebx, ebx
jle .Lt_0224
movzx ebx, byte ptr [ebp-80]
mov eax, dword ptr [ebp-72]
cmp eax, ebx
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-84], eax
jmp .Lt_0772
.Lt_0224:
mov dword ptr [ebp-84], 0
.Lt_0772:
cmp dword ptr [ebp-84], 0
je .Lt_0227
push 0
push 25
push offset _Lt_0228
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-72]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_0217
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0227:
.Lt_0226:
.Lt_021F:
.Lt_021E:
.Lt_021B:
.Lt_021A:
push 0
push 2
push offset _Lt_017C
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
push -1
lea eax, [ebp-36]
push eax
call _HWRITELINE
add esp, 8
.Lt_0209:
.Lt_0208:
push dword ptr [ebp-20]
call _SYMBUDTGETNEXTFIELD
add esp, 4
mov dword ptr [ebp-20], eax
jmp .Lt_0202
.Lt_0203:
push 0
call _HPOPANONPARENTS
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0201:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITSTRUCT:
push ebp
mov ebp, esp
sub esp, 124
push ebx
.Lt_0229:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 134217728
test ebx, ebx
je .Lt_022C
cmp dword ptr [ebp+12], 0
je .Lt_022E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .Lt_0230
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 2
push 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push -1
push 2
push offset _Lt_017C
push -1
push dword ptr [ebp+8]
call _HGETUDTNAME
add esp, 4
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0230:
.Lt_022F:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_022A
.Lt_022E:
.Lt_022D:
.Lt_022C:
.Lt_022B:
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
je .Lt_0234
push dword ptr [ebp+8]
call _HEMITFIELDTYPES
add esp, 4
.Lt_0234:
.Lt_0233:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 67108864
test eax, eax
je .Lt_0236
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_022A
.Lt_0236:
.Lt_0235:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 67108864
push 0
push -1
push dword ptr [ebp+8]
call _HGETUDTTAG
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_ENV+108]
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
je .Lt_0238
push 0
push 29
push offset _Lt_0239
push -1
lea ecx, [ebp-16]
push ecx
call _fb_StrConcatAssign
add esp, 20
.Lt_0238:
.Lt_0237:
push 0
push -1
push dword ptr [ebp+8]
call _HGETUDTID
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_023A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push -1
lea eax, [ebp-16]
push eax
call _HWRITELINE
add esp, 8
call _SECTIONINDENT
cmp dword ptr [ebp-4], 0
je .Lt_023C
push dword ptr [ebp+8]
call _HEMITSTRUCTWITHFIELDS
add esp, 4
jmp .Lt_023B
.Lt_023C:
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push -1
push 3
push offset _Lt_023E
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _fb_LongintToStr
add esp, 8
push eax
push 24
push offset _Lt_023D
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
.Lt_023B:
call _SECTIONUNINDENT
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 3
push offset _Lt_01FE
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
mov eax, dword ptr [ebp+8]
and dword ptr [eax+12], -134217729
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _fb_ULongintToStr
add esp, 8
push eax
push -1
push 7
push offset _Lt_0244
push -1
push -1
push dword ptr [ebp+8]
call _HGETUDTID
add esp, 4
push eax
push -1
push -1
push dword ptr [ebp+8]
call _HGETUDTTAG
add esp, 4
push eax
push 9
push offset _Lt_0243
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITESTATICASSERT
add esp, 4
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_022A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HWRITEX86F2I:
push ebp
mov ebp, esp
sub esp, 356
push ebx
.Lt_024A:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+16]
call _HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
cmp dword ptr [_ENV+132], 1
jne .Lt_024D
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_024E
mov dword ptr [ebp-352], 24
jmp .Lt_077C
.Lt_024E:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-352], eax
.Lt_077C:
mov eax, dword ptr [ebp-352]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-356], ebx
cmp dword ptr [ebp-356], 4
jne .Lt_0252
.Lt_0253:
push 0
push 2
push offset _Lt_0254
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0250
.Lt_0252:
cmp dword ptr [ebp-356], 8
jne .Lt_0255
.Lt_0256:
push 0
push 2
push offset _Lt_0257
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_0255:
.Lt_0250:
cmp dword ptr [ebp+16], 15
jne .Lt_0259
push 0
push 2
push offset _Lt_025A
push -1
lea ebx, [ebp-48]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0258
.Lt_0259:
push 0
push 2
push offset _Lt_0254
push -1
lea ebx, [ebp-48]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_0258:
.Lt_024D:
.Lt_024C:
push -1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-60]
push ebx
call _fb_StrAssign
add esp, 20
lea ebx, [ebp-60]
push ebx
call _HWRITELINE
add esp, 8
lea ebx, [ebp-60]
push ebx
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
push 0
push -1
push 9
push offset _Lt_025E
push -1
push -1
lea ebx, [ebp-24]
push ebx
push -1
push 3
push offset _Lt_00EC
push -1
push -1
push dword ptr [ebp+8]
push -1
push 5
push offset _Lt_025D
push -1
push -1
lea ebx, [ebp-12]
push ebx
push 15
push offset _Lt_025C
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ebx, [ebp-72]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-144]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-144]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-144]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
push 0
push 2
push offset _Lt_0266
push -1
lea eax, [ebp-156]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-156]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-156]
push eax
call _fb_StrDelete
add esp, 4
call _SECTIONINDENT
push -1
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
push 0
push -1
push 9
push offset _Lt_0269
push -1
push -1
lea eax, [ebp-12]
push eax
push 10
push offset _Lt_0268
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
lea eax, [ebp-180]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-192]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-192]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-192]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
push 0
push 9
push offset _Lt_026D
push -1
lea eax, [ebp-204]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-204]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-204]
push eax
call _fb_StrDelete
add esp, 4
call _SECTIONINDENT
push -1
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
push 0
push -1
push 6
push offset _Lt_0270
push -1
push -1
lea eax, [ebp-48]
push eax
push 5
push offset _Lt_026F
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
lea eax, [ebp-216]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
lea eax, [ebp-228]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-240]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-240]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-240]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
push 0
push -1
push 6
push offset _Lt_0275
push -1
push -1
lea eax, [ebp-36]
push eax
push 7
push offset _Lt_0274
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
lea eax, [ebp-252]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
lea eax, [ebp-264]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-276]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-276]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-276]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
push 0
push 15
push offset _Lt_0279
push -1
lea eax, [ebp-288]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-288]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-288]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
push 0
push 13
push offset _Lt_027B
push -1
lea eax, [ebp-300]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-300]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-300]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
push 0
push 6
push offset _Lt_027D
push -1
lea eax, [ebp-312]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-312]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-312]
push eax
call _fb_StrDelete
add esp, 4
call _SECTIONUNINDENT
push -1
mov dword ptr [ebp-324], 0
mov dword ptr [ebp-320], 0
mov dword ptr [ebp-316], 0
push 0
push 3
push offset _Lt_027F
push -1
lea eax, [ebp-324]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-324]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-324]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-336], 0
mov dword ptr [ebp-332], 0
mov dword ptr [ebp-328], 0
push 0
push 15
push offset _Lt_0281
push -1
lea eax, [ebp-336]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-336]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-336]
push eax
call _fb_StrDelete
add esp, 4
call _SECTIONUNINDENT
push -1
mov dword ptr [ebp-348], 0
mov dword ptr [ebp-344], 0
mov dword ptr [ebp-340], 0
push 0
push 2
push offset _Lt_0283
push -1
lea eax, [ebp-348]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-348]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-348]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_024B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HWRITEGENERICF2I:
push ebp
mov ebp, esp
sub esp, 96
.Lt_0285:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 15
jne .Lt_0288
push 0
push 11
push offset _Lt_0289
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0287
.Lt_0288:
push 0
push 10
push offset _Lt_028A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0287:
push -1
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 11
push offset _Lt_028E
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 12
push offset _Lt_028D
push -1
push -1
push 0
push dword ptr [ebp+12]
call _HEMITTYPE
add esp, 8
push eax
push -1
push 13
push offset _Lt_028C
push -1
push -1
push dword ptr [ebp+8]
push 12
push offset _Lt_028B
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
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0286:
mov esp, ebp
pop ebp
ret
.balign 16
_HWRITEF2I:
push ebp
mov ebp, esp
.Lt_0296:
call _FBGETCPUFAMILY
test eax, eax
jne .Lt_0299
cmp dword ptr [ebp+12], 11
je .Lt_029C
.Lt_029D:
cmp dword ptr [ebp+12], 13
jne .Lt_029B
.Lt_029C:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HWRITEX86F2I
add esp, 12
jmp .Lt_0297
.Lt_029B:
.Lt_029A:
.Lt_0299:
.Lt_0298:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HWRITEGENERICF2I
add esp, 12
.Lt_0297:
mov esp, ebp
pop ebp
ret
.balign 16
_HMAYBEEMITPROCEXPORT:
push ebp
mov ebp, esp
push ebx
.Lt_029E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 256
test ebx, ebx
jne .Lt_02A1
jmp .Lt_029F
.Lt_02A1:
.Lt_02A0:
push 0
push 3
push offset _Lt_02A2
push -1
lea ebx, [_CTX+2668]
push ebx
call _fb_StrConcatAssign
add esp, 20
push 0
push 10
push offset _Lt_02A3
push -1
lea ebx, [_CTX+2668]
push ebx
call _fb_StrConcatAssign
add esp, 20
push 0
push 16
push offset _Lt_02A4
push -1
lea ebx, [_CTX+2668]
push ebx
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 7
push offset _Lt_02A5
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_02A6
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_02A7
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_029F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITBEGIN:
push ebp
mov ebp, esp
sub esp, 124
mov dword ptr [ebp-4], 0
.Lt_02A8:
lea eax, [_ENV+560]
push eax
call _HFILEEXISTS
add esp, 4
test eax, eax
je .Lt_02AB
lea eax, [_ENV+560]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileKill
add esp, 4
.Lt_02AB:
.Lt_02AA:
call _fb_FileFree
mov dword ptr [_ENV+556], eax
push 0
push dword ptr [_ENV+556]
push 0
push 3
push 0
lea eax, [_ENV+560]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_02AD
mov dword ptr [ebp-4], 0
jmp .Lt_02A9
.Lt_02AD:
.Lt_02AC:
mov dword ptr [_CTX+2580], -1
mov dword ptr [_CTX+2584], 0
mov dword ptr [_CTX+2588], 0
mov dword ptr [_CTX+2604], 0
mov dword ptr [_CTX+2756], 0
lea eax, [_ENV+280]
push eax
call _HUPDATECURRENTFILENAME
add esp, 4
call _SECTIONBEGIN
cmp dword ptr [_ENV+148], 0
je .Lt_02AF
push 0
push 0
push 0
push 113
call __EMITDBG
add esp, 16
.Lt_02AF:
.Lt_02AE:
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 34
push offset _Lt_02B0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 34
push offset _Lt_02B2
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 35
push offset _Lt_02B4
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
push 0
push 35
push offset _Lt_02B6
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-52]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 35
push offset _Lt_02B8
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
push 0
push 35
push offset _Lt_02BA
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-76]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 35
push offset _Lt_02BC
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
push 0
push 35
push offset _Lt_02BE
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-100]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-100]
push eax
call _fb_StrDelete
add esp, 4
call _FBIS64BIT
test eax, eax
je .Lt_02C1
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 64
push offset _Lt_02C2
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_02C0
.Lt_02C1:
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 64
push offset _Lt_02C4
push -1
lea eax, [ebp-124]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-124]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-124]
push eax
call _fb_StrDelete
add esp, 4
.Lt_02C0:
push -1
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
push 0
push 22
push offset _Lt_02C6
push -1
lea eax, [ebp-112]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-112]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-112]
push eax
call _fb_StrDelete
add esp, 4
call _SECTIONBEGIN
mov dword ptr [ebp-4], -1
.Lt_02A9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__EMITEND:
push ebp
mov ebp, esp
sub esp, 40
.Lt_02C8:
lea eax, [_ENV+280]
push eax
call _HUPDATECURRENTFILENAME
add esp, 4
push 0
call _SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_CTX+2604]
and eax, 1
je .Lt_02CB
push 15
push 11
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset _Lt_02CC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_02CB:
mov eax, dword ptr [_CTX+2604]
and eax, 2
je .Lt_02CF
push 15
push 13
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset _Lt_02D0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_02CF:
mov eax, dword ptr [_CTX+2604]
and eax, 4
je .Lt_02D3
push 15
push 14
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 5
push offset _Lt_02D4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_02D3:
mov eax, dword ptr [_CTX+2604]
and eax, 8
je .Lt_02D7
push 16
push 11
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset _Lt_02D8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_02D7:
mov eax, dword ptr [_CTX+2604]
and eax, 16
je .Lt_02DB
push 16
push 13
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 4
push offset _Lt_02DC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_02DB:
mov eax, dword ptr [_CTX+2604]
and eax, 32
je .Lt_02DF
push 16
push 14
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 5
push offset _Lt_02E0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HWRITEF2I
add esp, 12
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_02DF:
push offset _HMAYBEEMITPROCPROTO
push 3
call _SYMBFOREACHGLOBAL
add esp, 8
mov dword ptr [_CTX+2756], 1
push offset _HMAYBEEMITGLOBALVAREXCEPTDATASTMT
push 1
call _SYMBFOREACHGLOBAL
add esp, 8
push offset _HMAYBEEMITGLOBALVAR
call _IRFOREACHDATASTMT
add esp, 4
mov dword ptr [_CTX+2756], 2
push offset _HMAYBEEMITGLOBALVAREXCEPTDATASTMT
push 1
call _SYMBFOREACHGLOBAL
add esp, 8
push offset _HMAYBEEMITGLOBALVAR
call _IRFOREACHDATASTMT
add esp, 4
push dword ptr [ebp-4]
call _SECTIONRETURN
add esp, 4
mov eax, dword ptr [_ENV+260]
and eax, 4
and eax, dword ptr [_ENV+208]
je .Lt_02E3
push offset _HMAYBEEMITPROCEXPORT
push 3
call _SYMBFOREACHGLOBAL
add esp, 8
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_02E5
push -1
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 3
push offset _Lt_027F
push -1
push -1
lea eax, [_CTX+2668]
push eax
push 35
push offset _Lt_02E6
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.Lt_02E5:
.Lt_02E4:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+2668]
push eax
call _fb_StrAssign
add esp, 20
.Lt_02E3:
.Lt_02E2:
call _SECTIONEND
cmp dword ptr [_CTX+12], 0
jne .Lt_02EB
push -1
lea eax, [_CTX]
push eax
push 0
push dword ptr [_ENV+556]
call _fb_FilePutStr
add esp, 16
test eax, eax
je .Lt_02ED
.Lt_02ED:
.Lt_02EC:
.Lt_02EB:
.Lt_02EA:
call _SECTIONEND
push dword ptr [_ENV+556]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_02EF
.Lt_02EF:
.Lt_02EE:
mov dword ptr [_ENV+556], 0
.Lt_02C9:
mov esp, ebp
pop ebp
ret
.balign 16
__GETOPTIONVALUE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_02F0:
cmp dword ptr [ebp+8], 1
jne .Lt_02F3
.Lt_02F4:
mov dword ptr [ebp-4], 0
jmp .Lt_02F1
jmp .Lt_02F2
.Lt_02F3:
push 0
push 1
push 0
push offset _Lt_02F6
push 21
call _ERRREPORTEX
add esp, 20
.Lt_02F5:
.Lt_02F2:
.Lt_02F1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__SUPPORTSOP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_02F7:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_02FA
.Lt_02FC:
mov dword ptr [ebp-4], 0
jmp .Lt_02F9
.Lt_02FD:
mov dword ptr [ebp-4], -1
jmp .Lt_02F9
.Lt_02FA:
mov eax, dword ptr [ebp-8]
add eax, 4294967239
cmp eax, 15
ja .Lt_02FD
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_02FE+eax*4-228]
_.LT_02FE:
.int .Lt_02FC
.int .Lt_02FD
.int .Lt_02FD
.int .Lt_02FD
.int .Lt_02FD
.int .Lt_02FD
.int .Lt_02FD
.int .Lt_02FD
.int .Lt_02FD
.int .Lt_02FC
.int .Lt_02FC
.int .Lt_02FD
.int .Lt_02FD
.int .Lt_02FD
.int .Lt_02FC
.int .Lt_02FC
.Lt_02F9:
.Lt_02F8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__PROCBEGIN:
push ebp
mov ebp, esp
push ebx
.Lt_02FF:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+4276]
mov dword ptr [ecx+16], ebx
.Lt_0300:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCEND:
push ebp
mov ebp, esp
push ebx
.Lt_0301:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+4276]
mov dword ptr [ecx+20], ebx
.Lt_0302:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__SCOPEBEGIN:
push ebp
mov ebp, esp
.Lt_0303:
.Lt_0304:
mov esp, ebp
pop ebp
ret
.balign 16
__SCOPEEND:
push ebp
mov ebp, esp
.Lt_0305:
.Lt_0306:
mov esp, ebp
pop ebp
ret
.balign 16
_HISSTATICWITHDTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0307:
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
push dword ptr [ebp+8]
call _SYMBHASDTOR
add esp, 4
and ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_0308:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCSTATICVARS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0309:
push 0
call _SECTIONGOSUB
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_030B:
cmp dword ptr [ebp+8], 0
je .Lt_030C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 15
jne .Lt_030F
.Lt_0310:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call __PROCALLOCSTATICVARS
add esp, 4
jmp .Lt_030D
.Lt_030F:
cmp dword ptr [ebp-12], 1
jne .Lt_0311
.Lt_0312:
push dword ptr [ebp+8]
call _HISSTATICWITHDTOR
add esp, 4
test eax, eax
je .Lt_0314
push dword ptr [ebp+8]
call _HMAYBEEMITLOCALVAR
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_0316
push dword ptr [ebp-4]
call _HMAYBEEMITLOCALVAR
add esp, 4
.Lt_0316:
.Lt_0315:
.Lt_0314:
.Lt_0313:
.Lt_0311:
.Lt_030D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp+8], eax
jmp .Lt_030B
.Lt_030C:
push dword ptr [ebp-8]
call _SECTIONRETURN
add esp, 4
.Lt_030A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__SETVREGDATATYPE:
push ebp
mov ebp, esp
push ebx
.Lt_0317:
cmp dword ptr [ebp+8], 0
je .Lt_031A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], eax
.Lt_031A:
.Lt_0319:
.Lt_0318:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITTYPE:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_031B:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .Lt_031E
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBGETVALISTTYPE
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 2
jne .Lt_0321
.Lt_0322:
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
jmp .Lt_031F
.Lt_0321:
mov eax, dword ptr [ebp+8]
and eax, -32
or eax, 19
mov dword ptr [ebp+8], eax
.Lt_0323:
.Lt_031F:
.Lt_031E:
.Lt_031D:
mov eax, dword ptr [ebp+8]
and eax, 480
sar eax, 5
mov dword ptr [ebp-28], eax
and dword ptr [ebp+8], 31
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .Lt_0325
.Lt_0327:
cmp dword ptr [ebp+12], 0
je .Lt_0329
mov eax, dword ptr [ebp-28]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
call _HEMITUDT
add esp, 8
push 0
push -1
push dword ptr [ebp+12]
call _HGETUDTNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0328
.Lt_0329:
cmp dword ptr [ebp+8], 10
jne .Lt_032A
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_032B
mov dword ptr [ebp-36], 24
jmp .Lt_077F
.Lt_032B:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_077F:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0328
.Lt_032A:
push 0
push 0
push dword ptr [_DTYPENAME]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_0328:
jmp .Lt_0324
.Lt_032D:
dec dword ptr [ebp-28]
mov ebx, dword ptr [ebp-28]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp+12]
call _HEMITUDT
add esp, 8
push 0
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0324
.Lt_032E:
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_032F
mov dword ptr [ebp-36], 24
jmp .Lt_0780
.Lt_032F:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_0780:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0324
.Lt_0331:
push 0
push 0
push dword ptr [_DTYPENAME+12]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0324
.Lt_0332:
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_0324
.Lt_0325:
mov ebx, dword ptr [ebp-32]
add ebx, 4294967292
cmp ebx, 18
ja .Lt_0332
mov ebx, dword ptr [ebp-32]
jmp dword ptr [_.LT_0333+ebx*4-16]
_.LT_0333:
.int .Lt_032E
.int .Lt_0332
.int .Lt_0332
.int .Lt_032E
.int .Lt_0332
.int .Lt_0332
.int .Lt_0327
.int .Lt_0332
.int .Lt_0332
.int .Lt_0332
.int .Lt_0332
.int .Lt_0332
.int .Lt_0332
.int .Lt_0332
.int .Lt_0331
.int .Lt_0332
.int .Lt_0327
.int .Lt_0332
.int .Lt_032D
.Lt_0324:
cmp dword ptr [ebp-28], 0
jle .Lt_0335
push 0
push -1
push 1
push offset _Lt_0336
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-28]
call _fb_StrFill2
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0335:
.Lt_0334:
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
.Lt_031C:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRNEW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0337:
lea eax, [_CTX+2680]
push eax
call _LISTNEWNODE
add esp, 4
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
.Lt_0338:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRFREENODE:
push ebp
mov ebp, esp
.Lt_0339:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_033C
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_033E
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _free
add esp, 4
.Lt_033E:
.Lt_033D:
.Lt_033C:
.Lt_033B:
push dword ptr [ebp+8]
lea eax, [_CTX+2680]
push eax
call _LISTDELNODE
add esp, 8
.Lt_033A:
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRFREETREE:
push ebp
mov ebp, esp
.Lt_033F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_0342
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _EXPRFREETREE
add esp, 4
.Lt_0342:
.Lt_0341:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .Lt_0344
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _EXPRFREETREE
add esp, 4
.Lt_0344:
.Lt_0343:
push dword ptr [ebp+8]
call _EXPRFREENODE
add esp, 4
.Lt_0340:
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRNEWTEXT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0345:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call _EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp+16]
call _ZSTRDUP
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0346:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRNEWIMMI:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0347:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_0349
mov dword ptr [ebp-12], 24
jmp .Lt_0783
.Lt_0349:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0783:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .Lt_034C
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_034D
mov dword ptr [ebp-16], 24
jmp .Lt_0784
.Lt_034D:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_0784:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_034F
mov dword ptr [ebp-20], 13
jmp .Lt_0785
.Lt_034F:
mov dword ptr [ebp-20], 14
.Lt_0785:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+16], eax
jmp .Lt_034B
.Lt_034C:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_0351
mov dword ptr [ebp-16], 24
jmp .Lt_0786
.Lt_0351:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_0786:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_0353
mov dword ptr [ebp-20], 11
jmp .Lt_0787
.Lt_0353:
mov dword ptr [ebp-20], 12
.Lt_0787:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp+16], eax
.Lt_034B:
push 0
push dword ptr [ebp+16]
push 1
call _EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_0348:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRNEWIMMF:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0355:
push 0
push dword ptr [ebp+16]
push 1
call _EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+8]
push dword ptr [ebp+12]
pop dword ptr [eax+24]
pop dword ptr [eax+20]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0356:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_SYMBISCARRAY:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0357:
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
je .Lt_035A
mov dword ptr [ebp-4], 0
jmp .Lt_0358
.Lt_035A:
.Lt_0359:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .Lt_035E
.Lt_035F:
cmp dword ptr [ebp-8], 12
jne .Lt_035D
.Lt_035E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
je .Lt_0361
mov dword ptr [ebp-4], 0
jmp .Lt_0358
.Lt_0361:
.Lt_0360:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_0363
mov dword ptr [ebp-4], -1
jmp .Lt_0358
.Lt_0363:
.Lt_0362:
.Lt_035D:
.Lt_035B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 18
je .Lt_0367
.Lt_0368:
cmp dword ptr [ebp-8], 4
je .Lt_0367
.Lt_0369:
cmp dword ptr [ebp-8], 7
jne .Lt_0366
.Lt_0367:
mov dword ptr [ebp-4], -1
jmp .Lt_0358
.Lt_0366:
.Lt_0364:
mov dword ptr [ebp-4], 0
.Lt_0358:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRNEWCAST:
push ebp
mov ebp, esp
sub esp, 20
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_036A:
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
je .Lt_036D
mov esi, dword ptr [ebp+16]
mov dword ptr [ebp-4], esi
jmp .Lt_036B
.Lt_036D:
.Lt_036C:
mov esi, dword ptr [ebp+16]
mov ebx, dword ptr [esi+4]
and ebx, 480
je .Lt_036E
mov dword ptr [ebp-8], 24
jmp .Lt_078B
.Lt_036E:
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+4]
and esi, 31
mov dword ptr [ebp-8], esi
.Lt_078B:
mov esi, dword ptr [ebp-8]
imul esi, 28
mov dword ptr [ebp-20], esi
mov esi, dword ptr [ebp+8]
and esi, 480
je .Lt_0370
mov dword ptr [ebp-12], 24
jmp .Lt_078C
.Lt_0370:
mov esi, dword ptr [ebp+8]
and esi, 31
mov dword ptr [ebp-12], esi
.Lt_078C:
mov esi, dword ptr [ebp-12]
imul esi, 28
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [_SYMB_DTYPETB+esi+20]
cmp eax, dword ptr [_SYMB_DTYPETB+ebx+20]
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
je .Lt_0373
mov esi, dword ptr [ebp+16]
mov dword ptr [ebp-4], esi
jmp .Lt_036B
.Lt_0373:
.Lt_0372:
mov esi, dword ptr [ebp+16]
cmp dword ptr [esi], 3
jne .Lt_0375
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
je .Lt_0377
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebp+8]
mov dword ptr [ebx+4], esi
mov esi, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
mov dword ptr [esi+8], ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .Lt_036B
.Lt_0377:
.Lt_0376:
.Lt_0375:
.Lt_0374:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 3
call _EXPRNEW
add esp, 12
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_036B:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRNEWMACRO:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0378:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 6
call _EXPRNEW
add esp, 12
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
.Lt_0379:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRNEWSYM:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_037A:
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
je .Lt_037D
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+84]
mov dword ptr [ebp+8], ebx
.Lt_037D:
.Lt_037C:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 7
jne .Lt_037F
push 0
push 32
push 2
call _EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
jmp .Lt_037E
.Lt_037F:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 3
jne .Lt_0380
push dword ptr [ebp+8]
push 54
push 2
call _EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
jmp .Lt_037E
.Lt_0380:
push dword ptr [ebp+8]
call _SYMBISCARRAY
add esp, 4
test eax, eax
je .Lt_0381
push 0
push -2147483648
push 2
call _EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+20], ebx
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
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
jmp .Lt_037E
.Lt_0381:
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
je .Lt_0382
push 0
push 66
push 2
call _EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+20], ecx
jmp .Lt_037E
.Lt_0382:
lea ecx, [ebp-16]
push ecx
lea ecx, [ebp-12]
push ecx
push dword ptr [ebp+8]
call _SYMBGETREALTYPE
add esp, 12
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 2
call _EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+20], ecx
.Lt_037E:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_037B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_TYPECBOP:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.Lt_0383:
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .Lt_0386
mov dword ptr [ebp-4], 11
jmp .Lt_0384
.Lt_0386:
.Lt_0385:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .Lt_0387
mov dword ptr [ebp-8], 24
jmp .Lt_079A
.Lt_0387:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-8], ebx
.Lt_079A:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp+12], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .Lt_0389
mov dword ptr [ebp-12], 24
jmp .Lt_079B
.Lt_0389:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_079B:
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
je .Lt_038C
mov dword ptr [ebp-4], 16
jmp .Lt_0384
.Lt_038C:
.Lt_038B:
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
je .Lt_038E
mov dword ptr [ebp-4], 15
jmp .Lt_0384
.Lt_038E:
.Lt_038D:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .Lt_038F
mov dword ptr [ebp-16], 24
jmp .Lt_079C
.Lt_038F:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_079C:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 4
jg .Lt_0392
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .Lt_0393
mov dword ptr [ebp-48], 24
jmp .Lt_079D
.Lt_0393:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-48], ebx
.Lt_079D:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .Lt_0395
mov dword ptr [ebp-52], 11
jmp .Lt_079E
.Lt_0395:
mov dword ptr [ebp-52], 12
.Lt_079E:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp+12], ebx
.Lt_0392:
.Lt_0391:
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .Lt_0397
mov dword ptr [ebp-20], 24
jmp .Lt_079F
.Lt_0397:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_079F:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 4
jg .Lt_039A
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .Lt_039B
mov dword ptr [ebp-48], 24
jmp .Lt_07A0
.Lt_039B:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-48], ebx
.Lt_07A0:
mov ebx, dword ptr [ebp-48]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .Lt_039D
mov dword ptr [ebp-52], 11
jmp .Lt_07A1
.Lt_039D:
mov dword ptr [ebp-52], 12
.Lt_07A1:
mov ebx, dword ptr [ebp-52]
mov dword ptr [ebp+16], ebx
.Lt_039A:
.Lt_0399:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .Lt_039F
mov dword ptr [ebp-24], 24
jmp .Lt_07A2
.Lt_039F:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_07A2:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .Lt_03A1
mov dword ptr [ebp-28], 24
jmp .Lt_07A3
.Lt_03A1:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_07A3:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [ebp-48]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+8]
and ecx, dword ptr [_SYMB_DTYPETB+eax+8]
not ecx
test ecx, ecx
je .Lt_03A4
push dword ptr [ebp+12]
call _TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
call _TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp+16], eax
.Lt_03A4:
.Lt_03A3:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_03A5
mov dword ptr [ebp-32], 24
jmp .Lt_07A5
.Lt_03A5:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_07A5:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp ecx, 8
sete cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
mov ecx, dword ptr [ebp+16]
and ecx, 480
je .Lt_03A7
mov dword ptr [ebp-36], 24
jmp .Lt_07A6
.Lt_03A7:
mov ecx, dword ptr [ebp+16]
and ecx, 31
mov dword ptr [ebp-36], ecx
.Lt_07A6:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
cmp eax, 8
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-48]
je .Lt_03AA
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_03AB
mov dword ptr [ebp-52], 24
jmp .Lt_07A8
.Lt_03AB:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_07A8:
mov eax, dword ptr [ebp-52]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_03AD
mov dword ptr [ebp-56], 13
jmp .Lt_07A9
.Lt_03AD:
mov dword ptr [ebp-56], 14
.Lt_07A9:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_03AF
mov dword ptr [ebp-60], 24
jmp .Lt_07AA
.Lt_03AF:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-60], eax
.Lt_07AA:
mov eax, dword ptr [ebp-60]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_03B1
mov dword ptr [ebp-64], 13
jmp .Lt_07AB
.Lt_03B1:
mov dword ptr [ebp-64], 14
.Lt_07AB:
mov eax, dword ptr [ebp-64]
mov dword ptr [ebp+16], eax
.Lt_03AA:
.Lt_03A9:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_03B3
mov dword ptr [ebp-40], 24
jmp .Lt_07AC
.Lt_03B3:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_07AC:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_03B5
mov dword ptr [ebp-44], 24
jmp .Lt_07AD
.Lt_03B5:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_07AD:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ecx, dword ptr [ebp-48]
mov ebx, dword ptr [_SYMB_DTYPETB+eax+8]
and ebx, dword ptr [_SYMB_DTYPETB+ecx+8]
not ebx
test ebx, ebx
je .Lt_03B8
push dword ptr [ebp+12]
call _TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
call _TYPETOUNSIGNED
add esp, 4
mov dword ptr [ebp+16], eax
.Lt_03B8:
.Lt_03B7:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_0384:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRNEWUOP:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_03B9:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-20], eax
jmp .Lt_03BC
.Lt_03BE:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .Lt_03C0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
cmp ebx, 76
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.Lt_03C0:
.Lt_03BF:
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
jmp .Lt_03BB
.Lt_03C1:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .Lt_03C3
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
cmp ebx, 22
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.Lt_03C3:
.Lt_03C2:
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
jmp .Lt_03BB
.Lt_03C4:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
jne .Lt_03C6
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
cmp ebx, dword ptr [eax+20]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.Lt_03C6:
.Lt_03C5:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+4]
push dword ptr [ebp+8]
call _TYPECBOP
add esp, 12
mov dword ptr [ebp-12], eax
jmp .Lt_03BB
.Lt_03C7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
jmp .Lt_03BB
.Lt_03C8:
jmp .Lt_03BB
.Lt_03BC:
mov ebx, dword ptr [ebp-20]
add ebx, 4294967274
cmp ebx, 54
ja .Lt_03C8
mov ebx, dword ptr [ebp-20]
jmp dword ptr [_.LT_03C9+ebx*4-88]
_.LT_03C9:
.int .Lt_03BE
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C4
.int .Lt_03C8
.int .Lt_03C4
.int .Lt_03C8
.int .Lt_03C7
.int .Lt_03C8
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C8
.int .Lt_03C7
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C7
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C8
.int .Lt_03C1
.Lt_03BB:
cmp dword ptr [ebp-16], 0
je .Lt_03CB
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
call _EXPRFREENODE
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_03BA
.Lt_03CB:
.Lt_03CA:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
push dword ptr [ebp-12]
push 4
call _EXPRNEW
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_03BA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRNEWBOP:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_03CC:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call _TYPECBOP
add esp, 12
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .Lt_03CF
.Lt_03D1:
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
je .Lt_03D3
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
je .Lt_03D5
push dword ptr [ebp+12]
push 0
push 35
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
push 0
push 35
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp+16], eax
.Lt_03D5:
.Lt_03D4:
.Lt_03D3:
.Lt_03D2:
jmp .Lt_03CE
.Lt_03CF:
mov eax, dword ptr [ebp-16]
add eax, 4294967251
cmp eax, 5
ja .Lt_03CE
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_03D6+eax*4-180]
_.LT_03D6:
.int .Lt_03D1
.int .Lt_03D1
.int .Lt_03D1
.int .Lt_03D1
.int .Lt_03D1
.int .Lt_03D1
.Lt_03CE:
push 0
push dword ptr [ebp-12]
push 5
call _EXPRNEW
add esp, 12
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
.Lt_03CD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRCACHE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_03D7:
lea eax, [_CTX+2724]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
.Lt_03D8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRLOOKUP:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_03D9:
lea eax, [_CTX+2724]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_03DB:
cmp dword ptr [ebp-8], 0
je .Lt_03DC
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax], ebx
jne .Lt_03DE
jmp .Lt_03DC
.Lt_03DE:
.Lt_03DD:
push dword ptr [ebp-8]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_03DB
.Lt_03DC:
cmp dword ptr [ebp-8], 0
je .Lt_03E0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-8]
lea ebx, [_CTX+2724]
push ebx
call _LISTDELNODE
add esp, 8
jmp .Lt_03DF
.Lt_03E0:
mov dword ptr [ebp-4], 0
.Lt_03DF:
.Lt_03DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITINT:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_03E1:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_03E3
mov dword ptr [ebp-28], 24
jmp .Lt_07BC
.Lt_03E3:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_07BC:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_03E6
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_03E7
mov dword ptr [ebp-32], 24
jmp .Lt_07BD
.Lt_03E7:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_07BD:
mov eax, dword ptr [ebp-32]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .Lt_03EA
cmp dword ptr [ebp+16], 2147483648
jne .Lt_03EC
cmp dword ptr [ebp+12], 0
jne .Lt_03EC
.Lt_07BF:
push 0
push 2
push offset _Lt_03ED
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_03EC:
.Lt_03EB:
push 0
push 3
push offset _Lt_03EE
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_03E9
.Lt_03EA:
cmp dword ptr [ebp+16], 4294967295
jne .Lt_03F0
cmp dword ptr [ebp+12], 2147483648
jne .Lt_03F0
.Lt_07C0:
push 0
push 2
push offset _Lt_03ED
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_03F0:
.Lt_03EF:
.Lt_03E9:
jmp .Lt_03E5
.Lt_03E6:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_03F1
mov dword ptr [ebp-32], 24
jmp .Lt_07BE
.Lt_03F1:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_07BE:
mov eax, dword ptr [ebp-32]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .Lt_03F4
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _fb_ULongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_03F5
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_03F3
.Lt_03F4:
push 0
push -1
mov eax, dword ptr [ebp+12]
push eax
call _fb_UIntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_03ED
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_03F3:
.Lt_03E5:
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
.Lt_03E2:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HEMITFLOAT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_03F6:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 2146435072
je .Lt_03FA
.Lt_03FB:
cmp dword ptr [ebp-28], 4293918720
jne .Lt_03F9
.Lt_03FA:
cmp dword ptr [ebp+8], 16
jne .Lt_03FD
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .Lt_03FF
push 0
push 19
push offset _Lt_0400
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_03FE
.Lt_03FF:
push 0
push 16
push offset _Lt_0401
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_03FE:
jmp .Lt_03FC
.Lt_03FD:
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .Lt_0403
push 0
push 20
push offset _Lt_0404
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0402
.Lt_0403:
push 0
push 17
push offset _Lt_0405
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_0402:
.Lt_03FC:
jmp .Lt_03F8
.Lt_03F9:
cmp dword ptr [ebp-28], 2146959360
je .Lt_0407
.Lt_0408:
cmp dword ptr [ebp-28], 4294443008
jne .Lt_0406
.Lt_0407:
cmp dword ptr [ebp+8], 16
jne .Lt_040A
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .Lt_040C
push 0
push 23
push offset _Lt_040D
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_040B
.Lt_040C:
push 0
push 20
push offset _Lt_040E
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_040B:
jmp .Lt_0409
.Lt_040A:
mov ebx, dword ptr [ebp-28]
and ebx, 2147483648
je .Lt_0410
push 0
push 24
push offset _Lt_0411
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_040F
.Lt_0410:
push 0
push 21
push offset _Lt_0412
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_040F:
.Lt_0409:
jmp .Lt_03F8
.Lt_0406:
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HFLOATTOHEX_C99
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+8], 15
jne .Lt_0415
push 0
push 2
push offset _Lt_0416
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0415:
.Lt_0414:
.Lt_0413:
.Lt_03F8:
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
.Lt_03F7:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBUILDSTRLIT:
push ebp
mov ebp, esp
sub esp, 72
push ebx
.Lt_0417:
push 0
push -1
push 2
push offset _Lt_00CA
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-32], 0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
add ebx, 4294967294
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-36], ecx
jmp .Lt_041B
.Lt_041E:
mov ecx, dword ptr [ebp+12]
add ecx, dword ptr [ebp-32]
movzx ebx, byte ptr [ecx]
mov dword ptr [ebp-4], ebx
push 34
push dword ptr [ebp-4]
call _HCHARNEEDSESCAPING
add esp, 8
test eax, eax
je .Lt_0420
push 0
push -1
push -1
push -1
push 2
push dword ptr [ebp-4]
call _fb_HEXEx_i
add esp, 8
push eax
push 3
push offset _Lt_0421
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-32]
movzx ebx, byte ptr [eax+1]
push ebx
call _HISVALIDHEXDIGIT
add esp, 4
test eax, eax
je .Lt_0425
push 0
push -1
push 4
push offset _Lt_0426
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_0425:
.Lt_0424:
jmp .Lt_041F
.Lt_0420:
cmp dword ptr [ebp-4], 63
jne .Lt_0428
push 0
push -1
push 2
push offset _Lt_0429
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-32]
movzx ebx, byte ptr [eax+1]
cmp ebx, 63
jne .Lt_042C
mov ebx, dword ptr [ebp+12]
add ebx, dword ptr [ebp-32]
mov al, byte ptr [ebx+2]
mov byte ptr [ebp-52], al
movzx eax, byte ptr [ebp-52]
cmp eax, 61
je .Lt_0438
.Lt_0439:
movzx eax, byte ptr [ebp-52]
cmp eax, 47
je .Lt_0438
.Lt_043A:
movzx eax, byte ptr [ebp-52]
cmp eax, 39
je .Lt_0438
.Lt_043B:
movzx eax, byte ptr [ebp-52]
cmp eax, 40
je .Lt_0438
.Lt_043C:
movzx eax, byte ptr [ebp-52]
cmp eax, 41
je .Lt_0438
.Lt_043D:
movzx eax, byte ptr [ebp-52]
cmp eax, 33
je .Lt_0438
.Lt_043E:
movzx eax, byte ptr [ebp-52]
cmp eax, 60
je .Lt_0438
.Lt_043F:
movzx eax, byte ptr [ebp-52]
cmp eax, 62
je .Lt_0438
.Lt_0440:
movzx eax, byte ptr [ebp-52]
cmp eax, 45
jne .Lt_042F
.Lt_0438:
push 0
push -1
push 4
push offset _Lt_0426
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_042F:
.Lt_042D:
.Lt_042C:
.Lt_042B:
jmp .Lt_041F
.Lt_0428:
push 0
push -1
push -1
push dword ptr [ebp-4]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_041F:
.Lt_041C:
inc dword ptr [ebp-32]
.Lt_041B:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-32], eax
jle .Lt_041E
.Lt_041D:
push 0
push -1
push 2
push offset _Lt_00CA
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_0418:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBUILDWSTRLIT:
push ebp
mov ebp, esp
sub esp, 76
push ebx
.Lt_0444:
push 0
push -1
push 3
push offset _Lt_0446
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-36], 0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
add ebx, 4294967294
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-40], ecx
jmp .Lt_0449
.Lt_044C:
mov ecx, dword ptr [ebp+12]
add ecx, dword ptr [ebp-36]
movzx ebx, byte ptr [ecx]
mov dword ptr [ebp-4], ebx
push 34
push dword ptr [ebp-4]
call _HCHARNEEDSESCAPING
add esp, 8
test eax, eax
je .Lt_044E
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-8]
sal eax, 1
push eax
push dword ptr [ebp-4]
call _fb_HEXEx_i
add esp, 8
push eax
push 3
push offset _Lt_0421
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-36]
movzx ebx, byte ptr [eax+1]
push ebx
call _HISVALIDHEXDIGIT
add esp, 4
test eax, eax
je .Lt_0452
push 0
push -1
push 5
push offset _Lt_0453
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_0452:
.Lt_0451:
jmp .Lt_044D
.Lt_044E:
cmp dword ptr [ebp-4], 63
jne .Lt_0455
push 0
push -1
push 2
push offset _Lt_0429
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, dword ptr [ebp-36]
movzx ebx, byte ptr [eax+1]
cmp ebx, 63
jne .Lt_0458
mov ebx, dword ptr [ebp+12]
add ebx, dword ptr [ebp-36]
mov al, byte ptr [ebx+2]
mov byte ptr [ebp-56], al
movzx eax, byte ptr [ebp-56]
cmp eax, 61
je .Lt_045C
.Lt_045D:
movzx eax, byte ptr [ebp-56]
cmp eax, 47
je .Lt_045C
.Lt_045E:
movzx eax, byte ptr [ebp-56]
cmp eax, 39
je .Lt_045C
.Lt_045F:
movzx eax, byte ptr [ebp-56]
cmp eax, 40
je .Lt_045C
.Lt_0460:
movzx eax, byte ptr [ebp-56]
cmp eax, 41
je .Lt_045C
.Lt_0461:
movzx eax, byte ptr [ebp-56]
cmp eax, 33
je .Lt_045C
.Lt_0462:
movzx eax, byte ptr [ebp-56]
cmp eax, 60
je .Lt_045C
.Lt_0463:
movzx eax, byte ptr [ebp-56]
cmp eax, 62
je .Lt_045C
.Lt_0464:
movzx eax, byte ptr [ebp-56]
cmp eax, 45
jne .Lt_045B
.Lt_045C:
push 0
push -1
push 5
push offset _Lt_0453
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_045B:
.Lt_0459:
.Lt_0458:
.Lt_0457:
jmp .Lt_044D
.Lt_0455:
push 0
push -1
push -1
push dword ptr [ebp-4]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_044D:
.Lt_044A:
inc dword ptr [ebp-36]
.Lt_0449:
mov eax, dword ptr [ebp-40]
cmp dword ptr [ebp-36], eax
jle .Lt_044C
.Lt_044B:
push 0
push -1
push 2
push offset _Lt_00CA
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_0445:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBOPTOSTR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0468:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_046B
.Lt_046D:
mov eax, offset _Lt_046E
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_046F:
mov eax, offset _Lt_0470
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_0471:
mov eax, offset _Lt_0472
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_0473:
mov eax, offset _Lt_0474
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_0475:
mov eax, offset _Lt_0474
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_0476:
mov eax, offset _Lt_0477
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_0478:
mov eax, offset _Lt_0479
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_047A:
mov eax, offset _Lt_047B
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_047C:
mov eax, offset _Lt_047D
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_047E:
mov eax, offset _Lt_047F
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_0480:
mov eax, offset _Lt_0481
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_0482:
mov eax, offset _Lt_0483
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_0484:
mov eax, offset _Lt_0485
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_0486:
mov eax, offset _Lt_0487
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_0488:
mov eax, offset _Lt_0489
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_048A:
mov eax, offset _Lt_048B
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_048C:
mov eax, offset _Lt_048D
mov dword ptr [ebp-4], eax
jmp .Lt_046A
.Lt_046B:
mov eax, dword ptr [ebp-8]
add eax, 4294967268
cmp eax, 22
ja .Lt_046A
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_048E+eax*4-112]
_.LT_048E:
.int .Lt_046D
.int .Lt_046F
.int .Lt_0471
.int .Lt_0473
.int .Lt_0475
.int .Lt_0476
.int .Lt_047C
.int .Lt_047E
.int .Lt_046A
.int .Lt_046A
.int .Lt_0480
.int .Lt_046A
.int .Lt_046A
.int .Lt_0478
.int .Lt_047A
.int .Lt_046A
.int .Lt_046A
.int .Lt_0482
.int .Lt_0484
.int .Lt_0486
.int .Lt_0488
.int .Lt_048A
.int .Lt_048C
.Lt_046A:
.Lt_0469:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HUOPTOSTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_048F:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 22
jne .Lt_0492
.Lt_0493:
mov eax, offset _Lt_0494
mov dword ptr [ebp-4], eax
jmp .Lt_0491
.Lt_0492:
cmp dword ptr [ebp+8], 76
jne .Lt_0495
.Lt_0496:
mov eax, offset _Lt_0336
mov dword ptr [ebp-4], eax
jmp .Lt_0491
.Lt_0495:
cmp dword ptr [ebp+8], 54
jne .Lt_0497
.Lt_0498:
mov eax, offset _Lt_0437
mov dword ptr [ebp-4], eax
jmp .Lt_0491
.Lt_0497:
cmp dword ptr [ebp+8], 52
jne .Lt_0499
.Lt_049A:
mov eax, offset _Lt_049B
mov dword ptr [ebp-4], eax
jmp .Lt_0491
.Lt_0499:
cmp dword ptr [ebp+8], 56
jne .Lt_049C
.Lt_049D:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_049E
mov dword ptr [ebp-8], 24
jmp .Lt_07C1
.Lt_049E:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_07C1:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-12], ebx
jmp .Lt_04A1
.Lt_04A3:
mov ebx, offset _Lt_04A4
mov dword ptr [ebp-4], ebx
jmp .Lt_04A0
.Lt_04A5:
mov ebx, offset _Lt_04A6
mov dword ptr [ebp-4], ebx
jmp .Lt_04A0
.Lt_04A7:
mov ebx, offset _Lt_04A8
mov dword ptr [ebp-4], ebx
jmp .Lt_04A0
.Lt_04A9:
mov ebx, offset _Lt_04AA
mov dword ptr [ebp-4], ebx
jmp .Lt_04A0
.Lt_04A1:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967289
cmp ebx, 3
ja .Lt_04A9
mov ebx, dword ptr [ebp-12]
jmp dword ptr [_.LT_04AB+ebx*4-28]
_.LT_04AB:
.int .Lt_04A7
.int .Lt_04A7
.int .Lt_04A3
.int .Lt_04A5
.Lt_04A0:
jmp .Lt_0491
.Lt_049C:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], -1
mov ebx, dword ptr [ebp+12]
and ebx, 511
cmp ebx, 15
jne .Lt_04AE
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .Lt_04B0
.Lt_04B2:
mov ebx, offset _Lt_04B3
mov dword ptr [ebp-4], ebx
jmp .Lt_04AF
.Lt_04B4:
mov ebx, offset _Lt_04B5
mov dword ptr [ebp-4], ebx
jmp .Lt_04AF
.Lt_04B6:
mov ebx, offset _Lt_04B7
mov dword ptr [ebp-4], ebx
jmp .Lt_04AF
.Lt_04B8:
mov ebx, offset _Lt_04B9
mov dword ptr [ebp-4], ebx
jmp .Lt_04AF
.Lt_04BA:
mov ebx, offset _Lt_04BB
mov dword ptr [ebp-4], ebx
jmp .Lt_04AF
.Lt_04BC:
mov ebx, offset _Lt_04BD
mov dword ptr [ebp-4], ebx
jmp .Lt_04AF
.Lt_04BE:
mov ebx, offset _Lt_04BF
mov dword ptr [ebp-4], ebx
jmp .Lt_04AF
.Lt_04C0:
mov ebx, offset _Lt_04C1
mov dword ptr [ebp-4], ebx
jmp .Lt_04AF
.Lt_04C2:
mov ebx, offset _Lt_04C3
mov dword ptr [ebp-4], ebx
jmp .Lt_04AF
.Lt_04C4:
mov ebx, offset _Lt_04C5
mov dword ptr [ebp-4], ebx
jmp .Lt_04AF
.Lt_04C6:
jmp .Lt_04AF
.Lt_04B0:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967238
cmp ebx, 12
ja .Lt_04C6
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.LT_04C7+ebx*4-232]
_.LT_04C7:
.int .Lt_04B2
.int .Lt_04B4
.int .Lt_04B6
.int .Lt_04B8
.int .Lt_04BA
.int .Lt_04BC
.int .Lt_04C6
.int .Lt_04BE
.int .Lt_04C6
.int .Lt_04C6
.int .Lt_04C0
.int .Lt_04C2
.int .Lt_04C4
.Lt_04AF:
jmp .Lt_04AD
.Lt_04AE:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .Lt_04C9
.Lt_04CB:
mov ebx, offset _Lt_04CC
mov dword ptr [ebp-4], ebx
jmp .Lt_04C8
.Lt_04CD:
mov ebx, offset _Lt_04CE
mov dword ptr [ebp-4], ebx
jmp .Lt_04C8
.Lt_04CF:
mov ebx, offset _Lt_04D0
mov dword ptr [ebp-4], ebx
jmp .Lt_04C8
.Lt_04D1:
mov ebx, offset _Lt_04D2
mov dword ptr [ebp-4], ebx
jmp .Lt_04C8
.Lt_04D3:
mov ebx, offset _Lt_04D4
mov dword ptr [ebp-4], ebx
jmp .Lt_04C8
.Lt_04D5:
mov ebx, offset _Lt_04D6
mov dword ptr [ebp-4], ebx
jmp .Lt_04C8
.Lt_04D7:
mov ebx, offset _Lt_04D8
mov dword ptr [ebp-4], ebx
jmp .Lt_04C8
.Lt_04D9:
mov ebx, offset _Lt_04DA
mov dword ptr [ebp-4], ebx
jmp .Lt_04C8
.Lt_04DB:
mov ebx, offset _Lt_04DC
mov dword ptr [ebp-4], ebx
jmp .Lt_04C8
.Lt_04DD:
mov ebx, offset _Lt_04DE
mov dword ptr [ebp-4], ebx
jmp .Lt_04C8
.Lt_04DF:
jmp .Lt_04C8
.Lt_04C9:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967238
cmp ebx, 12
ja .Lt_04DF
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.LT_04E0+ebx*4-232]
_.LT_04E0:
.int .Lt_04CB
.int .Lt_04CD
.int .Lt_04CF
.int .Lt_04D1
.int .Lt_04D3
.int .Lt_04D5
.int .Lt_04DF
.int .Lt_04D7
.int .Lt_04DF
.int .Lt_04DF
.int .Lt_04D9
.int .Lt_04DB
.int .Lt_04DD
.Lt_04C8:
.Lt_04AD:
.Lt_04AC:
.Lt_0491:
.Lt_0490:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HIMM2TEXT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_04E1:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_04E3
mov dword ptr [ebp-4], 24
jmp .Lt_07C2
.Lt_04E3:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_07C2:
mov eax, dword ptr [ebp-4]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_04E6
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HEMITFLOAT
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .Lt_04E5
.Lt_04E6:
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HEMITINT
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_04E5:
.Lt_04E2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSYM2TEXT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_04E9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .Lt_04EC
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 7
jne .Lt_04EE
mov ebx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ebx
sar eax, 31
push eax
push ebx
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call ___divdi3
add esp, 16
push edx
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _HUNESCAPEW
add esp, 4
push eax
push dword ptr [ebp+8]
call _HBUILDWSTRLIT
add esp, 16
jmp .Lt_04ED
.Lt_04EE:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+44]
push dword ptr [eax+40]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _HUNESCAPE
add esp, 4
push eax
push dword ptr [ebp+8]
call _HBUILDSTRLIT
add esp, 16
.Lt_04ED:
jmp .Lt_04EB
.Lt_04EC:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 7
jne .Lt_04F0
push 0
push -1
push 3
push offset _Lt_04F1
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .Lt_04EF
.Lt_04F0:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .Lt_04F3
push 0
push -1
push 2
push offset _Lt_0494
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_04F3:
.Lt_04EF:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_04EB:
.Lt_04EA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HEXPRFLUSH:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_04F6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .Lt_04F9
.Lt_04FB:
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
push -1
lea ebx, [_CTX+2712]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_04F8
.Lt_04FD:
push dword ptr [ebp+8]
lea eax, [_CTX+2712]
push eax
call _HIMM2TEXT
add esp, 8
jmp .Lt_04F8
.Lt_04FE:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
lea eax, [_CTX+2712]
push eax
call _HSYM2TEXT
add esp, 8
jmp .Lt_04F8
.Lt_04FF:
push 0
push -1
push -1
push 2
push offset _Lt_0130
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HEMITTYPE
add esp, 8
push eax
push 2
push offset _Lt_0433
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
lea eax, [_CTX+2712]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH
add esp, 8
jmp .Lt_04F8
.Lt_0503:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 112
jne .Lt_0506
.Lt_0507:
push 0
push 19
push offset _Lt_0508
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatAssign
add esp, 20
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _HEXPRFLUSH
add esp, 8
push 0
push 3
push offset _Lt_013B
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call _HEMITTYPE
add esp, 8
push eax
push -1
lea eax, [_CTX+2712]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_0130
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0504
.Lt_0506:
cmp dword ptr [ebp-20], 109
jne .Lt_050A
.Lt_050B:
push 0
push 21
push offset _Lt_050C
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatAssign
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH
add esp, 8
push 0
push 3
push offset _Lt_013B
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatAssign
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _HEXPRFLUSH
add esp, 8
push 0
push 2
push offset _Lt_0130
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0504
.Lt_050A:
cmp dword ptr [ebp-20], 110
jne .Lt_050D
.Lt_050E:
push 0
push 19
push offset _Lt_050F
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatAssign
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH
add esp, 8
push 0
push 2
push offset _Lt_0130
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0504
.Lt_050D:
cmp dword ptr [ebp-20], 111
jne .Lt_0510
.Lt_0511:
push 0
push 20
push offset _Lt_0512
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatAssign
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH
add esp, 8
push 0
push 3
push offset _Lt_013B
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatAssign
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _HEXPRFLUSH
add esp, 8
push 0
push 2
push offset _Lt_0130
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0510:
.Lt_0513:
.Lt_0504:
jmp .Lt_04F8
.Lt_0514:
push 0
push -1
push 0
lea eax, [ebp-12]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _HUOPTOSTR
add esp, 12
push eax
push -1
lea eax, [_CTX+2712]
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign
add esp, 20
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
je .Lt_0517
push 0
push 2
push offset _Lt_0433
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp-12], 0
je .Lt_0519
push 0
push 2
push offset _Lt_00E0
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0519:
.Lt_0518:
.Lt_0517:
.Lt_0516:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HEXPRFLUSH
add esp, 8
cmp dword ptr [ebp+12], 0
je .Lt_051B
cmp dword ptr [ebp-12], 0
je .Lt_051D
push 0
push 2
push offset _Lt_00E0
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_051D:
.Lt_051C:
push 0
push 2
push offset _Lt_0130
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_051B:
.Lt_051A:
jmp .Lt_04F8
.Lt_051E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 64
jne .Lt_0521
.Lt_0522:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 15
jne .Lt_0524
push 0
push 17
push offset _Lt_0525
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0523
.Lt_0524:
push 0
push 16
push offset _Lt_0526
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_0523:
push 0
push 2
push offset _Lt_0433
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatAssign
add esp, 20
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _HEXPRFLUSH
add esp, 8
push 0
push 3
push offset _Lt_013B
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatAssign
add esp, 20
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
call _HEXPRFLUSH
add esp, 8
push 0
push 2
push offset _Lt_0130
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_051F
.Lt_0521:
cmp dword ptr [ebp+12], 0
je .Lt_0529
push 0
push 2
push offset _Lt_0433
push -1
lea ebx, [_CTX+2712]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_0529:
.Lt_0528:
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _HEXPRFLUSH
add esp, 8
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
call _HBOPTOSTR
add esp, 4
push eax
push -1
lea eax, [_CTX+2712]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign
add esp, 20
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _HEXPRFLUSH
add esp, 8
cmp dword ptr [ebp+12], 0
je .Lt_052C
push 0
push 2
push offset _Lt_0130
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_052C:
.Lt_052B:
.Lt_0527:
.Lt_051F:
jmp .Lt_04F8
.Lt_04F9:
cmp dword ptr [ebp-16], 6
ja .Lt_04F8
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_052D+eax*4]
_.LT_052D:
.int .Lt_04FB
.int .Lt_04FD
.int .Lt_04FE
.int .Lt_04FF
.int .Lt_0514
.int .Lt_051E
.int .Lt_0503
.Lt_04F8:
.Lt_04F7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRFLUSH:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_052E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HEXPRFLUSH
add esp, 8
push 0
push -1
lea eax, [_CTX+2712]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+2712]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp+8]
call _EXPRFREETREE
add esp, 4
.Lt_052F:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRNEWOFFSET:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0530:
push dword ptr [ebp+8]
call _EXPRNEWSYM
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp+8]
call _SYMBISCARRAY
add esp, 4
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
jne .Lt_0533
push dword ptr [ebp-8]
push 22
call _EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_0533:
.Lt_0532:
cmp dword ptr [ebp+16], 0
jne .Lt_07C7
cmp dword ptr [ebp+12], 0
je .Lt_0535
.Lt_07C7:
push dword ptr [ebp-8]
push 0
push 35
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 28
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_0535:
.Lt_0534:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0531:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRNEWVREG:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.Lt_0536:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .Lt_0539
.Lt_053B:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+32], 0
jne .Lt_053D
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+48], 0
je .Lt_053F
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+48]
call _EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .Lt_07CF
cmp dword ptr [eax+36], 0
je .Lt_0541
.Lt_07CF:
push dword ptr [ebp-8]
push 0
push 35
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 28
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_0541:
.Lt_0540:
jmp .Lt_053E
.Lt_053F:
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_053E:
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
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push 76
call _EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_0538
.Lt_053D:
.Lt_053C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
mov ebx, -1
jne .Lt_07D0
cmp dword ptr [eax+36], 0
jne .Lt_07D0
.Lt_07D1:
xor ebx, ebx
.Lt_07D0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
call _SYMBISCARRAY
add esp, 4
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-16]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _EXPRNEWSYM
add esp, 4
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
je .Lt_0543
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0544
mov dword ptr [ebp-40], 24
jmp .Lt_07C8
.Lt_0544:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_07C8:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-32]
and eax, 480
je .Lt_0546
mov dword ptr [ebp-44], 24
jmp .Lt_07C9
.Lt_0546:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_07C9:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov ebx, dword ptr [ebp-48]
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
cmp ecx, dword ptr [_SYMB_DTYPETB+ebx]
setne cl
shr ecx, 1
sbb ecx, ecx
or dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 480
je .Lt_0548
mov dword ptr [ebp-52], 24
jmp .Lt_07CB
.Lt_0548:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 31
mov dword ptr [ebp-52], ecx
.Lt_07CB:
mov ecx, dword ptr [ebp-52]
mov dword ptr [ebp-56], ecx
cmp dword ptr [ebp-56], 17
jne .Lt_054C
.Lt_054D:
mov dword ptr [ebp-28], -1
jmp .Lt_054A
.Lt_054C:
cmp dword ptr [ebp-56], 20
jne .Lt_054E
.Lt_054F:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+32]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
push dword ptr [ecx+28]
call _SYMBGETVALISTTYPE
add esp, 8
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
or dword ptr [ebp-28], eax
jmp .Lt_054A
.Lt_054E:
mov eax, dword ptr [ebp-32]
and eax, 480
je .Lt_0551
mov dword ptr [ebp-60], 24
jmp .Lt_07CC
.Lt_0551:
mov eax, dword ptr [ebp-32]
and eax, 31
mov dword ptr [ebp-60], eax
.Lt_07CC:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 17
jne .Lt_0555
.Lt_0556:
mov dword ptr [ebp-28], -1
jmp .Lt_0553
.Lt_0555:
cmp dword ptr [ebp-64], 20
jne .Lt_0557
.Lt_0558:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+32]
push dword ptr [eax+28]
call _SYMBGETVALISTTYPE
add esp, 8
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
or dword ptr [ebp-28], eax
.Lt_0557:
.Lt_0553:
.Lt_0550:
.Lt_054A:
.Lt_0543:
.Lt_0542:
cmp dword ptr [ebp-28], 0
jne .Lt_055A
jmp .Lt_0538
.Lt_055A:
.Lt_0559:
cmp dword ptr [ebp-24], 0
jne .Lt_055C
push dword ptr [ebp-8]
push 22
call _EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_055C:
.Lt_055B:
cmp dword ptr [ebp-16], 0
je .Lt_055E
push dword ptr [ebp-8]
push 0
push 35
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
je .Lt_0560
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
call _EXPRNEWVREG
add esp, 8
push eax
push dword ptr [ebp-8]
push 28
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_0560:
.Lt_055F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+40], 0
jne .Lt_07D8
cmp dword ptr [eax+36], 0
je .Lt_0562
.Lt_07D8:
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
call _EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 28
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_0562:
.Lt_0561:
.Lt_055E:
.Lt_055D:
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
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push 76
call _EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_0538
.Lt_0563:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
push dword ptr [eax+36]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _EXPRNEWOFFSET
add esp, 12
mov dword ptr [ebp-8], eax
jmp .Lt_0538
.Lt_0564:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .Lt_0565
mov dword ptr [ebp-24], 24
jmp .Lt_07CD
.Lt_0565:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-24], ecx
.Lt_07CD:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx], 1
jne .Lt_0568
push dword ptr [ebp-12]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+28]
push dword ptr [ecx+24]
call _EXPRNEWIMMF
add esp, 12
mov dword ptr [ebp-8], eax
jmp .Lt_0567
.Lt_0568:
cmp dword ptr [ebp-12], 1
jne .Lt_0569
push 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
jne .Lt_07D9
cmp dword ptr [eax+24], 0
je .Lt_056A
.Lt_07D9:
mov dword ptr [ebp-28], 1
jmp .Lt_07CE
.Lt_056A:
mov dword ptr [ebp-28], 0
.Lt_07CE:
mov ecx, dword ptr [ebp-28]
mov eax, ecx
sar eax, 31
push eax
push ecx
call _EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-8], eax
jmp .Lt_0567
.Lt_0569:
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_0567:
jmp .Lt_0538
.Lt_056C:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _EXPRLOOKUP
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_056E
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _fb_IntToStr
add esp, 4
push eax
push 4
push offset _Lt_056F
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp-8], eax
lea eax, [ebp-44]
push eax
call _fb_StrDelete
add esp, 4
.Lt_056E:
.Lt_056D:
jmp .Lt_0538
.Lt_0539:
cmp dword ptr [ebp-20], 5
ja .Lt_0538
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_0572+eax*4]
_.LT_0572:
.int .Lt_0564
.int .Lt_053B
.int .Lt_053B
.int .Lt_053B
.int .Lt_056C
.int .Lt_0563
.Lt_0538:
cmp dword ptr [ebp+12], 0
jne .Lt_0574
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_0574:
.Lt_0573:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0537:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLABEL:
push ebp
mov ebp, esp
sub esp, 24
.Lt_0575:
call _SECTIONINSIDEPROC
test eax, eax
je .Lt_0578
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 3
push offset _Lt_0579
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0578:
.Lt_0577:
.Lt_0576:
mov esp, ebp
pop ebp
ret
.balign 16
_EXPRSTORE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_057C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .Lt_057F
cmp dword ptr [ebp+16], 0
je .Lt_0581
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _fb_IntToStr
add esp, 4
push eax
push 4
push offset _Lt_056F
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_07DA
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HEMITTYPE
add esp, 8
push eax
push -1
push offset _Lt_07DB
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_00E0
push -1
push offset _Lt_07DB
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_07DA
push -1
push offset _Lt_07DB
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_01BA
push -1
push offset _Lt_07DB
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
call _EXPRFLUSH
add esp, 8
push eax
push -1
push offset _Lt_07DB
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_017C
push -1
push offset _Lt_07DB
call _fb_StrConcatAssign
add esp, 20
push 0
push offset _Lt_07DB
call _HWRITELINE
add esp, 8
push dword ptr [_Lt_07DA]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp+12], eax
jmp .Lt_0580
.Lt_0581:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp+12], eax
.Lt_0580:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _EXPRCACHE
add esp, 8
jmp .Lt_057E
.Lt_057F:
push -1
push dword ptr [ebp+8]
call _EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _EXPRNEWCAST
add esp, 12
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
je .Lt_0584
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+4]
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp+12], eax
.Lt_0584:
.Lt_0583:
push 0
push -1
push 0
push dword ptr [ebp-4]
call _EXPRFLUSH
add esp, 8
push eax
push -1
push offset _Lt_07DB
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_01BA
push -1
push offset _Lt_07DB
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+12]
call _EXPRFLUSH
add esp, 8
push eax
push -1
push offset _Lt_07DB
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_017C
push -1
push offset _Lt_07DB
call _fb_StrConcatAssign
add esp, 20
push 0
push offset _Lt_07DB
call _HWRITELINE
add esp, 8
.Lt_057E:
.Lt_057D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_07DB,12
.balign 4
	.lcomm	_Lt_07DA,12

.section .text
.balign 16
__EMITBOP:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0585:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+24], 0
je .Lt_0588
push 0
push 5
push offset _Lt_0589
push -1
push offset _Lt_07DF
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP
add esp, 12
push eax
call _EXPRFLUSH
add esp, 8
push eax
push -1
push offset _Lt_07DF
call _fb_StrConcatAssign
add esp, 20
push 0
push 9
push offset _Lt_058A
push -1
push offset _Lt_07DF
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+24]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_07DF
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_07DF
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_017C
push -1
push offset _Lt_07DF
call _fb_StrConcatAssign
add esp, 20
push 0
push offset _Lt_07DF
call _HWRITELINE
add esp, 8
jmp .Lt_0586
.Lt_0588:
.Lt_0587:
cmp dword ptr [ebp+20], 0
jne .Lt_058D
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
.Lt_058D:
.Lt_058C:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_058F
.Lt_0591:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
je .Lt_0593
push dword ptr [ebp-4]
push 54
call _EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0593:
.Lt_0592:
jmp .Lt_058E
.Lt_0594:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
je .Lt_0596
push dword ptr [ebp-4]
push 0
push 35
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0596:
.Lt_0595:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
test ebx, ebx
je .Lt_0598
push dword ptr [ebp-8]
push 0
push 35
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_0598:
.Lt_0597:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_058E
.Lt_0599:
push dword ptr [ebp-4]
push 0
push 16
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
push 0
push 16
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_058E
.Lt_059A:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_058E
.Lt_059B:
push 8
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_059C
mov dword ptr [ebp-16], 24
jmp .Lt_07DE
.Lt_059C:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_07DE:
mov eax, dword ptr [ebp-16]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
sal ebx, 3
dec ebx
mov ecx, ebx
mov eax, ecx
sar eax, 31
push eax
push ecx
call _EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-8]
push 34
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_058E
.Lt_059E:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 38
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
jne .Lt_05A0
push 8
push 0
push 1
call _EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 38
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_059F
.Lt_05A0:
push dword ptr [ebp-4]
push 52
call _EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_059F:
jmp .Lt_058E
.Lt_05A1:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax+4], 1
jne .Lt_05A3
push 8
push 0
push 1
call _EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 38
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_05A2
.Lt_05A3:
push dword ptr [ebp-4]
push 52
call _EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_05A2:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 35
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_058E
.Lt_058F:
mov eax, dword ptr [ebp-12]
add eax, 4294967268
cmp eax, 22
ja .Lt_058E
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_05A4+eax*4-112]
_.LT_05A4:
.int .Lt_0594
.int .Lt_0594
.int .Lt_059A
.int .Lt_0599
.int .Lt_059A
.int .Lt_059A
.int .Lt_059A
.int .Lt_059A
.int .Lt_058E
.int .Lt_058E
.int .Lt_059A
.int .Lt_059E
.int .Lt_05A1
.int .Lt_059B
.int .Lt_059B
.int .Lt_058E
.int .Lt_058E
.int .Lt_0591
.int .Lt_0591
.int .Lt_0591
.int .Lt_0591
.int .Lt_0591
.int .Lt_0591
.Lt_058E:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
call _EXPRSTORE
add esp, 12
.Lt_0586:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_07DF,12

.section .text
.balign 16
__EMITUOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_05A5:
cmp dword ptr [ebp+16], 0
jne .Lt_05A8
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+16], eax
.Lt_05A8:
.Lt_05A7:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG
add esp, 8
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
je .Lt_05AA
push 8
push 0
push 0
call _EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 45
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_05A9
.Lt_05AA:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_05A9:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+16]
call _EXPRSTORE
add esp, 12
.Lt_05A6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCONVERT:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_05AB:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG
add esp, 8
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
je .Lt_05AE
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx], 1
jne .Lt_05B0
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+24], 0
mov ebx, -1
jne .Lt_07EB
cmp dword ptr [ecx+20], 0
jne .Lt_07EB
.Lt_07EC:
xor ebx, ebx
.Lt_07EB:
mov eax, ebx
mov ecx, eax
sar ecx, 31
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+20], eax
mov dword ptr [ebx+24], ecx
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 11
jmp .Lt_05AF
.Lt_05B0:
push dword ptr [ebp-4]
push 54
call _EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_05AF:
jmp .Lt_05AD
.Lt_05AE:
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
je .Lt_05B1
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 1
jne .Lt_05B3
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+4]
and ecx, 480
je .Lt_05B4
mov dword ptr [ebp-16], 24
jmp .Lt_07E2
.Lt_05B4:
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_07E2:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 1
jne .Lt_05B6
mov ebx, dword ptr [ebp-4]
fld qword ptr [ebx+20]
fcomp qword ptr [_Lt_07E4]
push eax
fnstsw ax
test ah, 0b01000000
pop eax
setz bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_07E3
.Lt_05B6:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+24], 0
mov ecx, -1
jne .Lt_07F0
cmp dword ptr [ebx+20], 0
jne .Lt_07F0
.Lt_07F1:
xor ecx, ecx
.Lt_07F0:
mov dword ptr [ebp-20], ecx
.Lt_07E3:
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
jmp .Lt_05B2
.Lt_05B3:
push 8
push 0
push 0
call _EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-4]
push 48
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_05B2:
jmp .Lt_05AD
.Lt_05B1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_05B9
mov dword ptr [ebp-8], 24
jmp .Lt_07E5
.Lt_05B9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_07E5:
mov eax, dword ptr [ebp-8]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_05BB
mov dword ptr [ebp-12], 24
jmp .Lt_07E6
.Lt_05BB:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_07E6:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-16]
je .Lt_05B8
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_05BD
mov dword ptr [ebp-36], 24
jmp .Lt_07E8
.Lt_05BD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_07E8:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 5
jg .Lt_05C1
.Lt_05C2:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .Lt_05C4
push 0
push 7
push offset _Lt_05C5
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign
add esp, 20
or dword ptr [_CTX+2604], 1
jmp .Lt_05C3
.Lt_05C4:
push 0
push 7
push offset _Lt_05C6
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign
add esp, 20
or dword ptr [_CTX+2604], 8
.Lt_05C3:
mov dword ptr [ebp-32], 11
jmp .Lt_05BF
.Lt_05C1:
cmp dword ptr [ebp-40], 7
jg .Lt_05C7
.Lt_05C8:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .Lt_05CA
push 0
push 7
push offset _Lt_05CB
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign
add esp, 20
or dword ptr [_CTX+2604], 2
jmp .Lt_05C9
.Lt_05CA:
push 0
push 7
push offset _Lt_05CC
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign
add esp, 20
or dword ptr [_CTX+2604], 16
.Lt_05C9:
mov dword ptr [ebp-32], 13
jmp .Lt_05BF
.Lt_05C7:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 15
jne .Lt_05CF
push 0
push 8
push offset _Lt_05D0
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign
add esp, 20
or dword ptr [_CTX+2604], 4
jmp .Lt_05CE
.Lt_05CF:
push 0
push 8
push offset _Lt_05D1
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrAssign
add esp, 20
or dword ptr [_CTX+2604], 32
.Lt_05CE:
mov dword ptr [ebp-32], 14
.Lt_05CD:
.Lt_05BF:
push 0
push 3
push offset _Lt_00EC
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp-4]
call _EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_00ED
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign
add esp, 20
push dword ptr [ebp-28]
push 0
push dword ptr [ebp-32]
call _EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp-4], eax
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05B8:
.Lt_05AD:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _EXPRSTORE
add esp, 12
.Lt_05AC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORE:
push ebp
mov ebp, esp
.Lt_05D2:
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG
add esp, 8
push eax
push dword ptr [ebp+8]
call _EXPRSTORE
add esp, 12
.Lt_05D3:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSPILLREGS:
.Lt_05D4:
.Lt_05D5:
ret
.balign 16
__EMITLOAD:
push ebp
mov ebp, esp
.Lt_05D6:
.Lt_05D7:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADRES:
push ebp
mov ebp, esp
sub esp, 36
.Lt_05D8:
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call __EMITSTORE
add esp, 8
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_017C
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG
add esp, 8
push eax
call _EXPRFLUSH
add esp, 8
push eax
push 8
push offset _Lt_05DA
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
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05D9:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITADDR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_05DE:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 22
jne .Lt_05E1
.Lt_05E2:
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
je .Lt_05E4
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+32]
cmp dword ptr [ebx], 7
jne .Lt_05E6
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
call _EXPRNEWSYM
add esp, 4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_05E0
.Lt_05E6:
.Lt_05E5:
.Lt_05E4:
.Lt_05E3:
push -1
push dword ptr [ebp+12]
call _EXPRNEWVREG
add esp, 8
push eax
push 22
call _EXPRNEWUOP
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_05E0
.Lt_05E1:
cmp dword ptr [ebp+8], 76
jne .Lt_05E7
.Lt_05E8:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_05E7:
.Lt_05E0:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+16]
call _EXPRSTORE
add esp, 12
.Lt_05DF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDOCALL:
push ebp
mov ebp, esp
sub esp, 76
push ebx
.Lt_05E9:
push 0
push -1
push 3
push offset _Lt_00EC
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
lea eax, [_IRHL+60]
push eax
call _LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_05EC:
cmp dword ptr [ebp-4], 0
je .Lt_05EE
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
jmp .Lt_07F6
.Lt_05EE:
mov dword ptr [ebp-28], 0
.Lt_07F6:
cmp dword ptr [ebp-28], 0
je .Lt_05ED
push dword ptr [ebp-4]
call _LISTGETPREV
add esp, 4
mov dword ptr [ebp-44], eax
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
call _EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
je .Lt_05F0
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
jmp .Lt_07F7
.Lt_05F0:
mov dword ptr [ebp-52], 0
.Lt_07F7:
cmp dword ptr [ebp-52], 0
je .Lt_05F3
lea ebx, [ebp-12]
push ebx
lea ebx, [ebp-8]
push ebx
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx]
call __Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
add esp, 12
push dword ptr [ebp-48]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-48], eax
.Lt_05F3:
.Lt_05F2:
push 0
push -1
push -1
push 0
push dword ptr [ebp-48]
call _EXPRFLUSH
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-4]
lea eax, [_IRHL+60]
push eax
call _LISTDELNODE
add esp, 8
cmp dword ptr [ebp-44], 0
je .Lt_05F6
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [ebp+20]
cmp dword ptr [eax+8], ebx
jne .Lt_05F8
push 0
push -1
push 3
push offset _Lt_013B
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea ebx, [ebp-76]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_05F8:
.Lt_05F7:
.Lt_05F6:
.Lt_05F5:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-4], eax
jmp .Lt_05EC
.Lt_05ED:
push 0
push -1
push 3
push offset _Lt_00ED
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+16], 0
jne .Lt_05FC
push 0
push -1
push 2
push offset _Lt_017C
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push 0
push dword ptr [ebp+8]
call _HWRITELINE
add esp, 8
jmp .Lt_05FB
.Lt_05FC:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
call _EXPRNEWTEXT
add esp, 12
push eax
push dword ptr [ebp+16]
call _EXPRSTORE
add esp, 12
.Lt_05FB:
.Lt_05EA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCALL:
push ebp
mov ebp, esp
.Lt_05FE:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push offset _Lt_07FC
call _fb_StrAssign
add esp, 20
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push offset _Lt_07FC
call _HDOCALL
add esp, 16
.Lt_05FF:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_07FC,12

.section .text
.balign 16
__EMITCALLPTR:
push ebp
mov ebp, esp
.Lt_0600:
push 0
push 2
push offset _Lt_0433
push -1
push offset _Lt_07FD
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG
add esp, 8
push eax
call _EXPRFLUSH
add esp, 8
push eax
push -1
push offset _Lt_07FD
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0130
push -1
push offset _Lt_07FD
call _fb_StrConcatAssign
add esp, 20
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push offset _Lt_07FD
call _HDOCALL
add esp, 16
.Lt_0601:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_07FD,12

.section .text
.balign 16
__EMITJUMPPTR:
push ebp
mov ebp, esp
sub esp, 36
.Lt_0602:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_017C
push -1
push -1
push -1
push 0
push dword ptr [ebp+8]
call _EXPRNEWVREG
add esp, 8
push eax
call _EXPRFLUSH
add esp, 8
push eax
push 7
push offset _Lt_0604
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
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0603:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITBRANCH:
push ebp
mov ebp, esp
sub esp, 36
.Lt_0608:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_017C
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 6
push offset _Lt_060A
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
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0609:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITJMPTB:
push ebp
mov ebp, esp
sub esp, 316
push ebx
push esi
push edi
.Lt_060E:
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
push 0
push -1
push 0
push 0
push dword ptr [ebp+8]
call _EXPRNEWVREG
add esp, 8
push eax
call _EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+24], 0
jg .Lt_0611
push -1
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
mov dword ptr [ebp-272], 0
push 0
push -1
push 2
push offset _Lt_017C
push -1
push 0
push dword ptr [ebp+28]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 6
push offset _Lt_060A
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
mov dword ptr [ebp-248], 0
lea eax, [ebp-256]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
mov dword ptr [ebp-260], 0
lea eax, [ebp-268]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-280]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-280]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-280]
push eax
call _fb_StrDelete
add esp, 4
push -1
mov dword ptr [ebp-316], 0
mov dword ptr [ebp-312], 0
mov dword ptr [ebp-308], 0
push 0
push -1
push 2
push offset _Lt_017C
push -1
push -1
lea eax, [ebp-24]
push eax
push 7
push offset _Lt_0615
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
mov dword ptr [ebp-284], 0
lea eax, [ebp-292]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
mov dword ptr [ebp-296], 0
lea eax, [ebp-304]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-316]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-316]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-316]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_060F
.Lt_0611:
.Lt_0610:
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 8
mov ebx, dword ptr [ebp+40]
mov eax, dword ptr [ebp+44]
add ebx, 1
adc eax, 0
mov esi, ebx
mov ecx, eax
push ecx
push esi
call _EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
push 0
push -1
push 6
push offset _Lt_061A
push -1
push -1
push 0
push dword ptr [ebp-40]
call _EXPRFLUSH
add esp, 8
push eax
push -1
push 2
push offset _Lt_019C
push -1
push -1
lea eax, [ebp-12]
push eax
push 20
push offset _Lt_0619
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
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
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-104]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-104]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-104]
push eax
call _fb_StrDelete
add esp, 4
call _SECTIONINDENT
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-112], 0
.Lt_0620:
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
jne .Lt_0624
cmp esi, edi
jne .Lt_0624
.Lt_07FE:
mov edi, dword ptr [ebp-108]
sal edi, 2
mov ecx, dword ptr [ebp+20]
add ecx, edi
mov edi, dword ptr [ecx]
mov dword ptr [ebp-248], edi
inc dword ptr [ebp-108]
jmp .Lt_0623
.Lt_0624:
mov edi, dword ptr [ebp+28]
mov dword ptr [ebp-248], edi
.Lt_0623:
push -1
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
push 0
push -1
push 2
push offset _Lt_0625
push -1
push 0
push dword ptr [ebp-248]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 3
push offset _Lt_04F1
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-284]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-284]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-284]
push eax
call _fb_StrDelete
add esp, 4
mov edi, dword ptr [ebp-112]
mov eax, edi
sar eax, 31
mov esi, dword ptr [ebp+40]
mov ecx, dword ptr [ebp+44]
cmp eax, ecx
jne .Lt_062A
cmp edi, esi
jne .Lt_062A
.Lt_07FF:
jmp .Lt_0621
.Lt_062A:
.Lt_0629:
inc dword ptr [ebp-112]
.Lt_0622:
jmp .Lt_0620
.Lt_0621:
call _SECTIONUNINDENT
push -1
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
push 0
push 3
push offset _Lt_01FE
push -1
lea esi, [ebp-124]
push esi
call _fb_StrAssign
add esp, 20
lea esi, [ebp-124]
push esi
call _HWRITELINE
add esp, 8
lea esi, [ebp-124]
push esi
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-44]
call _EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp+36], 0
jne .Lt_0800
cmp dword ptr [ebp+32], 0
je .Lt_062D
.Lt_0800:
push dword ptr [ebp-44]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call _EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-40]
push 29
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-40], eax
.Lt_062D:
.Lt_062C:
push dword ptr [ebp-44]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
call _EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-40]
push 46
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
mov dword ptr [ebp-176], 0
push 0
push -1
push 2
push offset _Lt_017C
push -1
push 0
push dword ptr [ebp+28]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
push 9
push offset _Lt_058A
push -1
push -1
push 0
push dword ptr [ebp-40]
call _EXPRFLUSH
add esp, 8
push eax
push 5
push offset _Lt_0589
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
lea eax, [ebp-172]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-184]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-184]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-184]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-44]
call _EXPRNEWTEXT
add esp, 12
mov dword ptr [ebp-40], eax
push dword ptr [ebp-44]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
call _EXPRNEWIMMI
add esp, 12
push eax
push dword ptr [ebp-40]
push 29
call _EXPRNEWBOP
add esp, 12
mov dword ptr [ebp-40], eax
push -1
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
mov dword ptr [ebp-236], 0
push 0
push -1
push 3
push offset _Lt_023E
push -1
push -1
push 0
push dword ptr [ebp-40]
call _EXPRFLUSH
add esp, 8
push eax
push -1
push 2
push offset _Lt_019C
push -1
push -1
lea eax, [ebp-12]
push eax
push 7
push offset _Lt_0604
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
mov dword ptr [ebp-188], 0
lea eax, [ebp-196]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
mov dword ptr [ebp-200], 0
lea eax, [ebp-208]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
mov dword ptr [ebp-212], 0
lea eax, [ebp-220]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
mov dword ptr [ebp-224], 0
lea eax, [ebp-232]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-244]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-244]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-244]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_060F:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITMEM:
push ebp
mov ebp, esp
sub esp, 84
.Lt_0638:
cmp dword ptr [ebp+8], 107
jne .Lt_063B
.Lt_063C:
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 4
push offset _Lt_00D6
push -1
push -1
push 0
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG
add esp, 8
push eax
call _EXPRFLUSH
add esp, 8
push eax
push -1
push 6
push offset _Lt_063E
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG
add esp, 8
push eax
call _EXPRFLUSH
add esp, 8
push eax
push 19
push offset _Lt_063D
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
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_063A
.Lt_063B:
cmp dword ptr [ebp+8], 105
jne .Lt_0644
.Lt_0645:
push 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push 4
push offset _Lt_00D6
push -1
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _fb_ULongintToStr
add esp, 8
push eax
push -1
push 3
push offset _Lt_013B
push -1
push -1
push 0
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG
add esp, 8
push eax
call _EXPRFLUSH
add esp, 8
push eax
push -1
push 3
push offset _Lt_013B
push -1
push -1
push 0
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG
add esp, 8
push eax
call _EXPRFLUSH
add esp, 8
push eax
push 19
push offset _Lt_0646
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
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-84]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-84]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0644:
.Lt_063A:
.Lt_0639:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITMACRO:
push ebp
mov ebp, esp
sub esp, 32
.Lt_064E:
cmp dword ptr [ebp+8], 109
jne .Lt_0651
.Lt_0652:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-8], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset _Lt_017C
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call _EXPRNEWMACRO
add esp, 20
push eax
call _EXPRFLUSH
add esp, 8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0650
.Lt_0651:
cmp dword ptr [ebp+8], 110
jne .Lt_0655
.Lt_0656:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset _Lt_017C
push -1
push 0
push 0
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call _EXPRNEWMACRO
add esp, 20
push eax
call _EXPRFLUSH
add esp, 8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0650
.Lt_0655:
cmp dword ptr [ebp+8], 112
jne .Lt_0659
.Lt_065A:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call _EXPRNEWMACRO
add esp, 20
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push dword ptr [ebp+20]
call _EXPRSTORE
add esp, 12
jmp .Lt_0650
.Lt_0659:
cmp dword ptr [ebp+8], 111
jne .Lt_065B
.Lt_065C:
push 0
push dword ptr [ebp+12]
call _EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+16]
call _EXPRNEWVREG
add esp, 8
mov dword ptr [ebp-8], eax
push 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 2
push offset _Lt_017C
push -1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 0
push -2147483648
push dword ptr [ebp+8]
call _EXPRNEWMACRO
add esp, 20
push eax
call _EXPRFLUSH
add esp, 8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-32]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
.Lt_065B:
.Lt_0650:
.Lt_064F:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITDECL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_065F:
push dword ptr [ebp+8]
call _HISSTATICWITHDTOR
add esp, 4
test eax, eax
je .Lt_0662
jmp .Lt_0660
.Lt_0662:
.Lt_0661:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_0664
push dword ptr [ebp-4]
call _HISSTATICWITHDTOR
add esp, 4
test eax, eax
je .Lt_0666
jmp .Lt_0660
.Lt_0666:
.Lt_0665:
.Lt_0664:
.Lt_0663:
push dword ptr [ebp+8]
call _HMAYBEEMITLOCALVAR
add esp, 4
.Lt_0660:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITDBG:
push ebp
mov ebp, esp
.Lt_0667:
cmp dword ptr [ebp+8], 113
jne .Lt_066A
mov eax, dword ptr [ebp+16]
mov dword ptr [_CTX+2588], eax
cmp dword ptr [ebp+20], 0
je .Lt_066C
push dword ptr [ebp+20]
call _HUPDATECURRENTFILENAME
add esp, 4
.Lt_066C:
.Lt_066B:
.Lt_066A:
.Lt_0669:
.Lt_0668:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCOMMENT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_066D:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_0801
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_0801
call _fb_TRIM
add esp, 4
push eax
push -1
push offset _Lt_0801
call _fb_StrAssign
add esp, 20
push -1
push offset _Lt_0801
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jle .Lt_0670
mov eax, dword ptr [_Lt_0801]
add eax, dword ptr [ebp-4]
movzx ebx, byte ptr [eax-1]
cmp ebx, 92
jne .Lt_0672
push 0
push 14
push offset _Lt_0673
push -1
push offset _Lt_0801
call _fb_StrConcatAssign
add esp, 20
.Lt_0672:
.Lt_0671:
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push offset _Lt_0801
push 4
push offset _Lt_0674
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0670:
.Lt_066F:
.Lt_066E:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0801,12

.section .text
.balign 16
__EMITASMLINE:
push ebp
mov ebp, esp
sub esp, 120
push ebx
.Lt_0677:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
.Lt_0679:
cmp dword ptr [ebp-12], 0
je .Lt_067A
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 1
jne .Lt_067C
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-80], eax
cmp dword ptr [ebp-80], 7
jne .Lt_067F
.Lt_0680:
mov dword ptr [ebp-4], -1
jmp .Lt_067D
.Lt_067F:
cmp dword ptr [ebp-80], 1
jne .Lt_0681
.Lt_0682:
inc dword ptr [ebp-8]
.Lt_0681:
.Lt_067D:
.Lt_067C:
.Lt_067B:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-12], ebx
jmp .Lt_0679
.Lt_067A:
push 0
push 8
push offset _Lt_0683
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrInit
add esp, 20
call _SECTIONINSIDEPROC
test eax, eax
je .Lt_0685
push 0
push 14
push offset _Lt_0686
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0685:
.Lt_0684:
cmp dword ptr [ebp-4], 0
je .Lt_0688
push 0
push 6
push offset _Lt_0689
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0688:
.Lt_0687:
push 0
push 3
push offset _Lt_00EC
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
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
.Lt_068A:
cmp dword ptr [ebp-12], 0
je .Lt_068B
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-80], ebx
cmp dword ptr [ebp-80], 0
jne .Lt_068E
.Lt_068F:
push 0
push -1
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_068C
.Lt_068E:
cmp dword ptr [ebp-80], 1
jne .Lt_0691
.Lt_0692:
cmp dword ptr [_ENV+132], 0
jne .Lt_0694
call _SECTIONINSIDEPROC
test eax, eax
je .Lt_0696
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-84], eax
cmp dword ptr [ebp-84], 1
jne .Lt_0699
.Lt_069A:
push 0
push 2
push offset _Lt_069B
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-40]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
inc dword ptr [ebp-40]
cmp dword ptr [ebp-4], 0
je .Lt_069D
push -1
lea eax, [ebp-64]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_069F
push 0
push 3
push offset _Lt_013B
push -1
lea eax, [ebp-64]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_069F:
.Lt_069E:
push 0
push -1
push -1
push 2
push offset _Lt_0130
push -1
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 6
push offset _Lt_06A0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-64]
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_069C
.Lt_069D:
push -1
lea eax, [ebp-52]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_06A5
push 0
push 3
push offset _Lt_013B
push -1
lea eax, [ebp-52]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_06A5:
.Lt_06A4:
push 0
push -1
push -1
push 2
push offset _Lt_0130
push -1
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push 7
push offset _Lt_06A6
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-52]
push eax
call _fb_StrAssign
add esp, 20
.Lt_069C:
jmp .Lt_0697
.Lt_0699:
cmp dword ptr [ebp-84], 7
jne .Lt_06AA
.Lt_06AB:
push 0
push 3
push offset _Lt_06AC
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign
add esp, 20
inc dword ptr [ebp-8]
push -1
lea eax, [ebp-76]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_06AE
push 0
push 3
push offset _Lt_013B
push -1
lea eax, [ebp-76]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_06AE:
.Lt_06AD:
push 0
push -1
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-76]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-76]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0697
.Lt_06AA:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call _HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
.Lt_06B0:
.Lt_0697:
jmp .Lt_0695
.Lt_0696:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call _HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0695:
jmp .Lt_0693
.Lt_0694:
push 0
push -1
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0693:
.Lt_0691:
.Lt_068C:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-12], ebx
jmp .Lt_068A
.Lt_068B:
cmp dword ptr [_ENV+132], 0
jne .Lt_06B5
push -1
lea ebx, [ebp-36]
push ebx
call _fb_StrLen
add esp, 8
inc eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
push dword ptr [ebp-36]
lea ecx, [ebp-24]
push ecx
call _HBUILDSTRLIT
add esp, 16
call _SECTIONINSIDEPROC
test eax, eax
je .Lt_06B7
push 0
push 4
push offset _Lt_06B8
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-52]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_06B8
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-64]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 18
push offset _Lt_06B9
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
call _FBGETCPUFAMILY
mov dword ptr [ebp-80], eax
cmp dword ptr [ebp-80], 0
je .Lt_06BD
.Lt_06BE:
cmp dword ptr [ebp-80], 1
jne .Lt_06BC
.Lt_06BD:
call _FBGETCPUFAMILY
test eax, eax
jne .Lt_06C0
push 0
push 50
push offset _Lt_06C1
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_06BF
.Lt_06C0:
push 0
push 50
push offset _Lt_06C2
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 55
push offset _Lt_06C3
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_06BF:
cmp dword ptr [_ENV+116], 1
jne .Lt_06C5
push 0
push 57
push offset _Lt_06C6
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 65
push offset _Lt_06C7
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
call _FBGETCPUFAMILY
cmp eax, 1
jne .Lt_06C9
push 0
push 71
push offset _Lt_06CA
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_06C9:
.Lt_06C8:
.Lt_06C5:
.Lt_06C4:
jmp .Lt_06BA
.Lt_06BC:
cmp dword ptr [ebp-80], 2
je .Lt_06CC
.Lt_06CD:
cmp dword ptr [ebp-80], 3
jne .Lt_06CB
.Lt_06CC:
push 0
push 43
push offset _Lt_06CE
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 55
push offset _Lt_06C3
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
call _FBGETCPUFAMILY
cmp eax, 3
jne .Lt_06D0
push 0
push 29
push offset _Lt_06D1
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 64
push offset _Lt_06D2
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 8
push offset _Lt_06D3
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_06D0:
.Lt_06CF:
.Lt_06CB:
.Lt_06BA:
cmp dword ptr [ebp-4], 0
je .Lt_06D5
push 0
push 4
push offset _Lt_06B8
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-76]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_06D5:
.Lt_06D4:
.Lt_06B7:
.Lt_06B6:
jmp .Lt_06B4
.Lt_06B5:
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_06B4:
push 0
push 4
push offset _Lt_00D6
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
lea eax, [ebp-24]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-76]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-52]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0678:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIBEGIN:
push ebp
mov ebp, esp
.Lt_06D6:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [_CTX+2652], 0
.Lt_06D7:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIEND:
push ebp
mov ebp, esp
.Lt_06D8:
push dword ptr [_CTX+2640]
push dword ptr [ebp+8]
push 0
call _HEMITVARDECL
add esp, 12
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrAssign
add esp, 20
.Lt_06D9:
mov esp, ebp
pop ebp
ret
.balign 16
_HVARINISEPARATOR:
.Lt_06DA:
cmp dword ptr [_CTX+2652], 0
jle .Lt_06DD
push 0
push 3
push offset _Lt_013B
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_06DD:
.Lt_06DC:
.Lt_06DB:
ret
.balign 16
__EMITVARINII:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_06DE:
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
jne .Lt_0803
cmp dword ptr [ebp+12], 0
jne .Lt_0803
.Lt_0804:
xor eax, eax
.Lt_0803:
and ebx, eax
je .Lt_06E1
mov dword ptr [ebp+12], 1
mov dword ptr [ebp+16], 0
.Lt_06E1:
.Lt_06E0:
push dword ptr [ebp-4]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EXPRNEWIMMI
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .Lt_06E3
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
.Lt_06E3:
.Lt_06E2:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push -1
push 0
push dword ptr [ebp-8]
call _EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign
add esp, 20
call _HVARINISEPARATOR
.Lt_06DF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_06E4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-4], ebx
push dword ptr [ebp-4]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EXPRNEWIMMF
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .Lt_06E7
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
.Lt_06E7:
.Lt_06E6:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push -1
push 0
push dword ptr [ebp-8]
call _EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign
add esp, 20
call _HVARINISEPARATOR
.Lt_06E5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIOFS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_06E8:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EXPRNEWOFFSET
add esp, 12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 262144
test eax, eax
je .Lt_06EB
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
.Lt_06EB:
.Lt_06EA:
push dword ptr [ebp-4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-8]
call _EXPRNEWCAST
add esp, 12
mov dword ptr [ebp-4], eax
push 0
push -1
push 0
push dword ptr [ebp-4]
call _EXPRFLUSH
add esp, 8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign
add esp, 20
call _HVARINISEPARATOR
.Lt_06E9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINISTR:
push ebp
mov ebp, esp
push ebx
.Lt_06EC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .Lt_06EF
jg .Lt_0805
cmp dword ptr [ebp+20], ebx
jbe .Lt_06EF
.Lt_0805:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
mov dword ptr [ebp+24], ebx
.Lt_06EF:
.Lt_06EE:
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 1
adc eax, 0
push eax
push ebx
push dword ptr [ebp+16]
call _HUNESCAPE
add esp, 4
push eax
lea eax, [_CTX+2640]
push eax
call _HBUILDSTRLIT
add esp, 16
call _HVARINISEPARATOR
.Lt_06ED:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIWSTR:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_06F0:
push 0
push 3
push offset _Lt_06F2
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign
add esp, 20
push dword ptr [ebp+16]
call _HUNESCAPEW
add esp, 4
mov dword ptr [ebp+16], eax
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .Lt_06F4
jg .Lt_0806
cmp dword ptr [ebp+20], ebx
jbe .Lt_06F4
.Lt_0806:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
mov dword ptr [ebp+24], ebx
.Lt_06F4:
.Lt_06F3:
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 4294967295
adc eax, 4294967295
mov ecx, ebx
mov dword ptr [ebp-16], ecx
jmp .Lt_06F6
.Lt_06F9:
cmp dword ptr [ebp-12], 0
jle .Lt_06FB
push 0
push 3
push offset _Lt_013B
push -1
lea ecx, [_CTX+2640]
push ecx
call _fb_StrConcatAssign
add esp, 20
.Lt_06FB:
.Lt_06FA:
push 0
push 3
push offset _Lt_06FC
push -1
lea ecx, [_CTX+2640]
push ecx
call _fb_StrConcatAssign
add esp, 20
mov ecx, dword ptr [ebp+16]
add ecx, dword ptr [ebp-12]
movzx ebx, byte ptr [ecx]
mov dword ptr [ebp-4], ebx
push 39
push dword ptr [ebp-4]
call _HCHARNEEDSESCAPING
add esp, 8
test eax, eax
je .Lt_06FE
push 0
push 3
push offset _Lt_0421
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [ebp-8]
sal eax, 1
push eax
push dword ptr [ebp-4]
call _fb_HEXEx_i
add esp, 8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_06FD
.Lt_06FE:
push 0
push -1
push dword ptr [ebp-4]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_06FD:
push 0
push 2
push offset _Lt_0432
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_06F7:
inc dword ptr [ebp-12]
.Lt_06F6:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .Lt_06F9
.Lt_06F8:
push 0
push 3
push offset _Lt_06FF
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign
add esp, 20
call _HVARINISEPARATOR
.Lt_06F1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIPAD:
push ebp
mov ebp, esp
.Lt_0700:
.Lt_0701:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINISCOPEBEGIN:
push ebp
mov ebp, esp
.Lt_0702:
inc dword ptr [_CTX+2652]
push 0
push 3
push offset _Lt_06F2
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0703:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINISCOPEEND:
.Lt_0704:
push 3
push offset _Lt_013B
push -1
push 2
lea eax, [_CTX+2640]
push eax
call _fb_RIGHT
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0707
push 0
push -1
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrLen
add esp, 8
add eax, -2
push eax
lea eax, [_CTX+2640]
push eax
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0707:
.Lt_0706:
push 0
push 3
push offset _Lt_06FF
push -1
lea eax, [_CTX+2640]
push eax
call _fb_StrConcatAssign
add esp, 20
dec dword ptr [_CTX+2652]
call _HVARINISEPARATOR
.Lt_0705:
ret
.balign 16
__EMITFBCTINFBEGIN:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0708:
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 19
push offset _Lt_070B
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 44
push offset _Lt_070F
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 16
push offset _Lt_0710
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0709:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITFBCTINFSTRING:
push ebp
mov ebp, esp
sub esp, 24
.Lt_0711:
push 0
push -1
push -1
push 3
push offset _Lt_0713
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_CTX+2656]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0712:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITFBCTINFEND:
.Lt_0716:
push 3
push offset _Lt_0713
push -1
push 2
lea eax, [_CTX+2656]
push eax
call _fb_RIGHT
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0719
push 0
push -1
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrLen
add esp, 8
add eax, -2
push eax
lea eax, [_CTX+2656]
push eax
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0719:
.Lt_0718:
push 0
push 3
push offset _Lt_071A
push -1
lea eax, [_CTX+2656]
push eax
call _fb_StrConcatAssign
add esp, 20
push -1
lea eax, [_CTX+2656]
push eax
call _HWRITELINE
add esp, 8
.Lt_0717:
ret
.balign 16
__EMITPROCBEGIN:
push ebp
mov ebp, esp
sub esp, 132
push ebx
.Lt_071B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+24]
call _HUPDATECURRENTFILENAME
add esp, 4
call _IRHLEMITPROCBEGIN
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign
add esp, 20
lea ebx, [ebp-24]
push ebx
call _HWRITELINE
add esp, 8
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete
add esp, 4
cmp dword ptr [_ENV+148], 0
je .Lt_071F
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
push dword ptr [eax+16]
push dword ptr [ebp+8]
push 113
call __EMITDBG
add esp, 16
.Lt_071F:
.Lt_071E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
je .Lt_0721
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 20
push offset _Lt_0722
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push -1
push 5
push offset _Lt_0725
push -1
push -1
lea eax, [ebp-12]
push eax
push 18
push offset _Lt_0724
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-96]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-96]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
push 0
push -1
push 6
push offset _Lt_072A
push -1
push -1
lea eax, [ebp-12]
push eax
push 11
push offset _Lt_0729
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-132]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-132]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_071C
.Lt_0721:
.Lt_0720:
call _SECTIONBEGIN
push dword ptr [ebp+8]
call _HNEEDALIAS
add esp, 4
test eax, eax
je .Lt_072F
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 2
push offset _Lt_017C
push -1
push 1
push dword ptr [ebp+8]
call _HEMITPROCHEADER
add esp, 8
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
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
.Lt_072F:
.Lt_072E:
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HEMITPROCHEADER
add esp, 8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
push 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push 2
push offset _Lt_0266
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-48]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
call _SECTIONINDENT
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_071C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITPROCEND:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.Lt_0734:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
je .Lt_0737
cmp dword ptr [_ENV+108], 2
jne .Lt_0739
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HGETMANGLEDNAMEFORASM
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push -1
push 5
push offset _Lt_0725
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 5
push offset _Lt_073B
push -1
push -1
lea eax, [ebp-12]
push eax
push 17
push offset _Lt_073A
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0739:
.Lt_0738:
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0735
.Lt_0737:
.Lt_0736:
call _SECTIONUNINDENT
push 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 2
push offset _Lt_0283
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
call _SECTIONEND
.Lt_0742:
lea eax, [_CTX+2724]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0746
jmp .Lt_0743
.Lt_0746:
.Lt_0745:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call _EXPRFREETREE
add esp, 4
push dword ptr [ebp-16]
lea eax, [_CTX+2724]
push eax
call _LISTDELNODE
add esp, 8
.Lt_0744:
jmp .Lt_0742
.Lt_0743:
call _IRHLEMITPROCEND
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0735:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSCOPEBEGIN:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0747:
call _SECTIONBEGIN
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset _Lt_0266
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
call _SECTIONINDENT
.Lt_0748:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSCOPEEND:
push ebp
mov ebp, esp
sub esp, 12
.Lt_074A:
call _SECTIONUNINDENT
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset _Lt_0283
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _HWRITELINE
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
call _SECTIONEND
.Lt_074B:
mov esp, ebp
pop ebp
ret
.balign 16
__GLOBAL__I:
.Lt_074E:
push offset _CTX
call __ZN8IRHLCCTXC1Ev
add esp, 4
.Lt_074F:
ret
.balign 16
__GLOBAL__D:
.Lt_0751:
push offset _CTX
call __ZN8IRHLCCTXD1Ev
add esp, 4
.Lt_0752:
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4

.globl _IRHLC_VTBL
_IRHLC_VTBL:
.int __INIT
.int __END
.int __EMITBEGIN
.int __EMITEND
.int __GETOPTIONVALUE
.int __SUPPORTSOP
.int __PROCBEGIN
.int __PROCEND
.long 0
.long 0
.long 0
.int __SCOPEBEGIN
.int __SCOPEEND
.int __PROCALLOCSTATICVARS
.int __EMITCONVERT
.int __EMITLABEL
.int __EMITLABEL
.long 0
.int __EMITPROCBEGIN
.int __EMITPROCEND
.int _IRHLEMITPUSHARG
.int __EMITASMLINE
.int __EMITCOMMENT
.int __EMITBOP
.int __EMITUOP
.int __EMITSTORE
.int __EMITSPILLREGS
.int __EMITLOAD
.int __EMITLOADRES
.long 0
.int __EMITADDR
.int __EMITCALL
.int __EMITCALLPTR
.long 0
.int __EMITJUMPPTR
.int __EMITBRANCH
.int __EMITJMPTB
.int __EMITMEM
.int __EMITMACRO
.int __EMITSCOPEBEGIN
.int __EMITSCOPEEND
.int __EMITDECL
.int __EMITDBG
.int __EMITVARINIBEGIN
.int __EMITVARINIEND
.int __EMITVARINII
.int __EMITVARINIF
.int __EMITVARINIOFS
.int __EMITVARINISTR
.int __EMITVARINIWSTR
.int __EMITVARINIPAD
.int __EMITVARINISCOPEBEGIN
.int __EMITVARINISCOPEEND
.int __EMITFBCTINFBEGIN
.int __EMITFBCTINFSTRING
.int __EMITFBCTINFEND
.int _IRHLALLOCVREG
.int _IRHLALLOCVRIMM
.int _IRHLALLOCVRIMMF
.int _IRHLALLOCVRVAR
.int _IRHLALLOCVRIDX
.int _IRHLALLOCVRPTR
.int _IRHLALLOCVROFS
.int __SETVREGDATATYPE
.long 0
.long 0
.long 0
.long 0

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
.balign 4
	.lcomm	_CTX,2760

.section .data
.balign 4
_DTYPENAME:
.int _Lt_0089
.int _Lt_008A
.int _Lt_008B
.int _Lt_008C
.long 0
.int _Lt_008D
.int _Lt_008E
.long 0
.long 0
.long 0
.long 0
.int _Lt_008F
.int _Lt_0090
.int _Lt_0091
.int _Lt_0092
.int _Lt_0093
.int _Lt_0094
.int _Lt_0095
.long 0
.int _Lt_0096
.long 0
.long 0
.long 0
.int _Lt_0089
.long 0
.skip 4,0
.balign 4
_Lt_0089:	.ascii	"void\0"
.balign 4
_Lt_008A:	.ascii	"boolean\0"
.balign 4
_Lt_008B:	.ascii	"int8\0"
.balign 4
_Lt_008C:	.ascii	"uint8\0"
.balign 4
_Lt_008D:	.ascii	"int16\0"
.balign 4
_Lt_008E:	.ascii	"uint16\0"
.balign 4
_Lt_008F:	.ascii	"int32\0"
.balign 4
_Lt_0090:	.ascii	"uint32\0"
.balign 4
_Lt_0091:	.ascii	"int64\0"
.balign 4
_Lt_0092:	.ascii	"uint64\0"
.balign 4
_Lt_0093:	.ascii	"float\0"
.balign 4
_Lt_0094:	.ascii	"double\0"
.balign 4
_Lt_0095:	.ascii	"FBSTRING\0"
.balign 4
_Lt_0096:	.ascii	"__builtin_va_list\0"
.balign 4
_Lt_00A9:	.ascii	"\t\0"
.balign 4
_Lt_00AF:	.ascii	"\r\n\0"
.balign 4
_Lt_00C8:	.ascii	"#line \0"
.balign 4
_Lt_00C9:	.ascii	" \"\0"
.balign 4
_Lt_00CA:	.ascii	"\"\0"
.balign 4
_Lt_00CD:	.ascii	"\\\0"
.balign 4
_Lt_00CE:	.ascii	"\\\\\0"
.balign 4
_Lt_00D3:	.ascii	"#define __FB_STATIC_ASSERT( expr ) extern int __$fb_structsizecheck[(expr) ? 1 : -1]\0"
.balign 4
_Lt_00D5:	.ascii	"__FB_STATIC_ASSERT( \0"
.balign 4
_Lt_00D6:	.ascii	" );\0"
.balign 4
_Lt_00E0:	.ascii	" \0"
.balign 4
_Lt_00E2:	.ascii	"__attribute__(( \0"
.balign 4
_Lt_00E6:	.ascii	"constructor\0"
.balign 4
_Lt_00E8:	.ascii	"destructor\0"
.balign 4
_Lt_00EC:	.ascii	"( \0"
.balign 4
_Lt_00ED:	.ascii	" )\0"
.balign 4
_Lt_00F1:	.ascii	" ))\0"
.balign 4
_Lt_00FA:	.ascii	"_\0"
.balign 4
_Lt_0100:	.ascii	"@\0"
.balign 4
_Lt_011B:	.ascii	"static \0"
.balign 4
_Lt_012A:	.ascii	" __stdcall\0"
.balign 4
_Lt_012C:	.ascii	" __attribute__((stdcall))\0"
.balign 4
_Lt_012F:	.ascii	"(*\0"
.balign 4
_Lt_0130:	.ascii	")\0"
.balign 4
_Lt_013B:	.ascii	", \0"
.balign 4
_Lt_0144:	.ascii	"...\0"
.balign 4
_Lt_0147:	.ascii	"char**\0"
.balign 4
_Lt_0154:	.ascii	" asm(\"\0"
.balign 4
_Lt_0155:	.ascii	"\")\0"
.balign 4
_Lt_015C:	.ascii	"union \0"
.balign 4
_Lt_015D:	.ascii	"struct \0"
.balign 4
_Lt_0166:	.ascii	"$\0"
.balign 4
_Lt_017B:	.ascii	"typedef \0"
.balign 4
_Lt_017C:	.ascii	";\0"
.balign 4
_Lt_019C:	.ascii	"[\0"
.balign 4
_Lt_019D:	.ascii	"]\0"
.balign 4
_Lt_01B0:	.ascii	"extern \0"
.balign 4
_Lt_01B7:	.ascii	" __attribute__((common))\0"
.balign 4
_Lt_01BA:	.ascii	" = \0"
.balign 4
_Lt_01F6:	.ascii	"union {\0"
.balign 4
_Lt_01F8:	.ascii	"struct {\0"
.balign 4
_Lt_01FE:	.ascii	"};\0"
.balign 4
_Lt_0216:	.ascii	" __attribute__((packed, aligned(\0"
.balign 4
_Lt_0217:	.ascii	")))\0"
.balign 4
_Lt_0228:	.ascii	" __attribute__((aligned(\0"
.balign 4
_Lt_0239:	.ascii	"__attribute__((gcc_struct)) \0"
.balign 4
_Lt_023A:	.ascii	" {\0"
.balign 4
_Lt_023D:	.ascii	"uint8 __fb_struct_body[\0"
.balign 4
_Lt_023E:	.ascii	"];\0"
.balign 4
_Lt_0243:	.ascii	"sizeof( \0"
.balign 4
_Lt_0244:	.ascii	" ) == \0"
.balign 4
_Lt_0254:	.ascii	"l\0"
.balign 4
_Lt_0257:	.ascii	"q\0"
.balign 4
_Lt_025A:	.ascii	"s\0"
.balign 4
_Lt_025C:	.ascii	"static inline \0"
.balign 4
_Lt_025D:	.ascii	" fb_\0"
.balign 4
_Lt_025E:	.ascii	" value )\0"
.balign 4
_Lt_0266:	.ascii	"{\0"
.balign 4
_Lt_0268:	.ascii	"volatile \0"
.balign 4
_Lt_0269:	.ascii	" result;\0"
.balign 4
_Lt_026D:	.ascii	"__asm__(\0"
.balign 4
_Lt_026F:	.ascii	"\"fld\0"
.balign 4
_Lt_0270:	.ascii	" %1;\"\0"
.balign 4
_Lt_0274:	.ascii	"\"fistp\0"
.balign 4
_Lt_0275:	.ascii	" %0;\"\0"
.balign 4
_Lt_0279:	.ascii	":\"=m\" (result)\0"
.balign 4
_Lt_027B:	.ascii	":\"m\" (value)\0"
.balign 4
_Lt_027D:	.ascii	":\"st\"\0"
.balign 4
_Lt_027F:	.ascii	");\0"
.balign 4
_Lt_0281:	.ascii	"return result;\0"
.balign 4
_Lt_0283:	.ascii	"}\0"
.balign 4
_Lt_0289:	.ascii	"nearbyintf\0"
.balign 4
_Lt_028A:	.ascii	"nearbyint\0"
.balign 4
_Lt_028B:	.ascii	"#define fb_\0"
.balign 4
_Lt_028C:	.ascii	"( value ) ((\0"
.balign 4
_Lt_028D:	.ascii	")__builtin_\0"
.balign 4
_Lt_028E:	.ascii	"( value ))\0"
.balign 4
_Lt_02A2:	.ascii	"\t\"\0"
.balign 4
_Lt_02A3:	.ascii	"\\t.ascii \0"
.balign 4
_Lt_02A4:	.ascii	"\\\" -export:\\\\\\\"\0"
.balign 4
_Lt_02A5:	.ascii	"\\\\\\\"\\\"\0"
.balign 4
_Lt_02A6:	.ascii	"\\n\0"
.balign 4
_Lt_02A7:	.ascii	"\"\n\0"
.balign 4
_Lt_02B0:	.ascii	"typedef   signed char       int8;\0"
.balign 4
_Lt_02B2:	.ascii	"typedef unsigned char      uint8;\0"
.balign 4
_Lt_02B4:	.ascii	"typedef   signed short      int16;\0"
.balign 4
_Lt_02B6:	.ascii	"typedef unsigned short     uint16;\0"
.balign 4
_Lt_02B8:	.ascii	"typedef   signed int        int32;\0"
.balign 4
_Lt_02BA:	.ascii	"typedef unsigned int       uint32;\0"
.balign 4
_Lt_02BC:	.ascii	"typedef   signed long long  int64;\0"
.balign 4
_Lt_02BE:	.ascii	"typedef unsigned long long uint64;\0"
.balign 4
_Lt_02C2:	.ascii	"typedef struct { char *data; int64 len; int64 size; } FBSTRING;\0"
.balign 4
_Lt_02C4:	.ascii	"typedef struct { char *data; int32 len; int32 size; } FBSTRING;\0"
.balign 4
_Lt_02C6:	.ascii	"typedef int8 boolean;\0"
.balign 4
_Lt_02CC:	.ascii	"F2I\0"
.balign 4
_Lt_02D0:	.ascii	"F2L\0"
.balign 4
_Lt_02D4:	.ascii	"F2UL\0"
.balign 4
_Lt_02D8:	.ascii	"D2I\0"
.balign 4
_Lt_02DC:	.ascii	"D2L\0"
.balign 4
_Lt_02E0:	.ascii	"D2UL\0"
.balign 4
_Lt_02E6:	.ascii	"\n__asm__( \n\t\".section .drectve\\n\"\n\0"
.balign 4
_Lt_02F6:	.ascii	"_GETOPTIONVALUE\0"
.balign 4
_Lt_0336:	.ascii	"*\0"
.balign 4
_Lt_03ED:	.ascii	"u\0"
.balign 4
_Lt_03EE:	.ascii	"ll\0"
.balign 4
_Lt_03F5:	.ascii	"ull\0"
.balign 4
_Lt_0400:	.ascii	"(-__builtin_inf())\0"
.balign 4
_Lt_0401:	.ascii	"__builtin_inf()\0"
.balign 4
_Lt_0404:	.ascii	"(-__builtin_inff())\0"
.balign 4
_Lt_0405:	.ascii	"__builtin_inff()\0"
.balign 4
_Lt_040D:	.ascii	"(-__builtin_nan( \"\" ))\0"
.balign 4
_Lt_040E:	.ascii	"__builtin_nan( \"\" )\0"
.balign 4
_Lt_0411:	.ascii	"(-__builtin_nanf( \"\" ))\0"
.balign 4
_Lt_0412:	.ascii	"__builtin_nanf( \"\" )\0"
.balign 4
_Lt_0416:	.ascii	"f\0"
.balign 4
_Lt_0421:	.ascii	"\\x\0"
.balign 4
_Lt_0426:	.ascii	"\" \"\0"
.balign 4
_Lt_0429:	.ascii	"?\0"
.balign 4
_Lt_0432:	.ascii	"'\0"
.balign 4
_Lt_0433:	.ascii	"(\0"
.balign 4
_Lt_0437:	.ascii	"-\0"
.balign 4
_Lt_0446:	.ascii	"L\"\0"
.balign 4
_Lt_0453:	.ascii	"\" L\"\0"
.balign 4
_Lt_046E:	.ascii	" + \0"
.balign 4
_Lt_0470:	.ascii	" - \0"
.balign 4
_Lt_0472:	.ascii	" * \0"
.balign 4
_Lt_0474:	.ascii	" / \0"
.balign 4
_Lt_0477:	.ascii	" % \0"
.balign 4
_Lt_0479:	.ascii	" << \0"
.balign 4
_Lt_047B:	.ascii	" >> \0"
.balign 4
_Lt_047D:	.ascii	" & \0"
.balign 4
_Lt_047F:	.ascii	" | \0"
.balign 4
_Lt_0481:	.ascii	" ^ \0"
.balign 4
_Lt_0483:	.ascii	" == \0"
.balign 4
_Lt_0485:	.ascii	" > \0"
.balign 4
_Lt_0487:	.ascii	" < \0"
.balign 4
_Lt_0489:	.ascii	" != \0"
.balign 4
_Lt_048B:	.ascii	" >= \0"
.balign 4
_Lt_048D:	.ascii	" <= \0"
.balign 4
_Lt_0494:	.ascii	"&\0"
.balign 4
_Lt_049B:	.ascii	"~\0"
.balign 4
_Lt_04A4:	.ascii	"__builtin_fabsf\0"
.balign 4
_Lt_04A6:	.ascii	"__builtin_fabs\0"
.balign 4
_Lt_04A8:	.ascii	"__builtin_llabs\0"
.balign 4
_Lt_04AA:	.ascii	"__builtin_abs\0"
.balign 4
_Lt_04B3:	.ascii	"__builtin_sinf\0"
.balign 4
_Lt_04B5:	.ascii	"__builtin_asinf\0"
.balign 4
_Lt_04B7:	.ascii	"__builtin_cosf\0"
.balign 4
_Lt_04B9:	.ascii	"__builtin_acosf\0"
.balign 4
_Lt_04BB:	.ascii	"__builtin_tanf\0"
.balign 4
_Lt_04BD:	.ascii	"__builtin_atanf\0"
.balign 4
_Lt_04BF:	.ascii	"__builtin_sqrtf\0"
.balign 4
_Lt_04C1:	.ascii	"__builtin_logf\0"
.balign 4
_Lt_04C3:	.ascii	"__builtin_expf\0"
.balign 4
_Lt_04C5:	.ascii	"__builtin_floorf\0"
.balign 4
_Lt_04CC:	.ascii	"__builtin_sin\0"
.balign 4
_Lt_04CE:	.ascii	"__builtin_asin\0"
.balign 4
_Lt_04D0:	.ascii	"__builtin_cos\0"
.balign 4
_Lt_04D2:	.ascii	"__builtin_acos\0"
.balign 4
_Lt_04D4:	.ascii	"__builtin_tan\0"
.balign 4
_Lt_04D6:	.ascii	"__builtin_atan\0"
.balign 4
_Lt_04D8:	.ascii	"__builtin_sqrt\0"
.balign 4
_Lt_04DA:	.ascii	"__builtin_log\0"
.balign 4
_Lt_04DC:	.ascii	"__builtin_exp\0"
.balign 4
_Lt_04DE:	.ascii	"__builtin_floor\0"
.balign 4
_Lt_04F1:	.ascii	"&&\0"
.balign 4
_Lt_0508:	.ascii	"__builtin_va_arg( \0"
.balign 4
_Lt_050C:	.ascii	"__builtin_va_start( \0"
.balign 4
_Lt_050F:	.ascii	"__builtin_va_end( \0"
.balign 4
_Lt_0512:	.ascii	"__builtin_va_copy( \0"
.balign 4
_Lt_0525:	.ascii	"__builtin_atan2f\0"
.balign 4
_Lt_0526:	.ascii	"__builtin_atan2\0"
.balign 4
_Lt_056F:	.ascii	"vr$\0"
.balign 4
_Lt_0579:	.ascii	":;\0"
.balign 4
_Lt_0589:	.ascii	"if( \0"
.balign 4
_Lt_058A:	.ascii	" ) goto \0"
.balign 4
_Lt_05C5:	.ascii	"fb_F2I\0"
.balign 4
_Lt_05C6:	.ascii	"fb_D2I\0"
.balign 4
_Lt_05CB:	.ascii	"fb_F2L\0"
.balign 4
_Lt_05CC:	.ascii	"fb_D2L\0"
.balign 4
_Lt_05D0:	.ascii	"fb_F2UL\0"
.balign 4
_Lt_05D1:	.ascii	"fb_D2UL\0"
.balign 4
_Lt_05DA:	.ascii	"return \0"
.balign 4
_Lt_0604:	.ascii	"goto *\0"
.balign 4
_Lt_060A:	.ascii	"goto \0"
.balign 4
_Lt_0615:	.ascii	"(void)\0"
.balign 4
_Lt_0619:	.ascii	"static const void* \0"
.balign 4
_Lt_061A:	.ascii	"] = {\0"
.balign 4
_Lt_0625:	.ascii	",\0"
.balign 4
_Lt_063D:	.ascii	"__builtin_memset( \0"
.balign 4
_Lt_063E:	.ascii	", 0, \0"
.balign 4
_Lt_0646:	.ascii	"__builtin_memcpy( \0"
.balign 4
_Lt_0673:	.ascii	"not_an_escape\0"
.balign 4
_Lt_0674:	.ascii	"// \0"
.balign 4
_Lt_0683:	.ascii	"__asm__\0"
.balign 4
_Lt_0686:	.ascii	" __volatile__\0"
.balign 4
_Lt_0689:	.ascii	" goto\0"
.balign 4
_Lt_069B:	.ascii	"%\0"
.balign 4
_Lt_06A0:	.ascii	"\"m\" (\0"
.balign 4
_Lt_06A6:	.ascii	"\"+m\" (\0"
.balign 4
_Lt_06AC:	.ascii	"%l\0"
.balign 4
_Lt_06B8:	.ascii	" : \0"
.balign 4
_Lt_06B9:	.ascii	" : \"cc\", \"memory\"\0"
.balign 4
_Lt_06C1:	.ascii	", \"eax\", \"ebx\", \"ecx\", \"edx\", \"esp\", \"edi\", \"esi\"\0"
.balign 4
_Lt_06C2:	.ascii	", \"rax\", \"rbx\", \"rcx\", \"rdx\", \"rsp\", \"rdi\", \"rsi\"\0"
.balign 4
_Lt_06C3:	.ascii	", \"r8\", \"r9\", \"r10\", \"r11\", \"r12\", \"r13\", \"r14\", \"r15\"\0"
.balign 4
_Lt_06C6:	.ascii	", \"mm0\", \"mm1\", \"mm2\", \"mm3\", \"mm4\", \"mm5\", \"mm6\", \"mm7\"\0"
.balign 4
_Lt_06C7:	.ascii	", \"xmm0\", \"xmm1\", \"xmm2\", \"xmm3\", \"xmm4\", \"xmm5\", \"xmm6\", \"xmm7\"\0"
.balign 4
_Lt_06CA:	.ascii	", \"xmm8\", \"xmm9\", \"xmm10\", \"xmm11\", \"xmm12\", \"xmm13\", \"xmm14\", \"xmm15\"\0"
.balign 4
_Lt_06CE:	.ascii	", \"r0\", \"r1\", \"r2\", \"r3\", \"r4\", \"r5\", \"r6\"\0"
.balign 4
_Lt_06D1:	.ascii	", \"r16\", \"r17\", \"r18\", \"r19\"\0"
.balign 4
_Lt_06D2:	.ascii	", \"r20\", \"r21\", \"r22\", \"r23\", \"r24\", \"r25\", \"r26\", \"r27\", \"r28\"\0"
.balign 4
_Lt_06D3:	.ascii	", \"r30\"\0"
.balign 4
_Lt_06F2:	.ascii	"{ \0"
.balign 4
_Lt_06FC:	.ascii	"L'\0"
.balign 4
_Lt_06FF:	.ascii	" }\0"
.balign 4
_Lt_070B:	.ascii	"static const char \0"
.balign 4
_Lt_070F:	.ascii	"__attribute__((used, section(\".fbctinf\"))) \0"
.balign 4
_Lt_0710:	.ascii	"__fbctinf[] = \"\0"
.balign 4
_Lt_0713:	.ascii	"\\0\0"
.balign 4
_Lt_071A:	.ascii	"\";\0"
.balign 4
_Lt_0722:	.ascii	"__asm__( \".text\" );\0"
.balign 4
_Lt_0724:	.ascii	"__asm__( \".globl \0"
.balign 4
_Lt_0725:	.ascii	"\" );\0"
.balign 4
_Lt_0729:	.ascii	"__asm__( \"\0"
.balign 4
_Lt_072A:	.ascii	":\" );\0"
.balign 4
_Lt_073A:	.ascii	"__asm__( \".size \0"
.balign 4
_Lt_073B:	.ascii	", .-\0"
.balign 8
_Lt_07E4:	.quad	0x0000000000000000

.section .ctors
.int _fb_ctor__irzhlc
.int __GLOBAL__I

.section .dtors
.int __GLOBAL__D
