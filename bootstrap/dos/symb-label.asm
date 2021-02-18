	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBADDLABEL
_SYMBADDLABEL:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_006B
push -1
push 0
push 7
push dword ptr [ebp+8]
push dword ptr [_SYMB+98528]
call _SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_006D
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .Lt_006F
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+60], 0
je .Lt_0071
jmp .Lt_0069
.Lt_0071:
.Lt_0070:
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+60], -1
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [_PARSER+108]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [_PARSER+28]
mov dword ptr [ebx+64], eax
mov ax, word ptr [_PARSER+96]
mov ebx, dword ptr [ebp-16]
mov word ptr [ebx+36], ax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .Lt_0069
jmp .Lt_006E
.Lt_006F:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .Lt_0069
.Lt_006E:
.Lt_006D:
.Lt_006C:
mov eax, dword ptr [ebp+12]
and eax, 64
test eax, eax
jne .Lt_0073
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_0072
.Lt_0073:
call _SYMBUNIQUELABEL
mov dword ptr [ebp-12], eax
.Lt_0072:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_006A
.Lt_006B:
mov dword ptr [ebp-8], 0
call _SYMBUNIQUELABEL
mov dword ptr [ebp-12], eax
.Lt_006A:
mov eax, dword ptr [ebp+12]
and eax, 8
test eax, eax
je .Lt_0075
mov dword ptr [ebp-28], -1
lea eax, [_SYMB+98408]
mov dword ptr [ebp-20], eax
lea eax, [_SYMB+98420]
mov dword ptr [ebp-24], eax
jmp .Lt_0074
.Lt_0075:
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
jne .Lt_0077
mov dword ptr [ebp-28], -1
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .Lt_0079
mov eax, dword ptr [_SYMB+98536]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [_SYMB+98532]
mov dword ptr [ebp-24], eax
jmp .Lt_0078
.Lt_0079:
lea eax, [_SYMB+98408]
mov dword ptr [ebp-20], eax
lea eax, [_SYMB+98420]
mov dword ptr [ebp-24], eax
.Lt_0078:
jmp .Lt_0076
.Lt_0077:
mov dword ptr [ebp-28], 0
mov eax, dword ptr [_PARSER+104]
lea ebx, [eax+56]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [_SYMB+98532]
mov dword ptr [ebp-24], ebx
.Lt_0076:
.Lt_0074:
push 0
cmp dword ptr [ebp-28], 0
je .Lt_007C
mov dword ptr [ebp-36], 0
jmp .Lt_0082
.Lt_007C:
mov dword ptr [ebp-36], 128
.Lt_0082:
push dword ptr [ebp-36]
push 0
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 7
push dword ptr [ebp-24]
push dword ptr [ebp-20]
push 0
cmp dword ptr [ebp+8], 0
jne .Lt_007A
mov dword ptr [ebp-32], 0
jmp .Lt_0083
.Lt_007A:
mov dword ptr [ebp-32], 32
.Lt_0083:
push dword ptr [ebp-32]
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_007F
jmp .Lt_0069
.Lt_007F:
.Lt_007E:
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .Lt_0081
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [_PARSER+108]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [_PARSER+28]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+60], -1
jmp .Lt_0080
.Lt_0081:
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+60], 0
.Lt_0080:
mov eax, dword ptr [ebp-16]
mov byte ptr [eax+68], 0
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCLONELABEL
_SYMBCLONELABEL:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0084:
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0085:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELLABEL
_SYMBDELLABEL:
push ebp
mov ebp, esp
.Lt_0086:
cmp dword ptr [ebp+8], 0
jne .Lt_0089
jmp .Lt_0087
.Lt_0089:
.Lt_0088:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL
add esp, 4
.Lt_0087:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCHECKLABELS
_SYMBCHECKLABELS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_008A:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
.Lt_008C:
cmp dword ptr [ebp-12], 0
je .Lt_008D
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 7
jne .Lt_008F
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+60], 0
jne .Lt_0091
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+16], 0
je .Lt_0093
push 0
push 1
push -1
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
push 48
call _ERRREPORTEX
add esp, 20
inc dword ptr [ebp-8]
.Lt_0093:
.Lt_0092:
.Lt_0091:
.Lt_0090:
.Lt_008F:
.Lt_008E:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
jmp .Lt_008C
.Lt_008D:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_008B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
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
call _fb_StrAssign
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
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
