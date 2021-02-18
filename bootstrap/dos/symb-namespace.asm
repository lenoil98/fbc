	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBADDNAMESPACE
_SYMBADDNAMESPACE:
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
call _SYMBNEWSYMBOL
add esp, 44
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
call _HASHINIT
add esp, 12
jmp .Lt_0070
.Lt_0071:
push 12
push 0
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+72]
push eax
call _memset
add esp, 12
.Lt_0070:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+92], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+96], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+100], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELNAMESPACEMEMBERS
_SYMBDELNAMESPACEMEMBERS:
push ebp
mov ebp, esp
push ebx
.Lt_0072:
push dword ptr [ebp+8]
call _SYMBCOMPDELIMPORTLIST
add esp, 4
.Lt_0074:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .Lt_0075
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _SYMBDELSYMBOL
add esp, 8
jmp .Lt_0074
.Lt_0075:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
je .Lt_0077
mov eax, dword ptr [ebp+8]
push dword ptr [eax+92]
lea eax, [_SYMB+98652]
push eax
call _LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+92], 0
.Lt_0077:
.Lt_0076:
cmp dword ptr [ebp+12], 0
je .Lt_0079
mov eax, dword ptr [ebp+8]
lea ebx, [eax+72]
push ebx
call _HASHEND
add esp, 4
.Lt_0079:
.Lt_0078:
.Lt_0073:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBDELNAMESPACE
_SYMBDELNAMESPACE:
push ebp
mov ebp, esp
.Lt_007A:
push -1
push dword ptr [ebp+8]
call _SYMBDELNAMESPACEMEMBERS
add esp, 8
push dword ptr [ebp+8]
call _SYMBFREESYMBOL
add esp, 4
.Lt_007B:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBNAMESPACEIMPORTEX
_SYMBNAMESPACEIMPORTEX:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0098:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HISONPARENTLIST
add esp, 8
test eax, eax
je .Lt_009B
mov dword ptr [ebp-4], 0
jmp .Lt_0099
.Lt_009B:
.Lt_009A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .Lt_009D
lea eax, [_SYMB+98652]
push eax
call _LISTNEWNODE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+92], eax
.Lt_009D:
.Lt_009C:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HISONIMPORTLIST
add esp, 8
test eax, eax
jne .Lt_009F
push dword ptr [ebp+12]
call _HADDIMPORT
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00A1
mov dword ptr [ebp-4], 0
jmp .Lt_0099
.Lt_00A1:
.Lt_00A0:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+68], eax
push dword ptr [ebp-8]
call _SYMBCOMPADDTOIMPORTLIST
add esp, 4
push dword ptr [ebp-8]
call _SYMBCOMPADDTOEXPORTLIST
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_00A2:
cmp dword ptr [ebp-8], 0
je .Lt_00A3
push dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _SYMBNAMESPACEIMPORTEX
add esp, 8
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
jmp .Lt_00A2
.Lt_00A3:
push dword ptr [ebp+8]
call _HADDTOHASHTBLIST
add esp, 4
.Lt_009F:
.Lt_009E:
mov dword ptr [ebp-4], -1
.Lt_0099:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBNAMESPACEIMPORT
_SYMBNAMESPACEIMPORT:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00A4:
push dword ptr [_SYMB+98528]
push dword ptr [ebp+8]
call _SYMBNAMESPACEIMPORTEX
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_00A5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBNAMESPACEREMOVE
_SYMBNAMESPACEREMOVE:
push ebp
mov ebp, esp
.Lt_00A6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
je .Lt_00A9
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _HDELFROMHASHTBLIST
add esp, 4
push dword ptr [ebp+8]
call _SYMBCOMPDELFROMEXPORTLIST
add esp, 4
push dword ptr [ebp+8]
call _SYMBCOMPDELFROMIMPORTLIST
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
.Lt_00A9:
.Lt_00A8:
cmp dword ptr [ebp+12], 0
jne .Lt_00AB
push dword ptr [ebp+8]
call _SYMBFREESYMBOL
add esp, 4
.Lt_00AB:
.Lt_00AA:
.Lt_00A7:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBNAMESPACEREIMPORT
_SYMBNAMESPACEREIMPORT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00AC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+20], 0
je .Lt_00AF
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+100]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00B1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
jmp .Lt_00B0
.Lt_00B1:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
.Lt_00B0:
cmp dword ptr [ebp-8], 0
je .Lt_00B3
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _SYMBHASHLISTINSERTNAMESPACE
add esp, 8
.Lt_00B3:
.Lt_00B2:
.Lt_00AF:
.Lt_00AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.Lt_00B4:
cmp dword ptr [ebp-4], 0
je .Lt_00B5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_00B6:
cmp dword ptr [ebp-8], 0
je .Lt_00B7
mov eax, dword ptr [ebp-4]
push dword ptr [eax+68]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _SYMBNAMESPACEIMPORTEX
add esp, 8
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
jmp .Lt_00B6
.Lt_00B7:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-4], eax
jmp .Lt_00B4
.Lt_00B5:
.Lt_00AD:
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
.balign 16
_HADDIMPORT:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_007C:
mov eax, dword ptr [_SYMB+98528]
cmp dword ptr [ebp+8], eax
jne .Lt_007F
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
jmp .Lt_007E
.Lt_007F:
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
.Lt_007E:
push 0
cmp dword ptr [ebp-16], 0
je .Lt_0080
mov dword ptr [ebp-20], 128
jmp .Lt_00B8
.Lt_0080:
mov dword ptr [ebp-20], 0
.Lt_00B8:
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
call _SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-4], eax
.Lt_007D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HADDTOHASHTBLIST:
push ebp
mov ebp, esp
push ebx
.Lt_0082:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
inc dword ptr [ebx+16]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 1
jne .Lt_0085
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [ebp+8]
call _SYMBHASHLISTINSERTNAMESPACE
add esp, 8
.Lt_0085:
.Lt_0084:
.Lt_0083:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDELFROMHASHTBLIST:
push ebp
mov ebp, esp
push ebx
.Lt_0086:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
dec dword ptr [ebx+16]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 0
jne .Lt_0089
push dword ptr [ebp+8]
call _SYMBHASHLISTREMOVENAMESPACE
add esp, 4
.Lt_0089:
.Lt_0088:
.Lt_0087:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HISONPARENTLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_008A:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_008C:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp-8], eax
je .Lt_008D
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+8], eax
jne .Lt_008F
mov dword ptr [ebp-4], -1
jmp .Lt_008B
.Lt_008F:
.Lt_008E:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_008C
.Lt_008D:
mov dword ptr [ebp-4], 0
.Lt_008B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HISONIMPORTLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0090:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+92], 0
je .Lt_0093
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_0094:
cmp dword ptr [ebp-8], 0
je .Lt_0095
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+56], ebx
jne .Lt_0097
mov dword ptr [ebp-4], -1
jmp .Lt_0091
.Lt_0097:
.Lt_0096:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-8], eax
jmp .Lt_0094
.Lt_0095:
.Lt_0093:
.Lt_0092:
mov dword ptr [ebp-4], 0
.Lt_0091:
mov eax, dword ptr [ebp-4]
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
