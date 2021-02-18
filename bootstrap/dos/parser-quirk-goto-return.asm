	.intel_syntax noprefix

.section .text
.balign 16

.globl _CGOTOSTMT
_CGOTOSTMT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0096:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_0099
.Lt_009B:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _HGETLABELID
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_009D
push dword ptr [ebp-8]
call _ASTSCOPEBREAK
add esp, 4
.Lt_009D:
.Lt_009C:
mov dword ptr [ebp-4], -1
jmp .Lt_0098
.Lt_009E:
mov eax, dword ptr [_ENV+888]
and eax, 65536
test eax, eax
jne .Lt_00A0
push 0
push 146
push 65536
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0097
.Lt_00A0:
.Lt_009F:
cmp dword ptr [_ENV+948], 0
je .Lt_00A2
call _HGOSUBBRANCH
jmp .Lt_00A1
.Lt_00A2:
push 0
push 0
push 278
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
.Lt_00A1:
mov dword ptr [ebp-4], -1
jmp .Lt_0097
jmp .Lt_0098
.Lt_00A3:
mov eax, dword ptr [_ENV+888]
and eax, 65536
test eax, eax
je .Lt_00A5
cmp dword ptr [_ENV+948], 0
je .Lt_00A7
call _HGOSUBRETURN
mov dword ptr [ebp-4], eax
jmp .Lt_0097
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
call _HFUNCRETURN
mov dword ptr [ebp-4], eax
jmp .Lt_0097
jmp .Lt_0098
.Lt_00A8:
mov eax, dword ptr [_ENV+888]
and eax, 134217728
test eax, eax
jne .Lt_00AA
push 0
push 146
push 134217728
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0097
.Lt_00AA:
.Lt_00A9:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
push 283
call _HMATCH
add esp, 8
push eax
call _RTLERRORRESUME
add esp, 4
mov dword ptr [ebp-4], -1
jmp .Lt_0098
.Lt_0099:
mov eax, dword ptr [ebp-12]
add eax, 4294966906
cmp eax, 110
ja .Lt_0098
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00AB+eax*4-1560]
_.LT_00AB:
.int .Lt_00A3
.int .Lt_009B
.int .Lt_009E
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_0098
.int .Lt_00A8
.Lt_0098:
.Lt_0097:
mov eax, dword ptr [ebp-4]
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
_HFUNCRETURN:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0069:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [_PARSER+48], 0
je .Lt_006C
mov eax, dword ptr [_PARSER+48]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-12], ebx
.Lt_006C:
.Lt_006B:
cmp dword ptr [ebp-12], 0
jne .Lt_006E
push 0
push 0
push 53
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_006A
.Lt_006E:
.Lt_006D:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov ebx, dword ptr [_PARSER+104]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
je .Lt_0070
mov dword ptr [ebp-8], -1
jmp .Lt_006F
.Lt_0070:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
jmp .Lt_0072
.Lt_0074:
mov dword ptr [ebp-8], 0
jmp .Lt_0071
.Lt_0075:
mov dword ptr [ebp-8], -1
jmp .Lt_0071
.Lt_0072:
mov eax, dword ptr [ebp-16]
add eax, 4294967040
cmp eax, 84
ja .Lt_0075
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_0076+eax*4-1024]
_.LT_0076:
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0074
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0074
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0074
.Lt_0071:
.Lt_006F:
cmp dword ptr [ebp-8], 0
je .Lt_0078
push -1
call _CASSIGNFUNCTRESULT
add esp, 4
test eax, eax
jne .Lt_007A
jmp .Lt_006A
.Lt_007A:
.Lt_0079:
.Lt_0078:
.Lt_0077:
push dword ptr [ebp-12]
call _ASTSCOPEBREAK
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_006A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETLABELID:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_007B:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_007E
.Lt_0080:
push 0
push 0
push 7
call _LEXGETTEXT
push eax
push dword ptr [_SYMB+98528]
call _SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_007D
.Lt_0081:
push 38
lea eax, [ebp-16]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp-20], eax
push 7
push dword ptr [ebp-20]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_007D
.Lt_0082:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_007C
jmp .Lt_007D
.Lt_007E:
cmp dword ptr [ebp-12], 3
ja .Lt_0082
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_0083+eax*4]
_.LT_0083:
.int .Lt_0081
.int .Lt_0081
.int .Lt_0081
.int .Lt_0080
.Lt_007D:
cmp dword ptr [ebp-8], 0
jne .Lt_0085
push 64
call _LEXGETTEXT
push eax
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0087
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
.Lt_0087:
.Lt_0086:
.Lt_0085:
.Lt_0084:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_007C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HGOSUBBRANCH:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0088:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _HGETLABELID
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_008B
push dword ptr [ebp-4]
push dword ptr [_PARSER+104]
call _ASTGOSUBADDJMP
add esp, 8
.Lt_008B:
.Lt_008A:
.Lt_0089:
mov esp, ebp
pop ebp
ret
.balign 16
_HGOSUBRETURN:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_008C:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_008F
.Lt_0091:
push 0
push dword ptr [_PARSER+104]
call _ASTGOSUBADDRETURN
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_008E
.Lt_0092:
call _HGETLABELID
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0094
push dword ptr [ebp-8]
push dword ptr [_PARSER+104]
call _ASTGOSUBADDRETURN
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_0093
.Lt_0094:
mov dword ptr [ebp-4], -1
.Lt_0093:
jmp .Lt_008E
.Lt_008F:
mov eax, dword ptr [ebp-12]
add eax, 4294967040
cmp eax, 84
ja .Lt_0092
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_0095+eax*4-1024]
_.LT_0095:
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0091
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0091
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0091
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0092
.int .Lt_0091
.Lt_008E:
.Lt_008D:
mov eax, dword ptr [ebp-4]
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
