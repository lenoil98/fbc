	.intel_syntax noprefix

.section .text
.balign 16

.globl CNEGNOTEXPRESSION
CNEGNOTEXPRESSION:
.type CNEGNOTEXPRESSION, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_006D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 45
jne .Lt_0071
.Lt_0072:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
call CEXPEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0074
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
mov dword ptr [ebp-8], eax
jmp .Lt_0073
.Lt_0074:
sub esp, 8
push dword ptr [ebp-8]
push 54
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0073:
cmp dword ptr [ebp-8], 0
jne .Lt_0076
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0076:
.Lt_0075:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_006E
jmp .Lt_006F
.Lt_0071:
cmp dword ptr [ebp-12], 43
jne .Lt_0077
.Lt_0078:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
call CEXPEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_007A
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
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_007A:
sub esp, 8
push dword ptr [ebp-8]
push 53
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0079:
cmp dword ptr [ebp-8], 0
jne .Lt_007C
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_007C:
.Lt_007B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_006E
jmp .Lt_006F
.Lt_0077:
cmp dword ptr [ebp-12], 295
jne .Lt_007D
.Lt_007E:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CRELEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0080
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
mov dword ptr [ebp-8], eax
jmp .Lt_007F
.Lt_0080:
sub esp, 8
push dword ptr [ebp-8]
push 52
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_007F:
cmp dword ptr [ebp-8], 0
jne .Lt_0082
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0082:
.Lt_0081:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_006E
.Lt_007D:
.Lt_006F:
sub esp, 8
push 0
push 0
call CHIGHESTPRECEXPR
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_006E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CNEGNOTEXPRESSION, .-CNEGNOTEXPRESSION
.balign 16

.globl CSTRIDXORMEMBERDEREF
CSTRIDXORMEMBERDEREF:
.type CSTRIDXORMEMBERDEREF, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0083:
cmp dword ptr [ebp+8], 0
jne .Lt_0086
jmp .Lt_0084
.Lt_0086:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_0087
mov dword ptr [ebp-16], 24
jmp .Lt_00A5
.Lt_0087:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00A5:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .Lt_008A
.Lt_008C:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 91
jne .Lt_008E
push -1
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call CMEMBERDEREF
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_008E:
.Lt_008D:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0084
jmp .Lt_0089
.Lt_008F:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 46
jne .Lt_0092
.Lt_0093:
sub esp, 12
push 64
call LEXSKIPTOKEN
add esp, 16
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call CMEMBERACCESS
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_0095
mov dword ptr [ebp-4], 0
jmp .Lt_0084
.Lt_0095:
.Lt_0094:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
jmp .Lt_0090
.Lt_0092:
cmp dword ptr [ebp-24], 398
je .Lt_0097
.Lt_0098:
cmp dword ptr [ebp-24], 91
jne .Lt_0096
.Lt_0097:
push -1
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call CMEMBERDEREF
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_0096:
.Lt_0090:
jmp .Lt_0089
.Lt_008A:
mov eax, dword ptr [ebp-20]
add eax, 4294967292
cmp eax, 16
ja .Lt_0089
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_0099+eax*4-16]
.LT_0099:
.int .Lt_008C
.int .Lt_0089
.int .Lt_0089
.int .Lt_008C
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_008C
.int .Lt_008C
.int .Lt_0089
.int .Lt_008F
.Lt_0089:
mov eax, dword ptr [ebp-12]
and eax, 480
test eax, eax
je .Lt_009B
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 40
jne .Lt_009E
.Lt_009F:
mov eax, dword ptr [ebp-12]
and eax, 511
cmp eax, 54
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .Lt_009C
.Lt_009E:
cmp dword ptr [ebp-24], 398
je .Lt_00A1
.Lt_00A2:
cmp dword ptr [ebp-24], 91
jne .Lt_00A0
.Lt_00A1:
mov dword ptr [ebp-20], -1
.Lt_00A0:
.Lt_009C:
cmp dword ptr [ebp-20], 0
je .Lt_00A4
sub esp, 12
push -1
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call CFUNCPTRORMEMBERDEREF
add esp, 32
mov dword ptr [ebp+8], eax
.Lt_00A4:
.Lt_00A3:
.Lt_009B:
.Lt_009A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0084:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CSTRIDXORMEMBERDEREF, .-CSTRIDXORMEMBERDEREF
.balign 16

.globl CHIGHESTPRECEXPR
CHIGHESTPRECEXPR:
.type CHIGHESTPRECEXPR, @function
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-4], 0
.Lt_00A7:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 64
jne .Lt_00AB
.Lt_00AC:
call CADDROFEXPRESSION
mov dword ptr [ebp-4], eax
jmp .Lt_00A8
jmp .Lt_00A9
.Lt_00AB:
cmp dword ptr [ebp-12], 42
jne .Lt_00AD
.Lt_00AE:
call CDEREFEXPRESSION
mov dword ptr [ebp-8], eax
jmp .Lt_00A9
.Lt_00AD:
cmp dword ptr [ebp-12], 40
jne .Lt_00AF
.Lt_00B0:
mov eax, dword ptr [PARSER+148]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
call CPARENTEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 0
je .Lt_00B2
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00A8
.Lt_00B2:
.Lt_00B1:
jmp .Lt_00A9
.Lt_00AF:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-16], eax
jmp .Lt_00B5
.Lt_00B7:
call CADDROFEXPRESSION
mov dword ptr [ebp-4], eax
jmp .Lt_00A8
jmp .Lt_00B4
.Lt_00B8:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call HCAST
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00B4
.Lt_00B9:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 4
call HCAST
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00B4
.Lt_00BA:
call COPERATORNEW
mov dword ptr [ebp-8], eax
jmp .Lt_00B4
.Lt_00BB:
mov eax, dword ptr [PARSER+148]
and eax, 1024
test eax, eax
je .Lt_00BD
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 377
jne .Lt_00C0
.Lt_00C1:
sub esp, 12
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
sub esp, 12
call PPTYPEOF
add esp, 12
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call ASTNEWCONSTSTR
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A8
jmp .Lt_00BE
.Lt_00C0:
cmp dword ptr [ebp-20], 315
jne .Lt_00C3
.Lt_00C4:
call HPPDEFINEDEXPR
mov dword ptr [ebp-4], eax
jmp .Lt_00A8
.Lt_00C3:
.Lt_00BE:
.Lt_00BD:
.Lt_00BC:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CATOM
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00A8
jmp .Lt_00B4
.Lt_00B5:
mov eax, dword ptr [ebp-16]
add eax, 4294966909
cmp eax, 28
ja .Lt_00BB
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_00C5+eax*4-1548]
.LT_00C5:
.int .Lt_00BA
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00B9
.int .Lt_00B8
.Lt_00B4:
.Lt_00B3:
.Lt_00A9:
sub esp, 12
push dword ptr [ebp-8]
call CSTRIDXORMEMBERDEREF
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00A8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CHIGHESTPRECEXPR, .-CHIGHESTPRECEXPR
.balign 16

.globl CDEREFEXPRESSION
CDEREFEXPRESSION:
.type CDEREFEXPRESSION, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_00F1:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 42
je .Lt_00F4
mov dword ptr [ebp-4], 0
jmp .Lt_00F2
.Lt_00F4:
.Lt_00F3:
mov dword ptr [ebp-8], 0
.Lt_00F5:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
inc dword ptr [ebp-8]
.Lt_00F7:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 42
je .Lt_00F5
.Lt_00F6:
sub esp, 8
push 0
push 0
call CHIGHESTPRECEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00F9
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
mov dword ptr [ebp-4], eax
jmp .Lt_00F2
.Lt_00F9:
.Lt_00F8:
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTBUILDMULTIDEREF
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00F2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CDEREFEXPRESSION, .-CDEREFEXPRESSION
.balign 16

.globl CADDROFEXPRESSION
CADDROFEXPRESSION:
.type CADDROFEXPRESSION, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0122:
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 64
jne .Lt_0125
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-12], -1
cmp dword ptr [PARSER+52], 0
je .Lt_0127
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .Lt_0129
sub esp, 8
push 64
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.Lt_0129:
.Lt_0128:
.Lt_0127:
.Lt_0126:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-12], 0
je .Lt_012B
sub esp, 8
push 50
lea eax, [ebp-24]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
push 3
push dword ptr [ebp-16]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_012B:
.Lt_012A:
cmp dword ptr [ebp-20], 0
je .Lt_012D
sub esp, 12
push 4096
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call HPROCPTRBODY
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0123
jmp .Lt_012C
.Lt_012D:
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-24]
call HVARPTRBODY
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0123
.Lt_012C:
.Lt_0125:
.Lt_0124:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_012F
.Lt_0131:
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
jne .Lt_0133
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0123
.Lt_0133:
.Lt_0132:
sub esp, 8
push 0
push 0
call HVARPTRBODY
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0135
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
.Lt_0135:
.Lt_0134:
jmp .Lt_012E
.Lt_0136:
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
jne .Lt_0138
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0123
.Lt_0138:
.Lt_0137:
sub esp, 8
push 50
lea eax, [ebp-24]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
push 3
push dword ptr [ebp-16]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_013A
sub esp, 4
push 0
push 0
push 8
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0123
jmp .Lt_0139
.Lt_013A:
sub esp, 12
push 4096
call LEXSKIPTOKEN
add esp, 16
.Lt_0139:
sub esp, 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call HPROCPTRBODY
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .Lt_013C
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
.Lt_013C:
.Lt_013B:
jmp .Lt_012E
.Lt_013D:
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
jne .Lt_013F
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0123
.Lt_013F:
.Lt_013E:
sub esp, 8
push 0
push 0
call CHIGHESTPRECEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0141
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0123
.Lt_0141:
.Lt_0140:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_0142
mov dword ptr [ebp-20], 24
jmp .Lt_015A
.Lt_0142:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_015A:
cmp dword ptr [ebp-20], 20
jne .Lt_0145
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+116]
and ebx, 131072
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+116]
and ecx, 65536
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0147
sub esp, 12
lea ecx, [ebp-8]
push ecx
call ASTTRYOVLSTRINGCONV
add esp, 16
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
.Lt_0147:
.Lt_0146:
.Lt_0145:
.Lt_0144:
sub esp, 12
push dword ptr [ebp-16]
call SYMBISSTRING
add esp, 16
test eax, eax
jne .Lt_0149
sub esp, 4
push 0
push 0
push 24
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
jmp .Lt_0123
.Lt_0149:
.Lt_0148:
sub esp, 12
push dword ptr [ebp-8]
call ASTSKIPNOCONVCAST
add esp, 16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
jmp .Lt_014B
.Lt_014D:
jmp .Lt_014A
.Lt_014E:
sub esp, 12
push 0
push 1
push 0
push offset Lt_014F
push 24
call ERRREPORTEX
add esp, 32
jmp .Lt_014A
.Lt_014B:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967279
cmp ebx, 19
ja .Lt_014E
mov ebx, dword ptr [ebp-28]
jmp dword ptr [.LT_0150+ebx*4-68]
.LT_0150:
.int .Lt_014D
.int .Lt_014D
.int .Lt_014D
.int .Lt_014D
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014D
.Lt_014A:
cmp dword ptr [ebp-16], 17
jne .Lt_0152
.Lt_0153:
sub esp, 12
push dword ptr [ebp-8]
call ASTBUILDSTRPTR
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0151
.Lt_0152:
cmp dword ptr [ebp-16], 7
jne .Lt_0154
.Lt_0155:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp-8]
call ASTNEWADDROF
add esp, 12
push eax
push 0
push 39
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-8], eax
jmp .Lt_0151
.Lt_0154:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp-8]
call ASTNEWADDROF
add esp, 12
push eax
push 0
push 36
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-8], eax
.Lt_0156:
.Lt_0151:
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0158
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
.Lt_0158:
.Lt_0157:
jmp .Lt_012E
.Lt_012F:
mov eax, dword ptr [ebp-12]
add eax, 4294966902
cmp eax, 3
ja .Lt_012E
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_0159+eax*4-1576]
.LT_0159:
.int .Lt_0131
.int .Lt_013D
.int .Lt_0136
.int .Lt_013D
.Lt_012E:
sub esp, 12
push dword ptr [ebp-8]
call CSTRIDXORMEMBERDEREF
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0123:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CADDROFEXPRESSION, .-CADDROFEXPRESSION
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
HPPDEFINEDEXPR:
.type HPPDEFINEDEXPR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
sub esp, 12
push 2050
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_006A
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_0069
.Lt_006A:
sub esp, 12
push 2
call LEXSKIPTOKEN
add esp, 16
.Lt_0069:
sub esp, 8
push 0
lea eax, [ebp-8]
push eax
call CIDENTIFIER
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .Lt_006C
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
.Lt_006C:
.Lt_006B:
push 0
push 8
mov ebx, dword ptr [ebp-12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HPPDEFINEDEXPR, .-HPPDEFINEDEXPR
.balign 16
HCAST:
.type HCAST, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C7:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_00CA
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00C8
.Lt_00CA:
.Lt_00C9:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 1
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-28]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-8]
push eax
call CSYMBOLTYPE
add esp, 32
test eax, eax
jne .Lt_00CE
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_00D0
mov dword ptr [ebp-8], 32
jmp .Lt_00CF
.Lt_00D0:
mov dword ptr [ebp-8], 8
.Lt_00CF:
mov dword ptr [ebp-16], 0
.Lt_00CE:
.Lt_00CD:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_00D1
mov dword ptr [ebp-36], 24
jmp .Lt_015F
.Lt_00D1:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_015F:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-40], eax
jmp .Lt_00D4
.Lt_00D6:
sub esp, 4
push 0
push -1
push 24
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_00D8
mov dword ptr [ebp-8], 32
jmp .Lt_00D7
.Lt_00D8:
mov dword ptr [ebp-8], 8
.Lt_00D7:
mov dword ptr [ebp-16], 0
jmp .Lt_00D3
.Lt_00D9:
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_00DB
mov eax, dword ptr [ENV+196]
and eax, 16
test eax, eax
je .Lt_00DD
push 0
push 1
push 0
push 27
call ERRREPORTWARN
add esp, 16
.Lt_00DD:
.Lt_00DC:
.Lt_00DB:
.Lt_00DA:
jmp .Lt_00D3
.Lt_00DE:
or dword ptr [ebp+8], 4
jmp .Lt_00D3
.Lt_00DF:
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_00E1
push 0
push 1
push 0
push 27
call ERRREPORTWARN
add esp, 16
.Lt_00E1:
.Lt_00E0:
jmp .Lt_00D3
.Lt_00D4:
cmp dword ptr [ebp-40], 24
ja .Lt_00DF
mov eax, dword ptr [ebp-40]
jmp dword ptr [.LT_00E2+eax*4]
.LT_00E2:
.int .Lt_00D6
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00D6
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00DF
.int .Lt_00DE
.Lt_00D3:
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
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00E6
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_00E6:
.Lt_00E5:
or dword ptr [ebp+8], 2
mov eax, dword ptr [ENV+196]
and eax, 64
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+196]
and ebx, 128
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00E8
or dword ptr [ebp+8], 32
.Lt_00E8:
.Lt_00E7:
sub esp, 12
lea ebx, [ebp-12]
push ebx
push dword ptr [ebp+8]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00EA
cmp dword ptr [ebp-12], 0
jne .Lt_00EC
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_00EE
mov dword ptr [ebp-12], 28
jmp .Lt_00ED
.Lt_00EE:
mov dword ptr [ebp-12], 20
.Lt_00ED:
.Lt_00EC:
.Lt_00EB:
sub esp, 4
push 0
push -1
push dword ptr [ebp-12]
call ERRREPORT
add esp, 16
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWCONSTZ
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_00EA:
.Lt_00E9:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_00F0
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
jmp .Lt_00EF
.Lt_00F0:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00EF:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_00C8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCAST, .-HCAST
.balign 16
HPROCPTRBODY:
.type HPROCPTRBODY, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FA:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .Lt_00FD
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00FF
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
.Lt_00FF:
.Lt_00FE:
.Lt_00FD:
.Lt_00FC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
je .Lt_0101
cmp dword ptr [PARSER+156], 0
je .Lt_0103
mov ebx, dword ptr [PARSER+156]
cmp dword ptr [ebx], 3
jne .Lt_0105
sub esp, 4
push 0
push dword ptr [PARSER+156]
push dword ptr [ebp+12]
call SYMBFINDOVERLOADPROC
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0107
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+12], eax
.Lt_0107:
.Lt_0106:
.Lt_0105:
.Lt_0104:
.Lt_0103:
.Lt_0102:
.Lt_0101:
.Lt_0100:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_0109
sub esp, 12
push 0
push 1
push 0
sub esp, 4
push dword ptr [ebp+12]
call SYMBGETFULLPROCNAME
add esp, 8
push eax
push 209
call ERRREPORTEX
add esp, 32
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00FB
.Lt_0109:
.Lt_0108:
sub esp, 12
push dword ptr [ebp+12]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_010B
sub esp, 12
push 0
push 1
push 0
sub esp, 4
push dword ptr [ebp+12]
call SYMBGETFULLPROCNAME
add esp, 8
push eax
push 202
call ERRREPORTEX
add esp, 32
.Lt_010B:
.Lt_010A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+100]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_010D
sub esp, 12
push dword ptr [ebp+12]
call dword ptr [ebp-12]
add esp, 16
.Lt_010D:
.Lt_010C:
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDPROCADDROF
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00FB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HPROCPTRBODY, .-HPROCPTRBODY
.balign 16
HVARPTRBODY:
.type HVARPTRBODY, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_010E:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CHIGHESTPRECEXPR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0111
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_010F
.Lt_0111:
.Lt_0110:
sub esp, 12
push dword ptr [ebp-8]
call ASTSKIPCONSTCASTS
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .Lt_0113
.Lt_0115:
jmp .Lt_0112
.Lt_0116:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
cmp dword ptr [eax+112], 0
jle .Lt_0118
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
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
jmp .Lt_010F
.Lt_0118:
.Lt_0117:
jmp .Lt_0112
.Lt_0119:
sub esp, 12
push 0
push 1
push 0
push offset Lt_011A
push 24
call ERRREPORTEX
add esp, 32
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
jmp .Lt_010F
jmp .Lt_0112
.Lt_0113:
mov eax, dword ptr [ebp-16]
add eax, 4294967286
cmp eax, 26
ja .Lt_0119
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_011B+eax*4-40]
.LT_011B:
.int .Lt_0115
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0115
.int .Lt_0115
.int .Lt_0116
.int .Lt_0115
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0119
.int .Lt_0115
.Lt_0112:
sub esp, 4
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
push 22
call SYMBFINDSELFUOPOVLPROC
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_011D
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_011F
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_011F:
.Lt_011E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_010F
jmp .Lt_011C
.Lt_011D:
cmp dword ptr [ebp-20], 0
je .Lt_0121
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_010F
.Lt_0121:
.Lt_0120:
.Lt_011C:
sub esp, 12
push dword ptr [ebp-8]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_010F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HVARPTRBODY, .-HVARPTRBODY

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_011A:	.ascii	"for @ or VARPTR\0"
.balign 4
Lt_014F:	.ascii	"for STRPTR\0"
