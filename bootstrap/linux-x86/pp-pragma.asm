	.intel_syntax noprefix

.section .text
.balign 16

.globl PPPRAGMAINIT
PPPRAGMAINIT:
.type PPPRAGMAINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_006C:
mov dword ptr [ebp-4], 0
.Lt_0071:
mov eax, dword ptr [ebp-4]
imul eax, 68
mov dword ptr [PRAGMASTK+eax], 0
.Lt_006F:
inc dword ptr [ebp-4]
.Lt_006E:
cmp dword ptr [ebp-4], 2
jle .Lt_0071
.Lt_0070:
.Lt_006D:
mov esp, ebp
pop ebp
ret
.size PPPRAGMAINIT, .-PPPRAGMAINIT
.balign 16

.globl PPPRAGMAEND
PPPRAGMAEND:
.type PPPRAGMAEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0072:
.Lt_0073:
mov esp, ebp
pop ebp
ret
.size PPPRAGMAEND, .-PPPRAGMAEND
.balign 16

.globl PPPRAGMA
PPPRAGMA:
.type PPPRAGMA, @function
push ebp
mov ebp, esp
sub esp, 96
push ebx
push esi
.Lt_007E:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
push 5
push offset Lt_0080
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0082
mov dword ptr [ebp-24], -1
jmp .Lt_0081
.Lt_0082:
push 4
push offset Lt_0084
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0083
mov dword ptr [ebp-20], -1
.Lt_0083:
.Lt_0081:
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
je .Lt_0086
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_0088
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_0087
.Lt_0088:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0087:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0086:
.Lt_0085:
mov dword ptr [ebp-36], 0
.Lt_008C:
push 16
mov eax, dword ptr [ebp-36]
imul eax, 24
lea ebx, [PRAGMAOPT+eax]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_008E
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-16], eax
jmp .Lt_008B
.Lt_008E:
.Lt_008D:
.Lt_008A:
inc dword ptr [ebp-36]
.Lt_0089:
cmp dword ptr [ebp-36], 2
jle .Lt_008C
.Lt_008B:
cmp dword ptr [ebp-16], -1
jne .Lt_0090
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
je .Lt_0092
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0091
.Lt_0092:
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
.Lt_0091:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_007F
.Lt_0090:
.Lt_008F:
mov eax, dword ptr [ebp-20]
or eax, dword ptr [ebp-24]
je .Lt_0094
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [PRAGMAOPT+eax+20]
and ebx, 1
test ebx, ebx
jne .Lt_0096
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov ebx, dword ptr [ebp-24]
or ebx, dword ptr [ebp-20]
je .Lt_0098
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0097
.Lt_0098:
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
.Lt_0097:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 16
jmp .Lt_007F
.Lt_0096:
.Lt_0095:
.Lt_0094:
.Lt_0093:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp-20], 0
je .Lt_009A
sub esp, 8
lea ebx, [ebp-32]
push ebx
push dword ptr [ebp-16]
call PRAGMAPOP
add esp, 16
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [PRAGMAOPT+ebx+20]
and eax, 8
test eax, eax
je .Lt_009C
cmp dword ptr [ENV+836], 0
jle .Lt_009E
sub esp, 12
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_00A0
push -1
sub esp, 4
push 16
mov eax, dword ptr [ebp-16]
imul eax, 24
lea ebx, [PRAGMAOPT+eax]
push ebx
push 13
push offset Lt_009F
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
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
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 16
.Lt_009E:
.Lt_009D:
.Lt_009C:
.Lt_009B:
jmp .Lt_0099
.Lt_009A:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp-24], 0
je .Lt_00A5
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [PRAGMAOPT+eax+20]
and ebx, 16
test ebx, ebx
je .Lt_00A7
sub esp, 4
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [PRAGMAOPT+ebx+16]
and eax, dword ptr [ENV+196]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
push dword ptr [ebp-16]
call PRAGMAPUSH
add esp, 16
jmp .Lt_00A6
.Lt_00A7:
sub esp, 4
sub esp, 8
mov ecx, dword ptr [ebp-16]
imul ecx, 24
push dword ptr [PRAGMAOPT+ecx+16]
call FBGETOPTION
add esp, 12
mov ebx, eax
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
push dword ptr [ebp-16]
call PRAGMAPUSH
add esp, 16
.Lt_00A6:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
jne .Lt_00A9
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00A8
.Lt_00A9:
mov dword ptr [ebp-32], 4294967295
mov dword ptr [ebp-28], 4294967295
.Lt_00A8:
jmp .Lt_00A4
.Lt_00A5:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 299
jne .Lt_00AB
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [PRAGMAOPT+eax+20]
and ebx, 2
test ebx, ebx
jne .Lt_00AD
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 16
jmp .Lt_007F
.Lt_00AD:
.Lt_00AC:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00AA
.Lt_00AB:
mov dword ptr [ebp-32], 4294967295
mov dword ptr [ebp-28], 4294967295
.Lt_00AA:
.Lt_00A4:
cmp dword ptr [ebp-28], 0
jne .Lt_00AF
cmp dword ptr [ebp-32], 0
jne .Lt_00AF
.Lt_00D3:
sub esp, 8
push 8
sub esp, 4
call CEXPRESSION
add esp, 4
push eax
call CCONSTINTEXPR
add esp, 16
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], edx
mov eax, dword ptr [ebp-16]
imul eax, 24
mov edx, dword ptr [PRAGMAOPT+eax+20]
and edx, 16
test edx, edx
je .Lt_00B1
cmp dword ptr [ebp-28], 0
mov edx, -1
jne .Lt_00D4
cmp dword ptr [ebp-32], 0
jne .Lt_00D4
.Lt_00D5:
xor edx, edx
.Lt_00D4:
mov ebx, edx
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-28], eax
.Lt_00B1:
.Lt_00B0:
.Lt_00AF:
.Lt_00AE:
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [PRAGMAOPT+ebx+20]
and eax, 8
test eax, eax
je .Lt_00B3
cmp dword ptr [ENV+836], 0
jle .Lt_00B5
cmp dword ptr [ebp-24], 0
je .Lt_00B7
sub esp, 12
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_00A0
push -1
sub esp, 4
push -1
sub esp, 8
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call fb_LongintToStr
add esp, 16
push eax
push -1
sub esp, 4
push 3
push offset Lt_00B9
push -1
sub esp, 4
push 16
mov eax, dword ptr [ebp-16]
imul eax, 24
lea ebx, [PRAGMAOPT+eax]
push ebx
push 14
push offset Lt_00B8
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call fb_StrConcat
add esp, 24
push eax
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
add esp, 28
push eax
push -1
lea eax, [ebp-92]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-92]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-92]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00B6
.Lt_00B7:
sub esp, 12
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call fb_LongintToStr
add esp, 16
push eax
push -1
sub esp, 4
push 4
push offset Lt_00C0
push -1
sub esp, 4
push 16
mov eax, dword ptr [ebp-16]
imul eax, 24
lea ebx, [PRAGMAOPT+eax]
push ebx
push 9
push offset Lt_00BF
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call fb_StrConcat
add esp, 24
push eax
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
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-80]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
.Lt_00B6:
.Lt_00B5:
.Lt_00B4:
.Lt_00B3:
.Lt_00B2:
.Lt_0099:
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [PRAGMAOPT+eax+20]
and ebx, 4
test ebx, ebx
je .Lt_00C6
cmp dword ptr [ebp-16], 1
jne .Lt_00C8
.Lt_00C9:
call FBPRAGMAONCE
.Lt_00C8:
.Lt_00C7:
jmp .Lt_00C5
.Lt_00C6:
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [PRAGMAOPT+ebx+20]
and eax, 3
test eax, eax
je .Lt_00CB
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [PRAGMAOPT+eax+20]
and ebx, 16
test ebx, ebx
je .Lt_00CD
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov edx, dword ptr [PRAGMAOPT+ebx+16]
mov eax, edx
sar eax, 31
and edx, dword ptr [ebp-32]
and eax, dword ptr [ebp-28]
sub esp, 12
push 25
mov ebx, edx
mov esi, eax
call FBGETOPTION
add esp, 16
mov edx, dword ptr [ebp-16]
imul edx, 24
mov ecx, dword ptr [PRAGMAOPT+edx+16]
not ecx
and eax, ecx
mov edx, eax
mov ecx, edx
sar ecx, 31
or ebx, edx
or esi, ecx
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-28], esi
sub esp, 8
mov ebx, dword ptr [ebp-32]
push ebx
push 25
call FBSETOPTION
add esp, 16
jmp .Lt_00CC
.Lt_00CD:
sub esp, 8
mov ebx, dword ptr [ebp-32]
push ebx
mov ebx, dword ptr [ebp-16]
imul ebx, 24
push dword ptr [PRAGMAOPT+ebx+16]
call FBCHANGEOPTION
add esp, 16
.Lt_00CC:
.Lt_00CB:
.Lt_00CA:
.Lt_00C5:
mov ebx, dword ptr [ebp-24]
or ebx, dword ptr [ebp-20]
je .Lt_00CF
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_00D1
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_00D0
.Lt_00D1:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00D0:
.Lt_00CF:
.Lt_00CE:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_007F:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size PPPRAGMA, .-PPPRAGMA
.balign 16
fb_ctor__ppzpragma:
.type fb_ctor__ppzpragma, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__ppzpragma, .-fb_ctor__ppzpragma
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
PRAGMAPUSH:
.type PRAGMAPUSH, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0074:
mov eax, dword ptr [ebp+8]
imul eax, 68
lea ebx, [PRAGMASTK+eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 8
jl .Lt_0078
sub esp, 4
push 0
push 0
push 27
call ERRREPORT
add esp, 16
jmp .Lt_0075
.Lt_0078:
.Lt_0077:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
sal eax, 3
mov ebx, dword ptr [ebp-4]
add ebx, eax
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+4], ecx
mov dword ptr [ebx+8], eax
mov ecx, dword ptr [ebp-4]
inc dword ptr [ecx]
.Lt_0075:
pop ebx
mov esp, ebp
pop ebp
ret
.size PRAGMAPUSH, .-PRAGMAPUSH
.balign 16
PRAGMAPOP:
.type PRAGMAPOP, @function
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
.Lt_0079:
mov eax, dword ptr [ebp+8]
imul eax, 68
lea ebx, [PRAGMASTK+eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 0
jg .Lt_007D
sub esp, 4
push 0
push 0
push 101
call ERRREPORT
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
jmp .Lt_007A
.Lt_007D:
.Lt_007C:
mov ebx, dword ptr [ebp-4]
dec dword ptr [ebx]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
sal eax, 3
mov ebx, dword ptr [ebp-4]
add ebx, eax
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebx+4]
mov ecx, dword ptr [ebx+8]
mov dword ptr [eax], esi
mov dword ptr [eax+4], ecx
.Lt_007A:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size PRAGMAPOP, .-PRAGMAPOP

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
.balign 4
	.lcomm	PRAGMASTK,204

.section .data
.balign 4
PRAGMAOPT:
.ascii "msbitfields\0"
.skip 4,0
.int 29
.int 11
.ascii "once\0"
.skip 11,0
.int 0
.int 4
.ascii "constness\0"
.skip 6,0
.int 128
.int 27

.section .rodata
.balign 4
Lt_0080:	.ascii	"push\0"
.balign 4
Lt_0084:	.ascii	"pop\0"
.balign 4
Lt_009F:	.ascii	"#pragma pop(\0"
.balign 4
Lt_00A0:	.ascii	")\0"
.balign 4
Lt_00B8:	.ascii	"#pragma push(\0"
.balign 4
Lt_00B9:	.ascii	", \0"
.balign 4
Lt_00BF:	.ascii	"#pragma \0"
.balign 4
Lt_00C0:	.ascii	" = \0"

.section .ctors, "aw", @progbits
.int fb_ctor__ppzpragma
