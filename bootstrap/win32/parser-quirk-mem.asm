	.intel_syntax noprefix

.section .text
.balign 16

.globl _COPERATORNEW@0
_COPERATORNEW@0:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-28], -1
mov dword ptr [ebp-48], 78
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-40], 0
push 2048
call _LEXSKIPTOKEN@4
push 0
push 40
call _HMATCH@8
test eax, eax
je .Lt_006B
call _CEXPRESSION@0
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 0
jne .Lt_006D
push 0
push -1
push 9
call _ERRREPORT@12
.Lt_006D:
.Lt_006C:
push 0
push 41
call _HMATCH@8
test eax, eax
jne .Lt_006F
push 0
push 0
push 7
call _ERRREPORT@12
.Lt_006F:
.Lt_006E:
.Lt_006B:
.Lt_006A:
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
call _HSYMBOLTYPE@20
mov eax, dword ptr [ebp-8]
and eax, 511
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 18
je .Lt_0074
.Lt_0075:
cmp dword ptr [ebp-60], 4
je .Lt_0074
.Lt_0076:
cmp dword ptr [ebp-60], 7
jne .Lt_0073
.Lt_0074:
push 0
push -1
push 201
call _ERRREPORT@12
mov dword ptr [ebp-8], 17
.Lt_0073:
.Lt_0071:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _HCOMPLAINIFABSTRACTCLASS@8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _TYPEHASCTOR@8
mov dword ptr [ebp-20], eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _TYPEHASDEFCTOR@8
mov dword ptr [ebp-24], eax
push 0
call _LEXGETTOKEN@4
cmp eax, 91
jne .Lt_0078
push 0
call _LEXSKIPTOKEN@4
call _CEXPRESSION@0
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_007A
push 0
push 0
push 9
call _ERRREPORT@12
jmp .Lt_0079
.Lt_007A:
mov dword ptr [ebp-48], 79
.Lt_0079:
push 0
call _LEXGETTOKEN@4
cmp eax, 93
je .Lt_007C
push 0
push 0
push 66
call _ERRREPORT@12
push 0
push 0
push 0
push 93
call _HSKIPUNTIL@16
jmp .Lt_007B
.Lt_007C:
push 0
call _LEXSKIPTOKEN@4
.Lt_007B:
push 0
call _LEXGETTOKEN@4
cmp eax, 123
jne .Lt_007E
push 0
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 372
jne .Lt_0080
cmp dword ptr [ebp-24], 0
je .Lt_0082
push 0
push 1
push 0
push 19
call _ERRREPORTWARN@16
.Lt_0082:
.Lt_0081:
mov eax, dword ptr [ebp-8]
and eax, 511
cmp eax, 17
jne .Lt_0084
push 0
push 0
push 24
call _ERRREPORT@12
jmp .Lt_0083
.Lt_0084:
mov dword ptr [ebp-28], 0
.Lt_0083:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_007F
.Lt_0080:
push 0
push 0
push 200
call _ERRREPORT@12
.Lt_007F:
push 0
call _LEXGETTOKEN@4
cmp eax, 125
je .Lt_0086
push 0
push 0
push 65
call _ERRREPORT@12
push 0
push 0
push -1
push 125
call _HSKIPUNTIL@16
jmp .Lt_0085
.Lt_0086:
push 0
call _LEXSKIPTOKEN@4
.Lt_0085:
.Lt_007E:
.Lt_007D:
.Lt_0078:
.Lt_0077:
cmp dword ptr [ebp-36], 0
jne .Lt_0088
push 0
push 9
push 0
push 1
call _ASTNEWCONSTI@16
mov dword ptr [ebp-36], eax
jmp .Lt_0087
.Lt_0088:
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax], 16
jne .Lt_008A
push 0
push 9
push 9
push dword ptr [ebp-36]
call _CCONSTINTEXPRRANGED@8
push edx
push eax
call _ASTNEWCONSTI@16
mov dword ptr [ebp-36], eax
jmp .Lt_0089
.Lt_008A:
push 0
push 1
push dword ptr [ebp-36]
push 0
push 9
call _ASTNEWCONV@20
mov dword ptr [ebp-36], eax
.Lt_0089:
cmp dword ptr [ebp-36], 0
jne .Lt_008C
push 0
push -1
push 20
call _ERRREPORT@12
push 0
push 9
push 0
push 1
call _ASTNEWCONSTI@16
mov dword ptr [ebp-36], eax
.Lt_008C:
.Lt_008B:
.Lt_0087:
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
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-20], 0
je .Lt_008E
push 0
call _LEXGETTOKEN@4
cmp eax, 40
jne .Lt_0090
cmp dword ptr [ebp-48], 79
jne .Lt_0092
push 0
push -1
push 199
call _ERRREPORT@12
jmp .Lt_0091
.Lt_0092:
push dword ptr [ebp-12]
call _CCTORCALL@4
mov dword ptr [ebp-32], eax
.Lt_0091:
jmp .Lt_008F
.Lt_0090:
push dword ptr [ebp-12]
call _SYMBGETCOMPDEFCTOR@4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .Lt_0094
push 0
push 0
push 183
call _ERRREPORT@12
jmp .Lt_0093
.Lt_0094:
cmp dword ptr [ebp-48], 79
je .Lt_0096
push dword ptr [ebp-12]
call _CCTORCALL@4
mov dword ptr [ebp-32], eax
jmp .Lt_0095
.Lt_0096:
push dword ptr [ebp-60]
call _SYMBCHECKACCESS@4
test eax, eax
jne .Lt_0098
push 0
push 0
push 204
call _ERRREPORT@12
.Lt_0098:
.Lt_0097:
.Lt_0095:
.Lt_0093:
.Lt_008F:
jmp .Lt_008D
.Lt_008E:
push 0
call _LEXGETTOKEN@4
cmp eax, 40
jne .Lt_009A
cmp dword ptr [ebp-48], 79
jne .Lt_009C
push 0
push -1
push 200
call _ERRREPORT@12
.Lt_009C:
.Lt_009B:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 372
jne .Lt_009E
push 0
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-8]
and eax, 511
cmp eax, 17
jne .Lt_00A0
push 0
push 0
push 24
call _ERRREPORT@12
jmp .Lt_009F
.Lt_00A0:
mov dword ptr [ebp-28], 0
.Lt_009F:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_00A2
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_00A1
.Lt_00A2:
push 0
call _LEXSKIPTOKEN@4
.Lt_00A1:
jmp .Lt_009D
.Lt_009E:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 1
push dword ptr [ebp-16]
call _CINITIALIZER@16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_00A4
push 0
push 0
push 9
call _ERRREPORT@12
.Lt_00A4:
.Lt_00A3:
.Lt_009D:
.Lt_009A:
.Lt_0099:
.Lt_008D:
push dword ptr [ebp-40]
push dword ptr [ebp-28]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-32]
push dword ptr [ebp-36]
push dword ptr [ebp-16]
push dword ptr [ebp-48]
call _ASTBUILDNEWOP@32
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
jne .Lt_00A6
push 0
push 0
push 24
call _ERRREPORT@12
.Lt_00A6:
.Lt_00A5:
push 2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR@20
push eax
push dword ptr [ebp-44]
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _COPERATORDELETE@0
_COPERATORDELETE@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00A7:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-12], 80
push 0
call _LEXGETTOKEN@4
cmp eax, 91
jne .Lt_00AA
push 0
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-12], 81
push 0
call _LEXGETTOKEN@4
cmp eax, 93
je .Lt_00AC
push 0
push 0
push 66
call _ERRREPORT@12
push 0
push 0
push 0
push 93
call _HSKIPUNTIL@16
jmp .Lt_00A8
.Lt_00AC:
.Lt_00AB:
push 0
call _LEXSKIPTOKEN@4
.Lt_00AA:
.Lt_00A9:
push 4
call _CVARORDEREF@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00AE
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00A8
.Lt_00AE:
.Lt_00AD:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
and eax, 480
test eax, eax
jne .Lt_00B0
push 0
push 0
push 28
call _ERRREPORT@12
jmp .Lt_00A8
.Lt_00B0:
.Lt_00AF:
mov eax, dword ptr [ebp-8]
and eax, 511
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 32
jne .Lt_00B3
.Lt_00B4:
push 0
push 1
push 0
push 22
call _ERRREPORTWARN@16
jmp .Lt_00B1
.Lt_00B3:
cmp dword ptr [ebp-20], 55
jne .Lt_00B5
.Lt_00B6:
push 0
push -1
push 71
call _ERRREPORT@12
.Lt_00B5:
.Lt_00B1:
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
call _TYPEHASDTOR@8
test eax, eax
je .Lt_00B8
push dword ptr [ebp-16]
call _SYMBGETCOMPDTOR@4
push eax
call _SYMBCHECKACCESS@4
test eax, eax
jne .Lt_00BA
push 0
push 0
push 206
call _ERRREPORT@12
.Lt_00BA:
.Lt_00B9:
.Lt_00B8:
.Lt_00B7:
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call _ASTBUILDDELETEOP@8
push eax
call _ASTADD@4
.Lt_00A8:
pop ebx
mov esp, ebp
pop ebp
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

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
