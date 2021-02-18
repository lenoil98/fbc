	.intel_syntax noprefix

.section .text
.balign 16

.globl _CPRINTSTMT@4
_CPRINTSTMT@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_0069:
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
je .Lt_006D
.Lt_006E:
cmp dword ptr [ebp+8], 63
jne .Lt_006C
.Lt_006D:
mov dword ptr [ebp-44], 0
jmp .Lt_006B
.Lt_006C:
cmp dword ptr [ebp+8], 462
jne .Lt_006F
.Lt_0070:
mov eax, dword ptr [_ENV+888]
and eax, 33554432
test eax, eax
jne .Lt_0072
push 0
push 146
push 33554432
call _ERRREPORTNOTALLOWED@12
jmp .Lt_0071
.Lt_0072:
mov dword ptr [ebp-44], -1
.Lt_0071:
jmp .Lt_006B
.Lt_006F:
jmp .Lt_006A
.Lt_0073:
.Lt_006B:
push 2048
call _LEXSKIPTOKEN@4
cmp dword ptr [ebp-44], 0
je .Lt_0075
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
jmp .Lt_0074
.Lt_0075:
push 0
push 35
call _HMATCH@8
test eax, eax
je .Lt_0077
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0079
jmp .Lt_006A
.Lt_0079:
.Lt_0078:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_007B
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_007A
.Lt_007B:
push 0
call _LEXSKIPTOKEN@4
.Lt_007A:
jmp .Lt_0076
.Lt_0077:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.Lt_0076:
.Lt_0074:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
je .Lt_007D
lea eax, [ebp-12]
push eax
call _ASTREMSIDEFX@4
push eax
call _ASTADD@4
.Lt_007D:
.Lt_007C:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-24], 0
.Lt_007E:
push 2048
push 287
call _HMATCH@8
test eax, eax
je .Lt_0082
cmp dword ptr [ebp-8], 0
je .Lt_0084
push 0
push 0
push 3
call _ERRREPORT@12
push dword ptr [ebp-12]
call _ASTCLONETREE@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-16]
call _RTLPRINTUSINGEND@8
test eax, eax
jne .Lt_0086
jmp .Lt_006A
.Lt_0086:
.Lt_0085:
.Lt_0084:
.Lt_0083:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0088
jmp .Lt_006A
.Lt_0088:
.Lt_0087:
push 0
push 59
call _HMATCH@8
test eax, eax
jne .Lt_008A
push 0
push 0
push 47
call _ERRREPORT@12
.Lt_008A:
.Lt_0089:
push dword ptr [ebp-44]
push dword ptr [ebp-8]
call _RTLPRINTUSINGINIT@8
test eax, eax
jne .Lt_008C
jmp .Lt_006A
.Lt_008C:
.Lt_008B:
.Lt_0082:
.Lt_0081:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 4096
push 484
call _HMATCH@8
test eax, eax
je .Lt_008E
mov dword ptr [ebp-40], -1
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0090
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_008F
.Lt_0090:
push 0
call _LEXSKIPTOKEN@4
.Lt_008F:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0092
jmp .Lt_006A
.Lt_0092:
.Lt_0091:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0094
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0093
.Lt_0094:
push 0
call _LEXSKIPTOKEN@4
.Lt_0093:
jmp .Lt_008D
.Lt_008E:
push 4096
push 485
call _HMATCH@8
test eax, eax
je .Lt_0095
mov dword ptr [ebp-36], -1
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0097
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_0096
.Lt_0097:
push 0
call _LEXSKIPTOKEN@4
.Lt_0096:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0099
jmp .Lt_006A
.Lt_0099:
.Lt_0098:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_009B
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_009A
.Lt_009B:
push 0
call _LEXSKIPTOKEN@4
.Lt_009A:
jmp .Lt_008D
.Lt_0095:
call _CEXPRESSION@0
mov dword ptr [ebp-20], eax
.Lt_008D:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_009D
cmp dword ptr [ebp-8], 0
je .Lt_009F
push 0
push 0
push 47
call _ERRREPORT@12
.Lt_009F:
.Lt_009E:
mov dword ptr [ebp-32], -1
jmp .Lt_009C
.Lt_009D:
push 0
push 59
call _HMATCH@8
test eax, eax
je .Lt_00A0
mov dword ptr [ebp-28], -1
.Lt_00A0:
.Lt_009C:
mov eax, dword ptr [ebp-36]
or eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-28]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00A2
push 0
push 0
push 47
call _ERRREPORT@12
.Lt_00A2:
.Lt_00A1:
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
je .Lt_00A4
jmp .Lt_007F
.Lt_00A4:
.Lt_00A3:
mov eax, dword ptr [ebp-36]
or eax, dword ptr [ebp-40]
je .Lt_00A6
push dword ptr [ebp-12]
call _ASTCLONETREE@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-36]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _RTLPRINTSPCTAB@16
test eax, eax
jne .Lt_00A8
jmp .Lt_006A
.Lt_00A8:
.Lt_00A7:
jmp .Lt_00A5
.Lt_00A6:
cmp dword ptr [ebp-8], 0
jne .Lt_00AA
push dword ptr [ebp-12]
call _ASTCLONETREE@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-20]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-16]
call _RTLPRINT@20
test eax, eax
jne .Lt_00AC
push 0
push 0
push 24
call _ERRREPORT@12
.Lt_00AC:
.Lt_00AB:
jmp .Lt_00A9
.Lt_00AA:
push dword ptr [ebp-12]
call _ASTCLONETREE@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _RTLPRINTUSING@20
test eax, eax
jne .Lt_00AE
push 0
push 0
push 24
call _ERRREPORT@12
.Lt_00AE:
.Lt_00AD:
.Lt_00A9:
.Lt_00A5:
inc dword ptr [ebp-24]
.Lt_0080:
mov eax, dword ptr [ebp-28]
or eax, dword ptr [ebp-32]
jne .Lt_007E
.Lt_007F:
cmp dword ptr [ebp-8], 0
jne .Lt_00B0
cmp dword ptr [ebp-24], 0
jne .Lt_00B2
push dword ptr [ebp-12]
call _ASTCLONETREE@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push 0
push 0
push 0
push dword ptr [ebp-16]
call _RTLPRINT@20
test eax, eax
jne .Lt_00B4
jmp .Lt_006A
.Lt_00B4:
.Lt_00B3:
.Lt_00B2:
.Lt_00B1:
jmp .Lt_00AF
.Lt_00B0:
push dword ptr [ebp-12]
call _ASTCLONETREE@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-44]
push dword ptr [ebp-16]
call _RTLPRINTUSINGEND@8
test eax, eax
jne .Lt_00B6
jmp .Lt_006A
.Lt_00B6:
.Lt_00B5:
.Lt_00AF:
push dword ptr [ebp-12]
call _ASTDELTREE@4
mov dword ptr [ebp-4], -1
.Lt_006A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CWRITESTMT@0
_CWRITESTMT@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BB:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
push 0
push 35
call _HMATCH@8
test eax, eax
je .Lt_00BE
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00C0
jmp .Lt_00BC
.Lt_00C0:
.Lt_00BF:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_00C2
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_00C1
.Lt_00C2:
push 0
call _LEXSKIPTOKEN@4
.Lt_00C1:
jmp .Lt_00BD
.Lt_00BE:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.Lt_00BD:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .Lt_00C4
lea eax, [ebp-8]
push eax
call _ASTREMSIDEFX@4
push eax
call _ASTADD@4
.Lt_00C4:
.Lt_00C3:
mov dword ptr [ebp-20], 0
.Lt_00C5:
call _CEXPRESSION@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00C9
mov dword ptr [ebp-16], 0
.Lt_00C9:
.Lt_00C8:
mov dword ptr [ebp-24], 0
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_00CB
mov dword ptr [ebp-24], -1
.Lt_00CB:
.Lt_00CA:
push dword ptr [ebp-8]
call _ASTCLONETREE@4
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
je .Lt_00CD
cmp dword ptr [ebp-20], 0
jne .Lt_00CF
push 0
push 0
push dword ptr [ebp-12]
call _RTLWRITE@12
.Lt_00CF:
.Lt_00CE:
jmp .Lt_00C6
.Lt_00CD:
.Lt_00CC:
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call _RTLWRITE@12
test eax, eax
jne .Lt_00D1
push 0
push 0
push 24
call _ERRREPORT@12
.Lt_00D1:
.Lt_00D0:
inc dword ptr [ebp-20]
.Lt_00C7:
cmp dword ptr [ebp-24], 0
jne .Lt_00C5
.Lt_00C6:
push dword ptr [ebp-8]
call _ASTDELTREE@4
mov dword ptr [ebp-4], -1
.Lt_00BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CLINEINPUTSTMT@0
_CLINEINPUTSTMT@0:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D4:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 476
je .Lt_00D7
jmp .Lt_00D5
.Lt_00D7:
.Lt_00D6:
push 2048
call _LEXSKIPTOKEN@4
push 2048
call _LEXSKIPTOKEN@4
push 0
push 59
call _HMATCH@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], 0
push 0
push 35
call _HMATCH@8
test eax, eax
je .Lt_00D9
mov dword ptr [ebp-16], -1
.Lt_00D9:
.Lt_00D8:
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00DB
cmp dword ptr [ebp-16], 0
je .Lt_00DD
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
jmp .Lt_00DC
.Lt_00DD:
mov dword ptr [ebp-8], 0
.Lt_00DC:
.Lt_00DB:
.Lt_00DA:
mov dword ptr [ebp-24], -1
push 0
push 44
call _HMATCH@8
test eax, eax
jne .Lt_00DF
push 0
push 59
call _HMATCH@8
test eax, eax
jne .Lt_00E1
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-8], 0
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-16]
je .Lt_00E3
push 0
push 0
push 16
call _ERRREPORT@12
.Lt_00E3:
.Lt_00E2:
jmp .Lt_00E0
.Lt_00E1:
mov dword ptr [ebp-28], -1
.Lt_00E0:
jmp .Lt_00DE
.Lt_00DF:
mov dword ptr [ebp-28], 0
.Lt_00DE:
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00E5
cmp dword ptr [ebp-8], 0
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-16]
je .Lt_00E7
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_00D5
jmp .Lt_00E6
.Lt_00E7:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], 0
.Lt_00E6:
jmp .Lt_00E4
.Lt_00E5:
cmp dword ptr [ebp-24], 0
jne .Lt_00E9
push 0
push 0
push 16
call _ERRREPORT@12
.Lt_00E9:
.Lt_00E8:
.Lt_00E4:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_00EB
push 0
push 0
push 119
call _ERRREPORT@12
.Lt_00EB:
.Lt_00EA:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 17
je .Lt_00EF
.Lt_00F0:
cmp dword ptr [ebp-32], 18
je .Lt_00EF
.Lt_00F1:
cmp dword ptr [ebp-32], 4
jne .Lt_00EE
.Lt_00EF:
push dword ptr [ebp-20]
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _RTLFILELINEINPUT@20
mov dword ptr [ebp-4], eax
jmp .Lt_00EC
.Lt_00EE:
cmp dword ptr [ebp-32], 7
jne .Lt_00F2
.Lt_00F3:
push dword ptr [ebp-20]
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _RTLFILELINEINPUTWSTR@20
mov dword ptr [ebp-4], eax
jmp .Lt_00EC
.Lt_00F2:
push dword ptr [ebp-12]
call _ASTDELTREE@4
push 0
push 0
push 24
call _ERRREPORT@12
mov dword ptr [ebp-4], -1
.Lt_00F4:
.Lt_00EC:
.Lt_00D5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CINPUTSTMT@0
_CINPUTSTMT@0:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F8:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
push 0
push 59
call _HMATCH@8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-28], 0
push 0
push 35
call _HMATCH@8
test eax, eax
je .Lt_00FB
mov dword ptr [ebp-20], -1
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00FD
jmp .Lt_00F9
.Lt_00FD:
.Lt_00FC:
jmp .Lt_00FA
.Lt_00FB:
mov dword ptr [ebp-20], 0
push 0
call _LEXGETCLASS@4
cmp eax, 4
jne .Lt_00FF
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2064]
call _LEXGETTEXT@0
push eax
call _SYMBALLOCSTRCONST@8
push eax
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_00FE
.Lt_00FF:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], -1
.Lt_00FE:
.Lt_00FA:
cmp dword ptr [ebp-8], 0
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-20]
je .Lt_0101
push 0
push 44
call _HMATCH@8
test eax, eax
jne .Lt_0103
push 0
push 59
call _HMATCH@8
test eax, eax
jne .Lt_0105
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0104
.Lt_0105:
mov dword ptr [ebp-28], -1
.Lt_0104:
.Lt_0103:
.Lt_0102:
.Lt_0101:
.Lt_0100:
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call _RTLFILEINPUT@16
test eax, eax
jne .Lt_0107
jmp .Lt_00F9
.Lt_0107:
.Lt_0106:
.Lt_0108:
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_010C
push 0
push 0
push 14
call _ERRREPORT@12
mov dword ptr [ebp-12], 0
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
.Lt_010C:
.Lt_010B:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_010E
mov dword ptr [ebp-16], 0
jmp .Lt_010D
.Lt_010E:
mov dword ptr [ebp-16], -1
.Lt_010D:
cmp dword ptr [ebp-12], 0
je .Lt_0110
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_0112
push 0
push 0
push 119
call _ERRREPORT@12
.Lt_0112:
.Lt_0111:
push dword ptr [ebp-12]
call _RTLFILEINPUTGET@4
test eax, eax
jne .Lt_0114
jmp .Lt_00F9
.Lt_0114:
.Lt_0113:
.Lt_0110:
.Lt_010F:
.Lt_010A:
cmp dword ptr [ebp-16], 0
je .Lt_0108
.Lt_0109:
mov dword ptr [ebp-4], -1
.Lt_00F9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CFILESTMT@4
_CFILESTMT@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_026A:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
jmp .Lt_026D
.Lt_026F:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _HFILEOPEN@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_026C
.Lt_0270:
push 0
call _HFILECLOSE@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_026C
.Lt_0271:
push 2048
call _LEXSKIPTOKEN@4
push 0
push 35
call _HMATCH@8
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0273
jmp .Lt_026B
.Lt_0273:
.Lt_0272:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0275
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0274
.Lt_0275:
push 0
call _LEXSKIPTOKEN@4
.Lt_0274:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0277
jmp .Lt_026B
.Lt_0277:
.Lt_0276:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLFILESEEK@8
mov dword ptr [ebp-4], eax
jmp .Lt_026C
.Lt_0278:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 35
je .Lt_027A
jmp .Lt_026B
.Lt_027A:
.Lt_0279:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _HFILEPUT@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_026C
.Lt_027B:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 35
je .Lt_027D
jmp .Lt_026B
.Lt_027D:
.Lt_027C:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _HFILEGET@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_026C
.Lt_027E:
cmp dword ptr [ebp+8], 475
jne .Lt_0280
mov dword ptr [ebp-20], -1
jmp .Lt_027F
.Lt_0280:
mov dword ptr [ebp-20], 0
.Lt_027F:
push 2048
call _LEXSKIPTOKEN@4
push 0
push 35
call _HMATCH@8
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0282
jmp .Lt_026B
.Lt_0282:
.Lt_0281:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0284
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0283
.Lt_0284:
push 0
call _LEXSKIPTOKEN@4
.Lt_0283:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0286
jmp .Lt_026B
.Lt_0286:
.Lt_0285:
push 2048
push 284
call _HMATCH@8
test eax, eax
je .Lt_0288
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_028A
jmp .Lt_026B
.Lt_028A:
.Lt_0289:
jmp .Lt_0287
.Lt_0288:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
.Lt_0287:
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call _RTLFILELOCK@16
mov dword ptr [ebp-4], eax
jmp .Lt_026C
.Lt_028B:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _HFILERENAME@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_026C
.Lt_026D:
mov ebx, dword ptr [ebp-24]
add ebx, 4294966828
cmp ebx, 20
ja .Lt_026C
mov ebx, dword ptr [ebp-24]
jmp dword ptr [_.LT_028C+ebx*4-1872]
_.LT_028C:
.int .Lt_026F
.int .Lt_0270
.int .Lt_0271
.int .Lt_0278
.int .Lt_027B
.int .Lt_026C
.int .Lt_026C
.int .Lt_027E
.int .Lt_026C
.int .Lt_026C
.int .Lt_026C
.int .Lt_026C
.int .Lt_026C
.int .Lt_026C
.int .Lt_026C
.int .Lt_028B
.int .Lt_026C
.int .Lt_026C
.int .Lt_026C
.int .Lt_026C
.int .Lt_027E
.Lt_026C:
.Lt_026B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CFILEFUNCT@4
_CFILEFUNCT@4:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_0292:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
jmp .Lt_0295
.Lt_0297:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0299
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_0298
.Lt_0299:
push 0
call _LEXSKIPTOKEN@4
.Lt_0298:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_029B
jmp .Lt_0293
.Lt_029B:
.Lt_029A:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_029D
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_029C
.Lt_029D:
push 0
call _LEXSKIPTOKEN@4
.Lt_029C:
push dword ptr [ebp-8]
call _RTLFILETELL@4
mov dword ptr [ebp-4], eax
jmp .Lt_0294
.Lt_029E:
cmp dword ptr [ebp+8], 476
jne .Lt_029F
mov dword ptr [ebp-20], 8192
jmp .Lt_02B9
.Lt_029F:
mov dword ptr [ebp-20], 2048
.Lt_02B9:
push dword ptr [ebp-20]
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_02A2
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_02A1
.Lt_02A2:
push 0
call _LEXSKIPTOKEN@4
.Lt_02A1:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_02A4
jmp .Lt_0293
.Lt_02A4:
.Lt_02A3:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_02A6
push 0
push 35
call _HMATCH@8
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_02A8
jmp .Lt_0293
.Lt_02A8:
.Lt_02A7:
jmp .Lt_02A5
.Lt_02A6:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.Lt_02A5:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_02AA
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_02A9
.Lt_02AA:
push 0
call _LEXSKIPTOKEN@4
.Lt_02A9:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _RTLFILESTRINPUT@12
mov dword ptr [ebp-4], eax
jmp .Lt_0294
.Lt_02AB:
push 2048
call _LEXSKIPTOKEN@4
push -1
call _HFILEOPEN@4
mov dword ptr [ebp-4], eax
jmp .Lt_0294
.Lt_02AC:
push -1
call _HFILECLOSE@4
mov dword ptr [ebp-4], eax
jmp .Lt_0294
.Lt_02AD:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_02AF
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_02AE
.Lt_02AF:
push 0
call _LEXSKIPTOKEN@4
.Lt_02AE:
push -1
call _HFILEPUT@4
mov dword ptr [ebp-4], eax
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_02B1
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_02B0
.Lt_02B1:
push 0
call _LEXSKIPTOKEN@4
.Lt_02B0:
jmp .Lt_0294
.Lt_02B2:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_02B4
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_02B3
.Lt_02B4:
push 0
call _LEXSKIPTOKEN@4
.Lt_02B3:
push -1
call _HFILEGET@4
mov dword ptr [ebp-4], eax
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_02B6
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_02B5
.Lt_02B6:
push 0
call _LEXSKIPTOKEN@4
.Lt_02B5:
jmp .Lt_0294
.Lt_02B7:
push 2048
call _LEXSKIPTOKEN@4
push -1
call _HFILERENAME@4
mov dword ptr [ebp-4], eax
jmp .Lt_0294
.Lt_0295:
mov eax, dword ptr [ebp-16]
add eax, 4294966828
cmp eax, 15
ja .Lt_0294
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_02B8+eax*4-1872]
_.LT_02B8:
.int .Lt_02AB
.int .Lt_02AC
.int .Lt_0297
.int .Lt_02AD
.int .Lt_02B2
.int .Lt_0294
.int .Lt_0294
.int .Lt_0294
.int .Lt_029E
.int .Lt_029E
.int .Lt_0294
.int .Lt_0294
.int .Lt_0294
.int .Lt_0294
.int .Lt_0294
.int .Lt_02B7
.Lt_0294:
.Lt_0293:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
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
_HFILECLOSE@4:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0117:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
cmp dword ptr [ebp+8], 0
je .Lt_011A
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_011C
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_011B
.Lt_011C:
push 0
call _LEXSKIPTOKEN@4
.Lt_011B:
.Lt_011A:
.Lt_0119:
mov dword ptr [ebp-8], 0
.Lt_011D:
push 0
push 35
call _HMATCH@8
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0121
cmp dword ptr [ebp-8], 0
jne .Lt_0123
jmp .Lt_0122
.Lt_0123:
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-12], eax
.Lt_0122:
.Lt_0121:
.Lt_0120:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _RTLFILECLOSE@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0125
jmp .Lt_0118
.Lt_0125:
.Lt_0124:
cmp dword ptr [ebp+8], 0
je .Lt_0127
jmp .Lt_011E
.Lt_0127:
.Lt_0126:
inc dword ptr [ebp-8]
.Lt_011F:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .Lt_011D
.Lt_011E:
cmp dword ptr [ebp+8], 0
je .Lt_0129
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_012B
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_012A
.Lt_012B:
push 0
call _LEXSKIPTOKEN@4
.Lt_012A:
.Lt_0129:
.Lt_0128:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_0118:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HFILEPUT@4:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_012C:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 35
jne .Lt_012F
push 0
call _LEXSKIPTOKEN@4
.Lt_012F:
.Lt_012E:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0131
jmp .Lt_012D
.Lt_0131:
.Lt_0130:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0133
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0132
.Lt_0133:
push 0
call _LEXSKIPTOKEN@4
.Lt_0132:
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0135
mov dword ptr [ebp-12], 0
.Lt_0135:
.Lt_0134:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0137
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_0136
.Lt_0137:
push 0
call _LEXSKIPTOKEN@4
.Lt_0136:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0139
jmp .Lt_012D
.Lt_0139:
.Lt_0138:
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
je .Lt_013B
push dword ptr [ebp-16]
call _ASTDELTREE@4
push 0
push -1
push 14
call _ERRREPORT@12
cmp dword ptr [ebp+8], 0
je .Lt_013D
push 0
push 0
push 0
push 41
call _HSKIPUNTIL@16
jmp .Lt_013C
.Lt_013D:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
.Lt_013C:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .Lt_012D
.Lt_013B:
.Lt_013A:
mov dword ptr [ebp-24], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 40
jne .Lt_013F
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 41
jne .Lt_0141
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebp-28], ecx
cmp dword ptr [ebp-28], 0
je .Lt_0143
push dword ptr [ebp-28]
call _SYMBISARRAY@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .Lt_0145
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ecx, 17
jne .Lt_0147
push dword ptr [ebp-16]
call _ASTDELTREE@4
push 0
push -1
push 24
call _ERRREPORT@12
cmp dword ptr [ebp+8], 0
je .Lt_0149
push 0
push 0
push 0
push 41
call _HSKIPUNTIL@16
jmp .Lt_0148
.Lt_0149:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
.Lt_0148:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .Lt_012D
.Lt_0147:
.Lt_0146:
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXSKIPTOKEN@4
.Lt_0145:
.Lt_0144:
.Lt_0143:
.Lt_0142:
.Lt_0141:
.Lt_0140:
.Lt_013F:
.Lt_013E:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_014B
cmp dword ptr [ebp-24], 0
je .Lt_014D
push 0
push 0
push 277
call _ERRREPORT@12
call _CEXPRESSION@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_014F
push dword ptr [ebp-20]
call _ASTDELTREE@4
mov dword ptr [ebp-20], 0
.Lt_014F:
.Lt_014E:
jmp .Lt_014C
.Lt_014D:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+4]
and ecx, 511
mov dword ptr [ebp-32], ecx
cmp dword ptr [ebp-32], 17
je .Lt_0153
.Lt_0154:
cmp dword ptr [ebp-32], 18
jne .Lt_0152
.Lt_0153:
push 0
push 0
push 277
call _ERRREPORT@12
call _CEXPRESSION@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_0156
push dword ptr [ebp-20]
call _ASTDELTREE@4
mov dword ptr [ebp-20], 0
.Lt_0156:
.Lt_0155:
jmp .Lt_0150
.Lt_0152:
call _CEXPRESSION@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0159
push 0
push 0
push 9
call _ERRREPORT@12
.Lt_0159:
.Lt_0158:
.Lt_0157:
.Lt_0150:
.Lt_014C:
cmp dword ptr [ebp-20], 0
je .Lt_015B
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+4]
and ecx, 511
and ecx, 480
test ecx, ecx
je .Lt_015D
push 0
push 1
push 0
push 2
call _ERRREPORTWARN@16
.Lt_015D:
.Lt_015C:
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+4]
and eax, 511
cmp eax, 8
je .Lt_015F
push 0
push 0
push dword ptr [ebp-20]
push 0
push 8
call _ASTNEWCONV@20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0161
push 0
push -1
push 17
call _ERRREPORT@12
.Lt_0161:
.Lt_0160:
.Lt_015F:
.Lt_015E:
.Lt_015B:
.Lt_015A:
jmp .Lt_014A
.Lt_014B:
mov dword ptr [ebp-20], 0
.Lt_014A:
cmp dword ptr [ebp-24], 0
jne .Lt_0163
push dword ptr [ebp+8]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLFILEPUT@20
mov dword ptr [ebp-4], eax
jmp .Lt_0162
.Lt_0163:
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLFILEPUTARRAY@16
mov dword ptr [ebp-4], eax
.Lt_0162:
.Lt_012D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HFILEGET@4:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.Lt_0164:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 35
jne .Lt_0167
push 0
call _LEXSKIPTOKEN@4
.Lt_0167:
.Lt_0166:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0169
jmp .Lt_0165
.Lt_0169:
.Lt_0168:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_016B
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_016A
.Lt_016B:
push 0
call _LEXSKIPTOKEN@4
.Lt_016A:
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_016D
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_016C
.Lt_016D:
push 0
call _LEXSKIPTOKEN@4
.Lt_016C:
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_016F
push 0
push 0
push 14
call _ERRREPORT@12
cmp dword ptr [ebp+8], 0
je .Lt_0171
push 0
push 0
push 0
push 41
call _HSKIPUNTIL@16
jmp .Lt_0170
.Lt_0171:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
.Lt_0170:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .Lt_0165
.Lt_016F:
.Lt_016E:
mov dword ptr [ebp-28], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 40
jne .Lt_0173
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 41
jne .Lt_0175
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 0
je .Lt_0177
push dword ptr [ebp-32]
call _SYMBISARRAY@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .Lt_0179
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .Lt_017B
push 0
push -1
push 24
call _ERRREPORT@12
cmp dword ptr [ebp+8], 0
je .Lt_017D
push 0
push 0
push 0
push 41
call _HSKIPUNTIL@16
jmp .Lt_017C
.Lt_017D:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
.Lt_017C:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .Lt_0165
.Lt_017B:
.Lt_017A:
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXSKIPTOKEN@4
.Lt_0179:
.Lt_0178:
.Lt_0177:
.Lt_0176:
.Lt_0175:
.Lt_0174:
.Lt_0173:
.Lt_0172:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_017F
call _CEXPRESSION@0
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-28], 0
je .Lt_0181
cmp dword ptr [ebp-20], 0
je .Lt_0183
push 0
push 0
push 277
call _ERRREPORT@12
push dword ptr [ebp-20]
call _ASTDELTREE@4
mov dword ptr [ebp-20], 0
.Lt_0183:
.Lt_0182:
jmp .Lt_0180
.Lt_0181:
cmp dword ptr [ebp-20], 0
je .Lt_0185
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 17
je .Lt_0189
.Lt_018A:
cmp dword ptr [ebp-36], 18
jne .Lt_0188
.Lt_0189:
push 0
push 0
push 277
call _ERRREPORT@12
push dword ptr [ebp-20]
call _ASTDELTREE@4
mov dword ptr [ebp-20], 0
jmp .Lt_0186
.Lt_0188:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 480
test eax, eax
je .Lt_018D
push 0
push 1
push 0
push 2
call _ERRREPORTWARN@16
.Lt_018D:
.Lt_018C:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 8
je .Lt_018F
push 0
push 0
push dword ptr [ebp-20]
push 0
push 8
call _ASTNEWCONV@20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0191
push 0
push -1
push 17
call _ERRREPORT@12
.Lt_0191:
.Lt_0190:
.Lt_018F:
.Lt_018E:
.Lt_018B:
.Lt_0186:
.Lt_0185:
.Lt_0184:
.Lt_0180:
jmp .Lt_017E
.Lt_017F:
mov dword ptr [ebp-20], 0
.Lt_017E:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_0193
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .Lt_0195
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 0
je .Lt_0197
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
and eax, 480
je .Lt_0198
mov dword ptr [ebp-40], 24
jmp .Lt_02BC
.Lt_0198:
mov eax, dword ptr [ebp-36]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_02BC:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [_ENV+272]
cmp ebx, dword ptr [_SYMB_DTYPETB+eax+4]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp-36]
and ebx, 480
je .Lt_019A
mov dword ptr [ebp-44], 24
jmp .Lt_02BD
.Lt_019A:
mov ebx, dword ptr [ebp-36]
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_02BD:
mov ebx, dword ptr [ebp-44]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
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
je .Lt_019D
push 0
push 0
push 24
call _ERRREPORT@12
.Lt_019D:
.Lt_019C:
.Lt_0197:
.Lt_0196:
jmp .Lt_0194
.Lt_0195:
push 0
push 0
push 14
call _ERRREPORT@12
.Lt_0194:
jmp .Lt_0192
.Lt_0193:
mov dword ptr [ebp-24], 0
.Lt_0192:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 512
test eax, eax
je .Lt_019F
push 0
push 0
push 119
call _ERRREPORT@12
.Lt_019F:
.Lt_019E:
cmp dword ptr [ebp-24], 0
je .Lt_01A1
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_01A3
push 0
push 0
push 119
call _ERRREPORT@12
.Lt_01A3:
.Lt_01A2:
.Lt_01A1:
.Lt_01A0:
cmp dword ptr [ebp-28], 0
jne .Lt_01A5
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLFILEGET@24
mov dword ptr [ebp-4], eax
jmp .Lt_01A4
.Lt_01A5:
push dword ptr [ebp+8]
push dword ptr [ebp-24]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _RTLFILEGETARRAY@20
mov dword ptr [ebp-4], eax
.Lt_01A4:
.Lt_0165:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HFILEOPEN@4:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A6:
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
cmp dword ptr [_ENV+136], 3
je .Lt_01A9
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_01AD
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01AC
.Lt_01AE:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2068], 0
jne .Lt_01B0
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-56], 1
.Lt_01B0:
.Lt_01AF:
jmp .Lt_01AA
.Lt_01AC:
push 4
push offset _Lt_01B2
push -1
lea ebx, [ebp-68]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .Lt_01B1
.Lt_01B3:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-56], 2
jmp .Lt_01AA
.Lt_01B1:
push 5
push offset _Lt_01B5
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_01B4
.Lt_01B6:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2068], 0
jne .Lt_01B8
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-56], 3
.Lt_01B8:
.Lt_01B7:
jmp .Lt_01AA
.Lt_01B4:
push 5
push offset _Lt_01BA
push -1
lea ebx, [ebp-68]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .Lt_01B9
.Lt_01BB:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2068], 0
jne .Lt_01BD
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-56], 4
.Lt_01BD:
.Lt_01BC:
jmp .Lt_01AA
.Lt_01B9:
push 4
push offset _Lt_01BF
push -1
lea ebx, [ebp-68]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .Lt_01BE
.Lt_01C0:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2068], 0
jne .Lt_01C2
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-56], 5
.Lt_01C2:
.Lt_01C1:
jmp .Lt_01AA
.Lt_01BE:
push 4
push offset _Lt_01C4
push -1
lea ebx, [ebp-68]
push ebx
call _fb_StrCompare@16
test eax, eax
jne .Lt_01C3
.Lt_01C5:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2068], 0
jne .Lt_01C7
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-56], 6
.Lt_01C7:
.Lt_01C6:
.Lt_01C3:
.Lt_01AA:
lea ebx, [ebp-68]
push ebx
call _fb_StrDelete@4
.Lt_01A9:
.Lt_01A8:
cmp dword ptr [ebp+8], 0
je .Lt_01C9
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_01CB
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_01CA
.Lt_01CB:
push 0
call _LEXSKIPTOKEN@4
.Lt_01CA:
.Lt_01C9:
.Lt_01C8:
cmp dword ptr [_ENV+136], 3
jne .Lt_01CD
mov dword ptr [ebp-56], 7
.Lt_01CD:
.Lt_01CC:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp-60], eax
jmp .Lt_01CF
.Lt_01D1:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_01D3
jmp .Lt_01A7
.Lt_01D3:
.Lt_01D2:
cmp dword ptr [ebp+8], 0
je .Lt_01D5
push 0
push 44
call _HMATCH@8
.Lt_01D5:
.Lt_01D4:
cmp dword ptr [ebp-56], 0
je .Lt_01D8
.Lt_01D9:
cmp dword ptr [ebp-56], 7
jne .Lt_01D7
.Lt_01D8:
cmp dword ptr [ebp+8], 0
je .Lt_01DB
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-64], eax
cmp dword ptr [ebp-64], 281
je .Lt_01DF
.Lt_01E0:
cmp dword ptr [ebp-64], 473
je .Lt_01DF
.Lt_01E1:
cmp dword ptr [ebp-64], 376
jne .Lt_01DE
.Lt_01DF:
jmp .Lt_01DC
.Lt_01DE:
mov dword ptr [ebp-36], -1
.Lt_01E2:
.Lt_01DC:
jmp .Lt_01DA
.Lt_01DB:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_01E4
mov dword ptr [ebp-36], -1
.Lt_01E4:
.Lt_01E3:
.Lt_01DA:
.Lt_01D7:
.Lt_01D6:
jmp .Lt_01CE
.Lt_01E5:
push offset _Lt_0000
call _ASTNEWCONSTSTR@4
mov dword ptr [ebp-12], eax
jmp .Lt_01CE
.Lt_01CF:
cmp dword ptr [ebp-60], 7
ja .Lt_01E5
mov eax, dword ptr [ebp-60]
jmp dword ptr [_.LT_01E6+eax*4]
_.LT_01E6:
.int .Lt_01D1
.int .Lt_01E5
.int .Lt_01E5
.int .Lt_01D1
.int .Lt_01E5
.int .Lt_01D1
.int .Lt_01D1
.int .Lt_01D1
.Lt_01CE:
cmp dword ptr [ebp-36], 0
je .Lt_01E8
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], 0
push 0
push 35
call _HMATCH@8
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01EA
jmp .Lt_01A7
.Lt_01EA:
.Lt_01E9:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_01EC
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_01EB
.Lt_01EC:
push 0
call _LEXSKIPTOKEN@4
.Lt_01EB:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_01EE
jmp .Lt_01A7
.Lt_01EE:
.Lt_01ED:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_01F0
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_01F2
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_01F4
jmp .Lt_01A7
.Lt_01F4:
.Lt_01F3:
.Lt_01F2:
.Lt_01F1:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_01F6
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_01F8
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_01FA
jmp .Lt_01A7
.Lt_01FA:
.Lt_01F9:
.Lt_01F8:
.Lt_01F7:
push 0
push 44
call _HMATCH@8
test eax, eax
je .Lt_01FC
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_01FE
jmp .Lt_01A7
.Lt_01FE:
.Lt_01FD:
.Lt_01FC:
.Lt_01FB:
.Lt_01F6:
.Lt_01F5:
.Lt_01F0:
.Lt_01EF:
cmp dword ptr [ebp-28], 0
jne .Lt_0200
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-28], eax
.Lt_0200:
.Lt_01FF:
cmp dword ptr [ebp-20], 0
jne .Lt_0202
push offset _Lt_0000
call _ASTNEWCONSTSTR@4
mov dword ptr [ebp-20], eax
.Lt_0202:
.Lt_0201:
cmp dword ptr [ebp-24], 0
jne .Lt_0204
push offset _Lt_0000
call _ASTNEWCONSTSTR@4
mov dword ptr [ebp-24], eax
.Lt_0204:
.Lt_0203:
cmp dword ptr [ebp+8], 0
je .Lt_0206
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0208
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0207
.Lt_0208:
push 0
call _LEXSKIPTOKEN@4
.Lt_0207:
.Lt_0206:
.Lt_0205:
push dword ptr [ebp+8]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLFILEOPENSHORT@28
mov dword ptr [ebp-4], eax
jmp .Lt_01A7
.Lt_01E8:
.Lt_01E7:
push 2048
push 281
call _HMATCH@8
test eax, eax
je .Lt_020A
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-68]
push eax
call _fb_StrInit@20
push 6
push offset _Lt_020E
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_020D
.Lt_020F:
mov dword ptr [ebp-40], 2
jmp .Lt_020B
.Lt_020D:
push 7
push offset _Lt_0211
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0210
.Lt_0212:
mov dword ptr [ebp-40], 3
jmp .Lt_020B
.Lt_0210:
push 7
push offset _Lt_0214
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0213
.Lt_0215:
mov dword ptr [ebp-40], 0
jmp .Lt_020B
.Lt_0213:
push 7
push offset _Lt_0217
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0216
.Lt_0218:
mov dword ptr [ebp-40], 1
jmp .Lt_020B
.Lt_0216:
push 7
push offset _Lt_021A
push -1
lea eax, [ebp-68]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0219
.Lt_021B:
mov dword ptr [ebp-40], 4
jmp .Lt_020B
.Lt_0219:
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
jmp .Lt_01A7
.Lt_021C:
.Lt_020B:
lea eax, [ebp-68]
push eax
call _fb_StrDelete@4
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_0209
.Lt_020A:
mov dword ptr [ebp-40], 1
.Lt_0209:
push 0
push 8
mov ebx, dword ptr [ebp-40]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 0
je .Lt_021E
push 0
push 44
call _HMATCH@8
.Lt_021E:
.Lt_021D:
mov dword ptr [ebp-32], 0
cmp dword ptr [_ENV+136], 3
je .Lt_0220
cmp dword ptr [ebp-40], 2
je .Lt_0223
.Lt_0224:
cmp dword ptr [ebp-40], 3
je .Lt_0223
.Lt_0225:
cmp dword ptr [ebp-40], 4
jne .Lt_0222
.Lt_0223:
push 2048
push 482
call _HMATCH@8
test eax, eax
je .Lt_0227
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_0229
jmp .Lt_01A7
.Lt_0229:
.Lt_0228:
cmp dword ptr [ebp+8], 0
je .Lt_022B
push 0
push 44
call _HMATCH@8
.Lt_022B:
.Lt_022A:
.Lt_0227:
.Lt_0226:
.Lt_0222:
.Lt_0221:
.Lt_0220:
.Lt_021F:
push 2048
push offset _Lt_022C
call _HMATCHIDORKW@8
test eax, eax
je .Lt_022E
push 2048
push offset _Lt_022F
call _HMATCHIDORKW@8
test eax, eax
je .Lt_0231
mov dword ptr [ebp-44], 2
jmp .Lt_0230
.Lt_0231:
push 2048
push offset _Lt_0233
call _HMATCHIDORKW@8
test eax, eax
je .Lt_0232
push 0
push 474
call _HMATCH@8
test eax, eax
je .Lt_0235
mov dword ptr [ebp-44], 3
jmp .Lt_0234
.Lt_0235:
mov dword ptr [ebp-44], 1
.Lt_0234:
.Lt_0232:
.Lt_0230:
jmp .Lt_022D
.Lt_022E:
mov dword ptr [ebp-44], 0
.Lt_022D:
push 0
push 8
mov ebx, dword ptr [ebp-44]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+8], 0
je .Lt_0237
push 0
push 44
call _HMATCH@8
.Lt_0237:
.Lt_0236:
push 2048
push 312
call _HMATCH@8
test eax, eax
je .Lt_0239
mov dword ptr [ebp-48], 0
jmp .Lt_0238
.Lt_0239:
push 2048
push offset _Lt_023B
call _HMATCHIDORKW@8
test eax, eax
je .Lt_023A
push 2048
push offset _Lt_022F
call _HMATCHIDORKW@8
test eax, eax
je .Lt_023D
mov dword ptr [ebp-48], 2
jmp .Lt_023C
.Lt_023D:
push 2048
push offset _Lt_0233
call _HMATCHIDORKW@8
test eax, eax
je .Lt_023E
push 2048
push 474
call _HMATCH@8
test eax, eax
je .Lt_0240
mov dword ptr [ebp-48], 3
jmp .Lt_023F
.Lt_0240:
mov dword ptr [ebp-48], 1
.Lt_023F:
.Lt_023E:
.Lt_023C:
jmp .Lt_0238
.Lt_023A:
mov dword ptr [ebp-48], 0
.Lt_0238:
push 0
push 8
mov ebx, dword ptr [ebp-48]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp+8], 0
je .Lt_0242
push 0
push 44
call _HMATCH@8
.Lt_0242:
.Lt_0241:
push 2048
push 376
call _HMATCH@8
test eax, eax
jne .Lt_0244
push 0
push 0
push 5
call _ERRREPORT@12
.Lt_0244:
.Lt_0243:
push 0
push 35
call _HMATCH@8
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0246
jmp .Lt_01A7
.Lt_0246:
.Lt_0245:
cmp dword ptr [ebp+8], 0
je .Lt_0248
push 0
push 44
call _HMATCH@8
.Lt_0248:
.Lt_0247:
push 2048
push offset _Lt_0249
call _HMATCHIDORKW@8
test eax, eax
je .Lt_024B
call _CASSIGNTOKEN@0
test eax, eax
jne .Lt_024D
push 0
push 0
push 10
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-28], eax
jmp .Lt_024C
.Lt_024D:
push 8
call _HMATCHEXPR@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
jne .Lt_024F
jmp .Lt_01A7
.Lt_024F:
.Lt_024E:
.Lt_024C:
jmp .Lt_024A
.Lt_024B:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-28], eax
.Lt_024A:
cmp dword ptr [ebp+8], 0
je .Lt_0251
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0253
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0252
.Lt_0253:
push 0
call _LEXSKIPTOKEN@4
.Lt_0252:
.Lt_0251:
.Lt_0250:
push dword ptr [ebp-56]
push dword ptr [ebp+8]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _RTLFILEOPEN@36
mov dword ptr [ebp-4], eax
.Lt_01A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HFILERENAME@4:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0254:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_0257
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0259
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_0258
.Lt_0259:
push 0
call _LEXSKIPTOKEN@4
.Lt_0258:
jmp .Lt_0256
.Lt_0257:
push 0
push 40
call _HMATCH@8
mov dword ptr [ebp-16], eax
.Lt_0256:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_025B
jmp .Lt_0255
.Lt_025B:
.Lt_025A:
cmp dword ptr [ebp+8], 0
je .Lt_025D
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_025F
push 0
push 0
push 16
call _ERRREPORT@12
jmp .Lt_025E
.Lt_025F:
push 0
call _LEXSKIPTOKEN@4
.Lt_025E:
jmp .Lt_025C
.Lt_025D:
push 2048
push 376
call _HMATCH@8
test eax, eax
jne .Lt_0261
push 0
push 44
call _HMATCH@8
test eax, eax
jne .Lt_0263
push 0
push 0
push 5
call _ERRREPORT@12
.Lt_0263:
.Lt_0262:
.Lt_0261:
.Lt_0260:
.Lt_025C:
push 17
call _HMATCHEXPR@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0265
jmp .Lt_0255
.Lt_0265:
.Lt_0264:
mov eax, dword ptr [ebp-16]
or eax, dword ptr [ebp+8]
je .Lt_0267
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0269
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0268
.Lt_0269:
push 0
call _LEXSKIPTOKEN@4
.Lt_0268:
.Lt_0267:
.Lt_0266:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _RTLFILERENAME@12
mov dword ptr [ebp-4], eax
.Lt_0255:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_01AD:	.ascii	"CONS\0"
.balign 4
_Lt_01B2:	.ascii	"ERR\0"
.balign 4
_Lt_01B5:	.ascii	"PIPE\0"
.balign 4
_Lt_01BA:	.ascii	"SCRN\0"
.balign 4
_Lt_01BF:	.ascii	"LPT\0"
.balign 4
_Lt_01C4:	.ascii	"COM\0"
.balign 4
_Lt_020E:	.ascii	"INPUT\0"
.balign 4
_Lt_0211:	.ascii	"OUTPUT\0"
.balign 4
_Lt_0214:	.ascii	"BINARY\0"
.balign 4
_Lt_0217:	.ascii	"RANDOM\0"
.balign 4
_Lt_021A:	.ascii	"APPEND\0"
.balign 4
_Lt_022C:	.ascii	"ACCESS\0"
.balign 4
_Lt_022F:	.ascii	"WRITE\0"
.balign 4
_Lt_0233:	.ascii	"READ\0"
.balign 4
_Lt_023B:	.ascii	"LOCK\0"
.balign 4
_Lt_0249:	.ascii	"LEN\0"
