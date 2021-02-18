	.intel_syntax noprefix

.section .text
.balign 16

.globl REGNEWCLASS
REGNEWCLASS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0072:
mov dword ptr [ebp-8], 0
push 304
call XCALLOCATE
add esp, 4
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
jne .Lt_0075
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call REGINITCLASS
add esp, 8
jmp .Lt_0074
.Lt_0075:
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call SREGINITCLASS
add esp, 8
.Lt_0074:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0073:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl REGDELCLASS
REGDELCLASS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0076:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_0079
jmp .Lt_0077
.Lt_0079:
.Lt_0078:
push dword ptr [ebp+8]
call free
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_0077:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
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
REGPUSH:
push ebp
mov ebp, esp
push ebx
.Lt_007A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+132]
mov dword ptr [Lt_0140], ebx
mov ebx, dword ptr [Lt_0140]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+132], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_0140]
mov ebx, dword ptr [ecx+128]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_0140]
mov dword ptr [ebx+128], eax
mov eax, dword ptr [Lt_0140]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.Lt_007B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0140,4

.section .text
.balign 16
REGPOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_007C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+128]
mov dword ptr [Lt_0141], ebx
.Lt_007E:
cmp dword ptr [Lt_0141], 0
je .Lt_007F
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+128]
mov ebx, dword ptr [Lt_0141]
mov ecx, dword ptr [ebx]
sal ecx, 2
add eax, ecx
mov ecx, dword ptr [ebp+12]
and ecx, dword ptr [eax+76]
test ecx, ecx
je .Lt_0081
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_0141]
cmp dword ptr [ecx+128], eax
jne .Lt_0083
mov eax, dword ptr [Lt_0141]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ecx+128], ebx
jmp .Lt_0082
.Lt_0083:
mov ebx, dword ptr [Lt_0141]
mov ecx, dword ptr [Lt_0142]
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx+4], eax
.Lt_0082:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [Lt_0141]
mov ebx, dword ptr [eax+132]
mov dword ptr [ecx+4], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [Lt_0141]
mov dword ptr [ebx+132], ecx
mov ecx, dword ptr [Lt_0141]
mov ebx, dword ptr [ecx]
mov dword ptr [ebp-4], ebx
jmp .Lt_007D
.Lt_0081:
.Lt_0080:
mov ebx, dword ptr [Lt_0141]
mov dword ptr [Lt_0142], ebx
mov ebx, dword ptr [Lt_0141]
mov ecx, dword ptr [ebx+4]
mov dword ptr [Lt_0141], ecx
jmp .Lt_007E
.Lt_007F:
mov dword ptr [ebp-4], -1
.Lt_007D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0141,4
.balign 4
	.lcomm	Lt_0142,4

.section .text
.balign 16
REGPOPREG:
push ebp
mov ebp, esp
push ebx
.Lt_0084:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+128]
mov dword ptr [Lt_0143], ebx
.Lt_0086:
cmp dword ptr [Lt_0143], 0
je .Lt_0087
mov ebx, dword ptr [Lt_0143]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .Lt_0089
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_0143]
cmp dword ptr [eax+128], ebx
jne .Lt_008B
mov ebx, dword ptr [Lt_0143]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+128], ecx
jmp .Lt_008A
.Lt_008B:
mov ecx, dword ptr [Lt_0143]
mov eax, dword ptr [Lt_0144]
mov ebx, dword ptr [ecx+4]
mov dword ptr [eax+4], ebx
.Lt_008A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_0143]
mov ecx, dword ptr [ebx+132]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_0143]
mov dword ptr [ecx+132], eax
jmp .Lt_0085
.Lt_0089:
.Lt_0088:
mov eax, dword ptr [Lt_0143]
mov dword ptr [Lt_0144], eax
mov eax, dword ptr [Lt_0143]
mov ecx, dword ptr [eax+4]
mov dword ptr [Lt_0143], ecx
jmp .Lt_0086
.Lt_0087:
push 0
push 1
push 0
push offset Lt_008C
push 21
call ERRREPORTEX
add esp, 20
.Lt_0085:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0143,4
.balign 4
	.lcomm	Lt_0144,4

.section .text
.balign 16
REGCLEAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_008D:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+136], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+128], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+132], 0
mov dword ptr [Lt_0145], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_0090
.Lt_0093:
mov ebx, dword ptr [Lt_0145]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
mov dword ptr [eax+64], 0
mov eax, dword ptr [Lt_0145]
sal eax, 2
mov ebx, dword ptr [ebp+8]
add ebx, eax
mov dword ptr [ebx+96], 0
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+128]
mov ebx, dword ptr [Lt_0145]
sal ebx, 2
add eax, ebx
mov dword ptr [eax+108], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [Lt_0145]
sal eax, 3
add ebx, eax
lea eax, [ebx+12]
mov dword ptr [Lt_0146], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_0146]
mov ecx, dword ptr [eax+128]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_0146]
mov dword ptr [ecx+128], ebx
mov ebx, dword ptr [Lt_0146]
mov ecx, dword ptr [Lt_0145]
mov dword ptr [ebx], ecx
.Lt_0091:
inc dword ptr [Lt_0145]
.Lt_0090:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [Lt_0145], ecx
jle .Lt_0093
.Lt_0092:
.Lt_008E:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0146,4
.balign 4
	.lcomm	Lt_0145,4

.section .text
.balign 16
REGFINDFAREST:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0094:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_0097
.Lt_009A:
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-16], ebx
je .Lt_009C
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+128]
mov ebx, dword ptr [ebp-16]
sal ebx, 2
add eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, dword ptr [eax+76]
je .Lt_009E
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [ebp-16]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx+108]
cmp dword ptr [ebp-8], eax
jae .Lt_00A0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+128]
mov eax, dword ptr [ebp-16]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx+108]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.Lt_00A0:
.Lt_009F:
.Lt_009E:
.Lt_009D:
.Lt_009C:
.Lt_009B:
.Lt_0098:
inc dword ptr [ebp-16]
.Lt_0097:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-16], eax
jle .Lt_009A
.Lt_0099:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0095:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REGALLOCATE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A1:
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call REGPOP
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_00A4
mov dword ptr [ebp-12], -1
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+52], 0
je .Lt_00A5
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+52]
cmp dword ptr [ebx], 4
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .Lt_0147
.Lt_00A5:
mov dword ptr [ebp-16], 0
.Lt_0147:
cmp dword ptr [ebp-16], 0
je .Lt_00A8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
.Lt_00A8:
.Lt_00A7:
push dword ptr [ebp-12]
push dword ptr [ebp+20]
push dword ptr [ebp+8]
call REGFINDFAREST
add esp, 12
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
call dword ptr [IR+268]
add esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call REGPOPREG
add esp, 8
.Lt_00A4:
.Lt_00A3:
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
call dword ptr [IR+260]
add esp, 4
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+128]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx+108], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REGALLOCATEREG:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A9:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp+12]
sal ebx, cl
and ebx, dword ptr [eax+136]
test ebx, ebx
je .Lt_00AC
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call REGPOPREG
add esp, 8
mov ebx, dword ptr [ebp+8]
mov eax, 1
mov cl, byte ptr [ebp+12]
sal eax, cl
not eax
and dword ptr [ebx+136], eax
.Lt_00AC:
.Lt_00AB:
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
call dword ptr [IR+260]
add esp, 4
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+128]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx+108], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_00AA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REGENSURE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00AD:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], -1
jne .Lt_00B0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call REGALLOCATE
add esp, 16
mov dword ptr [ebp-8], eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call dword ptr [IR+264]
add esp, 12
.Lt_00B0:
.Lt_00AF:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00AE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REGSETOWNER:
push ebp
mov ebp, esp
push ebx
.Lt_00B1:
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
call dword ptr [IR+260]
add esp, 4
mov ebx, dword ptr [ebp+8]
lea ecx, [ebx+128]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
add ecx, ebx
mov dword ptr [ecx+108], eax
.Lt_00B2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REGFREE:
push ebp
mov ebp, esp
push ebx
.Lt_00B3:
mov eax, dword ptr [ebp+8]
mov ebx, 1
mov cl, byte ptr [ebp+12]
sal ebx, cl
and ebx, dword ptr [eax+136]
test ebx, ebx
jne .Lt_00B6
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
call REGPUSH
add esp, 8
.Lt_00B6:
.Lt_00B5:
.Lt_00B4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REGISFREE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B7:
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
.Lt_00B8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REGGETMAXREGS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_00BA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REGGETFIRST:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00BB:
mov dword ptr [ebp-4], 0
.Lt_00BC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
REGGETNEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BD:
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+12], 0
jl .Lt_00C0
inc dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
cmp dword ptr [ebp+12], ebx
jge .Lt_00C2
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-4], ebx
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
.Lt_00BE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REGGETVREG:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C3:
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
.Lt_00C4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
REGGETREALREG:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00C5:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_00C6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
REGDUMP:
push ebp
mov ebp, esp
.Lt_00C7:
.Lt_00C8:
mov esp, ebp
pop ebp
ret
.balign 16
REGINITCLASS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00C9:
push dword ptr [ebp+8]
call REGCLEAR
add esp, 4
mov dword ptr [Lt_014B], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_00CC
.Lt_00CF:
mov ebx, dword ptr [Lt_014B]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add ebx, dword ptr [eax]
mov eax, dword ptr [ebp+8]
lea ecx, [eax+128]
mov eax, dword ptr [Lt_014B]
sal eax, 2
add ecx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ecx+76], eax
.Lt_00CD:
inc dword ptr [Lt_014B]
.Lt_00CC:
mov eax, dword ptr [ebp-4]
cmp dword ptr [Lt_014B], eax
jle .Lt_00CF
.Lt_00CE:
mov eax, dword ptr [ebp+8]
mov ecx, offset REGENSURE
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset REGALLOCATE
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset REGALLOCATEREG
mov dword ptr [eax+8], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset REGFREE
mov dword ptr [ecx+12], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset REGISFREE
mov dword ptr [eax+16], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset REGSETOWNER
mov dword ptr [ecx+20], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset REGGETMAXREGS
mov dword ptr [eax+24], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset REGGETFIRST
mov dword ptr [ecx+28], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset REGGETNEXT
mov dword ptr [eax+32], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset REGGETVREG
mov dword ptr [ecx+36], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset REGGETREALREG
mov dword ptr [eax+40], ecx
mov ecx, dword ptr [ebp+8]
mov eax, offset REGCLEAR
mov dword ptr [ecx+44], eax
mov eax, dword ptr [ebp+8]
mov ecx, offset REGDUMP
mov dword ptr [eax+48], ecx
.Lt_00CA:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_014B,4

.section .text
.balign 16
SREGFINDREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D0:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+60]
cmp dword ptr [eax+300], ecx
jne .Lt_00D3
jmp .Lt_00D1
.Lt_00D3:
.Lt_00D2:
mov dword ptr [Lt_014C], 0
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+60]
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_00D5
.Lt_00D8:
mov eax, dword ptr [ebp+8]
lea ecx, [eax+268]
mov eax, dword ptr [Lt_014C]
sal eax, 2
add ecx, eax
cmp dword ptr [ecx], -1
je .Lt_00DA
mov ecx, dword ptr [Lt_014C]
sal ecx, 2
mov eax, dword ptr [ebp+8]
add eax, ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [eax+64], ecx
jne .Lt_00DC
mov ecx, dword ptr [Lt_014C]
mov dword ptr [ebp-4], ecx
jmp .Lt_00D1
.Lt_00DC:
.Lt_00DB:
.Lt_00DA:
.Lt_00D9:
.Lt_00D6:
inc dword ptr [Lt_014C]
.Lt_00D5:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [Lt_014C], ecx
jle .Lt_00D8
.Lt_00D7:
.Lt_00D1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_014C,4

.section .text
.balign 16
SREGXCHG:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00DD:
push dword ptr [ebp+12]
call dword ptr [IR+272]
add esp, 4
mov dword ptr [Lt_014D], -1
mov dword ptr [Lt_014E], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_00E0
.Lt_00E3:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [Lt_014E]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], 0
jne .Lt_00E5
mov eax, dword ptr [Lt_014E]
mov dword ptr [Lt_014D], eax
jmp .Lt_00E2
.Lt_00E5:
.Lt_00E4:
.Lt_00E1:
inc dword ptr [Lt_014E]
.Lt_00E0:
mov eax, dword ptr [ebp-4]
cmp dword ptr [Lt_014E], eax
jle .Lt_00E3
.Lt_00E2:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
push dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [Lt_014D]
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
mov ebx, dword ptr [Lt_014D]
sal ebx, 2
add ecx, ebx
pop dword ptr [ecx]
.Lt_00DE:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_014E,4
.balign 4
	.lcomm	Lt_014D,4

.section .text
.balign 16
SREGFINDFREEREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E6:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+300], 0
jne .Lt_00E9
jmp .Lt_00E7
.Lt_00E9:
.Lt_00E8:
mov dword ptr [Lt_014F], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_00EB
.Lt_00EE:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [Lt_014F]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], -1
jne .Lt_00F0
mov eax, dword ptr [Lt_014F]
mov dword ptr [ebp-4], eax
jmp .Lt_00E7
.Lt_00F0:
.Lt_00EF:
.Lt_00EC:
inc dword ptr [Lt_014F]
.Lt_00EB:
mov eax, dword ptr [ebp-8]
cmp dword ptr [Lt_014F], eax
jle .Lt_00EE
.Lt_00ED:
.Lt_00E7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_014F,4

.section .text
.balign 16
SREGFINDTOSREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FC:
mov dword ptr [Lt_0150], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_00FF
.Lt_0102:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [Lt_0150]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], 0
jne .Lt_0104
mov eax, dword ptr [Lt_0150]
mov dword ptr [ebp-4], eax
jmp .Lt_00FD
.Lt_0104:
.Lt_0103:
.Lt_0100:
inc dword ptr [Lt_0150]
.Lt_00FF:
mov eax, dword ptr [ebp-8]
cmp dword ptr [Lt_0150], eax
jle .Lt_0102
.Lt_0101:
mov dword ptr [ebp-4], -1
.Lt_00FD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0150,4

.section .text
.balign 16
SREGALLOCATE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0105:
push dword ptr [ebp+8]
call SREGFINDFREEREG
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_0108
push dword ptr [ebp+8]
call SREGFINDTOSREG
add esp, 4
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
call dword ptr [IR+268]
add esp, 8
.Lt_0108:
.Lt_0107:
mov eax, dword ptr [ebp+8]
dec dword ptr [eax+300]
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
dec ebx
mov dword ptr [ebp-16], ebx
jmp .Lt_010A
.Lt_010D:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp-12]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], -1
je .Lt_010F
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-12]
sal eax, 2
add ebx, eax
inc dword ptr [ebx]
.Lt_010F:
.Lt_010E:
.Lt_010B:
inc dword ptr [ebp-12]
.Lt_010A:
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebp-12], ebx
jle .Lt_010D
.Lt_010C:
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
.Lt_0106:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SREGALLOCATEREG:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0110:
push 8
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call SREGALLOCATE
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0111:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
SREGENSURE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0112:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SREGFINDREG
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_0115
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SREGALLOCATE
add esp, 16
mov dword ptr [ebp-8], eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call dword ptr [IR+264]
add esp, 12
jmp .Lt_0114
.Lt_0115:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-8]
sal eax, 2
add ebx, eax
cmp dword ptr [ebx], 0
je .Lt_0117
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call SREGXCHG
add esp, 8
.Lt_0117:
.Lt_0116:
.Lt_0114:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0113:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SREGFREE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0118:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
cmp dword ptr [ebx], -1
jne .Lt_011B
jmp .Lt_0119
.Lt_011B:
.Lt_011A:
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
jmp .Lt_011D
.Lt_0120:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+268]
mov ebx, dword ptr [ebp-4]
sal ebx, 2
add eax, ebx
cmp dword ptr [eax], -1
je .Lt_0122
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-4]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebx], eax
jle .Lt_0124
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp-4]
sal eax, 2
add ebx, eax
dec dword ptr [ebx]
.Lt_0124:
.Lt_0123:
.Lt_0122:
.Lt_0121:
.Lt_011E:
inc dword ptr [ebp-4]
.Lt_011D:
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebp-4], ebx
jle .Lt_0120
.Lt_011F:
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+300]
.Lt_0119:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SREGISFREE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0125:
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
.Lt_0126:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SREGSETOWNER:
push ebp
mov ebp, esp
push ebx
.Lt_0127:
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
.Lt_0128:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SREGGETREALREG:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0129:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+268]
mov eax, dword ptr [ebp+12]
sal eax, 2
add ebx, eax
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.Lt_012A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SREGGETMAXREGS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_012B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_012C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SREGGETFIRST:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_012D:
push dword ptr [ebp+8]
call SREGFINDTOSREG
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_012E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
SREGGETNEXT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_012F:
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
je .Lt_0132
mov dword ptr [ebp-4], -1
jmp .Lt_0131
.Lt_0132:
push dword ptr [ebp+8]
call SREGFINDTOSREG
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0131:
.Lt_0130:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SREGGETVREG:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0133:
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
.Lt_0134:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SREGDUMP:
push ebp
mov ebp, esp
.Lt_0135:
.Lt_0136:
mov esp, ebp
pop ebp
ret
.balign 16
SREGCLEAR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0137:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebx+300], ecx
mov dword ptr [ebp-4], 0
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+60]
dec ebx
mov dword ptr [ebp-8], ebx
jmp .Lt_013A
.Lt_013D:
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
.Lt_013B:
inc dword ptr [ebp-4]
.Lt_013A:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .Lt_013D
.Lt_013C:
.Lt_0138:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SREGINITCLASS:
push ebp
mov ebp, esp
push ebx
.Lt_013E:
push dword ptr [ebp+8]
call SREGCLEAR
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, offset SREGENSURE
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset SREGALLOCATE
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset SREGALLOCATEREG
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset SREGFREE
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset SREGISFREE
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset SREGSETOWNER
mov dword ptr [ebx+20], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset SREGGETMAXREGS
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset SREGGETFIRST
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset SREGGETNEXT
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset SREGGETVREG
mov dword ptr [ebx+36], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset SREGGETREALREG
mov dword ptr [eax+40], ebx
mov ebx, dword ptr [ebp+8]
mov eax, offset SREGCLEAR
mov dword ptr [ebx+44], eax
mov eax, dword ptr [ebp+8]
mov ebx, offset SREGDUMP
mov dword ptr [eax+48], ebx
.Lt_013F:
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
.balign 4
	.lcomm	Lt_0071,36

.section .data
.balign 4
Lt_008C:	.ascii	"REGPOPREG\0"
