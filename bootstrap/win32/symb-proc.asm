	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBPROCINIT@0
_SYMBPROCINIT@0:
.Lt_0068:
mov dword ptr [_SYMB+99048], 0
mov dword ptr [_SYMB+99052], 0
push 6
push 8
push 8
lea eax, [_SYMB+99056]
push eax
call _LISTINIT@16
mov dword ptr [_SYMB+99088], 0
mov dword ptr [_SYMB+99092], 0
push 6
push 8
push 8
lea eax, [_SYMB+99096]
push eax
call _LISTINIT@16
.Lt_0069:
ret
.balign 16

.globl _SYMBPROCEND@0
_SYMBPROCEND@0:
.Lt_006A:
lea eax, [_SYMB+99096]
push eax
call _LISTEND@4
lea eax, [_SYMB+99056]
push eax
call _LISTEND@4
.Lt_006B:
ret
.balign 16

.globl _SYMBPROCALLOCEXT@4
_SYMBPROCALLOCEXT@4:
push ebp
mov ebp, esp
push ebx
.Lt_006C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
jne .Lt_006F
push 76
call _XCALLOCATE@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+112], eax
.Lt_006F:
.Lt_006E:
.Lt_006D:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBPROCFREEEXT@4
_SYMBPROCFREEEXT@4:
push ebp
mov ebp, esp
.Lt_0070:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .Lt_0073
mov eax, dword ptr [ebp+8]
push dword ptr [eax+112]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+112], 0
.Lt_0073:
.Lt_0072:
.Lt_0071:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBPROCRETURNSONSTACK@4
_SYMBPROCRETURNSONSTACK@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0074:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .Lt_0077
jmp .Lt_0075
.Lt_0077:
.Lt_0076:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 20
jne .Lt_0079
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+32], 0
je .Lt_007A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebx+132]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-8], eax
jmp .Lt_007E
.Lt_007A:
mov dword ptr [ebp-8], 0
.Lt_007E:
cmp dword ptr [ebp-8], 0
je .Lt_007D
jmp .Lt_0075
jmp .Lt_007C
.Lt_007D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
and ebx, 511
cmp ebx, 52
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_007C:
.Lt_0079:
.Lt_0078:
.Lt_0075:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBCALCARGLEN@12
_SYMBCALCARGLEN@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0083:
cmp dword ptr [ebp+16], 2
je .Lt_0087
.Lt_0088:
cmp dword ptr [ebp+16], 3
jne .Lt_0086
.Lt_0087:
mov ebx, dword ptr [_ENV+272]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
jmp .Lt_0084
.Lt_0086:
.Lt_0085:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _TYPEISTRIVIAL@8
test eax, eax
jne .Lt_008A
mov ebx, dword ptr [_ENV+272]
mov eax, ebx
sar eax, 31
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
jmp .Lt_0084
.Lt_008A:
.Lt_0089:
push dword ptr [_ENV+272]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBCALCLEN@8
push edx
push eax
call _HALIGNTOPOW2@12
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.Lt_0084:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBCALCPARAMLEN@12
_SYMBCALCPARAMLEN@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_008B:
cmp dword ptr [ebp+16], 4
jne .Lt_008E
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
jmp .Lt_008D
.Lt_008E:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBCALCARGLEN@12
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], edx
.Lt_008D:
.Lt_008C:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBPROCCALCSTDCALLSUFFIXN@4
_SYMBPROCCALCSTDCALLSUFFIXN@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_008F:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-20], ebx
.Lt_0091:
cmp dword ptr [ebp-20], 0
je .Lt_0092
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
call _TYPEISTRIVIAL@8
not eax
and ebx, eax
je .Lt_0094
mov eax, dword ptr [ebp-20]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-20]
push dword ptr [eax+28]
call _SYMBCALCLEN@8
add dword ptr [ebp-16], eax
adc dword ptr [ebp-12], edx
jmp .Lt_0093
.Lt_0094:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+40]
mov edx, dword ptr [eax+44]
add dword ptr [ebp-16], ebx
adc dword ptr [ebp-12], edx
.Lt_0093:
mov ebx, dword ptr [ebp-20]
mov edx, dword ptr [ebx+176]
mov dword ptr [ebp-20], edx
jmp .Lt_0091
.Lt_0092:
mov ebx, dword ptr [ebp-16]
mov edx, dword ptr [ebp-12]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], edx
.Lt_0090:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBPROCCALCBYTESTOPOP@4
_SYMBPROCCALCBYTESTOPOP@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0096:
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
je .Lt_0099
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-24], eax
.Lt_009A:
cmp dword ptr [ebp-24], 0
je .Lt_009B
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add dword ptr [ebp-16], ecx
adc dword ptr [ebp-12], ebx
mov ecx, dword ptr [ebp-24]
mov ebx, dword ptr [ecx+176]
mov dword ptr [ebp-24], ebx
jmp .Lt_009A
.Lt_009B:
.Lt_0099:
.Lt_0098:
push dword ptr [ebp+8]
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
je .Lt_009D
mov eax, dword ptr [_ENV+260]
and eax, 8
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-20]
je .Lt_009F
mov ebx, dword ptr [_ENV+272]
mov eax, ebx
sar eax, 31
add dword ptr [ebp-16], ebx
adc dword ptr [ebp-12], eax
.Lt_009F:
.Lt_009E:
.Lt_009D:
.Lt_009C:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
.Lt_0097:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBADDPROCPARAM@32
_SYMBADDPROCPARAM@32:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A2:
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
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00A5
jmp .Lt_00A3
.Lt_00A5:
.Lt_00A4:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
inc ebx
mov eax, dword ptr [ebp+8]
mov word ptr [eax+68], bx
push dword ptr [ebp+28]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _SYMBCALCPARAMLEN@12
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
jne .Lt_00A7
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+24]
call _SYMBADDARRAYDESCRIPTORTYPE@12
mov edx, dword ptr [ebp-8]
mov dword ptr [edx+72], eax
jmp .Lt_00A6
.Lt_00A7:
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+72], 0
.Lt_00A6:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_00A8
mov dword ptr [ebp-12], 24
jmp .Lt_00B0
.Lt_00A8:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_00B0:
cmp dword ptr [ebp-12], 20
jne .Lt_00AB
cmp dword ptr [ebp+28], 1
jne .Lt_00AD
mov eax, dword ptr [_SYMB+98536]
cmp dword ptr [ebp+20], eax
jne .Lt_00AF
mov eax, dword ptr [ebp+20]
or dword ptr [eax+120], 32
.Lt_00AF:
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
.Lt_00AB:
.Lt_00AA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 32
.balign 16

.globl _SYMBMAKEPARAMOPTIONAL@12
_SYMBMAKEPARAMOPTIONAL@12:
push ebp
mov ebp, esp
push ebx
.Lt_00B1:
cmp dword ptr [ebp+16], 0
jne .Lt_00B4
jmp .Lt_00B2
.Lt_00B4:
.Lt_00B3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+70]
inc eax
mov ebx, dword ptr [ebp+8]
mov word ptr [ebx+70], ax
.Lt_00B2:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBISPROCOVERLOADOF@8
_SYMBISPROCOVERLOADOF@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B5:
cmp dword ptr [ebp+12], 0
jne .Lt_00B8
mov dword ptr [ebp-4], 0
jmp .Lt_00B6
.Lt_00B8:
.Lt_00B7:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jne .Lt_00BA
mov dword ptr [ebp-4], -1
jmp .Lt_00B6
.Lt_00BA:
.Lt_00B9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
jne .Lt_00BC
mov dword ptr [ebp-4], 0
jmp .Lt_00B6
.Lt_00BC:
.Lt_00BB:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+108]
mov dword ptr [ebp-8], eax
.Lt_00BD:
cmp dword ptr [ebp-8], 0
je .Lt_00BE
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp+8], eax
jne .Lt_00C0
mov dword ptr [ebp-4], -1
jmp .Lt_00B6
.Lt_00C0:
.Lt_00BF:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp-8], ebx
jmp .Lt_00BD
.Lt_00BE:
mov dword ptr [ebp-4], 0
.Lt_00B6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBPROCRECALCREALTYPE@4
_SYMBPROCRECALCREALTYPE@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00C1:
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
je .Lt_00C4
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
.Lt_00C4:
.Lt_00C3:
mov ebx, dword ptr [ebp-4]
and ebx, 511
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 17
je .Lt_00C8
.Lt_00C9:
cmp dword ptr [ebp-12], 7
jne .Lt_00C7
.Lt_00C8:
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
jmp .Lt_00C5
.Lt_00C7:
cmp dword ptr [ebp-12], 20
jne .Lt_00CA
.Lt_00CB:
mov ebx, dword ptr [_SYMB+98536]
cmp dword ptr [ebp-8], ebx
jne .Lt_00CD
mov ebx, dword ptr [ebp-8]
or dword ptr [ebx+120], 64
jmp .Lt_00CC
.Lt_00CD:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+128]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
and eax, 31
cmp eax, 20
je .Lt_00CF
mov dword ptr [ebp-8], 0
.Lt_00CF:
.Lt_00CE:
.Lt_00CC:
.Lt_00CA:
.Lt_00C5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+88], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+92], eax
.Lt_00C2:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBADDPROC@36
_SYMBADDPROC@36:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_018F:
mov eax, dword ptr [_SYMB+98536]
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
call _HSETUPPROC@48
mov dword ptr [ebp-4], eax
.Lt_0190:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 36
.balign 16

.globl _SYMBADDOPERATOR@36
_SYMBADDOPERATOR@36:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0191:
push dword ptr [ebp+8]
call _SYMBPROCALLOCEXT@4
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
call _SYMBADDPROC@36
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0194
push dword ptr [ebp+8]
call _SYMBPROCFREEEXT@4
jmp .Lt_0192
.Lt_0194:
.Lt_0193:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0192:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 36
.balign 16

.globl _SYMBADDCTOR@24
_SYMBADDCTOR@24:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0195:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push 0
push 0
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
call _SYMBADDPROC@36
mov dword ptr [ebp-4], eax
.Lt_0196:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE@24
_SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE@24:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0197:
cmp dword ptr [_PARSER+96], 0
jne .Lt_019A
lea eax, [_SYMB+98352]
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
jmp .Lt_0199
.Lt_019A:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [_SYMB+98536]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+24]
mov eax, dword ptr [_SYMB+98544]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
lea eax, [ebx+68]
mov ebx, dword ptr [ebp+28]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 128
.Lt_0199:
push 0
push -1
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call _SYMBLOOKUPAT@16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_019C
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.Lt_019C:
.Lt_019B:
.Lt_0198:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _SYMBADDPROCPTR@24
_SYMBADDPROCPTR@24:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_019D:
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
push offset _Lt_019F
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
push 0
push dword ptr [ebp+8]
push 22
lea eax, [ebp-32]
push eax
call _SYMBMANGLETYPE@16
call _SYMBMANGLERESETABBREV@0
push 0
push 2
push offset _Lt_01A0
push -1
lea eax, [ebp-32]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+28]
call _fb_HEX_i@4
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrConcatAssign@20
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
call _SYMBLOOKUPINTERNALLYMANGLEDSUBTYPE@24
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_01A2
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
lea eax, [ebp-32]
push eax
call _fb_StrDelete@4
jmp .Lt_019E
.Lt_01A2:
.Lt_01A1:
push 5
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
call _SYMBUNIQUEID@4
push eax
push dword ptr [ebp-32]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _HSETUPPROC@48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_01A4
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 16384
.Lt_01A4:
.Lt_01A3:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
lea eax, [ebp-32]
push eax
call _fb_StrDelete@4
.Lt_019E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16

.globl _SYMBADDPROCPTRFROMFUNCTION@4
_SYMBADDPROCPTRFROMFUNCTION@4:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A5:
push 0
call _SYMBPREADDPROC@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax+96]
mov dword ptr [ebx+96], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+76]
mov dword ptr [ebp-12], ebx
.Lt_01A7:
cmp dword ptr [ebp-12], 0
je .Lt_01A8
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
call _SYMBADDPROCPARAM@32
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 2048
test ebx, ebx
je .Lt_01AA
mov ebx, dword ptr [ebp-24]
or dword ptr [ebx+12], 2048
.Lt_01AA:
.Lt_01A9:
mov ebx, dword ptr [ebp-12]
push dword ptr [ebx+64]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _SYMBMAKEPARAMOPTIONAL@12
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp-12], eax
jmp .Lt_01A7
.Lt_01A8:
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
call _SYMBADDPROCPTR@24
mov dword ptr [ebp-4], eax
.Lt_01A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBPREADDPROC@4
_SYMBPREADDPROC@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01AB:
lea eax, [_SYMB+4]
push eax
call _LISTNEWNODE@4
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
mov ebx, dword ptr [_ENV+252]
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
mov ebx, dword ptr [_SYMB+98536]
lea eax, [ebx+56]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+164], eax
mov eax, dword ptr [_SYMB+98536]
lea ebx, [eax+68]
mov eax, dword ptr [ebp-8]
mov dword ptr [eax+144], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+148], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+152], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+156], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+160], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+168], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+172], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+176], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_01AC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl __Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_@16
__Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_@16:
push ebp
mov ebp, esp
push ebx
.Lt_01AD:
cmp dword ptr [ebp+8], 1
jne .Lt_01B0
.Lt_01B1:
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _TYPEISTRIVIAL@8
test eax, eax
jne .Lt_01B3
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
.Lt_01B3:
.Lt_01B2:
jmp .Lt_01AF
.Lt_01B0:
cmp dword ptr [ebp+8], 2
jne .Lt_01B4
.Lt_01B5:
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
jmp .Lt_01AF
.Lt_01B4:
cmp dword ptr [ebp+8], 3
jne .Lt_01B6
.Lt_01B7:
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 52
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx], eax
.Lt_01B6:
.Lt_01AF:
.Lt_01AE:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl __Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_@12
__Z21SYMBGETREALPARAMDTYPEP8FBSYMBOLRlRS0_@12:
push ebp
mov ebp, esp
push ebx
.Lt_01B8:
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
call __Z21SYMBGETREALPARAMDTYPElP8FBSYMBOLRlRS0_@16
.Lt_01B9:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBADDVARFORPARAM@4
_SYMBADDVARFORPARAM@4:
push ebp
mov ebp, esp
sub esp, 76
push ebx
mov dword ptr [ebp-4], 0
.Lt_01BA:
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
jmp .Lt_01BE
.Lt_01C0:
mov dword ptr [ebp-64], 32768
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
push dword ptr [ebp-68]
call _TYPEISTRIVIAL@8
test eax, eax
jne .Lt_01C2
mov dword ptr [ebp-64], 65536
.Lt_01C2:
.Lt_01C1:
jmp .Lt_01BD
.Lt_01C3:
mov dword ptr [ebp-64], 65536
jmp .Lt_01BD
.Lt_01C4:
mov dword ptr [ebp-64], 16384
jmp .Lt_01BD
.Lt_01C5:
jmp .Lt_01BB
jmp .Lt_01BD
.Lt_01BE:
mov eax, dword ptr [ebp-76]
add eax, 4294967295
cmp eax, 2
ja .Lt_01C5
mov eax, dword ptr [ebp-76]
jmp dword ptr [_.LT_01C6+eax*4-4]
_.LT_01C6:
.int .Lt_01C0
.int .Lt_01C3
.int .Lt_01C4
.Lt_01BD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 1048576
test ebx, ebx
je .Lt_01C8
or dword ptr [ebp-64], 1048576
.Lt_01C8:
.Lt_01C7:
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
call _SYMBADDVAR@40
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .Lt_01CA
jmp .Lt_01BB
.Lt_01CA:
.Lt_01C9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-60]
mov ecx, dword ptr [eax+72]
mov dword ptr [ebx+92], ecx
mov ecx, dword ptr [ebp-60]
or dword ptr [ecx+12], 8
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
and ebx, 2048
test ebx, ebx
je .Lt_01CC
mov ebx, dword ptr [ebp-60]
or dword ptr [ebx+12], 2048
.Lt_01CC:
.Lt_01CB:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+12]
and ecx, 524288
je .Lt_01CE
mov ecx, dword ptr [ebp-60]
or dword ptr [ecx+12], 524288
.Lt_01CE:
.Lt_01CD:
mov ecx, dword ptr [ebp-60]
mov dword ptr [ebp-4], ecx
.Lt_01BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBADDVARFORPROCRESULTPARAM@4
_SYMBADDVARFORPROCRESULTPARAM@4:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.Lt_01CF:
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
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
jne .Lt_01D3
mov dword ptr [ebp-4], 0
jmp .Lt_01D0
.Lt_01D3:
.Lt_01D2:
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
call _SYMBUNIQUEID@4
push eax
call _SYMBADDVAR@40
mov dword ptr [ebp-60], eax
push dword ptr [ebp+8]
call _SYMBPROCALLOCEXT@4
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
.Lt_01D0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBADDPROCRESULTVAR@4
_SYMBADDPROCRESULTVAR@4:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_01D4:
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
call _SYMBPROCRETURNSONSTACK@4
test eax, eax
je .Lt_01D8
push dword ptr [ebp+8]
call _SYMBGETPROCRESULT@4
mov dword ptr [ebp-4], eax
jmp .Lt_01D5
.Lt_01D8:
.Lt_01D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-64], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
je .Lt_01DA
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
.Lt_01DA:
.Lt_01D9:
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
push offset _Lt_01DB
call _SYMBADDVAR@40
mov dword ptr [ebp-60], eax
push dword ptr [ebp+8]
call _SYMBPROCALLOCEXT@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp-60]
mov dword ptr [ebx], eax
push -1
push dword ptr [ebp-60]
call _ASTNEWDECL@8
push eax
call _ASTADD@4
mov eax, dword ptr [ebp-60]
or dword ptr [eax+12], 8
mov eax, dword ptr [ebp-60]
or dword ptr [eax+12], 16
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-4], eax
.Lt_01D5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBADDPROCINSTANCEPARAM@8
_SYMBADDPROCINSTANCEPARAM@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01DC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 10
jne .Lt_01E0
.Lt_01E1:
mov dword ptr [ebp-4], 20
jmp .Lt_01DE
.Lt_01E0:
cmp dword ptr [ebp-8], 11
jne .Lt_01E2
.Lt_01E3:
.Lt_01E2:
.Lt_01DE:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 2048
test eax, eax
je .Lt_01E5
or dword ptr [ebp-4], 512
.Lt_01E5:
.Lt_01E4:
push 0
push 524288
push 2
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-4]
push offset _Lt_0023
push dword ptr [ebp+12]
call _SYMBADDPROCPARAM@32
.Lt_01DD:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBFINDOVERLOADPROC@12
_SYMBFINDOVERLOADPROC@12:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_01E6:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_01E9
mov dword ptr [ebp-4], 0
jmp .Lt_01E7
.Lt_01E9:
.Lt_01E8:
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
je .Lt_01EB
mov dword ptr [ebp-4], 0
jmp .Lt_01E7
.Lt_01EB:
.Lt_01EA:
mov ecx, dword ptr [ebp+12]
movsx eax, word ptr [ecx+68]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
je .Lt_01ED
dec dword ptr [ebp-32]
.Lt_01ED:
.Lt_01EC:
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
.Lt_01EE:
mov eax, dword ptr [ebp-8]
movsx ecx, word ptr [eax+68]
mov dword ptr [ebp-28], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8]
and eax, 2
test eax, eax
je .Lt_01F2
dec dword ptr [ebp-28]
.Lt_01F2:
.Lt_01F1:
cmp dword ptr [ebp-40], 0
je .Lt_01F4
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
je .Lt_01F6
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+28]
and ecx, 511
test ecx, ecx
jne .Lt_01F8
mov dword ptr [ebp-28], -1
.Lt_01F8:
.Lt_01F7:
jmp .Lt_01F5
.Lt_01F6:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+28]
and eax, 511
test eax, eax
je .Lt_01FA
mov dword ptr [ebp-28], -1
.Lt_01FA:
.Lt_01F9:
.Lt_01F5:
.Lt_01F4:
.Lt_01F3:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-32], eax
jne .Lt_01FC
cmp dword ptr [ebp-32], 0
jne .Lt_01FE
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_01E7
.Lt_01FE:
.Lt_01FD:
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+80]
mov dword ptr [ebp-12], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-16], eax
.Lt_01FF:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _HCANOVERLOADBYDESC@8
test eax, eax
je .Lt_0203
jmp .Lt_0200
.Lt_0203:
.Lt_0202:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
mov ebx, dword ptr [ecx+28]
cmp dword ptr [eax+28], ebx
je .Lt_0205
jmp .Lt_0200
.Lt_0205:
.Lt_0204:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+32]
cmp dword ptr [ebx+32], ecx
je .Lt_0207
jmp .Lt_0200
.Lt_0207:
.Lt_0206:
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+172]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+172]
mov dword ptr [ebp-12], ecx
dec dword ptr [ebp-28]
.Lt_0201:
cmp dword ptr [ebp-28], 0
jg .Lt_01FF
.Lt_0200:
cmp dword ptr [ebp-28], 0
jne .Lt_0209
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
jmp .Lt_01E7
.Lt_0209:
.Lt_0208:
.Lt_01FC:
.Lt_01FB:
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ecx+108]
mov dword ptr [ebp-8], ebx
.Lt_01F0:
cmp dword ptr [ebp-8], 0
jne .Lt_01EE
.Lt_01EF:
mov dword ptr [ebp-4], 0
.Lt_01E7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBFINDOPOVLPROC@12
_SYMBFINDOPOVLPROC@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_020F:
cmp dword ptr [ebp+8], 27
je .Lt_0212
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _SYMBFINDOVERLOADPROC@12
mov dword ptr [ebp-4], eax
jmp .Lt_0210
.Lt_0212:
.Lt_0211:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_0213:
cmp dword ptr [ebp-8], 0
je .Lt_0214
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+28]
cmp dword ptr [eax+28], ecx
jne .Lt_0216
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
cmp dword ptr [ecx+32], ebx
jne .Lt_0218
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
jmp .Lt_0210
.Lt_0218:
.Lt_0217:
.Lt_0216:
.Lt_0215:
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+108]
mov dword ptr [ebp-8], ecx
jmp .Lt_0213
.Lt_0214:
mov dword ptr [ebp-4], 0
.Lt_0210:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBFINDCTORPROC@8
_SYMBFINDCTORPROC@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0219:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
je .Lt_021C
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
jmp .Lt_021A
jmp .Lt_021B
.Lt_021C:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBFINDOVERLOADPROC@12
mov dword ptr [ebp-4], eax
.Lt_021B:
.Lt_021A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBFINDCLOSESTOVLPROC@20
_SYMBFINDCLOSESTOVLPROC@20:
push ebp
mov ebp, esp
sub esp, 60
push ebx
mov dword ptr [ebp-4], 0
.Lt_02D9:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 0
jne .Lt_02DC
mov dword ptr [ebp-4], 0
jmp .Lt_02DA
.Lt_02DC:
.Lt_02DB:
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
.Lt_02DD:
mov ebx, dword ptr [ebp-8]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_02E1
dec dword ptr [ebp-48]
.Lt_02E1:
.Lt_02E0:
cmp dword ptr [ebp-44], 0
je .Lt_02E3
mov ebx, dword ptr [ebp+24]
and ebx, 1
test ebx, ebx
je .Lt_02E5
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
jne .Lt_02E7
mov dword ptr [ebp-48], -1
.Lt_02E7:
.Lt_02E6:
jmp .Lt_02E4
.Lt_02E5:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_02E9
mov dword ptr [ebp-48], -1
.Lt_02E9:
.Lt_02E8:
.Lt_02E4:
.Lt_02E3:
.Lt_02E2:
mov ebx, dword ptr [ebp-48]
cmp dword ptr [ebp+12], ebx
jg .Lt_02EB
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_02ED
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp-16], eax
.Lt_02ED:
.Lt_02EC:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-40], eax
mov dword ptr [ebp-56], 0
mov eax, dword ptr [ebp+12]
dec eax
mov dword ptr [ebp-60], eax
jmp .Lt_02EF
.Lt_02F2:
mov eax, dword ptr [ebp-40]
push dword ptr [eax+4]
mov eax, dword ptr [ebp-40]
push dword ptr [eax]
push dword ptr [ebp-16]
push dword ptr [ebp-8]
call _HCHECKOVLPARAM@16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_02F4
mov dword ptr [ebp-24], 0
jmp .Lt_02F1
.Lt_02F4:
.Lt_02F3:
cmp dword ptr [ebp-20], 52
jl .Lt_02F6
inc dword ptr [ebp-32]
.Lt_02F6:
.Lt_02F5:
mov eax, dword ptr [ebp-20]
add dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-40]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-40], eax
.Lt_02F0:
inc dword ptr [ebp-56]
.Lt_02EF:
mov eax, dword ptr [ebp-60]
cmp dword ptr [ebp-56], eax
jle .Lt_02F2
.Lt_02F1:
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
jmp .Lt_02F8
.Lt_02FB:
mov eax, dword ptr [ebp-16]
cmp dword ptr [eax+64], 0
jne .Lt_02FD
mov dword ptr [ebp-52], 0
jmp .Lt_02FA
.Lt_02FD:
.Lt_02FC:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-16], ebx
.Lt_02F9:
inc dword ptr [ebp-56]
.Lt_02F8:
mov ebx, dword ptr [ebp-60]
cmp dword ptr [ebp-56], ebx
jle .Lt_02FB
.Lt_02FA:
cmp dword ptr [ebp-52], 0
je .Lt_02FF
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
je .Lt_0301
mov dword ptr [ebp-56], -1
mov eax, dword ptr [ebp+24]
and eax, 2
je .Lt_0303
mov eax, dword ptr [ebp-32]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
.Lt_0303:
.Lt_0302:
cmp dword ptr [ebp-56], 0
je .Lt_0305
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-36], 1
.Lt_0305:
.Lt_0304:
jmp .Lt_0300
.Lt_0301:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jne .Lt_0306
inc dword ptr [ebp-36]
.Lt_0306:
.Lt_0300:
.Lt_02FF:
.Lt_02FE:
.Lt_02EB:
.Lt_02EA:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp-8], ebx
.Lt_02DF:
cmp dword ptr [ebp-8], 0
jne .Lt_02DD
.Lt_02DE:
cmp dword ptr [ebp-36], 1
jle .Lt_0308
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 98
mov dword ptr [ebp-4], 0
jmp .Lt_0307
.Lt_0308:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
.Lt_0307:
.Lt_02DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _SYMBFINDBOPOVLPROC@16
_SYMBFINDBOPOVLPROC@16:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_030F:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 20
je .Lt_0314
.Lt_0315:
cmp dword ptr [ebp-36], 10
jne .Lt_0313
.Lt_0314:
jmp .Lt_0311
.Lt_0313:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 511
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 20
je .Lt_031A
.Lt_031B:
cmp dword ptr [ebp-40], 10
jne .Lt_0319
.Lt_031A:
jmp .Lt_0317
.Lt_0319:
mov dword ptr [ebp-4], 0
jmp .Lt_0310
.Lt_031C:
.Lt_0317:
.Lt_0316:
.Lt_0311:
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
mov ebx, offset _SYMB
add ebx, eax
push dword ptr [ebx+99128]
call _SYMBFINDCLOSESTOVLPROC@20
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_031E
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
je .Lt_0320
push 0
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call _ERRREPORT@12
.Lt_0320:
.Lt_031F:
.Lt_031E:
.Lt_031D:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-4], eax
.Lt_0310:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _SYMBFINDSELFBOPOVLPROC@16
_SYMBFINDSELFBOPOVLPROC@16:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0321:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 20
jne .Lt_0325
.Lt_0326:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax+140], 0
jne .Lt_0328
mov dword ptr [ebp-4], 0
jmp .Lt_0322
.Lt_0328:
.Lt_0327:
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov ecx, dword ptr [eax+140]
add ecx, ebx
mov ebx, dword ptr [ecx+28]
mov dword ptr [ebp-24], ebx
jmp .Lt_0323
.Lt_0325:
mov dword ptr [ebp-4], 0
jmp .Lt_0322
.Lt_0329:
.Lt_0323:
cmp dword ptr [ebp-24], 0
jne .Lt_032B
mov dword ptr [ebp-4], 0
jmp .Lt_0322
.Lt_032B:
.Lt_032A:
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
call _SYMBFINDCLOSESTOVLPROC@20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_032D
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
je .Lt_032F
push 0
push -1
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call _ERRREPORT@12
.Lt_032F:
.Lt_032E:
jmp .Lt_032C
.Lt_032D:
push dword ptr [ebp-20]
call _SYMBCHECKACCESS@4
test eax, eax
jne .Lt_0331
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 202
push 0
push 1
push 0
push dword ptr [ebp-20]
call _SYMBGETFULLPROCNAME@4
push eax
push 202
call _ERRREPORTEX@20
mov dword ptr [ebp-20], 0
.Lt_0331:
.Lt_0330:
.Lt_032C:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0322:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _SYMBFINDUOPOVLPROC@12
_SYMBFINDUOPOVLPROC@12:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_0332:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 20
je .Lt_0337
.Lt_0338:
cmp dword ptr [ebp-24], 10
jne .Lt_0336
.Lt_0337:
jmp .Lt_0334
.Lt_0336:
mov dword ptr [ebp-4], 0
jmp .Lt_0333
.Lt_0339:
.Lt_0334:
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
mov eax, offset _SYMB
add eax, ebx
push dword ptr [eax+99128]
call _SYMBFINDCLOSESTOVLPROC@20
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_033B
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .Lt_033D
push 0
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _ERRREPORT@12
.Lt_033D:
.Lt_033C:
.Lt_033B:
.Lt_033A:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0333:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBFINDSELFUOPOVLPROC@12
_SYMBFINDSELFUOPOVLPROC@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_033E:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 20
jne .Lt_0342
.Lt_0343:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-20]
cmp dword ptr [eax+140], 0
jne .Lt_0345
mov dword ptr [ebp-4], 0
jmp .Lt_033F
.Lt_0345:
.Lt_0344:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov ecx, dword ptr [eax+140]
add ecx, ebx
mov ebx, dword ptr [ecx+28]
mov dword ptr [ebp-12], ebx
jmp .Lt_0340
.Lt_0342:
mov dword ptr [ebp-4], 0
jmp .Lt_033F
.Lt_0346:
.Lt_0340:
cmp dword ptr [ebp-12], 0
jne .Lt_0348
mov dword ptr [ebp-4], 0
jmp .Lt_033F
.Lt_0348:
.Lt_0347:
push 0
push dword ptr [ebp+16]
push 0
push 0
push dword ptr [ebp-12]
call _SYMBFINDCLOSESTOVLPROC@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_034A
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax], 0
je .Lt_034C
push 0
push -1
mov eax, dword ptr [ebp+16]
push dword ptr [eax]
call _ERRREPORT@12
.Lt_034C:
.Lt_034B:
jmp .Lt_0349
.Lt_034A:
push dword ptr [ebp-8]
call _SYMBCHECKACCESS@4
test eax, eax
jne .Lt_034E
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 202
push 0
push 1
push 0
push dword ptr [ebp-8]
call _SYMBGETFULLPROCNAME@4
push eax
push 202
call _ERRREPORTEX@20
mov dword ptr [ebp-8], 0
.Lt_034E:
.Lt_034D:
.Lt_0349:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_033F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBFINDCASTOVLPROC@20
_SYMBFINDCASTOVLPROC@20:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_0369:
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 20
jne .Lt_036D
.Lt_036E:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 0
jne .Lt_0370
mov dword ptr [ebp-4], 0
jmp .Lt_036A
.Lt_0370:
.Lt_036F:
mov eax, dword ptr [ebp-44]
cmp dword ptr [eax+140], 0
jne .Lt_0372
mov dword ptr [ebp-4], 0
jmp .Lt_036A
.Lt_0372:
.Lt_0371:
mov eax, dword ptr [ebp-44]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx+136]
mov dword ptr [ebp-8], eax
jmp .Lt_036B
.Lt_036D:
mov dword ptr [ebp-4], 0
jmp .Lt_036A
.Lt_0373:
.Lt_036B:
cmp dword ptr [ebp-8], 0
jne .Lt_0375
mov dword ptr [ebp-4], 0
jmp .Lt_036A
.Lt_0375:
.Lt_0374:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_0376
mov dword ptr [ebp-36], 24
jmp .Lt_038F
.Lt_0376:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-36], eax
.Lt_038F:
cmp dword ptr [ebp-36], 0
je .Lt_0379
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-16], eax
.Lt_037A:
cmp dword ptr [ebp-16], 0
je .Lt_037B
push dword ptr [ebp+24]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call _HCHECKCASTOVL@16
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jle .Lt_037D
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-32], 1
jmp .Lt_037C
.Lt_037D:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jne .Lt_037E
cmp dword ptr [ebp-28], 0
jle .Lt_0380
inc dword ptr [ebp-32]
.Lt_0380:
.Lt_037F:
.Lt_037E:
.Lt_037C:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp-16], ebx
jmp .Lt_037A
.Lt_037B:
jmp .Lt_0378
.Lt_0379:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-16], ebx
.Lt_0381:
cmp dword ptr [ebp-16], 0
je .Lt_0382
mov ebx, dword ptr [ebp-16]
cmp dword ptr [ebx+32], 0
jne .Lt_0384
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 16
jg .Lt_0386
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov eax, dword ptr [ebp+8]
cmp ebx, eax
jle .Lt_0388
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp+8], ebx
.Lt_0388:
.Lt_0387:
.Lt_0386:
.Lt_0385:
.Lt_0384:
.Lt_0383:
mov ebx, dword ptr [ebp-16]
mov eax, dword ptr [ebx+108]
mov dword ptr [ebp-16], eax
jmp .Lt_0381
.Lt_0382:
.Lt_0378:
cmp dword ptr [ebp-32], 1
jle .Lt_038A
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 98
push 98
push 0
push 0
push dword ptr [ebp-8]
call _ERRREPORTPARAM@16
mov dword ptr [ebp-20], 0
jmp .Lt_0389
.Lt_038A:
cmp dword ptr [ebp-20], 0
je .Lt_038C
push dword ptr [ebp-20]
call _SYMBCHECKACCESS@4
test eax, eax
jne .Lt_038E
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 202
push 0
push 1
push 0
push dword ptr [ebp-20]
call _SYMBGETFULLPROCNAME@4
push eax
push 202
call _ERRREPORTEX@20
mov dword ptr [ebp-20], 0
.Lt_038E:
.Lt_038D:
.Lt_038C:
.Lt_038B:
.Lt_0389:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_036A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _SYMBFINDCTOROVLPROC@16
_SYMBFINDCTOROVLPROC@16:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0390:
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
call _SYMBGETCOMPCTORHEAD@4
push eax
call _SYMBFINDCLOSESTOVLPROC@20
mov dword ptr [ebp-4], eax
.Lt_0391:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _SYMBDELPROTOTYPE@4
_SYMBDELPROTOTYPE@4:
push ebp
mov ebp, esp
push ebx
.Lt_0396:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jle .Lt_0399
push dword ptr [ebp+8]
call _HDELPARAMS@4
.Lt_0399:
.Lt_0398:
push dword ptr [ebp+8]
call _SYMBPROCFREEEXT@4
push dword ptr [ebp+8]
call _SYMBFREESYMBOL@4
.Lt_0397:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBADDGLOBALCTOR@4
_SYMBADDGLOBALCTOR@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_039E:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 65538
push dword ptr [ebp+8]
lea eax, [_SYMB+99048]
push eax
call _HADDTOGLOBCTORLIST@8
mov dword ptr [ebp-4], eax
.Lt_039F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBADDGLOBALDTOR@4
_SYMBADDGLOBALDTOR@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_03A0:
mov eax, dword ptr [ebp+8]
or dword ptr [eax+12], 131074
push dword ptr [ebp+8]
lea eax, [_SYMB+99088]
push eax
call _HADDTOGLOBCTORLIST@8
mov dword ptr [ebp-4], eax
.Lt_03A1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBCALCPROCMATCH@12
_SYMBCALCPROCMATCH@12:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_03AC:
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .Lt_03AE
mov dword ptr [ebp-8], 2
jmp .Lt_03C8
.Lt_03AE:
mov dword ptr [ebp-8], 1
.Lt_03C8:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
call _TYPECALCMATCH@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_03B1
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 225
mov dword ptr [ebp-4], 0
jmp .Lt_03AD
.Lt_03B1:
.Lt_03B0:
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
je .Lt_03B3
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 225
mov dword ptr [ebp-4], 0
jmp .Lt_03AD
.Lt_03B3:
.Lt_03B2:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBAREPROCMODESEQUAL@8
test eax, eax
jne .Lt_03B5
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 226
mov dword ptr [ebp-4], 0
jmp .Lt_03AD
.Lt_03B5:
.Lt_03B4:
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
je .Lt_03B7
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 2048
test ecx, ecx
je .Lt_03B9
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 229
jmp .Lt_03B8
.Lt_03B9:
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], 230
.Lt_03B8:
mov dword ptr [ebp-4], 0
jmp .Lt_03AD
.Lt_03B7:
.Lt_03B6:
mov ecx, dword ptr [ebp+8]
movsx ebx, word ptr [ecx+68]
mov ecx, dword ptr [ebp+12]
movsx eax, word ptr [ecx+68]
cmp ebx, eax
je .Lt_03BB
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 231
mov dword ptr [ebp-4], 0
jmp .Lt_03AD
.Lt_03BB:
.Lt_03BA:
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
je .Lt_03BD
cmp dword ptr [ebp-16], 0
setne al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_03BF
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
je .Lt_03C1
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+176]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+176]
mov dword ptr [ebp-20], ecx
.Lt_03C1:
.Lt_03C0:
.Lt_03BF:
.Lt_03BE:
.Lt_03BD:
.Lt_03BC:
.Lt_03C2:
cmp dword ptr [ebp-16], 0
je .Lt_03C3
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call _SYMBCALCPARAMMATCH@8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_03C5
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 231
mov dword ptr [ebp-4], 0
jmp .Lt_03AD
.Lt_03C5:
.Lt_03C4:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-12], eax
jle .Lt_03C7
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-12], eax
.Lt_03C7:
.Lt_03C6:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+176]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+176]
mov dword ptr [ebp-20], eax
jmp .Lt_03C2
.Lt_03C3:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_03AD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBPROCCHECKOVERRIDDEN@8
_SYMBPROCCHECKOVERRIDDEN@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_03D4:
push dword ptr [ebp+8]
call _SYMBPROCGETOVERRIDDEN@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_03D7
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _SYMBCALCPROCMATCH@12
test eax, eax
jne .Lt_03D9
mov eax, dword ptr [ebp-8]
cmp eax, 226
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp+12]
je .Lt_03DB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 8
test ebx, ebx
je .Lt_03DD
mov dword ptr [ebp-8], 227
jmp .Lt_03DC
.Lt_03DD:
mov dword ptr [ebp-8], 228
.Lt_03DC:
.Lt_03DB:
.Lt_03DA:
push 0
push 0
push dword ptr [ebp-8]
call _ERRREPORT@12
.Lt_03D9:
.Lt_03D8:
.Lt_03D7:
.Lt_03D6:
.Lt_03D5:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBPROCSETVTABLEINDEX@8
_SYMBPROCSETVTABLEINDEX@8:
push ebp
mov ebp, esp
push ebx
.Lt_03DF:
push dword ptr [ebp+8]
call _SYMBPROCALLOCEXT@4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+68], eax
.Lt_03E0:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBPROCGETVTABLEINDEX@4
_SYMBPROCGETVTABLEINDEX@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_03E1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .Lt_03E4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-4], eax
.Lt_03E4:
.Lt_03E3:
.Lt_03E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBPROCGETOVERRIDDEN@4
_SYMBPROCGETOVERRIDDEN@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_03E5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .Lt_03E8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+72]
mov dword ptr [ebp-4], eax
.Lt_03E8:
.Lt_03E7:
.Lt_03E6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETPROCRESULT@4
_SYMBGETPROCRESULT@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_03E9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
je .Lt_03EC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
.Lt_03EC:
.Lt_03EB:
.Lt_03EA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBPROCHASFWDREFINSIGNATURE@4
_SYMBPROCHASFWDREFINSIGNATURE@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_03ED:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
call _TYPEHASFWDREFINSIGNATURE@8
test eax, eax
je .Lt_03F0
mov dword ptr [ebp-4], -1
jmp .Lt_03EE
.Lt_03F0:
.Lt_03EF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
.Lt_03F1:
cmp dword ptr [ebp-8], 0
je .Lt_03F2
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-8]
push dword ptr [ebx+28]
call _TYPEHASFWDREFINSIGNATURE@8
test eax, eax
je .Lt_03F4
mov dword ptr [ebp-4], -1
jmp .Lt_03EE
.Lt_03F4:
.Lt_03F3:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-8], ebx
jmp .Lt_03F1
.Lt_03F2:
mov dword ptr [ebp-4], 0
.Lt_03EE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HDUMPDYNAMICARRAYDIMENSIONS@4
_HDUMPDYNAMICARRAYDIMENSIONS@4:
push ebp
mov ebp, esp
sub esp, 32
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0423:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset _Lt_0425
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-32], eax
jmp .Lt_0427
.Lt_042A:
cmp dword ptr [ebp-28], 1
jle .Lt_042C
push 0
push 3
push offset _Lt_042D
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.Lt_042C:
.Lt_042B:
push 0
push 4
push offset _Lt_042E
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.Lt_0428:
inc dword ptr [ebp-28]
.Lt_0427:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-28], eax
jle .Lt_042A
.Lt_0429:
push 0
push 3
push offset _Lt_042F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0424:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBPROCPTRTOSTR@4
_SYMBPROCPTRTOSTR@4:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0462:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HSUBORFUNCTOSTR@8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HPROCMODETOSTR@8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HPARAMSTOSTR@8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HRESULTTOSTR@8
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0463:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETFULLPROCNAME@4
_SYMBGETFULLPROCNAME@4:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0464:
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_047C
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_0466:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp-8], eax
je .Lt_0467
push 0
push -1
push -1
push offset _Lt_047C
push -1
push 2
push offset _Lt_0007
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+16]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_047C
call _fb_StrAssign@20
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+144]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_0466
.Lt_0467:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .Lt_046B
push 0
push 12
push offset _Lt_046C
push -1
push offset _Lt_047C
call _fb_StrConcatAssign@20
jmp .Lt_046A
.Lt_046B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 8
test eax, eax
je .Lt_046D
push 0
push 11
push offset _Lt_046E
push -1
push offset _Lt_047C
call _fb_StrConcatAssign@20
jmp .Lt_046A
.Lt_046D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .Lt_046F
push 0
push 10
push offset _Lt_0470
push -1
push offset _Lt_047C
call _fb_StrConcatAssign@20
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+112], 0
je .Lt_0472
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
mov ebx, dword ptr [eax+40]
sal ebx, 4
push dword ptr [_AST_OPTB+ebx+8]
push -1
push offset _Lt_047C
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_047C
call _fb_StrAssign@20
.Lt_0472:
.Lt_0471:
jmp .Lt_046A
.Lt_046F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_0474
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset _Lt_047C
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_047C
call _fb_StrAssign@20
push 0
push 11
push offset _Lt_0476
push -1
push offset _Lt_047C
call _fb_StrConcatAssign@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_0478
push 0
push 4
push offset _Lt_0479
push -1
push offset _Lt_047C
call _fb_StrConcatAssign@20
jmp .Lt_0477
.Lt_0478:
push 0
push 4
push offset _Lt_047A
push -1
push offset _Lt_047C
call _fb_StrConcatAssign@20
.Lt_0477:
jmp .Lt_046A
.Lt_0474:
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset _Lt_047C
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_047C
call _fb_StrAssign@20
.Lt_046A:
mov eax, dword ptr [_Lt_047C]
mov dword ptr [ebp-4], eax
.Lt_0465:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_047C,12

.section .text
.balign 16

.globl _SYMBMETHODTOSTR@4
_SYMBMETHODTOSTR@4:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_047D:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETFULLPROCNAME@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HPROCMODETOSTR@8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HPARAMSTOSTR@8
push dword ptr [ebp+8]
lea eax, [ebp-24]
push eax
call _HRESULTTOSTR@8
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_047E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETDEFAULTPARAMMODE@8
_SYMBGETDEFAULTPARAMMODE@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_047F:
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-8], ebx
jmp .Lt_0482
.Lt_0484:
mov dword ptr [ebp-4], 2
jmp .Lt_0480
jmp .Lt_0481
.Lt_0485:
mov dword ptr [ebp-4], 1
jmp .Lt_0480
jmp .Lt_0481
.Lt_0482:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967292
cmp ebx, 19
ja .Lt_0485
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.LT_0486+ebx*4-16]
_.LT_0486:
.int .Lt_0484
.int .Lt_0485
.int .Lt_0485
.int .Lt_0484
.int .Lt_0485
.int .Lt_0485
.int .Lt_0485
.int .Lt_0485
.int .Lt_0485
.int .Lt_0485
.int .Lt_0485
.int .Lt_0485
.int .Lt_0485
.int .Lt_0484
.int .Lt_0484
.int .Lt_0485
.int .Lt_0484
.int .Lt_0485
.int .Lt_0485
.int .Lt_0484
.Lt_0481:
.Lt_0480:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBAREPROCMODESEQUAL@8
_SYMBAREPROCMODESEQUAL@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0487:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+84]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-8], 1
je .Lt_048B
.Lt_048C:
cmp dword ptr [ebp-8], 2
jne .Lt_048A
.Lt_048B:
cmp dword ptr [ebp-12], 1
je .Lt_048F
.Lt_0490:
cmp dword ptr [ebp-12], 2
jne .Lt_048E
.Lt_048F:
mov dword ptr [ebp-4], -1
jmp .Lt_0488
.Lt_048E:
.Lt_048D:
.Lt_048A:
.Lt_0489:
mov eax, dword ptr [ebp-12]
cmp eax, dword ptr [ebp-8]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0488:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _SYMBALLOCOVLCALLARG@12
_SYMBALLOCOVLCALLARG@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0492:
push dword ptr [ebp+8]
call _LISTNEWNODE@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
jne .Lt_0495
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], 0
jne .Lt_0497
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+4], ebx
jmp .Lt_0496
.Lt_0497:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.Lt_0496:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+8], 0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+8], eax
jmp .Lt_0494
.Lt_0495:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+8], 0
jne .Lt_0499
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+8], ebx
.Lt_0499:
.Lt_0498:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+8], ecx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-8]
mov dword ptr [ecx+4], eax
.Lt_0494:
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0493:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBFREEOVLCALLARGS@8
_SYMBFREEOVLCALLARGS@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_049A:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.Lt_049C:
cmp dword ptr [ebp-4], 0
je .Lt_049D
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _LISTDELNODE@8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_049C
.Lt_049D:
.Lt_049B:
pop ebx
mov esp, ebp
pop ebp
ret 8
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
_HALIGNTOPOW2@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
push edi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0081:
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
.Lt_0082:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCANOVERLOAD@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D0:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jne .Lt_00D3
mov dword ptr [ebp-4], -1
jmp .Lt_00D1
.Lt_00D3:
.Lt_00D2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+80]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 4
jne .Lt_00D5
mov dword ptr [ebp-4], 0
jmp .Lt_00D1
.Lt_00D5:
.Lt_00D4:
.Lt_00D6:
cmp dword ptr [ebp-8], 0
je .Lt_00D7
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+28], 0
jne .Lt_00D9
mov dword ptr [ebp-4], 0
jmp .Lt_00D1
.Lt_00D9:
.Lt_00D8:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .Lt_00D6
.Lt_00D7:
mov dword ptr [ebp-4], -1
.Lt_00D1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCANOVERLOADBYDESC@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DA:
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
je .Lt_00DD
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
je .Lt_00DF
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
je .Lt_00E1
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+68]
cmp eax, dword ptr [ecx+68]
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_00E1:
.Lt_00E0:
jmp .Lt_00DE
.Lt_00DF:
mov dword ptr [ebp-4], -1
.Lt_00DE:
.Lt_00DD:
.Lt_00DC:
.Lt_00DB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HADDOVLPROC@44:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E2:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .Lt_00E5
jmp .Lt_00E3
.Lt_00E5:
.Lt_00E4:
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
je .Lt_00E7
jmp .Lt_00E3
.Lt_00E7:
.Lt_00E6:
mov ecx, dword ptr [ebp+8]
movsx eax, word ptr [ecx+68]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+44]
and eax, 2
test eax, eax
je .Lt_00E9
dec dword ptr [ebp-24]
.Lt_00E9:
.Lt_00E8:
cmp dword ptr [ebp-24], 0
jle .Lt_00EB
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+80]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-16]
cmp dword ptr [ecx+56], 4
jne .Lt_00ED
jmp .Lt_00E3
.Lt_00ED:
.Lt_00EC:
.Lt_00EE:
cmp dword ptr [ebp-16], 0
je .Lt_00EF
mov ecx, dword ptr [ebp-16]
cmp dword ptr [ecx+28], 0
jne .Lt_00F1
jmp .Lt_00E3
.Lt_00F1:
.Lt_00F0:
mov ecx, dword ptr [ebp-16]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-16], eax
jmp .Lt_00EE
.Lt_00EF:
.Lt_00EB:
.Lt_00EA:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_00F2:
mov eax, dword ptr [ebp-8]
movsx ecx, word ptr [eax+68]
mov dword ptr [ebp-20], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8]
and eax, 2
test eax, eax
je .Lt_00F6
dec dword ptr [ebp-20]
.Lt_00F6:
.Lt_00F5:
mov eax, dword ptr [ebp+44]
and eax, 32
test eax, eax
je .Lt_00F8
cmp dword ptr [ebp+32], 0
je .Lt_00FA
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+28]
and ecx, 511
test ecx, ecx
jne .Lt_00FC
mov dword ptr [ebp-20], -1
.Lt_00FC:
.Lt_00FB:
jmp .Lt_00F9
.Lt_00FA:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+28]
and eax, 511
test eax, eax
je .Lt_00FE
mov dword ptr [ebp-20], -1
.Lt_00FE:
.Lt_00FD:
.Lt_00F9:
.Lt_00F8:
.Lt_00F7:
mov eax, dword ptr [ebp-24]
cmp dword ptr [ebp-20], eax
jne .Lt_0100
cmp dword ptr [ebp-24], 0
jne .Lt_0102
jmp .Lt_00E3
.Lt_0102:
.Lt_0101:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+80]
mov dword ptr [ebp-16], ecx
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+80]
mov dword ptr [ebp-12], eax
.Lt_0103:
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _HCANOVERLOADBYDESC@8
test eax, eax
je .Lt_0107
jmp .Lt_0104
.Lt_0107:
.Lt_0106:
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
je .Lt_0109
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
je .Lt_010B
mov ebx, dword ptr [ebp-32]
and ebx, 261632
mov ecx, dword ptr [ebp-36]
and ecx, 261632
cmp ebx, ecx
je .Lt_010D
jmp .Lt_0104
.Lt_010D:
.Lt_010C:
.Lt_010B:
.Lt_010A:
mov ecx, dword ptr [ebp-32]
and ecx, 261632
and ecx, -513
mov ebx, dword ptr [ebp-36]
and ebx, 261632
and ebx, -513
cmp ecx, ebx
je .Lt_010F
jmp .Lt_0104
.Lt_010F:
.Lt_010E:
and dword ptr [ebp-32], 511
and dword ptr [ebp-36], 511
.Lt_0109:
.Lt_0108:
mov ebx, dword ptr [ebp-36]
cmp dword ptr [ebp-32], ebx
je .Lt_0111
cmp dword ptr [ebp-32], 36
jne .Lt_0113
.Lt_0114:
cmp dword ptr [ebp-36], 17
je .Lt_0116
jmp .Lt_0104
.Lt_0116:
.Lt_0115:
jmp .Lt_0112
.Lt_0113:
cmp dword ptr [ebp-32], 17
jne .Lt_0117
.Lt_0118:
cmp dword ptr [ebp-36], 36
je .Lt_011A
jmp .Lt_0104
.Lt_011A:
.Lt_0119:
jmp .Lt_0112
.Lt_0117:
jmp .Lt_0104
.Lt_011B:
.Lt_0112:
.Lt_0111:
.Lt_0110:
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+32]
cmp dword ptr [ebx+32], eax
je .Lt_011D
jmp .Lt_0104
.Lt_011D:
.Lt_011C:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-12], eax
dec dword ptr [ebp-20]
.Lt_0105:
cmp dword ptr [ebp-20], 0
jg .Lt_0103
.Lt_0104:
cmp dword ptr [ebp-20], 0
jne .Lt_011F
jmp .Lt_00E3
.Lt_011F:
.Lt_011E:
.Lt_0100:
.Lt_00FF:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp-8], ebx
.Lt_00F4:
cmp dword ptr [ebp-8], 0
jne .Lt_00F2
.Lt_00F3:
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
je .Lt_0120
mov dword ptr [ebp-28], 1
jmp .Lt_04A5
.Lt_0120:
mov dword ptr [ebp-28], 0
.Lt_04A5:
push dword ptr [ebp-28]
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
jne .Lt_0123
jmp .Lt_00E3
.Lt_0123:
.Lt_0122:
cmp dword ptr [ebp+24], 0
je .Lt_0125
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+152]
mov dword ptr [ebx+152], ecx
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+148]
mov dword ptr [ebx+148], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+160], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+156], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-32]
mov dword ptr [ebx+160], eax
cmp dword ptr [ebp-32], 0
je .Lt_0127
mov eax, dword ptr [ebp-32]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+156], ebx
.Lt_0127:
.Lt_0126:
.Lt_0125:
.Lt_0124:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_00E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 44
.balign 16
_HADDOPOVLPROC@40:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0128:
cmp dword ptr [ebp+24], 27
je .Lt_012B
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
call _HADDOVLPROC@44
mov dword ptr [ebp-4], eax
jmp .Lt_0129
.Lt_012B:
.Lt_012A:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-8], eax
.Lt_012C:
cmp dword ptr [ebp-8], 0
je .Lt_012D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+28]
cmp dword ptr [eax+28], ecx
jne .Lt_012F
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+32]
cmp dword ptr [ecx+32], ebx
jne .Lt_0131
mov dword ptr [ebp-4], 0
jmp .Lt_0129
.Lt_0131:
.Lt_0130:
.Lt_012F:
.Lt_012E:
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+108]
mov dword ptr [ebp-8], ecx
jmp .Lt_012C
.Lt_012D:
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
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_0129:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 40
.balign 16
_HSETUPPROC@48:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_0132:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+32], -2147483648
jne .Lt_0135
push dword ptr [ebp+24]
call _SYMBGETDEFTYPE@4
mov dword ptr [ebp+32], eax
mov dword ptr [ebp+36], 0
.Lt_0135:
.Lt_0134:
cmp dword ptr [ebp+28], 0
jne .Lt_0137
cmp dword ptr [_PARSER+100], 0
je .Lt_0139
mov eax, dword ptr [ebp+24]
mov dword ptr [ebp+28], eax
.Lt_0139:
.Lt_0138:
mov dword ptr [ebp-8], 0
jmp .Lt_0136
.Lt_0137:
mov dword ptr [ebp-8], 512
.Lt_0136:
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+44]
and eax, 12
test eax, eax
je .Lt_013B
or dword ptr [ebp+44], 1024
mov eax, dword ptr [ebp+44]
and eax, 4
test eax, eax
je .Lt_013D
push dword ptr [ebp+12]
call _SYMBGETCOMPCTORHEAD@4
mov dword ptr [ebp-24], eax
jmp .Lt_013C
.Lt_013D:
push dword ptr [ebp+12]
call _SYMBGETCOMPDTOR@4
mov dword ptr [ebp-24], eax
.Lt_013C:
cmp dword ptr [ebp-24], 0
jne .Lt_013F
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
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+44]
and eax, 4
test eax, eax
je .Lt_0141
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _SYMBSETCOMPCTORHEAD@8
jmp .Lt_0140
.Lt_0141:
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _SYMBSETCOMPDTOR@8
.Lt_0140:
jmp .Lt_013E
.Lt_013F:
mov eax, dword ptr [ebp+44]
and eax, 8
test eax, eax
je .Lt_0143
mov dword ptr [ebp-4], 0
jmp .Lt_0133
.Lt_0143:
.Lt_0142:
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
call _HADDOVLPROC@44
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0145
jmp .Lt_0133
.Lt_0145:
.Lt_0144:
.Lt_013E:
mov eax, dword ptr [ebp+44]
and eax, 4
test eax, eax
je .Lt_0147
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _SYMBCHECKCOMPCTOR@8
.Lt_0147:
.Lt_0146:
jmp .Lt_013A
.Lt_013B:
mov eax, dword ptr [ebp+44]
and eax, 16
test eax, eax
je .Lt_0148
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+112], 0
jne .Lt_014A
jmp .Lt_014B
.Lt_014A:
.Lt_0149:
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-32], eax
push dword ptr [ebp-32]
push dword ptr [ebp+12]
call _SYMBGETCOMPOPOVLHEAD@8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_014D
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
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _SYMBSETCOMPOPOVLHEAD@8
jmp .Lt_014C
.Lt_014D:
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
call _HADDOPOVLPROC@40
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_014F
jmp .Lt_0133
.Lt_014F:
.Lt_014E:
cmp dword ptr [ebp-32], 0
jne .Lt_0151
push dword ptr [ebp-20]
push dword ptr [ebp+12]
call _SYMBCHECKCOMPLETOP@8
.Lt_0151:
.Lt_0150:
.Lt_014C:
jmp .Lt_013A
.Lt_0148:
.Lt_014B:
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
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0153
push 0
push dword ptr [ebp-12]
push 3
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call _SYMBLOOKUPBYNAMEANDCLASS@20
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_0155
jmp .Lt_0133
.Lt_0155:
.Lt_0154:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
jne .Lt_0157
mov ebx, dword ptr [_ENV+888]
and ebx, 1024
test ebx, ebx
jne .Lt_0159
jmp .Lt_0133
.Lt_0159:
.Lt_0158:
.Lt_0157:
.Lt_0156:
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
call _HADDOVLPROC@44
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_015B
jmp .Lt_0133
.Lt_015B:
.Lt_015A:
mov eax, dword ptr [ebp-20]
or dword ptr [eax+8], 1
jmp .Lt_0152
.Lt_0153:
mov eax, dword ptr [ebp+52]
and eax, 16
test eax, eax
jne .Lt_015D
mov eax, dword ptr [ebp+44]
and eax, 1
test eax, eax
je .Lt_015F
push dword ptr [ebp+8]
call _HCANOVERLOAD@4
test eax, eax
jne .Lt_0161
jmp .Lt_0133
.Lt_0161:
.Lt_0160:
jmp .Lt_015E
.Lt_015F:
mov eax, dword ptr [_ENV+888]
and eax, 1024
test eax, eax
je .Lt_0162
push dword ptr [ebp+8]
call _HCANOVERLOAD@4
test eax, eax
je .Lt_0164
mov eax, dword ptr [ebp-20]
or dword ptr [eax+8], 1
.Lt_0164:
.Lt_0163:
.Lt_0162:
.Lt_015E:
.Lt_015D:
.Lt_015C:
.Lt_0152:
.Lt_013A:
mov eax, dword ptr [ebp+52]
and eax, 16
test eax, eax
je .Lt_0166
or dword ptr [ebp-8], 32
.Lt_0166:
.Lt_0165:
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp+48]
mov dword ptr [eax+84], ebx
cmp dword ptr [_PARSER+24], 306
jne .Lt_0168
mov ebx, dword ptr [_PARSER+100]
cmp ebx, 4
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_PARSER+100]
cmp eax, 6
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_016A
or dword ptr [ebp-8], 2048
.Lt_016A:
.Lt_0169:
.Lt_0168:
.Lt_0167:
push dword ptr [ebp-20]
call _SYMBPROCRECALCREALTYPE@4
mov eax, dword ptr [ebp+52]
and eax, 4
test eax, eax
je .Lt_016C
or dword ptr [ebp-8], 8
.Lt_016C:
.Lt_016B:
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+100], 0
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
je .Lt_016E
mov ebx, dword ptr [ebp-20]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-32], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_0170
dec dword ptr [ebp-32]
.Lt_0170:
.Lt_016F:
cmp dword ptr [ebp-24], 0
je .Lt_0172
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
jge .Lt_0174
mov cx, word ptr [ebp-32]
mov eax, dword ptr [ebp-24]
mov word ptr [eax+104], cx
.Lt_0174:
.Lt_0173:
mov ecx, dword ptr [ebp-24]
movsx eax, word ptr [ecx+106]
cmp dword ptr [ebp-32], eax
jle .Lt_0176
mov ax, word ptr [ebp-32]
mov ecx, dword ptr [ebp-24]
mov word ptr [ecx+106], ax
.Lt_0176:
.Lt_0175:
jmp .Lt_0171
.Lt_0172:
mov eax, dword ptr [ebp-20]
mov dword ptr [eax+108], 0
mov ax, word ptr [ebp-32]
mov ecx, dword ptr [ebp-20]
mov word ptr [ecx+104], ax
mov ax, word ptr [ebp-32]
mov ecx, dword ptr [ebp-20]
mov word ptr [ecx+106], ax
.Lt_0171:
.Lt_016E:
.Lt_016D:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [ebp-8]
or dword ptr [eax+12], ecx
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+8]
and eax, 2
test eax, eax
je .Lt_0178
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 512
test ecx, ecx
je .Lt_017A
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+140]
inc dword ptr [eax+152]
.Lt_017A:
.Lt_0179:
mov dword ptr [ebp-28], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+96], 0
je .Lt_017C
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 8
test ecx, ecx
je .Lt_017E
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+96]
push dword ptr [eax+32]
call _SYMBGETCOMPDTOR@4
mov dword ptr [ebp-28], eax
jmp .Lt_017D
.Lt_017E:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 16
test ecx, ecx
je .Lt_017F
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+112]
push dword ptr [eax+40]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+96]
push dword ptr [ecx+32]
call _SYMBGETCOMPOPOVLHEAD@8
mov dword ptr [ebp-28], eax
push dword ptr [ebp-20]
push dword ptr [ebp-28]
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+112]
push dword ptr [ecx+40]
call _SYMBFINDOPOVLPROC@12
mov dword ptr [ebp-28], eax
jmp .Lt_017D
.Lt_017F:
cmp dword ptr [ebp+24], 0
je .Lt_0180
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
call _SYMBLOOKUPBYNAMEANDCLASS@20
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 32
test ecx, ecx
je .Lt_0182
mov ecx, dword ptr [ebp-20]
mov eax, dword ptr [ecx+28]
and eax, 511
test eax, eax
je .Lt_0184
mov dword ptr [ebp-16], 1
.Lt_0184:
.Lt_0183:
.Lt_0182:
.Lt_0181:
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-28]
call _SYMBFINDOVERLOADPROC@12
mov dword ptr [ebp-28], eax
.Lt_0180:
.Lt_017D:
cmp dword ptr [ebp-28], 0
je .Lt_0186
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [eax+8]
and ecx, 256
test ecx, ecx
jne .Lt_0188
mov dword ptr [ebp-28], 0
.Lt_0188:
.Lt_0187:
.Lt_0186:
.Lt_0185:
.Lt_017C:
.Lt_017B:
cmp dword ptr [ebp-28], 0
je .Lt_018A
mov ecx, dword ptr [ebp-28]
mov eax, dword ptr [ecx+8]
and eax, 512
test eax, eax
je .Lt_018C
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+140]
dec dword ptr [ecx+152]
.Lt_018C:
.Lt_018B:
push dword ptr [ebp-28]
call _SYMBPROCGETVTABLEINDEX@4
push eax
push dword ptr [ebp-20]
call _SYMBPROCSETVTABLEINDEX@8
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebp-28]
mov dword ptr [ecx+72], eax
jmp .Lt_0189
.Lt_018A:
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [eax+8]
and ecx, 256
test ecx, ecx
je .Lt_018E
push dword ptr [ebp+12]
call _SYMBCOMPADDVIRTUAL@4
push eax
push dword ptr [ebp-20]
call _SYMBPROCSETVTABLEINDEX@8
.Lt_018E:
.Lt_018D:
.Lt_0189:
.Lt_0178:
.Lt_0177:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0133:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 48
.balign 16
_HCALCTYPESDIFF@28:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-4], 0
.Lt_021D:
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
je .Lt_021F
mov dword ptr [ebp-28], 24
jmp .Lt_04AE
.Lt_021F:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_04AE:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_0221
mov dword ptr [ebp-32], 24
jmp .Lt_04AF
.Lt_0221:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-32], ebx
.Lt_04AF:
mov ebx, dword ptr [ebp-32]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-36], eax
jmp .Lt_0224
.Lt_0226:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-40], eax
jmp .Lt_0228
.Lt_022A:
cmp dword ptr [ebp-20], 4
jne .Lt_022C
.Lt_022D:
cmp dword ptr [ebp-24], 4
jne .Lt_022F
.Lt_0230:
mov dword ptr [ebp-4], 78
jmp .Lt_021E
jmp .Lt_022E
.Lt_022F:
cmp dword ptr [ebp-24], 7
jne .Lt_0231
.Lt_0232:
mov dword ptr [ebp-4], 26
jmp .Lt_021E
.Lt_0231:
.Lt_022E:
mov dword ptr [ebp-4], 0
jmp .Lt_021E
jmp .Lt_022B
.Lt_022C:
cmp dword ptr [ebp-20], 7
jne .Lt_0233
.Lt_0234:
cmp dword ptr [ebp-24], 4
jne .Lt_0236
.Lt_0237:
mov dword ptr [ebp-4], 26
jmp .Lt_021E
jmp .Lt_0235
.Lt_0236:
cmp dword ptr [ebp-24], 7
jne .Lt_0238
.Lt_0239:
mov dword ptr [ebp-4], 78
jmp .Lt_021E
.Lt_0238:
.Lt_0235:
mov dword ptr [ebp-4], 0
jmp .Lt_021E
jmp .Lt_022B
.Lt_0233:
cmp dword ptr [ebp-20], 36
jne .Lt_023A
.Lt_023B:
cmp dword ptr [ebp-24], 4
jne .Lt_023D
.Lt_023E:
mov dword ptr [ebp-4], 78
jmp .Lt_021E
jmp .Lt_023C
.Lt_023D:
cmp dword ptr [ebp-24], 7
jne .Lt_023F
.Lt_0240:
mov dword ptr [ebp-4], 26
jmp .Lt_021E
.Lt_023F:
.Lt_023C:
jmp .Lt_022B
.Lt_023A:
cmp dword ptr [ebp-20], 39
jne .Lt_0241
.Lt_0242:
cmp dword ptr [ebp-24], 4
jne .Lt_0244
.Lt_0245:
mov dword ptr [ebp-4], 26
jmp .Lt_021E
jmp .Lt_0243
.Lt_0244:
cmp dword ptr [ebp-24], 7
jne .Lt_0246
.Lt_0247:
mov dword ptr [ebp-4], 78
jmp .Lt_021E
.Lt_0246:
.Lt_0243:
jmp .Lt_022B
.Lt_0241:
cmp dword ptr [ebp-24], 4
je .Lt_024B
.Lt_024C:
cmp dword ptr [ebp-24], 7
jne .Lt_024A
.Lt_024B:
cmp dword ptr [ebp+28], 0
jne .Lt_024E
mov dword ptr [ebp-4], 0
jmp .Lt_021E
.Lt_024E:
.Lt_024D:
mov eax, dword ptr [ebp+28]
cmp dword ptr [eax], 20
je .Lt_0250
mov dword ptr [ebp-4], 0
jmp .Lt_021E
.Lt_0250:
.Lt_024F:
.Lt_024A:
.Lt_0249:
.Lt_0248:
.Lt_022B:
cmp dword ptr [ebp-24], 10
jne .Lt_0252
mov eax, dword ptr [ebp-24]
and eax, -512
mov ebx, dword ptr [ebp-24]
imul ebx, 28
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+16]
and ecx, 511
or eax, ecx
mov dword ptr [ebp-24], eax
.Lt_0252:
.Lt_0251:
mov eax, dword ptr [ebp-20]
and eax, 480
test eax, eax
je .Lt_0254
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
jne .Lt_0256
cmp dword ptr [ebp+28], 0
jne .Lt_0258
mov dword ptr [ebp-4], 0
jmp .Lt_021E
.Lt_0258:
.Lt_0257:
push 0
push dword ptr [ebp+28]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
call _ASTCHECKCONVNONPTRTOPTR@16
test eax, eax
je .Lt_025A
mov dword ptr [ebp-4], 0
jmp .Lt_021E
.Lt_025A:
.Lt_0259:
mov dword ptr [ebp-4], 1
jmp .Lt_021E
.Lt_0256:
.Lt_0255:
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
je .Lt_025C
mov dword ptr [ebp-4], 26
jmp .Lt_021E
.Lt_025C:
.Lt_025B:
push dword ptr [ebp+24]
push dword ptr [ebp-24]
push dword ptr [ebp+32]
push dword ptr [ebp+12]
push dword ptr [ebp-20]
call _TYPECALCMATCH@20
mov dword ptr [ebp-4], eax
jmp .Lt_021E
jmp .Lt_0253
.Lt_0254:
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
je .Lt_025D
mov dword ptr [ebp-4], 0
jmp .Lt_021E
.Lt_025D:
.Lt_0253:
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_025E
mov dword ptr [ebp-44], 24
jmp .Lt_04B0
.Lt_025E:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_04B0:
mov eax, dword ptr [ebp-44]
sal eax, 4
mov dword ptr [ebp-52], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_0260
mov dword ptr [ebp-48], 24
jmp .Lt_04B1
.Lt_0260:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_04B1:
mov eax, dword ptr [ebp-48]
add eax, dword ptr [ebp-52]
mov ecx, dword ptr [_SYMB_DTYPEMATCHTB+eax*4-68]
neg ecx
add ecx, 26
mov dword ptr [ebp-4], ecx
jmp .Lt_021E
jmp .Lt_0227
.Lt_0262:
mov ecx, dword ptr [ebp-20]
and ecx, 480
test ecx, ecx
je .Lt_0264
mov dword ptr [ebp-4], 0
jmp .Lt_021E
.Lt_0264:
.Lt_0263:
mov ecx, dword ptr [ebp-24]
and ecx, 480
je .Lt_0265
mov dword ptr [ebp-44], 24
jmp .Lt_04B3
.Lt_0265:
mov ecx, dword ptr [ebp-24]
and ecx, 31
mov dword ptr [ebp-44], ecx
.Lt_04B3:
mov ecx, dword ptr [ebp-44]
sal ecx, 4
mov dword ptr [ebp-52], ecx
mov ecx, dword ptr [ebp-20]
and ecx, 480
je .Lt_0267
mov dword ptr [ebp-48], 24
jmp .Lt_04B4
.Lt_0267:
mov ecx, dword ptr [ebp-20]
and ecx, 31
mov dword ptr [ebp-48], ecx
.Lt_04B4:
mov ecx, dword ptr [ebp-48]
add ecx, dword ptr [ebp-52]
mov eax, dword ptr [_SYMB_DTYPEMATCHTB+ecx*4-68]
neg eax
add eax, 26
mov dword ptr [ebp-4], eax
jmp .Lt_021E
jmp .Lt_0227
.Lt_0269:
cmp dword ptr [ebp-20], 4
je .Lt_026C
.Lt_026D:
cmp dword ptr [ebp-20], 36
jne .Lt_026B
.Lt_026C:
mov dword ptr [ebp-4], 78
jmp .Lt_021E
jmp .Lt_026A
.Lt_026B:
cmp dword ptr [ebp-20], 7
je .Lt_026F
.Lt_0270:
cmp dword ptr [ebp-20], 39
jne .Lt_026E
.Lt_026F:
mov dword ptr [ebp-4], 26
jmp .Lt_021E
.Lt_026E:
.Lt_026A:
jmp .Lt_0227
.Lt_0228:
cmp dword ptr [ebp-40], 2
ja .Lt_0227
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.LT_0271+eax*4]
_.LT_0271:
.int .Lt_022A
.int .Lt_0262
.int .Lt_0269
.Lt_0227:
jmp .Lt_0223
.Lt_0272:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-40], eax
jmp .Lt_0274
.Lt_0276:
mov eax, dword ptr [ebp-24]
and eax, 480
test eax, eax
je .Lt_0278
mov dword ptr [ebp-4], 0
jmp .Lt_021E
.Lt_0278:
.Lt_0277:
cmp dword ptr [ebp-24], 10
jne .Lt_027A
mov eax, dword ptr [ebp-24]
and eax, -512
mov ecx, dword ptr [ebp-24]
imul ecx, 28
mov ebx, dword ptr [_SYMB_DTYPETB+ecx+16]
and ebx, 511
or eax, ebx
mov dword ptr [ebp-24], eax
.Lt_027A:
.Lt_0279:
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_027B
mov dword ptr [ebp-44], 24
jmp .Lt_04B6
.Lt_027B:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_04B6:
mov eax, dword ptr [ebp-44]
sal eax, 4
mov dword ptr [ebp-52], eax
mov eax, dword ptr [ebp-20]
and eax, 480
je .Lt_027D
mov dword ptr [ebp-48], 24
jmp .Lt_04B7
.Lt_027D:
mov eax, dword ptr [ebp-20]
and eax, 31
mov dword ptr [ebp-48], eax
.Lt_04B7:
mov eax, dword ptr [ebp-48]
add eax, dword ptr [ebp-52]
mov ebx, dword ptr [_SYMB_DTYPEMATCHTB+eax*4-68]
neg ebx
add ebx, 26
mov dword ptr [ebp-4], ebx
jmp .Lt_021E
jmp .Lt_0273
.Lt_027F:
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_0280
mov dword ptr [ebp-44], 24
jmp .Lt_04B9
.Lt_0280:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-44], ebx
.Lt_04B9:
mov ebx, dword ptr [ebp-44]
sal ebx, 4
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp-20]
and ebx, 480
je .Lt_0282
mov dword ptr [ebp-48], 24
jmp .Lt_04BA
.Lt_0282:
mov ebx, dword ptr [ebp-20]
and ebx, 31
mov dword ptr [ebp-48], ebx
.Lt_04BA:
mov ebx, dword ptr [ebp-48]
add ebx, dword ptr [ebp-52]
mov eax, dword ptr [_SYMB_DTYPEMATCHTB+ebx*4-68]
neg eax
add eax, 26
mov dword ptr [ebp-4], eax
jmp .Lt_021E
jmp .Lt_0273
.Lt_0274:
cmp dword ptr [ebp-40], 1
ja .Lt_0273
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.LT_0284+eax*4]
_.LT_0284:
.int .Lt_0276
.int .Lt_027F
.Lt_0273:
jmp .Lt_0223
.Lt_0285:
cmp dword ptr [ebp-8], 2
jne .Lt_0287
.Lt_0288:
mov dword ptr [ebp-4], 78
jmp .Lt_0286
.Lt_0287:
cmp dword ptr [ebp-8], 0
jne .Lt_0289
.Lt_028A:
cmp dword ptr [ebp-24], 4
jne .Lt_028C
.Lt_028D:
mov dword ptr [ebp-4], 78
jmp .Lt_028B
.Lt_028C:
cmp dword ptr [ebp-24], 7
jne .Lt_028E
.Lt_028F:
mov dword ptr [ebp-4], 26
.Lt_028E:
.Lt_028B:
.Lt_0289:
.Lt_0286:
jmp .Lt_0223
.Lt_0224:
cmp dword ptr [ebp-36], 2
ja .Lt_0223
mov eax, dword ptr [ebp-36]
jmp dword ptr [_.LT_0290+eax*4]
_.LT_0290:
.int .Lt_0226
.int .Lt_0272
.int .Lt_0285
.Lt_0223:
.Lt_021E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 28
.balign 16
_HCHECKOVLPARAM@16:
push ebp
mov ebp, esp
sub esp, 48
push ebx
mov dword ptr [ebp-4], 0
.Lt_0291:
cmp dword ptr [ebp+16], 0
jne .Lt_0294
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+64], 0
je .Lt_0296
mov dword ptr [ebp-4], 78
jmp .Lt_0292
jmp .Lt_0295
.Lt_0296:
mov dword ptr [ebp-4], 0
jmp .Lt_0292
.Lt_0295:
.Lt_0294:
.Lt_0293:
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
jne .Lt_0299
.Lt_029A:
cmp dword ptr [ebp+20], 3
je .Lt_029C
mov dword ptr [ebp-4], 0
jmp .Lt_0292
.Lt_029C:
.Lt_029B:
push dword ptr [ebp-28]
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _TYPECALCMATCH@20
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 52
jge .Lt_029E
mov dword ptr [ebp-4], 0
jmp .Lt_0292
.Lt_029E:
.Lt_029D:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+68], 0
jle .Lt_02A0
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp-32]
mov ecx, dword ptr [eax+64]
cmp ecx, dword ptr [ebx+68]
setne cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-32]
mov eax, dword ptr [ebx+64]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_02A2
mov dword ptr [ebp-4], 0
jmp .Lt_0292
.Lt_02A2:
.Lt_02A1:
.Lt_02A0:
.Lt_029F:
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-4], eax
jmp .Lt_0292
jmp .Lt_0297
.Lt_0299:
cmp dword ptr [ebp-36], 2
jne .Lt_02A3
.Lt_02A4:
cmp dword ptr [ebp+20], 1
jne .Lt_02A6
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_02A7
mov dword ptr [ebp-40], 24
jmp .Lt_04BE
.Lt_02A7:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_04BE:
mov eax, dword ptr [ebp-40]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax]
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-48], ecx
mov ecx, dword ptr [ebp-12]
and ecx, 480
je .Lt_02A9
mov dword ptr [ebp-44], 24
jmp .Lt_04BF
.Lt_02A9:
mov ecx, dword ptr [ebp-12]
and ecx, 31
mov dword ptr [ebp-44], ecx
.Lt_04BF:
mov ecx, dword ptr [ebp-44]
imul ecx, 28
mov eax, dword ptr [_ENV+272]
cmp eax, dword ptr [_SYMB_DTYPETB+ecx+4]
setne al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-48]
je .Lt_02AC
mov dword ptr [ebp-4], 0
jmp .Lt_0292
.Lt_02AC:
.Lt_02AB:
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
.Lt_02A6:
.Lt_02A5:
.Lt_02A3:
.Lt_0297:
cmp dword ptr [ebp+20], 3
jne .Lt_02AE
mov dword ptr [ebp-4], 0
jmp .Lt_0292
.Lt_02AE:
.Lt_02AD:
mov eax, dword ptr [ebp-8]
and eax, 511
mov ecx, dword ptr [ebp-12]
and ecx, 511
cmp eax, ecx
jne .Lt_02B0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov ecx, dword ptr [ebp-28]
cmp dword ptr [ebp-24], ecx
jne .Lt_02B2
mov dword ptr [ebp-40], 78
jmp .Lt_02B1
.Lt_02B2:
mov ecx, dword ptr [ebp-8]
and ecx, 31
mov dword ptr [ebp-44], ecx
cmp dword ptr [ebp-44], 20
jne .Lt_02B5
.Lt_02B6:
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _SYMBGETUDTBASELEVEL@8
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jle .Lt_02B8
mov eax, 78
sub eax, dword ptr [ebp-48]
mov dword ptr [ebp-40], eax
.Lt_02B8:
.Lt_02B7:
jmp .Lt_02B3
.Lt_02B5:
cmp dword ptr [ebp-44], 22
jne .Lt_02B9
.Lt_02BA:
mov dword ptr [ebp-48], 0
lea eax, [ebp-48]
push eax
push dword ptr [ebp-28]
push dword ptr [ebp-24]
call _SYMBCALCPROCMATCH@12
mov dword ptr [ebp-40], eax
.Lt_02B9:
.Lt_02B3:
.Lt_02B1:
cmp dword ptr [ebp-40], 0
jle .Lt_02BD
mov eax, dword ptr [ebp-8]
and eax, 261632
mov ecx, dword ptr [ebp-12]
and ecx, 261632
cmp eax, ecx
jne .Lt_02BF
mov ecx, dword ptr [ebp-40]
mov dword ptr [ebp-4], ecx
jmp .Lt_0292
.Lt_02BF:
.Lt_02BE:
lea ecx, [ebp-20]
push ecx
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+56]
push dword ptr [ebp-28]
push dword ptr [ebp-24]
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _SYMBCHECKCONSTASSIGNTOPLEVEL@24
test eax, eax
je .Lt_02C1
cmp dword ptr [ebp-40], 52
jle .Lt_02C3
add dword ptr [ebp-40], -26
.Lt_02C3:
.Lt_02C2:
mov eax, dword ptr [ebp-20]
add dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-40]
mov dword ptr [ebp-4], eax
jmp .Lt_0292
.Lt_02C1:
.Lt_02C0:
mov dword ptr [ebp-4], 0
jmp .Lt_0292
.Lt_02BD:
.Lt_02BC:
.Lt_02B0:
.Lt_02AF:
cmp dword ptr [ebp-8], 20
jne .Lt_02C5
.Lt_02C6:
cmp dword ptr [_Lt_04C5], 0
jne .Lt_02C8
inc dword ptr [_Lt_04C5]
lea eax, [ebp-36]
push eax
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp-24]
call _SYMBFINDCTOROVLPROC@16
mov dword ptr [ebp-40], eax
dec dword ptr [_Lt_04C5]
cmp dword ptr [ebp-40], 0
je .Lt_02CA
mov dword ptr [ebp-4], 6
jmp .Lt_0292
.Lt_02CA:
.Lt_02C9:
.Lt_02C8:
.Lt_02C7:
cmp dword ptr [_Lt_04C6], 0
jne .Lt_02CC
inc dword ptr [_Lt_04C6]
push 0
lea eax, [ebp-36]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-40], eax
dec dword ptr [_Lt_04C6]
cmp dword ptr [ebp-40], 0
je .Lt_02CE
mov dword ptr [ebp-4], 6
jmp .Lt_0292
.Lt_02CE:
.Lt_02CD:
.Lt_02CC:
.Lt_02CB:
mov dword ptr [ebp-4], 0
jmp .Lt_0292
jmp .Lt_02C4
.Lt_02C5:
cmp dword ptr [ebp-8], 10
jne .Lt_02CF
.Lt_02D0:
mov dword ptr [ebp-4], 0
jmp .Lt_0292
jmp .Lt_02C4
.Lt_02CF:
cmp dword ptr [ebp-12], 20
jne .Lt_02D3
.Lt_02D4:
cmp dword ptr [_Lt_04C6], 0
jne .Lt_02D6
inc dword ptr [_Lt_04C6]
push 0
lea eax, [ebp-36]
push eax
push dword ptr [ebp+16]
push dword ptr [ebp-24]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
call _SYMBFINDCASTOVLPROC@20
mov dword ptr [ebp-40], eax
dec dword ptr [_Lt_04C6]
cmp dword ptr [ebp-40], 0
je .Lt_02D8
mov dword ptr [ebp-4], 6
jmp .Lt_0292
.Lt_02D8:
.Lt_02D7:
.Lt_02D6:
.Lt_02D5:
mov dword ptr [ebp-4], 0
jmp .Lt_0292
.Lt_02D3:
.Lt_02D2:
.Lt_02D1:
.Lt_02C4:
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
call _HCALCTYPESDIFF@28
mov dword ptr [ebp-4], eax
.Lt_0292:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .data
.balign 4
_Lt_04C6:
.int 0
.balign 4
_Lt_04C5:
.int 0

.section .text
.balign 16
_HCHECKCASTOVL@16:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_034F:
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
jne .Lt_0352
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp-12], ebx
jne .Lt_0354
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebp-8], ebx
jne .Lt_0356
mov dword ptr [ebp-4], 78
jmp .Lt_0350
.Lt_0356:
.Lt_0355:
mov dword ptr [ebp-4], 52
jmp .Lt_0350
.Lt_0354:
.Lt_0353:
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
je .Lt_0358
mov dword ptr [ebp-4], 0
jmp .Lt_0350
.Lt_0358:
.Lt_0357:
.Lt_0352:
.Lt_0351:
cmp dword ptr [ebp+20], 0
je .Lt_035A
mov dword ptr [ebp-4], 0
jmp .Lt_0350
.Lt_035A:
.Lt_0359:
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_035B
mov dword ptr [ebp-16], 24
jmp .Lt_04C7
.Lt_035B:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_04C7:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 20
je .Lt_0360
.Lt_0361:
cmp dword ptr [ebp-20], 10
jne .Lt_035F
.Lt_0360:
mov dword ptr [ebp-4], 0
jmp .Lt_0350
jmp .Lt_035D
.Lt_035F:
mov ebx, dword ptr [ebp+12]
and ebx, 480
je .Lt_0363
mov dword ptr [ebp-24], 24
jmp .Lt_04C8
.Lt_0363:
mov ebx, dword ptr [ebp+12]
and ebx, 31
mov dword ptr [ebp-24], ebx
.Lt_04C8:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 20
jne .Lt_0367
.Lt_0368:
mov dword ptr [ebp-4], 0
jmp .Lt_0350
.Lt_0367:
.Lt_0365:
.Lt_0362:
.Lt_035D:
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
call _HCALCTYPESDIFF@28
mov dword ptr [ebp-4], eax
.Lt_0350:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HDELPARAMS@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0392:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-4], ebx
.Lt_0394:
cmp dword ptr [ebp-4], 0
je .Lt_0395
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+176]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
call _SYMBFREESYMBOL@4
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0394
.Lt_0395:
.Lt_0393:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HADDTOGLOBCTORLIST@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_039A:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
call _LISTNEWNODE@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4], 0
je .Lt_039D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4], eax
jmp .Lt_039C
.Lt_039D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax], ebx
.Lt_039C:
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
.Lt_039B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_SYMBCALCPARAMMATCH@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_03A2:
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
call _TYPECALCMATCH@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_03A5
mov dword ptr [ebp-4], 0
jmp .Lt_03A3
.Lt_03A5:
.Lt_03A4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+56]
cmp dword ptr [eax+56], ecx
je .Lt_03A7
mov dword ptr [ebp-4], 0
jmp .Lt_03A3
.Lt_03A7:
.Lt_03A6:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+56], 3
jne .Lt_03A9
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+68]
cmp dword ptr [ecx+68], ebx
je .Lt_03AB
mov dword ptr [ebp-4], 0
jmp .Lt_03A3
.Lt_03AB:
.Lt_03AA:
.Lt_03A9:
.Lt_03A8:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_03A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HSUBORFUNCTOSTR@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_03F5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
jne .Lt_03F8
push 0
push -1
push 4
push offset _Lt_03F9
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
jmp .Lt_03F7
.Lt_03F8:
push 0
push -1
push 9
push offset _Lt_03FB
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_03F7:
.Lt_03F6:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HPROCMODETOSTR@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_03FD:
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
je .Lt_0400
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+84]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 1
je .Lt_0404
.Lt_0405:
cmp dword ptr [ebp-4], 2
jne .Lt_0403
.Lt_0404:
push 0
push -1
push 9
push offset _Lt_0406
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
jmp .Lt_0401
.Lt_0403:
cmp dword ptr [ebp-4], 4
jne .Lt_0408
.Lt_0409:
push 0
push -1
push 8
push offset _Lt_040A
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_0408:
.Lt_0401:
jmp .Lt_03FF
.Lt_0400:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 1
je .Lt_040F
.Lt_0410:
cmp dword ptr [ebp-4], 2
jne .Lt_040E
.Lt_040F:
mov ebx, dword ptr [_ENV+252]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .Lt_0414
.Lt_0415:
cmp dword ptr [ebp-8], 2
jne .Lt_0413
.Lt_0414:
jmp .Lt_0411
.Lt_0413:
push 0
push -1
push 9
push offset _Lt_0406
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_0416:
.Lt_0411:
jmp .Lt_040C
.Lt_040E:
cmp dword ptr [ebp-4], 4
jne .Lt_0418
.Lt_0419:
cmp dword ptr [_ENV+252], 4
je .Lt_041B
push 0
push -1
push 8
push offset _Lt_040A
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_041B:
.Lt_041A:
jmp .Lt_040C
.Lt_0418:
cmp dword ptr [ebp-4], 3
jne .Lt_041D
.Lt_041E:
cmp dword ptr [_ENV+252], 3
je .Lt_0420
push 0
push -1
push 7
push offset _Lt_0421
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_0420:
.Lt_041F:
.Lt_041D:
.Lt_040C:
.Lt_03FF:
.Lt_03FE:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HPARAMSTOSTR@8:
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_0430:
push 0
push -1
push 2
push offset _Lt_0425
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
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
je .Lt_0434
mov ecx, dword ptr [ebp-16]
mov ebx, dword ptr [ecx+176]
mov dword ptr [ebp-16], ebx
.Lt_0434:
.Lt_0433:
.Lt_0435:
cmp dword ptr [ebp-16], 0
je .Lt_0436
mov ebx, dword ptr [ebp-16]
mov ecx, dword ptr [ebx+56]
mov dword ptr [ebp-32], ecx
cmp dword ptr [ebp-32], 1
je .Lt_0439
.Lt_043A:
cmp dword ptr [ebp-32], 2
je .Lt_0439
.Lt_043B:
cmp dword ptr [ebp-32], 3
jne .Lt_0438
.Lt_0439:
cmp dword ptr [ebp-32], 1
je .Lt_043E
.Lt_043F:
cmp dword ptr [ebp-32], 2
jne .Lt_043D
.Lt_043E:
mov ecx, dword ptr [_ENV+136]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+28]
mov ebx, ecx
call _SYMBGETDEFAULTPARAMMODE@8
cmp eax, dword ptr [ebp-32]
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0441
cmp dword ptr [ebp-32], 1
jne .Lt_0443
push 0
push -1
push 7
push offset _Lt_0444
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
jmp .Lt_0442
.Lt_0443:
push 0
push -1
push 7
push offset _Lt_0446
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_0442:
.Lt_0441:
.Lt_0440:
jmp .Lt_043C
.Lt_043D:
cmp dword ptr [ebp-32], 3
jne .Lt_0448
.Lt_0449:
push 0
push -1
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [eax+68]
call _HDUMPDYNAMICARRAYDIMENSIONS@4
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_0448:
.Lt_043C:
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
call _SYMBTYPETOSTR@20
push eax
push 4
push offset _Lt_044B
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
jmp .Lt_0437
.Lt_0438:
cmp dword ptr [ebp-32], 4
jne .Lt_044E
.Lt_044F:
push 0
push -1
push 4
push offset _Lt_0450
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_044E:
.Lt_0437:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_0453
push 0
push -1
push 3
push offset _Lt_042D
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea ebx, [ebp-44]
push ebx
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_0453:
.Lt_0452:
jmp .Lt_0435
.Lt_0436:
push 0
push -1
push 2
push offset _Lt_0455
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_0431:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HRESULTTOSTR@8:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0457:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
test ebx, ebx
je .Lt_045A
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
je .Lt_045C
push 0
push -1
push 7
push offset _Lt_045D
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_045C:
.Lt_045B:
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
call _SYMBTYPETOSTR@20
push eax
push 5
push offset _Lt_045F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_045A:
.Lt_0459:
.Lt_0458:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0007:	.ascii	".\0"
.balign 4
_Lt_0023:	.ascii	"THIS\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_019F:	.ascii	"{fbfp}\0"
.balign 4
_Lt_01A0:	.ascii	"$\0"
.balign 4
_Lt_01DB:	.ascii	"fb$result\0"
.balign 4
_Lt_03F9:	.ascii	"sub\0"
.balign 4
_Lt_03FB:	.ascii	"function\0"
.balign 4
_Lt_0406:	.ascii	" stdcall\0"
.balign 4
_Lt_040A:	.ascii	" pascal\0"
.balign 4
_Lt_0421:	.ascii	" cdecl\0"
.balign 4
_Lt_0425:	.ascii	"(\0"
.balign 4
_Lt_042D:	.ascii	", \0"
.balign 4
_Lt_042E:	.ascii	"any\0"
.balign 4
_Lt_042F:	.ascii	") \0"
.balign 4
_Lt_0444:	.ascii	"byval \0"
.balign 4
_Lt_0446:	.ascii	"byref \0"
.balign 4
_Lt_044B:	.ascii	"as \0"
.balign 4
_Lt_0450:	.ascii	"...\0"
.balign 4
_Lt_0455:	.ascii	")\0"
.balign 4
_Lt_045D:	.ascii	" byref\0"
.balign 4
_Lt_045F:	.ascii	" as \0"
.balign 4
_Lt_046C:	.ascii	"constructor\0"
.balign 4
_Lt_046E:	.ascii	"destructor\0"
.balign 4
_Lt_0470:	.ascii	"operator.\0"
.balign 4
_Lt_0476:	.ascii	".property.\0"
.balign 4
_Lt_0479:	.ascii	"get\0"
.balign 4
_Lt_047A:	.ascii	"set\0"
