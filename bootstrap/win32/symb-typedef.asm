	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBFWDREFINIT@0
_SYMBFWDREFINIT@0:
.Lt_0068:
push 6
push 8
push 500
lea eax, [_SYMB+98628]
push eax
call _LISTINIT@16
mov dword ptr [_SYMB+98692], 0
.Lt_0069:
ret
.balign 16

.globl _SYMBFWDREFEND@0
_SYMBFWDREFEND@0:
.Lt_006A:
lea eax, [_SYMB+98628]
push eax
call _LISTEND@4
.Lt_006B:
ret
.balign 16

.globl _SYMBADDTOFWDREF@8
_SYMBADDTOFWDREF@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_006C:
lea eax, [_SYMB+98628]
push eax
call _LISTNEWNODE@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+56]
mov dword ptr [eax+4], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ecx+56], eax
.Lt_006D:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBREMOVEFROMFWDREF@8
_SYMBREMOVEFROMFWDREF@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_006E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov dword ptr [ebp-8], 0
.Lt_0070:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .Lt_0074
jmp .Lt_0071
.Lt_0074:
.Lt_0073:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.Lt_0072:
jmp .Lt_0070
.Lt_0071:
cmp dword ptr [ebp-8], 0
jne .Lt_0076
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+56], ecx
jmp .Lt_0075
.Lt_0076:
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+4]
mov dword ptr [eax+4], ebx
.Lt_0075:
push dword ptr [ebp-4]
lea ebx, [_SYMB+98628]
push ebx
call _LISTDELNODE@8
.Lt_006F:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBCHECKFWDREF@4
_SYMBCHECKFWDREF@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0088:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_008A:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 14
jne .Lt_008E
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _HFIXFORWARDREF@8
jmp .Lt_0089
.Lt_008E:
.Lt_008D:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-4], ebx
.Lt_008C:
cmp dword ptr [ebp-4], 0
jne .Lt_008A
.Lt_008B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-4], eax
.Lt_008F:
cmp dword ptr [ebp-4], 0
je .Lt_0090
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 14
jne .Lt_0092
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _HFIXFORWARDREF@8
jmp .Lt_0089
.Lt_0092:
.Lt_0091:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-4], ebx
jmp .Lt_008F
.Lt_0090:
.Lt_0089:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBADDTYPEDEF@20
_SYMBADDTYPEDEF@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0093:
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 13
push 0
push 0
push 0
push 32
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0096
mov dword ptr [ebp-4], 0
jmp .Lt_0094
.Lt_0096:
.Lt_0095:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+40], ecx
mov dword ptr [eax+44], ebx
cmp dword ptr [_SYMB+98692], 0
jle .Lt_0098
push dword ptr [ebp-8]
call _SYMBCHECKFWDREF@4
.Lt_0098:
.Lt_0097:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_0094:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _SYMBADDFWDREF@4
_SYMBADDFWDREF@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0099:
push 0
push 0
push 0
push -2147483648
push 0
push dword ptr [ebp+8]
push 14
push 0
push 0
push 0
push 33
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_009C
mov dword ptr [ebp-4], 0
jmp .Lt_009A
.Lt_009C:
.Lt_009B:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+56], 0
inc dword ptr [_SYMB+98692]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_009A:
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
_SYMBREPLACEFORWARDREF@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0077:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .Lt_0079
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_009D
.Lt_0079:
mov dword ptr [ebp-4], 0
.Lt_009D:
cmp dword ptr [ebp-4], 0
je .Lt_007C
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _ASTREPLACEFWDREF@16
.Lt_007C:
.Lt_007B:
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call _TYPEMERGE@8
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBSETTYPE@12
.Lt_0078:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HFIXFORWARDREF@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_007D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .Lt_0080
.Lt_0082:
mov dword ptr [ebp-16], 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
jmp .Lt_007F
.Lt_0083:
mov dword ptr [ebp-16], 10
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
jmp .Lt_007F
.Lt_0084:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
jmp .Lt_007F
.Lt_0080:
mov ebx, dword ptr [ebp-20]
add ebx, 4294967287
cmp ebx, 1
ja .Lt_0084
mov ebx, dword ptr [ebp-20]
jmp dword ptr [_.LT_0085+ebx*4-36]
_.LT_0085:
.int .Lt_0083
.int .Lt_0082
.Lt_007F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
.Lt_0086:
cmp dword ptr [ebp-4], 0
je .Lt_0087
push dword ptr [ebp-12]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _SYMBREPLACEFORWARDREF@12
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp-4]
lea ebx, [_SYMB+98628]
push ebx
call _LISTDELNODE@8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_0086
.Lt_0087:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL@4
dec dword ptr [_SYMB+98692]
.Lt_007E:
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
