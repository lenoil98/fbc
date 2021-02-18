	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTCALLINIT@0
_ASTCALLINIT@0:
.Lt_005F:
push 6
push 12
push 32
lea eax, [_AST+44]
push eax
call _LISTINIT@16
.Lt_0060:
ret
.balign 16

.globl _ASTCALLEND@0
_ASTCALLEND@0:
.Lt_0061:
lea eax, [_AST+44]
push eax
call _LISTEND@4
.Lt_0062:
ret
.balign 16

.globl _ASTNEWCALL@8
_ASTNEWCALL@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0063:
cmp dword ptr [ebp+12], 0
je .Lt_0066
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp+8], ebx
.Lt_0066:
.Lt_0065:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 2
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push 9
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+28], 0
cmp dword ptr [ebp+8], 0
je .Lt_0068
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebx+32], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
and ebx, 32
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+24], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+100]
mov dword ptr [ebp-12], ecx
cmp dword ptr [ebp-12], 0
je .Lt_006A
push dword ptr [ebp+8]
call dword ptr [ebp-12]
.Lt_006A:
.Lt_0069:
jmp .Lt_0067
.Lt_0068:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+32], 0
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+24], 0
.Lt_0067:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+36], 0
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+40], 0
push dword ptr [ebp+8]
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
je .Lt_006C
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push 20
call _SYMBADDTEMPVAR@8
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+44], eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+44]
call _ASTDTORLISTADD@4
jmp .Lt_006B
.Lt_006C:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+44], 0
.Lt_006B:
.Lt_0064:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTNEWCALLCTOR@8
_ASTNEWCALLCTOR@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_006E:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 10
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_006F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTLOADCALL@4
_ASTLOADCALL@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0074:
mov eax, dword ptr [_Lt_009E]
mov dword ptr [ebp-36], eax
inc dword ptr [_Lt_009F]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [_ENV+104]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_ENV+260]
and eax, 32
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0077
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
.Lt_0078:
cmp dword ptr [ebp-8], 0
je .Lt_0079
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-16], eax
mov ebx, dword ptr [ebp-32]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp-8]
push dword ptr [ecx+24]
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+4]
mov esi, eax
call _SYMBCALCARGLEN@12
add ebx, eax
adc esi, edx
mov eax, ebx
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
jmp .Lt_0078
.Lt_0079:
push dword ptr [ebp-20]
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
je .Lt_007B
mov eax, dword ptr [_ENV+272]
add dword ptr [ebp-32], eax
.Lt_007B:
.Lt_007A:
mov eax, dword ptr [ebp-32]
add eax, dword ptr [_Lt_009E]
and eax, 15
neg eax
add eax, 16
and eax, 15
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jle .Lt_007D
cmp dword ptr [_AST+136], 0
je .Lt_007F
push dword ptr [ebp-28]
call dword ptr [_IR+136]
.Lt_007F:
.Lt_007E:
mov eax, dword ptr [ebp-28]
add dword ptr [_Lt_009E], eax
.Lt_007D:
.Lt_007C:
jmp .Lt_0076
.Lt_0077:
mov dword ptr [ebp-28], 0
.Lt_0076:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
.Lt_0080:
cmp dword ptr [ebp-8], 0
je .Lt_0081
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+4]
call _SYMBCALCARGLEN@12
mov ebx, eax
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebx+84], 3
jne .Lt_0083
mov ebx, dword ptr [ebp-32]
add dword ptr [ebp-24], ebx
.Lt_0083:
.Lt_0082:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx], 5
jne .Lt_0085
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
push dword ptr [ebp-16]
call _ASTUPDATECONVFD2FS@12
.Lt_0085:
.Lt_0084:
push dword ptr [ebp-16]
call _ASTLOAD@4
mov dword ptr [ebp-44], eax
push dword ptr [ebp-16]
call _ASTDELNODE@4
cmp dword ptr [_AST+136], 0
je .Lt_0087
push dword ptr [_Lt_009F]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+36]
push dword ptr [eax+32]
push dword ptr [ebp-44]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call dword ptr [_IR+84]
.Lt_0087:
.Lt_0086:
mov eax, dword ptr [ebp-32]
add dword ptr [_Lt_009E], eax
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .Lt_0080
.Lt_0081:
push dword ptr [ebp-20]
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
je .Lt_0089
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+84]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_ENV+260]
and eax, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_008B
mov eax, dword ptr [_ENV+272]
add dword ptr [ebp-24], eax
.Lt_008B:
.Lt_008A:
cmp dword ptr [_AST+136], 0
je .Lt_008D
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
call _SYMBHASCTOR@4
test eax, eax
jne .Lt_008F
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
call _ASTBUILDTEMPVARCLEAR@4
push eax
call _ASTLOAD@4
.Lt_008F:
.Lt_008E:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
call _ASTNEWVAR@20
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call _ASTNEWADDROF@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
call _ASTLOAD@4
mov dword ptr [ebp-44], eax
push dword ptr [_Lt_009F]
push 0
push 0
push dword ptr [ebp-44]
push 0
call dword ptr [_IR+84]
.Lt_008D:
.Lt_008C:
mov eax, dword ptr [_ENV+272]
add dword ptr [_Lt_009E], eax
.Lt_0089:
.Lt_0088:
cmp dword ptr [_AST+136], 0
je .Lt_0091
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
test ebx, ebx
jne .Lt_0093
mov dword ptr [ebp-40], 0
jmp .Lt_0092
.Lt_0093:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .Lt_0095
.Lt_0095:
.Lt_0094:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+92]
mov eax, dword ptr [ebp-20]
push dword ptr [eax+88]
call dword ptr [_IR+228]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+96], 1
je .Lt_0097
mov eax, dword ptr [ebp-40]
mov dword ptr [eax+16], 0
.Lt_0097:
.Lt_0096:
.Lt_0092:
.Lt_0091:
.Lt_0090:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_0099
push dword ptr [ebp-16]
call _ASTLOAD@4
mov dword ptr [ebp-44], eax
push dword ptr [ebp-16]
call _ASTDELNODE@4
cmp dword ptr [_AST+136], 0
je .Lt_009B
push dword ptr [_Lt_009F]
push dword ptr [ebp-24]
push dword ptr [ebp-40]
push dword ptr [ebp-44]
push dword ptr [ebp-20]
call dword ptr [_IR+132]
.Lt_009B:
.Lt_009A:
jmp .Lt_0098
.Lt_0099:
cmp dword ptr [_AST+136], 0
je .Lt_009D
push dword ptr [_Lt_009F]
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
call dword ptr [_IR+128]
.Lt_009D:
.Lt_009C:
.Lt_0098:
mov eax, dword ptr [ebp-36]
mov dword ptr [_Lt_009E], eax
push dword ptr [ebp+8]
call _HCOPYSTRINGSBACK@4
dec dword ptr [_Lt_009F]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-4], eax
.Lt_0075:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .data
.balign 4
_Lt_009F:
.int 0
.balign 4
_Lt_009E:
.int 0

.section .text
.balign 16

.globl _ASTLOADCALLCTOR@4
_ASTLOADCALLCTOR@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00A4:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTLOAD@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTDELNODE@4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTLOAD@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTCLONECALL@8
_ASTCLONECALL@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00A6:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+40], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-4], ebx
.Lt_00A8:
cmp dword ptr [ebp-4], 0
je .Lt_00A9
lea ebx, [_AST+44]
push ebx
call _LISTNEWNODE@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+4]
call _ASTCLONETREE@4
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ecx+8], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+40], ecx
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_00A8
.Lt_00A9:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+68]
mov dword ptr [ebp+8], ecx
.Lt_00AA:
cmp dword ptr [ebp+8], 0
je .Lt_00AB
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+68], 0
jne .Lt_00AD
jmp .Lt_00AB
.Lt_00AD:
.Lt_00AC:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+68]
mov dword ptr [ebp+8], ebx
jmp .Lt_00AA
.Lt_00AB:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebx+36], ecx
.Lt_00A7:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTDELCALL@4
_ASTDELCALL@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-4], ebx
.Lt_00B0:
cmp dword ptr [ebp-4], 0
je .Lt_00B1
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
call _ASTDELTREE@4
push dword ptr [ebp-4]
lea eax, [_AST+44]
push eax
call _LISTDELNODE@8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00B0
.Lt_00B1:
.Lt_00AF:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTREPLACESYMBOLONCALL@12
_ASTREPLACESYMBOLONCALL@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+44], ebx
jne .Lt_00B5
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+44], eax
.Lt_00B5:
.Lt_00B4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-4], ebx
.Lt_00B6:
cmp dword ptr [ebp-4], 0
je .Lt_00B7
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .Lt_00B9
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax], ebx
.Lt_00B9:
.Lt_00B8:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+4]
call _ASTREPLACESYMBOLONTREE@12
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00B6
.Lt_00B7:
.Lt_00B3:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTBUILDCALLRESULTVAR@4
_ASTBUILDCALLRESULTVAR@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00BA:
push 2
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
call _ASTNEWVAR@20
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
.Lt_00BB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDCALLRESULTUDT@4
_ASTBUILDCALLRESULTUDT@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00BC:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
je .Lt_00BF
push dword ptr [ebp+8]
call _ASTBUILDCALLRESULTVAR@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BE
.Lt_00BF:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push 20
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-8], eax
push 96
push dword ptr [ebp+8]
push 0
push 0
push 0
push dword ptr [ebp-8]
call _ASTBUILDVARFIELD@16
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp+8], eax
push 2
push 0
push 0
push 0
push dword ptr [ebp-8]
call _ASTBUILDVARFIELD@16
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
.Lt_00BE:
.Lt_00BD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDBYREFRESULTDEREF@4
_ASTBUILDBYREFRESULTDEREF@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
je .Lt_00C3
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00C1
.Lt_00C3:
.Lt_00C2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
jne .Lt_00C5
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00C1
.Lt_00C5:
.Lt_00C4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+92]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
and eax, 31
cmp eax, 23
jne .Lt_00C7
push 0
push 0
push 71
call _ERRREPORT@12
mov eax, dword ptr [ebp-8]
and eax, -32
or eax, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
.Lt_00C7:
.Lt_00C6:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTSETTYPE@12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call _ASTNEWDEREF@20
mov dword ptr [ebp-4], eax
.Lt_00C1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTISBYREFRESULTDEREF@4
_ASTISBYREFRESULTDEREF@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C8:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
je .Lt_00CA
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+64], 0
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_00D0
.Lt_00CA:
mov dword ptr [ebp-8], 0
.Lt_00D0:
cmp dword ptr [ebp-8], 0
je .Lt_00CD
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
cmp dword ptr [ebx], 9
jne .Lt_00CF
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_00CF:
.Lt_00CE:
.Lt_00CD:
.Lt_00CC:
.Lt_00C9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTREMOVEBYREFRESULTDEREF@4
_ASTREMOVEBYREFRESULTDEREF@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
push dword ptr [ebp+8]
call _ASTDELNODE@4
.Lt_00D5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTIGNORECALLRESULT@4
_ASTIGNORECALLRESULT@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_00E4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_00E2
.Lt_00E4:
.Lt_00E3:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+12], 0
je .Lt_00E6
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+12]
and ebx, 64
test ebx, ebx
je .Lt_00E8
push dword ptr [ebp+8]
call _RTLERRORCHECK@4
mov dword ptr [ebp-4], eax
jmp .Lt_00E2
.Lt_00E8:
.Lt_00E7:
.Lt_00E6:
.Lt_00E5:
cmp dword ptr [ebp-8], 17
je .Lt_00EB
.Lt_00EC:
cmp dword ptr [ebp-8], 7
jne .Lt_00EA
.Lt_00EB:
cmp dword ptr [ebp-8], 7
jne .Lt_00EE
push 0
push 39
push dword ptr [ebp+8]
call _ASTSETTYPE@12
.Lt_00EE:
.Lt_00ED:
push dword ptr [ebp+8]
call _RTLSTRDELETE@4
mov dword ptr [ebp-4], eax
jmp .Lt_00E2
.Lt_00EA:
.Lt_00E9:
push 0
push 0
push dword ptr [ebp+8]
call _ASTSETTYPE@12
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDFAKECALL@4
_ASTBUILDFAKECALL@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EF:
push 0
push dword ptr [ebp+8]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-12], ebx
.Lt_00F1:
cmp dword ptr [ebp-12], 0
je .Lt_00F2
push -1
push -2147483648
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call _ASTNEWCONSTZ@8
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-12], ebx
jmp .Lt_00F1
.Lt_00F2:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00F0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
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
_HCOPYSTRINGSBACK@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0070:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+40]
mov dword ptr [ebp-8], ebx
.Lt_0072:
cmp dword ptr [ebp-8], 0
je .Lt_0073
push 0
push 0
push -2147483648
push 0
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx]
call _ASTNEWVAR@20
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _RTLSTRASSIGN@12
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
call _ASTLOAD@4
push dword ptr [ebp-4]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-12], ebx
push dword ptr [ebp-8]
lea ebx, [_AST+44]
push ebx
call _LISTDELNODE@8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
jmp .Lt_0072
.Lt_0073:
.Lt_0071:
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
