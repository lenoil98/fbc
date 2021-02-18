	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBCOMPINIT@0
_SYMBCOMPINIT@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_005F:
mov dword ptr [ebp-4], 0
.Lt_0064:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ebx, offset _SYMB
add ebx, eax
mov dword ptr [ebx+99128], 0
.Lt_0062:
inc dword ptr [ebp-4]
.Lt_0061:
cmp dword ptr [ebp-4], 120
jle .Lt_0064
.Lt_0063:
push 0
push 16
push 16
lea ebx, [_SYMB+98548]
push ebx
call _STACKNEW@16
.Lt_0060:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBCOMPEND@0
_SYMBCOMPEND@0:
.Lt_0065:
lea eax, [_SYMB+98548]
push eax
call _STACKFREE@4
.Lt_0066:
ret
.balign 16

.globl _SYMBUDTALLOCEXT@4
_SYMBUDTALLOCEXT@4:
push ebp
mov ebp, esp
push ebx
.Lt_0067:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
jne .Lt_006A
push 156
call _XCALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+140], eax
.Lt_006A:
.Lt_0069:
.Lt_0068:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBUDTDECLAREDEFAULTMEMBERS@8
_SYMBUDTDECLAREDEFAULTMEMBERS@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00B1:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+96], 0
je .Lt_00B4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+96]
push dword ptr [ebx+32]
call _SYMBGETCOMPDEFCTOR@4
test eax, eax
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+96]
push dword ptr [ecx+32]
call _SYMBGETCOMPCTORHEAD@4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov dword ptr [ebp-4], ebx
jmp .Lt_00B3
.Lt_00B4:
mov dword ptr [ebp-4], 0
.Lt_00B3:
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
mov ecx, dword ptr [ebx+120]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+120]
and eax, 4096
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ecx, eax
push dword ptr [ebp+12]
mov ebx, ecx
call _SYMBGETCOMPCTORHEAD@4
test eax, eax
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_00B6
cmp dword ptr [ebp-4], 0
je .Lt_00B8
push 0
push 0
push 186
call _ERRREPORT@12
jmp .Lt_00B7
.Lt_00B8:
push 5
push 0
push -2147483648
push -1
push dword ptr [ebp+12]
call _HDECLAREPROC@20
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], eax
.Lt_00B7:
.Lt_00B6:
.Lt_00B5:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+120]
and ecx, 8
test ecx, ecx
je .Lt_00BA
push dword ptr [ebp+12]
call _SYMBUDTALLOCEXT@4
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+140]
cmp dword ptr [eax+24], 0
jne .Lt_00BC
push 17
push 0
push 532
push 0
push dword ptr [ebp+12]
call _HDECLAREPROC@20
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+16], eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _SYMBPROCCHECKOVERRIDDEN@8
.Lt_00BC:
.Lt_00BB:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+140]
cmp dword ptr [ecx+12], 0
jne .Lt_00BE
cmp dword ptr [ebp-4], 0
je .Lt_00C0
push 0
push 0
push 188
call _ERRREPORT@12
jmp .Lt_00BF
.Lt_00C0:
push 5
push 0
push 532
push -1
push dword ptr [ebp+12]
call _HDECLAREPROC@20
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+12], eax
.Lt_00BF:
.Lt_00BE:
.Lt_00BD:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+140]
cmp dword ptr [ecx+20], 0
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+140]
cmp dword ptr [ebx+8], 0
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_00C2
cmp dword ptr [ebp-4], 0
je .Lt_00C4
push 0
push 0
push 187
call _ERRREPORT@12
jmp .Lt_00C3
.Lt_00C4:
push 5
push 0
push 20
push -1
push dword ptr [ebp+12]
call _HDECLAREPROC@20
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], eax
.Lt_00C3:
.Lt_00C2:
.Lt_00C1:
.Lt_00BA:
.Lt_00B9:
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+120]
and ecx, 16
test ecx, ecx
je .Lt_00C6
push dword ptr [ebp+12]
call _SYMBUDTALLOCEXT@4
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+140]
cmp dword ptr [eax+16], 0
jne .Lt_00C8
push 8
push 0
push -2147483648
push -1
push dword ptr [ebp+12]
call _HDECLAREPROC@20
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+4], eax
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _SYMBPROCCHECKOVERRIDDEN@8
.Lt_00C8:
.Lt_00C7:
.Lt_00C6:
.Lt_00C5:
.Lt_00B2:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBUDTIMPLEMENTDEFAULTMEMBERS@8
_SYMBUDTIMPLEMENTDEFAULTMEMBERS@8:
push ebp
mov ebp, esp
push ebx
.Lt_00D0:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
je .Lt_00D3
push dword ptr [ebp+12]
call _SYMBUDTALLOCEXT@4
push dword ptr [ebp+12]
call _HSETMINIMUMVTABLESIZE@4
mov ebx, dword ptr [_SYMB+99644]
cmp dword ptr [ebp+12], ebx
je .Lt_00D5
push dword ptr [ebp+12]
call _HBUILDRTTI@4
push dword ptr [ebp+12]
call _HBUILDVTABLE@4
.Lt_00D5:
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_00D7
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
push dword ptr [ebp+12]
call _HADDCTORBODY@12
.Lt_00D7:
.Lt_00D6:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+16], 0
je .Lt_00D9
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push dword ptr [ebp+12]
call _HADDLETOPBODY@8
.Lt_00D9:
.Lt_00D8:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+12], 0
je .Lt_00DB
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+12]
push dword ptr [ebp+12]
call _HADDCTORBODY@12
.Lt_00DB:
.Lt_00DA:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+8], 0
je .Lt_00DD
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp+12]
call _HADDCTORBODY@12
.Lt_00DD:
.Lt_00DC:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4], 0
je .Lt_00DF
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+4]
push dword ptr [ebp+12]
call _HADDCTORBODY@12
.Lt_00DF:
.Lt_00DE:
.Lt_00D1:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBCOMPISTRIVIAL@4
_SYMBCOMPISTRIVIAL@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EA:
push dword ptr [ebp+8]
call _SYMBGETCOMPCOPYCTOR@4
test eax, eax
sete bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp+8]
call _SYMBGETCOMPDTOR@4
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
.Lt_00EB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBSETCOMPCTORHEAD@8
_SYMBSETCOMPCTORHEAD@8:
push ebp
mov ebp, esp
push ebx
.Lt_00EF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_00F2
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
cmp dword ptr [ebx], 0
jne .Lt_00F4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
.Lt_00F4:
.Lt_00F3:
.Lt_00F2:
.Lt_00F1:
.Lt_00F0:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBCHECKCOMPCTOR@8
_SYMBCHECKCOMPCTOR@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00F5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_00F8
mov eax, dword ptr [ebp+12]
mov bx, word ptr [eax+68]
mov word ptr [ebp-4], bx
movsx ebx, word ptr [ebp-4]
cmp ebx, 1
jne .Lt_00FB
.Lt_00FC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+4], ebx
jmp .Lt_00F9
.Lt_00FB:
movsx ebx, word ptr [ebp-4]
cmp ebx, 2
jne .Lt_00FD
.Lt_00FE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
cmp dword ptr [eax+8], 0
jne .Lt_0100
push dword ptr [ebp+8]
push 20
push dword ptr [ebp+12]
call _HHASBYREFSELFPARAM@12
test eax, eax
je .Lt_0102
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+8], eax
.Lt_0102:
.Lt_0101:
.Lt_0100:
.Lt_00FF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
cmp dword ptr [ebx+12], 0
jne .Lt_0104
push dword ptr [ebp+8]
push 532
push dword ptr [ebp+12]
call _HHASBYREFSELFPARAM@12
test eax, eax
je .Lt_0106
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+12], eax
.Lt_0106:
.Lt_0105:
.Lt_0104:
.Lt_0103:
.Lt_00FD:
.Lt_00F9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
cmp dword ptr [ebx+4], 0
jne .Lt_0108
mov ebx, dword ptr [ebp+12]
movsx eax, word ptr [ebx+70]
mov ebx, dword ptr [ebp+12]
movsx ecx, word ptr [ebx+68]
dec ecx
cmp eax, ecx
jne .Lt_010A
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+140]
mov ecx, dword ptr [ebp+12]
mov dword ptr [eax+4], ecx
.Lt_010A:
.Lt_0109:
.Lt_0108:
.Lt_0107:
.Lt_00F8:
.Lt_00F7:
.Lt_00F6:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBSETCOMPDTOR@8
_SYMBSETCOMPDTOR@8:
push ebp
mov ebp, esp
push ebx
.Lt_010B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_010E
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
cmp dword ptr [ebx+16], 0
jne .Lt_0110
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+16], ebx
.Lt_0110:
.Lt_010F:
.Lt_010E:
.Lt_010D:
.Lt_010C:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBGETCOMPCTORHEAD@4
_SYMBGETCOMPCTORHEAD@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0111:
cmp dword ptr [ebp+8], 0
je .Lt_0114
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_0116
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .Lt_0118
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.Lt_0118:
.Lt_0117:
.Lt_0116:
.Lt_0115:
.Lt_0114:
.Lt_0113:
.Lt_0112:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETCOMPDEFCTOR@4
_SYMBGETCOMPDEFCTOR@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0119:
cmp dword ptr [ebp+8], 0
je .Lt_011C
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_011E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .Lt_0120
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-4], eax
.Lt_0120:
.Lt_011F:
.Lt_011E:
.Lt_011D:
.Lt_011C:
.Lt_011B:
.Lt_011A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETCOMPDTOR@4
_SYMBGETCOMPDTOR@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0125:
cmp dword ptr [ebp+8], 0
je .Lt_0128
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_012A
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .Lt_012C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-4], eax
.Lt_012C:
.Lt_012B:
.Lt_012A:
.Lt_0129:
.Lt_0128:
.Lt_0127:
.Lt_0126:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBCHECKCOMPLETOP@8
_SYMBCHECKCOMPLETOP@8:
push ebp
mov ebp, esp
push ebx
.Lt_012D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 10
jne .Lt_0130
push dword ptr [ebp+8]
push 20
push dword ptr [ebp+12]
call _HHASBYREFSELFPARAM@12
test eax, eax
je .Lt_0132
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+20], eax
.Lt_0132:
.Lt_0131:
push dword ptr [ebp+8]
push 532
push dword ptr [ebp+12]
call _HHASBYREFSELFPARAM@12
test eax, eax
je .Lt_0134
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+24], eax
.Lt_0134:
.Lt_0133:
.Lt_0130:
.Lt_012F:
.Lt_012E:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBCOMPHASCOPYLETOPS@4
_SYMBCOMPHASCOPYLETOPS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0135:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .Lt_0138
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
cmp dword ptr [ebx+20], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+140]
cmp dword ptr [ecx+24], 0
setne bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov dword ptr [ebp-4], eax
.Lt_0138:
.Lt_0137:
.Lt_0136:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETCOMPOPOVLHEAD@8
_SYMBGETCOMPOPOVLHEAD@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_013B:
mov eax, dword ptr [ebp+12]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .Lt_013E
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 10
jne .Lt_0141
.Lt_0142:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
jne .Lt_0144
mov dword ptr [ebp-4], 0
jmp .Lt_013C
.Lt_0144:
.Lt_0143:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov ecx, dword ptr [eax+140]
add ecx, ebx
mov ebx, dword ptr [ecx+28]
mov dword ptr [ebp-4], ebx
jmp .Lt_013F
.Lt_0141:
cmp dword ptr [ebp-8], 9
jne .Lt_0145
.Lt_0146:
mov dword ptr [ebp-4], 0
jmp .Lt_013F
.Lt_0145:
cmp dword ptr [ebp-8], 11
jne .Lt_0147
.Lt_0148:
.Lt_0147:
.Lt_013F:
jmp .Lt_013D
.Lt_013E:
mov ebx, dword ptr [ebp+12]
sal ebx, 2
mov ecx, offset _SYMB
add ecx, ebx
mov ebx, dword ptr [ecx+99128]
mov dword ptr [ebp-4], ebx
.Lt_013D:
.Lt_013C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBSETCOMPOPOVLHEAD@8
_SYMBSETCOMPOPOVLHEAD@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0149:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 1
test ebx, ebx
je .Lt_014C
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 10
jne .Lt_014E
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT@4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ecx, dword ptr [ebx+140]
add ecx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+28], eax
.Lt_014E:
.Lt_014D:
cmp dword ptr [ebp-4], 0
jne .Lt_0150
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBCHECKCOMPLETOP@8
.Lt_0150:
.Lt_014F:
jmp .Lt_014B
.Lt_014C:
mov eax, dword ptr [ebp-4]
sal eax, 2
mov ecx, offset _SYMB
add ecx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+99128], eax
.Lt_014B:
.Lt_014A:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBCOMPADDVIRTUAL@4
_SYMBCOMPADDVIRTUAL@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0151:
push dword ptr [ebp+8]
call _SYMBUDTALLOCEXT@4
push dword ptr [ebp+8]
call _HSETMINIMUMVTABLESIZE@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx+140]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
inc dword ptr [ebx+140]
.Lt_0152:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBCOMPGETABSTRACTCOUNT@4
_SYMBCOMPGETABSTRACTCOUNT@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0153:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .Lt_0156
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx+152]
mov dword ptr [ebp-4], eax
.Lt_0156:
.Lt_0155:
.Lt_0154:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBNESTBEGIN@8
_SYMBNESTBEGIN@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0179:
lea eax, [_SYMB+98548]
push eax
call _STACKPUSH@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [_SYMB+98544]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [_SYMB+98540]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 3
jne .Lt_017C
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+56]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], 0
jmp .Lt_017B
.Lt_017C:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+68]
mov dword ptr [ebp-8], eax
.Lt_017B:
mov eax, dword ptr [ebp-12]
mov dword ptr [_SYMB+98544], eax
cmp dword ptr [ebp-8], 0
je .Lt_017E
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [_SYMB+98536]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [_SYMB+98536], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [_SYMB+98540], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+92], 0
jne .Lt_0180
lea ebx, [_SYMB+98660]
push ebx
call _LISTNEWNODE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+92], eax
.Lt_0180:
.Lt_017F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
inc dword ptr [ebx+16]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 1
je .Lt_0182
push dword ptr [ebp+8]
call _SYMBHASHLISTREMOVENAMESPACE@4
.Lt_0182:
.Lt_0181:
push dword ptr [ebp-8]
call _SYMBHASHLISTADD@4
cmp dword ptr [ebp+12], 0
je .Lt_0184
mov eax, dword ptr [ebp-4]
push dword ptr [eax+12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HINSERTNESTED@12
.Lt_0184:
.Lt_0183:
push dword ptr [ebp+8]
call _HINSERTIMPORTED@4
.Lt_017E:
.Lt_017D:
.Lt_017A:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBNESTEND@4
_SYMBNESTEND@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0185:
lea eax, [_SYMB+98548]
push eax
call _STACKGETTOS@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx], 3
jne .Lt_0188
mov dword ptr [ebp-8], 0
jmp .Lt_0187
.Lt_0188:
mov ebx, dword ptr [ebp-12]
lea eax, [ebx+68]
mov dword ptr [ebp-8], eax
.Lt_0187:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [_SYMB+98544], ebx
cmp dword ptr [ebp-8], 0
je .Lt_018A
push dword ptr [ebp-12]
call _HREMOVEIMPORTED@4
cmp dword ptr [ebp+8], 0
je .Lt_018C
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+12]
push dword ptr [ebp-12]
call _HREMOVENESTED@8
.Lt_018C:
.Lt_018B:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+92]
dec dword ptr [eax+16]
push dword ptr [ebp-8]
call _SYMBHASHLISTDEL@4
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 0
je .Lt_018E
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+60]
push dword ptr [ebp-12]
call _SYMBHASHLISTINSERTNAMESPACE@8
.Lt_018E:
.Lt_018D:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [_SYMB+98540], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [_SYMB+98536], ebx
.Lt_018A:
.Lt_0189:
lea ebx, [_SYMB+98548]
push ebx
call _STACKPOP@4
.Lt_0186:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBCOMPADDTOIMPORTLIST@4
_SYMBCOMPADDTOIMPORTLIST@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_018F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+92], 0
jne .Lt_0192
lea ebx, [_SYMB+98660]
push ebx
call _LISTNEWNODE@4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+92], eax
.Lt_0192:
.Lt_0191:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+4], 0
je .Lt_0194
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+64], eax
jmp .Lt_0193
.Lt_0194:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_0193:
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
.Lt_0190:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBCOMPDELFROMIMPORTLIST@4
_SYMBCOMPDELFROMIMPORTLIST@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0195:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+60], 0
jne .Lt_0198
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+92]
mov eax, dword ptr [ebx+64]
mov dword ptr [ecx], eax
jmp .Lt_0197
.Lt_0198:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+60]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebx+64], ecx
.Lt_0197:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+64], 0
jne .Lt_019A
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [ecx+60]
mov dword ptr [eax+4], ebx
jmp .Lt_0199
.Lt_019A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
mov eax, dword ptr [ebx+60]
mov dword ptr [ecx+60], eax
.Lt_0199:
.Lt_0196:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBCOMPADDTOEXPORTLIST@4
_SYMBCOMPADDTOEXPORTLIST@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_019B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+92], 0
jne .Lt_019E
lea ebx, [_SYMB+98660]
push ebx
call _LISTNEWNODE@4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+92], eax
.Lt_019E:
.Lt_019D:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+12], 0
je .Lt_01A0
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+76], eax
jmp .Lt_019F
.Lt_01A0:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
.Lt_019F:
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
.Lt_019C:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBCOMPDELFROMEXPORTLIST@4
_SYMBCOMPDELFROMEXPORTLIST@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01A1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+72], 0
jne .Lt_01A4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+92]
mov eax, dword ptr [ebx+76]
mov dword ptr [ecx+8], eax
jmp .Lt_01A3
.Lt_01A4:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+72]
mov ecx, dword ptr [eax+76]
mov dword ptr [ebx+76], ecx
.Lt_01A3:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+76], 0
jne .Lt_01A6
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+92]
mov ebx, dword ptr [ecx+72]
mov dword ptr [eax+12], ebx
jmp .Lt_01A5
.Lt_01A6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+76]
mov eax, dword ptr [ebx+72]
mov dword ptr [ecx+72], eax
.Lt_01A5:
.Lt_01A2:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBCOMPDELIMPORTLIST@4
_SYMBCOMPDELIMPORTLIST@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01A7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .Lt_01AA
jmp .Lt_01A8
.Lt_01AA:
.Lt_01A9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.Lt_01AB:
cmp dword ptr [ebp-4], 0
je .Lt_01AC
push dword ptr [ebp-4]
call _SYMBCOMPDELFROMIMPORTLIST@4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp-4]
call _SYMBCOMPDELFROMEXPORTLIST@4
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_01AB
.Lt_01AC:
.Lt_01A8:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBCOMPRTTIINIT@0
_SYMBCOMPRTTIINIT@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_01AD:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_01B0
push offset _Lt_01B0
push 0
push 0
push 0
call _SYMBSTRUCTBEGIN@40
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [_SYMB+99640], eax
push 0
push 0
push 0
push 0
push 0
push 32
push offset _Lt_01BB
push 0
push offset _Lt_01B1
push dword ptr [ebp-4]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push 0
push 36
push offset _Lt_01BB
push 0
push offset _Lt_01B2
push dword ptr [ebp-4]
call _SYMBADDFIELD@40
push 0
push 0
push 0
push 0
push dword ptr [ebp-4]
push 52
push offset _Lt_01BB
push 0
push offset _Lt_01B3
push dword ptr [ebp-4]
call _SYMBADDFIELD@40
push 0
push dword ptr [ebp-4]
call _SYMBSTRUCTEND@8
cmp dword ptr [_ENV+136], 3
jne .Lt_01B5
mov eax, offset _Lt_01B6
mov dword ptr [ebp-20], eax
jmp .Lt_01B4
.Lt_01B5:
mov eax, offset _Lt_01B7
mov dword ptr [ebp-20], eax
.Lt_01B4:
push 0
push 0
push 0
push 0
push 0
push offset _Lt_01B8
push dword ptr [ebp-20]
push 0
push 0
push 0
call _SYMBSTRUCTBEGIN@40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [_SYMB+99644], eax
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 4194304
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 262144
push 0
push dword ptr [ebp-8]
call _SYMBNESTBEGIN@8
push 0
push 0
push 0
push 0
push 0
push 32
push offset _Lt_01BB
push 0
push offset _Lt_01B9
push dword ptr [ebp-8]
call _SYMBADDFIELD@40
push 0
call _SYMBPREADDPROC@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _SYMBADDPROCINSTANCEPARAM@8
push 0
push 3
push 7
push 0
push 0
push dword ptr [ebp-16]
call _SYMBADDCTOR@24
push 0
call _SYMBPREADDPROC@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _SYMBADDPROCINSTANCEPARAM@8
push 0
push 0
push 2
push 0
push dword ptr [ebp-8]
push 532
push offset _Lt_006F
push dword ptr [ebp-16]
call _SYMBADDPROCPARAM@32
push 0
push 3
push 7
push 0
push 0
push dword ptr [ebp-16]
call _SYMBADDCTOR@24
push -1
push dword ptr [ebp-8]
call _SYMBSTRUCTEND@8
push 1
push 17
push offset _Lt_01BB
push 0
push 0
push 0
push dword ptr [_SYMB+99640]
push 20
push offset _Lt_01BA
push 0
call _SYMBADDVAR@40
mov dword ptr [ebp-12], eax
push dword ptr [ebp-8]
call _SYMBUDTALLOCEXT@4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+148], eax
.Lt_01AE:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01BC,16

.section .data
.balign 4
_Lt_01BB:
.int _Lt_01BC
.int _Lt_01BC
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBCOMPRTTIEND@0
_SYMBCOMPRTTIEND@0:
.Lt_01BD:
.Lt_01BE:
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
_HDECLAREPROC@20:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_006B:
push -1
push dword ptr [ebp+8]
call _SYMBNESTBEGIN@8
push 0
call _SYMBPREADDPROC@4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _SYMBADDPROCINSTANCEPARAM@8
cmp dword ptr [ebp+16], -2147483648
je .Lt_006E
push 0
push 0
push 2
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push offset _Lt_006F
push dword ptr [ebp-8]
call _SYMBADDPROCPARAM@32
.Lt_006E:
.Lt_006D:
or dword ptr [ebp+20], 64
or dword ptr [ebp+24], 2
cmp dword ptr [ebp+12], -1
jne .Lt_0071
push 4
push 3
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
push dword ptr [ebp-8]
call _SYMBADDCTOR@24
mov dword ptr [ebp-8], eax
jmp .Lt_0070
.Lt_0071:
push 4
push 3
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _SYMBADDOPERATOR@36
mov dword ptr [ebp-8], eax
.Lt_0070:
push -1
call _SYMBNESTEND@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_006C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 20
.balign 16
_HSETMINIMUMVTABLESIZE@4:
push ebp
mov ebp, esp
push ebx
.Lt_0072:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
cmp dword ptr [ebx+140], 0
jne .Lt_0075
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
mov dword ptr [eax+140], 2
.Lt_0075:
.Lt_0074:
.Lt_0073:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HBUILDRTTI@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0076:
push -1
push dword ptr [ebp+8]
call _SYMBNESTBEGIN@8
push 1
push 2051
push offset _Lt_01BF
push 0
push 0
push 0
push dword ptr [_SYMB+99640]
push 20
push 0
push 0
call _SYMBADDVAR@40
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
or dword ptr [eax+12], 256
push -1
call _SYMBNESTEND@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+148], eax
push 0
push 0
push 0
push dword ptr [_SYMB+99640]
push 20
call _ASTTYPEINIBEGIN@20
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call _ASTTYPEINISCOPEBEGIN@12
push dword ptr [_SYMB+99640]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-16], eax
push 0
push -2147483648
push dword ptr [ebp-16]
push 0
push 32
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-4]
call _ASTTYPEINIADDASSIGN@20
push dword ptr [ebp-16]
call _SYMBUDTGETNEXTINITABLEFIELD@4
mov dword ptr [ebp-16], eax
push 0
push -2147483648
push dword ptr [ebp-16]
push 0
push -2147483648
push 0
push 0
push -1
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
call _SYMBALLOCSTRCONST@8
push eax
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
push dword ptr [ebp-4]
call _ASTTYPEINIADDASSIGN@20
push dword ptr [ebp-16]
call _SYMBUDTGETNEXTINITABLEFIELD@4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+96], 0
je .Lt_007A
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov eax, dword ptr [ebx+32]
mov ebx, dword ptr [eax+140]
push dword ptr [ebx+148]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
mov dword ptr [ebp-8], eax
jmp .Lt_0079
.Lt_007A:
push 0
push 32
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.Lt_0079:
push 0
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _ASTTYPEINIADDASSIGN@20
push dword ptr [ebp-12]
push dword ptr [ebp-4]
call _ASTTYPEINISCOPEEND@8
push -1
push dword ptr [ebp-4]
call _ASTTYPEINIEND@8
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+56], ebx
.Lt_0077:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_01C0,16

.section .data
.balign 4
_Lt_01BF:
.int _Lt_01C0
.int _Lt_01C0
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16
_HBUILDVTABLE@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
.Lt_007B:
push -1
push dword ptr [ebp+8]
call _SYMBNESTBEGIN@8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx+140]
dec eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
mov dword ptr [_Lt_01C1+8], ecx
mov dword ptr [_Lt_01C1+12], ebx
push 1
push 2051
push offset _Lt_01C2
push 1
push 0
push 0
push 0
push 32
push 0
push 0
call _SYMBADDVAR@40
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
or dword ptr [eax+12], 1024
push -1
call _SYMBNESTEND@4
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+96]
mov eax, dword ptr [ecx+32]
mov ecx, dword ptr [eax+140]
mov eax, dword ptr [ecx+140]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 2
jle .Lt_007F
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+96]
mov eax, dword ptr [ecx+32]
mov ecx, dword ptr [eax+140]
mov eax, dword ptr [ecx+144]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebp-8], ecx
jmp .Lt_007E
.Lt_007F:
mov dword ptr [ebp-8], 0
.Lt_007E:
push 0
push 0
push 0
push 0
push 32
call _ASTTYPEINIBEGIN@20
mov dword ptr [ebp-4], eax
push -1
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _ASTTYPEINISCOPEBEGIN@12
push 0
push -2147483648
push dword ptr [ebp-20]
push 0
push 32
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-4]
call _ASTTYPEINIADDASSIGN@20
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+140]
mov eax, dword ptr [ecx+148]
mov dword ptr [ebp-16], eax
push 0
push -2147483648
push dword ptr [ebp-20]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
push eax
push dword ptr [ebp-4]
call _ASTTYPEINIADDASSIGN@20
mov dword ptr [ebp-24], 2
cmp dword ptr [ebp-8], 0
je .Lt_0081
push 2
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _ASTTYPEINICOPYELEMENTS@12
mov eax, dword ptr [ebp-28]
add eax, dword ptr [ebp-24]
add eax, -2
mov dword ptr [ebp-24], eax
.Lt_0081:
.Lt_0080:
.Lt_0082:
mov ecx, dword ptr [ebp-24]
mov eax, ecx
sar eax, 31
mov esi, dword ptr [_Lt_01C1+8]
mov ebx, dword ptr [_Lt_01C1+12]
cmp eax, ebx
jg .Lt_0083
jl .Lt_01C3
cmp ecx, esi
ja .Lt_0083
.Lt_01C3:
push 0
push -2147483648
push dword ptr [ebp-20]
push 0
push 32
push 0
push 0
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-4]
call _ASTTYPEINIADDASSIGN@20
inc dword ptr [ebp-24]
jmp .Lt_0082
.Lt_0083:
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _ASTTYPEINISCOPEEND@8
push -1
push dword ptr [ebp-4]
call _ASTTYPEINIEND@8
mov eax, dword ptr [ebp-20]
mov esi, dword ptr [ebp-4]
mov dword ptr [eax+56], esi
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+60]
mov dword ptr [ebp-12], eax
.Lt_0084:
cmp dword ptr [ebp-12], 0
je .Lt_0085
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 3
jne .Lt_0087
push dword ptr [ebp-12]
call _SYMBPROCGETVTABLEINDEX@4
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
je .Lt_0089
push dword ptr [ebp-12]
call _ASTBUILDPROCADDROF@4
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-4]
call _ASTTYPEINIREPLACEELEMENT@12
.Lt_0089:
.Lt_0088:
.Lt_0087:
.Lt_0086:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-12], ebx
jmp .Lt_0084
.Lt_0085:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+144], ebx
.Lt_007C:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_01C1,16

.section .data
.balign 4
_Lt_01C2:
.int _Lt_01C1
.int _Lt_01C1
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16
_HPROCBEGIN@8:
push ebp
mov ebp, esp
.Lt_008A:
push -1
push dword ptr [ebp+8]
call _SYMBNESTBEGIN@8
push 0
push dword ptr [ebp+12]
call _ASTPROCBEGIN@8
.Lt_008B:
mov esp, ebp
pop ebp
ret 8
.balign 16
_HPROCEND@0:
.Lt_008C:
push 0
call _ASTPROCEND@4
push -1
call _SYMBNESTEND@4
.Lt_008D:
ret
.balign 16
_HADDCTORBODY@12:
push ebp
mov ebp, esp
push ebx
.Lt_008E:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPROCBEGIN@8
cmp dword ptr [ebp+16], 0
je .Lt_0091
push 0
push 0
push 0
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+80]
push dword ptr [ebx+60]
call _ASTBUILDVARFIELD@16
push eax
push 0
push 0
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
push dword ptr [ebx+60]
call _ASTBUILDVARFIELD@16
push eax
call _ASTNEWASSIGN@12
push eax
call _ASTADD@4
.Lt_0091:
.Lt_0090:
call _HPROCEND@0
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 8388608
.Lt_008F:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HASSIGNDYNAMICARRAY@12:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_0094:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-4]
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _ASTBUILDVARFIELD@16
push eax
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call _ASTBUILDVARFIELD@16
push eax
call _RTLARRAYREDIMTO@16
push eax
call _ASTADD@4
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
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-20], eax
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-16], eax
push 64
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
mov ebx, dword ptr [_SYMB+99616]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call _ASTBUILDVARFIELD@16
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
push eax
push dword ptr [ebp-8]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12
push eax
call _ASTADD@4
push 64
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-4]
mov ebx, dword ptr [_SYMB+99616]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _ASTBUILDVARFIELD@16
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
push eax
push dword ptr [ebp-12]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12
push eax
call _ASTADD@4
push 64
push 1
push 0
push 0
push 0
push 9
mov ebx, dword ptr [_SYMB+99620]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _ASTBUILDVARFIELD@16
push eax
call __Z19ASTBUILDDEREFADDROFP7ASTNODExlP8FBSYMBOLS2_@24
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR@20
push eax
push 28
call _ASTNEWBOP@20
push eax
push dword ptr [ebp-16]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12
push eax
call _ASTADD@4
push -1
push dword ptr [ebp-20]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
push 0
push -1
push dword ptr [ebp-24]
push 1
push 0
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR@20
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR@20
push eax
push 49
call _ASTNEWBOP@20
push eax
call _ASTBUILDBRANCH@16
push eax
call _ASTADD@4
push 0
push dword ptr [ebp-12]
call _ASTBUILDVARDEREF@4
push eax
push dword ptr [ebp-8]
call _ASTBUILDVARDEREF@4
push eax
call _ASTNEWASSIGN@12
push eax
call _ASTADD@4
push 1
push dword ptr [ebp-8]
call _ASTBUILDVARINC@8
push eax
call _ASTADD@4
push 1
push dword ptr [ebp-12]
call _ASTBUILDVARINC@8
push eax
call _ASTADD@4
push 0
push dword ptr [ebp-20]
push 98
call _ASTNEWBRANCH@12
push eax
call _ASTADD@4
push -1
push dword ptr [ebp-24]
call _ASTNEWLABEL@8
push eax
call _ASTADD@4
.Lt_0095:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HASSIGNLIST@12:
push ebp
mov ebp, esp
push ebx
.Lt_0096:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [_Lt_01C6], ebx
push 0
push 8
call _SYMBADDTEMPVAR@8
mov dword ptr [_Lt_01C7], eax
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [_Lt_01C8], eax
push dword ptr [_Lt_01C6]
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
call _SYMBADDTEMPVAR@8
mov dword ptr [_Lt_01C9], eax
push dword ptr [_Lt_01C6]
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
call _SYMBADDTEMPVAR@8
mov dword ptr [_Lt_01CA], eax
push 64
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+12]
call _ASTBUILDVARFIELD@16
push eax
call _ASTNEWADDROF@4
push eax
push dword ptr [_Lt_01C9]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12
push eax
call _ASTADD@4
push 64
push 0
push 0
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _ASTBUILDVARFIELD@16
push eax
call _ASTNEWADDROF@4
push eax
push dword ptr [_Lt_01CA]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12
push eax
call _ASTADD@4
push -1
push 0
push dword ptr [_Lt_01C8]
push dword ptr [_Lt_01C7]
push 0
call _ASTBUILDFORBEGIN@20
push eax
call _ASTADD@4
push 0
push dword ptr [_Lt_01CA]
call _ASTBUILDVARDEREF@4
push eax
push dword ptr [_Lt_01C9]
call _ASTBUILDVARDEREF@4
push eax
call _ASTNEWASSIGN@12
push eax
call _ASTADD@4
push 1
push dword ptr [_Lt_01C9]
call _ASTBUILDVARINC@8
push eax
call _ASTADD@4
push 1
push dword ptr [_Lt_01CA]
call _ASTBUILDVARINC@8
push eax
call _ASTADD@4
push 0
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
push dword ptr [eax+80]
call _ASTNEWCONSTI@16
push eax
push dword ptr [_Lt_01C8]
push dword ptr [_Lt_01C7]
push 0
call _ASTBUILDFOREND@16
push eax
call _ASTADD@4
.Lt_0097:
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_01C7,4
.balign 4
	.lcomm	_Lt_01C8,4
.balign 4
	.lcomm	_Lt_01C9,4
.balign 4
	.lcomm	_Lt_01CA,4
.balign 4
	.lcomm	_Lt_01C6,4

.section .text
.balign 16
_HCOPYUNIONFIELDS@12:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_0098:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], ebx
.Lt_009A:
push dword ptr [ebp-8]
call _SYMBGETREALSIZE@4
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
jl .Lt_009E
jg .Lt_01CD
cmp dword ptr [ebp-24], edx
jbe .Lt_009E
.Lt_01CD:
mov eax, dword ptr [ebp-24]
mov edx, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
.Lt_009E:
.Lt_009D:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+176]
mov dword ptr [ebp-8], edx
.Lt_009C:
cmp dword ptr [ebp-8], 0
je .Lt_009F
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
jmp .Lt_01CB
.Lt_009F:
mov dword ptr [ebp-36], 0
.Lt_01CB:
cmp dword ptr [ebp-36], 0
je .Lt_00A1
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [edx+12]
and eax, 16777216
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .Lt_01CC
.Lt_00A1:
mov dword ptr [ebp-40], 0
.Lt_01CC:
cmp dword ptr [ebp-40], 0
jne .Lt_009A
.Lt_009B:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTBUILDVARFIELD@16
push eax
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD@16
push eax
push 105
call _ASTNEWMEM@20
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0099:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HADDLETOPBODY@8:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_00A3:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPROCBEGIN@8
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
.Lt_00A5:
cmp dword ptr [ebp-4], 0
je .Lt_00A6
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
je .Lt_00A8
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
cmp ecx, dword ptr [eax+96]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+96]
mov eax, dword ptr [ecx+32]
cmp eax, dword ptr [_SYMB+99644]
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
and dword ptr [ebp-16], ebx
.Lt_00A8:
.Lt_00A7:
cmp dword ptr [ebp-16], 0
je .Lt_00AA
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+12]
and ecx, 16777216
test ecx, ecx
je .Lt_00AC
push dword ptr [ebp-4]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _HCOPYUNIONFIELDS@12
mov dword ptr [ebp-4], eax
jmp .Lt_00A5
.Lt_00AC:
.Lt_00AB:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+4]
and ecx, 4
test ecx, ecx
je .Lt_00AE
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _HASSIGNDYNAMICARRAY@12
jmp .Lt_00AD
.Lt_00AE:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+64], 0
jne .Lt_00B0
push 0
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call _ASTBUILDVARFIELD@16
push eax
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call _ASTBUILDVARFIELD@16
push eax
call _ASTNEWASSIGN@12
push eax
call _ASTADD@4
jmp .Lt_00AF
.Lt_00B0:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _HASSIGNLIST@12
.Lt_00AF:
.Lt_00AD:
.Lt_00AA:
.Lt_00A9:
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+176]
mov dword ptr [ebp-4], ecx
jmp .Lt_00A5
.Lt_00A6:
call _HPROCEND@0
mov ecx, dword ptr [ebp+8]
or dword ptr [ecx+12], 8388608
.Lt_00A4:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HHASBYREFSELFPARAM@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E0:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+56], 2
je .Lt_00E3
jmp .Lt_00E1
.Lt_00E3:
.Lt_00E2:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+12]
and eax, -512
or eax, 23
cmp dword ptr [ebx+28], eax
jne .Lt_00E5
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+152]
cmp dword ptr [ebx+152], ecx
jne .Lt_00E7
push 0
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+148]
push dword ptr [ebx]
push 0
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+32]
mov ebx, dword ptr [ecx+148]
push dword ptr [ebx]
call _fb_StrCompare@16
test eax, eax
jne .Lt_00E9
mov dword ptr [ebp-4], -1
jmp .Lt_00E1
.Lt_00E9:
.Lt_00E8:
.Lt_00E7:
.Lt_00E6:
.Lt_00E5:
.Lt_00E4:
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
.Lt_00E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_SYMBGETCOMPCOPYCTOR@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0121:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+140], 0
je .Lt_0124
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-4], eax
.Lt_0124:
.Lt_0123:
.Lt_0122:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HINSERTNESTED@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0157:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_0159:
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp-8], eax
je .Lt_015A
mov eax, dword ptr [ebp-8]
lea ebx, [eax+68]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+92], 0
jne .Lt_015C
lea ebx, [_SYMB+98660]
push ebx
call _LISTNEWNODE@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+92], eax
.Lt_015C:
.Lt_015B:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+92]
inc dword ptr [ebx+16]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+92]
cmp dword ptr [eax+16], 1
je .Lt_015E
push dword ptr [ebp-8]
call _SYMBHASHLISTREMOVENAMESPACE@4
.Lt_015E:
.Lt_015D:
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call _SYMBHASHLISTADDBEFORE@8
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp+12], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_0159
.Lt_015A:
.Lt_0158:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HREMOVENESTED@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_015F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.Lt_0161:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp-4], eax
je .Lt_0162
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
dec dword ptr [ebx+16]
mov ebx, dword ptr [ebp-4]
lea eax, [ebx+68]
push eax
call _SYMBHASHLISTDEL@4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 0
je .Lt_0164
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+60]
push dword ptr [ebp-4]
call _SYMBHASHLISTINSERTNAMESPACE@8
.Lt_0164:
.Lt_0163:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+144]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .Lt_0161
.Lt_0162:
.Lt_0160:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HINSERTIMPORTED@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0165:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .Lt_0168
jmp .Lt_0166
.Lt_0168:
.Lt_0167:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.Lt_0169:
cmp dword ptr [ebp-4], 0
je .Lt_016A
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_016C
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+92]
inc dword ptr [eax+16]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 1
jne .Lt_016E
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+60]
push dword ptr [ebp-8]
call _SYMBHASHLISTINSERTNAMESPACE@8
.Lt_016E:
.Lt_016D:
.Lt_016C:
.Lt_016B:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
jmp .Lt_0169
.Lt_016A:
.Lt_0166:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HREMOVEIMPORTED@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_016F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+92], 0
jne .Lt_0172
jmp .Lt_0170
.Lt_0172:
.Lt_0171:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+92]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.Lt_0173:
cmp dword ptr [ebp-4], 0
je .Lt_0174
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_0176
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+92]
dec dword ptr [eax+16]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+92]
cmp dword ptr [ebx+16], 0
jne .Lt_0178
push dword ptr [ebp-8]
call _SYMBHASHLISTREMOVENAMESPACE@4
.Lt_0178:
.Lt_0177:
.Lt_0176:
.Lt_0175:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
jmp .Lt_0173
.Lt_0174:
.Lt_0170:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_006F:	.ascii	"__FB_RHS__\0"
.balign 4
_Lt_01B0:	.ascii	"fb_RTTI$\0"
.balign 4
_Lt_01B1:	.ascii	"stdlibvtable\0"
.balign 4
_Lt_01B2:	.ascii	"id\0"
.balign 4
_Lt_01B3:	.ascii	"rttibase\0"
.balign 4
_Lt_01B6:	.ascii	"__OBJECT\0"
.balign 4
_Lt_01B7:	.ascii	"OBJECT\0"
.balign 4
_Lt_01B8:	.ascii	"fb_Object$\0"
.balign 4
_Lt_01B9:	.ascii	"vptr$\0"
.balign 4
_Lt_01BA:	.ascii	"__fb_ZTS6Object\0"
