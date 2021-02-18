	.intel_syntax noprefix

.section .text
.balign 16

.globl CFUNCTIONCALL
CFUNCTIONCALL:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .Lt_006A
jmp .Lt_0068
.Lt_006A:
.Lt_0069:
or dword ptr [ebp+24], 16
lea eax, [ebp+24]
push eax
lea eax, [ebp-20]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call HMETHODCALLADDINSTPTROVLARG
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_006C
or dword ptr [ebp+24], 128
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_006E
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+116]
and ebx, 512
test ebx, ebx
jne .Lt_0070
push 0
push -1
push 196
call ERRREPORT
add esp, 12
.Lt_0070:
.Lt_006F:
push 0
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+24]
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0072
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
jmp .Lt_0071
.Lt_0072:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0071:
jmp .Lt_006D
.Lt_006E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+116]
and ebx, 128
test ebx, ebx
jne .Lt_0074
push 0
push 0
push 194
call ERRREPORT
add esp, 12
.Lt_0074:
.Lt_0073:
mov ebx, dword ptr [ebp+24]
or ebx, 32
push ebx
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_006D:
jmp .Lt_006B
.Lt_006C:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_0076
push 0
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+24]
lea eax, [ebp-20]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0078
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
jmp .Lt_0077
.Lt_0078:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0077:
jmp .Lt_0075
.Lt_0076:
mov eax, dword ptr [ebp+24]
or eax, 32
push eax
lea eax, [ebp-20]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_0075:
.Lt_006B:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
test ebx, ebx
jne .Lt_007A
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0068
.Lt_007A:
.Lt_0079:
push dword ptr [ebp-8]
call ASTBUILDBYREFRESULTDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CFUNCTIONEX
CFUNCTIONEX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_007B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .Lt_007F
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
and eax, 32
test eax, eax
je .Lt_007D
mov dword ptr [ebp-8], 8192
jmp .Lt_0082
.Lt_007D:
mov dword ptr [ebp-8], 4096
.Lt_0082:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_0081
.Lt_007F:
mov dword ptr [ebp-12], 2048
.Lt_0081:
push dword ptr [ebp-12]
call LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+16]
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CFUNCTIONCALL
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_007C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CMETHODCALL
CMETHODCALL:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0083:
push 4096
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [PARSER+148]
and eax, 4
test eax, eax
je .Lt_0086
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 0
call CFUNCTIONCALL
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_0085
.Lt_0086:
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 0
call CPROCCALL
add esp, 24
mov dword ptr [ebp-8], eax
.Lt_0085:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0084:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl CCTORCALL
CCTORCALL:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0087:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call ASTDTORLISTADD
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_008A
push 0
call LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-12], -1
jmp .Lt_0089
.Lt_008A:
mov dword ptr [ebp-12], 0
.Lt_0089:
push 0
lea eax, [ebp-28]
push eax
lea eax, [PARSER+112]
push eax
call SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-32], eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [eax+4], -1
cmp dword ptr [ebp-12], 0
jne .Lt_008B
mov dword ptr [ebp-36], 32
jmp .Lt_0091
.Lt_008B:
mov dword ptr [ebp-36], 0
.Lt_0091:
mov eax, dword ptr [ebp-36]
or eax, 80
push eax
lea eax, [ebp-28]
push eax
push 0
push dword ptr [ebp+8]
call SYMBGETCOMPCTORHEAD
add esp, 4
push eax
push 0
call CPROCARGLIST
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-12], 0
je .Lt_008E
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0090
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
jmp .Lt_008F
.Lt_0090:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_008F:
.Lt_008E:
.Lt_008D:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-16]
call ASTNEWCALLCTOR
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0088:
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

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
