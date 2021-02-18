	.intel_syntax noprefix

.section .text
.balign 16
_fb_ctor__irzllvm:
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
__ZN13IRLLVMCONTEXTC1Ev:
push ebp
mov ebp, esp
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
.Lt_007D:
.Lt_007E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN13IRLLVMCONTEXTaSERKS_:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_007F:
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
call _fb_StrAssign@20
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
.Lt_0082:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov al, byte ptr [ebx]
mov byte ptr [ecx], al
inc dword ptr [ebp-8]
inc dword ptr [ebp-12]
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 128
jne .Lt_0082
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
.Lt_0080:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN13IRLLVMCONTEXTD1Ev:
push ebp
mov ebp, esp
push ebx
.Lt_0087:
.Lt_0088:
mov eax, dword ptr [ebp+8]
add eax, 228
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
add ebx, 216
lea eax, [ebx]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
add eax, 204
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
add ebx, 184
lea eax, [ebx]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
add eax, 164
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
mov ebx, dword ptr [ebp+8]
add ebx, 152
lea eax, [ebx]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp+8]
add eax, 8
lea ebx, [eax]
push ebx
call _fb_StrDelete@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__INIT@0:
.Lt_0091:
call _IRHLINIT@0
or dword ptr [_IR+276], 131074
call _FBIS64BIT@0
test eax, eax
je .Lt_0094
mov eax, dword ptr [_DTYPENAME+52]
mov dword ptr [_DTYPENAME+32], eax
mov eax, dword ptr [_DTYPENAME+56]
mov dword ptr [_DTYPENAME+36], eax
jmp .Lt_0093
.Lt_0094:
mov eax, dword ptr [_DTYPENAME+44]
mov dword ptr [_DTYPENAME+32], eax
mov eax, dword ptr [_DTYPENAME+48]
mov dword ptr [_DTYPENAME+36], eax
.Lt_0093:
.Lt_0092:
ret
.balign 16
__END@0:
.Lt_0095:
call _IRHLEND@0
.Lt_0096:
ret
.balign 16
_HWRITELINE@4:
push ebp
mov ebp, esp
sub esp, 32
.Lt_0097:
cmp dword ptr [_CTX], 0
jle .Lt_0099
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .Lt_0529
.Lt_0099:
mov dword ptr [ebp-4], 0
.Lt_0529:
cmp dword ptr [ebp-4], 0
je .Lt_009C
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
push 1
push offset _Lt_009D
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [_CTX]
call _fb_StrFill2@8
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_009C:
.Lt_009B:
push 0
push -1
push 3
push offset _Lt_009F
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
mov eax, dword ptr [_CTX+200]
mov dword ptr [ebp-20], eax
jmp .Lt_00A2
.Lt_00A4:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
lea eax, [_CTX+204]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+204]
push eax
call _fb_StrAssign@20
jmp .Lt_00A1
.Lt_00A6:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
lea eax, [_CTX+216]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+216]
push eax
call _fb_StrAssign@20
jmp .Lt_00A1
.Lt_00A8:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
lea eax, [_CTX+228]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+228]
push eax
call _fb_StrAssign@20
jmp .Lt_00A1
.Lt_00A2:
cmp dword ptr [ebp-20], 2
ja .Lt_00A1
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_00AA+eax*4]
_.LT_00AA:
.int .Lt_00A4
.int .Lt_00A6
.int .Lt_00A8
.Lt_00A1:
.Lt_0098:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HINTERNALCOMMAND@4:
push ebp
mov ebp, esp
sub esp, 24
.Lt_00AB:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
push 3
push offset _Lt_00AD
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HWRITELINE@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_00AC:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HASTCOMMAND@4:
push ebp
mov ebp, esp
sub esp, 12
.Lt_00B0:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+8]
call _HINTERNALCOMMAND@4
.Lt_00B1:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HWRITELABEL@4:
push ebp
mov ebp, esp
sub esp, 24
.Lt_00B3:
dec dword ptr [_CTX]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 2
push offset _Lt_00B5
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HWRITELINE@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
inc dword ptr [_CTX]
.Lt_00B4:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HSYMNAME@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00B8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_00BB
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_00BA
.Lt_00BB:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_00BA:
.Lt_00B9:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_VREGPRETTY@4:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00BC:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 0
jne .Lt_00C0
.Lt_00C1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_00C2
mov dword ptr [ebp-32], 24
jmp .Lt_052B
.Lt_00C2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_052B:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 1
jne .Lt_00C5
push 0
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
call _fb_DoubleToStr@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .Lt_00C4
.Lt_00C5:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_00C4:
jmp .Lt_00BE
.Lt_00C0:
cmp dword ptr [ebp-28], 4
jne .Lt_00C6
.Lt_00C7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .Lt_00C9
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _HSYMNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .Lt_00C8
.Lt_00C9:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _fb_IntToStr@4
push eax
push 3
push offset _Lt_00CA
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_00C8:
jmp .Lt_00BE
.Lt_00C6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .Lt_00CE
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _HSYMNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_00CE:
.Lt_00CD:
.Lt_00CC:
.Lt_00BE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
je .Lt_00D0
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_00D2
push 0
push 2
push offset _Lt_00D3
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.Lt_00D2:
.Lt_00D1:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
call _VREGPRETTY@4
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_00D0:
.Lt_00CF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+44], 0
jne .Lt_052C
cmp dword ptr [eax+40], 0
je .Lt_00D6
.Lt_052C:
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _fb_LongintToStr@8
push eax
push 2
push offset _Lt_00D3
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_00D6:
.Lt_00D5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+48], 0
je .Lt_00DA
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+48]
call _fb_IntToStr@4
push eax
push 2
push offset _Lt_00DB
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_00DA:
.Lt_00D9:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_00BD:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITPARAMNAME@4:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00DE:
push 0
push -1
push 2
push offset _Lt_00E0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_00DF:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITPROCCALLCONV@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00E2:
call _FBGETCPUFAMILY@0
test eax, eax
je .Lt_00E5
jmp .Lt_00E3
.Lt_00E5:
.Lt_00E4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-16], ebx
jmp .Lt_00E7
.Lt_00E9:
push 0
push 15
push offset _Lt_00EA
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
jmp .Lt_00E6
.Lt_00E7:
mov ebx, dword ptr [ebp-16]
add ebx, 4294967295
cmp ebx, 3
ja .Lt_00E6
mov ebx, dword ptr [ebp-16]
jmp dword ptr [_.LT_00EB+ebx*4-4]
_.LT_00EB:
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00E6
.int .Lt_00E9
.Lt_00E6:
.Lt_00E3:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITPROCHEADER@12:
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00EC:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push dword ptr [ebp+8]
call _HEMITPROCCALLCONV@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
and ebx, 511
push ebx
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00EF
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp+16], 0
jne .Lt_00F1
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_00F1:
.Lt_00F0:
push 0
push 3
push offset _Lt_00F3
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-48], 0
push dword ptr [ebp+8]
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
je .Lt_00F5
cmp dword ptr [ebp+12], 0
je .Lt_00F7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-48], ebx
push 0
push -1
push -1
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .Lt_00F6
.Lt_00F7:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-48], eax
push 0
push -1
push -1
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00EF
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-48]
call _HEMITPARAMNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.Lt_00F6:
mov eax, dword ptr [ebp+8]
movsx ecx, word ptr [eax+68]
test ecx, ecx
jle .Lt_00FB
push 0
push 3
push offset _Lt_00FC
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign@20
.Lt_00FB:
.Lt_00FA:
.Lt_00F5:
.Lt_00F4:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+84], 4
jne .Lt_00FD
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-52], eax
jmp .Lt_052D
.Lt_00FD:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebp-52], ecx
.Lt_052D:
mov ecx, dword ptr [ebp-52]
mov dword ptr [ebp-56], ecx
.Lt_00FF:
cmp dword ptr [ebp-56], 0
je .Lt_0100
mov ecx, dword ptr [ebp-56]
cmp dword ptr [ecx+56], 4
jne .Lt_0102
push 0
push 4
push offset _Lt_0103
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign@20
jmp .Lt_0101
.Lt_0102:
lea ecx, [ebp-32]
push ecx
lea ecx, [ebp-28]
push ecx
push dword ptr [ebp-56]
call __Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_@12
push 0
push -1
push dword ptr [ebp-32]
push dword ptr [ebp-28]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp+12], 0
jne .Lt_0105
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-56]
push dword ptr [eax+60]
call _HEMITPARAMNAME@4
push eax
push 2
push offset _Lt_00EF
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_0105:
.Lt_0104:
.Lt_0101:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 4
jne .Lt_0108
mov eax, dword ptr [ebp-56]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-60], ecx
jmp .Lt_052E
.Lt_0108:
mov ecx, dword ptr [ebp-56]
mov eax, dword ptr [ecx+176]
mov dword ptr [ebp-60], eax
.Lt_052E:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
je .Lt_010B
push 0
push 3
push offset _Lt_00FC
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.Lt_010B:
.Lt_010A:
jmp .Lt_00FF
.Lt_0100:
push 0
push 3
push offset _Lt_010C
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp+16], 0
jne .Lt_010E
push 0
push 10
push offset _Lt_010F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
and ecx, 128
je .Lt_0111
push 0
push 7
push offset _Lt_0112
push -1
lea ecx, [ebp-24]
push ecx
call _fb_StrConcatAssign@20
.Lt_0111:
.Lt_0110:
.Lt_010E:
.Lt_010D:
push 0
push -1
lea ecx, [ebp-24]
push ecx
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrAssign@20
lea ecx, [ebp-24]
push ecx
call _fb_StrDelete@4
.Lt_00ED:
lea ecx, [ebp-12]
push ecx
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HGETUDTNAME@4:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0113:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
push 0
push 2
push offset _Lt_0115
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit@20
.Lt_0116:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp-16], eax
je .Lt_0117
push 0
push -1
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_0007
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
jmp .Lt_0116
.Lt_0117:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_011A
push 0
push -1
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
jmp .Lt_0119
.Lt_011A:
push 0
push -1
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
.Lt_0119:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.Lt_0114:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITUDT@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.Lt_011D:
cmp dword ptr [ebp+8], 0
jne .Lt_0120
jmp .Lt_011E
.Lt_0120:
.Lt_011F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
je .Lt_0122
jmp .Lt_011E
.Lt_0122:
.Lt_0121:
mov ebx, dword ptr [_CTX+200]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 128
test eax, eax
jne .Lt_0124
mov dword ptr [_CTX+200], 0
.Lt_0124:
.Lt_0123:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_0126
.Lt_0128:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 67108864
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push -1
push 0
push 10
call _HEMITTYPE@8
push eax
push -1
push 9
push offset _Lt_0129
push -1
push dword ptr [ebp+8]
call _HGETUDTNAME@4
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
lea eax, [ebp-44]
push eax
call _HWRITELINE@4
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
jmp .Lt_0125
.Lt_012D:
push dword ptr [ebp+8]
call _HEMITSTRUCT@4
jmp .Lt_0125
.Lt_0126:
mov eax, dword ptr [ebp-8]
add eax, 4294967287
cmp eax, 1
ja .Lt_0125
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_012E+eax*4-36]
_.LT_012E:
.int .Lt_0128
.int .Lt_012D
.Lt_0125:
mov eax, dword ptr [ebp-4]
mov dword ptr [_CTX+200], eax
.Lt_011E:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HBUILDSTRLIT@16:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_012F:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jle .Lt_0132
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
.Lt_0132:
.Lt_0131:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-12], eax
jmp .Lt_0134
.Lt_0137:
mov eax, dword ptr [ebp+16]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-4], ebx
push 34
push dword ptr [ebp-4]
call _HCHARNEEDSESCAPING@8
test eax, eax
je .Lt_013A
push 0
push -1
push -1
push -1
push 2
push dword ptr [ebp-4]
call _fb_HEXEx_i@8
push eax
push 2
push offset _Lt_013B
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
jmp .Lt_0139
.Lt_013A:
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
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_0139:
.Lt_0135:
inc dword ptr [ebp-8]
.Lt_0134:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .Lt_0137
.Lt_0136:
.Lt_013F:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jge .Lt_0140
push 0
push -1
push 4
push offset _Lt_0141
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
inc dword ptr [ebp+20]
jmp .Lt_013F
.Lt_0140:
.Lt_0130:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HBUILDWSTRLIT@16:
push ebp
mov ebp, esp
sub esp, 64
push ebx
.Lt_0143:
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jle .Lt_0146
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+20], eax
.Lt_0146:
.Lt_0145:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+20]
dec eax
mov dword ptr [ebp-16], eax
jmp .Lt_0148
.Lt_014B:
mov eax, dword ptr [ebp-12]
sal eax, 1
mov ebx, dword ptr [ebp+16]
add ebx, eax
movzx eax, word ptr [ebx]
mov dword ptr [ebp-4], eax
push 34
push dword ptr [ebp-4]
call _HCHARNEEDSESCAPING@8
test eax, eax
je .Lt_014D
cmp dword ptr [ebp-8], 1
jb .Lt_014F
push 0
push -1
push -1
push -1
push 2
mov eax, dword ptr [ebp-4]
and eax, 255
push eax
call _fb_HEXEx_i@8
push eax
push 2
push offset _Lt_013B
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_014F:
.Lt_014E:
cmp dword ptr [ebp-8], 2
jb .Lt_0153
push 0
push -1
push -1
push -1
push 2
mov eax, dword ptr [ebp-4]
shr eax, 8
and eax, 255
push eax
call _fb_HEXEx_i@8
push eax
push 2
push offset _Lt_013B
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_0153:
.Lt_0152:
cmp dword ptr [ebp-8], 4
jb .Lt_0157
push 0
push -1
push -1
push -1
push 2
mov eax, dword ptr [ebp-4]
shr eax, 16
and eax, 255
push eax
call _fb_HEXEx_i@8
push eax
push 2
push offset _Lt_013B
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
push 0
push -1
push -1
push -1
push 2
mov eax, dword ptr [ebp-4]
shr eax, 24
and eax, 255
push eax
call _fb_HEXEx_i@8
push eax
push 2
push offset _Lt_013B
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_0157:
.Lt_0156:
jmp .Lt_014C
.Lt_014D:
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
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
mov dword ptr [ebp-32], 2
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-36], eax
jmp .Lt_015E
.Lt_0161:
push 0
push -1
push 4
push offset _Lt_0141
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_015F:
inc dword ptr [ebp-32]
.Lt_015E:
mov eax, dword ptr [ebp-36]
cmp dword ptr [ebp-32], eax
jle .Lt_0161
.Lt_0160:
.Lt_014C:
.Lt_0149:
inc dword ptr [ebp-12]
.Lt_0148:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .Lt_014B
.Lt_014A:
.Lt_0163:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
jge .Lt_0164
mov dword ptr [ebp-12], 1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-16], eax
jmp .Lt_0166
.Lt_0169:
push 0
push -1
push 4
push offset _Lt_0141
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_0167:
inc dword ptr [ebp-12]
.Lt_0166:
mov eax, dword ptr [ebp-16]
cmp dword ptr [ebp-12], eax
jle .Lt_0169
.Lt_0168:
inc dword ptr [ebp+20]
jmp .Lt_0163
.Lt_0164:
.Lt_0144:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HEMITSTRLITTYPE@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_016B:
push 0
push 2
push offset _Lt_016D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 7
push offset _Lt_016E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_016C:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITSYMTYPE@4:
push ebp
mov ebp, esp
sub esp, 92
push ebx
push esi
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_016F:
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
je .Lt_0172
push 0
push -1
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .Lt_0171
.Lt_0172:
cmp dword ptr [ebp-28], 18
je .Lt_0175
.Lt_0176:
cmp dword ptr [ebp-28], 4
je .Lt_0175
.Lt_0177:
cmp dword ptr [ebp-28], 7
jne .Lt_0174
.Lt_0175:
push 0
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
push ebx
call _HEMITSTRLITTYPE@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .Lt_0173
.Lt_0174:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-28]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_0178:
.Lt_0173:
.Lt_0171:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .Lt_017A
jmp .Lt_0179
.Lt_017A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
je .Lt_017E
.Lt_017F:
cmp dword ptr [ebp-32], 12
jne .Lt_017D
.Lt_017E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
dec ebx
mov dword ptr [ebp-36], ebx
jmp .Lt_0180
.Lt_0183:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-36]
sal eax, 4
mov ecx, dword ptr [ebx+68]
add ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-36]
sal ebx, 4
mov esi, dword ptr [eax+68]
add esi, ebx
mov eax, dword ptr [ecx+8]
mov ebx, dword ptr [ecx+12]
sub eax, dword ptr [esi]
sbb ebx, dword ptr [esi+4]
add eax, 1
adc ebx, 0
mov dword ptr [ebp-44], eax
mov dword ptr [ebp-40], ebx
push 0
push -1
push -1
push 2
push offset _Lt_0185
push -1
push -1
lea eax, [ebp-24]
push eax
push 4
push offset _Lt_0184
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
push -1
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call _fb_LongintToStr@8
push eax
push 2
push offset _Lt_016D
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_0181:
dec dword ptr [ebp-36]
.Lt_0180:
cmp dword ptr [ebp-36], 0
jge .Lt_0183
.Lt_0182:
.Lt_017D:
.Lt_017B:
.Lt_0179:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0170:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITVARIABLE@4:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_018A:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .Lt_018D
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .Lt_018F
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_018B
.Lt_018F:
.Lt_018E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 4
je .Lt_0193
.Lt_0194:
cmp dword ptr [ebp-24], 7
jne .Lt_0192
.Lt_0193:
push 0
push -1
push 4
push offset _Lt_0195
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 18
push offset _Lt_0197
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _HEMITSYMTYPE@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_0198
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
jne .Lt_019A
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov ebx, eax
sar ebx, 31
push ebx
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call ___divdi3
add esp, 16
mov ebx, eax
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _HUNESCAPEW@4
push eax
push dword ptr [ebp-20]
lea eax, [ebp-12]
push eax
call _HBUILDWSTRLIT@16
jmp .Lt_0199
.Lt_019A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+56]
call _HUNESCAPE@4
push eax
push dword ptr [ebp-20]
lea eax, [ebp-12]
push eax
call _HBUILDSTRLIT@16
.Lt_0199:
push 0
push 2
push offset _Lt_0138
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
.Lt_0192:
.Lt_019B:
.Lt_0190:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_018B
.Lt_018D:
.Lt_018C:
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
je .Lt_019D
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+4]
and ebx, 128
test ebx, ebx
jne .Lt_019F
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx+12]
and edx, 2
test edx, edx
jne .Lt_01A1
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+4]
and ebx, 32
test ebx, ebx
jne .Lt_01A3
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .Lt_018B
.Lt_01A3:
.Lt_01A2:
.Lt_01A1:
.Lt_01A0:
.Lt_019F:
.Lt_019E:
push dword ptr [ebp+8]
call _IRHLFLUSHSTATICINITIALIZER@4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .Lt_018B
.Lt_019D:
.Lt_019C:
mov ebx, dword ptr [ebp+8]
mov edx, dword ptr [ebx+4]
and edx, 16388
test edx, edx
je .Lt_01A5
lea edx, [ebp-12]
push edx
call _fb_StrDelete@4
jmp .Lt_018B
.Lt_01A5:
.Lt_01A4:
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [edx+4]
and ebx, 59
mov dword ptr [ebp-16], ebx
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_0195
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp-16], 0
je .Lt_01A7
push 0
push 7
push offset _Lt_01A8
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_01A6
.Lt_01A7:
push 0
push 7
push offset _Lt_01A9
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_01A6:
push 0
push 2
push offset _Lt_00EF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _HEMITSYMTYPE@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp-16], 0
je .Lt_01AB
push 0
push 17
push offset _Lt_01AC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_01AB:
.Lt_01AA:
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_018B:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMAYBEEMITGLOBALVAR@4:
push ebp
mov ebp, esp
.Lt_01AD:
push dword ptr [ebp+8]
call _SYMBISDATADESC@4
test eax, eax
jne .Lt_01B0
push dword ptr [ebp+8]
call _HEMITVARIABLE@4
.Lt_01B0:
.Lt_01AF:
.Lt_01AE:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMAYBEEMITPROCPROTO@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_01B1:
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
je .Lt_01B4
jmp .Lt_01B2
.Lt_01B4:
.Lt_01B3:
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
test eax, eax
jne .Lt_01B6
jmp .Lt_01B2
.Lt_01B6:
.Lt_01B5:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+12]
and ecx, 128
test ecx, ecx
je .Lt_01B8
jmp .Lt_01B2
.Lt_01B8:
.Lt_01B7:
mov ecx, dword ptr [_CTX+200]
mov dword ptr [ebp-4], ecx
mov dword ptr [_CTX+200], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push 0
push -1
push dword ptr [ebp+8]
call _HEMITPROCHEADER@12
push eax
push 9
push offset _Lt_01B9
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HWRITELINE@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [ebp-4]
mov dword ptr [_CTX+200], eax
.Lt_01B2:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITSTRUCT@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.Lt_01BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 134217728
test ebx, ebx
je .Lt_01BF
jmp .Lt_01BD
.Lt_01BF:
.Lt_01BE:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 134217728
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-4], eax
.Lt_01C0:
cmp dword ptr [ebp-4], 0
je .Lt_01C1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
call _HEMITUDT@4
push dword ptr [ebp-4]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-4], eax
jmp .Lt_01C0
.Lt_01C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 67108864
test ebx, ebx
je .Lt_01C3
jmp .Lt_01BD
.Lt_01C3:
.Lt_01C2:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 67108864
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 0
je .Lt_01C5
push 0
push -1
push dword ptr [ebp+8]
call _HGETUDTNAME@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_01C4
.Lt_01C5:
push 0
push -1
push -1
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push 2
push offset _Lt_0115
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
.Lt_01C4:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+125]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
push 0
push 9
push offset _Lt_0129
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign@20
cmp dword ptr [ebp-20], 0
je .Lt_01C9
push 0
push 2
push offset _Lt_01CA
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign@20
.Lt_01C9:
push 0
push 3
push offset _Lt_01CB
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign@20
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-4], eax
.Lt_01CC:
cmp dword ptr [ebp-4], 0
je .Lt_01CD
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .Lt_01CF
push 0
push -1
push dword ptr [ebp-4]
call _HEMITSYMTYPE@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01CF:
.Lt_01CE:
push dword ptr [ebp-4]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_01D1
push 0
push 3
push offset _Lt_00FC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01D1:
.Lt_01D0:
jmp .Lt_01CC
.Lt_01CD:
push 0
push 3
push offset _Lt_01D2
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp-20], 0
je .Lt_01D4
push 0
push 2
push offset _Lt_01D5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01D4:
lea eax, [ebp-16]
push eax
call _HWRITELINE@4
mov eax, dword ptr [ebp+8]
and dword ptr [eax+12], -134217729
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_01BD:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITCTORDTORARRAYELEMENT@8:
push ebp
mov ebp, esp
sub esp, 72
push ebx
.Lt_01D6:
push -1
push dword ptr [ebp+12]
call _fb_StrLen@8
test eax, eax
jle .Lt_01D9
push 0
push -1
push 3
push offset _Lt_00FC
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_01D9:
.Lt_01D8:
push 0
push -1
push 25
push offset _Lt_01DB
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+56]
call _fb_IntToStr@4
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push 0
push -1
push 12
push offset _Lt_01DE
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push 0
push -1
push 3
push offset _Lt_01D2
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_01D7:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HADDGLOBALCTORDTOR@4:
push ebp
mov ebp, esp
push ebx
.Lt_01E2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16384
test ebx, ebx
je .Lt_01E5
jmp .Lt_01E3
.Lt_01E5:
.Lt_01E4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 65536
test eax, eax
je .Lt_01E7
inc dword ptr [_CTX+176]
lea eax, [_CTX+152]
push eax
push dword ptr [ebp+8]
call _HEMITCTORDTORARRAYELEMENT@8
jmp .Lt_01E6
.Lt_01E7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 131072
test ebx, ebx
je .Lt_01E8
inc dword ptr [_CTX+180]
lea ebx, [_CTX+164]
push ebx
push dword ptr [ebp+8]
call _HEMITCTORDTORARRAYELEMENT@8
.Lt_01E8:
.Lt_01E6:
.Lt_01E3:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITBEGIN@0:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_01E9:
lea eax, [_ENV+560]
push eax
call _HFILEEXISTS@4
test eax, eax
je .Lt_01EC
lea eax, [_ENV+560]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileKill@4
.Lt_01EC:
.Lt_01EB:
call _fb_FileFree@0
mov dword ptr [_ENV+556], eax
push 0
push dword ptr [_ENV+556]
push 0
push 3
push 0
lea eax, [_ENV+560]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileOpen@24
test eax, eax
je .Lt_01EE
mov dword ptr [ebp-4], 0
jmp .Lt_01EA
.Lt_01EE:
.Lt_01ED:
mov dword ptr [_CTX], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+152]
push eax
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+164]
push eax
call _fb_StrAssign@20
mov dword ptr [_CTX+176], 0
mov dword ptr [_CTX+180], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+204]
push eax
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+216]
push eax
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+228]
push eax
call _fb_StrAssign@20
mov dword ptr [_CTX+4], 0
mov dword ptr [_CTX+200], 0
mov dword ptr [ebp-8], 0
.Lt_01F2:
mov eax, dword ptr [ebp-8]
mov dword ptr [_BUILTINS+eax*8+4], 0
.Lt_01F0:
inc dword ptr [ebp-8]
.Lt_01EF:
cmp dword ptr [ebp-8], 17
jle .Lt_01F2
.Lt_01F1:
cmp dword ptr [_ENV+148], 0
je .Lt_01F4
push 0
push 0
push 0
push 113
call __EMITDBG@16
.Lt_01F4:
.Lt_01F3:
call _FBIS64BIT@0
test eax, eax
je .Lt_01F6
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 35
push offset _Lt_01F7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITELINE@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_01F5
.Lt_01F6:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 35
push offset _Lt_01F9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HWRITELINE@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_01F5:
mov dword ptr [_CTX+200], 1
mov dword ptr [ebp-4], -1
.Lt_01EA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__EMITEND@0:
push ebp
mov ebp, esp
sub esp, 84
.Lt_01FB:
mov dword ptr [_CTX+200], 0
mov dword ptr [ebp-28], 0
.Lt_0200:
mov eax, dword ptr [ebp-28]
cmp dword ptr [_BUILTINS+eax*8+4], 0
je .Lt_0202
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push 0
mov eax, dword ptr [ebp-28]
push dword ptr [_BUILTINS+eax*8]
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _HWRITELINE@4
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
.Lt_0202:
.Lt_0201:
.Lt_01FE:
inc dword ptr [ebp-28]
.Lt_01FD:
cmp dword ptr [ebp-28], 17
jle .Lt_0200
.Lt_01FF:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push offset _HMAYBEEMITPROCPROTO@4
push 3
call _SYMBFOREACHGLOBAL@8
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HWRITELINE@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push offset _HMAYBEEMITGLOBALVAR@4
push 1
call _SYMBFOREACHGLOBAL@8
push offset _HEMITVARIABLE@4
call _IRFOREACHDATASTMT@4
push offset _HADDGLOBALCTORDTOR@4
push 3
call _SYMBFOREACHGLOBAL@8
cmp dword ptr [_CTX+176], 0
jle .Lt_0207
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
push 2
push offset _Lt_0185
push -1
push -1
lea eax, [_CTX+152]
push eax
push 24
push offset _Lt_0209
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
push -1
push dword ptr [_CTX+176]
call _fb_IntToStr@4
push eax
push 40
push offset _Lt_0208
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign@20
lea eax, [ebp-84]
push eax
call _HWRITELINE@4
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
.Lt_0207:
.Lt_0206:
cmp dword ptr [_CTX+180], 0
jle .Lt_0210
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
push 2
push offset _Lt_0185
push -1
push -1
lea eax, [_CTX+164]
push eax
push 24
push offset _Lt_0209
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
push -1
push dword ptr [_CTX+180]
call _fb_IntToStr@4
push eax
push 40
push offset _Lt_0211
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign@20
lea eax, [ebp-84]
push eax
call _HWRITELINE@4
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
.Lt_0210:
.Lt_020F:
mov dword ptr [_CTX+200], 2
push -1
lea eax, [_CTX+204]
push eax
push 0
push dword ptr [_ENV+556]
call _fb_FilePutStr@16
test eax, eax
je .Lt_0218
.Lt_0218:
.Lt_0217:
push -1
lea eax, [_CTX+216]
push eax
push 0
push dword ptr [_ENV+556]
call _fb_FilePutStr@16
test eax, eax
je .Lt_021A
.Lt_021A:
.Lt_0219:
push -1
lea eax, [_CTX+228]
push eax
push 0
push dword ptr [_ENV+556]
call _fb_FilePutStr@16
test eax, eax
je .Lt_021C
.Lt_021C:
.Lt_021B:
push dword ptr [_ENV+556]
call _fb_FileClose@4
test eax, eax
je .Lt_021E
.Lt_021E:
.Lt_021D:
mov dword ptr [_ENV+556], 0
.Lt_01FC:
mov esp, ebp
pop ebp
ret
.balign 16
__GETOPTIONVALUE@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_021F:
cmp dword ptr [ebp+8], 1
jne .Lt_0222
.Lt_0223:
mov dword ptr [ebp-4], 0
jmp .Lt_0220
jmp .Lt_0221
.Lt_0222:
push 0
push 1
push 0
push offset _Lt_0225
push 21
call _ERRREPORTEX@20
.Lt_0224:
.Lt_0221:
.Lt_0220:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
__SUPPORTSOP@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0226:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_0229
.Lt_022B:
mov dword ptr [ebp-4], 0
jmp .Lt_0228
.Lt_022C:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_022D
mov dword ptr [ebp-12], 24
jmp .Lt_0535
.Lt_022D:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0535:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_0228
.Lt_022F:
mov dword ptr [ebp-4], -1
jmp .Lt_0228
.Lt_0229:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967240
cmp ebx, 16
ja .Lt_022F
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.LT_0230+ebx*4-224]
_.LT_0230:
.int .Lt_022C
.int .Lt_022B
.int .Lt_022F
.int .Lt_022B
.int .Lt_022F
.int .Lt_022B
.int .Lt_022B
.int .Lt_022B
.int .Lt_022F
.int .Lt_022F
.int .Lt_022B
.int .Lt_022B
.int .Lt_022F
.int .Lt_022F
.int .Lt_022F
.int .Lt_022B
.int .Lt_022B
.Lt_0228:
.Lt_0227:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__PROCBEGIN@4:
push ebp
mov ebp, esp
push ebx
.Lt_0231:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8372]
mov dword ptr [ecx+16], ebx
.Lt_0232:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__PROCEND@4:
push ebp
mov ebp, esp
push ebx
.Lt_0233:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8372]
mov dword ptr [ecx+20], ebx
.Lt_0234:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__PROCALLOCARG@8:
push ebp
mov ebp, esp
sub esp, 92
push ebx
.Lt_0235:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _HSYMNAME@4
push eax
push 10
push offset _Lt_0237
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
push dword ptr [ebp+12]
call _SYMBGETREALTYPE@12
push 0
push -1
push 11
push offset _Lt_023A
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
push 0
push 7
push offset _Lt_023C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00EF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HEMITPARAMNAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push 2
push offset _Lt_00EF
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
call _HEMITTYPE@8
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0236:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__PROCALLOCLOCAL@8:
push ebp
mov ebp, esp
sub esp, 24
.Lt_0240:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _HSYMNAME@4
push eax
push 10
push offset _Lt_0242
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
call _HEMITVARIABLE@4
.Lt_0241:
mov esp, ebp
pop ebp
ret 8
.balign 16
__SCOPEBEGIN@4:
push ebp
mov ebp, esp
.Lt_0245:
.Lt_0246:
mov esp, ebp
pop ebp
ret 4
.balign 16
__SCOPEEND@4:
push ebp
mov ebp, esp
.Lt_0247:
.Lt_0248:
mov esp, ebp
pop ebp
ret 4
.balign 16
__PROCALLOCSTATICVARS@4:
push ebp
mov ebp, esp
.Lt_0249:
.Lt_024A:
mov esp, ebp
pop ebp
ret 4
.balign 16
__SETVREGDATATYPE@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_024B:
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
je .Lt_024E
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _IRHLALLOCVREG@8
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _HEMITCONVERT@8
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov ecx, 18
rep movsd
pop esi
pop edi
.Lt_024E:
.Lt_024D:
.Lt_024C:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HADDOFFSET@20:
push ebp
mov ebp, esp
sub esp, 12
.Lt_024F:
push 0
push 8
call _IRHLALLOCVREG@8
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _HEMITCONVERT@8
cmp dword ptr [ebp+24], 0
jne .Lt_0539
cmp dword ptr [ebp+20], 0
je .Lt_0252
.Lt_0539:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
push 8
call _IRHLALLOCVRIMM@16
mov dword ptr [ebp-8], eax
push 0
push 8
call _IRHLALLOCVREG@8
mov dword ptr [ebp-12], eax
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push 28
call _HEMITBOP@20
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0252:
.Lt_0251:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call __SETVREGDATATYPE@12
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov ecx, 18
rep movsd
pop esi
pop edi
.Lt_0250:
mov esp, ebp
pop ebp
ret 20
.balign 16
_HPREPAREADDRESS@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_0253:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], ebx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+52]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 5
jne .Lt_0256
jmp .Lt_0255
.Lt_0256:
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
.Lt_0255:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 3
jne .Lt_0258
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov ecx, 18
rep movsd
pop esi
pop edi
jmp .Lt_0257
.Lt_0258:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+12], -1
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+40], 0
mov dword ptr [ecx+44], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+52], 0
cmp dword ptr [ebp-24], 0
je .Lt_025A
mov ecx, dword ptr [ebp+8]
lea ebx, [ecx+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+4]
push ecx
push dword ptr [ebp-24]
call _SYMBGETREALTYPE@12
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
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call __SETVREGDATATYPE@12
jmp .Lt_0259
.Lt_025A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.Lt_0259:
.Lt_0257:
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp-12], 0
mov eax, -1
jne .Lt_053B
cmp dword ptr [ebp-16], 0
jne .Lt_053B
.Lt_053C:
xor eax, eax
.Lt_053B:
or ebx, eax
je .Lt_025C
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HADDOFFSET@20
.Lt_025C:
.Lt_025B:
.Lt_0254:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HLOADVREG@4:
push ebp
mov ebp, esp
sub esp, 80
push ebx
.Lt_025D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 4
je .Lt_0262
.Lt_0263:
cmp dword ptr [ebp-4], 0
jne .Lt_0261
.Lt_0262:
jmp .Lt_025F
.Lt_0261:
cmp dword ptr [ebp-4], 5
jne .Lt_0264
.Lt_0265:
push dword ptr [ebp+8]
call _HPREPAREADDRESS@4
jmp .Lt_025F
.Lt_0264:
push dword ptr [ebp+8]
call _HPREPAREADDRESS@4
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
call _IRHLALLOCVREG@8
mov dword ptr [ebp-8], eax
push 0
push -1
push 9
push offset _Lt_0267
push -1
push dword ptr [ebp-8]
call _HVREGTOSTR@4
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 0
push -1
push -1
push 3
push offset _Lt_00FC
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
call _HEMITTYPE@8
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_00EF
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-20]
push eax
call _HWRITELINE@4
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-8]
mov ecx, 18
rep movsd
pop esi
pop edi
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.Lt_0266:
.Lt_025F:
.Lt_025E:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HEMITTYPE@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_026D:
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
jmp .Lt_0270
.Lt_0272:
cmp dword ptr [ebp-28], 0
jne .Lt_0274
push 0
push 5
push offset _Lt_0275
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .Lt_0273
.Lt_0274:
push 0
push 0
push dword ptr [_DTYPENAME]
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_0273:
jmp .Lt_026F
.Lt_0276:
cmp dword ptr [ebp+12], 0
je .Lt_0278
push dword ptr [ebp+12]
call _HEMITUDT@4
push 0
push -1
push dword ptr [ebp+12]
call _HGETUDTNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .Lt_0277
.Lt_0278:
cmp dword ptr [ebp+8], 10
jne .Lt_0279
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_027A
mov dword ptr [ebp-36], 24
jmp .Lt_053D
.Lt_027A:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_053D:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .Lt_0277
.Lt_0279:
push 0
push 0
push dword ptr [_DTYPENAME]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
.Lt_0277:
jmp .Lt_026F
.Lt_027C:
dec dword ptr [ebp-28]
push 0
push -1
push -1
push -1
push dword ptr [ebp+12]
call _HEMITPROCHEADER@12
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00DB
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_026F
.Lt_027D:
push 0
push 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_027E
mov dword ptr [ebp-36], 24
jmp .Lt_053E
.Lt_027E:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_053E:
mov eax, dword ptr [ebp-36]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+16]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .Lt_026F
.Lt_0280:
push 0
push 0
push dword ptr [_DTYPENAME+12]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .Lt_026F
.Lt_0281:
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [_DTYPENAME+ebx*4]
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
jmp .Lt_026F
.Lt_0270:
cmp dword ptr [ebp-32], 22
ja .Lt_0281
mov ebx, dword ptr [ebp-32]
jmp dword ptr [_.LT_0282+ebx*4]
_.LT_0282:
.int .Lt_0272
.int .Lt_0281
.int .Lt_0281
.int .Lt_0281
.int .Lt_027D
.int .Lt_0281
.int .Lt_0281
.int .Lt_027D
.int .Lt_0281
.int .Lt_0281
.int .Lt_0276
.int .Lt_0281
.int .Lt_0281
.int .Lt_0281
.int .Lt_0281
.int .Lt_0281
.int .Lt_0281
.int .Lt_0281
.int .Lt_0280
.int .Lt_0281
.int .Lt_0276
.int .Lt_0281
.int .Lt_027C
.Lt_026F:
cmp dword ptr [ebp-28], 0
jle .Lt_0284
push 0
push -1
push 1
push offset _Lt_00DB
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp-28]
call _fb_StrFill2@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.Lt_0284:
.Lt_0283:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_026E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEMITINT@12:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0285:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], 8
je .Lt_0289
.Lt_028A:
cmp dword ptr [ebp+8], 9
je .Lt_0289
.Lt_028B:
cmp dword ptr [ebp+8], 11
je .Lt_0289
.Lt_028C:
cmp dword ptr [ebp+8], 12
je .Lt_0289
.Lt_028D:
cmp dword ptr [ebp+8], 10
jne .Lt_0288
.Lt_0289:
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .Lt_0287
.Lt_0288:
mov eax, dword ptr [ebp+8]
and eax, 480
test eax, eax
je .Lt_0290
push 0
push 10
push offset _Lt_0291
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .Lt_028F
.Lt_0290:
push 0
push 7
push offset _Lt_0292
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_028F:
push 0
push 2
push offset _Lt_0293
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push 8
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00EF
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0294
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0295
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.Lt_028E:
.Lt_0287:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0286:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 12
.balign 16
_HEMITLONG@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0296:
push 0
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_0297:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEMITFLOAT@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0298:
push 0
push 3
push offset _Lt_029A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_HEXEx_l@12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_0299:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16
_HISFIXLENSTR@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_029B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 1
jne .Lt_029E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 18
je .Lt_02A2
.Lt_02A3:
cmp dword ptr [ebp-8], 4
je .Lt_02A2
.Lt_02A4:
cmp dword ptr [ebp-8], 7
jne .Lt_02A1
.Lt_02A2:
mov dword ptr [ebp-4], -1
jmp .Lt_029C
.Lt_02A1:
.Lt_029F:
.Lt_029E:
.Lt_029D:
mov dword ptr [ebp-4], 0
.Lt_029C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HVREGTOSTR@4:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_02A5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .Lt_02A8
.Lt_02AA:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_02AB
mov dword ptr [ebp-24], 24
jmp .Lt_053F
.Lt_02AB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_053F:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 1
jne .Lt_02AE
push 0
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
call _HEMITFLOAT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .Lt_02A6
.Lt_02AE:
.Lt_02AD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_02AF
mov dword ptr [ebp-28], 24
jmp .Lt_0540
.Lt_02AF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_0540:
mov eax, dword ptr [ebp-28]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .Lt_02B2
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _HEMITLONG@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .Lt_02A6
.Lt_02B2:
.Lt_02B1:
push 0
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
call _HEMITINT@12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .Lt_02A6
jmp .Lt_02A7
.Lt_02B3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
jne .Lt_02B5
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _fb_IntToStr@4
push eax
push 4
push offset _Lt_02B6
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .Lt_02A6
.Lt_02B5:
.Lt_02B4:
jmp .Lt_02A7
.Lt_02A8:
cmp dword ptr [ebp-20], 4
ja .Lt_02A7
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_02B8+eax*4]
_.LT_02B8:
.int .Lt_02AA
.int .Lt_02A7
.int .Lt_02A7
.int .Lt_02A7
.int .Lt_02B3
.Lt_02A7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-16]
call _HISFIXLENSTR@4
test eax, eax
je .Lt_02BA
push 0
push 10
push offset _Lt_02BB
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit@20
push 0
push -1
push dword ptr [ebp-16]
call _HEMITSYMTYPE@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_02BC
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp-16]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_0294
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
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
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_0295
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
jmp .Lt_02A6
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.Lt_02BA:
.Lt_02B9:
push 0
push 0
push dword ptr [ebp-16]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.Lt_02A6:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITLABEL@4:
push ebp
mov ebp, esp
sub esp, 48
.Lt_02BF:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HSYMNAME@4
push eax
push 7
push offset _Lt_02C1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push 11
push offset _Lt_02C4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _HWRITELINE@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
call _HWRITELABEL@4
.Lt_02C0:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETBOPCODE@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_02C7:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_02CA
.Lt_02CC:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_02CD
mov dword ptr [ebp-12], 24
jmp .Lt_0541
.Lt_02CD:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0541:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_02D0
mov eax, offset _Lt_02D1
mov dword ptr [ebp-4], eax
jmp .Lt_02CF
.Lt_02D0:
mov eax, offset _Lt_02D2
mov dword ptr [ebp-4], eax
.Lt_02CF:
jmp .Lt_02C9
.Lt_02D3:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_02D4
mov dword ptr [ebp-12], 24
jmp .Lt_0542
.Lt_02D4:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0542:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_02D7
mov eax, offset _Lt_02D8
mov dword ptr [ebp-4], eax
jmp .Lt_02D6
.Lt_02D7:
mov eax, offset _Lt_02D9
mov dword ptr [ebp-4], eax
.Lt_02D6:
jmp .Lt_02C9
.Lt_02DA:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_02DB
mov dword ptr [ebp-12], 24
jmp .Lt_0543
.Lt_02DB:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0543:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_02DE
mov eax, offset _Lt_02DF
mov dword ptr [ebp-4], eax
jmp .Lt_02DD
.Lt_02DE:
mov eax, offset _Lt_02E0
mov dword ptr [ebp-4], eax
.Lt_02DD:
jmp .Lt_02C9
.Lt_02E1:
mov eax, offset _Lt_02E2
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_02E3:
mov eax, offset _Lt_02E4
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_02E5:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_02E6
mov dword ptr [ebp-12], 24
jmp .Lt_0544
.Lt_02E6:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0544:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_02E9
mov eax, offset _Lt_02EA
mov dword ptr [ebp-4], eax
jmp .Lt_02E8
.Lt_02E9:
mov eax, offset _Lt_02EB
mov dword ptr [ebp-4], eax
.Lt_02E8:
jmp .Lt_02C9
.Lt_02EC:
mov eax, offset _Lt_02ED
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_02EE:
mov eax, offset _Lt_02EF
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_02F0:
mov eax, offset _Lt_02F1
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_02F2:
mov eax, offset _Lt_02F3
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_02F4:
mov eax, offset _Lt_02F5
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_02F6:
mov eax, offset _Lt_02F7
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_02F8:
mov eax, offset _Lt_02F9
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_02FA:
mov eax, offset _Lt_02FB
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_02FC:
mov eax, offset _Lt_02FD
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_02FE:
mov eax, offset _Lt_02FF
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_0300:
mov eax, offset _Lt_0301
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_0302:
mov eax, offset _Lt_0303
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_0304:
mov eax, offset _Lt_0305
mov dword ptr [ebp-4], eax
jmp .Lt_02C9
.Lt_02CA:
mov eax, dword ptr [ebp-8]
add eax, 4294967268
cmp eax, 22
ja .Lt_02C9
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0306+eax*4-112]
_.LT_0306:
.int .Lt_02CC
.int .Lt_02D3
.int .Lt_02DA
.int .Lt_02E1
.int .Lt_02E3
.int .Lt_02E5
.int .Lt_02F0
.int .Lt_02F2
.int .Lt_02C9
.int .Lt_02C9
.int .Lt_02F4
.int .Lt_0302
.int .Lt_0304
.int .Lt_02EC
.int .Lt_02EE
.int .Lt_02C9
.int .Lt_02C9
.int .Lt_02F6
.int .Lt_02FA
.int .Lt_02FC
.int .Lt_02F8
.int .Lt_02FE
.int .Lt_0300
.Lt_02C9:
.Lt_02C8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_HLOADOPERANDSANDWRITEBOP@24:
push ebp
mov ebp, esp
sub esp, 24
.Lt_0307:
push dword ptr [ebp+12]
call _HLOADVREG@4
push dword ptr [ebp+16]
call _HLOADVREG@4
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call __SETVREGDATATYPE@12
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+16]
call __SETVREGDATATYPE@12
push 0
push -1
push dword ptr [ebp+20]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
push 0
push 4
push offset _Lt_0195
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+8]
call _HGETBOPCODE@8
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00EF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00EF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0308:
mov esp, ebp
pop ebp
ret 24
.balign 16
_HEMITBOP@20:
push ebp
mov ebp, esp
sub esp, 136
push ebx
.Lt_030A:
cmp dword ptr [ebp+24], 0
je .Lt_030D
push 0
push 8
call _IRHLALLOCVREG@8
mov dword ptr [ebp+20], eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HLOADOPERANDSANDWRITEBOP@24
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrInit@20
push 0
push -1
push -1
push dword ptr [ebp+20]
call _HVREGTOSTR@4
push eax
push 7
push offset _Lt_030E
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrInit@20
push 0
push 3
push offset _Lt_00FC
push -1
lea eax, [ebp-100]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 0
push dword ptr [ebp+24]
call _SYMBGETMANGLEDNAME@4
push eax
push 8
push offset _Lt_0310
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
lea eax, [ebp-124]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
lea eax, [ebp-136]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_00FC
push -1
lea eax, [ebp-100]
push eax
call _fb_StrConcatAssign@20
push 0
push 8
push offset _Lt_0310
push -1
lea eax, [ebp-100]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-88]
push eax
push -1
lea eax, [ebp-100]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-100]
push eax
call _HWRITELINE@4
push dword ptr [ebp-88]
call _HWRITELABEL@4
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
jmp .Lt_030B
lea eax, [ebp-100]
push eax
call _fb_StrDelete@4
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
.Lt_030D:
.Lt_030C:
mov dword ptr [ebp-4], 0
lea eax, [ebp-76]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 18
rep stosd
pop edi
pop eax
cmp dword ptr [ebp+20], 0
jne .Lt_0314
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _IRHLALLOCVREG@8
mov dword ptr [ebp+20], eax
lea eax, [ebp-76]
push edi
push esi
mov edi, eax
mov esi, dword ptr [ebp+12]
mov ecx, 18
rep movsd
pop esi
pop edi
.Lt_0314:
.Lt_0313:
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HLOADOPERANDSANDWRITEBOP@24
mov eax, dword ptr [ebp+8]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 8
test ebx, ebx
je .Lt_0316
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+4]
call _IRHLALLOCVREG@8
mov dword ptr [ebp-80], eax
push 0
push -1
push dword ptr [ebp-80]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrInit@20
push 0
push 9
push offset _Lt_0317
push -1
lea eax, [ebp-92]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_0318
push -1
lea eax, [ebp-92]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+20]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0294
push -1
lea eax, [ebp-92]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-92]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-92]
push eax
call _fb_StrAssign@20
lea eax, [ebp-92]
push eax
call _HWRITELINE@4
push edi
push esi
mov edi, dword ptr [ebp+20]
mov esi, dword ptr [ebp-80]
mov ecx, 18
rep movsd
pop esi
pop edi
lea eax, [ebp-92]
push eax
call _fb_StrDelete@4
.Lt_0316:
.Lt_0315:
cmp dword ptr [ebp-4], 0
je .Lt_031B
push dword ptr [ebp+20]
lea eax, [ebp-76]
push eax
call _HEMITSTORE@8
.Lt_031B:
.Lt_031A:
.Lt_030B:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITBOP@20:
push ebp
mov ebp, esp
sub esp, 84
.Lt_031C:
push 0
push -1
push -1
push dword ptr [ebp+16]
call _VREGPRETTY@4
push eax
push -1
push 2
push offset _Lt_00EF
push -1
push -1
push dword ptr [ebp+8]
call _ASTDUMPOPTOSTR@4
push eax
push -1
push 2
push offset _Lt_00EF
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
cmp dword ptr [ebp+24], 0
je .Lt_0323
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 11
push offset _Lt_0324
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign@20
lea eax, [ebp-84]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
jmp .Lt_0322
.Lt_0323:
cmp dword ptr [ebp+20], 0
jne .Lt_0327
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 9
push offset _Lt_0328
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign@20
lea eax, [ebp-84]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
jmp .Lt_0322
.Lt_0327:
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_032B
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-84]
push eax
call _fb_StrAssign@20
lea eax, [ebp-84]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-84]
push eax
call _fb_StrDelete@4
.Lt_0322:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HEMITBOP@20
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_031D:
mov esp, ebp
pop ebp
ret 20
.balign 16
_HBUILTINUOP@12:
push ebp
mov ebp, esp
sub esp, 12
.Lt_032E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push dword ptr [ebp+12]
call _HLOADVREG@4
push 0
push -1
push dword ptr [ebp+16]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_0330
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], 15
jne .Lt_0332
push 0
push 13
push offset _Lt_0333
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp+8], 56
jne .Lt_0335
.Lt_0336:
mov dword ptr [_BUILTINS+116], -1
push 0
push 5
push offset _Lt_0337
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0334
.Lt_0335:
cmp dword ptr [ebp+8], 58
jne .Lt_0338
.Lt_0339:
mov dword ptr [_BUILTINS+20], -1
push 0
push 4
push offset _Lt_033A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0334
.Lt_0338:
cmp dword ptr [ebp+8], 60
jne .Lt_033B
.Lt_033C:
mov dword ptr [_BUILTINS+36], -1
push 0
push 4
push offset _Lt_033D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0334
.Lt_033B:
cmp dword ptr [ebp+8], 69
jne .Lt_033E
.Lt_033F:
mov dword ptr [_BUILTINS+52], -1
push 0
push 4
push offset _Lt_0340
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0334
.Lt_033E:
cmp dword ptr [ebp+8], 68
jne .Lt_0341
.Lt_0342:
mov dword ptr [_BUILTINS+68], -1
push 0
push 4
push offset _Lt_0343
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0334
.Lt_0341:
cmp dword ptr [ebp+8], 65
jne .Lt_0344
.Lt_0345:
mov dword ptr [_BUILTINS+84], -1
push 0
push 5
push offset _Lt_0346
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0334
.Lt_0344:
cmp dword ptr [ebp+8], 70
jne .Lt_0347
.Lt_0348:
mov dword ptr [_BUILTINS+100], -1
push 0
push 6
push offset _Lt_0349
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_0347:
.Lt_034A:
.Lt_0334:
push 0
push 12
push offset _Lt_034B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0331
.Lt_0332:
push 0
push 14
push offset _Lt_034C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp+8], 56
jne .Lt_034E
.Lt_034F:
mov dword ptr [_BUILTINS+124], -1
push 0
push 5
push offset _Lt_0337
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_034D
.Lt_034E:
cmp dword ptr [ebp+8], 58
jne .Lt_0350
.Lt_0351:
mov dword ptr [_BUILTINS+28], -1
push 0
push 4
push offset _Lt_033A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_034D
.Lt_0350:
cmp dword ptr [ebp+8], 60
jne .Lt_0352
.Lt_0353:
mov dword ptr [_BUILTINS+44], -1
push 0
push 4
push offset _Lt_033D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_034D
.Lt_0352:
cmp dword ptr [ebp+8], 69
jne .Lt_0354
.Lt_0355:
mov dword ptr [_BUILTINS+60], -1
push 0
push 4
push offset _Lt_0340
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_034D
.Lt_0354:
cmp dword ptr [ebp+8], 68
jne .Lt_0356
.Lt_0357:
mov dword ptr [_BUILTINS+76], -1
push 0
push 4
push offset _Lt_0343
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_034D
.Lt_0356:
cmp dword ptr [ebp+8], 65
jne .Lt_0358
.Lt_0359:
mov dword ptr [_BUILTINS+92], -1
push 0
push 5
push offset _Lt_0346
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_034D
.Lt_0358:
cmp dword ptr [ebp+8], 70
jne .Lt_035A
.Lt_035B:
mov dword ptr [_BUILTINS+108], -1
push 0
push 6
push offset _Lt_0349
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_035A:
.Lt_035C:
.Lt_034D:
push 0
push 13
push offset _Lt_035D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_0331:
push 0
push -1
push dword ptr [ebp+12]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0295
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_032F:
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITUOP@12:
push ebp
mov ebp, esp
sub esp, 116
.Lt_035E:
push 0
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push -1
push 2
push offset _Lt_00EF
push -1
push dword ptr [ebp+8]
call _ASTDUMPOPTOSTR@4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
cmp dword ptr [ebp+16], 0
jne .Lt_0363
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 9
push offset _Lt_0364
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
jmp .Lt_0362
.Lt_0363:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push 5
push offset _Lt_0367
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
.Lt_0362:
cmp dword ptr [ebp+8], 54
jne .Lt_036B
.Lt_036C:
lea eax, [ebp-108]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 18
rep stosd
pop edi
pop eax
mov dword ptr [ebp-112], 0
cmp dword ptr [ebp+16], 0
jne .Lt_036E
mov dword ptr [ebp-112], -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _IRHLALLOCVREG@8
mov dword ptr [ebp+16], eax
lea eax, [ebp-108]
push edi
push esi
mov edi, eax
mov esi, dword ptr [ebp+12]
mov ecx, 18
rep movsd
pop esi
pop edi
.Lt_036E:
.Lt_036D:
push 0
push 0
push 0
push 8
call _IRHLALLOCVRIMM@16
mov dword ptr [ebp-116], eax
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-116]
push 29
call _HEMITBOP@20
cmp dword ptr [ebp-112], 0
je .Lt_0370
push dword ptr [ebp+16]
lea eax, [ebp-108]
push eax
call _HEMITSTORE@8
.Lt_0370:
.Lt_036F:
jmp .Lt_036A
.Lt_036B:
cmp dword ptr [ebp+8], 52
jne .Lt_0371
.Lt_0372:
push 4294967295
push 4294967295
push 0
push 8
call _IRHLALLOCVRIMM@16
mov dword ptr [ebp-40], eax
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-40]
push dword ptr [ebp+12]
push 38
call _HEMITBOP@20
jmp .Lt_036A
.Lt_0371:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBUILTINUOP@12
.Lt_0373:
.Lt_036A:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_035F:
mov esp, ebp
pop ebp
ret 12
.balign 16
_HGETCONVOPCODE@8:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.Lt_0374:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0376
mov dword ptr [ebp-8], 24
jmp .Lt_0545
.Lt_0376:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0545:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_0379
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_037A
mov dword ptr [ebp-40], 24
jmp .Lt_0546
.Lt_037A:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_0546:
mov eax, dword ptr [ebp-40]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_037D
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_037E
mov dword ptr [ebp-52], 24
jmp .Lt_0547
.Lt_037E:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-52], eax
.Lt_0547:
mov eax, dword ptr [ebp-52]
imul eax, 28
mov dword ptr [ebp-64], eax
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_0380
mov dword ptr [ebp-56], 24
jmp .Lt_0548
.Lt_0380:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-56], eax
.Lt_0548:
mov eax, dword ptr [ebp-56]
imul eax, 28
mov ebx, dword ptr [ebp-64]
mov ecx, dword ptr [_SYMB_DTYPETB+eax+4]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], ecx
jge .Lt_0384
mov ecx, offset _Lt_0382
mov dword ptr [ebp-60], ecx
jmp .Lt_0549
.Lt_0384:
mov ecx, offset _Lt_0383
mov dword ptr [ebp-60], ecx
.Lt_0549:
mov ecx, dword ptr [ebp-60]
mov dword ptr [ebp-4], ecx
jmp .Lt_0375
.Lt_037D:
.Lt_037C:
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .Lt_0386
mov dword ptr [ebp-44], 24
jmp .Lt_054B
.Lt_0386:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-44], ecx
.Lt_054B:
mov ecx, dword ptr [ebp-44]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .Lt_038A
mov ecx, offset _Lt_0388
mov dword ptr [ebp-48], ecx
jmp .Lt_054C
.Lt_038A:
mov ecx, offset _Lt_0389
mov dword ptr [ebp-48], ecx
.Lt_054C:
mov ecx, dword ptr [ebp-48]
mov dword ptr [ebp-4], ecx
jmp .Lt_0375
.Lt_0379:
.Lt_0378:
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .Lt_038C
mov dword ptr [ebp-12], 24
jmp .Lt_054D
.Lt_038C:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-12], ecx
.Lt_054D:
mov ecx, dword ptr [ebp-12]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx], 1
jne .Lt_038F
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_0390
mov dword ptr [ebp-40], 24
jmp .Lt_054E
.Lt_0390:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-40], ecx
.Lt_054E:
mov ecx, dword ptr [ebp-40]
imul ecx, 28
cmp dword ptr [_SYMB_DTYPETB+ecx+8], 0
je .Lt_0394
mov ecx, offset _Lt_0392
mov dword ptr [ebp-44], ecx
jmp .Lt_054F
.Lt_0394:
mov ecx, offset _Lt_0393
mov dword ptr [ebp-44], ecx
.Lt_054F:
mov ecx, dword ptr [ebp-44]
mov dword ptr [ebp-4], ecx
jmp .Lt_0375
.Lt_038F:
.Lt_038E:
mov ecx, dword ptr [ebp+8]
and ecx, 480
test ecx, ecx
je .Lt_0397
mov ecx, dword ptr [ebp+12]
and ecx, 480
test ecx, ecx
je .Lt_0399
mov ecx, offset _Lt_039A
mov dword ptr [ebp-4], ecx
jmp .Lt_0375
.Lt_0399:
.Lt_0398:
mov ecx, offset _Lt_039B
mov dword ptr [ebp-4], ecx
jmp .Lt_0375
jmp .Lt_0396
.Lt_0397:
mov ecx, dword ptr [ebp+12]
and ecx, 480
test ecx, ecx
je .Lt_039C
mov ecx, offset _Lt_039D
mov dword ptr [ebp-4], ecx
jmp .Lt_0375
.Lt_039C:
.Lt_0396:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_039E
mov dword ptr [ebp-16], 24
jmp .Lt_0550
.Lt_039E:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-16], ecx
.Lt_0550:
mov ecx, dword ptr [ebp-16]
imul ecx, 28
mov dword ptr [ebp-40], ecx
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .Lt_03A0
mov dword ptr [ebp-20], 24
jmp .Lt_0551
.Lt_03A0:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-20], ecx
.Lt_0551:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
mov ebx, dword ptr [ebp-40]
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], eax
jne .Lt_03A3
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_03A4
mov dword ptr [ebp-44], 24
jmp .Lt_0553
.Lt_03A4:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_0553:
mov eax, dword ptr [ebp-44]
imul eax, 28
mov dword ptr [ebp-52], eax
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_03A6
mov dword ptr [ebp-48], 24
jmp .Lt_0554
.Lt_03A6:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_0554:
mov eax, dword ptr [ebp-48]
imul eax, 28
mov ebx, dword ptr [ebp-52]
mov ecx, dword ptr [_SYMB_DTYPETB+eax+20]
cmp dword ptr [_SYMB_DTYPETB+ebx+20], ecx
jne .Lt_03A9
mov dword ptr [ebp-4], 0
jmp .Lt_0375
.Lt_03A9:
.Lt_03A8:
mov ecx, offset _Lt_039A
mov dword ptr [ebp-4], ecx
jmp .Lt_0375
.Lt_03A3:
.Lt_03A2:
mov ecx, dword ptr [ebp+8]
and ecx, 480
je .Lt_03AA
mov dword ptr [ebp-24], 24
jmp .Lt_0556
.Lt_03AA:
mov ecx, dword ptr [ebp+8]
and ecx, 31
mov dword ptr [ebp-24], ecx
.Lt_0556:
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov dword ptr [ebp-40], ecx
mov ecx, dword ptr [ebp+12]
and ecx, 480
je .Lt_03AC
mov dword ptr [ebp-28], 24
jmp .Lt_0557
.Lt_03AC:
mov ecx, dword ptr [ebp+12]
and ecx, 31
mov dword ptr [ebp-28], ecx
.Lt_0557:
mov ecx, dword ptr [ebp-28]
imul ecx, 28
mov ebx, dword ptr [ebp-40]
mov eax, dword ptr [_SYMB_DTYPETB+ecx+4]
cmp dword ptr [_SYMB_DTYPETB+ebx+4], eax
jge .Lt_03AF
mov eax, offset _Lt_03B0
mov dword ptr [ebp-4], eax
jmp .Lt_0375
.Lt_03AF:
.Lt_03AE:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_03B1
mov dword ptr [ebp-32], 24
jmp .Lt_0559
.Lt_03B1:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_0559:
mov eax, dword ptr [ebp-32]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_03B5
mov eax, offset _Lt_03B3
mov dword ptr [ebp-36], eax
jmp .Lt_055A
.Lt_03B5:
mov eax, offset _Lt_03B4
mov dword ptr [ebp-36], eax
.Lt_055A:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-4], eax
.Lt_0375:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEMITCONVERT@8:
push ebp
mov ebp, esp
sub esp, 120
push ebx
.Lt_03B7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_03B9
mov dword ptr [ebp-4], 24
jmp .Lt_055B
.Lt_03B9:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_055B:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-92], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_03BB
mov dword ptr [ebp-8], 24
jmp .Lt_055C
.Lt_03BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-8], ebx
.Lt_055C:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-92]
je .Lt_03BE
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _IRHLALLOCVREG@8
mov dword ptr [ebp-96], eax
push dword ptr [ebp+12]
call _HLOADVREG@4
push 0
push -1
push 9
push offset _Lt_0330
push -1
push dword ptr [ebp-96]
call _HVREGTOSTR@4
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrInit@20
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], 15
jne .Lt_03C1
mov dword ptr [_BUILTINS+132], -1
push 0
push 33
push offset _Lt_03C2
push -1
lea eax, [ebp-108]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_03C0
.Lt_03C1:
mov dword ptr [_BUILTINS+140], -1
push 0
push 35
push offset _Lt_03C3
push -1
lea eax, [ebp-108]
push eax
call _fb_StrConcatAssign@20
.Lt_03C0:
push 0
push -1
push dword ptr [ebp+12]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-108]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0295
push -1
lea eax, [ebp-108]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-108]
push eax
call _HWRITELINE@4
push edi
push esi
mov edi, dword ptr [ebp+12]
mov esi, dword ptr [ebp-96]
mov ecx, 18
rep movsd
pop esi
pop edi
lea eax, [ebp-108]
push eax
call _fb_StrDelete@4
.Lt_03BE:
.Lt_03BD:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HGETCONVOPCODE@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_03C5
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp+12]
mov ecx, 18
rep movsd
pop esi
pop edi
jmp .Lt_03B8
.Lt_03C5:
.Lt_03C4:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .Lt_03C7
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .Lt_03C6
.Lt_03C7:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _IRHLALLOCVREG@8
mov dword ptr [ebp-16], eax
.Lt_03C6:
push dword ptr [ebp+12]
call _HLOADVREG@4
push 0
push -1
push 2
push offset _Lt_00EF
push -1
push 0
push dword ptr [ebp-12]
push -1
push 4
push offset _Lt_0195
push -1
push dword ptr [ebp-16]
call _HVREGTOSTR@4
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit@20
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00EF
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0294
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HWRITELINE@4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .Lt_03CE
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HEMITSTORE@8
.Lt_03CE:
.Lt_03CD:
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.Lt_03B8:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITCONVERT@8:
push ebp
mov ebp, esp
sub esp, 48
.Lt_03CF:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _VREGPRETTY@4
push eax
push -1
push 5
push offset _Lt_03D2
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push 6
push offset _Lt_03D1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HEMITCONVERT@8
.Lt_03D0:
mov esp, ebp
pop ebp
ret 8
.balign 16
_HEMITSTORE@8:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.Lt_03D7:
push dword ptr [ebp+12]
call _HLOADVREG@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [ebp+12]
call __SETVREGDATATYPE@12
push dword ptr [ebp+8]
call _HPREPAREADDRESS@4
push 0
push 7
push offset _Lt_023C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
push 0
push -1
push -1
push 2
push offset _Lt_00EF
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
call _HEMITTYPE@8
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_00EF
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_03D8:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSTORE@8:
push ebp
mov ebp, esp
sub esp, 48
.Lt_03DD:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push -1
push 5
push offset _Lt_03DF
push -1
push -1
push dword ptr [ebp+8]
call _VREGPRETTY@4
push eax
push 7
push offset _Lt_023C
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HEMITSTORE@8
.Lt_03DE:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITSPILLREGS@0:
.Lt_03E4:
.Lt_03E5:
ret
.balign 16
__EMITLOAD@4:
push ebp
mov ebp, esp
.Lt_03E6:
.Lt_03E7:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITLOADRES@8:
push ebp
mov ebp, esp
sub esp, 72
.Lt_03E8:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _VREGPRETTY@4
push eax
push 9
push offset _Lt_03EA
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+8]
call _HLOADVREG@4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push dword ptr [ebp+8]
call __SETVREGDATATYPE@12
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HVREGTOSTR@4
push eax
push -1
push 2
push offset _Lt_00EF
push -1
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
push 5
push offset _Lt_03ED
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
lea eax, [ebp-72]
push eax
call _HWRITELINE@4
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
.Lt_03E9:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITADDR@12:
push ebp
mov ebp, esp
sub esp, 36
.Lt_03F2:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 22
jne .Lt_03F5
.Lt_03F6:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push 8
push offset _Lt_03F7
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
call _HPREPAREADDRESS@4
mov eax, dword ptr [ebp+16]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push dword ptr [ebp+12]
call __SETVREGDATATYPE@12
jmp .Lt_03F4
.Lt_03F5:
cmp dword ptr [ebp+8], 76
jne .Lt_03FA
.Lt_03FB:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push 7
push offset _Lt_03FC
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
call _HLOADVREG@4
.Lt_03FA:
.Lt_03F4:
push edi
push esi
mov edi, dword ptr [ebp+16]
mov esi, dword ptr [ebp+12]
mov ecx, 18
rep movsd
pop esi
pop edi
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_03F3:
mov esp, ebp
pop ebp
ret 12
.balign 16
_HDOCALL@20:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.Lt_03FF:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+20], 0
jne .Lt_0402
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_0404
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+92]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+88]
and eax, 511
push eax
call _IRHLALLOCVREG@8
mov dword ptr [ebp+20], eax
.Lt_0404:
.Lt_0403:
.Lt_0402:
.Lt_0401:
cmp dword ptr [ebp+20], 0
je .Lt_0406
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 4
jne .Lt_0408
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-28], eax
jmp .Lt_0407
.Lt_0408:
mov eax, dword ptr [ebp+20]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+20]
push dword ptr [eax+4]
call _IRHLALLOCVREG@8
mov dword ptr [ebp-28], eax
.Lt_0407:
push 0
push -1
push dword ptr [ebp-28]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 9
push offset _Lt_0330
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HEMITPROCCALLCONV@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_00EF
push -1
mov eax, dword ptr [ebp-28]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-28]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_0405
.Lt_0406:
push 0
push 6
push offset _Lt_040B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HEMITPROCCALLCONV@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 6
push offset _Lt_040C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_0405:
push 0
push -1
push -1
push 3
push offset _Lt_00F3
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [_IRHL+60]
push eax
call _LISTGETTAIL@4
mov dword ptr [ebp-16], eax
.Lt_040F:
cmp dword ptr [ebp-16], 0
je .Lt_0411
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
jmp .Lt_0560
.Lt_0411:
mov dword ptr [ebp-56], 0
.Lt_0560:
cmp dword ptr [ebp-56], 0
je .Lt_0410
push dword ptr [ebp-16]
call _LISTGETPREV@4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push -1
push dword ptr [ebp-24]
call _VREGPRETTY@4
push eax
push 5
push offset _Lt_0413
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
lea eax, [ebp-80]
push eax
call _HINTERNALCOMMAND@4
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-24]
call _HLOADVREG@4
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-88], 0
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 0
je .Lt_0417
lea eax, [ebp-88]
push eax
lea eax, [ebp-84]
push eax
mov eax, dword ptr [ebp-16]
push dword ptr [eax]
call __Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_@12
jmp .Lt_0416
.Lt_0417:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-84], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-88], eax
.Lt_0416:
push 0
push -1
push dword ptr [ebp-88]
push dword ptr [ebp-84]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp-88]
push dword ptr [ebp-84]
push dword ptr [ebp-24]
call __SETVREGDATATYPE@12
push 0
push 2
push offset _Lt_00EF
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-24]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp-16]
lea eax, [_IRHL+60]
push eax
call _LISTDELNODE@8
cmp dword ptr [ebp-20], 0
je .Lt_0419
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+24]
cmp dword ptr [eax+8], ebx
jne .Lt_041B
push 0
push 3
push offset _Lt_00FC
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
.Lt_041B:
.Lt_041A:
.Lt_0419:
.Lt_0418:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-16], ebx
jmp .Lt_040F
.Lt_0410:
push 0
push 3
push offset _Lt_010C
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
lea ebx, [ebp-12]
push ebx
call _HWRITELINE@4
cmp dword ptr [ebp+20], 0
je .Lt_041D
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx], 4
je .Lt_041F
push dword ptr [ebp-28]
push dword ptr [ebp+20]
call _HEMITSTORE@8
.Lt_041F:
.Lt_041E:
.Lt_041D:
.Lt_041C:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.Lt_0400:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITCALL@16:
push ebp
mov ebp, esp
sub esp, 36
.Lt_0420:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 3
push offset _Lt_0422
push -1
push -1
push dword ptr [ebp+8]
call _HSYMNAME@4
push eax
push 6
push offset _Lt_040B
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
call _HDOCALL@20
.Lt_0421:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCALLPTR@20:
push ebp
mov ebp, esp
sub esp, 36
.Lt_0426:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push 9
push offset _Lt_0428
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+12]
call _HLOADVREG@4
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push dword ptr [ebp+12]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _HDOCALL@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_0427:
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITJUMPPTR@4:
push ebp
mov ebp, esp
sub esp, 48
.Lt_042C:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _VREGPRETTY@4
push eax
push 9
push offset _Lt_042E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+8]
call _HLOADVREG@4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _HVREGTOSTR@4
push eax
push 7
push offset _Lt_0431
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _HWRITELINE@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
.Lt_042D:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITBRANCH@8:
push ebp
mov ebp, esp
sub esp, 48
.Lt_0434:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _HSYMNAME@4
push eax
push 6
push offset _Lt_0436
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push 11
push offset _Lt_02C4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
lea eax, [ebp-48]
push eax
call _HWRITELINE@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
call _SYMBUNIQUELABEL@0
push eax
call _HWRITELABEL@4
.Lt_0435:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITJMPTB@40:
push ebp
mov ebp, esp
sub esp, 164
push ebx
.Lt_043B:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _VREGPRETTY@4
push eax
push 7
push offset _Lt_043D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push dword ptr [ebp+8]
call _HLOADVREG@4
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrInit@20
push 0
push 8
push offset _Lt_0440
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-48]
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00EF
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FC
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_00EF
push -1
push 0
push dword ptr [ebp+28]
call _SYMBGETMANGLEDNAME@4
push eax
push 8
push offset _Lt_0310
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_016D
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-36]
push eax
call _HWRITELINE@4
inc dword ptr [_CTX]
mov dword ptr [ebp-100], 0
mov eax, dword ptr [ebp+24]
dec eax
mov dword ptr [ebp-104], eax
jmp .Lt_0445
.Lt_0448:
push 0
push -1
push 3
push offset _Lt_00FC
push -1
push -1
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
call _fb_ULongintToStr@8
push eax
push -1
push 2
push offset _Lt_00EF
push -1
lea eax, [ebp-48]
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp-100]
sal eax, 2
mov ecx, dword ptr [ebp+20]
add ecx, eax
push dword ptr [ecx]
call _SYMBGETMANGLEDNAME@4
push eax
push 8
push offset _Lt_0310
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HWRITELINE@4
.Lt_0446:
inc dword ptr [ebp-100]
.Lt_0445:
mov eax, dword ptr [ebp-104]
cmp dword ptr [ebp-100], eax
jle .Lt_0448
.Lt_0447:
dec dword ptr [_CTX]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push 0
push 2
push offset _Lt_0185
push -1
lea eax, [ebp-96]
push eax
call _fb_StrAssign@20
lea eax, [ebp-96]
push eax
call _HWRITELINE@4
lea eax, [ebp-96]
push eax
call _fb_StrDelete@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_043C:
pop ebx
mov esp, ebp
pop ebp
ret 40
.balign 16
__EMITMEM@20:
push ebp
mov ebp, esp
sub esp, 60
.Lt_044F:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 11
push offset _Lt_0451
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp+8], 107
jne .Lt_0453
.Lt_0454:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push 10
push offset _Lt_0455
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_0452
.Lt_0453:
cmp dword ptr [ebp+8], 105
jne .Lt_0458
.Lt_0459:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push -1
push dword ptr [ebp+16]
call _VREGPRETTY@4
push eax
push -1
push 5
push offset _Lt_045B
push -1
push -1
push dword ptr [ebp+12]
call _VREGPRETTY@4
push eax
push 9
push offset _Lt_045A
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _HASTCOMMAND@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
.Lt_0458:
.Lt_0452:
push dword ptr [ebp+12]
call _HLOADVREG@4
push dword ptr [ebp+16]
call _HLOADVREG@4
cmp dword ptr [ebp+8], 107
jne .Lt_0461
.Lt_0462:
mov dword ptr [_BUILTINS+4], -1
push 0
push 34
push dword ptr [ebp+12]
call __SETVREGDATATYPE@12
push 0
push 8
push dword ptr [ebp+16]
call __SETVREGDATATYPE@12
push 0
push 24
push offset _Lt_0463
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0464
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 7
push offset _Lt_0465
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0466
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0460
.Lt_0461:
cmp dword ptr [ebp+8], 105
jne .Lt_0467
.Lt_0468:
mov dword ptr [_BUILTINS+12], -1
push 0
push 34
push dword ptr [ebp+12]
call __SETVREGDATATYPE@12
push 0
push 34
push dword ptr [ebp+16]
call __SETVREGDATATYPE@12
push 0
push 30
push offset _Lt_0469
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0464
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0464
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _HVREGTOSTR@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0466
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _fb_ULongintToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_00FC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_0467:
.Lt_0460:
push 0
push 18
push offset _Lt_046A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0450:
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITMACRO@16:
push ebp
mov ebp, esp
.Lt_046B:
.Lt_046C:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITDECL@4:
push ebp
mov ebp, esp
.Lt_046D:
.Lt_046E:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITDBG@16:
push ebp
mov ebp, esp
sub esp, 60
.Lt_046F:
cmp dword ptr [ebp+8], 113
jne .Lt_0472
cmp dword ptr [ebp+20], 0
je .Lt_0474
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_0138
push -1
push -1
push offset _Lt_0477
push offset _Lt_013B
push dword ptr [ebp+20]
call _HREPLACE@12
push eax
push -1
push 3
push offset _Lt_0476
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push 7
push offset _Lt_0475
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _HWRITELINE@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
jmp .Lt_0473
.Lt_0474:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_0138
push -1
push -1
push offset _Lt_0477
push offset _Lt_013B
lea eax, [_ENV+280]
push eax
call _HREPLACE@12
push eax
push -1
push 3
push offset _Lt_0476
push -1
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push 7
push offset _Lt_0475
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _HWRITELINE@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
.Lt_0473:
mov eax, dword ptr [ebp+16]
mov dword ptr [_CTX+4], eax
.Lt_0472:
.Lt_0471:
.Lt_0470:
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITCOMMENT@4:
push ebp
mov ebp, esp
sub esp, 24
.Lt_0482:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
push 3
push offset _Lt_00AD
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HWRITELINE@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0483:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITASMLINE@4:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_0486:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.Lt_0488:
cmp dword ptr [ebp-16], 0
je .Lt_0489
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .Lt_048C
.Lt_048D:
push 0
push -1
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_048A
.Lt_048C:
cmp dword ptr [ebp-20], 1
jne .Lt_048F
.Lt_0490:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-40], ecx
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_0563
cmp dword ptr [ebp-40], 0
je .Lt_0493
.Lt_0563:
cmp dword ptr [ebp-36], 0
jl .Lt_0495
jg .Lt_0564
cmp dword ptr [ebp-40], 0
jbe .Lt_0495
.Lt_0564:
push 0
push 2
push offset _Lt_00D3
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrConcatAssign@20
.Lt_0495:
.Lt_0494:
push 0
push -1
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_0493:
.Lt_0492:
.Lt_048F:
.Lt_048A:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebp-16], ecx
jmp .Lt_0488
.Lt_0489:
lea ecx, [ebp-12]
push ecx
call _HWRITELINE@4
lea ecx, [ebp-12]
push ecx
call _fb_StrDelete@4
.Lt_0487:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITVARINIBEGIN@4:
push ebp
mov ebp, esp
.Lt_0496:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrAssign@20
push 0
push 11
push offset _Lt_0498
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _HEMITSYMTYPE@4
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00EF
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [_CTX+20], 0
mov byte ptr [_CTX+24], 0
.Lt_0497:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITVARINIEND@4:
push ebp
mov ebp, esp
.Lt_0499:
lea eax, [_CTX+8]
push eax
call _HWRITELINE@4
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrAssign@20
.Lt_049A:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HVARINIELEMENTTYPE@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_049B:
cmp dword ptr [_CTX+20], 0
jle .Lt_049E
mov eax, offset _CTX
add eax, dword ptr [_CTX+20]
movsx ebx, byte ptr [eax+24]
test ebx, ebx
je .Lt_04A0
push 0
push -1
push -1
push 2
push offset _Lt_00EF
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call _HEMITTYPE@8
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+8]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrAssign@20
jmp .Lt_049F
.Lt_04A0:
push 0
push -1
push dword ptr [ebp+8]
call _HEMITSYMTYPE@4
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00EF
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
.Lt_049F:
.Lt_049E:
.Lt_049D:
.Lt_049C:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HVARINISEPARATOR@0:
.Lt_04A3:
cmp dword ptr [_CTX+20], 0
jle .Lt_04A6
push 0
push 3
push offset _Lt_00FC
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
.Lt_04A6:
.Lt_04A5:
.Lt_04A4:
ret
.balign 16
__EMITVARINII@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_04A7:
push dword ptr [ebp+8]
call _HVARINIELEMENTTYPE@4
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
jne .Lt_0567
cmp dword ptr [ebp+12], 0
jne .Lt_0567
.Lt_0568:
xor eax, eax
.Lt_0567:
and ebx, eax
je .Lt_04AA
mov dword ptr [ebp+12], 1
mov dword ptr [ebp+16], 0
.Lt_04AA:
.Lt_04A9:
mov eax, dword ptr [ebp-4]
and eax, 480
je .Lt_04AB
mov dword ptr [ebp-8], 24
jmp .Lt_0565
.Lt_04AB:
mov eax, dword ptr [ebp-4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0565:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .Lt_04AE
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HEMITLONG@8
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_04AD
.Lt_04AE:
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call _HEMITINT@12
push eax
push -1
lea eax, [_CTX+8]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrAssign@20
.Lt_04AD:
call _HVARINISEPARATOR@0
.Lt_04A8:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITVARINIF@12:
push ebp
mov ebp, esp
.Lt_04B0:
push dword ptr [ebp+8]
call _HVARINIELEMENTTYPE@4
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HEMITFLOAT@8
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
call _HVARINISEPARATOR@0
.Lt_04B1:
mov esp, ebp
pop ebp
ret 12
.balign 16
_HMAYBEADDCONV@36:
push ebp
mov ebp, esp
sub esp, 88
push ebx
.Lt_04B2:
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
je .Lt_04B5
jmp .Lt_04B3
.Lt_04B5:
.Lt_04B4:
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call _HGETCONVOPCODE@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_04B7
jmp .Lt_04B3
.Lt_04B7:
.Lt_04B6:
push 0
push -1
push 2
push offset _Lt_0295
push -1
push -1
push dword ptr [ebp+20]
push -1
push 5
push offset _Lt_0294
push -1
push -1
push dword ptr [ebp+8]
push -1
push 2
push offset _Lt_00EF
push -1
push -1
push dword ptr [ebp+32]
push -1
push 3
push offset _Lt_04B8
push 0
push dword ptr [ebp-4]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_04B3:
pop ebx
mov esp, ebp
pop ebp
ret 28
.balign 16
__EMITVARINIOFS@16:
push ebp
mov ebp, esp
sub esp, 308
push ebx
.Lt_04C0:
push dword ptr [ebp+8]
call _HVARINIELEMENTTYPE@4
push 0
push 0
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
push 0
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-16]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrInit@20
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
push 0
push -1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
push dword ptr [ebp-32]
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrInit@20
cmp dword ptr [ebp+20], 0
jne .Lt_056B
cmp dword ptr [ebp+16], 0
je .Lt_04C3
.Lt_056B:
push 0
push -1
push 0
push 9
call _HEMITTYPE@8
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrInit@20
push 0
push -1
push 2
push offset _Lt_0295
push -1
push -1
lea eax, [ebp-68]
push eax
push -1
push 5
push offset _Lt_0294
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_00EF
push -1
push -1
lea eax, [ebp-44]
push eax
push 11
push offset _Lt_04C4
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
mov dword ptr [ebp-132], 0
lea eax, [ebp-140]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push 2
push offset _Lt_0295
push -1
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _fb_LongintToStr@8
push eax
push -1
push 2
push offset _Lt_00EF
push -1
push -1
lea eax, [ebp-68]
push eax
push -1
push 3
push offset _Lt_00FC
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_00EF
push -1
push -1
lea eax, [ebp-68]
push eax
push 6
push offset _Lt_04CB
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
lea eax, [ebp-152]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
lea eax, [ebp-164]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-176], 0
mov dword ptr [ebp-172], 0
mov dword ptr [ebp-168], 0
lea eax, [ebp-176]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-188], 0
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-180], 0
lea eax, [ebp-188]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-200], 0
mov dword ptr [ebp-196], 0
mov dword ptr [ebp-192], 0
lea eax, [ebp-200]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-212], 0
mov dword ptr [ebp-208], 0
mov dword ptr [ebp-204], 0
lea eax, [ebp-212]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-224], 0
mov dword ptr [ebp-220], 0
mov dword ptr [ebp-216], 0
lea eax, [ebp-224]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-236], 0
mov dword ptr [ebp-232], 0
mov dword ptr [ebp-228], 0
lea eax, [ebp-236]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push 2
push offset _Lt_0295
push -1
push -1
lea eax, [ebp-44]
push eax
push -1
push 5
push offset _Lt_0294
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_00EF
push -1
push -1
lea eax, [ebp-68]
push eax
push 11
push offset _Lt_04D4
mov dword ptr [ebp-248], 0
mov dword ptr [ebp-244], 0
mov dword ptr [ebp-240], 0
lea eax, [ebp-248]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-260], 0
mov dword ptr [ebp-256], 0
mov dword ptr [ebp-252], 0
lea eax, [ebp-260]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-272], 0
mov dword ptr [ebp-268], 0
mov dword ptr [ebp-264], 0
lea eax, [ebp-272]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-284], 0
mov dword ptr [ebp-280], 0
mov dword ptr [ebp-276], 0
lea eax, [ebp-284]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-296], 0
mov dword ptr [ebp-292], 0
mov dword ptr [ebp-288], 0
lea eax, [ebp-296]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-308], 0
mov dword ptr [ebp-304], 0
mov dword ptr [ebp-300], 0
lea eax, [ebp-308]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
.Lt_04C3:
.Lt_04C2:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
lea eax, [ebp-44]
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
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
call _HMAYBEADDCONV@36
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
push 0
push -1
lea eax, [ebp-12]
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
call _HVARINISEPARATOR@0
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_04C1:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
__EMITVARINISTR@20:
push ebp
mov ebp, esp
push ebx
.Lt_04DC:
cmp dword ptr [_CTX+20], 0
jle .Lt_04DF
push 0
push -1
mov eax, dword ptr [ebp+8]
push eax
call _HEMITSTRLITTYPE@4
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00EF
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
.Lt_04DF:
.Lt_04DE:
push 0
push 3
push offset _Lt_04E0
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 1
adc eax, 0
mov ecx, ebx
push ecx
push dword ptr [ebp+16]
call _HUNESCAPE@4
push eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
add ecx, 1
adc eax, 0
mov ebx, ecx
push ebx
lea ebx, [_CTX+8]
push ebx
call _HBUILDSTRLIT@16
push 0
push 2
push offset _Lt_0138
push -1
lea ebx, [_CTX+8]
push ebx
call _fb_StrConcatAssign@20
call _HVARINISEPARATOR@0
.Lt_04DD:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITVARINIWSTR@20:
push ebp
mov ebp, esp
push ebx
.Lt_04E1:
cmp dword ptr [_CTX+20], 0
jle .Lt_04E4
push 0
push -1
mov eax, dword ptr [ebp+8]
push eax
call _HEMITSTRLITTYPE@4
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00EF
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
.Lt_04E4:
.Lt_04E3:
push 0
push 3
push offset _Lt_04E0
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
add ebx, 1
adc eax, 0
mov ecx, ebx
push ecx
push dword ptr [ebp+16]
call _HUNESCAPEW@4
push eax
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
add ecx, 1
adc eax, 0
mov ebx, ecx
push ebx
lea ebx, [_CTX+8]
push ebx
call _HBUILDWSTRLIT@16
push 0
push 2
push offset _Lt_0138
push -1
lea ebx, [_CTX+8]
push ebx
call _fb_StrConcatAssign@20
call _HVARINISEPARATOR@0
.Lt_04E2:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
__EMITVARINIPAD@8:
push ebp
mov ebp, esp
.Lt_04E5:
.Lt_04E6:
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITVARINISCOPEBEGIN@8:
push ebp
mov ebp, esp
push ebx
.Lt_04E7:
push dword ptr [ebp+8]
call _HVARINIELEMENTTYPE@4
inc dword ptr [_CTX+20]
cmp dword ptr [_CTX+20], 128
jl .Lt_04EA
push offset _Lt_04EE
push 0
push 21
call _ERRREPORT@12
dec dword ptr [_CTX+20]
.Lt_04EA:
.Lt_04E9:
mov al, byte ptr [ebp+12]
mov ebx, offset _CTX
add ebx, dword ptr [_CTX+20]
mov byte ptr [ebx+24], al
cmp dword ptr [ebp+12], 0
je .Lt_04F0
push 0
push 3
push offset _Lt_04F1
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_04EF
.Lt_04F0:
push 0
push 3
push offset _Lt_01CB
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrConcatAssign@20
.Lt_04EF:
.Lt_04E8:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITVARINISCOPEEND@0:
push ebx
.Lt_04F2:
push 3
push offset _Lt_00FC
push -1
push 2
lea eax, [_CTX+8]
push eax
call _fb_RIGHT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_04F5
push 0
push -1
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrLen@8
add eax, -2
push eax
lea eax, [_CTX+8]
push eax
call _fb_LEFT@8
push eax
push -1
lea eax, [_CTX+8]
push eax
call _fb_StrAssign@20
.Lt_04F5:
.Lt_04F4:
mov eax, offset _CTX
add eax, dword ptr [_CTX+20]
movsx ebx, byte ptr [eax+24]
test ebx, ebx
je .Lt_04F7
push 0
push 3
push offset _Lt_04F8
push -1
lea ebx, [_CTX+8]
push ebx
call _fb_StrConcatAssign@20
jmp .Lt_04F6
.Lt_04F7:
push 0
push 3
push offset _Lt_01D2
push -1
lea ebx, [_CTX+8]
push ebx
call _fb_StrConcatAssign@20
.Lt_04F6:
cmp dword ptr [_CTX+20], 0
jle .Lt_04FA
dec dword ptr [_CTX+20]
.Lt_04FA:
.Lt_04F9:
call _HVARINISEPARATOR@0
.Lt_04F3:
pop ebx
ret
.balign 16
__EMITFBCTINFBEGIN@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_04FB:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_04FC:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITFBCTINFSTRING@4:
push ebp
mov ebp, esp
sub esp, 24
.Lt_04FE:
push 0
push -1
push -1
push 4
push offset _Lt_0141
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+184]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_CTX+184]
push eax
call _fb_StrAssign@20
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
add eax, dword ptr [_CTX+196]
inc eax
mov dword ptr [_CTX+196], eax
.Lt_04FF:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITFBCTINFEND@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0502:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 32
push offset _Lt_0504
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [_CTX+196]
call _HEMITSTRLITTYPE@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_0198
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [_CTX+184]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0138
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 21
push offset _Lt_0507
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
push 0
push 41
push offset _Lt_0508
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_016D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 14
push offset _Lt_0509
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [_CTX+196]
call _HEMITSTRLITTYPE@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 21
push offset _Lt_050A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0185
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 26
push offset _Lt_050B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_CTX+184]
push eax
call _fb_StrAssign@20
mov dword ptr [_CTX+196], 0
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0503:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITPROCBEGIN@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_050C:
call _IRHLEMITPROCBEGIN@0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _HWRITELINE@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 8
push offset _Lt_050F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 256
test ebx, ebx
je .Lt_0511
push 0
push 11
push offset _Lt_0512
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .Lt_0510
.Lt_0511:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 64
test eax, eax
je .Lt_0513
push 0
push 9
push offset _Lt_0514
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.Lt_0513:
.Lt_0510:
push 0
push -1
push 0
push 0
push dword ptr [ebp+8]
call _HEMITPROCHEADER@12
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-24]
push eax
call _HWRITELINE@4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 2
push offset _Lt_0515
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _HWRITELINE@4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
inc dword ptr [_CTX]
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_050D:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
__EMITPROCEND@12:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_0517:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
jne .Lt_051A
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 9
push offset _Lt_051B
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-24]
push ebx
call _HWRITELINE@4
lea ebx, [ebp-24]
push ebx
call _fb_StrDelete@4
.Lt_051A:
.Lt_0519:
dec dword ptr [_CTX]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 2
push offset _Lt_051D
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
lea ebx, [ebp-12]
push ebx
call _HWRITELINE@4
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
call _IRHLEMITPROCEND@0
.Lt_0518:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
__EMITSCOPEBEGIN@4:
push ebp
mov ebp, esp
.Lt_051F:
.Lt_0520:
mov esp, ebp
pop ebp
ret 4
.balign 16
__EMITSCOPEEND@4:
push ebp
mov ebp, esp
.Lt_0521:
.Lt_0522:
mov esp, ebp
pop ebp
ret 4
.balign 16
__GLOBAL__I:
.Lt_0524:
push offset _CTX
call __ZN13IRLLVMCONTEXTC1Ev
add esp, 4
.Lt_0525:
ret
.balign 16
__GLOBAL__D:
.Lt_0527:
push offset _CTX
call __ZN13IRLLVMCONTEXTD1Ev
add esp, 4
.Lt_0528:
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0007:	.ascii	".\0"
.balign 4

.globl _IRLLVM_VTBL
_IRLLVM_VTBL:
.int __INIT@0
.int __END@0
.int __EMITBEGIN@0
.int __EMITEND@0
.int __GETOPTIONVALUE@4
.int __SUPPORTSOP@8
.int __PROCBEGIN@4
.int __PROCEND@4
.int __PROCALLOCARG@8
.int __PROCALLOCLOCAL@8
.long 0
.int __SCOPEBEGIN@4
.int __SCOPEEND@4
.int __PROCALLOCSTATICVARS@4
.int __EMITCONVERT@8
.int __EMITLABEL@4
.int __EMITLABEL@4
.long 0
.int __EMITPROCBEGIN@8
.int __EMITPROCEND@12
.int _IRHLEMITPUSHARG@20
.int __EMITASMLINE@4
.int __EMITCOMMENT@4
.int __EMITBOP@20
.int __EMITUOP@12
.int __EMITSTORE@8
.int __EMITSPILLREGS@0
.int __EMITLOAD@4
.int __EMITLOADRES@8
.long 0
.int __EMITADDR@12
.int __EMITCALL@16
.int __EMITCALLPTR@20
.long 0
.int __EMITJUMPPTR@4
.int __EMITBRANCH@8
.int __EMITJMPTB@40
.int __EMITMEM@20
.int __EMITMACRO@16
.int __EMITSCOPEBEGIN@4
.int __EMITSCOPEEND@4
.int __EMITDECL@4
.int __EMITDBG@16
.int __EMITVARINIBEGIN@4
.int __EMITVARINIEND@4
.int __EMITVARINII@12
.int __EMITVARINIF@12
.int __EMITVARINIOFS@16
.int __EMITVARINISTR@20
.int __EMITVARINIWSTR@20
.int __EMITVARINIPAD@8
.int __EMITVARINISCOPEBEGIN@8
.int __EMITVARINISCOPEEND@0
.int __EMITFBCTINFBEGIN@0
.int __EMITFBCTINFSTRING@4
.int __EMITFBCTINFEND@0
.int _IRHLALLOCVREG@8
.int _IRHLALLOCVRIMM@16
.int _IRHLALLOCVRIMMF@16
.int _IRHLALLOCVRVAR@20
.int _IRHLALLOCVRIDX@28
.int _IRHLALLOCVRPTR@20
.int _IRHLALLOCVROFS@20
.int __SETVREGDATATYPE@12
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

.section .data
.balign 4
_BUILTINS:
.int _Lt_006B
.skip 4,0
.int _Lt_006C
.skip 4,0
.int _Lt_006D
.skip 4,0
.int _Lt_006E
.skip 4,0
.int _Lt_006F
.skip 4,0
.int _Lt_0070
.skip 4,0
.int _Lt_0071
.skip 4,0
.int _Lt_0072
.skip 4,0
.int _Lt_0073
.skip 4,0
.int _Lt_0074
.skip 4,0
.int _Lt_0075
.skip 4,0
.int _Lt_0076
.skip 4,0
.int _Lt_0077
.skip 4,0
.int _Lt_0078
.skip 4,0
.int _Lt_0079
.skip 4,0
.int _Lt_007A
.skip 4,0
.int _Lt_007B
.skip 4,0
.int _Lt_007C
.skip 4,0
.balign 4
_Lt_006B:	.ascii	"declare void @llvm.memset.p0i8.i32(i8*, i8, i32, i32, i1) nounwind\0"
.balign 4
_Lt_006C:	.ascii	"declare void @llvm.memmove.p0i8.p0i8.i32(i8*, i8*, i32, i32, i1) nounwind\0"
.balign 4
_Lt_006D:	.ascii	"declare float  @llvm.sin.f32(float ) nounwind\0"
.balign 4
_Lt_006E:	.ascii	"declare double @llvm.sin.f64(double) nounwind\0"
.balign 4
_Lt_006F:	.ascii	"declare float  @llvm.cos.f32(float ) nounwind\0"
.balign 4
_Lt_0070:	.ascii	"declare double @llvm.cos.f64(double) nounwind\0"
.balign 4
_Lt_0071:	.ascii	"declare float  @llvm.exp.f32(float ) nounwind\0"
.balign 4
_Lt_0072:	.ascii	"declare double @llvm.exp.f64(double) nounwind\0"
.balign 4
_Lt_0073:	.ascii	"declare float  @llvm.log.f32(float ) nounwind\0"
.balign 4
_Lt_0074:	.ascii	"declare double @llvm.log.f64(double) nounwind\0"
.balign 4
_Lt_0075:	.ascii	"declare float  @llvm.sqrt.f32(float ) nounwind\0"
.balign 4
_Lt_0076:	.ascii	"declare double @llvm.sqrt.f64(double) nounwind\0"
.balign 4
_Lt_0077:	.ascii	"declare float  @llvm.floor.f32(float ) nounwind\0"
.balign 4
_Lt_0078:	.ascii	"declare double @llvm.floor.f64(double) nounwind\0"
.balign 4
_Lt_0079:	.ascii	"declare float  @llvm.fabs.f32(float ) nounwind\0"
.balign 4
_Lt_007A:	.ascii	"declare double @llvm.fabs.f64(double) nounwind\0"
.balign 4
_Lt_007B:	.ascii	"declare float  @llvm.nearbyint.f32(float ) nounwind\0"
.balign 4
_Lt_007C:	.ascii	"declare double @llvm.nearbyint.f64(double) nounwind\0"

.section .bss
.balign 4
	.lcomm	_CTX,240

.section .data
.balign 4
_DTYPENAME:
.int _Lt_008A
.int _Lt_008A
.int _Lt_008A
.int _Lt_008A
.int _Lt_008A
.int _Lt_008B
.int _Lt_008B
.long 0
.long 0
.long 0
.long 0
.int _Lt_008C
.int _Lt_008C
.int _Lt_008D
.int _Lt_008D
.int _Lt_008E
.int _Lt_008F
.int _Lt_0090
.int _Lt_008A
.long 0
.long 0
.long 0
.int _Lt_008A
.long 0
.skip 8,0
.balign 4
_Lt_008A:	.ascii	"i8\0"
.balign 4
_Lt_008B:	.ascii	"i16\0"
.balign 4
_Lt_008C:	.ascii	"i32\0"
.balign 4
_Lt_008D:	.ascii	"i64\0"
.balign 4
_Lt_008E:	.ascii	"float\0"
.balign 4
_Lt_008F:	.ascii	"double\0"
.balign 4
_Lt_0090:	.ascii	"%FBSTRING\0"
.balign 4
_Lt_009D:	.ascii	"\t\0"
.balign 4
_Lt_009F:	.ascii	"\r\n\0"
.balign 4
_Lt_00AD:	.ascii	"; \0"
.balign 4
_Lt_00B5:	.ascii	":\0"
.balign 4
_Lt_00CA:	.ascii	"vr\0"
.balign 4
_Lt_00D3:	.ascii	"+\0"
.balign 4
_Lt_00DB:	.ascii	"*\0"
.balign 4
_Lt_00E0:	.ascii	"$\0"
.balign 4
_Lt_00EA:	.ascii	"x86_stdcallcc \0"
.balign 4
_Lt_00EF:	.ascii	" \0"
.balign 4
_Lt_00F3:	.ascii	"( \0"
.balign 4
_Lt_00FC:	.ascii	", \0"
.balign 4
_Lt_0103:	.ascii	"...\0"
.balign 4
_Lt_010C:	.ascii	" )\0"
.balign 4
_Lt_010F:	.ascii	" nounwind\0"
.balign 4
_Lt_0112:	.ascii	" naked\0"
.balign 4
_Lt_0115:	.ascii	"%\0"
.balign 4
_Lt_0129:	.ascii	" = type \0"
.balign 4
_Lt_0138:	.ascii	"\"\0"
.balign 4
_Lt_013B:	.ascii	"\\\0"
.balign 4
_Lt_0141:	.ascii	"\\00\0"
.balign 4
_Lt_016D:	.ascii	"[\0"
.balign 4
_Lt_016E:	.ascii	" x i8]\0"
.balign 4
_Lt_0184:	.ascii	" x \0"
.balign 4
_Lt_0185:	.ascii	"]\0"
.balign 4
_Lt_0195:	.ascii	" = \0"
.balign 4
_Lt_0197:	.ascii	"private constant \0"
.balign 4
_Lt_0198:	.ascii	" c\"\0"
.balign 4
_Lt_01A8:	.ascii	"global\0"
.balign 4
_Lt_01A9:	.ascii	"alloca\0"
.balign 4
_Lt_01AC:	.ascii	" zeroinitializer\0"
.balign 4
_Lt_01B9:	.ascii	"declare \0"
.balign 4
_Lt_01CA:	.ascii	"<\0"
.balign 4
_Lt_01CB:	.ascii	"{ \0"
.balign 4
_Lt_01D2:	.ascii	" }\0"
.balign 4
_Lt_01D5:	.ascii	">\0"
.balign 4
_Lt_01DB:	.ascii	"{ i32, void ()* } { i32 \0"
.balign 4
_Lt_01DE:	.ascii	", void ()* \0"
.balign 4
_Lt_01F7:	.ascii	"%FBSTRING = type { i8*, i64, i64 }\0"
.balign 4
_Lt_01F9:	.ascii	"%FBSTRING = type { i8*, i32, i32 }\0"
.balign 4
_Lt_0208:	.ascii	"@llvm.global_ctors = appending global [\0"
.balign 4
_Lt_0209:	.ascii	" x { i32, void ()* }] [\0"
.balign 4
_Lt_0211:	.ascii	"@llvm.global_dtors = appending global [\0"
.balign 4
_Lt_0225:	.ascii	"_GETOPTIONVALUE\0"
.balign 4
_Lt_0237:	.ascii	"paramvar \0"
.balign 4
_Lt_023A:	.ascii	" = alloca \0"
.balign 4
_Lt_023C:	.ascii	"store \0"
.balign 4
_Lt_0242:	.ascii	"localvar \0"
.balign 4
_Lt_0267:	.ascii	" = load \0"
.balign 4
_Lt_0275:	.ascii	"void\0"
.balign 4
_Lt_0291:	.ascii	"inttoptr \0"
.balign 4
_Lt_0292:	.ascii	"trunc \0"
.balign 4
_Lt_0293:	.ascii	"(\0"
.balign 4
_Lt_0294:	.ascii	" to \0"
.balign 4
_Lt_0295:	.ascii	")\0"
.balign 4
_Lt_029A:	.ascii	"0x\0"
.balign 4
_Lt_02B6:	.ascii	"%vr\0"
.balign 4
_Lt_02BB:	.ascii	"bitcast (\0"
.balign 4
_Lt_02BC:	.ascii	"* \0"
.balign 4
_Lt_02C1:	.ascii	"label \0"
.balign 4
_Lt_02C4:	.ascii	"br label %\0"
.balign 4
_Lt_02D1:	.ascii	"fadd\0"
.balign 4
_Lt_02D2:	.ascii	"add\0"
.balign 4
_Lt_02D8:	.ascii	"fsub\0"
.balign 4
_Lt_02D9:	.ascii	"sub\0"
.balign 4
_Lt_02DF:	.ascii	"fmul\0"
.balign 4
_Lt_02E0:	.ascii	"mul\0"
.balign 4
_Lt_02E2:	.ascii	"fdiv\0"
.balign 4
_Lt_02E4:	.ascii	"sdiv\0"
.balign 4
_Lt_02EA:	.ascii	"frem\0"
.balign 4
_Lt_02EB:	.ascii	"srem\0"
.balign 4
_Lt_02ED:	.ascii	"shl\0"
.balign 4
_Lt_02EF:	.ascii	"ashr\0"
.balign 4
_Lt_02F1:	.ascii	"and\0"
.balign 4
_Lt_02F3:	.ascii	"or\0"
.balign 4
_Lt_02F5:	.ascii	"xor\0"
.balign 4
_Lt_02F7:	.ascii	"icmp eq\0"
.balign 4
_Lt_02F9:	.ascii	"icmp ne\0"
.balign 4
_Lt_02FB:	.ascii	"icmp sgt\0"
.balign 4
_Lt_02FD:	.ascii	"icmp slt\0"
.balign 4
_Lt_02FF:	.ascii	"icmp sge\0"
.balign 4
_Lt_0301:	.ascii	"icmp sle\0"
.balign 4
_Lt_0303:	.ascii	"eqv\0"
.balign 4
_Lt_0305:	.ascii	"imp\0"
.balign 4
_Lt_030E:	.ascii	"br i1 \0"
.balign 4
_Lt_0310:	.ascii	"label %\0"
.balign 4
_Lt_0317:	.ascii	" = sext \0"
.balign 4
_Lt_0318:	.ascii	"i1 \0"
.balign 4
_Lt_0324:	.ascii	"branchbop \0"
.balign 4
_Lt_0328:	.ascii	"selfbop \0"
.balign 4
_Lt_032B:	.ascii	"bop \0"
.balign 4
_Lt_0330:	.ascii	" = call \0"
.balign 4
_Lt_0333:	.ascii	"float @llvm.\0"
.balign 4
_Lt_0337:	.ascii	"fabs\0"
.balign 4
_Lt_033A:	.ascii	"sin\0"
.balign 4
_Lt_033D:	.ascii	"cos\0"
.balign 4
_Lt_0340:	.ascii	"exp\0"
.balign 4
_Lt_0343:	.ascii	"log\0"
.balign 4
_Lt_0346:	.ascii	"sqrt\0"
.balign 4
_Lt_0349:	.ascii	"floor\0"
.balign 4
_Lt_034B:	.ascii	".f32(float \0"
.balign 4
_Lt_034C:	.ascii	"double @llvm.\0"
.balign 4
_Lt_035D:	.ascii	".f64(double \0"
.balign 4
_Lt_0364:	.ascii	"selfuop \0"
.balign 4
_Lt_0367:	.ascii	"uop \0"
.balign 4
_Lt_0382:	.ascii	"fptrunc\0"
.balign 4
_Lt_0383:	.ascii	"fpext\0"
.balign 4
_Lt_0388:	.ascii	"sitofp\0"
.balign 4
_Lt_0389:	.ascii	"uitofp\0"
.balign 4
_Lt_0392:	.ascii	"fptosi\0"
.balign 4
_Lt_0393:	.ascii	"fptoui\0"
.balign 4
_Lt_039A:	.ascii	"bitcast\0"
.balign 4
_Lt_039B:	.ascii	"inttoptr\0"
.balign 4
_Lt_039D:	.ascii	"ptrtoint\0"
.balign 4
_Lt_03B0:	.ascii	"trunc\0"
.balign 4
_Lt_03B3:	.ascii	"sext\0"
.balign 4
_Lt_03B4:	.ascii	"zext\0"
.balign 4
_Lt_03C2:	.ascii	"float @llvm.nearbyint.f32(float \0"
.balign 4
_Lt_03C3:	.ascii	"double @llvm.nearbyint.f64(double \0"
.balign 4
_Lt_03D1:	.ascii	"conv \0"
.balign 4
_Lt_03D2:	.ascii	" => \0"
.balign 4
_Lt_03DF:	.ascii	" := \0"
.balign 4
_Lt_03EA:	.ascii	"loadres \0"
.balign 4
_Lt_03ED:	.ascii	"ret \0"
.balign 4
_Lt_03F7:	.ascii	"addrof \0"
.balign 4
_Lt_03FC:	.ascii	"deref \0"
.balign 4
_Lt_040B:	.ascii	"call \0"
.balign 4
_Lt_040C:	.ascii	"void \0"
.balign 4
_Lt_0413:	.ascii	"arg \0"
.balign 4
_Lt_0422:	.ascii	"()\0"
.balign 4
_Lt_0428:	.ascii	"callptr \0"
.balign 4
_Lt_042E:	.ascii	"jumpptr \0"
.balign 4
_Lt_0431:	.ascii	"goto *\0"
.balign 4
_Lt_0436:	.ascii	"goto \0"
.balign 4
_Lt_043D:	.ascii	"jmptb \0"
.balign 4
_Lt_0440:	.ascii	"switch \0"
.balign 4
_Lt_0451:	.ascii	"call void \0"
.balign 4
_Lt_0455:	.ascii	"memclear \0"
.balign 4
_Lt_045A:	.ascii	"memmove \0"
.balign 4
_Lt_045B:	.ascii	" <= \0"
.balign 4
_Lt_0463:	.ascii	"@llvm.memset.p0i8.i32( \0"
.balign 4
_Lt_0464:	.ascii	"i8* \0"
.balign 4
_Lt_0465:	.ascii	"i8 0, \0"
.balign 4
_Lt_0466:	.ascii	"i32 \0"
.balign 4
_Lt_0469:	.ascii	"@llvm.memmove.p0i8.p0i8.i32( \0"
.balign 4
_Lt_046A:	.ascii	"i32 1, i1 false )\0"
.balign 4
_Lt_0475:	.ascii	"#line \0"
.balign 4
_Lt_0476:	.ascii	" \"\0"
.balign 4
_Lt_0477:	.ascii	"\\\\\0"
.balign 4
_Lt_0498:	.ascii	" = global \0"
.balign 4
_Lt_04B8:	.ascii	" (\0"
.balign 4
_Lt_04C4:	.ascii	"ptrtoint (\0"
.balign 4
_Lt_04CB:	.ascii	"add (\0"
.balign 4
_Lt_04D4:	.ascii	"inttoptr (\0"
.balign 4
_Lt_04E0:	.ascii	"c\"\0"
.balign 4
_Lt_04EE:	.ascii	"global variable/array initializer nesting level too deep (MAXVARINISCOPES=128)\0"
.balign 4
_Lt_04F1:	.ascii	"[ \0"
.balign 4
_Lt_04F8:	.ascii	" ]\0"
.balign 4
_Lt_0504:	.ascii	"@__fbctinf = internal constant \0"
.balign 4
_Lt_0507:	.ascii	", section \".fbctinf\"\0"
.balign 4
_Lt_0508:	.ascii	"@llvm.used = appending global [1 x i8*] \0"
.balign 4
_Lt_0509:	.ascii	"i8* bitcast (\0"
.balign 4
_Lt_050A:	.ascii	"* @__fbctinf to i8*)\0"
.balign 4
_Lt_050B:	.ascii	", section \"llvm.metadata\"\0"
.balign 4
_Lt_050F:	.ascii	"define \0"
.balign 4
_Lt_0512:	.ascii	"dllexport \0"
.balign 4
_Lt_0514:	.ascii	"private \0"
.balign 4
_Lt_0515:	.ascii	"{\0"
.balign 4
_Lt_051B:	.ascii	"ret void\0"
.balign 4
_Lt_051D:	.ascii	"}\0"

.section .ctors
.int _fb_ctor__irzllvm
.int __GLOBAL__I

.section .dtors
.int __GLOBAL__D
