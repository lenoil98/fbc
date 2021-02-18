	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLMATHMODINIT
RTLMATHMODINIT:
.Lt_008E:
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 4
.Lt_008F:
ret
.balign 16

.globl RTLMATHMODEND
RTLMATHMODEND:
.Lt_0090:
.Lt_0091:
ret
.balign 16

.globl RTLMATHPOW
RTLMATHPOW:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0092:
mov dword ptr [ebp-4], 0
push 0
push 158
push offset Lt_0068
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
jne .Lt_0095
jmp .Lt_0093
.Lt_0095:
.Lt_0094:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0097
jmp .Lt_0093
.Lt_0097:
.Lt_0096:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0093:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLMATHLONGINTDIV
RTLMATHLONGINTDIV:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0098:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_009A
mov dword ptr [ebp-16], 24
jmp .Lt_00A2
.Lt_009A:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00A2:
cmp dword ptr [ebp-16], 13
jne .Lt_009D
push 115
push offset Lt_005E
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_009C
.Lt_009D:
push 116
push offset Lt_0060
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.Lt_009C:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_009F
jmp .Lt_0099
.Lt_009F:
.Lt_009E:
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00A1
jmp .Lt_0099
.Lt_00A1:
.Lt_00A0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0099:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLMATHLONGINTMOD
RTLMATHLONGINTMOD:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_00A3:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_00A5
mov dword ptr [ebp-16], 24
jmp .Lt_00AD
.Lt_00A5:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00AD:
cmp dword ptr [ebp-16], 13
jne .Lt_00A8
push 117
push offset Lt_0062
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_00A7
.Lt_00A8:
push 118
push offset Lt_0064
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.Lt_00A7:
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00AA
jmp .Lt_00A4
.Lt_00AA:
.Lt_00A9:
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00AC
jmp .Lt_00A4
.Lt_00AC:
.Lt_00AB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLMATHFP2ULONGINT
RTLMATHFP2ULONGINT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00AE:
mov dword ptr [ebp-4], 0
push 0
push 119
push offset Lt_0066
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00B1
jmp .Lt_00AF
.Lt_00B1:
.Lt_00B0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00AF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLMATHUOP
RTLMATHUOP:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00B2:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_00B5
.Lt_00B7:
push 340
push offset Lt_007F
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B4
.Lt_00B8:
push 345
push offset Lt_007A
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B4
.Lt_00B9:
push 346
push offset Lt_0084
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B4
.Lt_00BA:
push 347
push offset Lt_0087
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B4
.Lt_00BB:
push 341
push offset Lt_006E
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B4
.Lt_00BC:
push 342
push offset Lt_0071
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B4
.Lt_00BD:
push 343
push offset Lt_0074
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B4
.Lt_00BE:
push 344
push offset Lt_0077
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B4
.Lt_00BF:
jmp .Lt_00B3
jmp .Lt_00B4
.Lt_00B5:
mov eax, dword ptr [ebp-12]
add eax, 4294967240
cmp eax, 16
ja .Lt_00BF
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00C0+eax*4-224]
.LT_00C0:
.int .Lt_00B8
.int .Lt_00B7
.int .Lt_00BF
.int .Lt_00BB
.int .Lt_00BF
.int .Lt_00BC
.int .Lt_00BD
.int .Lt_00BE
.int .Lt_00BF
.int .Lt_00BF
.int .Lt_00BF
.int .Lt_00BF
.int .Lt_00BF
.int .Lt_00BF
.int .Lt_00BF
.int .Lt_00B9
.int .Lt_00BA
.Lt_00B4:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call RTLOVLPROCCALL
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_00B3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLMATHBOP
RTLMATHBOP:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00C1:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_00C4
.Lt_00C6:
push 348
push offset Lt_008A
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00C3
.Lt_00C7:
jmp .Lt_00C2
jmp .Lt_00C3
.Lt_00C4:
mov eax, dword ptr [ebp-12]
add eax, 4294967232
test eax, eax
ja .Lt_00C7
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00C8+eax*4-256]
.LT_00C8:
.int .Lt_00C6
.Lt_00C3:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call RTLOVLPROCCALL
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_00C2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__rtlzmath:
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
.balign 16
HRNDCALLBACK:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00C9:
cmp dword ptr [Lt_00D3], 0
jne .Lt_00CC
mov dword ptr [Lt_00D3], -1
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00D0
.Lt_00D1:
cmp dword ptr [ebp-8], 1
jne .Lt_00CF
.Lt_00D0:
push offset Lt_00D2
call FBADDLIB
add esp, 4
.Lt_00CF:
.Lt_00CD:
.Lt_00CC:
.Lt_00CB:
mov dword ptr [ebp-4], -1
.Lt_00CA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_00D3:
.int 0

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
.int Lt_005F
.int 13
.int 3
.long 0
.int 0
.int 2
.int 13
.int 1
.int 0
.skip 8,0
.int 13
.int 1
.int 0
.skip 8,0
.skip 280,0
.int Lt_0060
.int Lt_0061
.int 14
.int 3
.long 0
.int 0
.int 2
.int 14
.int 1
.int 0
.skip 8,0
.int 14
.int 1
.int 0
.skip 8,0
.skip 280,0
.int Lt_0062
.int Lt_0063
.int 13
.int 3
.long 0
.int 0
.int 2
.int 13
.int 1
.int 0
.skip 8,0
.int 13
.int 1
.int 0
.skip 8,0
.skip 280,0
.int Lt_0064
.int Lt_0065
.int 14
.int 3
.long 0
.int 0
.int 2
.int 14
.int 1
.int 0
.skip 8,0
.int 14
.int 1
.int 0
.skip 8,0
.skip 280,0
.int Lt_0066
.int Lt_0067
.int 14
.int 3
.long 0
.int 0
.int 1
.int 16
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0068
.int Lt_0069
.int 16
.int 3
.long 0
.int 0
.int 2
.int 16
.int 1
.int 0
.skip 8,0
.int 16
.int 1
.int 0
.skip 8,0
.skip 280,0
.int Lt_006A
.int Lt_006B
.int 0
.int -1
.int HRNDCALLBACK
.int 0
.int 2
.int 16
.int 1
.int -1
.int -1
.skip 4,0
.int 11
.int 1
.int -1
.int 0
.skip 4,0
.skip 280,0
.int Lt_006C
.int Lt_006D
.int 16
.int -1
.int HRNDCALLBACK
.int 0
.int 1
.int 15
.int 1
.int -1
.int 1
.skip 4,0
.skip 300,0
.int Lt_006E
.int Lt_006F
.int 15
.int 3
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_006E
.int Lt_0070
.int 16
.int 3
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0071
.int Lt_0072
.int 15
.int 3
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0071
.int Lt_0073
.int 16
.int 3
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0074
.int Lt_0075
.int 15
.int 3
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0074
.int Lt_0076
.int 16
.int 3
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0077
.int Lt_0078
.int 15
.int 3
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0077
.int Lt_0079
.int 16
.int 3
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_007A
.int Lt_007B
.int 11
.int 3
.long 0
.int 1
.int 1
.int 11
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_007A
.int Lt_007C
.int 13
.int 3
.long 0
.int 1
.int 1
.int 13
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_007A
.int Lt_007D
.int 15
.int 3
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_007A
.int Lt_007E
.int 16
.int 3
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_007F
.int Lt_0080
.int 11
.int -1
.long 0
.int 1
.int 1
.int 11
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_007F
.int Lt_0081
.int 11
.int -1
.long 0
.int 1
.int 1
.int 13
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_007F
.int Lt_0082
.int 11
.int -1
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_007F
.int Lt_0083
.int 11
.int -1
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0084
.int Lt_0085
.int 15
.int -1
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0084
.int Lt_0086
.int 16
.int -1
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0087
.int Lt_0088
.int 15
.int -1
.long 0
.int 1
.int 1
.int 15
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0087
.int Lt_0089
.int 16
.int -1
.long 0
.int 1
.int 1
.int 16
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_008A
.int Lt_008B
.int 15
.int 3
.long 0
.int 1
.int 2
.int 15
.int 1
.int 0
.skip 8,0
.int 15
.int 1
.int 0
.skip 8,0
.skip 280,0
.int Lt_008A
.int Lt_008C
.int 16
.int 3
.long 0
.int 1
.int 2
.int 16
.int 1
.int 0
.skip 8,0
.int 16
.int 1
.int 0
.skip 8,0
.skip 280,0
.long 0
.skip 344,0
.balign 4
Lt_005E:	.ascii	"fb___divdi3\0"
.balign 4
Lt_005F:	.ascii	"__divdi3\0"
.balign 4
Lt_0060:	.ascii	"fb___udivdi3\0"
.balign 4
Lt_0061:	.ascii	"__udivdi3\0"
.balign 4
Lt_0062:	.ascii	"fb___moddi3\0"
.balign 4
Lt_0063:	.ascii	"__moddi3\0"
.balign 4
Lt_0064:	.ascii	"fb___umoddi3\0"
.balign 4
Lt_0065:	.ascii	"__umoddi3\0"
.balign 4
Lt_0066:	.ascii	"fb___fixunsdfdi\0"
.balign 4
Lt_0067:	.ascii	"__fixunsdfdi\0"
.balign 4
Lt_0068:	.ascii	"fb_Pow\0"
.balign 4
Lt_0069:	.ascii	"pow\0"
.balign 4
Lt_006A:	.ascii	"randomize\0"
.balign 4
Lt_006B:	.ascii	"fb_Randomize\0"
.balign 4
Lt_006C:	.ascii	"rnd\0"
.balign 4
Lt_006D:	.ascii	"fb_Rnd\0"
.balign 4
Lt_006E:	.ascii	"{asin}\0"
.balign 4
Lt_006F:	.ascii	"asinf\0"
.balign 4
Lt_0070:	.ascii	"asin\0"
.balign 4
Lt_0071:	.ascii	"{acos}\0"
.balign 4
Lt_0072:	.ascii	"acosf\0"
.balign 4
Lt_0073:	.ascii	"acos\0"
.balign 4
Lt_0074:	.ascii	"{tan}\0"
.balign 4
Lt_0075:	.ascii	"tanf\0"
.balign 4
Lt_0076:	.ascii	"tan\0"
.balign 4
Lt_0077:	.ascii	"{atan}\0"
.balign 4
Lt_0078:	.ascii	"atanf\0"
.balign 4
Lt_0079:	.ascii	"atan\0"
.balign 4
Lt_007A:	.ascii	"{abs}\0"
.balign 4
Lt_007B:	.ascii	"abs\0"
.balign 4
Lt_007C:	.ascii	"llabs\0"
.balign 4
Lt_007D:	.ascii	"fabsf\0"
.balign 4
Lt_007E:	.ascii	"fabs\0"
.balign 4
Lt_007F:	.ascii	"{sgn}\0"
.balign 4
Lt_0080:	.ascii	"fb_SGNi\0"
.balign 4
Lt_0081:	.ascii	"fb_SGNl\0"
.balign 4
Lt_0082:	.ascii	"fb_SGNSingle\0"
.balign 4
Lt_0083:	.ascii	"fb_SGNDouble\0"
.balign 4
Lt_0084:	.ascii	"{fix}\0"
.balign 4
Lt_0085:	.ascii	"fb_FIXSingle\0"
.balign 4
Lt_0086:	.ascii	"fb_FIXDouble\0"
.balign 4
Lt_0087:	.ascii	"{frac}\0"
.balign 4
Lt_0088:	.ascii	"fb_FRACf\0"
.balign 4
Lt_0089:	.ascii	"fb_FRACd\0"
.balign 4
Lt_008A:	.ascii	"{atan2}\0"
.balign 4
Lt_008B:	.ascii	"atan2f\0"
.balign 4
Lt_008C:	.ascii	"atan2\0"
.balign 4
Lt_00D2:	.ascii	"advapi32\0"

.section .ctors
.int fb_ctor__rtlzmath
