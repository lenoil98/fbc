	.intel_syntax noprefix

.section .text
.balign 16

.globl PARSERSETCTX
PARSERSETCTX:
.Lt_0067:
mov dword ptr [PARSER+96], 0
mov dword ptr [PARSER+104], 0
mov dword ptr [PARSER+108], 0
mov dword ptr [PARSER+88], 0
mov dword ptr [PARSER+92], 0
mov dword ptr [PARSER+100], 0
mov dword ptr [PARSER+28], 0
mov dword ptr [PARSER+24], 0
mov dword ptr [PARSER+144], 0
mov dword ptr [PARSER+148], 2
mov dword ptr [PARSER+156], 0
mov dword ptr [PARSER+152], -2147483648
call PARSERCOMPOUNDSTMTSETCTX
.Lt_0068:
ret
.balign 16

.globl PARSERINIT
PARSERINIT:
.Lt_0069:
call PARSERCOMPOUNDSTMTINIT
call PARSERPROCCALLINIT
call PARSERLETINIT
.Lt_006A:
ret
.balign 16

.globl PARSEREND
PARSEREND:
.Lt_006B:
call PARSERLETEND
call PARSERPROCCALLEND
call PARSERCOMPOUNDSTMTEND
call PARSERINLINEASMEND
.Lt_006C:
ret
.balign 16

.globl CPROGRAM
CPROGRAM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0075:
mov eax, dword ptr [PP+208]
mov dword ptr [ebp-4], eax
.Lt_0077:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 257
jne .Lt_007B
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+49392]
push ebx
call DZSTRRESET
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
call FBSHOULDCONTINUE
test eax, eax
jne .Lt_007D
jmp .Lt_0076
.Lt_007D:
.Lt_007C:
inc dword ptr [PARSER+28]
jmp .Lt_0079
.Lt_007B:
.Lt_007A:
push 0
call CCOMMENT
add esp, 4
test eax, eax
je .Lt_007F
call FBSHOULDCONTINUE
test eax, eax
jne .Lt_0081
jmp .Lt_0076
.Lt_0081:
.Lt_0080:
jmp .Lt_0079
.Lt_007F:
.Lt_007E:
call FBSHOULDCONTINUE
test eax, eax
jne .Lt_0083
jmp .Lt_0076
.Lt_0083:
.Lt_0082:
push dword ptr [ENV+544]
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16564]
push 113
call ASTNEWDBG
add esp, 12
push eax
call ASTADD
add esp, 4
call CLABEL
call CSTATEMENT
push 0
call CCOMMENT
add esp, 4
call FBSHOULDCONTINUE
test eax, eax
jne .Lt_0085
jmp .Lt_0076
.Lt_0085:
.Lt_0084:
cmp dword ptr [ENV+148], 0
je .Lt_0087
cmp dword ptr [ENV+876], 0
jne .Lt_0089
call HEMITCURRENTLINETEXT
.Lt_0089:
.Lt_0088:
.Lt_0087:
.Lt_0086:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 257
jne .Lt_008C
.Lt_008D:
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_008A
.Lt_008C:
cmp dword ptr [ebp-8], 256
jne .Lt_008E
.Lt_008F:
jmp .Lt_008A
.Lt_008E:
push 0
push 0
push 3
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 257
call HSKIPUNTIL
add esp, 16
.Lt_0090:
.Lt_008A:
call FBSHOULDCONTINUE
test eax, eax
jne .Lt_0092
jmp .Lt_0076
.Lt_0092:
.Lt_0091:
push 0
push 0
push 114
call ASTNEWDBG
add esp, 12
push eax
call ASTADD
add esp, 4
inc dword ptr [PARSER+28]
.Lt_0079:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 256
jne .Lt_0077
.Lt_0078:
mov eax, dword ptr [ebp-4]
cmp dword ptr [PP+208], eax
je .Lt_0094
push 0
push 0
push 290
call ERRREPORT
add esp, 12
.Lt_0094:
.Lt_0093:
push 0
call LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ENV+876], 0
jne .Lt_0096
call CCOMPSTMTCHECK
.Lt_0096:
.Lt_0095:
.Lt_0076:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HSKIPUNTIL
HSKIPUNTIL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0097:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
.Lt_0099:
push dword ptr [ebp+16]
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_009D
.Lt_009F:
jmp .Lt_009A
jmp .Lt_009C
.Lt_00A0:
cmp dword ptr [ebp+8], 257
je .Lt_00A2
jmp .Lt_009A
.Lt_00A2:
.Lt_00A1:
jmp .Lt_009C
.Lt_00A3:
jmp .Lt_0098
jmp .Lt_009C
.Lt_00A4:
cmp dword ptr [ebp+8], 40
jne .Lt_00A6
jmp .Lt_009A
.Lt_00A6:
.Lt_00A5:
inc dword ptr [ebp-4]
jmp .Lt_009C
.Lt_00A7:
inc dword ptr [ebp-4]
jmp .Lt_009C
.Lt_00A8:
cmp dword ptr [ebp-4], 0
jle .Lt_00AA
dec dword ptr [ebp-4]
jmp .Lt_00A9
.Lt_00AA:
cmp dword ptr [ebp+8], 41
jne .Lt_00AC
jmp .Lt_009A
.Lt_00AC:
.Lt_00AB:
.Lt_00A9:
jmp .Lt_009C
.Lt_00AD:
cmp dword ptr [ebp-4], 0
jle .Lt_00AF
dec dword ptr [ebp-4]
jmp .Lt_00AE
.Lt_00AF:
cmp dword ptr [ebp+8], 125
jne .Lt_00B1
jmp .Lt_009A
.Lt_00B1:
.Lt_00B0:
.Lt_00AE:
jmp .Lt_009C
.Lt_00B2:
mov eax, dword ptr [ebp+8]
cmp eax, 44
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp+20]
je .Lt_00B4
cmp dword ptr [ebp-4], 0
jne .Lt_00B6
jmp .Lt_009A
.Lt_00B6:
.Lt_00B5:
.Lt_00B4:
.Lt_00B3:
jmp .Lt_009C
.Lt_00B7:
push dword ptr [ebp+16]
call LEXGETTOKEN
add esp, 4
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
jne .Lt_00B9
jmp .Lt_009A
.Lt_00B9:
.Lt_00B8:
jmp .Lt_009C
.Lt_009D:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967256
cmp ebx, 220
ja .Lt_00B7
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.LT_00BA+ebx*4-160]
.LT_00BA:
.int .Lt_00A4
.int .Lt_00A8
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B2
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00A7
.int .Lt_00B7
.int .Lt_00AD
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00B7
.int .Lt_00A3
.int .Lt_009F
.int .Lt_00A0
.int .Lt_00A0
.int .Lt_00A0
.Lt_009C:
push dword ptr [ebp+16]
call LEXSKIPTOKEN
add esp, 4
.Lt_009B:
jmp .Lt_0099
.Lt_009A:
cmp dword ptr [ebp+12], 0
je .Lt_00BC
push dword ptr [ebp+16]
call LEXGETTOKEN
add esp, 4
cmp dword ptr [ebp+8], eax
jne .Lt_00BE
push dword ptr [ebp+16]
call LEXSKIPTOKEN
add esp, 4
.Lt_00BE:
.Lt_00BD:
.Lt_00BC:
.Lt_00BB:
.Lt_0098:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HSKIPCOMPOUND
HSKIPCOMPOUND:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00C0:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], -1
jne .Lt_00C3
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.Lt_00C3:
.Lt_00C2:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
.Lt_00C4:
push dword ptr [ebp+16]
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 256
jne .Lt_00C9
.Lt_00CA:
jmp .Lt_00C1
jmp .Lt_00C7
.Lt_00C9:
cmp dword ptr [ebp-12], 257
jne .Lt_00CB
.Lt_00CC:
mov dword ptr [ebp-8], 0
jmp .Lt_00C7
.Lt_00CB:
cmp dword ptr [ebp-12], 259
je .Lt_00CE
.Lt_00CF:
cmp dword ptr [ebp-12], 260
jne .Lt_00CD
.Lt_00CE:
mov dword ptr [ebp-8], -1
jmp .Lt_00C7
.Lt_00CD:
cmp dword ptr [ebp-12], 340
jne .Lt_00D0
.Lt_00D1:
cmp dword ptr [ebp-8], 0
jne .Lt_00D3
push dword ptr [ebp+16]
push 1
call LEXGETLOOKAHEAD
add esp, 8
mov ebx, dword ptr [ebp+12]
cmp eax, ebx
jne .Lt_00D5
push dword ptr [ebp+16]
call LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp-4], 0
jle .Lt_00D7
dec dword ptr [ebp-4]
.Lt_00D7:
.Lt_00D6:
cmp dword ptr [ebp-4], 0
jne .Lt_00D9
jmp .Lt_00C5
.Lt_00D9:
.Lt_00D8:
.Lt_00D5:
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
jmp .Lt_00C7
.Lt_00D0:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebp-12], ebx
jne .Lt_00DA
.Lt_00DB:
cmp dword ptr [ebp-8], 0
jne .Lt_00DD
inc dword ptr [ebp-4]
.Lt_00DD:
.Lt_00DC:
.Lt_00DA:
.Lt_00C7:
push dword ptr [ebp+16]
call LEXSKIPTOKEN
add esp, 4
.Lt_00C6:
jmp .Lt_00C4
.Lt_00C5:
push dword ptr [ebp+16]
call LEXSKIPTOKEN
add esp, 4
.Lt_00C1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HMATCHEXPR
HMATCHEXPR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00DE:
mov dword ptr [ebp-8], 0
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00E1
push 0
push 0
push 9
call ERRREPORT
add esp, 12
cmp dword ptr [ebp+8], -2147483648
jne .Lt_00E3
mov dword ptr [ebp-4], 0
jmp .Lt_00DF
.Lt_00E3:
.Lt_00E2:
push 0
push dword ptr [ebp+8]
call ASTNEWCONSTZ
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_00E1:
.Lt_00E0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00DF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__parserztoplevel:
.Lt_0002:
.Lt_0003:
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
.balign 16
HEMITCURRENTLINETEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_006D:
mov eax, dword ptr [AST+40]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_006F:
cmp dword ptr [ebp-4], 0
je .Lt_0070
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 30
jne .Lt_0072
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+28], 113
jne .Lt_0074
push dword ptr [ebp-4]
mov ebx, dword ptr [LEX+839936]
push dword ptr [ebx+49392]
call ASTNEWLIT
add esp, 4
push eax
call ASTADDAFTER
add esp, 8
jmp .Lt_0070
.Lt_0074:
.Lt_0073:
.Lt_0072:
.Lt_0071:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
jmp .Lt_006F
.Lt_0070:
mov ebx, dword ptr [LEX+839936]
lea eax, [ebx+49392]
push eax
call DZSTRRESET
add esp, 4
.Lt_006E:
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

.globl PARSER
.balign 4
	.lcomm	PARSER,164

.section .ctors
.int fb_ctor__parserztoplevel
