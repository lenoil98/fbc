	.intel_syntax noprefix

.section .text
.balign 16

.globl _REGNEWCLASS@16
_REGNEWCLASS@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0073:
mov dword ptr [ebp-8], 0
push 304
call _XCALLOCATE@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+52], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+56], 0
jne .Lt_0076
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _REGINITCLASS@8
jmp .Lt_0075
.Lt_0076:
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _SREGINITCLASS@8
.Lt_0075:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0074:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _REGDELCLASS@4
_REGDELCLASS@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0077:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_007A
jmp .Lt_0078
.Lt_007A:
.Lt_0079:
push dword ptr [ebp+8]
call _free
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_0078:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
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
_REGPUSH@8:
push ebp
mov ebp, esp
push ebx
.Lt_007B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+132]
mov dword ptr [_Lt_0141], ebx
mov ebx, dword ptr [_Lt_0141]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+132], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_0141]
mov ebx, dword ptr [ecx+128]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_0141]
mov dword ptr [ebx+128], eax
mov eax, dword ptr [_Lt_0141]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.Lt_007C:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0141,4

.section .text
.balign 16
_REGPOP@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_007D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+128]
mov dword ptr [_Lt_0142], ebx
.Lt_007F:
cmp dword ptr [_Lt_0142], 0
je .Lt_0080
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+128]
mov ebx, dword ptr [_Lt_0142]
mov ecx, dword ptr [ebx]
sal ecx, 2
add eax, ecx
mov ecx, dword ptr [ebp+12]
and ecx, dword ptr [eax+76]
test ecx, ecx
je .Lt_0082
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_0142]
cmp dword ptr [ecx+128], eax
jne .Lt_0084
mov eax, dword ptr [_Lt_0142]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ecx+128], ebx
jmp .Lt_0083
.Lt_0084:
mov ebx, dword ptr [_Lt_0142]
mov ecx, dword ptr [_Lt_0143]
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx+4], eax
.Lt_0083:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [_Lt_0142]
mov ebx, dword ptr [eax+132]
mov dword ptr [ecx+4], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [_Lt_0142]
mov dword ptr [ebx+132], ecx
mov ecx, dword ptr [_Lt_0142]
mov ebx, dword ptr [ecx]
mov dword ptr [ebp-4], ebx
jmp .Lt_007E
.Lt_0082:
.Lt_0081:
mov ebx, dword ptr [_Lt_0142]
mov dword ptr [_Lt_0143], ebx
mov ebx, dword ptr [_Lt_0142]
mov ecx, dword ptr [ebx+4]
mov dword ptr [_Lt_0142], ecx
jmp .Lt_007F
.Lt_0080:
mov dword ptr [ebp-4], -1
.Lt_007E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0142,4
.balign 4
	.lcomm	_Lt_0143,4

.section .text
.balign 16
_REGPOPREG@8:
push ebp
mov ebp, esp
push ebx
.Lt_0085:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+128]
mov dword ptr [_Lt_0144], ebx
.Lt_0087:
cmp dword ptr [_Lt_0144], 0
je .Lt_0088
mov ebx, dword ptr [_Lt_0144]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .Lt_008A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_0144]
cmp dword ptr [eax+128], ebx
jne .Lt_008C
mov ebx, dword ptr [_Lt_0144]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+128], ecx
jmp .Lt_008B
.Lt_008C:
mov ecx, dword ptr [_Lt_0144]
mov eax, dword ptr [_Lt_0145]
mov ebx, dword ptr [ecx+4]
mov dword ptr [eax+4], ebx
.Lt_008B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_0144]
mov ecx, dword ptr [ebx+132]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_0144]
mov dword ptr [ecx+132], eax
jmp .Lt_0086
.Lt_008A:
.Lt_0089:
mov eax, dword ptr [_Lt_0144]
mov dword ptr [_Lt_0145], eax
mov eax, dword ptr [_Lt_0144]
mov ecx, dword ptr [eax+4]
mov dword ptr [_Lt_0144], ecx
jmp .Lt_0087
.Lt_0088:
push 0
push 1
push 0
push offset _Lt_008D
push 21
call _ERRREPORTEX@20
.Lt_0086:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0144,4
.balign 4
	.lcomm	_Lt_0145,4

.section .text
.balign 16
_REGCLEAR@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_008E:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+136], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+132], 0
mov dword ptr [_Lt_0146], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_0091
.Lt_0094:
mov ebx, dword ptr [_Lt_0146]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov dword ptr [eax+64], 0
mov eax, dword ptr [_Lt_0146]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+96], 0
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+128]
mov ebx, dword ptr [_Lt_0146]
sal ebx, 2
add eax, ebx
mov dword ptr [eax+108], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [_Lt_0146]
sal eax, 3
add ebx, eax
lea eax, [ebx+12]
mov dword ptr [_Lt_0147], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_0147]
mov ecx, dword ptr [eax+128]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_0147]
mov dword ptr [ecx+128], ebx
mov ebx, dword ptr [_Lt_0147]
mov ecx, dword ptr [_Lt_0146]
mov dword ptr [ebx], ecx
.Lt_0092:
inc dword ptr [_Lt_0146]
.Lt_0091:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [_Lt_0146], ecx
jle .Lt_0094
.Lt_0093:
.Lt_008F:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0147,4
.balign 4
	.lcomm	_Lt_0146,4

.section .text
.balign 16
_REGFINDFAREST@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0095:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_0098
.Lt_009B:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-16], ebx
je .Lt_009D
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+128]
mov ebx, dword ptr [ebp-16]
sal ebx, 2
add eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, dword ptr [eax+76]
je .Lt_009F
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [ebp-16]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx+108]
cmp dword ptr [ebp-8], eax
jae .Lt_00A1
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [ebp-16]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx+108]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.Lt_00A1:
.Lt_00A0:
.Lt_009F:
.Lt_009E:
.Lt_009D:
.Lt_009C:
.Lt_0099:
inc dword ptr [ebp-16]
.Lt_0098:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .Lt_009B
.Lt_009A:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0096:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_REGALLOCATE@16:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A2:
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call _REGPOP@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_00A5
mov dword ptr [ebp-12], -1
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+56], 0
je .Lt_00A6
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 4
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .Lt_0148
.Lt_00A6:
mov dword ptr [ebp-16], 0
.Lt_0148:
cmp dword ptr [ebp-16], 0
je .Lt_00A9
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
.Lt_00A9:
.Lt_00A8:
push dword ptr [ebp-12]
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call _REGFINDFAREST@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+96]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
push dword ptr [eax+64]
call dword ptr [_IR+268]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _REGPOPREG@8
.Lt_00A5:
.Lt_00A4:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp-8]
sal ebx, cl
not ebx
and dword ptr [eax+136], ebx
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+96], ebx
push dword ptr [ebp+12]
call dword ptr [_IR+260]
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+128]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx+108], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_REGALLOCATEREG@16:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00AA:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp+12]
sal ebx, cl
and ebx, dword ptr [eax+136]
test ebx, ebx
je .Lt_00AD
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _REGPOPREG@8
mov ebx, dword ptr [ebp+8]
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
not eax
and dword ptr [ebx+136], eax
.Lt_00AD:
.Lt_00AC:
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+96], eax
push dword ptr [ebp+16]
call dword ptr [_IR+260]
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+128]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx+108], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_00AB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_REGENSURE@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00AE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], -1
jne .Lt_00B1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _REGALLOCATE@16
mov dword ptr [ebp-8], eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call dword ptr [_IR+264]
.Lt_00B1:
.Lt_00B0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00AF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_REGSETOWNER@16:
push ebp
mov ebp, esp
push ebx
.Lt_00B2:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp+12]
sal ebx, cl
not ebx
and dword ptr [eax+136], ebx
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+96], ebx
push dword ptr [ebp+16]
call dword ptr [_IR+260]
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+128]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx+108], eax
.Lt_00B3:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_REGFREE@8:
push ebp
mov ebp, esp
push ebx
.Lt_00B4:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp+12]
sal ebx, cl
and ebx, dword ptr [eax+136]
test ebx, ebx
jne .Lt_00B7
mov ebx, dword ptr [ebp+8]
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
or dword ptr [ebx+136], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov dword ptr [eax+96], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
mov dword ptr [ebx+108], 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _REGPUSH@8
.Lt_00B7:
.Lt_00B6:
.Lt_00B5:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_REGISFREE@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B8:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp+12]
sal ebx, cl
and ebx, dword ptr [eax+136]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_00B9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_REGGETMAXREGS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_00BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_REGGETFIRST@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00BC:
mov dword ptr [ebp-4], 0
.Lt_00BD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_REGGETNEXT@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BE:
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+12], 0
jl .Lt_00C1
inc dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebp+12], ebx
jge .Lt_00C3
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.Lt_00C3:
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_REGGETVREG@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C4:
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+96]
mov dword ptr [eax], ecx
.Lt_00C5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_REGGETREALREG@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00C6:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_00C7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_REGDUMP@4:
push ebp
mov ebp, esp
.Lt_00C8:
.Lt_00C9:
mov esp, ebp
pop ebp
ret 4
.balign 16
_REGINITCLASS@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00CA:
push dword ptr [ebp+8]
call _REGCLEAR@4
mov dword ptr [_Lt_014C], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_00CD
.Lt_00D0:
mov ebx, dword ptr [_Lt_014C]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebp+8]
lea ecx, [eax+128]
mov eax, dword ptr [_Lt_014C]
sal eax, 2
add ecx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ecx+76], eax
.Lt_00CE:
inc dword ptr [_Lt_014C]
.Lt_00CD:
mov eax, dword ptr [ebp-4]
cmp dword ptr [_Lt_014C], eax
jle .Lt_00D0
.Lt_00CF:
mov eax, dword ptr [ebp+8]
mov ecx, offset _REGENSURE@16
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset _REGALLOCATE@16
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset _REGALLOCATEREG@16
mov dword ptr [eax+8], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset _REGFREE@8
mov dword ptr [ecx+12], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset _REGISFREE@8
mov dword ptr [eax+16], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset _REGSETOWNER@16
mov dword ptr [ecx+20], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset _REGGETMAXREGS@4
mov dword ptr [eax+24], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset _REGGETFIRST@4
mov dword ptr [ecx+28], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset _REGGETNEXT@8
mov dword ptr [eax+32], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset _REGGETVREG@12
mov dword ptr [ecx+36], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset _REGGETREALREG@8
mov dword ptr [eax+40], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset _REGCLEAR@4
mov dword ptr [ecx+44], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset _REGDUMP@4
mov dword ptr [eax+48], ecx
.Lt_00CB:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_014C,4

.section .text
.balign 16
_SREGFINDREG@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D1:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+60]
cmp dword ptr [eax+300], ecx
jne .Lt_00D4
jmp .Lt_00D2
.Lt_00D4:
.Lt_00D3:
mov dword ptr [_Lt_014D], 0
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+60]
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_00D6
.Lt_00D9:
mov eax, dword ptr [ebp+8]
lea ecx, [eax+268]
mov eax, dword ptr [_Lt_014D]
sal eax, 2
add ecx, eax
cmp dword ptr [ecx], -1
je .Lt_00DB
mov ecx, dword ptr [_Lt_014D]
sal ecx, 2
mov eax, dword ptr [ebp+8]
add eax, ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [eax+64], ecx
jne .Lt_00DD
mov ecx, dword ptr [_Lt_014D]
mov dword ptr [ebp-4], ecx
jmp .Lt_00D2
.Lt_00DD:
.Lt_00DC:
.Lt_00DB:
.Lt_00DA:
.Lt_00D7:
inc dword ptr [_Lt_014D]
.Lt_00D6:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [_Lt_014D], ecx
jle .Lt_00D9
.Lt_00D8:
.Lt_00D2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_014D,4

.section .text
.balign 16
_SREGXCHG@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00DE:
push dword ptr [ebp+12]
call dword ptr [_IR+272]
mov dword ptr [_Lt_014E], -1
mov dword ptr [_Lt_014F], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_00E1
.Lt_00E4:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [_Lt_014F]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], 0
jne .Lt_00E6
mov eax, dword ptr [_Lt_014F]
mov dword ptr [_Lt_014E], eax
jmp .Lt_00E3
.Lt_00E6:
.Lt_00E5:
.Lt_00E2:
inc dword ptr [_Lt_014F]
.Lt_00E1:
mov eax, dword ptr [ebp-4]
cmp dword ptr [_Lt_014F], eax
jle .Lt_00E4
.Lt_00E3:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
push dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [_Lt_014E]
sal ebx, 2
add eax, ebx
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+268]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add ecx, ebx
mov ebx, dword ptr [eax]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+268]
mov ebx, dword ptr [_Lt_014E]
sal ebx, 2
add ecx, ebx
pop dword ptr [ecx]
.Lt_00DF:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_014F,4
.balign 4
	.lcomm	_Lt_014E,4

.section .text
.balign 16
_SREGFINDFREEREG@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E7:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+300], 0
jne .Lt_00EA
jmp .Lt_00E8
.Lt_00EA:
.Lt_00E9:
mov dword ptr [_Lt_0150], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_00EC
.Lt_00EF:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [_Lt_0150]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], -1
jne .Lt_00F1
mov eax, dword ptr [_Lt_0150]
mov dword ptr [ebp-4], eax
jmp .Lt_00E8
.Lt_00F1:
.Lt_00F0:
.Lt_00ED:
inc dword ptr [_Lt_0150]
.Lt_00EC:
mov eax, dword ptr [ebp-8]
cmp dword ptr [_Lt_0150], eax
jle .Lt_00EF
.Lt_00EE:
.Lt_00E8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0150,4

.section .text
.balign 16
_SREGFINDTOSREG@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FD:
mov dword ptr [_Lt_0151], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_0100
.Lt_0103:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [_Lt_0151]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], 0
jne .Lt_0105
mov eax, dword ptr [_Lt_0151]
mov dword ptr [ebp-4], eax
jmp .Lt_00FE
.Lt_0105:
.Lt_0104:
.Lt_0101:
inc dword ptr [_Lt_0151]
.Lt_0100:
mov eax, dword ptr [ebp-8]
cmp dword ptr [_Lt_0151], eax
jle .Lt_0103
.Lt_0102:
mov dword ptr [ebp-4], -1
.Lt_00FE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0151,4

.section .text
.balign 16
_SREGALLOCATE@16:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0106:
push dword ptr [ebp+8]
call _SREGFINDFREEREG@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_0109
push dword ptr [ebp+8]
call _SREGFINDTOSREG@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
push dword ptr [ebx+96]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
push dword ptr [eax+64]
call dword ptr [_IR+268]
.Lt_0109:
.Lt_0108:
mov eax, dword ptr [ebp+8]
dec dword ptr [eax+300]
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-16], ebx
jmp .Lt_010B
.Lt_010E:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp-12]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], -1
je .Lt_0110
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-12]
sal eax, 2
add ebx, eax
inc dword ptr [ebx]
.Lt_0110:
.Lt_010F:
.Lt_010C:
inc dword ptr [ebp-12]
.Lt_010B:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jle .Lt_010E
.Lt_010D:
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+96], ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
add eax, ebx
mov dword ptr [eax], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0107:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_SREGALLOCATEREG@16:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0111:
push 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _SREGALLOCATE@16
mov dword ptr [ebp-4], eax
.Lt_0112:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 16
.balign 16
_SREGENSURE@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0113:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SREGFINDREG@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_0116
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SREGALLOCATE@16
mov dword ptr [ebp-8], eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call dword ptr [_IR+264]
jmp .Lt_0115
.Lt_0116:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-8]
sal eax, 2
add ebx, eax
cmp dword ptr [ebx], 0
je .Lt_0118
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _SREGXCHG@8
.Lt_0118:
.Lt_0117:
.Lt_0115:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0114:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_SREGFREE@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0119:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
cmp dword ptr [ebx], -1
jne .Lt_011C
jmp .Lt_011A
.Lt_011C:
.Lt_011B:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add eax, ebx
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add eax, ebx
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov dword ptr [eax+96], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-12], ebx
jmp .Lt_011E
.Lt_0121:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp-4]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], -1
je .Lt_0123
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-4]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebx], eax
jle .Lt_0125
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-4]
sal eax, 2
add ebx, eax
dec dword ptr [ebx]
.Lt_0125:
.Lt_0124:
.Lt_0123:
.Lt_0122:
.Lt_011F:
inc dword ptr [ebp-4]
.Lt_011E:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-4], ebx
jle .Lt_0121
.Lt_0120:
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+300]
.Lt_011A:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_SREGISFREE@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0126:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0127:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_SREGSETOWNER@16:
push ebp
mov ebp, esp
push ebx
.Lt_0128:
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+96], eax
.Lt_0129:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_SREGGETREALREG@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_012A:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.Lt_012B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_SREGGETMAXREGS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_012C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_012D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_SREGGETFIRST@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_012E:
push dword ptr [ebp+8]
call _SREGFINDTOSREG@4
mov dword ptr [ebp-4], eax
.Lt_012F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_SREGGETNEXT@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0130:
mov eax, dword ptr [ebp+12]
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
cmp ecx, dword ptr [ebx+60]
setge cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0133
mov dword ptr [ebp-4], -1
jmp .Lt_0132
.Lt_0133:
push dword ptr [ebp+8]
call _SREGFINDTOSREG@4
mov dword ptr [ebp-4], eax
.Lt_0132:
.Lt_0131:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_SREGGETVREG@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0134:
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+96]
mov dword ptr [eax], ecx
.Lt_0135:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_SREGDUMP@4:
push ebp
mov ebp, esp
.Lt_0136:
.Lt_0137:
mov esp, ebp
pop ebp
ret 4
.balign 16
_SREGCLEAR@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0138:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebx+300], ecx
mov dword ptr [ebp-4], 0
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+60]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_013B
.Lt_013E:
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+268]
mov ebx, dword ptr [ebp-4]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx], -1
mov ecx, dword ptr [ebp-4]
sal ecx, 2
mov ebx, dword ptr [ebp+8]
add ebx, ecx
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp-4]
sal ebx, 2
mov ecx, dword ptr [ebp+8]
add ecx, ebx
mov dword ptr [ecx+96], 0
.Lt_013C:
inc dword ptr [ebp-4]
.Lt_013B:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .Lt_013E
.Lt_013D:
.Lt_0139:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_SREGINITCLASS@8:
push ebp
mov ebp, esp
push ebx
.Lt_013F:
push dword ptr [ebp+8]
call _SREGCLEAR@4
mov eax, dword ptr [ebp+8]
mov ebx, offset _SREGENSURE@16
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _SREGALLOCATE@16
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _SREGALLOCATEREG@16
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _SREGFREE@8
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _SREGISFREE@8
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _SREGSETOWNER@16
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _SREGGETMAXREGS@4
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _SREGGETFIRST@4
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _SREGGETNEXT@8
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _SREGGETVREG@12
mov dword ptr [ebx+36], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _SREGGETREALREG@8
mov dword ptr [eax+40], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset _SREGCLEAR@4
mov dword ptr [ebx+44], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset _SREGDUMP@4
mov dword ptr [eax+48], ebx
.Lt_0140:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
.balign 4
	.lcomm	_Lt_0072,36

.section .data
.balign 4
_Lt_008D:	.ascii	"REGPOPREG\0"
