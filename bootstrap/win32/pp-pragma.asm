	.intel_syntax noprefix

.section .text
.balign 16

.globl _PPPRAGMAINIT@0
_PPPRAGMAINIT@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_006D:
mov dword ptr [ebp-4], 0
.Lt_0072:
mov eax, dword ptr [ebp-4]
imul eax, 72
mov dword ptr [_PRAGMASTK+eax], 0
.Lt_0070:
inc dword ptr [ebp-4]
.Lt_006F:
cmp dword ptr [ebp-4], 2
jle .Lt_0072
.Lt_0071:
.Lt_006E:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPPRAGMAEND@0
_PPPRAGMAEND@0:
.Lt_0073:
.Lt_0074:
ret
.balign 16

.globl _PPPRAGMA@0
_PPPRAGMA@0:
push ebp
mov ebp, esp
sub esp, 92
push ebx
push esi
.Lt_007F:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 5
push offset _Lt_0081
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0083
mov dword ptr [ebp-24], -1
jmp .Lt_0082
.Lt_0083:
push 4
push offset _Lt_0085
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0084
mov dword ptr [ebp-20], -1
.Lt_0084:
.Lt_0082:
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
je .Lt_0087
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0089
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_0088
.Lt_0089:
push 0
call _LEXSKIPTOKEN@4
.Lt_0088:
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_0087:
.Lt_0086:
mov dword ptr [ebp-36], 0
.Lt_008D:
push 16
mov eax, dword ptr [ebp-36]
imul eax, 24
lea ebx, [_PRAGMAOPT+eax]
push ebx
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .Lt_008F
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-16], eax
jmp .Lt_008C
.Lt_008F:
.Lt_008E:
.Lt_008B:
inc dword ptr [ebp-36]
.Lt_008A:
cmp dword ptr [ebp-36], 2
jle .Lt_008D
.Lt_008C:
cmp dword ptr [ebp-16], -1
jne .Lt_0091
push 0
push 0
push 17
call _ERRREPORT@12
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
je .Lt_0093
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0092
.Lt_0093:
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
.Lt_0092:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_0080
.Lt_0091:
.Lt_0090:
mov eax, dword ptr [ebp-20]
or eax, dword ptr [ebp-24]
je .Lt_0095
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [_PRAGMAOPT+eax+20]
and ebx, 1
test ebx, ebx
jne .Lt_0097
push 0
push 0
push 17
call _ERRREPORT@12
mov ebx, dword ptr [ebp-24]
or ebx, dword ptr [ebp-20]
je .Lt_0099
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0098
.Lt_0099:
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
.Lt_0098:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .Lt_0080
.Lt_0097:
.Lt_0096:
.Lt_0095:
.Lt_0094:
push 2048
call _LEXSKIPTOKEN@4
cmp dword ptr [ebp-20], 0
je .Lt_009B
lea ebx, [ebp-32]
push ebx
push dword ptr [ebp-16]
call _PRAGMAPOP@8
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [_PRAGMAOPT+ebx+20]
and eax, 8
test eax, eax
je .Lt_009D
cmp dword ptr [_ENV+836], 0
jle .Lt_009F
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
push 0
push -1
push 2
push offset _Lt_00A1
push -1
push 16
mov eax, dword ptr [ebp-16]
imul eax, 24
lea ebx, [_PRAGMAOPT+eax]
push ebx
push 13
push offset _Lt_00A0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrAssign@20
lea eax, [ebp-68]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
.Lt_009F:
.Lt_009E:
.Lt_009D:
.Lt_009C:
jmp .Lt_009A
.Lt_009B:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp-24], 0
je .Lt_00A6
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [_PRAGMAOPT+eax+20]
and ebx, 16
test ebx, ebx
je .Lt_00A8
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [_PRAGMAOPT+ebx+16]
and eax, dword ptr [_ENV+196]
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
call _PRAGMAPUSH@12
jmp .Lt_00A7
.Lt_00A8:
mov ecx, dword ptr [ebp-16]
imul ecx, 24
push dword ptr [_PRAGMAOPT+ecx+16]
call _FBGETOPTION@4
mov ebx, eax
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
push dword ptr [ebp-16]
call _PRAGMAPUSH@12
.Lt_00A7:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .Lt_00AA
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_00A9
.Lt_00AA:
mov dword ptr [ebp-32], 4294967295
mov dword ptr [ebp-28], 4294967295
.Lt_00A9:
jmp .Lt_00A5
.Lt_00A6:
push 0
call _LEXGETTOKEN@4
cmp eax, 299
jne .Lt_00AC
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [_PRAGMAOPT+eax+20]
and ebx, 2
test ebx, ebx
jne .Lt_00AE
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
jmp .Lt_0080
.Lt_00AE:
.Lt_00AD:
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_00AB
.Lt_00AC:
mov dword ptr [ebp-32], 4294967295
mov dword ptr [ebp-28], 4294967295
.Lt_00AB:
.Lt_00A5:
cmp dword ptr [ebp-28], 0
jne .Lt_00B0
cmp dword ptr [ebp-32], 0
jne .Lt_00B0
.Lt_00D4:
push 8
call _CEXPRESSION@0
push eax
call _CCONSTINTEXPR@8
mov dword ptr [ebp-32], eax
mov dword ptr [ebp-28], edx
mov eax, dword ptr [ebp-16]
imul eax, 24
mov edx, dword ptr [_PRAGMAOPT+eax+20]
and edx, 16
test edx, edx
je .Lt_00B2
cmp dword ptr [ebp-28], 0
mov edx, -1
jne .Lt_00D5
cmp dword ptr [ebp-32], 0
jne .Lt_00D5
.Lt_00D6:
xor edx, edx
.Lt_00D5:
mov ebx, edx
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-28], eax
.Lt_00B2:
.Lt_00B1:
.Lt_00B0:
.Lt_00AF:
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [_PRAGMAOPT+ebx+20]
and eax, 8
test eax, eax
je .Lt_00B4
cmp dword ptr [_ENV+836], 0
jle .Lt_00B6
cmp dword ptr [ebp-24], 0
je .Lt_00B8
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
push 0
push -1
push 2
push offset _Lt_00A1
push -1
push -1
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call _fb_LongintToStr@8
push eax
push -1
push 3
push offset _Lt_00BA
push -1
push 16
mov eax, dword ptr [ebp-16]
imul eax, 24
lea ebx, [_PRAGMAOPT+eax]
push ebx
push 14
push offset _Lt_00B9
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
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
lea eax, [ebp-92]
push eax
call _fb_StrAssign@20
lea eax, [ebp-92]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-92]
push eax
call _fb_StrDelete@4
jmp .Lt_00B7
.Lt_00B8:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push -1
push dword ptr [ebp-28]
push dword ptr [ebp-32]
call _fb_LongintToStr@8
push eax
push -1
push 4
push offset _Lt_00C1
push -1
push 16
mov eax, dword ptr [ebp-16]
imul eax, 24
lea ebx, [_PRAGMAOPT+eax]
push ebx
push 9
push offset _Lt_00C0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
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
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
.Lt_00B7:
.Lt_00B6:
.Lt_00B5:
.Lt_00B4:
.Lt_00B3:
.Lt_009A:
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [_PRAGMAOPT+eax+20]
and ebx, 4
test ebx, ebx
je .Lt_00C7
cmp dword ptr [ebp-16], 1
jne .Lt_00C9
.Lt_00CA:
call _FBPRAGMAONCE@0
.Lt_00C9:
.Lt_00C8:
jmp .Lt_00C6
.Lt_00C7:
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov eax, dword ptr [_PRAGMAOPT+ebx+20]
and eax, 3
test eax, eax
je .Lt_00CC
mov eax, dword ptr [ebp-16]
imul eax, 24
mov ebx, dword ptr [_PRAGMAOPT+eax+20]
and ebx, 16
test ebx, ebx
je .Lt_00CE
mov ebx, dword ptr [ebp-16]
imul ebx, 24
mov edx, dword ptr [_PRAGMAOPT+ebx+16]
mov eax, edx
sar eax, 31
and edx, dword ptr [ebp-32]
and eax, dword ptr [ebp-28]
push 25
mov ebx, edx
mov esi, eax
call _FBGETOPTION@4
mov edx, dword ptr [ebp-16]
imul edx, 24
mov ecx, dword ptr [_PRAGMAOPT+edx+16]
not ecx
and eax, ecx
mov edx, eax
mov ecx, edx
sar ecx, 31
or ebx, edx
or esi, ecx
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-28], esi
mov ebx, dword ptr [ebp-32]
push ebx
push 25
call _FBSETOPTION@8
jmp .Lt_00CD
.Lt_00CE:
mov ebx, dword ptr [ebp-32]
push ebx
mov ebx, dword ptr [ebp-16]
imul ebx, 24
push dword ptr [_PRAGMAOPT+ebx+16]
call _FBCHANGEOPTION@8
.Lt_00CD:
.Lt_00CC:
.Lt_00CB:
.Lt_00C6:
mov ebx, dword ptr [ebp-24]
or ebx, dword ptr [ebp-20]
je .Lt_00D0
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_00D2
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_00D1
.Lt_00D2:
push 0
call _LEXSKIPTOKEN@4
.Lt_00D1:
.Lt_00D0:
.Lt_00CF:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0080:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__ppzpragma:
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
_PRAGMAPUSH@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0075:
mov eax, dword ptr [ebp+8]
imul eax, 72
lea ebx, [_PRAGMASTK+eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 8
jl .Lt_0079
push 0
push 0
push 27
call _ERRREPORT@12
jmp .Lt_0076
.Lt_0079:
.Lt_0078:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
sal eax, 3
mov ebx, dword ptr [ebp-4]
add ebx, eax
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], ecx
mov dword ptr [ebx+12], eax
mov ecx, dword ptr [ebp-4]
inc dword ptr [ecx]
.Lt_0076:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_PRAGMAPOP@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
.Lt_007A:
mov eax, dword ptr [ebp+8]
imul eax, 72
lea ebx, [_PRAGMASTK+eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 0
jg .Lt_007E
push 0
push 0
push 101
call _ERRREPORT@12
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
jmp .Lt_007B
.Lt_007E:
.Lt_007D:
mov ebx, dword ptr [ebp-4]
dec dword ptr [ebx]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
sal eax, 3
mov ebx, dword ptr [ebp-4]
add ebx, eax
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [ebx+8]
mov ecx, dword ptr [ebx+12]
mov dword ptr [eax], esi
mov dword ptr [eax+4], ecx
.Lt_007B:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
.balign 4
	.lcomm	_PRAGMASTK,216

.section .data
.balign 4
_PRAGMAOPT:
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
.balign 4
_Lt_0081:	.ascii	"push\0"
.balign 4
_Lt_0085:	.ascii	"pop\0"
.balign 4
_Lt_00A0:	.ascii	"#pragma pop(\0"
.balign 4
_Lt_00A1:	.ascii	")\0"
.balign 4
_Lt_00B9:	.ascii	"#pragma push(\0"
.balign 4
_Lt_00BA:	.ascii	", \0"
.balign 4
_Lt_00C0:	.ascii	"#pragma \0"
.balign 4
_Lt_00C1:	.ascii	" = \0"

.section .ctors
.int _fb_ctor__ppzpragma
