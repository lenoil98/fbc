	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBVARINIT@0
_SYMBVARINIT@0:
.Lt_0068:
push 0
push 0
push 0
push 0
push 0
push 0
push offset _Lt_006B
push 0
push 0
push 0
call _SYMBSTRUCTBEGIN@40
mov dword ptr [_SYMB+99628], eax
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_006F
push 0
push offset _Lt_006C
push dword ptr [_SYMB+99628]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_006F
push 0
push offset _Lt_006D
push dword ptr [_SYMB+99628]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_006F
push 0
push offset _Lt_006E
push dword ptr [_SYMB+99628]
call _SYMBADDFIELD@40
push 0
push dword ptr [_SYMB+99628]
call _SYMBSTRUCTEND@8
mov dword ptr [_SYMB+99612], 0
mov eax, dword ptr [_ENV+272]
mov dword ptr [_SYMB+99616], eax
mov eax, dword ptr [_ENV+272]
sal eax, 1
mov dword ptr [_SYMB+99620], eax
mov eax, dword ptr [_ENV+272]
imul eax, 6
mov dword ptr [_SYMB+99624], eax
mov eax, dword ptr [_ENV+272]
mov dword ptr [_SYMB+99632], eax
mov eax, dword ptr [_ENV+272]
sal eax, 1
mov dword ptr [_SYMB+99636], eax
.Lt_0069:
ret

.section .bss
.balign 4
	.lcomm	_Lt_0070,16

.section .data
.balign 4
_Lt_006F:
.int _Lt_0070
.int _Lt_0070
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBVAREND@0
_SYMBVAREND@0:
.Lt_0071:
.Lt_0072:
ret
.balign 16

.globl _SYMBGETDESCTYPEARRAYDTYPE@12
_SYMBGETDESCTYPEARRAYDTYPE@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0073:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+28]
and ecx, 480
add ecx, -32
or ebx, ecx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+28]
and eax, 261632
sar eax, 1
and eax, 261632
or ebx, eax
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+28]
and ecx, 32505856
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+32]
mov dword ptr [ecx], eax
.Lt_0074:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBGETDESCTYPEDIMENSIONS@4
_SYMBGETDESCTYPEDIMENSIONS@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_0075:
push 8
push offset _Lt_0077
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0079
mov dword ptr [ebp-4], -1
jmp .Lt_0076
.Lt_0079:
.Lt_0078:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_ENV+272]
imul ebx, 6
mov esi, ebx
mov ecx, esi
sar ecx, 31
mov edi, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
sub edi, esi
sbb ebx, ecx
mov esi, edi
mov dword ptr [ebp-8], esi
mov esi, dword ptr [_ENV+272]
imul esi, 3
mov edi, dword ptr [ebp-8]
mov eax, edi
cdq
idiv esi
mov edi, eax
mov dword ptr [ebp-12], edi
mov edi, dword ptr [ebp-12]
mov dword ptr [ebp-4], edi
.Lt_0076:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBADDARRAYDESCRIPTORTYPE@12
_SYMBADDARRAYDESCRIPTORTYPE@12:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.Lt_007A:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+12]
and eax, 511
cmp eax, 18
jne .Lt_007E
mov eax, dword ptr [ebp+12]
and eax, -512
or eax, 4
mov dword ptr [ebp+12], eax
.Lt_007E:
.Lt_007D:
push 0
push 8
push offset _Lt_0077
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp+8], 0
jle .Lt_0080
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrConcatAssign@20
.Lt_0080:
.Lt_007F:
push 0
push 2
push offset _Lt_0081
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0082
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
call _SYMBMANGLETYPE@16
call _SYMBMANGLERESETABBREV@0
push 0
push 2
push offset _Lt_0083
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-44]
push eax
lea eax, [ebp-40]
push eax
mov dword ptr [ebp-56], 0
lea eax, [ebp-56]
push eax
lea eax, [ebp-52]
push eax
lea eax, [ebp-48]
push eax
push dword ptr [ebp-16]
call _SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE@24
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .Lt_0086
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_007B
.Lt_0086:
.Lt_0085:
or dword ptr [ebp-48], 8192
push 1
push dword ptr [ebp-48]
push 0
push 0
push 0
push dword ptr [ebp-28]
push dword ptr [ebp-16]
push 0
push dword ptr [ebp-44]
push dword ptr [ebp-40]
call _SYMBSTRUCTBEGIN@40
mov dword ptr [ebp-32], eax
mov dword ptr [_Lt_0090], 0
mov dword ptr [_Lt_0090+4], 0
mov dword ptr [_Lt_0090+8], 0
mov dword ptr [_Lt_0090+12], 0
push 0
push 0
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
push eax
push offset _Lt_0091
push 0
push offset _Lt_0087
push dword ptr [ebp-32]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
push eax
push offset _Lt_0091
push 0
push offset _Lt_0088
push dword ptr [ebp-32]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_0091
push 0
push offset _Lt_0089
push dword ptr [ebp-32]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_0091
push 0
push offset _Lt_008A
push dword ptr [ebp-32]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_0091
push 0
push offset _Lt_008B
push dword ptr [ebp-32]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push 0
push 8
push offset _Lt_0091
push 0
push offset _Lt_008C
push dword ptr [ebp-32]
call _SYMBADDFIELD@40
cmp dword ptr [ebp+8], -1
jne .Lt_008E
mov dword ptr [ebp+8], 8
.Lt_008E:
.Lt_008D:
mov dword ptr [_Lt_0090], 0
mov dword ptr [_Lt_0090+4], 0
mov eax, dword ptr [ebp+8]
dec eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov dword ptr [_Lt_0090+8], ecx
mov dword ptr [_Lt_0090+12], ebx
push 0
push 0
push 0
push 0
push dword ptr [_SYMB+99628]
push 20
push offset _Lt_0091
push 1
push offset _Lt_008F
push dword ptr [ebp-32]
call _SYMBADDFIELD@40
push 0
push dword ptr [ebp-32]
call _SYMBSTRUCTEND@8
mov ecx, dword ptr [ebp-32]
mov dword ptr [ebp-4], ecx
lea ecx, [ebp-28]
push ecx
call _fb_StrDelete@4
lea ecx, [ebp-16]
push ecx
call _fb_StrDelete@4
.Lt_007B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0090,16

.section .data
.balign 4
_Lt_0091:
.int _Lt_0090
.int _Lt_0090
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBADDARRAYDESC@4
_SYMBADDARRAYDESC@4:
push ebp
mov ebp, esp
sub esp, 56
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0092:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
jne .Lt_0095
push 0
call _SYMBUNIQUEID@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
je .Lt_0097
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
.Lt_0097:
.Lt_0096:
mov dword ptr [ebp-24], 128
mov dword ptr [ebp-40], 16
jmp .Lt_0094
.Lt_0095:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 48
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-32]
je .Lt_0099
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 512
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_009B
push 0
push 0
push dword ptr [ebp-8]
push -1
push offset _Lt_00AF
call _fb_StrAssign@20
push 0
push -1
push 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _HMANGLEBUILTINTYPE@8
push eax
push -1
push offset _Lt_00AF
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_00AF
call _fb_StrAssign@20
cmp dword ptr [_ENV+104], 1
jne .Lt_009F
push 0
push 2
push offset _Lt_0081
push -1
push offset _Lt_00AF
call _fb_StrConcatAssign@20
.Lt_009F:
.Lt_009E:
mov eax, dword ptr [_Lt_00AF]
mov dword ptr [ebp-8], eax
.Lt_009B:
.Lt_009A:
jmp .Lt_0098
.Lt_0099:
push 0
call _SYMBUNIQUEID@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
je .Lt_00A1
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
.Lt_00A1:
.Lt_00A0:
mov dword ptr [ebp-40], 16
.Lt_0098:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 187
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-32], 0
jne .Lt_00A3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
je .Lt_00A5
and dword ptr [ebp-24], -17
.Lt_00A5:
.Lt_00A4:
and dword ptr [ebp-24], -33
.Lt_00A3:
.Lt_00A2:
.Lt_0094:
or dword ptr [ebp-24], 8192
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 12
jne .Lt_00A7
cmp dword ptr [_PARSER+96], 0
jne .Lt_00A9
mov ebx, dword ptr [_PARSER+104]
lea eax, [ebx+56]
mov dword ptr [ebp-28], eax
jmp .Lt_00A8
.Lt_00A9:
mov dword ptr [ebp-28], 0
.Lt_00A8:
jmp .Lt_00A6
.Lt_00A7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+164]
mov dword ptr [ebp-28], ebx
.Lt_00A6:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _SYMBADDARRAYDESCRIPTORTYPE@12
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push 20
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 1
push 0
push dword ptr [ebp-28]
push 0
push 1
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00AB
jmp .Lt_0093
.Lt_00AB:
.Lt_00AA:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
mov esi, dword ptr [eax+40]
mov ecx, dword ptr [eax+44]
mov dword ptr [ebx+40], esi
mov dword ptr [ebx+44], ecx
mov esi, dword ptr [ebp-16]
mov dword ptr [esi+48], 0
mov dword ptr [esi+52], 0
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [esi+12]
and ecx, 2
or ecx, dword ptr [ebp-40]
mov esi, dword ptr [ebp-16]
mov dword ptr [esi+12], ecx
push dword ptr [ebp-16]
call _SYMBVARINITFIELDS@4
mov ecx, dword ptr [ebp-16]
mov esi, dword ptr [ebp+8]
mov dword ptr [ecx+96], esi
mov esi, dword ptr [ebp-16]
mov dword ptr [ebp-4], esi
.Lt_0093:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00AF,12

.section .text
.balign 16

.globl _SYMBARRAYHASUNKNOWNBOUNDS@4
_SYMBARRAYHASUNKNOWNBOUNDS@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BD:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .Lt_00C0
jmp .Lt_00BE
.Lt_00C0:
.Lt_00BF:
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
dec eax
mov dword ptr [ebp-12], eax
jmp .Lt_00C2
.Lt_00C5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
sal ebx, 4
mov ecx, dword ptr [eax+68]
add ecx, ebx
cmp dword ptr [ecx+12], 2147483648
jne .Lt_00C7
cmp dword ptr [ecx+8], 0
jne .Lt_00C7
.Lt_00C8:
mov dword ptr [ebp-4], -1
jmp .Lt_00BE
.Lt_00C7:
.Lt_00C6:
.Lt_00C3:
inc dword ptr [ebp-8]
.Lt_00C2:
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
jle .Lt_00C5
.Lt_00C4:
.Lt_00BE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBMAYBEADDARRAYDESC@4
_SYMBMAYBEADDARRAYDESC@4:
push ebp
mov ebp, esp
push ebx
.Lt_00C9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
jne .Lt_00CC
jmp .Lt_00CA
.Lt_00CC:
.Lt_00CB:
push dword ptr [ebp+8]
call _SYMBARRAYHASUNKNOWNBOUNDS@4
test eax, eax
je .Lt_00CE
jmp .Lt_00CA
.Lt_00CE:
.Lt_00CD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+88], 0
jne .Lt_00D0
push dword ptr [ebp+8]
call _SYMBADDARRAYDESC@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+88], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [eax+92], ecx
push 0
push dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+88]
call _ASTBUILDARRAYDESCINITREE@12
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+88]
mov dword ptr [ebx+56], eax
.Lt_00D0:
.Lt_00CF:
.Lt_00CA:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBSETARRAYDIMTB@12
_SYMBSETARRAYDIMTB@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00D1:
push dword ptr [ebp+8]
call _SYMBDROPARRAYDIMS@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+12]
sal ebx, 4
push ebx
call _XALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_00D4
.Lt_00D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov ecx, dword ptr [eax+68]
add ecx, ebx
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov eax, dword ptr [ebp+16]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebx+8]
mov dword ptr [ecx+8], eax
mov eax, dword ptr [ebx+12]
mov dword ptr [ecx+12], eax
.Lt_00D5:
inc dword ptr [ebp-4]
.Lt_00D4:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ebx
jle .Lt_00D7
.Lt_00D6:
push dword ptr [ebp+8]
call _SYMBRECALCARRAYDIFFANDELEMENTS@4
.Lt_00D2:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS@16
_SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov ecx, dword ptr [eax+68]
add ecx, ebx
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
add eax, dword ptr [ecx]
adc ebx, dword ptr [ecx+4]
add eax, 4294967295
adc ebx, 4294967295
mov ecx, dword ptr [ebp-4]
mov dword ptr [ecx+8], eax
mov dword ptr [ecx+12], ebx
push dword ptr [ebp+8]
call _SYMBRECALCARRAYDIFFANDELEMENTS@4
.Lt_00D9:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _SYMBCHECKDYNAMICARRAYDIMENSIONS@8
_SYMBCHECKDYNAMICARRAYDIMENSIONS@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00DB:
cmp dword ptr [ebp+12], -1
jne .Lt_00DE
jmp .Lt_00DC
.Lt_00DE:
.Lt_00DD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp ebx, -1
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
cmp eax, dword ptr [ebp-4]
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00E0
push 0
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push 36
call _ERRREPORTEX@20
.Lt_00E0:
.Lt_00DF:
.Lt_00DC:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBVARINITFIELDS@4
_SYMBVARINITFIELDS@4:
push ebp
mov ebp, esp
push ebx
.Lt_00E3:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+72], 0
mov dword ptr [eax+76], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+80], 1
mov dword ptr [eax+84], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+88], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+92], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+96], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_PARSER+28]
mov dword ptr [eax+100], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+104], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+108], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+112], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+116], 0
.Lt_00E4:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBVARINITARRAYDIMENSIONS@12
_SYMBVARINITARRAYDIMENSIONS@12:
push ebp
mov ebp, esp
push ebx
.Lt_00E5:
cmp dword ptr [ebp+12], 0
je .Lt_00E8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .Lt_00EA
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
jmp .Lt_00E9
.Lt_00EA:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBSETARRAYDIMTB@12
.Lt_00E9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 12
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 16384
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_00EC
push dword ptr [ebp+8]
call _SYMBMAYBEADDARRAYDESC@4
.Lt_00EC:
.Lt_00EB:
.Lt_00E8:
.Lt_00E7:
.Lt_00E6:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBADDVAR@40
_SYMBADDVAR@40:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EF:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+40]
and eax, 57
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+28], 0
jg .Lt_00F2
jl .Lt_0107
cmp dword ptr [ebp+24], 0
ja .Lt_00F2
.Lt_0107:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _SYMBCALCLEN@8
mov dword ptr [ebp+24], eax
mov dword ptr [ebp+28], edx
.Lt_00F2:
.Lt_00F1:
cmp dword ptr [ebp+12], 0
jne .Lt_00F4
cmp dword ptr [_PARSER+100], 0
je .Lt_00F6
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.Lt_00F6:
.Lt_00F5:
mov dword ptr [ebp-24], 0
jmp .Lt_00F3
.Lt_00F4:
mov dword ptr [ebp-24], 512
.Lt_00F3:
cmp dword ptr [ebp-20], 0
jne .Lt_00F8
or dword ptr [ebp+40], 128
mov eax, dword ptr [ebp+44]
and eax, 2
test eax, eax
jne .Lt_00FA
mov eax, dword ptr [_SYMB+98544]
mov dword ptr [ebp-12], eax
jmp .Lt_00F9
.Lt_00FA:
mov eax, dword ptr [_PARSER+104]
lea edx, [eax+56]
mov dword ptr [ebp-12], edx
.Lt_00F9:
mov edx, dword ptr [_SYMB+98540]
mov dword ptr [ebp-16], edx
jmp .Lt_00F7
.Lt_00F8:
lea edx, [_SYMB+98408]
mov dword ptr [ebp-12], edx
lea edx, [_SYMB+98420]
mov dword ptr [ebp-16], edx
lea edx, [_SYMB+98352]
cmp dword ptr [_SYMB+98536], edx
je .Lt_00FC
mov edx, dword ptr [ebp+44]
and edx, 8
test edx, edx
jne .Lt_00FE
mov edx, dword ptr [_SYMB+98536]
lea eax, [edx+56]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_SYMB+98536]
lea edx, [eax+68]
mov dword ptr [ebp-16], edx
.Lt_00FE:
.Lt_00FD:
.Lt_00FC:
.Lt_00FB:
.Lt_00F7:
push 0
push dword ptr [ebp+40]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 1
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 0
mov edx, dword ptr [ebp+44]
or edx, 32
push edx
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0100
jmp .Lt_00F0
.Lt_0100:
.Lt_00FF:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-24]
or dword ptr [eax+12], edx
mov edx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov eax, dword ptr [ebp+28]
mov dword ptr [edx+40], ebx
mov dword ptr [edx+44], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+48], 0
mov dword ptr [ebx+52], 0
push dword ptr [ebp-8]
call _SYMBVARINITFIELDS@4
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call _SYMBVARINITARRAYDIMENSIONS@12
mov ebx, dword ptr [ebp+44]
and ebx, 2
test ebx, ebx
je .Lt_0102
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+52]
inc ebx
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+100], ebx
jmp .Lt_0101
.Lt_0102:
mov ebx, dword ptr [ebp+44]
and ebx, 8
test ebx, ebx
je .Lt_0103
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+36], 0
.Lt_0103:
.Lt_0101:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
mov edx, dword ptr [ebx+32]
cmp edx, dword ptr [_SYMB+98536]
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0105
mov ebx, dword ptr [ebp+20]
or dword ptr [ebx+120], 64
.Lt_0105:
.Lt_0104:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00F0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 40
.balign 16

.globl _SYMBADDTEMPVAR@8
_SYMBADDTEMPVAR@8:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_010A:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [_ENV+888]
and eax, 2
test eax, eax
jne .Lt_010E
or dword ptr [ebp-8], 2
.Lt_010E:
.Lt_010D:
push dword ptr [ebp-8]
push 4096
push offset _Lt_010F
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call _SYMBUNIQUEID@4
push eax
call _SYMBADDVAR@40
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_010B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0110,16

.section .data
.balign 4
_Lt_010F:
.int _Lt_0110
.int _Lt_0110
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBADDIMPLICITVAR@12
_SYMBADDIMPLICITVAR@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0111:
push dword ptr [ebp+16]
push 0
push offset _Lt_0114
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call _SYMBUNIQUEID@4
push eax
call _SYMBADDVAR@40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0112:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0115,16

.section .data
.balign 4
_Lt_0114:
.int _Lt_0115
.int _Lt_0115
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBADDANDALLOCATETEMPVAR@4
_SYMBADDANDALLOCATETEMPVAR@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0116:
push 0
push dword ptr [ebp+8]
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [_PARSER+104]
call dword ptr [_IR+40]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0117:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETREALSIZE@4
_SYMBGETREALSIZE@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0118:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .Lt_011A
mov eax, dword ptr [_ENV+272]
mov ebx, eax
sar ebx, 31
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], ebx
jmp .Lt_011C
.Lt_011A:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], ebx
.Lt_011C:
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], ecx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+80]
mov ecx, dword ptr [ebx+84]
push ecx
push eax
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-24]
pop dword ptr [ebp-20]
add esp, 8
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], eax
.Lt_0119:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETREALTYPE@12
_SYMBGETREALTYPE@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_011D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 114688
test ebx, ebx
je .Lt_0120
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 65536
test eax, eax
je .Lt_0122
mov dword ptr [ebp-4], 2
jmp .Lt_0121
.Lt_0122:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .Lt_0123
mov dword ptr [ebp-4], 3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
mov dword ptr [ebp-8], eax
jmp .Lt_0121
.Lt_0123:
mov dword ptr [ebp-4], 1
.Lt_0121:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call __Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_@16
jmp .Lt_011F
.Lt_0120:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0124
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
and ebx, 31
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
and ecx, 261632
sal ecx, 1
or ebx, ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
and eax, 32505856
or ebx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.Lt_0124:
.Lt_011F:
.Lt_011E:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBCALCARRAYELEMENTS@8
_SYMBCALCARRAYELEMENTS@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0127:
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
dec ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_012A
.Lt_012D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-20]
sal eax, 4
mov ecx, dword ptr [ebx+68]
add ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
sal ebx, 4
mov esi, dword ptr [eax+68]
add esi, ebx
mov eax, dword ptr [ecx+8]
mov ebx, dword ptr [ecx+12]
sub eax, dword ptr [esi]
sbb ebx, dword ptr [esi+4]
add eax, 1
adc ebx, 0
push ebx
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-16]
pop dword ptr [ebp-12]
add esp, 8
.Lt_012B:
inc dword ptr [ebp-20]
.Lt_012A:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .Lt_012D
.Lt_012C:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
.Lt_0128:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBCHECKARRAYSIZE@20
_SYMBCHECKARRAYSIZE@20:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_012E:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-12], 1
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-32], eax
jmp .Lt_0131
.Lt_0134:
mov eax, dword ptr [ebp-28]
sal eax, 4
mov ebx, dword ptr [ebp+12]
add ebx, eax
cmp dword ptr [ebx+12], 2147483648
jne .Lt_0136
cmp dword ptr [ebx+8], 0
jne .Lt_0136
.Lt_0143:
mov dword ptr [ebp-20], 1
mov dword ptr [ebp-16], 0
jmp .Lt_0135
.Lt_0136:
mov ebx, dword ptr [ebp-28]
sal ebx, 4
mov eax, dword ptr [ebp+12]
add eax, ebx
mov ebx, dword ptr [ebp-28]
sal ebx, 4
mov ecx, dword ptr [ebp+12]
add ecx, ebx
mov esi, dword ptr [eax+8]
mov ebx, dword ptr [eax+12]
sub esi, dword ptr [ecx]
sbb ebx, dword ptr [ecx+4]
add esi, 1
adc ebx, 0
mov eax, esi
mov ecx, ebx
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ecx
.Lt_0135:
cmp dword ptr [ebp-16], 0
jb .Lt_0138
ja .Lt_0144
cmp dword ptr [ebp-20], 2147483647
jbe .Lt_0138
.Lt_0144:
mov dword ptr [ebp-24], -1
jmp .Lt_0133
.Lt_0138:
.Lt_0137:
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ebp-16]
push eax
push ecx
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-12]
pop dword ptr [ebp-8]
add esp, 8
cmp dword ptr [ebp-8], 0
jb .Lt_013A
ja .Lt_0145
cmp dword ptr [ebp-12], 2147483647
jbe .Lt_013A
.Lt_0145:
mov dword ptr [ebp-24], -1
jmp .Lt_0133
.Lt_013A:
.Lt_0139:
.Lt_0132:
inc dword ptr [ebp-28]
.Lt_0131:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ecx
jle .Lt_0134
.Lt_0133:
cmp dword ptr [ebp-24], 0
jne .Lt_013C
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+20]
push ecx
push eax
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push eax
mov eax, [esp+4]
mul dword ptr [esp+12]
xchg eax, [esp+4]
imul eax, [esp+16]
add eax, edx
mov edx, [esp+8]
imul edx, [esp+12]
add edx, eax
mov [esp+8], edx
pop eax
pop dword ptr [ebp-12]
pop dword ptr [ebp-8]
add esp, 8
cmp dword ptr [ebp-8], 0
jb .Lt_013E
ja .Lt_0146
cmp dword ptr [ebp-12], 2147483647
jbe .Lt_013E
.Lt_0146:
mov dword ptr [ebp-24], -1
.Lt_013E:
.Lt_013D:
.Lt_013C:
.Lt_013B:
cmp dword ptr [ebp-24], 0
je .Lt_0140
mov dword ptr [ebp-4], 0
jmp .Lt_013F
.Lt_0140:
mov ecx, dword ptr [_ENV+228]
mov eax, ecx
sar eax, 31
cmp dword ptr [ebp-8], eax
mov esi, -1
ja .Lt_0147
jb .Lt_0148
cmp dword ptr [ebp-12], ecx
ja .Lt_0147
.Lt_0148:
xor esi, esi
.Lt_0147:
and esi, dword ptr [ebp+24]
je .Lt_0142
push 0
push 1
push 0
push 23
call _ERRREPORTWARN@16
.Lt_0142:
.Lt_0141:
mov dword ptr [ebp-4], -1
.Lt_013F:
.Lt_012F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _SYMBGETVARHASCTOR@4
_SYMBGETVARHASCTOR@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0149:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512011
test ebx, ebx
je .Lt_014C
mov dword ptr [ebp-4], 0
jmp .Lt_014A
.Lt_014C:
.Lt_014B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .Lt_014F
.Lt_0150:
mov dword ptr [ebp-4], -1
jmp .Lt_014A
jmp .Lt_014D
.Lt_014F:
cmp dword ptr [ebp-8], 39
jne .Lt_0151
.Lt_0152:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .Lt_0154
mov dword ptr [ebp-4], -1
jmp .Lt_014A
.Lt_0154:
.Lt_0153:
.Lt_0151:
.Lt_014D:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .Lt_0156
mov dword ptr [ebp-4], -1
jmp .Lt_014A
.Lt_0156:
.Lt_0155:
push dword ptr [ebp+8]
call _SYMBHASCTOR@4
mov dword ptr [ebp-4], eax
.Lt_014A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETVARHASDTOR@4
_SYMBGETVARHASDTOR@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0157:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512011
test ebx, ebx
je .Lt_015A
mov dword ptr [ebp-4], 0
jmp .Lt_0158
.Lt_015A:
.Lt_0159:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .Lt_015D
.Lt_015E:
mov dword ptr [ebp-4], -1
jmp .Lt_0158
jmp .Lt_015B
.Lt_015D:
cmp dword ptr [ebp-8], 39
jne .Lt_015F
.Lt_0160:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .Lt_0162
mov dword ptr [ebp-4], -1
jmp .Lt_0158
.Lt_0162:
.Lt_0161:
.Lt_015F:
.Lt_015B:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
je .Lt_0164
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
je .Lt_0166
mov dword ptr [ebp-4], -1
jmp .Lt_0158
.Lt_0166:
.Lt_0165:
.Lt_0164:
.Lt_0163:
push dword ptr [ebp+8]
call _SYMBHASDTOR@4
mov dword ptr [ebp-4], eax
.Lt_0158:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBCLONEVAR@4
_SYMBCLONEVAR@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0167:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 8192
test ebx, ebx
je .Lt_016B
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+96]
call _SYMBADDARRAYDESC@4
mov dword ptr [ebp-4], eax
jmp .Lt_016A
.Lt_016B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4096
test ebx, ebx
je .Lt_016C
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-4], eax
jmp .Lt_016A
.Lt_016C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .Lt_016E
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
dec eax
mov dword ptr [ebp-12], eax
jmp .Lt_0170
.Lt_0173:
mov eax, dword ptr [ebp-8]
sal eax, 4
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov esi, dword ptr [ebx+68]
add esi, ecx
mov ebx, dword ptr [esi]
mov dword ptr [_Lt_0174+eax], ebx
mov ebx, dword ptr [esi+4]
mov dword ptr [_Lt_0174+eax+4], ebx
mov ebx, dword ptr [esi+8]
mov dword ptr [_Lt_0174+eax+8], ebx
mov ebx, dword ptr [esi+12]
mov dword ptr [_Lt_0174+eax+12], ebx
.Lt_0171:
inc dword ptr [ebp-8]
.Lt_0170:
mov esi, dword ptr [ebp-12]
cmp dword ptr [ebp-8], esi
jle .Lt_0173
.Lt_0172:
.Lt_016E:
.Lt_016D:
push 0
mov esi, dword ptr [ebp+8]
push dword ptr [esi+4]
push offset _Lt_0175
mov esi, dword ptr [ebp+8]
push dword ptr [esi+64]
push 0
push 0
mov esi, dword ptr [ebp+8]
push dword ptr [esi+32]
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+28]
and eax, 511
push eax
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _SYMBADDVAR@40
mov dword ptr [ebp-4], eax
.Lt_016A:
.Lt_0168:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0174,128

.section .data
.balign 4
_Lt_0175:
.int _Lt_0174
.int _Lt_0174
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16

.globl _SYMBVARCHECKACCESS@4
_SYMBVARCHECKACCESS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0176:
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
je .Lt_0179
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .Lt_017B
mov ebx, dword ptr [ebp+8]
movzx eax, word ptr [ebx+36]
test eax, eax
jne .Lt_017D
mov dword ptr [ebp-4], 0
jmp .Lt_0177
.Lt_017D:
.Lt_017C:
jmp .Lt_017A
.Lt_017B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1
test ebx, ebx
jne .Lt_017E
mov dword ptr [ebp-4], 0
jmp .Lt_0177
.Lt_017E:
.Lt_017A:
.Lt_0179:
.Lt_0178:
mov dword ptr [ebp-4], -1
.Lt_0177:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBDELVAR@8
_SYMBDELVAR@8:
push ebp
mov ebp, esp
push ebx
.Lt_017F:
push dword ptr [ebp+8]
call _SYMBDROPARRAYDIMS@4
cmp dword ptr [ebp+12], 0
jne .Lt_0182
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+88], 0
je .Lt_0184
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+88]
call _SYMBDELSYMBOL@8
.Lt_0184:
.Lt_0183:
.Lt_0182:
.Lt_0181:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .Lt_0186
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 7
jne .Lt_0188
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_018A
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_018C
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _free
add esp, 4
.Lt_018C:
.Lt_018B:
.Lt_018A:
.Lt_0189:
jmp .Lt_0187
.Lt_0188:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_018E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_0190
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _free
add esp, 4
.Lt_0190:
.Lt_018F:
.Lt_018E:
.Lt_018D:
.Lt_0187:
.Lt_0186:
.Lt_0185:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL@4
.Lt_0180:
pop ebx
mov esp, ebp
pop ebp
ret 8
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
_SYMBDROPARRAYDIMS@4:
push ebp
mov ebp, esp
.Lt_00B0:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 0
.Lt_00B1:
mov esp, ebp
pop ebp
ret 4
.balign 16
_SYMBRECALCARRAYDIFF@4:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.Lt_00B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
dec eax
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-32], eax
jmp .Lt_00B5
.Lt_00B8:
mov eax, dword ptr [ebp-28]
sal eax, 4
mov ebx, dword ptr [ebp-24]
add ebx, eax
mov eax, dword ptr [ebp-28]
sal eax, 4
mov ecx, dword ptr [ebp-24]
add ecx, eax
mov esi, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
sub esi, dword ptr [ecx+16]
sbb eax, dword ptr [ecx+20]
add esi, 1
adc eax, 0
mov dword ptr [ebp-16], esi
mov dword ptr [ebp-12], eax
mov esi, dword ptr [ebp-28]
sal esi, 4
mov eax, dword ptr [ebp-24]
add eax, esi
mov ecx, dword ptr [eax]
mov esi, dword ptr [eax+4]
add ecx, dword ptr [ebp-8]
adc esi, dword ptr [ebp-4]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push esi
push ecx
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop ecx
pop esi
add esp, 8
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], esi
.Lt_00B6:
inc dword ptr [ebp-28]
.Lt_00B5:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ecx
jle .Lt_00B8
.Lt_00B7:
mov ecx, dword ptr [ebp-20]
sal ecx, 4
mov esi, dword ptr [ebp-24]
add esi, ecx
mov eax, dword ptr [esi]
mov ecx, dword ptr [esi+4]
add eax, dword ptr [ebp-8]
adc ecx, dword ptr [ebp-4]
mov esi, dword ptr [ebp+8]
push dword ptr [esi+44]
push dword ptr [esi+40]
push ecx
push eax
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop eax
pop ecx
add esp, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-4]
neg ecx
adc eax, 0
neg eax
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+72], ecx
mov dword ptr [esi+76], eax
.Lt_00B3:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_SYMBRECALCARRAYDIFFANDELEMENTS@4:
push ebp
mov ebp, esp
push ebx
.Lt_00B9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
jle .Lt_00BC
push dword ptr [ebp+8]
call _SYMBRECALCARRAYDIFF@4
push 0
push dword ptr [ebp+8]
call _SYMBCALCARRAYELEMENTS@8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+80], eax
mov dword ptr [ebx+84], edx
jmp .Lt_00BB
.Lt_00BC:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+72], 0
mov dword ptr [eax+76], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+80], 1
mov dword ptr [eax+84], 0
.Lt_00BB:
.Lt_00BA:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_006B:	.ascii	"__FB_ARRAYDIMTB$\0"
.balign 4
_Lt_006C:	.ascii	"elements\0"
.balign 4
_Lt_006D:	.ascii	"lbound\0"
.balign 4
_Lt_006E:	.ascii	"ubound\0"
.balign 4
_Lt_0077:	.ascii	"FBARRAY\0"
.balign 4
_Lt_0081:	.ascii	"$\0"
.balign 4
_Lt_0082:	.ascii	"<\0"
.balign 4
_Lt_0083:	.ascii	">\0"
.balign 4
_Lt_0087:	.ascii	"data\0"
.balign 4
_Lt_0088:	.ascii	"ptr\0"
.balign 4
_Lt_0089:	.ascii	"size\0"
.balign 4
_Lt_008A:	.ascii	"element_len\0"
.balign 4
_Lt_008B:	.ascii	"dimensions\0"
.balign 4
_Lt_008C:	.ascii	"flags\0"
.balign 4
_Lt_008F:	.ascii	"dimTB\0"
