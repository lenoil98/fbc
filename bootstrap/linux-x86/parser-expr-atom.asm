	.intel_syntax noprefix

.section .text
.balign 16

.globl CEQINPARENSONLYEXPR
CEQINPARENSONLYEXPR:
.type CEQINPARENSONLYEXPR, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0067:
mov eax, dword ptr [PARSER+148]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
or dword ptr [PARSER+148], 256
jmp .Lt_0069
.Lt_006A:
and dword ptr [PARSER+148], -257
.Lt_0069:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .Lt_006C
or dword ptr [PARSER+148], 256
jmp .Lt_006B
.Lt_006C:
and dword ptr [PARSER+148], -257
.Lt_006B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CEQINPARENSONLYEXPR, .-CEQINPARENSONLYEXPR
.balign 16

.globl CGTINPARENSONLYEXPR
CGTINPARENSONLYEXPR:
.type CGTINPARENSONLYEXPR, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_006E:
mov eax, dword ptr [PARSER+148]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
or dword ptr [PARSER+148], 512
jmp .Lt_0070
.Lt_0071:
and dword ptr [PARSER+148], -513
.Lt_0070:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .Lt_0073
or dword ptr [PARSER+148], 512
jmp .Lt_0072
.Lt_0073:
and dword ptr [PARSER+148], -513
.Lt_0072:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_006F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CGTINPARENSONLYEXPR, .-CGTINPARENSONLYEXPR
.balign 16

.globl CPARENTEXPRESSION
CPARENTEXPRESSION:
.type CPARENTEXPRESSION, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0075:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_0078
mov dword ptr [ebp-4], 0
jmp .Lt_0076
.Lt_0078:
.Lt_0077:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
inc dword ptr [PARSER+144]
mov eax, dword ptr [PARSER+148]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .Lt_007A
or dword ptr [PARSER+148], 1
jmp .Lt_0079
.Lt_007A:
and dword ptr [PARSER+148], -2
.Lt_0079:
mov eax, dword ptr [PARSER+148]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [PARSER+148]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
mov eax, dword ptr [PARSER+148]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .Lt_007C
or dword ptr [PARSER+148], 256
jmp .Lt_007B
.Lt_007C:
and dword ptr [PARSER+148], -257
.Lt_007B:
jmp .Lt_007E
or dword ptr [PARSER+148], 512
jmp .Lt_007D
.Lt_007E:
and dword ptr [PARSER+148], -513
.Lt_007D:
jmp .Lt_0080
or dword ptr [PARSER+148], 4096
jmp .Lt_007F
.Lt_0080:
and dword ptr [PARSER+148], -4097
.Lt_007F:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .Lt_0082
or dword ptr [PARSER+148], 256
jmp .Lt_0081
.Lt_0082:
and dword ptr [PARSER+148], -257
.Lt_0081:
cmp dword ptr [ebp-16], 0
je .Lt_0084
or dword ptr [PARSER+148], 512
jmp .Lt_0083
.Lt_0084:
and dword ptr [PARSER+148], -513
.Lt_0083:
cmp dword ptr [ebp-20], 0
je .Lt_0086
or dword ptr [PARSER+148], 4096
jmp .Lt_0085
.Lt_0086:
and dword ptr [PARSER+148], -4097
.Lt_0085:
cmp dword ptr [ebp-8], 0
jne .Lt_0088
cmp dword ptr [ebp-24], 0
je .Lt_008A
mov dword ptr [ebp-4], 0
jmp .Lt_0076
.Lt_008A:
.Lt_0089:
sub esp, 4
push 0
push 0
push 9
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
jmp .Lt_0076
.Lt_0088:
.Lt_0087:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
jne .Lt_008C
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
dec dword ptr [PARSER+144]
jmp .Lt_008B
.Lt_008C:
mov eax, dword ptr [ebp-24]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [PARSER+144]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_008E
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
.Lt_008E:
.Lt_008D:
.Lt_008B:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0076:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CPARENTEXPRESSION, .-CPARENTEXPRESSION
.balign 16

.globl CATOM
CATOM:
.type CATOM, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0117:
cmp dword ptr [ebp+12], 0
jne .Lt_011A
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0119
.Lt_011A:
mov dword ptr [ebp-8], 0
.Lt_0119:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_011C
.Lt_011E:
cmp dword ptr [ebp+12], 0
jne .Lt_0120
sub esp, 8
push 50
lea eax, [ebp+8]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_0120:
.Lt_011F:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKID
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0118
jmp .Lt_011B
.Lt_0121:
cmp dword ptr [ENV+136], 3
jne .Lt_0123
sub esp, 8
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4116]
push dword ptr [ebp+8]
call HCHECKID
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_0123:
.Lt_0122:
jmp .Lt_011B
.Lt_0124:
sub esp, 12
push -1
call CNUMLITERAL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0118
jmp .Lt_011B
.Lt_0125:
sub esp, 12
push -1
call CSTRLITERAL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0118
jmp .Lt_011B
.Lt_0126:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
je .Lt_0128
mov dword ptr [ebp-4], 0
jmp .Lt_0118
.Lt_0128:
.Lt_0127:
cmp dword ptr [PARSER+52], 0
je .Lt_012A
sub esp, 8
push 64
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
je .Lt_012C
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
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_012C:
.Lt_012B:
.Lt_012A:
.Lt_0129:
sub esp, 8
push 50
lea eax, [ebp+8]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
je .Lt_012E
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFINDID
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0118
.Lt_012E:
.Lt_012D:
jmp .Lt_011B
.Lt_011C:
cmp dword ptr [ebp-12], 6
ja .Lt_011B
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_012F+eax*4]
.LT_012F:
.int .Lt_011E
.int .Lt_011E
.int .Lt_011E
.int .Lt_0124
.int .Lt_0125
.int .Lt_0121
.int .Lt_0126
.Lt_011B:
mov dword ptr [ebp-4], 0
.Lt_0118:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CATOM, .-CATOM
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
HFINDID_QB:
.type HFINDID_QB, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0095:
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
.Lt_0097:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-12], -2147483648
jne .Lt_009B
.Lt_009C:
mov dword ptr [ebp-28], -1
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_00A0
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 1
jne .Lt_00A2
cmp dword ptr [ebp-16], 17
jne .Lt_00A4
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, ebx
mov dword ptr [ebp-32], eax
jmp .Lt_00A6
.Lt_00A8:
jmp .Lt_00A5
.Lt_00A9:
mov dword ptr [ebp-28], 0
jmp .Lt_00A5
.Lt_00A6:
mov eax, dword ptr [ebp-32]
add eax, 4294967292
cmp eax, 14
ja .Lt_00A9
mov eax, dword ptr [ebp-32]
jmp dword ptr [.LT_00AA+eax*4-16]
.LT_00AA:
.int .Lt_00A8
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_00A8
.int .Lt_00A8
.Lt_00A5:
jmp .Lt_00A3
.Lt_00A4:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, dword ptr [ebp-16]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
.Lt_009F:
cmp dword ptr [ebp-28], 0
je .Lt_00AC
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-32], eax
jmp .Lt_00AE
.Lt_00B0:
sub esp, 12
push dword ptr [ebp-20]
call CCONSTANT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0096
jmp .Lt_00AD
.Lt_00B1:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
je .Lt_00B3
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
.Lt_00B3:
.Lt_00B2:
cmp dword ptr [ebp-28], 0
je .Lt_00B5
sub esp, 4
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call CFUNCTIONEX
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0096
.Lt_00B5:
.Lt_00B4:
jmp .Lt_00AD
.Lt_00B6:
cmp dword ptr [ebp-24], 0
jne .Lt_00B8
sub esp, 12
push dword ptr [ebp-20]
call SYMBVARCHECKACCESS
add esp, 16
test eax, eax
je .Lt_00BA
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.Lt_00BA:
.Lt_00B9:
.Lt_00B8:
.Lt_00B7:
jmp .Lt_00AD
.Lt_00BB:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
jne .Lt_00BD
sub esp, 12
push dword ptr [ebp-20]
call CQUIRKFUNCTION
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0096
.Lt_00BD:
.Lt_00BC:
jmp .Lt_00AD
.Lt_00AE:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 5
ja .Lt_00AD
mov eax, dword ptr [ebp-32]
jmp dword ptr [.LT_00BE+eax*4-4]
.LT_00BE:
.int .Lt_00B6
.int .Lt_00B0
.int .Lt_00B1
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_00BB
.Lt_00AD:
.Lt_00AC:
.Lt_00AB:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-20], ebx
.Lt_009E:
cmp dword ptr [ebp-20], 0
jne .Lt_009C
.Lt_009D:
jmp .Lt_009A
.Lt_009B:
.Lt_00BF:
cmp dword ptr [ebp-12], 17
jne .Lt_00C3
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-32], ebx
jmp .Lt_00C5
.Lt_00C7:
mov dword ptr [ebp-28], -1
jmp .Lt_00C4
.Lt_00C8:
mov dword ptr [ebp-28], 0
jmp .Lt_00C4
.Lt_00C5:
mov ebx, dword ptr [ebp-32]
add ebx, 4294967292
cmp ebx, 14
ja .Lt_00C8
mov ebx, dword ptr [ebp-32]
jmp dword ptr [.LT_00C9+ebx*4-16]
.LT_00C9:
.int .Lt_00C7
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C7
.int .Lt_00C7
.Lt_00C4:
jmp .Lt_00C2
.Lt_00C3:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, dword ptr [ebp-12]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
.Lt_00C2:
cmp dword ptr [ebp-28], 0
je .Lt_00CB
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
jmp .Lt_00CD
.Lt_00CF:
sub esp, 12
push dword ptr [ebp-20]
call CCONSTANT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0096
jmp .Lt_00CC
.Lt_00D0:
sub esp, 4
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call CFUNCTIONEX
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0096
jmp .Lt_00CC
.Lt_00D1:
cmp dword ptr [ebp-24], 0
jne .Lt_00D3
sub esp, 12
push dword ptr [ebp-20]
call SYMBVARCHECKACCESS
add esp, 16
test eax, eax
je .Lt_00D5
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.Lt_00D5:
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
jmp .Lt_00CC
.Lt_00D6:
sub esp, 12
push dword ptr [ebp-20]
call CQUIRKFUNCTION
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0096
jmp .Lt_00CC
.Lt_00CD:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 5
ja .Lt_00CC
mov eax, dword ptr [ebp-32]
jmp dword ptr [.LT_00D7+eax*4-4]
.LT_00D7:
.int .Lt_00D1
.int .Lt_00CF
.int .Lt_00D0
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00D6
.Lt_00CC:
jmp .Lt_00CA
.Lt_00CB:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 6
jne .Lt_00D9
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+56], 476
jne .Lt_00DB
cmp dword ptr [ebp-12], 17
jne .Lt_00DD
sub esp, 12
push dword ptr [ebp-20]
call CQUIRKFUNCTION
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0096
.Lt_00DD:
.Lt_00DC:
.Lt_00DB:
.Lt_00DA:
.Lt_00D9:
.Lt_00D8:
.Lt_00CA:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-20], ebx
.Lt_00C1:
cmp dword ptr [ebp-20], 0
jne .Lt_00BF
.Lt_00C0:
.Lt_009A:
cmp dword ptr [ebp-24], 0
je .Lt_00DF
sub esp, 8
mov ebx, dword ptr [PARSER+148]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp-24]
call _Z11CVARIABLEEXP8FBSYMBOLl
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0096
.Lt_00DF:
.Lt_00DE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+12], ebx
.Lt_0099:
cmp dword ptr [ebp+12], 0
jne .Lt_0097
.Lt_0098:
mov dword ptr [ebp-4], 0
.Lt_0096:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HFINDID_QB, .-HFINDID_QB
.balign 16
HFINDID:
.type HFINDID, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E0:
cmp dword ptr [ENV+136], 3
jne .Lt_00E3
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFINDID_QB
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00E1
.Lt_00E3:
.Lt_00E2:
.Lt_00E4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_00E7:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .Lt_00EB
.Lt_00ED:
sub esp, 12
push dword ptr [ebp-8]
call CCONSTANT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00E1
jmp .Lt_00EA
.Lt_00EE:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call CFUNCTIONEX
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00E1
jmp .Lt_00EA
.Lt_00EF:
sub esp, 8
mov eax, dword ptr [PARSER+148]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
call _Z11CVARIABLEEXP10FBSYMCHAINl
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00E1
jmp .Lt_00EA
.Lt_00F0:
push dword ptr [ebp+16]
mov eax, dword ptr [PARSER+148]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CIMPLICITDATAMEMBER
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00E1
jmp .Lt_00EA
.Lt_00F1:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 353
jne .Lt_00F3
call HBASEMEMBERACCESS
mov dword ptr [ebp-4], eax
jmp .Lt_00E1
jmp .Lt_00F2
.Lt_00F3:
sub esp, 12
push dword ptr [ebp-8]
call CQUIRKFUNCTION
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00E1
.Lt_00F2:
jmp .Lt_00EA
.Lt_00F4:
sub esp, 12
push dword ptr [ebp-8]
call SYMBGETCOMPCTORHEAD
add esp, 16
test eax, eax
je .Lt_00F6
sub esp, 8
push dword ptr [ebp-8]
push 20
call HCOMPLAINIFABSTRACTCLASS
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call CCTORCALL
add esp, 4
push eax
call CSTRIDXORMEMBERDEREF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00E1
.Lt_00F6:
.Lt_00F5:
jmp .Lt_00EA
.Lt_00F7:
sub esp, 12
push dword ptr [ebp-8]
call SYMBHASCTOR
add esp, 16
test eax, eax
je .Lt_00F9
sub esp, 8
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push 20
call HCOMPLAINIFABSTRACTCLASS
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
call CCTORCALL
add esp, 4
push eax
call CSTRIDXORMEMBERDEREF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00E1
.Lt_00F9:
.Lt_00F8:
jmp .Lt_00EA
.Lt_00EB:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 12
ja .Lt_00EA
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00FA+eax*4-4]
.LT_00FA:
.int .Lt_00EF
.int .Lt_00ED
.int .Lt_00EE
.int .Lt_00EA
.int .Lt_00EA
.int .Lt_00F1
.int .Lt_00EA
.int .Lt_00EA
.int .Lt_00EA
.int .Lt_00F4
.int .Lt_00F4
.int .Lt_00F0
.int .Lt_00F7
.Lt_00EA:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-8], ebx
.Lt_00E9:
cmp dword ptr [ebp-8], 0
jne .Lt_00E7
.Lt_00E8:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+12], eax
.Lt_00E6:
cmp dword ptr [ebp+12], 0
jne .Lt_00E4
.Lt_00E5:
mov dword ptr [ebp-4], 0
.Lt_00E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HFINDID, .-HFINDID
.balign 16
HBASEMEMBERACCESS:
.type HBASEMEMBERACCESS, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FB:
mov eax, dword ptr [PARSER+104]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
jne .Lt_00FE
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
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00FC
.Lt_00FE:
.Lt_00FD:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-16], ebx
.Lt_00FF:
cmp dword ptr [ebp-16], 0
jne .Lt_0103
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
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00FC
.Lt_0103:
.Lt_0102:
sub esp, 12
push 2112
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 46
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0105
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
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00FC
.Lt_0105:
.Lt_0104:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 353
je .Lt_0107
jmp .Lt_0100
.Lt_0107:
.Lt_0106:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-16], eax
.Lt_0101:
jmp .Lt_00FF
.Lt_0100:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 4
push 2048
lea eax, [ebp-40]
push eax
mov eax, dword ptr [ebp-16]
push dword ptr [eax+32]
call HFINDID
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00FC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HBASEMEMBERACCESS, .-HBASEMEMBERACCESS
.balign 16
HCHECKID:
.type HCHECKID, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0108:
cmp dword ptr [ebp+12], 0
je .Lt_010B
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFINDID
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_010D
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0109
.Lt_010D:
.Lt_010C:
.Lt_010B:
.Lt_010A:
mov eax, dword ptr [PARSER+148]
and eax, 1024
test eax, eax
je .Lt_010F
sub esp, 12
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-20]
call ASTNEWCONSTSTR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0109
.Lt_010F:
.Lt_010E:
cmp dword ptr [ENV+136], 3
je .Lt_0112
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
test eax, eax
je .Lt_0114
mov dword ptr [ebp-4], 0
jmp .Lt_0109
.Lt_0114:
.Lt_0113:
.Lt_0112:
.Lt_0111:
jmp .Lt_0116
sub esp, 4
push 0
push 149
push 2097152
call ERRREPORTNOTALLOWED
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_0109
.Lt_0116:
.Lt_0115:
sub esp, 8
mov eax, dword ptr [PARSER+148]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push 0
call _Z11CVARIABLEEXP10FBSYMCHAINl
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0109:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HCHECKID, .-HCHECKID

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
