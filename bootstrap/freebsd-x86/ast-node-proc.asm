	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTPROCLISTINIT
ASTPROCLISTINIT:
.Lt_0068:
mov dword ptr [AST+32], 0
mov dword ptr [AST+36], 0
mov dword ptr [AST+40], 0
push 6
push 12
push 32
lea eax, [AST+76]
push eax
call LISTINIT
add esp, 16
mov dword ptr [AST+108], 0
mov dword ptr [AST+112], 0
.Lt_0069:
ret
.balign 16

.globl ASTPROCLISTEND
ASTPROCLISTEND:
.Lt_006A:
mov dword ptr [AST+112], 0
mov dword ptr [AST+108], 0
lea eax, [AST+76]
push eax
call LISTEND
add esp, 4
mov dword ptr [AST+32], 0
mov dword ptr [AST+36], 0
mov dword ptr [AST+40], 0
.Lt_006B:
ret
.balign 16

.globl ASTADD
ASTADD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_009C:
push dword ptr [ebp+8]
call ASTUPDATE
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_009F
mov dword ptr [ebp-4], 0
jmp .Lt_009D
.Lt_009F:
.Lt_009E:
mov eax, dword ptr [AST+40]
cmp dword ptr [eax+60], 0
je .Lt_00A1
mov eax, dword ptr [AST+40]
mov ebx, dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+68], eax
jmp .Lt_00A0
.Lt_00A1:
mov eax, dword ptr [AST+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
.Lt_00A0:
mov ebx, dword ptr [AST+40]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+60]
mov dword ptr [eax+64], ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+68], 0
mov ecx, dword ptr [AST+40]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+60], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_009D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTADDAFTER
ASTADDAFTER:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A2:
push dword ptr [ebp+8]
call ASTUPDATE
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_00A5
mov dword ptr [ebp-4], 0
jmp .Lt_00A3
.Lt_00A5:
.Lt_00A4:
cmp dword ptr [ebp+12], 0
je .Lt_00A7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+68]
mov dword ptr [eax+68], ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+68], 0
je .Lt_00A9
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+68]
cmp dword ptr [eax+64], 0
je .Lt_00AB
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+68]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+64], eax
.Lt_00AB:
.Lt_00AA:
jmp .Lt_00A8
.Lt_00A9:
mov eax, dword ptr [AST+40]
mov ecx, dword ptr [ebp+8]
mov dword ptr [eax+60], ecx
.Lt_00A8:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ecx+68], eax
jmp .Lt_00A6
.Lt_00A7:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+64], 0
mov eax, dword ptr [AST+40]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ecx+68], ebx
mov ebx, dword ptr [AST+40]
cmp dword ptr [ebx+56], 0
je .Lt_00AD
mov ebx, dword ptr [AST+40]
mov ecx, dword ptr [ebx+56]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx+64], ebx
jmp .Lt_00AC
.Lt_00AD:
mov ebx, dword ptr [AST+40]
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebx+60], ecx
.Lt_00AC:
mov ecx, dword ptr [AST+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ecx+56], ebx
.Lt_00A6:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_00A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTADDUNSCOPED
ASTADDUNSCOPED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00AE:
cmp dword ptr [ebp+8], 0
jne .Lt_00B1
jmp .Lt_00AF
.Lt_00B1:
.Lt_00B0:
mov eax, dword ptr [AST+40]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00B3
mov ebx, dword ptr [AST+40]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
.Lt_00B3:
.Lt_00B2:
mov dword ptr [AST+196], 0
cmp dword ptr [ebp-4], 0
jne .Lt_00B5
push dword ptr [ebp+8]
call ASTADD
add esp, 4
mov dword ptr [ebp+8], eax
jmp .Lt_00B4
.Lt_00B5:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call ASTADDAFTER
add esp, 8
mov dword ptr [ebp+8], eax
.Lt_00B4:
mov dword ptr [AST+196], -1
mov eax, dword ptr [AST+40]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+52], ebx
.Lt_00AF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTFINDFIRSTCODE
ASTFINDFIRSTCODE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
.Lt_00B8:
cmp dword ptr [ebp-8], 0
je .Lt_00B9
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_00BD
.Lt_00BE:
cmp dword ptr [ebp-12], 21
je .Lt_00BD
.Lt_00BF:
cmp dword ptr [ebp-12], 24
je .Lt_00BD
.Lt_00C0:
cmp dword ptr [ebp-12], 27
je .Lt_00BD
.Lt_00C1:
cmp dword ptr [ebp-12], 29
je .Lt_00BD
.Lt_00C2:
cmp dword ptr [ebp-12], 30
jne .Lt_00BC
.Lt_00BD:
jmp .Lt_00BA
.Lt_00BC:
jmp .Lt_00B9
.Lt_00C3:
.Lt_00BA:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
jmp .Lt_00B8
.Lt_00B9:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00B7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTPROCBEGIN
ASTPROCBEGIN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00C4:
call HNEWPROCNODE
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+64], 0
push dword ptr [ebp+8]
call SYMBPROCALLOCEXT
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [ENV+544]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [AST+40], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [AST+132], ebx
cmp dword ptr [ebp+12], 0
je .Lt_00C6
mov dword ptr [ebp-12], 0
jmp .Lt_00D0
.Lt_00C6:
mov dword ptr [ebp-12], 1
.Lt_00D0:
mov ebx, dword ptr [ebp-12]
mov dword ptr [PARSER+96], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [PARSER+104], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [PARSER+108], ebx
push 0
push dword ptr [ebp+8]
call SYMBNESTBEGIN
add esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+32], eax
push 0
push 0
call SYMBADDLABEL
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
mov ebx, dword ptr [PARSER+28]
mov dword ptr [eax+24], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+40], 0
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+44], 0
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebx+52], 0
push dword ptr [ebp+8]
call dword ptr [IR+28]
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
je .Lt_00C9
push dword ptr [ebp+8]
call HDECLVARSFORPROCPARAMS
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_00CB
push dword ptr [ebp+8]
call SYMBADDPROCRESULTVAR
add esp, 4
.Lt_00CB:
.Lt_00CA:
.Lt_00C9:
.Lt_00C8:
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
mov ebx, dword ptr [PARSER+28]
mov dword ptr [eax+52], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 4096
test eax, eax
je .Lt_00CE
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
call ASTNEWVAR
add esp, 20
push eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+60]
call ASTNEWVAR
add esp, 20
push eax
call RTLINITAPP
add esp, 8
mov dword ptr [ENV+884], eax
jmp .Lt_00CD
.Lt_00CE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-8]
je .Lt_00CF
push dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
push dword ptr [eax]
call HINITVPTR
add esp, 8
push eax
call ASTADD
add esp, 4
.Lt_00CF:
.Lt_00CD:
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
.Lt_00C5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTPROCEND
ASTPROCEND:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F0:
mov eax, dword ptr [AST+40]
mov dword ptr [ebp-24], eax
inc dword ptr [Lt_0118]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [PARSER+28]
mov dword ptr [ebx+28], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 128
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
call ERRGETCOUNT
test eax, eax
jne .Lt_00F3
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-16]
je .Lt_00F5
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+12]
and eax, 4
test eax, eax
jne .Lt_00F7
mov eax, dword ptr [ebp-20]
or dword ptr [eax+12], 4
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call HCALLCTORS
add esp, 8
.Lt_00F7:
.Lt_00F6:
.Lt_00F5:
.Lt_00F4:
mov eax, dword ptr [ebp-20]
push dword ptr [eax+64]
call ASTSCOPEDESTROYVARS
add esp, 4
.Lt_00F3:
.Lt_00F2:
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+36]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [PARSER+104]
push dword ptr [eax+60]
call SYMBCHECKLABELS
add esp, 4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00F9
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
and ebx, dword ptr [ebp-16]
je .Lt_00FB
push dword ptr [ebp-20]
call HCALLDTORS
add esp, 4
.Lt_00FB:
.Lt_00FA:
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebx+40], 0
je .Lt_00FD
push dword ptr [ebp-24]
call ASTSCOPEUPDBREAKLIST
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00FD:
.Lt_00FC:
push dword ptr [ebp-20]
call ASTGOSUBADDEXIT
add esp, 4
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-16], 0
je .Lt_00FF
push dword ptr [ebp-28]
call HCALLPROFILER
add esp, 4
mov dword ptr [ebp-28], eax
push dword ptr [ebp-20]
push dword ptr [ebp-28]
call HCHECKERRHND
add esp, 8
mov dword ptr [ebp-28], eax
.Lt_00FF:
.Lt_00FE:
cmp dword ptr [ebp+8], 0
je .Lt_0101
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+48], 0
je .Lt_0103
push 0
call RTLEXITAPP
add esp, 4
.Lt_0103:
.Lt_0102:
.Lt_0101:
.Lt_0100:
cmp dword ptr [ebp-16], 0
je .Lt_0105
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_0107
push dword ptr [ebp-20]
push dword ptr [ebp-28]
call HMAYBECALLRESULTCTOR
add esp, 8
mov dword ptr [ebp-28], eax
push dword ptr [ebp-20]
call HLOADPROCRESULT
add esp, 4
.Lt_0107:
.Lt_0106:
.Lt_0105:
.Lt_0104:
.Lt_00F9:
.Lt_00F8:
push dword ptr [ebp-20]
call dword ptr [IR+32]
add esp, 4
mov dword ptr [ebp-12], 0
call ERRGETCOUNT
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp-8]
je .Lt_0109
mov eax, dword ptr [ebp-20]
or dword ptr [eax+12], 128
cmp dword ptr [Lt_0118], 1
jne .Lt_010B
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+48], 0
jne .Lt_010D
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+4]
and ebx, 64
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp-20]
call SYMBPROCHASFWDREFINSIGNATURE
add esp, 4
not eax
mov ecx, dword ptr [ENV+104]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
and ebx, eax
je .Lt_010F
mov dword ptr [ebp-12], -1
jmp .Lt_010E
.Lt_010F:
push -1
mov eax, dword ptr [ebp-20]
lea ebx, [eax+56]
push ebx
call SYMBDELSYMBOLTB
add esp, 8
.Lt_010E:
jmp .Lt_010C
.Lt_010D:
mov dword ptr [ebp-12], -1
.Lt_010C:
.Lt_010B:
.Lt_010A:
jmp .Lt_0108
.Lt_0109:
push 0
mov ebx, dword ptr [ebp-20]
lea eax, [ebx+56]
push eax
call SYMBDELSYMBOLTB
add esp, 8
.Lt_0108:
push 0
call SYMBNESTEND
add esp, 4
cmp dword ptr [ENV+124], 1
jl .Lt_0111
cmp dword ptr [ENV+104], 0
jne .Lt_0113
mov eax, dword ptr [ebp-24]
push dword ptr [eax+56]
call ASTPROCVECTORIZE
add esp, 4
.Lt_0113:
.Lt_0112:
.Lt_0111:
.Lt_0110:
cmp dword ptr [ebp-12], 0
je .Lt_0115
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+48], 0
jne .Lt_0117
push -1
push dword ptr [ebp-24]
call HPROCFLUSH
add esp, 8
jmp .Lt_0116
.Lt_0117:
call HPROCFLUSHALL
.Lt_0116:
.Lt_0115:
.Lt_0114:
mov eax, dword ptr [AST+32]
mov dword ptr [AST+40], eax
mov eax, dword ptr [AST+32]
mov dword ptr [AST+132], eax
mov dword ptr [PARSER+96], 0
mov eax, dword ptr [ENV+880]
mov dword ptr [PARSER+104], eax
mov eax, dword ptr [ENV+880]
mov dword ptr [PARSER+108], eax
dec dword ptr [Lt_0118]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00F1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0118:
.int 0

.section .text
.balign 16

.globl ASTPROCADDSTATICINSTANCE
ASTPROCADDSTATICINSTANCE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B8:
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01BB
push 32
call XCALLOCATE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+44], eax
push 6
push 8
push 16
push dword ptr [ebp-8]
call LISTINIT
add esp, 16
.Lt_01BB:
.Lt_01BA:
push dword ptr [ebp-8]
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-12], eax
push 4
push 3
push 0
push 64
push 0
push 0
push 0
call SYMBUNIQUELABEL
push eax
push 0
call SYMBPREADDPROC
add esp, 4
push eax
call SYMBADDPROC
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
.Lt_01B9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl ASTPROCADDGLOBALINSTANCE
ASTPROCADDGLOBALINSTANCE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01BC:
lea eax, [AST+76]
push eax
call LISTNEWNODE
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
je .Lt_01BF
inc dword ptr [AST+108]
.Lt_01BF:
.Lt_01BE:
cmp dword ptr [ebp+16], 0
je .Lt_01C1
inc dword ptr [AST+112]
.Lt_01C1:
.Lt_01C0:
.Lt_01BD:
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
HNEWPROCNODE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_006C:
push 0
push -2147483648
push 43
call ASTNEWNODE
add esp, 12
mov dword ptr [ebp-8], eax
cmp dword ptr [AST+36], 0
je .Lt_006F
mov eax, dword ptr [AST+36]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+68], ebx
jmp .Lt_006E
.Lt_006F:
mov ebx, dword ptr [ebp-8]
mov dword ptr [AST+32], ebx
.Lt_006E:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [AST+36]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+68], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [AST+36], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_006D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDELPROCNODE:
push ebp
mov ebp, esp
push ebx
.Lt_0070:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+56], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+60], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .Lt_0073
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+64]
mov ebx, dword ptr [eax+68]
mov dword ptr [ecx+68], ebx
jmp .Lt_0072
.Lt_0073:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+68]
mov dword ptr [AST+32], ecx
.Lt_0072:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+68], 0
je .Lt_0075
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
mov ebx, dword ptr [ecx+64]
mov dword ptr [eax+64], ebx
jmp .Lt_0074
.Lt_0075:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov dword ptr [AST+36], eax
.Lt_0074:
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 4
.Lt_0071:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPROCFLUSH:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0076:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp+12], 0
je .Lt_0079
push dword ptr [ebp-12]
call HGENSTATICINSTANCESDTORS
add esp, 4
.Lt_0079:
.Lt_0078:
mov ebx, dword ptr [ebp+8]
mov dword ptr [AST+40], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [AST+132], ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [AST+136], ebx
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+48], 0
je .Lt_007A
mov dword ptr [ebp-16], 0
jmp .Lt_01D6
.Lt_007A:
mov dword ptr [ebp-16], 1
.Lt_01D6:
mov ebx, dword ptr [ebp-16]
mov dword ptr [PARSER+96], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [PARSER+104], ebx
mov ebx, dword ptr [ebp-12]
mov dword ptr [PARSER+108], ebx
push 0
push dword ptr [ebp-12]
call SYMBNESTBEGIN
add esp, 8
cmp dword ptr [AST+136], 0
je .Lt_007D
mov ebx, dword ptr [ebp-12]
or dword ptr [ebx+12], 16777216
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-12]
call dword ptr [IR+76]
add esp, 8
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+60]
call ASTSCOPEALLOCLOCALS
add esp, 4
.Lt_007D:
.Lt_007C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-4], eax
.Lt_007E:
cmp dword ptr [ebp-4], 0
je .Lt_007F
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
push dword ptr [ebp-4]
call ASTLOAD
add esp, 4
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_007E
.Lt_007F:
cmp dword ptr [AST+136], 0
je .Lt_0081
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+36]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-12]
call dword ptr [IR+80]
add esp, 12
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+60]
call dword ptr [IR+56]
add esp, 4
.Lt_0081:
.Lt_0080:
push 0
mov ebx, dword ptr [ebp-12]
lea eax, [ebx+56]
push eax
call SYMBDELSYMBOLTB
add esp, 8
push 0
call SYMBNESTEND
add esp, 4
push dword ptr [ebp+8]
call HDELPROCNODE
add esp, 4
mov dword ptr [AST+136], -1
.Lt_0077:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPROCFLUSHALL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0082:
call HGENGLOBALINSTANCESCTOR
.Lt_0084:
mov eax, dword ptr [AST+32]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0088
jmp .Lt_0085
.Lt_0088:
.Lt_0087:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
and eax, 128
test eax, eax
je .Lt_008A
mov dword ptr [ebp-8], -1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 64
test ebx, ebx
je .Lt_008C
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+12]
and eax, 2
test eax, eax
jne .Lt_008E
mov dword ptr [ebp-8], 0
jmp .Lt_008D
.Lt_008E:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 8192
test ebx, ebx
je .Lt_008F
push dword ptr [ebp-4]
call HMODLEVELISEMPTY
add esp, 4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
.Lt_008F:
.Lt_008D:
.Lt_008C:
.Lt_008B:
jmp .Lt_0089
.Lt_008A:
mov dword ptr [ebp-8], 0
.Lt_0089:
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call HPROCFLUSH
add esp, 8
.Lt_0086:
jmp .Lt_0084
.Lt_0085:
.Lt_0083:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
ASTUPDATE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0090:
cmp dword ptr [ebp+8], 0
jne .Lt_0093
mov dword ptr [ebp-4], 0
jmp .Lt_0091
.Lt_0093:
.Lt_0092:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 9
jne .Lt_0095
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 0
je .Lt_0097
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
je .Lt_0099
push 0
push 0
push dword ptr [ebp+8]
call ASTSETTYPE
add esp, 12
.Lt_0099:
.Lt_0098:
.Lt_0097:
.Lt_0096:
.Lt_0095:
.Lt_0094:
push dword ptr [ebp+8]
call ASTTYPEINIUPDATE
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call ASTUPDATEBITFIELDS
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call ASTOPTIMIZETREE
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call ASTOPTASSIGNMENT
add esp, 4
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
call ASTUPDSTRCONCAT
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [AST+196], 0
je .Lt_009B
push 0
push 0
call ASTDTORLISTFLUSH
add esp, 4
push eax
push dword ptr [ebp+8]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp+8], eax
.Lt_009B:
.Lt_009A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0091:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKERRHND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D3:
cmp dword ptr [ENV+168], 0
je .Lt_00D6
push dword ptr [ebp+8]
lea eax, [ENV+280]
push eax
call ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp+12]
call RTLERRORSETMODNAME
add esp, 8
push eax
call ASTADDAFTER
add esp, 8
mov dword ptr [ebp+8], eax
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
call ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp+12]
call RTLERRORSETFUNCNAME
add esp, 8
push eax
call ASTADDAFTER
add esp, 8
mov dword ptr [ebp+8], eax
.Lt_00D6:
.Lt_00D5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+8], 0
je .Lt_00D9
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+8]
call ASTNEWVAR
add esp, 20
push eax
push 0
call RTLERRORSETFUNCNAME
add esp, 8
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], 0
.Lt_00D9:
.Lt_00D8:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+4], 0
je .Lt_00DB
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call ASTNEWVAR
add esp, 20
push eax
push 0
call RTLERRORSETMODNAME
add esp, 8
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+4], 0
.Lt_00DB:
.Lt_00DA:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 0
je .Lt_00DD
push 0
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
call ASTNEWVAR
add esp, 20
push eax
call RTLERRORSETHANDLER
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [eax], 0
.Lt_00DD:
.Lt_00DC:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00D4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBECALLRESULTCTOR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DE:
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
je .Lt_00E1
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
jmp .Lt_00DF
.Lt_00E1:
.Lt_00E0:
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
je .Lt_00E3
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_00DF
.Lt_00E3:
.Lt_00E2:
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
call SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00E5
push dword ptr [ebp+12]
call SYMBHASCTOR
add esp, 4
test eax, eax
je .Lt_00E7
push 0
push 0
push 184
call ERRREPORT
add esp, 12
.Lt_00E7:
.Lt_00E6:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00DF
.Lt_00E5:
.Lt_00E4:
push dword ptr [ebp+12]
call SYMBGETPROCRESULT
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00E9
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00DF
.Lt_00E9:
.Lt_00E8:
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call ASTBUILDPROCRESULTVAR
add esp, 8
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call ASTBUILDCTORCALL
add esp, 8
push eax
call ASTADDAFTER
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_00DF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLPROFILER:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00EA:
cmp dword ptr [ENV+180], 0
je .Lt_00ED
cmp dword ptr [ENV+108], 3
je .Lt_00EF
push dword ptr [ebp+8]
call RTLPROFILECALL_MCOUNT
push eax
call ASTADDAFTER
add esp, 8
mov dword ptr [ebp+8], eax
.Lt_00EF:
.Lt_00EE:
.Lt_00ED:
.Lt_00EC:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00EB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HDECLVARSFORPROCPARAMS:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0120:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .Lt_0123
push dword ptr [ebp+8]
call SYMBADDVARFORPROCRESULTPARAM
add esp, 4
.Lt_0123:
.Lt_0122:
mov dword ptr [ebp-8], 1
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+84], 4
jne .Lt_0124
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+80]
mov dword ptr [ebp-16], eax
jmp .Lt_01DC
.Lt_0124:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-16], ebx
.Lt_01DC:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.Lt_0126:
cmp dword ptr [ebp-12], 0
je .Lt_0127
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+56], 4
je .Lt_0129
push dword ptr [ebp-12]
call SYMBADDVARFORPARAM
add esp, 4
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+60], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+60], 0
jne .Lt_012B
push 4
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ERRREPORTPARAM
add esp, 16
jmp .Lt_0121
.Lt_012B:
.Lt_012A:
.Lt_0129:
.Lt_0128:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+84], 4
jne .Lt_012C
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-20], ebx
jmp .Lt_01DD
.Lt_012C:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-20], eax
.Lt_01DD:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-12], eax
inc dword ptr [ebp-8]
jmp .Lt_0126
.Lt_0127:
mov dword ptr [ebp-4], -1
.Lt_0121:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HLOADPROCRESULT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_012E:
push dword ptr [ebp+8]
call SYMBGETPROCRESULT
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
je .Lt_0131
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call ASTNEWVAR
add esp, 20
push eax
call RTLSTRALLOCTMPRESULT
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ENV+104]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
mov ecx, dword ptr [ENV+104]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0133
push -1
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+28]
push dword ptr [ebp-8]
call ASTNEWLOAD
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_0133:
.Lt_0132:
jmp .Lt_0130
.Lt_0131:
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
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWLOAD
add esp, 12
mov dword ptr [ebp-8], eax
.Lt_0130:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
.Lt_012F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMODLEVELISEMPTY:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0134:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_0137
mov dword ptr [ebp-4], -1
jmp .Lt_0135
.Lt_0137:
.Lt_0136:
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 21
je .Lt_0139
mov dword ptr [ebp-4], 0
jmp .Lt_0135
.Lt_0139:
.Lt_0138:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_013B
mov dword ptr [ebp-4], -1
jmp .Lt_0135
.Lt_013B:
.Lt_013A:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 21
je .Lt_013D
mov dword ptr [ebp-4], 0
jmp .Lt_0135
.Lt_013D:
.Lt_013C:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_013F
mov dword ptr [ebp-4], -1
jmp .Lt_0135
.Lt_013F:
.Lt_013E:
mov dword ptr [ebp-4], 0
.Lt_0135:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLCTORLIST:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_0140:
cmp dword ptr [ebp+16], 0
je .Lt_0143
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
jmp .Lt_0142
.Lt_0143:
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
.Lt_0142:
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
call SYMBADDTEMPVAR
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+16], 0
je .Lt_0145
cmp dword ptr [ebp+8], 0
je .Lt_0147
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_0146
.Lt_0147:
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
call ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_0146:
jmp .Lt_0144
.Lt_0145:
cmp dword ptr [ebp+8], 0
je .Lt_0149
push 0
push 0
push 0
push dword ptr [ebp+12]
call ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_0148
.Lt_0149:
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
call ASTBUILDVARFIELD
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_0148:
.Lt_0144:
push 64
push dword ptr [ebp-24]
call ASTNEWADDROF
add esp, 4
push eax
push dword ptr [ebp-16]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 12
mov dword ptr [ebp-28], eax
push -1
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call ASTBUILDFORBEGIN
add esp, 20
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp+8], 0
je .Lt_014B
push 0
push dword ptr [ebp-16]
call ASTBUILDVARDEREF
add esp, 4
push eax
push dword ptr [ebp-20]
call ASTBUILDCTORCALL
add esp, 8
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
jmp .Lt_014A
.Lt_014B:
push 0
push 0
push dword ptr [ebp-16]
call ASTBUILDVARDEREF
add esp, 4
push eax
push dword ptr [ebp-20]
call ASTBUILDDTORCALL
add esp, 12
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
.Lt_014A:
push 0
cmp dword ptr [ebp+8], 0
je .Lt_014C
mov dword ptr [ebp-44], 1
jmp .Lt_01E3
.Lt_014C:
mov dword ptr [ebp-44], -1
.Lt_01E3:
push dword ptr [ebp-44]
push dword ptr [ebp-16]
call ASTBUILDVARINC
add esp, 8
push eax
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-28], eax
push 0
push 8
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp-28]
call ASTBUILDFOREND
add esp, 16
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
.Lt_0141:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLFIELDCTOR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_014E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_0151
jmp .Lt_014F
.Lt_0151:
.Lt_0150:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+12]
and eax, 2048
test eax, eax
je .Lt_0153
jmp .Lt_014F
.Lt_0153:
.Lt_0152:
push dword ptr [ebp+12]
call SYMBHASDEFCTOR
add esp, 4
test eax, eax
je .Lt_0155
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+60], 0
jne .Lt_0157
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call ASTBUILDCTORCALL
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_0156
.Lt_0157:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push -1
call HCALLCTORLIST
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0156:
jmp .Lt_014F
.Lt_0155:
.Lt_0154:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+112], 0
jle .Lt_0159
push 64
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_0158
.Lt_0159:
push 0
push 0
push 0
push 8
push dword ptr [ebp+12]
call SYMBGETREALSIZE
add esp, 4
push edx
push eax
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
push 107
call ASTNEWMEM
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0158:
.Lt_014F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCLEARUNIONFIELDS:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_015A:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-32], ecx
mov dword ptr [ebp-28], ebx
.Lt_015C:
push dword ptr [ebp-8]
call SYMBGETREALSIZE
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
jl .Lt_0160
jg .Lt_01E6
cmp dword ptr [ebp-24], edx
jbe .Lt_0160
.Lt_01E6:
mov eax, dword ptr [ebp-24]
mov edx, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
.Lt_0160:
.Lt_015F:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [eax+172]
mov dword ptr [ebp-8], edx
.Lt_015E:
cmp dword ptr [ebp-8], 0
je .Lt_0161
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
jmp .Lt_01E4
.Lt_0161:
mov dword ptr [ebp-36], 0
.Lt_01E4:
cmp dword ptr [ebp-36], 0
je .Lt_0163
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [edx+12]
and eax, 16777216
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .Lt_01E5
.Lt_0163:
mov dword ptr [ebp-40], 0
.Lt_01E5:
cmp dword ptr [ebp-40], 0
jne .Lt_015C
.Lt_015D:
mov eax, dword ptr [ebp+16]
mov edx, dword ptr [ebp-8]
mov dword ptr [eax], edx
push 0
push 0
push 0
push 8
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call ASTNEWCONSTI
add esp, 16
push eax
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
push 107
call ASTNEWMEM
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_015B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HINITDYNAMICARRAYFIELD:
push ebp
mov ebp, esp
sub esp, 128
push ebx
mov dword ptr [ebp-4], 0
.Lt_0165:
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
call ASTTYPEINICLONE
add esp, 4
mov dword ptr [ebp-120], eax
mov dword ptr [ebp-128], 0
mov eax, dword ptr [ebp-120]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-124], ebx
.Lt_0168:
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
.Lt_016A:
cmp dword ptr [ebp-124], 0
jne .Lt_0168
.Lt_0169:
push dword ptr [ebp-120]
call ASTDELTREE
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
call ASTBUILDVARFIELD
add esp, 16
push eax
call RTLARRAYREDIM
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0166:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLFIELDCTORS:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_016B:
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
.Lt_016D:
cmp dword ptr [ebp-8], 0
je .Lt_016E
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 12
jne .Lt_0170
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+96]
cmp dword ptr [ebp-8], eax
je .Lt_0172
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .Lt_0174
push 0
lea ebx, [ebp-8]
push ebx
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HCLEARUNIONFIELDS
add esp, 12
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_016D
jmp .Lt_0173
.Lt_0174:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 0
jne .Lt_0176
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HCALLFIELDCTOR
add esp, 8
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_0175
.Lt_0176:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_0177
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HINITDYNAMICARRAYFIELD
add esp, 8
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_0175
.Lt_0177:
push 0
push 64
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call ASTTYPEINICLONE
add esp, 4
push eax
push 0
push 0
push 0
push dword ptr [ebp-12]
call ASTBUILDVARFIELD
add esp, 16
push eax
call _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
add esp, 16
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
.Lt_0175:
.Lt_0173:
.Lt_0172:
.Lt_0171:
.Lt_0170:
.Lt_016F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .Lt_016D
.Lt_016E:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_016C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLBASECTOR:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0178:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 0
jne .Lt_017B
jmp .Lt_0179
.Lt_017B:
.Lt_017A:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
je .Lt_017D
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
call ASTBUILDVARFIELD
add esp, 16
push eax
call _Z15ASTTYPEINIFLUSHP7ASTNODES0_ll
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0179
.Lt_017D:
.Lt_017C:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-20], ebx
push dword ptr [ebp-20]
call SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .Lt_017F
push dword ptr [ebp-24]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_0181
push 0
push 0
push 207
call ERRREPORT
add esp, 12
.Lt_0181:
.Lt_0180:
jmp .Lt_017E
.Lt_017F:
push dword ptr [ebp-20]
call SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
je .Lt_0182
push 0
push 0
push 185
call ERRREPORT
add esp, 12
.Lt_0182:
.Lt_017E:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call HCALLFIELDCTOR
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0179:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HINITVPTR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0183:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 4194304
test ebx, ebx
jne .Lt_0186
jmp .Lt_0184
.Lt_0186:
.Lt_0185:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-8], ebx
push 64
push 0
push 0
push 0
push -2147483648
mov ebx, dword ptr [ENV+272]
sal ebx, 1
mov ecx, ebx
mov eax, ecx
sar eax, 31
push eax
push ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+136]
push dword ptr [eax+144]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
push eax
push 0
push 32
call ASTNEWCONV
add esp, 20
push eax
push 0
push 0
push dword ptr [SYMB+99636]
call SYMBUDTGETFIRSTFIELD
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0184:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLCTORS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0187:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCALLBASECTOR
add esp, 8
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HCALLFIELDCTORS
add esp, 8
push eax
push dword ptr [ebp-4]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call HINITVPTR
add esp, 8
push eax
push dword ptr [ebp-4]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
call ASTFINDFIRSTCODE
add esp, 4
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .Lt_018A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp+8], ebx
.Lt_018A:
.Lt_0189:
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call ASTADDAFTER
add esp, 8
.Lt_0188:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLFIELDDTOR:
push ebp
mov ebp, esp
push ebx
.Lt_018B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_018E
push 0
push -1
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call RTLARRAYERASE
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .Lt_018D
.Lt_018E:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+60], 0
jne .Lt_018F
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .Lt_0191
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call RTLSTRDELETE
add esp, 4
push eax
call ASTADD
add esp, 4
jmp .Lt_0190
.Lt_0191:
push dword ptr [ebp+12]
call SYMBHASDTOR
add esp, 4
test eax, eax
je .Lt_0192
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
call ASTBUILDDTORCALL
add esp, 12
push eax
call ASTADD
add esp, 4
.Lt_0192:
.Lt_0190:
jmp .Lt_018D
.Lt_018F:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .Lt_0194
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call RTLARRAYERASE
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .Lt_0193
.Lt_0194:
push dword ptr [ebp+12]
call SYMBHASDTOR
add esp, 4
test eax, eax
je .Lt_0195
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call HCALLCTORLIST
add esp, 12
push eax
call ASTADD
add esp, 4
.Lt_0195:
.Lt_0193:
.Lt_018D:
.Lt_018C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLFIELDDTORS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
.Lt_0196:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov eax, dword ptr [ebx+60]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-4], ebx
.Lt_0198:
cmp dword ptr [ebp-4], 0
je .Lt_0199
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 12
jne .Lt_019B
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
je .Lt_019D
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call HCALLFIELDDTOR
add esp, 8
.Lt_019D:
.Lt_019C:
.Lt_019B:
.Lt_019A:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+168]
mov dword ptr [ebp-4], eax
jmp .Lt_0198
.Lt_0199:
.Lt_0197:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLBASEDTOR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_019E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+96]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_01A1
jmp .Lt_019F
.Lt_01A1:
.Lt_01A0:
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+32]
call SYMBGETCOMPDTOR
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_01A3
jmp .Lt_019F
.Lt_01A3:
.Lt_01A2:
push dword ptr [ebp-8]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_01A5
push 0
push 0
push 208
call ERRREPORT
add esp, 12
.Lt_01A5:
.Lt_01A4:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 512
test ebx, ebx
je .Lt_01A7
jmp .Lt_019F
.Lt_01A7:
.Lt_01A6:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
push -1
push 0
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call ASTBUILDVARFIELD
add esp, 16
push eax
mov eax, dword ptr [ebp-4]
push dword ptr [eax+32]
call ASTBUILDDTORCALL
add esp, 12
push eax
call ASTADD
add esp, 4
.Lt_019F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLDTORS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01A8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call HCALLFIELDDTORS
add esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call HCALLBASEDTOR
add esp, 8
.Lt_01A9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALLSTATICCTOR:
push ebp
mov ebp, esp
.Lt_01AA:
push 64
push 0
push dword ptr [ebp+12]
call ASTTYPEINICLONE
add esp, 4
push eax
push dword ptr [ebp+8]
call _Z15ASTTYPEINIFLUSHP8FBSYMBOLP7ASTNODEll
add esp, 16
push eax
call ASTADD
add esp, 4
push dword ptr [ebp+12]
call ASTTYPEINIDELETE
add esp, 4
.Lt_01AB:
mov esp, ebp
pop ebp
ret
.balign 16
HCALLSTATICDTOR:
push ebp
mov ebp, esp
push ebx
.Lt_01AC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
je .Lt_01AF
push 0
push -1
push 0
push 0
push 0
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
call RTLARRAYERASE
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .Lt_01AE
.Lt_01AF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jne .Lt_01B1
push 0
push 0
push 0
push 0
push dword ptr [ebp+8]
call ASTBUILDVARFIELD
add esp, 16
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
call ASTBUILDDTORCALL
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .Lt_01B0
.Lt_01B1:
push 0
push dword ptr [ebp+8]
push 0
call HCALLCTORLIST
add esp, 12
push eax
call ASTADD
add esp, 4
.Lt_01B0:
.Lt_01AE:
.Lt_01AD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGENSTATICINSTANCESDTORS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_01B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_01B5
jmp .Lt_01B3
.Lt_01B5:
.Lt_01B4:
push dword ptr [ebp-4]
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_01B6:
cmp dword ptr [ebp-8], 0
je .Lt_01B7
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax]
call ASTPROCBEGIN
add esp, 8
mov eax, dword ptr [AST+40]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
push dword ptr [eax+4]
call HCALLSTATICDTOR
add esp, 4
push 0
call ASTPROCEND
add esp, 4
push -1
push dword ptr [ebp-12]
call HPROCFLUSH
add esp, 8
push dword ptr [ebp-8]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_01B6
.Lt_01B7:
push dword ptr [ebp-4]
call LISTEND
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+44]
call free
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov dword ptr [eax+44], 0
.Lt_01B3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGLOBCTORBEGIN:
push ebp
mov ebp, esp
sub esp, 8
.Lt_01C2:
push 4
push 3
push 0
push 64
push 0
push 0
cmp dword ptr [ebp+8], 0
je .Lt_01C4
mov eax, offset Lt_0020
mov dword ptr [ebp-8], eax
jmp .Lt_01EE
.Lt_01C4:
mov eax, offset Lt_0021
mov dword ptr [ebp-8], eax
.Lt_01EE:
push dword ptr [ebp-8]
call SYMBUNIQUELABEL
push eax
push 0
call SYMBPREADDPROC
add esp, 4
push eax
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
je .Lt_01C7
push dword ptr [ebp-4]
call SYMBADDGLOBALCTOR
add esp, 4
jmp .Lt_01C6
.Lt_01C7:
push dword ptr [ebp-4]
call SYMBADDGLOBALDTOR
add esp, 4
.Lt_01C6:
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 2
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 128
push 0
push dword ptr [ebp-4]
call ASTPROCBEGIN
add esp, 8
.Lt_01C3:
mov esp, ebp
pop ebp
ret
.balign 16
HGENGLOBALINSTANCESCTOR:
push ebp
mov ebp, esp
sub esp, 8
.Lt_01C8:
cmp dword ptr [AST+108], 0
jle .Lt_01CB
push -1
call HGLOBCTORBEGIN
add esp, 4
lea eax, [AST+76]
push eax
call LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_01CC:
cmp dword ptr [ebp-4], 0
je .Lt_01CD
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+4], 0
je .Lt_01CF
mov eax, dword ptr [ebp-4]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call HCALLSTATICCTOR
add esp, 8
mov eax, dword ptr [ebp-4]
mov dword ptr [eax+4], 0
.Lt_01CF:
.Lt_01CE:
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_01CC
.Lt_01CD:
push 0
call ASTPROCEND
add esp, 4
.Lt_01CB:
.Lt_01CA:
cmp dword ptr [AST+112], 0
jle .Lt_01D1
push 0
call HGLOBCTORBEGIN
add esp, 4
lea eax, [AST+76]
push eax
call LISTGETTAIL
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_01D2:
cmp dword ptr [ebp-4], 0
je .Lt_01D3
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .Lt_01D5
mov eax, dword ptr [ebp-4]
push dword ptr [eax]
call HCALLSTATICDTOR
add esp, 4
.Lt_01D5:
.Lt_01D4:
push dword ptr [ebp-4]
call LISTGETPREV
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_01D2
.Lt_01D3:
push 0
call ASTPROCEND
add esp, 4
.Lt_01D1:
.Lt_01D0:
.Lt_01C9:
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0020:	.ascii	"_GLOBAL__I\0"
.balign 4
Lt_0021:	.ascii	"_GLOBAL__D\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
