	.intel_syntax noprefix

.section .text
.balign 16

.globl _CQUIRKSTMT
_CQUIRKSTMT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], -1
jne .Lt_006B
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp+8], eax
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
je .Lt_006F
.Lt_0070:
cmp dword ptr [ebp-12], 2
jne .Lt_006E
.Lt_006F:
cmp dword ptr [_ENV+136], 3
jne .Lt_0072
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+8], -2147483648
je .Lt_0074
mov dword ptr [ebp-4], 0
jmp .Lt_0069
.Lt_0074:
.Lt_0073:
.Lt_0072:
.Lt_0071:
jmp .Lt_006C
.Lt_006E:
cmp dword ptr [ebp+8], 63
jne .Lt_0077
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0079
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_0079:
.Lt_0078:
push dword ptr [ebp+8]
call _CPRINTSTMT
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0077:
.Lt_0076:
jmp .Lt_0069
.Lt_0075:
.Lt_006C:
.Lt_006B:
.Lt_006A:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_007B
.Lt_007D:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_007F
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_007F:
.Lt_007E:
push dword ptr [ebp+8]
call _CGOTOSTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_0080:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0082
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_0082:
.Lt_0081:
push dword ptr [ebp+8]
call _CPRINTSTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_0083:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0085
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_0085:
.Lt_0084:
push dword ptr [ebp+8]
call _CDATASTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_0086:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0088
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_0088:
.Lt_0087:
call _CERASESTMT
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_0089:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_008B
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_008B:
.Lt_008A:
call _CSWAPSTMT
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_008C:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_008E
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_008E:
.Lt_008D:
call _CLINEINPUTSTMT
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_008F:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0091
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_0091:
.Lt_0090:
call _CINPUTSTMT
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_0092:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0094
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_0094:
.Lt_0093:
call _CPOKESTMT
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_0095:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0097
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_0097:
.Lt_0096:
push dword ptr [ebp+8]
call _CFILESTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_0098:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_009A
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_009A:
.Lt_0099:
call _CONSTMT
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_009B:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_009D
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_009D:
.Lt_009C:
call _CWRITESTMT
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_009E:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00A0
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_00A0:
.Lt_009F:
call _CERRORSTMT
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_00A1:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00A3
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_00A3:
.Lt_00A2:
call _CERRSETSTMT
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_00A4:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00A6
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_00A6:
.Lt_00A5:
push 0
call _CVIEWSTMT
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_007A
.Lt_00A7:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00A9
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_00A9:
.Lt_00A8:
call _CMIDSTMT
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_00AA:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00AC
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_00AC:
.Lt_00AB:
push dword ptr [ebp+8]
call _CLRSETSTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_00AD:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00AF
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_00AF:
.Lt_00AE:
push 0
call _CWIDTHSTMT
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_007A
.Lt_00B0:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00B2
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_00B2:
.Lt_00B1:
push 0
call _CCOLORSTMT
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_007A
.Lt_00B3:
cmp dword ptr [_ENV+136], 3
jne .Lt_00B5
push 0
call _CCOMMENT
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00B5:
.Lt_00B4:
jmp .Lt_007A
.Lt_00B6:
push 1
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00B8
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_00B8:
.Lt_00B7:
push dword ptr [ebp+8]
call _CVALISTSTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_007A
.Lt_007B:
mov eax, dword ptr [ebp-12]
add eax, 4294967036
cmp eax, 256
ja .Lt_007A
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00B9+eax*4-1040]
_.LT_00B9:
.int .Lt_00B3
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007D
.int .Lt_007D
.int .Lt_007D
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_00AA
.int .Lt_00AA
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_00A7
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_0083
.int .Lt_0083
.int .Lt_0083
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_0080
.int .Lt_0080
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_0092
.int .Lt_0089
.int .Lt_0095
.int .Lt_0095
.int .Lt_0095
.int .Lt_0095
.int .Lt_0095
.int .Lt_007A
.int .Lt_009B
.int .Lt_0095
.int .Lt_008F
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_0095
.int .Lt_007A
.int .Lt_007A
.int .Lt_008C
.int .Lt_00A4
.int .Lt_0095
.int .Lt_00AD
.int .Lt_00B0
.int .Lt_007A
.int .Lt_0086
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_0098
.int .Lt_009E
.int .Lt_007A
.int .Lt_00A1
.int .Lt_007D
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_007A
.int .Lt_00B6
.int .Lt_007A
.int .Lt_00B6
.int .Lt_00B6
.Lt_007A:
cmp dword ptr [ebp-8], 0
jne .Lt_00BB
push dword ptr [ebp+8]
call _CGFXSTMT
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00BB:
.Lt_00BA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CQUIRKFUNCTION
_CQUIRKFUNCTION:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00BF:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [_PARSER+148]
and ebx, 1024
test ebx, ebx
je .Lt_00C2
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 40
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
cmp ebx, 336
setne bl
shr ebx, 1
sbb ebx, ebx
push 0
push 1
mov esi, eax
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 301
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
and esi, ebx
je .Lt_00C4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-8], eax
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00C0
.Lt_00C4:
.Lt_00C3:
.Lt_00C2:
.Lt_00C1:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_00C7
.Lt_00C9:
push dword ptr [ebp-12]
call _CMKXFUNCT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00CA:
push dword ptr [ebp-12]
call _CCVXFUNCT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00CB:
push dword ptr [ebp-12]
call _CSTRINGFUNCT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00CC:
push 0
push dword ptr [ebp-12]
call _CMATHFUNCT
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00CD:
call _CPEEKFUNCT
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00CE:
push dword ptr [ebp-12]
call _CARRAYFUNCT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00CF:
push dword ptr [ebp-12]
call _CFILEFUNCT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00D0:
call _CERRORFUNCT
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00D1:
call _CIIFFUNCT
push eax
call _CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00C0
jmp .Lt_00C6
.Lt_00D2:
call _CVAFUNCT
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00D3:
push dword ptr [ebp-12]
call _CVALISTFUNCT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00D4:
push 0
push dword ptr [ebp-12]
call _CTYPECONVEXPR
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_00C0
jmp .Lt_00C6
.Lt_00D5:
call _CANONTYPE
push eax
call _CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00C0
jmp .Lt_00C6
.Lt_00D6:
push -1
call _CVIEWSTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00D7:
push -1
call _CWIDTHSTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00D8:
push -1
call _CCOLORSTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00D9:
call _CSCREENFUNCT
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00DA:
call _CTHREADCALLFUNC
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00C7:
mov eax, dword ptr [ebp-16]
add eax, 4294966960
cmp eax, 181
ja .Lt_00C6
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_00DB+eax*4-1344]
_.LT_00DB:
.int .Lt_00D5
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00CB
.int .Lt_00C6
.int .Lt_00CB
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00D4
.int .Lt_00D4
.int .Lt_00D4
.int .Lt_00D4
.int .Lt_00D4
.int .Lt_00D4
.int .Lt_00D4
.int .Lt_00D4
.int .Lt_00D4
.int .Lt_00D4
.int .Lt_00D4
.int .Lt_00D4
.int .Lt_00D4
.int .Lt_00D4
.int .Lt_00D4
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CA
.int .Lt_00CA
.int .Lt_00CA
.int .Lt_00CA
.int .Lt_00CA
.int .Lt_00CA
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00C9
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00CC
.int .Lt_00CC
.int .Lt_00CD
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00CF
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00D6
.int .Lt_00C6
.int .Lt_00D7
.int .Lt_00D8
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00D2
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00D0
.int .Lt_00C6
.int .Lt_00D1
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00D3
.int .Lt_00C6
.int .Lt_00C6
.int .Lt_00DA
.Lt_00C6:
cmp dword ptr [ebp-8], 0
jne .Lt_00DD
push dword ptr [ebp-12]
call _CGFXFUNCT
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00DD:
.Lt_00DC:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00C0:
mov eax, dword ptr [ebp-4]
pop esi
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

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
