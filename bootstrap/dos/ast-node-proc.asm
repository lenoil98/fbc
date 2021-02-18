	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTPROCLISTINIT
_ASTPROCLISTINIT:
.Lt_0069:
mov dword ptr [_AST+32], 0
mov dword ptr [_AST+36], 0
mov dword ptr [_AST+40], 0
push 6
push 12
push 32
lea eax, [_AST+76]
push eax
call _LISTINIT
add esp, 16
mov dword ptr [_AST+108], 0
mov dword ptr [_AST+112], 0
.Lt_006A:
ret
.balign 16

.globl _ASTPROCLISTEND
_ASTPROCLISTEND:
.Lt_006B:
mov dword ptr [_AST+112], 0
mov dword ptr [_AST+108], 0
lea eax, [_AST+76]
push eax
call _LISTEND
add esp, 4
mov dword ptr [_AST+32], 0
mov dword ptr [_AST+36], 0
mov dword ptr [_AST+40], 0
.Lt_006C:
ret
.balign 16

.globl _ASTADD
_ASTADD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_009D:
push dword ptr [ebp+8]
call _ASTUPDATE
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_00A0
mov dword ptr [ebp-4], 0
jmp .Lt_009E
.Lt_00A0:
.Lt_009F:
mov eax, dword ptr [_AST+40]
cmp dword ptr [eax+60], 0
je .Lt_00A2
mov eax, dword ptr [_AST+40]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
jmp .Lt_00A1
.Lt_00A2:
mov eax, dword ptr [_AST+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
.Lt_00A1:
mov ebx, dword ptr [_AST+40]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+60]
mov dword ptr [eax+64], ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+68], 0
mov ecx, dword ptr [_AST+40]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+60], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_009E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTADDAFTER
_ASTADDAFTER:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A3:
push dword ptr [ebp+8]
call _ASTUPDATE
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_00A6
mov dword ptr [ebp-4], 0
jmp .Lt_00A4
.Lt_00A6:
.Lt_00A5:
cmp dword ptr [ebp+12], 0
je .Lt_00A8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+68]
mov dword ptr [eax+68], ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+68], 0
je .Lt_00AA
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+68]
cmp dword ptr [eax+64], 0
je .Lt_00AC
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+68]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+64], eax
.Lt_00AC:
.Lt_00AB:
jmp .Lt_00A9
.Lt_00AA:
mov eax, dword ptr [_AST+40]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+60], ecx
.Lt_00A9:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+68], eax
jmp .Lt_00A7
.Lt_00A8:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
mov eax, dword ptr [_AST+40]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ecx+68], ebx
mov ebx, dword ptr [_AST+40]
cmp dword ptr [ebx+56], 0
je .Lt_00AE
mov ebx, dword ptr [_AST+40]
mov ecx, dword ptr [ebx+56]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx+64], ebx
jmp .Lt_00AD
.Lt_00AE:
mov ebx, dword ptr [_AST+40]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebx+60], ecx
.Lt_00AD:
mov ecx, dword ptr [_AST+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx+56], ebx
.Lt_00A7:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_00A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTADDUNSCOPED
_ASTADDUNSCOPED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00AF:
cmp dword ptr [ebp+8], 0
jne .Lt_00B2
jmp .Lt_00B0
.Lt_00B2:
.Lt_00B1:
mov eax, dword ptr [_AST+40]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00B4
mov ebx, dword ptr [_AST+40]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
.Lt_00B4:
.Lt_00B3:
mov dword ptr [_AST+196], 0
cmp dword ptr [ebp-4], 0
jne .Lt_00B6
push dword ptr [ebp+8]
call _ASTADD
add esp, 4
mov dword ptr [ebp+8], eax
jmp .Lt_00B5
.Lt_00B6:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _ASTADDAFTER
add esp, 8
mov dword ptr [ebp+8], eax
.Lt_00B5:
mov dword ptr [_AST+196], -1
mov eax, dword ptr [_AST+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+52], ebx
.Lt_00B0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTFINDFIRSTCODE
_ASTFINDFIRSTCODE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
.Lt_00B9:
cmp dword ptr [ebp-8], 0
je .Lt_00BA
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_00BE
.Lt_00BF:
cmp dword ptr [ebp-12], 21
je .Lt_00BE
.Lt_00C0:
cmp dword ptr [ebp-12], 24
je .Lt_00BE
.Lt_00C1:
cmp dword ptr [ebp-12], 27
je .Lt_00BE
.Lt_00C2:
cmp dword ptr [ebp-12], 29
je .Lt_00BE
.Lt_00C3:
cmp dword ptr [ebp-12], 30
jne .Lt_00BD
.Lt_00BE:
jmp .Lt_00BB
.Lt_00BD:
jmp .Lt_00BA
.Lt_00C4:
.Lt_00BB:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
jmp .Lt_00B9
.Lt_00BA:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00B8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTPROCBEGIN
_ASTPROCBEGIN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00C5:
call _HNEWPROCNODE
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], 0
push dword ptr [ebp+8]
call _SYMBPROCALLOCEXT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [_ENV+544]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [_AST+40], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [_AST+132], ebx
cmp dword ptr [ebp+12], 0
je .Lt_00C7
mov dword ptr [ebp-12], 0
jmp .Lt_00D1
.Lt_00C7:
mov dword ptr [ebp-12], 1
.Lt_00D1:
mov ebx, dword ptr [ebp-12]
mov dword ptr [_PARSER+96], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [_PARSER+104], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [_PARSER+108], ebx
push 0
push dword ptr [ebp+8]
call _SYMBNESTBEGIN
add esp, 8
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+32], eax
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+36], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+48], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+20], 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [_PARSER+28]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+40], 0
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+44], 0
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+52], 0
push dword ptr [ebp+8]
call dword ptr [_IR+28]
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 128
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00CA
push dword ptr [ebp+8]
call _HDECLVARSFORPROCPARAMS
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_00CC
push dword ptr [ebp+8]
call _SYMBADDPROCRESULTVAR
add esp, 4
.Lt_00CC:
.Lt_00CB:
.Lt_00CA:
.Lt_00C9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
lea ebx, [eax+28]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [_PARSER+28]
mov dword ptr [eax+52], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 4096
test eax, eax
je .Lt_00CF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+80]
mov dword ptr [ebp-20], eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-20]
push dword ptr [eax+60]
call _ASTNEWVAR
add esp, 20
push eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+60]
call _ASTNEWVAR
add esp, 20
push eax
call _RTLINITAPP
add esp, 8
mov dword ptr [_ENV+884], eax
jmp .Lt_00CE
.Lt_00CF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-8]
je .Lt_00D0
push dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
push dword ptr [eax]
call _HINITVPTR
add esp, 8
push eax
call _ASTADD
add esp, 4
.Lt_00D0:
.Lt_00CE:
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
.Lt_00C6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTPROCEND
_ASTPROCEND:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F1:
mov eax, dword ptr [_AST+40]
mov dword ptr [ebp-24], eax
inc dword ptr [_Lt_0119]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [_PARSER+28]
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
call _ERRGETCOUNT
test eax, eax
jne .Lt_00F4
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-16]
je .Lt_00F6
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+12]
and eax, 4
test eax, eax
jne .Lt_00F8
mov eax, dword ptr [ebp-20]
or dword ptr [eax+12], 4
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call _HCALLCTORS
add esp, 8
.Lt_00F8:
.Lt_00F7:
.Lt_00F6:
.Lt_00F5:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+64]
call _ASTSCOPEDESTROYVARS
add esp, 4
.Lt_00F4:
.Lt_00F3:
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+36]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [_PARSER+104]
push dword ptr [eax+60]
call _SYMBCHECKLABELS
add esp, 4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00FA
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-16]
je .Lt_00FC
push dword ptr [ebp-20]
call _HCALLDTORS
add esp, 4
.Lt_00FC:
.Lt_00FB:
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebx+40], 0
je .Lt_00FE
push dword ptr [ebp-24]
call _ASTSCOPEUPDBREAKLIST
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00FE:
.Lt_00FD:
push dword ptr [ebp-20]
call _ASTGOSUBADDEXIT
add esp, 4
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-16], 0
je .Lt_0100
push dword ptr [ebp-28]
call _HCALLPROFILER
add esp, 4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-20]
push dword ptr [ebp-28]
call _HCHECKERRHND
add esp, 8
mov dword ptr [ebp-28], eax
.Lt_0100:
.Lt_00FF:
cmp dword ptr [ebp+8], 0
je .Lt_0102
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+48], 0
je .Lt_0104
push 0
call _RTLEXITAPP
add esp, 4
.Lt_0104:
.Lt_0103:
.Lt_0102:
.Lt_0101:
cmp dword ptr [ebp-16], 0
je .Lt_0106
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_0108
push dword ptr [ebp-20]
push dword ptr [ebp-28]
call _HMAYBECALLRESULTCTOR
add esp, 8
mov dword ptr [ebp-28], eax
push dword ptr [ebp-20]
call _HLOADPROCRESULT
add esp, 4
.Lt_0108:
.Lt_0107:
.Lt_0106:
.Lt_0105:
.Lt_00FA:
.Lt_00F9:
push dword ptr [ebp-20]
call dword ptr [_IR+32]
add esp, 4
mov dword ptr [ebp-12], 0
call _ERRGETCOUNT
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-8]
je .Lt_010A
mov eax, dword ptr [ebp-20]
or dword ptr [eax+12], 128
cmp dword ptr [_Lt_0119], 1
jne .Lt_010C
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+48], 0
jne .Lt_010E
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 64
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp-20]
call _SYMBPROCHASFWDREFINSIGNATURE
add esp, 4
not eax
mov ecx, dword ptr [_ENV+104]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
and ebx, eax
je .Lt_0110
mov dword ptr [ebp-12], -1
jmp .Lt_010F
.Lt_0110:
push -1
mov eax, dword ptr [ebp-20]
lea ebx, [eax+56]
push ebx
call _SYMBDELSYMBOLTB
add esp, 8
.Lt_010F:
jmp .Lt_010D
.Lt_010E:
mov dword ptr [ebp-12], -1
.Lt_010D:
.Lt_010C:
.Lt_010B:
jmp .Lt_0109
.Lt_010A:
push 0
mov ebx, dword ptr [ebp-20]
lea eax, [ebx+56]
push eax
call _SYMBDELSYMBOLTB
add esp, 8
.Lt_0109:
push 0
call _SYMBNESTEND
add esp, 4
cmp dword ptr [_ENV+124], 1
jl .Lt_0112
cmp dword ptr [_ENV+104], 0
jne .Lt_0114
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call _ASTPROCVECTORIZE
add esp, 4
.Lt_0114:
.Lt_0113:
.Lt_0112:
.Lt_0111:
cmp dword ptr [ebp-12], 0
je .Lt_0116
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+48], 0
jne .Lt_0118
push -1
push dword ptr [ebp-24]
call _HPROCFLUSH
add esp, 8
jmp .Lt_0117
.Lt_0118:
call _HPROCFLUSHALL
.Lt_0117:
.Lt_0116:
.Lt_0115:
mov eax, dword ptr [_AST+32]
mov dword ptr [_AST+40], eax
mov eax, dword ptr [_AST+32]
mov dword ptr [_AST+132], eax
mov dword ptr [_PARSER+96], 0
mov eax, dword ptr [_ENV+880]
mov dword ptr [_PARSER+104], eax
mov eax, dword ptr [_ENV+880]
mov dword ptr [_PARSER+108], eax
dec dword ptr [_Lt_0119]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00F2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0119:
.int 0

.section .text
.balign 16

.globl _ASTPROCADDSTATICINSTANCE
_ASTPROCADDSTATICINSTANCE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B9:
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01BC
push 32
call _XCALLOCATE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+44], eax
push 6
push 8
push 16
push dword ptr [ebp-8]
call _LISTINIT
add esp, 16
.Lt_01BC:
.Lt_01BB:
push dword ptr [ebp-8]
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-12], eax
push 4
push 3
push 0
push 64
push 0
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push 0
call _SYMBPREADDPROC
add esp, 4
push eax
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 8388608
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_01BA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ASTPROCADDGLOBALINSTANCE
_ASTPROCADDGLOBALINSTANCE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01BD:
lea eax, [_AST+76]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 8388608
cmp dword ptr [ebp+12], 0
je .Lt_01C0
inc dword ptr [_AST+108]
.Lt_01C0:
.Lt_01BF:
cmp dword ptr [ebp+16], 0
je .Lt_01C2
inc dword ptr [_AST+112]
.Lt_01C2:
.Lt_01C1:
.Lt_01BE:
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
_HNEWPROCNODE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_006D:
push 0
push -2147483648
push 43
call _ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [_AST+36], 0
je .Lt_0070
mov eax, dword ptr [_AST+36]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+68], ebx
jmp .Lt_006F
.Lt_0070:
mov ebx, dword ptr [ebp-8]
mov dword ptr [_AST+32], ebx
.Lt_006F:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [_AST+36]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+68], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [_AST+36], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_006E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDELPROCNODE:
push ebp
mov ebp, esp
push ebx
.Lt_0071:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+60], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .Lt_0074
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+64]
mov ebx, dword ptr [eax+68]
mov dword ptr [ecx+68], ebx
jmp .Lt_0073
.Lt_0074:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+68]
mov dword ptr [_AST+32], ecx
.Lt_0073:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+68], 0
je .Lt_0076
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov ebx, dword ptr [ecx+64]
mov dword ptr [eax+64], ebx
jmp .Lt_0075
.Lt_0076:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [_AST+36], eax
.Lt_0075:
push dword ptr [ebp+8]
call _ASTDELNODE
add esp, 4
.Lt_0072:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPROCFLUSH:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0077:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp+12], 0
je .Lt_007A
push dword ptr [ebp-12]
call _HGENSTATICINSTANCESDTORS
add esp, 4
.Lt_007A:
.Lt_0079:
mov ebx, dword ptr [ebp+8]
mov dword ptr [_AST+40], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [_AST+132], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [_AST+136], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+48], 0
je .Lt_007B
mov dword ptr [ebp-16], 0
jmp .Lt_01D7
.Lt_007B:
mov dword ptr [ebp-16], 1
.Lt_01D7:
mov ebx, dword ptr [ebp-16]
mov dword ptr [_PARSER+96], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [_PARSER+104], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [_PARSER+108], ebx
push 0
push dword ptr [ebp-12]
call _SYMBNESTBEGIN
add esp, 8
cmp dword ptr [_AST+136], 0
je .Lt_007E
mov ebx, dword ptr [ebp-12]
or dword ptr [ebx+12], 16777216
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-12]
call dword ptr [_IR+76]
add esp, 8
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+60]
call _ASTSCOPEALLOCLOCALS
add esp, 4
.Lt_007E:
.Lt_007D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
.Lt_007F:
cmp dword ptr [ebp-4], 0
je .Lt_0080
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp-4]
call _ASTLOAD
add esp, 4
push dword ptr [ebp-4]
call _ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_007F
.Lt_0080:
cmp dword ptr [_AST+136], 0
je .Lt_0082
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+36]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-12]
call dword ptr [_IR+80]
add esp, 12
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+60]
call dword ptr [_IR+56]
add esp, 4
.Lt_0082:
.Lt_0081:
push 0
mov ebx, dword ptr [ebp-12]
lea eax, [ebx+56]
push eax
call _SYMBDELSYMBOLTB
add esp, 8
push 0
call _SYMBNESTEND
add esp, 4
push dword ptr [ebp+8]
call _HDELPROCNODE
add esp, 4
mov dword ptr [_AST+136], -1
.Lt_0078:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPROCFLUSHALL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0083:
call _HGENGLOBALINSTANCESCTOR
.Lt_0085:
mov eax, dword ptr [_AST+32]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0089
jmp .Lt_0086
.Lt_0089:
.Lt_0088:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
and eax, 128
test eax, eax
je .Lt_008B
mov dword ptr [ebp-8], -1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 64
test ebx, ebx
je .Lt_008D
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .Lt_008F
mov dword ptr [ebp-8], 0
jmp .Lt_008E
.Lt_008F:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 8192
test ebx, ebx
je .Lt_0090
push dword ptr [ebp-4]
call _HMODLEVELISEMPTY
add esp, 4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
.Lt_0090:
.Lt_008E:
.Lt_008D:
.Lt_008C:
jmp .Lt_008A
.Lt_008B:
mov dword ptr [ebp-8], 0
.Lt_008A:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _HPROCFLUSH
add esp, 8
.Lt_0087:
jmp .Lt_0085
.Lt_0086:
.Lt_0084:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ASTUPDATE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0091:
cmp dword ptr [ebp+8], 0
jne .Lt_0094
mov dword ptr [ebp-4], 0
jmp .Lt_0092
.Lt_0094:
.Lt_0093:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .Lt_0096
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_0098
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
je .Lt_009A
push 0
push 0
push dword ptr [ebp+8]
call _ASTSETTYPE
add esp, 12
.Lt_009A:
.Lt_0099:
.Lt_0098:
.Lt_0097:
.Lt_0096:
.Lt_0095:
push dword ptr [ebp+8]
call _ASTTYPEINIUPDATE
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _ASTUPDATEBITFIELDS
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _ASTOPTIMIZETREE
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _ASTOPTASSIGNMENT
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call _ASTUPDSTRCONCAT
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [_AST+196], 0
je .Lt_009C
push 0
push 0
call _ASTDTORLISTFLUSH
add esp, 4
push eax
push dword ptr [ebp+8]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
.Lt_009C:
.Lt_009B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0092:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKERRHND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D4:
cmp dword ptr [_ENV+168], 0
je .Lt_00D7
push dword ptr [ebp+8]
lea eax, [_ENV+280]
push eax
call _ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp+12]
call _RTLERRORSETMODNAME
add esp, 8
push eax
call _ASTADDAFTER
add esp, 8
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
call _ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp+12]
call _RTLERRORSETFUNCNAME
add esp, 8
push eax
call _ASTADDAFTER
add esp, 8
mov dword ptr [ebp+8], eax
.Lt_00D7:
.Lt_00D6:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+8], 0
je .Lt_00DA
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
call _ASTNEWVAR
add esp, 20
push eax
push 0
call _RTLERRORSETFUNCNAME
add esp, 8
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], 0
.Lt_00DA:
.Lt_00D9:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+4], 0
je .Lt_00DC
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _ASTNEWVAR
add esp, 20
push eax
push 0
call _RTLERRORSETMODNAME
add esp, 8
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+4], 0
.Lt_00DC:
.Lt_00DB:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 0
je .Lt_00DE
push 0
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
call _ASTNEWVAR
add esp, 20
push eax
call _RTLERRORSETHANDLER
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [eax], 0
.Lt_00DE:
.Lt_00DD:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00D5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMAYBECALLRESULTCTOR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DF:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ecx, 20
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00E2
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
jmp .Lt_00E0
.Lt_00E2:
.Lt_00E1:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+112]
mov ecx, dword ptr [ebx+48]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+48]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .Lt_00E4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_00E0
.Lt_00E4:
.Lt_00E3:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
call _SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00E6
push dword ptr [ebp+12]
call _SYMBHASCTOR
add esp, 4
test eax, eax
je .Lt_00E8
push 0
push 0
push 184
call _ERRREPORT
add esp, 12
.Lt_00E8:
.Lt_00E7:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00E0
.Lt_00E6:
.Lt_00E5:
push dword ptr [ebp+12]
call _SYMBGETPROCRESULT
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00EA
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00E0
.Lt_00EA:
.Lt_00E9:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call _ASTBUILDPROCRESULTVAR
add esp, 8
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _ASTBUILDCTORCALL
add esp, 8
push eax
call _ASTADDAFTER
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_00E0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLPROFILER:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00EB:
cmp dword ptr [_ENV+180], 0
je .Lt_00EE
cmp dword ptr [_ENV+108], 3
je .Lt_00F0
push dword ptr [ebp+8]
call _RTLPROFILECALL_MCOUNT
push eax
call _ASTADDAFTER
add esp, 8
mov dword ptr [ebp+8], eax
.Lt_00F0:
.Lt_00EF:
.Lt_00EE:
.Lt_00ED:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00EC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HDECLVARSFORPROCPARAMS:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0121:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .Lt_0124
push dword ptr [ebp+8]
call _SYMBADDVARFORPROCRESULTPARAM
add esp, 4
.Lt_0124:
.Lt_0123:
mov dword ptr [ebp-8], 1
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+84], 4
jne .Lt_0125
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+80]
mov dword ptr [ebp-16], eax
jmp .Lt_01DD
.Lt_0125:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-16], ebx
.Lt_01DD:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.Lt_0127:
cmp dword ptr [ebp-12], 0
je .Lt_0128
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+56], 4
je .Lt_012A
push dword ptr [ebp-12]
call _SYMBADDVARFORPARAM
add esp, 4
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+60], 0
jne .Lt_012C
push 4
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ERRREPORTPARAM
add esp, 16
jmp .Lt_0122
.Lt_012C:
.Lt_012B:
.Lt_012A:
.Lt_0129:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 4
jne .Lt_012D
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-20], ebx
jmp .Lt_01DE
.Lt_012D:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-20], eax
.Lt_01DE:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
inc dword ptr [ebp-8]
jmp .Lt_0127
.Lt_0128:
mov dword ptr [ebp-4], -1
.Lt_0122:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADPROCRESULT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_012F:
push dword ptr [ebp+8]
call _SYMBGETPROCRESULT
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
and ecx, 2048
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0132
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR
add esp, 20
push eax
call _RTLSTRALLOCTMPRESULT
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [_ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_ENV+104]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
mov ecx, dword ptr [_ENV+104]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0134
push -1
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+28]
push dword ptr [ebp-8]
call _ASTNEWLOAD
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_0134:
.Lt_0133:
jmp .Lt_0131
.Lt_0132:
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+88]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+92]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+88]
push 0
push 0
push dword ptr [ebp-4]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWLOAD
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_0131:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
.Lt_0130:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMODLEVELISEMPTY:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0135:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_0138
mov dword ptr [ebp-4], -1
jmp .Lt_0136
.Lt_0138:
.Lt_0137:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 21
je .Lt_013A
mov dword ptr [ebp-4], 0
jmp .Lt_0136
.Lt_013A:
.Lt_0139:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_013C
mov dword ptr [ebp-4], -1
jmp .Lt_0136
.Lt_013C:
.Lt_013B:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 21
je .Lt_013E
mov dword ptr [ebp-4], 0
jmp .Lt_0136
.Lt_013E:
.Lt_013D:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_0140
mov dword ptr [ebp-4], -1
jmp .Lt_0136
.Lt_0140:
.Lt_013F:
mov dword ptr [ebp-4], 0
.Lt_0136:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLCTORLIST:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_0141:
cmp dword ptr [ebp+16], 0
je .Lt_0144
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+76]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-40], ecx
mov dword ptr [ebp-36], ebx
jmp .Lt_0143
.Lt_0144:
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+28]
and ebx, 511
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+32]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+76]
mov ebx, dword ptr [ecx+80]
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-36], ebx
.Lt_0143:
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
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-32]
and eax, 31
mov ebx, dword ptr [ebp-32]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-32]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-32]
and ebx, 32505856
or eax, ebx
push eax
call _SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+16], 0
je .Lt_0146
cmp dword ptr [ebp+8], 0
je .Lt_0148
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_0147
.Lt_0148:
mov ebx, dword ptr [ebp-40]
mov eax, dword ptr [ebp-36]
add ebx, 4294967295
adc eax, 4294967295
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
push eax
push ebx
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop ebx
pop eax
add esp, 8
push eax
push ebx
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_0147:
jmp .Lt_0145
.Lt_0146:
cmp dword ptr [ebp+8], 0
je .Lt_014A
push 0
push 0
push 0
push dword ptr [ebp+12]
call _ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_0149
.Lt_014A:
mov ebx, dword ptr [ebp-40]
mov eax, dword ptr [ebp-36]
add ebx, 4294967295
adc eax, 4294967295
mov ecx, dword ptr [ebp-20]
push dword ptr [ecx+44]
push dword ptr [ecx+40]
push eax
push ebx
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop ebx
pop eax
add esp, 8
push eax
push ebx
push 0
push dword ptr [ebp+12]
call _ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_0149:
.Lt_0145:
push 64
push dword ptr [ebp-24]
call _ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp-16]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
mov dword ptr [ebp-28], eax
push -1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call _ASTBUILDFORBEGIN
add esp, 20
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp+8], 0
je .Lt_014C
push 0
push dword ptr [ebp-16]
call _ASTBUILDVARDEREF
add esp, 4
push eax
push dword ptr [ebp-20]
call _ASTBUILDCTORCALL
add esp, 8
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
jmp .Lt_014B
.Lt_014C:
push 0
push 0
push dword ptr [ebp-16]
call _ASTBUILDVARDEREF
add esp, 4
push eax
push dword ptr [ebp-20]
call _ASTBUILDDTORCALL
add esp, 12
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
.Lt_014B:
push 0
cmp dword ptr [ebp+8], 0
je .Lt_014D
mov dword ptr [ebp-44], 1
jmp .Lt_01E4
.Lt_014D:
mov dword ptr [ebp-44], -1
.Lt_01E4:
push dword ptr [ebp-44]
push dword ptr [ebp-16]
call _ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp-28]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
push 0
push 8
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call _ASTBUILDFOREND
add esp, 16
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.Lt_0142:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLFIELDCTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_014F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_0152
jmp .Lt_0150
.Lt_0152:
.Lt_0151:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
and eax, 2048
test eax, eax
je .Lt_0154
jmp .Lt_0150
.Lt_0154:
.Lt_0153:
push dword ptr [ebp+12]
call _SYMBHASDEFCTOR
add esp, 4
test eax, eax
je .Lt_0156
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+60], 0
jne .Lt_0158
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _ASTBUILDCTORCALL
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_0157
.Lt_0158:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push -1
call _HCALLCTORLIST
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0157:
jmp .Lt_0150
.Lt_0156:
.Lt_0155:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+112], 0
jle .Lt_015A
push 64
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0159
.Lt_015A:
push 0
push 0
push 0
push 8
push dword ptr [ebp+12]
call _SYMBGETREALSIZE
add esp, 4
push edx
push eax
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
push 107
call _ASTNEWMEM
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0159:
.Lt_0150:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCLEARUNIONFIELDS:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_015B:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], ebx
.Lt_015D:
push dword ptr [ebp-8]
call _SYMBGETREALSIZE
add esp, 4
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
jl .Lt_0161
jg .Lt_01E7
cmp dword ptr [ebp-24], edx
jbe .Lt_0161
.Lt_01E7:
mov eax, dword ptr [ebp-24]
mov edx, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
.Lt_0161:
.Lt_0160:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-8], edx
.Lt_015F:
cmp dword ptr [ebp-8], 0
je .Lt_0162
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
jmp .Lt_01E5
.Lt_0162:
mov dword ptr [ebp-36], 0
.Lt_01E5:
cmp dword ptr [ebp-36], 0
je .Lt_0164
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [edx+12]
and eax, 16777216
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .Lt_01E6
.Lt_0164:
mov dword ptr [ebp-40], 0
.Lt_01E6:
cmp dword ptr [ebp-40], 0
jne .Lt_015D
.Lt_015E:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [ebp-8]
mov dword ptr [eax], edx
push 0
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
push 107
call _ASTNEWMEM
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_015C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HINITDYNAMICARRAYFIELD:
push ebp
mov ebp, esp
sub esp, 128
push ebx
mov dword ptr [ebp-4], 0
.Lt_0166:
lea eax, [ebp-68]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 16
rep stosd
pop edi
pop eax
lea eax, [ebp-68]
mov dword ptr [ebp-116], eax
lea eax, [ebp-68]
mov dword ptr [ebp-112], eax
mov dword ptr [ebp-108], 64
mov dword ptr [ebp-104], 4
mov dword ptr [ebp-100], 2
mov dword ptr [ebp-96], 50
mov dword ptr [ebp-92], 8
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 7
mov dword ptr [ebp-80], 2
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
call _ASTTYPEINICLONE
add esp, 4
mov dword ptr [ebp-120], eax
mov dword ptr [ebp-128], 0
mov eax, dword ptr [ebp-120]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-124], ebx
.Lt_0169:
mov ebx, dword ptr [ebp-124]
mov eax, dword ptr [ebp-128]
mov ecx, dword ptr [ebx+56]
mov dword ptr [ebp+eax*8-68], ecx
mov ecx, dword ptr [ebp-124]
mov dword ptr [ecx+56], 0
mov ecx, dword ptr [ebp-124]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebp-124], eax
mov eax, dword ptr [ebp-124]
mov ecx, dword ptr [ebp-128]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp+ecx*8-64], ebx
mov ebx, dword ptr [ebp-124]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-124]
mov ecx, dword ptr [ebx+60]
mov dword ptr [ebp-124], ecx
inc dword ptr [ebp-128]
.Lt_016B:
cmp dword ptr [ebp-124], 0
jne .Lt_0169
.Lt_016A:
push dword ptr [ebp-120]
call _ASTDELTREE
add esp, 4
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+12]
and ebx, 2048
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
push ebx
push 0
lea ebx, [ebp-116]
push ebx
push dword ptr [ebp-128]
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _RTLARRAYREDIM
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0167:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLFIELDCTORS:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_016C:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
.Lt_016E:
cmp dword ptr [ebp-8], 0
je .Lt_016F
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 12
jne .Lt_0171
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+96]
cmp dword ptr [ebp-8], eax
je .Lt_0173
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .Lt_0175
push 0
lea ebx, [ebp-8]
push ebx
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HCLEARUNIONFIELDS
add esp, 12
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_016E
jmp .Lt_0174
.Lt_0175:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 0
jne .Lt_0177
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HCALLFIELDCTOR
add esp, 8
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_0176
.Lt_0177:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_0178
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HINITDYNAMICARRAYFIELD
add esp, 8
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_0176
.Lt_0178:
push 0
push 64
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _ASTTYPEINICLONE
add esp, 4
push eax
push 0
push 0
push 0
push dword ptr [ebp-12]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call __Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
add esp, 16
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
.Lt_0176:
.Lt_0174:
.Lt_0173:
.Lt_0172:
.Lt_0171:
.Lt_0170:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .Lt_016E
.Lt_016F:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_016D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLBASECTOR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0179:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .Lt_017C
jmp .Lt_017A
.Lt_017C:
.Lt_017B:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_017E
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+112]
mov dword ptr [eax+64], 0
push 64
push 0
push dword ptr [ebp-8]
push 0
push 0
push 0
push dword ptr [ebp-16]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call __Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_017A
.Lt_017E:
.Lt_017D:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
call _SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .Lt_0180
push dword ptr [ebp-24]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_0182
push 0
push 0
push 207
call _ERRREPORT
add esp, 12
.Lt_0182:
.Lt_0181:
jmp .Lt_017F
.Lt_0180:
push dword ptr [ebp-20]
call _SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
je .Lt_0183
push 0
push 0
push 185
call _ERRREPORT
add esp, 12
.Lt_0183:
.Lt_017F:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _HCALLFIELDCTOR
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_017A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HINITVPTR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0184:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .Lt_0187
jmp .Lt_0185
.Lt_0187:
.Lt_0186:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
push 64
push 0
push 0
push 0
push -2147483648
mov ebx, dword ptr [_ENV+272]
sal ebx, 1
mov ecx, ebx
mov eax, ecx
sar eax, 31
push eax
push ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+136]
push dword ptr [eax+144]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
push eax
push 0
push 32
call _ASTNEWCONV
add esp, 20
push eax
push 0
push 0
push dword ptr [_SYMB+99636]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0185:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLCTORS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0188:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCALLBASECTOR
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HCALLFIELDCTORS
add esp, 8
push eax
push dword ptr [ebp-4]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _HINITVPTR
add esp, 8
push eax
push dword ptr [ebp-4]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
call _ASTFINDFIRSTCODE
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .Lt_018B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp+8], ebx
.Lt_018B:
.Lt_018A:
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _ASTADDAFTER
add esp, 8
.Lt_0189:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLFIELDDTOR:
push ebp
mov ebp, esp
push ebx
.Lt_018C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_018F
push 0
push -1
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _RTLARRAYERASE
add esp, 12
push eax
call _ASTADD
add esp, 4
jmp .Lt_018E
.Lt_018F:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+60], 0
jne .Lt_0190
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .Lt_0192
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _RTLSTRDELETE
add esp, 4
push eax
call _ASTADD
add esp, 4
jmp .Lt_0191
.Lt_0192:
push dword ptr [ebp+12]
call _SYMBHASDTOR
add esp, 4
test eax, eax
je .Lt_0193
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call _ASTBUILDDTORCALL
add esp, 12
push eax
call _ASTADD
add esp, 4
.Lt_0193:
.Lt_0191:
jmp .Lt_018E
.Lt_0190:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .Lt_0195
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _RTLARRAYERASE
add esp, 12
push eax
call _ASTADD
add esp, 4
jmp .Lt_0194
.Lt_0195:
push dword ptr [ebp+12]
call _SYMBHASDTOR
add esp, 4
test eax, eax
je .Lt_0196
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call _HCALLCTORLIST
add esp, 12
push eax
call _ASTADD
add esp, 4
.Lt_0196:
.Lt_0194:
.Lt_018E:
.Lt_018D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLFIELDDTORS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.Lt_0197:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.Lt_0199:
cmp dword ptr [ebp-4], 0
je .Lt_019A
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 12
jne .Lt_019C
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 8192
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-4]
cmp ecx, dword ptr [ebx+96]
setne dl
mov esi, edx
shr esi, 1
sbb esi, esi
and eax, esi
mov esi, dword ptr [ebp-4]
mov ebx, dword ptr [esi+4]
and ebx, 262144
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_019E
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call _HCALLFIELDDTOR
add esp, 8
.Lt_019E:
.Lt_019D:
.Lt_019C:
.Lt_019B:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+168]
mov dword ptr [ebp-4], eax
jmp .Lt_0199
.Lt_019A:
.Lt_0198:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLBASEDTOR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_019F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_01A2
jmp .Lt_01A0
.Lt_01A2:
.Lt_01A1:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+32]
call _SYMBGETCOMPDTOR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01A4
jmp .Lt_01A0
.Lt_01A4:
.Lt_01A3:
push dword ptr [ebp-8]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_01A6
push 0
push 0
push 208
call _ERRREPORT
add esp, 12
.Lt_01A6:
.Lt_01A5:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 512
test ebx, ebx
je .Lt_01A8
jmp .Lt_01A0
.Lt_01A8:
.Lt_01A7:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
push -1
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call _ASTBUILDVARFIELD
add esp, 16
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
call _ASTBUILDDTORCALL
add esp, 12
push eax
call _ASTADD
add esp, 4
.Lt_01A0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLDTORS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01A9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _HCALLFIELDDTORS
add esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _HCALLBASEDTOR
add esp, 8
.Lt_01AA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLSTATICCTOR:
push ebp
mov ebp, esp
.Lt_01AB:
push 64
push 0
push dword ptr [ebp+12]
call _ASTTYPEINICLONE
add esp, 4
push eax
push dword ptr [ebp+8]
call __Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
push eax
call _ASTADD
add esp, 4
push dword ptr [ebp+12]
call _ASTTYPEINIDELETE
add esp, 4
.Lt_01AC:
mov esp, ebp
pop ebp
ret
.balign 16
_HCALLSTATICDTOR:
push ebp
mov ebp, esp
push ebx
.Lt_01AD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_01B0
push 0
push -1
push 0
push 0
push 0
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
call _RTLARRAYERASE
add esp, 12
push eax
call _ASTADD
add esp, 4
jmp .Lt_01AF
.Lt_01B0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jne .Lt_01B2
push 0
push 0
push 0
push 0
push dword ptr [ebp+8]
call _ASTBUILDVARFIELD
add esp, 16
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call _ASTBUILDDTORCALL
add esp, 12
push eax
call _ASTADD
add esp, 4
jmp .Lt_01B1
.Lt_01B2:
push 0
push dword ptr [ebp+8]
push 0
call _HCALLCTORLIST
add esp, 12
push eax
call _ASTADD
add esp, 4
.Lt_01B1:
.Lt_01AF:
.Lt_01AE:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGENSTATICINSTANCESDTORS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_01B3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_01B6
jmp .Lt_01B4
.Lt_01B6:
.Lt_01B5:
push dword ptr [ebp-4]
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01B7:
cmp dword ptr [ebp-8], 0
je .Lt_01B8
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
call _ASTPROCBEGIN
add esp, 8
mov eax, dword ptr [_AST+40]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call _HCALLSTATICDTOR
add esp, 4
push 0
call _ASTPROCEND
add esp, 4
push -1
push dword ptr [ebp-12]
call _HPROCFLUSH
add esp, 8
push dword ptr [ebp-8]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_01B7
.Lt_01B8:
push dword ptr [ebp-4]
call _LISTEND
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+44]
call _free
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov dword ptr [eax+44], 0
.Lt_01B4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGLOBCTORBEGIN:
push ebp
mov ebp, esp
sub esp, 8
.Lt_01C3:
push 4
push 3
push 0
push 64
push 0
push 0
cmp dword ptr [ebp+8], 0
je .Lt_01C5
mov eax, offset _Lt_0021
mov dword ptr [ebp-8], eax
jmp .Lt_01EF
.Lt_01C5:
mov eax, offset _Lt_0022
mov dword ptr [ebp-8], eax
.Lt_01EF:
push dword ptr [ebp-8]
call _SYMBUNIQUELABEL
push eax
push 0
call _SYMBPREADDPROC
add esp, 4
push eax
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
je .Lt_01C8
push dword ptr [ebp-4]
call _SYMBADDGLOBALCTOR
add esp, 4
jmp .Lt_01C7
.Lt_01C8:
push dword ptr [ebp-4]
call _SYMBADDGLOBALDTOR
add esp, 4
.Lt_01C7:
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 2
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 128
push 0
push dword ptr [ebp-4]
call _ASTPROCBEGIN
add esp, 8
.Lt_01C4:
mov esp, ebp
pop ebp
ret
.balign 16
_HGENGLOBALINSTANCESCTOR:
push ebp
mov ebp, esp
sub esp, 8
.Lt_01C9:
cmp dword ptr [_AST+108], 0
jle .Lt_01CC
push -1
call _HGLOBCTORBEGIN
add esp, 4
lea eax, [_AST+76]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_01CD:
cmp dword ptr [ebp-4], 0
je .Lt_01CE
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+4], 0
je .Lt_01D0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _HCALLSTATICCTOR
add esp, 8
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 0
.Lt_01D0:
.Lt_01CF:
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_01CD
.Lt_01CE:
push 0
call _ASTPROCEND
add esp, 4
.Lt_01CC:
.Lt_01CB:
cmp dword ptr [_AST+112], 0
jle .Lt_01D2
push 0
call _HGLOBCTORBEGIN
add esp, 4
lea eax, [_AST+76]
push eax
call _LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_01D3:
cmp dword ptr [ebp-4], 0
je .Lt_01D4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .Lt_01D6
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call _HCALLSTATICDTOR
add esp, 4
.Lt_01D6:
.Lt_01D5:
push dword ptr [ebp-4]
call _LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_01D3
.Lt_01D4:
push 0
call _ASTPROCEND
add esp, 4
.Lt_01D2:
.Lt_01D1:
.Lt_01CA:
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0021:	.ascii	"_GLOBAL__I\0"
.balign 4
_Lt_0022:	.ascii	"_GLOBAL__D\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
