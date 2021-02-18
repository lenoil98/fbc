	.intel_syntax noprefix

.section .text
.balign 16

.globl CBYDESCARRAYARGPARENS
CBYDESCARRAYARGPARENS:
.type CBYDESCARRAYARGPARENS, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-4], -1
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .Lt_006B
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 41
jne .Lt_006D
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
je .Lt_006F
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call SYMBISARRAY
add esp, 16
test eax, eax
je .Lt_0071
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], 3
.Lt_0071:
.Lt_0070:
.Lt_006F:
.Lt_006E:
.Lt_006D:
.Lt_006C:
.Lt_006B:
.Lt_006A:
.Lt_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CBYDESCARRAYARGPARENS, .-CBYDESCARRAYARGPARENS
.balign 16

.globl CASSIGNFUNCTRESULT
CASSIGNFUNCTRESULT:
.type CASSIGNFUNCTRESULT, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_0072:
mov dword ptr [ebp-4], 0
sub esp, 12
push dword ptr [PARSER+104]
call SYMBGETPROCRESULT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0075
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_0075:
.Lt_0074:
sub esp, 12
push dword ptr [PARSER+104]
call SYMBHASCTOR
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [PARSER+104]
call SYMBHASDEFCTOR
add esp, 16
mov dword ptr [ebp-28], eax
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp+8], 0
je .Lt_0077
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+48]
and ebx, 2
test ebx, ebx
je .Lt_0079
mov ebx, dword ptr [ebp-36]
not ebx
and ebx, dword ptr [ebp-28]
je .Lt_007B
sub esp, 4
push 0
push 0
push 178
call ERRREPORT
add esp, 16
.Lt_007B:
.Lt_007A:
.Lt_0079:
.Lt_0078:
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+112]
or dword ptr [eax+48], 1
jmp .Lt_0076
.Lt_0077:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+48]
and eax, 1
test eax, eax
je .Lt_007D
mov eax, dword ptr [ebp-36]
not eax
and eax, dword ptr [ebp-28]
je .Lt_007F
sub esp, 4
push 0
push 0
push 179
call ERRREPORT
add esp, 16
.Lt_007F:
.Lt_007E:
.Lt_007D:
.Lt_007C:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+112]
or dword ptr [ebx+48], 2
.Lt_0076:
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+32]
mov dword ptr [PARSER+156], eax
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [PARSER+152], ebx
sub esp, 8
push 0
push 319
call HMATCH
add esp, 16
not eax
and eax, dword ptr [ebp-36]
je .Lt_0081
sub esp, 12
push 4
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_0083
sub esp, 12
push dword ptr [ebp-16]
call ASTISACCESSTOLOCAL
add esp, 16
test eax, eax
je .Lt_0085
sub esp, 4
push 0
push 0
push 272
call ERRREPORT
add esp, 16
.Lt_0085:
.Lt_0084:
sub esp, 4
push dword ptr [ebp-16]
mov eax, dword ptr [PARSER+104]
push dword ptr [eax+32]
mov eax, dword ptr [PARSER+104]
push dword ptr [eax+28]
call ASTCHECKBYREFASSIGN
add esp, 16
test eax, eax
je .Lt_0087
sub esp, 12
push dword ptr [ebp-16]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-16], eax
jmp .Lt_0086
.Lt_0087:
sub esp, 4
push 0
push 0
push 318
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call ASTDELTREE
add esp, 16
sub esp, 8
mov eax, dword ptr [PARSER+104]
push dword ptr [eax+32]
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov eax, dword ptr [PARSER+104]
mov ecx, dword ptr [eax+28]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [PARSER+104]
mov eax, dword ptr [ecx+28]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [PARSER+104]
mov ecx, dword ptr [eax+28]
and ecx, 32505856
or ebx, ecx
push ebx
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_0086:
.Lt_0083:
.Lt_0082:
jmp .Lt_0080
.Lt_0081:
call CEXPRESSION
mov dword ptr [ebp-16], eax
.Lt_0080:
mov dword ptr [PARSER+156], 0
mov dword ptr [PARSER+152], -2147483648
cmp dword ptr [ebp-16], 0
jne .Lt_0089
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_0089:
.Lt_0088:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp-36]
not eax
and eax, dword ptr [ebp+8]
je .Lt_008B
cmp dword ptr [ebp-24], 0
je .Lt_008D
lea eax, [ebp-40]
push eax
sub esp, 8
push dword ptr [ebp-16]
call CBYDESCARRAYARGPARENS
add esp, 12
push eax
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTBUILDIMPLICITCTORCALLEX
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_008F
jmp .Lt_0073
.Lt_008F:
.Lt_008E:
cmp dword ptr [ebp-40], 0
je .Lt_0091
sub esp, 12
sub esp, 12
push dword ptr [ebp-8]
push dword ptr [PARSER+104]
call ASTBUILDPROCRESULTVAR
add esp, 8
push eax
push dword ptr [ebp-16]
call ASTPATCHCTORCALL
add esp, 20
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_0091:
.Lt_0090:
.Lt_008D:
.Lt_008C:
mov dword ptr [ebp-32], 64
.Lt_008B:
.Lt_008A:
sub esp, 4
push dword ptr [ebp-32]
push dword ptr [ebp-16]
sub esp, 12
push dword ptr [ebp-8]
push dword ptr [PARSER+104]
call ASTBUILDPROCRESULTVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0093
sub esp, 12
push dword ptr [ebp-16]
call ASTDELTREE
add esp, 16
sub esp, 4
push 0
push 0
push 181
call ERRREPORT
add esp, 16
jmp .Lt_0092
.Lt_0093:
sub esp, 12
push dword ptr [ebp-20]
call ASTADD
add esp, 16
.Lt_0092:
mov dword ptr [ebp-4], -1
.Lt_0073:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CASSIGNFUNCTRESULT, .-CASSIGNFUNCTRESULT
.balign 16

.globl HMETHODCALLADDINSTPTROVLARG
HMETHODCALLADDINSTPTROVLARG:
.type HMETHODCALLADDINSTPTROVLARG, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0095:
cmp dword ptr [ebp+12], 0
jne .Lt_0098
jmp .Lt_0096
.Lt_0098:
.Lt_0097:
sub esp, 4
push 0
push dword ptr [ebp+16]
lea eax, [PARSER+112]
push eax
call SYMBALLOCOVLCALLARG
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
cmp dword ptr [eax+8], ebx
je .Lt_009A
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+12], eax
.Lt_009A:
.Lt_0099:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
jne .Lt_009B
mov dword ptr [ebp-12], 1
jmp .Lt_009D
.Lt_009B:
mov dword ptr [ebp-12], -1
.Lt_009D:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+20]
or dword ptr [eax], 64
.Lt_0096:
pop ebx
mov esp, ebp
pop ebp
ret
.size HMETHODCALLADDINSTPTROVLARG, .-HMETHODCALLADDINSTPTROVLARG
.balign 16

.globl CMAYBEIGNORECALLRESULT
CMAYBEIGNORECALLRESULT:
.type CMAYBEIGNORECALLRESULT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A9:
sub esp, 12
push dword ptr [ebp+8]
call ASTSKIPCASTS
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 9
jne .Lt_00AC
sub esp, 12
push dword ptr [ebp+8]
call ASTREMOVECASTS
add esp, 4
push eax
call ASTIGNORECALLRESULT
add esp, 4
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_00AB
.Lt_00AC:
sub esp, 12
push dword ptr [ebp-8]
call ASTISBYREFRESULTDEREF
add esp, 16
mov ebx, eax
call HLOOKSLIKEENDOFSTATEMENT
and ebx, eax
je .Lt_00AD
sub esp, 12
push dword ptr [ebp+8]
call ASTREMOVECASTS
add esp, 4
push eax
call ASTREMOVEBYREFRESULTDEREF
add esp, 4
push eax
call ASTIGNORECALLRESULT
add esp, 4
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_00AB
.Lt_00AD:
mov dword ptr [ebp-4], 0
.Lt_00AB:
.Lt_00AA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CMAYBEIGNORECALLRESULT, .-CMAYBEIGNORECALLRESULT
.balign 16

.globl CPROCCALL
CPROCCALL:
.type CPROCCALL, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00AE:
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
call HMETHODCALLADDINSTPTROVLARG
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_00B1
mov dword ptr [ebp-28], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .Lt_00B3
mov dword ptr [ebp-28], -1
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_00B5
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-32], eax
.Lt_00B5:
.Lt_00B4:
sub esp, 4
push 0
lea eax, [ebp-24]
push eax
lea eax, [PARSER+112]
push eax
call SYMBALLOCOVLCALLARG
add esp, 16
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [ebp-32]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-36]
mov dword ptr [ebx+4], -1
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_00B7
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
jmp .Lt_00B6
.Lt_00B7:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00B6:
.Lt_00B3:
.Lt_00B2:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .Lt_00B9
cmp dword ptr [ebp-28], 0
je .Lt_00BB
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+116]
and ebx, 1024
test ebx, ebx
jne .Lt_00BD
sub esp, 4
push 0
push -1
push 197
call ERRREPORT
add esp, 16
jmp .Lt_00AF
.Lt_00BD:
.Lt_00BC:
jmp .Lt_00BA
.Lt_00BB:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+160]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+116]
and eax, 256
test eax, eax
jne .Lt_00BF
sub esp, 4
push 0
push 0
push 195
call ERRREPORT
add esp, 16
jmp .Lt_00AF
.Lt_00BF:
.Lt_00BE:
.Lt_00BA:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], -1
jmp .Lt_00B8
.Lt_00B9:
or dword ptr [ebp+28], 128
cmp dword ptr [ebp-28], 0
je .Lt_00C1
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+116]
and ebx, 512
test ebx, ebx
jne .Lt_00C3
sub esp, 4
push 0
push -1
push 196
call ERRREPORT
add esp, 16
jmp .Lt_00AF
.Lt_00C3:
.Lt_00C2:
jmp .Lt_00C0
.Lt_00C1:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+160]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+116]
and eax, 128
test eax, eax
jne .Lt_00C5
sub esp, 4
push 0
push 0
push 194
call ERRREPORT
add esp, 16
jmp .Lt_00AF
.Lt_00C5:
.Lt_00C4:
.Lt_00C0:
.Lt_00B8:
mov dword ptr [ebp+24], 0
jmp .Lt_00B0
.Lt_00B1:
cmp dword ptr [ebp+24], -1
jne .Lt_00C7
mov eax, dword ptr [ebp+12]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jne .Lt_00C9
mov dword ptr [ebp+24], 0
.Lt_00C9:
.Lt_00C8:
jmp .Lt_00C6
.Lt_00C7:
cmp dword ptr [ebp+16], 0
je .Lt_00CA
mov dword ptr [ebp+24], -1
.Lt_00CA:
.Lt_00C6:
.Lt_00B0:
cmp dword ptr [ebp+24], 0
je .Lt_00CC
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00CE
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
.Lt_00CE:
.Lt_00CD:
.Lt_00CC:
.Lt_00CB:
mov dword ptr [PARSER+144], 0
mov eax, dword ptr [ebp+24]
not eax
test eax, eax
je .Lt_00D0
or dword ptr [PARSER+148], 1
jmp .Lt_00CF
.Lt_00D0:
and dword ptr [PARSER+148], -2
.Lt_00CF:
sub esp, 12
push dword ptr [ebp+28]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCARGLIST
add esp, 32
mov dword ptr [ebp-12], eax
mov eax, dword ptr [PARSER+144]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp+24]
je .Lt_00D2
dec dword ptr [PARSER+144]
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00D4
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
jmp .Lt_00D3
.Lt_00D4:
cmp dword ptr [PARSER+144], 0
jle .Lt_00D5
.Lt_00D6:
cmp dword ptr [PARSER+144], 0
jle .Lt_00D7
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
dec dword ptr [PARSER+144]
jmp .Lt_00D6
.Lt_00D7:
.Lt_00D5:
.Lt_00D3:
.Lt_00D2:
.Lt_00D1:
jmp .Lt_00D9
or dword ptr [PARSER+148], 1
jmp .Lt_00D8
.Lt_00D9:
and dword ptr [PARSER+148], -2
.Lt_00D8:
cmp dword ptr [ebp-8], 0
jne .Lt_00DB
sub esp, 12
push dword ptr [ebp-12]
call ASTBUILDBYREFRESULTDEREF
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
push dword ptr [ebp-12]
call CSTRIDXORMEMBERDEREF
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00DD
jmp .Lt_00AF
.Lt_00DD:
.Lt_00DC:
.Lt_00DB:
.Lt_00DA:
sub esp, 12
push dword ptr [ebp-12]
call CMAYBEIGNORECALLRESULT
add esp, 16
test eax, eax
je .Lt_00DF
mov dword ptr [ebp-4], 0
jmp .Lt_00DE
.Lt_00DF:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_00DE:
.Lt_00AF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CPROCCALL, .-CPROCCALL
.balign 16

.globl CPROCCALLORASSIGN
CPROCCALLORASSIGN:
.type CPROCCALLORASSIGN, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0162:
mov dword ptr [ebp-4], 0
cmp dword ptr [ENV+136], 3
jne .Lt_0165
call HPROCCALLORASSIGN_QB
mov dword ptr [ebp-4], eax
jmp .Lt_0163
.Lt_0165:
.Lt_0164:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-20], eax
jmp .Lt_0167
.Lt_0169:
sub esp, 8
push 50
lea eax, [ebp-12]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HASSIGNORCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0163
jmp .Lt_0166
.Lt_016A:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_016C
.Lt_016E:
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
jne .Lt_0170
sub esp, 4
push 0
push 0
push 254
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0163
.Lt_0170:
.Lt_016F:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .Lt_0172
sub esp, 4
push 0
push 0
push 157
call ERRREPORT
add esp, 16
jmp .Lt_0171
.Lt_0172:
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+8]
and eax, 32
test eax, eax
je .Lt_0173
sub esp, 4
push 0
push 0
push 192
call ERRREPORT
add esp, 16
.Lt_0173:
.Lt_0171:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CASSIGNFUNCTRESULT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0163
jmp .Lt_016B
.Lt_0174:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
jne .Lt_0176
sub esp, 4
push 0
push 0
push 144
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0163
.Lt_0176:
.Lt_0175:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CASSIGNFUNCTRESULT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0163
jmp .Lt_016B
.Lt_0177:
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
jne .Lt_0179
sub esp, 4
push 0
push 0
push 193
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0163
jmp .Lt_0178
.Lt_0179:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
jne .Lt_017B
sub esp, 4
push 0
push 0
push 193
call ERRREPORT
add esp, 16
.Lt_017B:
.Lt_017A:
.Lt_0178:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CASSIGNFUNCTRESULT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0163
jmp .Lt_016B
.Lt_017C:
call HCTORCHAIN
mov dword ptr [ebp-4], -1
jmp .Lt_0163
jmp .Lt_016B
.Lt_017D:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
jne .Lt_017F
call HBASEMEMBERACCESS
mov dword ptr [ebp-4], eax
jmp .Lt_0163
jmp .Lt_017E
.Lt_017F:
call HBASEINIT
mov dword ptr [ebp-4], -1
jmp .Lt_0163
.Lt_017E:
jmp .Lt_016B
.Lt_0180:
mov eax, dword ptr [ENV+888]
and eax, 131072
test eax, eax
jne .Lt_0182
sub esp, 4
push 0
push 146
push 131072
call ERRREPORTNOTALLOWED
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0163
.Lt_0182:
.Lt_0181:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0184
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0163
.Lt_0184:
.Lt_0183:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 34
lea eax, [ebp-12]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0186
push 0
push -1
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HASSIGNORCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0163
.Lt_0186:
.Lt_0185:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0163
jmp .Lt_016B
.Lt_016C:
mov eax, dword ptr [ebp-24]
add eax, 4294966950
cmp eax, 47
ja .Lt_016B
mov eax, dword ptr [ebp-24]
jmp dword ptr [.LT_0187+eax*4-1384]
.LT_0187:
.int .Lt_016E
.int .Lt_017C
.int .Lt_016B
.int .Lt_0174
.int .Lt_0177
.int .Lt_016B
.int .Lt_016B
.int .Lt_017D
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_016B
.int .Lt_0180
.Lt_016B:
jmp .Lt_0166
.Lt_0188:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 388
jne .Lt_018A
call COPERATORDELETE
mov dword ptr [ebp-4], -1
jmp .Lt_0163
.Lt_018A:
.Lt_0189:
jmp .Lt_0166
.Lt_018B:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .Lt_018D
cmp dword ptr [PARSER+52], 0
je .Lt_018F
sub esp, 8
push 64
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
je .Lt_0191
sub esp, 12
mov eax, dword ptr [PARSER+148]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
call CWITHVARIABLE
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0193
jmp .Lt_0163
.Lt_0193:
.Lt_0192:
sub esp, 12
push dword ptr [ebp-16]
call CASSIGNMENTORPTRCALLEX
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0163
.Lt_0191:
.Lt_0190:
.Lt_018F:
.Lt_018E:
sub esp, 8
push 50
lea eax, [ebp-12]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0195
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HASSIGNORCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0163
.Lt_0195:
.Lt_0194:
.Lt_018D:
.Lt_018C:
jmp .Lt_0166
.Lt_0167:
cmp dword ptr [ebp-20], 6
ja .Lt_0166
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_0196+eax*4]
.LT_0196:
.int .Lt_0169
.int .Lt_016A
.int .Lt_0169
.int .Lt_0166
.int .Lt_0166
.int .Lt_0188
.int .Lt_018B
.Lt_0166:
.Lt_0163:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CPROCCALLORASSIGN, .-CPROCCALLORASSIGN
.balign 16

.globl HFORWARDCALL
HFORWARDCALL:
.type HFORWARDCALL, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B5:
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .Lt_01B9
.Lt_01BA:
mov eax, dword ptr [ENV+888]
and eax, 524288
test eax, eax
je .Lt_01BC
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .Lt_01BE
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .Lt_01C0
sub esp, 4
push 0
push 0
push 90
call ERRREPORT
add esp, 16
.Lt_01C0:
.Lt_01BF:
.Lt_01BE:
.Lt_01BD:
.Lt_01BC:
.Lt_01BB:
jmp .Lt_01B7
.Lt_01B9:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 40
call HSKIPUNTIL
add esp, 16
jmp .Lt_01B6
.Lt_01C1:
.Lt_01B7:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], -2147483648
je .Lt_01C3
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.Lt_01C3:
.Lt_01C2:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .Lt_01C5
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-24], -1
.Lt_01C5:
.Lt_01C4:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
.Lt_01C6:
call CEXPRESSION
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .Lt_01CA
jmp .Lt_01C7
.Lt_01CA:
.Lt_01C9:
mov dword ptr [ebp-44], 2
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .Lt_01CC
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 41
jne .Lt_01CE
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-44], 3
.Lt_01CE:
.Lt_01CD:
.Lt_01CC:
.Lt_01CB:
mov dword ptr [ebp-48], 0
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-60], ebx
cmp dword ptr [ebp-60], 17
je .Lt_01D2
.Lt_01D3:
cmp dword ptr [ebp-60], 18
je .Lt_01D2
.Lt_01D4:
cmp dword ptr [ebp-60], 4
je .Lt_01D2
.Lt_01D5:
cmp dword ptr [ebp-60], 7
jne .Lt_01D1
.Lt_01D2:
mov dword ptr [ebp-48], 17
.Lt_01D1:
.Lt_01CF:
push 0
push 0
push dword ptr [ebp-44]
cmp dword ptr [ebp-44], 3
jne .Lt_01D6
mov dword ptr [ebp-52], -1
jmp .Lt_01E2
.Lt_01D6:
mov dword ptr [ebp-52], 0
.Lt_01E2:
push dword ptr [ebp-52]
push 0
push dword ptr [ebp-48]
push 0
push dword ptr [ebp-20]
call SYMBADDPROCPARAM
add esp, 32
test eax, eax
jne .Lt_01D9
jmp .Lt_01C7
.Lt_01D9:
.Lt_01D8:
sub esp, 4
push 0
lea eax, [ebp-36]
push eax
lea eax, [PARSER+112]
push eax
call SYMBALLOCOVLCALLARG
add esp, 16
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [ebp-40]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebx+4], -1
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_01DB
jmp .Lt_01C7
.Lt_01DB:
.Lt_01DA:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_01C8:
jmp .Lt_01C6
.Lt_01C7:
cmp dword ptr [ebp-24], 0
je .Lt_01DD
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_01DF
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
jmp .Lt_01DE
.Lt_01DF:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_01DE:
.Lt_01DD:
.Lt_01DC:
sub esp, 12
push 0
push dword ptr [ENV+252]
push 0
push 0
push 0
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call SYMBADDPROC
add esp, 48
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_01E1
sub esp, 4
push 0
push -1
push 4
call ERRREPORT
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_01B6
.Lt_01E1:
.Lt_01E0:
sub esp, 12
push 32
lea eax, [ebp-36]
push eax
push 0
push dword ptr [ebp-20]
push 0
call CPROCARGLIST
add esp, 20
push eax
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_01B6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HFORWARDCALL, .-HFORWARDCALL
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
HLOOKSLIKEENDOFSTATEMENT:
.type HLOOKSLIKEENDOFSTATEMENT, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_009E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 258
je .Lt_00A3
.Lt_00A4:
cmp dword ptr [ebp-8], 257
je .Lt_00A3
.Lt_00A5:
cmp dword ptr [ebp-8], 256
je .Lt_00A3
.Lt_00A6:
cmp dword ptr [ebp-8], 259
je .Lt_00A3
.Lt_00A7:
cmp dword ptr [ebp-8], 260
jne .Lt_00A2
.Lt_00A3:
mov dword ptr [ebp-4], -1
jmp .Lt_00A0
.Lt_00A2:
mov dword ptr [ebp-4], 0
.Lt_00A8:
.Lt_00A0:
.Lt_009F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HLOOKSLIKEENDOFSTATEMENT, .-HLOOKSLIKEENDOFSTATEMENT
.balign 16
HPROCSYMBOL:
.type HPROCSYMBOL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E1:
mov dword ptr [ebp-4], 0
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_00E4
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_00E2
.Lt_00E4:
.Lt_00E3:
sub esp, 12
push 4096
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HISASSIGNTOKEN
add esp, 16
not eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00E6
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_00E8
mov dword ptr [ebp-8], -1
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+8]
and eax, 32
test eax, eax
je .Lt_00EA
mov eax, dword ptr [PARSER+104]
movsx ebx, word ptr [eax+68]
cmp ebx, 1
jne .Lt_00EC
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [PARSER+104]
call SYMBISPROCOVERLOADOF
add esp, 16
test eax, eax
je .Lt_00EE
mov dword ptr [ebp-8], 0
.Lt_00EE:
.Lt_00ED:
.Lt_00EC:
.Lt_00EB:
.Lt_00EA:
.Lt_00E9:
.Lt_00E8:
.Lt_00E7:
.Lt_00E6:
.Lt_00E5:
cmp dword ptr [ebp-8], 0
je .Lt_00F0
sub esp, 8
push dword ptr [ebp+20]
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCCALL
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_00F2
sub esp, 12
push dword ptr [ebp-12]
call CASSIGNMENT
add esp, 16
.Lt_00F2:
.Lt_00F1:
mov dword ptr [ebp-4], -1
jmp .Lt_00E2
.Lt_00F0:
.Lt_00EF:
cmp dword ptr [ebp+16], 0
je .Lt_00F4
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_00E2
.Lt_00F4:
.Lt_00F3:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [PARSER+104]
call SYMBISPROCOVERLOADOF
add esp, 16
test eax, eax
jne .Lt_00F6
sub esp, 4
push 0
push 0
push 317
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_00E2
.Lt_00F6:
.Lt_00F5:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call CASSIGNFUNCTRESULT
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HPROCSYMBOL, .-HPROCSYMBOL
.balign 16
HVARSYMBOL:
.type HVARSYMBOL, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00F7:
mov dword ptr [ebp-4], 0
sub esp, 8
push -1
push dword ptr [ebp+8]
call _Z11CVARIABLEEXP8FBSYMBOLl
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00FA
jmp .Lt_00F8
.Lt_00FA:
.Lt_00F9:
cmp dword ptr [ebp+12], 0
je .Lt_00FC
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 9
je .Lt_00FE
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_00F8
.Lt_00FE:
.Lt_00FD:
.Lt_00FC:
.Lt_00FB:
sub esp, 12
push dword ptr [ebp-8]
call CASSIGNMENTORPTRCALLEX
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00F8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HVARSYMBOL, .-HVARSYMBOL
.balign 16
HMATCHESDEFDTYPE:
.type HMATCHESDEFDTYPE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FF:
cmp dword ptr [ebp+12], 17
jne .Lt_0102
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
je .Lt_0106
.Lt_0107:
cmp dword ptr [ebp-8], 18
je .Lt_0106
.Lt_0108:
cmp dword ptr [ebp-8], 4
jne .Lt_0105
.Lt_0106:
mov dword ptr [ebp-4], -1
jmp .Lt_0103
.Lt_0105:
mov dword ptr [ebp-4], 0
.Lt_0109:
.Lt_0103:
jmp .Lt_0101
.Lt_0102:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, dword ptr [ebp+12]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0101:
.Lt_0100:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HMATCHESDEFDTYPE, .-HMATCHESDEFDTYPE
.balign 16
HASSIGNORCALL_QB:
.type HASSIGNORCALL_QB, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_010A:
mov dword ptr [ebp-4], 0
call LEXGETTEXT
mov dword ptr [ebp-8], eax
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
sub esp, 12
push dword ptr [ebp-8]
call SYMBGETDEFTYPE
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_010C:
cmp dword ptr [ebp+8], 0
je .Lt_010D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-12], -2147483648
jne .Lt_010F
.Lt_0110:
mov dword ptr [ebp-28], -1
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_0114
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 1
jne .Lt_0116
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call HMATCHESDEFDTYPE
add esp, 16
mov dword ptr [ebp-28], eax
.Lt_0116:
.Lt_0115:
.Lt_0114:
.Lt_0113:
cmp dword ptr [ebp-28], 0
je .Lt_0118
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
jmp .Lt_011A
.Lt_011C:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+12]
and eax, 32
test eax, eax
je .Lt_011E
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
.Lt_011E:
.Lt_011D:
cmp dword ptr [ebp-28], 0
je .Lt_0120
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push 0
call HPROCSYMBOL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_010B
.Lt_0120:
.Lt_011F:
jmp .Lt_0119
.Lt_0121:
cmp dword ptr [ebp-24], 0
jne .Lt_0123
sub esp, 12
push dword ptr [ebp-20]
call SYMBVARCHECKACCESS
add esp, 16
test eax, eax
je .Lt_0125
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.Lt_0125:
.Lt_0124:
.Lt_0123:
.Lt_0122:
jmp .Lt_0119
.Lt_0126:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
jne .Lt_0128
sub esp, 12
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+56]
call CQUIRKSTMT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_010B
.Lt_0128:
.Lt_0127:
jmp .Lt_0119
.Lt_011A:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 5
ja .Lt_0119
mov eax, dword ptr [ebp-32]
jmp dword ptr [.LT_0129+eax*4-4]
.LT_0129:
.int .Lt_0121
.int .Lt_0119
.int .Lt_011C
.int .Lt_0119
.int .Lt_0119
.int .Lt_0126
.Lt_0119:
.Lt_0118:
.Lt_0117:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-20], ebx
.Lt_0112:
cmp dword ptr [ebp-20], 0
jne .Lt_0110
.Lt_0111:
jmp .Lt_010E
.Lt_010F:
.Lt_012A:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-20]
call HMATCHESDEFDTYPE
add esp, 16
test eax, eax
je .Lt_012E
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
jmp .Lt_0130
.Lt_0132:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push 0
call HPROCSYMBOL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_010B
jmp .Lt_012F
.Lt_0133:
cmp dword ptr [ebp-24], 0
jne .Lt_0135
sub esp, 12
push dword ptr [ebp-20]
call SYMBVARCHECKACCESS
add esp, 16
test eax, eax
je .Lt_0137
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.Lt_0137:
.Lt_0136:
.Lt_0135:
.Lt_0134:
jmp .Lt_012F
.Lt_0138:
sub esp, 12
mov eax, dword ptr [ebp-20]
push dword ptr [eax+56]
call CQUIRKSTMT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_010B
jmp .Lt_012F
.Lt_0130:
mov eax, dword ptr [ebp-28]
add eax, 4294967295
cmp eax, 5
ja .Lt_012F
mov eax, dword ptr [ebp-28]
jmp dword ptr [.LT_0139+eax*4-4]
.LT_0139:
.int .Lt_0133
.int .Lt_012F
.int .Lt_0132
.int .Lt_012F
.int .Lt_012F
.int .Lt_0138
.Lt_012F:
.Lt_012E:
.Lt_012D:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-20], ebx
.Lt_012C:
cmp dword ptr [ebp-20], 0
jne .Lt_012A
.Lt_012B:
.Lt_010E:
cmp dword ptr [ebp-24], 0
je .Lt_013B
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-24]
call HVARSYMBOL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_010B
.Lt_013B:
.Lt_013A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+8], ebx
jmp .Lt_010C
.Lt_010D:
.Lt_010B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HASSIGNORCALL_QB, .-HASSIGNORCALL_QB
.balign 16
HASSIGNORPTRCALL:
.type HASSIGNORPTRCALL, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_013C:
cmp dword ptr [ebp+8], 0
jne .Lt_013F
jmp .Lt_013D
.Lt_013F:
.Lt_013E:
cmp dword ptr [ebp+12], 0
je .Lt_0141
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
je .Lt_0143
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_013D
.Lt_0143:
.Lt_0142:
.Lt_0141:
.Lt_0140:
sub esp, 12
push dword ptr [ebp+8]
call CASSIGNMENTORPTRCALLEX
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_013D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HASSIGNORPTRCALL, .-HASSIGNORPTRCALL
.balign 16
HASSIGNORCALL:
.type HASSIGNORCALL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0144:
mov dword ptr [ebp-4], 0
.Lt_0146:
cmp dword ptr [ebp+12], 0
je .Lt_0147
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_0148:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .Lt_014C
.Lt_014E:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPROCSYMBOL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0145
jmp .Lt_014B
.Lt_014F:
sub esp, 8
push dword ptr [ebp+16]
sub esp, 12
push -1
push dword ptr [ebp+12]
call _Z11CVARIABLEEXP10FBSYMCHAINl
add esp, 20
push eax
call HASSIGNORPTRCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0145
jmp .Lt_014B
.Lt_0150:
sub esp, 8
push dword ptr [ebp+16]
sub esp, 4
push dword ptr [ebp+20]
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CIMPLICITDATAMEMBER
add esp, 20
push eax
call HASSIGNORPTRCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0145
jmp .Lt_014B
.Lt_0151:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call CCONSTANT
add esp, 4
push eax
call HASSIGNORPTRCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0145
jmp .Lt_014B
.Lt_0152:
sub esp, 12
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call CQUIRKSTMT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0145
jmp .Lt_014B
.Lt_014C:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 11
ja .Lt_014B
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_0153+eax*4-4]
.LT_0153:
.int .Lt_014F
.int .Lt_0151
.int .Lt_014E
.int .Lt_014B
.int .Lt_014B
.int .Lt_0152
.int .Lt_014B
.int .Lt_014B
.int .Lt_014B
.int .Lt_014B
.int .Lt_014B
.int .Lt_0150
.Lt_014B:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
.Lt_014A:
cmp dword ptr [ebp-8], 0
jne .Lt_0148
.Lt_0149:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+12], eax
jmp .Lt_0146
.Lt_0147:
.Lt_0145:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HASSIGNORCALL, .-HASSIGNORCALL
.balign 16
HPROCCALLORASSIGN_QB:
.type HPROCCALLORASSIGN_QB, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0154:
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0157
.Lt_0159:
sub esp, 8
push 0
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4116]
call HASSIGNORCALL_QB
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0155
jmp .Lt_0156
.Lt_015A:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 393
je .Lt_015C
sub esp, 8
push 0
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4116]
call HASSIGNORCALL_QB
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0155
.Lt_015C:
.Lt_015B:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_015E
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0155
.Lt_015E:
.Lt_015D:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4116], 0
jne .Lt_0160
call HFORWARDCALL
mov dword ptr [ebp-4], eax
jmp .Lt_0155
jmp .Lt_015F
.Lt_0160:
sub esp, 8
push -1
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4116]
call HASSIGNORCALL_QB
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0155
.Lt_015F:
jmp .Lt_0156
.Lt_0157:
cmp dword ptr [ebp-8], 5
ja .Lt_0156
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0161+eax*4]
.LT_0161:
.int .Lt_0159
.int .Lt_015A
.int .Lt_0159
.int .Lt_0156
.int .Lt_0156
.int .Lt_0159
.Lt_0156:
.Lt_0155:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HPROCCALLORASSIGN_QB, .-HPROCCALLORASSIGN_QB
.balign 16
HCTORCHAIN:
.type HCTORCHAIN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0198:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
jne .Lt_019B
sub esp, 4
push 0
push 0
push 165
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0199
.Lt_019B:
.Lt_019A:
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
sub esp, 12
push dword ptr [AST+40]
call ASTFINDFIRSTCODE
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [PARSER+104]
mov ecx, dword ptr [eax+112]
cmp dword ptr [ecx+64], 0
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_019D
sub esp, 4
push 0
push 0
push 169
call ERRREPORT
add esp, 16
.Lt_019D:
.Lt_019C:
mov eax, dword ptr [PARSER+104]
or dword ptr [eax+12], 4
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 0
push 0
push 0
push 0
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+76]
push dword ptr [ebx+60]
call ASTBUILDVARFIELD
add esp, 16
push eax
push 0
sub esp, 4
push dword ptr [ebp-8]
call SYMBGETCOMPCTORHEAD
add esp, 8
push eax
push 0
call CPROCCALL
add esp, 32
.Lt_0199:
pop ebx
mov esp, ebp
pop ebp
ret
.size HCTORCHAIN, .-HCTORCHAIN
.balign 16
HBASEINIT:
.type HBASEINIT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_019E:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
jne .Lt_01A1
sub esp, 4
push 0
push 0
push 165
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_019F
.Lt_01A1:
.Lt_01A0:
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01A3
sub esp, 4
push 0
push 0
push 295
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_019F
.Lt_01A3:
.Lt_01A2:
sub esp, 12
push dword ptr [AST+40]
call ASTFINDFIRSTCODE
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [PARSER+104]
mov ecx, dword ptr [eax+112]
cmp dword ptr [ecx+64], 0
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_01A5
sub esp, 4
push 0
push 0
push 170
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_019F
.Lt_01A5:
.Lt_01A4:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
sub esp, 12
push dword ptr [ebp-12]
call SYMBGETCOMPCTORHEAD
add esp, 16
test eax, eax
je .Lt_01A7
sub esp, 12
push dword ptr [ebp-12]
call CCTORCALL
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 12
push dword ptr [ebp-20]
call ASTCALLCTORTOCALL
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 12
push 0
push 0
push -1
push dword ptr [ebp-12]
push 20
call ASTTYPEINIBEGIN
add esp, 32
mov dword ptr [ebp-16], eax
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-20]
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call ASTTYPEINIADDCTORCALL
add esp, 32
sub esp, 8
push -1
push dword ptr [ebp-16]
call ASTTYPEINIEND
add esp, 16
jmp .Lt_01A6
.Lt_01A7:
push 0
push -2147483648
push 1
push dword ptr [ebp-8]
call CINITIALIZER
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_01A6:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-16]
mov dword ptr [ebx+64], eax
.Lt_019F:
pop ebx
mov esp, ebp
pop ebp
ret
.size HBASEINIT, .-HBASEINIT
.balign 16
HBASEMEMBERACCESS:
.type HBASEMEMBERACCESS, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A8:
mov eax, dword ptr [PARSER+104]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
jne .Lt_01AB
sub esp, 4
push 0
push 0
push 294
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_01A9
.Lt_01AB:
.Lt_01AA:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-16], eax
.Lt_01AC:
cmp dword ptr [ebp-16], 0
jne .Lt_01B0
sub esp, 4
push 0
push 0
push 295
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_01A9
.Lt_01B0:
.Lt_01AF:
sub esp, 12
push 2112
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 353
je .Lt_01B2
jmp .Lt_01AD
.Lt_01B2:
.Lt_01B1:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
je .Lt_01B4
sub esp, 4
push 0
push 0
push 120
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_01A9
.Lt_01B4:
.Lt_01B3:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-16], eax
.Lt_01AE:
jmp .Lt_01AC
.Lt_01AD:
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
call HASSIGNORCALL
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_01A9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HBASEMEMBERACCESS, .-HBASEMEMBERACCESS

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
