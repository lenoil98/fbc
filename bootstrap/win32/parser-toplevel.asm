	.intel_syntax noprefix

.section .text
.balign 16

.globl _PARSERSETCTX@0
_PARSERSETCTX@0:
.Lt_0068:
mov dword ptr [_PARSER+96], 0
mov dword ptr [_PARSER+104], 0
mov dword ptr [_PARSER+108], 0
mov dword ptr [_PARSER+88], 0
mov dword ptr [_PARSER+92], 0
mov dword ptr [_PARSER+100], 0
mov dword ptr [_PARSER+28], 0
mov dword ptr [_PARSER+24], 0
mov dword ptr [_PARSER+144], 0
mov dword ptr [_PARSER+148], 2
mov dword ptr [_PARSER+156], 0
mov dword ptr [_PARSER+152], -2147483648
call _PARSERCOMPOUNDSTMTSETCTX@0
.Lt_0069:
ret
.balign 16

.globl _PARSERINIT@0
_PARSERINIT@0:
.Lt_006A:
call _PARSERCOMPOUNDSTMTINIT@0
call _PARSERPROCCALLINIT@0
call _PARSERLETINIT@0
.Lt_006B:
ret
.balign 16

.globl _PARSEREND@0
_PARSEREND@0:
.Lt_006C:
call _PARSERLETEND@0
call _PARSERPROCCALLEND@0
call _PARSERCOMPOUNDSTMTEND@0
call _PARSERINLINEASMEND@0
.Lt_006D:
ret
.balign 16

.globl _CPROGRAM@0
_CPROGRAM@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0076:
mov eax, dword ptr [_PP+216]
mov dword ptr [ebp-4], eax
.Lt_0078:
push 0
call _LEXGETTOKEN@4
cmp eax, 257
jne .Lt_007C
mov eax, dword ptr [_LEX+422144]
lea ebx, [eax+24816]
push ebx
call _DZSTRRESET@4
push 0
call _LEXSKIPTOKEN@4
call _FBSHOULDCONTINUE@0
test eax, eax
jne .Lt_007E
jmp .Lt_0077
.Lt_007E:
.Lt_007D:
inc dword ptr [_PARSER+28]
jmp .Lt_007A
.Lt_007C:
.Lt_007B:
push 0
call _CCOMMENT@4
test eax, eax
je .Lt_0080
call _FBSHOULDCONTINUE@0
test eax, eax
jne .Lt_0082
jmp .Lt_0077
.Lt_0082:
.Lt_0081:
jmp .Lt_007A
.Lt_0080:
.Lt_007F:
call _FBSHOULDCONTINUE@0
test eax, eax
jne .Lt_0084
jmp .Lt_0077
.Lt_0084:
.Lt_0083:
push dword ptr [_ENV+544]
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+8372]
push 113
call _ASTNEWDBG@12
push eax
call _ASTADD@4
call _CLABEL@0
call _CSTATEMENT@0
push 0
call _CCOMMENT@4
call _FBSHOULDCONTINUE@0
test eax, eax
jne .Lt_0086
jmp .Lt_0077
.Lt_0086:
.Lt_0085:
cmp dword ptr [_ENV+148], 0
je .Lt_0088
cmp dword ptr [_ENV+876], 0
jne .Lt_008A
call _HEMITCURRENTLINETEXT@0
.Lt_008A:
.Lt_0089:
.Lt_0088:
.Lt_0087:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 257
jne .Lt_008D
.Lt_008E:
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_008B
.Lt_008D:
cmp dword ptr [ebp-8], 256
jne .Lt_008F
.Lt_0090:
jmp .Lt_008B
.Lt_008F:
push 0
push 0
push 3
call _ERRREPORT@12
push 0
push 0
push -1
push 257
call _HSKIPUNTIL@16
.Lt_0091:
.Lt_008B:
call _FBSHOULDCONTINUE@0
test eax, eax
jne .Lt_0093
jmp .Lt_0077
.Lt_0093:
.Lt_0092:
push 0
push 0
push 114
call _ASTNEWDBG@12
push eax
call _ASTADD@4
inc dword ptr [_PARSER+28]
.Lt_007A:
push 0
call _LEXGETTOKEN@4
cmp eax, 256
jne .Lt_0078
.Lt_0079:
mov eax, dword ptr [ebp-4]
cmp dword ptr [_PP+216], eax
je .Lt_0095
push 0
push 0
push 290
call _ERRREPORT@12
.Lt_0095:
.Lt_0094:
push 0
call _LEXSKIPTOKEN@4
cmp dword ptr [_ENV+876], 0
jne .Lt_0097
call _CCOMPSTMTCHECK@0
.Lt_0097:
.Lt_0096:
.Lt_0077:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HSKIPUNTIL@16
_HSKIPUNTIL@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0098:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-4], 0
.Lt_009A:
push dword ptr [ebp+16]
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
jmp .Lt_009E
.Lt_00A0:
jmp .Lt_009B
jmp .Lt_009D
.Lt_00A1:
cmp dword ptr [ebp+8], 257
je .Lt_00A3
jmp .Lt_009B
.Lt_00A3:
.Lt_00A2:
jmp .Lt_009D
.Lt_00A4:
jmp .Lt_0099
jmp .Lt_009D
.Lt_00A5:
cmp dword ptr [ebp+8], 40
jne .Lt_00A7
jmp .Lt_009B
.Lt_00A7:
.Lt_00A6:
inc dword ptr [ebp-4]
jmp .Lt_009D
.Lt_00A8:
inc dword ptr [ebp-4]
jmp .Lt_009D
.Lt_00A9:
cmp dword ptr [ebp-4], 0
jle .Lt_00AB
dec dword ptr [ebp-4]
jmp .Lt_00AA
.Lt_00AB:
cmp dword ptr [ebp+8], 41
jne .Lt_00AD
jmp .Lt_009B
.Lt_00AD:
.Lt_00AC:
.Lt_00AA:
jmp .Lt_009D
.Lt_00AE:
cmp dword ptr [ebp-4], 0
jle .Lt_00B0
dec dword ptr [ebp-4]
jmp .Lt_00AF
.Lt_00B0:
cmp dword ptr [ebp+8], 125
jne .Lt_00B2
jmp .Lt_009B
.Lt_00B2:
.Lt_00B1:
.Lt_00AF:
jmp .Lt_009D
.Lt_00B3:
mov eax, dword ptr [ebp+8]
cmp eax, 44
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp+20]
je .Lt_00B5
cmp dword ptr [ebp-4], 0
jne .Lt_00B7
jmp .Lt_009B
.Lt_00B7:
.Lt_00B6:
.Lt_00B5:
.Lt_00B4:
jmp .Lt_009D
.Lt_00B8:
push dword ptr [ebp+16]
call _LEXGETTOKEN@4
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
jne .Lt_00BA
jmp .Lt_009B
.Lt_00BA:
.Lt_00B9:
jmp .Lt_009D
.Lt_009E:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967256
cmp ebx, 220
ja .Lt_00B8
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.LT_00BB+ebx*4-160]
_.LT_00BB:
.int .Lt_00A5
.int .Lt_00A9
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B3
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00A8
.int .Lt_00B8
.int .Lt_00AE
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00A4
.int .Lt_00A0
.int .Lt_00A1
.int .Lt_00A1
.int .Lt_00A1
.Lt_009D:
push dword ptr [ebp+16]
call _LEXSKIPTOKEN@4
.Lt_009C:
jmp .Lt_009A
.Lt_009B:
cmp dword ptr [ebp+12], 0
je .Lt_00BD
push dword ptr [ebp+16]
call _LEXGETTOKEN@4
cmp dword ptr [ebp+8], eax
jne .Lt_00BF
push dword ptr [ebp+16]
call _LEXSKIPTOKEN@4
.Lt_00BF:
.Lt_00BE:
.Lt_00BD:
.Lt_00BC:
.Lt_0099:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _HSKIPCOMPOUND@12
_HSKIPCOMPOUND@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00C1:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], -1
jne .Lt_00C4
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.Lt_00C4:
.Lt_00C3:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
.Lt_00C5:
push dword ptr [ebp+16]
call _LEXGETTOKEN@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 256
jne .Lt_00CA
.Lt_00CB:
jmp .Lt_00C2
jmp .Lt_00C8
.Lt_00CA:
cmp dword ptr [ebp-12], 257
jne .Lt_00CC
.Lt_00CD:
mov dword ptr [ebp-8], 0
jmp .Lt_00C8
.Lt_00CC:
cmp dword ptr [ebp-12], 259
je .Lt_00CF
.Lt_00D0:
cmp dword ptr [ebp-12], 260
jne .Lt_00CE
.Lt_00CF:
mov dword ptr [ebp-8], -1
jmp .Lt_00C8
.Lt_00CE:
cmp dword ptr [ebp-12], 340
jne .Lt_00D1
.Lt_00D2:
cmp dword ptr [ebp-8], 0
jne .Lt_00D4
push dword ptr [ebp+16]
push 1
call _LEXGETLOOKAHEAD@8
mov ebx, dword ptr [ebp+12]
cmp eax, ebx
jne .Lt_00D6
push dword ptr [ebp+16]
call _LEXSKIPTOKEN@4
cmp dword ptr [ebp-4], 0
jle .Lt_00D8
dec dword ptr [ebp-4]
.Lt_00D8:
.Lt_00D7:
cmp dword ptr [ebp-4], 0
jne .Lt_00DA
jmp .Lt_00C6
.Lt_00DA:
.Lt_00D9:
.Lt_00D6:
.Lt_00D5:
.Lt_00D4:
.Lt_00D3:
jmp .Lt_00C8
.Lt_00D1:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebp-12], ebx
jne .Lt_00DB
.Lt_00DC:
cmp dword ptr [ebp-8], 0
jne .Lt_00DE
inc dword ptr [ebp-4]
.Lt_00DE:
.Lt_00DD:
.Lt_00DB:
.Lt_00C8:
push dword ptr [ebp+16]
call _LEXSKIPTOKEN@4
.Lt_00C7:
jmp .Lt_00C5
.Lt_00C6:
push dword ptr [ebp+16]
call _LEXSKIPTOKEN@4
.Lt_00C2:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _HMATCHEXPR@4
_HMATCHEXPR@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00DF:
mov dword ptr [ebp-8], 0
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00E2
push 0
push 0
push 9
call _ERRREPORT@12
cmp dword ptr [ebp+8], -2147483648
jne .Lt_00E4
mov dword ptr [ebp-4], 0
jmp .Lt_00E0
.Lt_00E4:
.Lt_00E3:
push 0
push dword ptr [ebp+8]
call _ASTNEWCONSTZ@8
mov dword ptr [ebp-8], eax
.Lt_00E2:
.Lt_00E1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00E0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_fb_ctor__parserztoplevel:
.Lt_0002:
.Lt_0003:
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
_HEMITCURRENTLINETEXT@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_006E:
mov eax, dword ptr [_AST+40]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
.Lt_0070:
cmp dword ptr [ebp-4], 0
je .Lt_0071
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 30
jne .Lt_0073
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+32], 113
jne .Lt_0075
push dword ptr [ebp-4]
mov ebx, dword ptr [_LEX+422144]
push dword ptr [ebx+24816]
call _ASTNEWLIT@4
push eax
call _ASTADDAFTER@8
jmp .Lt_0071
.Lt_0075:
.Lt_0074:
.Lt_0073:
.Lt_0072:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+72]
mov dword ptr [ebp-4], ebx
jmp .Lt_0070
.Lt_0071:
mov ebx, dword ptr [_LEX+422144]
lea eax, [ebx+24816]
push eax
call _DZSTRRESET@4
.Lt_006F:
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

.globl _PARSER
.balign 4
	.lcomm	_PARSER,164

.section .ctors
.int _fb_ctor__parserztoplevel
