	.intel_syntax noprefix

.section .text
.balign 16

.globl CQUIRKSTMT
CQUIRKSTMT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], -1
jne .Lt_006A
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp+8], eax
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 1
je .Lt_006E
.Lt_006F:
cmp dword ptr [ebp-12], 2
jne .Lt_006D
.Lt_006E:
cmp dword ptr [ENV+136], 3
jne .Lt_0071
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], -2147483648
je .Lt_0073
mov dword ptr [ebp-4], 0
jmp .Lt_0068
.Lt_0073:
.Lt_0072:
.Lt_0071:
.Lt_0070:
jmp .Lt_006B
.Lt_006D:
cmp dword ptr [ebp+8], 63
jne .Lt_0076
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0078
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_0078:
.Lt_0077:
push dword ptr [ebp+8]
call CPRINTSTMT
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0076:
.Lt_0075:
jmp .Lt_0068
.Lt_0074:
.Lt_006B:
.Lt_006A:
.Lt_0069:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_007A
.Lt_007C:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_007E
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_007E:
.Lt_007D:
push dword ptr [ebp+8]
call CGOTOSTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_007F:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0081
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_0081:
.Lt_0080:
push dword ptr [ebp+8]
call CPRINTSTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_0082:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0084
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_0084:
.Lt_0083:
push dword ptr [ebp+8]
call CDATASTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_0085:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0087
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_0087:
.Lt_0086:
call CERASESTMT
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_0088:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_008A
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_008A:
.Lt_0089:
call CSWAPSTMT
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_008B:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_008D
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_008D:
.Lt_008C:
call CLINEINPUTSTMT
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_008E:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0090
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_0090:
.Lt_008F:
call CINPUTSTMT
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_0091:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0093
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_0093:
.Lt_0092:
call CPOKESTMT
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_0094:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0096
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_0096:
.Lt_0095:
push dword ptr [ebp+8]
call CFILESTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_0097:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0099
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_0099:
.Lt_0098:
call CONSTMT
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_009A:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_009C
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_009C:
.Lt_009B:
call CWRITESTMT
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_009D:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_009F
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_009F:
.Lt_009E:
call CERRORSTMT
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_00A0:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00A2
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_00A2:
.Lt_00A1:
call CERRSETSTMT
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_00A3:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00A5
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_00A5:
.Lt_00A4:
push 0
call CVIEWSTMT
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_0079
.Lt_00A6:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00A8
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_00A8:
.Lt_00A7:
call CMIDSTMT
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_00A9:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00AB
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_00AB:
.Lt_00AA:
push dword ptr [ebp+8]
call CLRSETSTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_00AC:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00AE
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_00AE:
.Lt_00AD:
push 0
call CWIDTHSTMT
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_0079
.Lt_00AF:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00B1
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_00B1:
.Lt_00B0:
push 0
call CCOLORSTMT
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_0079
.Lt_00B2:
cmp dword ptr [ENV+136], 3
jne .Lt_00B4
push 0
call CCOMMENT
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00B4:
.Lt_00B3:
jmp .Lt_0079
.Lt_00B5:
push 1
call CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_00B7
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_00B7:
.Lt_00B6:
push dword ptr [ebp+8]
call CVALISTSTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_007A:
mov eax, dword ptr [ebp-12]
add eax, 4294967036
cmp eax, 256
ja .Lt_0079
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00B8+eax*4-1040]
.LT_00B8:
.int .Lt_00B2
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_00A9
.int .Lt_00A9
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_00A6
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0082
.int .Lt_0082
.int .Lt_0082
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_007F
.int .Lt_007F
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0091
.int .Lt_0088
.int .Lt_0094
.int .Lt_0094
.int .Lt_0094
.int .Lt_0094
.int .Lt_0094
.int .Lt_0079
.int .Lt_009A
.int .Lt_0094
.int .Lt_008E
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0094
.int .Lt_0079
.int .Lt_0079
.int .Lt_008B
.int .Lt_00A3
.int .Lt_0094
.int .Lt_00AC
.int .Lt_00AF
.int .Lt_0079
.int .Lt_0085
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0097
.int .Lt_009D
.int .Lt_0079
.int .Lt_00A0
.int .Lt_007C
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_0079
.int .Lt_00B5
.int .Lt_0079
.int .Lt_00B5
.int .Lt_00B5
.Lt_0079:
cmp dword ptr [ebp-8], 0
jne .Lt_00BA
push dword ptr [ebp+8]
call CGFXSTMT
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00BA:
.Lt_00B9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CQUIRKFUNCTION
CQUIRKFUNCTION:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00BE:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [PARSER+148]
and ebx, 1024
test ebx, ebx
je .Lt_00C1
push 0
push 1
call LEXGETLOOKAHEAD
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
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 301
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
and esi, ebx
je .Lt_00C3
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
call LEXGETTEXT
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-8], eax
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00BF
.Lt_00C3:
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_00C6
.Lt_00C8:
push dword ptr [ebp-12]
call CMKXFUNCT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00C9:
push dword ptr [ebp-12]
call CCVXFUNCT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00CA:
push dword ptr [ebp-12]
call CSTRINGFUNCT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00CB:
push 0
push dword ptr [ebp-12]
call CMATHFUNCT
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00CC:
call CPEEKFUNCT
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00CD:
push dword ptr [ebp-12]
call CARRAYFUNCT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00CE:
push dword ptr [ebp-12]
call CFILEFUNCT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00CF:
call CERRORFUNCT
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00D0:
call CIIFFUNCT
push eax
call CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00BF
jmp .Lt_00C5
.Lt_00D1:
call CVAFUNCT
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00D2:
push dword ptr [ebp-12]
call CVALISTFUNCT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00D3:
push 0
push dword ptr [ebp-12]
call CTYPECONVEXPR
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_00BF
jmp .Lt_00C5
.Lt_00D4:
call CANONTYPE
push eax
call CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00BF
jmp .Lt_00C5
.Lt_00D5:
push -1
call CVIEWSTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00D6:
push -1
call CWIDTHSTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00D7:
push -1
call CCOLORSTMT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00D8:
call CSCREENFUNCT
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00D9:
call CTHREADCALLFUNC
mov dword ptr [ebp-8], eax
jmp .Lt_00C5
.Lt_00C6:
mov eax, dword ptr [ebp-16]
add eax, 4294966960
cmp eax, 181
ja .Lt_00C5
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_00DA+eax*4-1344]
.LT_00DA:
.int .Lt_00D4
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00CA
.int .Lt_00C5
.int .Lt_00CA
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00D3
.int .Lt_00D3
.int .Lt_00D3
.int .Lt_00D3
.int .Lt_00D3
.int .Lt_00D3
.int .Lt_00D3
.int .Lt_00D3
.int .Lt_00D3
.int .Lt_00D3
.int .Lt_00D3
.int .Lt_00D3
.int .Lt_00D3
.int .Lt_00D3
.int .Lt_00D3
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
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
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00C8
.int .Lt_00CA
.int .Lt_00CA
.int .Lt_00CA
.int .Lt_00CA
.int .Lt_00CA
.int .Lt_00CA
.int .Lt_00CA
.int .Lt_00CA
.int .Lt_00CA
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00CB
.int .Lt_00CB
.int .Lt_00CC
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00CE
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00D5
.int .Lt_00C5
.int .Lt_00D6
.int .Lt_00D7
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00CD
.int .Lt_00CD
.int .Lt_00D1
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00CF
.int .Lt_00C5
.int .Lt_00D0
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00D8
.int .Lt_00D8
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00D2
.int .Lt_00C5
.int .Lt_00C5
.int .Lt_00D9
.Lt_00C5:
cmp dword ptr [ebp-8], 0
jne .Lt_00DC
push dword ptr [ebp-12]
call CGFXFUNCT
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00DC:
.Lt_00DB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00BF:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
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
call fb_StrAssign
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
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
