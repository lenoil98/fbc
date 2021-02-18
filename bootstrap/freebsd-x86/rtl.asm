	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLINIT
RTLINIT:
.Lt_005F:
push 6
push 12
push 32
lea eax, [CTX]
push eax
call LISTINIT
add esp, 16
call RTLARRAYMODINIT
call RTLCONSOLEMODINIT
call RTLDATAMODINIT
call RTLERRORMODINIT
call RTLFILEMODINIT
call RTLGFXMODINIT
call RTLMACROMODINIT
call RTLMATHMODINIT
call RTLMEMMODINIT
call RTLPRINTMODINIT
call RTLPROFILEMODINIT
call RTLSTRINGMODINIT
call RTLSYSTEMMODINIT
call RTLGOSUBMODINIT
call RTLOOPMODINIT
.Lt_0060:
ret
.balign 16

.globl RTLEND
RTLEND:
.Lt_0061:
call RTLOOPMODEND
call RTLGOSUBMODEND
call RTLSYSTEMMODEND
call RTLSTRINGMODEND
call RTLPROFILEMODEND
call RTLPRINTMODEND
call RTLMEMMODEND
call RTLMATHMODEND
call RTLMACROMODEND
call RTLGFXMODEND
call RTLFILEMODEND
call RTLERRORMODEND
call RTLDATAMODEND
call RTLCONSOLEMODEND
call RTLARRAYMODEND
lea eax, [CTX]
push eax
call LISTEND
add esp, 4
push offset Lt_005E
call fb_ArrayClear
add esp, 4
.Lt_0062:
ret
.balign 16

.globl RTLADDINTRINSICPROCS
RTLADDINTRINSICPROCS:
push ebp
mov ebp, esp
sub esp, 92
push ebx
.Lt_0063:
.Lt_0065:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_0069
jmp .Lt_0066
.Lt_0069:
.Lt_0068:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], -1
jne .Lt_006B
mov ebx, dword ptr [ENV+252]
mov dword ptr [ebp-8], ebx
.Lt_006B:
.Lt_006A:
mov dword ptr [ebp-12], -1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
and eax, 4
je .Lt_006D
mov eax, dword ptr [ENV+888]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.Lt_006D:
.Lt_006C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 16384
je .Lt_006F
call FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-12], eax
.Lt_006F:
.Lt_006E:
cmp dword ptr [ebp-12], 0
je .Lt_0071
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 256
test ebx, ebx
je .Lt_0073
mov ebx, dword ptr [ENV+136]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
.Lt_0073:
.Lt_0072:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
and eax, 1024
test eax, eax
je .Lt_0075
mov eax, dword ptr [ENV+136]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.Lt_0075:
.Lt_0074:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 512
test ebx, ebx
je .Lt_0077
mov ebx, dword ptr [ENV+136]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
.Lt_0077:
.Lt_0076:
.Lt_0071:
.Lt_0070:
cmp dword ptr [ebp-12], 0
je .Lt_0079
push 0
call SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-36], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
dec ebx
mov dword ptr [ebp-40], ebx
jmp .Lt_007B
.Lt_007E:
mov ebx, dword ptr [ebp-36]
imul ebx, 20
mov eax, dword ptr [ebp+8]
add eax, ebx
lea ebx, [eax+28]
mov dword ptr [ebp-44], ebx
mov dword ptr [ebp-48], 0
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+8], 0
je .Lt_0081
mov ebx, dword ptr [ebp-44]
mov eax, dword ptr [ebx]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-64], ebx
jmp .Lt_0083
.Lt_0085:
push offset Lt_0000
call ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-56], eax
jmp .Lt_0082
.Lt_0086:
mov eax, dword ptr [ebp-44]
push dword ptr [eax]
mov eax, dword ptr [ebp-44]
fild dword ptr [eax+12]
sub esp,8
fstp qword ptr [esp]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-56], eax
jmp .Lt_0082
.Lt_0087:
push 0
call SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-72], eax
mov dword ptr [ebp-76], 0
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+12]
dec ebx
mov dword ptr [ebp-80], ebx
jmp .Lt_0089
.Lt_008C:
inc dword ptr [ebp-36]
mov ebx, dword ptr [ebp-36]
imul ebx, 20
mov eax, dword ptr [ebp+8]
add eax, ebx
lea ebx, [eax+28]
mov dword ptr [ebp-84], ebx
mov ebx, dword ptr [ebp-84]
cmp dword ptr [ebx+8], 0
je .Lt_008F
mov ebx, dword ptr [ebp-84]
mov eax, dword ptr [ebx]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-92], ebx
jmp .Lt_0091
.Lt_0093:
push offset Lt_0000
call ASTNEWCONSTSTR
add esp, 4
mov dword ptr [ebp-68], eax
jmp .Lt_0090
.Lt_0094:
mov eax, dword ptr [ebp-84]
push dword ptr [eax]
mov eax, dword ptr [ebp-84]
fild dword ptr [eax+12]
sub esp,8
fstp qword ptr [esp]
call ASTNEWCONSTF
add esp, 12
mov dword ptr [ebp-68], eax
jmp .Lt_0090
.Lt_0095:
push 0
mov eax, dword ptr [ebp-84]
push dword ptr [eax]
mov eax, dword ptr [ebp-84]
mov ecx, dword ptr [eax+12]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-68], eax
jmp .Lt_0090
.Lt_0091:
mov eax, dword ptr [ebp-92]
add eax, 4294967281
cmp eax, 2
ja .Lt_0095
mov eax, dword ptr [ebp-92]
jmp dword ptr [.LT_0096+eax*4-60]
.LT_0096:
.int .Lt_0094
.int .Lt_0094
.int .Lt_0093
.Lt_0090:
jmp .Lt_008E
.Lt_008F:
mov dword ptr [ebp-68], 0
.Lt_008E:
push 0
push 0
mov eax, dword ptr [ebp-84]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-84]
cmp dword ptr [eax+4], 3
jne .Lt_0097
mov dword ptr [ebp-88], -1
jmp .Lt_00B4
.Lt_0097:
mov dword ptr [ebp-88], 0
.Lt_00B4:
push dword ptr [ebp-88]
push 0
mov eax, dword ptr [ebp-84]
push dword ptr [eax]
push 0
push dword ptr [ebp-72]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-4], eax
push dword ptr [ebp-68]
push dword ptr [ebp-4]
push dword ptr [ebp-72]
call SYMBMAKEPARAMOPTIONAL
add esp, 12
.Lt_008A:
inc dword ptr [ebp-76]
.Lt_0089:
mov eax, dword ptr [ebp-80]
cmp dword ptr [ebp-76], eax
jle .Lt_008C
.Lt_008B:
inc dword ptr [ebp-36]
mov eax, dword ptr [ebp-36]
imul eax, 20
mov ecx, dword ptr [ebp+8]
add ecx, eax
lea eax, [ecx+28]
mov dword ptr [ebp-76], eax
push dword ptr [ENV+252]
push 0
push 0
push 0
mov eax, dword ptr [ebp-76]
push dword ptr [eax]
push dword ptr [ebp-72]
call SYMBADDPROCPTR
add esp, 24
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-56], 0
jmp .Lt_0082
.Lt_009A:
push 0
mov eax, dword ptr [ebp-44]
push dword ptr [eax]
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+12]
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-56], eax
jmp .Lt_0082
.Lt_0083:
mov eax, dword ptr [ebp-64]
add eax, 4294967281
cmp eax, 39
ja .Lt_009A
mov eax, dword ptr [ebp-64]
jmp dword ptr [.LT_009B+eax*4-60]
.LT_009B:
.int .Lt_0086
.int .Lt_0086
.int .Lt_0085
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_0087
.Lt_0082:
jmp .Lt_0080
.Lt_0081:
mov dword ptr [ebp-56], 0
.Lt_0080:
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], -2147483648
jne .Lt_009D
mov dword ptr [ebp-52], 32
.Lt_009D:
.Lt_009C:
push 0
push 0
mov ebx, dword ptr [ebp-44]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+4], 3
jne .Lt_009E
mov dword ptr [ebp-60], -1
jmp .Lt_00B5
.Lt_009E:
mov dword ptr [ebp-60], 0
.Lt_00B5:
push dword ptr [ebp-60]
push dword ptr [ebp-48]
push dword ptr [ebp-52]
push 0
push dword ptr [ebp-16]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-4], eax
push dword ptr [ebp-56]
push dword ptr [ebp-4]
push dword ptr [ebp-16]
call SYMBMAKEPARAMOPTIONAL
add esp, 12
.Lt_007C:
inc dword ptr [ebp-36]
.Lt_007B:
mov eax, dword ptr [ebp-40]
cmp dword ptr [ebp-36], eax
jle .Lt_007E
.Lt_007D:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 1
test ebx, ebx
je .Lt_00A1
mov dword ptr [ebp-24], 1
.Lt_00A1:
.Lt_00A0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
and eax, 64
test eax, eax
je .Lt_00A3
or dword ptr [ebp-20], 1048576
.Lt_00A3:
.Lt_00A2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 128
test ebx, ebx
je .Lt_00A5
cmp dword ptr [ENV+136], 3
jne .Lt_00A7
cmp dword ptr [ebp-32], 0
jne .Lt_00A9
push 0
push 0
push dword ptr [ebp-28]
push -1
push offset Lt_00BB
call fb_StrAssign
add esp, 20
mov ebx, dword ptr [Lt_00BB]
mov dword ptr [ebp-32], ebx
.Lt_00A9:
.Lt_00A8:
push 0
push -1
push 0
push dword ptr [ebp-28]
push 3
push offset Lt_00AA
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_00BC
call fb_StrAssign
add esp, 20
mov eax, dword ptr [Lt_00BC]
mov dword ptr [ebp-28], eax
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
cmp dword ptr [ebp-32], 0
jne .Lt_00AD
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-32], eax
.Lt_00AD:
.Lt_00AC:
push 20
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-32]
push dword ptr [ebp-28]
push dword ptr [ebp-16]
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_00AF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+100], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+20]
and ebx, 2
test ebx, ebx
je .Lt_00B1
mov ebx, dword ptr [ebp-16]
or dword ptr [ebx+12], 64
.Lt_00B1:
.Lt_00B0:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+20]
and ecx, 2048
je .Lt_00B3
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+12], 524288
.Lt_00B3:
.Lt_00B2:
jmp .Lt_00AE
.Lt_00AF:
push 0
push 1
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx]
push 4
call ERRREPORTEX
add esp, 20
.Lt_00AE:
.Lt_0079:
.Lt_0078:
add dword ptr [ebp+8], 348
.Lt_0067:
jmp .Lt_0065
.Lt_0066:
.Lt_0064:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00BB,12
.balign 4
	.lcomm	Lt_00BC,12

.section .text
.balign 16

.globl RTLPROCLOOKUP
RTLPROCLOOKUP:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BD:
mov eax, dword ptr [ebp+12]
cmp dword ptr [RTLLOOKUPTB+eax*4], 0
jne .Lt_00C0
push 0
push 0
push dword ptr [ebp+8]
lea eax, [SYMB+98352]
push eax
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00C2
cmp dword ptr [ENV+136], 3
jne .Lt_00C4
push 0
push -1
push 0
push dword ptr [ebp+8]
push 3
push offset Lt_00AA
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_00C8
call fb_StrAssign
add esp, 20
mov eax, dword ptr [Lt_00C8]
mov dword ptr [ebp+8], eax
push 0
push 0
push dword ptr [ebp+8]
lea eax, [SYMB+98352]
push eax
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00C7
push 0
push 1
push 0
push dword ptr [ebp+8]
push 8
call ERRREPORTEX
add esp, 20
mov eax, dword ptr [ebp+12]
mov dword ptr [RTLLOOKUPTB+eax*4], 0
jmp .Lt_00C6
.Lt_00C7:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
mov dword ptr [RTLLOOKUPTB+ebx*4], ecx
.Lt_00C6:
jmp .Lt_00C3
.Lt_00C4:
push 0
push 1
push 0
push dword ptr [ebp+8]
push 8
call ERRREPORTEX
add esp, 20
mov ecx, dword ptr [ebp+12]
mov dword ptr [RTLLOOKUPTB+ecx*4], 0
.Lt_00C3:
jmp .Lt_00C1
.Lt_00C2:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
mov dword ptr [RTLLOOKUPTB+ebx*4], eax
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [RTLLOOKUPTB+eax*4]
mov dword ptr [ebp-4], ebx
.Lt_00BE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00C8,12

.section .text
.balign 16

.globl RTLOVLPROCCALL
RTLOVLPROCCALL:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C9:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
lea eax, [ebp-24]
push eax
lea eax, [CTX]
push eax
call SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+4], 1
inc dword ptr [ebp-12]
cmp dword ptr [ebp+16], 0
je .Lt_00CC
push 0
lea ebx, [ebp-24]
push ebx
lea ebx, [CTX]
push ebx
call SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+4], 1
inc dword ptr [ebp-12]
.Lt_00CC:
.Lt_00CB:
push 0
lea ebx, [ebp-8]
push ebx
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_00CE
lea eax, [ebp-24]
push eax
lea eax, [CTX]
push eax
call SYMBFREEOVLCALLARGS
add esp, 8
mov dword ptr [ebp-4], 0
jmp .Lt_00CA
.Lt_00CE:
.Lt_00CD:
push 0
push dword ptr [ebp-32]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-28], eax
.Lt_00CF:
cmp dword ptr [ebp-28], 0
je .Lt_00D0
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx+4]
push -2147483648
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx]
push dword ptr [ebp-36]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00D2
mov dword ptr [ebp-4], 0
jmp .Lt_00CA
.Lt_00D2:
.Lt_00D1:
push dword ptr [ebp-28]
lea eax, [CTX]
push eax
call LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-28], eax
jmp .Lt_00CF
.Lt_00D0:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-4], eax
.Lt_00CA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLCALCEXPRLEN
RTLCALCEXPRLEN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00D3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .Lt_00D6
.Lt_00D8:
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call RTLCALCSTRLEN
add esp, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
jmp .Lt_00D5
.Lt_00D9:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-16]
call SYMBCALCLEN
add esp, 8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
jmp .Lt_00D5
.Lt_00D6:
mov eax, dword ptr [ebp-20]
add eax, 4294967292
cmp eax, 14
ja .Lt_00D9
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_00DA+eax*4-16]
.LT_00DA:
.int .Lt_00D8
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D8
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D9
.int .Lt_00D8
.Lt_00D5:
.Lt_00D4:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLCALCSTRLEN
RTLCALCSTRLEN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00DB:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_00DD
mov dword ptr [ebp-16], 24
jmp .Lt_00EF
.Lt_00DD:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00EF:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .Lt_00E0
.Lt_00E2:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_00DF
.Lt_00E3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .Lt_00E5
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_00E4
.Lt_00E5:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+12]
and ebx, 511
cmp eax, ebx
je .Lt_00E7
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_00E6
.Lt_00E7:
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+40]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], eax
.Lt_00E6:
.Lt_00E4:
jmp .Lt_00DF
.Lt_00E8:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00EA
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_00E9
.Lt_00EA:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+28]
and ecx, 511
mov eax, dword ptr [ebp+12]
and eax, 511
cmp ecx, eax
je .Lt_00EC
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_00EB
.Lt_00EC:
mov ecx, dword ptr [SYMB_DTYPETB+200]
mov eax, ecx
sar eax, 31
push eax
push ecx
mov ecx, dword ptr [ebp-12]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call __divdi3
add esp, 16
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.Lt_00EB:
.Lt_00E9:
jmp .Lt_00DF
.Lt_00ED:
mov dword ptr [ebp-8], 4294967295
mov dword ptr [ebp-4], 4294967295
jmp .Lt_00DF
.Lt_00E0:
mov eax, dword ptr [ebp-20]
add eax, 4294967294
cmp eax, 16
ja .Lt_00ED
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_00EE+eax*4-8]
.LT_00EE:
.int .Lt_00E2
.int .Lt_00E2
.int .Lt_00E3
.int .Lt_00ED
.int .Lt_00ED
.int .Lt_00E8
.int .Lt_00ED
.int .Lt_00ED
.int .Lt_00ED
.int .Lt_00ED
.int .Lt_00ED
.int .Lt_00ED
.int .Lt_00ED
.int .Lt_00ED
.int .Lt_00ED
.int .Lt_00ED
.int .Lt_00E3
.Lt_00DF:
.Lt_00DC:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__rtl:
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

.section .data
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
.balign 4
	.lcomm	CTX,32
.balign 4
	.lcomm	RTLLOOKUPTB,1464

.section .data
.balign 4
Lt_005E:
.int RTLLOOKUPTB
.int RTLLOOKUPTB
.int 1464
.int 4
.int 1
.int 49
.int 366
.int 0
.int 365
.balign 4
Lt_00AA:	.ascii	"__\0"

.section .ctors
.int fb_ctor__rtl
