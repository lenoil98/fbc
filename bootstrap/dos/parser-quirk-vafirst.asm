	.intel_syntax noprefix

.section .text
.balign 16

.globl _CVAFUNCT
_CVAFUNCT:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_00A6:
mov dword ptr [ebp-4], 0
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
call _HGETVARARGPROCPARAM
add esp, 12
test eax, eax
jne .Lt_00A9
jmp .Lt_00A7
.Lt_00A9:
.Lt_00A8:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
je .Lt_00AB
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00AD
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
jmp .Lt_00AC
.Lt_00AD:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00AC:
.Lt_00AB:
.Lt_00AA:
cmp dword ptr [_ENV+104], 1
jne .Lt_00AF
push 0
push -1
push 286
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00AE
.Lt_00AF:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-20], eax
push 0
push 0
push dword ptr [ebp-20]
push 0
push 32
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-20], eax
push 8
push 0
push 0
push 9
mov eax, dword ptr [ebp-12]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-20]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_00AE:
.Lt_00A7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CVALISTFUNCT
_CVALISTFUNCT:
push ebp
mov ebp, esp
sub esp, 48
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00B0:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00B3
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
.Lt_00B3:
.Lt_00B2:
push 0
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
call _HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .Lt_00B5
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00B1
.Lt_00B5:
.Lt_00B4:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_00B7
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .Lt_00B6
.Lt_00B7:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00B6:
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
call _CSYMBOLTYPE
add esp, 20
test eax, eax
jne .Lt_00BB
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00B1
.Lt_00BB:
.Lt_00BA:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00BD
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
.Lt_00BD:
.Lt_00BC:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .Lt_00BF
lea eax, [ebp-8]
push eax
call _HSOLVEVALISTTYPE
add esp, 4
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-8]
push 112
call _ASTNEWMACRO
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_00BE
.Lt_00BF:
mov dword ptr [ebp-32], 0
push dword ptr [ebp-8]
call _ASTHASSIDEFX
add esp, 4
test eax, eax
je .Lt_00C1
push dword ptr [ebp-8]
call _ASTCANTAKEADDROF
add esp, 4
test eax, eax
je .Lt_00C3
lea eax, [ebp-8]
push eax
call _ASTMAKEREF
add esp, 4
mov dword ptr [ebp-32], eax
jmp .Lt_00C2
.Lt_00C3:
lea eax, [ebp-8]
push eax
call _ASTREMSIDEFX
add esp, 4
mov dword ptr [ebp-32], eax
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _SYMBCALCLEN
add esp, 8
mov ecx, dword ptr [_ENV+272]
mov ebx, ecx
sar ebx, 31
add eax, ecx
adc edx, ebx
add eax, 4294967295
adc edx, 4294967295
mov ecx, dword ptr [_ENV+272]
neg ecx
mov esi, ecx
mov ebx, esi
sar ebx, 31
and eax, esi
and edx, ebx
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-36], edx
push 1
push 0
push 0
push 9
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTCLONETREE
add esp, 4
push eax
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-44], eax
push 0
push 16
push dword ptr [ebp-44]
push dword ptr [ebp-8]
call _ASTCLONETREE
add esp, 4
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
push dword ptr [ebp-32]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-32], eax
push 1
push 0
push 0
push 9
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 29
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-48], eax
push 2
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-48]
call _ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp-32]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
.Lt_00BE:
.Lt_00B1:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CVALISTSTMT
_CVALISTSTMT:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
.Lt_00C4:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-28], eax
jmp .Lt_00C7
.Lt_00C9:
lea eax, [ebp-24]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
call _HGETVARARGPROCPARAM
add esp, 12
test eax, eax
jne .Lt_00CB
jmp .Lt_00C5
.Lt_00CB:
.Lt_00CA:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00CD
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
.Lt_00CD:
.Lt_00CC:
push 0
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
call _HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .Lt_00CF
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .Lt_00C5
.Lt_00CF:
.Lt_00CE:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_00D1
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .Lt_00D0
.Lt_00D1:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00D0:
push 1
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-12]
call _HCHECKLASTPARAMETERSYMBOL
add esp, 12
mov dword ptr [ebp-12], eax
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00D3
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
.Lt_00D3:
.Lt_00D2:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .Lt_00D5
lea eax, [ebp-8]
push eax
call _HSOLVEVALISTTYPE
add esp, 4
push 0
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 109
call _ASTNEWMACRO
add esp, 20
push eax
call _ASTADD
add esp, 4
jmp .Lt_00D4
.Lt_00D5:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-32], eax
push 1
push 0
push 0
push 9
mov eax, dword ptr [ebp-20]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-32]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-32], eax
push 16
push dword ptr [ebp-32]
push dword ptr [ebp-8]
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTADD
add esp, 4
.Lt_00D4:
mov dword ptr [ebp-4], -1
jmp .Lt_00C6
.Lt_00D6:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00D8
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
.Lt_00D8:
.Lt_00D7:
push 0
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
call _HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .Lt_00DA
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .Lt_00C5
.Lt_00DA:
.Lt_00D9:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00DC
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
.Lt_00DC:
.Lt_00DB:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .Lt_00DE
lea eax, [ebp-8]
push eax
call _HSOLVEVALISTTYPE
add esp, 4
push 0
push -2147483648
push 0
push dword ptr [ebp-8]
push 110
call _ASTNEWMACRO
add esp, 20
push eax
call _ASTADD
add esp, 4
jmp .Lt_00DD
.Lt_00DE:
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
.Lt_00DD:
mov dword ptr [ebp-4], -1
jmp .Lt_00C6
.Lt_00DF:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00E1
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
.Lt_00E1:
.Lt_00E0:
push 0
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
call _HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .Lt_00E3
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .Lt_00C5
.Lt_00E3:
.Lt_00E2:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_00E5
push 0
push 0
push 16
call _ERRREPORT
add esp, 12
jmp .Lt_00E4
.Lt_00E5:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00E4:
push 0
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-12], eax
push -1
push dword ptr [ebp-12]
call _HCHECKFORVALISTCOMPATIBLETYPE
add esp, 8
test eax, eax
jne .Lt_00E7
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-12]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], 0
jmp .Lt_00C5
.Lt_00E7:
.Lt_00E6:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00E9
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
.Lt_00E9:
.Lt_00E8:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _SYMBGETVALISTTYPE
add esp, 8
cmp eax, 1
jle .Lt_00EB
lea eax, [ebp-8]
push eax
call _HSOLVEVALISTTYPE
add esp, 4
lea eax, [ebp-12]
push eax
call _HSOLVEVALISTTYPE
add esp, 4
push 0
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 111
call _ASTNEWMACRO
add esp, 20
push eax
call _ASTADD
add esp, 4
jmp .Lt_00EA
.Lt_00EB:
push 16
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTADD
add esp, 4
.Lt_00EA:
mov dword ptr [ebp-4], -1
jmp .Lt_00C6
.Lt_00C7:
mov eax, dword ptr [ebp-28]
add eax, 4294966783
cmp eax, 3
ja .Lt_00C6
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.LT_00EC+eax*4-2052]
_.LT_00EC:
.int .Lt_00C9
.int .Lt_00C6
.int .Lt_00D6
.int .Lt_00DF
.Lt_00C6:
.Lt_00C5:
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
.balign 16
_HGETVARARGPROCPARAM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
jne .Lt_006B
jmp .Lt_0069
.Lt_006B:
.Lt_006A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_PARSER+104]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+84], 3
je .Lt_006D
jmp .Lt_0069
.Lt_006D:
.Lt_006C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+80]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 0
jne .Lt_006F
jmp .Lt_0069
.Lt_006F:
.Lt_006E:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
cmp dword ptr [eax+56], 4
je .Lt_0071
jmp .Lt_0069
.Lt_0071:
.Lt_0070:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+168]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 0
jne .Lt_0073
jmp .Lt_0069
.Lt_0073:
.Lt_0072:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx], 0
jne .Lt_0075
jmp .Lt_0069
.Lt_0075:
.Lt_0074:
mov dword ptr [ebp-4], -1
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKFORVALISTCOMPATIBLETYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0076:
cmp dword ptr [ebp+8], 0
jne .Lt_0079
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_0077
.Lt_0079:
.Lt_0078:
push dword ptr [ebp+8]
call _ASTISCONSTANT
add esp, 4
mov ebx, dword ptr [ebp+12]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_007B
push 0
push 0
push 119
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
jmp .Lt_0077
.Lt_007B:
.Lt_007A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_007F
.Lt_0080:
cmp dword ptr [ebp-8], 20
jne .Lt_007E
.Lt_007F:
mov dword ptr [ebp-4], -1
jmp .Lt_0077
.Lt_007E:
.Lt_007C:
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-4], 0
.Lt_0077:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKLASTPARAMETERSYMBOL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0081:
cmp dword ptr [ebp+8], 0
jne .Lt_0084
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_0082
.Lt_0084:
.Lt_0083:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .Lt_0087
.Lt_0088:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebx+12], eax
jne .Lt_008A
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0082
.Lt_008A:
.Lt_0089:
jmp .Lt_0085
.Lt_0087:
cmp dword ptr [ebp-8], 20
je .Lt_008C
.Lt_008D:
cmp dword ptr [ebp-8], 25
jne .Lt_008B
.Lt_008C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 17
jne .Lt_008F
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [ebp+16]
cmp dword ptr [eax+12], ebx
jne .Lt_0091
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_0082
.Lt_0091:
.Lt_0090:
.Lt_008F:
.Lt_008E:
.Lt_008B:
.Lt_0085:
push 0
push 1
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
push 14
call _ERRREPORTEX
add esp, 20
push dword ptr [ebp+8]
call _ASTDELTREE
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0082:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSOLVEVALISTTYPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0092:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx+56], 0
je .Lt_0095
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
lea ebx, [eax+56]
push ebx
call _HSOLVEVALISTTYPE
add esp, 4
.Lt_0095:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp dword ptr [eax+60], 0
je .Lt_0097
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
lea eax, [ebx+60]
push eax
call _HSOLVEVALISTTYPE
add esp, 4
.Lt_0097:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .Lt_0099
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
push dword ptr [eax+4]
call _SYMBGETVALISTTYPE
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 1
je .Lt_009D
.Lt_009E:
cmp dword ptr [ebp-4], 2
jne .Lt_009C
.Lt_009D:
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
jmp .Lt_009A
.Lt_009C:
cmp dword ptr [ebp-4], 3
jne .Lt_009F
.Lt_00A0:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp dword ptr [ecx], 17
jne .Lt_00A2
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
mov ecx, dword ptr [eax+12]
mov eax, dword ptr [ecx+4]
and eax, 32768
test eax, eax
je .Lt_00A4
jmp .Lt_009A
.Lt_00A4:
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov eax, dword ptr [ecx+4]
and eax, -32
or eax, 19
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov dword ptr [ebx+4], eax
jmp .Lt_009A
.Lt_009F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, -32
or eax, 19
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov dword ptr [ecx+4], eax
.Lt_00A5:
.Lt_009A:
.Lt_0099:
.Lt_0098:
.Lt_0093:
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
