	.intel_syntax noprefix

.section .text
.balign 16

.globl _CMATHFUNCT@8
_CMATHFUNCT@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00B9:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_00BC
.Lt_00BE:
push 56
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00BF:
push 57
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00C0:
push 71
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00C1:
push 72
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00C2:
push 70
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00C3:
push 58
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00C4:
push 59
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00C5:
push 60
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00C6:
push 61
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00C7:
push 62
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00C8:
push 63
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00C9:
push 65
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00CA:
push 68
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00CB:
push 69
call _HMATHOP@4
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00CC:
call _HATAN2@0
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00CD:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HLENSIZEOF@8
mov dword ptr [ebp-4], eax
jmp .Lt_00BB
.Lt_00BC:
mov eax, dword ptr [ebp-8]
add eax, 4294966850
cmp eax, 18
ja .Lt_00BB
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_00CE+eax*4-1784]
_.LT_00CE:
.int .Lt_00BE
.int .Lt_00BF
.int .Lt_00C0
.int .Lt_00C1
.int .Lt_00C3
.int .Lt_00C4
.int .Lt_00C5
.int .Lt_00C6
.int .Lt_00C7
.int .Lt_00C8
.int .Lt_00C9
.int .Lt_00CA
.int .Lt_00CB
.int .Lt_00C2
.int .Lt_00CC
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00CD
.int .Lt_00CD
.Lt_00BB:
.Lt_00BA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
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
_HMATHOP@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0069:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_006C
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_006B
.Lt_006C:
push 0
call _LEXSKIPTOKEN@4
.Lt_006B:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006E
jmp .Lt_006A
.Lt_006E:
.Lt_006D:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0070
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_006F
.Lt_0070:
push 0
call _LEXSKIPTOKEN@4
.Lt_006F:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTNEWUOP@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0072
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.Lt_0072:
.Lt_0071:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_006A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HATAN2@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0073:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0076
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_0075
.Lt_0076:
push 0
call _LEXSKIPTOKEN@4
.Lt_0075:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0078
jmp .Lt_0074
.Lt_0078:
.Lt_0077:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_007A
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0079
.Lt_007A:
push 0
call _LEXSKIPTOKEN@4
.Lt_0079:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_007C
jmp .Lt_0074
.Lt_007C:
.Lt_007B:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_007E
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_007D
.Lt_007E:
push 0
call _LEXSKIPTOKEN@4
.Lt_007D:
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 64
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0080
push 0
push 0
push 24
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.Lt_0080:
.Lt_007F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0074:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HLEN@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0081:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 17
jne .Lt_0085
.Lt_0086:
push dword ptr [ebp+8]
call _RTLSTRLEN@4
mov dword ptr [ebp-4], eax
jmp .Lt_0082
jmp .Lt_0083
.Lt_0085:
cmp dword ptr [ebp-16], 4
jne .Lt_0087
.Lt_0088:
push dword ptr [ebp+8]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_008A
push dword ptr [ebp+8]
call _RTLSTRLEN@4
mov dword ptr [ebp-4], eax
jmp .Lt_0082
.Lt_008A:
.Lt_0089:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add ecx, 4294967295
adc ebx, 4294967295
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov dword ptr [eax+4], ebx
jmp .Lt_0083
.Lt_0087:
cmp dword ptr [ebp-16], 7
jne .Lt_008B
.Lt_008C:
push dword ptr [ebp+8]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_008E
push dword ptr [ebp+8]
call _RTLWSTRLEN@4
mov dword ptr [ebp-4], eax
jmp .Lt_0082
.Lt_008E:
.Lt_008D:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _HUNESCAPEW@4
push eax
call _fb_WstrLen@4
mov ebx, eax
mov ecx, ebx
sar ecx, 31
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov dword ptr [eax+4], ecx
jmp .Lt_0083
.Lt_008B:
cmp dword ptr [ebp-16], 18
jne .Lt_008F
.Lt_0090:
mov dword ptr [ebp-20], 0
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call _ASTSIZEOF@8
add eax, 4294967295
adc edx, 4294967295
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
jmp .Lt_0083
.Lt_008F:
cmp dword ptr [ebp-16], 20
jne .Lt_0092
.Lt_0093:
push dword ptr [ebp+8]
push 73
call _ASTNEWUOP@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_0095
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
jmp .Lt_0082
.Lt_0095:
.Lt_0094:
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+8]
call _ASTSIZEOF@8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
jmp .Lt_0083
.Lt_0092:
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+8]
call _ASTSIZEOF@8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.Lt_0097:
.Lt_0083:
push dword ptr [ebp+8]
call _ASTDELTREE@4
mov dword ptr [ebp-4], 0
.Lt_0082:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HLENSIZEOF@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0099:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_009C
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_009B
.Lt_009C:
push 0
call _LEXSKIPTOKEN@4
.Lt_009B:
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
call _CTYPEOREXPRESSION@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_009F
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 25
jne .Lt_00A1
mov dword ptr [ebp+8], 464
push dword ptr [ebp-8]
call _ASTREMOVENIDXARRAY@4
mov dword ptr [ebp-8], eax
.Lt_00A1:
.Lt_00A0:
jmp .Lt_009E
.Lt_009F:
cmp dword ptr [ebp+8], 464
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
call _CUDTTYPEMEMBER@16
jmp .Lt_009E
.Lt_00A2:
cmp dword ptr [ebp+8], 463
jne .Lt_00A3
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-12]
push eax
call _CUDTTYPEMEMBER@16
cmp dword ptr [ebp-32], 0
je .Lt_00A5
mov eax, dword ptr [ebp-12]
and eax, 511
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 4
je .Lt_00A9
.Lt_00AA:
cmp dword ptr [ebp-36], 17
je .Lt_00A9
.Lt_00AB:
cmp dword ptr [ebp-36], 18
jne .Lt_00A8
.Lt_00A9:
mov ebx, dword ptr [_SYMB_DTYPETB+116]
mov eax, ebx
sar eax, 31
sub dword ptr [ebp-20], ebx
sbb dword ptr [ebp-16], eax
fild qword ptr [ebp-20]
fild dword ptr [_SYMB_DTYPETB+116]
fxch st(1)
fdivrp
fistp qword ptr [ebp-20]
jmp .Lt_00A6
.Lt_00A8:
cmp dword ptr [ebp-36], 7
jne .Lt_00AC
.Lt_00AD:
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov ebx, eax
sar ebx, 31
sub dword ptr [ebp-20], eax
sbb dword ptr [ebp-16], ebx
fild qword ptr [ebp-20]
fild dword ptr [_SYMB_DTYPETB+200]
fxch st(1)
fdivrp
fistp qword ptr [ebp-20]
.Lt_00AC:
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
.Lt_00A3:
.Lt_009E:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_00AF
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_00AF:
cmp dword ptr [ebp+12], 0
jne .Lt_00B1
push 0
call _LEXSKIPTOKEN@4
.Lt_00B1:
.Lt_00B0:
.Lt_00AE:
cmp dword ptr [ebp-8], 0
je .Lt_00B3
cmp dword ptr [ebp+8], 463
jne .Lt_00B5
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
call _HLEN@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00B7
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.Lt_00B7:
.Lt_00B6:
jmp .Lt_00B4
.Lt_00B5:
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
push dword ptr [ebp-8]
call _ASTSIZEOF@8
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], edx
push dword ptr [ebp-8]
call _ASTDELTREE@4
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.Lt_00B4:
jmp .Lt_00B2
.Lt_00B3:
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.Lt_00B2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_009A:
mov eax, dword ptr [ebp-4]
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
