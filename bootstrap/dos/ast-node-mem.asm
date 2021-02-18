	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTNEWMEM
_ASTNEWMEM:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_005F:
push 1
call dword ptr [_IR+20]
add esp, 4
mov dword ptr [ebp-12], eax
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 107
jne .Lt_0062
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 16
jne .Lt_0064
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
jmp .Lt_0063
.Lt_0064:
mov ecx, dword ptr [ebp-12]
inc ecx
mov ebx, ecx
mov eax, 0
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
.Lt_0063:
.Lt_0062:
.Lt_0061:
mov eax, dword ptr [ebp-12]
mov ebx, 0
cmp dword ptr [ebp-16], ebx
mov ecx, -1
ja .Lt_0069
jb .Lt_006A
cmp dword ptr [ebp-20], eax
ja .Lt_0069
.Lt_006A:
xor ecx, ecx
.Lt_0069:
cmp dword ptr [ebp-12], 0
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .Lt_0066
push dword ptr [ebp+12]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+8], 105
jne .Lt_0068
push dword ptr [ebp+16]
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+16], eax
.Lt_0068:
.Lt_0067:
.Lt_0066:
.Lt_0065:
push 0
push -2147483648
push 12
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+28], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+56], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
mov dword ptr [eax+60], ecx
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ecx+20], ebx
mov dword ptr [ecx+24], eax
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0060:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDNEWOP
_ASTBUILDNEWOP:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
.Lt_0072:
mov dword ptr [ebp-20], 5
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp+20], 0
je .Lt_0076
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _TYPEHASCTOR
add esp, 8
test eax, eax
jne .Lt_0078
mov dword ptr [ebp-20], 0
jmp .Lt_0077
.Lt_0078:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 10
jne .Lt_0079
mov dword ptr [ebp-20], 1
.Lt_0079:
.Lt_0077:
jmp .Lt_0075
.Lt_0076:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _TYPEHASDEFCTOR
add esp, 8
test eax, eax
je .Lt_007B
cmp dword ptr [ebp+8], 79
jne .Lt_007D
mov dword ptr [ebp-20], 3
inc dword ptr [ebp-24]
jmp .Lt_007C
.Lt_007D:
mov dword ptr [ebp-20], 2
.Lt_007C:
jmp .Lt_007A
.Lt_007B:
cmp dword ptr [ebp+32], 0
je .Lt_007E
mov dword ptr [ebp-20], 4
inc dword ptr [ebp-24]
.Lt_007E:
.Lt_007A:
.Lt_0075:
cmp dword ptr [ebp+8], 79
jne .Lt_0080
cmp dword ptr [ebp+36], 0
jne .Lt_0082
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _TYPENEEDSDTORCALL
add esp, 8
mov dword ptr [ebp-16], eax
.Lt_0082:
.Lt_0081:
.Lt_0080:
.Lt_007F:
cmp dword ptr [ebp+36], 0
jne .Lt_0084
inc dword ptr [ebp-24]
.Lt_0084:
.Lt_0083:
cmp dword ptr [ebp-16], 0
je .Lt_0086
inc dword ptr [ebp-24]
.Lt_0086:
.Lt_0085:
cmp dword ptr [ebp-24], 1
jle .Lt_0088
push dword ptr [ebp+16]
call _ASTHASSIDEFX
add esp, 4
test eax, eax
je .Lt_008A
lea eax, [ebp+16]
push eax
call _ASTREMSIDEFX
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_008A:
.Lt_0089:
.Lt_0088:
.Lt_0087:
cmp dword ptr [ebp+36], 0
jne .Lt_008C
push 1
push 0
push 0
push 9
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _SYMBCALCLEN
add esp, 8
push edx
push eax
call _ASTNEWCONSTI
add esp, 16
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call _HELEMENTS
add esp, 8
push eax
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 0
je .Lt_008E
push 1
push 0
push 0
push 9
mov edx, dword ptr [_SYMB_DTYPETB+256]
mov eax, edx
sar eax, 31
push eax
push edx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_008E:
.Lt_008D:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _RTLMEMNEWOP
add esp, 16
mov dword ptr [ebp+36], eax
cmp dword ptr [ebp+36], 0
jne .Lt_0090
mov dword ptr [ebp-4], 0
jmp .Lt_0073
.Lt_0090:
.Lt_008F:
.Lt_008C:
.Lt_008B:
push 0
push 64
push dword ptr [ebp+36]
push dword ptr [ebp+12]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-28], eax
push 0
push -1
push 0
push dword ptr [ebp-28]
push 1
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
push 48
call _ASTNEWBOP
add esp, 20
push eax
call _ASTBUILDBRANCH
add esp, 16
push eax
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
je .Lt_0092
push 0
push 64
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call _HELEMENTS
add esp, 8
push eax
push 0
push 0
push 0
push -2147483648
push 0
push 41
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
push 0
push 1
push 0
push 0
push 8
mov edx, dword ptr [_SYMB_DTYPETB+256]
mov eax, edx
sar eax, 31
push eax
push edx
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push 32
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
push 1
call _ASTNEWSELFBOP
add esp, 20
push eax
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
.Lt_0092:
.Lt_0091:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-32], eax
jmp .Lt_0094
.Lt_0096:
push 64
push 0
push dword ptr [ebp+20]
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
push eax
call __Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
add esp, 16
mov dword ptr [ebp+20], eax
jmp .Lt_0093
.Lt_0097:
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp+20]
call _ASTCALLCTORTOCALL
add esp, 4
push eax
call _ASTPATCHCTORCALL
add esp, 8
mov dword ptr [ebp+20], eax
jmp .Lt_0093
.Lt_0098:
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp+28]
call _ASTBUILDCTORCALL
add esp, 8
mov dword ptr [ebp+20], eax
jmp .Lt_0093
.Lt_0099:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call _HELEMENTS
add esp, 8
push eax
push dword ptr [ebp+12]
call _HCALLCTORLIST
add esp, 16
mov dword ptr [ebp+20], eax
jmp .Lt_0093
.Lt_009A:
push 1
push 0
push 0
push 9
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call _SYMBCALCLEN
add esp, 8
push edx
push eax
call _ASTNEWCONSTI
add esp, 16
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call _HELEMENTS
add esp, 8
push eax
push 30
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push 0
push 0
push 0
push dword ptr [ebp-8]
push 0
push 9
call _ASTNEWCONV
add esp, 20
push eax
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
push eax
push 107
call _ASTNEWMEM
add esp, 20
mov dword ptr [ebp+20], eax
jmp .Lt_0093
.Lt_009B:
mov dword ptr [ebp+20], 0
jmp .Lt_0093
.Lt_0094:
cmp dword ptr [ebp-32], 4
ja .Lt_009B
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.LT_009C+eax*4]
_.LT_009C:
.int .Lt_0096
.int .Lt_0097
.int .Lt_0098
.int .Lt_0099
.int .Lt_009A
.Lt_0093:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
push 0
push 0
push dword ptr [ebp-28]
call _ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-12]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push dword ptr [ebp-28]
call _ASTNEWLOOP
add esp, 8
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0073:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTBUILDDELETEOP
_ASTBUILDDELETEOP:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_009F:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-20]
and eax, 31
mov ebx, dword ptr [ebp-20]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp-20]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp-20]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-20], eax
push dword ptr [ebp+12]
call _ASTHASSIDEFX
add esp, 4
test eax, eax
je .Lt_00A2
lea eax, [ebp+12]
push eax
call _ASTREMSIDEFX
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00A2:
.Lt_00A1:
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
push 45
call _ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _TYPENEEDSDTORCALL
add esp, 8
test eax, eax
je .Lt_00A4
cmp dword ptr [ebp+8], 81
jne .Lt_00A6
push 0
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _HCALLDTORLIST
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 1
push 0
push 0
push 8
mov ebx, dword ptr [_SYMB_DTYPETB+228]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+12]
push 29
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp+12], eax
jmp .Lt_00A5
.Lt_00A6:
push 0
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+12]
call _ASTCLONETREE
add esp, 4
push eax
call _ASTNEWDEREF
add esp, 20
push eax
call __Z19ASTBUILDVARDTORCALLP7ASTNODE
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_00A5:
.Lt_00A4:
.Lt_00A3:
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLMEMDELETEOP
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push -1
push dword ptr [ebp-12]
call _ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTLOADMEM
_ASTLOADMEM:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00AA
mov dword ptr [ebp-4], 0
jmp .Lt_00A8
.Lt_00AA:
.Lt_00A9:
push dword ptr [ebp-8]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-8]
call _ASTDELNODE
add esp, 4
cmp dword ptr [ebp-12], 0
je .Lt_00AC
push dword ptr [ebp-12]
call _ASTLOAD
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-12]
call _ASTDELNODE
add esp, 4
jmp .Lt_00AB
.Lt_00AC:
mov dword ptr [ebp-20], 0
.Lt_00AB:
cmp dword ptr [_AST+136], 0
je .Lt_00AE
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call dword ptr [_IR+152]
add esp, 20
.Lt_00AE:
.Lt_00AD:
mov dword ptr [ebp-4], 0
.Lt_00A8:
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
.balign 16
_HCALLCTORLIST:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_006C:
push 0
push 9
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+16]
and eax, 31
mov ebx, dword ptr [ebp+16]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp+16]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp+16]
and ebx, 32505856
or eax, ebx
push eax
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-20], eax
push 64
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-20]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
mov dword ptr [ebp-24], eax
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call _ASTBUILDWHILECOUNTERBEGIN
add esp, 24
mov dword ptr [ebp-24], eax
push 0
push dword ptr [ebp-20]
call _ASTBUILDVARDEREF
add esp, 4
push eax
push dword ptr [ebp+20]
call _ASTBUILDCTORCALL
add esp, 8
push eax
push dword ptr [ebp-24]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-24], eax
push 0
push 1
push dword ptr [ebp-20]
call _ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp-24]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-24], eax
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call _ASTBUILDWHILECOUNTEREND
add esp, 20
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call _ASTNEWLOOP
add esp, 8
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [ebp-16]
call _ASTNEWLOOP
add esp, 8
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
.Lt_006D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HELEMENTS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_006E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 1
jle .Lt_0071
push dword ptr [ebp+8]
call _ASTCLONETREE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0070
.Lt_0071:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0070:
mov eax, dword ptr [ebp+12]
dec dword ptr [eax]
.Lt_006F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLDTORLIST:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_009D:
push 0
push 8
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-20], eax
push 0
push 8
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-24], eax
push 64
push 0
push 0
push 0
push -2147483648
push 0
push 8
push 1
push 0
push 0
push 8
mov eax, dword ptr [_SYMB_DTYPETB+256]
neg eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+8]
call _ASTCLONETREE
add esp, 4
push eax
push 28
call _ASTNEWBOP
add esp, 20
push eax
push 0
push 41
call _ASTNEWCONV
add esp, 20
push eax
call _ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp-24]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
mov dword ptr [ebp-28], eax
push 0
push 64
push 7
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-20]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
push -1
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call _ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call _ASTBUILDWHILECOUNTERBEGIN
add esp, 24
mov dword ptr [ebp-28], eax
push 0
push -1
push dword ptr [ebp-20]
call _ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
push 0
push dword ptr [ebp-20]
call _ASTBUILDVARDEREF
add esp, 4
push eax
call __Z19ASTBUILDVARDTORCALLP7ASTNODE
add esp, 4
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call _ASTBUILDWHILECOUNTEREND
add esp, 20
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.Lt_009E:
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
