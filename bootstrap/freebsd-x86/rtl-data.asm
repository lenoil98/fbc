	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLDATAMODINIT
RTLDATAMODINIT:
.Lt_006D:
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 4
.Lt_006E:
ret
.balign 16

.globl RTLDATAMODEND
RTLDATAMODEND:
.Lt_006F:
.Lt_0070:
ret
.balign 16

.globl RTLDATAREAD
RTLDATAREAD:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_0071:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_0073
mov dword ptr [ebp-32], 24
jmp .Lt_009D
.Lt_0073:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_009D:
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebp-36], ebx
jmp .Lt_0076
.Lt_0078:
push 145
push offset Lt_005F
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 3
jmp .Lt_0075
.Lt_0079:
push 146
push offset Lt_0060
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-16], 2
jmp .Lt_0075
.Lt_007A:
push 147
push offset Lt_0061
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_0075
.Lt_007B:
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_007C
mov dword ptr [ebp-40], 24
jmp .Lt_009E
.Lt_007C:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_009E:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-44], ebx
jmp .Lt_007F
.Lt_0081:
push 148
push offset Lt_0062
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_007E
.Lt_0082:
push 152
push offset Lt_0066
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_007E
.Lt_0083:
push 149
push offset Lt_0063
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_007E
.Lt_0084:
push 153
push offset Lt_0067
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_007E
.Lt_0085:
push 150
push offset Lt_0064
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_007E
.Lt_0086:
push 154
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_007E
.Lt_0087:
push 151
push offset Lt_0065
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_007E
.Lt_0088:
push 155
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_007E
.Lt_007F:
mov eax, dword ptr [ebp-44]
add eax, 4294967295
cmp eax, 7
ja .Lt_007E
mov eax, dword ptr [ebp-44]
jmp dword ptr [.LT_0089+eax*4-4]
.LT_0089:
.int .Lt_0081
.int .Lt_0082
.int .Lt_0083
.int .Lt_0084
.int .Lt_0085
.int .Lt_0086
.int .Lt_0087
.int .Lt_0088
.Lt_007E:
jmp .Lt_0075
.Lt_008A:
push 156
push offset Lt_006A
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_0075
.Lt_008B:
push 157
push offset Lt_006B
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_0075
.Lt_008C:
jmp .Lt_0072
jmp .Lt_0075
.Lt_008D:
jmp .Lt_0072
jmp .Lt_0075
.Lt_0076:
mov eax, dword ptr [ebp-36]
add eax, 4294967295
cmp eax, 23
ja .Lt_008D
mov eax, dword ptr [ebp-36]
jmp dword ptr [.LT_008E+eax*4-4]
.LT_008E:
.int .Lt_007A
.int .Lt_007B
.int .Lt_007B
.int .Lt_0078
.int .Lt_007B
.int .Lt_007B
.int .Lt_0079
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_008A
.int .Lt_008B
.int .Lt_0078
.int .Lt_0078
.int .Lt_008D
.int .Lt_008C
.int .Lt_008D
.int .Lt_008D
.int .Lt_008D
.int .Lt_007B
.Lt_0075:
cmp dword ptr [ebp-12], 0
jne .Lt_0090
jmp .Lt_0072
.Lt_0090:
.Lt_008F:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 1
jle .Lt_0092
push dword ptr [ebp-20]
push dword ptr [ebp+8]
call RTLCALCSTRLEN
add esp, 8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
jmp .Lt_0091
.Lt_0092:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
.Lt_0091:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0094
jmp .Lt_0072
.Lt_0094:
.Lt_0093:
cmp dword ptr [ebp-16], 1
jle .Lt_0096
push -1
push -2147483648
push 0
push 8
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0098
jmp .Lt_0072
.Lt_0098:
.Lt_0097:
cmp dword ptr [ebp-16], 2
jle .Lt_009A
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
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_009C
jmp .Lt_0072
.Lt_009C:
.Lt_009B:
.Lt_009A:
.Lt_0099:
.Lt_0096:
.Lt_0095:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_0072:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLDATARESTORE
RTLDATARESTORE:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_00A0:
mov dword ptr [ebp-4], 0
push 0
push 144
push offset Lt_005E
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_00A3
mov eax, dword ptr [AST+124]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_00A5
call ASTDATASTMTBEGIN
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call ASTDATASTMTEND
add esp, 4
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
mov eax, dword ptr [AST+124]
mov dword ptr [ebp-16], eax
.Lt_00A5:
.Lt_00A4:
jmp .Lt_00A2
.Lt_00A3:
push 0
push dword ptr [ebp+8]
call ASTDATASTMTADD
add esp, 8
mov dword ptr [ebp-16], eax
.Lt_00A2:
push -1
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00A7
jmp .Lt_00A1
.Lt_00A7:
.Lt_00A6:
cmp dword ptr [ebp+12], 0
jne .Lt_00A9
push dword ptr [ebp-8]
call ASTADD
add esp, 4
jmp .Lt_00A8
.Lt_00A9:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTADDAFTER
add esp, 8
.Lt_00A8:
mov dword ptr [ebp-4], -1
.Lt_00A1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__rtlzdata:
.Lt_0002:
.Lt_0003:
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

.section .data
.balign 4
FUNCDATA:
.int Lt_005E
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
.int Lt_005F
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
.int Lt_0060
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
.int Lt_0061
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
.int Lt_0062
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
.int Lt_0063
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
.int Lt_0064
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
.int Lt_0065
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
.int Lt_0066
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
.int Lt_0067
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
.int Lt_0068
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
.int Lt_0069
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
.int Lt_006A
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
.int Lt_006B
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
Lt_005E:	.ascii	"fb_DataRestore\0"
.balign 4
Lt_005F:	.ascii	"fb_DataReadStr\0"
.balign 4
Lt_0060:	.ascii	"fb_DataReadWstr\0"
.balign 4
Lt_0061:	.ascii	"fb_DataReadBool\0"
.balign 4
Lt_0062:	.ascii	"fb_DataReadByte\0"
.balign 4
Lt_0063:	.ascii	"fb_DataReadShort\0"
.balign 4
Lt_0064:	.ascii	"fb_DataReadInt\0"
.balign 4
Lt_0065:	.ascii	"fb_DataReadLongint\0"
.balign 4
Lt_0066:	.ascii	"fb_DataReadUByte\0"
.balign 4
Lt_0067:	.ascii	"fb_DataReadUShort\0"
.balign 4
Lt_0068:	.ascii	"fb_DataReadUInt\0"
.balign 4
Lt_0069:	.ascii	"fb_DataReadULongint\0"
.balign 4
Lt_006A:	.ascii	"fb_DataReadSingle\0"
.balign 4
Lt_006B:	.ascii	"fb_DataReadDouble\0"

.section .ctors
.int fb_ctor__rtlzdata
