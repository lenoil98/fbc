	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLSYSTEMMODINIT
RTLSYSTEMMODINIT:
.Lt_00B4:
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 4
.Lt_00B5:
ret
.balign 16

.globl RTLSYSTEMMODEND
RTLSYSTEMMODEND:
.Lt_00B6:
.Lt_00B7:
ret
.balign 16

.globl RTLINITAPP
RTLINITAPP:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D4:
mov eax, dword ptr [ENV+96]
cmp eax, 2
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
cmp dword ptr [ENV+104], 0
jne .Lt_00D7
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_00DB
.Lt_00DC:
cmp dword ptr [ebp-16], 1
jne .Lt_00DA
.Lt_00DB:
cmp dword ptr [ENV+180], 0
je .Lt_00DE
call RTLPROFILECALL_MONSTARTUP
.Lt_00DE:
.Lt_00DD:
.Lt_00DA:
.Lt_00D8:
cmp dword ptr [ENV+108], 0
jne .Lt_00E0
push 0
push 141
push offset Lt_0061
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
push eax
call ASTADD
add esp, 4
.Lt_00E0:
.Lt_00DF:
.Lt_00D7:
.Lt_00D6:
push 0
push 139
push offset Lt_005F
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
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ENV+136]
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
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-12]
and eax, dword ptr [ENV+156]
je .Lt_00E2
push 0
push 140
push offset Lt_0060
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
push eax
call ASTADD
add esp, 4
call FBGETCPUFAMILY
test eax, eax
jne .Lt_00E4
call RTLX86CPUCHECK
.Lt_00E4:
.Lt_00E3:
.Lt_00E2:
.Lt_00E1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00D5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLEXITAPP
RTLEXITAPP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00E6:
mov dword ptr [ebp-4], 0
push 0
push 142
push offset Lt_0063
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_00E9
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_00E9:
.Lt_00E8:
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00EB
jmp .Lt_00E7
.Lt_00EB:
.Lt_00EA:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_00E7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLATEXIT
RTLATEXIT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00F3:
mov dword ptr [ebp-4], 0
push 0
push 143
push offset Lt_0064
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [Lt_00F7], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [Lt_00F7]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00F6
jmp .Lt_00F4
.Lt_00F6:
.Lt_00F5:
mov eax, dword ptr [Lt_00F7]
mov dword ptr [ebp-4], eax
.Lt_00F4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00F7,4

.section .text
.balign 16
fb_ctor__rtlzsystem:
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
RTLX86CPUCHECK:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B8:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ENV+112]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 3
jle .Lt_00BB
mov dword ptr [ebp-24], 3
.Lt_00BB:
.Lt_00BA:
cmp dword ptr [ebp-24], 0
jne .Lt_00BD
.Lt_00BE:
push 0
push 4
push offset Lt_00BF
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [ebp-24], 3
jmp .Lt_00BC
.Lt_00BD:
cmp dword ptr [ebp-24], 1
jne .Lt_00C0
.Lt_00C1:
push 0
push 4
push offset Lt_00C2
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [ebp-24], 4
jmp .Lt_00BC
.Lt_00C0:
cmp dword ptr [ebp-24], 2
jne .Lt_00C3
.Lt_00C4:
push 0
push 4
push offset Lt_00C5
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [ebp-24], 5
jmp .Lt_00BC
.Lt_00C3:
push 0
push 4
push offset Lt_00C7
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
mov dword ptr [ebp-24], 6
.Lt_00C6:
.Lt_00BC:
push 0
push 138
push offset Lt_005E
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push 1
push 0
push 0
push 9
push 0
push 28
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 42
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
push 4
push 0
call SYMBADDLABEL
add esp, 8
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
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
push 49
call ASTNEWBOP
add esp, 20
push eax
call ASTADD
add esp, 4
push -1
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 9
push offset Lt_00C9
push -1
push -1
lea eax, [ebp-36]
push eax
push 34
push offset Lt_00C8
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call SYMBALLOCSTRCONST
add esp, 8
mov dword ptr [ebp-16], eax
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 4
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
push 0
push 0
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
call RTLPRINT
add esp, 20
push 0
push 142
push offset Lt_0063
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push 0
push 8
push 0
push 1
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00CE
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_00B9
.Lt_00CE:
.Lt_00CD:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
push -1
push dword ptr [ebp-20]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
cmp dword ptr [ENV+116], 1
jne .Lt_00D0
push 0
push 138
push offset Lt_005E
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push 1
push 0
push 0
push 9
push 0
push 100663296
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 34
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-12], eax
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-20], eax
push 0
push dword ptr [ebp-20]
push 0
push 9
push 0
push 100663296
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
push 45
call ASTNEWBOP
add esp, 20
push eax
call ASTADD
add esp, 4
push -1
push offset Lt_00D1
call SYMBALLOCSTRCONST
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
push 0
push 0
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
call RTLPRINT
add esp, 20
push 0
push 142
push offset Lt_0063
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push 0
push 8
push 0
push 1
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00D3
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_00B9
.Lt_00D3:
.Lt_00D2:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
push -1
push dword ptr [ebp-20]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
.Lt_00D0:
.Lt_00CF:
mov dword ptr [ebp-4], -1
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 4
.Lt_00B9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMULTITHREAD_CB:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00EC:
mov dword ptr [ENV+216], -1
mov dword ptr [ebp-4], -1
.Lt_00ED:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HTHREADCALL_CB:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00EE:
cmp dword ptr [Lt_00F8], 0
jne .Lt_00F1
mov dword ptr [Lt_00F8], -1
push offset Lt_00F2
call FBADDLIB
add esp, 4
.Lt_00F1:
.Lt_00F0:
push dword ptr [ebp+8]
call HMULTITHREAD_CB
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_00EF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_00F8:
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
.long 0
.int 12
.int 3
.long 0
.int 16384
.int 0
.skip 320,0
.int Lt_005F
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
.int Lt_0060
.long 0
.int 0
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int Lt_0061
.int Lt_0062
.int 0
.int 3
.long 0
.int 0
.int 0
.skip 320,0
.int Lt_0063
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
.int Lt_0064
.int Lt_0065
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
.int Lt_0066
.int Lt_0067
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
.int Lt_0068
.int Lt_0069
.int 17
.int -1
.long 0
.int 128
.int 0
.skip 320,0
.int Lt_006A
.int Lt_006B
.int 17
.int -1
.long 0
.int 128
.int 0
.skip 320,0
.int Lt_006C
.int Lt_006D
.int 16
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int Lt_006E
.int Lt_006F
.int 17
.int -1
.long 0
.int 64
.int 0
.skip 320,0
.int Lt_0070
.int Lt_0071
.int 17
.int -1
.long 0
.int 64
.int 0
.skip 320,0
.int Lt_0072
.int Lt_0073
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
.int Lt_0074
.int Lt_0063
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
.int Lt_0075
.int Lt_0063
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
.int Lt_0076
.int Lt_0077
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
.int Lt_0078
.int Lt_0079
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
.int Lt_007A
.int Lt_007B
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
.int Lt_007C
.int Lt_007D
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
.int Lt_007E
.int Lt_007F
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
.int Lt_0080
.int Lt_0081
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
.int Lt_0080
.int Lt_0082
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
.int Lt_0080
.int Lt_0083
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
.int Lt_0084
.int Lt_0085
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
.int Lt_0084
.int Lt_0086
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
.int Lt_0084
.int Lt_0085
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
.int Lt_0084
.int Lt_0086
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
.int Lt_0084
.int Lt_0087
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
.int Lt_0084
.int Lt_0088
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
.int Lt_0084
.int Lt_0087
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
.int Lt_0084
.int Lt_0088
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
.int Lt_0089
.int Lt_008A
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
.int Lt_008B
.int Lt_008C
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
.int Lt_008D
.int Lt_008E
.int 32
.int -1
.int HMULTITHREAD_CB
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
.int Lt_008F
.int Lt_0090
.int 0
.int -1
.int HMULTITHREAD_CB
.int 132
.int 1
.int 32
.int 1
.int 0
.skip 8,0
.skip 300,0
.int Lt_0091
.long 0
.int 32
.int 3
.int HTHREADCALL_CB
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
.int Lt_0092
.int Lt_0093
.int 32
.int -1
.long 0
.int 132
.int 0
.skip 320,0
.int Lt_0094
.int Lt_0095
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
.int Lt_0096
.int Lt_0097
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
.int Lt_0098
.int Lt_0099
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
.int Lt_009A
.int Lt_009B
.int 32
.int -1
.long 0
.int 132
.int 0
.skip 320,0
.int Lt_009C
.int Lt_009D
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
.int Lt_009E
.int Lt_009F
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
.int Lt_00A0
.int Lt_00A1
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
.int Lt_00A2
.int Lt_00A3
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
.int Lt_00A4
.int Lt_00A5
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
.int Lt_00A6
.int Lt_00A7
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
.int Lt_00A6
.int Lt_00A8
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
.int Lt_00A9
.int Lt_00AA
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
.int Lt_00AB
.int Lt_00AC
.int 0
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int Lt_00AD
.int Lt_00AE
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
.int Lt_00AF
.int Lt_00B0
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
.int Lt_00B1
.int Lt_00B2
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
Lt_005E:	.ascii	"fb_CpuDetect\0"
.balign 4
Lt_005F:	.ascii	"fb_Init\0"
.balign 4
Lt_0060:	.ascii	"fb_InitSignals\0"
.balign 4
Lt_0061:	.ascii	"fb___main\0"
.balign 4
Lt_0062:	.ascii	"__main\0"
.balign 4
Lt_0063:	.ascii	"fb_End\0"
.balign 4
Lt_0064:	.ascii	"fb_atexit\0"
.balign 4
Lt_0065:	.ascii	"atexit\0"
.balign 4
Lt_0066:	.ascii	"command\0"
.balign 4
Lt_0067:	.ascii	"fb_Command\0"
.balign 4
Lt_0068:	.ascii	"curdir\0"
.balign 4
Lt_0069:	.ascii	"fb_CurDir\0"
.balign 4
Lt_006A:	.ascii	"exepath\0"
.balign 4
Lt_006B:	.ascii	"fb_ExePath\0"
.balign 4
Lt_006C:	.ascii	"timer\0"
.balign 4
Lt_006D:	.ascii	"fb_Timer\0"
.balign 4
Lt_006E:	.ascii	"time\0"
.balign 4
Lt_006F:	.ascii	"fb_Time\0"
.balign 4
Lt_0070:	.ascii	"date\0"
.balign 4
Lt_0071:	.ascii	"fb_Date\0"
.balign 4
Lt_0072:	.ascii	"shell\0"
.balign 4
Lt_0073:	.ascii	"fb_Shell\0"
.balign 4
Lt_0074:	.ascii	"system\0"
.balign 4
Lt_0075:	.ascii	"stop\0"
.balign 4
Lt_0076:	.ascii	"run\0"
.balign 4
Lt_0077:	.ascii	"fb_Run\0"
.balign 4
Lt_0078:	.ascii	"chain\0"
.balign 4
Lt_0079:	.ascii	"fb_Chain\0"
.balign 4
Lt_007A:	.ascii	"exec\0"
.balign 4
Lt_007B:	.ascii	"fb_Exec\0"
.balign 4
Lt_007C:	.ascii	"environ\0"
.balign 4
Lt_007D:	.ascii	"fb_GetEnviron\0"
.balign 4
Lt_007E:	.ascii	"setenviron\0"
.balign 4
Lt_007F:	.ascii	"fb_SetEnviron\0"
.balign 4
Lt_0080:	.ascii	"sleep\0"
.balign 4
Lt_0081:	.ascii	"fb_Sleep\0"
.balign 4
Lt_0082:	.ascii	"fb_SleepQB\0"
.balign 4
Lt_0083:	.ascii	"fb_SleepEx\0"
.balign 4
Lt_0084:	.ascii	"dir\0"
.balign 4
Lt_0085:	.ascii	"fb_DirNext\0"
.balign 4
Lt_0086:	.ascii	"fb_DirNext64\0"
.balign 4
Lt_0087:	.ascii	"fb_Dir\0"
.balign 4
Lt_0088:	.ascii	"fb_Dir64\0"
.balign 4
Lt_0089:	.ascii	"settime\0"
.balign 4
Lt_008A:	.ascii	"fb_SetTime\0"
.balign 4
Lt_008B:	.ascii	"setdate\0"
.balign 4
Lt_008C:	.ascii	"fb_SetDate\0"
.balign 4
Lt_008D:	.ascii	"threadcreate\0"
.balign 4
Lt_008E:	.ascii	"fb_ThreadCreate\0"
.balign 4
Lt_008F:	.ascii	"threadwait\0"
.balign 4
Lt_0090:	.ascii	"fb_ThreadWait\0"
.balign 4
Lt_0091:	.ascii	"fb_ThreadCall\0"
.balign 4
Lt_0092:	.ascii	"mutexcreate\0"
.balign 4
Lt_0093:	.ascii	"fb_MutexCreate\0"
.balign 4
Lt_0094:	.ascii	"mutexdestroy\0"
.balign 4
Lt_0095:	.ascii	"fb_MutexDestroy\0"
.balign 4
Lt_0096:	.ascii	"mutexlock\0"
.balign 4
Lt_0097:	.ascii	"fb_MutexLock\0"
.balign 4
Lt_0098:	.ascii	"mutexunlock\0"
.balign 4
Lt_0099:	.ascii	"fb_MutexUnlock\0"
.balign 4
Lt_009A:	.ascii	"condcreate\0"
.balign 4
Lt_009B:	.ascii	"fb_CondCreate\0"
.balign 4
Lt_009C:	.ascii	"conddestroy\0"
.balign 4
Lt_009D:	.ascii	"fb_CondDestroy\0"
.balign 4
Lt_009E:	.ascii	"condsignal\0"
.balign 4
Lt_009F:	.ascii	"fb_CondSignal\0"
.balign 4
Lt_00A0:	.ascii	"condbroadcast\0"
.balign 4
Lt_00A1:	.ascii	"fb_CondBroadcast\0"
.balign 4
Lt_00A2:	.ascii	"condwait\0"
.balign 4
Lt_00A3:	.ascii	"fb_CondWait\0"
.balign 4
Lt_00A4:	.ascii	"dylibload\0"
.balign 4
Lt_00A5:	.ascii	"fb_DylibLoad\0"
.balign 4
Lt_00A6:	.ascii	"dylibsymbol\0"
.balign 4
Lt_00A7:	.ascii	"fb_DylibSymbol\0"
.balign 4
Lt_00A8:	.ascii	"fb_DylibSymbolByOrd\0"
.balign 4
Lt_00A9:	.ascii	"dylibfree\0"
.balign 4
Lt_00AA:	.ascii	"fb_DylibFree\0"
.balign 4
Lt_00AB:	.ascii	"beep\0"
.balign 4
Lt_00AC:	.ascii	"fb_Beep\0"
.balign 4
Lt_00AD:	.ascii	"mkdir\0"
.balign 4
Lt_00AE:	.ascii	"fb_MkDir\0"
.balign 4
Lt_00AF:	.ascii	"rmdir\0"
.balign 4
Lt_00B0:	.ascii	"fb_RmDir\0"
.balign 4
Lt_00B1:	.ascii	"chdir\0"
.balign 4
Lt_00B2:	.ascii	"fb_ChDir\0"
.balign 4
Lt_00BF:	.ascii	"386\0"
.balign 4
Lt_00C2:	.ascii	"486\0"
.balign 4
Lt_00C5:	.ascii	"586\0"
.balign 4
Lt_00C7:	.ascii	"686\0"
.balign 4
Lt_00C8:	.ascii	"This program requires at least a \0"
.balign 4
Lt_00C9:	.ascii	" to run.\0"
.balign 4
Lt_00D1:	.ascii	"This program requires SSE and SSE2 instructions to run.\0"
.balign 4
Lt_00F2:	.ascii	"ffi\0"

.section .ctors
.int fb_ctor__rtlzsystem
