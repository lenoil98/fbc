	.intel_syntax noprefix

.section .text
.balign 16

.globl _HBUILDBYREFARG
_HBUILDBYREFARG:
push ebp
mov ebp, esp
push ebx
.Lt_0094:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _ASTREMOVENOCONVCAST
add esp, 4
push eax
call _ASTNEWADDROF
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
push 0
push 16
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 32505856
or ebx, ecx
push ebx
call _ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 1
.Lt_0095:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTNEWARG
_ASTNEWARG:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_019C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-12]
movsx ecx, word ptr [eax+68]
cmp dword ptr [ebx+24], ecx
jl .Lt_019F
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+80]
mov dword ptr [ebp-16], ebx
jmp .Lt_019E
.Lt_019F:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+28]
mov dword ptr [ebp-16], ecx
.Lt_019E:
cmp dword ptr [ebp+12], 0
jne .Lt_01A1
push dword ptr [ebp-16]
call _HCREATEOPTARG
add esp, 4
mov dword ptr [ebp+12], eax
.Lt_01A1:
.Lt_01A0:
cmp dword ptr [ebp+16], -2147483648
jne .Lt_01A3
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp+16], ecx
.Lt_01A3:
.Lt_01A2:
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+4]
and eax, 524288
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+8]
and ebx, 1024
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_01A5
mov dword ptr [ebp-20], 0
lea ebx, [ebp-20]
push ebx
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+56]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+32]
push dword ptr [ebp+16]
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+28]
call _SYMBCHECKCONSTASSIGNTOPLEVEL
add esp, 24
test eax, eax
jne .Lt_01A8
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
and ebx, 524288
test ebx, ebx
je .Lt_01AA
push 276
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
call _ERRREPORTPARAM
add esp, 16
jmp .Lt_01A9
.Lt_01AA:
push 181
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _ERRREPORTPARAM
add esp, 16
.Lt_01A9:
jmp .Lt_019D
.Lt_01A8:
.Lt_01A7:
.Lt_01A5:
.Lt_01A4:
push 0
push -2147483648
push 22
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], 0
mov dword ptr [ebx+28], 0
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+84], 4
jne .Lt_01AC
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
jne .Lt_01AE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
jmp .Lt_01AD
.Lt_01AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.Lt_01AD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
jmp .Lt_01AB
.Lt_01AC:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
jne .Lt_01B0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+32], eax
.Lt_01B0:
.Lt_01AF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebx+60], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ecx+60], ebx
.Lt_01AB:
push 0
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+24]
inc ecx
push ecx
push -1
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+12]
call _ERRPUSHPARAMLOCATION
add esp, 16
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HCHECKPARAM
add esp, 12
test eax, eax
jne .Lt_01B2
call _ERRPOPPARAMLOCATION
mov dword ptr [ebp-4], 0
jmp .Lt_019D
.Lt_01B2:
.Lt_01B1:
call _ERRPOPPARAMLOCATION
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+24]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
movsx ebx, word ptr [ecx+68]
cmp dword ptr [eax+24], ebx
jge .Lt_01B4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebx+28], ecx
.Lt_01B4:
.Lt_01B3:
.Lt_019D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTREPLACEINSTANCEARG
_ASTREPLACEINSTANCEARG:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_01B7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+84], 4
jne .Lt_01BA
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
jmp .Lt_01B9
.Lt_01BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
.Lt_01B9:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+56]
call _ASTDELTREE
add esp, 4
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [eax+24], 0
mov dword ptr [eax+28], 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HCHECKPARAM
add esp, 12
.Lt_01B8:
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
_HALLOCTMPARRAYDESC:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_005F:
push dword ptr [ebp+8]
call _SYMBADDARRAYDESC
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTBUILDARRAYDESCINITREE
add esp, 12
mov dword ptr [ebp-12], eax
push 0
push dword ptr [ebp-8]
call _ASTNEWDECL
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
push 0
push 64
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _ASTNEWLINK
add esp, 12
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0060:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HADDTOCOPYBACKLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0061:
lea eax, [_AST+44]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+36]
mov dword ptr [ebx+8], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ecx+36], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [ebx], ecx
push dword ptr [ebp+16]
call _ASTCLONETREE
add esp, 4
push eax
call _ASTOPTIMIZETREE
add esp, 4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0062:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HALLOCTMPSTRING:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0063:
push 0
push 17
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _ASTDTORLISTADD
add esp, 4
cmp dword ptr [ebp+16], 0
je .Lt_0066
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HADDTOCOPYBACKLIST
add esp, 12
.Lt_0066:
.Lt_0065:
push 2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
push eax
push 0
push 0
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
push eax
call _RTLSTRASSIGN
add esp, 12
push eax
push dword ptr [ebp-8]
call _ASTBUILDTEMPVARCLEAR
add esp, 4
push eax
call _ASTNEWLINK
add esp, 12
push eax
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0064:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HALLOCTMPWSTRPTR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0067:
push 0
push 39
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 16777216
push dword ptr [ebp-8]
call _ASTDTORLISTADD
add esp, 4
push 0
push 39
push dword ptr [ebp+12]
call _ASTSETTYPE
add esp, 12
push 0
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKARGFORSTRINGPARAM:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0069:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 0
je .Lt_006C
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+56], 2
jne .Lt_006E
cmp dword ptr [ebp-8], 17
jne .Lt_0070
.Lt_0071:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 9
jne .Lt_0073
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-4], ebx
jmp .Lt_006A
.Lt_0073:
.Lt_0072:
jmp .Lt_006F
.Lt_0070:
cmp dword ptr [ebp-8], 4
je .Lt_0075
.Lt_0076:
cmp dword ptr [ebp-8], 18
jne .Lt_0074
.Lt_0075:
push dword ptr [ebp+16]
call _RTLSTRALLOCTMPDESC
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_006A
.Lt_0074:
.Lt_006F:
.Lt_006E:
.Lt_006D:
.Lt_006C:
.Lt_006B:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 2
jne .Lt_0078
cmp dword ptr [ebp-8], 18
jne .Lt_007A
.Lt_007B:
mov dword ptr [ebp-12], -1
jmp .Lt_0079
.Lt_007A:
cmp dword ptr [ebp-8], 17
jne .Lt_007C
.Lt_007D:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 9
je .Lt_007F
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
jmp .Lt_006A
.Lt_007F:
.Lt_007E:
.Lt_007C:
.Lt_0079:
.Lt_0078:
.Lt_0077:
push dword ptr [ebp-12]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HALLOCTMPSTRING
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_006A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSTRARGTOSTRPTRPARAM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0080:
cmp dword ptr [ebp+16], 0
jne .Lt_0083
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_0085
jmp .Lt_0081
.Lt_0085:
.Lt_0084:
.Lt_0083:
.Lt_0082:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 17
jne .Lt_0088
.Lt_0089:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 9
jne .Lt_008B
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+56]
push dword ptr [ebp+8]
call _HALLOCTMPSTRING
add esp, 12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
.Lt_008B:
.Lt_008A:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _ASTBUILDSTRPTR
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
jmp .Lt_0086
.Lt_0088:
cmp dword ptr [ebp-4], 18
jne .Lt_008C
.Lt_008D:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _ASTNEWADDROF
add esp, 4
push eax
push 0
push 36
call _ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
jmp .Lt_0086
.Lt_008C:
cmp dword ptr [ebp-4], 4
jne .Lt_008E
.Lt_008F:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _ASTNEWADDROF
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
jmp .Lt_0086
.Lt_008E:
cmp dword ptr [ebp-4], 7
jne .Lt_0090
.Lt_0091:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 9
jne .Lt_0093
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+56]
push dword ptr [ebp+8]
call _HALLOCTMPWSTRPTR
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
jmp .Lt_0092
.Lt_0093:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _ASTNEWADDROF
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
.Lt_0092:
.Lt_0090:
.Lt_0086:
.Lt_0081:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKBYREFPARAM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0096:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _ASTSKIPCONSTCASTS
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 9
jne .Lt_0099
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov eax, ebx
mov dword ptr [ebp-8], eax
jmp .Lt_009B
.Lt_009D:
jmp .Lt_0097
jmp .Lt_009A
.Lt_009B:
mov eax, dword ptr [ebp-8]
add eax, 4294967292
cmp eax, 14
ja .Lt_009A
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_009E+eax*4-16]
_.LT_009E:
.int .Lt_009D
.int .Lt_009A
.int .Lt_009A
.int .Lt_009D
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009D
.int .Lt_009D
.Lt_009A:
.Lt_0099:
.Lt_0098:
push dword ptr [ebp-4]
call _ASTCANTAKEADDROF
add esp, 4
test eax, eax
jne .Lt_00A0
push 80
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
push dword ptr [eax+4]
call _SYMBADDTEMPVAR
add esp, 8
push eax
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
.Lt_00A0:
.Lt_009F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBUILDBYREFARG
add esp, 8
.Lt_0097:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKBYDESCDIMENSIONS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00A1:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+60]
cmp ebx, -1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+68]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+60]
cmp esi, dword ptr [ecx+68]
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
mov dword ptr [ebp-4], ebx
.Lt_00A2:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKBYDESCPARAM:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A3:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+20], 1
jne .Lt_00A6
mov dword ptr [ebp-4], -1
jmp .Lt_00A4
.Lt_00A6:
.Lt_00A5:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00A8
jmp .Lt_00A4
.Lt_00A8:
.Lt_00A7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-16]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00AA
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .Lt_00AB
mov dword ptr [ebp-28], 24
jmp .Lt_01BE
.Lt_00AB:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_01BE:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_00AD
mov dword ptr [ebp-32], 24
jmp .Lt_01BF
.Lt_00AD:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_01BF:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [ebp-44]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx]
cmp ecx, dword ptr [_SYMB_DTYPETB+eax]
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .Lt_00AF
mov dword ptr [ebp-36], 24
jmp .Lt_01C0
.Lt_00AF:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-36], ecx
.Lt_01C0:
mov ecx, dword ptr [ebp-36]
imul ecx, 28
mov dword ptr [ebp-52], ecx
mov ecx, dword ptr [ebp-16]
and ecx, 480
je .Lt_00B1
mov dword ptr [ebp-40], 24
jmp .Lt_01C1
.Lt_00B1:
mov ecx, dword ptr [ebp-16]
and ecx, 31
mov dword ptr [ebp-40], ecx
.Lt_01C1:
mov ecx, dword ptr [ebp-40]
imul ecx, 28
mov eax, dword ptr [ebp-52]
mov ebx, dword ptr [_SYMB_DTYPETB+ecx+4]
cmp ebx, dword ptr [_SYMB_DTYPETB+eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-48]
je .Lt_00B4
jmp .Lt_00A4
.Lt_00B4:
.Lt_00B3:
.Lt_00AA:
.Lt_00A9:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 17
jne .Lt_00B6
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .Lt_00B8
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HCHECKBYDESCDIMENSIONS
add esp, 8
test eax, eax
jne .Lt_00BA
jmp .Lt_00A4
.Lt_00BA:
.Lt_00B9:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+88]
push 52
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
call _ASTSETTYPE
add esp, 12
mov dword ptr [ebp-4], -1
jmp .Lt_00A4
.Lt_00B8:
.Lt_00B7:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
je .Lt_00BC
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HCHECKBYDESCDIMENSIONS
add esp, 8
test eax, eax
jne .Lt_00BE
jmp .Lt_00A4
.Lt_00BE:
.Lt_00BD:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
call _ASTDELTREE
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
mov dword ptr [ebp-4], -1
jmp .Lt_00A4
.Lt_00BC:
.Lt_00BB:
jmp .Lt_00B5
.Lt_00B6:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 19
jne .Lt_00BF
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
je .Lt_00C1
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HCHECKBYDESCDIMENSIONS
add esp, 8
test eax, eax
jne .Lt_00C3
jmp .Lt_00A4
.Lt_00C3:
.Lt_00C2:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-24]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-24]
push dword ptr [ebx+28]
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+56]
call _ASTSETTYPE
add esp, 12
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+56]
call _ASTNEWADDROF
add esp, 4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
mov dword ptr [ebp-4], -1
jmp .Lt_00A4
jmp .Lt_00C0
.Lt_00C1:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+60], 0
jle .Lt_00C4
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _HCHECKBYDESCDIMENSIONS
add esp, 8
test eax, eax
jne .Lt_00C6
jmp .Lt_00A4
.Lt_00C6:
.Lt_00C5:
lea eax, [ebp-8]
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp-20]
call _HALLOCTMPARRAYDESC
add esp, 12
mov dword ptr [ebp-24], eax
push 1
push dword ptr [ebp-8]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
push eax
call _ASTNEWLINK
add esp, 12
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
mov dword ptr [ebp-4], -1
.Lt_00C4:
.Lt_00C0:
.Lt_00BF:
.Lt_00B5:
.Lt_00A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKVARARGPARAM:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C7:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_00C9
mov dword ptr [ebp-12], 24
jmp .Lt_01C9
.Lt_00C9:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_01C9:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-16], ebx
jmp .Lt_00CC
.Lt_00CE:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HSTRARGTOSTRPTRPARAM
add esp, 12
jmp .Lt_00CB
.Lt_00CF:
cmp dword ptr [ebp-8], 4
je .Lt_00D2
.Lt_00D3:
cmp dword ptr [ebp-8], 7
jne .Lt_00D1
.Lt_00D2:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HSTRARGTOSTRPTRPARAM
add esp, 12
jmp .Lt_00D0
.Lt_00D1:
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_00D5
mov dword ptr [ebp-20], 24
jmp .Lt_01CA
.Lt_00D5:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_01CA:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 4
jge .Lt_00D8
push 0
push 0
mov ebx, dword ptr [ebp+16]
push dword ptr [ebx+56]
push 0
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_00D9
mov dword ptr [ebp-24], 24
jmp .Lt_01CB
.Lt_00D9:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_01CB:
mov ebx, dword ptr [ebp-24]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+8], 0
je .Lt_00DB
mov dword ptr [ebp-28], 11
jmp .Lt_01CC
.Lt_00DB:
mov dword ptr [ebp-28], 12
.Lt_01CC:
push dword ptr [ebp-28]
call _ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
.Lt_00D8:
.Lt_00D7:
.Lt_00D4:
.Lt_00D0:
jmp .Lt_00CB
.Lt_00DD:
cmp dword ptr [ebp-8], 15
jne .Lt_00DF
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push 0
push 16
call _ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
.Lt_00DF:
.Lt_00DE:
jmp .Lt_00CB
.Lt_00E0:
push 0
push 0
push 58
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_00C8
jmp .Lt_00CB
.Lt_00CC:
cmp dword ptr [ebp-16], 2
ja .Lt_00E0
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_00E1+eax*4]
_.LT_00E1:
.int .Lt_00CF
.int .Lt_00DD
.int .Lt_00CE
.Lt_00CB:
mov dword ptr [ebp-4], -1
.Lt_00C8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKVOIDPARAM:
push ebp
mov ebp, esp
push ebx
.Lt_00E2:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+20], 1
jne .Lt_00E5
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HSTRARGTOSTRPTRPARAM
add esp, 12
jmp .Lt_00E3
.Lt_00E5:
.Lt_00E4:
cmp dword ptr [_ENV+136], 3
je .Lt_00E7
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx]
cmp eax, 16
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+56]
mov ebx, dword ptr [ecx]
cmp ebx, 23
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00E9
jmp .Lt_00E3
.Lt_00E9:
.Lt_00E8:
.Lt_00E7:
.Lt_00E6:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HCHECKBYREFPARAM
add esp, 8
.Lt_00E3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKSTRPARAM:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EA:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_00ED
.Lt_00EF:
jmp .Lt_00EC
.Lt_00F0:
jmp .Lt_00EC
.Lt_00F1:
push 0
push 0
push 58
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_00EB
jmp .Lt_00EC
.Lt_00ED:
mov eax, dword ptr [ebp-12]
add eax, 4294967292
cmp eax, 14
ja .Lt_00F1
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00F2+eax*4-16]
_.LT_00F2:
.int .Lt_00F0
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F0
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00EF
.int .Lt_00EF
.Lt_00EC:
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKARGFORSTRINGPARAM
add esp, 12
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 2
jne .Lt_00F5
.Lt_00F6:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+56]
cmp dword ptr [eax], 9
je .Lt_00F8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HBUILDBYREFARG
add esp, 8
.Lt_00F8:
.Lt_00F7:
jmp .Lt_00F3
.Lt_00F5:
cmp dword ptr [ebp-12], 1
jne .Lt_00F9
.Lt_00FA:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HBUILDBYREFARG
add esp, 8
.Lt_00F9:
.Lt_00F3:
mov dword ptr [ebp-4], -1
.Lt_00EB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBYTEBYBYTE:
push ebp
mov ebp, esp
push ebx
push esi
.Lt_00FB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebx+40]
mov ecx, dword ptr [ebx+44]
mov dword ptr [eax+24], esi
mov dword ptr [eax+28], ecx
.Lt_00FC:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HUDTPASSBYVAL:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_00FD:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBCOMPISTRIVIAL
add esp, 4
test eax, eax
je .Lt_0100
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 9
jne .Lt_0102
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _ASTREMOVENOCONVCAST
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+12]
call _SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .Lt_0104
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _ASTBUILDCALLRESULTVAR
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBYTEBYBYTE
add esp, 8
jmp .Lt_0103
.Lt_0104:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+92]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+12]
push dword ptr [eax+88]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _ASTSETTYPE
add esp, 12
.Lt_0103:
jmp .Lt_0101
.Lt_0102:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBYTEBYBYTE
add esp, 8
.Lt_0101:
jmp .Lt_00FE
.Lt_0100:
.Lt_00FF:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
call _ASTDTORLISTADD
add esp, 4
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 36
jne .Lt_0106
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _ASTREMOVENOCONVCAST
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
push 2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR
add esp, 20
push eax
push 64
push -1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push dword ptr [ebp-4]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
push eax
call _ASTNEWLINK
add esp, 12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
jmp .Lt_0105
.Lt_0106:
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push dword ptr [ebp+8]
call _ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
cmp dword ptr [ebp-16], 0
je .Lt_0108
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR
add esp, 20
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR
add esp, 20
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _ASTPATCHCTORCALL
add esp, 8
push eax
call _ASTNEWCALLCTOR
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
jmp .Lt_0107
.Lt_0108:
push 2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR
add esp, 20
push eax
push 64
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTNEWLINK
add esp, 12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
.Lt_0107:
.Lt_0105:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBUILDBYREFARG
add esp, 8
.Lt_00FE:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HIMPLICITCTOR:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0109:
push dword ptr [ebp+8]
call _SYMBHASCTOR
add esp, 4
test eax, eax
jne .Lt_010C
jmp .Lt_010A
.Lt_010C:
.Lt_010B:
cmp dword ptr [_Lt_01CF], 0
je .Lt_010E
jmp .Lt_010A
.Lt_010E:
.Lt_010D:
inc dword ptr [_Lt_01CF]
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push dword ptr [ebp+8]
call _ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp-8], eax
dec dword ptr [_Lt_01CF]
cmp dword ptr [ebp-16], 0
jne .Lt_0110
jmp .Lt_010A
.Lt_0110:
.Lt_010F:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call _ASTDTORLISTADD
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR
add esp, 20
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-8]
call _ASTPATCHCTORCALL
add esp, 8
push eax
call _ASTNEWCALLCTOR
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 1
jne .Lt_0112
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HUDTPASSBYVAL
add esp, 8
jmp .Lt_0111
.Lt_0112:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBUILDBYREFARG
add esp, 8
.Lt_0111:
mov dword ptr [ebp-4], -1
.Lt_010A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_01CF:
.int 0

.section .text
.balign 16
_HCHECKUDTPARAM:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0113:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 20
je .Lt_0116
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HIMPLICITCTOR
add esp, 8
test eax, eax
jne .Lt_0118
push 0
push 0
push 58
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_0114
.Lt_0118:
.Lt_0117:
mov dword ptr [ebp-4], -1
jmp .Lt_0114
.Lt_0116:
.Lt_0115:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+32]
cmp dword ptr [ebx+8], ecx
je .Lt_011A
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+56]
push dword ptr [ebx+8]
call _SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .Lt_011C
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HIMPLICITCTOR
add esp, 8
test eax, eax
jne .Lt_011E
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 0
jne .Lt_0120
push 0
push 0
push 58
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_0114
.Lt_0120:
.Lt_011F:
jmp .Lt_011D
.Lt_011E:
mov dword ptr [ebp-4], -1
jmp .Lt_0114
.Lt_011D:
jmp .Lt_011B
.Lt_011C:
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _ASTNEWCONV
add esp, 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
.Lt_011B:
.Lt_011A:
.Lt_0119:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 2
jne .Lt_0123
.Lt_0124:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+56]
call _ASTREMOVENOCONVCAST
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 9
jne .Lt_0126
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
push dword ptr [eax+12]
call _SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
jne .Lt_0128
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 2
push 0
push 0
push 0
push dword ptr [ebp-8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _ASTNEWADDROF
add esp, 4
push eax
push 96
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push 0
push 0
push 0
push dword ptr [ebp-8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTNEWLINK
add esp, 12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 1
mov dword ptr [ebp-4], -1
jmp .Lt_0114
.Lt_0128:
.Lt_0127:
.Lt_0126:
.Lt_0125:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HBUILDBYREFARG
add esp, 8
jmp .Lt_0121
.Lt_0123:
cmp dword ptr [ebp-12], 1
jne .Lt_0129
.Lt_012A:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HUDTPASSBYVAL
add esp, 8
.Lt_0129:
.Lt_0121:
mov dword ptr [ebp-4], -1
.Lt_0114:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKPARAM:
push ebp
mov ebp, esp
sub esp, 40
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_012B:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
call _ASTUPDSTRCONCAT
add esp, 4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 3
jne .Lt_012F
.Lt_0130:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKBYDESCPARAM
add esp, 12
test eax, eax
jne .Lt_0132
push 0
push 0
push 58
call _ERRREPORT
add esp, 12
jmp .Lt_012C
.Lt_0132:
.Lt_0131:
mov dword ptr [ebp-4], -1
jmp .Lt_012C
jmp .Lt_012D
.Lt_012F:
cmp dword ptr [ebp-16], 4
jne .Lt_0133
.Lt_0134:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKVARARGPARAM
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_012C
jmp .Lt_012D
.Lt_0133:
cmp dword ptr [ebp-16], 2
jne .Lt_0135
.Lt_0136:
cmp dword ptr [ebp-8], 0
jne .Lt_0138
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKVOIDPARAM
add esp, 12
mov dword ptr [ebp-4], -1
jmp .Lt_012C
.Lt_0138:
.Lt_0137:
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+20], 1
jne .Lt_013A
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_013B
mov dword ptr [ebp-24], 24
jmp .Lt_01D0
.Lt_013B:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_01D0:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .Lt_013D
mov dword ptr [ebp-28], 24
jmp .Lt_01D1
.Lt_013D:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_01D1:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [_ENV+272]
cmp eax, dword ptr [_SYMB_DTYPETB+ebx+4]
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-32]
je .Lt_0140
push 0
push 0
push 58
call _ERRREPORT
add esp, 12
jmp .Lt_012C
.Lt_0140:
.Lt_013F:
mov dword ptr [ebp-4], -1
jmp .Lt_012C
.Lt_013A:
.Lt_0139:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 19
jne .Lt_0141
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+112]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .Lt_01D3
.Lt_0141:
mov dword ptr [ebp-20], 0
.Lt_01D3:
cmp dword ptr [ebp-20], 0
je .Lt_0144
push 0
push 0
push 58
call _ERRREPORT
add esp, 12
jmp .Lt_012C
.Lt_0144:
.Lt_0143:
.Lt_0135:
.Lt_012D:
cmp dword ptr [ebp-12], 20
jne .Lt_0146
.Lt_0147:
push 0
lea eax, [ebp-16]
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
call _SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_0149
cmp dword ptr [_Lt_01E1], 0
jne .Lt_014B
inc dword ptr [_Lt_01E1]
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
push dword ptr [ebp-20]
call _ASTBUILDCALL
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
dec dword ptr [_Lt_01E1]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-12], eax
.Lt_014B:
.Lt_014A:
.Lt_0149:
.Lt_0148:
.Lt_0146:
.Lt_0145:
cmp dword ptr [ebp-8], 17
jne .Lt_014D
.Lt_014E:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKSTRPARAM
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_012C
jmp .Lt_014C
.Lt_014D:
cmp dword ptr [ebp-8], 4
je .Lt_0150
.Lt_0151:
cmp dword ptr [ebp-8], 7
jne .Lt_014F
.Lt_0150:
cmp dword ptr [ebp-12], 17
je .Lt_0154
.Lt_0155:
cmp dword ptr [ebp-12], 18
je .Lt_0154
.Lt_0156:
cmp dword ptr [ebp-12], 4
je .Lt_0154
.Lt_0157:
cmp dword ptr [ebp-12], 7
jne .Lt_0153
.Lt_0154:
jmp .Lt_0152
.Lt_0153:
push 0
push 0
push 58
call _ERRREPORT
add esp, 12
jmp .Lt_012C
.Lt_0158:
.Lt_0152:
jmp .Lt_014C
.Lt_014F:
cmp dword ptr [ebp-8], 20
jne .Lt_0159
.Lt_015A:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HCHECKUDTPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_012C
.Lt_0159:
.Lt_014C:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_015C
.Lt_015E:
cmp dword ptr [ebp-8], 36
je .Lt_0161
.Lt_0162:
cmp dword ptr [ebp-8], 4
jne .Lt_0160
.Lt_0161:
cmp dword ptr [ebp-12], 7
jne .Lt_0164
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
call _RTLTOSTR
add esp, 8
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
.Lt_0164:
.Lt_0163:
jmp .Lt_015F
.Lt_0160:
cmp dword ptr [ebp-8], 39
je .Lt_0166
.Lt_0167:
cmp dword ptr [ebp-8], 7
jne .Lt_0165
.Lt_0166:
cmp dword ptr [ebp-12], 7
je .Lt_0169
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
call _RTLTOWSTR
add esp, 4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
.Lt_0169:
.Lt_0168:
jmp .Lt_015F
.Lt_0165:
push 0
push 0
push 58
call _ERRREPORT
add esp, 12
jmp .Lt_012C
.Lt_016A:
.Lt_015F:
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HSTRARGTOSTRPTRPARAM
add esp, 12
mov eax, dword ptr [ebp-8]
and eax, 480
test eax, eax
jne .Lt_016C
push 0
push 0
push 0
push -2147483648
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
call _ASTNEWDEREF
add esp, 20
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+56], eax
.Lt_016C:
.Lt_016B:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+56]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-12], eax
jmp .Lt_015B
.Lt_016D:
push 0
push 0
push 58
call _ERRREPORT
add esp, 12
jmp .Lt_012C
jmp .Lt_015B
.Lt_015C:
mov eax, dword ptr [ebp-16]
add eax, 4294967292
cmp eax, 16
ja .Lt_015B
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_016E+eax*4-16]
_.LT_016E:
.int .Lt_015E
.int .Lt_015B
.int .Lt_015B
.int .Lt_015E
.int .Lt_015B
.int .Lt_015B
.int .Lt_015B
.int .Lt_015B
.int .Lt_015B
.int .Lt_015B
.int .Lt_015B
.int .Lt_015B
.int .Lt_015B
.int .Lt_015E
.int .Lt_015E
.int .Lt_015B
.int .Lt_016D
.Lt_015B:
mov eax, dword ptr [ebp-8]
cmp eax, 10
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0170
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_0171
mov dword ptr [ebp-16], 24
jmp .Lt_01D4
.Lt_0171:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_01D4:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-12]
and ebx, 480
je .Lt_0173
mov dword ptr [ebp-20], 24
jmp .Lt_01D5
.Lt_0173:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_01D5:
mov ebx, dword ptr [ebp-20]
imul ebx, 28
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx]
cmp dword ptr [_SYMB_DTYPETB+eax], ecx
je .Lt_0176
push 0
push 1
push 0
push 5
call _ERRREPORTWARN
add esp, 16
.Lt_0176:
.Lt_0175:
.Lt_0170:
.Lt_016F:
mov ecx, dword ptr [ebp-8]
and ecx, 480
test ecx, ecx
je .Lt_0178
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+56]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+56]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+28]
call _ASTPTRCHECK
add esp, 16
test eax, eax
jne .Lt_017A
mov eax, dword ptr [ebp-12]
and eax, 480
test eax, eax
jne .Lt_017C
push 0
push 1
push 0
push 1
call _ERRREPORTWARN
add esp, 16
jmp .Lt_017B
.Lt_017C:
mov eax, dword ptr [ebp-8]
and eax, 31
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-12]
and ecx, 31
cmp ecx, 20
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_017E
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+56]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jle .Lt_0180
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
jmp .Lt_012C
jmp .Lt_017F
.Lt_0180:
push 0
push 1
push 0
push 3
call _ERRREPORTWARN
add esp, 16
.Lt_017F:
jmp .Lt_017D
.Lt_017E:
push 0
push 1
push 0
push 3
call _ERRREPORTWARN
add esp, 16
.Lt_017D:
.Lt_017B:
.Lt_017A:
.Lt_0179:
jmp .Lt_0177
.Lt_0178:
mov eax, dword ptr [ebp-12]
and eax, 480
test eax, eax
je .Lt_0181
push 0
push 1
push 0
push 2
call _ERRREPORTWARN
add esp, 16
.Lt_0181:
.Lt_0177:
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-8]
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov esi, dword ptr [ebx+56]
mov ebx, dword ptr [ecx+32]
cmp ebx, dword ptr [esi+8]
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0183
mov ecx, dword ptr [ebp-8]
and ecx, 480
je .Lt_0184
mov dword ptr [ebp-16], 24
jmp .Lt_01D7
.Lt_0184:
mov ecx, dword ptr [ebp-8]
and ecx, 31
mov dword ptr [ebp-16], ecx
.Lt_01D7:
mov ecx, dword ptr [ebp-16]
imul ecx, 28
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .Lt_0186
mov dword ptr [ebp-20], 24
jmp .Lt_01D8
.Lt_0186:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-20], ecx
.Lt_01D8:
mov ecx, dword ptr [ebp-20]
imul ecx, 28
mov eax, dword ptr [ebp-32]
mov esi, dword ptr [_SYMB_DTYPETB+ecx+4]
cmp esi, dword ptr [_SYMB_DTYPETB+eax+4]
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov dword ptr [ebp-36], esi
mov esi, dword ptr [ebp-8]
and esi, 480
je .Lt_0188
mov dword ptr [ebp-24], 24
jmp .Lt_01D9
.Lt_0188:
mov esi, dword ptr [ebp-8]
and esi, 31
mov dword ptr [ebp-24], esi
.Lt_01D9:
mov esi, dword ptr [ebp-24]
imul esi, 28
mov dword ptr [ebp-40], esi
mov esi, dword ptr [ebp-12]
and esi, 480
je .Lt_018A
mov dword ptr [ebp-28], 24
jmp .Lt_01DA
.Lt_018A:
mov esi, dword ptr [ebp-12]
and esi, 31
mov dword ptr [ebp-28], esi
.Lt_01DA:
mov esi, dword ptr [ebp-28]
imul esi, 28
mov eax, dword ptr [ebp-40]
mov ecx, dword ptr [_SYMB_DTYPETB+esi]
cmp ecx, dword ptr [_SYMB_DTYPETB+eax]
setne cl
shr ecx, 1
sbb ecx, ecx
or ecx, dword ptr [ebp-36]
je .Lt_018D
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+56], 2
jne .Lt_018F
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+56]
call _ASTSKIPNOCONVCAST
add esp, 4
push eax
call _ASTCANTAKEADDROF
add esp, 4
test eax, eax
je .Lt_0191
push 0
push 0
push 58
call _ERRREPORT
add esp, 12
jmp .Lt_012C
.Lt_0191:
.Lt_0190:
.Lt_018F:
.Lt_018E:
.Lt_018D:
.Lt_018C:
push 0
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
call _ASTNEWCONV
add esp, 20
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx+56], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 0
jne .Lt_0193
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
jmp .Lt_012C
.Lt_0193:
.Lt_0192:
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+56]
mov eax, dword ptr [ecx+4]
and eax, 511
mov dword ptr [ebp-12], eax
.Lt_0183:
.Lt_0182:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 2
jne .Lt_0195
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HCHECKBYREFPARAM
add esp, 8
.Lt_0195:
.Lt_0194:
mov dword ptr [ebp-4], -1
.Lt_012C:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_01E1:
.int 0

.section .text
.balign 16
_HCREATEOPTARG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0196:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_0199
mov dword ptr [ebp-4], 0
jmp .Lt_0197
.Lt_0199:
.Lt_0198:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 36
jne .Lt_019B
push dword ptr [ebp-8]
call _ASTTYPEINICLONE
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _ASTTYPEINITRYREMOVE
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_019A
.Lt_019B:
push dword ptr [ebp-8]
call _ASTCLONETREE
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_019A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0197:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
