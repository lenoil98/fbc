	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLMATHMODINIT
_RTLMATHMODINIT:
.Lt_008F:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS
add esp, 4
.Lt_0090:
ret
.balign 16

.globl _RTLMATHMODEND
_RTLMATHMODEND:
.Lt_0091:
.Lt_0092:
ret
.balign 16

.globl _RTLMATHPOW
_RTLMATHPOW:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0093:
mov dword ptr [ebp-4], 0
push 0
push 158
push offset _Lt_0069
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0096
jmp .Lt_0094
.Lt_0096:
.Lt_0095:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0098
jmp .Lt_0094
.Lt_0098:
.Lt_0097:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0094:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMATHLONGINTDIV
_RTLMATHLONGINTDIV:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0099:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_009B
mov dword ptr [ebp-16], 24
jmp .Lt_00A3
.Lt_009B:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00A3:
cmp dword ptr [ebp-16], 13
jne .Lt_009E
push 115
push offset _Lt_005F
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_009D
.Lt_009E:
push 116
push offset _Lt_0061
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.Lt_009D:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00A0
jmp .Lt_009A
.Lt_00A0:
.Lt_009F:
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00A2
jmp .Lt_009A
.Lt_00A2:
.Lt_00A1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_009A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMATHLONGINTMOD
_RTLMATHLONGINTMOD:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_00A4:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_00A6
mov dword ptr [ebp-16], 24
jmp .Lt_00AE
.Lt_00A6:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00AE:
cmp dword ptr [ebp-16], 13
jne .Lt_00A9
push 117
push offset _Lt_0063
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_00A8
.Lt_00A9:
push 118
push offset _Lt_0065
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-12], eax
.Lt_00A8:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00AB
jmp .Lt_00A5
.Lt_00AB:
.Lt_00AA:
push -1
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00AD
jmp .Lt_00A5
.Lt_00AD:
.Lt_00AC:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMATHFP2ULONGINT
_RTLMATHFP2ULONGINT:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00AF:
mov dword ptr [ebp-4], 0
push 0
push 119
push offset _Lt_0067
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00B2
jmp .Lt_00B0
.Lt_00B2:
.Lt_00B1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00B0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMATHUOP
_RTLMATHUOP:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00B3:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_00B6
.Lt_00B8:
push 340
push offset _Lt_0080
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B5
.Lt_00B9:
push 345
push offset _Lt_007B
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B5
.Lt_00BA:
push 346
push offset _Lt_0085
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B5
.Lt_00BB:
push 347
push offset _Lt_0088
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B5
.Lt_00BC:
push 341
push offset _Lt_006F
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B5
.Lt_00BD:
push 342
push offset _Lt_0072
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B5
.Lt_00BE:
push 343
push offset _Lt_0075
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B5
.Lt_00BF:
push 344
push offset _Lt_0078
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B5
.Lt_00C0:
jmp .Lt_00B4
jmp .Lt_00B5
.Lt_00B6:
mov eax, dword ptr [ebp-12]
add eax, 4294967240
cmp eax, 16
ja .Lt_00C0
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00C1+eax*4-224]
_.LT_00C1:
.int .Lt_00B9
.int .Lt_00B8
.int .Lt_00C0
.int .Lt_00BC
.int .Lt_00C0
.int .Lt_00BD
.int .Lt_00BE
.int .Lt_00BF
.int .Lt_00C0
.int .Lt_00C0
.int .Lt_00C0
.int .Lt_00C0
.int .Lt_00C0
.int .Lt_00C0
.int .Lt_00C0
.int .Lt_00BA
.int .Lt_00BB
.Lt_00B5:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _RTLOVLPROCCALL
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_00B4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLMATHBOP
_RTLMATHBOP:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00C2:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_00C5
.Lt_00C7:
push 348
push offset _Lt_008B
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00C4
.Lt_00C8:
jmp .Lt_00C3
jmp .Lt_00C4
.Lt_00C5:
mov eax, dword ptr [ebp-12]
add eax, 4294967232
test eax, eax
ja .Lt_00C8
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00C9+eax*4-256]
_.LT_00C9:
.int .Lt_00C7
.Lt_00C4:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _RTLOVLPROCCALL
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_00C3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__rtlzmath:
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
_HRNDCALLBACK:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00CA:
cmp dword ptr [_Lt_00D4], 0
jne .Lt_00CD
mov dword ptr [_Lt_00D4], -1
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00D1
.Lt_00D2:
cmp dword ptr [ebp-8], 1
jne .Lt_00D0
.Lt_00D1:
push offset _Lt_00D3
call _FBADDLIB
add esp, 4
.Lt_00D0:
.Lt_00CE:
.Lt_00CD:
.Lt_00CC:
mov dword ptr [ebp-4], -1
.Lt_00CB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_00D4:
.int 0

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
.int _Lt_0060
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
.int _Lt_0061
.int _Lt_0062
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
.int _Lt_0063
.int _Lt_0064
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
.int _Lt_0065
.int _Lt_0066
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
.int _Lt_0067
.int _Lt_0068
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
.int _Lt_0069
.int _Lt_006A
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
.int _Lt_006B
.int _Lt_006C
.int 0
.int -1
.int _HRNDCALLBACK
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
.int _Lt_006D
.int _Lt_006E
.int 16
.int -1
.int _HRNDCALLBACK
.int 0
.int 1
.int 15
.int 1
.int -1
.int 1
.skip 4,0
.skip 300,0
.int _Lt_006F
.int _Lt_0070
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
.int _Lt_006F
.int _Lt_0071
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
.int _Lt_0072
.int _Lt_0073
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
.int _Lt_0072
.int _Lt_0074
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
.int _Lt_0075
.int _Lt_0076
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
.int _Lt_0075
.int _Lt_0077
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
.int _Lt_0078
.int _Lt_0079
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
.int _Lt_0078
.int _Lt_007A
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
.int _Lt_007B
.int _Lt_007C
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
.int _Lt_007B
.int _Lt_007D
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
.int _Lt_007B
.int _Lt_007E
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
.int _Lt_007B
.int _Lt_007F
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
.int _Lt_0080
.int _Lt_0081
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
.int _Lt_0080
.int _Lt_0082
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
.int _Lt_0080
.int _Lt_0083
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
.int _Lt_0080
.int _Lt_0084
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
.int _Lt_0085
.int _Lt_0086
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
.int _Lt_0085
.int _Lt_0087
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
.int _Lt_0088
.int _Lt_0089
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
.int _Lt_0088
.int _Lt_008A
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
.int _Lt_008B
.int _Lt_008C
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
.int _Lt_008B
.int _Lt_008D
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
_Lt_005F:	.ascii	"fb___divdi3\0"
.balign 4
_Lt_0060:	.ascii	"__divdi3\0"
.balign 4
_Lt_0061:	.ascii	"fb___udivdi3\0"
.balign 4
_Lt_0062:	.ascii	"__udivdi3\0"
.balign 4
_Lt_0063:	.ascii	"fb___moddi3\0"
.balign 4
_Lt_0064:	.ascii	"__moddi3\0"
.balign 4
_Lt_0065:	.ascii	"fb___umoddi3\0"
.balign 4
_Lt_0066:	.ascii	"__umoddi3\0"
.balign 4
_Lt_0067:	.ascii	"fb___fixunsdfdi\0"
.balign 4
_Lt_0068:	.ascii	"__fixunsdfdi\0"
.balign 4
_Lt_0069:	.ascii	"fb_Pow\0"
.balign 4
_Lt_006A:	.ascii	"pow\0"
.balign 4
_Lt_006B:	.ascii	"randomize\0"
.balign 4
_Lt_006C:	.ascii	"fb_Randomize\0"
.balign 4
_Lt_006D:	.ascii	"rnd\0"
.balign 4
_Lt_006E:	.ascii	"fb_Rnd\0"
.balign 4
_Lt_006F:	.ascii	"{asin}\0"
.balign 4
_Lt_0070:	.ascii	"asinf\0"
.balign 4
_Lt_0071:	.ascii	"asin\0"
.balign 4
_Lt_0072:	.ascii	"{acos}\0"
.balign 4
_Lt_0073:	.ascii	"acosf\0"
.balign 4
_Lt_0074:	.ascii	"acos\0"
.balign 4
_Lt_0075:	.ascii	"{tan}\0"
.balign 4
_Lt_0076:	.ascii	"tanf\0"
.balign 4
_Lt_0077:	.ascii	"tan\0"
.balign 4
_Lt_0078:	.ascii	"{atan}\0"
.balign 4
_Lt_0079:	.ascii	"atanf\0"
.balign 4
_Lt_007A:	.ascii	"atan\0"
.balign 4
_Lt_007B:	.ascii	"{abs}\0"
.balign 4
_Lt_007C:	.ascii	"abs\0"
.balign 4
_Lt_007D:	.ascii	"llabs\0"
.balign 4
_Lt_007E:	.ascii	"fabsf\0"
.balign 4
_Lt_007F:	.ascii	"fabs\0"
.balign 4
_Lt_0080:	.ascii	"{sgn}\0"
.balign 4
_Lt_0081:	.ascii	"fb_SGNi\0"
.balign 4
_Lt_0082:	.ascii	"fb_SGNl\0"
.balign 4
_Lt_0083:	.ascii	"fb_SGNSingle\0"
.balign 4
_Lt_0084:	.ascii	"fb_SGNDouble\0"
.balign 4
_Lt_0085:	.ascii	"{fix}\0"
.balign 4
_Lt_0086:	.ascii	"fb_FIXSingle\0"
.balign 4
_Lt_0087:	.ascii	"fb_FIXDouble\0"
.balign 4
_Lt_0088:	.ascii	"{frac}\0"
.balign 4
_Lt_0089:	.ascii	"fb_FRACf\0"
.balign 4
_Lt_008A:	.ascii	"fb_FRACd\0"
.balign 4
_Lt_008B:	.ascii	"{atan2}\0"
.balign 4
_Lt_008C:	.ascii	"atan2f\0"
.balign 4
_Lt_008D:	.ascii	"atan2\0"
.balign 4
_Lt_00D3:	.ascii	"advapi32\0"

.section .ctors
.int _fb_ctor__rtlzmath
