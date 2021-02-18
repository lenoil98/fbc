	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLARRAYMODINIT
RTLARRAYMODINIT:
.type RTLARRAYMODINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0078:
sub esp, 12
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 16
.Lt_0079:
mov esp, ebp
pop ebp
ret
.size RTLARRAYMODINIT, .-RTLARRAYMODINIT
.balign 16

.globl RTLARRAYMODEND
RTLARRAYMODEND:
.type RTLARRAYMODEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_007A:
.Lt_007B:
mov esp, ebp
pop ebp
ret
.size RTLARRAYMODEND, .-RTLARRAYMODEND
.balign 16

.globl RTLARRAYCLEAR
RTLARRAYCLEAR:
.type RTLARRAYCLEAR, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_009C:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 20
jne .Lt_009F
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp-24]
call SYMBGETCOMPDEFCTOR
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-24]
call SYMBGETCOMPDTOR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push dword ptr [ebp-24]
mov ebx, eax
call SYMBGETCOMPCTORHEAD
add esp, 16
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_00A1
sub esp, 4
push 0
push 0
push 183
call ERRREPORT
add esp, 16
.Lt_00A1:
.Lt_00A0:
jmp .Lt_009E
.Lt_009F:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.Lt_009E:
cmp dword ptr [ebp-16], 0
setne cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .Lt_00A3
sub esp, 4
push -1
push -1
push dword ptr [ebp-16]
call HCHECKDEFCTOR
add esp, 16
sub esp, 4
push -1
push -1
push dword ptr [ebp-20]
call HCHECKDTOR
add esp, 16
sub esp, 8
push 0
sub esp, 12
push 123
push offset Lt_006F
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00A5
jmp .Lt_009D
.Lt_00A5:
.Lt_00A4:
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-16]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00A7
jmp .Lt_009D
.Lt_00A7:
.Lt_00A6:
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-20]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00A9
jmp .Lt_009D
.Lt_00A9:
.Lt_00A8:
jmp .Lt_00A2
.Lt_00A3:
cmp dword ptr [ebp-12], 17
jne .Lt_00AA
sub esp, 8
push 0
sub esp, 12
push 121
push offset Lt_006D
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00AC
jmp .Lt_009D
.Lt_00AC:
.Lt_00AB:
jmp .Lt_00A2
.Lt_00AA:
sub esp, 8
push 0
sub esp, 12
push 122
push offset Lt_006E
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00AE
jmp .Lt_009D
.Lt_00AE:
.Lt_00AD:
.Lt_00A2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_009D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLARRAYCLEAR, .-RTLARRAYCLEAR
.balign 16

.globl RTLARRAYERASE
RTLARRAYERASE:
.type RTLARRAYERASE, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B3:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 20
jne .Lt_00B6
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp-24]
call SYMBGETCOMPDEFCTOR
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-24]
call SYMBGETCOMPDTOR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-16], 0
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push dword ptr [ebp-24]
mov ebx, eax
call SYMBGETCOMPCTORHEAD
add esp, 16
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_00B8
sub esp, 4
push 0
push 0
push 183
call ERRREPORT
add esp, 16
.Lt_00B8:
.Lt_00B7:
jmp .Lt_00B5
.Lt_00B6:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.Lt_00B5:
cmp dword ptr [ebp-16], 0
setne cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .Lt_00BA
sub esp, 4
push -1
push dword ptr [ebp+16]
push dword ptr [ebp-20]
call HCHECKDTOR
add esp, 16
cmp dword ptr [ebp+12], 0
je .Lt_00BC
sub esp, 8
push 0
sub esp, 12
push 125
push offset Lt_0071
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00BB
.Lt_00BC:
sub esp, 8
push 0
sub esp, 12
push 120
push offset Lt_006C
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00BB:
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00BE
jmp .Lt_00B4
.Lt_00BE:
.Lt_00BD:
cmp dword ptr [ebp+12], 0
je .Lt_00C0
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-16]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00C2
jmp .Lt_00B4
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-20]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00C4
jmp .Lt_00B4
.Lt_00C4:
.Lt_00C3:
jmp .Lt_00B9
.Lt_00BA:
cmp dword ptr [ebp-12], 17
jne .Lt_00C5
cmp dword ptr [ebp+12], 0
je .Lt_00C7
sub esp, 8
push 0
sub esp, 12
push 126
push offset Lt_0072
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00C7:
sub esp, 8
push 0
sub esp, 12
push 121
push offset Lt_006D
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00C6:
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00C9
jmp .Lt_00B4
.Lt_00C9:
.Lt_00C8:
jmp .Lt_00B9
.Lt_00C5:
cmp dword ptr [ebp+12], 0
jne .Lt_00CB
jmp .Lt_00B4
.Lt_00CB:
.Lt_00CA:
sub esp, 8
push 0
sub esp, 12
push 124
push offset Lt_0070
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp-12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00CD
jmp .Lt_00B4
.Lt_00CD:
.Lt_00CC:
.Lt_00B9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00B4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLARRAYERASE, .-RTLARRAYERASE
.balign 16

.globl RTLARRAYREDIM
RTLARRAYREDIM:
.type RTLARRAYREDIM, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D6:
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
call HGETCTORDTORFORREDIM
add esp, 16
cmp dword ptr [ebp-28], 0
sete cl
shr ecx, 1
sbb ecx, ecx
cmp dword ptr [ebp-32], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .Lt_00D9
cmp dword ptr [ebp+20], 0
jne .Lt_00DB
sub esp, 8
push 127
push offset Lt_0067
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-16], eax
jmp .Lt_00DA
.Lt_00DB:
sub esp, 8
push 129
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_00DA:
jmp .Lt_00D8
.Lt_00D9:
cmp dword ptr [ebp+20], 0
jne .Lt_00DD
sub esp, 8
push 128
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-16], eax
jmp .Lt_00DC
.Lt_00DD:
sub esp, 8
push 130
push offset Lt_006A
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_00DC:
.Lt_00D8:
sub esp, 8
push 0
push dword ptr [ebp-16]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00DF
jmp .Lt_00D7
.Lt_00DF:
.Lt_00DE:
push -1
push -2147483648
sub esp, 8
push 0
push 8
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00E1
jmp .Lt_00D7
.Lt_00E1:
.Lt_00E0:
cmp dword ptr [ebp-28], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00E3
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov eax, dword ptr [ebp+24]
mov ebx, eax
sar ebx, 31
push ebx
push eax
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00E5
jmp .Lt_00D7
.Lt_00E5:
.Lt_00E4:
push -1
push -2147483648
sub esp, 8
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
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00E7
jmp .Lt_00D7
.Lt_00E7:
.Lt_00E6:
jmp .Lt_00E2
.Lt_00E3:
sub esp, 4
push 0
push -1
push dword ptr [ebp-28]
call HCHECKDEFCTOR
add esp, 16
sub esp, 4
push 0
push -1
push dword ptr [ebp-32]
call HCHECKDTOR
add esp, 16
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-28]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00E9
jmp .Lt_00D7
.Lt_00E9:
.Lt_00E8:
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-32]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00EB
jmp .Lt_00D7
.Lt_00EB:
.Lt_00EA:
.Lt_00E2:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ecx, dword ptr [ebp+12]
mov eax, ecx
sar eax, 31
push eax
push ecx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00ED
jmp .Lt_00D7
.Lt_00ED:
.Lt_00EC:
mov dword ptr [ebp-48], 0
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-52], eax
jmp .Lt_00EF
.Lt_00F2:
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
je .Lt_00F4
sub esp, 12
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-12], eax
.Lt_00F4:
.Lt_00F3:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00F6
jmp .Lt_00D7
.Lt_00F6:
.Lt_00F5:
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
je .Lt_00F8
sub esp, 12
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-12], eax
.Lt_00F8:
.Lt_00F7:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00FA
jmp .Lt_00D7
.Lt_00FA:
.Lt_00F9:
.Lt_00F0:
inc dword ptr [ebp-48]
.Lt_00EF:
mov eax, dword ptr [ebp-52]
cmp dword ptr [ebp-48], eax
jle .Lt_00F2
.Lt_00F1:
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00D7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLARRAYREDIM, .-RTLARRAYREDIM
.balign 16

.globl RTLARRAYREDIMTO
RTLARRAYREDIMTO:
.type RTLARRAYREDIMTO, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0100:
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call HGETCTORDTORFORREDIM
add esp, 16
sub esp, 8
push 0
sub esp, 12
push 131
push offset Lt_006B
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0103
jmp .Lt_0101
.Lt_0103:
.Lt_0102:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0105
jmp .Lt_0101
.Lt_0105:
.Lt_0104:
push -1
push -2147483648
sub esp, 8
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
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0107
jmp .Lt_0101
.Lt_0107:
.Lt_0106:
sub esp, 4
push 0
push 0
push dword ptr [ebp-12]
call HCHECKDEFCTOR
add esp, 16
sub esp, 4
push 0
push 0
push dword ptr [ebp-16]
call HCHECKDTOR
add esp, 16
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-12]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0109
jmp .Lt_0101
.Lt_0109:
.Lt_0108:
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-16]
call HBUILDPROCPTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_010B
jmp .Lt_0101
.Lt_010B:
.Lt_010A:
sub esp, 12
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0101:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLARRAYREDIMTO, .-RTLARRAYREDIMTO
.balign 16

.globl RTLARRAYBOUND
RTLARRAYBOUND:
.type RTLARRAYBOUND, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_010D:
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
cmp dword ptr [ebp+16], 0
je .Lt_010F
sub esp, 12
push 132
push offset Lt_0073
call RTLPROCLOOKUP
add esp, 20
mov dword ptr [ebp-12], eax
jmp .Lt_0115
.Lt_010F:
sub esp, 12
push 133
push offset Lt_0074
call RTLPROCLOOKUP
add esp, 20
mov dword ptr [ebp-12], eax
.Lt_0115:
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0112
jmp .Lt_010E
.Lt_0112:
.Lt_0111:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0114
jmp .Lt_010E
.Lt_0114:
.Lt_0113:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_010E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size RTLARRAYBOUND, .-RTLARRAYBOUND
.balign 16

.globl RTLARRAYBOUNDSCHECK
RTLARRAYBOUNDSCHECK:
.type RTLARRAYBOUNDSCHECK, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0116:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0119
sub esp, 8
push 134
push offset Lt_0075
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_0118
.Lt_0119:
sub esp, 8
push 135
push offset Lt_0076
call RTLPROCLOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0118:
sub esp, 8
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
sub esp, 4
push 0
push 16
push dword ptr [ebp+8]
push 0
push 8
call ASTNEWCONV
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_011B
jmp .Lt_0117
.Lt_011B:
.Lt_011A:
cmp dword ptr [ebp+12], 0
je .Lt_011D
push -1
push 8
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_011F
jmp .Lt_0117
.Lt_011F:
.Lt_011E:
.Lt_011D:
.Lt_011C:
push -1
push 8
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0121
jmp .Lt_0117
.Lt_0121:
.Lt_0120:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+20]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0123
jmp .Lt_0117
.Lt_0123:
.Lt_0122:
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp+24]
call ASTNEWCONSTSTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0125
jmp .Lt_0117
.Lt_0125:
.Lt_0124:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0117:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLARRAYBOUNDSCHECK, .-RTLARRAYBOUNDSCHECK
.balign 16
fb_ctor__rtlzarray:
.type fb_ctor__rtlzarray, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__rtlzarray, .-fb_ctor__rtlzarray
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
HBUILDPROCPTR:
.type HBUILDPROCPTR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_007C:
cmp dword ptr [ebp+8], 0
jne .Lt_007F
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_007D
.Lt_007F:
.Lt_007E:
sub esp, 12
push dword ptr [ebp+8]
call ASTBUILDPROCADDROF
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_007D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HBUILDPROCPTR, .-HBUILDPROCPTR
.balign 16
HCHECKDEFCTOR:
.type HCHECKDEFCTOR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0080:
cmp dword ptr [ebp+8], 0
jne .Lt_0083
jmp .Lt_0081
.Lt_0083:
cmp dword ptr [ebp+12], 0
je .Lt_0085
sub esp, 12
push dword ptr [ebp+8]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_0087
sub esp, 4
push 0
push 0
push 204
call ERRREPORT
add esp, 16
.Lt_0087:
.Lt_0086:
.Lt_0085:
.Lt_0084:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 3
je .Lt_0089
sub esp, 4
push 0
push 0
cmp dword ptr [ebp+16], 0
je .Lt_008A
mov dword ptr [ebp-4], 174
jmp .Lt_0126
.Lt_008A:
mov dword ptr [ebp-4], 171
.Lt_0126:
push dword ptr [ebp-4]
call ERRREPORT
add esp, 16
.Lt_0089:
.Lt_0088:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 1
je .Lt_008D
sub esp, 4
push 0
push 0
cmp dword ptr [ebp+16], 0
je .Lt_008E
mov dword ptr [ebp-4], 176
jmp .Lt_0127
.Lt_008E:
mov dword ptr [ebp-4], 173
.Lt_0127:
push dword ptr [ebp-4]
call ERRREPORT
add esp, 16
.Lt_008D:
.Lt_008C:
.Lt_0081:
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKDEFCTOR, .-HCHECKDEFCTOR
.balign 16
HCHECKDTOR:
.type HCHECKDTOR, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0090:
cmp dword ptr [ebp+8], 0
jne .Lt_0093
jmp .Lt_0091
.Lt_0093:
cmp dword ptr [ebp+12], 0
je .Lt_0095
sub esp, 12
push dword ptr [ebp+8]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_0097
sub esp, 4
push 0
push 0
push 206
call ERRREPORT
add esp, 16
.Lt_0097:
.Lt_0096:
.Lt_0095:
.Lt_0094:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 3
je .Lt_0099
sub esp, 4
push 0
push 0
cmp dword ptr [ebp+16], 0
je .Lt_009A
mov dword ptr [ebp-4], 175
jmp .Lt_0128
.Lt_009A:
mov dword ptr [ebp-4], 172
.Lt_0128:
push dword ptr [ebp-4]
call ERRREPORT
add esp, 16
.Lt_0099:
.Lt_0098:
.Lt_0091:
mov esp, ebp
pop ebp
ret
.size HCHECKDTOR, .-HCHECKDTOR
.balign 16
HGETCTORDTORFORREDIM:
.type HGETCTORDTORFORREDIM, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00D2:
mov eax, dword ptr [ebp+8]
and eax, 511
cmp eax, 20
jne .Lt_00D5
sub esp, 12
push dword ptr [ebp+12]
call SYMBGETCOMPDEFCTOR
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
sub esp, 12
push dword ptr [ebp+12]
call SYMBGETCOMPDTOR
add esp, 16
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
jmp .Lt_00D4
.Lt_00D5:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
.Lt_00D4:
.Lt_00D3:
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETCTORDTORFORREDIM, .-HGETCTORDTORFORREDIM

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
FUNCDATA:
.int Lt_0067
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
.int Lt_0068
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
.int Lt_0069
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
.int Lt_006A
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
.int Lt_006B
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
.int Lt_006C
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
.int Lt_006D
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
.int Lt_006E
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
.int Lt_006F
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
.int Lt_0070
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
.int Lt_0071
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
.int Lt_0072
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
.int Lt_0073
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
.int Lt_0074
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
.int Lt_0075
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
.int Lt_0076
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

.section .rodata
.balign 4
Lt_0067:	.ascii	"fb_ArrayRedimEx\0"
.balign 4
Lt_0068:	.ascii	"fb_ArrayRedimPresvEx\0"
.balign 4
Lt_0069:	.ascii	"fb_ArrayRedimObj\0"
.balign 4
Lt_006A:	.ascii	"fb_ArrayRedimPresvObj\0"
.balign 4
Lt_006B:	.ascii	"fb_ArrayRedimTo\0"
.balign 4
Lt_006C:	.ascii	"fb_ArrayDestructObj\0"
.balign 4
Lt_006D:	.ascii	"fb_ArrayDestructStr\0"
.balign 4
Lt_006E:	.ascii	"fb_ArrayClear\0"
.balign 4
Lt_006F:	.ascii	"fb_ArrayClearObj\0"
.balign 4
Lt_0070:	.ascii	"fb_ArrayErase\0"
.balign 4
Lt_0071:	.ascii	"fb_ArrayEraseObj\0"
.balign 4
Lt_0072:	.ascii	"fb_ArrayStrErase\0"
.balign 4
Lt_0073:	.ascii	"fb_ArrayLBound\0"
.balign 4
Lt_0074:	.ascii	"fb_ArrayUBound\0"
.balign 4
Lt_0075:	.ascii	"fb_ArraySngBoundChk\0"
.balign 4
Lt_0076:	.ascii	"fb_ArrayBoundChk\0"

.section .ctors, "aw", @progbits
.int fb_ctor__rtlzarray
