	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBFWDREFINIT
SYMBFWDREFINIT:
.Lt_0067:
push 6
push 8
push 500
lea eax, [SYMB+98620]
push eax
call LISTINIT
add esp, 16
mov dword ptr [SYMB+98684], 0
.Lt_0068:
ret
.balign 16

.globl SYMBFWDREFEND
SYMBFWDREFEND:
.Lt_0069:
lea eax, [SYMB+98620]
push eax
call LISTEND
add esp, 4
.Lt_006A:
ret
.balign 16

.globl SYMBADDTOFWDREF
SYMBADDTOFWDREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_006B:
lea eax, [SYMB+98620]
push eax
call LISTNEWNODE
add esp, 4
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
.Lt_006C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBREMOVEFROMFWDREF
SYMBREMOVEFROMFWDREF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_006D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov dword ptr [ebp-8], 0
.Lt_006F:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebx], eax
jne .Lt_0073
jmp .Lt_0070
.Lt_0073:
.Lt_0072:
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.Lt_0071:
jmp .Lt_006F
.Lt_0070:
cmp dword ptr [ebp-8], 0
jne .Lt_0075
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+56], ecx
jmp .Lt_0074
.Lt_0075:
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+4]
mov dword ptr [eax+4], ebx
.Lt_0074:
push dword ptr [ebp-4]
lea ebx, [SYMB+98620]
push ebx
call LISTDELNODE
add esp, 8
.Lt_006E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCHECKFWDREF
SYMBCHECKFWDREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0087:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0089:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 14
jne .Lt_008D
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call HFIXFORWARDREF
add esp, 8
jmp .Lt_0088
.Lt_008D:
.Lt_008C:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-4], ebx
.Lt_008B:
cmp dword ptr [ebp-4], 0
jne .Lt_0089
.Lt_008A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+152]
mov dword ptr [ebp-4], eax
.Lt_008E:
cmp dword ptr [ebp-4], 0
je .Lt_008F
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 14
jne .Lt_0091
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call HFIXFORWARDREF
add esp, 8
jmp .Lt_0088
.Lt_0091:
.Lt_0090:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+152]
mov dword ptr [ebp-4], ebx
jmp .Lt_008E
.Lt_008F:
.Lt_0088:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDTYPEDEF
SYMBADDTYPEDEF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0092:
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
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0095
mov dword ptr [ebp-4], 0
jmp .Lt_0093
.Lt_0095:
.Lt_0094:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ebp+24]
mov dword ptr [eax+40], ecx
mov dword ptr [eax+44], ebx
cmp dword ptr [SYMB+98684], 0
jle .Lt_0097
push dword ptr [ebp-8]
call SYMBCHECKFWDREF
add esp, 4
.Lt_0097:
.Lt_0096:
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_0093:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDFWDREF
SYMBADDFWDREF:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0098:
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
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_009B
mov dword ptr [ebp-4], 0
jmp .Lt_0099
.Lt_009B:
.Lt_009A:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+56], 0
inc dword ptr [SYMB+98684]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0099:
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
SYMBREPLACEFORWARDREF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0076:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .Lt_0078
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
jmp .Lt_009C
.Lt_0078:
mov dword ptr [ebp-4], 0
.Lt_009C:
cmp dword ptr [ebp-4], 0
je .Lt_007B
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call ASTREPLACEFWDREF
add esp, 16
.Lt_007B:
.Lt_007A:
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call TYPEMERGE
add esp, 8
mov dword ptr [ebp+12], eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBSETTYPE
add esp, 12
.Lt_0077:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFIXFORWARDREF:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_007C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
jmp .Lt_007F
.Lt_0081:
mov dword ptr [ebp-16], 20
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
jmp .Lt_007E
.Lt_0082:
mov dword ptr [ebp-16], 10
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-12], ebx
jmp .Lt_007E
.Lt_0083:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-12], ebx
jmp .Lt_007E
.Lt_007F:
mov ebx, dword ptr [ebp-20]
add ebx, 4294967287
cmp ebx, 1
ja .Lt_0083
mov ebx, dword ptr [ebp-20]
jmp dword ptr [.LT_0084+ebx*4-36]
.LT_0084:
.int .Lt_0082
.int .Lt_0081
.Lt_007E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
.Lt_0085:
cmp dword ptr [ebp-4], 0
je .Lt_0086
push dword ptr [ebp-12]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call SYMBREPLACEFORWARDREF
add esp, 12
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp-4]
lea ebx, [SYMB+98620]
push ebx
call LISTDELNODE
add esp, 8
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_0085
.Lt_0086:
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 4
dec dword ptr [SYMB+98684]
.Lt_007D:
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
