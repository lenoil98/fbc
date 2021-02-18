	.intel_syntax noprefix

.section .text
.balign 16

.globl _CENUMBODY
_CENUMBODY:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0074:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0076:
.Lt_0079:
push 0
call _CCOMMENT
add esp, 4
push 0
mov ebx, eax
call _CSTMTSEPARATOR
add esp, 4
or ebx, eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 256
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_007A
jmp .Lt_0079
.Lt_007A:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 256
jne .Lt_007D
.Lt_007E:
jmp .Lt_0077
jmp .Lt_007B
.Lt_007D:
cmp dword ptr [ebp-12], 340
jne .Lt_007F
.Lt_0080:
jmp .Lt_0077
jmp .Lt_007B
.Lt_007F:
.Lt_0082:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0087
.Lt_0088:
mov eax, dword ptr [_ENV+888]
and eax, 524288
test eax, eax
je .Lt_008A
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .Lt_008C
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+1048], 0
jle .Lt_008E
push 0
push 0
push 90
call _ERRREPORT
add esp, 12
.Lt_008E:
.Lt_008D:
.Lt_008C:
.Lt_008B:
.Lt_008A:
.Lt_0089:
push 0
push 0
call _LEXGETTEXT
push eax
push 129
push offset _Lt_00A1
call _fb_StrAssign
add esp, 20
jmp .Lt_0085
.Lt_0087:
cmp dword ptr [ebp-16], 2
jne .Lt_008F
.Lt_0090:
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [_PARSER+96], 0
seta al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0092
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push 129
push offset _Lt_00A1
call _fb_StrAssign
add esp, 20
jmp .Lt_0091
.Lt_0092:
push 0
push 0
call _LEXGETTEXT
push eax
push 129
push offset _Lt_00A1
call _fb_StrAssign
add esp, 20
.Lt_0091:
jmp .Lt_0085
.Lt_008F:
jmp .Lt_0083
.Lt_0093:
.Lt_0085:
push 2048
call _LEXSKIPTOKEN
add esp, 4
lea eax, [ebp-8]
push eax
push offset _Lt_00A1
call _HENUMCONSTDECL
add esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-4]
push dword ptr [ebp-8]
push offset _Lt_00A1
push dword ptr [ebp+8]
call _SYMBADDENUMELEMENT
add esp, 20
test eax, eax
jne .Lt_0095
push 0
push 1
push 0
push offset _Lt_00A1
push 4
call _ERRREPORTEX
add esp, 20
.Lt_0095:
.Lt_0094:
add dword ptr [ebp-8], 1
adc dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_0097
jmp .Lt_0083
.Lt_0097:
.Lt_0096:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0084:
jmp .Lt_0082
.Lt_0083:
push 0
call _CCOMMENT
add esp, 4
cmp dword ptr [_ENV+148], 0
je .Lt_0099
cmp dword ptr [_ENV+876], 0
jne .Lt_009B
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
.Lt_009B:
.Lt_009A:
.Lt_0099:
.Lt_0098:
push 0
call _CSTMTSEPARATOR
add esp, 4
test eax, eax
jne .Lt_009D
push 0
push 0
push 3
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push -1
call _HSKIPUNTIL
add esp, 16
.Lt_009D:
.Lt_009C:
.Lt_0081:
.Lt_007B:
.Lt_0078:
jmp .Lt_0076
.Lt_0077:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+96], 0
jne .Lt_009F
push 0
push 0
push 256
call _ERRREPORT
add esp, 12
.Lt_009F:
.Lt_009E:
.Lt_0075:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00A1,129

.section .text
.balign 16

.globl _CENUMDECL
_CENUMDECL:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00A4:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CCURRENTPARENTID
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_00A9
.Lt_00AA:
cmp dword ptr [ebp-20], 2
jne .Lt_00A8
.Lt_00A9:
mov eax, dword ptr [_ENV+888]
and eax, 524288
test eax, eax
je .Lt_00AC
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .Lt_00AE
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+1048], 0
jle .Lt_00B0
push 0
push 0
push 90
call _ERRREPORT
add esp, 12
.Lt_00B0:
.Lt_00AF:
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
.Lt_00AB:
push 0
push 0
call _LEXGETTEXT
push eax
push 129
push offset _Lt_00C8
call _fb_StrAssign
add esp, 20
push 4096
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_00A6
.Lt_00A8:
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push 129
push offset _Lt_00C8
call _fb_StrAssign
add esp, 20
.Lt_00B1:
.Lt_00A6:
call _CALIASATTRIBUTE
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 318
jne .Lt_00B3
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-12], -1
.Lt_00B3:
.Lt_00B2:
mov eax, dword ptr [_PARSER+100]
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
push offset _Lt_00C8
call _SYMBADDENUM
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00B5
push 0
push 1
push 0
push offset _Lt_00C8
push 4
call _ERRREPORTEX
add esp, 20
push dword ptr [ebp-16]
push 0
push 0
call _SYMBUNIQUELABEL
push eax
call _SYMBADDENUM
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00B5:
.Lt_00B4:
push 0
call _CCOMMENT
add esp, 4
cmp dword ptr [_ENV+148], 0
je .Lt_00B7
cmp dword ptr [_ENV+876], 0
jne .Lt_00B9
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
.Lt_00B9:
.Lt_00B8:
.Lt_00B7:
.Lt_00B6:
push 0
call _CSTMTSEPARATOR
add esp, 4
test eax, eax
jne .Lt_00BB
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push -1
call _HSKIPUNTIL
add esp, 16
.Lt_00BB:
.Lt_00BA:
cmp dword ptr [ebp-16], 0
je .Lt_00BD
push 0
push dword ptr [ebp-4]
call _SYMBNESTBEGIN
add esp, 8
.Lt_00BD:
.Lt_00BC:
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _CENUMBODY
add esp, 8
cmp dword ptr [ebp-16], 0
je .Lt_00BF
push 0
call _SYMBNESTEND
add esp, 4
.Lt_00BF:
.Lt_00BE:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 340
je .Lt_00C1
push 0
push 0
push 74
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00C0
.Lt_00C1:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 338
je .Lt_00C3
push 0
push 0
push 74
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00C2
.Lt_00C3:
push 2048
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp-12], 0
jne .Lt_00C5
cmp dword ptr [ebp-16], 0
je .Lt_00C7
push dword ptr [ebp-4]
call _SYMBNAMESPACEIMPORT
add esp, 4
.Lt_00C7:
.Lt_00C6:
.Lt_00C5:
.Lt_00C4:
.Lt_00C2:
.Lt_00C0:
.Lt_00A5:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00C8,129

.section .text
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
_HENUMCONSTDECL:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0068:
call _CASSIGNTOKEN
test eax, eax
je .Lt_006B
call _CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_006D
push 0
push 0
push 11
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_006D:
.Lt_006C:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 16
je .Lt_006F
push 0
push 0
push 11
call _ERRREPORT
add esp, 12
push dword ptr [ebp-4]
call _ASTDELTREE
add esp, 4
jmp .Lt_0069
.Lt_006F:
.Lt_006E:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_0070
mov dword ptr [ebp-8], 24
jmp .Lt_00CA
.Lt_0070:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_00CA:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 0
je .Lt_0073
push 0
push 1
push dword ptr [ebp+8]
push 5
call _ERRREPORTWARN
add esp, 16
.Lt_0073:
.Lt_0072:
push 8
push dword ptr [ebp-4]
call _ASTCONSTFLUSHTOINT
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], edx
.Lt_006B:
.Lt_006A:
.Lt_0069:
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
