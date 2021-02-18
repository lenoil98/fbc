	.intel_syntax noprefix

.section .text
.balign 16

.globl PPINIT
PPINIT:
.type PPINIT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_007D:
mov dword ptr [ebp-4], 0
mov dword ptr [PP], 8
mov word ptr [PP+36], 0
lea eax, [PP]
mov dword ptr [PP+56], eax
mov dword ptr [PP+60], 0
mov dword ptr [PP+64], 0
lea eax, [PP]
mov dword ptr [PP+68], eax
mov dword ptr [PP+84], 0
mov dword ptr [PP+88], 0
sub esp, 4
push 0
push 24
lea eax, [PP+72]
push eax
call HASHINIT
add esp, 16
jmp .Lt_007F
.Lt_0080:
sub esp, 4
push 12
push 0
lea eax, [PP+72]
push eax
call memset
add esp, 16
.Lt_007F:
sub esp, 12
lea eax, [SYMB+98652]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [PP+92], eax
mov dword ptr [ebp-4], 0
.Lt_0084:
mov eax, dword ptr [ebp-4]
imul eax, 12
cmp dword ptr [KWDTB+eax], 0
jne .Lt_0086
jmp .Lt_0083
.Lt_0086:
.Lt_0085:
sub esp, 8
push 0
push -2147483648
lea eax, [PP+68]
push eax
push 1
mov eax, dword ptr [ebp-4]
imul eax, 12
push dword ptr [KWDTB+eax+4]
mov eax, dword ptr [ebp-4]
imul eax, 12
push dword ptr [KWDTB+eax]
call SYMBADDKEYWORD
add esp, 32
mov ebx, dword ptr [ebp-4]
imul ebx, 12
mov dword ptr [KWDTB+ebx+8], eax
mov eax, dword ptr [ebp-4]
imul eax, 12
cmp dword ptr [KWDTB+eax+8], 0
jne .Lt_0088
jmp .Lt_007E
.Lt_0088:
.Lt_0087:
.Lt_0082:
inc dword ptr [ebp-4]
.Lt_0081:
cmp dword ptr [ebp-4], 23
jle .Lt_0084
.Lt_0083:
mov dword ptr [PP+212], 0
call PPDEFINEINIT
call PPCONDINIT
call PPPRAGMAINIT
.Lt_007E:
pop ebx
mov esp, ebp
pop ebp
ret
.size PPINIT, .-PPINIT
.balign 16

.globl PPEND
PPEND:
.type PPEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0089:
mov dword ptr [ebp-4], 0
call PPPRAGMAEND
call PPCONDEND
call PPDEFINEEND
mov dword ptr [ebp-4], 0
.Lt_008E:
mov eax, dword ptr [ebp-4]
imul eax, 12
cmp dword ptr [KWDTB+eax+8], 0
jne .Lt_0090
jmp .Lt_008D
.Lt_0090:
.Lt_008F:
sub esp, 12
mov eax, dword ptr [ebp-4]
imul eax, 12
push dword ptr [KWDTB+eax+8]
call SYMBFREESYMBOL
add esp, 16
mov eax, dword ptr [ebp-4]
imul eax, 12
mov dword ptr [KWDTB+eax+8], 0
.Lt_008C:
inc dword ptr [ebp-4]
.Lt_008B:
cmp dword ptr [ebp-4], 23
jle .Lt_008E
.Lt_008D:
sub esp, 8
push dword ptr [PP+92]
lea eax, [SYMB+98652]
push eax
call LISTDELNODE
add esp, 16
sub esp, 12
lea eax, [PP+72]
push eax
call HASHEND
add esp, 16
.Lt_008A:
mov esp, ebp
pop ebp
ret
.size PPEND, .-PPEND
.balign 16

.globl PPCHECK
PPCHECK:
.type PPCHECK, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0091:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx], 35
je .Lt_0094
jmp .Lt_0092
.Lt_0094:
.Lt_0093:
mov ebx, dword ptr [LEX+839936]
cmp dword ptr [ebx+16572], 0
je .Lt_0096
jmp .Lt_0092
.Lt_0096:
.Lt_0095:
mov ebx, dword ptr [LEX+839936]
cmp dword ptr [ebx+16568], 257
je .Lt_0098
mov ebx, dword ptr [LEX+839936]
cmp dword ptr [ebx+16568], -1
je .Lt_009A
jmp .Lt_0092
.Lt_009A:
.Lt_0099:
.Lt_0098:
.Lt_0097:
mov ebx, dword ptr [LEX+839936]
inc dword ptr [ebx+16572]
lea ebx, [PP]
mov eax, dword ptr [LEX+839936]
mov dword ptr [eax+16580], ebx
sub esp, 12
push 256
call LEXSKIPTOKEN
add esp, 16
call PPPARSE
mov ebx, dword ptr [LEX+839936]
dec dword ptr [ebx+16572]
.Lt_0092:
pop ebx
mov esp, ebp
pop ebp
ret
.size PPCHECK, .-PPCHECK
.balign 16

.globl PPPARSE
PPPARSE:
.type PPPARSE, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_009B:
sub esp, 12
push 256
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_009E
.Lt_00A0:
sub esp, 12
push 2050
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call PPDEFINE
add esp, 16
jmp .Lt_009D
.Lt_00A1:
sub esp, 12
push 2050
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push -1
call PPDEFINE
add esp, 16
jmp .Lt_009D
.Lt_00A2:
sub esp, 12
push 2050
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
lea eax, [ebp-12]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00A4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+140]
lea ebx, [SYMB+98352]
cmp dword ptr [eax], ebx
je .Lt_00A6
sub esp, 4
push 0
push 0
push 123
call ERRREPORT
add esp, 16
jmp .Lt_00A5
.Lt_00A6:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+12]
and eax, 8388608
test eax, eax
je .Lt_00A8
sub esp, 4
push 0
push 0
push 177
call ERRREPORT
add esp, 16
jmp .Lt_00A7
.Lt_00A8:
cmp dword ptr [ENV+836], 0
jle .Lt_00AA
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 5
je .Lt_00AC
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 7
push offset Lt_00AD
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
call LEXPPONLYEMITTOKEN
.Lt_00AC:
.Lt_00AB:
.Lt_00AA:
.Lt_00A9:
sub esp, 12
push dword ptr [ebp-16]
call SYMBDELFROMHASH
add esp, 16
.Lt_00A7:
.Lt_00A5:
.Lt_00A4:
.Lt_00A3:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_009D
.Lt_00AF:
call PPCONDIF
jmp .Lt_009D
.Lt_00B0:
call PPCONDELSE
jmp .Lt_009D
.Lt_00B1:
call PPCONDENDIF
jmp .Lt_009D
.Lt_00B2:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call PPASSERT
jmp .Lt_009D
.Lt_00B3:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call PPDUMPTREE
add esp, 16
jmp .Lt_009D
.Lt_00B4:
sub esp, 12
push 2050
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push -1
call PPDUMPTREE
add esp, 16
jmp .Lt_009D
.Lt_00B5:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 4
push 1
sub esp, 4
push 0
call PPREADLITERAL
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_009D
.Lt_00B6:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
push 1
push 0
sub esp, 4
push 0
call PPREADLITERAL
add esp, 8
push eax
push -1
call ERRREPORTEX
add esp, 32
inc dword ptr [PARSER+28]
jmp .Lt_009D
.Lt_00B7:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call PPINCLUDE
jmp .Lt_009D
.Lt_00B8:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call PPINCLIB
jmp .Lt_009D
.Lt_00B9:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call PPLIBPATH
jmp .Lt_009D
.Lt_00BA:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call PPPRAGMA
jmp .Lt_009D
.Lt_00BB:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call PPLINE
jmp .Lt_009D
.Lt_00BC:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call PPLANG
jmp .Lt_009D
.Lt_00BD:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
jmp .Lt_009D
.Lt_009E:
mov eax, dword ptr [ebp-4]
add eax, 4294967030
cmp eax, 20
ja .Lt_00BD
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_00BE+eax*4-1064]
.LT_00BE:
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00B0
.int .Lt_00B0
.int .Lt_00B1
.int .Lt_00A0
.int .Lt_00A2
.int .Lt_00A1
.int .Lt_00BD
.int .Lt_00B7
.int .Lt_00B8
.int .Lt_00B9
.int .Lt_00BA
.int .Lt_00B5
.int .Lt_00B6
.int .Lt_00BB
.int .Lt_00BC
.int .Lt_00B2
.int .Lt_00B3
.int .Lt_00B4
.Lt_009D:
sub esp, 12
push 0
call CCOMMENT
add esp, 16
cmp dword ptr [ENV+148], 0
je .Lt_00C0
cmp dword ptr [ENV+876], 0
jne .Lt_00C2
sub esp, 12
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+49392]
call ASTNEWLIT
add esp, 4
push eax
call ASTADD
add esp, 16
sub esp, 12
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+49392]
push ebx
call DZSTRRESET
add esp, 16
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 257
je .Lt_00C4
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 256
je .Lt_00C6
sub esp, 4
push 0
push 0
push 3
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
.Lt_00C6:
.Lt_00C5:
.Lt_00C4:
.Lt_00C3:
.Lt_009C:
pop ebx
mov esp, ebp
pop ebp
ret
.size PPPARSE, .-PPPARSE
.balign 16

.globl PPREADLITERAL
PPREADLITERAL:
.type PPREADLITERAL, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0102:
mov dword ptr [ebp-8], 0
sub esp, 12
push offset Lt_0134
call DZSTRRESET
add esp, 16
.Lt_0104:
sub esp, 12
push 62
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_0108
.Lt_010A:
cmp dword ptr [ebp+8], 0
je .Lt_010C
sub esp, 4
push 0
push 0
push 134
call ERRREPORT
add esp, 16
.Lt_010C:
.Lt_010B:
jmp .Lt_0105
jmp .Lt_0107
.Lt_010D:
cmp dword ptr [ebp+8], 0
jne .Lt_010F
jmp .Lt_0105
.Lt_010F:
.Lt_010E:
cmp dword ptr [Lt_0134+4], 0
jle .Lt_0111
sub esp, 8
push offset Lt_0112
push offset Lt_0134
call DZSTRCONCATASSIGN
add esp, 16
.Lt_0111:
.Lt_0110:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0106
jmp .Lt_0107
.Lt_0113:
cmp dword ptr [ebp+8], 0
jne .Lt_0115
jmp .Lt_0105
.Lt_0115:
.Lt_0114:
.Lt_0116:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 62
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 257
je .Lt_011C
.Lt_011D:
cmp dword ptr [ebp-16], 256
jne .Lt_011B
.Lt_011C:
jmp .Lt_0117
.Lt_011B:
.Lt_0119:
.Lt_0118:
jmp .Lt_0116
.Lt_0117:
jmp .Lt_0106
jmp .Lt_0107
.Lt_011E:
sub esp, 8
push 314
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 274
jne .Lt_0121
.Lt_0122:
cmp dword ptr [ebp+8], 0
je .Lt_0124
inc dword ptr [ebp-8]
.Lt_0124:
.Lt_0123:
jmp .Lt_011F
.Lt_0121:
cmp dword ptr [ebp-16], 275
jne .Lt_0125
.Lt_0126:
cmp dword ptr [ebp+8], 0
je .Lt_0128
cmp dword ptr [ebp-8], 0
jne .Lt_012A
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push offset Lt_0134
call HRTRIMMACROTEXT
add esp, 16
jmp .Lt_0105
.Lt_012A:
.Lt_0129:
dec dword ptr [ebp-8]
.Lt_0128:
.Lt_0127:
.Lt_0125:
.Lt_011F:
jmp .Lt_0107
.Lt_012B:
cmp dword ptr [Lt_0134+4], 0
jle .Lt_012D
sub esp, 8
push offset Lt_012E
push offset Lt_0134
call DZSTRCONCATASSIGN
add esp, 16
.Lt_012D:
.Lt_012C:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0106
jmp .Lt_0107
.Lt_012F:
sub esp, 8
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 4
push 0
push -1
sub esp, 12
call PPTYPEOF
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-24]
push offset Lt_0134
call DZSTRCONCATASSIGN
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0105
jmp .Lt_0107
.Lt_0108:
mov eax, dword ptr [ebp-12]
add eax, 4294967287
cmp eax, 368
ja .Lt_0107
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_0131+eax*4-36]
.LT_0131:
.int .Lt_012B
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_012B
.int .Lt_0107
.int .Lt_0107
.int .Lt_011E
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_010A
.int .Lt_010D
.int .Lt_0107
.int .Lt_0113
.int .Lt_0113
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_0107
.int .Lt_012F
.Lt_0107:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], 7
je .Lt_0133
sub esp, 8
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push offset Lt_0134
call DZSTRCONCATASSIGN
add esp, 16
jmp .Lt_0132
.Lt_0133:
sub esp, 8
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
push eax
push offset Lt_0134
call DZSTRCONCATASSIGNW
add esp, 16
.Lt_0132:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
.Lt_0106:
jmp .Lt_0104
.Lt_0105:
mov eax, dword ptr [Lt_0134]
mov dword ptr [ebp-4], eax
.Lt_0103:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size PPREADLITERAL, .-PPREADLITERAL

.section .bss
.balign 4
	.lcomm	Lt_0134,12

.section .text
.balign 16

.globl PPREADLITERALW
PPREADLITERALW:
.type PPREADLITERALW, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_013F:
mov dword ptr [ebp-8], 0
sub esp, 8
push 0
push offset Lt_0171
call DWSTRALLOCATE
add esp, 16
.Lt_0141:
sub esp, 12
push 62
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_0145
.Lt_0147:
cmp dword ptr [ebp+8], 0
je .Lt_0149
sub esp, 4
push 0
push 0
push 134
call ERRREPORT
add esp, 16
.Lt_0149:
.Lt_0148:
jmp .Lt_0142
jmp .Lt_0144
.Lt_014A:
cmp dword ptr [ebp+8], 0
jne .Lt_014C
jmp .Lt_0142
.Lt_014C:
.Lt_014B:
cmp dword ptr [Lt_0171+4], 0
jle .Lt_014E
sub esp, 8
push offset Lt_014F
push offset Lt_0171
call DWSTRCONCATASSIGN
add esp, 16
.Lt_014E:
.Lt_014D:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0143
jmp .Lt_0144
.Lt_0150:
cmp dword ptr [ebp+8], 0
jne .Lt_0152
jmp .Lt_0142
.Lt_0152:
.Lt_0151:
.Lt_0153:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 62
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 257
je .Lt_0159
.Lt_015A:
cmp dword ptr [ebp-16], 256
jne .Lt_0158
.Lt_0159:
jmp .Lt_0154
.Lt_0158:
.Lt_0156:
.Lt_0155:
jmp .Lt_0153
.Lt_0154:
jmp .Lt_0143
jmp .Lt_0144
.Lt_015B:
sub esp, 8
push 314
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 274
jne .Lt_015E
.Lt_015F:
cmp dword ptr [ebp+8], 0
je .Lt_0161
inc dword ptr [ebp-8]
.Lt_0161:
.Lt_0160:
jmp .Lt_015C
.Lt_015E:
cmp dword ptr [ebp-16], 275
jne .Lt_0162
.Lt_0163:
cmp dword ptr [ebp+8], 0
je .Lt_0165
cmp dword ptr [ebp-8], 0
jne .Lt_0167
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push offset Lt_0171
call HRTRIMMACROTEXTW
add esp, 16
jmp .Lt_0142
.Lt_0167:
.Lt_0166:
dec dword ptr [ebp-8]
.Lt_0165:
.Lt_0164:
.Lt_0162:
.Lt_015C:
jmp .Lt_0144
.Lt_0168:
cmp dword ptr [Lt_0171+4], 0
jle .Lt_016A
sub esp, 8
push offset Lt_016B
push offset Lt_0171
call DWSTRCONCATASSIGN
add esp, 16
.Lt_016A:
.Lt_0169:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0143
jmp .Lt_0144
.Lt_016C:
sub esp, 8
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 4
push 0
push -1
sub esp, 12
call PPTYPEOF
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-24]
push offset Lt_0171
call DWSTRCONCATASSIGNA
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0142
jmp .Lt_0144
.Lt_0145:
mov eax, dword ptr [ebp-12]
add eax, 4294967287
cmp eax, 368
ja .Lt_0144
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_016E+eax*4-36]
.LT_016E:
.int .Lt_0168
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0168
.int .Lt_0144
.int .Lt_0144
.int .Lt_015B
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0147
.int .Lt_014A
.int .Lt_0144
.int .Lt_0150
.int .Lt_0150
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_016C
.Lt_0144:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], 7
jne .Lt_0170
sub esp, 8
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
lea ebx, [eax+12]
push ebx
push offset Lt_0171
call DWSTRCONCATASSIGN
add esp, 16
jmp .Lt_016F
.Lt_0170:
sub esp, 8
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push offset Lt_0171
call DWSTRCONCATASSIGNA
add esp, 16
.Lt_016F:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
.Lt_0143:
jmp .Lt_0141
.Lt_0142:
mov eax, dword ptr [Lt_0171]
mov dword ptr [ebp-4], eax
.Lt_0140:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size PPREADLITERALW, .-PPREADLITERALW

.section .bss
.balign 4
	.lcomm	Lt_0171,12

.section .text
.balign 16

.globl PPTYPEOF
PPTYPEOF:
.type PPTYPEOF, @function
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0172:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_0175
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
jmp .Lt_0174
.Lt_0175:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0174:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-20]
push eax
lea eax, [ebp-28]
push eax
lea eax, [ebp-32]
push eax
lea eax, [ebp-16]
push eax
call CTYPEOF
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-16]
call SYMBTYPETOSTR
add esp, 20
push eax
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0177
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0176
.Lt_0177:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0176:
.Lt_0173:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size PPTYPEOF, .-PPTYPEOF
.balign 16
fb_ctor__pp:
.type fb_ctor__pp, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__pp, .-fb_ctor__pp
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
PPINCLUDE:
.type PPINCLUDE, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00C7:
sub esp, 8
push 2048
push offset Lt_00C9
call HMATCHIDORKW
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
je .Lt_00CB
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00C8
.Lt_00CB:
.Lt_00CA:
sub esp, 8
push 0
push offset Lt_0178
call LEXEATTOKEN
add esp, 16
sub esp, 8
push dword ptr [ebp-4]
push offset Lt_0178
call FBINCLUDEFILE
add esp, 16
.Lt_00C8:
mov esp, ebp
pop ebp
ret
.size PPINCLUDE, .-PPINCLUDE

.section .bss
.balign 4
	.lcomm	Lt_0178,261

.section .text
.balign 16
PPINCLIB:
.type PPINCLIB, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_00CC:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
je .Lt_00CF
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00CD
.Lt_00CF:
.Lt_00CE:
cmp dword ptr [ENV+836], 0
jle .Lt_00D1
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 8
push offset Lt_00D2
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
call LEXPPONLYEMITTOKEN
.Lt_00D1:
.Lt_00D0:
sub esp, 12
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call FBADDLIB
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00CD:
mov esp, ebp
pop ebp
ret
.size PPINCLIB, .-PPINCLIB
.balign 16
PPLIBPATH:
.type PPLIBPATH, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_00D4:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
je .Lt_00D7
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00D5
.Lt_00D7:
.Lt_00D6:
cmp dword ptr [ENV+836], 0
jle .Lt_00D9
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 9
push offset Lt_00DA
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
call LEXPPONLYEMITTOKEN
.Lt_00D9:
.Lt_00D8:
sub esp, 12
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call FBADDLIBPATH
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00D5:
mov esp, ebp
pop ebp
ret
.size PPLIBPATH, .-PPLIBPATH
.balign 16
PPLINE:
.type PPLINE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00DC:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 3
je .Lt_00DF
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .Lt_00DE
.Lt_00DF:
sub esp, 12
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VALINT
add esp, 16
mov ebx, dword ptr [LEX+839936]
mov dword ptr [ebx+16564], eax
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
jne .Lt_00E1
sub esp, 12
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call FBOVERRIDEFILENAME
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00E1:
.Lt_00E0:
.Lt_00DE:
.Lt_00DD:
pop ebx
mov esp, ebp
pop ebp
ret
.size PPLINE, .-PPLINE
.balign 16
PPLANG:
.type PPLANG, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_00E2:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 4
je .Lt_00E5
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00E3
.Lt_00E5:
.Lt_00E4:
sub esp, 12
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call FBGETLANGID
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], -1
jne .Lt_00E7
sub esp, 4
push 0
push 0
push 279
call ERRREPORT
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00E3
.Lt_00E7:
.Lt_00E6:
cmp dword ptr [ENV+836], 0
jle .Lt_00E9
sub esp, 12
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_00EB
push -1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp-4]
call FBGETLANGNAME
add esp, 16
push eax
push 8
push offset Lt_00EA
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call LEXPPONLYEMITTEXT
add esp, 16
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
.Lt_00E9:
.Lt_00E8:
sub esp, 8
push dword ptr [ebp-4]
push 10
call FBCHANGEOPTION
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00E3:
mov esp, ebp
pop ebp
ret
.size PPLANG, .-PPLANG
.balign 16
PPDUMPTREE:
.type PPDUMPTREE, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00EF:
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_00F2
cmp dword ptr [ebp+8], 0
je .Lt_00F4
sub esp, 12
push dword ptr [ebp-4]
call ASTOPTIMIZETREE
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00F4:
.Lt_00F3:
sub esp, 8
push 0
push dword ptr [ebp-4]
call ASTDUMPTREE
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 16
jmp .Lt_00F1
.Lt_00F2:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.Lt_00F1:
.Lt_00F0:
mov esp, ebp
pop ebp
ret
.size PPDUMPTREE, .-PPDUMPTREE
.balign 16
HRTRIMMACROTEXT:
.type HRTRIMMACROTEXT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00F5:
cmp dword ptr [ebp+8], 0
jne .Lt_00F8
jmp .Lt_00F6
jmp .Lt_00F7
.Lt_00F8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00F9
jmp .Lt_00F6
.Lt_00F9:
.Lt_00F7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebx+4]
dec ecx
mov dword ptr [Lt_0179], ecx
.Lt_00FA:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
cmp dword ptr [Lt_0179], ebx
jbe .Lt_00FB
mov ebx, dword ptr [Lt_0179]
movzx ecx, byte ptr [ebx]
mov dword ptr [ebp-4], ecx
jmp .Lt_00FD
.Lt_00FF:
mov ecx, dword ptr [ebp+8]
dec dword ptr [ecx+4]
mov ecx, dword ptr [Lt_0179]
mov byte ptr [ecx], 0
jmp .Lt_00FC
.Lt_0100:
jmp .Lt_00FB
jmp .Lt_00FC
.Lt_00FD:
mov ecx, dword ptr [ebp-4]
add ecx, 4294967287
cmp ecx, 23
ja .Lt_0100
mov ecx, dword ptr [ebp-4]
jmp dword ptr [.LT_0101+ecx*4-36]
.LT_0101:
.int .Lt_00FF
.int .Lt_00FF
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_0100
.int .Lt_00FF
.Lt_00FC:
dec dword ptr [Lt_0179]
jmp .Lt_00FA
.Lt_00FB:
.Lt_00F6:
pop ebx
mov esp, ebp
pop ebp
ret
.size HRTRIMMACROTEXT, .-HRTRIMMACROTEXT

.section .bss
.balign 4
	.lcomm	Lt_0179,4

.section .text
.balign 16
HRTRIMMACROTEXTW:
.type HRTRIMMACROTEXTW, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0135:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
sal ecx, 2
mov ebx, dword ptr [eax]
add ebx, ecx
add ebx, -4
mov dword ptr [Lt_017A], ebx
.Lt_0137:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
cmp dword ptr [Lt_017A], ecx
jbe .Lt_0138
mov ecx, dword ptr [Lt_017A]
mov ebx, dword ptr [ecx]
mov dword ptr [ebp-4], ebx
jmp .Lt_013A
.Lt_013C:
mov ebx, dword ptr [ebp+8]
dec dword ptr [ebx+4]
mov ebx, dword ptr [Lt_017A]
mov dword ptr [ebx], 0
jmp .Lt_0139
.Lt_013D:
jmp .Lt_0138
jmp .Lt_0139
.Lt_013A:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967287
cmp ebx, 23
ja .Lt_013D
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.LT_013E+ebx*4-36]
.LT_013E:
.int .Lt_013C
.int .Lt_013C
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013D
.int .Lt_013C
.Lt_0139:
add dword ptr [Lt_017A], -4
jmp .Lt_0137
.Lt_0138:
.Lt_0136:
pop ebx
mov esp, ebp
pop ebp
ret
.size HRTRIMMACROTEXTW, .-HRTRIMMACROTEXTW

.section .bss
.balign 4
	.lcomm	Lt_017A,4
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.globl PP
.balign 4
	.lcomm	PP,220

.section .data
.balign 4
KWDTB:
.int Lt_0068
.int 266
.skip 4,0
.int Lt_0069
.int 267
.skip 4,0
.int Lt_006A
.int 268
.skip 4,0
.int Lt_006B
.int 269
.skip 4,0
.int Lt_006C
.int 270
.skip 4,0
.int Lt_006D
.int 271
.skip 4,0
.int Lt_006E
.int 272
.skip 4,0
.int Lt_006F
.int 273
.skip 4,0
.int Lt_0070
.int 274
.skip 4,0
.int Lt_0071
.int 275
.skip 4,0
.int Lt_0072
.int 276
.skip 4,0
.int Lt_0073
.int 278
.skip 4,0
.int Lt_0074
.int 277
.skip 4,0
.int Lt_0075
.int 279
.skip 4,0
.int Lt_0076
.int 280
.skip 4,0
.int Lt_0077
.int 281
.skip 4,0
.int Lt_0078
.int 282
.skip 4,0
.int Lt_0079
.int 283
.skip 4,0
.int Lt_007A
.int 284
.skip 4,0
.int Lt_007B
.int 285
.skip 4,0
.int Lt_007C
.int 286
.skip 4,0
.long 0
.skip 8,0
.skip 24,0

.section .rodata
.balign 4
Lt_0068:	.ascii	"IF\0"
.balign 4
Lt_0069:	.ascii	"IFDEF\0"
.balign 4
Lt_006A:	.ascii	"IFNDEF\0"
.balign 4
Lt_006B:	.ascii	"ELSE\0"
.balign 4
Lt_006C:	.ascii	"ELSEIF\0"
.balign 4
Lt_006D:	.ascii	"ENDIF\0"
.balign 4
Lt_006E:	.ascii	"DEFINE\0"
.balign 4
Lt_006F:	.ascii	"UNDEF\0"
.balign 4
Lt_0070:	.ascii	"MACRO\0"
.balign 4
Lt_0071:	.ascii	"ENDMACRO\0"
.balign 4
Lt_0072:	.ascii	"INCLUDE\0"
.balign 4
Lt_0073:	.ascii	"LIBPATH\0"
.balign 4
Lt_0074:	.ascii	"INCLIB\0"
.balign 4
Lt_0075:	.ascii	"PRAGMA\0"
.balign 4
Lt_0076:	.ascii	"PRINT\0"
.balign 4
Lt_0077:	.ascii	"ERROR\0"
.balign 4
Lt_0078:	.ascii	"LINE\0"
.balign 4
Lt_0079:	.ascii	"LANG\0"
.balign 4
Lt_007A:	.ascii	"ASSERT\0"
.balign 4
Lt_007B:	.ascii	"DUMP\0"
.balign 4
Lt_007C:	.ascii	"ODUMP\0"
.balign 4
Lt_00AD:	.ascii	"#undef\0"
.balign 4
Lt_00C9:	.ascii	"ONCE\0"
.balign 4
Lt_00D2:	.ascii	"#inclib\0"
.balign 4
Lt_00DA:	.ascii	"#libpath\0"
.balign 4
Lt_00EA:	.ascii	"#lang \"\0"
.balign 4
Lt_00EB:	.ascii	"\"\0"
.balign 4
Lt_0112:	.ascii	"\n\0"
.balign 4
Lt_012E:	.ascii	" \0"
.balign 4
Lt_014F:	.ascii	"\12\0\0\0\0\0\0\0"
.balign 4
Lt_016B:	.ascii	"\40\0\0\0\0\0\0\0"

.section .ctors, "aw", @progbits
.int fb_ctor__pp
