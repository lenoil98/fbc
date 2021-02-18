	.intel_syntax noprefix

.section .text
.balign 16

.globl CPOKESTMT
CPOKESTMT:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0076:
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
call HOPTIONALTYPEANDFIRSTEXPR
add esp, 8
mov dword ptr [ebp-8], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_0079
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_0078
.Lt_0079:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0078:
push 8
call HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_007B
jmp .Lt_0077
.Lt_007B:
.Lt_007A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_007C
mov dword ptr [ebp-24], 24
jmp .Lt_008D
.Lt_007C:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-24], eax
.Lt_008D:
mov eax, dword ptr [ebp-24]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 2
jne .Lt_0080
.Lt_0081:
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
jmp .Lt_0077
jmp .Lt_007E
.Lt_0080:
cmp dword ptr [ebp-28], 1
jne .Lt_0082
.Lt_0083:
push 0
push 0
push dword ptr [ebp-8]
push 0
push 9
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_007E
.Lt_0082:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_0085
mov dword ptr [ebp-32], 24
jmp .Lt_008E
.Lt_0085:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-32], eax
.Lt_008E:
mov eax, dword ptr [ebp-32]
imul eax, 28
mov ebx, dword ptr [ENV+272]
cmp dword ptr [SYMB_DTYPETB+eax+4], ebx
je .Lt_0088
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
jmp .Lt_0077
.Lt_0088:
.Lt_0087:
.Lt_0084:
.Lt_007E:
mov ebx, dword ptr [ENV+196]
and ebx, 128
test ebx, ebx
je .Lt_008A
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov eax, dword ptr [ebp-16]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-16]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-16]
and eax, 32505856
or ebx, eax
push ebx
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_008A:
.Lt_0089:
push 0
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_008C
push 0
push 0
push 24
call ERRREPORT
add esp, 12
jmp .Lt_008B
.Lt_008C:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
.Lt_008B:
mov dword ptr [ebp-4], -1
.Lt_0077:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CPEEKFUNCT
CPEEKFUNCT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_008F:
mov dword ptr [ebp-4], 0
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_0092
push 0
push 0
push 6
call ERRREPORT
add esp, 12
jmp .Lt_0091
.Lt_0092:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0091:
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call HOPTIONALTYPEANDFIRSTEXPR
add esp, 8
mov dword ptr [ebp-8], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0094
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0093
.Lt_0094:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0093:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_0095
mov dword ptr [ebp-20], 24
jmp .Lt_00AA
.Lt_0095:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_00AA:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 2
jne .Lt_0099
.Lt_009A:
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-8], 0
jmp .Lt_0097
.Lt_0099:
cmp dword ptr [ebp-24], 1
jne .Lt_009B
.Lt_009C:
push 0
push 0
push dword ptr [ebp-8]
push 0
push 9
call ASTNEWCONV
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_0097
.Lt_009B:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
and ebx, 480
je .Lt_009E
mov dword ptr [ebp-28], 24
jmp .Lt_00AB
.Lt_009E:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_00AB:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [ENV+272]
cmp dword ptr [SYMB_DTYPETB+eax+4], ebx
je .Lt_00A1
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
mov dword ptr [ebp-8], 0
.Lt_00A1:
.Lt_00A0:
.Lt_009D:
.Lt_0097:
cmp dword ptr [ebp-8], 0
jne .Lt_00A3
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00A3:
.Lt_00A2:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_00A5
cmp dword ptr [ebp-12], 20
jne .Lt_00A7
.Lt_00A8:
jmp .Lt_00A6
.Lt_00A7:
push 0
push -1
push 265
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0090
.Lt_00A9:
.Lt_00A6:
push 64
call LEXSKIPTOKEN
add esp, 4
push 0
push -1
push dword ptr [ebp-8]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call CUDTMEMBER
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_00A4
.Lt_00A5:
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWDEREF
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_00A4:
.Lt_0090:
mov eax, dword ptr [ebp-4]
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
.balign 16
HOPTIONALTYPEANDFIRSTEXPR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
mov dword ptr [ebp-16], 0
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 464
call CTYPEOREXPRESSION
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_006C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
je .Lt_0070
.Lt_0071:
cmp dword ptr [ebp-24], 18
jne .Lt_006F
.Lt_0070:
push 0
push -1
push 24
call ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 3
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
.Lt_006F:
.Lt_006D:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_0073
push 0
push 0
push 16
call ERRREPORT
add esp, 12
jmp .Lt_0072
.Lt_0073:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0072:
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0075
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_0075:
.Lt_0074:
jmp .Lt_006B
.Lt_006C:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 3
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
.Lt_006B:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
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
