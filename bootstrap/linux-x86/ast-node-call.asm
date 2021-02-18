	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTCALLINIT
ASTCALLINIT:
.type ASTCALLINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_005E:
push 6
push 12
push 32
lea eax, [AST+44]
push eax
call LISTINIT
add esp, 16
.Lt_005F:
mov esp, ebp
pop ebp
ret
.size ASTCALLINIT, .-ASTCALLINIT
.balign 16

.globl ASTCALLEND
ASTCALLEND:
.type ASTCALLEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0060:
sub esp, 12
lea eax, [AST+44]
push eax
call LISTEND
add esp, 16
.Lt_0061:
mov esp, ebp
pop ebp
ret
.size ASTCALLEND, .-ASTCALLEND
.balign 16

.globl ASTNEWCALL
ASTNEWCALL:
.type ASTNEWCALL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0062:
cmp dword ptr [ebp+12], 0
je .Lt_0065
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp+8], ebx
.Lt_0065:
.Lt_0064:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 2
sub esp, 4
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push 9
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+56], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+24], 0
cmp dword ptr [ebp+8], 0
je .Lt_0067
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebx+28], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
and ebx, 32
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+20], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+100]
mov dword ptr [ebp-12], ecx
cmp dword ptr [ebp-12], 0
je .Lt_0069
sub esp, 12
push dword ptr [ebp+8]
call dword ptr [ebp-12]
add esp, 16
.Lt_0069:
.Lt_0068:
jmp .Lt_0066
.Lt_0067:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+28], 0
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+20], 0
.Lt_0066:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+32], 0
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+36], 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBPROCRETURNSONSTACK
add esp, 16
test eax, eax
je .Lt_006B
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push 20
call SYMBADDTEMPVAR
add esp, 16
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+40], eax
sub esp, 12
mov eax, dword ptr [ebp-8]
push dword ptr [eax+40]
call ASTDTORLISTADD
add esp, 16
jmp .Lt_006A
.Lt_006B:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+40], 0
.Lt_006A:
.Lt_0063:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTNEWCALL, .-ASTNEWCALL
.balign 16

.globl ASTNEWCALLCTOR
ASTNEWCALLCTOR:
.type ASTNEWCALLCTOR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_006D:
sub esp, 4
mov eax, dword ptr [ebp+12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+4]
push 10
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_006E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTNEWCALLCTOR, .-ASTNEWCALLCTOR
.balign 16

.globl ASTLOADCALL
ASTLOADCALL:
.type ASTLOADCALL, @function
push ebp
mov ebp, esp
sub esp, 48
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0073:
mov eax, dword ptr [Lt_009D]
mov dword ptr [ebp-36], eax
inc dword ptr [Lt_009E]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ENV+104]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ENV+260]
and eax, 32
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0076
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
.Lt_0077:
cmp dword ptr [ebp-8], 0
je .Lt_0078
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-16], eax
mov ebx, dword ptr [ebp-32]
mov eax, ebx
sar eax, 31
sub esp, 4
mov ecx, dword ptr [ebp-8]
push dword ptr [ecx+20]
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+8]
mov ecx, dword ptr [ebp-16]
push dword ptr [ecx+4]
mov esi, eax
call SYMBCALCARGLEN
add esp, 16
add ebx, eax
adc esi, edx
mov eax, ebx
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
jmp .Lt_0077
.Lt_0078:
sub esp, 12
push dword ptr [ebp-20]
call SYMBPROCRETURNSONSTACK
add esp, 16
test eax, eax
je .Lt_007A
mov eax, dword ptr [ENV+272]
add dword ptr [ebp-32], eax
.Lt_007A:
.Lt_0079:
mov eax, dword ptr [ebp-32]
add eax, dword ptr [Lt_009D]
and eax, 15
neg eax
add eax, 16
and eax, 15
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jle .Lt_007C
cmp dword ptr [AST+136], 0
je .Lt_007E
sub esp, 12
push dword ptr [ebp-28]
call dword ptr [IR+136]
add esp, 16
.Lt_007E:
.Lt_007D:
mov eax, dword ptr [ebp-28]
add dword ptr [Lt_009D], eax
.Lt_007C:
.Lt_007B:
jmp .Lt_0075
.Lt_0076:
mov dword ptr [ebp-28], 0
.Lt_0075:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
.Lt_007F:
cmp dword ptr [ebp-8], 0
je .Lt_0080
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-16], ebx
sub esp, 4
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+4]
call SYMBCALCARGLEN
add esp, 16
mov ebx, eax
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebx+84], 3
jne .Lt_0082
mov ebx, dword ptr [ebp-32]
add dword ptr [ebp-24], ebx
.Lt_0082:
.Lt_0081:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx], 5
jne .Lt_0084
sub esp, 4
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+4]
push dword ptr [ebp-16]
call ASTUPDATECONVFD2FS
add esp, 16
.Lt_0084:
.Lt_0083:
sub esp, 12
push dword ptr [ebp-16]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-44], eax
sub esp, 12
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 16
cmp dword ptr [AST+136], 0
je .Lt_0086
sub esp, 12
push dword ptr [Lt_009E]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+28]
push dword ptr [eax+24]
push dword ptr [ebp-44]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+12]
call dword ptr [IR+84]
add esp, 32
.Lt_0086:
.Lt_0085:
mov eax, dword ptr [ebp-32]
add dword ptr [Lt_009D], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .Lt_007F
.Lt_0080:
sub esp, 12
push dword ptr [ebp-20]
call SYMBPROCRETURNSONSTACK
add esp, 16
test eax, eax
je .Lt_0088
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+84]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ENV+260]
and eax, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_008A
mov eax, dword ptr [ENV+272]
add dword ptr [ebp-24], eax
.Lt_008A:
.Lt_0089:
cmp dword ptr [AST+136], 0
je .Lt_008C
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call SYMBHASCTOR
add esp, 16
test eax, eax
jne .Lt_008E
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call ASTBUILDTEMPVARCLEAR
add esp, 4
push eax
call ASTLOAD
add esp, 16
.Lt_008E:
.Lt_008D:
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-16]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-16]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-44], eax
sub esp, 12
push dword ptr [Lt_009E]
push 0
push 0
push dword ptr [ebp-44]
push 0
call dword ptr [IR+84]
add esp, 32
.Lt_008C:
.Lt_008B:
mov eax, dword ptr [ENV+272]
add dword ptr [Lt_009D], eax
.Lt_0088:
.Lt_0087:
cmp dword ptr [AST+136], 0
je .Lt_0090
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
test ebx, ebx
jne .Lt_0092
mov dword ptr [ebp-40], 0
jmp .Lt_0091
.Lt_0092:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .Lt_0094
.Lt_0094:
.Lt_0093:
sub esp, 8
mov eax, dword ptr [ebp-20]
push dword ptr [eax+92]
mov eax, dword ptr [ebp-20]
push dword ptr [eax+88]
call dword ptr [IR+228]
add esp, 16
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+96], 1
je .Lt_0096
mov eax, dword ptr [ebp-40]
mov dword ptr [eax+16], 0
.Lt_0096:
.Lt_0095:
.Lt_0091:
.Lt_0090:
.Lt_008F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_0098
sub esp, 12
push dword ptr [ebp-16]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-44], eax
sub esp, 12
push dword ptr [ebp-16]
call ASTDELNODE
add esp, 16
cmp dword ptr [AST+136], 0
je .Lt_009A
sub esp, 12
push dword ptr [Lt_009E]
push dword ptr [ebp-24]
push dword ptr [ebp-40]
push dword ptr [ebp-44]
push dword ptr [ebp-20]
call dword ptr [IR+132]
add esp, 32
.Lt_009A:
.Lt_0099:
jmp .Lt_0097
.Lt_0098:
cmp dword ptr [AST+136], 0
je .Lt_009C
push dword ptr [Lt_009E]
push dword ptr [ebp-40]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
call dword ptr [IR+128]
add esp, 16
.Lt_009C:
.Lt_009B:
.Lt_0097:
mov eax, dword ptr [ebp-36]
mov dword ptr [Lt_009D], eax
sub esp, 12
push dword ptr [ebp+8]
call HCOPYSTRINGSBACK
add esp, 16
dec dword ptr [Lt_009E]
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-4], eax
.Lt_0074:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTLOADCALL, .-ASTLOADCALL

.section .data
.balign 4
Lt_009E:
.int 0
.balign 4
Lt_009D:
.int 0

.section .text
.balign 16

.globl ASTLOADCALLCTOR
ASTLOADCALLCTOR:
.type ASTLOADCALLCTOR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00A3:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTLOAD
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTLOAD
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTLOADCALLCTOR, .-ASTLOADCALLCTOR
.balign 16

.globl ASTCLONECALL
ASTCLONECALL:
.type ASTCLONECALL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00A5:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+36], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-4], ebx
.Lt_00A7:
cmp dword ptr [ebp-4], 0
je .Lt_00A8
sub esp, 12
lea ebx, [AST+44]
push ebx
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
sub esp, 12
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+4]
call ASTCLONETREE
add esp, 16
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ecx+8], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+36], ecx
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_00A7
.Lt_00A8:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+60]
mov dword ptr [ebp+8], ecx
.Lt_00A9:
cmp dword ptr [ebp+8], 0
je .Lt_00AA
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+60], 0
jne .Lt_00AC
jmp .Lt_00AA
.Lt_00AC:
.Lt_00AB:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+60]
mov dword ptr [ebp+8], ebx
jmp .Lt_00A9
.Lt_00AA:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebx+32], ecx
.Lt_00A6:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTCLONECALL, .-ASTCLONECALL
.balign 16

.globl ASTDELCALL
ASTDELCALL:
.type ASTDELCALL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00AD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-4], ebx
.Lt_00AF:
cmp dword ptr [ebp-4], 0
je .Lt_00B0
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
sub esp, 12
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
call ASTDELTREE
add esp, 16
sub esp, 8
push dword ptr [ebp-4]
lea eax, [AST+44]
push eax
call LISTDELNODE
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00AF
.Lt_00B0:
.Lt_00AE:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTDELCALL, .-ASTDELCALL
.balign 16

.globl ASTREPLACESYMBOLONCALL
ASTREPLACESYMBOLONCALL:
.type ASTREPLACESYMBOLONCALL, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00B1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+40], ebx
jne .Lt_00B4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+40], eax
.Lt_00B4:
.Lt_00B3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-4], ebx
.Lt_00B5:
cmp dword ptr [ebp-4], 0
je .Lt_00B6
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .Lt_00B8
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax], ebx
.Lt_00B8:
.Lt_00B7:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+4]
call ASTREPLACESYMBOLONTREE
add esp, 16
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00B5
.Lt_00B6:
.Lt_00B2:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTREPLACESYMBOLONCALL, .-ASTREPLACESYMBOLONCALL
.balign 16

.globl ASTBUILDCALLRESULTVAR
ASTBUILDCALLRESULTVAR:
.type ASTBUILDCALLRESULTVAR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00B9:
sub esp, 4
push 2
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+40]
call ASTNEWVAR
add esp, 24
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00BA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDCALLRESULTVAR, .-ASTBUILDCALLRESULTVAR
.balign 16

.globl ASTBUILDCALLRESULTUDT
ASTBUILDCALLRESULTUDT:
.type ASTBUILDCALLRESULTUDT, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00BB:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call SYMBPROCRETURNSONSTACK
add esp, 16
test eax, eax
je .Lt_00BE
sub esp, 12
push dword ptr [ebp+8]
call ASTBUILDCALLRESULTVAR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BD
.Lt_00BE:
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push 20
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 96
push dword ptr [ebp+8]
sub esp, 4
push 0
push 0
push 0
push dword ptr [ebp-8]
call ASTBUILDVARFIELD
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 4
push 2
sub esp, 8
push 0
push 0
push 0
push dword ptr [ebp-8]
call ASTBUILDVARFIELD
add esp, 24
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00BD:
.Lt_00BC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDCALLRESULTUDT, .-ASTBUILDCALLRESULTUDT
.balign 16

.globl ASTBUILDBYREFRESULTDEREF
ASTBUILDBYREFRESULTDEREF:
.type ASTBUILDBYREFRESULTDEREF, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
je .Lt_00C2
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00C0
.Lt_00C2:
.Lt_00C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
jne .Lt_00C4
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00C0
.Lt_00C4:
.Lt_00C3:
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
jne .Lt_00C6
sub esp, 4
push 0
push 0
push 71
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp-8]
and eax, -32
or eax, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
.Lt_00C6:
.Lt_00C5:
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTSETTYPE
add esp, 16
sub esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_00C0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDBYREFRESULTDEREF, .-ASTBUILDBYREFRESULTDEREF
.balign 16

.globl ASTISBYREFRESULTDEREF
ASTISBYREFRESULTDEREF:
.type ASTISBYREFRESULTDEREF, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C7:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
sete bl
shr ebx, 1
sbb ebx, ebx
test ebx, ebx
je .Lt_00C9
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_00CF
.Lt_00C9:
mov dword ptr [ebp-8], 0
.Lt_00CF:
cmp dword ptr [ebp-8], 0
je .Lt_00CC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 9
jne .Lt_00CE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_00CE:
.Lt_00CD:
.Lt_00CC:
.Lt_00CB:
.Lt_00C8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTISBYREFRESULTDEREF, .-ASTISBYREFRESULTDEREF
.balign 16

.globl ASTREMOVEBYREFRESULTDEREF
ASTREMOVEBYREFRESULTDEREF:
.type ASTREMOVEBYREFRESULTDEREF, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
.Lt_00D4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTREMOVEBYREFRESULTDEREF, .-ASTREMOVEBYREFRESULTDEREF
.balign 16

.globl ASTIGNORECALLRESULT
ASTIGNORECALLRESULT:
.type ASTIGNORECALLRESULT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_00E3
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_00E1
.Lt_00E3:
.Lt_00E2:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+12], 0
je .Lt_00E5
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+12]
and ebx, 64
test ebx, ebx
je .Lt_00E7
sub esp, 12
push dword ptr [ebp+8]
call RTLERRORCHECK
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00E1
.Lt_00E7:
.Lt_00E6:
.Lt_00E5:
.Lt_00E4:
cmp dword ptr [ebp-8], 17
je .Lt_00EA
.Lt_00EB:
cmp dword ptr [ebp-8], 7
jne .Lt_00E9
.Lt_00EA:
cmp dword ptr [ebp-8], 7
jne .Lt_00ED
sub esp, 4
push 0
push 39
push dword ptr [ebp+8]
call ASTSETTYPE
add esp, 16
.Lt_00ED:
.Lt_00EC:
sub esp, 12
push dword ptr [ebp+8]
call RTLSTRDELETE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00E1
.Lt_00E9:
.Lt_00E8:
sub esp, 4
push 0
push 0
push dword ptr [ebp+8]
call ASTSETTYPE
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTIGNORECALLRESULT, .-ASTIGNORECALLRESULT
.balign 16

.globl ASTBUILDFAKECALL
ASTBUILDFAKECALL:
.type ASTBUILDFAKECALL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EE:
sub esp, 8
push 0
push dword ptr [ebp+8]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-12], ebx
.Lt_00F0:
cmp dword ptr [ebp-12], 0
je .Lt_00F1
push -1
push -2147483648
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call ASTNEWCONSTZ
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
jmp .Lt_00F0
.Lt_00F1:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00EF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDFAKECALL, .-ASTBUILDFAKECALL
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
HCOPYSTRINGSBACK:
.type HCOPYSTRINGSBACK, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_006F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+36]
mov dword ptr [ebp-8], ebx
.Lt_0071:
cmp dword ptr [ebp-8], 0
je .Lt_0072
sub esp, 4
push 0
sub esp, 4
push 0
push -2147483648
push 0
push 0
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx]
call ASTNEWVAR
add esp, 24
push eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call RTLSTRASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp-4]
call ASTLOAD
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-12], ebx
sub esp, 8
push dword ptr [ebp-8]
lea ebx, [AST+44]
push ebx
call LISTDELNODE
add esp, 16
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
jmp .Lt_0071
.Lt_0072:
.Lt_0070:
pop ebx
mov esp, ebp
pop ebp
ret
.size HCOPYSTRINGSBACK, .-HCOPYSTRINGSBACK

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
