	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBADDLABEL
SYMBADDLABEL:
.type SYMBADDLABEL, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
je .Lt_006A
sub esp, 12
push -1
push 0
push 7
push dword ptr [ebp+8]
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 32
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_006C
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .Lt_006E
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+60], 0
je .Lt_0070
jmp .Lt_0068
.Lt_0070:
.Lt_006F:
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+60], -1
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [PARSER+108]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [PARSER+28]
mov dword ptr [ebx+64], eax
mov ax, word ptr [PARSER+96]
mov ebx, dword ptr [ebp-16]
mov word ptr [ebx+36], ax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .Lt_0068
jmp .Lt_006D
.Lt_006E:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
jmp .Lt_0068
.Lt_006D:
.Lt_006C:
.Lt_006B:
mov eax, dword ptr [ebp+12]
and eax, 64
test eax, eax
jne .Lt_0072
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
jmp .Lt_0071
.Lt_0072:
call SYMBUNIQUELABEL
mov dword ptr [ebp-12], eax
.Lt_0071:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_0069
.Lt_006A:
mov dword ptr [ebp-8], 0
call SYMBUNIQUELABEL
mov dword ptr [ebp-12], eax
.Lt_0069:
mov eax, dword ptr [ebp+12]
and eax, 8
test eax, eax
je .Lt_0074
mov dword ptr [ebp-28], -1
lea eax, [SYMB+98408]
mov dword ptr [ebp-20], eax
lea eax, [SYMB+98420]
mov dword ptr [ebp-24], eax
jmp .Lt_0073
.Lt_0074:
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
jne .Lt_0076
mov dword ptr [ebp-28], -1
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .Lt_0078
mov eax, dword ptr [SYMB+98536]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [SYMB+98532]
mov dword ptr [ebp-24], eax
jmp .Lt_0077
.Lt_0078:
lea eax, [SYMB+98408]
mov dword ptr [ebp-20], eax
lea eax, [SYMB+98420]
mov dword ptr [ebp-24], eax
.Lt_0077:
jmp .Lt_0075
.Lt_0076:
mov dword ptr [ebp-28], 0
mov eax, dword ptr [PARSER+104]
lea ebx, [eax+56]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [SYMB+98532]
mov dword ptr [ebp-24], ebx
.Lt_0075:
.Lt_0073:
sub esp, 4
push 0
cmp dword ptr [ebp-28], 0
je .Lt_007B
mov dword ptr [ebp-36], 0
jmp .Lt_0081
.Lt_007B:
mov dword ptr [ebp-36], 128
.Lt_0081:
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
jne .Lt_0079
mov dword ptr [ebp-32], 0
jmp .Lt_0082
.Lt_0079:
mov dword ptr [ebp-32], 32
.Lt_0082:
push dword ptr [ebp-32]
call SYMBNEWSYMBOL
add esp, 48
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jne .Lt_007E
jmp .Lt_0068
.Lt_007E:
.Lt_007D:
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .Lt_0080
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [PARSER+108]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [PARSER+28]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+60], -1
jmp .Lt_007F
.Lt_0080:
mov eax, dword ptr [ebp-16]
mov dword ptr [eax+60], 0
.Lt_007F:
mov eax, dword ptr [ebp-16]
mov byte ptr [eax+68], 0
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBADDLABEL, .-SYMBADDLABEL
.balign 16

.globl SYMBCLONELABEL
SYMBCLONELABEL:
.type SYMBCLONELABEL, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0083:
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0084:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size SYMBCLONELABEL, .-SYMBCLONELABEL
.balign 16

.globl SYMBDELLABEL
SYMBDELLABEL:
.type SYMBDELLABEL, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0085:
cmp dword ptr [ebp+8], 0
jne .Lt_0088
jmp .Lt_0086
.Lt_0088:
.Lt_0087:
sub esp, 12
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 16
.Lt_0086:
mov esp, ebp
pop ebp
ret
.size SYMBDELLABEL, .-SYMBDELLABEL
.balign 16

.globl SYMBCHECKLABELS
SYMBCHECKLABELS:
.type SYMBCHECKLABELS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0089:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-12], eax
.Lt_008B:
cmp dword ptr [ebp-12], 0
je .Lt_008C
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 7
jne .Lt_008E
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+60], 0
jne .Lt_0090
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+16], 0
je .Lt_0092
sub esp, 12
push 0
push 1
push -1
mov eax, dword ptr [ebp-12]
push dword ptr [eax+16]
push 48
call ERRREPORTEX
add esp, 32
inc dword ptr [ebp-8]
.Lt_0092:
.Lt_0091:
.Lt_0090:
.Lt_008F:
.Lt_008E:
.Lt_008D:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
jmp .Lt_008B
.Lt_008C:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_008A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCHECKLABELS, .-SYMBCHECKLABELS
.balign 16
_ZN11TSTRSETITEMaSERKS_:
.type _ZN11TSTRSETITEMaSERKS_, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0012:
sub esp, 12
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
add esp, 32
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
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
