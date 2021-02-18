	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBVARINIT
SYMBVARINIT:
.Lt_0067:
push 0
push 0
push 0
push 0
push 0
push 0
push offset Lt_006A
push 0
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [SYMB+99620], eax
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_006E
push 0
push offset Lt_006B
push dword ptr [SYMB+99620]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_006E
push 0
push offset Lt_006C
push dword ptr [SYMB+99620]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_006E
push 0
push offset Lt_006D
push dword ptr [SYMB+99620]
call SYMBADDFIELD
add esp, 40
push 0
push dword ptr [SYMB+99620]
call SYMBSTRUCTEND
add esp, 8
mov dword ptr [SYMB+99604], 0
mov eax, dword ptr [ENV+272]
mov dword ptr [SYMB+99608], eax
mov eax, dword ptr [ENV+272]
sal eax, 1
mov dword ptr [SYMB+99612], eax
mov eax, dword ptr [ENV+272]
imul eax, 6
mov dword ptr [SYMB+99616], eax
mov eax, dword ptr [ENV+272]
mov dword ptr [SYMB+99624], eax
mov eax, dword ptr [ENV+272]
sal eax, 1
mov dword ptr [SYMB+99628], eax
.Lt_0068:
ret

.section .bss
.balign 4
	.lcomm	Lt_006F,16

.section .data
.balign 4
Lt_006E:
.int Lt_006F
.int Lt_006F
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBVAREND
SYMBVAREND:
.Lt_0070:
.Lt_0071:
ret
.balign 16

.globl SYMBGETDESCTYPEARRAYDTYPE
SYMBGETDESCTYPEARRAYDTYPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0072:
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 4
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
.Lt_0073:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETDESCTYPEDIMENSIONS
SYMBGETDESCTYPEDIMENSIONS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_0074:
push 8
push offset Lt_0076
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0078
mov dword ptr [ebp-4], -1
jmp .Lt_0075
.Lt_0078:
.Lt_0077:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ENV+272]
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
mov esi, dword ptr [ENV+272]
imul esi, 3
mov edi, dword ptr [ebp-8]
mov eax, edi
cdq
idiv esi
mov edi, eax
mov dword ptr [ebp-12], edi
mov edi, dword ptr [ebp-12]
mov dword ptr [ebp-4], edi
.Lt_0075:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDARRAYDESCRIPTORTYPE
SYMBADDARRAYDESCRIPTORTYPE:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.Lt_0079:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+12]
and eax, 511
cmp eax, 18
jne .Lt_007D
mov eax, dword ptr [ebp+12]
and eax, -512
or eax, 4
mov dword ptr [ebp+12], eax
.Lt_007D:
.Lt_007C:
push 0
push 8
push offset Lt_0076
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
cmp dword ptr [ebp+8], 0
jle .Lt_007F
push 0
push -1
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrConcatAssign
add esp, 20
.Lt_007F:
.Lt_007E:
push 0
push 2
push offset Lt_0080
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset Lt_0081
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
push 1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
call SYMBMANGLETYPE
add esp, 16
call SYMBMANGLERESETABBREV
push 0
push 2
push offset Lt_0082
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
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
call SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE
add esp, 24
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
je .Lt_0085
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_007A
.Lt_0085:
.Lt_0084:
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
call SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [ebp-32], eax
mov dword ptr [Lt_008F], 0
mov dword ptr [Lt_008F+4], 0
mov dword ptr [Lt_008F+8], 0
mov dword ptr [Lt_008F+12], 0
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
push offset Lt_0090
push 0
push offset Lt_0086
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 40
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
push offset Lt_0090
push 0
push offset Lt_0087
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_0090
push 0
push offset Lt_0088
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_0090
push 0
push offset Lt_0089
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_0090
push 0
push offset Lt_008A
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 8
push offset Lt_0090
push 0
push offset Lt_008B
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 40
cmp dword ptr [ebp+8], -1
jne .Lt_008D
mov dword ptr [ebp+8], 8
.Lt_008D:
.Lt_008C:
mov dword ptr [Lt_008F], 0
mov dword ptr [Lt_008F+4], 0
mov eax, dword ptr [ebp+8]
dec eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov dword ptr [Lt_008F+8], ecx
mov dword ptr [Lt_008F+12], ebx
push 0
push 0
push 0
push 0
push dword ptr [SYMB+99620]
push 20
push offset Lt_0090
push 1
push offset Lt_008E
push dword ptr [ebp-32]
call SYMBADDFIELD
add esp, 40
push 0
push dword ptr [ebp-32]
call SYMBSTRUCTEND
add esp, 8
mov ecx, dword ptr [ebp-32]
mov dword ptr [ebp-4], ecx
lea ecx, [ebp-28]
push ecx
call fb_StrDelete
add esp, 4
lea ecx, [ebp-16]
push ecx
call fb_StrDelete
add esp, 4
.Lt_007A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_008F,16

.section .data
.balign 4
Lt_0090:
.int Lt_008F
.int Lt_008F
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBADDARRAYDESC
SYMBADDARRAYDESC:
push ebp
mov ebp, esp
sub esp, 56
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0091:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
jne .Lt_0094
push 0
call SYMBUNIQUEID
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
je .Lt_0096
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
.Lt_0096:
.Lt_0095:
mov dword ptr [ebp-24], 128
mov dword ptr [ebp-40], 16
jmp .Lt_0093
.Lt_0094:
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
je .Lt_0098
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
je .Lt_009A
push 0
push 0
push dword ptr [ebp-8]
push -1
push offset Lt_00AE
call fb_StrAssign
add esp, 20
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
call HMANGLEBUILTINTYPE
add esp, 8
push eax
push -1
push offset Lt_00AE
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_00AE
call fb_StrAssign
add esp, 20
cmp dword ptr [ENV+104], 1
jne .Lt_009E
push 0
push 2
push offset Lt_0080
push -1
push offset Lt_00AE
call fb_StrConcatAssign
add esp, 20
.Lt_009E:
.Lt_009D:
mov eax, dword ptr [Lt_00AE]
mov dword ptr [ebp-8], eax
.Lt_009A:
.Lt_0099:
jmp .Lt_0097
.Lt_0098:
push 0
call SYMBUNIQUEID
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
je .Lt_00A0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-12], ebx
.Lt_00A0:
.Lt_009F:
mov dword ptr [ebp-40], 16
.Lt_0097:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 187
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-32], 0
jne .Lt_00A2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
je .Lt_00A4
and dword ptr [ebp-24], -17
.Lt_00A4:
.Lt_00A3:
and dword ptr [ebp-24], -33
.Lt_00A2:
.Lt_00A1:
.Lt_0093:
or dword ptr [ebp-24], 8192
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 12
jne .Lt_00A6
cmp dword ptr [PARSER+96], 0
jne .Lt_00A8
mov ebx, dword ptr [PARSER+104]
lea eax, [ebx+56]
mov dword ptr [ebp-28], eax
jmp .Lt_00A7
.Lt_00A8:
mov dword ptr [ebp-28], 0
.Lt_00A7:
jmp .Lt_00A5
.Lt_00A6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-28], ebx
.Lt_00A5:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+60]
call SYMBADDARRAYDESCRIPTORTYPE
add esp, 12
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
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00AA
jmp .Lt_0092
.Lt_00AA:
.Lt_00A9:
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
call SYMBVARINITFIELDS
add esp, 4
mov ecx, dword ptr [ebp-16]
mov esi, dword ptr [ebp+8]
mov dword ptr [ecx+92], esi
mov esi, dword ptr [ebp-16]
mov dword ptr [ebp-4], esi
.Lt_0092:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00AE,12

.section .text
.balign 16

.globl SYMBARRAYHASUNKNOWNBOUNDS
SYMBARRAYHASUNKNOWNBOUNDS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BC:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .Lt_00BF
jmp .Lt_00BD
.Lt_00BF:
.Lt_00BE:
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-12], eax
jmp .Lt_00C1
.Lt_00C4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
cmp dword ptr [ecx+12], 2147483648
jne .Lt_00C6
cmp dword ptr [ecx+8], 0
jne .Lt_00C6
.Lt_00C7:
mov dword ptr [ebp-4], -1
jmp .Lt_00BD
.Lt_00C6:
.Lt_00C5:
.Lt_00C2:
inc dword ptr [ebp-8]
.Lt_00C1:
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ebp-8], ecx
jle .Lt_00C4
.Lt_00C3:
.Lt_00BD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBMAYBEADDARRAYDESC
SYMBMAYBEADDARRAYDESC:
push ebp
mov ebp, esp
push ebx
.Lt_00C8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jne .Lt_00CB
jmp .Lt_00C9
.Lt_00CB:
.Lt_00CA:
push dword ptr [ebp+8]
call SYMBARRAYHASUNKNOWNBOUNDS
add esp, 4
test eax, eax
je .Lt_00CD
jmp .Lt_00C9
.Lt_00CD:
.Lt_00CC:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 0
jne .Lt_00CF
push dword ptr [ebp+8]
call SYMBADDARRAYDESC
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+84], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+32]
mov dword ptr [eax+88], ecx
push 0
push dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+84]
call ASTBUILDARRAYDESCINITREE
add esp, 12
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+84]
mov dword ptr [ebx+56], eax
.Lt_00CF:
.Lt_00CE:
.Lt_00C9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBSETARRAYDIMTB
SYMBSETARRAYDIMTB:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00D0:
push dword ptr [ebp+8]
call SYMBDROPARRAYDIMS
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp+12]
sal ebx, 4
push ebx
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_00D3
.Lt_00D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
sal ebx, 4
mov ecx, dword ptr [eax+64]
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
.Lt_00D4:
inc dword ptr [ebp-4]
.Lt_00D3:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ebx
jle .Lt_00D6
.Lt_00D5:
push dword ptr [ebp+8]
call SYMBRECALCARRAYDIFFANDELEMENTS
add esp, 4
.Lt_00D1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS
SYMBSETFIXEDSIZEARRAYDIMENSIONELEMENTS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sal ebx, 4
mov ecx, dword ptr [eax+64]
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
call SYMBRECALCARRAYDIFFANDELEMENTS
add esp, 4
.Lt_00D8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCHECKDYNAMICARRAYDIMENSIONS
SYMBCHECKDYNAMICARRAYDIMENSIONS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00DA:
cmp dword ptr [ebp+12], -1
jne .Lt_00DD
jmp .Lt_00DB
.Lt_00DD:
.Lt_00DC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
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
je .Lt_00DF
push 0
push 1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push 36
call ERRREPORTEX
add esp, 20
.Lt_00DF:
.Lt_00DE:
.Lt_00DB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBVARINITFIELDS
SYMBVARINITFIELDS:
push ebp
mov ebp, esp
push ebx
.Lt_00E2:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+60], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 0
mov dword ptr [eax+72], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+76], 1
mov dword ptr [eax+80], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+84], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+88], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+92], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [PARSER+28]
mov dword ptr [eax+96], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+100], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+104], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+108], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+112], 0
.Lt_00E3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBVARINITARRAYDIMENSIONS
SYMBVARINITARRAYDIMENSIONS:
push ebp
mov ebp, esp
push ebx
.Lt_00E4:
cmp dword ptr [ebp+12], 0
je .Lt_00E7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .Lt_00E9
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
jmp .Lt_00E8
.Lt_00E9:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBSETARRAYDIMTB
add esp, 12
.Lt_00E8:
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
je .Lt_00EB
push dword ptr [ebp+8]
call SYMBMAYBEADDARRAYDESC
add esp, 4
.Lt_00EB:
.Lt_00EA:
.Lt_00E7:
.Lt_00E6:
.Lt_00E5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDVAR
SYMBADDVAR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EE:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+40]
and eax, 57
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+28], 0
jg .Lt_00F1
jl .Lt_0106
cmp dword ptr [ebp+24], 0
ja .Lt_00F1
.Lt_0106:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call SYMBCALCLEN
add esp, 8
mov dword ptr [ebp+24], eax
mov dword ptr [ebp+28], edx
.Lt_00F1:
.Lt_00F0:
cmp dword ptr [ebp+12], 0
jne .Lt_00F3
cmp dword ptr [PARSER+100], 0
je .Lt_00F5
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.Lt_00F5:
.Lt_00F4:
mov dword ptr [ebp-24], 0
jmp .Lt_00F2
.Lt_00F3:
mov dword ptr [ebp-24], 512
.Lt_00F2:
cmp dword ptr [ebp-20], 0
jne .Lt_00F7
or dword ptr [ebp+40], 128
mov eax, dword ptr [ebp+44]
and eax, 2
test eax, eax
jne .Lt_00F9
mov eax, dword ptr [SYMB+98536]
mov dword ptr [ebp-12], eax
jmp .Lt_00F8
.Lt_00F9:
mov eax, dword ptr [PARSER+104]
lea edx, [eax+56]
mov dword ptr [ebp-12], edx
.Lt_00F8:
mov edx, dword ptr [SYMB+98532]
mov dword ptr [ebp-16], edx
jmp .Lt_00F6
.Lt_00F7:
lea edx, [SYMB+98408]
mov dword ptr [ebp-12], edx
lea edx, [SYMB+98420]
mov dword ptr [ebp-16], edx
lea edx, [SYMB+98352]
cmp dword ptr [SYMB+98528], edx
je .Lt_00FB
mov edx, dword ptr [ebp+44]
and edx, 8
test edx, edx
jne .Lt_00FD
mov edx, dword ptr [SYMB+98528]
lea eax, [edx+56]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [SYMB+98528]
lea edx, [eax+68]
mov dword ptr [ebp-16], edx
.Lt_00FD:
.Lt_00FC:
.Lt_00FB:
.Lt_00FA:
.Lt_00F6:
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
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00FF
jmp .Lt_00EF
.Lt_00FF:
.Lt_00FE:
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
call SYMBVARINITFIELDS
add esp, 4
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call SYMBVARINITARRAYDIMENSIONS
add esp, 12
mov ebx, dword ptr [ebp+44]
and ebx, 2
test ebx, ebx
je .Lt_0101
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+52]
inc ebx
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+96], ebx
jmp .Lt_0100
.Lt_0101:
mov ebx, dword ptr [ebp+44]
and ebx, 8
test ebx, ebx
je .Lt_0102
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+36], 0
.Lt_0102:
.Lt_0100:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
mov edx, dword ptr [ebx+32]
cmp edx, dword ptr [SYMB+98528]
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0104
mov ebx, dword ptr [ebp+20]
or dword ptr [ebx+116], 64
.Lt_0104:
.Lt_0103:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00EF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDTEMPVAR
SYMBADDTEMPVAR:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0109:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ENV+888]
and eax, 2
test eax, eax
jne .Lt_010D
or dword ptr [ebp-8], 2
.Lt_010D:
.Lt_010C:
push dword ptr [ebp-8]
push 4096
push offset Lt_010E
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_010A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_010F,16

.section .data
.balign 4
Lt_010E:
.int Lt_010F
.int Lt_010F
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBADDIMPLICITVAR
SYMBADDIMPLICITVAR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0110:
push dword ptr [ebp+16]
push 0
push offset Lt_0113
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0111:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0114,16

.section .data
.balign 4
Lt_0113:
.int Lt_0114
.int Lt_0114
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBADDANDALLOCATETEMPVAR
SYMBADDANDALLOCATETEMPVAR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0115:
push 0
push dword ptr [ebp+8]
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [PARSER+104]
call dword ptr [IR+40]
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0116:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETREALSIZE
SYMBGETREALSIZE:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0117:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 262144
test ebx, ebx
je .Lt_0119
mov eax, dword ptr [ENV+272]
mov ebx, eax
sar ebx, 31
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], ebx
jmp .Lt_011B
.Lt_0119:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-16], ecx
mov dword ptr [ebp-12], ebx
.Lt_011B:
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-20], ecx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+76]
mov ecx, dword ptr [ebx+80]
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
.Lt_0118:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETREALTYPE
SYMBGETREALTYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_011C:
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
je .Lt_011F
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 65536
test eax, eax
je .Lt_0121
mov dword ptr [ebp-4], 2
jmp .Lt_0120
.Lt_0121:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .Lt_0122
mov dword ptr [ebp-4], 3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-8], eax
jmp .Lt_0120
.Lt_0122:
mov dword ptr [ebp-4], 1
.Lt_0120:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_
add esp, 16
jmp .Lt_011E
.Lt_011F:
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
je .Lt_0123
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
.Lt_0123:
.Lt_011E:
.Lt_011D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCALCARRAYELEMENTS
SYMBCALCARRAYELEMENTS:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0126:
mov dword ptr [ebp-16], 1
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_0129
.Lt_012C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-20]
sal eax, 4
mov ecx, dword ptr [ebx+64]
add ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
sal ebx, 4
mov esi, dword ptr [eax+64]
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
.Lt_012A:
inc dword ptr [ebp-20]
.Lt_0129:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jle .Lt_012C
.Lt_012B:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
.Lt_0127:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCHECKARRAYSIZE
SYMBCHECKARRAYSIZE:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_012D:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-12], 1
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-32], eax
jmp .Lt_0130
.Lt_0133:
mov eax, dword ptr [ebp-28]
sal eax, 4
mov ebx, dword ptr [ebp+12]
add ebx, eax
cmp dword ptr [ebx+12], 2147483648
jne .Lt_0135
cmp dword ptr [ebx+8], 0
jne .Lt_0135
.Lt_0142:
mov dword ptr [ebp-20], 1
mov dword ptr [ebp-16], 0
jmp .Lt_0134
.Lt_0135:
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
.Lt_0134:
cmp dword ptr [ebp-16], 0
jb .Lt_0137
ja .Lt_0143
cmp dword ptr [ebp-20], 2147483647
jbe .Lt_0137
.Lt_0143:
mov dword ptr [ebp-24], -1
jmp .Lt_0132
.Lt_0137:
.Lt_0136:
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
jb .Lt_0139
ja .Lt_0144
cmp dword ptr [ebp-12], 2147483647
jbe .Lt_0139
.Lt_0144:
mov dword ptr [ebp-24], -1
jmp .Lt_0132
.Lt_0139:
.Lt_0138:
.Lt_0131:
inc dword ptr [ebp-28]
.Lt_0130:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ecx
jle .Lt_0133
.Lt_0132:
cmp dword ptr [ebp-24], 0
jne .Lt_013B
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
jb .Lt_013D
ja .Lt_0145
cmp dword ptr [ebp-12], 2147483647
jbe .Lt_013D
.Lt_0145:
mov dword ptr [ebp-24], -1
.Lt_013D:
.Lt_013C:
.Lt_013B:
.Lt_013A:
cmp dword ptr [ebp-24], 0
je .Lt_013F
mov dword ptr [ebp-4], 0
jmp .Lt_013E
.Lt_013F:
mov ecx, dword ptr [ENV+228]
mov eax, ecx
sar eax, 31
cmp dword ptr [ebp-8], eax
mov esi, -1
ja .Lt_0146
jb .Lt_0147
cmp dword ptr [ebp-12], ecx
ja .Lt_0146
.Lt_0147:
xor esi, esi
.Lt_0146:
and esi, dword ptr [ebp+24]
je .Lt_0141
push 0
push 1
push 0
push 23
call ERRREPORTWARN
add esp, 16
.Lt_0141:
.Lt_0140:
mov dword ptr [ebp-4], -1
.Lt_013E:
.Lt_012E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETVARHASCTOR
SYMBGETVARHASCTOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0148:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512011
test ebx, ebx
je .Lt_014B
mov dword ptr [ebp-4], 0
jmp .Lt_0149
.Lt_014B:
.Lt_014A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .Lt_014E
.Lt_014F:
mov dword ptr [ebp-4], -1
jmp .Lt_0149
jmp .Lt_014C
.Lt_014E:
cmp dword ptr [ebp-8], 39
jne .Lt_0150
.Lt_0151:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .Lt_0153
mov dword ptr [ebp-4], -1
jmp .Lt_0149
.Lt_0153:
.Lt_0152:
.Lt_0150:
.Lt_014C:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
je .Lt_0155
mov dword ptr [ebp-4], -1
jmp .Lt_0149
.Lt_0155:
.Lt_0154:
push dword ptr [ebp+8]
call SYMBHASCTOR
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0149:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETVARHASDTOR
SYMBGETVARHASDTOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0156:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512011
test ebx, ebx
je .Lt_0159
mov dword ptr [ebp-4], 0
jmp .Lt_0157
.Lt_0159:
.Lt_0158:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 17
jne .Lt_015C
.Lt_015D:
mov dword ptr [ebp-4], -1
jmp .Lt_0157
jmp .Lt_015A
.Lt_015C:
cmp dword ptr [ebp-8], 39
jne .Lt_015E
.Lt_015F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .Lt_0161
mov dword ptr [ebp-4], -1
jmp .Lt_0157
.Lt_0161:
.Lt_0160:
.Lt_015E:
.Lt_015A:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
je .Lt_0163
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 4
test eax, eax
je .Lt_0165
mov dword ptr [ebp-4], -1
jmp .Lt_0157
.Lt_0165:
.Lt_0164:
.Lt_0163:
.Lt_0162:
push dword ptr [ebp+8]
call SYMBHASDTOR
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0157:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCLONEVAR
SYMBCLONEVAR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0166:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 8192
test ebx, ebx
je .Lt_016A
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+92]
call SYMBADDARRAYDESC
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0169
.Lt_016A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4096
test ebx, ebx
je .Lt_016B
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_0169
.Lt_016B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .Lt_016D
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-12], eax
jmp .Lt_016F
.Lt_0172:
mov eax, dword ptr [ebp-8]
sal eax, 4
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
sal ecx, 4
mov esi, dword ptr [ebx+64]
add esi, ecx
mov ebx, dword ptr [esi]
mov dword ptr [Lt_0173+eax], ebx
mov ebx, dword ptr [esi+4]
mov dword ptr [Lt_0173+eax+4], ebx
mov ebx, dword ptr [esi+8]
mov dword ptr [Lt_0173+eax+8], ebx
mov ebx, dword ptr [esi+12]
mov dword ptr [Lt_0173+eax+12], ebx
.Lt_0170:
inc dword ptr [ebp-8]
.Lt_016F:
mov esi, dword ptr [ebp-12]
cmp dword ptr [ebp-8], esi
jle .Lt_0172
.Lt_0171:
.Lt_016D:
.Lt_016C:
push 0
mov esi, dword ptr [ebp+8]
push dword ptr [esi+4]
push offset Lt_0174
mov esi, dword ptr [ebp+8]
push dword ptr [esi+60]
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
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-4], eax
.Lt_0169:
.Lt_0167:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0173,128

.section .data
.balign 4
Lt_0174:
.int Lt_0173
.int Lt_0173
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16

.globl SYMBVARCHECKACCESS
SYMBVARCHECKACCESS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0175:
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
je .Lt_0178
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .Lt_017A
mov ebx, dword ptr [ebp+8]
movzx eax, word ptr [ebx+36]
test eax, eax
jne .Lt_017C
mov dword ptr [ebp-4], 0
jmp .Lt_0176
.Lt_017C:
.Lt_017B:
jmp .Lt_0179
.Lt_017A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1
test ebx, ebx
jne .Lt_017D
mov dword ptr [ebp-4], 0
jmp .Lt_0176
.Lt_017D:
.Lt_0179:
.Lt_0178:
.Lt_0177:
mov dword ptr [ebp-4], -1
.Lt_0176:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELVAR
SYMBDELVAR:
push ebp
mov ebp, esp
push ebx
.Lt_017E:
push dword ptr [ebp+8]
call SYMBDROPARRAYDIMS
add esp, 4
cmp dword ptr [ebp+12], 0
jne .Lt_0181
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 0
je .Lt_0183
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call SYMBDELSYMBOL
add esp, 8
.Lt_0183:
.Lt_0182:
.Lt_0181:
.Lt_0180:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1024
test ebx, ebx
je .Lt_0185
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 7
jne .Lt_0187
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_0189
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_018B
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call free
add esp, 4
.Lt_018B:
.Lt_018A:
.Lt_0189:
.Lt_0188:
jmp .Lt_0186
.Lt_0187:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_018D
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_018F
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call free
add esp, 4
.Lt_018F:
.Lt_018E:
.Lt_018D:
.Lt_018C:
.Lt_0186:
.Lt_0185:
.Lt_0184:
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 4
.Lt_017F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
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
call fb_StrAssign
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
SYMBDROPARRAYDIMS:
push ebp
mov ebp, esp
.Lt_00AF:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
.Lt_00B0:
mov esp, ebp
pop ebp
ret
.balign 16
SYMBRECALCARRAYDIFF:
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.Lt_00B1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-24], ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
dec eax
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp-20]
dec eax
mov dword ptr [ebp-32], eax
jmp .Lt_00B4
.Lt_00B7:
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
.Lt_00B5:
inc dword ptr [ebp-28]
.Lt_00B4:
mov ecx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ecx
jle .Lt_00B7
.Lt_00B6:
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
mov dword ptr [esi+68], ecx
mov dword ptr [esi+72], eax
.Lt_00B2:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SYMBRECALCARRAYDIFFANDELEMENTS:
push ebp
mov ebp, esp
push ebx
.Lt_00B8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jle .Lt_00BB
push dword ptr [ebp+8]
call SYMBRECALCARRAYDIFF
add esp, 4
push 0
push dword ptr [ebp+8]
call SYMBCALCARRAYELEMENTS
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+76], eax
mov dword ptr [ebx+80], edx
jmp .Lt_00BA
.Lt_00BB:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+68], 0
mov dword ptr [eax+72], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+76], 1
mov dword ptr [eax+80], 0
.Lt_00BA:
.Lt_00B9:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
Lt_006A:	.ascii	"__FB_ARRAYDIMTB$\0"
.balign 4
Lt_006B:	.ascii	"elements\0"
.balign 4
Lt_006C:	.ascii	"lbound\0"
.balign 4
Lt_006D:	.ascii	"ubound\0"
.balign 4
Lt_0076:	.ascii	"FBARRAY\0"
.balign 4
Lt_0080:	.ascii	"$\0"
.balign 4
Lt_0081:	.ascii	"<\0"
.balign 4
Lt_0082:	.ascii	">\0"
.balign 4
Lt_0086:	.ascii	"data\0"
.balign 4
Lt_0087:	.ascii	"ptr\0"
.balign 4
Lt_0088:	.ascii	"size\0"
.balign 4
Lt_0089:	.ascii	"element_len\0"
.balign 4
Lt_008A:	.ascii	"dimensions\0"
.balign 4
Lt_008B:	.ascii	"flags\0"
.balign 4
Lt_008E:	.ascii	"dimTB\0"
