	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBADDENUM@16
_SYMBADDENUM@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
cmp dword ptr [ebp+12], 0
jne .Lt_006B
cmp dword ptr [_PARSER+100], 0
je .Lt_006D
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.Lt_006D:
.Lt_006C:
.Lt_006B:
.Lt_006A:
push 0
push dword ptr [ebp+16]
push 0
push 10
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 9
push 0
push 0
push 0
push 32
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006F
mov dword ptr [ebp-4], 0
jmp .Lt_0069
.Lt_006F:
.Lt_006E:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], 0
cmp dword ptr [ebp+20], 0
je .Lt_0071
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+84], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+88], 0
push 0
push 16
mov eax, dword ptr [ebp-8]
lea ebx, [eax+72]
push ebx
call _HASHINIT@12
jmp .Lt_0072
.Lt_0073:
push 12
push 0
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+72]
push eax
call _memset
add esp, 12
.Lt_0072:
jmp .Lt_0070
.Lt_0071:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+68], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+84], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+88], 0
jmp .Lt_0075
push 0
push 0
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+72]
push eax
call _HASHINIT@12
jmp .Lt_0074
.Lt_0075:
push 12
push 0
mov eax, dword ptr [ebp-8]
lea ebx, [eax+72]
push ebx
call _memset
add esp, 12
.Lt_0074:
.Lt_0070:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+92], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+96], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+100], -1
cmp dword ptr [_SYMB+98692], 0
jle .Lt_0077
push dword ptr [ebp-8]
call _SYMBCHECKFWDREF@4
.Lt_0077:
.Lt_0076:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _SYMBADDENUMELEMENT@20
_SYMBADDENUMELEMENT@20:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0078:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebp-16], ebx
mov dword ptr [ebp-12], eax
push dword ptr [ebp+24]
lea ebx, [ebp-16]
push ebx
push dword ptr [ebp+8]
push 10
push dword ptr [ebp+12]
call _SYMBADDCONST@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+96]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0079:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _SYMBDELENUM@4
_SYMBDELENUM@4:
push ebp
mov ebp, esp
push ebx
.Lt_007A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp+8]
call _SYMBDELNAMESPACEMEMBERS@8
push dword ptr [ebp+8]
call _SYMBFREESYMBOL@4
.Lt_007B:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETENUMFIRSTELM@4
_SYMBGETENUMFIRSTELM@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_007D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
.Lt_007F:
cmp dword ptr [ebp-8], 0
je .Lt_0080
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 2
jne .Lt_0082
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_007E
.Lt_0082:
.Lt_0081:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp-8], eax
jmp .Lt_007F
.Lt_0080:
mov dword ptr [ebp-4], 0
.Lt_007E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETENUMNEXTELM@4
_SYMBGETENUMNEXTELM@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0083:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp+8], ebx
.Lt_0085:
cmp dword ptr [ebp+8], 0
je .Lt_0086
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 2
jne .Lt_0088
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_0084
.Lt_0088:
.Lt_0087:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp+8], eax
jmp .Lt_0085
.Lt_0086:
mov dword ptr [ebp-4], 0
.Lt_0084:
mov eax, dword ptr [ebp-4]
pop ebx
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

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
