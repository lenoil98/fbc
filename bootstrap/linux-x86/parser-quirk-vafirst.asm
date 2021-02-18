	.intel_syntax noprefix

.section .text
.balign 16

.globl CVAFUNCT
CVAFUNCT:
.type CVAFUNCT, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_00A5:
mov dword ptr [ebp-4], 0
sub esp, 4
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
call HGETVARARGPROCPARAM
add esp, 16
test eax, eax
jne .Lt_00A8
jmp .Lt_00A6
.Lt_00A8:
.Lt_00A7:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
je .Lt_00AA
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_00AC
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
jmp .Lt_00AB
.Lt_00AC:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00AB:
.Lt_00AA:
.Lt_00A9:
cmp dword ptr [ENV+104], 1
jne .Lt_00AE
sub esp, 4
push 0
push -1
push 286
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00AD
.Lt_00AE:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp-20]
push 0
push 32
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-20], eax
sub esp, 12
push 8
push 0
sub esp, 12
push 0
push 9
mov eax, dword ptr [ebp-12]
push dword ptr [eax+44]
push dword ptr [eax+40]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-20]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_00AD:
.Lt_00A6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CVAFUNCT, .-CVAFUNCT
.balign 16

.globl CVALISTFUNCT
CVALISTFUNCT:
.type CVALISTFUNCT, @function
push ebp
mov ebp, esp
sub esp, 48
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00AF:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00B2
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
.Lt_00B2:
.Lt_00B1:
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push dword ptr [ebp-8]
call HCHECKFORVALISTCOMPATIBLETYPE
add esp, 16
test eax, eax
jne .Lt_00B4
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00B0
.Lt_00B4:
.Lt_00B3:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_00B6
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_00B5
.Lt_00B6:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00B5:
sub esp, 12
push 1
mov dword ptr [ebp-28], 0
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-24]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call CSYMBOLTYPE
add esp, 32
test eax, eax
jne .Lt_00BA
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00B0
.Lt_00BA:
.Lt_00B9:
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00BC
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
.Lt_00BC:
.Lt_00BB:
sub esp, 8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call SYMBGETVALISTTYPE
add esp, 16
cmp eax, 1
jle .Lt_00BE
sub esp, 12
lea eax, [ebp-8]
push eax
call HSOLVEVALISTTYPE
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-8]
push 112
call ASTNEWMACRO
add esp, 32
mov dword ptr [ebp-4], eax
jmp .Lt_00BD
.Lt_00BE:
mov dword ptr [ebp-32], 0
sub esp, 12
push dword ptr [ebp-8]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .Lt_00C0
sub esp, 12
push dword ptr [ebp-8]
call ASTCANTAKEADDROF
add esp, 16
test eax, eax
je .Lt_00C2
sub esp, 12
lea eax, [ebp-8]
push eax
call ASTMAKEREF
add esp, 16
mov dword ptr [ebp-32], eax
jmp .Lt_00C1
.Lt_00C2:
sub esp, 12
lea eax, [ebp-8]
push eax
call ASTREMSIDEFX
add esp, 16
mov dword ptr [ebp-32], eax
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call SYMBCALCLEN
add esp, 16
mov ecx, dword ptr [ENV+272]
mov ebx, ecx
sar ebx, 31
add eax, ecx
adc edx, ebx
add eax, 4294967295
adc edx, 4294967295
mov ecx, dword ptr [ENV+272]
neg ecx
mov esi, ecx
mov ebx, esi
sar ebx, 31
and eax, esi
and edx, ebx
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-36], edx
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 9
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push dword ptr [ebp-8]
call ASTCLONETREE
add esp, 8
push eax
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-44], eax
sub esp, 4
push 0
sub esp, 12
push 16
push dword ptr [ebp-44]
push dword ptr [ebp-8]
call ASTCLONETREE
add esp, 4
push eax
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-32]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 9
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-8]
push 29
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-48], eax
sub esp, 4
push 2
sub esp, 4
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-48]
call ASTNEWDEREF
add esp, 24
push eax
push dword ptr [ebp-32]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
.Lt_00BD:
.Lt_00B0:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size CVALISTFUNCT, .-CVALISTFUNCT
.balign 16

.globl CVALISTSTMT
CVALISTSTMT:
.type CVALISTSTMT, @function
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-4], 0
.Lt_00C3:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
jmp .Lt_00C6
.Lt_00C8:
sub esp, 4
lea eax, [ebp-24]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
call HGETVARARGPROCPARAM
add esp, 16
test eax, eax
jne .Lt_00CA
jmp .Lt_00C4
.Lt_00CA:
.Lt_00C9:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00CC
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
.Lt_00CC:
.Lt_00CB:
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push dword ptr [ebp-8]
call HCHECKFORVALISTCOMPATIBLETYPE
add esp, 16
test eax, eax
jne .Lt_00CE
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_00C4
.Lt_00CE:
.Lt_00CD:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_00D0
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_00CF
.Lt_00D0:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00CF:
sub esp, 12
push 1
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 4
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-12]
call HCHECKLASTPARAMETERSYMBOL
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00D2
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
.Lt_00D2:
.Lt_00D1:
sub esp, 8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call SYMBGETVALISTTYPE
add esp, 16
cmp eax, 1
jle .Lt_00D4
sub esp, 12
lea eax, [ebp-8]
push eax
call HSOLVEVALISTTYPE
add esp, 16
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 109
call ASTNEWMACRO
add esp, 20
push eax
call ASTADD
add esp, 16
jmp .Lt_00D3
.Lt_00D4:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 9
mov eax, dword ptr [ebp-20]
push dword ptr [eax+44]
push dword ptr [eax+40]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-32]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-32], eax
sub esp, 12
sub esp, 8
push 16
push dword ptr [ebp-32]
push dword ptr [ebp-8]
call ASTNEWASSIGN
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_00D3:
mov dword ptr [ebp-4], -1
jmp .Lt_00C5
.Lt_00D5:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00D7
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
.Lt_00D7:
.Lt_00D6:
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push dword ptr [ebp-8]
call HCHECKFORVALISTCOMPATIBLETYPE
add esp, 16
test eax, eax
jne .Lt_00D9
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_00C4
.Lt_00D9:
.Lt_00D8:
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00DB
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
.Lt_00DB:
.Lt_00DA:
sub esp, 8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call SYMBGETVALISTTYPE
add esp, 16
cmp eax, 1
jle .Lt_00DD
sub esp, 12
lea eax, [ebp-8]
push eax
call HSOLVEVALISTTYPE
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push dword ptr [ebp-8]
push 110
call ASTNEWMACRO
add esp, 20
push eax
call ASTADD
add esp, 16
jmp .Lt_00DC
.Lt_00DD:
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
.Lt_00DC:
mov dword ptr [ebp-4], -1
jmp .Lt_00C5
.Lt_00DE:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00E0
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
.Lt_00E0:
.Lt_00DF:
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push dword ptr [ebp-8]
call HCHECKFORVALISTCOMPATIBLETYPE
add esp, 16
test eax, eax
jne .Lt_00E2
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_00C4
.Lt_00E2:
.Lt_00E1:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_00E4
sub esp, 4
push 0
push 0
push 16
call ERRREPORT
add esp, 16
jmp .Lt_00E3
.Lt_00E4:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00E3:
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
push -1
push dword ptr [ebp-12]
call HCHECKFORVALISTCOMPATIBLETYPE
add esp, 16
test eax, eax
jne .Lt_00E6
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_00C4
.Lt_00E6:
.Lt_00E5:
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00E8
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
.Lt_00E8:
.Lt_00E7:
sub esp, 8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call SYMBGETVALISTTYPE
add esp, 16
cmp eax, 1
jle .Lt_00EA
sub esp, 12
lea eax, [ebp-8]
push eax
call HSOLVEVALISTTYPE
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call HSOLVEVALISTTYPE
add esp, 16
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 111
call ASTNEWMACRO
add esp, 20
push eax
call ASTADD
add esp, 16
jmp .Lt_00E9
.Lt_00EA:
sub esp, 12
sub esp, 8
push 16
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWASSIGN
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_00E9:
mov dword ptr [ebp-4], -1
jmp .Lt_00C5
.Lt_00C6:
mov eax, dword ptr [ebp-28]
add eax, 4294966783
cmp eax, 3
ja .Lt_00C5
mov eax, dword ptr [ebp-28]
jmp dword ptr [.LT_00EB+eax*4-2052]
.LT_00EB:
.int .Lt_00C8
.int .Lt_00C5
.int .Lt_00D5
.int .Lt_00DE
.Lt_00C5:
.Lt_00C4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CVALISTSTMT, .-CVALISTSTMT
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
HGETVARARGPROCPARAM:
.type HGETVARARGPROCPARAM, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
jne .Lt_006A
jmp .Lt_0068
.Lt_006A:
.Lt_0069:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [PARSER+104]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+84], 3
je .Lt_006C
jmp .Lt_0068
.Lt_006C:
.Lt_006B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+80]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 0
jne .Lt_006E
jmp .Lt_0068
.Lt_006E:
.Lt_006D:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
cmp dword ptr [eax+56], 4
je .Lt_0070
jmp .Lt_0068
.Lt_0070:
.Lt_006F:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+168]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .Lt_0072
jmp .Lt_0068
.Lt_0072:
.Lt_0071:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx], 0
jne .Lt_0074
jmp .Lt_0068
.Lt_0074:
.Lt_0073:
mov dword ptr [ebp-4], -1
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETVARARGPROCPARAM, .-HGETVARARGPROCPARAM
.balign 16
HCHECKFORVALISTCOMPATIBLETYPE:
.type HCHECKFORVALISTCOMPATIBLETYPE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0075:
cmp dword ptr [ebp+8], 0
jne .Lt_0078
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_0076
.Lt_0078:
.Lt_0077:
sub esp, 12
push dword ptr [ebp+8]
call ASTISCONSTANT
add esp, 16
mov ebx, dword ptr [ebp+12]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_007A
sub esp, 4
push 0
push 0
push 119
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_0076
.Lt_007A:
.Lt_0079:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_007E
.Lt_007F:
cmp dword ptr [ebp-8], 20
jne .Lt_007D
.Lt_007E:
mov dword ptr [ebp-4], -1
jmp .Lt_0076
.Lt_007D:
.Lt_007B:
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
.Lt_0076:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKFORVALISTCOMPATIBLETYPE, .-HCHECKFORVALISTCOMPATIBLETYPE
.balign 16
HCHECKLASTPARAMETERSYMBOL:
.type HCHECKLASTPARAMETERSYMBOL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0080:
cmp dword ptr [ebp+8], 0
jne .Lt_0083
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-4], eax
jmp .Lt_0081
.Lt_0083:
.Lt_0082:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .Lt_0086
.Lt_0087:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebx+12], eax
jne .Lt_0089
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0081
.Lt_0089:
.Lt_0088:
jmp .Lt_0084
.Lt_0086:
cmp dword ptr [ebp-8], 20
je .Lt_008B
.Lt_008C:
cmp dword ptr [ebp-8], 25
jne .Lt_008A
.Lt_008B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 17
jne .Lt_008E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [ebp+16]
cmp dword ptr [eax+12], ebx
jne .Lt_0090
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_0081
.Lt_0090:
.Lt_008F:
.Lt_008E:
.Lt_008D:
.Lt_008A:
.Lt_0084:
sub esp, 12
push 0
push 1
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
push 14
call ERRREPORTEX
add esp, 32
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKLASTPARAMETERSYMBOL, .-HCHECKLASTPARAMETERSYMBOL
.balign 16
HSOLVEVALISTTYPE:
.type HSOLVEVALISTTYPE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0091:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx+56], 0
je .Lt_0094
sub esp, 12
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
lea ebx, [eax+56]
push ebx
call HSOLVEVALISTTYPE
add esp, 16
.Lt_0094:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+60], 0
je .Lt_0096
sub esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
lea eax, [ebx+60]
push eax
call HSOLVEVALISTTYPE
add esp, 16
.Lt_0096:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .Lt_0098
sub esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
push dword ptr [eax+4]
call SYMBGETVALISTTYPE
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
je .Lt_009C
.Lt_009D:
cmp dword ptr [ebp-4], 2
jne .Lt_009B
.Lt_009C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+4]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+4]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ecx+4]
and ebx, 32505856
or eax, ebx
and eax, -32
or eax, 19
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov dword ptr [ecx+4], eax
jmp .Lt_0099
.Lt_009B:
cmp dword ptr [ebp-4], 3
jne .Lt_009E
.Lt_009F:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp dword ptr [ecx], 17
jne .Lt_00A1
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
mov ecx, dword ptr [eax+12]
mov eax, dword ptr [ecx+4]
and eax, 32768
test eax, eax
je .Lt_00A3
jmp .Lt_0099
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ecx+4]
and eax, -32
or eax, 19
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov dword ptr [ebx+4], eax
jmp .Lt_0099
.Lt_009E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, -32
or eax, 19
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov dword ptr [ecx+4], eax
.Lt_00A4:
.Lt_0099:
.Lt_0098:
.Lt_0097:
.Lt_0092:
pop ebx
mov esp, ebp
pop ebp
ret
.size HSOLVEVALISTTYPE, .-HSOLVEVALISTTYPE

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
