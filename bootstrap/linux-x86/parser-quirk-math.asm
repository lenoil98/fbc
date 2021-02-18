	.intel_syntax noprefix

.section .text
.balign 16

.globl CMATHFUNCT
CMATHFUNCT:
.type CMATHFUNCT, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00B8:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_00BB
.Lt_00BD:
sub esp, 12
push 56
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00BE:
sub esp, 12
push 57
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00BF:
sub esp, 12
push 71
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00C0:
sub esp, 12
push 72
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00C1:
sub esp, 12
push 70
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00C2:
sub esp, 12
push 58
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00C3:
sub esp, 12
push 59
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00C4:
sub esp, 12
push 60
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00C5:
sub esp, 12
push 61
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00C6:
sub esp, 12
push 62
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00C7:
sub esp, 12
push 63
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00C8:
sub esp, 12
push 65
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00C9:
sub esp, 12
push 68
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00CA:
sub esp, 12
push 69
call HMATHOP
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00CB:
call HATAN2
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00CC:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HLENSIZEOF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00BB:
mov eax, dword ptr [ebp-8]
add eax, 4294966850
cmp eax, 18
ja .Lt_00BA
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_00CD+eax*4-1784]
.LT_00CD:
.int .Lt_00BD
.int .Lt_00BE
.int .Lt_00BF
.int .Lt_00C0
.int .Lt_00C2
.int .Lt_00C3
.int .Lt_00C4
.int .Lt_00C5
.int .Lt_00C6
.int .Lt_00C7
.int .Lt_00C8
.int .Lt_00C9
.int .Lt_00CA
.int .Lt_00C1
.int .Lt_00CB
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00CC
.int .Lt_00CC
.Lt_00BA:
.Lt_00B9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CMATHFUNCT, .-CMATHFUNCT
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
HMATHOP:
.type HMATHOP, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0068:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_006B
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_006A
.Lt_006B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_006A:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006D
jmp .Lt_0069
.Lt_006D:
.Lt_006C:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_006F
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
jmp .Lt_006E
.Lt_006F:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_006E:
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0071
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0071:
.Lt_0070:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HMATHOP, .-HMATHOP
.balign 16
HATAN2:
.type HATAN2, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0072:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_0075
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_0074
.Lt_0075:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0074:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0077
jmp .Lt_0073
.Lt_0077:
.Lt_0076:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0079
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_0078
.Lt_0079:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0078:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_007B
jmp .Lt_0073
.Lt_007B:
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
sub esp, 12
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 64
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_007F
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_007F:
.Lt_007E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0073:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HATAN2, .-HATAN2
.balign 16
HLEN:
.type HLEN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0080:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 17
jne .Lt_0084
.Lt_0085:
sub esp, 12
push dword ptr [ebp+8]
call RTLSTRLEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0081
jmp .Lt_0082
.Lt_0084:
cmp dword ptr [ebp-16], 4
jne .Lt_0086
.Lt_0087:
sub esp, 12
push dword ptr [ebp+8]
call ASTGETSTRLITSYMBOL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0089
sub esp, 12
push dword ptr [ebp+8]
call RTLSTRLEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0081
.Lt_0089:
.Lt_0088:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add ecx, 4294967295
adc ebx, 4294967295
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], ebx
jmp .Lt_0082
.Lt_0086:
cmp dword ptr [ebp-16], 7
jne .Lt_008A
.Lt_008B:
sub esp, 12
push dword ptr [ebp+8]
call ASTGETSTRLITSYMBOL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_008D
sub esp, 12
push dword ptr [ebp+8]
call RTLWSTRLEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0081
.Lt_008D:
.Lt_008C:
sub esp, 12
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call HUNESCAPEW
add esp, 4
push eax
call fb_WstrLen
add esp, 16
mov ebx, eax
mov ecx, ebx
sar ecx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov dword ptr [eax+4], ecx
jmp .Lt_0082
.Lt_008A:
cmp dword ptr [ebp-16], 18
jne .Lt_008E
.Lt_008F:
sub esp, 8
mov dword ptr [ebp-20], 0
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call ASTSIZEOF
add esp, 16
add eax, 4294967295
adc edx, 4294967295
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
jmp .Lt_0082
.Lt_008E:
cmp dword ptr [ebp-16], 20
jne .Lt_0091
.Lt_0092:
sub esp, 8
push dword ptr [ebp+8]
push 73
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_0094
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .Lt_0081
.Lt_0094:
.Lt_0093:
sub esp, 8
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+8]
call ASTSIZEOF
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
jmp .Lt_0082
.Lt_0091:
sub esp, 8
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+8]
call ASTSIZEOF
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.Lt_0096:
.Lt_0082:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], 0
.Lt_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HLEN, .-HLEN
.balign 16
HLENSIZEOF:
.type HLENSIZEOF, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0098:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_009B
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_009A
.Lt_009B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_009A:
sub esp, 12
mov dword ptr [ebp-28], 0
lea eax, [ebp-28]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call CTYPEOREXPRESSION
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_009E
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .Lt_00A0
mov dword ptr [ebp+8], 464
sub esp, 12
push dword ptr [ebp-8]
call ASTREMOVENIDXARRAY
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00A0:
.Lt_009F:
jmp .Lt_009D
.Lt_009E:
cmp dword ptr [ebp+8], 464
jne .Lt_00A1
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
call CUDTTYPEMEMBER
add esp, 16
jmp .Lt_009D
.Lt_00A1:
cmp dword ptr [ebp+8], 463
jne .Lt_00A2
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
call CUDTTYPEMEMBER
add esp, 16
cmp dword ptr [ebp-32], 0
je .Lt_00A4
mov eax, dword ptr [ebp-12]
and eax, 511
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 4
je .Lt_00A8
.Lt_00A9:
cmp dword ptr [ebp-36], 17
je .Lt_00A8
.Lt_00AA:
cmp dword ptr [ebp-36], 18
jne .Lt_00A7
.Lt_00A8:
mov ebx, dword ptr [SYMB_DTYPETB+116]
mov eax, ebx
sar eax, 31
sub dword ptr [ebp-20], ebx
sbb dword ptr [ebp-16], eax
fild qword ptr [ebp-20]
fild dword ptr [SYMB_DTYPETB+116]
fxch st(1)
fdivrp
fistp qword ptr [ebp-20]
jmp .Lt_00A5
.Lt_00A7:
cmp dword ptr [ebp-36], 7
jne .Lt_00AB
.Lt_00AC:
mov eax, dword ptr [SYMB_DTYPETB+200]
mov ebx, eax
sar ebx, 31
sub dword ptr [ebp-20], eax
sbb dword ptr [ebp-16], ebx
fild qword ptr [ebp-20]
fild dword ptr [SYMB_DTYPETB+200]
fxch st(1)
fdivrp
fistp qword ptr [ebp-20]
.Lt_00AB:
.Lt_00A5:
.Lt_00A4:
.Lt_00A3:
.Lt_00A2:
.Lt_009D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_00AE
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
jmp .Lt_00AD
.Lt_00AE:
cmp dword ptr [ebp+12], 0
jne .Lt_00B0
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00B0:
.Lt_00AF:
.Lt_00AD:
cmp dword ptr [ebp-8], 0
je .Lt_00B2
cmp dword ptr [ebp+8], 463
jne .Lt_00B4
sub esp, 8
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call HLEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00B6
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00B6:
.Lt_00B5:
jmp .Lt_00B3
.Lt_00B4:
sub esp, 8
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
push dword ptr [ebp-8]
call ASTSIZEOF
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00B3:
jmp .Lt_00B1
.Lt_00B2:
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00B1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0099:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HLENSIZEOF, .-HLENSIZEOF

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
