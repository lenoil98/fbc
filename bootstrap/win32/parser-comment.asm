	.intel_syntax noprefix

.section .text
.balign 16

.globl _CCOMMENT@4
_CCOMMENT@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
push dword ptr [ebp+8]
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 259
je .Lt_006D
.Lt_006E:
cmp dword ptr [ebp-8], 260
jne .Lt_006C
.Lt_006D:
push dword ptr [ebp+8]
call _LEXGETTOKEN@4
cmp eax, 260
jne .Lt_0070
cmp dword ptr [_ENV+136], 3
jne .Lt_0072
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 0
je .Lt_0074
mov dword ptr [ebp-4], 0
jmp .Lt_0069
.Lt_0074:
.Lt_0073:
.Lt_0072:
.Lt_0071:
.Lt_0070:
.Lt_006F:
mov ebx, dword ptr [_LEX+422144]
inc dword ptr [ebx+8380]
push 523
call _LEXSKIPTOKEN@4
push 523
call _LEXGETTOKEN@4
cmp eax, 36
jne .Lt_0076
push 523
call _LEXSKIPTOKEN@4
call _CDIRECTIVE@0
jmp .Lt_0075
.Lt_0076:
call _LEXSKIPLINE@0
.Lt_0075:
mov eax, dword ptr [_LEX+422144]
dec dword ptr [eax+8380]
mov dword ptr [ebp-4], -1
jmp .Lt_006A
.Lt_006C:
mov dword ptr [ebp-4], 0
.Lt_0077:
.Lt_006A:
.Lt_0069:
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
_CDIRECTIVE@0:
push ebp
mov ebp, esp
sub esp, 44
.Lt_0078:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
jmp .Lt_007B
.Lt_007D:
mov eax, dword ptr [_ENV+888]
and eax, 16777216
test eax, eax
jne .Lt_007F
push 0
push 146
push 16777216
call _ERRREPORTNOTALLOWED@12
jmp .Lt_007E
.Lt_007F:
push 0
call _LEXSKIPTOKEN@4
mov dword ptr [_ENV+944], -1
cmp dword ptr [_ENV+836], 0
jle .Lt_0081
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 10
push offset _Lt_0082
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_0081:
.Lt_0080:
.Lt_007E:
jmp .Lt_007A
.Lt_0084:
mov eax, dword ptr [_ENV+888]
and eax, 16777216
test eax, eax
jne .Lt_0086
push 0
push 146
push 16777216
call _ERRREPORTNOTALLOWED@12
jmp .Lt_0085
.Lt_0086:
push 0
call _LEXSKIPTOKEN@4
mov dword ptr [_ENV+944], 0
cmp dword ptr [_ENV+836], 0
jle .Lt_0088
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 9
push offset _Lt_0089
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_0088:
.Lt_0087:
.Lt_0085:
jmp .Lt_007A
.Lt_008B:
mov eax, dword ptr [_ENV+888]
and eax, 16777216
test eax, eax
jne .Lt_008D
push 0
push 146
push 16777216
call _ERRREPORTNOTALLOWED@12
jmp .Lt_008C
.Lt_008D:
push 0
call _LEXSKIPTOKEN@4
push 2048
push offset _Lt_008E
call _HMATCHIDORKW@8
mov dword ptr [_Lt_00B9], eax
push 0
push 258
call _HMATCH@8
test eax, eax
jne .Lt_0090
push 0
push 0
push 17
call _ERRREPORT@12
jmp .Lt_007A
.Lt_0090:
.Lt_008F:
push 0
call _LEXGETCLASS@4
cmp eax, 4
jne .Lt_0092
push 0
push offset _Lt_00BA
call _LEXEATTOKEN@8
jmp .Lt_0091
.Lt_0092:
push 527
call _LEXGETTOKEN@4
cmp eax, 259
je .Lt_0094
push 0
push 0
push 17
call _ERRREPORT@12
jmp .Lt_007A
jmp .Lt_0093
.Lt_0094:
push 527
call _LEXSKIPTOKEN@4
.Lt_0093:
push 0
push offset _Lt_00BA
push 39
call _LEXREADLINE@12
push 0
push 39
call _HMATCH@8
test eax, eax
jne .Lt_0096
push 0
push 0
push 17
call _ERRREPORT@12
jmp .Lt_007A
.Lt_0096:
.Lt_0095:
.Lt_0091:
push dword ptr [_Lt_00B9]
push offset _Lt_00BA
call _FBINCLUDEFILE@8
.Lt_008C:
jmp .Lt_007A
.Lt_0097:
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
je .Lt_009B
.Lt_009C:
cmp dword ptr [ebp-8], 2
jne .Lt_009A
.Lt_009B:
mov eax, dword ptr [_ENV+888]
and eax, 16777216
test eax, eax
je .Lt_009E
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_009E:
.Lt_009D:
jmp .Lt_0098
.Lt_009A:
push 0
push offset _Lt_00A0
call _HMATCHIDORKW@8
test eax, eax
je .Lt_00A2
push 0
push 258
call _HMATCH@8
test eax, eax
jne .Lt_00A4
push 0
push -1
push 203
call _ERRREPORT@12
jmp .Lt_0098
.Lt_00A4:
.Lt_00A3:
push 0
call _LEXGETCLASS@4
cmp eax, 4
jne .Lt_00A6
push 0
push offset _Lt_00BA
call _LEXEATTOKEN@8
push offset _Lt_00BA
call _FBGETLANGID@4
mov dword ptr [_Lt_00BB], eax
cmp dword ptr [_Lt_00BB], -1
jne .Lt_00A8
push 0
push 0
push 279
call _ERRREPORT@12
jmp .Lt_00A7
.Lt_00A8:
push dword ptr [_Lt_00BB]
push 10
call _FBCHANGEOPTION@8
cmp dword ptr [_ENV+836], 0
jle .Lt_00AA
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 2
push offset _Lt_00AC
push -1
push -1
push dword ptr [_Lt_00BB]
call _FBGETLANGNAME@4
push eax
push 10
push offset _Lt_00AB
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
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
.Lt_00AA:
.Lt_00A9:
.Lt_00A7:
jmp .Lt_00A5
.Lt_00A6:
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_00A5:
.Lt_00A2:
.Lt_00A1:
.Lt_009F:
.Lt_0098:
jmp .Lt_007A
.Lt_007B:
mov eax, dword ptr [ebp-4]
add eax, 4294966989
cmp eax, 10
ja .Lt_0097
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_00B0+eax*4-1228]
_.LT_00B0:
.int .Lt_0084
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_008B
.int .Lt_007D
.Lt_007A:
.Lt_00B1:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 257
je .Lt_00B7
.Lt_00B8:
cmp dword ptr [ebp-4], 256
jne .Lt_00B6
.Lt_00B7:
jmp .Lt_00B2
.Lt_00B6:
.Lt_00B4:
push 523
call _LEXSKIPTOKEN@4
.Lt_00B3:
jmp .Lt_00B1
.Lt_00B2:
.Lt_0079:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00BA,261
.balign 4
	.lcomm	_Lt_00B9,4
.balign 4
	.lcomm	_Lt_00BB,4
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_0082:	.ascii	"'$dynamic\0"
.balign 4
_Lt_0089:	.ascii	"'$static\0"
.balign 4
_Lt_008E:	.ascii	"ONCE\0"
.balign 4
_Lt_00A0:	.ascii	"LANG\0"
.balign 4
_Lt_00AB:	.ascii	"'$lang: \"\0"
.balign 4
_Lt_00AC:	.ascii	"\"\0"
