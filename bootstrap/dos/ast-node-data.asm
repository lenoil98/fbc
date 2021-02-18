	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTDATASTMTINIT
_ASTDATASTMTINIT:
.Lt_005E:
mov dword ptr [_AST+120], 0
mov dword ptr [_AST+124], 0
mov dword ptr [_AST+128], 0
call _HCREATEDATADESC
.Lt_005F:
ret
.balign 16

.globl _ASTDATASTMTBEGIN
_ASTDATASTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0060:
push 0
push -2147483648
push 29
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+20], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0061:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDATASTMTSTORE
_ASTDATASTMTSTORE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0062:
push 0
push -2147483648
push 29
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
jne .Lt_0065
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
jmp .Lt_0064
.Lt_0065:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.Lt_0064:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+60], ebx
cmp dword ptr [ebp+12], 0
jne .Lt_0067
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 65535
jmp .Lt_0066
.Lt_0067:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 4
je .Lt_006B
.Lt_006C:
cmp dword ptr [ebp-16], 7
jne .Lt_006A
.Lt_006B:
push dword ptr [ebp+12]
call _ASTGETSTRLITSYMBOL
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_0068
.Lt_006A:
mov dword ptr [ebp-12], 0
.Lt_006D:
.Lt_0068:
cmp dword ptr [ebp-12], 0
je .Lt_006F
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 7
je .Lt_0071
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 1
jmp .Lt_0070
.Lt_0071:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 32768
.Lt_0070:
jmp .Lt_006E
.Lt_006F:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 23
jne .Lt_0073
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 65534
jmp .Lt_0072
.Lt_0073:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 2
.Lt_0072:
.Lt_006E:
.Lt_0066:
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+20]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0063:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDATASTMTEND
_ASTDATASTMTEND:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_0074:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push dword ptr [ebp+8]
call _ASTDATASTMTSTORE
add esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push 0
call _ASTDATASTMTADD
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push 0
push -1
push dword ptr [_AST+116]
push 20
call _ASTTYPEINIBEGIN
add esp, 20
mov dword ptr [ebp-28], eax
push -1
push dword ptr [ebp-4]
push dword ptr [ebp-28]
call _ASTTYPEINISCOPEBEGIN
add esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
dec eax
mov dword ptr [ebp-44], eax
jmp .Lt_0077
.Lt_007A:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-24], eax
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-28]
call _ASTTYPEINISCOPEBEGIN
add esp, 12
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], 1
jne .Lt_007D
.Lt_007E:
push dword ptr [ebp-24]
call _ASTGETSTRLITSYMBOL
add esp, 4
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add ecx, 4294967295
adc ebx, 4294967295
mov eax, ecx
mov dword ptr [ebp-16], eax
push dword ptr [ebp-24]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-24], eax
jmp .Lt_007B
.Lt_007D:
cmp dword ptr [ebp-52], 32768
jne .Lt_007F
.Lt_0080:
mov ecx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ecx
sar eax, 31
push eax
push ecx
push dword ptr [ebp-24]
call _ASTGETSTRLITSYMBOL
add esp, 4
push dword ptr [eax+44]
push dword ptr [eax+40]
call ___divdi3
add esp, 16
add eax, 32767
adc edx, 0
mov ecx, eax
mov dword ptr [ebp-16], ecx
push dword ptr [ebp-24]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-24], eax
jmp .Lt_007B
.Lt_007F:
cmp dword ptr [ebp-52], 2
jne .Lt_0081
.Lt_0082:
push 0
push -1
push dword ptr [ebp-24]
call _ASTCONSTFLUSHTOSTR
add esp, 4
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-40]
push eax
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-40]
call _ASTNEWCONSTSTR
add esp, 4
push eax
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-24], eax
jmp .Lt_007B
.Lt_0081:
cmp dword ptr [ebp-52], 0
je .Lt_0084
.Lt_0085:
cmp dword ptr [ebp-52], 65535
jne .Lt_0083
.Lt_0084:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_0083:
.Lt_007B:
mov eax, dword ptr [_AST+116]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-8], ecx
push 0
push -2147483648
push dword ptr [ebp-8]
push 0
push 5
mov eax, dword ptr [ebp-16]
mov ecx, eax
sar ecx, 31
push ecx
push eax
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-28]
call _ASTTYPEINIADDASSIGN
add esp, 20
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-8], ecx
push 0
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _ASTTYPEINIADDASSIGN
add esp, 20
push dword ptr [ebp-4]
push dword ptr [ebp-28]
call _ASTTYPEINISCOPEEND
add esp, 8
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebp-48], eax
push dword ptr [ebp-20]
call _ASTDELNODE
add esp, 4
mov eax, dword ptr [ebp-48]
mov dword ptr [ebp-20], eax
.Lt_0078:
inc dword ptr [ebp-12]
.Lt_0077:
mov eax, dword ptr [ebp-44]
cmp dword ptr [ebp-12], eax
jle .Lt_007A
.Lt_0079:
push dword ptr [ebp-4]
push dword ptr [ebp-28]
call _ASTTYPEINISCOPEEND
add esp, 8
push -1
push dword ptr [ebp-28]
call _ASTTYPEINIEND
add esp, 8
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-28]
mov dword ptr [eax+56], ecx
cmp dword ptr [_AST+120], 0
je .Lt_0087
mov ecx, dword ptr [_AST+120]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-44], ecx
.Lt_0088:
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx+60], 0
je .Lt_0089
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx], 38
jne .Lt_008B
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-44], ecx
.Lt_008B:
.Lt_008A:
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebp-20], eax
jmp .Lt_0088
.Lt_0089:
mov eax, dword ptr [ebp-44]
push dword ptr [eax+56]
call _ASTDELNODE
add esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov ecx, dword ptr [ebp-44]
mov dword ptr [ecx+56], eax
.Lt_0087:
.Lt_0086:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [_AST+120]
mov dword ptr [eax+104], ecx
mov ecx, dword ptr [ebp-4]
mov dword ptr [_AST+120], ecx
cmp dword ptr [_AST+124], 0
jne .Lt_008D
mov ecx, dword ptr [ebp-4]
mov dword ptr [_AST+124], ecx
.Lt_008D:
.Lt_008C:
lea ecx, [ebp-40]
push ecx
call _fb_StrDelete
add esp, 4
.Lt_0075:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTDATASTMTADD
_ASTDATASTMTADD:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_008E:
cmp dword ptr [ebp+8], 0
jne .Lt_0092
mov eax, dword ptr [_SYMB+99036]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_AST+128]
cmp ebx, dword ptr [ebp-12]
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0094
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push -1
push offset _Lt_009D
call _fb_StrAssign
add esp, 20
jmp .Lt_0093
.Lt_0094:
mov eax, dword ptr [ebp-12]
mov dword ptr [_AST+128], eax
push 0
push -1
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
push 11
push offset _Lt_001E
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_009D
call _fb_StrAssign
add esp, 20
.Lt_0093:
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
mov ecx, ebx
sar ecx, 31
mov dword ptr [_Lt_009E+8], ebx
mov dword ptr [_Lt_009E+12], ecx
jmp .Lt_0091
.Lt_0092:
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push 11
push offset _Lt_001E
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea ebx, [ebp-24]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_009D
call _fb_StrAssign
add esp, 20
mov dword ptr [_Lt_009E+8], 0
mov dword ptr [_Lt_009E+12], 0
.Lt_0091:
push 0
push -1
push 1
push dword ptr [_Lt_009D]
lea eax, [_SYMB+98352]
push eax
call _SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0098
cmp dword ptr [ebp+8], 0
jne .Lt_009A
push offset _Lt_009F
push 1
push dword ptr [ebp-8]
call _SYMBSETARRAYDIMTB
add esp, 12
push dword ptr [ebp-8]
call _SYMBMAYBEADDARRAYDESC
add esp, 4
.Lt_009A:
.Lt_0099:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_008F
.Lt_0098:
.Lt_0097:
push 9
push 3
push offset _Lt_009F
push 1
push 0
push 0
push dword ptr [_AST+116]
push 20
call _SYMBUNIQUELABEL
push eax
push dword ptr [_Lt_009D]
call _SYMBADDVAR
add esp, 40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+104], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_008F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_009D,12
.balign 4
	.lcomm	_Lt_009E,16

.section .data
.balign 4
_Lt_009F:
.int _Lt_009E
.int _Lt_009E
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
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
_HCREATEDATADESC:
.Lt_00A0:
push 0
push 0
push 0
push 1
push 0
push 0
push offset _Lt_00A3
push 0
push 0
push 0
call _SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [_AST+116], eax
push 0
push 0
push 0
push 0
push 0
push 5
push offset _Lt_00A6
push 0
push offset _Lt_00A4
push dword ptr [_AST+116]
call _SYMBADDFIELD
add esp, 40
push 0
push 0
push 0
push 0
push 0
push 32
push offset _Lt_00A6
push 0
push offset _Lt_00A5
push dword ptr [_AST+116]
call _SYMBADDFIELD
add esp, 40
push 0
push dword ptr [_AST+116]
call _SYMBSTRUCTEND
add esp, 8
.Lt_00A1:
ret

.section .bss
.balign 4
	.lcomm	_Lt_00A7,16

.section .data
.balign 4
_Lt_00A6:
.int _Lt_00A7
.int _Lt_00A7
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0
.balign 4
_Lt_001E:	.ascii	"_{fbdata}_\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_00A3:	.ascii	"__FB_DATADESC$\0"
.balign 4
_Lt_00A4:	.ascii	"type\0"
.balign 4
_Lt_00A5:	.ascii	"node\0"
