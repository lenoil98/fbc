	.intel_syntax noprefix

.section .text
.balign 16

.globl _CDATASTMT
_CDATASTMT:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.Lt_0069:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 443
jne .Lt_006C
.Lt_006D:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], 0
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_0071
.Lt_0072:
cmp dword ptr [ebp-12], 2
je .Lt_0071
.Lt_0073:
cmp dword ptr [ebp-12], 3
jne .Lt_0070
.Lt_0071:
push 34
lea eax, [ebp-20]
push eax
call _CIDENTIFIER
add esp, 8
mov dword ptr [ebp-16], eax
push 7
push dword ptr [ebp-16]
call _SYMBFINDBYCLASS
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0075
push 72
call _LEXGETTEXT
push eax
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0077
push 0
push 0
push 4
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
.Lt_0077:
.Lt_0076:
.Lt_0075:
.Lt_0074:
push 2048
call _LEXSKIPTOKEN
add esp, 4
.Lt_0070:
.Lt_006E:
push 0
push dword ptr [ebp-8]
call _RTLDATARESTORE
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_006B
.Lt_006C:
cmp dword ptr [ebp+8], 444
jne .Lt_0078
.Lt_0079:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], 0
.Lt_007A:
push 0
call _CVARORDEREF
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_007E
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
jmp .Lt_007D
.Lt_007E:
push dword ptr [ebp-8]
call _RTLDATAREAD
add esp, 4
test eax, eax
jne .Lt_0080
jmp .Lt_006A
.Lt_0080:
.Lt_007F:
.Lt_007D:
.Lt_007C:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_007A
.Lt_007B:
mov dword ptr [ebp-4], -1
jmp .Lt_006B
.Lt_0078:
cmp dword ptr [ebp+8], 445
jne .Lt_0081
.Lt_0082:
cmp dword ptr [_ENV+136], 3
je .Lt_0084
push 32
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0086
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_006A
.Lt_0086:
.Lt_0085:
cmp dword ptr [_PARSER+96], 0
jbe .Lt_0088
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
je .Lt_008A
push 0
push 0
push 61
call _ERRREPORT
add esp, 12
jmp .Lt_0089
.Lt_008A:
push 0
push 0
push 96
call _ERRREPORT
add esp, 12
.Lt_0089:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_006A
.Lt_0088:
.Lt_0087:
jmp .Lt_0083
.Lt_0084:
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
je .Lt_008C
push 0
push 0
push 61
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_006A
.Lt_008C:
.Lt_008B:
.Lt_0083:
call _ASTDATASTMTBEGIN
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
cmp dword ptr [_ENV+136], 3
je .Lt_008E
push 2048
call _LEXSKIPTOKEN
add esp, 4
.Lt_008F:
push 8
call _HMATCHEXPR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0093
jmp .Lt_006A
.Lt_0093:
.Lt_0092:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .Lt_0095
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 23
jne .Lt_0097
mov dword ptr [ebp-16], -1
jmp .Lt_0096
.Lt_0097:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 4
je .Lt_009B
.Lt_009C:
cmp dword ptr [ebp-20], 7
jne .Lt_009A
.Lt_009B:
push dword ptr [ebp-12]
call _ASTGETSTRLITSYMBOL
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.Lt_009A:
.Lt_0098:
.Lt_0096:
.Lt_0095:
.Lt_0094:
cmp dword ptr [ebp-16], 0
jne .Lt_009E
push 0
push 0
push 11
call _ERRREPORT
add esp, 12
push dword ptr [ebp-12]
call _ASTDELTREE
add esp, 4
jmp .Lt_009D
.Lt_009E:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTDATASTMTSTORE
add esp, 8
test eax, eax
jne .Lt_00A0
jmp .Lt_006A
.Lt_00A0:
.Lt_009F:
.Lt_009D:
.Lt_0091:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_008F
.Lt_0090:
jmp .Lt_008D
.Lt_008E:
push 62
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
.Lt_00A1:
mov dword ptr [ebp-32], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
.Lt_00A4:
push 62
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-48], eax
jmp .Lt_00A8
.Lt_00AA:
push 62
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_00A5
jmp .Lt_00A7
.Lt_00AB:
dec dword ptr [ebp-32]
jmp .Lt_00A7
.Lt_00AC:
mov dword ptr [ebp-16], -1
jmp .Lt_00A5
jmp .Lt_00A7
.Lt_00A8:
mov eax, dword ptr [ebp-48]
add eax, 4294967287
cmp eax, 251
ja .Lt_00A7
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.LT_00AD+eax*4-36]
_.LT_00AD:
.int .Lt_00AB
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00AB
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00AA
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.Lt_00A7:
push 0
push -1
push 0
call _LEXGETTEXT
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 62
call _LEXSKIPTOKEN
add esp, 4
inc dword ptr [ebp-32]
.Lt_00A6:
jmp .Lt_00A4
.Lt_00A5:
push 0
push -1
lea eax, [ebp-28]
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-32], 1
jne .Lt_00B0
push -1
lea eax, [ebp-28]
push eax
call _fb_StrLen
add esp, 8
cmp eax, 1
jle .Lt_00B2
mov eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 34
jne .Lt_00B5
push -1
lea ebx, [ebp-28]
push ebx
call _fb_StrLen
add esp, 8
mov ebx, dword ptr [ebp-28]
add ebx, eax
movzx eax, byte ptr [ebx-1]
cmp eax, 34
jne .Lt_00B7
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
call _fb_StrLen
add esp, 8
add eax, -2
push eax
push 2
lea eax, [ebp-28]
push eax
call _fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
.Lt_00B7:
.Lt_00B6:
.Lt_00B5:
.Lt_00B4:
.Lt_00B2:
.Lt_00B1:
.Lt_00B0:
.Lt_00AF:
push dword ptr [ebp-28]
call _ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTDATASTMTSTORE
add esp, 8
test eax, eax
jne .Lt_00B9
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_006A
.Lt_00B9:
.Lt_00B8:
.Lt_00A3:
cmp dword ptr [ebp-16], 0
je .Lt_00A1
.Lt_00A2:
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_008D:
push dword ptr [ebp-8]
call _ASTDATASTMTEND
add esp, 4
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_0081:
.Lt_006B:
.Lt_006A:
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

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
