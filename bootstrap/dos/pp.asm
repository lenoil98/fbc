	.intel_syntax noprefix

.section .text
.balign 16

.globl _PPINIT
_PPINIT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_007E:
mov dword ptr [ebp-4], 0
mov dword ptr [_PP], 8
mov word ptr [_PP+36], 0
lea eax, [_PP]
mov dword ptr [_PP+56], eax
mov dword ptr [_PP+60], 0
mov dword ptr [_PP+64], 0
lea eax, [_PP]
mov dword ptr [_PP+68], eax
mov dword ptr [_PP+84], 0
mov dword ptr [_PP+88], 0
push 0
push 24
lea eax, [_PP+72]
push eax
call _HASHINIT
add esp, 12
jmp .Lt_0080
.Lt_0081:
push 12
push 0
lea eax, [_PP+72]
push eax
call _memset
add esp, 12
.Lt_0080:
lea eax, [_SYMB+98652]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [_PP+92], eax
mov dword ptr [ebp-4], 0
.Lt_0085:
mov eax, dword ptr [ebp-4]
imul eax, 12
cmp dword ptr [_KWDTB+eax], 0
jne .Lt_0087
jmp .Lt_0084
.Lt_0087:
.Lt_0086:
push 0
push -2147483648
lea eax, [_PP+68]
push eax
push 1
mov eax, dword ptr [ebp-4]
imul eax, 12
push dword ptr [_KWDTB+eax+4]
mov eax, dword ptr [ebp-4]
imul eax, 12
push dword ptr [_KWDTB+eax]
call _SYMBADDKEYWORD
add esp, 24
mov ebx, dword ptr [ebp-4]
imul ebx, 12
mov dword ptr [_KWDTB+ebx+8], eax
mov eax, dword ptr [ebp-4]
imul eax, 12
cmp dword ptr [_KWDTB+eax+8], 0
jne .Lt_0089
jmp .Lt_007F
.Lt_0089:
.Lt_0088:
.Lt_0083:
inc dword ptr [ebp-4]
.Lt_0082:
cmp dword ptr [ebp-4], 23
jle .Lt_0085
.Lt_0084:
mov dword ptr [_PP+212], 0
call _PPDEFINEINIT
call _PPCONDINIT
call _PPPRAGMAINIT
.Lt_007F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPEND
_PPEND:
push ebp
mov ebp, esp
sub esp, 4
.Lt_008A:
mov dword ptr [ebp-4], 0
call _PPPRAGMAEND
call _PPCONDEND
call _PPDEFINEEND
mov dword ptr [ebp-4], 0
.Lt_008F:
mov eax, dword ptr [ebp-4]
imul eax, 12
cmp dword ptr [_KWDTB+eax+8], 0
jne .Lt_0091
jmp .Lt_008E
.Lt_0091:
.Lt_0090:
mov eax, dword ptr [ebp-4]
imul eax, 12
push dword ptr [_KWDTB+eax+8]
call _SYMBFREESYMBOL
add esp, 4
mov eax, dword ptr [ebp-4]
imul eax, 12
mov dword ptr [_KWDTB+eax+8], 0
.Lt_008D:
inc dword ptr [ebp-4]
.Lt_008C:
cmp dword ptr [ebp-4], 23
jle .Lt_008F
.Lt_008E:
push dword ptr [_PP+92]
lea eax, [_SYMB+98652]
push eax
call _LISTDELNODE
add esp, 8
lea eax, [_PP+72]
push eax
call _HASHEND
add esp, 4
.Lt_008B:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPCHECK
_PPCHECK:
push ebx
.Lt_0092:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx], 35
je .Lt_0095
jmp .Lt_0093
.Lt_0095:
.Lt_0094:
mov ebx, dword ptr [_LEX+213248]
cmp dword ptr [ebx+4284], 0
je .Lt_0097
jmp .Lt_0093
.Lt_0097:
.Lt_0096:
mov ebx, dword ptr [_LEX+213248]
cmp dword ptr [ebx+4280], 257
je .Lt_0099
mov ebx, dword ptr [_LEX+213248]
cmp dword ptr [ebx+4280], -1
je .Lt_009B
jmp .Lt_0093
.Lt_009B:
.Lt_009A:
.Lt_0099:
.Lt_0098:
mov ebx, dword ptr [_LEX+213248]
inc dword ptr [ebx+4284]
lea ebx, [_PP]
mov eax, dword ptr [_LEX+213248]
mov dword ptr [eax+4292], ebx
push 256
call _LEXSKIPTOKEN
add esp, 4
call _PPPARSE
mov ebx, dword ptr [_LEX+213248]
dec dword ptr [ebx+4284]
.Lt_0093:
pop ebx
ret
.balign 16

.globl _PPPARSE
_PPPARSE:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_009C:
push 256
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_009F
.Lt_00A1:
push 2050
call _LEXSKIPTOKEN
add esp, 4
push 0
call _PPDEFINE
add esp, 4
jmp .Lt_009E
.Lt_00A2:
push 2050
call _LEXSKIPTOKEN
add esp, 4
push -1
call _PPDEFINE
add esp, 4
jmp .Lt_009E
.Lt_00A3:
push 2050
call _LEXSKIPTOKEN
add esp, 4
push 0
lea eax, [ebp-12]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00A5
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+140]
lea ebx, [_SYMB+98352]
cmp dword ptr [eax], ebx
je .Lt_00A7
push 0
push 0
push 123
call _ERRREPORT
add esp, 12
jmp .Lt_00A6
.Lt_00A7:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+12]
and eax, 8388608
test eax, eax
je .Lt_00A9
push 0
push 0
push 177
call _ERRREPORT
add esp, 12
jmp .Lt_00A8
.Lt_00A9:
cmp dword ptr [_ENV+836], 0
jle .Lt_00AB
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax], 5
je .Lt_00AD
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push 7
push offset _Lt_00AE
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _LEXPPONLYEMITTEXT
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
call _LEXPPONLYEMITTOKEN
.Lt_00AD:
.Lt_00AC:
.Lt_00AB:
.Lt_00AA:
push dword ptr [ebp-16]
call _SYMBDELFROMHASH
add esp, 4
.Lt_00A8:
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_009E
.Lt_00B0:
call _PPCONDIF
jmp .Lt_009E
.Lt_00B1:
call _PPCONDELSE
jmp .Lt_009E
.Lt_00B2:
call _PPCONDENDIF
jmp .Lt_009E
.Lt_00B3:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPASSERT
jmp .Lt_009E
.Lt_00B4:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _PPDUMPTREE
add esp, 4
jmp .Lt_009E
.Lt_00B5:
push 2050
call _LEXSKIPTOKEN
add esp, 4
push -1
call _PPDUMPTREE
add esp, 4
jmp .Lt_009E
.Lt_00B6:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 1
push 0
call _PPREADLITERAL
add esp, 4
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_009E
.Lt_00B7:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
push 1
push 0
push 0
call _PPREADLITERAL
add esp, 4
push eax
push -1
call _ERRREPORTEX
add esp, 20
inc dword ptr [_PARSER+28]
jmp .Lt_009E
.Lt_00B8:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPINCLUDE
jmp .Lt_009E
.Lt_00B9:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPINCLIB
jmp .Lt_009E
.Lt_00BA:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPLIBPATH
jmp .Lt_009E
.Lt_00BB:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPPRAGMA
jmp .Lt_009E
.Lt_00BC:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPLINE
jmp .Lt_009E
.Lt_00BD:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _PPLANG
jmp .Lt_009E
.Lt_00BE:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
jmp .Lt_009E
.Lt_009F:
mov eax, dword ptr [ebp-4]
add eax, 4294967030
cmp eax, 20
ja .Lt_00BE
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_00BF+eax*4-1064]
_.LT_00BF:
.int .Lt_00B0
.int .Lt_00B0
.int .Lt_00B0
.int .Lt_00B1
.int .Lt_00B1
.int .Lt_00B2
.int .Lt_00A1
.int .Lt_00A3
.int .Lt_00A2
.int .Lt_00BE
.int .Lt_00B8
.int .Lt_00B9
.int .Lt_00BA
.int .Lt_00BB
.int .Lt_00B6
.int .Lt_00B7
.int .Lt_00BC
.int .Lt_00BD
.int .Lt_00B3
.int .Lt_00B4
.int .Lt_00B5
.Lt_009E:
push 0
call _CCOMMENT
add esp, 4
cmp dword ptr [_ENV+148], 0
je .Lt_00C1
cmp dword ptr [_ENV+876], 0
jne .Lt_00C3
mov eax, dword ptr [_LEX+213248]
push dword ptr [eax+12528]
call _ASTNEWLIT
add esp, 4
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+12528]
push ebx
call _DZSTRRESET
add esp, 4
.Lt_00C3:
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 257
je .Lt_00C5
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 256
je .Lt_00C7
push 0
push 0
push 3
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL
add esp, 16
.Lt_00C7:
.Lt_00C6:
.Lt_00C5:
.Lt_00C4:
.Lt_009D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPREADLITERAL
_PPREADLITERAL:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0103:
mov dword ptr [ebp-8], 0
push offset _Lt_0135
call _DZSTRRESET
add esp, 4
.Lt_0105:
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_0109
.Lt_010B:
cmp dword ptr [ebp+8], 0
je .Lt_010D
push 0
push 0
push 134
call _ERRREPORT
add esp, 12
.Lt_010D:
.Lt_010C:
jmp .Lt_0106
jmp .Lt_0108
.Lt_010E:
cmp dword ptr [ebp+8], 0
jne .Lt_0110
jmp .Lt_0106
.Lt_0110:
.Lt_010F:
cmp dword ptr [_Lt_0135+4], 0
jle .Lt_0112
push offset _Lt_0113
push offset _Lt_0135
call _DZSTRCONCATASSIGN
add esp, 8
.Lt_0112:
.Lt_0111:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0107
jmp .Lt_0108
.Lt_0114:
cmp dword ptr [ebp+8], 0
jne .Lt_0116
jmp .Lt_0106
.Lt_0116:
.Lt_0115:
.Lt_0117:
push 62
call _LEXSKIPTOKEN
add esp, 4
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 257
je .Lt_011D
.Lt_011E:
cmp dword ptr [ebp-16], 256
jne .Lt_011C
.Lt_011D:
jmp .Lt_0118
.Lt_011C:
.Lt_011A:
.Lt_0119:
jmp .Lt_0117
.Lt_0118:
jmp .Lt_0107
jmp .Lt_0108
.Lt_011F:
push 314
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 274
jne .Lt_0122
.Lt_0123:
cmp dword ptr [ebp+8], 0
je .Lt_0125
inc dword ptr [ebp-8]
.Lt_0125:
.Lt_0124:
jmp .Lt_0120
.Lt_0122:
cmp dword ptr [ebp-16], 275
jne .Lt_0126
.Lt_0127:
cmp dword ptr [ebp+8], 0
je .Lt_0129
cmp dword ptr [ebp-8], 0
jne .Lt_012B
push 62
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
push offset _Lt_0135
call _HRTRIMMACROTEXT
add esp, 4
jmp .Lt_0106
.Lt_012B:
.Lt_012A:
dec dword ptr [ebp-8]
.Lt_0129:
.Lt_0128:
.Lt_0126:
.Lt_0120:
jmp .Lt_0108
.Lt_012C:
cmp dword ptr [_Lt_0135+4], 0
jle .Lt_012E
push offset _Lt_012F
push offset _Lt_0135
call _DZSTRCONCATASSIGN
add esp, 8
.Lt_012E:
.Lt_012D:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0107
jmp .Lt_0108
.Lt_0130:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
call _PPTYPEOF
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
push offset _Lt_0135
call _DZSTRCONCATASSIGN
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0106
jmp .Lt_0108
.Lt_0109:
mov eax, dword ptr [ebp-12]
add eax, 4294967287
cmp eax, 368
ja .Lt_0108
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_0132+eax*4-36]
_.LT_0132:
.int .Lt_012C
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_012C
.int .Lt_0108
.int .Lt_0108
.int .Lt_011F
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_010B
.int .Lt_010E
.int .Lt_0108
.int .Lt_0114
.int .Lt_0114
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0108
.int .Lt_0130
.Lt_0108:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+8], 7
je .Lt_0134
call _LEXGETTEXT
push eax
push offset _Lt_0135
call _DZSTRCONCATASSIGN
add esp, 8
jmp .Lt_0133
.Lt_0134:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
lea eax, [ebx+12]
push eax
push offset _Lt_0135
call _DZSTRCONCATASSIGNW
add esp, 8
.Lt_0133:
push 62
call _LEXSKIPTOKEN
add esp, 4
.Lt_0107:
jmp .Lt_0105
.Lt_0106:
mov eax, dword ptr [_Lt_0135]
mov dword ptr [ebp-4], eax
.Lt_0104:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0135,12

.section .text
.balign 16

.globl _PPREADLITERALW
_PPREADLITERALW:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0140:
mov dword ptr [ebp-8], 0
push 0
push offset _Lt_0172
call _DWSTRALLOCATE
add esp, 8
.Lt_0142:
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_0146
.Lt_0148:
cmp dword ptr [ebp+8], 0
je .Lt_014A
push 0
push 0
push 134
call _ERRREPORT
add esp, 12
.Lt_014A:
.Lt_0149:
jmp .Lt_0143
jmp .Lt_0145
.Lt_014B:
cmp dword ptr [ebp+8], 0
jne .Lt_014D
jmp .Lt_0143
.Lt_014D:
.Lt_014C:
cmp dword ptr [_Lt_0172+4], 0
jle .Lt_014F
push offset _Lt_0113
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push offset _Lt_0172
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-16]
call _fb_WstrDelete
add esp, 4
.Lt_014F:
.Lt_014E:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0144
jmp .Lt_0145
.Lt_0151:
cmp dword ptr [ebp+8], 0
jne .Lt_0153
jmp .Lt_0143
.Lt_0153:
.Lt_0152:
.Lt_0154:
push 62
call _LEXSKIPTOKEN
add esp, 4
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 257
je .Lt_015A
.Lt_015B:
cmp dword ptr [ebp-16], 256
jne .Lt_0159
.Lt_015A:
jmp .Lt_0155
.Lt_0159:
.Lt_0157:
.Lt_0156:
jmp .Lt_0154
.Lt_0155:
jmp .Lt_0144
jmp .Lt_0145
.Lt_015C:
push 314
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 274
jne .Lt_015F
.Lt_0160:
cmp dword ptr [ebp+8], 0
je .Lt_0162
inc dword ptr [ebp-8]
.Lt_0162:
.Lt_0161:
jmp .Lt_015D
.Lt_015F:
cmp dword ptr [ebp-16], 275
jne .Lt_0163
.Lt_0164:
cmp dword ptr [ebp+8], 0
je .Lt_0166
cmp dword ptr [ebp-8], 0
jne .Lt_0168
push 62
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
push offset _Lt_0172
call _HRTRIMMACROTEXTW
add esp, 4
jmp .Lt_0143
.Lt_0168:
.Lt_0167:
dec dword ptr [ebp-8]
.Lt_0166:
.Lt_0165:
.Lt_0163:
.Lt_015D:
jmp .Lt_0145
.Lt_0169:
cmp dword ptr [_Lt_0172+4], 0
jle .Lt_016B
push offset _Lt_012F
call _fb_StrToWstr
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push offset _Lt_0172
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [ebp-16]
call _fb_WstrDelete
add esp, 4
.Lt_016B:
.Lt_016A:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0144
jmp .Lt_0145
.Lt_016D:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
call _PPTYPEOF
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
push offset _Lt_0172
call _DWSTRCONCATASSIGNA
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0143
jmp .Lt_0145
.Lt_0146:
mov eax, dword ptr [ebp-12]
add eax, 4294967287
cmp eax, 368
ja .Lt_0145
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_016F+eax*4-36]
_.LT_016F:
.int .Lt_0169
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0169
.int .Lt_0145
.int .Lt_0145
.int .Lt_015C
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0148
.int .Lt_014B
.int .Lt_0145
.int .Lt_0151
.int .Lt_0151
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_0145
.int .Lt_016D
.Lt_0145:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+8], 7
jne .Lt_0171
mov ebx, dword ptr [_LEX+213248]
mov eax, dword ptr [ebx+4260]
lea ebx, [eax+12]
push ebx
push offset _Lt_0172
call _DWSTRCONCATASSIGN
add esp, 8
jmp .Lt_0170
.Lt_0171:
call _LEXGETTEXT
push eax
push offset _Lt_0172
call _DWSTRCONCATASSIGNA
add esp, 8
.Lt_0170:
push 62
call _LEXSKIPTOKEN
add esp, 4
.Lt_0144:
jmp .Lt_0142
.Lt_0143:
mov eax, dword ptr [_Lt_0172]
mov dword ptr [ebp-4], eax
.Lt_0141:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0172,12

.section .text
.balign 16

.globl _PPTYPEOF
_PPTYPEOF:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0173:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_0176
push 0
push 0
push 6
call _ERRREPORT
add esp, 12
jmp .Lt_0175
.Lt_0176:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0175:
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
call _CTYPEOF
add esp, 16
push 0
push -1
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-16]
call _SYMBTYPETOSTR
add esp, 20
push eax
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0178
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0177
.Lt_0178:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0177:
.Lt_0174:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__pp:
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
_PPINCLUDE:
push ebp
mov ebp, esp
sub esp, 4
.Lt_00C8:
push 2048
push offset _Lt_00CA
call _HMATCHIDORKW
add esp, 8
mov dword ptr [ebp-4], eax
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
je .Lt_00CC
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_00C9
.Lt_00CC:
.Lt_00CB:
push 0
push offset _Lt_0179
call _LEXEATTOKEN
add esp, 8
push dword ptr [ebp-4]
push offset _Lt_0179
call _FBINCLUDEFILE
add esp, 8
.Lt_00C9:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0179,261

.section .text
.balign 16
_PPINCLIB:
push ebp
mov ebp, esp
sub esp, 12
.Lt_00CD:
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
je .Lt_00D0
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_00CE
.Lt_00D0:
.Lt_00CF:
cmp dword ptr [_ENV+836], 0
jle .Lt_00D2
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 8
push offset _Lt_00D3
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _LEXPPONLYEMITTEXT
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
call _LEXPPONLYEMITTOKEN
.Lt_00D2:
.Lt_00D1:
call _LEXGETTEXT
push eax
call _FBADDLIB
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00CE:
mov esp, ebp
pop ebp
ret
.balign 16
_PPLIBPATH:
push ebp
mov ebp, esp
sub esp, 12
.Lt_00D5:
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
je .Lt_00D8
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_00D6
.Lt_00D8:
.Lt_00D7:
cmp dword ptr [_ENV+836], 0
jle .Lt_00DA
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 9
push offset _Lt_00DB
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _LEXPPONLYEMITTEXT
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
call _LEXPPONLYEMITTOKEN
.Lt_00DA:
.Lt_00D9:
call _LEXGETTEXT
push eax
call _FBADDLIBPATH
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00D6:
mov esp, ebp
pop ebp
ret
.balign 16
_PPLINE:
push ebx
.Lt_00DD:
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 3
je .Lt_00E0
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00DF
.Lt_00E0:
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_VALINT
add esp, 4
mov ebx, dword ptr [_LEX+213248]
mov dword ptr [ebx+4276], eax
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
jne .Lt_00E2
call _LEXGETTEXT
push eax
call _FBOVERRIDEFILENAME
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00E2:
.Lt_00E1:
.Lt_00DF:
.Lt_00DE:
pop ebx
ret
.balign 16
_PPLANG:
push ebp
mov ebp, esp
sub esp, 40
.Lt_00E3:
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 4
je .Lt_00E6
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_00E4
.Lt_00E6:
.Lt_00E5:
call _LEXGETTEXT
push eax
call _FBGETLANGID
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], -1
jne .Lt_00E8
push 0
push 0
push 279
call _ERRREPORT
add esp, 12
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_00E4
.Lt_00E8:
.Lt_00E7:
cmp dword ptr [_ENV+836], 0
jle .Lt_00EA
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push 2
push offset _Lt_00EC
push -1
push -1
push dword ptr [ebp-4]
call _FBGETLANGNAME
add esp, 4
push eax
push 8
push offset _Lt_00EB
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _LEXPPONLYEMITTEXT
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.Lt_00EA:
.Lt_00E9:
push dword ptr [ebp-4]
push 10
call _FBCHANGEOPTION
add esp, 8
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00E4:
mov esp, ebp
pop ebp
ret
.balign 16
_PPDUMPTREE:
push ebp
mov ebp, esp
sub esp, 4
.Lt_00F0:
call _CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_00F3
cmp dword ptr [ebp+8], 0
je .Lt_00F5
push dword ptr [ebp-4]
call _ASTOPTIMIZETREE
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_00F5:
.Lt_00F4:
push 0
push dword ptr [ebp-4]
call _ASTDUMPTREE
add esp, 8
push dword ptr [ebp-4]
call _ASTDELTREE
add esp, 4
jmp .Lt_00F2
.Lt_00F3:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.Lt_00F2:
.Lt_00F1:
mov esp, ebp
pop ebp
ret
.balign 16
_HRTRIMMACROTEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00F6:
cmp dword ptr [ebp+8], 0
jne .Lt_00F9
jmp .Lt_00F7
jmp .Lt_00F8
.Lt_00F9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00FA
jmp .Lt_00F7
.Lt_00FA:
.Lt_00F8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebx+4]
dec ecx
mov dword ptr [_Lt_017A], ecx
.Lt_00FB:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
cmp dword ptr [_Lt_017A], ebx
jbe .Lt_00FC
mov ebx, dword ptr [_Lt_017A]
movzx ecx, byte ptr [ebx]
mov dword ptr [ebp-4], ecx
jmp .Lt_00FE
.Lt_0100:
mov ecx, dword ptr [ebp+8]
dec dword ptr [ecx+4]
mov ecx, dword ptr [_Lt_017A]
mov byte ptr [ecx], 0
jmp .Lt_00FD
.Lt_0101:
jmp .Lt_00FC
jmp .Lt_00FD
.Lt_00FE:
mov ecx, dword ptr [ebp-4]
add ecx, 4294967287
cmp ecx, 23
ja .Lt_0101
mov ecx, dword ptr [ebp-4]
jmp dword ptr [_.LT_0102+ecx*4-36]
_.LT_0102:
.int .Lt_0100
.int .Lt_0100
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0101
.int .Lt_0100
.Lt_00FD:
dec dword ptr [_Lt_017A]
jmp .Lt_00FB
.Lt_00FC:
.Lt_00F7:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_017A,4

.section .text
.balign 16
_HRTRIMMACROTEXTW:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0136:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebx+4]
dec ecx
mov dword ptr [_Lt_017B], ecx
.Lt_0138:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
cmp dword ptr [_Lt_017B], ebx
jbe .Lt_0139
mov ebx, dword ptr [_Lt_017B]
movzx ecx, byte ptr [ebx]
mov dword ptr [ebp-4], ecx
jmp .Lt_013B
.Lt_013D:
mov ecx, dword ptr [ebp+8]
dec dword ptr [ecx+4]
mov ecx, dword ptr [_Lt_017B]
mov byte ptr [ecx], 0
jmp .Lt_013A
.Lt_013E:
jmp .Lt_0139
jmp .Lt_013A
.Lt_013B:
mov ecx, dword ptr [ebp-4]
add ecx, 4294967287
cmp ecx, 23
ja .Lt_013E
mov ecx, dword ptr [ebp-4]
jmp dword ptr [_.LT_013F+ecx*4-36]
_.LT_013F:
.int .Lt_013D
.int .Lt_013D
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013E
.int .Lt_013D
.Lt_013A:
dec dword ptr [_Lt_017B]
jmp .Lt_0138
.Lt_0139:
.Lt_0137:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_017B,4
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.globl _PP
.balign 4
	.lcomm	_PP,220

.section .data
.balign 4
_KWDTB:
.int _Lt_0069
.int 266
.skip 4,0
.int _Lt_006A
.int 267
.skip 4,0
.int _Lt_006B
.int 268
.skip 4,0
.int _Lt_006C
.int 269
.skip 4,0
.int _Lt_006D
.int 270
.skip 4,0
.int _Lt_006E
.int 271
.skip 4,0
.int _Lt_006F
.int 272
.skip 4,0
.int _Lt_0070
.int 273
.skip 4,0
.int _Lt_0071
.int 274
.skip 4,0
.int _Lt_0072
.int 275
.skip 4,0
.int _Lt_0073
.int 276
.skip 4,0
.int _Lt_0074
.int 278
.skip 4,0
.int _Lt_0075
.int 277
.skip 4,0
.int _Lt_0076
.int 279
.skip 4,0
.int _Lt_0077
.int 280
.skip 4,0
.int _Lt_0078
.int 281
.skip 4,0
.int _Lt_0079
.int 282
.skip 4,0
.int _Lt_007A
.int 283
.skip 4,0
.int _Lt_007B
.int 284
.skip 4,0
.int _Lt_007C
.int 285
.skip 4,0
.int _Lt_007D
.int 286
.skip 4,0
.long 0
.skip 8,0
.skip 24,0
.balign 4
_Lt_0069:	.ascii	"IF\0"
.balign 4
_Lt_006A:	.ascii	"IFDEF\0"
.balign 4
_Lt_006B:	.ascii	"IFNDEF\0"
.balign 4
_Lt_006C:	.ascii	"ELSE\0"
.balign 4
_Lt_006D:	.ascii	"ELSEIF\0"
.balign 4
_Lt_006E:	.ascii	"ENDIF\0"
.balign 4
_Lt_006F:	.ascii	"DEFINE\0"
.balign 4
_Lt_0070:	.ascii	"UNDEF\0"
.balign 4
_Lt_0071:	.ascii	"MACRO\0"
.balign 4
_Lt_0072:	.ascii	"ENDMACRO\0"
.balign 4
_Lt_0073:	.ascii	"INCLUDE\0"
.balign 4
_Lt_0074:	.ascii	"LIBPATH\0"
.balign 4
_Lt_0075:	.ascii	"INCLIB\0"
.balign 4
_Lt_0076:	.ascii	"PRAGMA\0"
.balign 4
_Lt_0077:	.ascii	"PRINT\0"
.balign 4
_Lt_0078:	.ascii	"ERROR\0"
.balign 4
_Lt_0079:	.ascii	"LINE\0"
.balign 4
_Lt_007A:	.ascii	"LANG\0"
.balign 4
_Lt_007B:	.ascii	"ASSERT\0"
.balign 4
_Lt_007C:	.ascii	"DUMP\0"
.balign 4
_Lt_007D:	.ascii	"ODUMP\0"
.balign 4
_Lt_00AE:	.ascii	"#undef\0"
.balign 4
_Lt_00CA:	.ascii	"ONCE\0"
.balign 4
_Lt_00D3:	.ascii	"#inclib\0"
.balign 4
_Lt_00DB:	.ascii	"#libpath\0"
.balign 4
_Lt_00EB:	.ascii	"#lang \"\0"
.balign 4
_Lt_00EC:	.ascii	"\"\0"
.balign 4
_Lt_0113:	.ascii	"\n\0"
.balign 4
_Lt_012F:	.ascii	" \0"

.section .ctors
.int _fb_ctor__pp
