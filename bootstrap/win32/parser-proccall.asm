	.intel_syntax noprefix

.section .text
.balign 16

.globl _CBYDESCARRAYARGPARENS@4
_CBYDESCARRAYARGPARENS@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0069:
mov dword ptr [ebp-4], -1
push 0
call _LEXGETTOKEN@4
cmp eax, 40
jne .Lt_006C
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 41
jne .Lt_006E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_0070
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _SYMBISARRAY@4
test eax, eax
je .Lt_0072
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-4], 3
.Lt_0072:
.Lt_0071:
.Lt_0070:
.Lt_006F:
.Lt_006E:
.Lt_006D:
.Lt_006C:
.Lt_006B:
.Lt_006A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CASSIGNFUNCTRESULT@4
_CASSIGNFUNCTRESULT@4:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_0073:
mov dword ptr [ebp-4], 0
push dword ptr [_PARSER+104]
call _SYMBGETPROCRESULT@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0076
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_0074
.Lt_0076:
.Lt_0075:
push dword ptr [_PARSER+104]
call _SYMBHASCTOR@4
mov dword ptr [ebp-24], eax
push dword ptr [_PARSER+104]
call _SYMBHASDEFCTOR@4
mov dword ptr [ebp-28], eax
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp+8], 0
je .Lt_0078
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+48]
and ebx, 2
test ebx, ebx
je .Lt_007A
mov ebx, dword ptr [ebp-36]
not ebx
and ebx, dword ptr [ebp-28]
je .Lt_007C
push 0
push 0
push 178
call _ERRREPORT@12
.Lt_007C:
.Lt_007B:
.Lt_007A:
.Lt_0079:
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+112]
or dword ptr [eax+48], 1
jmp .Lt_0077
.Lt_0078:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+48]
and eax, 1
test eax, eax
je .Lt_007E
mov eax, dword ptr [ebp-36]
not eax
and eax, dword ptr [ebp-28]
je .Lt_0080
push 0
push 0
push 179
call _ERRREPORT@12
.Lt_0080:
.Lt_007F:
.Lt_007E:
.Lt_007D:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+112]
or dword ptr [ebx+48], 2
.Lt_0077:
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+32]
mov dword ptr [_PARSER+156], eax
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [_PARSER+152], ebx
push 0
push 319
call _HMATCH@8
not eax
and eax, dword ptr [ebp-36]
je .Lt_0082
push 4
call _CVARORDEREF@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_0084
push dword ptr [ebp-16]
call _ASTISACCESSTOLOCAL@4
test eax, eax
je .Lt_0086
push 0
push 0
push 272
call _ERRREPORT@12
.Lt_0086:
.Lt_0085:
push dword ptr [ebp-16]
mov eax, dword ptr [_PARSER+104]
push dword ptr [eax+32]
mov eax, dword ptr [_PARSER+104]
push dword ptr [eax+28]
call _ASTCHECKBYREFASSIGN@12
test eax, eax
je .Lt_0088
push dword ptr [ebp-16]
call _ASTNEWADDROF@4
mov dword ptr [ebp-16], eax
jmp .Lt_0087
.Lt_0088:
push 0
push 0
push 318
call _ERRREPORT@12
push dword ptr [ebp-16]
call _ASTDELTREE@4
mov eax, dword ptr [_PARSER+104]
push dword ptr [eax+32]
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov eax, dword ptr [_PARSER+104]
mov ecx, dword ptr [eax+28]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [_PARSER+104]
mov eax, dword ptr [ecx+28]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [_PARSER+104]
mov ecx, dword ptr [eax+28]
and ecx, 32505856
or ebx, ecx
push ebx
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-16], eax
.Lt_0087:
.Lt_0084:
.Lt_0083:
jmp .Lt_0081
.Lt_0082:
call _CEXPRESSION@0
mov dword ptr [ebp-16], eax
.Lt_0081:
mov dword ptr [_PARSER+156], 0
mov dword ptr [_PARSER+152], -2147483648
cmp dword ptr [ebp-16], 0
jne .Lt_008A
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_0074
.Lt_008A:
.Lt_0089:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp-36]
not eax
and eax, dword ptr [ebp+8]
je .Lt_008C
cmp dword ptr [ebp-24], 0
je .Lt_008E
lea eax, [ebp-40]
push eax
push dword ptr [ebp-16]
call _CBYDESCARRAYARGPARENS@4
push eax
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTBUILDIMPLICITCTORCALLEX@16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0090
jmp .Lt_0074
.Lt_0090:
.Lt_008F:
cmp dword ptr [ebp-40], 0
je .Lt_0092
push dword ptr [ebp-8]
push dword ptr [_PARSER+104]
call _ASTBUILDPROCRESULTVAR@8
push eax
push dword ptr [ebp-16]
call _ASTPATCHCTORCALL@8
push eax
call _ASTADD@4
mov dword ptr [ebp-4], -1
jmp .Lt_0074
.Lt_0092:
.Lt_0091:
.Lt_008E:
.Lt_008D:
mov dword ptr [ebp-32], 64
.Lt_008C:
.Lt_008B:
push dword ptr [ebp-32]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [_PARSER+104]
call _ASTBUILDPROCRESULTVAR@8
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0094
push dword ptr [ebp-16]
call _ASTDELTREE@4
push 0
push 0
push 181
call _ERRREPORT@12
jmp .Lt_0093
.Lt_0094:
push dword ptr [ebp-20]
call _ASTADD@4
.Lt_0093:
mov dword ptr [ebp-4], -1
.Lt_0074:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HMETHODCALLADDINSTPTROVLARG@16
_HMETHODCALLADDINSTPTROVLARG@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0096:
cmp dword ptr [ebp+12], 0
jne .Lt_0099
jmp .Lt_0097
.Lt_0099:
.Lt_0098:
push 0
push dword ptr [ebp+16]
lea eax, [_PARSER+112]
push eax
call _SYMBALLOCOVLCALLARG@12
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+164]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
cmp dword ptr [eax+8], ebx
je .Lt_009B
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
.Lt_009B:
.Lt_009A:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .Lt_009C
mov dword ptr [ebp-12], 1
jmp .Lt_009E
.Lt_009C:
mov dword ptr [ebp-12], -1
.Lt_009E:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+20]
or dword ptr [eax], 64
.Lt_0097:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _CMAYBEIGNORECALLRESULT@4
_CMAYBEIGNORECALLRESULT@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00AA:
push dword ptr [ebp+8]
call _ASTSKIPCASTS@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 9
jne .Lt_00AD
push dword ptr [ebp+8]
call _ASTREMOVECASTS@4
push eax
call _ASTIGNORECALLRESULT@4
push eax
call _ASTADD@4
mov dword ptr [ebp-4], -1
jmp .Lt_00AC
.Lt_00AD:
push dword ptr [ebp-8]
call _ASTISBYREFRESULTDEREF@4
mov ebx, eax
call _HLOOKSLIKEENDOFSTATEMENT@0
and ebx, eax
je .Lt_00AE
push dword ptr [ebp+8]
call _ASTREMOVECASTS@4
push eax
call _ASTREMOVEBYREFRESULTDEREF@4
push eax
call _ASTIGNORECALLRESULT@4
push eax
call _ASTADD@4
mov dword ptr [ebp-4], -1
jmp .Lt_00AC
.Lt_00AE:
mov dword ptr [ebp-4], 0
.Lt_00AC:
.Lt_00AB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CPROCCALL@24
_CPROCCALL@24:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00AF:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp+28]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call _HMETHODCALLADDINSTPTROVLARG@16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_00B2
mov dword ptr [ebp-28], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 40
jne .Lt_00B4
mov dword ptr [ebp-28], -1
push 0
call _LEXSKIPTOKEN@4
call _CEXPRESSION@0
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_00B6
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-32], eax
.Lt_00B6:
.Lt_00B5:
push 0
lea eax, [ebp-24]
push eax
lea eax, [_PARSER+112]
push eax
call _SYMBALLOCOVLCALLARG@12
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [ebp-32]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-36]
mov dword ptr [ebx+4], -1
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_00B8
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_00B7
.Lt_00B8:
push 0
call _LEXSKIPTOKEN@4
.Lt_00B7:
.Lt_00B4:
.Lt_00B3:
push 0
call _LEXGETTOKEN@4
push eax
call _HISASSIGNTOKEN@4
test eax, eax
je .Lt_00BA
cmp dword ptr [ebp-28], 0
je .Lt_00BC
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+164]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+120]
and ebx, 1024
test ebx, ebx
jne .Lt_00BE
push 0
push -1
push 197
call _ERRREPORT@12
jmp .Lt_00B0
.Lt_00BE:
.Lt_00BD:
jmp .Lt_00BB
.Lt_00BC:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+164]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+120]
and eax, 256
test eax, eax
jne .Lt_00C0
push 0
push 0
push 195
call _ERRREPORT@12
jmp .Lt_00B0
.Lt_00C0:
.Lt_00BF:
.Lt_00BB:
push 0
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-8], -1
jmp .Lt_00B9
.Lt_00BA:
or dword ptr [ebp+28], 128
cmp dword ptr [ebp-28], 0
je .Lt_00C2
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+164]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+120]
and ebx, 512
test ebx, ebx
jne .Lt_00C4
push 0
push -1
push 196
call _ERRREPORT@12
jmp .Lt_00B0
.Lt_00C4:
.Lt_00C3:
jmp .Lt_00C1
.Lt_00C2:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+164]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+120]
and eax, 128
test eax, eax
jne .Lt_00C6
push 0
push 0
push 194
call _ERRREPORT@12
jmp .Lt_00B0
.Lt_00C6:
.Lt_00C5:
.Lt_00C1:
.Lt_00B9:
mov dword ptr [ebp+24], 0
jmp .Lt_00B1
.Lt_00B2:
cmp dword ptr [ebp+24], -1
jne .Lt_00C8
mov eax, dword ptr [ebp+12]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jne .Lt_00CA
mov dword ptr [ebp+24], 0
.Lt_00CA:
.Lt_00C9:
jmp .Lt_00C7
.Lt_00C8:
cmp dword ptr [ebp+16], 0
je .Lt_00CB
mov dword ptr [ebp+24], -1
.Lt_00CB:
.Lt_00C7:
.Lt_00B1:
cmp dword ptr [ebp+24], 0
je .Lt_00CD
push 0
push 40
call _HMATCH@8
test eax, eax
jne .Lt_00CF
push 0
push 0
push 6
call _ERRREPORT@12
.Lt_00CF:
.Lt_00CE:
.Lt_00CD:
.Lt_00CC:
mov dword ptr [_PARSER+144], 0
mov eax, dword ptr [ebp+24]
not eax
test eax, eax
je .Lt_00D1
or dword ptr [_PARSER+148], 1
jmp .Lt_00D0
.Lt_00D1:
and dword ptr [_PARSER+148], -2
.Lt_00D0:
push dword ptr [ebp+28]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CPROCARGLIST@20
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_PARSER+144]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp+24]
je .Lt_00D3
dec dword ptr [_PARSER+144]
push 0
push 41
call _HMATCH@8
test eax, eax
jne .Lt_00D5
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_00D4
.Lt_00D5:
cmp dword ptr [_PARSER+144], 0
jle .Lt_00D6
.Lt_00D7:
cmp dword ptr [_PARSER+144], 0
jle .Lt_00D8
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
dec dword ptr [_PARSER+144]
jmp .Lt_00D7
.Lt_00D8:
.Lt_00D6:
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
jmp .Lt_00DA
or dword ptr [_PARSER+148], 1
jmp .Lt_00D9
.Lt_00DA:
and dword ptr [_PARSER+148], -2
.Lt_00D9:
cmp dword ptr [ebp-8], 0
jne .Lt_00DC
push dword ptr [ebp-12]
call _ASTBUILDBYREFRESULTDEREF@4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call _CSTRIDXORMEMBERDEREF@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00DE
jmp .Lt_00B0
.Lt_00DE:
.Lt_00DD:
.Lt_00DC:
.Lt_00DB:
push dword ptr [ebp-12]
call _CMAYBEIGNORECALLRESULT@4
test eax, eax
je .Lt_00E0
mov dword ptr [ebp-4], 0
jmp .Lt_00DF
.Lt_00E0:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_00DF:
.Lt_00B0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _CPROCCALLORASSIGN@0
_CPROCCALLORASSIGN@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0163:
mov dword ptr [ebp-4], 0
cmp dword ptr [_ENV+136], 3
jne .Lt_0166
call _HPROCCALLORASSIGN_QB@0
mov dword ptr [ebp-4], eax
jmp .Lt_0164
.Lt_0166:
.Lt_0165:
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-20], eax
jmp .Lt_0168
.Lt_016A:
push 50
lea eax, [ebp-12]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HASSIGNORCALL@16
mov dword ptr [ebp-4], eax
jmp .Lt_0164
jmp .Lt_0167
.Lt_016B:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-24], eax
jmp .Lt_016D
.Lt_016F:
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
jne .Lt_0171
push 0
push 0
push 254
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_0164
.Lt_0171:
.Lt_0170:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .Lt_0173
push 0
push 0
push 157
call _ERRREPORT@12
jmp .Lt_0172
.Lt_0173:
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+8]
and eax, 32
test eax, eax
je .Lt_0174
push 0
push 0
push 192
call _ERRREPORT@12
.Lt_0174:
.Lt_0172:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXSKIPTOKEN@4
push 0
call _CASSIGNFUNCTRESULT@4
mov dword ptr [ebp-4], eax
jmp .Lt_0164
jmp .Lt_016C
.Lt_0175:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
jne .Lt_0177
push 0
push 0
push 144
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_0164
.Lt_0177:
.Lt_0176:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXSKIPTOKEN@4
push 0
call _CASSIGNFUNCTRESULT@4
mov dword ptr [ebp-4], eax
jmp .Lt_0164
jmp .Lt_016C
.Lt_0178:
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
jne .Lt_017A
push 0
push 0
push 193
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_0164
jmp .Lt_0179
.Lt_017A:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
jne .Lt_017C
push 0
push 0
push 193
call _ERRREPORT@12
.Lt_017C:
.Lt_017B:
.Lt_0179:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXSKIPTOKEN@4
push 0
call _CASSIGNFUNCTRESULT@4
mov dword ptr [ebp-4], eax
jmp .Lt_0164
jmp .Lt_016C
.Lt_017D:
call _HCTORCHAIN@0
mov dword ptr [ebp-4], -1
jmp .Lt_0164
jmp .Lt_016C
.Lt_017E:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 46
jne .Lt_0180
call _HBASEMEMBERACCESS@0
mov dword ptr [ebp-4], eax
jmp .Lt_0164
jmp .Lt_017F
.Lt_0180:
call _HBASEINIT@0
mov dword ptr [ebp-4], -1
jmp .Lt_0164
.Lt_017F:
jmp .Lt_016C
.Lt_0181:
mov eax, dword ptr [_ENV+888]
and eax, 131072
test eax, eax
jne .Lt_0183
push 0
push 146
push 131072
call _ERRREPORTNOTALLOWED@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_0164
.Lt_0183:
.Lt_0182:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_0185
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_0164
.Lt_0185:
.Lt_0184:
push 2048
call _LEXSKIPTOKEN@4
push 34
lea eax, [ebp-12]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0187
push 0
push -1
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HASSIGNORCALL@16
mov dword ptr [ebp-4], eax
jmp .Lt_0164
.Lt_0187:
.Lt_0186:
push 0
push 0
push 14
call _ERRREPORT@12
mov dword ptr [ebp-4], -1
jmp .Lt_0164
jmp .Lt_016C
.Lt_016D:
mov eax, dword ptr [ebp-24]
add eax, 4294966950
cmp eax, 47
ja .Lt_016C
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.LT_0188+eax*4-1384]
_.LT_0188:
.int .Lt_016F
.int .Lt_017D
.int .Lt_016C
.int .Lt_0175
.int .Lt_0178
.int .Lt_016C
.int .Lt_016C
.int .Lt_017E
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_016C
.int .Lt_0181
.Lt_016C:
jmp .Lt_0167
.Lt_0189:
push 0
call _LEXGETTOKEN@4
cmp eax, 388
jne .Lt_018B
call _COPERATORDELETE@0
mov dword ptr [ebp-4], -1
jmp .Lt_0164
.Lt_018B:
.Lt_018A:
jmp .Lt_0167
.Lt_018C:
push 0
call _LEXGETTOKEN@4
cmp eax, 46
jne .Lt_018E
cmp dword ptr [_PARSER+52], 0
je .Lt_0190
push 64
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 46
je .Lt_0192
mov eax, dword ptr [_PARSER+148]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
call _CWITHVARIABLE@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0194
jmp .Lt_0164
.Lt_0194:
.Lt_0193:
push dword ptr [ebp-16]
call _CASSIGNMENTORPTRCALLEX@4
mov dword ptr [ebp-4], eax
jmp .Lt_0164
.Lt_0192:
.Lt_0191:
.Lt_0190:
.Lt_018F:
push 50
lea eax, [ebp-12]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0196
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HASSIGNORCALL@16
mov dword ptr [ebp-4], eax
jmp .Lt_0164
.Lt_0196:
.Lt_0195:
.Lt_018E:
.Lt_018D:
jmp .Lt_0167
.Lt_0168:
cmp dword ptr [ebp-20], 6
ja .Lt_0167
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_0197+eax*4]
_.LT_0197:
.int .Lt_016A
.int .Lt_016B
.int .Lt_016A
.int .Lt_0167
.int .Lt_0167
.int .Lt_0189
.int .Lt_018C
.Lt_0167:
.Lt_0164:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HFORWARDCALL@0
_HFORWARDCALL@0:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B6:
mov dword ptr [ebp-4], 0
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .Lt_01BA
.Lt_01BB:
mov eax, dword ptr [_ENV+888]
and eax, 524288
test eax, eax
je .Lt_01BD
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98536], eax
je .Lt_01BF
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2072], 0
jle .Lt_01C1
push 0
push 0
push 90
call _ERRREPORT@12
.Lt_01C1:
.Lt_01C0:
.Lt_01BF:
.Lt_01BE:
.Lt_01BD:
.Lt_01BC:
jmp .Lt_01B8
.Lt_01BA:
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
push 0
push 40
call _HSKIPUNTIL@16
jmp .Lt_01B7
.Lt_01C2:
.Lt_01B8:
push 0
push 0
call _LEXGETTEXT@0
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], -2147483648
je .Lt_01C4
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_01C4:
.Lt_01C3:
push 0
call _LEXSKIPTOKEN@4
push dword ptr [ebp-16]
call _SYMBPREADDPROC@4
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 40
jne .Lt_01C6
push 0
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-24], -1
.Lt_01C6:
.Lt_01C5:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
.Lt_01C7:
call _CEXPRESSION@0
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .Lt_01CB
jmp .Lt_01C8
.Lt_01CB:
.Lt_01CA:
mov dword ptr [ebp-44], 2
push 0
call _LEXGETTOKEN@4
cmp eax, 40
jne .Lt_01CD
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 41
jne .Lt_01CF
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-44], 3
.Lt_01CF:
.Lt_01CE:
.Lt_01CD:
.Lt_01CC:
mov dword ptr [ebp-48], 0
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-60], ebx
cmp dword ptr [ebp-60], 17
je .Lt_01D3
.Lt_01D4:
cmp dword ptr [ebp-60], 18
je .Lt_01D3
.Lt_01D5:
cmp dword ptr [ebp-60], 4
je .Lt_01D3
.Lt_01D6:
cmp dword ptr [ebp-60], 7
jne .Lt_01D2
.Lt_01D3:
mov dword ptr [ebp-48], 17
.Lt_01D2:
.Lt_01D0:
push 0
push 0
push dword ptr [ebp-44]
cmp dword ptr [ebp-44], 3
jne .Lt_01D7
mov dword ptr [ebp-52], -1
jmp .Lt_01E3
.Lt_01D7:
mov dword ptr [ebp-52], 0
.Lt_01E3:
push dword ptr [ebp-52]
push 0
push dword ptr [ebp-48]
push 0
push dword ptr [ebp-20]
call _SYMBADDPROCPARAM@32
test eax, eax
jne .Lt_01DA
jmp .Lt_01C8
.Lt_01DA:
.Lt_01D9:
push 0
lea eax, [ebp-36]
push eax
lea eax, [_PARSER+112]
push eax
call _SYMBALLOCOVLCALLARG@12
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [ebp-40]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebx+4], -1
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_01DC
jmp .Lt_01C8
.Lt_01DC:
.Lt_01DB:
push 0
call _LEXSKIPTOKEN@4
.Lt_01C9:
jmp .Lt_01C7
.Lt_01C8:
cmp dword ptr [ebp-24], 0
je .Lt_01DE
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_01E0
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_01DF
.Lt_01E0:
push 0
call _LEXSKIPTOKEN@4
.Lt_01DF:
.Lt_01DE:
.Lt_01DD:
push 0
push dword ptr [_ENV+252]
push 0
push 0
push 0
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _SYMBADDPROC@36
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_01E2
push 0
push -1
push 4
call _ERRREPORT@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_01B7
.Lt_01E2:
.Lt_01E1:
push 32
lea eax, [ebp-36]
push eax
push 0
push dword ptr [ebp-20]
push 0
call _CPROCARGLIST@20
push eax
call _ASTADD@4
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_01B7:
mov eax, dword ptr [ebp-4]
pop ebx
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
_HLOOKSLIKEENDOFSTATEMENT@0:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_009F:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 258
je .Lt_00A4
.Lt_00A5:
cmp dword ptr [ebp-8], 257
je .Lt_00A4
.Lt_00A6:
cmp dword ptr [ebp-8], 256
je .Lt_00A4
.Lt_00A7:
cmp dword ptr [ebp-8], 259
je .Lt_00A4
.Lt_00A8:
cmp dword ptr [ebp-8], 260
jne .Lt_00A3
.Lt_00A4:
mov dword ptr [ebp-4], -1
jmp .Lt_00A1
.Lt_00A3:
mov dword ptr [ebp-4], 0
.Lt_00A9:
.Lt_00A1:
.Lt_00A0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HPROCSYMBOL@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E2:
mov dword ptr [ebp-4], 0
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_00E5
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_00E3
.Lt_00E5:
.Lt_00E4:
push 4096
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
push eax
call _HISASSIGNTOKEN@4
not eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00E7
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_00E9
mov dword ptr [ebp-8], -1
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+8]
and eax, 32
test eax, eax
je .Lt_00EB
mov eax, dword ptr [_PARSER+104]
movsx ebx, word ptr [eax+68]
cmp ebx, 1
jne .Lt_00ED
push dword ptr [ebp+12]
push dword ptr [_PARSER+104]
call _SYMBISPROCOVERLOADOF@8
test eax, eax
je .Lt_00EF
mov dword ptr [ebp-8], 0
.Lt_00EF:
.Lt_00EE:
.Lt_00ED:
.Lt_00EC:
.Lt_00EB:
.Lt_00EA:
.Lt_00E9:
.Lt_00E8:
.Lt_00E7:
.Lt_00E6:
cmp dword ptr [ebp-8], 0
je .Lt_00F1
push dword ptr [ebp+20]
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CPROCCALL@24
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_00F3
push dword ptr [ebp-12]
call _CASSIGNMENT@4
.Lt_00F3:
.Lt_00F2:
mov dword ptr [ebp-4], -1
jmp .Lt_00E3
.Lt_00F1:
.Lt_00F0:
cmp dword ptr [ebp+16], 0
je .Lt_00F5
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_00E3
.Lt_00F5:
.Lt_00F4:
push dword ptr [ebp+12]
push dword ptr [_PARSER+104]
call _SYMBISPROCOVERLOADOF@8
test eax, eax
jne .Lt_00F7
push 0
push 0
push 317
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_00E3
.Lt_00F7:
.Lt_00F6:
push 0
call _LEXSKIPTOKEN@4
push 0
call _CASSIGNFUNCTRESULT@4
mov dword ptr [ebp-4], eax
.Lt_00E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HVARSYMBOL@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00F8:
mov dword ptr [ebp-4], 0
push -1
push dword ptr [ebp+8]
call __Z11CVARIABLEEXP8FBSYMBOLl@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00FB
jmp .Lt_00F9
.Lt_00FB:
.Lt_00FA:
cmp dword ptr [ebp+12], 0
je .Lt_00FD
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 9
je .Lt_00FF
push dword ptr [ebp-8]
call _ASTDELTREE@4
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_00F9
.Lt_00FF:
.Lt_00FE:
.Lt_00FD:
.Lt_00FC:
push dword ptr [ebp-8]
call _CASSIGNMENTORPTRCALLEX@4
mov dword ptr [ebp-4], eax
.Lt_00F9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_HMATCHESDEFDTYPE@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0100:
cmp dword ptr [ebp+12], 17
jne .Lt_0103
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
je .Lt_0107
.Lt_0108:
cmp dword ptr [ebp-8], 18
je .Lt_0107
.Lt_0109:
cmp dword ptr [ebp-8], 4
jne .Lt_0106
.Lt_0107:
mov dword ptr [ebp-4], -1
jmp .Lt_0104
.Lt_0106:
mov dword ptr [ebp-4], 0
.Lt_010A:
.Lt_0104:
jmp .Lt_0102
.Lt_0103:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, dword ptr [ebp+12]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0102:
.Lt_0101:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HASSIGNORCALL_QB@8:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_010B:
mov dword ptr [ebp-4], 0
call _LEXGETTEXT@0
mov dword ptr [ebp-8], eax
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-8]
call _SYMBGETDEFTYPE@4
mov dword ptr [ebp-16], eax
.Lt_010D:
cmp dword ptr [ebp+8], 0
je .Lt_010E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-12], -2147483648
jne .Lt_0110
.Lt_0111:
mov dword ptr [ebp-28], -1
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_0115
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 1
jne .Lt_0117
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _HMATCHESDEFDTYPE@8
mov dword ptr [ebp-28], eax
.Lt_0117:
.Lt_0116:
.Lt_0115:
.Lt_0114:
cmp dword ptr [ebp-28], 0
je .Lt_0119
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
jmp .Lt_011B
.Lt_011D:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+12]
and eax, 32
test eax, eax
je .Lt_011F
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
.Lt_011F:
.Lt_011E:
cmp dword ptr [ebp-28], 0
je .Lt_0121
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push 0
call _HPROCSYMBOL@16
mov dword ptr [ebp-4], eax
jmp .Lt_010C
.Lt_0121:
.Lt_0120:
jmp .Lt_011A
.Lt_0122:
cmp dword ptr [ebp-24], 0
jne .Lt_0124
push dword ptr [ebp-20]
call _SYMBVARCHECKACCESS@4
test eax, eax
je .Lt_0126
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.Lt_0126:
.Lt_0125:
.Lt_0124:
.Lt_0123:
jmp .Lt_011A
.Lt_0127:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
jne .Lt_0129
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+56]
call _CQUIRKSTMT@4
mov dword ptr [ebp-4], eax
jmp .Lt_010C
.Lt_0129:
.Lt_0128:
jmp .Lt_011A
.Lt_011B:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 5
ja .Lt_011A
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.LT_012A+eax*4-4]
_.LT_012A:
.int .Lt_0122
.int .Lt_011A
.int .Lt_011D
.int .Lt_011A
.int .Lt_011A
.int .Lt_0127
.Lt_011A:
.Lt_0119:
.Lt_0118:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-20], ebx
.Lt_0113:
cmp dword ptr [ebp-20], 0
jne .Lt_0111
.Lt_0112:
jmp .Lt_010F
.Lt_0110:
.Lt_012B:
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call _HMATCHESDEFDTYPE@8
test eax, eax
je .Lt_012F
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
jmp .Lt_0131
.Lt_0133:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push 0
call _HPROCSYMBOL@16
mov dword ptr [ebp-4], eax
jmp .Lt_010C
jmp .Lt_0130
.Lt_0134:
cmp dword ptr [ebp-24], 0
jne .Lt_0136
push dword ptr [ebp-20]
call _SYMBVARCHECKACCESS@4
test eax, eax
je .Lt_0138
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.Lt_0138:
.Lt_0137:
.Lt_0136:
.Lt_0135:
jmp .Lt_0130
.Lt_0139:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+56]
call _CQUIRKSTMT@4
mov dword ptr [ebp-4], eax
jmp .Lt_010C
jmp .Lt_0130
.Lt_0131:
mov eax, dword ptr [ebp-28]
add eax, 4294967295
cmp eax, 5
ja .Lt_0130
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.LT_013A+eax*4-4]
_.LT_013A:
.int .Lt_0134
.int .Lt_0130
.int .Lt_0133
.int .Lt_0130
.int .Lt_0130
.int .Lt_0139
.Lt_0130:
.Lt_012F:
.Lt_012E:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-20], ebx
.Lt_012D:
cmp dword ptr [ebp-20], 0
jne .Lt_012B
.Lt_012C:
.Lt_010F:
cmp dword ptr [ebp-24], 0
je .Lt_013C
push dword ptr [ebp+12]
push dword ptr [ebp-24]
call _HVARSYMBOL@8
mov dword ptr [ebp-4], eax
jmp .Lt_010C
.Lt_013C:
.Lt_013B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .Lt_010D
.Lt_010E:
.Lt_010C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HASSIGNORPTRCALL@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_013D:
cmp dword ptr [ebp+8], 0
jne .Lt_0140
jmp .Lt_013E
.Lt_0140:
.Lt_013F:
cmp dword ptr [ebp+12], 0
je .Lt_0142
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
je .Lt_0144
push dword ptr [ebp+8]
call _ASTDELTREE@4
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_013E
.Lt_0144:
.Lt_0143:
.Lt_0142:
.Lt_0141:
push dword ptr [ebp+8]
call _CASSIGNMENTORPTRCALLEX@4
mov dword ptr [ebp-4], eax
.Lt_013E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_HASSIGNORCALL@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0145:
mov dword ptr [ebp-4], 0
.Lt_0147:
cmp dword ptr [ebp+12], 0
je .Lt_0148
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_0149:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .Lt_014D
.Lt_014F:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPROCSYMBOL@16
mov dword ptr [ebp-4], eax
jmp .Lt_0146
jmp .Lt_014C
.Lt_0150:
push dword ptr [ebp+16]
push -1
push dword ptr [ebp+12]
call __Z11CVARIABLEEXP10FBSYMCHAINl@8
push eax
call _HASSIGNORPTRCALL@8
mov dword ptr [ebp-4], eax
jmp .Lt_0146
jmp .Lt_014C
.Lt_0151:
push dword ptr [ebp+16]
push dword ptr [ebp+20]
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CIMPLICITDATAMEMBER@16
push eax
call _HASSIGNORPTRCALL@8
mov dword ptr [ebp-4], eax
jmp .Lt_0146
jmp .Lt_014C
.Lt_0152:
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _CCONSTANT@4
push eax
call _HASSIGNORPTRCALL@8
mov dword ptr [ebp-4], eax
jmp .Lt_0146
jmp .Lt_014C
.Lt_0153:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _CQUIRKSTMT@4
mov dword ptr [ebp-4], eax
jmp .Lt_0146
jmp .Lt_014C
.Lt_014D:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 11
ja .Lt_014C
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_0154+eax*4-4]
_.LT_0154:
.int .Lt_0150
.int .Lt_0152
.int .Lt_014F
.int .Lt_014C
.int .Lt_014C
.int .Lt_0153
.int .Lt_014C
.int .Lt_014C
.int .Lt_014C
.int .Lt_014C
.int .Lt_014C
.int .Lt_0151
.Lt_014C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-8], ebx
.Lt_014B:
cmp dword ptr [ebp-8], 0
jne .Lt_0149
.Lt_014A:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+12], eax
jmp .Lt_0147
.Lt_0148:
.Lt_0146:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HPROCCALLORASSIGN_QB@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0155:
mov dword ptr [ebp-4], 0
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-8], eax
jmp .Lt_0158
.Lt_015A:
push 0
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2068]
call _HASSIGNORCALL_QB@8
mov dword ptr [ebp-4], eax
jmp .Lt_0156
jmp .Lt_0157
.Lt_015B:
push 0
call _LEXGETTOKEN@4
cmp eax, 393
je .Lt_015D
push 0
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2068]
call _HASSIGNORCALL_QB@8
mov dword ptr [ebp-4], eax
jmp .Lt_0156
.Lt_015D:
.Lt_015C:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_015F
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0156
.Lt_015F:
.Lt_015E:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2068], 0
jne .Lt_0161
call _HFORWARDCALL@0
mov dword ptr [ebp-4], eax
jmp .Lt_0156
jmp .Lt_0160
.Lt_0161:
push -1
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2068]
call _HASSIGNORCALL_QB@8
mov dword ptr [ebp-4], eax
jmp .Lt_0156
.Lt_0160:
jmp .Lt_0157
.Lt_0158:
cmp dword ptr [ebp-8], 5
ja .Lt_0157
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0162+eax*4]
_.LT_0162:
.int .Lt_015A
.int .Lt_015B
.int .Lt_015A
.int .Lt_0157
.int .Lt_0157
.int .Lt_015A
.Lt_0157:
.Lt_0156:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCTORCHAIN@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0199:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
jne .Lt_019C
push 0
push 0
push 165
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_019A
.Lt_019C:
.Lt_019B:
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+144]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
push dword ptr [_AST+40]
call _ASTFINDFIRSTCODE@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_PARSER+104]
mov ecx, dword ptr [eax+112]
cmp dword ptr [ecx+64], 0
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_019E
push 0
push 0
push 169
call _ERRREPORT@12
.Lt_019E:
.Lt_019D:
mov eax, dword ptr [_PARSER+104]
or dword ptr [eax+12], 4
push 2048
call _LEXSKIPTOKEN@4
push 0
push 0
push 0
push 0
push 0
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+76]
push dword ptr [ebx+60]
call _ASTBUILDVARFIELD@16
push eax
push 0
push dword ptr [ebp-8]
call _SYMBGETCOMPCTORHEAD@4
push eax
push 0
call _CPROCCALL@24
.Lt_019A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBASEINIT@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_019F:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
jne .Lt_01A2
push 0
push 0
push 165
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_01A0
.Lt_01A2:
.Lt_01A1:
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+144]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01A4
push 0
push 0
push 295
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_01A0
.Lt_01A4:
.Lt_01A3:
push dword ptr [_AST+40]
call _ASTFINDFIRSTCODE@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_PARSER+104]
mov ecx, dword ptr [eax+112]
cmp dword ptr [ecx+64], 0
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_01A6
push 0
push 0
push 170
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_01A0
.Lt_01A6:
.Lt_01A5:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
push dword ptr [ebp-12]
call _SYMBGETCOMPCTORHEAD@4
test eax, eax
je .Lt_01A8
push dword ptr [ebp-12]
call _CCTORCALL@4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
call _ASTCALLCTORTOCALL@4
mov dword ptr [ebp-20], eax
push 0
push 0
push -1
push dword ptr [ebp-12]
push 20
call _ASTTYPEINIBEGIN@20
mov dword ptr [ebp-16], eax
push 0
push -2147483648
push dword ptr [ebp-20]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _ASTTYPEINIADDCTORCALL@20
push -1
push dword ptr [ebp-16]
call _ASTTYPEINIEND@8
jmp .Lt_01A7
.Lt_01A8:
push 0
push -2147483648
push 1
push dword ptr [ebp-8]
call _CINITIALIZER@16
mov dword ptr [ebp-16], eax
.Lt_01A7:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebx+64], eax
.Lt_01A0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBASEMEMBERACCESS@0:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A9:
mov eax, dword ptr [_PARSER+104]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
jne .Lt_01AC
push 0
push 0
push 294
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_01AA
.Lt_01AC:
.Lt_01AB:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+144]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-16], eax
.Lt_01AD:
cmp dword ptr [ebp-16], 0
jne .Lt_01B1
push 0
push 0
push 295
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_01AA
.Lt_01B1:
.Lt_01B0:
push 2112
call _LEXSKIPTOKEN@4
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 353
je .Lt_01B3
jmp .Lt_01AE
.Lt_01B3:
.Lt_01B2:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 46
je .Lt_01B5
push 0
push 0
push 120
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_01AA
.Lt_01B5:
.Lt_01B4:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-16], eax
.Lt_01AF:
jmp .Lt_01AD
.Lt_01AE:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 2048
push 0
lea eax, [ebp-40]
push eax
mov eax, dword ptr [ebp-16]
push dword ptr [eax+32]
call _HASSIGNORCALL@16
mov dword ptr [ebp-4], eax
.Lt_01AA:
mov eax, dword ptr [ebp-4]
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
