	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBCOMPINIT
SYMBCOMPINIT:
.type SYMBCOMPINIT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_005E:
mov dword ptr [ebp-4], 0
.Lt_0063:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, offset SYMB
add ebx, eax
mov dword ptr [ebx+99120], 0
.Lt_0061:
inc dword ptr [ebp-4]
.Lt_0060:
cmp dword ptr [ebp-4], 120
jle .Lt_0063
.Lt_0062:
push 0
push 16
push 16
lea ebx, [SYMB+98540]
push ebx
call STACKNEW
add esp, 16
.Lt_005F:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCOMPINIT, .-SYMBCOMPINIT
.balign 16

.globl SYMBCOMPEND
SYMBCOMPEND:
.type SYMBCOMPEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0064:
sub esp, 12
lea eax, [SYMB+98540]
push eax
call STACKFREE
add esp, 16
.Lt_0065:
mov esp, ebp
pop ebp
ret
.size SYMBCOMPEND, .-SYMBCOMPEND
.balign 16

.globl SYMBUDTALLOCEXT
SYMBUDTALLOCEXT:
.type SYMBUDTALLOCEXT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0066:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
jne .Lt_0069
sub esp, 12
push 156
call XCALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+136], eax
.Lt_0069:
.Lt_0068:
.Lt_0067:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBUDTALLOCEXT, .-SYMBUDTALLOCEXT
.balign 16

.globl SYMBUDTDECLAREDEFAULTMEMBERS
SYMBUDTDECLAREDEFAULTMEMBERS:
.type SYMBUDTDECLAREDEFAULTMEMBERS, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00B0:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+96], 0
je .Lt_00B3
sub esp, 12
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+96]
push dword ptr [ebx+32]
call SYMBGETCOMPDEFCTOR
add esp, 16
test eax, eax
sete bl
shr ebx, 1
sbb ebx, ebx
sub esp, 12
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+96]
push dword ptr [ecx+32]
call SYMBGETCOMPCTORHEAD
add esp, 16
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov dword ptr [ebp-4], ebx
jmp .Lt_00B2
.Lt_00B3:
mov dword ptr [ebp-4], 0
.Lt_00B2:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+116]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+116]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ecx, eax
sub esp, 12
push dword ptr [ebp+12]
mov ebx, ecx
call SYMBGETCOMPCTORHEAD
add esp, 16
test eax, eax
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_00B5
cmp dword ptr [ebp-4], 0
je .Lt_00B7
sub esp, 4
push 0
push 0
push 186
call ERRREPORT
add esp, 16
jmp .Lt_00B6
.Lt_00B7:
sub esp, 12
push 5
push 0
push -2147483648
push -1
push dword ptr [ebp+12]
call HDECLAREPROC
add esp, 32
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], eax
.Lt_00B6:
.Lt_00B5:
.Lt_00B4:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+116]
and ecx, 8
test ecx, ecx
je .Lt_00B9
sub esp, 12
push dword ptr [ebp+12]
call SYMBUDTALLOCEXT
add esp, 16
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+136]
cmp dword ptr [eax+24], 0
jne .Lt_00BB
sub esp, 12
push 17
push 0
push 532
push 0
push dword ptr [ebp+12]
call HDECLAREPROC
add esp, 32
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+16], eax
sub esp, 8
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call SYMBPROCCHECKOVERRIDDEN
add esp, 16
.Lt_00BB:
.Lt_00BA:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+136]
cmp dword ptr [ecx+12], 0
jne .Lt_00BD
cmp dword ptr [ebp-4], 0
je .Lt_00BF
sub esp, 4
push 0
push 0
push 188
call ERRREPORT
add esp, 16
jmp .Lt_00BE
.Lt_00BF:
sub esp, 12
push 5
push 0
push 532
push -1
push dword ptr [ebp+12]
call HDECLAREPROC
add esp, 32
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+12], eax
.Lt_00BE:
.Lt_00BD:
.Lt_00BC:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+136]
cmp dword ptr [ecx+20], 0
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+136]
cmp dword ptr [ebx+8], 0
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_00C1
cmp dword ptr [ebp-4], 0
je .Lt_00C3
sub esp, 4
push 0
push 0
push 187
call ERRREPORT
add esp, 16
jmp .Lt_00C2
.Lt_00C3:
sub esp, 12
push 5
push 0
push 20
push -1
push dword ptr [ebp+12]
call HDECLAREPROC
add esp, 32
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], eax
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
.Lt_00B9:
.Lt_00B8:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+116]
and ecx, 16
test ecx, ecx
je .Lt_00C5
sub esp, 12
push dword ptr [ebp+12]
call SYMBUDTALLOCEXT
add esp, 16
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+136]
cmp dword ptr [eax+16], 0
jne .Lt_00C7
sub esp, 12
push 8
push 0
push -2147483648
push -1
push dword ptr [ebp+12]
call HDECLAREPROC
add esp, 32
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+4], eax
sub esp, 8
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call SYMBPROCCHECKOVERRIDDEN
add esp, 16
.Lt_00C7:
.Lt_00C6:
.Lt_00C5:
.Lt_00C4:
.Lt_00B1:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBUDTDECLAREDEFAULTMEMBERS, .-SYMBUDTDECLAREDEFAULTMEMBERS
.balign 16

.globl SYMBUDTIMPLEMENTDEFAULTMEMBERS
SYMBUDTIMPLEMENTDEFAULTMEMBERS:
.type SYMBUDTIMPLEMENTDEFAULTMEMBERS, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00CF:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
je .Lt_00D2
sub esp, 12
push dword ptr [ebp+12]
call SYMBUDTALLOCEXT
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call HSETMINIMUMVTABLESIZE
add esp, 16
mov ebx, dword ptr [SYMB+99636]
cmp dword ptr [ebp+12], ebx
je .Lt_00D4
sub esp, 12
push dword ptr [ebp+12]
call HBUILDRTTI
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call HBUILDVTABLE
add esp, 16
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
.Lt_00D1:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_00D6
sub esp, 4
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
push dword ptr [ebp+12]
call HADDCTORBODY
add esp, 16
.Lt_00D6:
.Lt_00D5:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 0
je .Lt_00D8
sub esp, 8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push dword ptr [ebp+12]
call HADDLETOPBODY
add esp, 16
.Lt_00D8:
.Lt_00D7:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+12], 0
je .Lt_00DA
sub esp, 4
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
push dword ptr [ebp+12]
call HADDCTORBODY
add esp, 16
.Lt_00DA:
.Lt_00D9:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+8], 0
je .Lt_00DC
sub esp, 4
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp+12]
call HADDCTORBODY
add esp, 16
.Lt_00DC:
.Lt_00DB:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .Lt_00DE
sub esp, 4
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
push dword ptr [ebp+12]
call HADDCTORBODY
add esp, 16
.Lt_00DE:
.Lt_00DD:
.Lt_00D0:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBUDTIMPLEMENTDEFAULTMEMBERS, .-SYMBUDTIMPLEMENTDEFAULTMEMBERS
.balign 16

.globl SYMBCOMPISTRIVIAL
SYMBCOMPISTRIVIAL:
.type SYMBCOMPISTRIVIAL, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E9:
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETCOMPCOPYCTOR
add esp, 16
test eax, eax
sete bl
shr ebx, 1
sbb ebx, ebx
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETCOMPDTOR
add esp, 16
test eax, eax
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+12]
and eax, 4194304
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_00EA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCOMPISTRIVIAL, .-SYMBCOMPISTRIVIAL
.balign 16

.globl SYMBSETCOMPCTORHEAD
SYMBSETCOMPCTORHEAD:
.type SYMBSETCOMPCTORHEAD, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00EE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_00F1
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx], 0
jne .Lt_00F3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.Lt_00F3:
.Lt_00F2:
.Lt_00F1:
.Lt_00F0:
.Lt_00EF:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBSETCOMPCTORHEAD, .-SYMBSETCOMPCTORHEAD
.balign 16

.globl SYMBCHECKCOMPCTOR
SYMBCHECKCOMPCTOR:
.type SYMBCHECKCOMPCTOR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00F4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_00F7
mov eax, dword ptr [ebp+12]
mov bx, word ptr [eax+68]
mov word ptr [ebp-4], bx
movsx ebx, word ptr [ebp-4]
cmp ebx, 1
jne .Lt_00FA
.Lt_00FB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
jmp .Lt_00F8
.Lt_00FA:
movsx ebx, word ptr [ebp-4]
cmp ebx, 2
jne .Lt_00FC
.Lt_00FD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
cmp dword ptr [eax+8], 0
jne .Lt_00FF
sub esp, 4
push dword ptr [ebp+8]
push 20
push dword ptr [ebp+12]
call HHASBYREFSELFPARAM
add esp, 16
test eax, eax
je .Lt_0101
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
.Lt_0101:
.Lt_0100:
.Lt_00FF:
.Lt_00FE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+12], 0
jne .Lt_0103
sub esp, 4
push dword ptr [ebp+8]
push 532
push dword ptr [ebp+12]
call HHASBYREFSELFPARAM
add esp, 16
test eax, eax
je .Lt_0105
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+12], eax
.Lt_0105:
.Lt_0104:
.Lt_0103:
.Lt_0102:
.Lt_00FC:
.Lt_00F8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+4], 0
jne .Lt_0107
mov ebx, dword ptr [ebp+12]
movsx eax, word ptr [ebx+70]
mov ebx, dword ptr [ebp+12]
movsx ecx, word ptr [ebx+68]
dec ecx
cmp eax, ecx
jne .Lt_0109
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+136]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax+4], ecx
.Lt_0109:
.Lt_0108:
.Lt_0107:
.Lt_0106:
.Lt_00F7:
.Lt_00F6:
.Lt_00F5:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCHECKCOMPCTOR, .-SYMBCHECKCOMPCTOR
.balign 16

.globl SYMBSETCOMPDTOR
SYMBSETCOMPDTOR:
.type SYMBSETCOMPDTOR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_010A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_010D
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+16], 0
jne .Lt_010F
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+16], ebx
.Lt_010F:
.Lt_010E:
.Lt_010D:
.Lt_010C:
.Lt_010B:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBSETCOMPDTOR, .-SYMBSETCOMPDTOR
.balign 16

.globl SYMBGETCOMPCTORHEAD
SYMBGETCOMPCTORHEAD:
.type SYMBGETCOMPCTORHEAD, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0110:
cmp dword ptr [ebp+8], 0
je .Lt_0113
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_0115
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .Lt_0117
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.Lt_0117:
.Lt_0116:
.Lt_0115:
.Lt_0114:
.Lt_0113:
.Lt_0112:
.Lt_0111:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBGETCOMPCTORHEAD, .-SYMBGETCOMPCTORHEAD
.balign 16

.globl SYMBGETCOMPDEFCTOR
SYMBGETCOMPDEFCTOR:
.type SYMBGETCOMPDEFCTOR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0118:
cmp dword ptr [ebp+8], 0
je .Lt_011B
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_011D
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .Lt_011F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-4], eax
.Lt_011F:
.Lt_011E:
.Lt_011D:
.Lt_011C:
.Lt_011B:
.Lt_011A:
.Lt_0119:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBGETCOMPDEFCTOR, .-SYMBGETCOMPDEFCTOR
.balign 16

.globl SYMBGETCOMPDTOR
SYMBGETCOMPDTOR:
.type SYMBGETCOMPDTOR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0124:
cmp dword ptr [ebp+8], 0
je .Lt_0127
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_0129
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .Lt_012B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-4], eax
.Lt_012B:
.Lt_012A:
.Lt_0129:
.Lt_0128:
.Lt_0127:
.Lt_0126:
.Lt_0125:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBGETCOMPDTOR, .-SYMBGETCOMPDTOR
.balign 16

.globl SYMBCHECKCOMPLETOP
SYMBCHECKCOMPLETOP:
.type SYMBCHECKCOMPLETOP, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_012C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_012F
sub esp, 4
push dword ptr [ebp+8]
push 20
push dword ptr [ebp+12]
call HHASBYREFSELFPARAM
add esp, 16
test eax, eax
je .Lt_0131
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
.Lt_0131:
.Lt_0130:
sub esp, 4
push dword ptr [ebp+8]
push 532
push dword ptr [ebp+12]
call HHASBYREFSELFPARAM
add esp, 16
test eax, eax
je .Lt_0133
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+24], eax
.Lt_0133:
.Lt_0132:
.Lt_012F:
.Lt_012E:
.Lt_012D:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCHECKCOMPLETOP, .-SYMBCHECKCOMPLETOP
.balign 16

.globl SYMBCOMPHASCOPYLETOPS
SYMBCOMPHASCOPYLETOPS:
.type SYMBCOMPHASCOPYLETOPS, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0134:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .Lt_0137
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+20], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+136]
cmp dword ptr [ecx+24], 0
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov dword ptr [ebp-4], eax
.Lt_0137:
.Lt_0136:
.Lt_0135:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCOMPHASCOPYLETOPS, .-SYMBCOMPHASCOPYLETOPS
.balign 16

.globl SYMBGETCOMPOPOVLHEAD
SYMBGETCOMPOPOVLHEAD:
.type SYMBGETCOMPOPOVLHEAD, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_013A:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .Lt_013D
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 10
jne .Lt_0140
.Lt_0141:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
jne .Lt_0143
mov dword ptr [ebp-4], 0
jmp .Lt_013B
.Lt_0143:
.Lt_0142:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov ecx, dword ptr [eax+136]
add ecx, ebx
mov ebx, dword ptr [ecx+28]
mov dword ptr [ebp-4], ebx
jmp .Lt_013E
.Lt_0140:
cmp dword ptr [ebp-8], 9
jne .Lt_0144
.Lt_0145:
mov dword ptr [ebp-4], 0
jmp .Lt_013E
.Lt_0144:
cmp dword ptr [ebp-8], 11
jne .Lt_0146
.Lt_0147:
.Lt_0146:
.Lt_013E:
jmp .Lt_013C
.Lt_013D:
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov ecx, offset SYMB
add ecx, ebx
mov ebx, dword ptr [ecx+99120]
mov dword ptr [ebp-4], ebx
.Lt_013C:
.Lt_013B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBGETCOMPOPOVLHEAD, .-SYMBGETCOMPOPOVLHEAD
.balign 16

.globl SYMBSETCOMPOPOVLHEAD
SYMBSETCOMPOPOVLHEAD:
.type SYMBSETCOMPOPOVLHEAD, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0148:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .Lt_014B
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 10
jne .Lt_014D
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ecx, dword ptr [ebx+136]
add ecx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+28], eax
.Lt_014D:
.Lt_014C:
cmp dword ptr [ebp-4], 0
jne .Lt_014F
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBCHECKCOMPLETOP
add esp, 16
.Lt_014F:
.Lt_014E:
jmp .Lt_014A
.Lt_014B:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ecx, offset SYMB
add ecx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+99120], eax
.Lt_014A:
.Lt_0149:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBSETCOMPOPOVLHEAD, .-SYMBSETCOMPOPOVLHEAD
.balign 16

.globl SYMBCOMPADDVIRTUAL
SYMBCOMPADDVIRTUAL:
.type SYMBCOMPADDVIRTUAL, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0150:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTALLOCEXT
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call HSETMINIMUMVTABLESIZE
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+140]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
inc dword ptr [ebx+140]
.Lt_0151:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCOMPADDVIRTUAL, .-SYMBCOMPADDVIRTUAL
.balign 16

.globl SYMBCOMPGETABSTRACTCOUNT
SYMBCOMPGETABSTRACTCOUNT:
.type SYMBCOMPGETABSTRACTCOUNT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0152:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .Lt_0155
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+152]
mov dword ptr [ebp-4], eax
.Lt_0155:
.Lt_0154:
.Lt_0153:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCOMPGETABSTRACTCOUNT, .-SYMBCOMPGETABSTRACTCOUNT
.balign 16

.globl SYMBNESTBEGIN
SYMBNESTBEGIN:
.type SYMBNESTBEGIN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0178:
sub esp, 12
lea eax, [SYMB+98540]
push eax
call STACKPUSH
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [SYMB+98536]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [SYMB+98532]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 3
jne .Lt_017B
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+56]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], 0
jmp .Lt_017A
.Lt_017B:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+68]
mov dword ptr [ebp-8], eax
.Lt_017A:
mov eax, dword ptr [ebp-12]
mov dword ptr [SYMB+98536], eax
cmp dword ptr [ebp-8], 0
je .Lt_017D
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [SYMB+98528]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [SYMB+98528], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [SYMB+98532], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+92], 0
jne .Lt_017F
sub esp, 12
lea ebx, [SYMB+98652]
push ebx
call LISTNEWNODE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+92], eax
.Lt_017F:
.Lt_017E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
inc dword ptr [ebx+16]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 1
je .Lt_0181
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASHLISTREMOVENAMESPACE
add esp, 16
.Lt_0181:
.Lt_0180:
sub esp, 12
push dword ptr [ebp-8]
call SYMBHASHLISTADD
add esp, 16
cmp dword ptr [ebp+12], 0
je .Lt_0183
sub esp, 4
mov eax, dword ptr [ebp-4]
push dword ptr [eax+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HINSERTNESTED
add esp, 16
.Lt_0183:
.Lt_0182:
sub esp, 12
push dword ptr [ebp+8]
call HINSERTIMPORTED
add esp, 16
.Lt_017D:
.Lt_017C:
.Lt_0179:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBNESTBEGIN, .-SYMBNESTBEGIN
.balign 16

.globl SYMBNESTEND
SYMBNESTEND:
.type SYMBNESTEND, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0184:
sub esp, 12
lea eax, [SYMB+98540]
push eax
call STACKGETTOS
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 3
jne .Lt_0187
mov dword ptr [ebp-8], 0
jmp .Lt_0186
.Lt_0187:
mov ebx, dword ptr [ebp-12]
lea eax, [ebx+68]
mov dword ptr [ebp-8], eax
.Lt_0186:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [SYMB+98536], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0189
sub esp, 12
push dword ptr [ebp-12]
call HREMOVEIMPORTED
add esp, 16
cmp dword ptr [ebp+8], 0
je .Lt_018B
sub esp, 8
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
push dword ptr [ebp-12]
call HREMOVENESTED
add esp, 16
.Lt_018B:
.Lt_018A:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+92]
dec dword ptr [eax+16]
sub esp, 12
push dword ptr [ebp-8]
call SYMBHASHLISTDEL
add esp, 16
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 0
je .Lt_018D
sub esp, 8
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+60]
push dword ptr [ebp-12]
call SYMBHASHLISTINSERTNAMESPACE
add esp, 16
.Lt_018D:
.Lt_018C:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [SYMB+98532], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [SYMB+98528], ebx
.Lt_0189:
.Lt_0188:
sub esp, 12
lea ebx, [SYMB+98540]
push ebx
call STACKPOP
add esp, 16
.Lt_0185:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBNESTEND, .-SYMBNESTEND
.balign 16

.globl SYMBCOMPADDTOIMPORTLIST
SYMBCOMPADDTOIMPORTLIST:
.type SYMBCOMPADDTOIMPORTLIST, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_018E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+92], 0
jne .Lt_0191
sub esp, 12
lea ebx, [SYMB+98652]
push ebx
call LISTNEWNODE
add esp, 16
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+92], eax
.Lt_0191:
.Lt_0190:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+4], 0
je .Lt_0193
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
jmp .Lt_0192
.Lt_0193:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_0192:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+60], ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+64], 0
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+92]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+4], ecx
.Lt_018F:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCOMPADDTOIMPORTLIST, .-SYMBCOMPADDTOIMPORTLIST
.balign 16

.globl SYMBCOMPDELFROMIMPORTLIST
SYMBCOMPDELFROMIMPORTLIST:
.type SYMBCOMPDELFROMIMPORTLIST, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0194:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
jne .Lt_0197
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+92]
mov eax, dword ptr [ebx+64]
mov dword ptr [ecx], eax
jmp .Lt_0196
.Lt_0197:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+60]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebx+64], ecx
.Lt_0196:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+64], 0
jne .Lt_0199
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [ecx+60]
mov dword ptr [eax+4], ebx
jmp .Lt_0198
.Lt_0199:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov eax, dword ptr [ebx+60]
mov dword ptr [ecx+60], eax
.Lt_0198:
.Lt_0195:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCOMPDELFROMIMPORTLIST, .-SYMBCOMPDELFROMIMPORTLIST
.balign 16

.globl SYMBCOMPADDTOEXPORTLIST
SYMBCOMPADDTOEXPORTLIST:
.type SYMBCOMPADDTOEXPORTLIST, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_019A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+92], 0
jne .Lt_019D
sub esp, 12
lea ebx, [SYMB+98652]
push ebx
call LISTNEWNODE
add esp, 16
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+92], eax
.Lt_019D:
.Lt_019C:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+12], 0
je .Lt_019F
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+76], eax
jmp .Lt_019E
.Lt_019F:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
.Lt_019E:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
mov dword ptr [eax+72], ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+76], 0
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+92]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+12], ecx
.Lt_019B:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCOMPADDTOEXPORTLIST, .-SYMBCOMPADDTOEXPORTLIST
.balign 16

.globl SYMBCOMPDELFROMEXPORTLIST
SYMBCOMPDELFROMEXPORTLIST:
.type SYMBCOMPDELFROMEXPORTLIST, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01A0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+72], 0
jne .Lt_01A3
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+92]
mov eax, dword ptr [ebx+76]
mov dword ptr [ecx+8], eax
jmp .Lt_01A2
.Lt_01A3:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+72]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebx+76], ecx
.Lt_01A2:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+76], 0
jne .Lt_01A5
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [ecx+72]
mov dword ptr [eax+12], ebx
jmp .Lt_01A4
.Lt_01A5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
mov eax, dword ptr [ebx+72]
mov dword ptr [ecx+72], eax
.Lt_01A4:
.Lt_01A1:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCOMPDELFROMEXPORTLIST, .-SYMBCOMPDELFROMEXPORTLIST
.balign 16

.globl SYMBCOMPDELIMPORTLIST
SYMBCOMPDELIMPORTLIST:
.type SYMBCOMPDELIMPORTLIST, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_01A6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .Lt_01A9
jmp .Lt_01A7
.Lt_01A9:
.Lt_01A8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.Lt_01AA:
cmp dword ptr [ebp-4], 0
je .Lt_01AB
sub esp, 12
push dword ptr [ebp-4]
call SYMBCOMPDELFROMIMPORTLIST
add esp, 16
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
sub esp, 12
push dword ptr [ebp-4]
call SYMBCOMPDELFROMEXPORTLIST
add esp, 16
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_01AA
.Lt_01AB:
.Lt_01A7:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCOMPDELIMPORTLIST, .-SYMBCOMPDELIMPORTLIST
.balign 16

.globl SYMBCOMPRTTIINIT
SYMBCOMPRTTIINIT:
.type SYMBCOMPRTTIINIT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_01AC:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_01AF
push offset Lt_01AF
push 0
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 48
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [SYMB+99632], eax
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 32
push offset Lt_01BA
push 0
push offset Lt_01B0
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 36
push offset Lt_01BA
push 0
push offset Lt_01B1
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push 0
push 0
push 0
push dword ptr [ebp-4]
push 52
push offset Lt_01BA
push 0
push offset Lt_01B2
push dword ptr [ebp-4]
call SYMBADDFIELD
add esp, 48
sub esp, 8
push 0
push dword ptr [ebp-4]
call SYMBSTRUCTEND
add esp, 16
cmp dword ptr [ENV+136], 3
jne .Lt_01B4
mov eax, offset Lt_01B5
mov dword ptr [ebp-20], eax
jmp .Lt_01B3
.Lt_01B4:
mov eax, offset Lt_01B6
mov dword ptr [ebp-20], eax
.Lt_01B3:
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push offset Lt_01B7
push dword ptr [ebp-20]
push 0
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 48
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [SYMB+99636], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 4194304
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 262144
sub esp, 8
push 0
push dword ptr [ebp-8]
call SYMBNESTBEGIN
add esp, 16
sub esp, 8
push 0
push 0
push 0
push 0
push 0
push 32
push offset Lt_01BA
push 0
push offset Lt_01B8
push dword ptr [ebp-8]
call SYMBADDFIELD
add esp, 48
sub esp, 12
push 0
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call SYMBADDPROCINSTANCEPARAM
add esp, 16
sub esp, 8
push 0
push 3
push 7
push 0
push 0
push dword ptr [ebp-16]
call SYMBADDCTOR
add esp, 32
sub esp, 12
push 0
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call SYMBADDPROCINSTANCEPARAM
add esp, 16
push 0
push 0
push 2
push 0
push dword ptr [ebp-8]
push 532
push offset Lt_006E
push dword ptr [ebp-16]
call SYMBADDPROCPARAM
add esp, 32
sub esp, 8
push 0
push 3
push 7
push 0
push 0
push dword ptr [ebp-16]
call SYMBADDCTOR
add esp, 32
sub esp, 8
push -1
push dword ptr [ebp-8]
call SYMBSTRUCTEND
add esp, 16
sub esp, 8
push 1
push 17
push offset Lt_01BA
push 0
push 0
push 0
push dword ptr [SYMB+99632]
push 20
push offset Lt_01B9
push 0
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-12], eax
sub esp, 12
push dword ptr [ebp-8]
call SYMBUDTALLOCEXT
add esp, 16
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+148], eax
.Lt_01AD:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBCOMPRTTIINIT, .-SYMBCOMPRTTIINIT

.section .bss
.balign 4
	.lcomm	Lt_01BB,16

.section .data
.balign 4
Lt_01BA:
.int Lt_01BB
.int Lt_01BB
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBCOMPRTTIEND
SYMBCOMPRTTIEND:
.type SYMBCOMPRTTIEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_01BC:
.Lt_01BD:
mov esp, ebp
pop ebp
ret
.size SYMBCOMPRTTIEND, .-SYMBCOMPRTTIEND
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
HDECLAREPROC:
.type HDECLAREPROC, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_006A:
sub esp, 8
push -1
push dword ptr [ebp+8]
call SYMBNESTBEGIN
add esp, 16
sub esp, 12
push 0
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call SYMBADDPROCINSTANCEPARAM
add esp, 16
cmp dword ptr [ebp+16], -2147483648
je .Lt_006D
push 0
push 0
push 2
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push offset Lt_006E
push dword ptr [ebp-8]
call SYMBADDPROCPARAM
add esp, 32
.Lt_006D:
.Lt_006C:
or dword ptr [ebp+20], 64
or dword ptr [ebp+24], 2
cmp dword ptr [ebp+12], -1
jne .Lt_0070
sub esp, 8
push 4
push 3
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
push dword ptr [ebp-8]
call SYMBADDCTOR
add esp, 32
mov dword ptr [ebp-8], eax
jmp .Lt_006F
.Lt_0070:
sub esp, 12
push 4
push 3
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call SYMBADDOPERATOR
add esp, 48
mov dword ptr [ebp-8], eax
.Lt_006F:
sub esp, 12
push -1
call SYMBNESTEND
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_006B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HDECLAREPROC, .-HDECLAREPROC
.balign 16
HSETMINIMUMVTABLESIZE:
.type HSETMINIMUMVTABLESIZE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0071:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
cmp dword ptr [ebx+140], 0
jne .Lt_0074
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov dword ptr [eax+140], 2
.Lt_0074:
.Lt_0073:
.Lt_0072:
pop ebx
mov esp, ebp
pop ebp
ret
.size HSETMINIMUMVTABLESIZE, .-HSETMINIMUMVTABLESIZE
.balign 16
HBUILDRTTI:
.type HBUILDRTTI, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0075:
sub esp, 8
push -1
push dword ptr [ebp+8]
call SYMBNESTBEGIN
add esp, 16
sub esp, 8
push 1
push 2051
push offset Lt_01BE
push 0
push 0
push 0
push dword ptr [SYMB+99632]
push 20
push 0
push 0
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
or dword ptr [eax+12], 256
sub esp, 12
push -1
call SYMBNESTEND
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+148], eax
sub esp, 12
push 0
push 0
push 0
push dword ptr [SYMB+99632]
push 20
call ASTTYPEINIBEGIN
add esp, 32
mov dword ptr [ebp-4], eax
sub esp, 4
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call ASTTYPEINISCOPEBEGIN
add esp, 16
sub esp, 12
push dword ptr [SYMB+99632]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-16]
sub esp, 8
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-4]
call ASTTYPEINIADDASSIGN
add esp, 32
sub esp, 12
push dword ptr [ebp-16]
call SYMBUDTGETNEXTINITABLEFIELD
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-16]
sub esp, 4
push 0
push -2147483648
push 0
push 0
sub esp, 12
push -1
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call SYMBALLOCSTRCONST
add esp, 20
push eax
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 8
push eax
push dword ptr [ebp-4]
call ASTTYPEINIADDASSIGN
add esp, 32
sub esp, 12
push dword ptr [ebp-16]
call SYMBUDTGETNEXTINITABLEFIELD
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+96], 0
je .Lt_0079
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov eax, dword ptr [ebx+32]
mov ebx, dword ptr [eax+136]
push dword ptr [ebx+148]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0078
.Lt_0079:
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0078:
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call ASTTYPEINIADDASSIGN
add esp, 32
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call ASTTYPEINISCOPEEND
add esp, 16
sub esp, 8
push -1
push dword ptr [ebp-4]
call ASTTYPEINIEND
add esp, 16
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+56], ebx
.Lt_0076:
pop ebx
mov esp, ebp
pop ebp
ret
.size HBUILDRTTI, .-HBUILDRTTI

.section .bss
.balign 4
	.lcomm	Lt_01BF,16

.section .data
.balign 4
Lt_01BE:
.int Lt_01BF
.int Lt_01BF
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16
HBUILDVTABLE:
.type HBUILDVTABLE, @function
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.Lt_007A:
sub esp, 8
push -1
push dword ptr [ebp+8]
call SYMBNESTBEGIN
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+140]
dec eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov dword ptr [Lt_01C0+8], ecx
mov dword ptr [Lt_01C0+12], ebx
sub esp, 8
push 1
push 2051
push offset Lt_01C1
push 1
push 0
push 0
push 0
push 32
push 0
push 0
call SYMBADDVAR
add esp, 48
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
or dword ptr [eax+12], 1024
sub esp, 12
push -1
call SYMBNESTEND
add esp, 16
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+96]
mov eax, dword ptr [ecx+32]
mov ecx, dword ptr [eax+136]
mov eax, dword ptr [ecx+140]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 2
jle .Lt_007E
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+96]
mov eax, dword ptr [ecx+32]
mov ecx, dword ptr [eax+136]
mov eax, dword ptr [ecx+144]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp-8], ecx
jmp .Lt_007D
.Lt_007E:
mov dword ptr [ebp-8], 0
.Lt_007D:
sub esp, 12
push 0
push 0
push 0
push 0
push 32
call ASTTYPEINIBEGIN
add esp, 32
mov dword ptr [ebp-4], eax
sub esp, 4
push -1
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call ASTTYPEINISCOPEBEGIN
add esp, 16
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-20]
sub esp, 8
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-4]
call ASTTYPEINIADDASSIGN
add esp, 32
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+136]
mov eax, dword ptr [ecx+148]
mov dword ptr [ebp-16], eax
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-20]
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 8
push eax
push dword ptr [ebp-4]
call ASTTYPEINIADDASSIGN
add esp, 32
mov dword ptr [ebp-24], 2
cmp dword ptr [ebp-8], 0
je .Lt_0080
sub esp, 4
push 2
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call ASTTYPEINICOPYELEMENTS
add esp, 16
mov eax, dword ptr [ebp-28]
add eax, dword ptr [ebp-24]
add eax, -2
mov dword ptr [ebp-24], eax
.Lt_0080:
.Lt_007F:
.Lt_0081:
mov ecx, dword ptr [ebp-24]
mov eax, ecx
sar eax, 31
mov esi, dword ptr [Lt_01C0+8]
mov ebx, dword ptr [Lt_01C0+12]
cmp eax, ebx
jg .Lt_0082
jl .Lt_01C2
cmp ecx, esi
ja .Lt_0082
.Lt_01C2:
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-20]
sub esp, 8
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-4]
call ASTTYPEINIADDASSIGN
add esp, 32
inc dword ptr [ebp-24]
jmp .Lt_0081
.Lt_0082:
sub esp, 8
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call ASTTYPEINISCOPEEND
add esp, 16
sub esp, 8
push -1
push dword ptr [ebp-4]
call ASTTYPEINIEND
add esp, 16
mov eax, dword ptr [ebp-20]
mov esi, dword ptr [ebp-4]
mov dword ptr [eax+56], esi
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+60]
mov dword ptr [ebp-12], eax
.Lt_0083:
cmp dword ptr [ebp-12], 0
je .Lt_0084
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 3
jne .Lt_0086
sub esp, 12
push dword ptr [ebp-12]
call SYMBPROCGETVTABLEINDEX
add esp, 16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp-12]
mov ebx, dword ptr [esi+8]
and ebx, 512
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0088
sub esp, 4
sub esp, 8
push dword ptr [ebp-12]
call ASTBUILDPROCADDROF
add esp, 12
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-4]
call ASTTYPEINIREPLACEELEMENT
add esp, 16
.Lt_0088:
.Lt_0087:
.Lt_0086:
.Lt_0085:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-12], ebx
jmp .Lt_0083
.Lt_0084:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+136]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+144], ebx
.Lt_007B:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HBUILDVTABLE, .-HBUILDVTABLE

.section .bss
.balign 4
	.lcomm	Lt_01C0,16

.section .data
.balign 4
Lt_01C1:
.int Lt_01C0
.int Lt_01C0
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16
HPROCBEGIN:
.type HPROCBEGIN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0089:
sub esp, 8
push -1
push dword ptr [ebp+8]
call SYMBNESTBEGIN
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp+12]
call ASTPROCBEGIN
add esp, 16
.Lt_008A:
mov esp, ebp
pop ebp
ret
.size HPROCBEGIN, .-HPROCBEGIN
.balign 16
HPROCEND:
.type HPROCEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_008B:
sub esp, 12
push 0
call ASTPROCEND
add esp, 16
sub esp, 12
push -1
call SYMBNESTEND
add esp, 16
.Lt_008C:
mov esp, ebp
pop ebp
ret
.size HPROCEND, .-HPROCEND
.balign 16
HADDCTORBODY:
.type HADDCTORBODY, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_008D:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HPROCBEGIN
add esp, 16
cmp dword ptr [ebp+16], 0
je .Lt_0090
sub esp, 12
sub esp, 8
push 0
sub esp, 8
push 0
push 0
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+80]
push dword ptr [ebx+60]
call ASTBUILDVARFIELD
add esp, 24
push eax
sub esp, 4
push 0
push 0
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
push dword ptr [ebx+60]
call ASTBUILDVARFIELD
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_0090:
.Lt_008F:
call HPROCEND
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 8388608
.Lt_008E:
pop ebx
mov esp, ebp
pop ebp
ret
.size HADDCTORBODY, .-HADDCTORBODY
.balign 16
HASSIGNDYNAMICARRAY:
.type HASSIGNDYNAMICARRAY, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0093:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-4], ebx
sub esp, 12
sub esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
sub esp, 8
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call ASTBUILDVARFIELD
add esp, 24
push eax
sub esp, 4
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call ASTBUILDVARFIELD
add esp, 20
push eax
call RTLARRAYREDIMTO
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp-4]
and eax, 31
mov ebx, dword ptr [ebp-4]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-4]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-4]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-4], eax
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-12], eax
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 12
sub esp, 8
push 64
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
mov ebx, dword ptr [SYMB+99608]
mov eax, ebx
sar eax, 31
push eax
push ebx
sub esp, 4
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call ASTBUILDVARFIELD
add esp, 20
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-8]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 8
push 64
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
mov ebx, dword ptr [SYMB+99608]
mov eax, ebx
sar eax, 31
push eax
push ebx
sub esp, 4
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call ASTBUILDVARFIELD
add esp, 20
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 24
push eax
push dword ptr [ebp-12]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 8
push 64
sub esp, 4
push 1
push 0
sub esp, 4
push 0
push 0
push 9
mov ebx, dword ptr [SYMB+99612]
mov eax, ebx
sar eax, 31
push eax
push ebx
sub esp, 4
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call ASTBUILDVARFIELD
add esp, 20
push eax
call _Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 24
push eax
push 28
call ASTNEWBOP
add esp, 24
push eax
push dword ptr [ebp-16]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-20]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 4
push 0
push -1
push dword ptr [ebp-24]
push 1
push 0
sub esp, 8
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 28
push eax
sub esp, 4
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 24
push eax
push 49
call ASTNEWBOP
add esp, 20
push eax
call ASTBUILDBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 8
push 0
sub esp, 4
push dword ptr [ebp-12]
call ASTBUILDVARDEREF
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTBUILDVARDEREF
add esp, 4
push eax
call ASTNEWASSIGN
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push 1
push dword ptr [ebp-8]
call ASTBUILDVARINC
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push 1
push dword ptr [ebp-12]
call ASTBUILDVARINC
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 8
push 0
push dword ptr [ebp-20]
push 98
call ASTNEWBRANCH
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-24]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_0094:
pop ebx
mov esp, ebp
pop ebp
ret
.size HASSIGNDYNAMICARRAY, .-HASSIGNDYNAMICARRAY
.balign 16
HASSIGNLIST:
.type HASSIGNLIST, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0095:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [Lt_01C5], ebx
sub esp, 8
push 0
push 8
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [Lt_01C6], eax
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [Lt_01C7], eax
sub esp, 8
push dword ptr [Lt_01C5]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 32505856
or ebx, ecx
push ebx
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [Lt_01C8], eax
sub esp, 8
push dword ptr [Lt_01C5]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+28]
and eax, 511
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
and ecx, 32505856
or ebx, ecx
push ebx
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [Lt_01C9], eax
sub esp, 12
sub esp, 8
push 64
sub esp, 4
sub esp, 4
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call ASTBUILDVARFIELD
add esp, 20
push eax
call ASTNEWADDROF
add esp, 8
push eax
push dword ptr [Lt_01C8]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 8
push 64
sub esp, 4
sub esp, 4
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call ASTBUILDVARFIELD
add esp, 20
push eax
call ASTNEWADDROF
add esp, 8
push eax
push dword ptr [Lt_01C9]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
push -1
push 0
push dword ptr [Lt_01C7]
push dword ptr [Lt_01C6]
push 0
call ASTBUILDFORBEGIN
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 8
push 0
sub esp, 4
push dword ptr [Lt_01C9]
call ASTBUILDVARDEREF
add esp, 8
push eax
push dword ptr [Lt_01C8]
call ASTBUILDVARDEREF
add esp, 4
push eax
call ASTNEWASSIGN
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push 1
push dword ptr [Lt_01C8]
call ASTBUILDVARINC
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 12
push 1
push dword ptr [Lt_01C9]
call ASTBUILDVARINC
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
sub esp, 4
push 0
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
push dword ptr [eax+76]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [Lt_01C7]
push dword ptr [Lt_01C6]
push 0
call ASTBUILDFOREND
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_0096:
pop ebx
mov esp, ebp
pop ebp
ret
.size HASSIGNLIST, .-HASSIGNLIST

.section .bss
.balign 4
	.lcomm	Lt_01C6,4
.balign 4
	.lcomm	Lt_01C7,4
.balign 4
	.lcomm	Lt_01C8,4
.balign 4
	.lcomm	Lt_01C9,4
.balign 4
	.lcomm	Lt_01C5,4

.section .text
.balign 16
HCOPYUNIONFIELDS:
.type HCOPYUNIONFIELDS, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_0097:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], ebx
.Lt_0099:
sub esp, 12
push dword ptr [ebp-8]
call SYMBGETREALSIZE
add esp, 16
mov ecx, dword ptr [ebp-8]
add eax, dword ptr [ecx+48]
adc edx, dword ptr [ecx+52]
sub eax, dword ptr [ebp-32]
sbb edx, dword ptr [ebp-28]
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], edx
mov edx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-20], eax
jl .Lt_009D
jg .Lt_01CC
cmp dword ptr [ebp-24], edx
jbe .Lt_009D
.Lt_01CC:
mov eax, dword ptr [ebp-24]
mov edx, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
.Lt_009D:
.Lt_009C:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-8], edx
.Lt_009B:
cmp dword ptr [ebp-8], 0
je .Lt_009E
mov edx, dword ptr [ebp-8]
cmp dword ptr [edx], 12
sete al
shr eax, 1
sbb eax, eax
test eax, eax
setne dl
shr edx, 1
sbb edx, edx
mov dword ptr [ebp-36], edx
jmp .Lt_01CA
.Lt_009E:
mov dword ptr [ebp-36], 0
.Lt_01CA:
cmp dword ptr [ebp-36], 0
je .Lt_00A0
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [edx+12]
and eax, 16777216
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .Lt_01CB
.Lt_00A0:
mov dword ptr [ebp-40], 0
.Lt_01CB:
cmp dword ptr [ebp-40], 0
jne .Lt_0099
.Lt_009A:
sub esp, 12
push dword ptr [ebp-12]
push dword ptr [ebp-16]
sub esp, 12
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTBUILDVARFIELD
add esp, 28
push eax
sub esp, 8
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 24
push eax
push 105
call ASTNEWMEM
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0098:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCOPYUNIONFIELDS, .-HCOPYUNIONFIELDS
.balign 16
HADDLETOPBODY:
.type HADDLETOPBODY, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00A2:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HPROCBEGIN
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+80]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_00A4:
cmp dword ptr [ebp-4], 0
je .Lt_00A5
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
cmp eax, 12
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+4]
and ecx, 8192
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+96], 0
je .Lt_00A7
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
cmp ecx, dword ptr [eax+96]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+96]
mov eax, dword ptr [ecx+32]
cmp eax, dword ptr [SYMB+99636]
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
and dword ptr [ebp-16], ebx
.Lt_00A7:
.Lt_00A6:
cmp dword ptr [ebp-16], 0
je .Lt_00A9
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+12]
and ecx, 16777216
test ecx, ecx
je .Lt_00AB
sub esp, 4
push dword ptr [ebp-4]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call HCOPYUNIONFIELDS
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00A4
.Lt_00AB:
.Lt_00AA:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+4]
and ecx, 4
test ecx, ecx
je .Lt_00AD
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call HASSIGNDYNAMICARRAY
add esp, 16
jmp .Lt_00AC
.Lt_00AD:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+60], 0
jne .Lt_00AF
sub esp, 12
sub esp, 8
push 0
sub esp, 8
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call ASTBUILDVARFIELD
add esp, 24
push eax
sub esp, 4
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call ASTBUILDVARFIELD
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 20
push eax
call ASTADD
add esp, 16
jmp .Lt_00AE
.Lt_00AF:
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call HASSIGNLIST
add esp, 16
.Lt_00AE:
.Lt_00AC:
.Lt_00A9:
.Lt_00A8:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-4], ecx
jmp .Lt_00A4
.Lt_00A5:
call HPROCEND
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+12], 8388608
.Lt_00A3:
pop ebx
mov esp, ebp
pop ebp
ret
.size HADDLETOPBODY, .-HADDLETOPBODY
.balign 16
HHASBYREFSELFPARAM:
.type HHASBYREFSELFPARAM, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DF:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+56], 2
je .Lt_00E2
jmp .Lt_00E0
.Lt_00E2:
.Lt_00E1:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
and eax, -512
or eax, 23
cmp dword ptr [ebx+28], eax
jne .Lt_00E4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+148]
cmp dword ptr [ebx+148], ecx
jne .Lt_00E6
push 0
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+144]
push dword ptr [ebx]
push 0
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+144]
push dword ptr [ebx]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00E8
mov dword ptr [ebp-4], -1
jmp .Lt_00E0
.Lt_00E8:
.Lt_00E7:
.Lt_00E6:
.Lt_00E5:
.Lt_00E4:
.Lt_00E3:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
cmp ebx, dword ptr [eax+28]
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
cmp ecx, dword ptr [ebp+16]
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_00E0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HHASBYREFSELFPARAM, .-HHASBYREFSELFPARAM
.balign 16
SYMBGETCOMPCOPYCTOR:
.type SYMBGETCOMPCOPYCTOR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0120:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+136], 0
je .Lt_0123
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.Lt_0123:
.Lt_0122:
.Lt_0121:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBGETCOMPCOPYCTOR, .-SYMBGETCOMPCOPYCTOR
.balign 16
HINSERTNESTED:
.type HINSERTNESTED, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0156:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_0158:
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp-8], eax
je .Lt_0159
mov eax, dword ptr [ebp-8]
lea ebx, [eax+68]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+92], 0
jne .Lt_015B
sub esp, 12
lea ebx, [SYMB+98652]
push ebx
call LISTNEWNODE
add esp, 16
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+92], eax
.Lt_015B:
.Lt_015A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+92]
inc dword ptr [ebx+16]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 1
je .Lt_015D
sub esp, 12
push dword ptr [ebp-8]
call SYMBHASHLISTREMOVENAMESPACE
add esp, 16
.Lt_015D:
.Lt_015C:
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call SYMBHASHLISTADDBEFORE
add esp, 16
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_0158
.Lt_0159:
.Lt_0157:
pop ebx
mov esp, ebp
pop ebp
ret
.size HINSERTNESTED, .-HINSERTNESTED
.balign 16
HREMOVENESTED:
.type HREMOVENESTED, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_015E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.Lt_0160:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-4], eax
je .Lt_0161
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
dec dword ptr [ebx+16]
sub esp, 12
mov ebx, dword ptr [ebp-4]
lea eax, [ebx+68]
push eax
call SYMBHASHLISTDEL
add esp, 16
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 0
je .Lt_0163
sub esp, 8
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+60]
push dword ptr [ebp-4]
call SYMBHASHLISTINSERTNAMESPACE
add esp, 16
.Lt_0163:
.Lt_0162:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .Lt_0160
.Lt_0161:
.Lt_015F:
pop ebx
mov esp, ebp
pop ebp
ret
.size HREMOVENESTED, .-HREMOVENESTED
.balign 16
HINSERTIMPORTED:
.type HINSERTIMPORTED, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0164:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .Lt_0167
jmp .Lt_0165
.Lt_0167:
.Lt_0166:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.Lt_0168:
cmp dword ptr [ebp-4], 0
je .Lt_0169
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_016B
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+92]
inc dword ptr [eax+16]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 1
jne .Lt_016D
sub esp, 8
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+60]
push dword ptr [ebp-8]
call SYMBHASHLISTINSERTNAMESPACE
add esp, 16
.Lt_016D:
.Lt_016C:
.Lt_016B:
.Lt_016A:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
jmp .Lt_0168
.Lt_0169:
.Lt_0165:
pop ebx
mov esp, ebp
pop ebp
ret
.size HINSERTIMPORTED, .-HINSERTIMPORTED
.balign 16
HREMOVEIMPORTED:
.type HREMOVEIMPORTED, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_016E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .Lt_0171
jmp .Lt_016F
.Lt_0171:
.Lt_0170:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.Lt_0172:
cmp dword ptr [ebp-4], 0
je .Lt_0173
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0175
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+92]
dec dword ptr [eax+16]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 0
jne .Lt_0177
sub esp, 12
push dword ptr [ebp-8]
call SYMBHASHLISTREMOVENAMESPACE
add esp, 16
.Lt_0177:
.Lt_0176:
.Lt_0175:
.Lt_0174:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
jmp .Lt_0172
.Lt_0173:
.Lt_016F:
pop ebx
mov esp, ebp
pop ebp
ret
.size HREMOVEIMPORTED, .-HREMOVEIMPORTED

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_006E:	.ascii	"__FB_RHS__\0"
.balign 4
Lt_01AF:	.ascii	"fb_RTTI$\0"
.balign 4
Lt_01B0:	.ascii	"stdlibvtable\0"
.balign 4
Lt_01B1:	.ascii	"id\0"
.balign 4
Lt_01B2:	.ascii	"rttibase\0"
.balign 4
Lt_01B5:	.ascii	"__OBJECT\0"
.balign 4
Lt_01B6:	.ascii	"OBJECT\0"
.balign 4
Lt_01B7:	.ascii	"fb_Object$\0"
.balign 4
Lt_01B8:	.ascii	"vptr$\0"
.balign 4
Lt_01B9:	.ascii	"__fb_ZTS6Object\0"
