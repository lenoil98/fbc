	.intel_syntax noprefix

.section .text
.balign 16

.globl CPRINTSTMT
CPRINTSTMT:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 461
je .Lt_006C
.Lt_006D:
cmp dword ptr [ebp+8], 63
jne .Lt_006B
.Lt_006C:
mov dword ptr [ebp-44], 0
jmp .Lt_006A
.Lt_006B:
cmp dword ptr [ebp+8], 462
jne .Lt_006E
.Lt_006F:
mov eax, dword ptr [ENV+888]
and eax, 33554432
test eax, eax
jne .Lt_0071
push 0
push 146
push 33554432
call ERRREPORTNOTALLOWED
add esp, 12
jmp .Lt_0070
.Lt_0071:
mov dword ptr [ebp-44], -1
.Lt_0070:
jmp .Lt_006A
.Lt_006E:
jmp .Lt_0069
.Lt_0072:
.Lt_006A:
push 2048
call LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp-44], 0
je .Lt_0074
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_0073
.Lt_0074:
push 0
push 35
call HMATCH
add esp, 8
test eax, eax
je .Lt_0076
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0078
jmp .Lt_0069
.Lt_0078:
.Lt_0077:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_007A
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_0079
.Lt_007A:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0079:
jmp .Lt_0075
.Lt_0076:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0075:
.Lt_0073:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
je .Lt_007C
lea eax, [ebp-12]
push eax
call ASTREMSIDEFX
add esp, 4
push eax
call ASTADD
add esp, 4
.Lt_007C:
.Lt_007B:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-24], 0
.Lt_007D:
push 2048
push 287
call HMATCH
add esp, 8
test eax, eax
je .Lt_0081
cmp dword ptr [ebp-8], 0
je .Lt_0083
push 0
push 0
push 3
call ERRREPORT
add esp, 12
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-16]
call RTLPRINTUSINGEND
add esp, 8
test eax, eax
jne .Lt_0085
jmp .Lt_0069
.Lt_0085:
.Lt_0084:
.Lt_0083:
.Lt_0082:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0087
jmp .Lt_0069
.Lt_0087:
.Lt_0086:
push 0
push 59
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0089
push 0
push 0
push 47
call ERRREPORT
add esp, 12
.Lt_0089:
.Lt_0088:
push dword ptr [ebp-44]
push dword ptr [ebp-8]
call RTLPRINTUSINGINIT
add esp, 8
test eax, eax
jne .Lt_008B
jmp .Lt_0069
.Lt_008B:
.Lt_008A:
.Lt_0081:
.Lt_0080:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 4096
push 484
call HMATCH
add esp, 8
test eax, eax
je .Lt_008D
mov dword ptr [ebp-40], -1
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_008F
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_008E
.Lt_008F:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_008E:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0091
jmp .Lt_0069
.Lt_0091:
.Lt_0090:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0093
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0092
.Lt_0093:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0092:
jmp .Lt_008C
.Lt_008D:
push 4096
push 485
call HMATCH
add esp, 8
test eax, eax
je .Lt_0094
mov dword ptr [ebp-36], -1
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_0096
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_0095
.Lt_0096:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0095:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0098
jmp .Lt_0069
.Lt_0098:
.Lt_0097:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_009A
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0099
.Lt_009A:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0099:
jmp .Lt_008C
.Lt_0094:
call CEXPRESSION
mov dword ptr [ebp-20], eax
.Lt_008C:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_009C
cmp dword ptr [ebp-8], 0
je .Lt_009E
push 0
push 0
push 47
call ERRREPORT
add esp, 12
.Lt_009E:
.Lt_009D:
mov dword ptr [ebp-32], -1
jmp .Lt_009B
.Lt_009C:
push 0
push 59
call HMATCH
add esp, 8
test eax, eax
je .Lt_009F
mov dword ptr [ebp-28], -1
.Lt_009F:
.Lt_009B:
mov eax, dword ptr [ebp-36]
or eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-28]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00A1
push 0
push 0
push 47
call ERRREPORT
add esp, 12
.Lt_00A1:
.Lt_00A0:
mov ebx, dword ptr [ebp-32]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-28]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
cmp dword ptr [ebp-20], 0
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00A3
jmp .Lt_007E
.Lt_00A3:
.Lt_00A2:
mov eax, dword ptr [ebp-36]
or eax, dword ptr [ebp-40]
je .Lt_00A5
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-36]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call RTLPRINTSPCTAB
add esp, 16
test eax, eax
jne .Lt_00A7
jmp .Lt_0069
.Lt_00A7:
.Lt_00A6:
jmp .Lt_00A4
.Lt_00A5:
cmp dword ptr [ebp-8], 0
jne .Lt_00A9
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-20]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-16]
call RTLPRINT
add esp, 20
test eax, eax
jne .Lt_00AB
push 0
push 0
push 24
call ERRREPORT
add esp, 12
.Lt_00AB:
.Lt_00AA:
jmp .Lt_00A8
.Lt_00A9:
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call RTLPRINTUSING
add esp, 20
test eax, eax
jne .Lt_00AD
push 0
push 0
push 24
call ERRREPORT
add esp, 12
.Lt_00AD:
.Lt_00AC:
.Lt_00A8:
.Lt_00A4:
inc dword ptr [ebp-24]
.Lt_007F:
mov eax, dword ptr [ebp-28]
or eax, dword ptr [ebp-32]
jne .Lt_007D
.Lt_007E:
cmp dword ptr [ebp-8], 0
jne .Lt_00AF
cmp dword ptr [ebp-24], 0
jne .Lt_00B1
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push 0
push 0
push 0
push dword ptr [ebp-16]
call RTLPRINT
add esp, 20
test eax, eax
jne .Lt_00B3
jmp .Lt_0069
.Lt_00B3:
.Lt_00B2:
.Lt_00B1:
.Lt_00B0:
jmp .Lt_00AE
.Lt_00AF:
push dword ptr [ebp-12]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-16]
call RTLPRINTUSINGEND
add esp, 8
test eax, eax
jne .Lt_00B5
jmp .Lt_0069
.Lt_00B5:
.Lt_00B4:
.Lt_00AE:
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CWRITESTMT
CWRITESTMT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BA:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 35
call HMATCH
add esp, 8
test eax, eax
je .Lt_00BD
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00BF
jmp .Lt_00BB
.Lt_00BF:
.Lt_00BE:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_00C1
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_00C0
.Lt_00C1:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_00C0:
jmp .Lt_00BC
.Lt_00BD:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00BC:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .Lt_00C3
lea eax, [ebp-8]
push eax
call ASTREMSIDEFX
add esp, 4
push eax
call ASTADD
add esp, 4
.Lt_00C3:
.Lt_00C2:
mov dword ptr [ebp-20], 0
.Lt_00C4:
call CEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00C8
mov dword ptr [ebp-16], 0
.Lt_00C8:
.Lt_00C7:
mov dword ptr [ebp-24], 0
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_00CA
mov dword ptr [ebp-24], -1
.Lt_00CA:
.Lt_00C9:
push dword ptr [ebp-8]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-16], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00CC
cmp dword ptr [ebp-20], 0
jne .Lt_00CE
push 0
push 0
push dword ptr [ebp-12]
call RTLWRITE
add esp, 12
.Lt_00CE:
.Lt_00CD:
jmp .Lt_00C5
.Lt_00CC:
.Lt_00CB:
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call RTLWRITE
add esp, 12
test eax, eax
jne .Lt_00D0
push 0
push 0
push 24
call ERRREPORT
add esp, 12
.Lt_00D0:
.Lt_00CF:
inc dword ptr [ebp-20]
.Lt_00C6:
cmp dword ptr [ebp-24], 0
jne .Lt_00C4
.Lt_00C5:
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_00BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CLINEINPUTSTMT
CLINEINPUTSTMT:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D3:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 476
je .Lt_00D6
jmp .Lt_00D4
.Lt_00D6:
.Lt_00D5:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 59
call HMATCH
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], 0
push 0
push 35
call HMATCH
add esp, 8
test eax, eax
je .Lt_00D8
mov dword ptr [ebp-16], -1
.Lt_00D8:
.Lt_00D7:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00DA
cmp dword ptr [ebp-16], 0
je .Lt_00DC
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00DB
.Lt_00DC:
mov dword ptr [ebp-8], 0
.Lt_00DB:
.Lt_00DA:
.Lt_00D9:
mov dword ptr [ebp-24], -1
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .Lt_00DE
push 0
push 59
call HMATCH
add esp, 8
test eax, eax
jne .Lt_00E0
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-8], 0
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-16]
je .Lt_00E2
push 0
push 0
push 16
call ERRREPORT
add esp, 12
.Lt_00E2:
.Lt_00E1:
jmp .Lt_00DF
.Lt_00E0:
mov dword ptr [ebp-28], -1
.Lt_00DF:
jmp .Lt_00DD
.Lt_00DE:
mov dword ptr [ebp-28], 0
.Lt_00DD:
push 0
call CVARORDEREF
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00E4
cmp dword ptr [ebp-8], 0
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-16]
je .Lt_00E6
push 0
push 0
push 14
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_00D4
jmp .Lt_00E5
.Lt_00E6:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], 0
.Lt_00E5:
jmp .Lt_00E3
.Lt_00E4:
cmp dword ptr [ebp-24], 0
jne .Lt_00E8
push 0
push 0
push 16
call ERRREPORT
add esp, 12
.Lt_00E8:
.Lt_00E7:
.Lt_00E3:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_00EA
push 0
push 0
push 119
call ERRREPORT
add esp, 12
.Lt_00EA:
.Lt_00E9:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 17
je .Lt_00EE
.Lt_00EF:
cmp dword ptr [ebp-32], 18
je .Lt_00EE
.Lt_00F0:
cmp dword ptr [ebp-32], 4
jne .Lt_00ED
.Lt_00EE:
push dword ptr [ebp-20]
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call RTLFILELINEINPUT
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_00EB
.Lt_00ED:
cmp dword ptr [ebp-32], 7
jne .Lt_00F1
.Lt_00F2:
push dword ptr [ebp-20]
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call RTLFILELINEINPUTWSTR
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_00EB
.Lt_00F1:
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 12
mov dword ptr [ebp-4], -1
.Lt_00F3:
.Lt_00EB:
.Lt_00D4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CINPUTSTMT
CINPUTSTMT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F7:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 59
call HMATCH
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-28], 0
push 0
push 35
call HMATCH
add esp, 8
test eax, eax
je .Lt_00FA
mov dword ptr [ebp-20], -1
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00FC
jmp .Lt_00F8
.Lt_00FC:
.Lt_00FB:
jmp .Lt_00F9
.Lt_00FA:
mov dword ptr [ebp-20], 0
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 4
jne .Lt_00FE
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4112]
call LEXGETTEXT
push eax
call SYMBALLOCSTRCONST
add esp, 8
push eax
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_00FD
.Lt_00FE:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], -1
.Lt_00FD:
.Lt_00F9:
cmp dword ptr [ebp-8], 0
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-20]
je .Lt_0100
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0102
push 0
push 59
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0104
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_0103
.Lt_0104:
mov dword ptr [ebp-28], -1
.Lt_0103:
.Lt_0102:
.Lt_0101:
.Lt_0100:
.Lt_00FF:
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call RTLFILEINPUT
add esp, 16
test eax, eax
jne .Lt_0106
jmp .Lt_00F8
.Lt_0106:
.Lt_0105:
.Lt_0107:
push 0
call CVARORDEREF
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_010B
push 0
push 0
push 14
call ERRREPORT
add esp, 12
mov dword ptr [ebp-12], 0
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
.Lt_010B:
.Lt_010A:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_010D
mov dword ptr [ebp-16], 0
jmp .Lt_010C
.Lt_010D:
mov dword ptr [ebp-16], -1
.Lt_010C:
cmp dword ptr [ebp-12], 0
je .Lt_010F
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_0111
push 0
push 0
push 119
call ERRREPORT
add esp, 12
.Lt_0111:
.Lt_0110:
push dword ptr [ebp-12]
call RTLFILEINPUTGET
add esp, 4
test eax, eax
jne .Lt_0113
jmp .Lt_00F8
.Lt_0113:
.Lt_0112:
.Lt_010F:
.Lt_010E:
.Lt_0109:
cmp dword ptr [ebp-16], 0
je .Lt_0107
.Lt_0108:
mov dword ptr [ebp-4], -1
.Lt_00F8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CFILESTMT
CFILESTMT:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0269:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
jmp .Lt_026C
.Lt_026E:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call HFILEOPEN
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_026B
.Lt_026F:
push 0
call HFILECLOSE
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_026B
.Lt_0270:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 35
call HMATCH
add esp, 8
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0272
jmp .Lt_026A
.Lt_0272:
.Lt_0271:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_0274
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_0273
.Lt_0274:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0273:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0276
jmp .Lt_026A
.Lt_0276:
.Lt_0275:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLFILESEEK
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_026B
.Lt_0277:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 35
je .Lt_0279
jmp .Lt_026A
.Lt_0279:
.Lt_0278:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call HFILEPUT
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_026B
.Lt_027A:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 35
je .Lt_027C
jmp .Lt_026A
.Lt_027C:
.Lt_027B:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call HFILEGET
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_026B
.Lt_027D:
cmp dword ptr [ebp+8], 475
jne .Lt_027F
mov dword ptr [ebp-20], -1
jmp .Lt_027E
.Lt_027F:
mov dword ptr [ebp-20], 0
.Lt_027E:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
push 35
call HMATCH
add esp, 8
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0281
jmp .Lt_026A
.Lt_0281:
.Lt_0280:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_0283
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_0282
.Lt_0283:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0282:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0285
jmp .Lt_026A
.Lt_0285:
.Lt_0284:
push 2048
push 284
call HMATCH
add esp, 8
test eax, eax
je .Lt_0287
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0289
jmp .Lt_026A
.Lt_0289:
.Lt_0288:
jmp .Lt_0286
.Lt_0287:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_0286:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call RTLFILELOCK
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_026B
.Lt_028A:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call HFILERENAME
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_026B
.Lt_026C:
mov ebx, dword ptr [ebp-24]
add ebx, 4294966828
cmp ebx, 20
ja .Lt_026B
mov ebx, dword ptr [ebp-24]
jmp dword ptr [.LT_028B+ebx*4-1872]
.LT_028B:
.int .Lt_026E
.int .Lt_026F
.int .Lt_0270
.int .Lt_0277
.int .Lt_027A
.int .Lt_026B
.int .Lt_026B
.int .Lt_027D
.int .Lt_026B
.int .Lt_026B
.int .Lt_026B
.int .Lt_026B
.int .Lt_026B
.int .Lt_026B
.int .Lt_026B
.int .Lt_028A
.int .Lt_026B
.int .Lt_026B
.int .Lt_026B
.int .Lt_026B
.int .Lt_027D
.Lt_026B:
.Lt_026A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CFILEFUNCT
CFILEFUNCT:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_0291:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .Lt_0294
.Lt_0296:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_0298
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_0297
.Lt_0298:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0297:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_029A
jmp .Lt_0292
.Lt_029A:
.Lt_0299:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_029C
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_029B
.Lt_029C:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_029B:
push dword ptr [ebp-8]
call RTLFILETELL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0293
.Lt_029D:
cmp dword ptr [ebp+8], 476
jne .Lt_029E
mov dword ptr [ebp-20], 8192
jmp .Lt_02B8
.Lt_029E:
mov dword ptr [ebp-20], 2048
.Lt_02B8:
push dword ptr [ebp-20]
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_02A1
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_02A0
.Lt_02A1:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_02A0:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_02A3
jmp .Lt_0292
.Lt_02A3:
.Lt_02A2:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_02A5
push 0
push 35
call HMATCH
add esp, 8
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_02A7
jmp .Lt_0292
.Lt_02A7:
.Lt_02A6:
jmp .Lt_02A4
.Lt_02A5:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_02A4:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_02A9
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_02A8
.Lt_02A9:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_02A8:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call RTLFILESTRINPUT
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0293
.Lt_02AA:
push 2048
call LEXSKIPTOKEN
add esp, 4
push -1
call HFILEOPEN
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0293
.Lt_02AB:
push -1
call HFILECLOSE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0293
.Lt_02AC:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_02AE
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_02AD
.Lt_02AE:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_02AD:
push -1
call HFILEPUT
add esp, 4
mov dword ptr [ebp-4], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_02B0
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_02AF
.Lt_02B0:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_02AF:
jmp .Lt_0293
.Lt_02B1:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_02B3
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_02B2
.Lt_02B3:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_02B2:
push -1
call HFILEGET
add esp, 4
mov dword ptr [ebp-4], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_02B5
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_02B4
.Lt_02B5:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_02B4:
jmp .Lt_0293
.Lt_02B6:
push 2048
call LEXSKIPTOKEN
add esp, 4
push -1
call HFILERENAME
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0293
.Lt_0294:
mov eax, dword ptr [ebp-16]
add eax, 4294966828
cmp eax, 15
ja .Lt_0293
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_02B7+eax*4-1872]
.LT_02B7:
.int .Lt_02AA
.int .Lt_02AB
.int .Lt_0296
.int .Lt_02AC
.int .Lt_02B1
.int .Lt_0293
.int .Lt_0293
.int .Lt_0293
.int .Lt_029D
.int .Lt_029D
.int .Lt_0293
.int .Lt_0293
.int .Lt_0293
.int .Lt_0293
.int .Lt_0293
.int .Lt_02B6
.Lt_0293:
.Lt_0292:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
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
call fb_StrAssign
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
HFILECLOSE:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0116:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+8], 0
je .Lt_0119
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_011B
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_011A
.Lt_011B:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_011A:
.Lt_0119:
.Lt_0118:
mov dword ptr [ebp-8], 0
.Lt_011C:
push 0
push 35
call HMATCH
add esp, 8
call CEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0120
cmp dword ptr [ebp-8], 0
jne .Lt_0122
jmp .Lt_0121
.Lt_0122:
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0121:
.Lt_0120:
.Lt_011F:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call RTLFILECLOSE
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0124
jmp .Lt_0117
.Lt_0124:
.Lt_0123:
cmp dword ptr [ebp+8], 0
je .Lt_0126
jmp .Lt_011D
.Lt_0126:
.Lt_0125:
inc dword ptr [ebp-8]
.Lt_011E:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .Lt_011C
.Lt_011D:
cmp dword ptr [ebp+8], 0
je .Lt_0128
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_012A
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0129
.Lt_012A:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0129:
.Lt_0128:
.Lt_0127:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_0117:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HFILEPUT:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_012B:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 35
jne .Lt_012E
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_012E:
.Lt_012D:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0130
jmp .Lt_012C
.Lt_0130:
.Lt_012F:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_0132
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_0131
.Lt_0132:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0131:
call CEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0134
mov dword ptr [ebp-12], 0
.Lt_0134:
.Lt_0133:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_0136
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_0135
.Lt_0136:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0135:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0138
jmp .Lt_012C
.Lt_0138:
.Lt_0137:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax]
cmp ecx, 23
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_013A
push dword ptr [ebp-16]
call ASTDELTREE
add esp, 4
push 0
push -1
push 14
call ERRREPORT
add esp, 12
cmp dword ptr [ebp+8], 0
je .Lt_013C
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_013B
.Lt_013C:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.Lt_013B:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_012C
.Lt_013A:
.Lt_0139:
mov dword ptr [ebp-24], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_013E
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
jne .Lt_0140
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebp-28], ecx
cmp dword ptr [ebp-28], 0
je .Lt_0142
push dword ptr [ebp-28]
call SYMBISARRAY
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .Lt_0144
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ecx, 17
jne .Lt_0146
push dword ptr [ebp-16]
call ASTDELTREE
add esp, 4
push 0
push -1
push 24
call ERRREPORT
add esp, 12
cmp dword ptr [ebp+8], 0
je .Lt_0148
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0147
.Lt_0148:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.Lt_0147:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_012C
.Lt_0146:
.Lt_0145:
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0144:
.Lt_0143:
.Lt_0142:
.Lt_0141:
.Lt_0140:
.Lt_013F:
.Lt_013E:
.Lt_013D:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_014A
cmp dword ptr [ebp-24], 0
je .Lt_014C
push 0
push 0
push 277
call ERRREPORT
add esp, 12
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_014E
push dword ptr [ebp-20]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-20], 0
.Lt_014E:
.Lt_014D:
jmp .Lt_014B
.Lt_014C:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+4]
and ecx, 511
mov dword ptr [ebp-32], ecx
cmp dword ptr [ebp-32], 17
je .Lt_0152
.Lt_0153:
cmp dword ptr [ebp-32], 18
jne .Lt_0151
.Lt_0152:
push 0
push 0
push 277
call ERRREPORT
add esp, 12
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_0155
push dword ptr [ebp-20]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-20], 0
.Lt_0155:
.Lt_0154:
jmp .Lt_014F
.Lt_0151:
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0158
push 0
push 0
push 9
call ERRREPORT
add esp, 12
.Lt_0158:
.Lt_0157:
.Lt_0156:
.Lt_014F:
.Lt_014B:
cmp dword ptr [ebp-20], 0
je .Lt_015A
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 480
test ecx, ecx
je .Lt_015C
push 0
push 1
push 0
push 2
call ERRREPORTWARN
add esp, 16
.Lt_015C:
.Lt_015B:
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+4]
and eax, 511
cmp eax, 8
je .Lt_015E
push 0
push 0
push dword ptr [ebp-20]
push 0
push 8
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0160
push 0
push -1
push 17
call ERRREPORT
add esp, 12
.Lt_0160:
.Lt_015F:
.Lt_015E:
.Lt_015D:
.Lt_015A:
.Lt_0159:
jmp .Lt_0149
.Lt_014A:
mov dword ptr [ebp-20], 0
.Lt_0149:
cmp dword ptr [ebp-24], 0
jne .Lt_0162
push dword ptr [ebp+8]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLFILEPUT
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_0161
.Lt_0162:
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLFILEPUTARRAY
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0161:
.Lt_012C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFILEGET:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.Lt_0163:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 35
jne .Lt_0166
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0166:
.Lt_0165:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0168
jmp .Lt_0164
.Lt_0168:
.Lt_0167:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_016A
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_0169
.Lt_016A:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0169:
call CEXPRESSION
mov dword ptr [ebp-12], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_016C
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_016B
.Lt_016C:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_016B:
push 0
call CVARORDEREF
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_016E
push 0
push 0
push 14
call ERRREPORT
add esp, 12
cmp dword ptr [ebp+8], 0
je .Lt_0170
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_016F
.Lt_0170:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.Lt_016F:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0164
.Lt_016E:
.Lt_016D:
mov dword ptr [ebp-28], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_0172
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
jne .Lt_0174
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 0
je .Lt_0176
push dword ptr [ebp-32]
call SYMBISARRAY
add esp, 4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .Lt_0178
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .Lt_017A
push 0
push -1
push 24
call ERRREPORT
add esp, 12
cmp dword ptr [ebp+8], 0
je .Lt_017C
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_017B
.Lt_017C:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.Lt_017B:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0164
.Lt_017A:
.Lt_0179:
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0178:
.Lt_0177:
.Lt_0176:
.Lt_0175:
.Lt_0174:
.Lt_0173:
.Lt_0172:
.Lt_0171:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_017E
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-28], 0
je .Lt_0180
cmp dword ptr [ebp-20], 0
je .Lt_0182
push 0
push 0
push 277
call ERRREPORT
add esp, 12
push dword ptr [ebp-20]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-20], 0
.Lt_0182:
.Lt_0181:
jmp .Lt_017F
.Lt_0180:
cmp dword ptr [ebp-20], 0
je .Lt_0184
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 17
je .Lt_0188
.Lt_0189:
cmp dword ptr [ebp-36], 18
jne .Lt_0187
.Lt_0188:
push 0
push 0
push 277
call ERRREPORT
add esp, 12
push dword ptr [ebp-20]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-20], 0
jmp .Lt_0185
.Lt_0187:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
test eax, eax
je .Lt_018C
push 0
push 1
push 0
push 2
call ERRREPORTWARN
add esp, 16
.Lt_018C:
.Lt_018B:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 8
je .Lt_018E
push 0
push 0
push dword ptr [ebp-20]
push 0
push 8
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0190
push 0
push -1
push 17
call ERRREPORT
add esp, 12
.Lt_0190:
.Lt_018F:
.Lt_018E:
.Lt_018D:
.Lt_018A:
.Lt_0185:
.Lt_0184:
.Lt_0183:
.Lt_017F:
jmp .Lt_017D
.Lt_017E:
mov dword ptr [ebp-20], 0
.Lt_017D:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_0192
push 0
call CVARORDEREF
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .Lt_0194
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 0
je .Lt_0196
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
and eax, 480
je .Lt_0197
mov dword ptr [ebp-40], 24
jmp .Lt_02BB
.Lt_0197:
mov eax, dword ptr [ebp-36]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_02BB:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [ENV+272]
cmp ebx, dword ptr [SYMB_DTYPETB+eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp-36]
and ebx, 480
je .Lt_0199
mov dword ptr [ebp-44], 24
jmp .Lt_02BC
.Lt_0199:
mov ebx, dword ptr [ebp-36]
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_02BC:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-48]
mov ebx, dword ptr [ebp-36]
and ebx, 480
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_019C
push 0
push 0
push 24
call ERRREPORT
add esp, 12
.Lt_019C:
.Lt_019B:
.Lt_0196:
.Lt_0195:
jmp .Lt_0193
.Lt_0194:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
.Lt_0193:
jmp .Lt_0191
.Lt_0192:
mov dword ptr [ebp-24], 0
.Lt_0191:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 512
test eax, eax
je .Lt_019E
push 0
push 0
push 119
call ERRREPORT
add esp, 12
.Lt_019E:
.Lt_019D:
cmp dword ptr [ebp-24], 0
je .Lt_01A0
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_01A2
push 0
push 0
push 119
call ERRREPORT
add esp, 12
.Lt_01A2:
.Lt_01A1:
.Lt_01A0:
.Lt_019F:
cmp dword ptr [ebp-28], 0
jne .Lt_01A4
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLFILEGET
add esp, 24
mov dword ptr [ebp-4], eax
jmp .Lt_01A3
.Lt_01A4:
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call RTLFILEGETARRAY
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_01A3:
.Lt_0164:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFILEOPEN:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A5:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-36], 0
cmp dword ptr [ENV+136], 3
je .Lt_01A8
push 0
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrInit
add esp, 20
push 5
push offset Lt_01AC
push -1
lea eax, [ebp-68]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_01AB
.Lt_01AD:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4116], 0
jne .Lt_01AF
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-56], 1
.Lt_01AF:
.Lt_01AE:
jmp .Lt_01A9
.Lt_01AB:
push 4
push offset Lt_01B1
push -1
lea ebx, [ebp-68]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_01B0
.Lt_01B2:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-56], 2
jmp .Lt_01A9
.Lt_01B0:
push 5
push offset Lt_01B4
push -1
lea eax, [ebp-68]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_01B3
.Lt_01B5:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4116], 0
jne .Lt_01B7
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-56], 3
.Lt_01B7:
.Lt_01B6:
jmp .Lt_01A9
.Lt_01B3:
push 5
push offset Lt_01B9
push -1
lea ebx, [ebp-68]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_01B8
.Lt_01BA:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4116], 0
jne .Lt_01BC
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-56], 4
.Lt_01BC:
.Lt_01BB:
jmp .Lt_01A9
.Lt_01B8:
push 4
push offset Lt_01BE
push -1
lea ebx, [ebp-68]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_01BD
.Lt_01BF:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4116], 0
jne .Lt_01C1
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-56], 5
.Lt_01C1:
.Lt_01C0:
jmp .Lt_01A9
.Lt_01BD:
push 4
push offset Lt_01C3
push -1
lea ebx, [ebp-68]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_01C2
.Lt_01C4:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4116], 0
jne .Lt_01C6
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-56], 6
.Lt_01C6:
.Lt_01C5:
.Lt_01C2:
.Lt_01A9:
lea ebx, [ebp-68]
push ebx
call fb_StrDelete
add esp, 4
.Lt_01A8:
.Lt_01A7:
cmp dword ptr [ebp+8], 0
je .Lt_01C8
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_01CA
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_01C9
.Lt_01CA:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_01C9:
.Lt_01C8:
.Lt_01C7:
cmp dword ptr [ENV+136], 3
jne .Lt_01CC
mov dword ptr [ebp-56], 7
.Lt_01CC:
.Lt_01CB:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp-60], eax
jmp .Lt_01CE
.Lt_01D0:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_01D2
jmp .Lt_01A6
.Lt_01D2:
.Lt_01D1:
cmp dword ptr [ebp+8], 0
je .Lt_01D4
push 0
push 44
call HMATCH
add esp, 8
.Lt_01D4:
.Lt_01D3:
cmp dword ptr [ebp-56], 0
je .Lt_01D7
.Lt_01D8:
cmp dword ptr [ebp-56], 7
jne .Lt_01D6
.Lt_01D7:
cmp dword ptr [ebp+8], 0
je .Lt_01DA
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 281
je .Lt_01DE
.Lt_01DF:
cmp dword ptr [ebp-64], 473
je .Lt_01DE
.Lt_01E0:
cmp dword ptr [ebp-64], 376
jne .Lt_01DD
.Lt_01DE:
jmp .Lt_01DB
.Lt_01DD:
mov dword ptr [ebp-36], -1
.Lt_01E1:
.Lt_01DB:
jmp .Lt_01D9
.Lt_01DA:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_01E3
mov dword ptr [ebp-36], -1
.Lt_01E3:
.Lt_01E2:
.Lt_01D9:
.Lt_01D6:
.Lt_01D5:
jmp .Lt_01CD
.Lt_01E4:
push offset Lt_0000
call ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_01CD
.Lt_01CE:
cmp dword ptr [ebp-60], 7
ja .Lt_01E4
mov eax, dword ptr [ebp-60]
jmp dword ptr [.LT_01E5+eax*4]
.LT_01E5:
.int .Lt_01D0
.int .Lt_01E4
.int .Lt_01E4
.int .Lt_01D0
.int .Lt_01E4
.int .Lt_01D0
.int .Lt_01D0
.int .Lt_01D0
.Lt_01CD:
cmp dword ptr [ebp-36], 0
je .Lt_01E7
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], 0
push 0
push 35
call HMATCH
add esp, 8
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01E9
jmp .Lt_01A6
.Lt_01E9:
.Lt_01E8:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_01EB
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_01EA
.Lt_01EB:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_01EA:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_01ED
jmp .Lt_01A6
.Lt_01ED:
.Lt_01EC:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_01EF
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_01F1
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_01F3
jmp .Lt_01A6
.Lt_01F3:
.Lt_01F2:
.Lt_01F1:
.Lt_01F0:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_01F5
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_01F7
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_01F9
jmp .Lt_01A6
.Lt_01F9:
.Lt_01F8:
.Lt_01F7:
.Lt_01F6:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
je .Lt_01FB
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_01FD
jmp .Lt_01A6
.Lt_01FD:
.Lt_01FC:
.Lt_01FB:
.Lt_01FA:
.Lt_01F5:
.Lt_01F4:
.Lt_01EF:
.Lt_01EE:
cmp dword ptr [ebp-28], 0
jne .Lt_01FF
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-28], eax
.Lt_01FF:
.Lt_01FE:
cmp dword ptr [ebp-20], 0
jne .Lt_0201
push offset Lt_0000
call ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_0201:
.Lt_0200:
cmp dword ptr [ebp-24], 0
jne .Lt_0203
push offset Lt_0000
call ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_0203:
.Lt_0202:
cmp dword ptr [ebp+8], 0
je .Lt_0205
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0207
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0206
.Lt_0207:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0206:
.Lt_0205:
.Lt_0204:
push dword ptr [ebp+8]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLFILEOPENSHORT
add esp, 28
mov dword ptr [ebp-4], eax
jmp .Lt_01A6
.Lt_01E7:
.Lt_01E6:
push 2048
push 281
call HMATCH
add esp, 8
test eax, eax
je .Lt_0209
push 0
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-68]
push eax
call fb_StrInit
add esp, 20
push 6
push offset Lt_020D
push -1
lea eax, [ebp-68]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_020C
.Lt_020E:
mov dword ptr [ebp-40], 2
jmp .Lt_020A
.Lt_020C:
push 7
push offset Lt_0210
push -1
lea eax, [ebp-68]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_020F
.Lt_0211:
mov dword ptr [ebp-40], 3
jmp .Lt_020A
.Lt_020F:
push 7
push offset Lt_0213
push -1
lea eax, [ebp-68]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0212
.Lt_0214:
mov dword ptr [ebp-40], 0
jmp .Lt_020A
.Lt_0212:
push 7
push offset Lt_0216
push -1
lea eax, [ebp-68]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0215
.Lt_0217:
mov dword ptr [ebp-40], 1
jmp .Lt_020A
.Lt_0215:
push 7
push offset Lt_0219
push -1
lea eax, [ebp-68]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0218
.Lt_021A:
mov dword ptr [ebp-40], 4
jmp .Lt_020A
.Lt_0218:
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_01A6
.Lt_021B:
.Lt_020A:
lea eax, [ebp-68]
push eax
call fb_StrDelete
add esp, 4
push 2048
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_0208
.Lt_0209:
mov dword ptr [ebp-40], 1
.Lt_0208:
push 0
push 8
mov ebx, dword ptr [ebp-40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 0
je .Lt_021D
push 0
push 44
call HMATCH
add esp, 8
.Lt_021D:
.Lt_021C:
mov dword ptr [ebp-32], 0
cmp dword ptr [ENV+136], 3
je .Lt_021F
cmp dword ptr [ebp-40], 2
je .Lt_0222
.Lt_0223:
cmp dword ptr [ebp-40], 3
je .Lt_0222
.Lt_0224:
cmp dword ptr [ebp-40], 4
jne .Lt_0221
.Lt_0222:
push 2048
push 482
call HMATCH
add esp, 8
test eax, eax
je .Lt_0226
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_0228
jmp .Lt_01A6
.Lt_0228:
.Lt_0227:
cmp dword ptr [ebp+8], 0
je .Lt_022A
push 0
push 44
call HMATCH
add esp, 8
.Lt_022A:
.Lt_0229:
.Lt_0226:
.Lt_0225:
.Lt_0221:
.Lt_0220:
.Lt_021F:
.Lt_021E:
push 2048
push offset Lt_022B
call HMATCHIDORKW
add esp, 8
test eax, eax
je .Lt_022D
push 2048
push offset Lt_022E
call HMATCHIDORKW
add esp, 8
test eax, eax
je .Lt_0230
mov dword ptr [ebp-44], 2
jmp .Lt_022F
.Lt_0230:
push 2048
push offset Lt_0232
call HMATCHIDORKW
add esp, 8
test eax, eax
je .Lt_0231
push 0
push 474
call HMATCH
add esp, 8
test eax, eax
je .Lt_0234
mov dword ptr [ebp-44], 3
jmp .Lt_0233
.Lt_0234:
mov dword ptr [ebp-44], 1
.Lt_0233:
.Lt_0231:
.Lt_022F:
jmp .Lt_022C
.Lt_022D:
mov dword ptr [ebp-44], 0
.Lt_022C:
push 0
push 8
mov ebx, dword ptr [ebp-44]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+8], 0
je .Lt_0236
push 0
push 44
call HMATCH
add esp, 8
.Lt_0236:
.Lt_0235:
push 2048
push 312
call HMATCH
add esp, 8
test eax, eax
je .Lt_0238
mov dword ptr [ebp-48], 0
jmp .Lt_0237
.Lt_0238:
push 2048
push offset Lt_023A
call HMATCHIDORKW
add esp, 8
test eax, eax
je .Lt_0239
push 2048
push offset Lt_022E
call HMATCHIDORKW
add esp, 8
test eax, eax
je .Lt_023C
mov dword ptr [ebp-48], 2
jmp .Lt_023B
.Lt_023C:
push 2048
push offset Lt_0232
call HMATCHIDORKW
add esp, 8
test eax, eax
je .Lt_023D
push 2048
push 474
call HMATCH
add esp, 8
test eax, eax
je .Lt_023F
mov dword ptr [ebp-48], 3
jmp .Lt_023E
.Lt_023F:
mov dword ptr [ebp-48], 1
.Lt_023E:
.Lt_023D:
.Lt_023B:
jmp .Lt_0237
.Lt_0239:
mov dword ptr [ebp-48], 0
.Lt_0237:
push 0
push 8
mov ebx, dword ptr [ebp-48]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp+8], 0
je .Lt_0241
push 0
push 44
call HMATCH
add esp, 8
.Lt_0241:
.Lt_0240:
push 2048
push 376
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0243
push 0
push 0
push 5
call ERRREPORT
add esp, 12
.Lt_0243:
.Lt_0242:
push 0
push 35
call HMATCH
add esp, 8
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0245
jmp .Lt_01A6
.Lt_0245:
.Lt_0244:
cmp dword ptr [ebp+8], 0
je .Lt_0247
push 0
push 44
call HMATCH
add esp, 8
.Lt_0247:
.Lt_0246:
push 2048
push offset Lt_0248
call HMATCHIDORKW
add esp, 8
test eax, eax
je .Lt_024A
call CASSIGNTOKEN
test eax, eax
jne .Lt_024C
push 0
push 0
push 10
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-28], eax
jmp .Lt_024B
.Lt_024C:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_024E
jmp .Lt_01A6
.Lt_024E:
.Lt_024D:
.Lt_024B:
jmp .Lt_0249
.Lt_024A:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-28], eax
.Lt_0249:
cmp dword ptr [ebp+8], 0
je .Lt_0250
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0252
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0251
.Lt_0252:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0251:
.Lt_0250:
.Lt_024F:
push dword ptr [ebp-56]
push dword ptr [ebp+8]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call RTLFILEOPEN
add esp, 36
mov dword ptr [ebp-4], eax
.Lt_01A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFILERENAME:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0253:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_0256
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_0258
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_0257
.Lt_0258:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0257:
jmp .Lt_0255
.Lt_0256:
push 0
push 40
call HMATCH
add esp, 8
mov dword ptr [ebp-16], eax
.Lt_0255:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_025A
jmp .Lt_0254
.Lt_025A:
.Lt_0259:
cmp dword ptr [ebp+8], 0
je .Lt_025C
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_025E
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_025D
.Lt_025E:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_025D:
jmp .Lt_025B
.Lt_025C:
push 2048
push 376
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0260
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0262
push 0
push 0
push 5
call ERRREPORT
add esp, 12
.Lt_0262:
.Lt_0261:
.Lt_0260:
.Lt_025F:
.Lt_025B:
push 17
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0264
jmp .Lt_0254
.Lt_0264:
.Lt_0263:
mov eax, dword ptr [ebp-16]
or eax, dword ptr [ebp+8]
je .Lt_0266
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0268
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0267
.Lt_0268:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0267:
.Lt_0266:
.Lt_0265:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call RTLFILERENAME
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0254:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
Lt_01AC:	.ascii	"CONS\0"
.balign 4
Lt_01B1:	.ascii	"ERR\0"
.balign 4
Lt_01B4:	.ascii	"PIPE\0"
.balign 4
Lt_01B9:	.ascii	"SCRN\0"
.balign 4
Lt_01BE:	.ascii	"LPT\0"
.balign 4
Lt_01C3:	.ascii	"COM\0"
.balign 4
Lt_020D:	.ascii	"INPUT\0"
.balign 4
Lt_0210:	.ascii	"OUTPUT\0"
.balign 4
Lt_0213:	.ascii	"BINARY\0"
.balign 4
Lt_0216:	.ascii	"RANDOM\0"
.balign 4
Lt_0219:	.ascii	"APPEND\0"
.balign 4
Lt_022B:	.ascii	"ACCESS\0"
.balign 4
Lt_022E:	.ascii	"WRITE\0"
.balign 4
Lt_0232:	.ascii	"READ\0"
.balign 4
Lt_023A:	.ascii	"LOCK\0"
.balign 4
Lt_0248:	.ascii	"LEN\0"
