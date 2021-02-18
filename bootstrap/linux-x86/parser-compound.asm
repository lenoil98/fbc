	.intel_syntax noprefix

.section .text
.balign 16

.globl PARSERCOMPOUNDSTMTSETCTX
PARSERCOMPOUNDSTMTSETCTX:
.type PARSERCOMPOUNDSTMTSETCTX, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0068:
mov dword ptr [PARSER+32], 0
mov dword ptr [PARSER+36], 0
mov dword ptr [PARSER+40], 0
mov dword ptr [PARSER+44], 0
mov dword ptr [PARSER+48], 0
mov dword ptr [PARSER+52], 0
.Lt_0069:
mov esp, ebp
pop ebp
ret
.size PARSERCOMPOUNDSTMTSETCTX, .-PARSERCOMPOUNDSTMTSETCTX
.balign 16

.globl PARSERCOMPOUNDSTMTINIT
PARSERCOMPOUNDSTMTINIT:
.type PARSERCOMPOUNDSTMTINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_006A:
call PARSERSELECTSTMTINIT
call PARSERSELCONSTSTMTINIT
.Lt_006B:
mov esp, ebp
pop ebp
ret
.size PARSERCOMPOUNDSTMTINIT, .-PARSERCOMPOUNDSTMTINIT
.balign 16

.globl PARSERCOMPOUNDSTMTEND
PARSERCOMPOUNDSTMTEND:
.type PARSERCOMPOUNDSTMTEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_006C:
call PARSERSELCONSTSTMTEND
call PARSERSELECTSTMTEND
.Lt_006D:
mov esp, ebp
pop ebp
ret
.size PARSERCOMPOUNDSTMTEND, .-PARSERCOMPOUNDSTMTEND
.balign 16

.globl CCOMPOUNDSTMT
CCOMPOUNDSTMT:
.type CCOMPOUNDSTMT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_006E:
cmp dword ptr [ENV+136], 3
jne .Lt_0071
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], -2147483648
je .Lt_0073
mov dword ptr [ebp-4], 0
jmp .Lt_006F
.Lt_0073:
.Lt_0072:
.Lt_0071:
.Lt_0070:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0075
.Lt_0077:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0079
sub esp, 4
push 0
push 266
push 266
call HSKIPCOMPOUND
add esp, 16
jmp .Lt_006F
.Lt_0079:
.Lt_0078:
call CIFSTMTBEGIN
jmp .Lt_0074
.Lt_007A:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_007C
sub esp, 4
push 0
push 283
push 281
call HSKIPCOMPOUND
add esp, 16
jmp .Lt_006F
.Lt_007C:
.Lt_007B:
call CFORSTMTBEGIN
jmp .Lt_0074
.Lt_007D:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_007F
sub esp, 4
push 0
push 279
push 278
call HSKIPCOMPOUND
add esp, 16
jmp .Lt_006F
.Lt_007F:
.Lt_007E:
call CDOSTMTBEGIN
jmp .Lt_0074
.Lt_0080:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0082
sub esp, 4
push 0
push 275
push 273
call HSKIPCOMPOUND
add esp, 16
jmp .Lt_006F
.Lt_0082:
.Lt_0081:
call CWHILESTMTBEGIN
jmp .Lt_0074
.Lt_0083:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0085
sub esp, 4
push 0
push 270
push 270
call HSKIPCOMPOUND
add esp, 16
jmp .Lt_006F
.Lt_0085:
.Lt_0084:
call CSELECTSTMTBEGIN
jmp .Lt_0074
.Lt_0086:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0088
sub esp, 4
push 0
push 280
push 280
call HSKIPCOMPOUND
add esp, 16
jmp .Lt_006F
.Lt_0088:
.Lt_0087:
call CWITHSTMTBEGIN
jmp .Lt_0074
.Lt_0089:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_008B
sub esp, 4
push 0
push 285
push 285
call HSKIPCOMPOUND
add esp, 16
jmp .Lt_006F
.Lt_008B:
.Lt_008A:
call CSCOPESTMTBEGIN
jmp .Lt_0074
.Lt_008C:
call CNAMESPACESTMTBEGIN
jmp .Lt_0074
.Lt_008D:
call CEXTERNSTMTBEGIN
jmp .Lt_0074
.Lt_008E:
call CIFSTMTNEXT
jmp .Lt_0074
.Lt_008F:
call CSELECTSTMTNEXT
jmp .Lt_0074
.Lt_0090:
call CDOSTMTEND
jmp .Lt_0074
.Lt_0091:
call CFORSTMTEND
jmp .Lt_0074
.Lt_0092:
call CWHILESTMTEND
jmp .Lt_0074
.Lt_0093:
call CEXITSTATEMENT
jmp .Lt_0074
.Lt_0094:
call CCONTINUESTATEMENT
jmp .Lt_0074
.Lt_0095:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEADCLASS
add esp, 16
cmp eax, 1
je .Lt_0097
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0099
sub esp, 4
push 0
push -1
push -1
call HSKIPCOMPOUND
add esp, 16
jmp .Lt_006F
.Lt_0099:
.Lt_0098:
call CENDSTATEMENT
jmp .Lt_0096
.Lt_0097:
call CCOMPOUNDEND
.Lt_0096:
jmp .Lt_0074
.Lt_009A:
call CIFSTMTEND
jmp .Lt_0074
.Lt_009B:
call CUSINGSTMT
jmp .Lt_0074
.Lt_009C:
mov dword ptr [ebp-4], 0
jmp .Lt_006F
jmp .Lt_0074
.Lt_0075:
mov eax, dword ptr [ebp-8]
add eax, 4294967030
cmp eax, 74
ja .Lt_009C
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_009D+eax*4-1064]
.LT_009D:
.int .Lt_0077
.int .Lt_009C
.int .Lt_008E
.int .Lt_008E
.int .Lt_0083
.int .Lt_008F
.int .Lt_009C
.int .Lt_0080
.int .Lt_009C
.int .Lt_0092
.int .Lt_0094
.int .Lt_0093
.int .Lt_007D
.int .Lt_0090
.int .Lt_0086
.int .Lt_007A
.int .Lt_009C
.int .Lt_0091
.int .Lt_009C
.int .Lt_0089
.int .Lt_008C
.int .Lt_009B
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_008D
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009A
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_009C
.int .Lt_0095
.Lt_0074:
mov dword ptr [ebp-4], -1
.Lt_006F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CCOMPOUNDSTMT, .-CCOMPOUNDSTMT
.balign 16

.globl CENDSTATEMENT
CENDSTATEMENT:
.type CENDSTATEMENT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_009E:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00A1
.Lt_00A3:
mov dword ptr [ebp-4], 0
jmp .Lt_00A0
.Lt_00A4:
call CEXPRESSION
mov dword ptr [ebp-4], eax
jmp .Lt_00A0
.Lt_00A1:
mov eax, dword ptr [ebp-8]
add eax, 4294967040
cmp eax, 84
ja .Lt_00A4
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_00A5+eax*4-1024]
.LT_00A5:
.int .Lt_00A3
.int .Lt_00A3
.int .Lt_00A3
.int .Lt_00A3
.int .Lt_00A3
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A3
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A3
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A3
.Lt_00A0:
sub esp, 12
push dword ptr [ebp-4]
call RTLEXITAPP
add esp, 16
.Lt_009F:
mov esp, ebp
pop ebp
ret
.size CENDSTATEMENT, .-CENDSTATEMENT
.balign 16

.globl CEXITSTATEMENT
CEXITSTATEMENT:
.type CEXITSTATEMENT, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_00AC:
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_00AF
.Lt_00B1:
cmp dword ptr [PARSER+32], 0
jne .Lt_00B3
sub esp, 4
push 0
push 0
push 239
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
.Lt_00B3:
.Lt_00B2:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [PARSER+32]
mov dword ptr [ebp-16], eax
.Lt_00B4:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
jne .Lt_00B5
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 281
je .Lt_00B7
sub esp, 4
push 0
push 0
push 243
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
.Lt_00B7:
.Lt_00B6:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .Lt_00B9
sub esp, 4
push 0
push 0
push 247
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
.Lt_00B9:
.Lt_00B8:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00B4
.Lt_00B5:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+92]
mov dword ptr [ebp-4], eax
jmp .Lt_00AE
.Lt_00BA:
cmp dword ptr [PARSER+36], 0
jne .Lt_00BC
sub esp, 4
push 0
push 0
push 240
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
.Lt_00BC:
.Lt_00BB:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [PARSER+36]
mov dword ptr [ebp-16], eax
.Lt_00BD:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
jne .Lt_00BE
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 278
je .Lt_00C0
sub esp, 4
push 0
push 0
push 244
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
.Lt_00C0:
.Lt_00BF:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .Lt_00C2
sub esp, 4
push 0
push 0
push 248
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
.Lt_00C2:
.Lt_00C1:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00BD
.Lt_00BE:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-4], eax
jmp .Lt_00AE
.Lt_00C3:
cmp dword ptr [PARSER+40], 0
jne .Lt_00C5
sub esp, 4
push 0
push 0
push 241
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
.Lt_00C5:
.Lt_00C4:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [PARSER+40]
mov dword ptr [ebp-16], eax
.Lt_00C6:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
jne .Lt_00C7
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 273
je .Lt_00C9
sub esp, 4
push 0
push 0
push 245
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
.Lt_00C9:
.Lt_00C8:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .Lt_00CB
sub esp, 4
push 0
push 0
push 249
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
.Lt_00CB:
.Lt_00CA:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00C6
.Lt_00C7:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-4], eax
jmp .Lt_00AE
.Lt_00CC:
cmp dword ptr [PARSER+44], 0
jne .Lt_00CE
sub esp, 4
push 0
push 0
push 242
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
.Lt_00CE:
.Lt_00CD:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [PARSER+44]
mov dword ptr [ebp-16], eax
.Lt_00CF:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
jne .Lt_00D0
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 270
je .Lt_00D2
sub esp, 4
push 0
push 0
push 246
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
.Lt_00D2:
.Lt_00D1:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .Lt_00D4
sub esp, 4
push 0
push 0
push 250
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
.Lt_00D4:
.Lt_00D3:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00CF
.Lt_00D0:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+48]
mov dword ptr [ebp-4], eax
jmp .Lt_00AE
.Lt_00D5:
cmp dword ptr [PARSER+48], 0
je .Lt_00D7
mov eax, dword ptr [PARSER+48]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-4], ebx
.Lt_00D7:
.Lt_00D6:
cmp dword ptr [ebp-4], 0
jne .Lt_00D9
mov dword ptr [ebp-20], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-24], ebx
jmp .Lt_00DB
.Lt_00DD:
mov dword ptr [ebp-20], 253
jmp .Lt_00DA
.Lt_00DE:
mov dword ptr [ebp-20], 193
jmp .Lt_00DA
.Lt_00DF:
mov dword ptr [ebp-20], 144
jmp .Lt_00DA
.Lt_00E0:
mov dword ptr [ebp-20], 165
jmp .Lt_00DA
.Lt_00E1:
mov dword ptr [ebp-20], 166
jmp .Lt_00DA
.Lt_00E2:
mov dword ptr [ebp-20], 254
jmp .Lt_00DA
.Lt_00DB:
mov ebx, dword ptr [ebp-24]
add ebx, 4294966951
cmp ebx, 5
ja .Lt_00E2
mov ebx, dword ptr [ebp-24]
jmp dword ptr [.LT_00E3+ebx*4-1380]
.LT_00E3:
.int .Lt_00DD
.int .Lt_00E2
.int .Lt_00E0
.int .Lt_00E1
.int .Lt_00DF
.int .Lt_00DE
.Lt_00DA:
sub esp, 4
push 0
push 0
push dword ptr [ebp-20]
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
.Lt_00D9:
.Lt_00D8:
mov dword ptr [ebp-16], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-20], eax
jmp .Lt_00E5
.Lt_00E7:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
jne .Lt_00E9
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+8]
and eax, 60
test eax, eax
je .Lt_00EB
mov dword ptr [ebp-16], 253
.Lt_00EB:
.Lt_00EA:
jmp .Lt_00E8
.Lt_00E9:
mov dword ptr [ebp-16], 253
.Lt_00E8:
jmp .Lt_00E4
.Lt_00EC:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_00EE
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+8]
and eax, 60
test eax, eax
je .Lt_00F0
mov dword ptr [ebp-16], 254
jmp .Lt_00EF
.Lt_00F0:
call HCHECKFORCTORRESULT
mov dword ptr [ebp-16], eax
.Lt_00EF:
jmp .Lt_00ED
.Lt_00EE:
mov dword ptr [ebp-16], 254
.Lt_00ED:
jmp .Lt_00E4
.Lt_00F1:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_00F3
call HCHECKFORCTORRESULT
mov dword ptr [ebp-16], eax
jmp .Lt_00F2
.Lt_00F3:
mov dword ptr [ebp-16], 193
.Lt_00F2:
jmp .Lt_00E4
.Lt_00F4:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .Lt_00F6
call HCHECKFORCTORRESULT
mov dword ptr [ebp-16], eax
jmp .Lt_00F5
.Lt_00F6:
mov dword ptr [ebp-16], 144
.Lt_00F5:
jmp .Lt_00E4
.Lt_00F7:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
jne .Lt_00F9
mov dword ptr [ebp-16], 165
.Lt_00F9:
.Lt_00F8:
jmp .Lt_00E4
.Lt_00FA:
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+8]
and eax, 8
test eax, eax
jne .Lt_00FC
mov dword ptr [ebp-16], 166
.Lt_00FC:
.Lt_00FB:
jmp .Lt_00E4
.Lt_00E5:
mov eax, dword ptr [ebp-20]
add eax, 4294966951
cmp eax, 5
ja .Lt_00E4
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_00FD+eax*4-1380]
.LT_00FD:
.int .Lt_00E7
.int .Lt_00EC
.int .Lt_00F7
.int .Lt_00FA
.int .Lt_00F4
.int .Lt_00F1
.Lt_00E4:
cmp dword ptr [ebp-16], 0
je .Lt_00FF
sub esp, 4
push 0
push 0
push dword ptr [ebp-16]
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
.Lt_00FF:
.Lt_00FE:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00AE
.Lt_0100:
sub esp, 4
push 0
push 0
push 251
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AD
jmp .Lt_00AE
.Lt_00AF:
mov eax, dword ptr [ebp-12]
add eax, 4294967026
cmp eax, 80
ja .Lt_0100
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_0101+eax*4-1080]
.LT_0101:
.int .Lt_00CC
.int .Lt_0100
.int .Lt_0100
.int .Lt_00C3
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_00BA
.int .Lt_0100
.int .Lt_0100
.int .Lt_00B1
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_00D5
.int .Lt_00D5
.int .Lt_00D5
.int .Lt_00D5
.int .Lt_00D5
.int .Lt_00D5
.Lt_00AE:
sub esp, 12
push dword ptr [ebp-4]
call ASTSCOPEBREAK
add esp, 16
.Lt_00AD:
pop ebx
mov esp, ebp
pop ebp
ret
.size CEXITSTATEMENT, .-CEXITSTATEMENT
.balign 16

.globl CCONTINUESTATEMENT
CCONTINUESTATEMENT:
.type CCONTINUESTATEMENT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0102:
mov dword ptr [ebp-4], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0105
.Lt_0107:
cmp dword ptr [PARSER+32], 0
jne .Lt_0109
sub esp, 4
push 0
push 0
push 239
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0103
.Lt_0109:
.Lt_0108:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [PARSER+32]
mov dword ptr [ebp-12], eax
.Lt_010A:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
jne .Lt_010B
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 281
je .Lt_010D
sub esp, 4
push 0
push 0
push 243
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0103
.Lt_010D:
.Lt_010C:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .Lt_010F
sub esp, 4
push 0
push 0
push 247
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0103
.Lt_010F:
.Lt_010E:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_010A
.Lt_010B:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-4], eax
jmp .Lt_0104
.Lt_0110:
cmp dword ptr [PARSER+36], 0
jne .Lt_0112
sub esp, 4
push 0
push 0
push 240
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0103
.Lt_0112:
.Lt_0111:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [PARSER+36]
mov dword ptr [ebp-12], eax
.Lt_0113:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
jne .Lt_0114
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 278
je .Lt_0116
sub esp, 4
push 0
push 0
push 244
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0103
.Lt_0116:
.Lt_0115:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .Lt_0118
sub esp, 4
push 0
push 0
push 248
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0103
.Lt_0118:
.Lt_0117:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0113
.Lt_0114:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
jmp .Lt_0104
.Lt_0119:
cmp dword ptr [PARSER+40], 0
jne .Lt_011B
sub esp, 4
push 0
push 0
push 241
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0103
.Lt_011B:
.Lt_011A:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [PARSER+40]
mov dword ptr [ebp-12], eax
.Lt_011C:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
jne .Lt_011D
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 273
je .Lt_011F
sub esp, 4
push 0
push 0
push 245
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0103
.Lt_011F:
.Lt_011E:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .Lt_0121
sub esp, 4
push 0
push 0
push 249
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0103
.Lt_0121:
.Lt_0120:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_011C
.Lt_011D:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-4], eax
jmp .Lt_0104
.Lt_0122:
sub esp, 4
push 0
push 0
push 252
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0103
jmp .Lt_0104
.Lt_0105:
mov eax, dword ptr [ebp-8]
add eax, 4294967023
cmp eax, 8
ja .Lt_0122
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0123+eax*4-1092]
.LT_0123:
.int .Lt_0119
.int .Lt_0122
.int .Lt_0122
.int .Lt_0122
.int .Lt_0122
.int .Lt_0110
.int .Lt_0122
.int .Lt_0122
.int .Lt_0107
.Lt_0104:
sub esp, 12
push dword ptr [ebp-4]
call ASTSCOPEBREAK
add esp, 16
.Lt_0103:
pop ebx
mov esp, ebp
pop ebp
ret
.size CCONTINUESTATEMENT, .-CCONTINUESTATEMENT
.balign 16

.globl CCOMPSTMTCHECK
CCOMPSTMTCHECK:
.type CCOMPSTMTCHECK, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0133:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
sub esp, 12
lea eax, [PARSER]
push eax
call STACKGETTOS
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0136
mov dword ptr [ebp-4], -1
jmp .Lt_0134
.Lt_0136:
.Lt_0135:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .Lt_0138
.Lt_013A:
mov dword ptr [ebp-8], 32
jmp .Lt_0137
.Lt_013B:
mov dword ptr [ebp-8], 35
jmp .Lt_0137
.Lt_013C:
mov dword ptr [ebp-8], 95
jmp .Lt_0137
.Lt_013D:
mov dword ptr [ebp-8], 60
jmp .Lt_0137
.Lt_013E:
mov dword ptr [ebp-8], 121
jmp .Lt_0137
.Lt_013F:
mov dword ptr [ebp-8], 124
jmp .Lt_0137
.Lt_0140:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-20], eax
jmp .Lt_0142
.Lt_0144:
mov dword ptr [ebp-8], 125
jmp .Lt_0141
.Lt_0145:
mov dword ptr [ebp-8], 126
jmp .Lt_0141
.Lt_0146:
mov dword ptr [ebp-8], 127
jmp .Lt_0141
.Lt_0147:
mov dword ptr [ebp-8], 128
jmp .Lt_0141
.Lt_0148:
mov dword ptr [ebp-8], 129
jmp .Lt_0141
.Lt_0149:
mov dword ptr [ebp-8], 130
jmp .Lt_0141
.Lt_0142:
mov eax, dword ptr [ebp-20]
add eax, 4294966951
cmp eax, 5
ja .Lt_0141
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_014A+eax*4-1380]
.LT_014A:
.int .Lt_0144
.int .Lt_0145
.int .Lt_0146
.int .Lt_0147
.int .Lt_0148
.int .Lt_0149
.Lt_0141:
jmp .Lt_0137
.Lt_014B:
mov dword ptr [ebp-8], 29
jmp .Lt_0137
.Lt_014C:
mov dword ptr [ebp-8], 30
jmp .Lt_0137
.Lt_014D:
mov dword ptr [ebp-8], 13
jmp .Lt_0137
.Lt_0138:
mov eax, dword ptr [ebp-16]
add eax, 4294967030
cmp eax, 80
ja .Lt_0137
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_014E+eax*4-1064]
.LT_014E:
.int .Lt_013A
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_013B
.int .Lt_0137
.int .Lt_0137
.int .Lt_014C
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_014B
.int .Lt_0137
.int .Lt_013D
.int .Lt_014D
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_013C
.int .Lt_013E
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_013F
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0137
.int .Lt_0140
.Lt_0137:
sub esp, 4
push 0
push 0
push dword ptr [ebp-8]
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
.Lt_0134:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CCOMPSTMTCHECK, .-CCOMPSTMTCHECK
.balign 16

.globl CCOMPSTMTPUSH
CCOMPSTMTPUSH:
.type CCOMPSTMTPUSH, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_014F:
sub esp, 12
lea eax, [PARSER]
push eax
call STACKPUSH
add esp, 16
mov dword ptr [Lt_015B], eax
mov eax, dword ptr [Lt_015B]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [Lt_015B]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [Lt_015B]
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_0152
.Lt_0154:
mov eax, dword ptr [Lt_015B]
mov ebx, dword ptr [PARSER+36]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [Lt_015B]
mov dword ptr [PARSER+36], ebx
jmp .Lt_0151
.Lt_0155:
mov ebx, dword ptr [Lt_015B]
mov eax, dword ptr [PARSER+32]
mov dword ptr [ebx+96], eax
mov eax, dword ptr [Lt_015B]
mov dword ptr [PARSER+32], eax
jmp .Lt_0151
.Lt_0156:
mov eax, dword ptr [Lt_015B]
mov ebx, dword ptr [PARSER+44]
mov dword ptr [eax+52], ebx
mov ebx, dword ptr [Lt_015B]
mov dword ptr [PARSER+44], ebx
jmp .Lt_0151
.Lt_0157:
mov ebx, dword ptr [Lt_015B]
mov eax, dword ptr [PARSER+40]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [Lt_015B]
mov dword ptr [PARSER+40], eax
jmp .Lt_0151
.Lt_0158:
mov eax, dword ptr [Lt_015B]
mov ebx, dword ptr [PARSER+48]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [Lt_015B]
mov dword ptr [PARSER+48], ebx
jmp .Lt_0151
.Lt_0159:
mov ebx, dword ptr [Lt_015B]
mov eax, dword ptr [PARSER+52]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [Lt_015B]
mov dword ptr [PARSER+52], eax
jmp .Lt_0151
.Lt_0152:
mov eax, dword ptr [ebp-8]
add eax, 4294967026
cmp eax, 76
ja .Lt_0151
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_015A+eax*4-1080]
.LT_015A:
.int .Lt_0156
.int .Lt_0151
.int .Lt_0151
.int .Lt_0157
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0154
.int .Lt_0151
.int .Lt_0159
.int .Lt_0155
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0151
.int .Lt_0158
.Lt_0151:
mov eax, dword ptr [ebp+8]
mov dword ptr [PARSER+24], eax
mov eax, dword ptr [Lt_015B]
mov dword ptr [ebp-4], eax
.Lt_0150:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CCOMPSTMTPUSH, .-CCOMPSTMTPUSH

.section .bss
.balign 4
	.lcomm	Lt_015B,4

.section .text
.balign 16

.globl CCOMPSTMTGETTOS
CCOMPSTMTGETTOS:
.type CCOMPSTMTGETTOS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_015C:
sub esp, 12
lea eax, [PARSER]
push eax
call STACKGETTOS
add esp, 16
mov dword ptr [Lt_0174], eax
cmp dword ptr [Lt_0174], 0
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [Lt_0176], eax
cmp dword ptr [Lt_0176], 0
jne .Lt_015F
mov eax, dword ptr [Lt_0174]
mov ebx, dword ptr [ebp+8]
cmp ebx, dword ptr [eax]
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [Lt_0176], ebx
.Lt_015F:
.Lt_015E:
cmp dword ptr [Lt_0176], 0
je .Lt_0161
cmp dword ptr [ebp+12], 0
je .Lt_0163
cmp dword ptr [Lt_0174], 0
je .Lt_0165
call CCOMPSTMTCHECK
jmp .Lt_0164
.Lt_0165:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
jmp .Lt_0167
.Lt_0169:
mov dword ptr [Lt_0178], 106
jmp .Lt_0166
.Lt_016A:
mov dword ptr [Lt_0178], 115
jmp .Lt_0166
.Lt_016B:
mov dword ptr [Lt_0178], 107
jmp .Lt_0166
.Lt_016C:
mov dword ptr [Lt_0178], 110
jmp .Lt_0166
.Lt_016D:
mov dword ptr [Lt_0178], 113
jmp .Lt_0166
.Lt_016E:
mov dword ptr [Lt_0178], 111
jmp .Lt_0166
.Lt_016F:
mov dword ptr [Lt_0178], 108
jmp .Lt_0166
.Lt_0170:
mov dword ptr [Lt_0178], 109
jmp .Lt_0166
.Lt_0171:
mov dword ptr [Lt_0178], 112
jmp .Lt_0166
.Lt_0172:
mov dword ptr [Lt_0178], 114
jmp .Lt_0166
.Lt_0167:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967030
cmp ebx, 80
ja .Lt_0166
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.LT_0173+ebx*4-1064]
.LT_0173:
.int .Lt_016C
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_016E
.int .Lt_0166
.int .Lt_0166
.int .Lt_016F
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0169
.int .Lt_0166
.int .Lt_0170
.int .Lt_016B
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_016D
.int .Lt_0172
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_016A
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0166
.int .Lt_0171
.Lt_0166:
sub esp, 4
push 0
push 0
push dword ptr [Lt_0178]
call ERRREPORT
add esp, 16
.Lt_0164:
.Lt_0163:
.Lt_0162:
mov dword ptr [ebp-4], 0
jmp .Lt_0160
.Lt_0161:
mov ebx, dword ptr [Lt_0174]
mov dword ptr [ebp-4], ebx
.Lt_0160:
.Lt_015D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CCOMPSTMTGETTOS, .-CCOMPSTMTGETTOS

.section .bss
.balign 4
	.lcomm	Lt_0174,4
.balign 4
	.lcomm	Lt_0176,4
.balign 4
	.lcomm	Lt_0178,4

.section .text
.balign 16

.globl CCOMPSTMTPOP
CCOMPSTMTPOP:
.type CCOMPSTMTPOP, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0179:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .Lt_017C
.Lt_017E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
mov dword ptr [PARSER+36], eax
jmp .Lt_017B
.Lt_017F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov dword ptr [PARSER+32], ebx
jmp .Lt_017B
.Lt_0180:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+52]
mov dword ptr [PARSER+44], eax
jmp .Lt_017B
.Lt_0181:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [PARSER+40], ebx
jmp .Lt_017B
.Lt_0182:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
mov dword ptr [PARSER+48], eax
jmp .Lt_017B
.Lt_0183:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [PARSER+52], ebx
jmp .Lt_017B
.Lt_017C:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967026
cmp ebx, 76
ja .Lt_017B
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.LT_0184+ebx*4-1080]
.LT_0184:
.int .Lt_0180
.int .Lt_017B
.int .Lt_017B
.int .Lt_0181
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017E
.int .Lt_017B
.int .Lt_0183
.int .Lt_017F
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_017B
.int .Lt_0182
.Lt_017B:
sub esp, 12
lea ebx, [PARSER]
push ebx
call STACKPOP
add esp, 16
sub esp, 12
lea ebx, [PARSER]
push ebx
call STACKGETTOS
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .Lt_0186
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [PARSER+24], ebx
jmp .Lt_0185
.Lt_0186:
mov dword ptr [PARSER+24], 0
.Lt_0185:
.Lt_017A:
pop ebx
mov esp, ebp
pop ebp
ret
.size CCOMPSTMTPOP, .-CCOMPSTMTPOP
.balign 16

.globl CCOMPSTMTISALLOWED
CCOMPSTMTISALLOWED:
.type CCOMPSTMTISALLOWED, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0187:
sub esp, 12
lea eax, [PARSER]
push eax
call STACKGETTOS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_018A
mov dword ptr [ebp-4], -1
jmp .Lt_0188
.Lt_018A:
.Lt_0189:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
and ebx, dword ptr [eax+4]
je .Lt_018C
mov dword ptr [ebp-4], -1
jmp .Lt_0188
.Lt_018C:
.Lt_018B:
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
je .Lt_018E
mov dword ptr [ebp-12], 61
jmp .Lt_018D
.Lt_018E:
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
jne .Lt_0190
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 270
jne .Lt_0192
mov dword ptr [ebp-12], 62
jmp .Lt_0191
.Lt_0192:
mov dword ptr [ebp-12], 96
.Lt_0191:
jmp .Lt_018F
.Lt_0190:
mov dword ptr [ebp-12], 122
.Lt_018F:
.Lt_018D:
sub esp, 4
push 0
push 0
push dword ptr [ebp-12]
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], 0
.Lt_0188:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CCOMPSTMTISALLOWED, .-CCOMPSTMTISALLOWED
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
HCHECKFORCTORRESULT:
.type HCHECKFORCTORRESULT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A6:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+48]
and eax, 1
test eax, eax
je .Lt_00A9
sub esp, 12
push dword ptr [PARSER+104]
call SYMBHASCTOR
add esp, 16
mov ebx, dword ptr [PARSER+104]
mov ecx, dword ptr [ebx+8]
and ecx, 2048
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_00AB
mov dword ptr [ebp-4], 180
jmp .Lt_00A7
.Lt_00AB:
.Lt_00AA:
.Lt_00A9:
.Lt_00A8:
mov ecx, dword ptr [PARSER+104]
mov eax, dword ptr [ecx+112]
or dword ptr [eax+48], 2
mov dword ptr [ebp-4], 0
.Lt_00A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKFORCTORRESULT, .-HCHECKFORCTORRESULT
.balign 16
CCOMPOUNDEND:
.type CCOMPOUNDEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0124:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0127
.Lt_0129:
call CIFSTMTEND
jmp .Lt_0126
.Lt_012A:
call CSELECTSTMTEND
jmp .Lt_0126
.Lt_012B:
call CPROCSTMTEND
jmp .Lt_0126
.Lt_012C:
call CSCOPESTMTEND
jmp .Lt_0126
.Lt_012D:
call CWITHSTMTEND
jmp .Lt_0126
.Lt_012E:
call CNAMESPACESTMTEND
jmp .Lt_0126
.Lt_012F:
call CEXTERNSTMTEND
jmp .Lt_0126
.Lt_0130:
call CENDSTATEMENT
jmp .Lt_0126
.Lt_0131:
sub esp, 4
push 0
push 0
push 33
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0126
.Lt_0127:
mov eax, dword ptr [ebp-4]
add eax, 4294967030
cmp eax, 84
ja .Lt_0131
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_0132+eax*4-1064]
.LT_0132:
.int .Lt_0129
.int .Lt_0131
.int .Lt_0130
.int .Lt_0131
.int .Lt_012A
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_012D
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_012C
.int .Lt_012E
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_012F
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0130
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0130
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_0131
.int .Lt_012B
.int .Lt_012B
.int .Lt_012B
.int .Lt_012B
.int .Lt_012B
.int .Lt_012B
.Lt_0126:
.Lt_0125:
mov esp, ebp
pop ebp
ret
.size CCOMPOUNDEND, .-CCOMPOUNDEND

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
