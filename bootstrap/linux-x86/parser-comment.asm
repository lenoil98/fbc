	.intel_syntax noprefix

.section .text
.balign 16

.globl CCOMMENT
CCOMMENT:
.type CCOMMENT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
sub esp, 12
push dword ptr [ebp+8]
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 259
je .Lt_006C
.Lt_006D:
cmp dword ptr [ebp-8], 260
jne .Lt_006B
.Lt_006C:
sub esp, 12
push dword ptr [ebp+8]
call LEXGETTOKEN
add esp, 16
cmp eax, 260
jne .Lt_006F
cmp dword ptr [ENV+136], 3
jne .Lt_0071
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 0
je .Lt_0073
mov dword ptr [ebp-4], 0
jmp .Lt_0068
.Lt_0073:
.Lt_0072:
.Lt_0071:
.Lt_0070:
.Lt_006F:
.Lt_006E:
mov ebx, dword ptr [LEX+839936]
inc dword ptr [ebx+16572]
sub esp, 12
push 523
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 523
call LEXGETTOKEN
add esp, 16
cmp eax, 36
jne .Lt_0075
sub esp, 12
push 523
call LEXSKIPTOKEN
add esp, 16
call CDIRECTIVE
jmp .Lt_0074
.Lt_0075:
call LEXSKIPLINE
.Lt_0074:
mov eax, dword ptr [LEX+839936]
dec dword ptr [eax+16572]
mov dword ptr [ebp-4], -1
jmp .Lt_0069
.Lt_006B:
mov dword ptr [ebp-4], 0
.Lt_0076:
.Lt_0069:
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CCOMMENT, .-CCOMMENT
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
CDIRECTIVE:
.type CDIRECTIVE, @function
push ebp
mov ebp, esp
sub esp, 56
.Lt_0077:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_007A
.Lt_007C:
mov eax, dword ptr [ENV+888]
and eax, 16777216
test eax, eax
jne .Lt_007E
sub esp, 4
push 0
push 146
push 16777216
call ERRREPORTNOTALLOWED
add esp, 16
jmp .Lt_007D
.Lt_007E:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ENV+944], -1
cmp dword ptr [ENV+836], 0
jle .Lt_0080
sub esp, 12
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 10
push offset Lt_0081
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_0080:
.Lt_007F:
.Lt_007D:
jmp .Lt_0079
.Lt_0083:
mov eax, dword ptr [ENV+888]
and eax, 16777216
test eax, eax
jne .Lt_0085
sub esp, 4
push 0
push 146
push 16777216
call ERRREPORTNOTALLOWED
add esp, 16
jmp .Lt_0084
.Lt_0085:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ENV+944], 0
cmp dword ptr [ENV+836], 0
jle .Lt_0087
sub esp, 12
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 9
push offset Lt_0088
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_0087:
.Lt_0086:
.Lt_0084:
jmp .Lt_0079
.Lt_008A:
mov eax, dword ptr [ENV+888]
and eax, 16777216
test eax, eax
jne .Lt_008C
sub esp, 4
push 0
push 146
push 16777216
call ERRREPORTNOTALLOWED
add esp, 16
jmp .Lt_008B
.Lt_008C:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 2048
push offset Lt_008D
call HMATCHIDORKW
add esp, 16
mov dword ptr [Lt_00B8], eax
sub esp, 8
push 0
push 258
call HMATCH
add esp, 16
test eax, eax
jne .Lt_008F
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
jmp .Lt_0079
.Lt_008F:
.Lt_008E:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
jne .Lt_0091
sub esp, 8
push 0
push offset Lt_00B9
call LEXEATTOKEN
add esp, 16
jmp .Lt_0090
.Lt_0091:
sub esp, 12
push 527
call LEXGETTOKEN
add esp, 16
cmp eax, 259
je .Lt_0093
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
jmp .Lt_0079
jmp .Lt_0092
.Lt_0093:
sub esp, 12
push 527
call LEXSKIPTOKEN
add esp, 16
.Lt_0092:
sub esp, 4
push 0
push offset Lt_00B9
push 39
call LEXREADLINE
add esp, 16
sub esp, 8
push 0
push 39
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0095
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
jmp .Lt_0079
.Lt_0095:
.Lt_0094:
.Lt_0090:
sub esp, 8
push dword ptr [Lt_00B8]
push offset Lt_00B9
call FBINCLUDEFILE
add esp, 16
.Lt_008B:
jmp .Lt_0079
.Lt_0096:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
je .Lt_009A
.Lt_009B:
cmp dword ptr [ebp-8], 2
jne .Lt_0099
.Lt_009A:
mov eax, dword ptr [ENV+888]
and eax, 16777216
test eax, eax
je .Lt_009D
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.Lt_009D:
.Lt_009C:
jmp .Lt_0097
.Lt_0099:
sub esp, 8
push 0
push offset Lt_009F
call HMATCHIDORKW
add esp, 16
test eax, eax
je .Lt_00A1
sub esp, 8
push 0
push 258
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00A3
sub esp, 4
push 0
push -1
push 203
call ERRREPORT
add esp, 16
jmp .Lt_0097
.Lt_00A3:
.Lt_00A2:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
jne .Lt_00A5
sub esp, 8
push 0
push offset Lt_00B9
call LEXEATTOKEN
add esp, 16
sub esp, 12
push offset Lt_00B9
call FBGETLANGID
add esp, 16
mov dword ptr [Lt_00BA], eax
cmp dword ptr [Lt_00BA], -1
jne .Lt_00A7
sub esp, 4
push 0
push 0
push 279
call ERRREPORT
add esp, 16
jmp .Lt_00A6
.Lt_00A7:
sub esp, 8
push dword ptr [Lt_00BA]
push 10
call FBCHANGEOPTION
add esp, 16
cmp dword ptr [ENV+836], 0
jle .Lt_00A9
sub esp, 12
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_00AB
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [Lt_00BA]
call FBGETLANGNAME
add esp, 16
push eax
push 10
push offset Lt_00AA
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-44]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
.Lt_00A9:
.Lt_00A8:
.Lt_00A6:
jmp .Lt_00A4
.Lt_00A5:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.Lt_00A4:
.Lt_00A1:
.Lt_00A0:
.Lt_009E:
.Lt_0097:
jmp .Lt_0079
.Lt_007A:
mov eax, dword ptr [ebp-4]
add eax, 4294966989
cmp eax, 10
ja .Lt_0096
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_00AF+eax*4-1228]
.LT_00AF:
.int .Lt_0083
.int .Lt_0096
.int .Lt_0096
.int .Lt_0096
.int .Lt_0096
.int .Lt_0096
.int .Lt_0096
.int .Lt_0096
.int .Lt_0096
.int .Lt_008A
.int .Lt_007C
.Lt_0079:
.Lt_00B0:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 257
je .Lt_00B6
.Lt_00B7:
cmp dword ptr [ebp-4], 256
jne .Lt_00B5
.Lt_00B6:
jmp .Lt_00B1
.Lt_00B5:
.Lt_00B3:
sub esp, 12
push 523
call LEXSKIPTOKEN
add esp, 16
.Lt_00B2:
jmp .Lt_00B0
.Lt_00B1:
.Lt_0078:
mov esp, ebp
pop ebp
ret
.size CDIRECTIVE, .-CDIRECTIVE

.section .bss
.balign 4
	.lcomm	Lt_00B9,261
.balign 4
	.lcomm	Lt_00B8,4
.balign 4
	.lcomm	Lt_00BA,4
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_0081:	.ascii	"'$dynamic\0"
.balign 4
Lt_0088:	.ascii	"'$static\0"
.balign 4
Lt_008D:	.ascii	"ONCE\0"
.balign 4
Lt_009F:	.ascii	"LANG\0"
.balign 4
Lt_00AA:	.ascii	"'$lang: \"\0"
.balign 4
Lt_00AB:	.ascii	"\"\0"
