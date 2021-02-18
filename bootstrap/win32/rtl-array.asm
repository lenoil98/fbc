	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLARRAYMODINIT@0
_RTLARRAYMODINIT@0:
.Lt_0079:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS@4
.Lt_007A:
ret
.balign 16

.globl _RTLARRAYMODEND@0
_RTLARRAYMODEND@0:
.Lt_007B:
.Lt_007C:
ret
.balign 16

.globl _RTLARRAYCLEAR@4
_RTLARRAYCLEAR@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_009D:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 20
jne .Lt_00A0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _SYMBGETCOMPDEFCTOR@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _SYMBGETCOMPDTOR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
sete al
shr eax, 1
sbb eax, eax
push dword ptr [ebp-24]
mov ebx, eax
call _SYMBGETCOMPCTORHEAD@4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_00A2
push 0
push 0
push 183
call _ERRREPORT@12
.Lt_00A2:
.Lt_00A1:
jmp .Lt_009F
.Lt_00A0:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.Lt_009F:
cmp dword ptr [ebp-16], 0
setne cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .Lt_00A4
push -1
push -1
push dword ptr [ebp-16]
call _HCHECKDEFCTOR@12
push -1
push -1
push dword ptr [ebp-20]
call _HCHECKDTOR@12
push 0
push 123
push offset _Lt_0070
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00A6
jmp .Lt_009E
.Lt_00A6:
.Lt_00A5:
push -1
push -2147483648
push dword ptr [ebp-16]
call _HBUILDPROCPTR@4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00A8
jmp .Lt_009E
.Lt_00A8:
.Lt_00A7:
push -1
push -2147483648
push dword ptr [ebp-20]
call _HBUILDPROCPTR@4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00AA
jmp .Lt_009E
.Lt_00AA:
.Lt_00A9:
jmp .Lt_00A3
.Lt_00A4:
cmp dword ptr [ebp-12], 17
jne .Lt_00AB
push 0
push 121
push offset _Lt_006E
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00AD
jmp .Lt_009E
.Lt_00AD:
.Lt_00AC:
jmp .Lt_00A3
.Lt_00AB:
push 0
push 122
push offset _Lt_006F
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00AF
jmp .Lt_009E
.Lt_00AF:
.Lt_00AE:
.Lt_00A3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_009E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLARRAYERASE@12
_RTLARRAYERASE@12:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B4:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 20
jne .Lt_00B7
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
call _SYMBGETCOMPDEFCTOR@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _SYMBGETCOMPDTOR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
sete al
shr eax, 1
sbb eax, eax
push dword ptr [ebp-24]
mov ebx, eax
call _SYMBGETCOMPCTORHEAD@4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_00B9
push 0
push 0
push 183
call _ERRREPORT@12
.Lt_00B9:
.Lt_00B8:
jmp .Lt_00B6
.Lt_00B7:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.Lt_00B6:
cmp dword ptr [ebp-16], 0
setne cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .Lt_00BB
push -1
push dword ptr [ebp+16]
push dword ptr [ebp-20]
call _HCHECKDTOR@12
cmp dword ptr [ebp+12], 0
je .Lt_00BD
push 0
push 125
push offset _Lt_0072
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
jmp .Lt_00BC
.Lt_00BD:
push 0
push 120
push offset _Lt_006D
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
.Lt_00BC:
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00BF
jmp .Lt_00B5
.Lt_00BF:
.Lt_00BE:
cmp dword ptr [ebp+12], 0
je .Lt_00C1
push -1
push -2147483648
push dword ptr [ebp-16]
call _HBUILDPROCPTR@4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00C3
jmp .Lt_00B5
.Lt_00C3:
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
push -1
push -2147483648
push dword ptr [ebp-20]
call _HBUILDPROCPTR@4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00C5
jmp .Lt_00B5
.Lt_00C5:
.Lt_00C4:
jmp .Lt_00BA
.Lt_00BB:
cmp dword ptr [ebp-12], 17
jne .Lt_00C6
cmp dword ptr [ebp+12], 0
je .Lt_00C8
push 0
push 126
push offset _Lt_0073
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
jmp .Lt_00C7
.Lt_00C8:
push 0
push 121
push offset _Lt_006E
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
.Lt_00C7:
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00CA
jmp .Lt_00B5
.Lt_00CA:
.Lt_00C9:
jmp .Lt_00BA
.Lt_00C6:
cmp dword ptr [ebp+12], 0
jne .Lt_00CC
jmp .Lt_00B5
.Lt_00CC:
.Lt_00CB:
push 0
push 124
push offset _Lt_0071
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00CE
jmp .Lt_00B5
.Lt_00CE:
.Lt_00CD:
.Lt_00BA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00B5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLARRAYREDIM@20
_RTLARRAYREDIM@20:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-44], ecx
mov dword ptr [ebp-40], ebx
lea ecx, [ebp-32]
push ecx
lea ecx, [ebp-28]
push ecx
mov ecx, dword ptr [ebp-20]
push dword ptr [ecx+32]
push dword ptr [ebp-36]
call _HGETCTORDTORFORREDIM@16
cmp dword ptr [ebp-28], 0
sete cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-32], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .Lt_00DA
cmp dword ptr [ebp+20], 0
jne .Lt_00DC
push 127
push offset _Lt_0068
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-16], eax
jmp .Lt_00DB
.Lt_00DC:
push 129
push offset _Lt_0069
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-16], eax
.Lt_00DB:
jmp .Lt_00D9
.Lt_00DA:
cmp dword ptr [ebp+20], 0
jne .Lt_00DE
push 128
push offset _Lt_006A
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-16], eax
jmp .Lt_00DD
.Lt_00DE:
push 130
push offset _Lt_006B
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-16], eax
.Lt_00DD:
.Lt_00D9:
push 0
push dword ptr [ebp-16]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00E0
jmp .Lt_00D8
.Lt_00E0:
.Lt_00DF:
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00E2
jmp .Lt_00D8
.Lt_00E2:
.Lt_00E1:
cmp dword ptr [ebp-28], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00E4
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [ebp+24]
mov ebx, eax
sar ebx, 31
push ebx
push eax
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00E6
jmp .Lt_00D8
.Lt_00E6:
.Lt_00E5:
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [ebp-36]
cmp eax, 17
sete al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00E8
jmp .Lt_00D8
.Lt_00E8:
.Lt_00E7:
jmp .Lt_00E3
.Lt_00E4:
push 0
push -1
push dword ptr [ebp-28]
call _HCHECKDEFCTOR@12
push 0
push -1
push dword ptr [ebp-32]
call _HCHECKDTOR@12
push -1
push -2147483648
push dword ptr [ebp-28]
call _HBUILDPROCPTR@4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00EA
jmp .Lt_00D8
.Lt_00EA:
.Lt_00E9:
push -1
push -2147483648
push dword ptr [ebp-32]
call _HBUILDPROCPTR@4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00EC
jmp .Lt_00D8
.Lt_00EC:
.Lt_00EB:
.Lt_00E3:
push -1
push -2147483648
push 0
push 8
mov ecx, dword ptr [ebp+12]
mov eax, ecx
sar eax, 31
push eax
push ecx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00EE
jmp .Lt_00D8
.Lt_00EE:
.Lt_00ED:
mov dword ptr [ebp-48], 0
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-52], eax
jmp .Lt_00F0
.Lt_00F3:
mov eax, dword ptr [ebp+16]
add eax, 36
mov ecx, dword ptr [eax]
imul ecx, dword ptr [ebp-48]
sal ecx, 2
mov eax, dword ptr [ebp+16]
add ecx, dword ptr [eax]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
cmp ecx, 8
je .Lt_00F5
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
call _ASTNEWCONV@20
mov dword ptr [ebp-12], eax
.Lt_00F5:
.Lt_00F4:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00F7
jmp .Lt_00D8
.Lt_00F7:
.Lt_00F6:
mov eax, dword ptr [ebp+16]
add eax, 36
mov ecx, dword ptr [eax]
imul ecx, dword ptr [ebp-48]
sal ecx, 2
mov eax, dword ptr [ebp+16]
add ecx, dword ptr [eax]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 511
cmp ecx, 8
je .Lt_00F9
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
call _ASTNEWCONV@20
mov dword ptr [ebp-12], eax
.Lt_00F9:
.Lt_00F8:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00FB
jmp .Lt_00D8
.Lt_00FB:
.Lt_00FA:
.Lt_00F1:
inc dword ptr [ebp-48]
.Lt_00F0:
mov eax, dword ptr [ebp-52]
cmp dword ptr [ebp-48], eax
jle .Lt_00F3
.Lt_00F2:
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
mov dword ptr [ebp-4], eax
.Lt_00D8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _RTLARRAYREDIMTO@16
_RTLARRAYREDIMTO@16:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0101:
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _HGETCTORDTORFORREDIM@16
push 0
push 131
push offset _Lt_006C
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0104
jmp .Lt_0102
.Lt_0104:
.Lt_0103:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0106
jmp .Lt_0102
.Lt_0106:
.Lt_0105:
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [ebp+16]
and eax, 511
cmp eax, 17
sete al
shr eax, 1
sbb eax, eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0108
jmp .Lt_0102
.Lt_0108:
.Lt_0107:
push 0
push 0
push dword ptr [ebp-12]
call _HCHECKDEFCTOR@12
push 0
push 0
push dword ptr [ebp-16]
call _HCHECKDTOR@12
push -1
push -2147483648
push dword ptr [ebp-12]
call _HBUILDPROCPTR@4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_010A
jmp .Lt_0102
.Lt_010A:
.Lt_0109:
push -1
push -2147483648
push dword ptr [ebp-16]
call _HBUILDPROCPTR@4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_010C
jmp .Lt_0102
.Lt_010C:
.Lt_010B:
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
mov dword ptr [ebp-4], eax
.Lt_0102:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _RTLARRAYBOUND@12
_RTLARRAYBOUND@12:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_010E:
mov dword ptr [ebp-4], 0
push 0
cmp dword ptr [ebp+16], 0
je .Lt_0110
push 132
push offset _Lt_0074
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_0116
.Lt_0110:
push 133
push offset _Lt_0075
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_0116:
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0113
jmp .Lt_010F
.Lt_0113:
.Lt_0112:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0115
jmp .Lt_010F
.Lt_0115:
.Lt_0114:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_010F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLARRAYBOUNDSCHECK@20
_RTLARRAYBOUNDSCHECK@20:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0117:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .Lt_011A
push 134
push offset _Lt_0076
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_0119
.Lt_011A:
push 135
push offset _Lt_0077
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
.Lt_0119:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push 0
push 16
push dword ptr [ebp+8]
push 0
push 8
call _ASTNEWCONV@20
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_011C
jmp .Lt_0118
.Lt_011C:
.Lt_011B:
cmp dword ptr [ebp+12], 0
je .Lt_011E
push -1
push 8
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0120
jmp .Lt_0118
.Lt_0120:
.Lt_011F:
.Lt_011E:
.Lt_011D:
push -1
push 8
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0122
jmp .Lt_0118
.Lt_0122:
.Lt_0121:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0124
jmp .Lt_0118
.Lt_0124:
.Lt_0123:
push -1
push -2147483648
push dword ptr [ebp+24]
call _ASTNEWCONSTSTR@4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0126
jmp .Lt_0118
.Lt_0126:
.Lt_0125:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0118:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_fb_ctor__rtlzarray:
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
_HBUILDPROCPTR@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_007D:
cmp dword ptr [ebp+8], 0
jne .Lt_0080
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .Lt_007E
.Lt_0080:
.Lt_007F:
push dword ptr [ebp+8]
call _ASTBUILDPROCADDROF@4
mov dword ptr [ebp-4], eax
.Lt_007E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCHECKDEFCTOR@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0081:
cmp dword ptr [ebp+8], 0
jne .Lt_0084
jmp .Lt_0082
.Lt_0084:
cmp dword ptr [ebp+12], 0
je .Lt_0086
push dword ptr [ebp+8]
call _SYMBCHECKACCESS@4
test eax, eax
jne .Lt_0088
push 0
push 0
push 204
call _ERRREPORT@12
.Lt_0088:
.Lt_0087:
.Lt_0086:
.Lt_0085:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 3
je .Lt_008A
push 0
push 0
cmp dword ptr [ebp+16], 0
je .Lt_008B
mov dword ptr [ebp-4], 174
jmp .Lt_0127
.Lt_008B:
mov dword ptr [ebp-4], 171
.Lt_0127:
push dword ptr [ebp-4]
call _ERRREPORT@12
.Lt_008A:
.Lt_0089:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 1
je .Lt_008E
push 0
push 0
cmp dword ptr [ebp+16], 0
je .Lt_008F
mov dword ptr [ebp-4], 176
jmp .Lt_0128
.Lt_008F:
mov dword ptr [ebp-4], 173
.Lt_0128:
push dword ptr [ebp-4]
call _ERRREPORT@12
.Lt_008E:
.Lt_008D:
.Lt_0082:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCHECKDTOR@12:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0091:
cmp dword ptr [ebp+8], 0
jne .Lt_0094
jmp .Lt_0092
.Lt_0094:
cmp dword ptr [ebp+12], 0
je .Lt_0096
push dword ptr [ebp+8]
call _SYMBCHECKACCESS@4
test eax, eax
jne .Lt_0098
push 0
push 0
push 206
call _ERRREPORT@12
.Lt_0098:
.Lt_0097:
.Lt_0096:
.Lt_0095:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 3
je .Lt_009A
push 0
push 0
cmp dword ptr [ebp+16], 0
je .Lt_009B
mov dword ptr [ebp-4], 175
jmp .Lt_0129
.Lt_009B:
mov dword ptr [ebp-4], 172
.Lt_0129:
push dword ptr [ebp-4]
call _ERRREPORT@12
.Lt_009A:
.Lt_0099:
.Lt_0092:
mov esp, ebp
pop ebp
ret 12
.balign 16
_HGETCTORDTORFORREDIM@16:
push ebp
mov ebp, esp
push ebx
.Lt_00D3:
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
jne .Lt_00D6
push dword ptr [ebp+12]
call _SYMBGETCOMPDEFCTOR@4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
push dword ptr [ebp+12]
call _SYMBGETCOMPDTOR@4
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
jmp .Lt_00D5
.Lt_00D6:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
.Lt_00D5:
.Lt_00D4:
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_FUNCDATA:
.int _Lt_0068
.long 0
.int 11
.int 3
.long 0
.int 0
.int 6
.int 0
.int 3
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.int -2147483136
.int 4
.int 0
.skip 8,0
.skip 200,0
.int _Lt_0069
.long 0
.int 11
.int 3
.long 0
.int 0
.int 6
.int 0
.int 3
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.int -2147483136
.int 4
.int 0
.skip 8,0
.skip 200,0
.int _Lt_006A
.long 0
.int 11
.int 3
.long 0
.int 0
.int 6
.int 0
.int 3
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.int -2147483648
.int 4
.int 0
.skip 8,0
.skip 200,0
.int _Lt_006B
.long 0
.int 11
.int 3
.long 0
.int 0
.int 6
.int 0
.int 3
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.int -2147483648
.int 4
.int 0
.skip 8,0
.skip 200,0
.int _Lt_006C
.long 0
.int 11
.int -1
.long 0
.int 0
.int 5
.int 0
.int 3
.int 0
.skip 8,0
.int 0
.int 3
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 220,0
.int _Lt_006D
.long 0
.int 0
.int -1
.long 0
.int 0
.int 2
.int 0
.int 3
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 280,0
.int _Lt_006E
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 0
.int 3
.int 0
.skip 8,0
.skip 300,0
.int _Lt_006F
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 0
.int 3
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0070
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 0
.int 3
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 260,0
.int _Lt_0071
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 0
.int 3
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0072
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 0
.int 3
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 260,0
.int _Lt_0073
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 0
.int 3
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0074
.long 0
.int 8
.int -1
.long 0
.int 0
.int 2
.int 512
.int 3
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.skip 280,0
.int _Lt_0075
.long 0
.int 8
.int -1
.long 0
.int 0
.int 2
.int 512
.int 3
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.skip 280,0
.int _Lt_0076
.long 0
.int 32
.int -1
.long 0
.int 2048
.int 4
.int 521
.int 1
.int 0
.skip 8,0
.int 521
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 1060
.int 1
.int 0
.int 0
.int -1
.skip 240,0
.int _Lt_0077
.long 0
.int 32
.int -1
.long 0
.int 2048
.int 5
.int 520
.int 1
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 1060
.int 1
.int 0
.int 0
.int -1
.skip 220,0
.long 0
.skip 344,0
.balign 4
_Lt_0068:	.ascii	"fb_ArrayRedimEx\0"
.balign 4
_Lt_0069:	.ascii	"fb_ArrayRedimPresvEx\0"
.balign 4
_Lt_006A:	.ascii	"fb_ArrayRedimObj\0"
.balign 4
_Lt_006B:	.ascii	"fb_ArrayRedimPresvObj\0"
.balign 4
_Lt_006C:	.ascii	"fb_ArrayRedimTo\0"
.balign 4
_Lt_006D:	.ascii	"fb_ArrayDestructObj\0"
.balign 4
_Lt_006E:	.ascii	"fb_ArrayDestructStr\0"
.balign 4
_Lt_006F:	.ascii	"fb_ArrayClear\0"
.balign 4
_Lt_0070:	.ascii	"fb_ArrayClearObj\0"
.balign 4
_Lt_0071:	.ascii	"fb_ArrayErase\0"
.balign 4
_Lt_0072:	.ascii	"fb_ArrayEraseObj\0"
.balign 4
_Lt_0073:	.ascii	"fb_ArrayStrErase\0"
.balign 4
_Lt_0074:	.ascii	"fb_ArrayLBound\0"
.balign 4
_Lt_0075:	.ascii	"fb_ArrayUBound\0"
.balign 4
_Lt_0076:	.ascii	"fb_ArraySngBoundChk\0"
.balign 4
_Lt_0077:	.ascii	"fb_ArrayBoundChk\0"

.section .ctors
.int _fb_ctor__rtlzarray
