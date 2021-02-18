	.intel_syntax noprefix

.section .text
.balign 16

.globl _CNEGNOTEXPRESSION
_CNEGNOTEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_006E:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 45
jne .Lt_0072
.Lt_0073:
push 0
call _LEXSKIPTOKEN
add esp, 4
call _CEXPEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0075
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0074
.Lt_0075:
push dword ptr [ebp-8]
push 54
call _ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_0074:
cmp dword ptr [ebp-8], 0
jne .Lt_0077
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
.Lt_0077:
.Lt_0076:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_006F
jmp .Lt_0070
.Lt_0072:
cmp dword ptr [ebp-12], 43
jne .Lt_0078
.Lt_0079:
push 0
call _LEXSKIPTOKEN
add esp, 4
call _CEXPEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_007B
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_007B:
push dword ptr [ebp-8]
push 53
call _ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_007A:
cmp dword ptr [ebp-8], 0
jne .Lt_007D
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
.Lt_007D:
.Lt_007C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_006F
jmp .Lt_0070
.Lt_0078:
cmp dword ptr [ebp-12], 295
jne .Lt_007E
.Lt_007F:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CRELEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0081
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0080
.Lt_0081:
push dword ptr [ebp-8]
push 52
call _ASTNEWUOP
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_0080:
cmp dword ptr [ebp-8], 0
jne .Lt_0083
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
.Lt_0083:
.Lt_0082:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_006F
.Lt_007E:
.Lt_0070:
push 0
push 0
call _CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_006F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSTRIDXORMEMBERDEREF
_CSTRIDXORMEMBERDEREF:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0084:
cmp dword ptr [ebp+8], 0
jne .Lt_0087
jmp .Lt_0085
.Lt_0087:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_0088
mov dword ptr [ebp-16], 24
jmp .Lt_00A6
.Lt_0088:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00A6:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .Lt_008B
.Lt_008D:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 91
jne .Lt_008F
push -1
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _CMEMBERDEREF
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_008F:
.Lt_008E:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0085
jmp .Lt_008A
.Lt_0090:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 46
jne .Lt_0093
.Lt_0094:
push 64
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _CMEMBERACCESS
add esp, 12
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_0096
mov dword ptr [ebp-4], 0
jmp .Lt_0085
.Lt_0096:
.Lt_0095:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
jmp .Lt_0091
.Lt_0093:
cmp dword ptr [ebp-24], 398
je .Lt_0098
.Lt_0099:
cmp dword ptr [ebp-24], 91
jne .Lt_0097
.Lt_0098:
push -1
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _CMEMBERDEREF
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_0097:
.Lt_0091:
jmp .Lt_008A
.Lt_008B:
mov eax, dword ptr [ebp-20]
add eax, 4294967292
cmp eax, 16
ja .Lt_008A
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_009A+eax*4-16]
_.LT_009A:
.int .Lt_008D
.int .Lt_008A
.int .Lt_008A
.int .Lt_008D
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008D
.int .Lt_008D
.int .Lt_008A
.int .Lt_0090
.Lt_008A:
mov eax, dword ptr [ebp-12]
and eax, 480
test eax, eax
je .Lt_009C
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 40
jne .Lt_009F
.Lt_00A0:
mov eax, dword ptr [ebp-12]
and eax, 511
cmp eax, 54
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .Lt_009D
.Lt_009F:
cmp dword ptr [ebp-24], 398
je .Lt_00A2
.Lt_00A3:
cmp dword ptr [ebp-24], 91
jne .Lt_00A1
.Lt_00A2:
mov dword ptr [ebp-20], -1
.Lt_00A1:
.Lt_009D:
cmp dword ptr [ebp-20], 0
je .Lt_00A5
push -1
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _CFUNCPTRORMEMBERDEREF
add esp, 20
mov dword ptr [ebp+8], eax
.Lt_00A5:
.Lt_00A4:
.Lt_009C:
.Lt_009B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0085:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CHIGHESTPRECEXPR
_CHIGHESTPRECEXPR:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
.Lt_00A8:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 64
jne .Lt_00AC
.Lt_00AD:
call _CADDROFEXPRESSION
mov dword ptr [ebp-4], eax
jmp .Lt_00A9
jmp .Lt_00AA
.Lt_00AC:
cmp dword ptr [ebp-12], 42
jne .Lt_00AE
.Lt_00AF:
call _CDEREFEXPRESSION
mov dword ptr [ebp-8], eax
jmp .Lt_00AA
.Lt_00AE:
cmp dword ptr [ebp-12], 40
jne .Lt_00B0
.Lt_00B1:
mov eax, dword ptr [_PARSER+148]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
call _CPARENTEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 0
je .Lt_00B3
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00A9
.Lt_00B3:
.Lt_00B2:
jmp .Lt_00AA
.Lt_00B0:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
jmp .Lt_00B6
.Lt_00B8:
call _CADDROFEXPRESSION
mov dword ptr [ebp-4], eax
jmp .Lt_00A9
jmp .Lt_00B5
.Lt_00B9:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _HCAST
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00B5
.Lt_00BA:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 4
call _HCAST
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00B5
.Lt_00BB:
call _COPERATORNEW
mov dword ptr [ebp-8], eax
jmp .Lt_00B5
.Lt_00BC:
mov eax, dword ptr [_PARSER+148]
and eax, 1024
test eax, eax
je .Lt_00BE
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 377
jne .Lt_00C1
.Lt_00C2:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
call _PPTYPEOF
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-32]
call _ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-4], eax
lea eax, [ebp-32]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_00A9
jmp .Lt_00BF
.Lt_00C1:
cmp dword ptr [ebp-20], 315
jne .Lt_00C4
.Lt_00C5:
call _HPPDEFINEDEXPR
mov dword ptr [ebp-4], eax
jmp .Lt_00A9
.Lt_00C4:
.Lt_00BF:
.Lt_00BE:
.Lt_00BD:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CATOM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_00A9
jmp .Lt_00B5
.Lt_00B6:
mov eax, dword ptr [ebp-16]
add eax, 4294966909
cmp eax, 28
ja .Lt_00BC
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_00C6+eax*4-1548]
_.LT_00C6:
.int .Lt_00BB
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BA
.int .Lt_00B9
.Lt_00B5:
.Lt_00B4:
.Lt_00AA:
push dword ptr [ebp-8]
call _CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_00A9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CDEREFEXPRESSION
_CDEREFEXPRESSION:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00F2:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 42
je .Lt_00F5
mov dword ptr [ebp-4], 0
jmp .Lt_00F3
.Lt_00F5:
.Lt_00F4:
mov dword ptr [ebp-8], 0
.Lt_00F6:
push 0
call _LEXSKIPTOKEN
add esp, 4
inc dword ptr [ebp-8]
.Lt_00F8:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 42
je .Lt_00F6
.Lt_00F7:
push 0
push 0
call _CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00FA
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00F3
.Lt_00FA:
.Lt_00F9:
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+4]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTBUILDMULTIDEREF
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00F3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CADDROFEXPRESSION
_CADDROFEXPRESSION:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_0123:
mov dword ptr [ebp-8], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 64
jne .Lt_0126
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-12], -1
cmp dword ptr [_PARSER+52], 0
je .Lt_0128
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_012A
push 64
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.Lt_012A:
.Lt_0129:
.Lt_0128:
.Lt_0127:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-12], 0
je .Lt_012C
push 50
lea eax, [ebp-24]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp-16], eax
push 3
push dword ptr [ebp-16]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-20], eax
.Lt_012C:
.Lt_012B:
cmp dword ptr [ebp-20], 0
je .Lt_012E
push 4096
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call _HPROCPTRBODY
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_0124
jmp .Lt_012D
.Lt_012E:
push dword ptr [ebp-16]
push dword ptr [ebp-24]
call _HVARPTRBODY
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_0124
.Lt_012D:
.Lt_0126:
.Lt_0125:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_0130
.Lt_0132:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0134
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0124
.Lt_0134:
.Lt_0133:
push 0
push 0
call _HVARPTRBODY
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0136
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
.Lt_0136:
.Lt_0135:
jmp .Lt_012F
.Lt_0137:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0139
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0124
.Lt_0139:
.Lt_0138:
push 50
lea eax, [ebp-24]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp-16], eax
push 3
push dword ptr [ebp-16]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_013B
push 0
push 0
push 8
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0124
jmp .Lt_013A
.Lt_013B:
push 4096
call _LEXSKIPTOKEN
add esp, 4
.Lt_013A:
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call _HPROCPTRBODY
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_013D
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
.Lt_013D:
.Lt_013C:
jmp .Lt_012F
.Lt_013E:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0140
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0124
.Lt_0140:
.Lt_013F:
push 0
push 0
call _CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0142
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0124
.Lt_0142:
.Lt_0141:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_0143
mov dword ptr [ebp-20], 24
jmp .Lt_015B
.Lt_0143:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-20], ebx
.Lt_015B:
cmp dword ptr [ebp-20], 20
jne .Lt_0146
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
je .Lt_0148
lea ecx, [ebp-8]
push ecx
call _ASTTRYOVLSTRINGCONV
add esp, 4
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
.Lt_0148:
.Lt_0147:
.Lt_0146:
.Lt_0145:
push dword ptr [ebp-16]
call _SYMBISSTRING
add esp, 4
test eax, eax
jne .Lt_014A
push 0
push 0
push 24
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
jmp .Lt_0124
.Lt_014A:
.Lt_0149:
push dword ptr [ebp-8]
call _ASTSKIPNOCONVCAST
add esp, 4
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
jmp .Lt_014C
.Lt_014E:
jmp .Lt_014B
.Lt_014F:
push 0
push 1
push 0
push offset _Lt_0150
push 24
call _ERRREPORTEX
add esp, 20
jmp .Lt_014B
.Lt_014C:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967279
cmp ebx, 19
ja .Lt_014F
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.LT_0151+ebx*4-68]
_.LT_0151:
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014F
.int .Lt_014F
.int .Lt_014F
.int .Lt_014F
.int .Lt_014F
.int .Lt_014F
.int .Lt_014F
.int .Lt_014F
.int .Lt_014F
.int .Lt_014F
.int .Lt_014F
.int .Lt_014F
.int .Lt_014F
.int .Lt_014F
.int .Lt_014F
.int .Lt_014E
.Lt_014B:
cmp dword ptr [ebp-16], 17
jne .Lt_0153
.Lt_0154:
push dword ptr [ebp-8]
call _ASTBUILDSTRPTR
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0152
.Lt_0153:
cmp dword ptr [ebp-16], 7
jne .Lt_0155
.Lt_0156:
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWADDROF
add esp, 4
push eax
push 0
push 39
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_0152
.Lt_0155:
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWADDROF
add esp, 4
push eax
push 0
push 36
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_0157:
.Lt_0152:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0159
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
.Lt_0159:
.Lt_0158:
jmp .Lt_012F
.Lt_0130:
mov eax, dword ptr [ebp-12]
add eax, 4294966902
cmp eax, 3
ja .Lt_012F
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_015A+eax*4-1576]
_.LT_015A:
.int .Lt_0132
.int .Lt_013E
.int .Lt_0137
.int .Lt_013E
.Lt_012F:
push dword ptr [ebp-8]
call _CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0124:
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
_HPPDEFINEDEXPR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
push 2050
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_006B
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_006A
.Lt_006B:
push 2
call _LEXSKIPTOKEN
add esp, 4
.Lt_006A:
push 0
lea eax, [ebp-8]
push eax
call _CIDENTIFIER
add esp, 8
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_006D
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
.Lt_006D:
.Lt_006C:
push 0
push 8
mov ebx, dword ptr [ebp-12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCAST:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C8:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_00CB
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00C9
.Lt_00CB:
.Lt_00CA:
push 0
call _LEXSKIPTOKEN
add esp, 4
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
call _CSYMBOLTYPE
add esp, 20
test eax, eax
jne .Lt_00CF
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_00D1
mov dword ptr [ebp-8], 32
jmp .Lt_00D0
.Lt_00D1:
mov dword ptr [ebp-8], 8
.Lt_00D0:
mov dword ptr [ebp-16], 0
.Lt_00CF:
.Lt_00CE:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_00D2
mov dword ptr [ebp-36], 24
jmp .Lt_0160
.Lt_00D2:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_0160:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-40], eax
jmp .Lt_00D5
.Lt_00D7:
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_00D9
mov dword ptr [ebp-8], 32
jmp .Lt_00D8
.Lt_00D9:
mov dword ptr [ebp-8], 8
.Lt_00D8:
mov dword ptr [ebp-16], 0
jmp .Lt_00D4
.Lt_00DA:
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_00DC
mov eax, dword ptr [_ENV+196]
and eax, 16
test eax, eax
je .Lt_00DE
push 0
push 1
push 0
push 27
call _ERRREPORTWARN
add esp, 16
.Lt_00DE:
.Lt_00DD:
.Lt_00DC:
.Lt_00DB:
jmp .Lt_00D4
.Lt_00DF:
or dword ptr [ebp+8], 4
jmp .Lt_00D4
.Lt_00E0:
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_00E2
push 0
push 1
push 0
push 27
call _ERRREPORTWARN
add esp, 16
.Lt_00E2:
.Lt_00E1:
jmp .Lt_00D4
.Lt_00D5:
cmp dword ptr [ebp-40], 24
ja .Lt_00E0
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.LT_00E3+eax*4]
_.LT_00E3:
.int .Lt_00D7
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00D7
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00E0
.int .Lt_00DF
.Lt_00D4:
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
call _CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00E7
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-20], eax
.Lt_00E7:
.Lt_00E6:
or dword ptr [ebp+8], 2
mov eax, dword ptr [_ENV+196]
and eax, 64
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+196]
and ebx, 128
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00E9
or dword ptr [ebp+8], 32
.Lt_00E9:
.Lt_00E8:
lea ebx, [ebp-12]
push ebx
push dword ptr [ebp+8]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWCONV
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00EB
cmp dword ptr [ebp-12], 0
jne .Lt_00ED
mov eax, dword ptr [ebp+8]
and eax, 4
je .Lt_00EF
mov dword ptr [ebp-12], 28
jmp .Lt_00EE
.Lt_00EF:
mov dword ptr [ebp-12], 20
.Lt_00EE:
.Lt_00ED:
.Lt_00EC:
push 0
push -1
push dword ptr [ebp-12]
call _ERRREPORT
add esp, 12
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-20], eax
.Lt_00EB:
.Lt_00EA:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00F1
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
jmp .Lt_00F0
.Lt_00F1:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00F0:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_00C9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPROCPTRBODY:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FB:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_00FE
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0100
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
.Lt_0100:
.Lt_00FF:
.Lt_00FE:
.Lt_00FD:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
je .Lt_0102
cmp dword ptr [_PARSER+156], 0
je .Lt_0104
mov ebx, dword ptr [_PARSER+156]
cmp dword ptr [ebx], 3
jne .Lt_0106
push 0
push dword ptr [_PARSER+156]
push dword ptr [ebp+12]
call _SYMBFINDOVERLOADPROC
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0108
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp+12], eax
.Lt_0108:
.Lt_0107:
.Lt_0106:
.Lt_0105:
.Lt_0104:
.Lt_0103:
.Lt_0102:
.Lt_0101:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_010A
push 0
push 1
push 0
push dword ptr [ebp+12]
call _SYMBGETFULLPROCNAME
add esp, 4
push eax
push 209
call _ERRREPORTEX
add esp, 20
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00FC
.Lt_010A:
.Lt_0109:
push dword ptr [ebp+12]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_010C
push 0
push 1
push 0
push dword ptr [ebp+12]
call _SYMBGETFULLPROCNAME
add esp, 4
push eax
push 202
call _ERRREPORTEX
add esp, 20
.Lt_010C:
.Lt_010B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+100]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
je .Lt_010E
push dword ptr [ebp+12]
call dword ptr [ebp-12]
add esp, 4
.Lt_010E:
.Lt_010D:
push dword ptr [ebp+12]
call _ASTBUILDPROCADDROF
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_00FC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HVARPTRBODY:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_010F:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CHIGHESTPRECEXPR
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0112
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0110
.Lt_0112:
.Lt_0111:
push dword ptr [ebp-8]
call _ASTSKIPCONSTCASTS
add esp, 4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
jmp .Lt_0114
.Lt_0116:
jmp .Lt_0113
.Lt_0117:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
cmp dword ptr [eax+112], 0
jle .Lt_0119
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
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
jmp .Lt_0110
.Lt_0119:
.Lt_0118:
jmp .Lt_0113
.Lt_011A:
push 0
push 1
push 0
push offset _Lt_011B
push 24
call _ERRREPORTEX
add esp, 20
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
jmp .Lt_0110
jmp .Lt_0113
.Lt_0114:
mov eax, dword ptr [ebp-16]
add eax, 4294967286
cmp eax, 26
ja .Lt_011A
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_011C+eax*4-40]
_.LT_011C:
.int .Lt_0116
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_0116
.int .Lt_0116
.int .Lt_0117
.int .Lt_0116
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_011A
.int .Lt_0116
.Lt_0113:
lea eax, [ebp-20]
push eax
push dword ptr [ebp-8]
push 22
call _SYMBFINDSELFUOPOVLPROC
add esp, 12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_011E
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _ASTBUILDCALL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0120
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0120:
.Lt_011F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0110
jmp .Lt_011D
.Lt_011E:
cmp dword ptr [ebp-20], 0
je .Lt_0122
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0110
.Lt_0122:
.Lt_0121:
.Lt_011D:
push dword ptr [ebp-8]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0110:
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

.section .data
.balign 4
_Lt_011B:	.ascii	"for @ or VARPTR\0"
.balign 4
_Lt_0150:	.ascii	"for STRPTR\0"
