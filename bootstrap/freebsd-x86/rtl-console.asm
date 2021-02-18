	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLCONSOLEMODINIT
RTLCONSOLEMODINIT:
.Lt_007F:
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 4
.Lt_0080:
ret
.balign 16

.globl RTLCONSOLEMODEND
RTLCONSOLEMODEND:
.Lt_0081:
.Lt_0082:
ret
.balign 16

.globl RTLCONSOLEVIEW
RTLCONSOLEVIEW:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0083:
mov dword ptr [ebp-4], 0
push 0
push 213
push offset Lt_0067
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0086
jmp .Lt_0084
.Lt_0086:
.Lt_0085:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0088
jmp .Lt_0084
.Lt_0088:
.Lt_0087:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0084:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLWIDTHSCREEN
RTLWIDTHSCREEN:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0089:
mov dword ptr [ebp-4], 0
push 0
push 288
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_008C
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_008C:
.Lt_008B:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_008E
jmp .Lt_008A
.Lt_008E:
.Lt_008D:
cmp dword ptr [ebp+12], 0
jne .Lt_0090
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_0090:
.Lt_008F:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0092
jmp .Lt_008A
.Lt_0092:
.Lt_0091:
cmp dword ptr [ebp+16], 0
jne .Lt_0094
push dword ptr [ebp-8]
call RTLERRORCHECK
add esp, 4
push eax
call ASTADD
add esp, 4
.Lt_0094:
.Lt_0093:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_008A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLCOLOR
RTLCOLOR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0095:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-12], 0
push 0
push 215
push offset Lt_0075
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_0098
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
or dword ptr [ebp-12], 1
.Lt_0098:
.Lt_0097:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_009A
jmp .Lt_0096
.Lt_009A:
.Lt_0099:
cmp dword ptr [ebp+12], 0
jne .Lt_009C
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
or dword ptr [ebp-12], 2
.Lt_009C:
.Lt_009B:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_009E
jmp .Lt_0096
.Lt_009E:
.Lt_009D:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp-12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00A0
jmp .Lt_0096
.Lt_00A0:
.Lt_009F:
cmp dword ptr [ebp+16], 0
jne .Lt_00A2
push dword ptr [ebp-8]
call ASTADD
add esp, 4
.Lt_00A2:
.Lt_00A1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0096:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLPAGESET
RTLPAGESET:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00A3:
mov dword ptr [ebp-4], 0
push 0
push 216
push offset Lt_007D
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_00A6
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_00A6:
.Lt_00A5:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00A8
jmp .Lt_00A4
.Lt_00A8:
.Lt_00A7:
cmp dword ptr [ebp+12], 0
jne .Lt_00AA
push 0
push 8
push 4294967295
push 4294967295
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_00AA:
.Lt_00A9:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00AC
jmp .Lt_00A4
.Lt_00AC:
.Lt_00AB:
cmp dword ptr [ebp+16], 0
jne .Lt_00AE
push dword ptr [ebp-8]
call ASTADD
add esp, 4
.Lt_00AE:
.Lt_00AD:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLCONSOLEREADXY
RTLCONSOLEREADXY:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00AF:
mov dword ptr [ebp-4], 0
push 0
push 214
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00B2
jmp .Lt_00B0
.Lt_00B2:
.Lt_00B1:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00B4
jmp .Lt_00B0
.Lt_00B4:
.Lt_00B3:
cmp dword ptr [ebp+16], 0
jne .Lt_00B6
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+16], eax
.Lt_00B6:
.Lt_00B5:
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00B8
jmp .Lt_00B0
.Lt_00B8:
.Lt_00B7:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00B0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__rtlzconsole:
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
.int Lt_0067
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
.int Lt_0068
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
.int Lt_0069
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
.int Lt_006A
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
.int Lt_006B
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
.int Lt_006C
.int Lt_006D
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
.int Lt_006E
.int Lt_006F
.int 11
.int -1
.long 0
.int 1
.int 0
.skip 320,0
.int Lt_006E
.int Lt_0070
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
.int Lt_0071
.int Lt_0072
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int Lt_0073
.int Lt_0074
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
.int Lt_0075
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
.int Lt_0076
.int Lt_0077
.int 17
.int -1
.long 0
.int 192
.int 0
.skip 320,0
.int Lt_0076
.int Lt_0078
.int 17
.int -1
.long 0
.int 320
.int 0
.skip 320,0
.int Lt_0079
.int Lt_007A
.int 11
.int -1
.long 0
.int 128
.int 0
.skip 320,0
.int Lt_007B
.int Lt_007C
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
.int Lt_007D
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
Lt_0067:	.ascii	"fb_ConsoleView\0"
.balign 4
Lt_0068:	.ascii	"fb_ReadXY\0"
.balign 4
Lt_0069:	.ascii	"fb_Width\0"
.balign 4
Lt_006A:	.ascii	"fb_WidthDev\0"
.balign 4
Lt_006B:	.ascii	"fb_WidthFile\0"
.balign 4
Lt_006C:	.ascii	"locate\0"
.balign 4
Lt_006D:	.ascii	"fb_Locate\0"
.balign 4
Lt_006E:	.ascii	"pos\0"
.balign 4
Lt_006F:	.ascii	"fb_GetX\0"
.balign 4
Lt_0070:	.ascii	"fb_Pos\0"
.balign 4
Lt_0071:	.ascii	"csrlin\0"
.balign 4
Lt_0072:	.ascii	"fb_GetY\0"
.balign 4
Lt_0073:	.ascii	"cls\0"
.balign 4
Lt_0074:	.ascii	"fb_Cls\0"
.balign 4
Lt_0075:	.ascii	"fb_Color\0"
.balign 4
Lt_0076:	.ascii	"inkey\0"
.balign 4
Lt_0077:	.ascii	"fb_Inkey\0"
.balign 4
Lt_0078:	.ascii	"fb_InkeyQB\0"
.balign 4
Lt_0079:	.ascii	"getkey\0"
.balign 4
Lt_007A:	.ascii	"fb_Getkey\0"
.balign 4
Lt_007B:	.ascii	"pcopy\0"
.balign 4
Lt_007C:	.ascii	"fb_PageCopy\0"
.balign 4
Lt_007D:	.ascii	"fb_PageSet\0"

.section .ctors
.int fb_ctor__rtlzconsole
