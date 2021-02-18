	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBADDENUM
SYMBADDENUM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
cmp dword ptr [ebp+12], 0
jne .Lt_006A
cmp dword ptr [PARSER+100], 0
je .Lt_006C
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp+12], eax
.Lt_006C:
.Lt_006B:
.Lt_006A:
.Lt_0069:
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
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_006E
mov dword ptr [ebp-4], 0
jmp .Lt_0068
.Lt_006E:
.Lt_006D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], 0
cmp dword ptr [ebp+20], 0
je .Lt_0070
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
call HASHINIT
add esp, 12
jmp .Lt_0071
.Lt_0072:
push 12
push 0
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+72]
push eax
call memset
add esp, 12
.Lt_0071:
jmp .Lt_006F
.Lt_0070:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+68], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+84], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+88], 0
jmp .Lt_0074
push 0
push 0
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+72]
push eax
call HASHINIT
add esp, 12
jmp .Lt_0073
.Lt_0074:
push 12
push 0
mov eax, dword ptr [ebp-8]
lea ebx, [eax+72]
push ebx
call memset
add esp, 12
.Lt_0073:
.Lt_006F:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+92], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+96], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+100], -1
cmp dword ptr [SYMB+98684], 0
jle .Lt_0076
push dword ptr [ebp-8]
call SYMBCHECKFWDREF
add esp, 4
.Lt_0076:
.Lt_0075:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDENUMELEMENT
SYMBADDENUMELEMENT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0077:
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
call SYMBADDCONST
add esp, 20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+96]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0078:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELENUM
SYMBDELENUM:
push ebp
mov ebp, esp
push ebx
.Lt_0079:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp+8]
call SYMBDELNAMESPACEMEMBERS
add esp, 8
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 4
.Lt_007A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETENUMFIRSTELM
SYMBGETENUMFIRSTELM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_007C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
.Lt_007E:
cmp dword ptr [ebp-8], 0
je .Lt_007F
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 2
jne .Lt_0081
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_007D
.Lt_0081:
.Lt_0080:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
jmp .Lt_007E
.Lt_007F:
mov dword ptr [ebp-4], 0
.Lt_007D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETENUMNEXTELM
SYMBGETENUMNEXTELM:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0082:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp+8], ebx
.Lt_0084:
cmp dword ptr [ebp+8], 0
je .Lt_0085
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 2
jne .Lt_0087
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_0083
.Lt_0087:
.Lt_0086:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp+8], eax
jmp .Lt_0084
.Lt_0085:
mov dword ptr [ebp-4], 0
.Lt_0083:
mov eax, dword ptr [ebp-4]
pop ebx
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

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
