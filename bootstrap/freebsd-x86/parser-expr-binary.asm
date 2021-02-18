	.intel_syntax noprefix

.section .text
.balign 16

.globl CEXPRESSION
CEXPRESSION:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0068:
mov eax, dword ptr [PARSER+148]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
or dword ptr [PARSER+148], 4
jmp .Lt_006A
.Lt_006B:
and dword ptr [PARSER+148], -5
.Lt_006A:
call CBOOLEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-8], 0
je .Lt_006D
or dword ptr [PARSER+148], 4
jmp .Lt_006C
.Lt_006D:
and dword ptr [PARSER+148], -5
.Lt_006C:
.Lt_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CEXPRESSIONWITHNIDXARRAY
CEXPRESSIONWITHNIDXARRAY:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_006F:
mov eax, dword ptr [PARSER+148]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
not eax
test eax, eax
je .Lt_0072
or dword ptr [PARSER+148], 2
jmp .Lt_0071
.Lt_0072:
and dword ptr [PARSER+148], -3
.Lt_0071:
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-8], 0
je .Lt_0074
or dword ptr [PARSER+148], 2
jmp .Lt_0073
.Lt_0074:
and dword ptr [PARSER+148], -3
.Lt_0073:
.Lt_0070:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CBOOLEXPRESSION
CBOOLEXPRESSION:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0076:
call CLOGEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0079
mov dword ptr [ebp-4], 0
jmp .Lt_0077
.Lt_0079:
.Lt_0078:
.Lt_007A:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
jmp .Lt_007E
.Lt_0080:
mov dword ptr [ebp-8], 36
jmp .Lt_007D
.Lt_0081:
mov dword ptr [ebp-8], 37
jmp .Lt_007D
.Lt_0082:
jmp .Lt_007B
jmp .Lt_007D
.Lt_007E:
mov eax, dword ptr [ebp-24]
add eax, 4294967006
cmp eax, 1
ja .Lt_0082
mov eax, dword ptr [ebp-24]
jmp dword ptr [.LT_0083+eax*4-1160]
.LT_0083:
.int .Lt_0080
.int .Lt_0081
.Lt_007D:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
push eax
call HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_0085
jmp .Lt_007B
.Lt_0085:
.Lt_0084:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call ASTDTORLISTSCOPEBEGIN
add esp, 4
call CLOGEXPRESSION
mov dword ptr [ebp-16], eax
call ASTDTORLISTSCOPEEND
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0087
push 0
push 0
push 9
call ERRREPORT
add esp, 12
jmp .Lt_007B
.Lt_0087:
.Lt_0086:
push 1
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0089
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_0089:
.Lt_0088:
.Lt_007C:
jmp .Lt_007A
.Lt_007B:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0077:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CLOGEXPRESSION
CLOGEXPRESSION:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_008A:
call CLOGOREXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_008D
mov dword ptr [ebp-4], 0
jmp .Lt_008B
.Lt_008D:
.Lt_008C:
.Lt_008E:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
jmp .Lt_0092
.Lt_0094:
mov dword ptr [ebp-8], 38
jmp .Lt_0091
.Lt_0095:
mov dword ptr [ebp-8], 39
jmp .Lt_0091
.Lt_0096:
mov dword ptr [ebp-8], 40
jmp .Lt_0091
.Lt_0097:
jmp .Lt_008F
jmp .Lt_0091
.Lt_0092:
mov eax, dword ptr [ebp-20]
add eax, 4294967004
cmp eax, 2
ja .Lt_0097
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_0098+eax*4-1168]
.LT_0098:
.int .Lt_0094
.int .Lt_0095
.int .Lt_0096
.Lt_0091:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
push eax
call HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_009A
jmp .Lt_008F
.Lt_009A:
.Lt_0099:
push 2048
call LEXSKIPTOKEN
add esp, 4
call CLOGOREXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_009C
push 0
push 0
push 9
call ERRREPORT
add esp, 12
jmp .Lt_008F
.Lt_009C:
.Lt_009B:
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_009E
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_009E:
.Lt_009D:
.Lt_0090:
jmp .Lt_008E
.Lt_008F:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_008B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CLOGOREXPRESSION
CLOGOREXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_009F:
call CLOGANDEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00A2
mov dword ptr [ebp-4], 0
jmp .Lt_00A0
.Lt_00A2:
.Lt_00A1:
.Lt_00A3:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 289
je .Lt_00A7
jmp .Lt_00A4
.Lt_00A7:
.Lt_00A6:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
push eax
call HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_00A9
jmp .Lt_00A4
.Lt_00A9:
.Lt_00A8:
push 2048
call LEXSKIPTOKEN
add esp, 4
call CLOGANDEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00AB
push 0
push 0
push 9
call ERRREPORT
add esp, 12
jmp .Lt_00A4
.Lt_00AB:
.Lt_00AA:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 35
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00AD
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_00AD:
.Lt_00AC:
.Lt_00A5:
jmp .Lt_00A3
.Lt_00A4:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_00A0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CLOGANDEXPRESSION
CLOGANDEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00AE:
call CRELEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00B1
mov dword ptr [ebp-4], 0
jmp .Lt_00AF
.Lt_00B1:
.Lt_00B0:
.Lt_00B2:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 288
je .Lt_00B6
jmp .Lt_00B3
.Lt_00B6:
.Lt_00B5:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
push eax
call HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_00B8
jmp .Lt_00B3
.Lt_00B8:
.Lt_00B7:
push 2048
call LEXSKIPTOKEN
add esp, 4
call CRELEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00BA
push 0
push 0
push 9
call ERRREPORT
add esp, 12
jmp .Lt_00B3
.Lt_00BA:
.Lt_00B9:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 34
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00BC
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_00BC:
.Lt_00BB:
.Lt_00B4:
jmp .Lt_00B2
.Lt_00B3:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_00AF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CRELEXPRESSION
CRELEXPRESSION:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_00BD:
call CISEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00C0
mov dword ptr [ebp-4], 0
jmp .Lt_00BE
.Lt_00C0:
.Lt_00BF:
.Lt_00C1:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
jmp .Lt_00C5
.Lt_00C7:
mov eax, dword ptr [PARSER+144]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [PARSER+160], eax
mov eax, dword ptr [PARSER+148]
and eax, 256
test eax, eax
je .Lt_00C9
jmp .Lt_00C2
.Lt_00C9:
.Lt_00C8:
mov dword ptr [ebp-8], 45
jmp .Lt_00C4
.Lt_00CA:
mov eax, dword ptr [PARSER+148]
and eax, 512
test eax, eax
je .Lt_00CC
jmp .Lt_00C2
.Lt_00CC:
.Lt_00CB:
mov dword ptr [ebp-8], 46
jmp .Lt_00C4
.Lt_00CD:
mov dword ptr [ebp-8], 47
jmp .Lt_00C4
.Lt_00CE:
mov dword ptr [ebp-8], 48
jmp .Lt_00C4
.Lt_00CF:
mov dword ptr [ebp-8], 50
jmp .Lt_00C4
.Lt_00D0:
mov dword ptr [ebp-8], 49
jmp .Lt_00C4
.Lt_00D1:
jmp .Lt_00C2
jmp .Lt_00C4
.Lt_00C5:
mov eax, dword ptr [ebp-20]
add eax, 4294966997
cmp eax, 5
ja .Lt_00D1
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_00D2+eax*4-1196]
.LT_00D2:
.int .Lt_00C7
.int .Lt_00CA
.int .Lt_00CD
.int .Lt_00CE
.int .Lt_00CF
.int .Lt_00D0
.Lt_00C4:
push 0
call LEXSKIPTOKEN
add esp, 4
call CISEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00D4
push 0
push 0
push 9
call ERRREPORT
add esp, 12
jmp .Lt_00C2
.Lt_00D4:
.Lt_00D3:
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00D6
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_00D6:
.Lt_00D5:
.Lt_00C3:
jmp .Lt_00C1
.Lt_00C2:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_00BE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CISEXPRESSION
CISEXPRESSION:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D8:
call CCATEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00DB
mov dword ptr [ebp-4], 0
jmp .Lt_00D9
.Lt_00DB:
.Lt_00DA:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 272
je .Lt_00DD
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00D9
.Lt_00DD:
.Lt_00DC:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .Lt_00DF
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .Lt_00E1
push 0
push 0
push 297
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00E1:
.Lt_00E0:
jmp .Lt_00DE
.Lt_00DF:
push 0
push 0
push 299
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00DE:
push 2048
call LEXSKIPTOKEN
add esp, 4
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
add esp, 20
test eax, eax
jne .Lt_00E5
mov dword ptr [ebp-4], 0
jmp .Lt_00D9
.Lt_00E5:
.Lt_00E4:
mov eax, dword ptr [ebp-12]
and eax, 511
cmp eax, 20
jne .Lt_00E7
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .Lt_00E9
push 0
push 0
push 297
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00D9
jmp .Lt_00E8
.Lt_00E9:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
push dword ptr [ebp-16]
call SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .Lt_00EA
push 0
push 0
push 298
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00D9
.Lt_00EA:
.Lt_00E8:
jmp .Lt_00E6
.Lt_00E7:
push 0
push 0
push 299
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00D9
.Lt_00E6:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+136]
push dword ptr [ebx+148]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-32], eax
push 1
push 0
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push 51
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00EC
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00EC:
.Lt_00EB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CCATEXPRESSION
CCATEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00ED:
call CADDEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00F0
mov dword ptr [ebp-4], 0
jmp .Lt_00EE
.Lt_00F0:
.Lt_00EF:
.Lt_00F1:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 38
je .Lt_00F5
jmp .Lt_00F2
.Lt_00F5:
.Lt_00F4:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
push eax
call HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_00F7
jmp .Lt_00F2
.Lt_00F7:
.Lt_00F6:
push 0
call LEXSKIPTOKEN
add esp, 4
call CADDEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00F9
push 0
push 0
push 9
call ERRREPORT
add esp, 12
jmp .Lt_00F2
.Lt_00F9:
.Lt_00F8:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 44
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00FB
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
call ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_00FB:
.Lt_00FA:
.Lt_00F3:
jmp .Lt_00F1
.Lt_00F2:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_00EE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CADDEXPRESSION
CADDEXPRESSION:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_00FC:
call CSHIFTEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00FF
mov dword ptr [ebp-4], 0
jmp .Lt_00FD
.Lt_00FF:
.Lt_00FE:
.Lt_0100:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 43
jne .Lt_0105
.Lt_0106:
mov dword ptr [ebp-8], 28
jmp .Lt_0103
.Lt_0105:
cmp dword ptr [ebp-20], 45
jne .Lt_0107
.Lt_0108:
mov dword ptr [ebp-8], 29
jmp .Lt_0103
.Lt_0107:
jmp .Lt_0101
.Lt_0109:
.Lt_0103:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
push eax
call HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_010B
jmp .Lt_0101
.Lt_010B:
.Lt_010A:
push 0
call LEXSKIPTOKEN
add esp, 4
call CSHIFTEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_010D
push 0
push 0
push 9
call ERRREPORT
add esp, 12
jmp .Lt_0101
.Lt_010D:
.Lt_010C:
push 7
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_010F
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_010F:
.Lt_010E:
.Lt_0102:
jmp .Lt_0100
.Lt_0101:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_00FD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CSHIFTEXPRESSION
CSHIFTEXPRESSION:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_0110:
call CMODEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0113
mov dword ptr [ebp-4], 0
jmp .Lt_0111
.Lt_0113:
.Lt_0112:
.Lt_0114:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 297
jne .Lt_0119
.Lt_011A:
mov dword ptr [ebp-8], 41
jmp .Lt_0117
.Lt_0119:
cmp dword ptr [ebp-20], 298
jne .Lt_011B
.Lt_011C:
mov dword ptr [ebp-8], 42
jmp .Lt_0117
.Lt_011B:
jmp .Lt_0115
.Lt_011D:
.Lt_0117:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
push eax
call HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_011F
jmp .Lt_0115
.Lt_011F:
.Lt_011E:
push 2048
call LEXSKIPTOKEN
add esp, 4
call CMODEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0121
push 0
push 0
push 9
call ERRREPORT
add esp, 12
jmp .Lt_0115
.Lt_0121:
.Lt_0120:
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0123
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_0123:
.Lt_0122:
.Lt_0116:
jmp .Lt_0114
.Lt_0115:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_0111:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CMODEXPRESSION
CMODEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0124:
call CINTDIVEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0127
mov dword ptr [ebp-4], 0
jmp .Lt_0125
.Lt_0127:
.Lt_0126:
.Lt_0128:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 296
je .Lt_012C
jmp .Lt_0129
.Lt_012C:
.Lt_012B:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
push eax
call HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_012E
jmp .Lt_0129
.Lt_012E:
.Lt_012D:
push 2048
call LEXSKIPTOKEN
add esp, 4
call CINTDIVEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0130
push 0
push 0
push 9
call ERRREPORT
add esp, 12
jmp .Lt_0129
.Lt_0130:
.Lt_012F:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 33
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0132
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0132:
.Lt_0131:
.Lt_012A:
jmp .Lt_0128
.Lt_0129:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0125:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CINTDIVEXPRESSION
CINTDIVEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0133:
call CMULTEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0136
mov dword ptr [ebp-4], 0
jmp .Lt_0134
.Lt_0136:
.Lt_0135:
.Lt_0137:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 92
je .Lt_013B
jmp .Lt_0138
.Lt_013B:
.Lt_013A:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
push eax
call HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_013D
jmp .Lt_0138
.Lt_013D:
.Lt_013C:
push 0
call LEXSKIPTOKEN
add esp, 4
call CMULTEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_013F
push 0
push 0
push 9
call ERRREPORT
add esp, 12
jmp .Lt_0138
.Lt_013F:
.Lt_013E:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 32
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0141
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0141:
.Lt_0140:
.Lt_0139:
jmp .Lt_0137
.Lt_0138:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0134:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CMULTEXPRESSION
CMULTEXPRESSION:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_0142:
call CEXPEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0145
mov dword ptr [ebp-4], 0
jmp .Lt_0143
.Lt_0145:
.Lt_0144:
.Lt_0146:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 42
jne .Lt_014B
.Lt_014C:
mov dword ptr [ebp-8], 30
jmp .Lt_0149
.Lt_014B:
cmp dword ptr [ebp-20], 47
jne .Lt_014D
.Lt_014E:
mov dword ptr [ebp-8], 31
jmp .Lt_0149
.Lt_014D:
jmp .Lt_0147
.Lt_014F:
.Lt_0149:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
push eax
call HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_0151
jmp .Lt_0147
.Lt_0151:
.Lt_0150:
push 0
call LEXSKIPTOKEN
add esp, 4
call CEXPEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0153
push 0
push 0
push 9
call ERRREPORT
add esp, 12
jmp .Lt_0147
.Lt_0153:
.Lt_0152:
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0155
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_0155:
.Lt_0154:
.Lt_0148:
jmp .Lt_0146
.Lt_0147:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_0143:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CEXPEXPRESSION
CEXPEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0156:
call CNEGNOTEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0159
mov dword ptr [ebp-4], 0
jmp .Lt_0157
.Lt_0159:
.Lt_0158:
.Lt_015A:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 94
je .Lt_015E
jmp .Lt_015B
.Lt_015E:
.Lt_015D:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
push eax
call HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_0160
jmp .Lt_015B
.Lt_0160:
.Lt_015F:
push 0
call LEXSKIPTOKEN
add esp, 4
call CNEGNOTEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0162
push 0
push 0
push 9
call ERRREPORT
add esp, 12
jmp .Lt_015B
.Lt_0162:
.Lt_0161:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 43
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0164
push 0
push 0
push 20
call ERRREPORT
add esp, 12
push 16
push dword ptr [Lt_0165+4]
push dword ptr [Lt_0165]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-12], eax
.Lt_0164:
.Lt_0163:
.Lt_015C:
jmp .Lt_015A
.Lt_015B:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0157:
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

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 8
Lt_0165:	.quad	0x0000000000000000
