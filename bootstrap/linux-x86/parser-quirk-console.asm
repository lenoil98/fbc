	.intel_syntax noprefix

.section .text
.balign 16

.globl CVIEWSTMT
CVIEWSTMT:
.type CVIEWSTMT, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 0
je .Lt_006A
mov dword ptr [ebp-24], -1
jmp .Lt_0080
.Lt_006A:
mov dword ptr [ebp-24], 0
.Lt_0080:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-20], eax
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 461
je .Lt_006D
jmp .Lt_0069
.Lt_006D:
.Lt_006C:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp+8], 0
jne .Lt_006F
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0071
sub esp, 8
push 2048
push 284
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0073
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0073:
.Lt_0072:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0075
jmp .Lt_0069
.Lt_0075:
.Lt_0074:
jmp .Lt_0070
.Lt_0071:
mov dword ptr [ebp-16], -1
.Lt_0070:
.Lt_006F:
.Lt_006E:
cmp dword ptr [ebp-16], 0
je .Lt_0077
cmp dword ptr [ebp+8], 0
je .Lt_0079
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_007B
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_007A
.Lt_007B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_007A:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_007D
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
jmp .Lt_007C
.Lt_007D:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_007C:
.Lt_0079:
.Lt_0078:
push 0
push 8
mov ebx, dword ptr [ebp-20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
push 0
push 8
mov ebx, dword ptr [ebp-20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0077:
.Lt_0076:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLCONSOLEVIEW
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_007F
sub esp, 12
push dword ptr [ebp-8]
call ASTADD
add esp, 16
.Lt_007F:
.Lt_007E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CVIEWSTMT, .-CVIEWSTMT
.balign 16

.globl CWIDTHSTMT
CWIDTHSTMT:
.type CWIDTHSTMT, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0081:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp+8], 0
je .Lt_0084
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_0083
.Lt_0084:
mov dword ptr [ebp-24], 0
.Lt_0083:
cmp dword ptr [ebp+8], 0
je .Lt_0086
cmp dword ptr [ebp-24], 0
jne .Lt_0088
sub esp, 4
push dword ptr [ebp+8]
push 0
push 0
call RTLWIDTHSCREEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0082
jmp .Lt_0087
.Lt_0088:
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
je .Lt_0089
sub esp, 4
push dword ptr [ebp+8]
push 0
push 0
call RTLWIDTHSCREEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0082
.Lt_0089:
.Lt_0087:
.Lt_0086:
.Lt_0085:
sub esp, 8
push 0
push 462
call HMATCH
add esp, 16
test eax, eax
je .Lt_008B
sub esp, 12
push offset Lt_008C
call ASTNEWCONSTSTR
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_008E
jmp .Lt_0082
.Lt_008E:
.Lt_008D:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call RTLWIDTHDEV
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_008A
.Lt_008B:
sub esp, 8
push 0
push 35
call HMATCH
add esp, 16
test eax, eax
je .Lt_008F
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0091
jmp .Lt_0082
.Lt_0091:
.Lt_0090:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0093
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0095
jmp .Lt_0082
.Lt_0095:
.Lt_0094:
jmp .Lt_0092
.Lt_0093:
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0092:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLWIDTHFILE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_008A
.Lt_008F:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_0096
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0098
jmp .Lt_0082
.Lt_0098:
.Lt_0097:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLWIDTHSCREEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_008A
.Lt_0096:
sub esp, 12
push 17
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_009A
jmp .Lt_0082
.Lt_009A:
.Lt_0099:
sub esp, 12
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call SYMBISSTRING
add esp, 16
test eax, eax
je .Lt_009C
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_009E
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00A0
jmp .Lt_0082
.Lt_00A0:
.Lt_009F:
jmp .Lt_009D
.Lt_009E:
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_009D:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call RTLWIDTHDEV
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_009B
.Lt_009C:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-20], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_00A2
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00A4
jmp .Lt_0082
.Lt_00A4:
.Lt_00A3:
jmp .Lt_00A1
.Lt_00A2:
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_00A1:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLWIDTHSCREEN
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_009B:
.Lt_008A:
cmp dword ptr [ebp-24], 0
je .Lt_00A6
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_00A8
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
jmp .Lt_00A7
.Lt_00A8:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
.Lt_0082:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CWIDTHSTMT, .-CWIDTHSTMT
.balign 16

.globl CCOLORSTMT
CCOLORSTMT:
.type CCOLORSTMT, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_00A9:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp+8], 0
je .Lt_00AC
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
cmp eax, -1
jne .Lt_00AE
call CEXPRESSION
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
cmp eax, -1
jne .Lt_00B0
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00B2
jmp .Lt_00AA
.Lt_00B2:
.Lt_00B1:
.Lt_00B0:
.Lt_00AF:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_00B4
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
jmp .Lt_00B3
.Lt_00B4:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00B3:
.Lt_00AE:
.Lt_00AD:
jmp .Lt_00AB
.Lt_00AC:
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
cmp eax, -1
jne .Lt_00B6
call CEXPRESSION
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
cmp eax, -1
jne .Lt_00B8
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00BA
jmp .Lt_00AA
.Lt_00BA:
.Lt_00B9:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_00BC
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
jmp .Lt_00BB
.Lt_00BC:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00BB:
jmp .Lt_00B7
.Lt_00B8:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_00BE
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
jmp .Lt_00BD
.Lt_00BE:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00BD:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
cmp eax, -1
jne .Lt_00C0
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00C2
jmp .Lt_00AA
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
.Lt_00B7:
jmp .Lt_00B5
.Lt_00B6:
call CEXPRESSION
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
cmp eax, -1
jne .Lt_00C4
sub esp, 12
push -1
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00C6
jmp .Lt_00AA
.Lt_00C6:
.Lt_00C5:
.Lt_00C4:
.Lt_00C3:
.Lt_00B5:
.Lt_00AB:
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLCOLOR
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00AA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CCOLORSTMT, .-CCOLORSTMT
.balign 16

.globl CSCREENFUNCT
CSCREENFUNCT:
.type CSCREENFUNCT, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_00C7:
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .Lt_00CA
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], -1
call CEXPRESSION
mov dword ptr [ebp-12], eax
.Lt_00CA:
.Lt_00C9:
cmp dword ptr [ebp-12], 0
jne .Lt_00CC
sub esp, 4
push -1
push 0
push 0
call RTLPAGESET
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00CB
.Lt_00CC:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_00CE
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_00CD
.Lt_00CE:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00CD:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00D0
jmp .Lt_00C8
.Lt_00D0:
.Lt_00CF:
mov dword ptr [ebp-20], 0
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
je .Lt_00D2
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00D4
jmp .Lt_00C8
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
.Lt_00D1:
sub esp, 4
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLCONSOLEREADXY
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00CB:
cmp dword ptr [ebp-8], 0
je .Lt_00D6
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_00D8
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
jmp .Lt_00D7
.Lt_00D8:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00D7:
.Lt_00D6:
.Lt_00D5:
.Lt_00C8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CSCREENFUNCT, .-CSCREENFUNCT
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

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_008C:	.ascii	"LPT1:\0"
