	.intel_syntax noprefix

.section .text
.balign 16

.globl _PARSERCOMPOUNDSTMTSETCTX@0
_PARSERCOMPOUNDSTMTSETCTX@0:
.Lt_0069:
mov dword ptr [_PARSER+32], 0
mov dword ptr [_PARSER+36], 0
mov dword ptr [_PARSER+40], 0
mov dword ptr [_PARSER+44], 0
mov dword ptr [_PARSER+48], 0
mov dword ptr [_PARSER+52], 0
.Lt_006A:
ret
.balign 16

.globl _PARSERCOMPOUNDSTMTINIT@0
_PARSERCOMPOUNDSTMTINIT@0:
.Lt_006B:
call _PARSERSELECTSTMTINIT@0
call _PARSERSELCONSTSTMTINIT@0
.Lt_006C:
ret
.balign 16

.globl _PARSERCOMPOUNDSTMTEND@0
_PARSERCOMPOUNDSTMTEND@0:
.Lt_006D:
call _PARSERSELCONSTSTMTEND@0
call _PARSERSELECTSTMTEND@0
.Lt_006E:
ret
.balign 16

.globl _CCOMPOUNDSTMT@0
_CCOMPOUNDSTMT@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_006F:
cmp dword ptr [_ENV+136], 3
jne .Lt_0072
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], -2147483648
je .Lt_0074
mov dword ptr [ebp-4], 0
jmp .Lt_0070
.Lt_0074:
.Lt_0073:
.Lt_0072:
.Lt_0071:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
jmp .Lt_0076
.Lt_0078:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_007A
push 0
push 266
push 266
call _HSKIPCOMPOUND@12
jmp .Lt_0070
.Lt_007A:
.Lt_0079:
call _CIFSTMTBEGIN@0
jmp .Lt_0075
.Lt_007B:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_007D
push 0
push 283
push 281
call _HSKIPCOMPOUND@12
jmp .Lt_0070
.Lt_007D:
.Lt_007C:
call _CFORSTMTBEGIN@0
jmp .Lt_0075
.Lt_007E:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_0080
push 0
push 279
push 278
call _HSKIPCOMPOUND@12
jmp .Lt_0070
.Lt_0080:
.Lt_007F:
call _CDOSTMTBEGIN@0
jmp .Lt_0075
.Lt_0081:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_0083
push 0
push 275
push 273
call _HSKIPCOMPOUND@12
jmp .Lt_0070
.Lt_0083:
.Lt_0082:
call _CWHILESTMTBEGIN@0
jmp .Lt_0075
.Lt_0084:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_0086
push 0
push 270
push 270
call _HSKIPCOMPOUND@12
jmp .Lt_0070
.Lt_0086:
.Lt_0085:
call _CSELECTSTMTBEGIN@0
jmp .Lt_0075
.Lt_0087:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_0089
push 0
push 280
push 280
call _HSKIPCOMPOUND@12
jmp .Lt_0070
.Lt_0089:
.Lt_0088:
call _CWITHSTMTBEGIN@0
jmp .Lt_0075
.Lt_008A:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_008C
push 0
push 285
push 285
call _HSKIPCOMPOUND@12
jmp .Lt_0070
.Lt_008C:
.Lt_008B:
call _CSCOPESTMTBEGIN@0
jmp .Lt_0075
.Lt_008D:
call _CNAMESPACESTMTBEGIN@0
jmp .Lt_0075
.Lt_008E:
call _CEXTERNSTMTBEGIN@0
jmp .Lt_0075
.Lt_008F:
call _CIFSTMTNEXT@0
jmp .Lt_0075
.Lt_0090:
call _CSELECTSTMTNEXT@0
jmp .Lt_0075
.Lt_0091:
call _CDOSTMTEND@0
jmp .Lt_0075
.Lt_0092:
call _CFORSTMTEND@0
jmp .Lt_0075
.Lt_0093:
call _CWHILESTMTEND@0
jmp .Lt_0075
.Lt_0094:
call _CEXITSTATEMENT@0
jmp .Lt_0075
.Lt_0095:
call _CCONTINUESTATEMENT@0
jmp .Lt_0075
.Lt_0096:
push 0
push 1
call _LEXGETLOOKAHEADCLASS@8
cmp eax, 1
je .Lt_0098
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_009A
push 0
push -1
push -1
call _HSKIPCOMPOUND@12
jmp .Lt_0070
.Lt_009A:
.Lt_0099:
call _CENDSTATEMENT@0
jmp .Lt_0097
.Lt_0098:
call _CCOMPOUNDEND@0
.Lt_0097:
jmp .Lt_0075
.Lt_009B:
call _CIFSTMTEND@0
jmp .Lt_0075
.Lt_009C:
call _CUSINGSTMT@0
jmp .Lt_0075
.Lt_009D:
mov dword ptr [ebp-4], 0
jmp .Lt_0070
jmp .Lt_0075
.Lt_0076:
mov eax, dword ptr [ebp-8]
add eax, 4294967030
cmp eax, 74
ja .Lt_009D
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_009E+eax*4-1064]
_.LT_009E:
.int .Lt_0078
.int .Lt_009D
.int .Lt_008F
.int .Lt_008F
.int .Lt_0084
.int .Lt_0090
.int .Lt_009D
.int .Lt_0081
.int .Lt_009D
.int .Lt_0093
.int .Lt_0095
.int .Lt_0094
.int .Lt_007E
.int .Lt_0091
.int .Lt_0087
.int .Lt_007B
.int .Lt_009D
.int .Lt_0092
.int .Lt_009D
.int .Lt_008A
.int .Lt_008D
.int .Lt_009C
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_008E
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009B
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_009D
.int .Lt_0096
.Lt_0075:
mov dword ptr [ebp-4], -1
.Lt_0070:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CENDSTATEMENT@0
_CENDSTATEMENT@0:
push ebp
mov ebp, esp
sub esp, 8
.Lt_009F:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
jmp .Lt_00A2
.Lt_00A4:
mov dword ptr [ebp-4], 0
jmp .Lt_00A1
.Lt_00A5:
call _CEXPRESSION@0
mov dword ptr [ebp-4], eax
jmp .Lt_00A1
.Lt_00A2:
mov eax, dword ptr [ebp-8]
add eax, 4294967040
cmp eax, 84
ja .Lt_00A5
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_00A6+eax*4-1024]
_.LT_00A6:
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A4
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A4
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A4
.Lt_00A1:
push dword ptr [ebp-4]
call _RTLEXITAPP@4
.Lt_00A0:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CEXITSTATEMENT@0
_CEXITSTATEMENT@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_00AD:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_00B0
.Lt_00B2:
cmp dword ptr [_PARSER+32], 0
jne .Lt_00B4
push 0
push 0
push 239
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_00B4:
.Lt_00B3:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_PARSER+32]
mov dword ptr [ebp-16], eax
.Lt_00B5:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .Lt_00B6
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 281
je .Lt_00B8
push 0
push 0
push 243
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_00B8:
.Lt_00B7:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+136]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .Lt_00BA
push 0
push 0
push 247
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_00BA:
.Lt_00B9:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_00B5
.Lt_00B6:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+132]
mov dword ptr [ebp-4], eax
jmp .Lt_00AF
.Lt_00BB:
cmp dword ptr [_PARSER+36], 0
jne .Lt_00BD
push 0
push 0
push 240
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_00BD:
.Lt_00BC:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_PARSER+36]
mov dword ptr [ebp-16], eax
.Lt_00BE:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .Lt_00BF
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 278
je .Lt_00C1
push 0
push 0
push 244
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_00C1:
.Lt_00C0:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .Lt_00C3
push 0
push 0
push 248
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_00C3:
.Lt_00C2:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_00BE
.Lt_00BF:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-4], eax
jmp .Lt_00AF
.Lt_00C4:
cmp dword ptr [_PARSER+40], 0
jne .Lt_00C6
push 0
push 0
push 241
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_00C6:
.Lt_00C5:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_PARSER+40]
mov dword ptr [ebp-16], eax
.Lt_00C7:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .Lt_00C8
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 273
je .Lt_00CA
push 0
push 0
push 245
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_00CA:
.Lt_00C9:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .Lt_00CC
push 0
push 0
push 249
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_00CC:
.Lt_00CB:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_00C7
.Lt_00C8:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
jmp .Lt_00AF
.Lt_00CD:
cmp dword ptr [_PARSER+44], 0
jne .Lt_00CF
push 0
push 0
push 242
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_00CF:
.Lt_00CE:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_PARSER+44]
mov dword ptr [ebp-16], eax
.Lt_00D0:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .Lt_00D1
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 270
je .Lt_00D3
push 0
push 0
push 246
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_00D3:
.Lt_00D2:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .Lt_00D5
push 0
push 0
push 250
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_00D5:
.Lt_00D4:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_00D0
.Lt_00D1:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-4], eax
jmp .Lt_00AF
.Lt_00D6:
cmp dword ptr [_PARSER+48], 0
je .Lt_00D8
mov eax, dword ptr [_PARSER+48]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
.Lt_00D8:
.Lt_00D7:
cmp dword ptr [ebp-4], 0
jne .Lt_00DA
mov dword ptr [ebp-20], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-24], ebx
jmp .Lt_00DC
.Lt_00DE:
mov dword ptr [ebp-20], 253
jmp .Lt_00DB
.Lt_00DF:
mov dword ptr [ebp-20], 193
jmp .Lt_00DB
.Lt_00E0:
mov dword ptr [ebp-20], 144
jmp .Lt_00DB
.Lt_00E1:
mov dword ptr [ebp-20], 165
jmp .Lt_00DB
.Lt_00E2:
mov dword ptr [ebp-20], 166
jmp .Lt_00DB
.Lt_00E3:
mov dword ptr [ebp-20], 254
jmp .Lt_00DB
.Lt_00DC:
mov ebx, dword ptr [ebp-24]
add ebx, 4294966951
cmp ebx, 5
ja .Lt_00E3
mov ebx, dword ptr [ebp-24]
jmp dword ptr [_.LT_00E4+ebx*4-1380]
_.LT_00E4:
.int .Lt_00DE
.int .Lt_00E3
.int .Lt_00E1
.int .Lt_00E2
.int .Lt_00E0
.int .Lt_00DF
.Lt_00DB:
push 0
push 0
push dword ptr [ebp-20]
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_00DA:
.Lt_00D9:
mov dword ptr [ebp-16], 0
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-20], eax
jmp .Lt_00E6
.Lt_00E8:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
jne .Lt_00EA
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+8]
and eax, 60
test eax, eax
je .Lt_00EC
mov dword ptr [ebp-16], 253
.Lt_00EC:
.Lt_00EB:
jmp .Lt_00E9
.Lt_00EA:
mov dword ptr [ebp-16], 253
.Lt_00E9:
jmp .Lt_00E5
.Lt_00ED:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_00EF
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+8]
and eax, 60
test eax, eax
je .Lt_00F1
mov dword ptr [ebp-16], 254
jmp .Lt_00F0
.Lt_00F1:
call _HCHECKFORCTORRESULT@0
mov dword ptr [ebp-16], eax
.Lt_00F0:
jmp .Lt_00EE
.Lt_00EF:
mov dword ptr [ebp-16], 254
.Lt_00EE:
jmp .Lt_00E5
.Lt_00F2:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_00F4
call _HCHECKFORCTORRESULT@0
mov dword ptr [ebp-16], eax
jmp .Lt_00F3
.Lt_00F4:
mov dword ptr [ebp-16], 193
.Lt_00F3:
jmp .Lt_00E5
.Lt_00F5:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .Lt_00F7
call _HCHECKFORCTORRESULT@0
mov dword ptr [ebp-16], eax
jmp .Lt_00F6
.Lt_00F7:
mov dword ptr [ebp-16], 144
.Lt_00F6:
jmp .Lt_00E5
.Lt_00F8:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
jne .Lt_00FA
mov dword ptr [ebp-16], 165
.Lt_00FA:
.Lt_00F9:
jmp .Lt_00E5
.Lt_00FB:
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+8]
and eax, 8
test eax, eax
jne .Lt_00FD
mov dword ptr [ebp-16], 166
.Lt_00FD:
.Lt_00FC:
jmp .Lt_00E5
.Lt_00E6:
mov eax, dword ptr [ebp-20]
add eax, 4294966951
cmp eax, 5
ja .Lt_00E5
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_00FE+eax*4-1380]
_.LT_00FE:
.int .Lt_00E8
.int .Lt_00ED
.int .Lt_00F8
.int .Lt_00FB
.int .Lt_00F5
.int .Lt_00F2
.Lt_00E5:
cmp dword ptr [ebp-16], 0
je .Lt_0100
push 0
push 0
push dword ptr [ebp-16]
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
.Lt_0100:
.Lt_00FF:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_00AF
.Lt_0101:
push 0
push 0
push 251
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AE
jmp .Lt_00AF
.Lt_00B0:
mov eax, dword ptr [ebp-12]
add eax, 4294967026
cmp eax, 80
ja .Lt_0101
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_0102+eax*4-1080]
_.LT_0102:
.int .Lt_00CD
.int .Lt_0101
.int .Lt_0101
.int .Lt_00C4
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_00BB
.int .Lt_0101
.int .Lt_0101
.int .Lt_00B2
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.int .Lt_00D6
.Lt_00AF:
push dword ptr [ebp-4]
call _ASTSCOPEBREAK@4
.Lt_00AE:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCONTINUESTATEMENT@0
_CCONTINUESTATEMENT@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0103:
mov dword ptr [ebp-4], 0
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
jmp .Lt_0106
.Lt_0108:
cmp dword ptr [_PARSER+32], 0
jne .Lt_010A
push 0
push 0
push 239
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0104
.Lt_010A:
.Lt_0109:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_PARSER+32]
mov dword ptr [ebp-12], eax
.Lt_010B:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .Lt_010C
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 281
je .Lt_010E
push 0
push 0
push 243
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0104
.Lt_010E:
.Lt_010D:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+136]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .Lt_0110
push 0
push 0
push 247
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0104
.Lt_0110:
.Lt_010F:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_010B
.Lt_010C:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+128]
mov dword ptr [ebp-4], eax
jmp .Lt_0105
.Lt_0111:
cmp dword ptr [_PARSER+36], 0
jne .Lt_0113
push 0
push 0
push 240
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0104
.Lt_0113:
.Lt_0112:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_PARSER+36]
mov dword ptr [ebp-12], eax
.Lt_0114:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .Lt_0115
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 278
je .Lt_0117
push 0
push 0
push 244
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0104
.Lt_0117:
.Lt_0116:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .Lt_0119
push 0
push 0
push 248
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0104
.Lt_0119:
.Lt_0118:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_0114
.Lt_0115:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-4], eax
jmp .Lt_0105
.Lt_011A:
cmp dword ptr [_PARSER+40], 0
jne .Lt_011C
push 0
push 0
push 241
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0104
.Lt_011C:
.Lt_011B:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_PARSER+40]
mov dword ptr [ebp-12], eax
.Lt_011D:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
jne .Lt_011E
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 273
je .Lt_0120
push 0
push 0
push 245
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0104
.Lt_0120:
.Lt_011F:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .Lt_0122
push 0
push 0
push 249
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0104
.Lt_0122:
.Lt_0121:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_011D
.Lt_011E:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-4], eax
jmp .Lt_0105
.Lt_0123:
push 0
push 0
push 252
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0104
jmp .Lt_0105
.Lt_0106:
mov eax, dword ptr [ebp-8]
add eax, 4294967023
cmp eax, 8
ja .Lt_0123
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0124+eax*4-1092]
_.LT_0124:
.int .Lt_011A
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0123
.int .Lt_0111
.int .Lt_0123
.int .Lt_0123
.int .Lt_0108
.Lt_0105:
push dword ptr [ebp-4]
call _ASTSCOPEBREAK@4
.Lt_0104:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCOMPSTMTCHECK@0
_CCOMPSTMTCHECK@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0134:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
lea eax, [_PARSER]
push eax
call _STACKGETTOS@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0137
mov dword ptr [ebp-4], -1
jmp .Lt_0135
.Lt_0137:
.Lt_0136:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .Lt_0139
.Lt_013B:
mov dword ptr [ebp-8], 32
jmp .Lt_0138
.Lt_013C:
mov dword ptr [ebp-8], 35
jmp .Lt_0138
.Lt_013D:
mov dword ptr [ebp-8], 95
jmp .Lt_0138
.Lt_013E:
mov dword ptr [ebp-8], 60
jmp .Lt_0138
.Lt_013F:
mov dword ptr [ebp-8], 121
jmp .Lt_0138
.Lt_0140:
mov dword ptr [ebp-8], 124
jmp .Lt_0138
.Lt_0141:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-20], eax
jmp .Lt_0143
.Lt_0145:
mov dword ptr [ebp-8], 125
jmp .Lt_0142
.Lt_0146:
mov dword ptr [ebp-8], 126
jmp .Lt_0142
.Lt_0147:
mov dword ptr [ebp-8], 127
jmp .Lt_0142
.Lt_0148:
mov dword ptr [ebp-8], 128
jmp .Lt_0142
.Lt_0149:
mov dword ptr [ebp-8], 129
jmp .Lt_0142
.Lt_014A:
mov dword ptr [ebp-8], 130
jmp .Lt_0142
.Lt_0143:
mov eax, dword ptr [ebp-20]
add eax, 4294966951
cmp eax, 5
ja .Lt_0142
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_014B+eax*4-1380]
_.LT_014B:
.int .Lt_0145
.int .Lt_0146
.int .Lt_0147
.int .Lt_0148
.int .Lt_0149
.int .Lt_014A
.Lt_0142:
jmp .Lt_0138
.Lt_014C:
mov dword ptr [ebp-8], 29
jmp .Lt_0138
.Lt_014D:
mov dword ptr [ebp-8], 30
jmp .Lt_0138
.Lt_014E:
mov dword ptr [ebp-8], 13
jmp .Lt_0138
.Lt_0139:
mov eax, dword ptr [ebp-16]
add eax, 4294967030
cmp eax, 80
ja .Lt_0138
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_014F+eax*4-1064]
_.LT_014F:
.int .Lt_013B
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_013C
.int .Lt_0138
.int .Lt_0138
.int .Lt_014D
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_014C
.int .Lt_0138
.int .Lt_013E
.int .Lt_014E
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_013D
.int .Lt_013F
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0140
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0138
.int .Lt_0141
.Lt_0138:
push 0
push 0
push dword ptr [ebp-8]
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
.Lt_0135:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCOMPSTMTPUSH@8
_CCOMPSTMTPUSH@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0150:
lea eax, [_PARSER]
push eax
call _STACKPUSH@4
mov dword ptr [_Lt_015C], eax
mov eax, dword ptr [_Lt_015C]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [_Lt_015C]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [_Lt_015C]
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_0153
.Lt_0155:
mov eax, dword ptr [_Lt_015C]
mov ebx, dword ptr [_PARSER+36]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [_Lt_015C]
mov dword ptr [_PARSER+36], ebx
jmp .Lt_0152
.Lt_0156:
mov ebx, dword ptr [_Lt_015C]
mov eax, dword ptr [_PARSER+32]
mov dword ptr [ebx+136], eax
mov eax, dword ptr [_Lt_015C]
mov dword ptr [_PARSER+32], eax
jmp .Lt_0152
.Lt_0157:
mov eax, dword ptr [_Lt_015C]
mov ebx, dword ptr [_PARSER+44]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [_Lt_015C]
mov dword ptr [_PARSER+44], ebx
jmp .Lt_0152
.Lt_0158:
mov ebx, dword ptr [_Lt_015C]
mov eax, dword ptr [_PARSER+40]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [_Lt_015C]
mov dword ptr [_PARSER+40], eax
jmp .Lt_0152
.Lt_0159:
mov eax, dword ptr [_Lt_015C]
mov ebx, dword ptr [_PARSER+48]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [_Lt_015C]
mov dword ptr [_PARSER+48], ebx
jmp .Lt_0152
.Lt_015A:
mov ebx, dword ptr [_Lt_015C]
mov eax, dword ptr [_PARSER+52]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [_Lt_015C]
mov dword ptr [_PARSER+52], eax
jmp .Lt_0152
.Lt_0153:
mov eax, dword ptr [ebp-8]
add eax, 4294967026
cmp eax, 76
ja .Lt_0152
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_015B+eax*4-1080]
_.LT_015B:
.int .Lt_0157
.int .Lt_0152
.int .Lt_0152
.int .Lt_0158
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0155
.int .Lt_0152
.int .Lt_015A
.int .Lt_0156
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0152
.int .Lt_0159
.Lt_0152:
mov eax, dword ptr [ebp+8]
mov dword ptr [_PARSER+24], eax
mov eax, dword ptr [_Lt_015C]
mov dword ptr [ebp-4], eax
.Lt_0151:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_015C,4

.section .text
.balign 16

.globl _CCOMPSTMTGETTOS@8
_CCOMPSTMTGETTOS@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_015D:
lea eax, [_PARSER]
push eax
call _STACKGETTOS@4
mov dword ptr [_Lt_0175], eax
cmp dword ptr [_Lt_0175], 0
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_Lt_0177], eax
cmp dword ptr [_Lt_0177], 0
jne .Lt_0160
mov eax, dword ptr [_Lt_0175]
mov ebx, dword ptr [ebp+8]
cmp ebx, dword ptr [eax]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [_Lt_0177], ebx
.Lt_0160:
.Lt_015F:
cmp dword ptr [_Lt_0177], 0
je .Lt_0162
cmp dword ptr [ebp+12], 0
je .Lt_0164
cmp dword ptr [_Lt_0175], 0
je .Lt_0166
call _CCOMPSTMTCHECK@0
jmp .Lt_0165
.Lt_0166:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .Lt_0168
.Lt_016A:
mov dword ptr [_Lt_0179], 106
jmp .Lt_0167
.Lt_016B:
mov dword ptr [_Lt_0179], 115
jmp .Lt_0167
.Lt_016C:
mov dword ptr [_Lt_0179], 107
jmp .Lt_0167
.Lt_016D:
mov dword ptr [_Lt_0179], 110
jmp .Lt_0167
.Lt_016E:
mov dword ptr [_Lt_0179], 113
jmp .Lt_0167
.Lt_016F:
mov dword ptr [_Lt_0179], 111
jmp .Lt_0167
.Lt_0170:
mov dword ptr [_Lt_0179], 108
jmp .Lt_0167
.Lt_0171:
mov dword ptr [_Lt_0179], 109
jmp .Lt_0167
.Lt_0172:
mov dword ptr [_Lt_0179], 112
jmp .Lt_0167
.Lt_0173:
mov dword ptr [_Lt_0179], 114
jmp .Lt_0167
.Lt_0168:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967030
cmp ebx, 80
ja .Lt_0167
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.LT_0174+ebx*4-1064]
_.LT_0174:
.int .Lt_016D
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_016F
.int .Lt_0167
.int .Lt_0167
.int .Lt_0170
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_016A
.int .Lt_0167
.int .Lt_0171
.int .Lt_016C
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_016E
.int .Lt_0173
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_016B
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0167
.int .Lt_0172
.Lt_0167:
push 0
push 0
push dword ptr [_Lt_0179]
call _ERRREPORT@12
.Lt_0165:
.Lt_0164:
.Lt_0163:
mov dword ptr [ebp-4], 0
jmp .Lt_0161
.Lt_0162:
mov ebx, dword ptr [_Lt_0175]
mov dword ptr [ebp-4], ebx
.Lt_0161:
.Lt_015E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0175,4
.balign 4
	.lcomm	_Lt_0177,4
.balign 4
	.lcomm	_Lt_0179,4

.section .text
.balign 16

.globl _CCOMPSTMTPOP@4
_CCOMPSTMTPOP@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_017A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .Lt_017D
.Lt_017F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov dword ptr [_PARSER+36], eax
jmp .Lt_017C
.Lt_0180:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov dword ptr [_PARSER+32], ebx
jmp .Lt_017C
.Lt_0181:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [_PARSER+44], eax
jmp .Lt_017C
.Lt_0182:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [_PARSER+40], ebx
jmp .Lt_017C
.Lt_0183:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
mov dword ptr [_PARSER+48], eax
jmp .Lt_017C
.Lt_0184:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [_PARSER+52], ebx
jmp .Lt_017C
.Lt_017D:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967026
cmp ebx, 76
ja .Lt_017C
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.LT_0185+ebx*4-1080]
_.LT_0185:
.int .Lt_0181
.int .Lt_017C
.int .Lt_017C
.int .Lt_0182
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017F
.int .Lt_017C
.int .Lt_0184
.int .Lt_0180
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_017C
.int .Lt_0183
.Lt_017C:
lea ebx, [_PARSER]
push ebx
call _STACKPOP@4
lea ebx, [_PARSER]
push ebx
call _STACKGETTOS@4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .Lt_0187
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [_PARSER+24], ebx
jmp .Lt_0186
.Lt_0187:
mov dword ptr [_PARSER+24], 0
.Lt_0186:
.Lt_017B:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CCOMPSTMTISALLOWED@4
_CCOMPSTMTISALLOWED@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0188:
lea eax, [_PARSER]
push eax
call _STACKGETTOS@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_018B
mov dword ptr [ebp-4], -1
jmp .Lt_0189
.Lt_018B:
.Lt_018A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
and ebx, dword ptr [eax+4]
je .Lt_018D
mov dword ptr [ebp-4], -1
jmp .Lt_0189
.Lt_018D:
.Lt_018C:
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
je .Lt_018F
mov dword ptr [ebp-12], 61
jmp .Lt_018E
.Lt_018F:
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98536], eax
jne .Lt_0191
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 270
jne .Lt_0193
mov dword ptr [ebp-12], 62
jmp .Lt_0192
.Lt_0193:
mov dword ptr [ebp-12], 96
.Lt_0192:
jmp .Lt_0190
.Lt_0191:
mov dword ptr [ebp-12], 122
.Lt_0190:
.Lt_018E:
push 0
push 0
push dword ptr [ebp-12]
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
.Lt_0189:
mov eax, dword ptr [ebp-4]
pop ebx
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
_HCHECKFORCTORRESULT@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A7:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+48]
and eax, 1
test eax, eax
je .Lt_00AA
push dword ptr [_PARSER+104]
call _SYMBHASCTOR@4
mov ebx, dword ptr [_PARSER+104]
mov ecx, dword ptr [ebx+8]
and ecx, 2048
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_00AC
mov dword ptr [ebp-4], 180
jmp .Lt_00A8
.Lt_00AC:
.Lt_00AB:
.Lt_00AA:
.Lt_00A9:
mov ecx, dword ptr [_PARSER+104]
mov eax, dword ptr [ecx+112]
or dword ptr [eax+48], 2
mov dword ptr [ebp-4], 0
.Lt_00A8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_CCOMPOUNDEND@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0125:
push 0
push 1
call _LEXGETLOOKAHEAD@8
mov dword ptr [ebp-4], eax
jmp .Lt_0128
.Lt_012A:
call _CIFSTMTEND@0
jmp .Lt_0127
.Lt_012B:
call _CSELECTSTMTEND@0
jmp .Lt_0127
.Lt_012C:
call _CPROCSTMTEND@0
jmp .Lt_0127
.Lt_012D:
call _CSCOPESTMTEND@0
jmp .Lt_0127
.Lt_012E:
call _CWITHSTMTEND@0
jmp .Lt_0127
.Lt_012F:
call _CNAMESPACESTMTEND@0
jmp .Lt_0127
.Lt_0130:
call _CEXTERNSTMTEND@0
jmp .Lt_0127
.Lt_0131:
call _CENDSTATEMENT@0
jmp .Lt_0127
.Lt_0132:
push 0
push 0
push 33
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0127
.Lt_0128:
mov eax, dword ptr [ebp-4]
add eax, 4294967030
cmp eax, 84
ja .Lt_0132
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_0133+eax*4-1064]
_.LT_0133:
.int .Lt_012A
.int .Lt_0132
.int .Lt_0131
.int .Lt_0132
.int .Lt_012B
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_012E
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_012D
.int .Lt_012F
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0130
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0131
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0131
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_0132
.int .Lt_012C
.int .Lt_012C
.int .Lt_012C
.int .Lt_012C
.int .Lt_012C
.int .Lt_012C
.Lt_0127:
.Lt_0126:
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
