	.intel_syntax noprefix

.section .text
.balign 16

.globl _CEXPRESSION
_CEXPRESSION:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0069:
mov eax, dword ptr [_PARSER+148]
and eax, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
or dword ptr [_PARSER+148], 4
jmp .Lt_006B
.Lt_006C:
and dword ptr [_PARSER+148], -5
.Lt_006B:
call _CBOOLEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-8], 0
je .Lt_006E
or dword ptr [_PARSER+148], 4
jmp .Lt_006D
.Lt_006E:
and dword ptr [_PARSER+148], -5
.Lt_006D:
.Lt_006A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CEXPRESSIONWITHNIDXARRAY
_CEXPRESSIONWITHNIDXARRAY:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0070:
mov eax, dword ptr [_PARSER+148]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
not eax
test eax, eax
je .Lt_0073
or dword ptr [_PARSER+148], 2
jmp .Lt_0072
.Lt_0073:
and dword ptr [_PARSER+148], -3
.Lt_0072:
call _CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-8], 0
je .Lt_0075
or dword ptr [_PARSER+148], 2
jmp .Lt_0074
.Lt_0075:
and dword ptr [_PARSER+148], -3
.Lt_0074:
.Lt_0071:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CBOOLEXPRESSION
_CBOOLEXPRESSION:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0077:
call _CLOGEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_007A
mov dword ptr [ebp-4], 0
jmp .Lt_0078
.Lt_007A:
.Lt_0079:
.Lt_007B:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
jmp .Lt_007F
.Lt_0081:
mov dword ptr [ebp-8], 36
jmp .Lt_007E
.Lt_0082:
mov dword ptr [ebp-8], 37
jmp .Lt_007E
.Lt_0083:
jmp .Lt_007C
jmp .Lt_007E
.Lt_007F:
mov eax, dword ptr [ebp-24]
add eax, 4294967006
cmp eax, 1
ja .Lt_0083
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.LT_0084+eax*4-1160]
_.LT_0084:
.int .Lt_0081
.int .Lt_0082
.Lt_007E:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_0086
jmp .Lt_007C
.Lt_0086:
.Lt_0085:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _ASTDTORLISTSCOPEBEGIN
add esp, 4
call _CLOGEXPRESSION
mov dword ptr [ebp-16], eax
call _ASTDTORLISTSCOPEEND
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0088
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
jmp .Lt_007C
.Lt_0088:
.Lt_0087:
push 1
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-8]
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_008A
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_008A:
.Lt_0089:
.Lt_007D:
jmp .Lt_007B
.Lt_007C:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0078:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CLOGEXPRESSION
_CLOGEXPRESSION:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_008B:
call _CLOGOREXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_008E
mov dword ptr [ebp-4], 0
jmp .Lt_008C
.Lt_008E:
.Lt_008D:
.Lt_008F:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
jmp .Lt_0093
.Lt_0095:
mov dword ptr [ebp-8], 38
jmp .Lt_0092
.Lt_0096:
mov dword ptr [ebp-8], 39
jmp .Lt_0092
.Lt_0097:
mov dword ptr [ebp-8], 40
jmp .Lt_0092
.Lt_0098:
jmp .Lt_0090
jmp .Lt_0092
.Lt_0093:
mov eax, dword ptr [ebp-20]
add eax, 4294967004
cmp eax, 2
ja .Lt_0098
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_0099+eax*4-1168]
_.LT_0099:
.int .Lt_0095
.int .Lt_0096
.int .Lt_0097
.Lt_0092:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_009B
jmp .Lt_0090
.Lt_009B:
.Lt_009A:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CLOGOREXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_009D
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
jmp .Lt_0090
.Lt_009D:
.Lt_009C:
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_009F
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_009F:
.Lt_009E:
.Lt_0091:
jmp .Lt_008F
.Lt_0090:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_008C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CLOGOREXPRESSION
_CLOGOREXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00A0:
call _CLOGANDEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00A3
mov dword ptr [ebp-4], 0
jmp .Lt_00A1
.Lt_00A3:
.Lt_00A2:
.Lt_00A4:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 289
je .Lt_00A8
jmp .Lt_00A5
.Lt_00A8:
.Lt_00A7:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_00AA
jmp .Lt_00A5
.Lt_00AA:
.Lt_00A9:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CLOGANDEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00AC
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
jmp .Lt_00A5
.Lt_00AC:
.Lt_00AB:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 35
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00AE
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_00AE:
.Lt_00AD:
.Lt_00A6:
jmp .Lt_00A4
.Lt_00A5:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_00A1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CLOGANDEXPRESSION
_CLOGANDEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00AF:
call _CRELEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00B2
mov dword ptr [ebp-4], 0
jmp .Lt_00B0
.Lt_00B2:
.Lt_00B1:
.Lt_00B3:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 288
je .Lt_00B7
jmp .Lt_00B4
.Lt_00B7:
.Lt_00B6:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_00B9
jmp .Lt_00B4
.Lt_00B9:
.Lt_00B8:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CRELEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00BB
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
jmp .Lt_00B4
.Lt_00BB:
.Lt_00BA:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 34
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00BD
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_00BD:
.Lt_00BC:
.Lt_00B5:
jmp .Lt_00B3
.Lt_00B4:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_00B0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CRELEXPRESSION
_CRELEXPRESSION:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_00BE:
call _CISEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00C1
mov dword ptr [ebp-4], 0
jmp .Lt_00BF
.Lt_00C1:
.Lt_00C0:
.Lt_00C2:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
jmp .Lt_00C6
.Lt_00C8:
mov eax, dword ptr [_PARSER+144]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_PARSER+160], eax
mov eax, dword ptr [_PARSER+148]
and eax, 256
test eax, eax
je .Lt_00CA
jmp .Lt_00C3
.Lt_00CA:
.Lt_00C9:
mov dword ptr [ebp-8], 45
jmp .Lt_00C5
.Lt_00CB:
mov eax, dword ptr [_PARSER+148]
and eax, 512
test eax, eax
je .Lt_00CD
jmp .Lt_00C3
.Lt_00CD:
.Lt_00CC:
mov dword ptr [ebp-8], 46
jmp .Lt_00C5
.Lt_00CE:
mov dword ptr [ebp-8], 47
jmp .Lt_00C5
.Lt_00CF:
mov dword ptr [ebp-8], 48
jmp .Lt_00C5
.Lt_00D0:
mov dword ptr [ebp-8], 50
jmp .Lt_00C5
.Lt_00D1:
mov dword ptr [ebp-8], 49
jmp .Lt_00C5
.Lt_00D2:
jmp .Lt_00C3
jmp .Lt_00C5
.Lt_00C6:
mov eax, dword ptr [ebp-20]
add eax, 4294966997
cmp eax, 5
ja .Lt_00D2
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_00D3+eax*4-1196]
_.LT_00D3:
.int .Lt_00C8
.int .Lt_00CB
.int .Lt_00CE
.int .Lt_00CF
.int .Lt_00D0
.int .Lt_00D1
.Lt_00C5:
push 0
call _LEXSKIPTOKEN
add esp, 4
call _CISEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00D5
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
jmp .Lt_00C3
.Lt_00D5:
.Lt_00D4:
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00D7
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_00D7:
.Lt_00D6:
.Lt_00C4:
jmp .Lt_00C2
.Lt_00C3:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_00BF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CISEXPRESSION
_CISEXPRESSION:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D9:
call _CCATEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00DC
mov dword ptr [ebp-4], 0
jmp .Lt_00DA
.Lt_00DC:
.Lt_00DB:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 272
je .Lt_00DE
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00DA
.Lt_00DE:
.Lt_00DD:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .Lt_00E0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .Lt_00E2
push 0
push 0
push 297
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00E2:
.Lt_00E1:
jmp .Lt_00DF
.Lt_00E0:
push 0
push 0
push 299
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00DF:
push 2048
call _LEXSKIPTOKEN
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
call _CSYMBOLTYPE
add esp, 20
test eax, eax
jne .Lt_00E6
mov dword ptr [ebp-4], 0
jmp .Lt_00DA
.Lt_00E6:
.Lt_00E5:
mov eax, dword ptr [ebp-12]
and eax, 511
cmp eax, 20
jne .Lt_00E8
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .Lt_00EA
push 0
push 0
push 297
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00DA
jmp .Lt_00E9
.Lt_00EA:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
push dword ptr [ebp-16]
call _SYMBGETUDTBASELEVEL
add esp, 8
test eax, eax
jne .Lt_00EB
push 0
push 0
push 298
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00DA
.Lt_00EB:
.Lt_00E9:
jmp .Lt_00E7
.Lt_00E8:
push 0
push 0
push 299
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00DA
.Lt_00E7:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+136]
push dword ptr [ebx+148]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-32], eax
push 1
push 0
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push 51
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00ED
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00ED:
.Lt_00EC:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCATEXPRESSION
_CCATEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00EE:
call _CADDEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00F1
mov dword ptr [ebp-4], 0
jmp .Lt_00EF
.Lt_00F1:
.Lt_00F0:
.Lt_00F2:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 38
je .Lt_00F6
jmp .Lt_00F3
.Lt_00F6:
.Lt_00F5:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_00F8
jmp .Lt_00F3
.Lt_00F8:
.Lt_00F7:
push 0
call _LEXSKIPTOKEN
add esp, 4
call _CADDEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00FA
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
jmp .Lt_00F3
.Lt_00FA:
.Lt_00F9:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 44
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00FC
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
call _ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_00FC:
.Lt_00FB:
.Lt_00F4:
jmp .Lt_00F2
.Lt_00F3:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_00EF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CADDEXPRESSION
_CADDEXPRESSION:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_00FD:
call _CSHIFTEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0100
mov dword ptr [ebp-4], 0
jmp .Lt_00FE
.Lt_0100:
.Lt_00FF:
.Lt_0101:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 43
jne .Lt_0106
.Lt_0107:
mov dword ptr [ebp-8], 28
jmp .Lt_0104
.Lt_0106:
cmp dword ptr [ebp-20], 45
jne .Lt_0108
.Lt_0109:
mov dword ptr [ebp-8], 29
jmp .Lt_0104
.Lt_0108:
jmp .Lt_0102
.Lt_010A:
.Lt_0104:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_010C
jmp .Lt_0102
.Lt_010C:
.Lt_010B:
push 0
call _LEXSKIPTOKEN
add esp, 4
call _CSHIFTEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_010E
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
jmp .Lt_0102
.Lt_010E:
.Lt_010D:
push 7
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0110
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_0110:
.Lt_010F:
.Lt_0103:
jmp .Lt_0101
.Lt_0102:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_00FE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSHIFTEXPRESSION
_CSHIFTEXPRESSION:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_0111:
call _CMODEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0114
mov dword ptr [ebp-4], 0
jmp .Lt_0112
.Lt_0114:
.Lt_0113:
.Lt_0115:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 297
jne .Lt_011A
.Lt_011B:
mov dword ptr [ebp-8], 41
jmp .Lt_0118
.Lt_011A:
cmp dword ptr [ebp-20], 298
jne .Lt_011C
.Lt_011D:
mov dword ptr [ebp-8], 42
jmp .Lt_0118
.Lt_011C:
jmp .Lt_0116
.Lt_011E:
.Lt_0118:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_0120
jmp .Lt_0116
.Lt_0120:
.Lt_011F:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CMODEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0122
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
jmp .Lt_0116
.Lt_0122:
.Lt_0121:
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0124
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_0124:
.Lt_0123:
.Lt_0117:
jmp .Lt_0115
.Lt_0116:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_0112:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CMODEXPRESSION
_CMODEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0125:
call _CINTDIVEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0128
mov dword ptr [ebp-4], 0
jmp .Lt_0126
.Lt_0128:
.Lt_0127:
.Lt_0129:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 296
je .Lt_012D
jmp .Lt_012A
.Lt_012D:
.Lt_012C:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_012F
jmp .Lt_012A
.Lt_012F:
.Lt_012E:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CINTDIVEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0131
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
jmp .Lt_012A
.Lt_0131:
.Lt_0130:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 33
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0133
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0133:
.Lt_0132:
.Lt_012B:
jmp .Lt_0129
.Lt_012A:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0126:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CINTDIVEXPRESSION
_CINTDIVEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0134:
call _CMULTEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0137
mov dword ptr [ebp-4], 0
jmp .Lt_0135
.Lt_0137:
.Lt_0136:
.Lt_0138:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 92
je .Lt_013C
jmp .Lt_0139
.Lt_013C:
.Lt_013B:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_013E
jmp .Lt_0139
.Lt_013E:
.Lt_013D:
push 0
call _LEXSKIPTOKEN
add esp, 4
call _CMULTEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0140
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
jmp .Lt_0139
.Lt_0140:
.Lt_013F:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 32
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0142
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0142:
.Lt_0141:
.Lt_013A:
jmp .Lt_0138
.Lt_0139:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0135:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CMULTEXPRESSION
_CMULTEXPRESSION:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_0143:
call _CEXPEXPRESSION
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0146
mov dword ptr [ebp-4], 0
jmp .Lt_0144
.Lt_0146:
.Lt_0145:
.Lt_0147:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 42
jne .Lt_014C
.Lt_014D:
mov dword ptr [ebp-8], 30
jmp .Lt_014A
.Lt_014C:
cmp dword ptr [ebp-20], 47
jne .Lt_014E
.Lt_014F:
mov dword ptr [ebp-8], 31
jmp .Lt_014A
.Lt_014E:
jmp .Lt_0148
.Lt_0150:
.Lt_014A:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_0152
jmp .Lt_0148
.Lt_0152:
.Lt_0151:
push 0
call _LEXSKIPTOKEN
add esp, 4
call _CEXPEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0154
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
jmp .Lt_0148
.Lt_0154:
.Lt_0153:
push 1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0156
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_0156:
.Lt_0155:
.Lt_0149:
jmp .Lt_0147
.Lt_0148:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_0144:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CEXPEXPRESSION
_CEXPEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0157:
call _CNEGNOTEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_015A
mov dword ptr [ebp-4], 0
jmp .Lt_0158
.Lt_015A:
.Lt_0159:
.Lt_015B:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 94
je .Lt_015F
jmp .Lt_015C
.Lt_015F:
.Lt_015E:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
je .Lt_0161
jmp .Lt_015C
.Lt_0161:
.Lt_0160:
push 0
call _LEXSKIPTOKEN
add esp, 4
call _CNEGNOTEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0163
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
jmp .Lt_015C
.Lt_0163:
.Lt_0162:
push 1
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push 43
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0165
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
push 16
push dword ptr [_Lt_0166+4]
push dword ptr [_Lt_0166]
call _ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-12], eax
.Lt_0165:
.Lt_0164:
.Lt_015D:
jmp .Lt_015B
.Lt_015C:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0158:
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

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 8
_Lt_0166:	.quad	0x0000000000000000
