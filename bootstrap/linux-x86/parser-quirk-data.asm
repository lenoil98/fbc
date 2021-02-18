	.intel_syntax noprefix

.section .text
.balign 16

.globl CDATASTMT
CDATASTMT:
.type CDATASTMT, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 443
jne .Lt_006B
.Lt_006C:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_0070
.Lt_0071:
cmp dword ptr [ebp-12], 2
je .Lt_0070
.Lt_0072:
cmp dword ptr [ebp-12], 3
jne .Lt_006F
.Lt_0070:
sub esp, 8
push 34
lea eax, [ebp-20]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
push 7
push dword ptr [ebp-16]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0074
sub esp, 8
push 72
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0076
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0069
.Lt_0076:
.Lt_0075:
.Lt_0074:
.Lt_0073:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.Lt_006F:
.Lt_006D:
sub esp, 8
push 0
push dword ptr [ebp-8]
call RTLDATARESTORE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_006A
.Lt_006B:
cmp dword ptr [ebp+8], 444
jne .Lt_0077
.Lt_0078:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], 0
.Lt_0079:
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_007D
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .Lt_007C
.Lt_007D:
sub esp, 12
push dword ptr [ebp-8]
call RTLDATAREAD
add esp, 16
test eax, eax
jne .Lt_007F
jmp .Lt_0069
.Lt_007F:
.Lt_007E:
.Lt_007C:
.Lt_007B:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0079
.Lt_007A:
mov dword ptr [ebp-4], -1
jmp .Lt_006A
.Lt_0077:
cmp dword ptr [ebp+8], 445
jne .Lt_0080
.Lt_0081:
cmp dword ptr [ENV+136], 3
je .Lt_0083
sub esp, 12
push 32
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0085
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0069
.Lt_0085:
.Lt_0084:
cmp dword ptr [PARSER+96], 0
jbe .Lt_0087
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
je .Lt_0089
sub esp, 4
push 0
push 0
push 61
call ERRREPORT
add esp, 16
jmp .Lt_0088
.Lt_0089:
sub esp, 4
push 0
push 0
push 96
call ERRREPORT
add esp, 16
.Lt_0088:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_0069
.Lt_0087:
.Lt_0086:
jmp .Lt_0082
.Lt_0083:
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
je .Lt_008B
sub esp, 4
push 0
push 0
push 61
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_0069
.Lt_008B:
.Lt_008A:
.Lt_0082:
call ASTDATASTMTBEGIN
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
cmp dword ptr [ENV+136], 3
je .Lt_008D
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.Lt_008E:
sub esp, 12
push 8
call HMATCHEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0092
jmp .Lt_0069
.Lt_0092:
.Lt_0091:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
jne .Lt_0094
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 23
jne .Lt_0096
mov dword ptr [ebp-16], -1
jmp .Lt_0095
.Lt_0096:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 4
je .Lt_009A
.Lt_009B:
cmp dword ptr [ebp-20], 7
jne .Lt_0099
.Lt_009A:
sub esp, 12
push dword ptr [ebp-12]
call ASTGETSTRLITSYMBOL
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.Lt_0099:
.Lt_0097:
.Lt_0095:
.Lt_0094:
.Lt_0093:
cmp dword ptr [ebp-16], 0
jne .Lt_009D
sub esp, 4
push 0
push 0
push 11
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
jmp .Lt_009C
.Lt_009D:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTDATASTMTSTORE
add esp, 16
test eax, eax
jne .Lt_009F
jmp .Lt_0069
.Lt_009F:
.Lt_009E:
.Lt_009C:
.Lt_0090:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .Lt_008E
.Lt_008F:
jmp .Lt_008C
.Lt_008D:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
.Lt_00A0:
mov dword ptr [ebp-32], 0
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
.Lt_00A3:
sub esp, 12
push 62
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-48], eax
jmp .Lt_00A7
.Lt_00A9:
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00A4
jmp .Lt_00A6
.Lt_00AA:
dec dword ptr [ebp-32]
jmp .Lt_00A6
.Lt_00AB:
mov dword ptr [ebp-16], -1
jmp .Lt_00A4
jmp .Lt_00A6
.Lt_00A7:
mov eax, dword ptr [ebp-48]
add eax, 4294967287
cmp eax, 251
ja .Lt_00A6
mov eax, dword ptr [ebp-48]
jmp dword ptr [.LT_00AC+eax*4-36]
.LT_00AC:
.int .Lt_00AA
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00AA
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A9
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AB
.Lt_00A6:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
call LEXGETTEXT
push eax
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 62
call LEXSKIPTOKEN
add esp, 16
inc dword ptr [ebp-32]
.Lt_00A5:
jmp .Lt_00A3
.Lt_00A4:
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-28]
push eax
call fb_TRIM
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-32], 1
jne .Lt_00AF
sub esp, 8
push -1
lea eax, [ebp-28]
push eax
call fb_StrLen
add esp, 16
cmp eax, 1
jle .Lt_00B1
mov eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 34
jne .Lt_00B4
sub esp, 8
push -1
lea ebx, [ebp-28]
push ebx
call fb_StrLen
add esp, 16
mov ebx, dword ptr [ebp-28]
add ebx, eax
movzx eax, byte ptr [ebx-1]
cmp eax, 34
jne .Lt_00B6
sub esp, 12
push 0
push -1
sub esp, 4
push -1
lea eax, [ebp-28]
push eax
call fb_StrLen
add esp, 12
add eax, -2
push eax
push 2
lea eax, [ebp-28]
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
.Lt_00B6:
.Lt_00B5:
.Lt_00B4:
.Lt_00B3:
.Lt_00B1:
.Lt_00B0:
.Lt_00AF:
.Lt_00AE:
sub esp, 8
sub esp, 4
push dword ptr [ebp-28]
call ASTNEWCONSTSTR
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTDATASTMTSTORE
add esp, 16
test eax, eax
jne .Lt_00B8
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0069
.Lt_00B8:
.Lt_00B7:
.Lt_00A2:
cmp dword ptr [ebp-16], 0
je .Lt_00A0
.Lt_00A1:
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.Lt_008C:
sub esp, 12
push dword ptr [ebp-8]
call ASTDATASTMTEND
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_0080:
.Lt_006A:
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CDATASTMT, .-CDATASTMT
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

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
