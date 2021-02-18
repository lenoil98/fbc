	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLSYSTEMMODINIT@0
_RTLSYSTEMMODINIT@0:
.Lt_00B5:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS@4
.Lt_00B6:
ret
.balign 16

.globl _RTLSYSTEMMODEND@0
_RTLSYSTEMMODEND@0:
.Lt_00B7:
.Lt_00B8:
ret
.balign 16

.globl _RTLINITAPP@8
_RTLINITAPP@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D5:
mov eax, dword ptr [_ENV+96]
cmp eax, 2
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
cmp dword ptr [_ENV+104], 0
jne .Lt_00D8
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_00DC
.Lt_00DD:
cmp dword ptr [ebp-16], 1
jne .Lt_00DB
.Lt_00DC:
cmp dword ptr [_ENV+180], 0
je .Lt_00DF
call _RTLPROFILECALL_MONSTARTUP@0
.Lt_00DF:
.Lt_00DE:
.Lt_00DB:
.Lt_00D9:
cmp dword ptr [_ENV+108], 0
jne .Lt_00E1
push 0
push 141
push offset _Lt_0062
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
push eax
call _ASTADD@4
.Lt_00E1:
.Lt_00E0:
.Lt_00D8:
.Lt_00D7:
push 0
push 139
push offset _Lt_0060
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [_ENV+136]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
push dword ptr [ebp-8]
call _ASTADD@4
mov eax, dword ptr [ebp-12]
and eax, dword ptr [_ENV+156]
je .Lt_00E3
push 0
push 140
push offset _Lt_0061
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
push eax
call _ASTADD@4
call _FBGETCPUFAMILY@0
test eax, eax
jne .Lt_00E5
call _RTLX86CPUCHECK@0
.Lt_00E5:
.Lt_00E4:
.Lt_00E3:
.Lt_00E2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00D6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _RTLEXITAPP@4
_RTLEXITAPP@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00E7:
mov dword ptr [ebp-4], 0
push 0
push 142
push offset _Lt_0064
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_00EA
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp+8], eax
.Lt_00EA:
.Lt_00E9:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00EC
jmp .Lt_00E8
.Lt_00EC:
.Lt_00EB:
push dword ptr [ebp-8]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_00E8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLATEXIT@4
_RTLATEXIT@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00F4:
mov dword ptr [ebp-4], 0
push 0
push 143
push offset _Lt_0065
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [_Lt_00F8], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [_Lt_00F8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00F7
jmp .Lt_00F5
.Lt_00F7:
.Lt_00F6:
mov eax, dword ptr [_Lt_00F8]
mov dword ptr [ebp-4], eax
.Lt_00F5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00F8,4

.section .text
.balign 16
_fb_ctor__rtlzsystem:
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
.balign 16
_RTLX86CPUCHECK@0:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B9:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [_ENV+112]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 3
jle .Lt_00BC
mov dword ptr [ebp-24], 3
.Lt_00BC:
.Lt_00BB:
cmp dword ptr [ebp-24], 0
jne .Lt_00BE
.Lt_00BF:
push 0
push 4
push offset _Lt_00C0
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
mov dword ptr [ebp-24], 3
jmp .Lt_00BD
.Lt_00BE:
cmp dword ptr [ebp-24], 1
jne .Lt_00C1
.Lt_00C2:
push 0
push 4
push offset _Lt_00C3
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
mov dword ptr [ebp-24], 4
jmp .Lt_00BD
.Lt_00C1:
cmp dword ptr [ebp-24], 2
jne .Lt_00C4
.Lt_00C5:
push 0
push 4
push offset _Lt_00C6
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
mov dword ptr [ebp-24], 5
jmp .Lt_00BD
.Lt_00C4:
push 0
push 4
push offset _Lt_00C8
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
mov dword ptr [ebp-24], 6
.Lt_00C7:
.Lt_00BD:
push 0
push 138
push offset _Lt_005F
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push 1
push 0
push 0
push 9
push 0
push 28
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
push 42
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push 0
push 9
mov ebx, dword ptr [ebp-24]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-12]
push 49
call _ASTNEWBOP@20
push eax
call _ASTADD@4
push -1
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 9
push offset _Lt_00CA
push -1
push -1
lea eax, [ebp-36]
push eax
push 34
push offset _Lt_00C9
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-72]
call _SYMBALLOCSTRCONST@8
mov dword ptr [ebp-16], eax
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR@20
push eax
push 0
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
call _RTLPRINT@20
push 0
push 142
push offset _Lt_0064
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push 0
push 8
push 0
push 1
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00CF
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00BA
.Lt_00CF:
.Lt_00CE:
push dword ptr [ebp-8]
call _ASTADD@4
push -1
push dword ptr [ebp-20]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
cmp dword ptr [_ENV+116], 1
jne .Lt_00D1
push 0
push 138
push offset _Lt_005F
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push 1
push 0
push 0
push 9
push 0
push 100663296
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
push 34
call _ASTNEWBOP@20
mov dword ptr [ebp-12], eax
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push 0
push 9
push 0
push 100663296
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-12]
push 45
call _ASTNEWBOP@20
push eax
call _ASTADD@4
push -1
push offset _Lt_00D2
call _SYMBALLOCSTRCONST@8
mov dword ptr [ebp-16], eax
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR@20
push eax
push 0
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
call _RTLPRINT@20
push 0
push 142
push offset _Lt_0064
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push 0
push 8
push 0
push 1
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00D4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_00BA
.Lt_00D4:
.Lt_00D3:
push dword ptr [ebp-8]
call _ASTADD@4
push -1
push dword ptr [ebp-20]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
.Lt_00D1:
.Lt_00D0:
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_00BA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMULTITHREAD_CB@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00ED:
mov dword ptr [_ENV+216], -1
mov dword ptr [ebp-4], -1
.Lt_00EE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HTHREADCALL_CB@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00EF:
cmp dword ptr [_Lt_00F9], 0
jne .Lt_00F2
mov dword ptr [_Lt_00F9], -1
push offset _Lt_00F3
call _FBADDLIB@4
.Lt_00F2:
.Lt_00F1:
push dword ptr [ebp+8]
call _HMULTITHREAD_CB@4
mov dword ptr [ebp-4], eax
.Lt_00F0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

.section .data
.balign 4
_Lt_00F9:
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
.long 0
.int 12
.int 3
.long 0
.int 16384
.int 0
.skip 320,0
.int _Lt_0060
.long 0
.int 0
.int -1
.long 0
.int 0
.int 3
.int 11
.int 1
.int 0
.skip 8,0
.int 68
.int 1
.int 0
.skip 8,0
.int 11
.int 1
.int 0
.skip 8,0
.skip 260,0
.int _Lt_0061
.long 0
.int 0
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int _Lt_0062
.int _Lt_0063
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 320,0
.int _Lt_0064
.long 0
.int 0
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0065
.int _Lt_0066
.int 11
.int 3
.long 0
.int 0
.int 1
.int 32
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0067
.int _Lt_0068
.int 17
.int -1
.long 0
.int 64
.int 1
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 300,0
.int _Lt_0069
.int _Lt_006A
.int 17
.int -1
.long 0
.int 128
.int 0
.skip 320,0
.int _Lt_006B
.int _Lt_006C
.int 17
.int -1
.long 0
.int 128
.int 0
.skip 320,0
.int _Lt_006D
.int _Lt_006E
.int 16
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int _Lt_006F
.int _Lt_0070
.int 17
.int -1
.long 0
.int 64
.int 0
.skip 320,0
.int _Lt_0071
.int _Lt_0072
.int 17
.int -1
.long 0
.int 64
.int 0
.skip 320,0
.int _Lt_0073
.int _Lt_0074
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int -1
.int 0
.skip 4,0
.skip 300,0
.int _Lt_0075
.int _Lt_0064
.int 0
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 300,0
.int _Lt_0076
.int _Lt_0064
.int 0
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int -1
.int 0
.skip 4,0
.skip 300,0
.int _Lt_0077
.int _Lt_0078
.int 11
.int -1
.long 0
.int 0
.int 2
.int 529
.int 2
.int 0
.skip 8,0
.int 529
.int 2
.int -1
.int 0
.skip 4,0
.skip 280,0
.int _Lt_0079
.int _Lt_007A
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_007B
.int _Lt_007C
.int 11
.int -1
.long 0
.int 128
.int 2
.int 529
.int 2
.int 0
.skip 8,0
.int 529
.int 2
.int 0
.skip 8,0
.skip 280,0
.int _Lt_007D
.int _Lt_007E
.int 17
.int -1
.long 0
.int 64
.int 1
.int 529
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_007F
.int _Lt_0080
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0081
.int _Lt_0082
.int 0
.int -1
.long 0
.int 129
.int 1
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 300,0
.int _Lt_0081
.int _Lt_0083
.int 0
.int -1
.long 0
.int 257
.int 1
.int 523
.int 1
.int -1
.int -1
.skip 4,0
.skip 300,0
.int _Lt_0081
.int _Lt_0084
.int 11
.int -1
.long 0
.int 3
.int 2
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.skip 280,0
.int _Lt_0085
.int _Lt_0086
.int 17
.int -1
.long 0
.int 129
.int 1
.int 43
.int 1
.int -1
.int 0
.skip 4,0
.skip 300,0
.int _Lt_0085
.int _Lt_0087
.int 17
.int -1
.long 0
.int 129
.int 1
.int 45
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0085
.int _Lt_0086
.int 17
.int -1
.long 0
.int 129
.int 1
.int 11
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0085
.int _Lt_0087
.int 17
.int -1
.long 0
.int 129
.int 1
.int 13
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0085
.int _Lt_0088
.int 17
.int -1
.long 0
.int 129
.int 3
.int 529
.int 2
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int 33
.skip 4,0
.int 43
.int 1
.int -1
.int 0
.skip 4,0
.skip 260,0
.int _Lt_0085
.int _Lt_0089
.int 17
.int -1
.long 0
.int 129
.int 3
.int 529
.int 2
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int 33
.skip 4,0
.int 45
.int 1
.int 0
.skip 8,0
.skip 260,0
.int _Lt_0085
.int _Lt_0088
.int 17
.int -1
.long 0
.int 129
.int 3
.int 529
.int 2
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int 33
.skip 4,0
.int 11
.int 2
.int 0
.skip 8,0
.skip 260,0
.int _Lt_0085
.int _Lt_0089
.int 17
.int -1
.long 0
.int 129
.int 3
.int 529
.int 2
.int 0
.skip 8,0
.int 523
.int 1
.int -1
.int 33
.skip 4,0
.int 13
.int 2
.int 0
.skip 8,0
.skip 260,0
.int _Lt_008A
.int _Lt_008B
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_008C
.int _Lt_008D
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_008E
.int _Lt_008F
.int 32
.int -1
.int _HMULTITHREAD_CB@4
.int 132
.int 5
.int 54
.int 1
.int -1
.int 1
.skip 4,0
.int 32
.int 1
.int 0
.skip 8,0
.int 0
.int 0
.int 0
.skip 8,0
.int 32
.int 1
.int -1
.int 0
.skip 4,0
.int 520
.int 1
.int -1
.int 0
.skip 4,0
.skip 220,0
.int _Lt_0090
.int _Lt_0091
.int 0
.int -1
.int _HMULTITHREAD_CB@4
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0092
.long 0
.int 32
.int 3
.int _HTHREADCALL_CB@4
.int 132
.int 5
.int 32
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int -2147483648
.int 4
.int 0
.skip 8,0
.skip 220,0
.int _Lt_0093
.int _Lt_0094
.int 32
.int -1
.long 0
.int 132
.int 0
.skip 320,0
.int _Lt_0095
.int _Lt_0096
.int 0
.int -1
.long 0
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0097
.int _Lt_0098
.int 0
.int -1
.long 0
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0099
.int _Lt_009A
.int 0
.int -1
.long 0
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_009B
.int _Lt_009C
.int 32
.int -1
.long 0
.int 132
.int 0
.skip 320,0
.int _Lt_009D
.int _Lt_009E
.int 0
.int -1
.long 0
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_009F
.int _Lt_00A0
.int 0
.int -1
.long 0
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00A1
.int _Lt_00A2
.int 0
.int -1
.long 0
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00A3
.int _Lt_00A4
.int 0
.int -1
.long 0
.int 132
.int 2
.int 32
.int 1
.int 0
.skip 8,0
.int 32
.int 1
.int 0
.skip 8,0
.skip 280,0
.int _Lt_00A5
.int _Lt_00A6
.int 32
.int -1
.long 0
.int 128
.int 1
.int 529
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00A7
.int _Lt_00A8
.int 32
.int -1
.long 0
.int 129
.int 2
.int 32
.int 1
.int 0
.skip 8,0
.int 529
.int 2
.int 0
.skip 8,0
.skip 280,0
.int _Lt_00A7
.int _Lt_00A9
.int 32
.int -1
.long 0
.int 129
.int 2
.int 32
.int 1
.int 0
.skip 8,0
.int 517
.int 1
.int 0
.skip 8,0
.skip 280,0
.int _Lt_00AA
.int _Lt_00AB
.int 0
.int -1
.long 0
.int 128
.int 1
.int 32
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00AC
.int _Lt_00AD
.int 0
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int _Lt_00AE
.int _Lt_00AF
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00B0
.int _Lt_00B1
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 8,0
.skip 300,0
.int _Lt_00B2
.int _Lt_00B3
.int 11
.int -1
.long 0
.int 0
.int 1
.int 529
.int 2
.int 0
.skip 8,0
.skip 300,0
.long 0
.skip 344,0
.balign 4
_Lt_005F:	.ascii	"fb_CpuDetect\0"
.balign 4
_Lt_0060:	.ascii	"fb_Init\0"
.balign 4
_Lt_0061:	.ascii	"fb_InitSignals\0"
.balign 4
_Lt_0062:	.ascii	"fb___main\0"
.balign 4
_Lt_0063:	.ascii	"__main\0"
.balign 4
_Lt_0064:	.ascii	"fb_End\0"
.balign 4
_Lt_0065:	.ascii	"fb_atexit\0"
.balign 4
_Lt_0066:	.ascii	"atexit\0"
.balign 4
_Lt_0067:	.ascii	"command\0"
.balign 4
_Lt_0068:	.ascii	"fb_Command\0"
.balign 4
_Lt_0069:	.ascii	"curdir\0"
.balign 4
_Lt_006A:	.ascii	"fb_CurDir\0"
.balign 4
_Lt_006B:	.ascii	"exepath\0"
.balign 4
_Lt_006C:	.ascii	"fb_ExePath\0"
.balign 4
_Lt_006D:	.ascii	"timer\0"
.balign 4
_Lt_006E:	.ascii	"fb_Timer\0"
.balign 4
_Lt_006F:	.ascii	"time\0"
.balign 4
_Lt_0070:	.ascii	"fb_Time\0"
.balign 4
_Lt_0071:	.ascii	"date\0"
.balign 4
_Lt_0072:	.ascii	"fb_Date\0"
.balign 4
_Lt_0073:	.ascii	"shell\0"
.balign 4
_Lt_0074:	.ascii	"fb_Shell\0"
.balign 4
_Lt_0075:	.ascii	"system\0"
.balign 4
_Lt_0076:	.ascii	"stop\0"
.balign 4
_Lt_0077:	.ascii	"run\0"
.balign 4
_Lt_0078:	.ascii	"fb_Run\0"
.balign 4
_Lt_0079:	.ascii	"chain\0"
.balign 4
_Lt_007A:	.ascii	"fb_Chain\0"
.balign 4
_Lt_007B:	.ascii	"exec\0"
.balign 4
_Lt_007C:	.ascii	"fb_Exec\0"
.balign 4
_Lt_007D:	.ascii	"environ\0"
.balign 4
_Lt_007E:	.ascii	"fb_GetEnviron\0"
.balign 4
_Lt_007F:	.ascii	"setenviron\0"
.balign 4
_Lt_0080:	.ascii	"fb_SetEnviron\0"
.balign 4
_Lt_0081:	.ascii	"sleep\0"
.balign 4
_Lt_0082:	.ascii	"fb_Sleep\0"
.balign 4
_Lt_0083:	.ascii	"fb_SleepQB\0"
.balign 4
_Lt_0084:	.ascii	"fb_SleepEx\0"
.balign 4
_Lt_0085:	.ascii	"dir\0"
.balign 4
_Lt_0086:	.ascii	"fb_DirNext\0"
.balign 4
_Lt_0087:	.ascii	"fb_DirNext64\0"
.balign 4
_Lt_0088:	.ascii	"fb_Dir\0"
.balign 4
_Lt_0089:	.ascii	"fb_Dir64\0"
.balign 4
_Lt_008A:	.ascii	"settime\0"
.balign 4
_Lt_008B:	.ascii	"fb_SetTime\0"
.balign 4
_Lt_008C:	.ascii	"setdate\0"
.balign 4
_Lt_008D:	.ascii	"fb_SetDate\0"
.balign 4
_Lt_008E:	.ascii	"threadcreate\0"
.balign 4
_Lt_008F:	.ascii	"fb_ThreadCreate\0"
.balign 4
_Lt_0090:	.ascii	"threadwait\0"
.balign 4
_Lt_0091:	.ascii	"fb_ThreadWait\0"
.balign 4
_Lt_0092:	.ascii	"fb_ThreadCall\0"
.balign 4
_Lt_0093:	.ascii	"mutexcreate\0"
.balign 4
_Lt_0094:	.ascii	"fb_MutexCreate\0"
.balign 4
_Lt_0095:	.ascii	"mutexdestroy\0"
.balign 4
_Lt_0096:	.ascii	"fb_MutexDestroy\0"
.balign 4
_Lt_0097:	.ascii	"mutexlock\0"
.balign 4
_Lt_0098:	.ascii	"fb_MutexLock\0"
.balign 4
_Lt_0099:	.ascii	"mutexunlock\0"
.balign 4
_Lt_009A:	.ascii	"fb_MutexUnlock\0"
.balign 4
_Lt_009B:	.ascii	"condcreate\0"
.balign 4
_Lt_009C:	.ascii	"fb_CondCreate\0"
.balign 4
_Lt_009D:	.ascii	"conddestroy\0"
.balign 4
_Lt_009E:	.ascii	"fb_CondDestroy\0"
.balign 4
_Lt_009F:	.ascii	"condsignal\0"
.balign 4
_Lt_00A0:	.ascii	"fb_CondSignal\0"
.balign 4
_Lt_00A1:	.ascii	"condbroadcast\0"
.balign 4
_Lt_00A2:	.ascii	"fb_CondBroadcast\0"
.balign 4
_Lt_00A3:	.ascii	"condwait\0"
.balign 4
_Lt_00A4:	.ascii	"fb_CondWait\0"
.balign 4
_Lt_00A5:	.ascii	"dylibload\0"
.balign 4
_Lt_00A6:	.ascii	"fb_DylibLoad\0"
.balign 4
_Lt_00A7:	.ascii	"dylibsymbol\0"
.balign 4
_Lt_00A8:	.ascii	"fb_DylibSymbol\0"
.balign 4
_Lt_00A9:	.ascii	"fb_DylibSymbolByOrd\0"
.balign 4
_Lt_00AA:	.ascii	"dylibfree\0"
.balign 4
_Lt_00AB:	.ascii	"fb_DylibFree\0"
.balign 4
_Lt_00AC:	.ascii	"beep\0"
.balign 4
_Lt_00AD:	.ascii	"fb_Beep\0"
.balign 4
_Lt_00AE:	.ascii	"mkdir\0"
.balign 4
_Lt_00AF:	.ascii	"fb_MkDir\0"
.balign 4
_Lt_00B0:	.ascii	"rmdir\0"
.balign 4
_Lt_00B1:	.ascii	"fb_RmDir\0"
.balign 4
_Lt_00B2:	.ascii	"chdir\0"
.balign 4
_Lt_00B3:	.ascii	"fb_ChDir\0"
.balign 4
_Lt_00C0:	.ascii	"386\0"
.balign 4
_Lt_00C3:	.ascii	"486\0"
.balign 4
_Lt_00C6:	.ascii	"586\0"
.balign 4
_Lt_00C8:	.ascii	"686\0"
.balign 4
_Lt_00C9:	.ascii	"This program requires at least a \0"
.balign 4
_Lt_00CA:	.ascii	" to run.\0"
.balign 4
_Lt_00D2:	.ascii	"This program requires SSE and SSE2 instructions to run.\0"
.balign 4
_Lt_00F3:	.ascii	"ffi\0"

.section .ctors
.int _fb_ctor__rtlzsystem
