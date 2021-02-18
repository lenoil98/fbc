	.intel_syntax noprefix

.section .text
.balign 16

.globl _PPINIT@0
_PPINIT@0:
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
call _HASHINIT@12
jmp .Lt_0080
.Lt_0081:
push 12
push 0
lea eax, [_PP+72]
push eax
call _memset
add esp, 12
.Lt_0080:
lea eax, [_SYMB+98660]
push eax
call _LISTNEWNODE@4
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
call _SYMBADDKEYWORD@24
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
mov dword ptr [_PP+220], 0
call _PPDEFINEINIT@0
call _PPCONDINIT@0
call _PPPRAGMAINIT@0
.Lt_007F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPEND@0
_PPEND@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_008A:
mov dword ptr [ebp-4], 0
call _PPPRAGMAEND@0
call _PPCONDEND@0
call _PPDEFINEEND@0
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
call _SYMBFREESYMBOL@4
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
lea eax, [_SYMB+98660]
push eax
call _LISTDELNODE@8
lea eax, [_PP+72]
push eax
call _HASHEND@4
.Lt_008B:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPCHECK@0
_PPCHECK@0:
push ebx
.Lt_0092:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx], 35
je .Lt_0095
jmp .Lt_0093
.Lt_0095:
.Lt_0094:
mov ebx, dword ptr [_LEX+422144]
cmp dword ptr [ebx+8380], 0
je .Lt_0097
jmp .Lt_0093
.Lt_0097:
.Lt_0096:
mov ebx, dword ptr [_LEX+422144]
cmp dword ptr [ebx+8376], 257
je .Lt_0099
mov ebx, dword ptr [_LEX+422144]
cmp dword ptr [ebx+8376], -1
je .Lt_009B
jmp .Lt_0093
.Lt_009B:
.Lt_009A:
.Lt_0099:
.Lt_0098:
mov ebx, dword ptr [_LEX+422144]
inc dword ptr [ebx+8380]
lea ebx, [_PP]
mov eax, dword ptr [_LEX+422144]
mov dword ptr [eax+8388], ebx
push 256
call _LEXSKIPTOKEN@4
call _PPPARSE@0
mov ebx, dword ptr [_LEX+422144]
dec dword ptr [ebx+8380]
.Lt_0093:
pop ebx
ret
.balign 16

.globl _PPPARSE@0
_PPPARSE@0:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_009C:
push 256
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
jmp .Lt_009F
.Lt_00A1:
push 2050
call _LEXSKIPTOKEN@4
push 0
call _PPDEFINE@4
jmp .Lt_009E
.Lt_00A2:
push 2050
call _LEXSKIPTOKEN@4
push -1
call _PPDEFINE@4
jmp .Lt_009E
.Lt_00A3:
push 2050
call _LEXSKIPTOKEN@4
push 0
lea eax, [ebp-12]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00A5
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+144]
lea ebx, [_SYMB+98352]
cmp dword ptr [eax], ebx
je .Lt_00A7
push 0
push 0
push 123
call _ERRREPORT@12
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
call _ERRREPORT@12
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
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
call _LEXPPONLYEMITTOKEN@0
.Lt_00AD:
.Lt_00AC:
.Lt_00AB:
.Lt_00AA:
push dword ptr [ebp-16]
call _SYMBDELFROMHASH@4
.Lt_00A8:
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_009E
.Lt_00B0:
call _PPCONDIF@0
jmp .Lt_009E
.Lt_00B1:
call _PPCONDELSE@0
jmp .Lt_009E
.Lt_00B2:
call _PPCONDENDIF@0
jmp .Lt_009E
.Lt_00B3:
push 2048
call _LEXSKIPTOKEN@4
call _PPASSERT@0
jmp .Lt_009E
.Lt_00B4:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _PPDUMPTREE@4
jmp .Lt_009E
.Lt_00B5:
push 2050
call _LEXSKIPTOKEN@4
push -1
call _PPDUMPTREE@4
jmp .Lt_009E
.Lt_00B6:
push 2048
call _LEXSKIPTOKEN@4
push 1
push 0
call _PPREADLITERAL@4
push eax
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
jmp .Lt_009E
.Lt_00B7:
push 2048
call _LEXSKIPTOKEN@4
push 0
push 1
push 0
push 0
call _PPREADLITERAL@4
push eax
push -1
call _ERRREPORTEX@20
inc dword ptr [_PARSER+28]
jmp .Lt_009E
.Lt_00B8:
push 2048
call _LEXSKIPTOKEN@4
call _PPINCLUDE@0
jmp .Lt_009E
.Lt_00B9:
push 2048
call _LEXSKIPTOKEN@4
call _PPINCLIB@0
jmp .Lt_009E
.Lt_00BA:
push 2048
call _LEXSKIPTOKEN@4
call _PPLIBPATH@0
jmp .Lt_009E
.Lt_00BB:
push 2048
call _LEXSKIPTOKEN@4
call _PPPRAGMA@0
jmp .Lt_009E
.Lt_00BC:
push 2048
call _LEXSKIPTOKEN@4
call _PPLINE@0
jmp .Lt_009E
.Lt_00BD:
push 2048
call _LEXSKIPTOKEN@4
call _PPLANG@0
jmp .Lt_009E
.Lt_00BE:
push 0
push 0
push 17
call _ERRREPORT@12
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
call _CCOMMENT@4
cmp dword ptr [_ENV+148], 0
je .Lt_00C1
cmp dword ptr [_ENV+876], 0
jne .Lt_00C3
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+24816]
call _ASTNEWLIT@4
push eax
call _ASTADD@4
mov eax, dword ptr [_LEX+422144]
lea ebx, [eax+24816]
push ebx
call _DZSTRRESET@4
.Lt_00C3:
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
push 0
call _LEXGETTOKEN@4
cmp eax, 257
je .Lt_00C5
push 0
call _LEXGETTOKEN@4
cmp eax, 256
je .Lt_00C7
push 0
push 0
push 3
call _ERRREPORT@12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
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

.globl _PPREADLITERAL@4
_PPREADLITERAL@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0103:
mov dword ptr [ebp-8], 0
push offset _Lt_0135
call _DZSTRRESET@4
.Lt_0105:
push 62
call _LEXGETTOKEN@4
mov dword ptr [ebp-12], eax
jmp .Lt_0109
.Lt_010B:
cmp dword ptr [ebp+8], 0
je .Lt_010D
push 0
push 0
push 134
call _ERRREPORT@12
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
call _DZSTRCONCATASSIGN@8
.Lt_0112:
.Lt_0111:
push 62
call _LEXSKIPTOKEN@4
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
call _LEXSKIPTOKEN@4
push 62
call _LEXGETTOKEN@4
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
call _LEXGETLOOKAHEAD@8
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
call _LEXSKIPTOKEN@4
push 0
call _LEXSKIPTOKEN@4
push offset _Lt_0135
call _HRTRIMMACROTEXT@4
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
call _DZSTRCONCATASSIGN@8
.Lt_012E:
.Lt_012D:
push 62
call _LEXSKIPTOKEN@4
jmp .Lt_0107
jmp .Lt_0108
.Lt_0130:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
call _PPTYPEOF@0
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
push offset _Lt_0135
call _DZSTRCONCATASSIGN@8
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
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
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], 7
je .Lt_0134
call _LEXGETTEXT@0
push eax
push offset _Lt_0135
call _DZSTRCONCATASSIGN@8
jmp .Lt_0133
.Lt_0134:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
lea eax, [ebx+12]
push eax
push offset _Lt_0135
call _DZSTRCONCATASSIGNW@8
.Lt_0133:
push 62
call _LEXSKIPTOKEN@4
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
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0135,12

.section .text
.balign 16

.globl _PPREADLITERALW@4
_PPREADLITERALW@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0140:
mov dword ptr [ebp-8], 0
push 0
push offset _Lt_0172
call _DWSTRALLOCATE@8
.Lt_0142:
push 62
call _LEXGETTOKEN@4
mov dword ptr [ebp-12], eax
jmp .Lt_0146
.Lt_0148:
cmp dword ptr [ebp+8], 0
je .Lt_014A
push 0
push 0
push 134
call _ERRREPORT@12
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
call _fb_StrToWstr@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push offset _Lt_0172
call _DWSTRCONCATASSIGN@8
push dword ptr [ebp-16]
call _fb_WstrDelete@4
.Lt_014F:
.Lt_014E:
push 62
call _LEXSKIPTOKEN@4
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
call _LEXSKIPTOKEN@4
push 62
call _LEXGETTOKEN@4
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
call _LEXGETLOOKAHEAD@8
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
call _LEXSKIPTOKEN@4
push 0
call _LEXSKIPTOKEN@4
push offset _Lt_0172
call _HRTRIMMACROTEXTW@4
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
call _fb_StrToWstr@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push offset _Lt_0172
call _DWSTRCONCATASSIGN@8
push dword ptr [ebp-16]
call _fb_WstrDelete@4
.Lt_016B:
.Lt_016A:
push 62
call _LEXSKIPTOKEN@4
jmp .Lt_0144
jmp .Lt_0145
.Lt_016D:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
call _PPTYPEOF@0
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
push offset _Lt_0172
call _DWSTRCONCATASSIGNA@8
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
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
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], 7
jne .Lt_0171
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
lea ebx, [eax+12]
push ebx
push offset _Lt_0172
call _DWSTRCONCATASSIGN@8
jmp .Lt_0170
.Lt_0171:
call _LEXGETTEXT@0
push eax
push offset _Lt_0172
call _DWSTRCONCATASSIGNA@8
.Lt_0170:
push 62
call _LEXSKIPTOKEN@4
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
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0172,12

.section .text
.balign 16

.globl _PPTYPEOF@0
_PPTYPEOF@0:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0173:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 40
je .Lt_0176
push 0
push 0
push 6
call _ERRREPORT@12
jmp .Lt_0175
.Lt_0176:
push 0
call _LEXSKIPTOKEN@4
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
call _CTYPEOF@16
push 0
push -1
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-16]
call _SYMBTYPETOSTR@20
push eax
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0178
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push 0
push 41
call _HSKIPUNTIL@16
jmp .Lt_0177
.Lt_0178:
push 0
call _LEXSKIPTOKEN@4
.Lt_0177:
.Lt_0174:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
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
_PPINCLUDE@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_00C8:
push 2048
push offset _Lt_00CA
call _HMATCHIDORKW@8
mov dword ptr [ebp-4], eax
push 0
call _LEXGETCLASS@4
cmp eax, 4
je .Lt_00CC
push 0
push 0
push 17
call _ERRREPORT@12
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_00C9
.Lt_00CC:
.Lt_00CB:
push 0
push offset _Lt_0179
call _LEXEATTOKEN@8
push dword ptr [ebp-4]
push offset _Lt_0179
call _FBINCLUDEFILE@8
.Lt_00C9:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0179,261

.section .text
.balign 16
_PPINCLIB@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_00CD:
push 0
call _LEXGETCLASS@4
cmp eax, 4
je .Lt_00D0
push 0
push 0
push 17
call _ERRREPORT@12
push 0
call _LEXSKIPTOKEN@4
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
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
call _LEXPPONLYEMITTOKEN@0
.Lt_00D2:
.Lt_00D1:
call _LEXGETTEXT@0
push eax
call _FBADDLIB@4
push 0
call _LEXSKIPTOKEN@4
.Lt_00CE:
mov esp, ebp
pop ebp
ret
.balign 16
_PPLIBPATH@0:
push ebp
mov ebp, esp
sub esp, 12
.Lt_00D5:
push 0
call _LEXGETCLASS@4
cmp eax, 4
je .Lt_00D8
push 0
push 0
push 17
call _ERRREPORT@12
push 0
call _LEXSKIPTOKEN@4
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
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
call _LEXPPONLYEMITTOKEN@0
.Lt_00DA:
.Lt_00D9:
call _LEXGETTEXT@0
push eax
call _FBADDLIBPATH@4
push 0
call _LEXSKIPTOKEN@4
.Lt_00D6:
mov esp, ebp
pop ebp
ret
.balign 16
_PPLINE@0:
push ebx
.Lt_00DD:
push 0
call _LEXGETCLASS@4
cmp eax, 3
je .Lt_00E0
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL@16
jmp .Lt_00DF
.Lt_00E0:
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_VALINT@4
mov ebx, dword ptr [_LEX+422144]
mov dword ptr [ebx+8372], eax
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETCLASS@4
cmp eax, 4
jne .Lt_00E2
call _LEXGETTEXT@0
push eax
call _FBOVERRIDEFILENAME@4
push 0
call _LEXSKIPTOKEN@4
.Lt_00E2:
.Lt_00E1:
.Lt_00DF:
.Lt_00DE:
pop ebx
ret
.balign 16
_PPLANG@0:
push ebp
mov ebp, esp
sub esp, 40
.Lt_00E3:
push 0
call _LEXGETCLASS@4
cmp eax, 4
je .Lt_00E6
push 0
push 0
push 17
call _ERRREPORT@12
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_00E4
.Lt_00E6:
.Lt_00E5:
call _LEXGETTEXT@0
push eax
call _FBGETLANGID@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], -1
jne .Lt_00E8
push 0
push 0
push 279
call _ERRREPORT@12
push 0
call _LEXSKIPTOKEN@4
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
call _FBGETLANGNAME@4
push eax
push 8
push offset _Lt_00EB
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _LEXPPONLYEMITTEXT@4
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
.Lt_00EA:
.Lt_00E9:
push dword ptr [ebp-4]
push 10
call _FBCHANGEOPTION@8
push 0
call _LEXSKIPTOKEN@4
.Lt_00E4:
mov esp, ebp
pop ebp
ret
.balign 16
_PPDUMPTREE@4:
push ebp
mov ebp, esp
sub esp, 4
.Lt_00F0:
call _CEXPRESSION@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_00F3
cmp dword ptr [ebp+8], 0
je .Lt_00F5
push dword ptr [ebp-4]
call _ASTOPTIMIZETREE@4
mov dword ptr [ebp-4], eax
.Lt_00F5:
.Lt_00F4:
push 0
push dword ptr [ebp-4]
call _ASTDUMPTREE@8
push dword ptr [ebp-4]
call _ASTDELTREE@4
jmp .Lt_00F2
.Lt_00F3:
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_00F2:
.Lt_00F1:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HRTRIMMACROTEXT@4:
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
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_017A,4

.section .text
.balign 16
_HRTRIMMACROTEXTW@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0136:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
sal ecx, 1
mov ebx, dword ptr [eax]
add ebx, ecx
add ebx, -2
mov dword ptr [_Lt_017B], ebx
.Lt_0138:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
cmp dword ptr [_Lt_017B], ecx
jbe .Lt_0139
mov ecx, dword ptr [_Lt_017B]
movzx ebx, word ptr [ecx]
mov dword ptr [ebp-4], ebx
jmp .Lt_013B
.Lt_013D:
mov ebx, dword ptr [ebp+8]
dec dword ptr [ebx+4]
mov ebx, dword ptr [_Lt_017B]
mov word ptr [ebx], 0
jmp .Lt_013A
.Lt_013E:
jmp .Lt_0139
jmp .Lt_013A
.Lt_013B:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967287
cmp ebx, 23
ja .Lt_013E
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.LT_013F+ebx*4-36]
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
add dword ptr [_Lt_017B], -2
jmp .Lt_0138
.Lt_0139:
.Lt_0137:
pop ebx
mov esp, ebp
pop ebp
ret 4

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
	.lcomm	_PP,232

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
