	.intel_syntax noprefix

.section .text
.balign 16

.globl _CIFSTMTBEGIN@0
_CIFSTMTBEGIN@0:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_0080:
push 2048
call _LEXSKIPTOKEN@4
call _CEXPRESSION@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0083
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.Lt_0083:
.Lt_0082:
push 0
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-12], eax
push 0
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _ASTBUILDBRANCH@16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0085
push 0
push 0
push 24
call _ERRREPORT@12
jmp .Lt_0084
.Lt_0085:
push dword ptr [ebp-4]
call _ASTADD@4
.Lt_0084:
push 1
push 266
call _CCOMPSTMTPUSH@8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+20], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+24], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+28], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 391
jne .Lt_0087
push dword ptr [ebp-16]
call _HIFSINGLELINE@4
jmp .Lt_0081
.Lt_0087:
.Lt_0086:
push 0
call _LEXGETTOKEN@4
cmp eax, 267
je .Lt_0089
push 0
push 0
push 31
call _ERRREPORT@12
jmp .Lt_0088
.Lt_0089:
push 2048
call _LEXSKIPTOKEN@4
.Lt_0088:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-24], eax
jmp .Lt_008B
.Lt_008D:
mov dword ptr [ebp-20], -1
jmp .Lt_008A
.Lt_008E:
cmp dword ptr [_ENV+136], 3
jne .Lt_0090
mov dword ptr [ebp-20], 0
jmp .Lt_008F
.Lt_0090:
mov dword ptr [ebp-20], -1
.Lt_008F:
jmp .Lt_008A
.Lt_0091:
mov dword ptr [ebp-20], 0
jmp .Lt_008A
.Lt_008B:
mov eax, dword ptr [ebp-24]
add eax, 4294967040
cmp eax, 4
ja .Lt_0091
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.LT_0092+eax*4-1024]
_.LT_0092:
.int .Lt_008D
.int .Lt_008D
.int .Lt_008E
.int .Lt_008D
.int .Lt_008E
.Lt_008A:
call _ASTSCOPEBEGIN@0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], eax
cmp dword ptr [ebp-20], 0
je .Lt_0094
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+16], 0
jmp .Lt_0093
.Lt_0094:
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+16], -1
push dword ptr [ebp-16]
call _HIFSINGLELINE@4
.Lt_0093:
.Lt_0081:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CIFSTMTNEXT@0
_CIFSTMTNEXT@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0095:
push 0
push 266
call _CCOMPSTMTGETTOS@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0098
push 0
call _LEXGETTOKEN@4
cmp eax, 269
jne .Lt_009A
push 0
push 0
push 116
call _ERRREPORT@12
jmp .Lt_0099
.Lt_009A:
push 0
push 0
push 117
call _ERRREPORT@12
.Lt_0099:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0096
.Lt_0098:
.Lt_0097:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+16], 0
je .Lt_009C
jmp .Lt_0096
.Lt_009C:
.Lt_009B:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+28], 0
je .Lt_009E
push 0
push 0
push 32
call _ERRREPORT@12
.Lt_009E:
.Lt_009D:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+8], 0
je .Lt_00A0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
call _ASTSCOPEEND@4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], 0
.Lt_00A0:
.Lt_009F:
push 0
call _LEXGETTOKEN@4
cmp eax, 269
jne .Lt_00A2
push 2048
call _LEXSKIPTOKEN@4
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+24]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+20], 0
je .Lt_00A4
push -1
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
.Lt_00A4:
.Lt_00A3:
push 0
push 0
call _SYMBADDLABEL@8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], eax
call _CEXPRESSION@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00A6
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.Lt_00A6:
.Lt_00A5:
push 2048
push 267
call _HMATCH@8
test eax, eax
jne .Lt_00A8
push 0
push 0
push 31
call _ERRREPORT@12
.Lt_00A8:
.Lt_00A7:
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
push dword ptr [ebp-4]
call _ASTBUILDBRANCH@16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00AA
push 0
push 0
push 24
call _ERRREPORT@12
jmp .Lt_00A9
.Lt_00AA:
push dword ptr [ebp-4]
call _ASTADD@4
.Lt_00A9:
jmp .Lt_00A1
.Lt_00A2:
mov eax, dword ptr [ebp-8]
inc dword ptr [eax+28]
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
cmp eax, 266
jne .Lt_00AC
push 0
push 1
push 0
push 32
call _ERRREPORTWARN@16
.Lt_00AC:
.Lt_00AB:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+24]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+20], 0
je .Lt_00AE
push -1
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+20], 0
.Lt_00AE:
.Lt_00AD:
.Lt_00A1:
call _ASTSCOPEBEGIN@0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+8], eax
call _CSTATEMENT@0
.Lt_0096:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CIFSTMTEND@0
_CIFSTMTEND@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_00AF:
push -1
push 266
call _CCOMPSTMTGETTOS@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00B2
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00B0
.Lt_00B2:
.Lt_00B1:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
je .Lt_00B4
jmp .Lt_00B0
.Lt_00B4:
.Lt_00B3:
push 0
call _LEXGETTOKEN@4
cmp eax, 340
jne .Lt_00B6
push 2048
call _LEXSKIPTOKEN@4
.Lt_00B6:
.Lt_00B5:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .Lt_00B8
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call _ASTSCOPEEND@4
.Lt_00B8:
.Lt_00B7:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+20], 0
je .Lt_00BA
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+20]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
.Lt_00BA:
.Lt_00B9:
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+24]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push dword ptr [ebp-4]
call _CCOMPSTMTPOP@4
.Lt_00B0:
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
.balign 16
_HIFSINGLELINE@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0068:
push 0
call _LEXGETCLASS@4
cmp eax, 3
jne .Lt_006B
push 0
push 0
push 7
call _LEXGETTEXT@0
push eax
push dword ptr [_SYMB+98536]
call _SYMBLOOKUPBYNAMEANDCLASS@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_006D
push 64
call _LEXGETTEXT@0
push eax
call _SYMBADDLABEL@8
mov dword ptr [ebp-4], eax
.Lt_006D:
.Lt_006C:
push 0
call _LEXSKIPTOKEN@4
push 0
push dword ptr [ebp-4]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
jmp .Lt_006A
.Lt_006B:
call _CSTATEMENT@0
.Lt_006A:
push 0
call _LEXGETTOKEN@4
cmp eax, 268
jne .Lt_006F
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .Lt_0071
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _ASTSCOPEEND@4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_0071:
.Lt_0070:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push 0
call _LEXGETCLASS@4
cmp eax, 3
jne .Lt_0073
push 0
push 0
push 7
call _LEXGETTEXT@0
push eax
push dword ptr [_SYMB+98536]
call _SYMBLOOKUPBYNAMEANDCLASS@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0075
push 64
call _LEXGETTEXT@0
push eax
call _SYMBADDLABEL@8
mov dword ptr [ebp-4], eax
.Lt_0075:
.Lt_0074:
push 0
call _LEXSKIPTOKEN@4
push 0
push dword ptr [ebp-4]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
jmp .Lt_0072
.Lt_0073:
call _ASTSCOPEBEGIN@0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
call _CSTATEMENT@0
.Lt_0072:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
jmp .Lt_006E
.Lt_006F:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
.Lt_006E:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 340
jne .Lt_0078
.Lt_0079:
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 266
jne .Lt_007B
push 2048
call _LEXSKIPTOKEN@4
push 2048
call _LEXSKIPTOKEN@4
.Lt_007B:
.Lt_007A:
jmp .Lt_0076
.Lt_0078:
cmp dword ptr [ebp-4], 314
jne .Lt_007C
.Lt_007D:
push 2048
call _LEXSKIPTOKEN@4
.Lt_007C:
.Lt_0076:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .Lt_007F
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _ASTSCOPEEND@4
.Lt_007F:
.Lt_007E:
push dword ptr [ebp+8]
call _CCOMPSTMTPOP@4
.Lt_0069:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
