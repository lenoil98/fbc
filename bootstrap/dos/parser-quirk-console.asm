	.intel_syntax noprefix

.section .text
.balign 16

.globl _CVIEWSTMT
_CVIEWSTMT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0069:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 0
je .Lt_006B
mov dword ptr [ebp-24], -1
jmp .Lt_0081
.Lt_006B:
mov dword ptr [ebp-24], 0
.Lt_0081:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-20], eax
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 461
je .Lt_006E
jmp .Lt_006A
.Lt_006E:
.Lt_006D:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+8], 0
jne .Lt_0070
call _CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0072
push 2048
push 284
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0074
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0074:
.Lt_0073:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0076
jmp .Lt_006A
.Lt_0076:
.Lt_0075:
jmp .Lt_0071
.Lt_0072:
mov dword ptr [ebp-16], -1
.Lt_0071:
.Lt_0070:
.Lt_006F:
cmp dword ptr [ebp-16], 0
je .Lt_0078
cmp dword ptr [ebp+8], 0
je .Lt_007A
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_007C
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_007B
.Lt_007C:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_007B:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_007E
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_007D
.Lt_007E:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_007D:
.Lt_007A:
.Lt_0079:
push 0
push 8
mov ebx, dword ptr [ebp-20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
push 0
push 8
mov ebx, dword ptr [ebp-20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0078:
.Lt_0077:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLCONSOLEVIEW
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_0080
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
.Lt_0080:
.Lt_007F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_006A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CWIDTHSTMT
_CWIDTHSTMT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0082:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+8], 0
je .Lt_0085
push 0
push 40
call _HMATCH
add esp, 8
mov dword ptr [ebp-24], eax
jmp .Lt_0084
.Lt_0085:
mov dword ptr [ebp-24], 0
.Lt_0084:
cmp dword ptr [ebp+8], 0
je .Lt_0087
cmp dword ptr [ebp-24], 0
jne .Lt_0089
push dword ptr [ebp+8]
push 0
push 0
call _RTLWIDTHSCREEN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0083
jmp .Lt_0088
.Lt_0089:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
je .Lt_008A
push dword ptr [ebp+8]
push 0
push 0
call _RTLWIDTHSCREEN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0083
.Lt_008A:
.Lt_0088:
.Lt_0087:
.Lt_0086:
push 0
push 462
call _HMATCH
add esp, 8
test eax, eax
je .Lt_008C
push offset _Lt_008D
call _ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-20], eax
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_008F
jmp .Lt_0083
.Lt_008F:
.Lt_008E:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call _RTLWIDTHDEV
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_008B
.Lt_008C:
push 0
push 35
call _HMATCH
add esp, 8
test eax, eax
je .Lt_0090
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0092
jmp .Lt_0083
.Lt_0092:
.Lt_0091:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .Lt_0094
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0096
jmp .Lt_0083
.Lt_0096:
.Lt_0095:
jmp .Lt_0093
.Lt_0094:
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0093:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLWIDTHFILE
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_008B
.Lt_0090:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .Lt_0097
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0099
jmp .Lt_0083
.Lt_0099:
.Lt_0098:
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLWIDTHSCREEN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_008B
.Lt_0097:
push 17
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_009B
jmp .Lt_0083
.Lt_009B:
.Lt_009A:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _SYMBISSTRING
add esp, 4
test eax, eax
je .Lt_009D
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .Lt_009F
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00A1
jmp .Lt_0083
.Lt_00A1:
.Lt_00A0:
jmp .Lt_009E
.Lt_009F:
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_009E:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call _RTLWIDTHDEV
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_009C
.Lt_009D:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-20], 0
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .Lt_00A3
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00A5
jmp .Lt_0083
.Lt_00A5:
.Lt_00A4:
jmp .Lt_00A2
.Lt_00A3:
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_00A2:
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLWIDTHSCREEN
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_009C:
.Lt_008B:
cmp dword ptr [ebp-24], 0
je .Lt_00A7
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00A9
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00A8
.Lt_00A9:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00A8:
.Lt_00A7:
.Lt_00A6:
.Lt_0083:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCOLORSTMT
_CCOLORSTMT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00AA:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+8], 0
je .Lt_00AD
push 0
push 40
call _HMATCH
add esp, 8
cmp eax, -1
jne .Lt_00AF
call _CEXPRESSION
mov dword ptr [ebp-8], eax
push 0
push 44
call _HMATCH
add esp, 8
cmp eax, -1
jne .Lt_00B1
push -1
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00B3
jmp .Lt_00AB
.Lt_00B3:
.Lt_00B2:
.Lt_00B1:
.Lt_00B0:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00B5
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00B4
.Lt_00B5:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00B4:
.Lt_00AF:
.Lt_00AE:
jmp .Lt_00AC
.Lt_00AD:
push 0
push 40
call _HMATCH
add esp, 8
cmp eax, -1
jne .Lt_00B7
call _CEXPRESSION
mov dword ptr [ebp-8], eax
push 0
push 44
call _HMATCH
add esp, 8
cmp eax, -1
jne .Lt_00B9
push -1
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00BB
jmp .Lt_00AB
.Lt_00BB:
.Lt_00BA:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00BD
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00BC
.Lt_00BD:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00BC:
jmp .Lt_00B8
.Lt_00B9:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00BF
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00BE
.Lt_00BF:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00BE:
push 0
push 44
call _HMATCH
add esp, 8
cmp eax, -1
jne .Lt_00C1
push -1
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00C3
jmp .Lt_00AB
.Lt_00C3:
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
.Lt_00B8:
jmp .Lt_00B6
.Lt_00B7:
call _CEXPRESSION
mov dword ptr [ebp-8], eax
push 0
push 44
call _HMATCH
add esp, 8
cmp eax, -1
jne .Lt_00C5
push -1
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00C7
jmp .Lt_00AB
.Lt_00C7:
.Lt_00C6:
.Lt_00C5:
.Lt_00C4:
.Lt_00B6:
.Lt_00AC:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLCOLOR
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_00AB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSCREENFUNCT
_CSCREENFUNCT:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_00C8:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_00CB
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], -1
call _CEXPRESSION
mov dword ptr [ebp-12], eax
.Lt_00CB:
.Lt_00CA:
cmp dword ptr [ebp-12], 0
jne .Lt_00CD
push -1
push 0
push 0
call _RTLPAGESET
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00CC
.Lt_00CD:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_00CF
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .Lt_00CE
.Lt_00CF:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00CE:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00D1
jmp .Lt_00C9
.Lt_00D1:
.Lt_00D0:
mov dword ptr [ebp-20], 0
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
je .Lt_00D3
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00D5
jmp .Lt_00C9
.Lt_00D5:
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLCONSOLEREADXY
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_00CC:
cmp dword ptr [ebp-8], 0
je .Lt_00D7
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00D9
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00D8
.Lt_00D9:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00D8:
.Lt_00D7:
.Lt_00D6:
.Lt_00C9:
mov eax, dword ptr [ebp-4]
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

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_008D:	.ascii	"LPT1:\0"
