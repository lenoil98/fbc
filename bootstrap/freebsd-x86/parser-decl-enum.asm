	.intel_syntax noprefix

.section .text
.balign 16

.globl CENUMBODY
CENUMBODY:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0073:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0075:
.Lt_0078:
push 0
call CCOMMENT
add esp, 4
push 0
mov ebx, eax
call CSTMTSEPARATOR
add esp, 4
or ebx, eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 256
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0079
jmp .Lt_0078
.Lt_0079:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 256
jne .Lt_007C
.Lt_007D:
jmp .Lt_0076
jmp .Lt_007A
.Lt_007C:
cmp dword ptr [ebp-12], 340
jne .Lt_007E
.Lt_007F:
jmp .Lt_0076
jmp .Lt_007A
.Lt_007E:
.Lt_0081:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0086
.Lt_0087:
mov eax, dword ptr [ENV+888]
and eax, 524288
test eax, eax
je .Lt_0089
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .Lt_008B
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .Lt_008D
push 0
push 0
push 90
call ERRREPORT
add esp, 12
.Lt_008D:
.Lt_008C:
.Lt_008B:
.Lt_008A:
.Lt_0089:
.Lt_0088:
push 0
push 0
call LEXGETTEXT
push eax
push 129
push offset Lt_00A0
call fb_StrAssign
add esp, 20
jmp .Lt_0084
.Lt_0086:
cmp dword ptr [ebp-16], 2
jne .Lt_008E
.Lt_008F:
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [PARSER+96], 0
seta al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0091
push 0
push 0
push 4
call ERRREPORT
add esp, 12
push 0
push 0
call SYMBUNIQUELABEL
push eax
push 129
push offset Lt_00A0
call fb_StrAssign
add esp, 20
jmp .Lt_0090
.Lt_0091:
push 0
push 0
call LEXGETTEXT
push eax
push 129
push offset Lt_00A0
call fb_StrAssign
add esp, 20
.Lt_0090:
jmp .Lt_0084
.Lt_008E:
jmp .Lt_0082
.Lt_0092:
.Lt_0084:
push 2048
call LEXSKIPTOKEN
add esp, 4
lea eax, [ebp-8]
push eax
push offset Lt_00A0
call HENUMCONSTDECL
add esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-4]
push dword ptr [ebp-8]
push offset Lt_00A0
push dword ptr [ebp+8]
call SYMBADDENUMELEMENT
add esp, 20
test eax, eax
jne .Lt_0094
push 0
push 1
push 0
push offset Lt_00A0
push 4
call ERRREPORTEX
add esp, 20
.Lt_0094:
.Lt_0093:
add dword ptr [ebp-8], 1
adc dword ptr [ebp-4], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_0096
jmp .Lt_0082
.Lt_0096:
.Lt_0095:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0083:
jmp .Lt_0081
.Lt_0082:
push 0
call CCOMMENT
add esp, 4
cmp dword ptr [ENV+148], 0
je .Lt_0098
cmp dword ptr [ENV+876], 0
jne .Lt_009A
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+49392]
call ASTNEWLIT
add esp, 4
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+49392]
push ebx
call DZSTRRESET
add esp, 4
.Lt_009A:
.Lt_0099:
.Lt_0098:
.Lt_0097:
push 0
call CSTMTSEPARATOR
add esp, 4
test eax, eax
jne .Lt_009C
push 0
push 0
push 3
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push -1
call HSKIPUNTIL
add esp, 16
.Lt_009C:
.Lt_009B:
.Lt_0080:
.Lt_007A:
.Lt_0077:
jmp .Lt_0075
.Lt_0076:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+96], 0
jne .Lt_009E
push 0
push 0
push 256
call ERRREPORT
add esp, 12
.Lt_009E:
.Lt_009D:
.Lt_0074:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00A0,129

.section .text
.balign 16

.globl CENUMDECL
CENUMDECL:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00A3:
push 2048
call LEXSKIPTOKEN
add esp, 4
call CCURRENTPARENTID
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_00A8
.Lt_00A9:
cmp dword ptr [ebp-20], 2
jne .Lt_00A7
.Lt_00A8:
mov eax, dword ptr [ENV+888]
and eax, 524288
test eax, eax
je .Lt_00AB
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .Lt_00AD
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .Lt_00AF
push 0
push 0
push 90
call ERRREPORT
add esp, 12
.Lt_00AF:
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
.Lt_00AB:
.Lt_00AA:
push 0
push 0
call LEXGETTEXT
push eax
push 129
push offset Lt_00C7
call fb_StrAssign
add esp, 20
push 4096
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_00A5
.Lt_00A7:
push 0
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
push 129
push offset Lt_00C7
call fb_StrAssign
add esp, 20
.Lt_00B0:
.Lt_00A5:
call CALIASATTRIBUTE
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 318
jne .Lt_00B2
push 2048
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-12], -1
.Lt_00B2:
.Lt_00B1:
mov eax, dword ptr [PARSER+100]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
or dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push offset Lt_00C7
call SYMBADDENUM
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00B4
push 0
push 1
push 0
push offset Lt_00C7
push 4
call ERRREPORTEX
add esp, 20
push dword ptr [ebp-16]
push 0
push 0
call SYMBUNIQUELABEL
push eax
call SYMBADDENUM
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00B4:
.Lt_00B3:
push 0
call CCOMMENT
add esp, 4
cmp dword ptr [ENV+148], 0
je .Lt_00B6
cmp dword ptr [ENV+876], 0
jne .Lt_00B8
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+49392]
call ASTNEWLIT
add esp, 4
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+49392]
push ebx
call DZSTRRESET
add esp, 4
.Lt_00B8:
.Lt_00B7:
.Lt_00B6:
.Lt_00B5:
push 0
call CSTMTSEPARATOR
add esp, 4
test eax, eax
jne .Lt_00BA
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push -1
call HSKIPUNTIL
add esp, 16
.Lt_00BA:
.Lt_00B9:
cmp dword ptr [ebp-16], 0
je .Lt_00BC
push 0
push dword ptr [ebp-4]
call SYMBNESTBEGIN
add esp, 8
.Lt_00BC:
.Lt_00BB:
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call CENUMBODY
add esp, 8
cmp dword ptr [ebp-16], 0
je .Lt_00BE
push 0
call SYMBNESTEND
add esp, 4
.Lt_00BE:
.Lt_00BD:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 340
je .Lt_00C0
push 0
push 0
push 74
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00BF
.Lt_00C0:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 338
je .Lt_00C2
push 0
push 0
push 74
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00C1
.Lt_00C2:
push 2048
call LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp-12], 0
jne .Lt_00C4
cmp dword ptr [ebp-16], 0
je .Lt_00C6
push dword ptr [ebp-4]
call SYMBNAMESPACEIMPORT
add esp, 4
.Lt_00C6:
.Lt_00C5:
.Lt_00C4:
.Lt_00C3:
.Lt_00C1:
.Lt_00BF:
.Lt_00A4:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00C7,129

.section .text
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
HENUMCONSTDECL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0067:
call CASSIGNTOKEN
test eax, eax
je .Lt_006A
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_006C
push 0
push 0
push 11
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_006C:
.Lt_006B:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 16
je .Lt_006E
push 0
push 0
push 11
call ERRREPORT
add esp, 12
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 4
jmp .Lt_0068
.Lt_006E:
.Lt_006D:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_006F
mov dword ptr [ebp-8], 24
jmp .Lt_00C9
.Lt_006F:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_00C9:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 0
je .Lt_0072
push 0
push 1
push dword ptr [ebp+8]
push 5
call ERRREPORTWARN
add esp, 16
.Lt_0072:
.Lt_0071:
push 8
push dword ptr [ebp-4]
call ASTCONSTFLUSHTOINT
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.Lt_006A:
.Lt_0069:
.Lt_0068:
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
