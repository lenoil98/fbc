	.intel_syntax noprefix

.section .text
.balign 16

.globl _Z17ASTBUILDVARASSIGNP8FBSYMBOLll
_Z17ASTBUILDVARASSIGNP8FBSYMBOLll:
.type _Z17ASTBUILDVARASSIGNP8FBSYMBOLll, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
sub esp, 4
push dword ptr [ebp+16]
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size _Z17ASTBUILDVARASSIGNP8FBSYMBOLll, .-_Z17ASTBUILDVARASSIGNP8FBSYMBOLll
.balign 16

.globl _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
_Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl:
.type _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0069:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_006A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl, .-_Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
.balign 16

.globl ASTBUILDFAKEWSTRINGACCESS
ASTBUILDFAKEWSTRINGACCESS:
.type ASTBUILDFAKEWSTRINGACCESS, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_006B:
sub esp, 12
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_006C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDFAKEWSTRINGACCESS, .-ASTBUILDFAKEWSTRINGACCESS
.balign 16

.globl ASTBUILDFAKEWSTRINGASSIGN
ASTBUILDFAKEWSTRINGASSIGN:
.type ASTBUILDFAKEWSTRINGASSIGN, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_006D:
mov dword ptr [ebp-8], 0
sub esp, 12
push dword ptr [ebp+12]
call ASTHASSIDEFX
add esp, 16
test eax, eax
je .Lt_0070
sub esp, 4
push 2
sub esp, 4
lea eax, [ebp+12]
push eax
call ASTREMSIDEFX
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0070:
.Lt_006F:
sub esp, 4
push 0
sub esp, 12
push dword ptr [ebp+16]
sub esp, 4
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 4
push eax
call RTLWSTRLEN
add esp, 4
push eax
call RTLWSTRALLOC
add esp, 8
push eax
push dword ptr [ebp+8]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 2
sub esp, 12
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDFAKEWSTRINGACCESS
add esp, 4
push eax
call ASTNEWASSIGN
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_006E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDFAKEWSTRINGASSIGN, .-ASTBUILDFAKEWSTRINGASSIGN
.balign 16

.globl ASTBUILDVARINC
ASTBUILDVARINC:
.type ASTBUILDVARINC, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0071:
mov dword ptr [ebp-8], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
test ebx, ebx
je .Lt_0074
or dword ptr [ebp-8], 2
.Lt_0074:
.Lt_0073:
cmp dword ptr [ebp+12], 0
jle .Lt_0076
mov dword ptr [ebp-12], 1
jmp .Lt_0075
.Lt_0076:
mov dword ptr [ebp-12], 2
neg dword ptr [ebp+12]
.Lt_0075:
sub esp, 12
push dword ptr [ebp-8]
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp+12]
mov ebx, eax
sar ebx, 31
push ebx
push eax
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 24
push eax
push dword ptr [ebp-12]
call ASTNEWSELFBOP
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_0072:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDVARINC, .-ASTBUILDVARINC
.balign 16

.globl ASTBUILDVARDEREF
ASTBUILDVARDEREF:
.type ASTBUILDVARDEREF, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0077:
sub esp, 12
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_0078:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDVARDEREF, .-ASTBUILDVARDEREF
.balign 16

.globl ASTBUILDVARADDROF
ASTBUILDVARADDROF:
.type ASTBUILDVARADDROF, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0079:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_007A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDVARADDROF, .-ASTBUILDVARADDROF
.balign 16

.globl _Z19ASTBUILDVARDTORCALLP7ASTNODE
_Z19ASTBUILDVARDTORCALLP7ASTNODE:
.type _Z19ASTBUILDVARDTORCALLP7ASTNODE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_007B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 17
jne .Lt_007E
sub esp, 12
push dword ptr [ebp+8]
call RTLSTRDELETE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_007D
.Lt_007E:
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call TYPEHASDTOR
add esp, 16
test eax, eax
je .Lt_007F
sub esp, 4
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call ASTBUILDDTORCALL
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_007F:
.Lt_007D:
.Lt_007C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size _Z19ASTBUILDVARDTORCALLP7ASTNODE, .-_Z19ASTBUILDVARDTORCALLP7ASTNODE
.balign 16

.globl _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
_Z19ASTBUILDVARDTORCALLP8FBSYMBOLl:
.type _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0080:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_0083
sub esp, 4
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call RTLARRAYERASE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0082
.Lt_0083:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .Lt_0086
.Lt_0087:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call RTLSTRDELETE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0084
.Lt_0086:
cmp dword ptr [ebp-8], 39
jne .Lt_0088
.Lt_0089:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call RTLSTRDELETE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0084
.Lt_0088:
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASDTOR
add esp, 16
test eax, eax
je .Lt_008C
cmp dword ptr [ebp+12], 0
je .Lt_008E
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call SYMBGETCOMPDTOR
add esp, 4
push eax
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_0090
sub esp, 4
push 0
push 0
push 206
call ERRREPORT
add esp, 16
.Lt_0090:
.Lt_008F:
.Lt_008E:
.Lt_008D:
sub esp, 4
push 0
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 24
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call ASTBUILDDTORCALL
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_008C:
.Lt_008B:
.Lt_008A:
.Lt_0084:
.Lt_0082:
.Lt_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size _Z19ASTBUILDVARDTORCALLP8FBSYMBOLl, .-_Z19ASTBUILDVARDTORCALLP8FBSYMBOLl
.balign 16

.globl _Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_
_Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_:
.type _Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0092:
sub esp, 12
push dword ptr [ebp+8]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+12], 0
je .Lt_0095
sub esp, 12
push 1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp+8], eax
.Lt_0095:
.Lt_0094:
sub esp, 12
push 0
push 24
push dword ptr [ebp+8]
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
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+8], eax
sub esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+24], 0
je .Lt_0097
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], 12
jne .Lt_0099
sub esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+8]
call ASTNEWFIELD
add esp, 16
mov dword ptr [ebp+8], eax
.Lt_0099:
.Lt_0098:
.Lt_0097:
.Lt_0096:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0093:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size _Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_, .-_Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_
.balign 16

.globl _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
_Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_:
.type _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_009A:
cmp dword ptr [ebp+16], 0
jne .Lt_009D
cmp dword ptr [ebp+12], 0
jne .Lt_009D
.Lt_009E:
mov dword ptr [ebp-8], 0
jmp .Lt_009C
.Lt_009D:
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_009C:
sub esp, 12
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_009B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_, .-_Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
.balign 16

.globl ASTBUILDVARFIELD
ASTBUILDVARFIELD:
.type ASTBUILDVARFIELD, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_009F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 65536
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 512
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00A2
sub esp, 12
push 0
push 0
push 0
push -2147483648
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+28]
and ebx, 31
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 261632
sal ecx, 1
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 32505856
or ebx, eax
push ebx
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-8], eax
jmp .Lt_00A1
.Lt_00A2:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
.Lt_00A1:
cmp dword ptr [ebp+12], 0
je .Lt_00A4
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
add dword ptr [ebp+16], ecx
adc dword ptr [ebp+20], ebx
sub esp, 8
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+28]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 32
mov dword ptr [ebp-8], eax
jmp .Lt_00A3
.Lt_00A4:
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 32
mov dword ptr [ebp-8], eax
.Lt_00A3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDVARFIELD, .-ASTBUILDVARFIELD
.balign 16

.globl ASTBUILDTEMPVARCLEAR
ASTBUILDTEMPVARCLEAR:
.type ASTBUILDTEMPVARCLEAR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .Lt_00AA
mov dword ptr [ebp-4], 0
jmp .Lt_00A8
.Lt_00AA:
.Lt_00A9:
sub esp, 12
push 0
push 0
sub esp, 12
push 0
push 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 24
push eax
push 107
call ASTNEWMEM
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_00A8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDTEMPVARCLEAR, .-ASTBUILDTEMPVARCLEAR
.balign 16

.globl ASTBUILDWHILECOUNTERBEGIN
ASTBUILDWHILECOUNTERBEGIN:
.type ASTBUILDWHILECOUNTERBEGIN, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00AB:
sub esp, 4
push 0
sub esp, 12
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 24
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 4
push 0
push dword ptr [ebp+28]
push dword ptr [ebp+16]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 4
push 0
sub esp, 8
push 0
push -1
push dword ptr [ebp+20]
push 1
push 0
sub esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 24
push eax
push 45
call ASTNEWBOP
add esp, 20
push eax
call ASTBUILDBRANCH
add esp, 24
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00AC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDWHILECOUNTERBEGIN, .-ASTBUILDWHILECOUNTERBEGIN
.balign 16

.globl ASTBUILDWHILECOUNTEREND
ASTBUILDWHILECOUNTEREND:
.type ASTBUILDWHILECOUNTEREND, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00AD:
sub esp, 4
push 0
push -1
push dword ptr [ebp+12]
call ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 4
push 0
sub esp, 12
push 0
push dword ptr [ebp+16]
push 98
call ASTNEWBRANCH
add esp, 24
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 4
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00AE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDWHILECOUNTEREND, .-ASTBUILDWHILECOUNTEREND
.balign 16

.globl ASTBUILDFORBEGIN
ASTBUILDFORBEGIN:
.type ASTBUILDFORBEGIN, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00AF:
sub esp, 4
push 0
sub esp, 12
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLll
add esp, 24
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 4
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+16]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00B0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDFORBEGIN, .-ASTBUILDFORBEGIN
.balign 16

.globl ASTBUILDFOREND
ASTBUILDFOREND:
.type ASTBUILDFOREND, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00B1:
sub esp, 4
push 0
push 1
push dword ptr [ebp+12]
call ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
sub esp, 4
push 0
sub esp, 8
push 0
push 0
push dword ptr [ebp+16]
push 1
push 0
push dword ptr [ebp+20]
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 24
push eax
push 45
call ASTNEWBOP
add esp, 20
push eax
call ASTBUILDBRANCH
add esp, 24
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00B2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDFOREND, .-ASTBUILDFOREND
.balign 16

.globl ASTBUILDVTABLELOOKUP
ASTBUILDVTABLELOOKUP:
.type ASTBUILDVTABLELOOKUP, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 256
test ebx, ebx
je .Lt_00B6
sub esp, 12
push dword ptr [ebp+8]
call SYMBPROCGETVTABLEINDEX
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 12
push dword ptr [ebp+12]
call ASTCLONETREE
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push 8
push dword ptr [ebp-8]
push 0
push 96
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 7
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp-12]
add eax, -2
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp-8]
sub esp, 4
push dword ptr [ebp+8]
call SYMBADDPROCPTRFROMFUNCTION
add esp, 8
push eax
push 54
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-8], eax
cmp dword ptr [ENV+176], 0
je .Lt_00B8
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
and ecx, 512
test ecx, ecx
je .Lt_00BA
sub esp, 12
push dword ptr [ebp-8]
call ASTBUILDPTRCHK
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00BA:
.Lt_00B9:
.Lt_00B8:
.Lt_00B7:
jmp .Lt_00B5
.Lt_00B6:
mov dword ptr [ebp-8], 0
.Lt_00B5:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00B4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDVTABLELOOKUP, .-ASTBUILDVTABLELOOKUP
.balign 16

.globl ASTBUILDCALL
ASTBUILDCALL:
.type ASTBUILDCALL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 256
test ebx, ebx
je .Lt_00BE
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVTABLELOOKUP
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_00BD
.Lt_00BE:
mov dword ptr [ebp-12], 0
.Lt_00BD:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+12], 0
je .Lt_00C0
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00C2
mov dword ptr [ebp-4], 0
jmp .Lt_00BC
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
cmp dword ptr [ebp+16], 0
je .Lt_00C4
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00C6
mov dword ptr [ebp-4], 0
jmp .Lt_00BC
.Lt_00C6:
.Lt_00C5:
.Lt_00C4:
.Lt_00C3:
cmp dword ptr [ebp+20], 0
je .Lt_00C8
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00CA
mov dword ptr [ebp-4], 0
jmp .Lt_00BC
.Lt_00CA:
.Lt_00C9:
.Lt_00C8:
.Lt_00C7:
sub esp, 12
push dword ptr [ebp-8]
call ASTBUILDBYREFRESULTDEREF
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDCALL, .-ASTBUILDCALL
.balign 16

.globl ASTBUILDCTORCALL
ASTBUILDCTORCALL:
.type ASTBUILDCTORCALL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00CB:
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETCOMPDEFCTOR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00CE
mov dword ptr [ebp-4], 0
jmp .Lt_00CC
.Lt_00CE:
.Lt_00CD:
sub esp, 8
push 0
push dword ptr [ebp-8]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-12], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-8]
movsx ebx, word ptr [eax+68]
dec ebx
mov dword ptr [ebp-16], ebx
.Lt_00CF:
cmp dword ptr [ebp-16], 0
jle .Lt_00D0
push -1
push -2147483648
push 0
push dword ptr [ebp-12]
call ASTNEWARG
add esp, 16
dec dword ptr [ebp-16]
jmp .Lt_00CF
.Lt_00D0:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.Lt_00CC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDCTORCALL, .-ASTBUILDCTORCALL
.balign 16

.globl ASTBUILDDTORCALL
ASTBUILDDTORCALL:
.type ASTBUILDDTORCALL, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_00D1:
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETCOMPDTOR
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
je .Lt_00D4
sub esp, 8
push 0
push dword ptr [ebp-8]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_00D3
.Lt_00D4:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTBUILDVTABLELOOKUP
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_00D3:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_00D2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDDTORCALL, .-ASTBUILDDTORCALL
.balign 16

.globl ASTPATCHCTORCALL
ASTPATCHCTORCALL:
.type ASTPATCHCTORCALL, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00D7:
sub esp, 4
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTREPLACEINSTANCEARG
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00D8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTPATCHCTORCALL, .-ASTPATCHCTORCALL
.balign 16

.globl ASTCALLCTORTOCALL
ASTCALLCTORTOCALL:
.type ASTCALLCTORTOCALL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-12], ebx
sub esp, 4
push 1
sub esp, 4
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+32]
call ASTFAKEINSTPTR
add esp, 8
push eax
push dword ptr [ebp-12]
call ASTREPLACEINSTANCEARG
add esp, 16
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTDELTREE
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDTORLISTDEL
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp-8]
call SYMBDELSYMBOL
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_00DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTCALLCTORTOCALL, .-ASTCALLCTORTOCALL
.balign 16

.globl ASTBUILDIMPLICITCTORCALL
ASTBUILDIMPLICITCTORCALL:
.type ASTBUILDIMPLICITCTORCALL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DB:
lea eax, [ebp-8]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDCTOROVLPROC
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00DE
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
cmp dword ptr [ebp-8], 0
je .Lt_00E0
push dword ptr [ebp-8]
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETCOMPCTORHEAD
add esp, 4
push eax
call ERRREPORTPARAM
add esp, 16
mov dword ptr [ebp-4], 0
jmp .Lt_00DC
.Lt_00E0:
.Lt_00DF:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_00DC
.Lt_00DE:
.Lt_00DD:
sub esp, 12
push dword ptr [ebp-12]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_00E2
sub esp, 4
push 0
push 0
push 205
call ERRREPORT
add esp, 16
.Lt_00E2:
.Lt_00E1:
sub esp, 8
push 0
push dword ptr [ebp-12]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-16], eax
push 1
push -2147483648
sub esp, 4
push dword ptr [ebp+8]
call ASTFAKEINSTPTR
add esp, 8
push eax
push dword ptr [ebp-16]
call ASTNEWARG
add esp, 16
push dword ptr [ebp+16]
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-12]
movsx ebx, word ptr [eax+68]
add ebx, -2
mov dword ptr [ebp-20], ebx
.Lt_00E3:
cmp dword ptr [ebp-20], 0
jle .Lt_00E4
push -1
push -2147483648
push 0
push dword ptr [ebp-16]
call ASTNEWARG
add esp, 16
dec dword ptr [ebp-20]
jmp .Lt_00E3
.Lt_00E4:
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], -1
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_00DC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDIMPLICITCTORCALL, .-ASTBUILDIMPLICITCTORCALL
.balign 16

.globl ASTBUILDIMPLICITCTORCALLEX
ASTBUILDIMPLICITCTORCALLEX:
.type ASTBUILDIMPLICITCTORCALLEX, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 10
jne .Lt_00E8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebx+8], eax
jne .Lt_00EA
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
sub esp, 12
push dword ptr [ebp+12]
call ASTCALLCTORTOCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00E6
.Lt_00EA:
.Lt_00E9:
.Lt_00E8:
.Lt_00E7:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTBUILDIMPLICITCTORCALL
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00E6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDIMPLICITCTORCALLEX, .-ASTBUILDIMPLICITCTORCALLEX
.balign 16

.globl ASTBUILDPROCADDROF
ASTBUILDPROCADDROF:
.type ASTBUILDPROCADDROF, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00EB:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 2
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00EC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDPROCADDROF, .-ASTBUILDPROCADDROF
.balign 16

.globl ASTBUILDPROCRESULTVAR
ASTBUILDPROCRESULTVAR:
.type ASTBUILDPROCRESULTVAR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00ED:
sub esp, 12
push dword ptr [ebp+8]
call SYMBPROCRETURNSONSTACK
add esp, 16
test eax, eax
je .Lt_00F0
sub esp, 12
push 0
push 0
push 0
push -2147483648
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
push 52
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-4], eax
jmp .Lt_00EF
.Lt_00F0:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_00EF:
.Lt_00EE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDPROCRESULTVAR, .-ASTBUILDPROCRESULTVAR
.balign 16

.globl ASTBUILDTYPEINICTORLIST
ASTBUILDTYPEINICTORLIST:
.type ASTBUILDTYPEINICTORLIST, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00F1:
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call ASTTYPEINIBEGIN
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push -2147483648
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
push dword ptr [eax+76]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTTYPEINIADDCTORLIST
add esp, 32
sub esp, 8
push -1
push dword ptr [ebp-8]
call ASTTYPEINIEND
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00F2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDTYPEINICTORLIST, .-ASTBUILDTYPEINICTORLIST
.balign 16

.globl ASTBUILDMULTIDEREF
ASTBUILDMULTIDEREF:
.type ASTBUILDMULTIDEREF, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F3:
.Lt_00F5:
cmp dword ptr [ebp+8], 0
jle .Lt_00F6
mov eax, dword ptr [ebp+16]
and eax, 480
test eax, eax
jne .Lt_00F8
cmp dword ptr [SYMB+99424], 0
jne .Lt_00FA
sub esp, 4
push 0
push -1
push 28
call ERRREPORT
add esp, 16
jmp .Lt_00F6
.Lt_00FA:
.Lt_00F9:
sub esp, 4
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
push 76
call SYMBFINDUOPOVLPROC
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00FC
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTBUILDCALL
add esp, 16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_00FE
mov dword ptr [ebp-4], 0
jmp .Lt_00F4
.Lt_00FE:
.Lt_00FD:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+16], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+20], eax
jmp .Lt_00FB
.Lt_00FC:
sub esp, 4
push 0
push -1
push 28
call ERRREPORT
add esp, 16
jmp .Lt_00F6
.Lt_00FB:
jmp .Lt_00F7
.Lt_00F8:
mov eax, dword ptr [ebp+16]
and eax, 31
mov ebx, dword ptr [ebp+16]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+16]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+16]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp+16], eax
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_00FF
mov dword ptr [ebp-8], 24
jmp .Lt_010A
.Lt_00FF:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_010A:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_0104
.Lt_0105:
cmp dword ptr [ebp-12], 23
jne .Lt_0103
.Lt_0104:
sub esp, 4
push 0
push -1
push 71
call ERRREPORT
add esp, 16
mov dword ptr [ebp+16], 2
jmp .Lt_0101
.Lt_0103:
cmp dword ptr [ebp-12], 22
jne .Lt_0106
.Lt_0107:
sub esp, 4
push 0
push -1
push 20
call ERRREPORT
add esp, 16
mov dword ptr [ebp+16], 2
.Lt_0106:
.Lt_0101:
cmp dword ptr [ENV+176], 0
je .Lt_0109
sub esp, 12
push dword ptr [ebp+12]
call ASTBUILDPTRCHK
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_0109:
.Lt_0108:
sub esp, 12
push 0
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp+12], eax
.Lt_00F7:
dec dword ptr [ebp+8]
jmp .Lt_00F5
.Lt_00F6:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_00F4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDMULTIDEREF, .-ASTBUILDMULTIDEREF
.balign 16

.globl ASTBUILDARRAYDESCINITREE
ASTBUILDARRAYDESCINITREE:
.type ASTBUILDARRAYDESCINITREE, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_010B:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 16
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_010E
mov dword ptr [ebp-4], 0
jmp .Lt_010C
.Lt_010E:
.Lt_010D:
sub esp, 12
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+52]
push dword ptr [ecx+48]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
cmp ebx, 12
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call ASTTYPEINIBEGIN
add esp, 32
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_0110
push dword ptr [ebp-36]
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov eax, dword ptr [ebp-12]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-12]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-12]
and eax, 32505856
or ebx, eax
push ebx
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp+16], eax
jmp .Lt_010F
.Lt_0110:
cmp dword ptr [ebp+16], 0
je .Lt_0112
jmp .Lt_0111
.Lt_0112:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp+16], eax
.Lt_0111:
sub esp, 12
push dword ptr [ebp+16]
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp+16], eax
or dword ptr [ebp-24], 32
.Lt_010F:
sub esp, 4
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTTYPEINISCOPEBEGIN
add esp, 16
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-28]
sub esp, 4
push 1
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_0113
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
jmp .Lt_0122
.Lt_0113:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+68]
mov eax, dword ptr [ebx+72]
mov dword ptr [ebp-44], ecx
mov dword ptr [ebp-40], eax
.Lt_0122:
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call ASTNEWCONSTI
add esp, 28
push eax
sub esp, 4
push dword ptr [ebp+16]
call ASTCLONETREE
add esp, 8
push eax
push 28
call ASTNEWBOP
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 32
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-28], ecx
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-28]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 32
mov ecx, dword ptr [ebp-28]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-28], eax
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-28]
sub esp, 8
push 0
push 8
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 4
test ecx, ecx
je .Lt_0115
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
jmp .Lt_0123
.Lt_0115:
sub esp, 4
push dword ptr [ebp+12]
call SYMBGETREALSIZE
add esp, 8
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], edx
.Lt_0123:
push dword ptr [ebp-48]
push dword ptr [ebp-52]
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 32
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-28], edx
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-28]
sub esp, 8
push 0
push 8
mov edx, dword ptr [ebp+12]
push dword ptr [edx+44]
push dword ptr [edx+40]
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 32
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-28], edx
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+60]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], -1
jne .Lt_0118
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 8
jmp .Lt_0117
.Lt_0118:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
or dword ptr [ebp-24], 16
.Lt_0117:
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-28]
sub esp, 8
push 0
push 8
mov edx, dword ptr [ebp-16]
mov eax, edx
sar eax, 31
push eax
push edx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 32
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-28], edx
mov edx, dword ptr [ebp-20]
and edx, 15
or dword ptr [ebp-24], edx
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-28]
sub esp, 8
push 0
push 8
mov eax, dword ptr [ebp-24]
mov edx, eax
sar edx, 31
push edx
push eax
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 32
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-28], edx
mov edx, dword ptr [ebp-28]
mov dword ptr [ebp-56], edx
mov edx, dword ptr [ebp-28]
mov eax, dword ptr [edx+32]
mov edx, dword ptr [eax+60]
mov dword ptr [ebp-32], edx
sub esp, 4
push -1
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call ASTTYPEINISCOPEBEGIN
add esp, 16
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+4]
and eax, 16388
test eax, eax
jne .Lt_011A
mov dword ptr [ebp-60], 0
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+60]
dec edx
mov dword ptr [ebp-64], edx
jmp .Lt_011C
.Lt_011F:
mov edx, dword ptr [ebp-32]
mov dword ptr [ebp-28], edx
sub esp, 4
push 0
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call ASTTYPEINISCOPEBEGIN
add esp, 16
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-28]
sub esp, 8
push 0
push 8
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-60]
sal eax, 4
mov ecx, dword ptr [edx+64]
add ecx, eax
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [ebp-60]
sal edx, 4
mov ebx, dword ptr [eax+64]
add ebx, edx
mov eax, dword ptr [ecx+8]
mov edx, dword ptr [ecx+12]
sub eax, dword ptr [ebx]
sbb edx, dword ptr [ebx+4]
add eax, 1
adc edx, 0
push edx
push eax
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 32
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-28], edx
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-28]
sub esp, 8
push 0
push 8
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-60]
sal eax, 4
mov ebx, dword ptr [edx+64]
add ebx, eax
push dword ptr [ebx+4]
push dword ptr [ebx]
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 32
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-28], ebx
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-28]
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-60]
sal eax, 4
mov edx, dword ptr [ebx+64]
add edx, eax
push dword ptr [edx+12]
push dword ptr [edx+8]
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 32
sub esp, 8
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call ASTTYPEINISCOPEEND
add esp, 16
.Lt_011D:
inc dword ptr [ebp-60]
.Lt_011C:
mov eax, dword ptr [ebp-64]
cmp dword ptr [ebp-60], eax
jle .Lt_011F
.Lt_011E:
jmp .Lt_0119
.Lt_011A:
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+60]
mov dword ptr [ebp-16], edx
cmp dword ptr [ebp-16], -1
jne .Lt_0121
mov dword ptr [ebp-16], 8
.Lt_0121:
.Lt_0120:
sub esp, 4
mov eax, dword ptr [ebp-16]
mov edx, eax
sar edx, 31
mov ebx, dword ptr [SYMB+99620]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
push edx
push eax
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop eax
pop edx
add esp, 8
push edx
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDPAD
add esp, 16
.Lt_0119:
sub esp, 8
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call ASTTYPEINISCOPEEND
add esp, 16
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTTYPEINISCOPEEND
add esp, 16
sub esp, 8
push -1
push dword ptr [ebp-8]
call ASTTYPEINIEND
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_010C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDARRAYDESCINITREE, .-ASTBUILDARRAYDESCINITREE
.balign 16

.globl ASTBUILDARRAYBOUND
ASTBUILDARRAYBOUND:
.type ASTBUILDARRAYBOUND, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0141:
push offset Lt_0143
push 2
push dword ptr [ebp+16]
push 0
call ERRPUSHPARAMLOCATION
add esp, 16
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push 0
push 8
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+12], eax
call ERRPOPPARAMLOCATION
sub esp, 4
mov eax, dword ptr [ebp+16]
cmp eax, 493
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCONSTBOUND
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0145
sub esp, 4
mov eax, dword ptr [ebp+16]
cmp eax, 493
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call RTLARRAYBOUND
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0145:
.Lt_0144:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0142:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTBUILDARRAYBOUND, .-ASTBUILDARRAYBOUND
.balign 16

.globl ASTBUILDSTRPTR
ASTBUILDSTRPTR:
.type ASTBUILDSTRPTR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0148:
mov dword ptr [ebp-12], 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_014B
or dword ptr [ebp-12], 512
.Lt_014B:
.Lt_014A:
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov eax, dword ptr [ebp-12]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-12]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-12]
and eax, 32505856
or ebx, eax
or ebx, 512
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
and ebx, 31
mov eax, dword ptr [ebp-12]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-12]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-12]
and eax, 32505856
or ebx, eax
mov dword ptr [ebp-12], ebx
sub esp, 12
push 0
push 0
push 0
push -2147483648
push 0
push 16
sub esp, 8
push dword ptr [ebp+8]
call ASTNEWADDROF
add esp, 12
push eax
push 0
push dword ptr [ebp-12]
call ASTNEWCONV
add esp, 20
push eax
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0149:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDSTRPTR, .-ASTBUILDSTRPTR
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
.balign 16
ASTFAKEINSTPTR:
.type ASTFAKEINSTPTR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00D5:
push dword ptr [ebp+8]
push 52
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00D6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTFAKEINSTPTR, .-ASTFAKEINSTPTR
.balign 16
HCONSTBOUND:
.type HCONSTBOUND, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0127:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 17
je .Lt_012C
.Lt_012D:
cmp dword ptr [ebp-24], 19
jne .Lt_012B
.Lt_012C:
jmp .Lt_0129
.Lt_012B:
jmp .Lt_0128
.Lt_012E:
.Lt_0129:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0130
jmp .Lt_0128
.Lt_0130:
.Lt_012F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .Lt_0132
jmp .Lt_0128
.Lt_0132:
.Lt_0131:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
je .Lt_0134
jmp .Lt_0128
.Lt_0134:
.Lt_0133:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+20]
mov eax, dword ptr [ebx+24]
add ecx, 4294967295
adc eax, 4294967295
mov ebx, ecx
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
test ebx, ebx
setge bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ecx+60]
setl al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0136
cmp dword ptr [ebp+16], 0
je .Lt_0138
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov eax, dword ptr [ecx]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ebx
jmp .Lt_0137
.Lt_0138:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
mov eax, dword ptr [ecx+8]
mov ebx, dword ptr [ecx+12]
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 2147483648
jne .Lt_013A
cmp dword ptr [ebp-20], 0
jne .Lt_013A
.Lt_0150:
jmp .Lt_0128
.Lt_013A:
.Lt_0139:
.Lt_0137:
jmp .Lt_0135
.Lt_0136:
cmp dword ptr [ebp-12], -1
jne .Lt_013C
cmp dword ptr [ebp+16], 0
je .Lt_013D
mov dword ptr [ebp-24], 1
jmp .Lt_014C
.Lt_013D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-24], ebx
.Lt_014C:
mov eax, dword ptr [ebp-24]
mov ebx, eax
sar ebx, 31
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ebx
jmp .Lt_013B
.Lt_013C:
cmp dword ptr [ebp+16], 0
je .Lt_013F
mov dword ptr [ebp-24], 0
jmp .Lt_014D
.Lt_013F:
mov dword ptr [ebp-24], -1
.Lt_014D:
mov ebx, dword ptr [ebp-24]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
.Lt_013B:
.Lt_0135:
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0128:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCONSTBOUND, .-HCONSTBOUND

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_0143:	.ascii	"dimension\0"
