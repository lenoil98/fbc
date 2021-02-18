	.intel_syntax noprefix

.section .text
.balign 16

.globl __Z17ASTBUILDVARASSIGNP8FBSYMBOLll@12
__Z17ASTBUILDVARASSIGNP8FBSYMBOLll@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
push dword ptr [ebp+16]
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp-4], eax
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12
__Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_006A:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp-4], eax
.Lt_006B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTBUILDFAKEWSTRINGACCESS@4
_ASTBUILDFAKEWSTRINGACCESS@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_006C:
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
call _ASTNEWDEREF@20
mov dword ptr [ebp-4], eax
.Lt_006D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDFAKEWSTRINGASSIGN@12
_ASTBUILDFAKEWSTRINGASSIGN@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_006E:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+12]
call _ASTHASSIDEFX@4
test eax, eax
je .Lt_0071
push 2
lea eax, [ebp+12]
push eax
call _ASTREMSIDEFX@4
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
.Lt_0071:
.Lt_0070:
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTCLONETREE@4
push eax
call _RTLWSTRLEN@4
push eax
call _RTLWSTRALLOC@4
push eax
push dword ptr [ebp+8]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
push 2
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDFAKEWSTRINGACCESS@4
push eax
call _ASTNEWASSIGN@12
push eax
push dword ptr [ebp-8]
call _ASTNEWLINK@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_006F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTBUILDVARINC@8
_ASTBUILDVARINC@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0072:
mov dword ptr [ebp-8], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
test ebx, ebx
je .Lt_0075
or dword ptr [ebp-8], 2
.Lt_0075:
.Lt_0074:
cmp dword ptr [ebp+12], 0
jle .Lt_0077
mov dword ptr [ebp-12], 1
jmp .Lt_0076
.Lt_0077:
mov dword ptr [ebp-12], 2
neg dword ptr [ebp+12]
.Lt_0076:
push dword ptr [ebp-8]
push 0
push 0
push 8
mov eax, dword ptr [ebp+12]
mov ebx, eax
sar ebx, 31
push ebx
push eax
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
push dword ptr [ebp-12]
call _ASTNEWSELFBOP@20
mov dword ptr [ebp-4], eax
.Lt_0073:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTBUILDVARDEREF@4
_ASTBUILDVARDEREF@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0078:
push 0
push 0
push 0
push -2147483648
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
call _ASTNEWDEREF@20
mov dword ptr [ebp-4], eax
.Lt_0079:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDVARADDROF@4
_ASTBUILDVARADDROF@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_007A:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
mov dword ptr [ebp-4], eax
.Lt_007B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl __Z19ASTBUILDVARDTORCALLP7ASTNODE@4
__Z19ASTBUILDVARDTORCALLP7ASTNODE@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_007C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 17
jne .Lt_007F
push dword ptr [ebp+8]
call _RTLSTRDELETE@4
mov dword ptr [ebp-4], eax
jmp .Lt_007E
.Lt_007F:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _TYPEHASDTOR@8
test eax, eax
je .Lt_0080
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _ASTBUILDDTORCALL@12
mov dword ptr [ebp-4], eax
.Lt_0080:
.Lt_007E:
.Lt_007D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl __Z19ASTBUILDVARDTORCALLP8FBSYMBOLl@8
__Z19ASTBUILDVARDTORCALLP8FBSYMBOLl@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0081:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .Lt_0084
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
call _ASTNEWVAR@20
push eax
call _RTLARRAYERASE@12
mov dword ptr [ebp-4], eax
jmp .Lt_0083
.Lt_0084:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 17
jne .Lt_0087
.Lt_0088:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
call _RTLSTRDELETE@4
mov dword ptr [ebp-4], eax
jmp .Lt_0085
.Lt_0087:
cmp dword ptr [ebp-8], 39
jne .Lt_0089
.Lt_008A:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
call _RTLSTRDELETE@4
mov dword ptr [ebp-4], eax
jmp .Lt_0085
.Lt_0089:
push dword ptr [ebp+8]
call _SYMBHASDTOR@4
test eax, eax
je .Lt_008D
cmp dword ptr [ebp+12], 0
je .Lt_008F
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _SYMBGETCOMPDTOR@4
push eax
call _SYMBCHECKACCESS@4
test eax, eax
jne .Lt_0091
push 0
push 0
push 206
call _ERRREPORT@12
.Lt_0091:
.Lt_0090:
.Lt_008F:
.Lt_008E:
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _ASTBUILDDTORCALL@12
mov dword ptr [ebp-4], eax
.Lt_008D:
.Lt_008C:
.Lt_008B:
.Lt_0085:
.Lt_0083:
.Lt_0082:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl __Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_@20
__Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_@20:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0093:
push dword ptr [ebp+8]
call _ASTNEWADDROF@4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+12], 0
je .Lt_0096
push 1
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 28
call _ASTNEWBOP@20
mov dword ptr [ebp+8], eax
.Lt_0096:
.Lt_0095:
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
call _ASTNEWCONV@20
mov dword ptr [ebp+8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp+8]
call _ASTNEWDEREF@20
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+24], 0
je .Lt_0098
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], 12
jne .Lt_009A
push dword ptr [ebp+24]
push dword ptr [ebp+8]
call _ASTNEWFIELD@8
mov dword ptr [ebp+8], eax
.Lt_009A:
.Lt_0099:
.Lt_0098:
.Lt_0097:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0094:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
__Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_009B:
cmp dword ptr [ebp+16], 0
jne .Lt_009E
cmp dword ptr [ebp+12], 0
jne .Lt_009E
.Lt_009F:
mov dword ptr [ebp-8], 0
jmp .Lt_009D
.Lt_009E:
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.Lt_009D:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call __Z19ASTBUILDDEREFADDROFP7ASTNODES0_lP8FBSYMBOLS2_@20
mov dword ptr [ebp-4], eax
.Lt_009C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _ASTBUILDVARFIELD@16
_ASTBUILDVARFIELD@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A0:
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
je .Lt_00A3
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
call _ASTNEWVAR@20
push eax
call _ASTNEWDEREF@20
mov dword ptr [ebp-8], eax
jmp .Lt_00A2
.Lt_00A3:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
.Lt_00A2:
cmp dword ptr [ebp+12], 0
je .Lt_00A5
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
add dword ptr [ebp+16], ecx
adc dword ptr [ebp+20], ebx
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+32]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+28]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp-8], eax
jmp .Lt_00A4
.Lt_00A5:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
mov dword ptr [ebp-8], eax
.Lt_00A4:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTBUILDTEMPVARCLEAR@4
_ASTBUILDTEMPVARCLEAR@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .Lt_00AB
mov dword ptr [ebp-4], 0
jmp .Lt_00A9
.Lt_00AB:
.Lt_00AA:
push 0
push 0
push 0
push 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+44]
push dword ptr [ebx+40]
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
push 107
call _ASTNEWMEM@20
mov dword ptr [ebp-4], eax
.Lt_00A9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDWHILECOUNTERBEGIN@24
_ASTBUILDWHILECOUNTERBEGIN@24:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00AC:
push 0
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp+28]
push dword ptr [ebp+16]
call _ASTNEWLABEL@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
push 0
push 0
push -1
push dword ptr [ebp+20]
push 1
push 0
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR@20
push eax
push 45
call _ASTNEWBOP@20
push eax
call _ASTBUILDBRANCH@16
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00AD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _ASTBUILDWHILECOUNTEREND@20
_ASTBUILDWHILECOUNTEREND@20:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00AE:
push 0
push -1
push dword ptr [ebp+12]
call _ASTBUILDVARINC@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
push 0
push 0
push dword ptr [ebp+16]
push 98
call _ASTNEWBRANCH@12
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _ASTNEWLABEL@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00AF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTBUILDFORBEGIN@20
_ASTBUILDFORBEGIN@20:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00B0:
push 0
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+12]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLll@12
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+16]
call _ASTNEWLABEL@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00B1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _ASTBUILDFOREND@16
_ASTBUILDFOREND@16:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00B2:
push 0
push 1
push dword ptr [ebp+12]
call _ASTBUILDVARINC@8
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
push 0
push 0
push 0
push dword ptr [ebp+16]
push 1
push 0
push dword ptr [ebp+20]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR@20
push eax
push 45
call _ASTNEWBOP@20
push eax
call _ASTBUILDBRANCH@16
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK@12
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00B3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTBUILDVTABLELOOKUP@8
_ASTBUILDVTABLELOOKUP@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 256
test ebx, ebx
je .Lt_00B7
push dword ptr [ebp+8]
call _SYMBPROCGETVTABLEINDEX@4
mov dword ptr [ebp-12], eax
push dword ptr [ebp+12]
call _ASTCLONETREE@4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _ASTNEWADDROF@4
mov dword ptr [ebp-8], eax
push 0
push 8
push dword ptr [ebp-8]
push 0
push 96
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call _ASTNEWDEREF@20
mov dword ptr [ebp-8], eax
push 7
push 0
push 0
push 8
mov eax, dword ptr [ebp-12]
add eax, -2
mov ecx, eax
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
push 0
push 0
push 0
push -2147483648
push dword ptr [ebp-8]
call _ASTNEWDEREF@20
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _SYMBADDPROCPTRFROMFUNCTION@4
push eax
push 54
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
cmp dword ptr [_ENV+176], 0
je .Lt_00B9
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
and ecx, 512
test ecx, ecx
je .Lt_00BB
push dword ptr [ebp-8]
call _ASTBUILDPTRCHK@4
mov dword ptr [ebp-8], eax
.Lt_00BB:
.Lt_00BA:
.Lt_00B9:
.Lt_00B8:
jmp .Lt_00B6
.Lt_00B7:
mov dword ptr [ebp-8], 0
.Lt_00B6:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00B5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTBUILDCALL@16
_ASTBUILDCALL@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 256
test ebx, ebx
je .Lt_00BF
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVTABLELOOKUP@8
mov dword ptr [ebp-12], eax
jmp .Lt_00BE
.Lt_00BF:
mov dword ptr [ebp-12], 0
.Lt_00BE:
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _ASTNEWCALL@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+12], 0
je .Lt_00C1
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00C3
mov dword ptr [ebp-4], 0
jmp .Lt_00BD
.Lt_00C3:
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
cmp dword ptr [ebp+16], 0
je .Lt_00C5
push -1
push -2147483648
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00C7
mov dword ptr [ebp-4], 0
jmp .Lt_00BD
.Lt_00C7:
.Lt_00C6:
.Lt_00C5:
.Lt_00C4:
cmp dword ptr [ebp+20], 0
je .Lt_00C9
push -1
push -2147483648
push dword ptr [ebp+20]
push dword ptr [ebp-8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00CB
mov dword ptr [ebp-4], 0
jmp .Lt_00BD
.Lt_00CB:
.Lt_00CA:
.Lt_00C9:
.Lt_00C8:
push dword ptr [ebp-8]
call _ASTBUILDBYREFRESULTDEREF@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00BD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTBUILDCTORCALL@8
_ASTBUILDCTORCALL@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00CC:
push dword ptr [ebp+8]
call _SYMBGETCOMPDEFCTOR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00CF
mov dword ptr [ebp-4], 0
jmp .Lt_00CD
.Lt_00CF:
.Lt_00CE:
push 0
push dword ptr [ebp-8]
call _ASTNEWCALL@8
mov dword ptr [ebp-12], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call _ASTNEWARG@16
mov eax, dword ptr [ebp-8]
movsx ebx, word ptr [eax+68]
dec ebx
mov dword ptr [ebp-16], ebx
.Lt_00D0:
cmp dword ptr [ebp-16], 0
jle .Lt_00D1
push -1
push -2147483648
push 0
push dword ptr [ebp-12]
call _ASTNEWARG@16
dec dword ptr [ebp-16]
jmp .Lt_00D0
.Lt_00D1:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.Lt_00CD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTBUILDDTORCALL@12
_ASTBUILDDTORCALL@12:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00D2:
push dword ptr [ebp+8]
call _SYMBGETCOMPDTOR@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
je .Lt_00D5
push 0
push dword ptr [ebp-8]
call _ASTNEWCALL@8
mov dword ptr [ebp-12], eax
jmp .Lt_00D4
.Lt_00D5:
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTBUILDVTABLELOOKUP@8
push eax
push dword ptr [ebp-8]
call _ASTNEWCALL@8
mov dword ptr [ebp-12], eax
.Lt_00D4:
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-12]
call _ASTNEWARG@16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_00D3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTPATCHCTORCALL@8
_ASTPATCHCTORCALL@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00D8:
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTREPLACEINSTANCEARG@12
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00D9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTCALLCTORTOCALL@4
_ASTCALLCTORTOCALL@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-12], ebx
push 1
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+32]
call _ASTFAKEINSTPTR@4
push eax
push dword ptr [ebp-12]
call _ASTREPLACEINSTANCEARG@12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTDELTREE@4
push dword ptr [ebp-8]
call _ASTDTORLISTDEL@4
push 0
push dword ptr [ebp-8]
call _SYMBDELSYMBOL@8
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_00DB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDIMPLICITCTORCALL@16
_ASTBUILDIMPLICITCTORCALL@16:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DC:
lea eax, [ebp-8]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDCTOROVLPROC@16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00DF
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
cmp dword ptr [ebp-8], 0
je .Lt_00E1
push dword ptr [ebp-8]
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETCOMPCTORHEAD@4
push eax
call _ERRREPORTPARAM@16
mov dword ptr [ebp-4], 0
jmp .Lt_00DD
.Lt_00E1:
.Lt_00E0:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
jmp .Lt_00DD
.Lt_00DF:
.Lt_00DE:
push dword ptr [ebp-12]
call _SYMBCHECKACCESS@4
test eax, eax
jne .Lt_00E3
push 0
push 0
push 205
call _ERRREPORT@12
.Lt_00E3:
.Lt_00E2:
push 0
push dword ptr [ebp-12]
call _ASTNEWCALL@8
mov dword ptr [ebp-16], eax
push 1
push -2147483648
push dword ptr [ebp+8]
call _ASTFAKEINSTPTR@4
push eax
push dword ptr [ebp-16]
call _ASTNEWARG@16
push dword ptr [ebp+16]
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-16]
call _ASTNEWARG@16
mov eax, dword ptr [ebp-12]
movsx ebx, word ptr [eax+68]
add ebx, -2
mov dword ptr [ebp-20], ebx
.Lt_00E4:
cmp dword ptr [ebp-20], 0
jle .Lt_00E5
push -1
push -2147483648
push 0
push dword ptr [ebp-16]
call _ASTNEWARG@16
dec dword ptr [ebp-20]
jmp .Lt_00E4
.Lt_00E5:
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], -1
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_00DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTBUILDIMPLICITCTORCALLEX@16
_ASTBUILDIMPLICITCTORCALLEX@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 10
jne .Lt_00E9
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebx+8], eax
jne .Lt_00EB
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
push dword ptr [ebp+12]
call _ASTCALLCTORTOCALL@4
mov dword ptr [ebp-4], eax
jmp .Lt_00E7
.Lt_00EB:
.Lt_00EA:
.Lt_00E9:
.Lt_00E8:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTBUILDIMPLICITCTORCALL@16
mov dword ptr [ebp-4], eax
.Lt_00E7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTBUILDPROCADDROF@4
_ASTBUILDPROCADDROF@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00EC:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 2
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
mov dword ptr [ebp-4], eax
.Lt_00ED:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDPROCRESULTVAR@8
_ASTBUILDPROCRESULTVAR@8:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00EE:
push dword ptr [ebp+8]
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
je .Lt_00F1
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
call _ASTNEWVAR@20
push eax
call _ASTNEWDEREF@20
mov dword ptr [ebp-4], eax
jmp .Lt_00F0
.Lt_00F1:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
.Lt_00F0:
.Lt_00EF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTBUILDTYPEINICTORLIST@4
_ASTBUILDTYPEINICTORLIST@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00F2:
mov dword ptr [ebp-8], 0
push 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _ASTTYPEINIBEGIN@20
mov dword ptr [ebp-8], eax
push 0
push -2147483648
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
push dword ptr [eax+80]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTTYPEINIADDCTORLIST@24
push -1
push dword ptr [ebp-8]
call _ASTTYPEINIEND@8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00F3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDMULTIDEREF@16
_ASTBUILDMULTIDEREF@16:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F4:
.Lt_00F6:
cmp dword ptr [ebp+8], 0
jle .Lt_00F7
mov eax, dword ptr [ebp+16]
and eax, 480
test eax, eax
jne .Lt_00F9
cmp dword ptr [_SYMB+99432], 0
jne .Lt_00FB
push 0
push -1
push 28
call _ERRREPORT@12
jmp .Lt_00F7
.Lt_00FB:
.Lt_00FA:
lea eax, [ebp-12]
push eax
push dword ptr [ebp+12]
push 76
call _SYMBFINDUOPOVLPROC@12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00FD
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTBUILDCALL@16
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 0
jne .Lt_00FF
mov dword ptr [ebp-4], 0
jmp .Lt_00F5
.Lt_00FF:
.Lt_00FE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+16], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp+20], eax
jmp .Lt_00FC
.Lt_00FD:
push 0
push -1
push 28
call _ERRREPORT@12
jmp .Lt_00F7
.Lt_00FC:
jmp .Lt_00F8
.Lt_00F9:
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
je .Lt_0100
mov dword ptr [ebp-8], 24
jmp .Lt_010B
.Lt_0100:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_010B:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_0105
.Lt_0106:
cmp dword ptr [ebp-12], 23
jne .Lt_0104
.Lt_0105:
push 0
push -1
push 71
call _ERRREPORT@12
mov dword ptr [ebp+16], 2
jmp .Lt_0102
.Lt_0104:
cmp dword ptr [ebp-12], 22
jne .Lt_0107
.Lt_0108:
push 0
push -1
push 20
call _ERRREPORT@12
mov dword ptr [ebp+16], 2
.Lt_0107:
.Lt_0102:
cmp dword ptr [_ENV+176], 0
je .Lt_010A
push dword ptr [ebp+12]
call _ASTBUILDPTRCHK@4
mov dword ptr [ebp+12], eax
.Lt_010A:
.Lt_0109:
push 0
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTNEWDEREF@20
mov dword ptr [ebp+12], eax
.Lt_00F8:
dec dword ptr [ebp+8]
jmp .Lt_00F6
.Lt_00F7:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-4], eax
.Lt_00F5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTBUILDARRAYDESCINITREE@12
_ASTBUILDARRAYDESCINITREE@12:
push ebp
mov ebp, esp
sub esp, 64
push ebx
mov dword ptr [ebp-4], 0
.Lt_010C:
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
je .Lt_010F
mov dword ptr [ebp-4], 0
jmp .Lt_010D
.Lt_010F:
.Lt_010E:
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
call _ASTTYPEINIBEGIN@20
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
je .Lt_0111
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
call _ASTNEWCONSTI@16
mov dword ptr [ebp+16], eax
jmp .Lt_0110
.Lt_0111:
cmp dword ptr [ebp+16], 0
je .Lt_0113
jmp .Lt_0112
.Lt_0113:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR@20
mov dword ptr [ebp+16], eax
.Lt_0112:
push dword ptr [ebp+16]
call _ASTNEWADDROF@4
mov dword ptr [ebp+16], eax
or dword ptr [ebp-24], 32
.Lt_0110:
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEBEGIN@12
push 0
push -2147483648
push dword ptr [ebp-28]
push 1
push 0
push 0
push 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_0114
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
jmp .Lt_0123
.Lt_0114:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+72]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-44], ecx
mov dword ptr [ebp-40], eax
.Lt_0123:
push dword ptr [ebp-40]
push dword ptr [ebp-44]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+16]
call _ASTCLONETREE@4
push eax
push 28
call _ASTNEWBOP@20
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN@20
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+176]
mov dword ptr [ebp-28], ecx
push 0
push -2147483648
push dword ptr [ebp-28]
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN@20
mov ecx, dword ptr [ebp-28]
mov eax, dword ptr [ecx+176]
mov dword ptr [ebp-28], eax
push 0
push -2147483648
push dword ptr [ebp-28]
push 0
push 8
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 4
test ecx, ecx
je .Lt_0116
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
jmp .Lt_0124
.Lt_0116:
push dword ptr [ebp+12]
call _SYMBGETREALSIZE@4
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], edx
.Lt_0124:
push dword ptr [ebp-48]
push dword ptr [ebp-52]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN@20
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+176]
mov dword ptr [ebp-28], edx
push 0
push -2147483648
push dword ptr [ebp-28]
push 0
push 8
mov edx, dword ptr [ebp+12]
push dword ptr [edx+44]
push dword ptr [edx+40]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN@20
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+176]
mov dword ptr [ebp-28], edx
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+64]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], -1
jne .Lt_0119
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 8
jmp .Lt_0118
.Lt_0119:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
or dword ptr [ebp-24], 16
.Lt_0118:
push 0
push -2147483648
push dword ptr [ebp-28]
push 0
push 8
mov edx, dword ptr [ebp-16]
mov eax, edx
sar eax, 31
push eax
push edx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN@20
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+176]
mov dword ptr [ebp-28], edx
mov edx, dword ptr [ebp-20]
and edx, 15
or dword ptr [ebp-24], edx
push 0
push -2147483648
push dword ptr [ebp-28]
push 0
push 8
mov eax, dword ptr [ebp-24]
mov edx, eax
sar edx, 31
push edx
push eax
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN@20
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+176]
mov dword ptr [ebp-28], edx
mov edx, dword ptr [ebp-28]
mov dword ptr [ebp-56], edx
mov edx, dword ptr [ebp-28]
mov eax, dword ptr [edx+32]
mov edx, dword ptr [eax+60]
mov dword ptr [ebp-32], edx
push -1
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEBEGIN@12
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [edx+4]
and eax, 16388
test eax, eax
jne .Lt_011B
mov dword ptr [ebp-60], 0
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+64]
dec edx
mov dword ptr [ebp-64], edx
jmp .Lt_011D
.Lt_0120:
mov edx, dword ptr [ebp-32]
mov dword ptr [ebp-28], edx
push 0
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEBEGIN@12
push 0
push -2147483648
push dword ptr [ebp-28]
push 0
push 8
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-60]
sal eax, 4
mov ecx, dword ptr [edx+68]
add ecx, eax
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [ebp-60]
sal edx, 4
mov ebx, dword ptr [eax+68]
add ebx, edx
mov eax, dword ptr [ecx+8]
mov edx, dword ptr [ecx+12]
sub eax, dword ptr [ebx]
sbb edx, dword ptr [ebx+4]
add eax, 1
adc edx, 0
push edx
push eax
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN@20
mov eax, dword ptr [ebp-28]
mov edx, dword ptr [eax+176]
mov dword ptr [ebp-28], edx
push 0
push -2147483648
push dword ptr [ebp-28]
push 0
push 8
mov edx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-60]
sal eax, 4
mov ebx, dword ptr [edx+68]
add ebx, eax
push dword ptr [ebx+4]
push dword ptr [ebx]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN@20
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-28], ebx
push 0
push -2147483648
push dword ptr [ebp-28]
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-60]
sal eax, 4
mov edx, dword ptr [ebx+68]
add edx, eax
push dword ptr [edx+12]
push dword ptr [edx+8]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN@20
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEEND@8
.Lt_011E:
inc dword ptr [ebp-60]
.Lt_011D:
mov eax, dword ptr [ebp-64]
cmp dword ptr [ebp-60], eax
jle .Lt_0120
.Lt_011F:
jmp .Lt_011A
.Lt_011B:
mov eax, dword ptr [ebp+12]
mov edx, dword ptr [eax+64]
mov dword ptr [ebp-16], edx
cmp dword ptr [ebp-16], -1
jne .Lt_0122
mov dword ptr [ebp-16], 8
.Lt_0122:
.Lt_0121:
mov eax, dword ptr [ebp-16]
mov edx, eax
sar edx, 31
mov ebx, dword ptr [_SYMB+99628]
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
call _ASTTYPEINIADDPAD@12
.Lt_011A:
push dword ptr [ebp-56]
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEEND@8
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEEND@8
push -1
push dword ptr [ebp-8]
call _ASTTYPEINIEND@8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_010D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTBUILDARRAYBOUND@12
_ASTBUILDARRAYBOUND@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0142:
push offset _Lt_0144
push 2
push dword ptr [ebp+16]
push 0
call _ERRPUSHPARAMLOCATION@16
push 0
push 0
push dword ptr [ebp+12]
push 0
push 8
call _ASTNEWCONV@20
mov dword ptr [ebp+12], eax
call _ERRPOPPARAMLOCATION@0
mov eax, dword ptr [ebp+16]
cmp eax, 493
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCONSTBOUND@12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0146
mov eax, dword ptr [ebp+16]
cmp eax, 493
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _RTLARRAYBOUND@12
mov dword ptr [ebp-8], eax
.Lt_0146:
.Lt_0145:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0143:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTBUILDSTRPTR@4
_ASTBUILDSTRPTR@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0149:
mov dword ptr [ebp-12], 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_014C
or dword ptr [ebp-12], 512
.Lt_014C:
.Lt_014B:
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
push 0
push 0
push 0
push -2147483648
push 0
push 16
push dword ptr [ebp+8]
call _ASTNEWADDROF@4
push eax
push 0
push dword ptr [ebp-12]
call _ASTNEWCONV@20
push eax
call _ASTNEWDEREF@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_014A:
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
.balign 16
_ASTFAKEINSTPTR@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00D6:
push dword ptr [ebp+8]
push 52
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.Lt_00D7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCONSTBOUND@12:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0128:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 17
je .Lt_012D
.Lt_012E:
cmp dword ptr [ebp-24], 19
jne .Lt_012C
.Lt_012D:
jmp .Lt_012A
.Lt_012C:
jmp .Lt_0129
.Lt_012F:
.Lt_012A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0131
jmp .Lt_0129
.Lt_0131:
.Lt_0130:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 16388
test ebx, ebx
je .Lt_0133
jmp .Lt_0129
.Lt_0133:
.Lt_0132:
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx], 16
je .Lt_0135
jmp .Lt_0129
.Lt_0135:
.Lt_0134:
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+24]
mov eax, dword ptr [ebx+28]
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
cmp eax, dword ptr [ecx+64]
setl al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0137
cmp dword ptr [ebp+16], 0
je .Lt_0139
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
sal ebx, 4
mov ecx, dword ptr [eax+68]
add ecx, ebx
mov eax, dword ptr [ecx]
mov ebx, dword ptr [ecx+4]
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ebx
jmp .Lt_0138
.Lt_0139:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
sal ebx, 4
mov ecx, dword ptr [eax+68]
add ecx, ebx
mov eax, dword ptr [ecx+8]
mov ebx, dword ptr [ecx+12]
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 2147483648
jne .Lt_013B
cmp dword ptr [ebp-20], 0
jne .Lt_013B
.Lt_0151:
jmp .Lt_0129
.Lt_013B:
.Lt_013A:
.Lt_0138:
jmp .Lt_0136
.Lt_0137:
cmp dword ptr [ebp-12], -1
jne .Lt_013D
cmp dword ptr [ebp+16], 0
je .Lt_013E
mov dword ptr [ebp-24], 1
jmp .Lt_014D
.Lt_013E:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-24], ebx
.Lt_014D:
mov eax, dword ptr [ebp-24]
mov ebx, eax
sar ebx, 31
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], ebx
jmp .Lt_013C
.Lt_013D:
cmp dword ptr [ebp+16], 0
je .Lt_0140
mov dword ptr [ebp-24], 0
jmp .Lt_014E
.Lt_0140:
mov dword ptr [ebp-24], -1
.Lt_014E:
mov ebx, dword ptr [ebp-24]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
.Lt_013C:
.Lt_0136:
push 0
push 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.Lt_0129:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_0144:	.ascii	"dimension\0"
