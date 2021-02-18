	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTDATASTMTINIT
ASTDATASTMTINIT:
.type ASTDATASTMTINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_005D:
mov dword ptr [AST+120], 0
mov dword ptr [AST+124], 0
mov dword ptr [AST+128], 0
call HCREATEDATADESC
.Lt_005E:
mov esp, ebp
pop ebp
ret
.size ASTDATASTMTINIT, .-ASTDATASTMTINIT
.balign 16

.globl ASTDATASTMTBEGIN
ASTDATASTMTBEGIN:
.type ASTDATASTMTBEGIN, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_005F:
sub esp, 4
push 0
push -2147483648
push 29
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+20], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0060:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTDATASTMTBEGIN, .-ASTDATASTMTBEGIN
.balign 16

.globl ASTDATASTMTSTORE
ASTDATASTMTSTORE:
.type ASTDATASTMTSTORE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0061:
sub esp, 4
push 0
push -2147483648
push 29
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
jne .Lt_0064
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
jmp .Lt_0063
.Lt_0064:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+60], eax
.Lt_0063:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+60], ebx
cmp dword ptr [ebp+12], 0
jne .Lt_0066
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 65535
jmp .Lt_0065
.Lt_0066:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 4
je .Lt_006A
.Lt_006B:
cmp dword ptr [ebp-16], 7
jne .Lt_0069
.Lt_006A:
sub esp, 12
push dword ptr [ebp+12]
call ASTGETSTRLITSYMBOL
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_0067
.Lt_0069:
mov dword ptr [ebp-12], 0
.Lt_006C:
.Lt_0067:
cmp dword ptr [ebp-12], 0
je .Lt_006E
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 7
je .Lt_0070
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 1
jmp .Lt_006F
.Lt_0070:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 32768
.Lt_006F:
jmp .Lt_006D
.Lt_006E:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 23
jne .Lt_0072
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 65534
jmp .Lt_0071
.Lt_0072:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 2
.Lt_0071:
.Lt_006D:
.Lt_0065:
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+20]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0062:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTDATASTMTSTORE, .-ASTDATASTMTSTORE
.balign 16

.globl ASTDATASTMTEND
ASTDATASTMTEND:
.type ASTDATASTMTEND, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_0073:
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
sub esp, 8
push 0
push dword ptr [ebp+8]
call ASTDATASTMTSTORE
add esp, 16
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push 0
call ASTDATASTMTADD
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
push 0
push -1
push dword ptr [AST+116]
push 20
call ASTTYPEINIBEGIN
add esp, 32
mov dword ptr [ebp-28], eax
sub esp, 4
push -1
push dword ptr [ebp-4]
push dword ptr [ebp-28]
call ASTTYPEINISCOPEBEGIN
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
dec eax
mov dword ptr [ebp-44], eax
jmp .Lt_0076
.Lt_0079:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-24], eax
sub esp, 4
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-28]
call ASTTYPEINISCOPEBEGIN
add esp, 16
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], 1
jne .Lt_007C
.Lt_007D:
sub esp, 12
push dword ptr [ebp-24]
call ASTGETSTRLITSYMBOL
add esp, 16
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add ecx, 4294967295
adc ebx, 4294967295
mov eax, ecx
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-24]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_007A
.Lt_007C:
cmp dword ptr [ebp-52], 32768
jne .Lt_007E
.Lt_007F:
mov ecx, dword ptr [SYMB_DTYPETB+200]
mov eax, ecx
sar eax, 31
push eax
push ecx
sub esp, 4
push dword ptr [ebp-24]
call ASTGETSTRLITSYMBOL
add esp, 8
push dword ptr [eax+44]
push dword ptr [eax+40]
call __divdi3
add esp, 16
add eax, 32767
adc edx, 0
mov ecx, eax
mov dword ptr [ebp-16], ecx
sub esp, 12
push dword ptr [ebp-24]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_007A
.Lt_007E:
cmp dword ptr [ebp-52], 2
jne .Lt_0080
.Lt_0081:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-24]
call ASTCONSTFLUSHTOSTR
add esp, 12
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-40]
push eax
call fb_StrLen
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push dword ptr [ebp-40]
call ASTNEWCONSTSTR
add esp, 4
push eax
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_007A
.Lt_0080:
cmp dword ptr [ebp-52], 0
je .Lt_0083
.Lt_0084:
cmp dword ptr [ebp-52], 65535
jne .Lt_0082
.Lt_0083:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_0082:
.Lt_007A:
mov eax, dword ptr [AST+116]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-8], ecx
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-8]
sub esp, 8
push 0
push 5
mov eax, dword ptr [ebp-16]
mov ecx, eax
sar ecx, 31
push ecx
push eax
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-28]
call ASTTYPEINIADDASSIGN
add esp, 32
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-8], ecx
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call ASTTYPEINIADDASSIGN
add esp, 32
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [ebp-28]
call ASTTYPEINISCOPEEND
add esp, 16
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebp-48], eax
sub esp, 12
push dword ptr [ebp-20]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-48]
mov dword ptr [ebp-20], eax
.Lt_0077:
inc dword ptr [ebp-12]
.Lt_0076:
mov eax, dword ptr [ebp-44]
cmp dword ptr [ebp-12], eax
jle .Lt_0079
.Lt_0078:
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [ebp-28]
call ASTTYPEINISCOPEEND
add esp, 16
sub esp, 8
push -1
push dword ptr [ebp-28]
call ASTTYPEINIEND
add esp, 16
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp-28]
mov dword ptr [eax+56], ecx
cmp dword ptr [AST+120], 0
je .Lt_0086
mov ecx, dword ptr [AST+120]
mov eax, dword ptr [ecx+56]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-44], ecx
.Lt_0087:
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx+60], 0
je .Lt_0088
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx], 38
jne .Lt_008A
mov ecx, dword ptr [ebp-20]
mov dword ptr [ebp-44], ecx
.Lt_008A:
.Lt_0089:
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebp-20], eax
jmp .Lt_0087
.Lt_0088:
sub esp, 12
mov eax, dword ptr [ebp-44]
push dword ptr [eax+56]
call ASTDELNODE
add esp, 16
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 16
mov ecx, dword ptr [ebp-44]
mov dword ptr [ecx+56], eax
.Lt_0086:
.Lt_0085:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [AST+120]
mov dword ptr [eax+104], ecx
mov ecx, dword ptr [ebp-4]
mov dword ptr [AST+120], ecx
cmp dword ptr [AST+124], 0
jne .Lt_008C
mov ecx, dword ptr [ebp-4]
mov dword ptr [AST+124], ecx
.Lt_008C:
.Lt_008B:
sub esp, 12
lea ecx, [ebp-40]
push ecx
call fb_StrDelete
add esp, 16
.Lt_0074:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTDATASTMTEND, .-ASTDATASTMTEND
.balign 16

.globl ASTDATASTMTADD
ASTDATASTMTADD:
.type ASTDATASTMTADD, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_008D:
cmp dword ptr [ebp+8], 0
jne .Lt_0091
mov eax, dword ptr [SYMB+99036]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [AST+128]
cmp ebx, dword ptr [ebp-12]
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0093
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
push offset Lt_009C
call fb_StrAssign
add esp, 32
jmp .Lt_0092
.Lt_0093:
mov eax, dword ptr [ebp-12]
mov dword ptr [AST+128], eax
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
push 11
push offset Lt_001D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_009C
call fb_StrAssign
add esp, 32
.Lt_0092:
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
mov ecx, ebx
sar ecx, 31
mov dword ptr [Lt_009D+8], ebx
mov dword ptr [Lt_009D+12], ecx
jmp .Lt_0090
.Lt_0091:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push 11
push offset Lt_001D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea ebx, [ebp-24]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_009C
call fb_StrAssign
add esp, 32
mov dword ptr [Lt_009D+8], 0
mov dword ptr [Lt_009D+12], 0
.Lt_0090:
sub esp, 12
push 0
push -1
push 1
push dword ptr [Lt_009C]
lea eax, [SYMB+98352]
push eax
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0097
cmp dword ptr [ebp+8], 0
jne .Lt_0099
sub esp, 4
push offset Lt_009E
push 1
push dword ptr [ebp-8]
call SYMBSETARRAYDIMTB
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call SYMBMAYBEADDARRAYDESC
add esp, 16
.Lt_0099:
.Lt_0098:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_008E
.Lt_0097:
.Lt_0096:
sub esp, 8
push 9
push 3
push offset Lt_009E
push 1
push 0
push 0
push dword ptr [AST+116]
push 20
sub esp, 8
call SYMBUNIQUELABEL
add esp, 8
push eax
push dword ptr [Lt_009C]
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+104], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_008E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTDATASTMTADD, .-ASTDATASTMTADD

.section .bss
.balign 4
	.lcomm	Lt_009C,12
.balign 4
	.lcomm	Lt_009D,16

.section .data
.balign 4
Lt_009E:
.int Lt_009D
.int Lt_009D
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
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
.balign 16
HCREATEDATADESC:
.type HCREATEDATADESC, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_009F:
sub esp, 8
push 0
push 0
push 0
push 1
push 0
push 0
push offset Lt_00A2
push 0
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 48
mov dword ptr [AST+116], eax
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 5
push offset Lt_00A5
push 0
push offset Lt_00A3
push dword ptr [AST+116]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 32
push offset Lt_00A5
push 0
push offset Lt_00A4
push dword ptr [AST+116]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push dword ptr [AST+116]
call SYMBSTRUCTEND
add esp, 16
.Lt_00A0:
mov esp, ebp
pop ebp
ret
.size HCREATEDATADESC, .-HCREATEDATADESC

.section .bss
.balign 4
	.lcomm	Lt_00A6,16

.section .data
.balign 4
Lt_00A5:
.int Lt_00A6
.int Lt_00A6
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .rodata
.balign 4
Lt_001D:	.ascii	"_{fbdata}_\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_00A2:	.ascii	"__FB_DATADESC$\0"
.balign 4
Lt_00A3:	.ascii	"type\0"
.balign 4
Lt_00A4:	.ascii	"node\0"
