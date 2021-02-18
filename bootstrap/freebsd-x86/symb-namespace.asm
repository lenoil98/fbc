	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBADDNAMESPACE
SYMBADDNAMESPACE:
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
push 0
push 0
push 21
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 8
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
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+84], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+88], 0
push 0
push 800
mov eax, dword ptr [ebp-8]
lea ebx, [eax+72]
push ebx
call HASHINIT
add esp, 12
jmp .Lt_006F
.Lt_0070:
push 12
push 0
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+72]
push eax
call memset
add esp, 12
.Lt_006F:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+92], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+96], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+100], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELNAMESPACEMEMBERS
SYMBDELNAMESPACEMEMBERS:
push ebp
mov ebp, esp
push ebx
.Lt_0071:
push dword ptr [ebp+8]
call SYMBCOMPDELIMPORTLIST
add esp, 4
.Lt_0073:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .Lt_0074
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call SYMBDELSYMBOL
add esp, 8
jmp .Lt_0073
.Lt_0074:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
je .Lt_0076
mov eax, dword ptr [ebp+8]
push dword ptr [eax+92]
lea eax, [SYMB+98652]
push eax
call LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+92], 0
.Lt_0076:
.Lt_0075:
cmp dword ptr [ebp+12], 0
je .Lt_0078
mov eax, dword ptr [ebp+8]
lea ebx, [eax+72]
push ebx
call HASHEND
add esp, 4
.Lt_0078:
.Lt_0077:
.Lt_0072:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELNAMESPACE
SYMBDELNAMESPACE:
push ebp
mov ebp, esp
.Lt_0079:
push -1
push dword ptr [ebp+8]
call SYMBDELNAMESPACEMEMBERS
add esp, 8
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 4
.Lt_007A:
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBNAMESPACEIMPORTEX
SYMBNAMESPACEIMPORTEX:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0097:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HISONPARENTLIST
add esp, 8
test eax, eax
je .Lt_009A
mov dword ptr [ebp-4], 0
jmp .Lt_0098
.Lt_009A:
.Lt_0099:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .Lt_009C
lea eax, [SYMB+98652]
push eax
call LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+92], eax
.Lt_009C:
.Lt_009B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HISONIMPORTLIST
add esp, 8
test eax, eax
jne .Lt_009E
push dword ptr [ebp+12]
call HADDIMPORT
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00A0
mov dword ptr [ebp-4], 0
jmp .Lt_0098
.Lt_00A0:
.Lt_009F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+68], eax
push dword ptr [ebp-8]
call SYMBCOMPADDTOIMPORTLIST
add esp, 4
push dword ptr [ebp-8]
call SYMBCOMPADDTOEXPORTLIST
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_00A1:
cmp dword ptr [ebp-8], 0
je .Lt_00A2
push dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call SYMBNAMESPACEIMPORTEX
add esp, 8
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
jmp .Lt_00A1
.Lt_00A2:
push dword ptr [ebp+8]
call HADDTOHASHTBLIST
add esp, 4
.Lt_009E:
.Lt_009D:
mov dword ptr [ebp-4], -1
.Lt_0098:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBNAMESPACEIMPORT
SYMBNAMESPACEIMPORT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00A3:
push dword ptr [SYMB+98528]
push dword ptr [ebp+8]
call SYMBNAMESPACEIMPORTEX
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_00A4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBNAMESPACEREMOVE
SYMBNAMESPACEREMOVE:
push ebp
mov ebp, esp
.Lt_00A5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_00A8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HDELFROMHASHTBLIST
add esp, 4
push dword ptr [ebp+8]
call SYMBCOMPDELFROMEXPORTLIST
add esp, 4
push dword ptr [ebp+8]
call SYMBCOMPDELFROMIMPORTLIST
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
.Lt_00A8:
.Lt_00A7:
cmp dword ptr [ebp+12], 0
jne .Lt_00AA
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 4
.Lt_00AA:
.Lt_00A9:
.Lt_00A6:
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBNAMESPACEREIMPORT
SYMBNAMESPACEREIMPORT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00AB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+20], 0
je .Lt_00AE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+100]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00B0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
jmp .Lt_00AF
.Lt_00B0:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
.Lt_00AF:
cmp dword ptr [ebp-8], 0
je .Lt_00B2
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call SYMBHASHLISTINSERTNAMESPACE
add esp, 8
.Lt_00B2:
.Lt_00B1:
.Lt_00AE:
.Lt_00AD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.Lt_00B3:
cmp dword ptr [ebp-4], 0
je .Lt_00B4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_00B5:
cmp dword ptr [ebp-8], 0
je .Lt_00B6
mov eax, dword ptr [ebp-4]
push dword ptr [eax+68]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call SYMBNAMESPACEIMPORTEX
add esp, 8
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
jmp .Lt_00B5
.Lt_00B6:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-4], eax
jmp .Lt_00B3
.Lt_00B4:
.Lt_00AC:
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
.balign 16
HADDIMPORT:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_007B:
mov eax, dword ptr [SYMB+98528]
cmp dword ptr [ebp+8], eax
jne .Lt_007E
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
jmp .Lt_007D
.Lt_007E:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+68]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
.Lt_007D:
push 0
cmp dword ptr [ebp-16], 0
je .Lt_007F
mov dword ptr [ebp-20], 128
jmp .Lt_00B7
.Lt_007F:
mov dword ptr [ebp-20], 0
.Lt_00B7:
push dword ptr [ebp-20]
push 0
push -2147483648
push 0
push 0
push 16
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push 0
push 0
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-4], eax
.Lt_007C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDTOHASHTBLIST:
push ebp
mov ebp, esp
push ebx
.Lt_0081:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
inc dword ptr [ebx+16]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 1
jne .Lt_0084
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [ebp+8]
call SYMBHASHLISTINSERTNAMESPACE
add esp, 8
.Lt_0084:
.Lt_0083:
.Lt_0082:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDELFROMHASHTBLIST:
push ebp
mov ebp, esp
push ebx
.Lt_0085:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
dec dword ptr [ebx+16]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 0
jne .Lt_0088
push dword ptr [ebp+8]
call SYMBHASHLISTREMOVENAMESPACE
add esp, 4
.Lt_0088:
.Lt_0087:
.Lt_0086:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HISONPARENTLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0089:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_008B:
lea eax, [SYMB+98352]
cmp dword ptr [ebp-8], eax
je .Lt_008C
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+8], eax
jne .Lt_008E
mov dword ptr [ebp-4], -1
jmp .Lt_008A
.Lt_008E:
.Lt_008D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_008B
.Lt_008C:
mov dword ptr [ebp-4], 0
.Lt_008A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HISONIMPORTLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_008F:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+92], 0
je .Lt_0092
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_0093:
cmp dword ptr [ebp-8], 0
je .Lt_0094
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+56], ebx
jne .Lt_0096
mov dword ptr [ebp-4], -1
jmp .Lt_0090
.Lt_0096:
.Lt_0095:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
jmp .Lt_0093
.Lt_0094:
.Lt_0092:
.Lt_0091:
mov dword ptr [ebp-4], 0
.Lt_0090:
mov eax, dword ptr [ebp-4]
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
