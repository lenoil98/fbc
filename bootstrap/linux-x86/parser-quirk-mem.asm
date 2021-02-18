	.intel_syntax noprefix

.section .text
.balign 16

.globl COPERATORNEW
COPERATORNEW:
.type COPERATORNEW, @function
push ebp
mov ebp, esp
sub esp, 72
mov dword ptr [ebp-4], 0
.Lt_0067:
mov dword ptr [ebp-28], -1
mov dword ptr [ebp-48], 78
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-40], 0
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
je .Lt_006A
call CEXPRESSION
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .Lt_006C
sub esp, 4
push 0
push -1
push 9
call ERRREPORT
add esp, 16
.Lt_006C:
.Lt_006B:
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .Lt_006E
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
.Lt_006E:
.Lt_006D:
.Lt_006A:
.Lt_0069:
sub esp, 12
push 0
push 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-56]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
call HSYMBOLTYPE
add esp, 32
mov eax, dword ptr [ebp-8]
and eax, 511
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 18
je .Lt_0073
.Lt_0074:
cmp dword ptr [ebp-60], 4
je .Lt_0073
.Lt_0075:
cmp dword ptr [ebp-60], 7
jne .Lt_0072
.Lt_0073:
sub esp, 4
push 0
push -1
push 201
call ERRREPORT
add esp, 16
mov dword ptr [ebp-8], 17
.Lt_0072:
.Lt_0070:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call HCOMPLAINIFABSTRACTCLASS
add esp, 16
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call TYPEHASCTOR
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call TYPEHASDEFCTOR
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 91
jne .Lt_0077
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
call CEXPRESSION
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_0079
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
jmp .Lt_0078
.Lt_0079:
mov dword ptr [ebp-48], 79
.Lt_0078:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 93
je .Lt_007B
sub esp, 4
push 0
push 0
push 66
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 93
call HSKIPUNTIL
add esp, 16
jmp .Lt_007A
.Lt_007B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_007A:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 123
jne .Lt_007D
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 372
jne .Lt_007F
cmp dword ptr [ebp-24], 0
je .Lt_0081
push 0
push 1
push 0
push 19
call ERRREPORTWARN
add esp, 16
.Lt_0081:
.Lt_0080:
mov eax, dword ptr [ebp-8]
and eax, 511
cmp eax, 17
jne .Lt_0083
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .Lt_0082
.Lt_0083:
mov dword ptr [ebp-28], 0
.Lt_0082:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_007E
.Lt_007F:
sub esp, 4
push 0
push 0
push 200
call ERRREPORT
add esp, 16
.Lt_007E:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 125
je .Lt_0085
sub esp, 4
push 0
push 0
push 65
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 125
call HSKIPUNTIL
add esp, 16
jmp .Lt_0084
.Lt_0085:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0084:
.Lt_007D:
.Lt_007C:
.Lt_0077:
.Lt_0076:
cmp dword ptr [ebp-36], 0
jne .Lt_0087
push 0
push 9
push 0
push 1
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-36], eax
jmp .Lt_0086
.Lt_0087:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax], 16
jne .Lt_0089
push 0
push 9
push 9
push dword ptr [ebp-36]
call CCONSTINTEXPRRANGED
add esp, 8
push edx
push eax
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-36], eax
jmp .Lt_0088
.Lt_0089:
sub esp, 12
push 0
push 1
push dword ptr [ebp-36]
push 0
push 9
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-36], eax
.Lt_0088:
cmp dword ptr [ebp-36], 0
jne .Lt_008B
sub esp, 4
push 0
push -1
push 20
call ERRREPORT
add esp, 16
push 0
push 9
push 0
push 1
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-36], eax
.Lt_008B:
.Lt_008A:
.Lt_0086:
sub esp, 8
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-8]
and eax, 31
mov edx, dword ptr [ebp-8]
and edx, 480
add edx, 32
or eax, edx
mov edx, dword ptr [ebp-8]
and edx, 261632
sal edx, 1
or eax, edx
mov edx, dword ptr [ebp-8]
and edx, 32505856
or eax, edx
push eax
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-20], 0
je .Lt_008D
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .Lt_008F
cmp dword ptr [ebp-48], 79
jne .Lt_0091
sub esp, 4
push 0
push -1
push 199
call ERRREPORT
add esp, 16
jmp .Lt_0090
.Lt_0091:
sub esp, 12
push dword ptr [ebp-12]
call CCTORCALL
add esp, 16
mov dword ptr [ebp-32], eax
.Lt_0090:
jmp .Lt_008E
.Lt_008F:
sub esp, 12
push dword ptr [ebp-12]
call SYMBGETCOMPDEFCTOR
add esp, 16
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .Lt_0093
sub esp, 4
push 0
push 0
push 183
call ERRREPORT
add esp, 16
jmp .Lt_0092
.Lt_0093:
cmp dword ptr [ebp-48], 79
je .Lt_0095
sub esp, 12
push dword ptr [ebp-12]
call CCTORCALL
add esp, 16
mov dword ptr [ebp-32], eax
jmp .Lt_0094
.Lt_0095:
sub esp, 12
push dword ptr [ebp-60]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_0097
sub esp, 4
push 0
push 0
push 204
call ERRREPORT
add esp, 16
.Lt_0097:
.Lt_0096:
.Lt_0094:
.Lt_0092:
.Lt_008E:
jmp .Lt_008C
.Lt_008D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .Lt_0099
cmp dword ptr [ebp-48], 79
jne .Lt_009B
sub esp, 4
push 0
push -1
push 200
call ERRREPORT
add esp, 16
.Lt_009B:
.Lt_009A:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 372
jne .Lt_009D
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-8]
and eax, 511
cmp eax, 17
jne .Lt_009F
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .Lt_009E
.Lt_009F:
mov dword ptr [ebp-28], 0
.Lt_009E:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_00A1
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_00A0
.Lt_00A1:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00A0:
jmp .Lt_009C
.Lt_009D:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 1
push dword ptr [ebp-16]
call CINITIALIZER
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_00A3
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
.Lt_00A3:
.Lt_00A2:
.Lt_009C:
.Lt_0099:
.Lt_0098:
.Lt_008C:
push dword ptr [ebp-40]
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-16]
push dword ptr [ebp-48]
call ASTBUILDNEWOP
add esp, 32
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
jne .Lt_00A5
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
.Lt_00A5:
.Lt_00A4:
sub esp, 4
push 2
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 24
push eax
push dword ptr [ebp-44]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size COPERATORNEW, .-COPERATORNEW
.balign 16

.globl COPERATORDELETE
COPERATORDELETE:
.type COPERATORDELETE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00A6:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-12], 80
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 91
jne .Lt_00A9
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-12], 81
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 93
je .Lt_00AB
sub esp, 4
push 0
push 0
push 66
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 93
call HSKIPUNTIL
add esp, 16
jmp .Lt_00A7
.Lt_00AB:
.Lt_00AA:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00A9:
.Lt_00A8:
sub esp, 12
push 4
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00AD
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00A7
.Lt_00AD:
.Lt_00AC:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
and eax, 480
test eax, eax
jne .Lt_00AF
sub esp, 4
push 0
push 0
push 28
call ERRREPORT
add esp, 16
jmp .Lt_00A7
.Lt_00AF:
.Lt_00AE:
mov eax, dword ptr [ebp-8]
and eax, 511
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 32
jne .Lt_00B2
.Lt_00B3:
push 0
push 1
push 0
push 22
call ERRREPORTWARN
add esp, 16
jmp .Lt_00B0
.Lt_00B2:
cmp dword ptr [ebp-20], 55
jne .Lt_00B4
.Lt_00B5:
sub esp, 4
push 0
push -1
push 71
call ERRREPORT
add esp, 16
.Lt_00B4:
.Lt_00B0:
sub esp, 8
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-8]
and eax, 31
mov ebx, dword ptr [ebp-8]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp-8]
and ebx, 32505856
or eax, ebx
push eax
call TYPEHASDTOR
add esp, 16
test eax, eax
je .Lt_00B7
sub esp, 12
push dword ptr [ebp-16]
call SYMBGETCOMPDTOR
add esp, 4
push eax
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_00B9
sub esp, 4
push 0
push 0
push 206
call ERRREPORT
add esp, 16
.Lt_00B9:
.Lt_00B8:
.Lt_00B7:
.Lt_00B6:
sub esp, 12
sub esp, 12
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call ASTBUILDDELETEOP
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_00A7:
pop ebx
mov esp, ebp
pop ebp
ret
.size COPERATORDELETE, .-COPERATORDELETE
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

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
