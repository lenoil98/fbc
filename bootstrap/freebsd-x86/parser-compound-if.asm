	.intel_syntax noprefix

.section .text
.balign 16

.globl CIFSTMTBEGIN
CIFSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_007F:
push 2048
call LEXSKIPTOKEN
add esp, 4
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0082
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
mov dword ptr [ebp-4], eax
.Lt_0082:
.Lt_0081:
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0084
push 0
push 0
push 24
call ERRREPORT
add esp, 12
jmp .Lt_0083
.Lt_0084:
push dword ptr [ebp-4]
call ASTADD
add esp, 4
.Lt_0083:
push 1
push 266
call CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+24], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 391
jne .Lt_0086
push dword ptr [ebp-16]
call HIFSINGLELINE
add esp, 4
jmp .Lt_0080
.Lt_0086:
.Lt_0085:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 267
je .Lt_0088
push 0
push 0
push 31
call ERRREPORT
add esp, 12
jmp .Lt_0087
.Lt_0088:
push 2048
call LEXSKIPTOKEN
add esp, 4
.Lt_0087:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
jmp .Lt_008A
.Lt_008C:
mov dword ptr [ebp-20], -1
jmp .Lt_0089
.Lt_008D:
cmp dword ptr [ENV+136], 3
jne .Lt_008F
mov dword ptr [ebp-20], 0
jmp .Lt_008E
.Lt_008F:
mov dword ptr [ebp-20], -1
.Lt_008E:
jmp .Lt_0089
.Lt_0090:
mov dword ptr [ebp-20], 0
jmp .Lt_0089
.Lt_008A:
mov eax, dword ptr [ebp-24]
add eax, 4294967040
cmp eax, 4
ja .Lt_0090
mov eax, dword ptr [ebp-24]
jmp dword ptr [.LT_0091+eax*4-1024]
.LT_0091:
.int .Lt_008C
.int .Lt_008C
.int .Lt_008D
.int .Lt_008C
.int .Lt_008D
.Lt_0089:
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], eax
cmp dword ptr [ebp-20], 0
je .Lt_0093
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+12], 0
jmp .Lt_0092
.Lt_0093:
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+12], -1
push dword ptr [ebp-16]
call HIFSINGLELINE
add esp, 4
.Lt_0092:
.Lt_0080:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CIFSTMTNEXT
CIFSTMTNEXT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0094:
push 0
push 266
call CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0097
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 269
jne .Lt_0099
push 0
push 0
push 116
call ERRREPORT
add esp, 12
jmp .Lt_0098
.Lt_0099:
push 0
push 0
push 117
call ERRREPORT
add esp, 12
.Lt_0098:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0095
.Lt_0097:
.Lt_0096:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
je .Lt_009B
jmp .Lt_0095
.Lt_009B:
.Lt_009A:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+24], 0
je .Lt_009D
push 0
push 0
push 32
call ERRREPORT
add esp, 12
.Lt_009D:
.Lt_009C:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+8], 0
je .Lt_009F
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], 0
.Lt_009F:
.Lt_009E:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 269
jne .Lt_00A1
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+16], 0
je .Lt_00A3
push -1
mov eax, dword ptr [ebp-8]
push dword ptr [eax+16]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
.Lt_00A3:
.Lt_00A2:
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], eax
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00A5
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
mov dword ptr [ebp-4], eax
.Lt_00A5:
.Lt_00A4:
push 2048
push 267
call HMATCH
add esp, 8
test eax, eax
jne .Lt_00A7
push 0
push 0
push 31
call ERRREPORT
add esp, 12
.Lt_00A7:
.Lt_00A6:
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+16]
push dword ptr [ebp-4]
call ASTBUILDBRANCH
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00A9
push 0
push 0
push 24
call ERRREPORT
add esp, 12
jmp .Lt_00A8
.Lt_00A9:
push dword ptr [ebp-4]
call ASTADD
add esp, 4
.Lt_00A8:
jmp .Lt_00A0
.Lt_00A1:
mov eax, dword ptr [ebp-8]
inc dword ptr [eax+24]
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 266
jne .Lt_00AB
push 0
push 1
push 0
push 32
call ERRREPORTWARN
add esp, 16
.Lt_00AB:
.Lt_00AA:
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+20]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+16], 0
je .Lt_00AD
push -1
mov eax, dword ptr [ebp-8]
push dword ptr [eax+16]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+16], 0
.Lt_00AD:
.Lt_00AC:
.Lt_00A0:
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+8], eax
call CSTATEMENT
.Lt_0095:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CIFSTMTEND
CIFSTMTEND:
push ebp
mov ebp, esp
sub esp, 4
.Lt_00AE:
push -1
push 266
call CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00B1
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AF
.Lt_00B1:
.Lt_00B0:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .Lt_00B3
jmp .Lt_00AF
.Lt_00B3:
.Lt_00B2:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 340
jne .Lt_00B5
push 2048
call LEXSKIPTOKEN
add esp, 4
.Lt_00B5:
.Lt_00B4:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .Lt_00B7
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 4
.Lt_00B7:
.Lt_00B6:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+16], 0
je .Lt_00B9
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
.Lt_00B9:
.Lt_00B8:
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+20]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 4
.Lt_00AF:
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
HIFSINGLELINE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0067:
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 3
jne .Lt_006A
push 0
push 0
push 7
call LEXGETTEXT
push eax
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_006C
push 64
call LEXGETTEXT
push eax
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_006C:
.Lt_006B:
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
push dword ptr [ebp-4]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .Lt_0069
.Lt_006A:
call CSTATEMENT
.Lt_0069:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 268
jne .Lt_006E
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .Lt_0070
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_0070:
.Lt_006F:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
push 0
call LEXGETCLASS
add esp, 4
cmp eax, 3
jne .Lt_0072
push 0
push 0
push 7
call LEXGETTEXT
push eax
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0074
push 64
call LEXGETTEXT
push eax
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0074:
.Lt_0073:
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
push dword ptr [ebp-4]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .Lt_0071
.Lt_0072:
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
call CSTATEMENT
.Lt_0071:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
jmp .Lt_006D
.Lt_006E:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
.Lt_006D:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 340
jne .Lt_0077
.Lt_0078:
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 266
jne .Lt_007A
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
call LEXSKIPTOKEN
add esp, 4
.Lt_007A:
.Lt_0079:
jmp .Lt_0075
.Lt_0077:
cmp dword ptr [ebp-4], 314
jne .Lt_007B
.Lt_007C:
push 2048
call LEXSKIPTOKEN
add esp, 4
.Lt_007B:
.Lt_0075:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
je .Lt_007E
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 4
.Lt_007E:
.Lt_007D:
push dword ptr [ebp+8]
call CCOMPSTMTPOP
add esp, 4
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
