	.intel_syntax noprefix

.section .text
.balign 16

.globl _CFUNCTIONCALL
_CFUNCTIONCALL:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .Lt_006B
jmp .Lt_0069
.Lt_006B:
.Lt_006A:
or dword ptr [ebp+24], 16
lea eax, [ebp+24]
push eax
lea eax, [ebp-20]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call _HMETHODCALLADDINSTPTROVLARG
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_006D
or dword ptr [ebp+24], 128
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_006F
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+116]
and ebx, 512
test ebx, ebx
jne .Lt_0071
push 0
push -1
push 196
call _ERRREPORT
add esp, 12
.Lt_0071:
.Lt_0070:
push 0
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+24]
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0073
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0072
.Lt_0073:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0072:
jmp .Lt_006E
.Lt_006F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+116]
and ebx, 128
test ebx, ebx
jne .Lt_0075
push 0
push 0
push 194
call _ERRREPORT
add esp, 12
.Lt_0075:
.Lt_0074:
mov ebx, dword ptr [ebp+24]
or ebx, 32
push ebx
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_006E:
jmp .Lt_006C
.Lt_006D:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_0077
push 0
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+24]
lea eax, [ebp-20]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0079
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0078
.Lt_0079:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0078:
jmp .Lt_0076
.Lt_0077:
mov eax, dword ptr [ebp+24]
or eax, 32
push eax
lea eax, [ebp-20]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CPROCARGLIST
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_0076:
.Lt_006C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 511
test ebx, ebx
jne .Lt_007B
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0069
.Lt_007B:
.Lt_007A:
push dword ptr [ebp-8]
call _ASTBUILDBYREFRESULTDEREF
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _CSTRIDXORMEMBERDEREF
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CFUNCTIONEX
_CFUNCTIONEX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_007C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .Lt_0080
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
and eax, 32
test eax, eax
je .Lt_007E
mov dword ptr [ebp-8], 8192
jmp .Lt_0083
.Lt_007E:
mov dword ptr [ebp-8], 4096
.Lt_0083:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_0082
.Lt_0080:
mov dword ptr [ebp-12], 2048
.Lt_0082:
push dword ptr [ebp-12]
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp+16]
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CFUNCTIONCALL
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_007D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CMETHODCALL
_CMETHODCALL:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0084:
push 4096
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [_PARSER+148]
and eax, 4
test eax, eax
je .Lt_0087
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 0
call _CFUNCTIONCALL
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_0086
.Lt_0087:
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 0
call _CPROCCALL
add esp, 24
mov dword ptr [ebp-8], eax
.Lt_0086:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0085:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CCTORCALL
_CCTORCALL:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0088:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _ASTDTORLISTADD
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_008B
push 0
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-12], -1
jmp .Lt_008A
.Lt_008B:
mov dword ptr [ebp-12], 0
.Lt_008A:
push 0
lea eax, [ebp-28]
push eax
lea eax, [_PARSER+112]
push eax
call _SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-32], eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-32]
mov dword ptr [eax+4], -1
cmp dword ptr [ebp-12], 0
jne .Lt_008C
mov dword ptr [ebp-36], 32
jmp .Lt_0092
.Lt_008C:
mov dword ptr [ebp-36], 0
.Lt_0092:
mov eax, dword ptr [ebp-36]
or eax, 80
push eax
lea eax, [ebp-28]
push eax
push 0
push dword ptr [ebp+8]
call _SYMBGETCOMPCTORHEAD
add esp, 4
push eax
push 0
call _CPROCARGLIST
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-12], 0
je .Lt_008F
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0091
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0090
.Lt_0091:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0090:
.Lt_008F:
.Lt_008E:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-16]
call _ASTNEWCALLCTOR
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0089:
mov eax, dword ptr [ebp-4]
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

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
