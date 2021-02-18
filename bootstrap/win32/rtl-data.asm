	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLDATAMODINIT@0
_RTLDATAMODINIT@0:
.Lt_006E:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS@4
.Lt_006F:
ret
.balign 16

.globl _RTLDATAMODEND@0
_RTLDATAMODEND@0:
.Lt_0070:
.Lt_0071:
ret
.balign 16

.globl _RTLDATAREAD@4
_RTLDATAREAD@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_0072:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_0074
mov dword ptr [ebp-32], 24
jmp .Lt_009E
.Lt_0074:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_009E:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
jmp .Lt_0077
.Lt_0079:
push 145
push offset _Lt_0060
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
jmp .Lt_0076
.Lt_007A:
push 146
push offset _Lt_0061
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 2
jmp .Lt_0076
.Lt_007B:
push 147
push offset _Lt_0062
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_0076
.Lt_007C:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_007D
mov dword ptr [ebp-40], 24
jmp .Lt_009F
.Lt_007D:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_009F:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-44], ebx
jmp .Lt_0080
.Lt_0082:
push 148
push offset _Lt_0063
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_007F
.Lt_0083:
push 152
push offset _Lt_0067
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_007F
.Lt_0084:
push 149
push offset _Lt_0064
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_007F
.Lt_0085:
push 153
push offset _Lt_0068
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_007F
.Lt_0086:
push 150
push offset _Lt_0065
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_007F
.Lt_0087:
push 154
push offset _Lt_0069
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_007F
.Lt_0088:
push 151
push offset _Lt_0066
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_007F
.Lt_0089:
push 155
push offset _Lt_006A
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_007F
.Lt_0080:
mov eax, dword ptr [ebp-44]
add eax, 4294967295
cmp eax, 7
ja .Lt_007F
mov eax, dword ptr [ebp-44]
jmp dword ptr [_.LT_008A+eax*4-4]
_.LT_008A:
.int .Lt_0082
.int .Lt_0083
.int .Lt_0084
.int .Lt_0085
.int .Lt_0086
.int .Lt_0087
.int .Lt_0088
.int .Lt_0089
.Lt_007F:
jmp .Lt_0076
.Lt_008B:
push 156
push offset _Lt_006B
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_0076
.Lt_008C:
push 157
push offset _Lt_006C
call _RTLPROCLOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_0076
.Lt_008D:
jmp .Lt_0073
jmp .Lt_0076
.Lt_008E:
jmp .Lt_0073
jmp .Lt_0076
.Lt_0077:
mov eax, dword ptr [ebp-36]
add eax, 4294967295
cmp eax, 23
ja .Lt_008E
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.LT_008F+eax*4-4]
_.LT_008F:
.int .Lt_007B
.int .Lt_007C
.int .Lt_007C
.int .Lt_0079
.int .Lt_007C
.int .Lt_007C
.int .Lt_007A
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_008B
.int .Lt_008C
.int .Lt_0079
.int .Lt_0079
.int .Lt_008E
.int .Lt_008D
.int .Lt_008E
.int .Lt_008E
.int .Lt_008E
.int .Lt_007C
.Lt_0076:
cmp dword ptr [ebp-12], 0
jne .Lt_0091
jmp .Lt_0073
.Lt_0091:
.Lt_0090:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 1
jle .Lt_0093
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call _RTLCALCSTRLEN@8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
jmp .Lt_0092
.Lt_0093:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
.Lt_0092:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0095
jmp .Lt_0073
.Lt_0095:
.Lt_0094:
cmp dword ptr [ebp-16], 1
jle .Lt_0097
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0099
jmp .Lt_0073
.Lt_0099:
.Lt_0098:
cmp dword ptr [ebp-16], 2
jle .Lt_009B
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [ebp-20]
cmp eax, 18
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
mov edx, ebx
sar edx, 31
push edx
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_009D
jmp .Lt_0073
.Lt_009D:
.Lt_009C:
.Lt_009B:
.Lt_009A:
.Lt_0097:
.Lt_0096:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_0073:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLDATARESTORE@8
_RTLDATARESTORE@8:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_00A1:
mov dword ptr [ebp-4], 0
push 0
push 144
push offset _Lt_005F
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_00A4
mov eax, dword ptr [_AST+124]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00A6
call _ASTDATASTMTBEGIN@0
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call _ASTDATASTMTEND@4
push dword ptr [ebp-12]
call _ASTDELNODE@4
mov eax, dword ptr [_AST+124]
mov dword ptr [ebp-16], eax
.Lt_00A6:
.Lt_00A5:
jmp .Lt_00A3
.Lt_00A4:
push 0
push dword ptr [ebp+8]
call _ASTDATASTMTADD@8
mov dword ptr [ebp-16], eax
.Lt_00A3:
push -1
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00A8
jmp .Lt_00A2
.Lt_00A8:
.Lt_00A7:
cmp dword ptr [ebp+12], 0
jne .Lt_00AA
push dword ptr [ebp-8]
call _ASTADD@4
jmp .Lt_00A9
.Lt_00AA:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTADDAFTER@8
.Lt_00A9:
mov dword ptr [ebp-4], -1
.Lt_00A2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_fb_ctor__rtlzdata:
.Lt_0002:
.Lt_0003:
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

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_FUNCDATA:
.int _Lt_005F
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 32
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0060
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 0
.int 2
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int 1
.skip 4,0
.skip 260,0
.int _Lt_0061
.long 0
.int 0
.int -1
.long 0
.int 0
.int 2
.int 39
.int 1
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.skip 280,0
.int _Lt_0062
.long 0
.int 0
.int -1
.long 0
.int 128
.int 1
.int 1
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0063
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 2
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0064
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 5
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0065
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 11
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0066
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 13
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0067
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 3
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0068
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 6
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0069
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 12
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_006A
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 14
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_006B
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 15
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_006C
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 16
.int 2
.int 0
.skip 8,0
.skip 300,0
.long 0
.skip 344,0
.balign 4
_Lt_005F:	.ascii	"fb_DataRestore\0"
.balign 4
_Lt_0060:	.ascii	"fb_DataReadStr\0"
.balign 4
_Lt_0061:	.ascii	"fb_DataReadWstr\0"
.balign 4
_Lt_0062:	.ascii	"fb_DataReadBool\0"
.balign 4
_Lt_0063:	.ascii	"fb_DataReadByte\0"
.balign 4
_Lt_0064:	.ascii	"fb_DataReadShort\0"
.balign 4
_Lt_0065:	.ascii	"fb_DataReadInt\0"
.balign 4
_Lt_0066:	.ascii	"fb_DataReadLongint\0"
.balign 4
_Lt_0067:	.ascii	"fb_DataReadUByte\0"
.balign 4
_Lt_0068:	.ascii	"fb_DataReadUShort\0"
.balign 4
_Lt_0069:	.ascii	"fb_DataReadUInt\0"
.balign 4
_Lt_006A:	.ascii	"fb_DataReadULongint\0"
.balign 4
_Lt_006B:	.ascii	"fb_DataReadSingle\0"
.balign 4
_Lt_006C:	.ascii	"fb_DataReadDouble\0"

.section .ctors
.int _fb_ctor__rtlzdata
