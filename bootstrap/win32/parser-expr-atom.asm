	.intel_syntax noprefix

.section .text
.balign 16

.globl _CEQINPARENSONLYEXPR@0
_CEQINPARENSONLYEXPR@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0068:
mov eax, dword ptr [_PARSER+148]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
or dword ptr [_PARSER+148], 256
jmp .Lt_006A
.Lt_006B:
and dword ptr [_PARSER+148], -257
.Lt_006A:
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .Lt_006D
or dword ptr [_PARSER+148], 256
jmp .Lt_006C
.Lt_006D:
and dword ptr [_PARSER+148], -257
.Lt_006C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CGTINPARENSONLYEXPR@0
_CGTINPARENSONLYEXPR@0:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_006F:
mov eax, dword ptr [_PARSER+148]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
or dword ptr [_PARSER+148], 512
jmp .Lt_0071
.Lt_0072:
and dword ptr [_PARSER+148], -513
.Lt_0071:
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .Lt_0074
or dword ptr [_PARSER+148], 512
jmp .Lt_0073
.Lt_0074:
and dword ptr [_PARSER+148], -513
.Lt_0073:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0070:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CPARENTEXPRESSION@0
_CPARENTEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0076:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0079
mov dword ptr [ebp-4], 0
jmp .Lt_0077
.Lt_0079:
.Lt_0078:
push 0
call _LEXSKIPTOKEN@4
inc dword ptr [_PARSER+144]
mov eax, dword ptr [_PARSER+148]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .Lt_007B
or dword ptr [_PARSER+148], 1
jmp .Lt_007A
.Lt_007B:
and dword ptr [_PARSER+148], -2
.Lt_007A:
mov eax, dword ptr [_PARSER+148]
and eax, 256
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
mov eax, dword ptr [_PARSER+148]
and eax, 512
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
mov eax, dword ptr [_PARSER+148]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .Lt_007D
or dword ptr [_PARSER+148], 256
jmp .Lt_007C
.Lt_007D:
and dword ptr [_PARSER+148], -257
.Lt_007C:
jmp .Lt_007F
or dword ptr [_PARSER+148], 512
jmp .Lt_007E
.Lt_007F:
and dword ptr [_PARSER+148], -513
.Lt_007E:
jmp .Lt_0081
or dword ptr [_PARSER+148], 4096
jmp .Lt_0080
.Lt_0081:
and dword ptr [_PARSER+148], -4097
.Lt_0080:
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-12], 0
je .Lt_0083
or dword ptr [_PARSER+148], 256
jmp .Lt_0082
.Lt_0083:
and dword ptr [_PARSER+148], -257
.Lt_0082:
cmp dword ptr [ebp-16], 0
je .Lt_0085
or dword ptr [_PARSER+148], 512
jmp .Lt_0084
.Lt_0085:
and dword ptr [_PARSER+148], -513
.Lt_0084:
cmp dword ptr [ebp-20], 0
je .Lt_0087
or dword ptr [_PARSER+148], 4096
jmp .Lt_0086
.Lt_0087:
and dword ptr [_PARSER+148], -4097
.Lt_0086:
cmp dword ptr [ebp-8], 0
jne .Lt_0089
cmp dword ptr [ebp-24], 0
je .Lt_008B
mov dword ptr [ebp-4], 0
jmp .Lt_0077
.Lt_008B:
.Lt_008A:
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .Lt_0077
.Lt_0089:
.Lt_0088:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
jne .Lt_008D
push 0
call _LEXSKIPTOKEN@4
dec dword ptr [_PARSER+144]
jmp .Lt_008C
.Lt_008D:
mov eax, dword ptr [ebp-24]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_PARSER+144]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_008F
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
.Lt_008F:
.Lt_008E:
.Lt_008C:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0077:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CATOM@8
_CATOM@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0118:
cmp dword ptr [ebp+12], 0
jne .Lt_011B
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-8], eax
jmp .Lt_011A
.Lt_011B:
mov dword ptr [ebp-8], 0
.Lt_011A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_011D
.Lt_011F:
cmp dword ptr [ebp+12], 0
jne .Lt_0121
push 50
lea eax, [ebp+8]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp+12], eax
.Lt_0121:
.Lt_0120:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKID@8
mov dword ptr [ebp-4], eax
jmp .Lt_0119
jmp .Lt_011C
.Lt_0122:
cmp dword ptr [_ENV+136], 3
jne .Lt_0124
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2068]
push dword ptr [ebp+8]
call _HCHECKID@8
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_0124:
.Lt_0123:
jmp .Lt_011C
.Lt_0125:
push -1
call _CNUMLITERAL@4
mov dword ptr [ebp-4], eax
jmp .Lt_0119
jmp .Lt_011C
.Lt_0126:
push -1
call _CSTRLITERAL@4
mov dword ptr [ebp-4], eax
jmp .Lt_0119
jmp .Lt_011C
.Lt_0127:
push 0
call _LEXGETTOKEN@4
cmp eax, 46
je .Lt_0129
mov dword ptr [ebp-4], 0
jmp .Lt_0119
.Lt_0129:
.Lt_0128:
cmp dword ptr [_PARSER+52], 0
je .Lt_012B
push 64
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 46
je .Lt_012D
mov eax, dword ptr [_PARSER+148]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
call _CWITHVARIABLE@4
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_012D:
.Lt_012C:
.Lt_012B:
.Lt_012A:
push 50
lea eax, [ebp+8]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
je .Lt_012F
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFINDID@12
mov dword ptr [ebp-4], eax
jmp .Lt_0119
.Lt_012F:
.Lt_012E:
jmp .Lt_011C
.Lt_011D:
cmp dword ptr [ebp-12], 6
ja .Lt_011C
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_0130+eax*4]
_.LT_0130:
.int .Lt_011F
.int .Lt_011F
.int .Lt_011F
.int .Lt_0125
.int .Lt_0126
.int .Lt_0122
.int .Lt_0127
.Lt_011C:
mov dword ptr [ebp-4], 0
.Lt_0119:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
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
_HFINDID_QB@8:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0096:
call _LEXGETTEXT@0
mov dword ptr [ebp-8], eax
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
push dword ptr [ebp-8]
call _SYMBGETDEFTYPE@4
mov dword ptr [ebp-16], eax
.Lt_0098:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-12], -2147483648
jne .Lt_009C
.Lt_009D:
mov dword ptr [ebp-28], -1
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_00A1
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 1
jne .Lt_00A3
cmp dword ptr [ebp-16], 17
jne .Lt_00A5
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, ebx
mov dword ptr [ebp-32], eax
jmp .Lt_00A7
.Lt_00A9:
jmp .Lt_00A6
.Lt_00AA:
mov dword ptr [ebp-28], 0
jmp .Lt_00A6
.Lt_00A7:
mov eax, dword ptr [ebp-32]
add eax, 4294967292
cmp eax, 14
ja .Lt_00AA
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.LT_00AB+eax*4-16]
_.LT_00AB:
.int .Lt_00A9
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_00A9
.int .Lt_00A9
.Lt_00A6:
jmp .Lt_00A4
.Lt_00A5:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, dword ptr [ebp-16]
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-28], ebx
.Lt_00A4:
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
cmp dword ptr [ebp-28], 0
je .Lt_00AD
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-32], eax
jmp .Lt_00AF
.Lt_00B1:
push dword ptr [ebp-20]
call _CCONSTANT@4
mov dword ptr [ebp-4], eax
jmp .Lt_0097
jmp .Lt_00AE
.Lt_00B2:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
je .Lt_00B4
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
.Lt_00B4:
.Lt_00B3:
cmp dword ptr [ebp-28], 0
je .Lt_00B6
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _CFUNCTIONEX@12
mov dword ptr [ebp-4], eax
jmp .Lt_0097
.Lt_00B6:
.Lt_00B5:
jmp .Lt_00AE
.Lt_00B7:
cmp dword ptr [ebp-24], 0
jne .Lt_00B9
push dword ptr [ebp-20]
call _SYMBVARCHECKACCESS@4
test eax, eax
je .Lt_00BB
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.Lt_00BB:
.Lt_00BA:
.Lt_00B9:
.Lt_00B8:
jmp .Lt_00AE
.Lt_00BC:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
jne .Lt_00BE
push dword ptr [ebp-20]
call _CQUIRKFUNCTION@4
mov dword ptr [ebp-4], eax
jmp .Lt_0097
.Lt_00BE:
.Lt_00BD:
jmp .Lt_00AE
.Lt_00AF:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 5
ja .Lt_00AE
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.LT_00BF+eax*4-4]
_.LT_00BF:
.int .Lt_00B7
.int .Lt_00B1
.int .Lt_00B2
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00BC
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-20], ebx
.Lt_009F:
cmp dword ptr [ebp-20], 0
jne .Lt_009D
.Lt_009E:
jmp .Lt_009B
.Lt_009C:
.Lt_00C0:
cmp dword ptr [ebp-12], 17
jne .Lt_00C4
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-32], ebx
jmp .Lt_00C6
.Lt_00C8:
mov dword ptr [ebp-28], -1
jmp .Lt_00C5
.Lt_00C9:
mov dword ptr [ebp-28], 0
jmp .Lt_00C5
.Lt_00C6:
mov ebx, dword ptr [ebp-32]
add ebx, 4294967292
cmp ebx, 14
ja .Lt_00C9
mov ebx, dword ptr [ebp-32]
jmp dword ptr [_.LT_00CA+ebx*4-16]
_.LT_00CA:
.int .Lt_00C8
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C8
.int .Lt_00C8
.Lt_00C5:
jmp .Lt_00C3
.Lt_00C4:
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, dword ptr [ebp-12]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
.Lt_00C3:
cmp dword ptr [ebp-28], 0
je .Lt_00CC
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
jmp .Lt_00CE
.Lt_00D0:
push dword ptr [ebp-20]
call _CCONSTANT@4
mov dword ptr [ebp-4], eax
jmp .Lt_0097
jmp .Lt_00CD
.Lt_00D1:
push 0
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _CFUNCTIONEX@12
mov dword ptr [ebp-4], eax
jmp .Lt_0097
jmp .Lt_00CD
.Lt_00D2:
cmp dword ptr [ebp-24], 0
jne .Lt_00D4
push dword ptr [ebp-20]
call _SYMBVARCHECKACCESS@4
test eax, eax
je .Lt_00D6
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-24], eax
.Lt_00D6:
.Lt_00D5:
.Lt_00D4:
.Lt_00D3:
jmp .Lt_00CD
.Lt_00D7:
push dword ptr [ebp-20]
call _CQUIRKFUNCTION@4
mov dword ptr [ebp-4], eax
jmp .Lt_0097
jmp .Lt_00CD
.Lt_00CE:
mov eax, dword ptr [ebp-32]
add eax, 4294967295
cmp eax, 5
ja .Lt_00CD
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.LT_00D8+eax*4-4]
_.LT_00D8:
.int .Lt_00D2
.int .Lt_00D0
.int .Lt_00D1
.int .Lt_00CD
.int .Lt_00CD
.int .Lt_00D7
.Lt_00CD:
jmp .Lt_00CB
.Lt_00CC:
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax], 6
jne .Lt_00DA
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+56], 476
jne .Lt_00DC
cmp dword ptr [ebp-12], 17
jne .Lt_00DE
push dword ptr [ebp-20]
call _CQUIRKFUNCTION@4
mov dword ptr [ebp-4], eax
jmp .Lt_0097
.Lt_00DE:
.Lt_00DD:
.Lt_00DC:
.Lt_00DB:
.Lt_00DA:
.Lt_00D9:
.Lt_00CB:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-20], ebx
.Lt_00C2:
cmp dword ptr [ebp-20], 0
jne .Lt_00C0
.Lt_00C1:
.Lt_009B:
cmp dword ptr [ebp-24], 0
je .Lt_00E0
mov ebx, dword ptr [_PARSER+148]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp-24]
call __Z11CVARIABLEEXP8FBSYMBOLl@8
mov dword ptr [ebp-4], eax
jmp .Lt_0097
.Lt_00E0:
.Lt_00DF:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+12], ebx
.Lt_009A:
cmp dword ptr [ebp+12], 0
jne .Lt_0098
.Lt_0099:
mov dword ptr [ebp-4], 0
.Lt_0097:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HFINDID@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E1:
cmp dword ptr [_ENV+136], 3
jne .Lt_00E4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFINDID_QB@8
mov dword ptr [ebp-4], eax
jmp .Lt_00E2
.Lt_00E4:
.Lt_00E3:
.Lt_00E5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_00E8:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
jmp .Lt_00EC
.Lt_00EE:
push dword ptr [ebp-8]
call _CCONSTANT@4
mov dword ptr [ebp-4], eax
jmp .Lt_00E2
jmp .Lt_00EB
.Lt_00EF:
push dword ptr [ebp+16]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _CFUNCTIONEX@12
mov dword ptr [ebp-4], eax
jmp .Lt_00E2
jmp .Lt_00EB
.Lt_00F0:
mov eax, dword ptr [_PARSER+148]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
call __Z11CVARIABLEEXP10FBSYMCHAINl@8
mov dword ptr [ebp-4], eax
jmp .Lt_00E2
jmp .Lt_00EB
.Lt_00F1:
push dword ptr [ebp+16]
mov eax, dword ptr [_PARSER+148]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CIMPLICITDATAMEMBER@16
mov dword ptr [ebp-4], eax
jmp .Lt_00E2
jmp .Lt_00EB
.Lt_00F2:
push 0
call _LEXGETTOKEN@4
cmp eax, 353
jne .Lt_00F4
call _HBASEMEMBERACCESS@0
mov dword ptr [ebp-4], eax
jmp .Lt_00E2
jmp .Lt_00F3
.Lt_00F4:
push dword ptr [ebp-8]
call _CQUIRKFUNCTION@4
mov dword ptr [ebp-4], eax
jmp .Lt_00E2
.Lt_00F3:
jmp .Lt_00EB
.Lt_00F5:
push dword ptr [ebp-8]
call _SYMBGETCOMPCTORHEAD@4
test eax, eax
je .Lt_00F7
push dword ptr [ebp-8]
push 20
call _HCOMPLAINIFABSTRACTCLASS@8
push 2048
call _LEXSKIPTOKEN@4
push dword ptr [ebp-8]
call _CCTORCALL@4
push eax
call _CSTRIDXORMEMBERDEREF@4
mov dword ptr [ebp-4], eax
jmp .Lt_00E2
.Lt_00F7:
.Lt_00F6:
jmp .Lt_00EB
.Lt_00F8:
push dword ptr [ebp-8]
call _SYMBHASCTOR@4
test eax, eax
je .Lt_00FA
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push 20
call _HCOMPLAINIFABSTRACTCLASS@8
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
call _CCTORCALL@4
push eax
call _CSTRIDXORMEMBERDEREF@4
mov dword ptr [ebp-4], eax
jmp .Lt_00E2
.Lt_00FA:
.Lt_00F9:
jmp .Lt_00EB
.Lt_00EC:
mov eax, dword ptr [ebp-12]
add eax, 4294967295
cmp eax, 12
ja .Lt_00EB
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00FB+eax*4-4]
_.LT_00FB:
.int .Lt_00F0
.int .Lt_00EE
.int .Lt_00EF
.int .Lt_00EB
.int .Lt_00EB
.int .Lt_00F2
.int .Lt_00EB
.int .Lt_00EB
.int .Lt_00EB
.int .Lt_00F5
.int .Lt_00F5
.int .Lt_00F1
.int .Lt_00F8
.Lt_00EB:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-8], ebx
.Lt_00EA:
cmp dword ptr [ebp-8], 0
jne .Lt_00E8
.Lt_00E9:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp+12], eax
.Lt_00E7:
cmp dword ptr [ebp+12], 0
jne .Lt_00E5
.Lt_00E6:
mov dword ptr [ebp-4], 0
.Lt_00E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HBASEMEMBERACCESS@0:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FC:
mov eax, dword ptr [_PARSER+104]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
jne .Lt_00FF
push 0
push 0
push 294
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .Lt_00FD
.Lt_00FF:
.Lt_00FE:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-16], ebx
.Lt_0100:
cmp dword ptr [ebp-16], 0
jne .Lt_0104
push 0
push 0
push 295
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .Lt_00FD
.Lt_0104:
.Lt_0103:
push 2112
call _LEXSKIPTOKEN@4
push 0
push 46
call _HMATCH@8
test eax, eax
jne .Lt_0106
push 0
push 0
push 120
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .Lt_00FD
.Lt_0106:
.Lt_0105:
push 0
call _LEXGETTOKEN@4
cmp eax, 353
je .Lt_0108
jmp .Lt_0101
.Lt_0108:
.Lt_0107:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+96]
mov dword ptr [ebp-16], eax
.Lt_0102:
jmp .Lt_0100
.Lt_0101:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 2048
lea eax, [ebp-40]
push eax
mov eax, dword ptr [ebp-16]
push dword ptr [eax+32]
call _HFINDID@12
mov dword ptr [ebp-4], eax
.Lt_00FD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKID@8:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_0109:
cmp dword ptr [ebp+12], 0
je .Lt_010C
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFINDID@12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_010E
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_010A
.Lt_010E:
.Lt_010D:
.Lt_010C:
.Lt_010B:
mov eax, dword ptr [_PARSER+148]
and eax, 1024
test eax, eax
je .Lt_0110
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
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
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-20]
call _ASTNEWCONSTSTR@4
mov dword ptr [ebp-8], eax
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
push 0
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_010A
.Lt_0110:
.Lt_010F:
cmp dword ptr [_ENV+136], 3
je .Lt_0113
push 0
call _LEXGETCLASS@4
test eax, eax
je .Lt_0115
mov dword ptr [ebp-4], 0
jmp .Lt_010A
.Lt_0115:
.Lt_0114:
.Lt_0113:
.Lt_0112:
jmp .Lt_0117
push 0
push 149
push 2097152
call _ERRREPORTNOTALLOWED@12
mov dword ptr [ebp-4], 0
jmp .Lt_010A
.Lt_0117:
.Lt_0116:
mov eax, dword ptr [_PARSER+148]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push 0
call __Z11CVARIABLEEXP10FBSYMCHAINl@8
mov dword ptr [ebp-4], eax
.Lt_010A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
