	.intel_syntax noprefix

.section .text
.balign 16

.globl HASHINIT
HASHINIT:
push ebp
mov ebp, esp
push ebx
.Lt_0014:
call LAZYINIT
mov eax, dword ptr [ebp+12]
sal eax, 3
push eax
call XCALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], eax
.Lt_0015:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HASHEND
HASHEND:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0016:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+8], 0
je .Lt_0019
mov dword ptr [ebp-4], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
dec eax
mov dword ptr [ebp-20], eax
jmp .Lt_001B
.Lt_001E:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
.Lt_001F:
cmp dword ptr [ebp-8], 0
je .Lt_0020
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
call free
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax], 0
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call HASHDELITEM
add esp, 8
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
jmp .Lt_001F
.Lt_0020:
add dword ptr [ebp-16], 8
.Lt_001C:
inc dword ptr [ebp-4]
.Lt_001B:
mov eax, dword ptr [ebp-20]
cmp dword ptr [ebp-4], eax
jle .Lt_001E
.Lt_001D:
jmp .Lt_0018
.Lt_0019:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
dec ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_0022
.Lt_0025:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_0026:
cmp dword ptr [ebp-8], 0
je .Lt_0027
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx], 0
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call HASHDELITEM
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
jmp .Lt_0026
.Lt_0027:
add dword ptr [ebp-16], 8
.Lt_0023:
inc dword ptr [ebp-4]
.Lt_0022:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-4], ebx
jle .Lt_0025
.Lt_0024:
.Lt_0018:
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call free
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 0
call LAZYEND
.Lt_0017:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HASHHASH
HASHHASH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0028:
mov dword ptr [ebp-8], 0
.Lt_002A:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
test ebx, ebx
je .Lt_002B
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
mov ebx, dword ptr [ebp-8]
shl ebx, 5
add eax, ebx
sub eax, dword ptr [ebp-8]
mov dword ptr [ebp-8], eax
inc dword ptr [ebp+8]
jmp .Lt_002A
.Lt_002B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0029:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HASHLOOKUPEX
HASHLOOKUPEX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_002C:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp+16]
xor edx, edx
div ebx
mov eax, edx
mov dword ptr [ebp+16], eax
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
sal eax, 3
mov ecx, dword ptr [ebx]
add ecx, eax
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_002F
jmp .Lt_002D
.Lt_002F:
.Lt_002E:
.Lt_0030:
cmp dword ptr [ebp-8], 0
je .Lt_0031
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0033
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-4], ecx
jmp .Lt_002D
.Lt_0033:
.Lt_0032:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+12]
mov dword ptr [ebp-8], eax
jmp .Lt_0030
.Lt_0031:
.Lt_002D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HASHLOOKUP
HASHLOOKUP:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0034:
push dword ptr [ebp+12]
call HASHHASH
add esp, 4
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HASHLOOKUPEX
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0035:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl HASHADD
HASHADD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0042:
cmp dword ptr [ebp+20], 4294967295
jne .Lt_0045
push dword ptr [ebp+12]
call HASHHASH
add esp, 4
mov dword ptr [ebp+20], eax
.Lt_0045:
.Lt_0044:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp+20]
xor edx, edx
div ebx
mov eax, edx
mov dword ptr [ebp+20], eax
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+20]
sal eax, 3
mov ecx, dword ptr [ebx]
add ecx, eax
push ecx
call HASHNEWITEM
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0047
jmp .Lt_0043
.Lt_0047:
.Lt_0046:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ecx+4], eax
.Lt_0043:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HASHDEL
HASHDEL:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0048:
cmp dword ptr [ebp+12], 0
jne .Lt_004B
jmp .Lt_0049
.Lt_004B:
.Lt_004A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp+16]
xor edx, edx
div ebx
mov eax, edx
mov dword ptr [ebp+16], eax
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
sal eax, 3
mov ecx, dword ptr [ebx]
add ecx, eax
mov dword ptr [ebp-4], ecx
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+8], 0
je .Lt_004D
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
call free
add esp, 4
.Lt_004D:
.Lt_004C:
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 0
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+4], 0
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call HASHDELITEM
add esp, 8
.Lt_0049:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl STRSETADD
STRSETADD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_004E:
push -1
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
test eax, eax
jne .Lt_0051
jmp .Lt_004F
.Lt_0051:
.Lt_0050:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
call HASHLOOKUP
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_0053
jmp .Lt_004F
.Lt_0053:
.Lt_0052:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-4], eax
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrLen
add esp, 8
test eax, eax
jne .Lt_0055
jmp .Lt_004F
.Lt_0055:
.Lt_0054:
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call HASHHASH
add esp, 4
push eax
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
call HASHADD
add esp, 16
.Lt_004F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl STRSETCOPY
STRSETCOPY:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0056:
mov eax, dword ptr [ebp+12]
lea ebx, [eax]
push ebx
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0058:
cmp dword ptr [ebp-4], 0
je .Lt_0059
mov eax, dword ptr [ebp-4]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
push dword ptr [ebp+8]
call STRSETADD
add esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0058
.Lt_0059:
.Lt_0057:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl STRSETINIT
STRSETINIT:
push ebp
mov ebp, esp
push ebx
.Lt_005A:
push -1
push 16
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call LISTINIT
add esp, 16
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+32]
push eax
call HASHINIT
add esp, 12
.Lt_005B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl STRSETEND
STRSETEND:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_005C:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+32]
push ebx
call HASHEND
add esp, 4
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_005E:
cmp dword ptr [ebp-4], 0
je .Lt_005F
push 0
push 1
push offset Lt_0000
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 20
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_005E
.Lt_005F:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call LISTEND
add esp, 4
.Lt_005D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__hash:
.Lt_0002:
.Lt_0003:
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
push ebp
mov ebp, esp
push ebx
.Lt_0006:
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
.Lt_0007:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
LAZYINIT:
.Lt_000C:
inc dword ptr [ITEMPOOL]
cmp dword ptr [ITEMPOOL], 1
jle .Lt_000F
jmp .Lt_000D
.Lt_000F:
.Lt_000E:
push 6
push 16
push 8096
lea eax, [ITEMPOOL+4]
push eax
call LISTINIT
add esp, 16
.Lt_000D:
ret
.balign 16
LAZYEND:
.Lt_0010:
dec dword ptr [ITEMPOOL]
cmp dword ptr [ITEMPOOL], 0
jle .Lt_0013
jmp .Lt_0011
.Lt_0013:
.Lt_0012:
lea eax, [ITEMPOOL+4]
push eax
call LISTEND
add esp, 4
.Lt_0011:
ret
.balign 16
HASHNEWITEM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0036:
lea eax, [ITEMPOOL+4]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
je .Lt_0039
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+12], eax
jmp .Lt_0038
.Lt_0039:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax], ebx
.Lt_0038:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+8], ecx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+12], 0
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ecx+4], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0037:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HASHDELITEM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_003A:
cmp dword ptr [ebp+12], 0
jne .Lt_003D
jmp .Lt_003B
.Lt_003D:
.Lt_003C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-4], 0
je .Lt_003F
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+12], ebx
jmp .Lt_003E
.Lt_003F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx], eax
.Lt_003E:
cmp dword ptr [ebp-8], 0
je .Lt_0041
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+8], ebx
jmp .Lt_0040
.Lt_0041:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4], eax
.Lt_0040:
push dword ptr [ebp+12]
lea eax, [ITEMPOOL+4]
push eax
call LISTDELNODE
add esp, 8
.Lt_003B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	ITEMPOOL,36

.section .ctors
.int fb_ctor__hash
