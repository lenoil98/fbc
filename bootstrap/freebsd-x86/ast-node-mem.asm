	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTNEWMEM
ASTNEWMEM:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_005E:
push 1
call dword ptr [IR+20]
add esp, 4
mov dword ptr [ebp-12], eax
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+8], 107
jne .Lt_0061
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebx], 16
jne .Lt_0063
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-20], ecx
mov dword ptr [ebp-16], eax
jmp .Lt_0062
.Lt_0063:
mov ecx, dword ptr [ebp-12]
inc ecx
mov ebx, ecx
mov eax, 0
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
.Lt_0062:
.Lt_0061:
.Lt_0060:
mov eax, dword ptr [ebp-12]
mov ebx, 0
cmp dword ptr [ebp-16], ebx
mov ecx, -1
ja .Lt_0068
jb .Lt_0069
cmp dword ptr [ebp-20], eax
ja .Lt_0068
.Lt_0069:
xor ecx, ecx
.Lt_0068:
cmp dword ptr [ebp-12], 0
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .Lt_0065
push dword ptr [ebp+12]
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+8], 105
jne .Lt_0067
push dword ptr [ebp+16]
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp+16], eax
.Lt_0067:
.Lt_0066:
.Lt_0065:
.Lt_0064:
push 0
push -2147483648
push 12
call ASTNEWNODE
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
.Lt_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDNEWOP
ASTBUILDNEWOP:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-4], 0
.Lt_0071:
mov dword ptr [ebp-20], 5
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp+20], 0
je .Lt_0075
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call TYPEHASCTOR
add esp, 8
test eax, eax
jne .Lt_0077
mov dword ptr [ebp-20], 0
jmp .Lt_0076
.Lt_0077:
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 10
jne .Lt_0078
mov dword ptr [ebp-20], 1
.Lt_0078:
.Lt_0076:
jmp .Lt_0074
.Lt_0075:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call TYPEHASDEFCTOR
add esp, 8
test eax, eax
je .Lt_007A
cmp dword ptr [ebp+8], 79
jne .Lt_007C
mov dword ptr [ebp-20], 3
inc dword ptr [ebp-24]
jmp .Lt_007B
.Lt_007C:
mov dword ptr [ebp-20], 2
.Lt_007B:
jmp .Lt_0079
.Lt_007A:
cmp dword ptr [ebp+32], 0
je .Lt_007D
mov dword ptr [ebp-20], 4
inc dword ptr [ebp-24]
.Lt_007D:
.Lt_0079:
.Lt_0074:
cmp dword ptr [ebp+8], 79
jne .Lt_007F
cmp dword ptr [ebp+36], 0
jne .Lt_0081
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call TYPENEEDSDTORCALL
add esp, 8
mov dword ptr [ebp-16], eax
.Lt_0081:
.Lt_0080:
.Lt_007F:
.Lt_007E:
cmp dword ptr [ebp+36], 0
jne .Lt_0083
inc dword ptr [ebp-24]
.Lt_0083:
.Lt_0082:
cmp dword ptr [ebp-16], 0
je .Lt_0085
inc dword ptr [ebp-24]
.Lt_0085:
.Lt_0084:
cmp dword ptr [ebp-24], 1
jle .Lt_0087
push dword ptr [ebp+16]
call ASTHASSIDEFX
add esp, 4
test eax, eax
je .Lt_0089
lea eax, [ebp+16]
push eax
call ASTREMSIDEFX
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0089:
.Lt_0088:
.Lt_0087:
.Lt_0086:
cmp dword ptr [ebp+36], 0
jne .Lt_008B
push 1
push 0
push 0
push 9
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call SYMBCALCLEN
add esp, 8
push edx
push eax
call ASTNEWCONSTI
add esp, 16
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call HELEMENTS
add esp, 8
push eax
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-16], 0
je .Lt_008D
push 1
push 0
push 0
push 9
mov edx, dword ptr [SYMB_DTYPETB+256]
mov eax, edx
sar eax, 31
push eax
push edx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_008D:
.Lt_008C:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call RTLMEMNEWOP
add esp, 16
mov dword ptr [ebp+36], eax
cmp dword ptr [ebp+36], 0
jne .Lt_008F
mov dword ptr [ebp-4], 0
jmp .Lt_0072
.Lt_008F:
.Lt_008E:
.Lt_008B:
.Lt_008A:
push 0
push 64
push dword ptr [ebp+36]
push dword ptr [ebp+12]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
push 4
push 0
call SYMBADDLABEL
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
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
push eax
push 48
call ASTNEWBOP
add esp, 20
push eax
call ASTBUILDBRANCH
add esp, 16
push eax
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
je .Lt_0091
push 0
push 64
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call HELEMENTS
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
push eax
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
push 0
push 1
push 0
push 0
push 8
mov edx, dword ptr [SYMB_DTYPETB+256]
mov eax, edx
sar eax, 31
push eax
push edx
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push 32
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
push eax
push 1
call ASTNEWSELFBOP
add esp, 20
push eax
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
.Lt_0091:
.Lt_0090:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-32], eax
jmp .Lt_0093
.Lt_0095:
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
push eax
call _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
add esp, 16
mov dword ptr [ebp+20], eax
jmp .Lt_0092
.Lt_0096:
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp+20]
call ASTCALLCTORTOCALL
add esp, 4
push eax
call ASTPATCHCTORCALL
add esp, 8
mov dword ptr [ebp+20], eax
jmp .Lt_0092
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp+28]
call ASTBUILDCTORCALL
add esp, 8
mov dword ptr [ebp+20], eax
jmp .Lt_0092
.Lt_0098:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call HELEMENTS
add esp, 8
push eax
push dword ptr [ebp+12]
call HCALLCTORLIST
add esp, 16
mov dword ptr [ebp+20], eax
jmp .Lt_0092
.Lt_0099:
push 1
push 0
push 0
push 9
push dword ptr [ebp+28]
push dword ptr [ebp+24]
call SYMBCALCLEN
add esp, 8
push edx
push eax
call ASTNEWCONSTI
add esp, 16
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+16]
call HELEMENTS
add esp, 8
push eax
push 30
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push 0
push 0
push 0
push dword ptr [ebp-8]
push 0
push 9
call ASTNEWCONV
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
push eax
push 107
call ASTNEWMEM
add esp, 20
mov dword ptr [ebp+20], eax
jmp .Lt_0092
.Lt_009A:
mov dword ptr [ebp+20], 0
jmp .Lt_0092
.Lt_0093:
cmp dword ptr [ebp-32], 4
ja .Lt_009A
mov eax, dword ptr [ebp-32]
jmp dword ptr [.LT_009B+eax*4]
.LT_009B:
.int .Lt_0095
.int .Lt_0096
.int .Lt_0097
.int .Lt_0098
.int .Lt_0099
.Lt_0092:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
push 0
push 0
push dword ptr [ebp-28]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-12]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push dword ptr [ebp-28]
call ASTNEWLOOP
add esp, 8
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0072:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTBUILDDELETEOP
ASTBUILDDELETEOP:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_009E:
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
call ASTHASSIDEFX
add esp, 4
test eax, eax
je .Lt_00A1
lea eax, [ebp+12]
push eax
call ASTREMSIDEFX
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00A1:
.Lt_00A0:
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push 0
push dword ptr [ebp-12]
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
push 45
call ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call TYPENEEDSDTORCALL
add esp, 8
test eax, eax
je .Lt_00A3
cmp dword ptr [ebp+8], 81
jne .Lt_00A5
push 0
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call HCALLDTORLIST
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 1
push 0
push 0
push 8
mov ebx, dword ptr [SYMB_DTYPETB+228]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+12]
push 29
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp+12], eax
jmp .Lt_00A4
.Lt_00A5:
push 0
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call ASTNEWDEREF
add esp, 20
push eax
call _Z19ASTBUILDVARDTORCALLP7ASTNODE
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_00A4:
.Lt_00A3:
.Lt_00A2:
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLMEMDELETEOP
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
push 0
push -1
push dword ptr [ebp-12]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_009F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTLOADMEM
ASTLOADMEM:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00A9
mov dword ptr [ebp-4], 0
jmp .Lt_00A7
.Lt_00A9:
.Lt_00A8:
push dword ptr [ebp-8]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 4
cmp dword ptr [ebp-12], 0
je .Lt_00AB
push dword ptr [ebp-12]
call ASTLOAD
add esp, 4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-12]
call ASTDELNODE
add esp, 4
jmp .Lt_00AA
.Lt_00AB:
mov dword ptr [ebp-20], 0
.Lt_00AA:
cmp dword ptr [AST+136], 0
je .Lt_00AD
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call dword ptr [IR+152]
add esp, 20
.Lt_00AD:
.Lt_00AC:
mov dword ptr [ebp-4], 0
.Lt_00A7:
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
.balign 16
HCALLCTORLIST:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_006B:
push 0
push 9
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 4
push 0
call SYMBADDLABEL
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
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-20], eax
push 64
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-20]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
mov dword ptr [ebp-24], eax
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call ASTBUILDWHILECOUNTERBEGIN
add esp, 24
mov dword ptr [ebp-24], eax
push 0
push dword ptr [ebp-20]
call ASTBUILDVARDEREF
add esp, 4
push eax
push dword ptr [ebp+20]
call ASTBUILDCTORCALL
add esp, 8
push eax
push dword ptr [ebp-24]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-24], eax
push 0
push 1
push dword ptr [ebp-20]
call ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp-24]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-24], eax
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-24]
call ASTBUILDWHILECOUNTEREND
add esp, 20
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [ebp-12]
call ASTNEWLOOP
add esp, 8
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [ebp-16]
call ASTNEWLOOP
add esp, 8
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-4], eax
.Lt_006C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HELEMENTS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_006D:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 1
jle .Lt_0070
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_006F
.Lt_0070:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_006F:
mov eax, dword ptr [ebp+12]
dec dword ptr [eax]
.Lt_006E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HCALLDTORLIST:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_009C:
push 0
push 8
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-8], eax
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-20], eax
push 0
push 8
call SYMBADDTEMPVAR
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
mov eax, dword ptr [SYMB_DTYPETB+256]
neg eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+8]
call ASTCLONETREE
add esp, 4
push eax
push 28
call ASTNEWBOP
add esp, 20
push eax
push 0
push 41
call ASTNEWCONV
add esp, 20
push eax
call ASTNEWDEREF
add esp, 20
push eax
push dword ptr [ebp-24]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
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
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-20]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
push -1
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-24]
call ASTNEWVAR
add esp, 20
push eax
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call ASTBUILDWHILECOUNTERBEGIN
add esp, 24
mov dword ptr [ebp-28], eax
push 0
push -1
push dword ptr [ebp-20]
call ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
push 0
push dword ptr [ebp-20]
call ASTBUILDVARDEREF
add esp, 4
push eax
call _Z19ASTBUILDVARDTORCALLP7ASTNODE
add esp, 4
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call ASTBUILDWHILECOUNTEREND
add esp, 20
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.Lt_009D:
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
