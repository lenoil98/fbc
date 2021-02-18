	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBPROCINIT
SYMBPROCINIT:
.Lt_0067:
mov dword ptr [SYMB+99040], 0
mov dword ptr [SYMB+99044], 0
push 6
push 8
push 8
lea eax, [SYMB+99048]
push eax
call LISTINIT
add esp, 16
mov dword ptr [SYMB+99080], 0
mov dword ptr [SYMB+99084], 0
push 6
push 8
push 8
lea eax, [SYMB+99088]
push eax
call LISTINIT
add esp, 16
.Lt_0068:
ret
.balign 16

.globl SYMBPROCEND
SYMBPROCEND:
.Lt_0069:
lea eax, [SYMB+99088]
push eax
call LISTEND
add esp, 4
lea eax, [SYMB+99048]
push eax
call LISTEND
add esp, 4
.Lt_006A:
ret
.balign 16

.globl SYMBPROCALLOCEXT
SYMBPROCALLOCEXT:
push ebp
mov ebp, esp
push ebx
.Lt_006B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
jne .Lt_006E
push 76
call XCALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+112], eax
.Lt_006E:
.Lt_006D:
.Lt_006C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCFREEEXT
SYMBPROCFREEEXT:
push ebp
mov ebp, esp
.Lt_006F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .Lt_0072
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+112], 0
.Lt_0072:
.Lt_0071:
.Lt_0070:
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCRETURNSONSTACK
SYMBPROCRETURNSONSTACK:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0073:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .Lt_0076
jmp .Lt_0074
.Lt_0076:
.Lt_0075:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 20
jne .Lt_0078
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .Lt_0079
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+128]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_007D
.Lt_0079:
mov dword ptr [ebp-8], 0
.Lt_007D:
cmp dword ptr [ebp-8], 0
je .Lt_007C
jmp .Lt_0074
jmp .Lt_007B
.Lt_007C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
and ebx, 511
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_007B:
.Lt_0078:
.Lt_0077:
.Lt_0074:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCALCARGLEN
SYMBCALCARGLEN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0082:
cmp dword ptr [ebp+16], 2
je .Lt_0086
.Lt_0087:
cmp dword ptr [ebp+16], 3
jne .Lt_0085
.Lt_0086:
mov ebx, dword ptr [ENV+272]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
jmp .Lt_0083
.Lt_0085:
.Lt_0084:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call TYPEISTRIVIAL
add esp, 8
test eax, eax
jne .Lt_0089
mov ebx, dword ptr [ENV+272]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
jmp .Lt_0083
.Lt_0089:
.Lt_0088:
push dword ptr [ENV+272]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBCALCLEN
add esp, 8
push edx
push eax
call HALIGNTOPOW2
add esp, 12
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.Lt_0083:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCALCPARAMLEN
SYMBCALCPARAMLEN:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_008A:
cmp dword ptr [ebp+16], 4
jne .Lt_008D
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_008C
.Lt_008D:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBCALCARGLEN
add esp, 12
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.Lt_008C:
.Lt_008B:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCCALCSTDCALLSUFFIXN
SYMBPROCCALCSTDCALLSUFFIXN:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_008E:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-20], ebx
.Lt_0090:
cmp dword ptr [ebp-20], 0
je .Lt_0091
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [ebx+56]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-20]
push dword ptr [ebx+28]
mov ebx, eax
call TYPEISTRIVIAL
add esp, 8
not eax
and ebx, eax
je .Lt_0093
mov eax, dword ptr [ebp-20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-20]
push dword ptr [eax+28]
call SYMBCALCLEN
add esp, 8
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], edx
jmp .Lt_0092
.Lt_0093:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
add dword ptr [ebp-16], ebx
adc dword ptr [ebp-12], edx
.Lt_0092:
mov ebx, dword ptr [ebp-20]
mov edx, dword ptr [ebx+172]
mov dword ptr [ebp-20], edx
jmp .Lt_0090
.Lt_0091:
mov ebx, dword ptr [ebp-16]
mov edx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], edx
.Lt_008F:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCCALCBYTESTOPOP
SYMBPROCCALCBYTESTOPOP:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0095:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
cmp ebx, 3
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
je .Lt_0098
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-24], eax
.Lt_0099:
cmp dword ptr [ebp-24], 0
je .Lt_009A
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add dword ptr [ebp-16], ecx
adc dword ptr [ebp-12], ebx
mov ecx, dword ptr [ebp-24]
mov ebx, dword ptr [ecx+172]
mov dword ptr [ebp-24], ebx
jmp .Lt_0099
.Lt_009A:
.Lt_0098:
.Lt_0097:
push dword ptr [ebp+8]
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .Lt_009C
mov eax, dword ptr [ENV+260]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-20]
je .Lt_009E
mov ebx, dword ptr [ENV+272]
mov eax, ebx
sar eax, 31
add dword ptr [ebp-16], ebx
adc dword ptr [ebp-12], eax
.Lt_009E:
.Lt_009D:
.Lt_009C:
.Lt_009B:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
.Lt_0096:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDPROCPARAM
SYMBADDPROCPARAM:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A1:
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+32]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push 4
push 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+72]
push ebx
push 0
push 1
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00A4
jmp .Lt_00A2
.Lt_00A4:
.Lt_00A3:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
inc ebx
mov eax, dword ptr [ebp+8]
mov word ptr [eax+68], bx
push dword ptr [ebp+28]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call SYMBCALCPARAMLEN
add esp, 12
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+40], eax
mov dword ptr [ebx+44], edx
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp+28]
mov dword ptr [eax+56], edx
mov edx, dword ptr [ebp-8]
mov dword ptr [edx+64], 0
mov edx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+24]
mov dword ptr [edx+68], eax
cmp dword ptr [ebp+28], 3
jne .Lt_00A6
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+24]
call SYMBADDARRAYDESCRIPTORTYPE
add esp, 12
mov edx, dword ptr [ebp-8]
mov dword ptr [edx+72], eax
jmp .Lt_00A5
.Lt_00A6:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+72], 0
.Lt_00A5:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_00A7
mov dword ptr [ebp-12], 24
jmp .Lt_00AF
.Lt_00A7:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_00AF:
cmp dword ptr [ebp-12], 20
jne .Lt_00AA
cmp dword ptr [ebp+28], 1
jne .Lt_00AC
mov eax, dword ptr [SYMB+98528]
cmp dword ptr [ebp+20], eax
jne .Lt_00AE
mov eax, dword ptr [ebp+20]
or dword ptr [eax+116], 32
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
.Lt_00AB:
.Lt_00AA:
.Lt_00A9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBMAKEPARAMOPTIONAL
SYMBMAKEPARAMOPTIONAL:
push ebp
mov ebp, esp
push ebx
.Lt_00B0:
cmp dword ptr [ebp+16], 0
jne .Lt_00B3
jmp .Lt_00B1
.Lt_00B3:
.Lt_00B2:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+70]
inc eax
mov ebx, dword ptr [ebp+8]
mov word ptr [ebx+70], ax
.Lt_00B1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBISPROCOVERLOADOF
SYMBISPROCOVERLOADOF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B4:
cmp dword ptr [ebp+12], 0
jne .Lt_00B7
mov dword ptr [ebp-4], 0
jmp .Lt_00B5
.Lt_00B7:
.Lt_00B6:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jne .Lt_00B9
mov dword ptr [ebp-4], -1
jmp .Lt_00B5
.Lt_00B9:
.Lt_00B8:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
jne .Lt_00BB
mov dword ptr [ebp-4], 0
jmp .Lt_00B5
.Lt_00BB:
.Lt_00BA:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+108]
mov dword ptr [ebp-8], eax
.Lt_00BC:
cmp dword ptr [ebp-8], 0
je .Lt_00BD
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+8], eax
jne .Lt_00BF
mov dword ptr [ebp-4], -1
jmp .Lt_00B5
.Lt_00BF:
.Lt_00BE:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp-8], ebx
jmp .Lt_00BC
.Lt_00BD:
mov dword ptr [ebp-4], 0
.Lt_00B5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCRECALCREALTYPE
SYMBPROCRECALCREALTYPE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .Lt_00C3
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov eax, dword ptr [ebp-4]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 32505856
or ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_00C3:
.Lt_00C2:
mov ebx, dword ptr [ebp-4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 17
je .Lt_00C7
.Lt_00C8:
cmp dword ptr [ebp-12], 7
jne .Lt_00C6
.Lt_00C7:
mov ebx, dword ptr [ebp-4]
and ebx, 31
mov eax, dword ptr [ebp-4]
and eax, 480
add eax, 32
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-4]
and eax, 32505856
or ebx, eax
mov dword ptr [ebp-4], ebx
jmp .Lt_00C4
.Lt_00C6:
cmp dword ptr [ebp-12], 20
jne .Lt_00C9
.Lt_00CA:
mov ebx, dword ptr [SYMB+98528]
cmp dword ptr [ebp-8], ebx
jne .Lt_00CC
mov ebx, dword ptr [ebp-8]
or dword ptr [ebx+116], 64
jmp .Lt_00CB
.Lt_00CC:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+124]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
and eax, 31
cmp eax, 20
je .Lt_00CE
mov dword ptr [ebp-8], 0
.Lt_00CE:
.Lt_00CD:
.Lt_00CB:
.Lt_00C9:
.Lt_00C4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+88], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+92], eax
.Lt_00C1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDPROC
SYMBADDPROC:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_018E:
mov eax, dword ptr [SYMB+98528]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
lea ebx, [eax+56]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-8]
lea eax, [ebx+68]
mov dword ptr [ebp-16], eax
or dword ptr [ebp+28], 1
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HSETUPPROC
add esp, 48
mov dword ptr [ebp-4], eax
.Lt_018F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDOPERATOR
SYMBADDOPERATOR:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0190:
push dword ptr [ebp+8]
call SYMBPROCALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+40], eax
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+8]
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0193
push dword ptr [ebp+8]
call SYMBPROCFREEEXT
add esp, 4
jmp .Lt_0191
.Lt_0193:
.Lt_0192:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0191:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDCTOR
SYMBADDCTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0194:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push 0
push 0
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
call SYMBADDPROC
add esp, 36
mov dword ptr [ebp-4], eax
.Lt_0195:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE
SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0196:
cmp dword ptr [PARSER+96], 0
jne .Lt_0199
lea eax, [SYMB+98352]
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
lea eax, [ebx+56]
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
lea eax, [ebx+68]
mov ebx, dword ptr [ebp+28]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 1
jmp .Lt_0198
.Lt_0199:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [SYMB+98528]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+24]
mov eax, dword ptr [SYMB+98536]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
lea eax, [ebx+68]
mov ebx, dword ptr [ebp+28]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 128
.Lt_0198:
push 0
push -1
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_019B
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.Lt_019B:
.Lt_019A:
.Lt_0197:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDPROCPTR
SYMBADDPROCPTR:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_019C:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+20]
or dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+24]
or dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+28], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+32], eax
push 0
push 7
push offset Lt_019E
push -1
lea eax, [ebp-32]
push eax
call fb_StrAssign
add esp, 20
push 0
push dword ptr [ebp+8]
push 22
lea eax, [ebp-32]
push eax
call SYMBMANGLETYPE
add esp, 16
call SYMBMANGLERESETABBREV
push 0
push 2
push offset Lt_019F
push -1
lea eax, [ebp-32]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+28]
call fb_HEX_i
add esp, 4
push eax
push -1
lea eax, [ebp-32]
push eax
call fb_StrConcatAssign
add esp, 20
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp+24]
push eax
lea eax, [ebp+20]
push eax
push dword ptr [ebp-32]
call SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE
add esp, 24
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_01A1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_019D
.Lt_01A1:
.Lt_01A0:
push 5
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call SYMBUNIQUEID
add esp, 4
push eax
push dword ptr [ebp-32]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call HSETUPPROC
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_01A3
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 16384
.Lt_01A3:
.Lt_01A2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
lea eax, [ebp-32]
push eax
call fb_StrDelete
add esp, 4
.Lt_019D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDPROCPTRFROMFUNCTION
SYMBADDPROCPTRFROMFUNCTION:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A4:
push 0
call SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+96]
mov dword ptr [ebx+96], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-12], ebx
.Lt_01A6:
cmp dword ptr [ebp-12], 0
je .Lt_01A7
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+4]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+56]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+68]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+28]
push 0
push dword ptr [ebp-8]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 2048
test ebx, ebx
je .Lt_01A9
mov ebx, dword ptr [ebp-24]
or dword ptr [ebx+12], 2048
.Lt_01A9:
.Lt_01A8:
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+64]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call SYMBMAKEPARAMOPTIONAL
add esp, 12
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-12], eax
jmp .Lt_01A6
.Lt_01A7:
mov dword ptr [ebp-16], 2048
mov dword ptr [ebp-20], 2048
or dword ptr [ebp-20], 1024
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-20]
and ebx, dword ptr [eax+8]
push ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-16]
and eax, dword ptr [ebx+4]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [ebp-8]
call SYMBADDPROCPTR
add esp, 24
mov dword ptr [ebp-4], eax
.Lt_01A5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPREADDPROC
SYMBPREADDPROC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01AA:
lea eax, [SYMB+4]
push eax
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax], 3
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+12], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+24], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+28], -2147483648
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+32], 0
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+36], 0
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+38], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+40], 0
mov dword ptr [ebx+44], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+48], 0
mov dword ptr [ebx+52], 0
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+68], 0
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+70], 0
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+76], 0
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+80], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ENV+252]
mov dword ptr [eax+84], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+88], -2147483648
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+92], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+96], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+100], 0
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+104], 0
mov ebx, dword ptr [ebp-8]
mov word ptr [ebx+106], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+108], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+112], 0
mov ebx, dword ptr [SYMB+98528]
lea eax, [ebx+56]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+160], eax
mov eax, dword ptr [SYMB+98528]
lea ebx, [eax+68]
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+140], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+144], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+148], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+152], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+156], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+164], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+168], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+172], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_01AB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_
_Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_:
push ebp
mov ebp, esp
push ebx
.Lt_01AC:
cmp dword ptr [ebp+8], 1
jne .Lt_01AF
.Lt_01B0:
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call TYPEISTRIVIAL
add esp, 8
test eax, eax
jne .Lt_01B2
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
and ecx, 32505856
or ebx, ecx
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], ebx
.Lt_01B2:
.Lt_01B1:
jmp .Lt_01AE
.Lt_01AF:
cmp dword ptr [ebp+8], 2
jne .Lt_01B3
.Lt_01B4:
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [ebx]
and ecx, 31
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 480
add eax, 32
or ecx, eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 261632
sal ebx, 1
or ecx, ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 32505856
or ecx, eax
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], ecx
jmp .Lt_01AE
.Lt_01B3:
cmp dword ptr [ebp+8], 3
jne .Lt_01B5
.Lt_01B6:
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 52
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx], eax
.Lt_01B5:
.Lt_01AE:
.Lt_01AD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_
_Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_:
push ebp
mov ebp, esp
push ebx
.Lt_01B7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ecx+32]
mov dword ptr [ebx], eax
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+72]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_
add esp, 16
.Lt_01B8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDVARFORPARAM
SYMBADDVARFORPARAM:
push ebp
mov ebp, esp
sub esp, 76
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B9:
lea eax, [ebp-20]
mov dword ptr [ebp-56], eax
lea eax, [ebp-20]
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], 16
mov dword ptr [ebp-44], 16
mov dword ptr [ebp-40], 1
mov dword ptr [ebp-36], 49
mov dword ptr [ebp-32], 1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-76], eax
jmp .Lt_01BD
.Lt_01BF:
mov dword ptr [ebp-64], 32768
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-68]
call TYPEISTRIVIAL
add esp, 8
test eax, eax
jne .Lt_01C1
mov dword ptr [ebp-64], 65536
.Lt_01C1:
.Lt_01C0:
jmp .Lt_01BC
.Lt_01C2:
mov dword ptr [ebp-64], 65536
jmp .Lt_01BC
.Lt_01C3:
mov dword ptr [ebp-64], 16384
jmp .Lt_01BC
.Lt_01C4:
jmp .Lt_01BA
jmp .Lt_01BC
.Lt_01BD:
mov eax, dword ptr [ebp-76]
add eax, 4294967295
cmp eax, 2
ja .Lt_01C4
mov eax, dword ptr [ebp-76]
jmp dword ptr [.LT_01C5+eax*4-4]
.LT_01C5:
.int .Lt_01BF
.int .Lt_01C2
.int .Lt_01C3
.Lt_01BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .Lt_01C7
or dword ptr [ebp-64], 1048576
.Lt_01C7:
.Lt_01C6:
push 0
push dword ptr [ebp-64]
lea ebx, [ebp-56]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+68]
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
push dword ptr [ebp-68]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .Lt_01C9
jmp .Lt_01BA
.Lt_01C9:
.Lt_01C8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-60]
mov ecx, dword ptr [eax+72]
mov dword ptr [ebx+88], ecx
mov ecx, dword ptr [ebp-60]
or dword ptr [ecx+12], 8
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
and ebx, 2048
test ebx, ebx
je .Lt_01CB
mov ebx, dword ptr [ebp-60]
or dword ptr [ebx+12], 2048
.Lt_01CB:
.Lt_01CA:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
and ecx, 524288
je .Lt_01CD
mov ecx, dword ptr [ebp-60]
or dword ptr [ecx+12], 524288
.Lt_01CD:
.Lt_01CC:
mov ecx, dword ptr [ebp-60]
mov dword ptr [ebp-4], ecx
.Lt_01BA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDVARFORPROCRESULTPARAM
SYMBADDVARFORPROCRESULTPARAM:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.Lt_01CE:
lea eax, [ebp-20]
mov dword ptr [ebp-56], eax
lea eax, [ebp-20]
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], 16
mov dword ptr [ebp-44], 16
mov dword ptr [ebp-40], 1
mov dword ptr [ebp-36], 49
mov dword ptr [ebp-32], 1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push dword ptr [ebp+8]
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
jne .Lt_01D2
mov dword ptr [ebp-4], 0
jmp .Lt_01CF
.Lt_01D2:
.Lt_01D1:
push 1
push 65536
lea eax, [ebp-56]
push eax
push 0
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push 20
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-60], eax
push dword ptr [ebp+8]
call SYMBPROCALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-60]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-60]
or dword ptr [eax+12], 8
mov eax, dword ptr [ebp-60]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-4], eax
.Lt_01CF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDPROCRESULTVAR
SYMBADDPROCRESULTVAR:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_01D3:
lea eax, [ebp-20]
mov dword ptr [ebp-56], eax
lea eax, [ebp-20]
mov dword ptr [ebp-52], eax
mov dword ptr [ebp-48], 16
mov dword ptr [ebp-44], 16
mov dword ptr [ebp-40], 1
mov dword ptr [ebp-36], 49
mov dword ptr [ebp-32], 1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push dword ptr [ebp+8]
call SYMBPROCRETURNSONSTACK
add esp, 4
test eax, eax
je .Lt_01D7
push dword ptr [ebp+8]
call SYMBGETPROCRESULT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_01D4
.Lt_01D7:
.Lt_01D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-64], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
je .Lt_01D9
mov eax, dword ptr [ebp-64]
and eax, 31
mov ebx, dword ptr [ebp-64]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-64]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-64]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-64], eax
.Lt_01D9:
.Lt_01D8:
push 1
push 131072
lea eax, [ebp-56]
push eax
push 0
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-64]
push 0
push offset Lt_01DA
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-60], eax
push dword ptr [ebp+8]
call SYMBPROCALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-60]
mov dword ptr [ebx], eax
push -1
push dword ptr [ebp-60]
call ASTNEWDECL
add esp, 8
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-60]
or dword ptr [eax+12], 8
mov eax, dword ptr [ebp-60]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-4], eax
.Lt_01D4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDPROCINSTANCEPARAM
SYMBADDPROCINSTANCEPARAM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01DB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 10
jne .Lt_01DF
.Lt_01E0:
mov dword ptr [ebp-4], 20
jmp .Lt_01DD
.Lt_01DF:
cmp dword ptr [ebp-8], 11
jne .Lt_01E1
.Lt_01E2:
.Lt_01E1:
.Lt_01DD:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 2048
test eax, eax
je .Lt_01E4
or dword ptr [ebp-4], 512
.Lt_01E4:
.Lt_01E3:
push 0
push 524288
push 2
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-4]
push offset Lt_0022
push dword ptr [ebp+12]
call SYMBADDPROCPARAM
add esp, 32
.Lt_01DC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDOVERLOADPROC
SYMBFINDOVERLOADPROC:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_01E5:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_01E8
mov dword ptr [ebp-4], 0
jmp .Lt_01E6
.Lt_01E8:
.Lt_01E7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
cmp ecx, 3
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_01EA
mov dword ptr [ebp-4], 0
jmp .Lt_01E6
.Lt_01EA:
.Lt_01E9:
mov ecx, dword ptr [ebp+12]
movsx eax, word ptr [ecx+68]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
je .Lt_01EC
dec dword ptr [ebp-32]
.Lt_01EC:
.Lt_01EB:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+8]
and eax, 32
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.Lt_01ED:
mov eax, dword ptr [ebp-8]
movsx ecx, word ptr [eax+68]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8]
and eax, 2
test eax, eax
je .Lt_01F1
dec dword ptr [ebp-28]
.Lt_01F1:
.Lt_01F0:
cmp dword ptr [ebp-40], 0
je .Lt_01F3
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .Lt_01F5
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+28]
and ecx, 511
test ecx, ecx
jne .Lt_01F7
mov dword ptr [ebp-28], -1
.Lt_01F7:
.Lt_01F6:
jmp .Lt_01F4
.Lt_01F5:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+28]
and eax, 511
test eax, eax
je .Lt_01F9
mov dword ptr [ebp-28], -1
.Lt_01F9:
.Lt_01F8:
.Lt_01F4:
.Lt_01F3:
.Lt_01F2:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jne .Lt_01FB
cmp dword ptr [ebp-32], 0
jne .Lt_01FD
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01E6
.Lt_01FD:
.Lt_01FC:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+80]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-16], eax
.Lt_01FE:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call HCANOVERLOADBYDESC
add esp, 8
test eax, eax
je .Lt_0202
jmp .Lt_01FF
.Lt_0202:
.Lt_0201:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+28]
cmp dword ptr [eax+28], ebx
je .Lt_0204
jmp .Lt_01FF
.Lt_0204:
.Lt_0203:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+32]
cmp dword ptr [ebx+32], ecx
je .Lt_0206
jmp .Lt_01FF
.Lt_0206:
.Lt_0205:
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+168]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+168]
mov dword ptr [ebp-12], ecx
dec dword ptr [ebp-28]
.Lt_0200:
cmp dword ptr [ebp-28], 0
jg .Lt_01FE
.Lt_01FF:
cmp dword ptr [ebp-28], 0
jne .Lt_0208
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .Lt_01E6
.Lt_0208:
.Lt_0207:
.Lt_01FB:
.Lt_01FA:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+108]
mov dword ptr [ebp-8], ebx
.Lt_01EF:
cmp dword ptr [ebp-8], 0
jne .Lt_01ED
.Lt_01EE:
mov dword ptr [ebp-4], 0
.Lt_01E6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDOPOVLPROC
SYMBFINDOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_020E:
cmp dword ptr [ebp+8], 27
je .Lt_0211
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call SYMBFINDOVERLOADPROC
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_020F
.Lt_0211:
.Lt_0210:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_0212:
cmp dword ptr [ebp-8], 0
je .Lt_0213
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+28]
cmp dword ptr [eax+28], ecx
jne .Lt_0215
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
cmp dword ptr [ecx+32], ebx
jne .Lt_0217
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_020F
.Lt_0217:
.Lt_0216:
.Lt_0215:
.Lt_0214:
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+108]
mov dword ptr [ebp-8], ecx
jmp .Lt_0212
.Lt_0213:
mov dword ptr [ebp-4], 0
.Lt_020F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDCTORPROC
SYMBFINDCTORPROC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0218:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
je .Lt_021B
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_0219
jmp .Lt_021A
.Lt_021B:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBFINDOVERLOADPROC
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_021A:
.Lt_0219:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDCLOSESTOVLPROC
SYMBFINDCLOSESTOVLPROC:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.Lt_02D8:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 0
jne .Lt_02DB
mov dword ptr [ebp-4], 0
jmp .Lt_02D9
.Lt_02DB:
.Lt_02DA:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-36], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-8], ebx
.Lt_02DC:
mov ebx, dword ptr [ebp-8]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_02E0
dec dword ptr [ebp-48]
.Lt_02E0:
.Lt_02DF:
cmp dword ptr [ebp-44], 0
je .Lt_02E2
mov ebx, dword ptr [ebp+24]
and ebx, 1
test ebx, ebx
je .Lt_02E4
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
jne .Lt_02E6
mov dword ptr [ebp-48], -1
.Lt_02E6:
.Lt_02E5:
jmp .Lt_02E3
.Lt_02E4:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_02E8
mov dword ptr [ebp-48], -1
.Lt_02E8:
.Lt_02E7:
.Lt_02E3:
.Lt_02E2:
.Lt_02E1:
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebp+12], ebx
jg .Lt_02EA
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_02EC
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-16], eax
.Lt_02EC:
.Lt_02EB:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-56], 0
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-60], eax
jmp .Lt_02EE
.Lt_02F1:
mov eax, dword ptr [ebp-40]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-40]
push dword ptr [eax]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call HCHECKOVLPARAM
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_02F3
mov dword ptr [ebp-24], 0
jmp .Lt_02F0
.Lt_02F3:
.Lt_02F2:
cmp dword ptr [ebp-20], 52
jl .Lt_02F5
inc dword ptr [ebp-32]
.Lt_02F5:
.Lt_02F4:
mov eax, dword ptr [ebp-20]
add dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-40]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-40], eax
.Lt_02EF:
inc dword ptr [ebp-56]
.Lt_02EE:
mov eax, dword ptr [ebp-60]
cmp dword ptr [ebp-56], eax
jle .Lt_02F1
.Lt_02F0:
mov eax, dword ptr [ebp+12]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-24]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov dword ptr [ebp-52], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-56], eax
mov eax, dword ptr [ebp-48]
dec eax
mov dword ptr [ebp-60], eax
jmp .Lt_02F7
.Lt_02FA:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+64], 0
jne .Lt_02FC
mov dword ptr [ebp-52], 0
jmp .Lt_02F9
.Lt_02FC:
.Lt_02FB:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-16], ebx
.Lt_02F8:
inc dword ptr [ebp-56]
.Lt_02F7:
mov ebx, dword ptr [ebp-60]
cmp dword ptr [ebp-56], ebx
jle .Lt_02FA
.Lt_02F9:
cmp dword ptr [ebp-52], 0
je .Lt_02FE
mov ebx, dword ptr [ebp-36]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-24]
cmp eax, dword ptr [ebp-28]
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0300
mov dword ptr [ebp-56], -1
mov eax, dword ptr [ebp+24]
and eax, 2
je .Lt_0302
mov eax, dword ptr [ebp-32]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
.Lt_0302:
.Lt_0301:
cmp dword ptr [ebp-56], 0
je .Lt_0304
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-36], 1
.Lt_0304:
.Lt_0303:
jmp .Lt_02FF
.Lt_0300:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jne .Lt_0305
inc dword ptr [ebp-36]
.Lt_0305:
.Lt_02FF:
.Lt_02FE:
.Lt_02FD:
.Lt_02EA:
.Lt_02E9:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp-8], ebx
.Lt_02DE:
cmp dword ptr [ebp-8], 0
jne .Lt_02DC
.Lt_02DD:
cmp dword ptr [ebp-36], 1
jle .Lt_0307
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 98
mov dword ptr [ebp-4], 0
jmp .Lt_0306
.Lt_0307:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.Lt_0306:
.Lt_02D9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDBOPOVLPROC
SYMBFINDBOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_030E:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 20
je .Lt_0313
.Lt_0314:
cmp dword ptr [ebp-36], 10
jne .Lt_0312
.Lt_0313:
jmp .Lt_0310
.Lt_0312:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 20
je .Lt_0319
.Lt_031A:
cmp dword ptr [ebp-40], 10
jne .Lt_0318
.Lt_0319:
jmp .Lt_0316
.Lt_0318:
mov dword ptr [ebp-4], 0
jmp .Lt_030F
.Lt_031B:
.Lt_0316:
.Lt_0315:
.Lt_0310:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], -1
lea eax, [ebp-28]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], -1
mov dword ptr [ebp-20], 0
push 2
push dword ptr [ebp+20]
lea eax, [ebp-16]
push eax
push 2
mov eax, dword ptr [ebp+8]
sal eax, 2
mov ebx, offset SYMB
add ebx, eax
push dword ptr [ebx+99120]
call SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_031D
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
je .Lt_031F
push 0
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call ERRREPORT
add esp, 12
.Lt_031F:
.Lt_031E:
.Lt_031D:
.Lt_031C:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
.Lt_030F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDSELFBOPOVLPROC
SYMBFINDSELFBOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0320:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 20
jne .Lt_0324
.Lt_0325:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+136], 0
jne .Lt_0327
mov dword ptr [ebp-4], 0
jmp .Lt_0321
.Lt_0327:
.Lt_0326:
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov ecx, dword ptr [eax+136]
add ecx, ebx
mov ebx, dword ptr [ecx+28]
mov dword ptr [ebp-24], ebx
jmp .Lt_0322
.Lt_0324:
mov dword ptr [ebp-4], 0
jmp .Lt_0321
.Lt_0328:
.Lt_0322:
cmp dword ptr [ebp-24], 0
jne .Lt_032A
mov dword ptr [ebp-4], 0
jmp .Lt_0321
.Lt_032A:
.Lt_0329:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebp-16], ebx
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+20]
lea ebx, [ebp-16]
push ebx
push 1
push dword ptr [ebp-24]
call SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_032C
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
je .Lt_032E
push 0
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call ERRREPORT
add esp, 12
.Lt_032E:
.Lt_032D:
jmp .Lt_032B
.Lt_032C:
push dword ptr [ebp-20]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_0330
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 202
push 0
push 1
push 0
push dword ptr [ebp-20]
call SYMBGETFULLPROCNAME
add esp, 4
push eax
push 202
call ERRREPORTEX
add esp, 20
mov dword ptr [ebp-20], 0
.Lt_0330:
.Lt_032F:
.Lt_032B:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0321:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDUOPOVLPROC
SYMBFINDUOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0331:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 20
je .Lt_0336
.Lt_0337:
cmp dword ptr [ebp-24], 10
jne .Lt_0335
.Lt_0336:
jmp .Lt_0333
.Lt_0335:
mov dword ptr [ebp-4], 0
jmp .Lt_0332
.Lt_0338:
.Lt_0333:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebp-16], ebx
mov dword ptr [ebp-12], -1
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+16]
lea ebx, [ebp-16]
push ebx
push 1
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, offset SYMB
add eax, ebx
push dword ptr [eax+99120]
call SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_033A
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .Lt_033C
push 0
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call ERRREPORT
add esp, 12
.Lt_033C:
.Lt_033B:
.Lt_033A:
.Lt_0339:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0332:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDSELFUOPOVLPROC
SYMBFINDSELFUOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_033D:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 20
jne .Lt_0341
.Lt_0342:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+136], 0
jne .Lt_0344
mov dword ptr [ebp-4], 0
jmp .Lt_033E
.Lt_0344:
.Lt_0343:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov ecx, dword ptr [eax+136]
add ecx, ebx
mov ebx, dword ptr [ecx+28]
mov dword ptr [ebp-12], ebx
jmp .Lt_033F
.Lt_0341:
mov dword ptr [ebp-4], 0
jmp .Lt_033E
.Lt_0345:
.Lt_033F:
cmp dword ptr [ebp-12], 0
jne .Lt_0347
mov dword ptr [ebp-4], 0
jmp .Lt_033E
.Lt_0347:
.Lt_0346:
push 0
push dword ptr [ebp+16]
push 0
push 0
push dword ptr [ebp-12]
call SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0349
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .Lt_034B
push 0
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call ERRREPORT
add esp, 12
.Lt_034B:
.Lt_034A:
jmp .Lt_0348
.Lt_0349:
push dword ptr [ebp-8]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_034D
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 202
push 0
push 1
push 0
push dword ptr [ebp-8]
call SYMBGETFULLPROCNAME
add esp, 4
push eax
push 202
call ERRREPORTEX
add esp, 20
mov dword ptr [ebp-8], 0
.Lt_034D:
.Lt_034C:
.Lt_0348:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_033E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDCASTOVLPROC
SYMBFINDCASTOVLPROC:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_0368:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 20
jne .Lt_036C
.Lt_036D:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
jne .Lt_036F
mov dword ptr [ebp-4], 0
jmp .Lt_0369
.Lt_036F:
.Lt_036E:
mov eax, dword ptr [ebp-44]
cmp dword ptr [eax+136], 0
jne .Lt_0371
mov dword ptr [ebp-4], 0
jmp .Lt_0369
.Lt_0371:
.Lt_0370:
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+136]
mov eax, dword ptr [ebx+136]
mov dword ptr [ebp-8], eax
jmp .Lt_036A
.Lt_036C:
mov dword ptr [ebp-4], 0
jmp .Lt_0369
.Lt_0372:
.Lt_036A:
cmp dword ptr [ebp-8], 0
jne .Lt_0374
mov dword ptr [ebp-4], 0
jmp .Lt_0369
.Lt_0374:
.Lt_0373:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0375
mov dword ptr [ebp-36], 24
jmp .Lt_038E
.Lt_0375:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_038E:
cmp dword ptr [ebp-36], 0
je .Lt_0378
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-16], eax
.Lt_0379:
cmp dword ptr [ebp-16], 0
je .Lt_037A
push dword ptr [ebp+24]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call HCHECKCASTOVL
add esp, 16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jle .Lt_037C
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-32], 1
jmp .Lt_037B
.Lt_037C:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jne .Lt_037D
cmp dword ptr [ebp-28], 0
jle .Lt_037F
inc dword ptr [ebp-32]
.Lt_037F:
.Lt_037E:
.Lt_037D:
.Lt_037B:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp-16], ebx
jmp .Lt_0379
.Lt_037A:
jmp .Lt_0377
.Lt_0378:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-16], ebx
.Lt_0380:
cmp dword ptr [ebp-16], 0
je .Lt_0381
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+32], 0
jne .Lt_0383
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 16
jg .Lt_0385
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, dword ptr [ebp+8]
cmp ebx, eax
jle .Lt_0387
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp+8], ebx
.Lt_0387:
.Lt_0386:
.Lt_0385:
.Lt_0384:
.Lt_0383:
.Lt_0382:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+108]
mov dword ptr [ebp-16], eax
jmp .Lt_0380
.Lt_0381:
.Lt_0377:
cmp dword ptr [ebp-32], 1
jle .Lt_0389
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 98
push 98
push 0
push 0
push dword ptr [ebp-8]
call ERRREPORTPARAM
add esp, 16
mov dword ptr [ebp-20], 0
jmp .Lt_0388
.Lt_0389:
cmp dword ptr [ebp-20], 0
je .Lt_038B
push dword ptr [ebp-20]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_038D
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 202
push 0
push 1
push 0
push dword ptr [ebp-20]
call SYMBGETFULLPROCNAME
add esp, 4
push eax
push 202
call ERRREPORTEX
add esp, 20
mov dword ptr [ebp-20], 0
.Lt_038D:
.Lt_038C:
.Lt_038B:
.Lt_038A:
.Lt_0388:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0369:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFINDCTOROVLPROC
SYMBFINDCTOROVLPROC:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_038F:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+20]
lea eax, [ebp-16]
push eax
push 1
push dword ptr [ebp+8]
call SYMBGETCOMPCTORHEAD
add esp, 4
push eax
call SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_0390:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBDELPROTOTYPE
SYMBDELPROTOTYPE:
push ebp
mov ebp, esp
push ebx
.Lt_0395:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jle .Lt_0398
push dword ptr [ebp+8]
call HDELPARAMS
add esp, 4
.Lt_0398:
.Lt_0397:
push dword ptr [ebp+8]
call SYMBPROCFREEEXT
add esp, 4
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 4
.Lt_0396:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDGLOBALCTOR
SYMBADDGLOBALCTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_039D:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 65538
push dword ptr [ebp+8]
lea eax, [SYMB+99040]
push eax
call HADDTOGLOBCTORLIST
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_039E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBADDGLOBALDTOR
SYMBADDGLOBALDTOR:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_039F:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 131074
push dword ptr [ebp+8]
lea eax, [SYMB+99080]
push eax
call HADDTOGLOBCTORLIST
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_03A0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCALCPROCMATCH
SYMBCALCPROCMATCH:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_03AB:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .Lt_03AD
mov dword ptr [ebp-8], 2
jmp .Lt_03C7
.Lt_03AD:
mov dword ptr [ebp-8], 1
.Lt_03C7:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_03B0
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 225
mov dword ptr [ebp-4], 0
jmp .Lt_03AC
.Lt_03B0:
.Lt_03AF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
and ecx, 2048
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
cmp ebx, ecx
je .Lt_03B2
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 225
mov dword ptr [ebp-4], 0
jmp .Lt_03AC
.Lt_03B2:
.Lt_03B1:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBAREPROCMODESEQUAL
add esp, 8
test eax, eax
jne .Lt_03B4
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 226
mov dword ptr [ebp-4], 0
jmp .Lt_03AC
.Lt_03B4:
.Lt_03B3:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 2048
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
cmp ecx, ebx
je .Lt_03B6
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 2048
test ecx, ecx
je .Lt_03B8
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 229
jmp .Lt_03B7
.Lt_03B8:
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 230
.Lt_03B7:
mov dword ptr [ebp-4], 0
jmp .Lt_03AC
.Lt_03B6:
.Lt_03B5:
mov ecx, dword ptr [ebp+8]
movsx ebx, word ptr [ecx+68]
mov ecx, dword ptr [ebp+12]
movsx eax, word ptr [ecx+68]
cmp ebx, eax
je .Lt_03BA
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 231
mov dword ptr [ebp-4], 0
jmp .Lt_03AC
.Lt_03BA:
.Lt_03B9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 256
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+8]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_03BC
cmp dword ptr [ebp-16], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_03BE
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+4]
and eax, 524288
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-20]
mov ecx, dword ptr [ebx+4]
and ecx, 524288
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_03C0
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-20], ecx
.Lt_03C0:
.Lt_03BF:
.Lt_03BE:
.Lt_03BD:
.Lt_03BC:
.Lt_03BB:
.Lt_03C1:
cmp dword ptr [ebp-16], 0
je .Lt_03C2
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call SYMBCALCPARAMMATCH
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_03C4
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 231
mov dword ptr [ebp-4], 0
jmp .Lt_03AC
.Lt_03C4:
.Lt_03C3:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-12], eax
jle .Lt_03C6
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-12], eax
.Lt_03C6:
.Lt_03C5:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-20], eax
jmp .Lt_03C1
.Lt_03C2:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_03AC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCCHECKOVERRIDDEN
SYMBPROCCHECKOVERRIDDEN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_03D3:
push dword ptr [ebp+8]
call SYMBPROCGETOVERRIDDEN
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_03D6
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call SYMBCALCPROCMATCH
add esp, 12
test eax, eax
jne .Lt_03D8
mov eax, dword ptr [ebp-8]
cmp eax, 226
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp+12]
je .Lt_03DA
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
je .Lt_03DC
mov dword ptr [ebp-8], 227
jmp .Lt_03DB
.Lt_03DC:
mov dword ptr [ebp-8], 228
.Lt_03DB:
.Lt_03DA:
.Lt_03D9:
push 0
push 0
push dword ptr [ebp-8]
call ERRREPORT
add esp, 12
.Lt_03D8:
.Lt_03D7:
.Lt_03D6:
.Lt_03D5:
.Lt_03D4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCSETVTABLEINDEX
SYMBPROCSETVTABLEINDEX:
push ebp
mov ebp, esp
push ebx
.Lt_03DE:
push dword ptr [ebp+8]
call SYMBPROCALLOCEXT
add esp, 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+68], eax
.Lt_03DF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCGETVTABLEINDEX
SYMBPROCGETVTABLEINDEX:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_03E0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .Lt_03E3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-4], eax
.Lt_03E3:
.Lt_03E2:
.Lt_03E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCGETOVERRIDDEN
SYMBPROCGETOVERRIDDEN:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_03E4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .Lt_03E7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+72]
mov dword ptr [ebp-4], eax
.Lt_03E7:
.Lt_03E6:
.Lt_03E5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETPROCRESULT
SYMBGETPROCRESULT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_03E8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .Lt_03EB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.Lt_03EB:
.Lt_03EA:
.Lt_03E9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCHASFWDREFINSIGNATURE
SYMBPROCHASFWDREFINSIGNATURE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_03EC:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call TYPEHASFWDREFINSIGNATURE
add esp, 8
test eax, eax
je .Lt_03EF
mov dword ptr [ebp-4], -1
jmp .Lt_03ED
.Lt_03EF:
.Lt_03EE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
.Lt_03F0:
cmp dword ptr [ebp-8], 0
je .Lt_03F1
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+28]
call TYPEHASFWDREFINSIGNATURE
add esp, 8
test eax, eax
je .Lt_03F3
mov dword ptr [ebp-4], -1
jmp .Lt_03ED
.Lt_03F3:
.Lt_03F2:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .Lt_03F0
.Lt_03F1:
mov dword ptr [ebp-4], 0
.Lt_03ED:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HDUMPDYNAMICARRAYDIMENSIONS
HDUMPDYNAMICARRAYDIMENSIONS:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0422:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset Lt_0424
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .Lt_0426
.Lt_0429:
cmp dword ptr [ebp-28], 1
jle .Lt_042B
push 0
push 3
push offset Lt_042C
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.Lt_042B:
.Lt_042A:
push 0
push 4
push offset Lt_042D
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
.Lt_0427:
inc dword ptr [ebp-28]
.Lt_0426:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-28], eax
jle .Lt_0429
.Lt_0428:
push 0
push 3
push offset Lt_042E
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.Lt_0423:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBPROCPTRTOSTR
SYMBPROCPTRTOSTR:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0461:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HSUBORFUNCTOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HPROCMODETOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HPARAMSTOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HRESULTTOSTR
add esp, 8
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.Lt_0462:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETFULLPROCNAME
SYMBGETFULLPROCNAME:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0463:
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_047B
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_0465:
lea eax, [SYMB+98352]
cmp dword ptr [ebp-8], eax
je .Lt_0466
push 0
push -1
push -1
push offset Lt_047B
push -1
push 2
push offset Lt_0007
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+16]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_047B
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_0465
.Lt_0466:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .Lt_046A
push 0
push 12
push offset Lt_046B
push -1
push offset Lt_047B
call fb_StrConcatAssign
add esp, 20
jmp .Lt_0469
.Lt_046A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 8
test eax, eax
je .Lt_046C
push 0
push 11
push offset Lt_046D
push -1
push offset Lt_047B
call fb_StrConcatAssign
add esp, 20
jmp .Lt_0469
.Lt_046C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .Lt_046E
push 0
push 10
push offset Lt_046F
push -1
push offset Lt_047B
call fb_StrConcatAssign
add esp, 20
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+112], 0
je .Lt_0471
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+40]
sal ebx, 4
push dword ptr [AST_OPTB+ebx+8]
push -1
push offset Lt_047B
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_047B
call fb_StrAssign
add esp, 20
.Lt_0471:
.Lt_0470:
jmp .Lt_0469
.Lt_046E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_0473
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset Lt_047B
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_047B
call fb_StrAssign
add esp, 20
push 0
push 11
push offset Lt_0475
push -1
push offset Lt_047B
call fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_0477
push 0
push 4
push offset Lt_0478
push -1
push offset Lt_047B
call fb_StrConcatAssign
add esp, 20
jmp .Lt_0476
.Lt_0477:
push 0
push 4
push offset Lt_0479
push -1
push offset Lt_047B
call fb_StrConcatAssign
add esp, 20
.Lt_0476:
jmp .Lt_0469
.Lt_0473:
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset Lt_047B
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
push offset Lt_047B
call fb_StrAssign
add esp, 20
.Lt_0469:
mov eax, dword ptr [Lt_047B]
mov dword ptr [ebp-4], eax
.Lt_0464:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_047B,12

.section .text
.balign 16

.globl SYMBMETHODTOSTR
SYMBMETHODTOSTR:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_047C:
push 0
push 0
push dword ptr [ebp+8]
call SYMBGETFULLPROCNAME
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 20
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HPROCMODETOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HPARAMSTOSTR
add esp, 8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call HRESULTTOSTR
add esp, 8
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.Lt_047D:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETDEFAULTPARAMMODE
SYMBGETDEFAULTPARAMMODE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_047E:
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-8], ebx
jmp .Lt_0481
.Lt_0483:
mov dword ptr [ebp-4], 2
jmp .Lt_047F
jmp .Lt_0480
.Lt_0484:
mov dword ptr [ebp-4], 1
jmp .Lt_047F
jmp .Lt_0480
.Lt_0481:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967292
cmp ebx, 19
ja .Lt_0484
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.LT_0485+ebx*4-16]
.LT_0485:
.int .Lt_0483
.int .Lt_0484
.int .Lt_0484
.int .Lt_0483
.int .Lt_0484
.int .Lt_0484
.int .Lt_0484
.int .Lt_0484
.int .Lt_0484
.int .Lt_0484
.int .Lt_0484
.int .Lt_0484
.int .Lt_0484
.int .Lt_0483
.int .Lt_0483
.int .Lt_0484
.int .Lt_0483
.int .Lt_0484
.int .Lt_0484
.int .Lt_0483
.Lt_0480:
.Lt_047F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBAREPROCMODESEQUAL
SYMBAREPROCMODESEQUAL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0486:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+84]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 1
je .Lt_048A
.Lt_048B:
cmp dword ptr [ebp-8], 2
jne .Lt_0489
.Lt_048A:
cmp dword ptr [ebp-12], 1
je .Lt_048E
.Lt_048F:
cmp dword ptr [ebp-12], 2
jne .Lt_048D
.Lt_048E:
mov dword ptr [ebp-4], -1
jmp .Lt_0487
.Lt_048D:
.Lt_048C:
.Lt_0489:
.Lt_0488:
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-8]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0487:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBALLOCOVLCALLARG
SYMBALLOCOVLCALLARG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0491:
push dword ptr [ebp+8]
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
jne .Lt_0494
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], 0
jne .Lt_0496
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+4], ebx
jmp .Lt_0495
.Lt_0496:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.Lt_0495:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+8], eax
jmp .Lt_0493
.Lt_0494:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+8], 0
jne .Lt_0498
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.Lt_0498:
.Lt_0497:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+8], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ecx+4], eax
.Lt_0493:
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0492:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBFREEOVLCALLARGS
SYMBFREEOVLCALLARGS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0499:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.Lt_049B:
cmp dword ptr [ebp-4], 0
je .Lt_049C
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_049B
.Lt_049C:
.Lt_049A:
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
HALIGNTOPOW2:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
push edi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0080:
mov eax, dword ptr [ebp+16]
dec eax
mov ecx, eax
mov ebx, ecx
sar ebx, 31
add ecx, dword ptr [ebp+8]
adc ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+16]
dec eax
not eax
mov edi, eax
mov esi, edi
sar esi, 31
and ecx, edi
and ebx, esi
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
.Lt_0081:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCANOVERLOAD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00CF:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jne .Lt_00D2
mov dword ptr [ebp-4], -1
jmp .Lt_00D0
.Lt_00D2:
.Lt_00D1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+80]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 4
jne .Lt_00D4
mov dword ptr [ebp-4], 0
jmp .Lt_00D0
.Lt_00D4:
.Lt_00D3:
.Lt_00D5:
cmp dword ptr [ebp-8], 0
je .Lt_00D6
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+28], 0
jne .Lt_00D8
mov dword ptr [ebp-4], 0
jmp .Lt_00D0
.Lt_00D8:
.Lt_00D7:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-8], ebx
jmp .Lt_00D5
.Lt_00D6:
mov dword ptr [ebp-4], -1
.Lt_00D0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCANOVERLOADBYDESC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D9:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+56]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00DC
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+56]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+56]
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00DE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+68]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_00E0
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+68]
cmp eax, dword ptr [ecx+68]
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_00E0:
.Lt_00DF:
jmp .Lt_00DD
.Lt_00DE:
mov dword ptr [ebp-4], -1
.Lt_00DD:
.Lt_00DC:
.Lt_00DB:
.Lt_00DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDOVLPROC:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E1:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .Lt_00E4
jmp .Lt_00E2
.Lt_00E4:
.Lt_00E3:
mov eax, dword ptr [ebp+44]
and eax, 32
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+8]
and ecx, 32
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
cmp eax, ecx
je .Lt_00E6
jmp .Lt_00E2
.Lt_00E6:
.Lt_00E5:
mov ecx, dword ptr [ebp+8]
movsx eax, word ptr [ecx+68]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+44]
and eax, 2
test eax, eax
je .Lt_00E8
dec dword ptr [ebp-24]
.Lt_00E8:
.Lt_00E7:
cmp dword ptr [ebp-24], 0
jle .Lt_00EA
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+80]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-16]
cmp dword ptr [ecx+56], 4
jne .Lt_00EC
jmp .Lt_00E2
.Lt_00EC:
.Lt_00EB:
.Lt_00ED:
cmp dword ptr [ebp-16], 0
je .Lt_00EE
mov ecx, dword ptr [ebp-16]
cmp dword ptr [ecx+28], 0
jne .Lt_00F0
jmp .Lt_00E2
.Lt_00F0:
.Lt_00EF:
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+168]
mov dword ptr [ebp-16], eax
jmp .Lt_00ED
.Lt_00EE:
.Lt_00EA:
.Lt_00E9:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_00F1:
mov eax, dword ptr [ebp-8]
movsx ecx, word ptr [eax+68]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8]
and eax, 2
test eax, eax
je .Lt_00F5
dec dword ptr [ebp-20]
.Lt_00F5:
.Lt_00F4:
mov eax, dword ptr [ebp+44]
and eax, 32
test eax, eax
je .Lt_00F7
cmp dword ptr [ebp+32], 0
je .Lt_00F9
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+28]
and ecx, 511
test ecx, ecx
jne .Lt_00FB
mov dword ptr [ebp-20], -1
.Lt_00FB:
.Lt_00FA:
jmp .Lt_00F8
.Lt_00F9:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+28]
and eax, 511
test eax, eax
je .Lt_00FD
mov dword ptr [ebp-20], -1
.Lt_00FD:
.Lt_00FC:
.Lt_00F8:
.Lt_00F7:
.Lt_00F6:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jne .Lt_00FF
cmp dword ptr [ebp-24], 0
jne .Lt_0101
jmp .Lt_00E2
.Lt_0101:
.Lt_0100:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+80]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-12], eax
.Lt_0102:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call HCANOVERLOADBYDESC
add esp, 8
test eax, eax
je .Lt_0106
jmp .Lt_0103
.Lt_0106:
.Lt_0105:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+28]
mov dword ptr [ebp-32], ecx
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+28]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-32]
and eax, 261632
mov ecx, dword ptr [ebp-36]
and ecx, 261632
or eax, ecx
test eax, eax
je .Lt_0108
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+56]
cmp ecx, 2
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+56]
cmp ebx, 2
sete bl
shr ebx, 1
sbb ebx, ebx
and ecx, ebx
je .Lt_010A
mov ebx, dword ptr [ebp-32]
and ebx, 261632
mov ecx, dword ptr [ebp-36]
and ecx, 261632
cmp ebx, ecx
je .Lt_010C
jmp .Lt_0103
.Lt_010C:
.Lt_010B:
.Lt_010A:
.Lt_0109:
mov ecx, dword ptr [ebp-32]
and ecx, 261632
and ecx, -513
mov ebx, dword ptr [ebp-36]
and ebx, 261632
and ebx, -513
cmp ecx, ebx
je .Lt_010E
jmp .Lt_0103
.Lt_010E:
.Lt_010D:
and dword ptr [ebp-32], 511
and dword ptr [ebp-36], 511
.Lt_0108:
.Lt_0107:
mov ebx, dword ptr [ebp-36]
cmp dword ptr [ebp-32], ebx
je .Lt_0110
cmp dword ptr [ebp-32], 36
jne .Lt_0112
.Lt_0113:
cmp dword ptr [ebp-36], 17
je .Lt_0115
jmp .Lt_0103
.Lt_0115:
.Lt_0114:
jmp .Lt_0111
.Lt_0112:
cmp dword ptr [ebp-32], 17
jne .Lt_0116
.Lt_0117:
cmp dword ptr [ebp-36], 36
je .Lt_0119
jmp .Lt_0103
.Lt_0119:
.Lt_0118:
jmp .Lt_0111
.Lt_0116:
jmp .Lt_0103
.Lt_011A:
.Lt_0111:
.Lt_0110:
.Lt_010F:
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+32]
cmp dword ptr [ebx+32], eax
je .Lt_011C
jmp .Lt_0103
.Lt_011C:
.Lt_011B:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+168]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+168]
mov dword ptr [ebp-12], eax
dec dword ptr [ebp-20]
.Lt_0104:
cmp dword ptr [ebp-20], 0
jg .Lt_0102
.Lt_0103:
cmp dword ptr [ebp-20], 0
jne .Lt_011E
jmp .Lt_00E2
.Lt_011E:
.Lt_011D:
.Lt_00FF:
.Lt_00FE:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp-8], ebx
.Lt_00F3:
cmp dword ptr [ebp-8], 0
jne .Lt_00F1
.Lt_00F2:
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push 3
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
cmp dword ptr [ebp+48], 0
je .Lt_011F
mov dword ptr [ebp-28], 1
jmp .Lt_04A4
.Lt_011F:
mov dword ptr [ebp-28], 0
.Lt_04A4:
push dword ptr [ebp-28]
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_0122
jmp .Lt_00E2
.Lt_0122:
.Lt_0121:
cmp dword ptr [ebp+24], 0
je .Lt_0124
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+148]
mov dword ptr [ebx+148], ecx
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+144]
mov dword ptr [ebx+144], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+156], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+152], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-32]
mov dword ptr [ebx+156], eax
cmp dword ptr [ebp-32], 0
je .Lt_0126
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+152], ebx
.Lt_0126:
.Lt_0125:
.Lt_0124:
.Lt_0123:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_00E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDOPOVLPROC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0127:
cmp dword ptr [ebp+24], 27
je .Lt_012A
push 0
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HADDOVLPROC
add esp, 44
mov dword ptr [ebp-4], eax
jmp .Lt_0128
.Lt_012A:
.Lt_0129:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_012B:
cmp dword ptr [ebp-8], 0
je .Lt_012C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+28]
cmp dword ptr [eax+28], ecx
jne .Lt_012E
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
cmp dword ptr [ecx+32], ebx
jne .Lt_0130
mov dword ptr [ebp-4], 0
jmp .Lt_0128
.Lt_0130:
.Lt_012F:
.Lt_012E:
.Lt_012D:
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+108]
mov dword ptr [ebp-8], ecx
jmp .Lt_012B
.Lt_012C:
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push 0
push 3
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
push 0
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0128:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSETUPPROC:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0131:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+32], -2147483648
jne .Lt_0134
push dword ptr [ebp+24]
call SYMBGETDEFTYPE
add esp, 4
mov dword ptr [ebp+32], eax
mov dword ptr [ebp+36], 0
.Lt_0134:
.Lt_0133:
cmp dword ptr [ebp+28], 0
jne .Lt_0136
cmp dword ptr [PARSER+100], 0
je .Lt_0138
mov eax, dword ptr [ebp+24]
mov dword ptr [ebp+28], eax
.Lt_0138:
.Lt_0137:
mov dword ptr [ebp-8], 0
jmp .Lt_0135
.Lt_0136:
mov dword ptr [ebp-8], 512
.Lt_0135:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+44]
and eax, 12
test eax, eax
je .Lt_013A
or dword ptr [ebp+44], 1024
mov eax, dword ptr [ebp+44]
and eax, 4
test eax, eax
je .Lt_013C
push dword ptr [ebp+12]
call SYMBGETCOMPCTORHEAD
add esp, 4
mov dword ptr [ebp-24], eax
jmp .Lt_013B
.Lt_013C:
push dword ptr [ebp+12]
call SYMBGETCOMPDTOR
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_013B:
cmp dword ptr [ebp-24], 0
jne .Lt_013E
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push 0
push 0
push dword ptr [ebp+28]
push 0
push 3
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
push 0
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+44]
and eax, 4
test eax, eax
je .Lt_0140
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call SYMBSETCOMPCTORHEAD
add esp, 8
jmp .Lt_013F
.Lt_0140:
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call SYMBSETCOMPDTOR
add esp, 8
.Lt_013F:
jmp .Lt_013D
.Lt_013E:
mov eax, dword ptr [ebp+44]
and eax, 8
test eax, eax
je .Lt_0142
mov dword ptr [ebp-4], 0
jmp .Lt_0132
.Lt_0142:
.Lt_0141:
push 0
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push 0
push 0
push dword ptr [ebp+28]
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call HADDOVLPROC
add esp, 44
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0144
jmp .Lt_0132
.Lt_0144:
.Lt_0143:
.Lt_013D:
mov eax, dword ptr [ebp+44]
and eax, 4
test eax, eax
je .Lt_0146
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call SYMBCHECKCOMPCTOR
add esp, 8
.Lt_0146:
.Lt_0145:
jmp .Lt_0139
.Lt_013A:
mov eax, dword ptr [ebp+44]
and eax, 16
test eax, eax
je .Lt_0147
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
jne .Lt_0149
jmp .Lt_014A
.Lt_0149:
.Lt_0148:
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [ebp+12]
call SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_014C
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push 0
push 3
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
push 0
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call SYMBSETCOMPOPOVLHEAD
add esp, 8
jmp .Lt_014B
.Lt_014C:
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp-32]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call HADDOPOVLPROC
add esp, 40
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_014E
jmp .Lt_0132
.Lt_014E:
.Lt_014D:
cmp dword ptr [ebp-32], 0
jne .Lt_0150
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call SYMBCHECKCOMPLETOP
add esp, 8
.Lt_0150:
.Lt_014F:
.Lt_014B:
jmp .Lt_0139
.Lt_0147:
.Lt_014A:
mov eax, dword ptr [ebp+52]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push 3
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+52]
or eax, 32
push eax
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0152
push 0
push dword ptr [ebp-12]
push 3
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_0154
jmp .Lt_0132
.Lt_0154:
.Lt_0153:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
jne .Lt_0156
mov ebx, dword ptr [ENV+888]
and ebx, 1024
test ebx, ebx
jne .Lt_0158
jmp .Lt_0132
.Lt_0158:
.Lt_0157:
.Lt_0156:
.Lt_0155:
push dword ptr [ebp-12]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call HADDOVLPROC
add esp, 44
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_015A
jmp .Lt_0132
.Lt_015A:
.Lt_0159:
mov eax, dword ptr [ebp-20]
or dword ptr [eax+8], 1
jmp .Lt_0151
.Lt_0152:
mov eax, dword ptr [ebp+52]
and eax, 16
test eax, eax
jne .Lt_015C
mov eax, dword ptr [ebp+44]
and eax, 1
test eax, eax
je .Lt_015E
push dword ptr [ebp+8]
call HCANOVERLOAD
add esp, 4
test eax, eax
jne .Lt_0160
jmp .Lt_0132
.Lt_0160:
.Lt_015F:
jmp .Lt_015D
.Lt_015E:
mov eax, dword ptr [ENV+888]
and eax, 1024
test eax, eax
je .Lt_0161
push dword ptr [ebp+8]
call HCANOVERLOAD
add esp, 4
test eax, eax
je .Lt_0163
mov eax, dword ptr [ebp-20]
or dword ptr [eax+8], 1
.Lt_0163:
.Lt_0162:
.Lt_0161:
.Lt_015D:
.Lt_015C:
.Lt_015B:
.Lt_0151:
.Lt_0139:
mov eax, dword ptr [ebp+52]
and eax, 16
test eax, eax
je .Lt_0165
or dword ptr [ebp-8], 32
.Lt_0165:
.Lt_0164:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+48]
mov dword ptr [eax+84], ebx
cmp dword ptr [PARSER+24], 306
jne .Lt_0167
mov ebx, dword ptr [PARSER+100]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [PARSER+100]
cmp eax, 6
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0169
or dword ptr [ebp-8], 2048
.Lt_0169:
.Lt_0168:
.Lt_0167:
.Lt_0166:
push dword ptr [ebp-20]
call SYMBPROCRECALCREALTYPE
add esp, 4
mov eax, dword ptr [ebp+52]
and eax, 4
test eax, eax
je .Lt_016B
or dword ptr [ebp-8], 8
.Lt_016B:
.Lt_016A:
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+100], 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
je .Lt_016D
mov ebx, dword ptr [ebp-20]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_016F
dec dword ptr [ebp-32]
.Lt_016F:
.Lt_016E:
cmp dword ptr [ebp-24], 0
je .Lt_0171
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [ebx+108]
mov dword ptr [eax+108], ecx
mov ecx, dword ptr [ebp-24]
mov eax, dword ptr [ebp-20]
mov dword ptr [ecx+108], eax
mov eax, dword ptr [ebp-24]
movsx ecx, word ptr [eax+104]
cmp dword ptr [ebp-32], ecx
jge .Lt_0173
mov cx, word ptr [ebp-32]
mov eax, dword ptr [ebp-24]
mov word ptr [eax+104], cx
.Lt_0173:
.Lt_0172:
mov ecx, dword ptr [ebp-24]
movsx eax, word ptr [ecx+106]
cmp dword ptr [ebp-32], eax
jle .Lt_0175
mov ax, word ptr [ebp-32]
mov ecx, dword ptr [ebp-24]
mov word ptr [ecx+106], ax
.Lt_0175:
.Lt_0174:
jmp .Lt_0170
.Lt_0171:
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+108], 0
mov ax, word ptr [ebp-32]
mov ecx, dword ptr [ebp-20]
mov word ptr [ecx+104], ax
mov ax, word ptr [ebp-32]
mov ecx, dword ptr [ebp-20]
mov word ptr [ecx+106], ax
.Lt_0170:
.Lt_016D:
.Lt_016C:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [ebp-8]
or dword ptr [eax+12], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+8]
and eax, 2
test eax, eax
je .Lt_0177
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 512
test ecx, ecx
je .Lt_0179
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+136]
inc dword ptr [eax+152]
.Lt_0179:
.Lt_0178:
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+96], 0
je .Lt_017B
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 8
test ecx, ecx
je .Lt_017D
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+96]
push dword ptr [eax+32]
call SYMBGETCOMPDTOR
add esp, 4
mov dword ptr [ebp-28], eax
jmp .Lt_017C
.Lt_017D:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 16
test ecx, ecx
je .Lt_017E
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+112]
push dword ptr [eax+40]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+96]
push dword ptr [ecx+32]
call SYMBGETCOMPOPOVLHEAD
add esp, 8
mov dword ptr [ebp-28], eax
push dword ptr [ebp-20]
push dword ptr [ebp-28]
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+112]
push dword ptr [ecx+40]
call SYMBFINDOPOVLPROC
add esp, 12
mov dword ptr [ebp-28], eax
jmp .Lt_017C
.Lt_017E:
cmp dword ptr [ebp+24], 0
je .Lt_017F
push -1
mov eax, dword ptr [ebp+52]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push 3
push dword ptr [ebp+24]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+96]
push dword ptr [ecx+32]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 32
test ecx, ecx
je .Lt_0181
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+28]
and eax, 511
test eax, eax
je .Lt_0183
mov dword ptr [ebp-16], 1
.Lt_0183:
.Lt_0182:
.Lt_0181:
.Lt_0180:
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-28]
call SYMBFINDOVERLOADPROC
add esp, 12
mov dword ptr [ebp-28], eax
.Lt_017F:
.Lt_017C:
cmp dword ptr [ebp-28], 0
je .Lt_0185
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+8]
and ecx, 256
test ecx, ecx
jne .Lt_0187
mov dword ptr [ebp-28], 0
.Lt_0187:
.Lt_0186:
.Lt_0185:
.Lt_0184:
.Lt_017B:
.Lt_017A:
cmp dword ptr [ebp-28], 0
je .Lt_0189
mov ecx, dword ptr [ebp-28]
mov eax, dword ptr [ecx+8]
and eax, 512
test eax, eax
je .Lt_018B
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+136]
dec dword ptr [ecx+152]
.Lt_018B:
.Lt_018A:
push dword ptr [ebp-28]
call SYMBPROCGETVTABLEINDEX
add esp, 4
push eax
push dword ptr [ebp-20]
call SYMBPROCSETVTABLEINDEX
add esp, 8
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebp-28]
mov dword ptr [ecx+72], eax
jmp .Lt_0188
.Lt_0189:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 256
test ecx, ecx
je .Lt_018D
push dword ptr [ebp+12]
call SYMBCOMPADDVIRTUAL
add esp, 4
push eax
push dword ptr [ebp-20]
call SYMBPROCSETVTABLEINDEX
add esp, 8
.Lt_018D:
.Lt_018C:
.Lt_0188:
.Lt_0177:
.Lt_0176:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0132:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCALCTYPESDIFF:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_021C:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
and eax, 511
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+20]
and eax, 511
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_021E
mov dword ptr [ebp-28], 24
jmp .Lt_04AD
.Lt_021E:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_04AD:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_0220
mov dword ptr [ebp-32], 24
jmp .Lt_04AE
.Lt_0220:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_04AE:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
jmp .Lt_0223
.Lt_0225:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-40], eax
jmp .Lt_0227
.Lt_0229:
cmp dword ptr [ebp-20], 4
jne .Lt_022B
.Lt_022C:
cmp dword ptr [ebp-24], 4
jne .Lt_022E
.Lt_022F:
mov dword ptr [ebp-4], 78
jmp .Lt_021D
jmp .Lt_022D
.Lt_022E:
cmp dword ptr [ebp-24], 7
jne .Lt_0230
.Lt_0231:
mov dword ptr [ebp-4], 26
jmp .Lt_021D
.Lt_0230:
.Lt_022D:
mov dword ptr [ebp-4], 0
jmp .Lt_021D
jmp .Lt_022A
.Lt_022B:
cmp dword ptr [ebp-20], 7
jne .Lt_0232
.Lt_0233:
cmp dword ptr [ebp-24], 4
jne .Lt_0235
.Lt_0236:
mov dword ptr [ebp-4], 26
jmp .Lt_021D
jmp .Lt_0234
.Lt_0235:
cmp dword ptr [ebp-24], 7
jne .Lt_0237
.Lt_0238:
mov dword ptr [ebp-4], 78
jmp .Lt_021D
.Lt_0237:
.Lt_0234:
mov dword ptr [ebp-4], 0
jmp .Lt_021D
jmp .Lt_022A
.Lt_0232:
cmp dword ptr [ebp-20], 36
jne .Lt_0239
.Lt_023A:
cmp dword ptr [ebp-24], 4
jne .Lt_023C
.Lt_023D:
mov dword ptr [ebp-4], 78
jmp .Lt_021D
jmp .Lt_023B
.Lt_023C:
cmp dword ptr [ebp-24], 7
jne .Lt_023E
.Lt_023F:
mov dword ptr [ebp-4], 26
jmp .Lt_021D
.Lt_023E:
.Lt_023B:
jmp .Lt_022A
.Lt_0239:
cmp dword ptr [ebp-20], 39
jne .Lt_0240
.Lt_0241:
cmp dword ptr [ebp-24], 4
jne .Lt_0243
.Lt_0244:
mov dword ptr [ebp-4], 26
jmp .Lt_021D
jmp .Lt_0242
.Lt_0243:
cmp dword ptr [ebp-24], 7
jne .Lt_0245
.Lt_0246:
mov dword ptr [ebp-4], 78
jmp .Lt_021D
.Lt_0245:
.Lt_0242:
jmp .Lt_022A
.Lt_0240:
cmp dword ptr [ebp-24], 4
je .Lt_024A
.Lt_024B:
cmp dword ptr [ebp-24], 7
jne .Lt_0249
.Lt_024A:
cmp dword ptr [ebp+28], 0
jne .Lt_024D
mov dword ptr [ebp-4], 0
jmp .Lt_021D
.Lt_024D:
.Lt_024C:
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 20
je .Lt_024F
mov dword ptr [ebp-4], 0
jmp .Lt_021D
.Lt_024F:
.Lt_024E:
.Lt_0249:
.Lt_0248:
.Lt_0247:
.Lt_022A:
cmp dword ptr [ebp-24], 10
jne .Lt_0251
mov eax, dword ptr [ebp-24]
and eax, -512
mov ebx, dword ptr [ebp-24]
imul ebx, 28
mov ecx, dword ptr [SYMB_DTYPETB+ebx+16]
and ecx, 511
or eax, ecx
mov dword ptr [ebp-24], eax
.Lt_0251:
.Lt_0250:
mov eax, dword ptr [ebp-20]
and eax, 480
test eax, eax
je .Lt_0253
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
jne .Lt_0255
cmp dword ptr [ebp+28], 0
jne .Lt_0257
mov dword ptr [ebp-4], 0
jmp .Lt_021D
.Lt_0257:
.Lt_0256:
push 0
push dword ptr [ebp+28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
call ASTCHECKCONVNONPTRTOPTR
add esp, 16
test eax, eax
je .Lt_0259
mov dword ptr [ebp-4], 0
jmp .Lt_021D
.Lt_0259:
.Lt_0258:
mov dword ptr [ebp-4], 1
jmp .Lt_021D
.Lt_0255:
.Lt_0254:
mov eax, dword ptr [ebp-20]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-24]
cmp ecx, 32
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_025B
mov dword ptr [ebp-4], 26
jmp .Lt_021D
.Lt_025B:
.Lt_025A:
push dword ptr [ebp+24]
push dword ptr [ebp-24]
push dword ptr [ebp+32]
push dword ptr [ebp+12]
push dword ptr [ebp-20]
call TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-4], eax
jmp .Lt_021D
jmp .Lt_0252
.Lt_0253:
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
je .Lt_025C
mov dword ptr [ebp-4], 0
jmp .Lt_021D
.Lt_025C:
.Lt_0252:
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_025D
mov dword ptr [ebp-44], 24
jmp .Lt_04AF
.Lt_025D:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_04AF:
mov eax, dword ptr [ebp-44]
sal eax, 4
mov dword ptr [ebp-52], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_025F
mov dword ptr [ebp-48], 24
jmp .Lt_04B0
.Lt_025F:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_04B0:
mov eax, dword ptr [ebp-48]
add eax, dword ptr [ebp-52]
mov ecx, dword ptr [SYMB_DTYPEMATCHTB+eax*4-68]
neg ecx
add ecx, 26
mov dword ptr [ebp-4], ecx
jmp .Lt_021D
jmp .Lt_0226
.Lt_0261:
mov ecx, dword ptr [ebp-20]
and ecx, 480
test ecx, ecx
je .Lt_0263
mov dword ptr [ebp-4], 0
jmp .Lt_021D
.Lt_0263:
.Lt_0262:
mov ecx, dword ptr [ebp-24]
and ecx, 480
je .Lt_0264
mov dword ptr [ebp-44], 24
jmp .Lt_04B2
.Lt_0264:
mov ecx, dword ptr [ebp-24]
and ecx, 31
mov dword ptr [ebp-44], ecx
.Lt_04B2:
mov ecx, dword ptr [ebp-44]
sal ecx, 4
mov dword ptr [ebp-52], ecx
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .Lt_0266
mov dword ptr [ebp-48], 24
jmp .Lt_04B3
.Lt_0266:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-48], ecx
.Lt_04B3:
mov ecx, dword ptr [ebp-48]
add ecx, dword ptr [ebp-52]
mov eax, dword ptr [SYMB_DTYPEMATCHTB+ecx*4-68]
neg eax
add eax, 26
mov dword ptr [ebp-4], eax
jmp .Lt_021D
jmp .Lt_0226
.Lt_0268:
cmp dword ptr [ebp-20], 4
je .Lt_026B
.Lt_026C:
cmp dword ptr [ebp-20], 36
jne .Lt_026A
.Lt_026B:
mov dword ptr [ebp-4], 78
jmp .Lt_021D
jmp .Lt_0269
.Lt_026A:
cmp dword ptr [ebp-20], 7
je .Lt_026E
.Lt_026F:
cmp dword ptr [ebp-20], 39
jne .Lt_026D
.Lt_026E:
mov dword ptr [ebp-4], 26
jmp .Lt_021D
.Lt_026D:
.Lt_0269:
jmp .Lt_0226
.Lt_0227:
cmp dword ptr [ebp-40], 2
ja .Lt_0226
mov eax, dword ptr [ebp-40]
jmp dword ptr [.LT_0270+eax*4]
.LT_0270:
.int .Lt_0229
.int .Lt_0261
.int .Lt_0268
.Lt_0226:
jmp .Lt_0222
.Lt_0271:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-40], eax
jmp .Lt_0273
.Lt_0275:
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
je .Lt_0277
mov dword ptr [ebp-4], 0
jmp .Lt_021D
.Lt_0277:
.Lt_0276:
cmp dword ptr [ebp-24], 10
jne .Lt_0279
mov eax, dword ptr [ebp-24]
and eax, -512
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov ebx, dword ptr [SYMB_DTYPETB+ecx+16]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-24], eax
.Lt_0279:
.Lt_0278:
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_027A
mov dword ptr [ebp-44], 24
jmp .Lt_04B5
.Lt_027A:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_04B5:
mov eax, dword ptr [ebp-44]
sal eax, 4
mov dword ptr [ebp-52], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_027C
mov dword ptr [ebp-48], 24
jmp .Lt_04B6
.Lt_027C:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_04B6:
mov eax, dword ptr [ebp-48]
add eax, dword ptr [ebp-52]
mov ebx, dword ptr [SYMB_DTYPEMATCHTB+eax*4-68]
neg ebx
add ebx, 26
mov dword ptr [ebp-4], ebx
jmp .Lt_021D
jmp .Lt_0272
.Lt_027E:
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_027F
mov dword ptr [ebp-44], 24
jmp .Lt_04B8
.Lt_027F:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_04B8:
mov ebx, dword ptr [ebp-44]
sal ebx, 4
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_0281
mov dword ptr [ebp-48], 24
jmp .Lt_04B9
.Lt_0281:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-48], ebx
.Lt_04B9:
mov ebx, dword ptr [ebp-48]
add ebx, dword ptr [ebp-52]
mov eax, dword ptr [SYMB_DTYPEMATCHTB+ebx*4-68]
neg eax
add eax, 26
mov dword ptr [ebp-4], eax
jmp .Lt_021D
jmp .Lt_0272
.Lt_0273:
cmp dword ptr [ebp-40], 1
ja .Lt_0272
mov eax, dword ptr [ebp-40]
jmp dword ptr [.LT_0283+eax*4]
.LT_0283:
.int .Lt_0275
.int .Lt_027E
.Lt_0272:
jmp .Lt_0222
.Lt_0284:
cmp dword ptr [ebp-8], 2
jne .Lt_0286
.Lt_0287:
mov dword ptr [ebp-4], 78
jmp .Lt_0285
.Lt_0286:
cmp dword ptr [ebp-8], 0
jne .Lt_0288
.Lt_0289:
cmp dword ptr [ebp-24], 4
jne .Lt_028B
.Lt_028C:
mov dword ptr [ebp-4], 78
jmp .Lt_028A
.Lt_028B:
cmp dword ptr [ebp-24], 7
jne .Lt_028D
.Lt_028E:
mov dword ptr [ebp-4], 26
.Lt_028D:
.Lt_028A:
.Lt_0288:
.Lt_0285:
jmp .Lt_0222
.Lt_0223:
cmp dword ptr [ebp-36], 2
ja .Lt_0222
mov eax, dword ptr [ebp-36]
jmp dword ptr [.LT_028F+eax*4]
.LT_028F:
.int .Lt_0225
.int .Lt_0271
.int .Lt_0284
.Lt_0222:
.Lt_021D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HCHECKOVLPARAM:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.Lt_0290:
cmp dword ptr [ebp+16], 0
jne .Lt_0293
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+64], 0
je .Lt_0295
mov dword ptr [ebp-4], 78
jmp .Lt_0291
jmp .Lt_0294
.Lt_0295:
mov dword ptr [ebp-4], 0
jmp .Lt_0291
.Lt_0294:
.Lt_0293:
.Lt_0292:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
and ebx, 480
sar ebx, 5
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+56]
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 3
jne .Lt_0298
.Lt_0299:
cmp dword ptr [ebp+20], 3
je .Lt_029B
mov dword ptr [ebp-4], 0
jmp .Lt_0291
.Lt_029B:
.Lt_029A:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 52
jge .Lt_029D
mov dword ptr [ebp-4], 0
jmp .Lt_0291
.Lt_029D:
.Lt_029C:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+68], 0
jle .Lt_029F
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+60]
cmp ecx, dword ptr [ebx+68]
setne cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+60]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_02A1
mov dword ptr [ebp-4], 0
jmp .Lt_0291
.Lt_02A1:
.Lt_02A0:
.Lt_029F:
.Lt_029E:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-4], eax
jmp .Lt_0291
jmp .Lt_0296
.Lt_0298:
cmp dword ptr [ebp-36], 2
jne .Lt_02A2
.Lt_02A3:
cmp dword ptr [ebp+20], 1
jne .Lt_02A5
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_02A6
mov dword ptr [ebp-40], 24
jmp .Lt_04BD
.Lt_02A6:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_04BD:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax]
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .Lt_02A8
mov dword ptr [ebp-44], 24
jmp .Lt_04BE
.Lt_02A8:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-44], ecx
.Lt_04BE:
mov ecx, dword ptr [ebp-44]
imul ecx, 28
mov eax, dword ptr [ENV+272]
cmp eax, dword ptr [SYMB_DTYPETB+ecx+4]
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-48]
je .Lt_02AB
mov dword ptr [ebp-4], 0
jmp .Lt_0291
.Lt_02AB:
.Lt_02AA:
mov eax, dword ptr [ebp-8]
and eax, 31
mov ecx, dword ptr [ebp-8]
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp-8]
and ecx, 261632
sal ecx, 1
or eax, ecx
mov ecx, dword ptr [ebp-8]
and ecx, 32505856
or eax, ecx
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-16]
.Lt_02A5:
.Lt_02A4:
.Lt_02A2:
.Lt_0296:
cmp dword ptr [ebp+20], 3
jne .Lt_02AD
mov dword ptr [ebp-4], 0
jmp .Lt_0291
.Lt_02AD:
.Lt_02AC:
mov eax, dword ptr [ebp-8]
and eax, 511
mov ecx, dword ptr [ebp-12]
and ecx, 511
cmp eax, ecx
jne .Lt_02AF
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov ecx, dword ptr [ebp-28]
cmp dword ptr [ebp-24], ecx
jne .Lt_02B1
mov dword ptr [ebp-40], 78
jmp .Lt_02B0
.Lt_02B1:
mov ecx, dword ptr [ebp-8]
and ecx, 31
mov dword ptr [ebp-44], ecx
cmp dword ptr [ebp-44], 20
jne .Lt_02B4
.Lt_02B5:
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call SYMBGETUDTBASELEVEL
add esp, 8
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jle .Lt_02B7
mov eax, 78
sub eax, dword ptr [ebp-48]
mov dword ptr [ebp-40], eax
.Lt_02B7:
.Lt_02B6:
jmp .Lt_02B2
.Lt_02B4:
cmp dword ptr [ebp-44], 22
jne .Lt_02B8
.Lt_02B9:
mov dword ptr [ebp-48], 0
lea eax, [ebp-48]
push eax
push dword ptr [ebp-28]
push dword ptr [ebp-24]
call SYMBCALCPROCMATCH
add esp, 12
mov dword ptr [ebp-40], eax
.Lt_02B8:
.Lt_02B2:
.Lt_02B0:
cmp dword ptr [ebp-40], 0
jle .Lt_02BC
mov eax, dword ptr [ebp-8]
and eax, 261632
mov ecx, dword ptr [ebp-12]
and ecx, 261632
cmp eax, ecx
jne .Lt_02BE
mov ecx, dword ptr [ebp-40]
mov dword ptr [ebp-4], ecx
jmp .Lt_0291
.Lt_02BE:
.Lt_02BD:
lea ecx, [ebp-20]
push ecx
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+56]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call SYMBCHECKCONSTASSIGNTOPLEVEL
add esp, 24
test eax, eax
je .Lt_02C0
cmp dword ptr [ebp-40], 52
jle .Lt_02C2
add dword ptr [ebp-40], -26
.Lt_02C2:
.Lt_02C1:
mov eax, dword ptr [ebp-20]
add dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-4], eax
jmp .Lt_0291
.Lt_02C0:
.Lt_02BF:
mov dword ptr [ebp-4], 0
jmp .Lt_0291
.Lt_02BC:
.Lt_02BB:
.Lt_02AF:
.Lt_02AE:
cmp dword ptr [ebp-8], 20
jne .Lt_02C4
.Lt_02C5:
cmp dword ptr [Lt_04C4], 0
jne .Lt_02C7
inc dword ptr [Lt_04C4]
lea eax, [ebp-36]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-24]
call SYMBFINDCTOROVLPROC
add esp, 16
mov dword ptr [ebp-40], eax
dec dword ptr [Lt_04C4]
cmp dword ptr [ebp-40], 0
je .Lt_02C9
mov dword ptr [ebp-4], 6
jmp .Lt_0291
.Lt_02C9:
.Lt_02C8:
.Lt_02C7:
.Lt_02C6:
cmp dword ptr [Lt_04C5], 0
jne .Lt_02CB
inc dword ptr [Lt_04C5]
push 0
lea eax, [ebp-36]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-40], eax
dec dword ptr [Lt_04C5]
cmp dword ptr [ebp-40], 0
je .Lt_02CD
mov dword ptr [ebp-4], 6
jmp .Lt_0291
.Lt_02CD:
.Lt_02CC:
.Lt_02CB:
.Lt_02CA:
mov dword ptr [ebp-4], 0
jmp .Lt_0291
jmp .Lt_02C3
.Lt_02C4:
cmp dword ptr [ebp-8], 10
jne .Lt_02CE
.Lt_02CF:
mov dword ptr [ebp-4], 0
jmp .Lt_0291
jmp .Lt_02C3
.Lt_02CE:
cmp dword ptr [ebp-12], 20
jne .Lt_02D2
.Lt_02D3:
cmp dword ptr [Lt_04C5], 0
jne .Lt_02D5
inc dword ptr [Lt_04C5]
push 0
lea eax, [ebp-36]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp-24]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
call SYMBFINDCASTOVLPROC
add esp, 20
mov dword ptr [ebp-40], eax
dec dword ptr [Lt_04C5]
cmp dword ptr [ebp-40], 0
je .Lt_02D7
mov dword ptr [ebp-4], 6
jmp .Lt_0291
.Lt_02D7:
.Lt_02D6:
.Lt_02D5:
.Lt_02D4:
mov dword ptr [ebp-4], 0
jmp .Lt_0291
.Lt_02D2:
.Lt_02D1:
.Lt_02D0:
.Lt_02C3:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push dword ptr [ebp+16]
push dword ptr [ebp-28]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+4]
push dword ptr [ebp-16]
push dword ptr [ebp-24]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
call HCALCTYPESDIFF
add esp, 28
mov dword ptr [ebp-4], eax
.Lt_0291:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_04C5:
.int 0
.balign 4
Lt_04C4:
.int 0

.section .text
.balign 16
HCHECKCASTOVL:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_034E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
and eax, 511
mov ebx, dword ptr [ebp+12]
and ebx, 511
cmp eax, ebx
jne .Lt_0351
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-12], ebx
jne .Lt_0353
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp-8], ebx
jne .Lt_0355
mov dword ptr [ebp-4], 78
jmp .Lt_034F
.Lt_0355:
.Lt_0354:
mov dword ptr [ebp-4], 52
jmp .Lt_034F
.Lt_0353:
.Lt_0352:
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
je .Lt_0357
mov dword ptr [ebp-4], 0
jmp .Lt_034F
.Lt_0357:
.Lt_0356:
.Lt_0351:
.Lt_0350:
cmp dword ptr [ebp+20], 0
je .Lt_0359
mov dword ptr [ebp-4], 0
jmp .Lt_034F
.Lt_0359:
.Lt_0358:
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_035A
mov dword ptr [ebp-16], 24
jmp .Lt_04C6
.Lt_035A:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_04C6:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 20
je .Lt_035F
.Lt_0360:
cmp dword ptr [ebp-20], 10
jne .Lt_035E
.Lt_035F:
mov dword ptr [ebp-4], 0
jmp .Lt_034F
jmp .Lt_035C
.Lt_035E:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .Lt_0362
mov dword ptr [ebp-24], 24
jmp .Lt_04C7
.Lt_0362:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_04C7:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 20
jne .Lt_0366
.Lt_0367:
mov dword ptr [ebp-4], 0
jmp .Lt_034F
.Lt_0366:
.Lt_0364:
.Lt_0361:
.Lt_035C:
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
and eax, 480
sar eax, 5
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call HCALCTYPESDIFF
add esp, 28
mov dword ptr [ebp-4], eax
.Lt_034F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HDELPARAMS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0391:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-4], ebx
.Lt_0393:
cmp dword ptr [ebp-4], 0
je .Lt_0394
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
call SYMBFREESYMBOL
add esp, 4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0393
.Lt_0394:
.Lt_0392:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HADDTOGLOBCTORLIST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0399:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
call LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
je .Lt_039C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4], eax
jmp .Lt_039B
.Lt_039C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax], ebx
.Lt_039B:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_039A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
SYMBCALCPARAMMATCH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_03A1:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call TYPECALCMATCH
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_03A4
mov dword ptr [ebp-4], 0
jmp .Lt_03A2
.Lt_03A4:
.Lt_03A3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+56]
cmp dword ptr [eax+56], ecx
je .Lt_03A6
mov dword ptr [ebp-4], 0
jmp .Lt_03A2
.Lt_03A6:
.Lt_03A5:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+56], 3
jne .Lt_03A8
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+68]
cmp dword ptr [ecx+68], ebx
je .Lt_03AA
mov dword ptr [ebp-4], 0
jmp .Lt_03A2
.Lt_03AA:
.Lt_03A9:
.Lt_03A8:
.Lt_03A7:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_03A2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HSUBORFUNCTOSTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_03F4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
jne .Lt_03F7
push 0
push -1
push 4
push offset Lt_03F8
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
jmp .Lt_03F6
.Lt_03F7:
push 0
push -1
push 9
push offset Lt_03FA
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.Lt_03F6:
.Lt_03F5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPROCMODETOSTR:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_03FC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_03FF
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+84]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 1
je .Lt_0403
.Lt_0404:
cmp dword ptr [ebp-4], 2
jne .Lt_0402
.Lt_0403:
push 0
push -1
push 9
push offset Lt_0405
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
jmp .Lt_0400
.Lt_0402:
cmp dword ptr [ebp-4], 4
jne .Lt_0407
.Lt_0408:
push 0
push -1
push 8
push offset Lt_0409
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.Lt_0407:
.Lt_0400:
jmp .Lt_03FE
.Lt_03FF:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 1
je .Lt_040E
.Lt_040F:
cmp dword ptr [ebp-4], 2
jne .Lt_040D
.Lt_040E:
mov ebx, dword ptr [ENV+252]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .Lt_0413
.Lt_0414:
cmp dword ptr [ebp-8], 2
jne .Lt_0412
.Lt_0413:
jmp .Lt_0410
.Lt_0412:
push 0
push -1
push 9
push offset Lt_0405
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.Lt_0415:
.Lt_0410:
jmp .Lt_040B
.Lt_040D:
cmp dword ptr [ebp-4], 4
jne .Lt_0417
.Lt_0418:
cmp dword ptr [ENV+252], 4
je .Lt_041A
push 0
push -1
push 8
push offset Lt_0409
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.Lt_041A:
.Lt_0419:
jmp .Lt_040B
.Lt_0417:
cmp dword ptr [ebp-4], 3
jne .Lt_041C
.Lt_041D:
cmp dword ptr [ENV+252], 3
je .Lt_041F
push 0
push -1
push 7
push offset Lt_0420
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.Lt_041F:
.Lt_041E:
.Lt_041C:
.Lt_040B:
.Lt_03FE:
.Lt_03FD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPARAMSTOSTR:
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_042F:
push 0
push -1
push 2
push offset Lt_0424
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0433
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+172]
mov dword ptr [ebp-16], ebx
.Lt_0433:
.Lt_0432:
.Lt_0434:
cmp dword ptr [ebp-16], 0
je .Lt_0435
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebx+56]
mov dword ptr [ebp-32], ecx
cmp dword ptr [ebp-32], 1
je .Lt_0438
.Lt_0439:
cmp dword ptr [ebp-32], 2
je .Lt_0438
.Lt_043A:
cmp dword ptr [ebp-32], 3
jne .Lt_0437
.Lt_0438:
cmp dword ptr [ebp-32], 1
je .Lt_043D
.Lt_043E:
cmp dword ptr [ebp-32], 2
jne .Lt_043C
.Lt_043D:
mov ecx, dword ptr [ENV+136]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+28]
mov ebx, ecx
call SYMBGETDEFAULTPARAMMODE
add esp, 8
cmp eax, dword ptr [ebp-32]
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0440
cmp dword ptr [ebp-32], 1
jne .Lt_0442
push 0
push -1
push 7
push offset Lt_0443
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
jmp .Lt_0441
.Lt_0442:
push 0
push -1
push 7
push offset Lt_0445
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.Lt_0441:
.Lt_0440:
.Lt_043F:
jmp .Lt_043B
.Lt_043C:
cmp dword ptr [ebp-32], 3
jne .Lt_0447
.Lt_0448:
push 0
push -1
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [eax+68]
call HDUMPDYNAMICARRAYDIMENSIONS
add esp, 4
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.Lt_0447:
.Lt_043B:
push 0
push -1
push -1
push -1
push 0
push 0
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-16]
push dword ptr [eax+28]
call SYMBTYPETOSTR
add esp, 20
push eax
push 4
push offset Lt_044A
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
jmp .Lt_0436
.Lt_0437:
cmp dword ptr [ebp-32], 4
jne .Lt_044D
.Lt_044E:
push 0
push -1
push 4
push offset Lt_044F
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.Lt_044D:
.Lt_0436:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_0452
push 0
push -1
push 3
push offset Lt_042C
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.Lt_0452:
.Lt_0451:
jmp .Lt_0434
.Lt_0435:
push 0
push -1
push 2
push offset Lt_0454
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.Lt_0430:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HRESULTTOSTR:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0456:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_0459
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
je .Lt_045B
push 0
push -1
push 7
push offset Lt_045C
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.Lt_045B:
.Lt_045A:
push 0
push -1
push -1
push -1
push 0
push 0
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
call SYMBTYPETOSTR
add esp, 20
push eax
push 5
push offset Lt_045E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 20
.Lt_0459:
.Lt_0458:
.Lt_0457:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0007:	.ascii	".\0"
.balign 4
Lt_0022:	.ascii	"THIS\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
Lt_019E:	.ascii	"{fbfp}\0"
.balign 4
Lt_019F:	.ascii	"$\0"
.balign 4
Lt_01DA:	.ascii	"fb$result\0"
.balign 4
Lt_03F8:	.ascii	"sub\0"
.balign 4
Lt_03FA:	.ascii	"function\0"
.balign 4
Lt_0405:	.ascii	" stdcall\0"
.balign 4
Lt_0409:	.ascii	" pascal\0"
.balign 4
Lt_0420:	.ascii	" cdecl\0"
.balign 4
Lt_0424:	.ascii	"(\0"
.balign 4
Lt_042C:	.ascii	", \0"
.balign 4
Lt_042D:	.ascii	"any\0"
.balign 4
Lt_042E:	.ascii	") \0"
.balign 4
Lt_0443:	.ascii	"byval \0"
.balign 4
Lt_0445:	.ascii	"byref \0"
.balign 4
Lt_044A:	.ascii	"as \0"
.balign 4
Lt_044F:	.ascii	"...\0"
.balign 4
Lt_0454:	.ascii	")\0"
.balign 4
Lt_045C:	.ascii	" byref\0"
.balign 4
Lt_045E:	.ascii	" as \0"
.balign 4
Lt_046B:	.ascii	"constructor\0"
.balign 4
Lt_046D:	.ascii	"destructor\0"
.balign 4
Lt_046F:	.ascii	"operator.\0"
.balign 4
Lt_0475:	.ascii	".property.\0"
.balign 4
Lt_0478:	.ascii	"get\0"
.balign 4
Lt_0479:	.ascii	"set\0"
