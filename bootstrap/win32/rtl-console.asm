	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLCONSOLEMODINIT@0
_RTLCONSOLEMODINIT@0:
.Lt_0080:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS@4
.Lt_0081:
ret
.balign 16

.globl _RTLCONSOLEMODEND@0
_RTLCONSOLEMODEND@0:
.Lt_0082:
.Lt_0083:
ret
.balign 16

.globl _RTLCONSOLEVIEW@8
_RTLCONSOLEVIEW@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0084:
mov dword ptr [ebp-4], 0
push 0
push 213
push offset _Lt_0068
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0087
jmp .Lt_0085
.Lt_0087:
.Lt_0086:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0089
jmp .Lt_0085
.Lt_0089:
.Lt_0088:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0085:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _RTLWIDTHSCREEN@12
_RTLWIDTHSCREEN@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_008A:
mov dword ptr [ebp-4], 0
push 0
push 288
push offset _Lt_006A
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_008D
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.Lt_008D:
.Lt_008C:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_008F
jmp .Lt_008B
.Lt_008F:
.Lt_008E:
cmp dword ptr [ebp+12], 0
jne .Lt_0091
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
.Lt_0091:
.Lt_0090:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_0093
jmp .Lt_008B
.Lt_0093:
.Lt_0092:
cmp dword ptr [ebp+16], 0
jne .Lt_0095
push dword ptr [ebp-8]
call _RTLERRORCHECK@4
push eax
call _ASTADD@4
.Lt_0095:
.Lt_0094:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_008B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLCOLOR@12
_RTLCOLOR@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0096:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
push 0
push 215
push offset _Lt_0076
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_0099
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
or dword ptr [ebp-12], 1
.Lt_0099:
.Lt_0098:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_009B
jmp .Lt_0097
.Lt_009B:
.Lt_009A:
cmp dword ptr [ebp+12], 0
jne .Lt_009D
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
or dword ptr [ebp-12], 2
.Lt_009D:
.Lt_009C:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_009F
jmp .Lt_0097
.Lt_009F:
.Lt_009E:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp-12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00A1
jmp .Lt_0097
.Lt_00A1:
.Lt_00A0:
cmp dword ptr [ebp+16], 0
jne .Lt_00A3
push dword ptr [ebp-8]
call _ASTADD@4
.Lt_00A3:
.Lt_00A2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0097:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLPAGESET@12
_RTLPAGESET@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00A4:
mov dword ptr [ebp-4], 0
push 0
push 216
push offset _Lt_007E
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_00A7
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.Lt_00A7:
.Lt_00A6:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00A9
jmp .Lt_00A5
.Lt_00A9:
.Lt_00A8:
cmp dword ptr [ebp+12], 0
jne .Lt_00AB
push 0
push 8
push 4294967295
push 4294967295
call _ASTNEWCONSTI@16
mov dword ptr [ebp+12], eax
.Lt_00AB:
.Lt_00AA:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00AD
jmp .Lt_00A5
.Lt_00AD:
.Lt_00AC:
cmp dword ptr [ebp+16], 0
jne .Lt_00AF
push dword ptr [ebp-8]
call _ASTADD@4
.Lt_00AF:
.Lt_00AE:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLCONSOLEREADXY@12
_RTLCONSOLEREADXY@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00B0:
mov dword ptr [ebp-4], 0
push 0
push 214
push offset _Lt_0069
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00B3
jmp .Lt_00B1
.Lt_00B3:
.Lt_00B2:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00B5
jmp .Lt_00B1
.Lt_00B5:
.Lt_00B4:
cmp dword ptr [ebp+16], 0
jne .Lt_00B7
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+16], eax
.Lt_00B7:
.Lt_00B6:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00B9
jmp .Lt_00B1
.Lt_00B9:
.Lt_00B8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00B1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16
_fb_ctor__rtlzconsole:
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
.int _Lt_0068
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 280,0
.int _Lt_0069
.long 0
.int 12
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 260,0
.int _Lt_006A
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 280,0
.int _Lt_006B
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 529
.int 2
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 280,0
.int _Lt_006C
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 280,0
.int _Lt_006D
.int _Lt_006E
.int 11
.int -1
.long 0
.int 0
.int 5
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 220,0
.int _Lt_006F
.int _Lt_0070
.int 11
.int -1
.long 0
.int 1
.int 0
.skip 320,0
.int _Lt_006F
.int _Lt_0071
.int 11
.int -1
.long 0
.int 1
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0072
.int _Lt_0073
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int _Lt_0074
.int _Lt_0075
.int 0
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int -1
.int -65536
.skip 4,0
.skip 300,0
.int _Lt_0076
.long 0
.int 11
.int -1
.long 0
.int 0
.int 3
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.skip 260,0
.int _Lt_0077
.int _Lt_0078
.int 17
.int -1
.long 0
.int 192
.int 0
.skip 320,0
.int _Lt_0077
.int _Lt_0079
.int 17
.int -1
.long 0
.int 320
.int 0
.skip 320,0
.int _Lt_007A
.int _Lt_007B
.int 11
.int -1
.long 0
.int 128
.int 0
.skip 320,0
.int _Lt_007C
.int _Lt_007D
.int 11
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 280,0
.int _Lt_007E
.long 0
.int 11
.int -1
.long 0
.int 0
.int 2
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 280,0
.long 0
.skip 344,0
.balign 4
_Lt_0068:	.ascii	"fb_ConsoleView\0"
.balign 4
_Lt_0069:	.ascii	"fb_ReadXY\0"
.balign 4
_Lt_006A:	.ascii	"fb_Width\0"
.balign 4
_Lt_006B:	.ascii	"fb_WidthDev\0"
.balign 4
_Lt_006C:	.ascii	"fb_WidthFile\0"
.balign 4
_Lt_006D:	.ascii	"locate\0"
.balign 4
_Lt_006E:	.ascii	"fb_Locate\0"
.balign 4
_Lt_006F:	.ascii	"pos\0"
.balign 4
_Lt_0070:	.ascii	"fb_GetX\0"
.balign 4
_Lt_0071:	.ascii	"fb_Pos\0"
.balign 4
_Lt_0072:	.ascii	"csrlin\0"
.balign 4
_Lt_0073:	.ascii	"fb_GetY\0"
.balign 4
_Lt_0074:	.ascii	"cls\0"
.balign 4
_Lt_0075:	.ascii	"fb_Cls\0"
.balign 4
_Lt_0076:	.ascii	"fb_Color\0"
.balign 4
_Lt_0077:	.ascii	"inkey\0"
.balign 4
_Lt_0078:	.ascii	"fb_Inkey\0"
.balign 4
_Lt_0079:	.ascii	"fb_InkeyQB\0"
.balign 4
_Lt_007A:	.ascii	"getkey\0"
.balign 4
_Lt_007B:	.ascii	"fb_Getkey\0"
.balign 4
_Lt_007C:	.ascii	"pcopy\0"
.balign 4
_Lt_007D:	.ascii	"fb_PageCopy\0"
.balign 4
_Lt_007E:	.ascii	"fb_PageSet\0"

.section .ctors
.int _fb_ctor__rtlzconsole
