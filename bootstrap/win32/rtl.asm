	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLINIT@0
_RTLINIT@0:
.Lt_0060:
push 6
push 12
push 32
lea eax, [_CTX]
push eax
call _LISTINIT@16
call _RTLARRAYMODINIT@0
call _RTLCONSOLEMODINIT@0
call _RTLDATAMODINIT@0
call _RTLERRORMODINIT@0
call _RTLFILEMODINIT@0
call _RTLGFXMODINIT@0
call _RTLMACROMODINIT@0
call _RTLMATHMODINIT@0
call _RTLMEMMODINIT@0
call _RTLPRINTMODINIT@0
call _RTLPROFILEMODINIT@0
call _RTLSTRINGMODINIT@0
call _RTLSYSTEMMODINIT@0
call _RTLGOSUBMODINIT@0
call _RTLOOPMODINIT@0
.Lt_0061:
ret
.balign 16

.globl _RTLEND@0
_RTLEND@0:
.Lt_0062:
call _RTLOOPMODEND@0
call _RTLGOSUBMODEND@0
call _RTLSYSTEMMODEND@0
call _RTLSTRINGMODEND@0
call _RTLPROFILEMODEND@0
call _RTLPRINTMODEND@0
call _RTLMEMMODEND@0
call _RTLMATHMODEND@0
call _RTLMACROMODEND@0
call _RTLGFXMODEND@0
call _RTLFILEMODEND@0
call _RTLERRORMODEND@0
call _RTLDATAMODEND@0
call _RTLCONSOLEMODEND@0
call _RTLARRAYMODEND@0
lea eax, [_CTX]
push eax
call _LISTEND@4
push offset _Lt_005F
call _fb_ArrayClear@4
.Lt_0063:
ret
.balign 16

.globl _RTLADDINTRINSICPROCS@4
_RTLADDINTRINSICPROCS@4:
push ebp
mov ebp, esp
sub esp, 92
push ebx
.Lt_0064:
.Lt_0066:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_006A
jmp .Lt_0067
.Lt_006A:
.Lt_0069:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], -1
jne .Lt_006C
mov ebx, dword ptr [_ENV+252]
mov dword ptr [ebp-8], ebx
.Lt_006C:
.Lt_006B:
mov dword ptr [ebp-12], -1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
and eax, 4
je .Lt_006E
mov eax, dword ptr [_ENV+888]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.Lt_006E:
.Lt_006D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 16384
je .Lt_0070
call _FBGETCPUFAMILY@0
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-12], eax
.Lt_0070:
.Lt_006F:
cmp dword ptr [ebp-12], 0
je .Lt_0072
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 256
test ebx, ebx
je .Lt_0074
mov ebx, dword ptr [_ENV+136]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
.Lt_0074:
.Lt_0073:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
and eax, 1024
test eax, eax
je .Lt_0076
mov eax, dword ptr [_ENV+136]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
.Lt_0076:
.Lt_0075:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 512
test ebx, ebx
je .Lt_0078
mov ebx, dword ptr [_ENV+136]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
.Lt_0078:
.Lt_0077:
.Lt_0072:
.Lt_0071:
cmp dword ptr [ebp-12], 0
je .Lt_007A
push 0
call _SYMBPREADDPROC@4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-36], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
dec ebx
mov dword ptr [ebp-40], ebx
jmp .Lt_007C
.Lt_007F:
mov ebx, dword ptr [ebp-36]
imul ebx, 20
mov eax, dword ptr [ebp+8]
add eax, ebx
lea ebx, [eax+28]
mov dword ptr [ebp-44], ebx
mov dword ptr [ebp-48], 0
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+8], 0
je .Lt_0082
mov ebx, dword ptr [ebp-44]
mov eax, dword ptr [ebx]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-64], ebx
jmp .Lt_0084
.Lt_0086:
push offset _Lt_0000
call _ASTNEWCONSTSTR@4
mov dword ptr [ebp-56], eax
jmp .Lt_0083
.Lt_0087:
mov eax, dword ptr [ebp-44]
push dword ptr [eax]
mov eax, dword ptr [ebp-44]
fild dword ptr [eax+12]
sub esp,8
fstp qword ptr [esp]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-56], eax
jmp .Lt_0083
.Lt_0088:
push 0
call _SYMBPREADDPROC@4
mov dword ptr [ebp-72], eax
mov dword ptr [ebp-76], 0
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+12]
dec ebx
mov dword ptr [ebp-80], ebx
jmp .Lt_008A
.Lt_008D:
inc dword ptr [ebp-36]
mov ebx, dword ptr [ebp-36]
imul ebx, 20
mov eax, dword ptr [ebp+8]
add eax, ebx
lea ebx, [eax+28]
mov dword ptr [ebp-84], ebx
mov ebx, dword ptr [ebp-84]
cmp dword ptr [ebx+8], 0
je .Lt_0090
mov ebx, dword ptr [ebp-84]
mov eax, dword ptr [ebx]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-92], ebx
jmp .Lt_0092
.Lt_0094:
push offset _Lt_0000
call _ASTNEWCONSTSTR@4
mov dword ptr [ebp-68], eax
jmp .Lt_0091
.Lt_0095:
mov eax, dword ptr [ebp-84]
push dword ptr [eax]
mov eax, dword ptr [ebp-84]
fild dword ptr [eax+12]
sub esp,8
fstp qword ptr [esp]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-68], eax
jmp .Lt_0091
.Lt_0096:
push 0
mov eax, dword ptr [ebp-84]
push dword ptr [eax]
mov eax, dword ptr [ebp-84]
mov ecx, dword ptr [eax+12]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-68], eax
jmp .Lt_0091
.Lt_0092:
mov eax, dword ptr [ebp-92]
add eax, 4294967281
cmp eax, 2
ja .Lt_0096
mov eax, dword ptr [ebp-92]
jmp dword ptr [_.LT_0097+eax*4-60]
_.LT_0097:
.int .Lt_0095
.int .Lt_0095
.int .Lt_0094
.Lt_0091:
jmp .Lt_008F
.Lt_0090:
mov dword ptr [ebp-68], 0
.Lt_008F:
push 0
push 0
mov eax, dword ptr [ebp-84]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-84]
cmp dword ptr [eax+4], 3
jne .Lt_0098
mov dword ptr [ebp-88], -1
jmp .Lt_00B5
.Lt_0098:
mov dword ptr [ebp-88], 0
.Lt_00B5:
push dword ptr [ebp-88]
push 0
mov eax, dword ptr [ebp-84]
push dword ptr [eax]
push 0
push dword ptr [ebp-72]
call _SYMBADDPROCPARAM@32
mov dword ptr [ebp-4], eax
push dword ptr [ebp-68]
push dword ptr [ebp-4]
push dword ptr [ebp-72]
call _SYMBMAKEPARAMOPTIONAL@12
.Lt_008B:
inc dword ptr [ebp-76]
.Lt_008A:
mov eax, dword ptr [ebp-80]
cmp dword ptr [ebp-76], eax
jle .Lt_008D
.Lt_008C:
inc dword ptr [ebp-36]
mov eax, dword ptr [ebp-36]
imul eax, 20
mov ecx, dword ptr [ebp+8]
add ecx, eax
lea eax, [ecx+28]
mov dword ptr [ebp-76], eax
push dword ptr [_ENV+252]
push 0
push 0
push 0
mov eax, dword ptr [ebp-76]
push dword ptr [eax]
push dword ptr [ebp-72]
call _SYMBADDPROCPTR@24
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-56], 0
jmp .Lt_0083
.Lt_009B:
push 0
mov eax, dword ptr [ebp-44]
push dword ptr [eax]
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+12]
mov ecx, ebx
sar ecx, 31
push ecx
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-56], eax
jmp .Lt_0083
.Lt_0084:
mov eax, dword ptr [ebp-64]
add eax, 4294967281
cmp eax, 39
ja .Lt_009B
mov eax, dword ptr [ebp-64]
jmp dword ptr [_.LT_009C+eax*4-60]
_.LT_009C:
.int .Lt_0087
.int .Lt_0087
.int .Lt_0086
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_009B
.int .Lt_0088
.Lt_0083:
jmp .Lt_0081
.Lt_0082:
mov dword ptr [ebp-56], 0
.Lt_0081:
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-52], ebx
cmp dword ptr [ebp-52], -2147483648
jne .Lt_009E
mov dword ptr [ebp-52], 32
.Lt_009E:
.Lt_009D:
push 0
push 0
mov ebx, dword ptr [ebp-44]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebx+4], 3
jne .Lt_009F
mov dword ptr [ebp-60], -1
jmp .Lt_00B6
.Lt_009F:
mov dword ptr [ebp-60], 0
.Lt_00B6:
push dword ptr [ebp-60]
push dword ptr [ebp-48]
push dword ptr [ebp-52]
push 0
push dword ptr [ebp-16]
call _SYMBADDPROCPARAM@32
mov dword ptr [ebp-4], eax
push dword ptr [ebp-56]
push dword ptr [ebp-4]
push dword ptr [ebp-16]
call _SYMBMAKEPARAMOPTIONAL@12
.Lt_007D:
inc dword ptr [ebp-36]
.Lt_007C:
mov eax, dword ptr [ebp-40]
cmp dword ptr [ebp-36], eax
jle .Lt_007F
.Lt_007E:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
and ebx, 1
test ebx, ebx
je .Lt_00A2
mov dword ptr [ebp-24], 1
.Lt_00A2:
.Lt_00A1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
and eax, 64
test eax, eax
je .Lt_00A4
or dword ptr [ebp-20], 1048576
.Lt_00A4:
.Lt_00A3:
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
je .Lt_00A6
cmp dword ptr [_ENV+136], 3
jne .Lt_00A8
cmp dword ptr [ebp-32], 0
jne .Lt_00AA
push 0
push 0
push dword ptr [ebp-28]
push -1
push offset _Lt_00BC
call _fb_StrAssign@20
mov ebx, dword ptr [_Lt_00BC]
mov dword ptr [ebp-32], ebx
.Lt_00AA:
.Lt_00A9:
push 0
push -1
push 0
push dword ptr [ebp-28]
push 3
push offset _Lt_00AB
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_00BD
call _fb_StrAssign@20
mov eax, dword ptr [_Lt_00BD]
mov dword ptr [ebp-28], eax
.Lt_00A8:
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
cmp dword ptr [ebp-32], 0
jne .Lt_00AE
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-32], eax
.Lt_00AE:
.Lt_00AD:
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
call _SYMBADDPROC@36
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_00B0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+100], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+20]
and ebx, 2
test ebx, ebx
je .Lt_00B2
mov ebx, dword ptr [ebp-16]
or dword ptr [ebx+12], 64
.Lt_00B2:
.Lt_00B1:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+20]
and ecx, 2048
je .Lt_00B4
mov ecx, dword ptr [ebp-16]
or dword ptr [ecx+12], 524288
.Lt_00B4:
.Lt_00B3:
jmp .Lt_00AF
.Lt_00B0:
push 0
push 1
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx]
push 4
call _ERRREPORTEX@20
.Lt_00AF:
.Lt_007A:
.Lt_0079:
add dword ptr [ebp+8], 348
.Lt_0068:
jmp .Lt_0066
.Lt_0067:
.Lt_0065:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00BC,12
.balign 4
	.lcomm	_Lt_00BD,12

.section .text
.balign 16

.globl _RTLPROCLOOKUP@8
_RTLPROCLOOKUP@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BE:
mov eax, dword ptr [ebp+12]
cmp dword ptr [_RTLLOOKUPTB+eax*4], 0
jne .Lt_00C1
push 0
push 0
push dword ptr [ebp+8]
lea eax, [_SYMB+98352]
push eax
call _SYMBLOOKUPAT@16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00C3
cmp dword ptr [_ENV+136], 3
jne .Lt_00C5
push 0
push -1
push 0
push dword ptr [ebp+8]
push 3
push offset _Lt_00AB
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_00C9
call _fb_StrAssign@20
mov eax, dword ptr [_Lt_00C9]
mov dword ptr [ebp+8], eax
push 0
push 0
push dword ptr [ebp+8]
lea eax, [_SYMB+98352]
push eax
call _SYMBLOOKUPAT@16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00C8
push 0
push 1
push 0
push dword ptr [ebp+8]
push 8
call _ERRREPORTEX@20
mov eax, dword ptr [ebp+12]
mov dword ptr [_RTLLOOKUPTB+eax*4], 0
jmp .Lt_00C7
.Lt_00C8:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
mov dword ptr [_RTLLOOKUPTB+ebx*4], ecx
.Lt_00C7:
jmp .Lt_00C4
.Lt_00C5:
push 0
push 1
push 0
push dword ptr [ebp+8]
push 8
call _ERRREPORTEX@20
mov ecx, dword ptr [ebp+12]
mov dword ptr [_RTLLOOKUPTB+ecx*4], 0
.Lt_00C4:
jmp .Lt_00C2
.Lt_00C3:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
mov dword ptr [_RTLLOOKUPTB+ebx*4], eax
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [_RTLLOOKUPTB+eax*4]
mov dword ptr [ebp-4], ebx
.Lt_00BF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_00C9,12

.section .text
.balign 16

.globl _RTLOVLPROCCALL@12
_RTLOVLPROCCALL@12:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_00CA:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
lea eax, [ebp-24]
push eax
lea eax, [_CTX]
push eax
call _SYMBALLOCOVLCALLARG@12
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+4], 1
inc dword ptr [ebp-12]
cmp dword ptr [ebp+16], 0
je .Lt_00CD
push 0
lea ebx, [ebp-24]
push ebx
lea ebx, [_CTX]
push ebx
call _SYMBALLOCOVLCALLARG@12
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+4], 1
inc dword ptr [ebp-12]
.Lt_00CD:
.Lt_00CC:
push 0
lea ebx, [ebp-8]
push ebx
push dword ptr [ebp-20]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _SYMBFINDCLOSESTOVLPROC@20
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_00CF
lea eax, [ebp-24]
push eax
lea eax, [_CTX]
push eax
call _SYMBFREEOVLCALLARGS@8
mov dword ptr [ebp-4], 0
jmp .Lt_00CB
.Lt_00CF:
.Lt_00CE:
push 0
push dword ptr [ebp-32]
call _ASTNEWCALL@8
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-28], eax
.Lt_00D0:
cmp dword ptr [ebp-28], 0
je .Lt_00D1
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx+4]
push -2147483648
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx]
push dword ptr [ebp-36]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00D3
mov dword ptr [ebp-4], 0
jmp .Lt_00CB
.Lt_00D3:
.Lt_00D2:
push dword ptr [ebp-28]
lea eax, [_CTX]
push eax
call _LISTDELNODE@8
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-28], eax
jmp .Lt_00D0
.Lt_00D1:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-4], eax
.Lt_00CB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _RTLCALCEXPRLEN@4
_RTLCALCEXPRLEN@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00D4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
jmp .Lt_00D7
.Lt_00D9:
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _RTLCALCSTRLEN@8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
jmp .Lt_00D6
.Lt_00DA:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-16]
call _SYMBCALCLEN@8
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
jmp .Lt_00D6
.Lt_00D7:
mov eax, dword ptr [ebp-20]
add eax, 4294967292
cmp eax, 14
ja .Lt_00DA
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_00DB+eax*4-16]
_.LT_00DB:
.int .Lt_00D9
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00D9
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00DA
.int .Lt_00D9
.Lt_00D6:
.Lt_00D5:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _RTLCALCSTRLEN@8
_RTLCALCSTRLEN@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00DC:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_00DE
mov dword ptr [ebp-16], 24
jmp .Lt_00F0
.Lt_00DE:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00F0:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .Lt_00E1
.Lt_00E3:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_00E0
.Lt_00E4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .Lt_00E6
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_00E5
.Lt_00E6:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov ebx, dword ptr [ebp+12]
and ebx, 511
cmp eax, ebx
je .Lt_00E8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_00E7
.Lt_00E8:
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+40]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], eax
.Lt_00E7:
.Lt_00E5:
jmp .Lt_00E0
.Lt_00E9:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00EB
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_00EA
.Lt_00EB:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+28]
and ecx, 511
mov eax, dword ptr [ebp+12]
and eax, 511
cmp ecx, eax
je .Lt_00ED
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_00EC
.Lt_00ED:
mov ecx, dword ptr [_SYMB_DTYPETB+200]
mov eax, ecx
sar eax, 31
push eax
push ecx
mov ecx, dword ptr [ebp-12]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
call ___divdi3
add esp, 16
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.Lt_00EC:
.Lt_00EA:
jmp .Lt_00E0
.Lt_00EE:
mov dword ptr [ebp-8], 4294967295
mov dword ptr [ebp-4], 4294967295
jmp .Lt_00E0
.Lt_00E1:
mov eax, dword ptr [ebp-20]
add eax, 4294967294
cmp eax, 16
ja .Lt_00EE
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_00EF+eax*4-8]
_.LT_00EF:
.int .Lt_00E3
.int .Lt_00E3
.int .Lt_00E4
.int .Lt_00EE
.int .Lt_00EE
.int .Lt_00E9
.int .Lt_00EE
.int .Lt_00EE
.int .Lt_00EE
.int .Lt_00EE
.int .Lt_00EE
.int .Lt_00EE
.int .Lt_00EE
.int .Lt_00EE
.int .Lt_00EE
.int .Lt_00EE
.int .Lt_00E4
.Lt_00E0:
.Lt_00DD:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_fb_ctor__rtl:
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

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
.balign 4
	.lcomm	_CTX,32
.balign 4
	.lcomm	_RTLLOOKUPTB,1464

.section .data
.balign 4
_Lt_005F:
.int _RTLLOOKUPTB
.int _RTLLOOKUPTB
.int 1464
.int 4
.int 1
.int 49
.int 366
.int 0
.int 365
.balign 4
_Lt_00AB:	.ascii	"__\0"

.section .ctors
.int _fb_ctor__rtl
