	.intel_syntax noprefix

.section .text
.balign 16

.globl CGOTOSTMT
CGOTOSTMT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0095:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_0098
.Lt_009A:
push 2048
call LEXSKIPTOKEN
add esp, 4
call HGETLABELID
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_009C
push dword ptr [ebp-8]
call ASTSCOPEBREAK
add esp, 4
.Lt_009C:
.Lt_009B:
mov dword ptr [ebp-4], -1
jmp .Lt_0097
.Lt_009D:
mov eax, dword ptr [ENV+888]
and eax, 65536
test eax, eax
jne .Lt_009F
push 0
push 146
push 65536
call ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0096
.Lt_009F:
.Lt_009E:
cmp dword ptr [ENV+948], 0
je .Lt_00A1
call HGOSUBBRANCH
jmp .Lt_00A0
.Lt_00A1:
push 0
push 0
push 278
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.Lt_00A0:
mov dword ptr [ebp-4], -1
jmp .Lt_0096
jmp .Lt_0097
.Lt_00A2:
mov eax, dword ptr [ENV+888]
and eax, 65536
test eax, eax
je .Lt_00A4
cmp dword ptr [ENV+948], 0
je .Lt_00A6
call HGOSUBRETURN
mov dword ptr [ebp-4], eax
jmp .Lt_0096
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
.Lt_00A3:
call HFUNCRETURN
mov dword ptr [ebp-4], eax
jmp .Lt_0096
jmp .Lt_0097
.Lt_00A7:
mov eax, dword ptr [ENV+888]
and eax, 134217728
test eax, eax
jne .Lt_00A9
push 0
push 146
push 134217728
call ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0096
.Lt_00A9:
.Lt_00A8:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
push 283
call HMATCH
add esp, 8
push eax
call RTLERRORRESUME
add esp, 4
mov dword ptr [ebp-4], -1
jmp .Lt_0097
.Lt_0098:
mov eax, dword ptr [ebp-12]
add eax, 4294966906
cmp eax, 110
ja .Lt_0097
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00AA+eax*4-1560]
.LT_00AA:
.int .Lt_00A2
.int .Lt_009A
.int .Lt_009D
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_00A7
.Lt_0097:
.Lt_0096:
mov eax, dword ptr [ebp-4]
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
HFUNCRETURN:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [PARSER+48], 0
je .Lt_006B
mov eax, dword ptr [PARSER+48]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-12], ebx
.Lt_006B:
.Lt_006A:
cmp dword ptr [ebp-12], 0
jne .Lt_006D
push 0
push 0
push 53
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0069
.Lt_006D:
.Lt_006C:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov ebx, dword ptr [PARSER+104]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
je .Lt_006F
mov dword ptr [ebp-8], -1
jmp .Lt_006E
.Lt_006F:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
jmp .Lt_0071
.Lt_0073:
mov dword ptr [ebp-8], 0
jmp .Lt_0070
.Lt_0074:
mov dword ptr [ebp-8], -1
jmp .Lt_0070
.Lt_0071:
mov eax, dword ptr [ebp-16]
add eax, 4294967040
cmp eax, 84
ja .Lt_0074
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_0075+eax*4-1024]
.LT_0075:
.int .Lt_0073
.int .Lt_0073
.int .Lt_0073
.int .Lt_0073
.int .Lt_0073
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0073
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0073
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0073
.Lt_0070:
.Lt_006E:
cmp dword ptr [ebp-8], 0
je .Lt_0077
push -1
call CASSIGNFUNCTRESULT
add esp, 4
test eax, eax
jne .Lt_0079
jmp .Lt_0069
.Lt_0079:
.Lt_0078:
.Lt_0077:
.Lt_0076:
push dword ptr [ebp-12]
call ASTSCOPEBREAK
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETLABELID:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_007A:
push 0
call LEXGETCLASS
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_007D
.Lt_007F:
push 0
push 0
push 7
call LEXGETTEXT
push eax
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_007C
.Lt_0080:
push 38
lea eax, [ebp-16]
push eax
call CIDENTIFIER
add esp, 8
mov dword ptr [ebp-20], eax
push 7
push dword ptr [ebp-20]
call SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_007C
.Lt_0081:
push 0
push 0
push 14
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_007B
jmp .Lt_007C
.Lt_007D:
cmp dword ptr [ebp-12], 3
ja .Lt_0081
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_0082+eax*4]
.LT_0082:
.int .Lt_0080
.int .Lt_0080
.int .Lt_0080
.int .Lt_007F
.Lt_007C:
cmp dword ptr [ebp-8], 0
jne .Lt_0084
push 64
call LEXGETTEXT
push eax
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0086
push 0
push 0
push 14
call ERRREPORT
add esp, 12
.Lt_0086:
.Lt_0085:
.Lt_0084:
.Lt_0083:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_007B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HGOSUBBRANCH:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0087:
push 2048
call LEXSKIPTOKEN
add esp, 4
call HGETLABELID
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_008A
push dword ptr [ebp-4]
push dword ptr [PARSER+104]
call ASTGOSUBADDJMP
add esp, 8
.Lt_008A:
.Lt_0089:
.Lt_0088:
mov esp, ebp
pop ebp
ret
.balign 16
HGOSUBRETURN:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_008B:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_008E
.Lt_0090:
push 0
push dword ptr [PARSER+104]
call ASTGOSUBADDRETURN
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_008D
.Lt_0091:
call HGETLABELID
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0093
push dword ptr [ebp-8]
push dword ptr [PARSER+104]
call ASTGOSUBADDRETURN
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_0092
.Lt_0093:
mov dword ptr [ebp-4], -1
.Lt_0092:
jmp .Lt_008D
.Lt_008E:
mov eax, dword ptr [ebp-12]
add eax, 4294967040
cmp eax, 84
ja .Lt_0091
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_0094+eax*4-1024]
.LT_0094:
.int .Lt_0090
.int .Lt_0090
.int .Lt_0090
.int .Lt_0090
.int .Lt_0090
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0090
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0090
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0090
.Lt_008D:
.Lt_008C:
mov eax, dword ptr [ebp-4]
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
