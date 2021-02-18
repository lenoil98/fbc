	.intel_syntax noprefix

.section .text
.balign 16

.globl _EDBGINIT@0
_EDBGINIT@0:
push ebx
.Lt_008F:
mov eax, dword ptr [_ENV+248]
mov ebx, dword ptr [_REMAPTB+eax*4]
mov dword ptr [_REMAPTB+28], ebx
.Lt_0090:
pop ebx
ret
.balign 16

.globl _EDBGEMITHEADER@4
_EDBGEMITHEADER@4:
push ebp
mov ebp, esp
sub esp, 72
.Lt_00A6:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [_ENV+148], 0
jne .Lt_00A9
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_00A7
.Lt_00A9:
.Lt_00A8:
mov dword ptr [_CTX], 1
mov dword ptr [_CTX+4], 0
mov dword ptr [_CTX+292], 0
push 0
push 0
push dword ptr [ebp+8]
push 261
lea eax, [_CTX+28]
push eax
call _fb_StrAssign@20
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push -1
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push 2
push offset _Lt_0094
push -1
push 0
push dword ptr [ebp+8]
call _HESCAPE@4
push eax
push 8
push offset _Lt_00AB
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _EMITWRITESTR@8
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
push dword ptr [ebp+8]
call _PATHISABSOLUTE@4
test eax, eax
jne .Lt_00B0
push dword ptr [ebp-12]
push 0
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
push 2
push offset _Lt_001A
push -1
call _HCURDIR@0
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-72]
push 100
call _HEMITSTABS@20
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
.Lt_00B0:
.Lt_00AF:
push dword ptr [ebp-12]
push 0
push 0
push dword ptr [ebp+8]
push 100
call _HEMITSTABS@20
push 0
push 3
call dword ptr [_EMIT+220]
push dword ptr [ebp-12]
call _HLABEL@4
mov dword ptr [ebp-52], 0
.Lt_00B6:
push offset _Lt_0006
push 0
push 0
mov eax, dword ptr [ebp-52]
push dword ptr [_STABSTB+eax*4]
push 128
call _HEMITSTABS@20
inc dword ptr [_CTX]
.Lt_00B4:
inc dword ptr [ebp-52]
.Lt_00B3:
cmp dword ptr [ebp-52], 16
jle .Lt_00B6
.Lt_00B5:
push 0
push offset _Lt_0000
call _EMITWRITESTR@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_00A7:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGEMITFOOTER@0
_EDBGEMITFOOTER@0:
.Lt_00B7:
cmp dword ptr [_ENV+148], 0
jne .Lt_00BA
jmp .Lt_00B8
.Lt_00BA:
.Lt_00B9:
push 0
push 3
call dword ptr [_EMIT+220]
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
push offset _Lt_00BB
call _fb_StrAssign@20
push dword ptr [_Lt_00BB]
push 0
push 0
push offset _Lt_0000
push 100
call _HEMITSTABS@20
push dword ptr [_Lt_00BB]
call _HLABEL@4
.Lt_00B8:
ret

.section .bss
.balign 4
	.lcomm	_Lt_00BB,12

.section .text
.balign 16

.globl _EDBGLINEBEGIN@16
_EDBGLINEBEGIN@16:
push ebp
mov ebp, esp
.Lt_00BC:
cmp dword ptr [_ENV+148], 0
jne .Lt_00BF
jmp .Lt_00BD
.Lt_00BF:
.Lt_00BE:
cmp dword ptr [_CTX+8], 0
jle .Lt_00C1
mov eax, dword ptr [ebp+16]
sub eax, dword ptr [_CTX+12]
mov dword ptr [_CTX+12], eax
cmp dword ptr [_CTX+12], 0
jle .Lt_00C3
push dword ptr [_CTX+4]
push dword ptr [_CTX+8]
push dword ptr [ebp+8]
call _EDBGEMITLINE@12
mov dword ptr [_CTX+16], -1
.Lt_00C3:
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
push dword ptr [ebp+20]
call _EDBGINCLUDE@4
mov eax, dword ptr [ebp+16]
mov dword ptr [_CTX+12], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [_CTX+8], eax
cmp dword ptr [_CTX+16], 0
je .Lt_00C5
push 4
push 0
call _SYMBADDLABEL@8
mov dword ptr [_CTX+4], eax
push dword ptr [_CTX+4]
call _SYMBGETMANGLEDNAME@4
push eax
call _HLABEL@4
mov dword ptr [_CTX+16], 0
.Lt_00C5:
.Lt_00C4:
.Lt_00BD:
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _EDBGLINEEND@12
_EDBGLINEEND@12:
push ebp
mov ebp, esp
.Lt_00C6:
cmp dword ptr [_ENV+148], 0
jne .Lt_00C9
jmp .Lt_00C7
.Lt_00C9:
.Lt_00C8:
cmp dword ptr [_CTX+8], 0
jle .Lt_00CB
mov eax, dword ptr [ebp+16]
sub eax, dword ptr [_CTX+12]
mov dword ptr [_CTX+12], eax
cmp dword ptr [_CTX+12], 0
jle .Lt_00CD
push dword ptr [_CTX+4]
push dword ptr [_CTX+8]
push dword ptr [ebp+8]
call _EDBGEMITLINE@12
mov dword ptr [_CTX+16], -1
.Lt_00CD:
.Lt_00CC:
mov dword ptr [_CTX+8], 0
.Lt_00CB:
.Lt_00CA:
.Lt_00C7:
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _EDBGEMITLINE@12
_EDBGEMITLINE@12:
push ebp
mov ebp, esp
sub esp, 36
.Lt_00CE:
cmp dword ptr [_ENV+148], 0
jne .Lt_00D1
jmp .Lt_00CF
.Lt_00D1:
.Lt_00D0:
cmp dword ptr [_CTX+20], -1
jne .Lt_00D3
mov eax, dword ptr [ebp+12]
mov dword ptr [_CTX+20], eax
.Lt_00D3:
.Lt_00D2:
mov eax, dword ptr [ebp+12]
mov dword ptr [_CTX+24], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push 2
push offset _Lt_00D4
push 0
push dword ptr [ebp+16]
call _SYMBGETMANGLEDNAME@4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push 0
push 68
call _HMAKESTABN@16
mov dword ptr [_Lt_00D8], eax
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push 0
push dword ptr [_Lt_00D8]
call _EMITWRITESTR@8
.Lt_00CF:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_00D8,4

.section .text
.balign 16

.globl _EDBGEMITLINEFLUSH@12
_EDBGEMITLINEFLUSH@12:
push ebp
mov ebp, esp
sub esp, 36
.Lt_00D9:
cmp dword ptr [_ENV+148], 0
jne .Lt_00DC
jmp .Lt_00DA
.Lt_00DC:
.Lt_00DB:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push 2
push offset _Lt_00D4
push 0
push dword ptr [ebp+16]
call _SYMBGETMANGLEDNAME@4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push 0
push 68
call _HEMITSTABN@16
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_00DA:
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _EDBGSCOPEBEGIN@4
_EDBGSCOPEBEGIN@4:
push ebp
mov ebp, esp
push ebx
.Lt_00E0:
cmp dword ptr [_ENV+148], 0
jne .Lt_00E3
jmp .Lt_00E1
.Lt_00E3:
.Lt_00E2:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8372]
mov dword ptr [ebx+72], ecx
push 4
push 0
call _SYMBADDLABEL@8
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+80], eax
.Lt_00E1:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGSCOPEEND@4
_EDBGSCOPEEND@4:
push ebp
mov ebp, esp
push ebx
.Lt_00E4:
cmp dword ptr [_ENV+148], 0
jne .Lt_00E7
jmp .Lt_00E5
.Lt_00E7:
.Lt_00E6:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+8372]
mov dword ptr [ebx+76], ecx
push 4
push 0
call _SYMBADDLABEL@8
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+84], eax
.Lt_00E5:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGEMITSCOPEINI@4
_EDBGEMITSCOPEINI@4:
push ebp
mov ebp, esp
.Lt_00E8:
cmp dword ptr [_ENV+148], 0
jne .Lt_00EB
jmp .Lt_00E9
.Lt_00EB:
.Lt_00EA:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
call _SYMBGETMANGLEDNAME@4
push eax
call _HLABEL@4
.Lt_00E9:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGEMITSCOPEEND@4
_EDBGEMITSCOPEEND@4:
push ebp
mov ebp, esp
.Lt_00EC:
cmp dword ptr [_ENV+148], 0
jne .Lt_00EF
jmp .Lt_00ED
.Lt_00EF:
.Lt_00EE:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call _SYMBGETMANGLEDNAME@4
push eax
call _HLABEL@4
.Lt_00ED:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGPROCBEGIN@4
_EDBGPROCBEGIN@4:
push ebp
mov ebp, esp
push ebx
.Lt_00F0:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8372]
mov dword ptr [ecx+16], ebx
.Lt_00F1:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGPROCEND@4
_EDBGPROCEND@4:
push ebp
mov ebp, esp
push ebx
.Lt_00F2:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+8372]
mov dword ptr [ecx+20], ebx
.Lt_00F3:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGPROCEMITBEGIN@4
_EDBGPROCEMITBEGIN@4:
push ebp
mov ebp, esp
.Lt_00F4:
mov dword ptr [_CTX+20], -1
mov dword ptr [_CTX+24], -1
.Lt_00F5:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGEMITPROCHEADER@4
_EDBGEMITPROCHEADER@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00FE:
cmp dword ptr [_ENV+148], 0
jne .Lt_0101
jmp .Lt_00FF
.Lt_0101:
.Lt_0100:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+24]
call _EDBGINCLUDE@4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 4096
test eax, eax
je .Lt_0103
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push 1
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
call _FBGETENTRYPOINT@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-12]
push 42
call _HEMITSTABS@20
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push 1
push 0
push 68
call _HEMITSTABD@12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebx+16], 1
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebx+8372]
mov dword ptr [ecx+20], eax
push 0
push -1
call _FBGETENTRYPOINT@0
push eax
push -1
push offset _Lt_0109
call _fb_StrAssign@20
jmp .Lt_0102
.Lt_0103:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETDBGNAME@4
push eax
push -1
push offset _Lt_0109
call _fb_StrAssign@20
.Lt_0102:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_010A
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32
test ecx, ecx
je .Lt_0106
push 0
push 3
push offset _Lt_0107
push -1
push offset _Lt_0109
call _fb_StrConcatAssign@20
jmp .Lt_0105
.Lt_0106:
push 0
push 3
push offset _Lt_0108
push -1
push offset _Lt_0109
call _fb_StrConcatAssign@20
.Lt_0105:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETDATATYPE@8
push eax
push -1
push offset _Lt_0109
call _fb_StrConcatAssign@20
push dword ptr [_Lt_010A]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
push dword ptr [ecx+16]
push 0
push dword ptr [_Lt_0109]
push 36
call _HEMITSTABS@20
push dword ptr [ebp+8]
call _HDECLARGS@4
mov dword ptr [_CTX+16], -1
mov dword ptr [_CTX+8], 0
mov dword ptr [_CTX+12], 0
mov dword ptr [_CTX+4], 0
.Lt_00FF:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0109,12
.balign 4
	.lcomm	_Lt_010A,12

.section .text
.balign 16

.globl _EDBGEMITPROCFOOTER@12
_EDBGEMITPROCFOOTER@12:
push ebp
mov ebp, esp
sub esp, 36
.Lt_0127:
cmp dword ptr [_ENV+148], 0
jne .Lt_012A
jmp .Lt_0128
.Lt_012A:
.Lt_0129:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push offset _Lt_012E
call _fb_StrAssign@20
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+8]
call _HDECLLOCALVARS@16
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
push offset _Lt_012F
call _fb_StrAssign@20
push dword ptr [_Lt_012F]
call _HLABEL@4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push -1
push offset _Lt_012E
push -1
push 2
push offset _Lt_00D4
push -1
push offset _Lt_012F
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
push 0
push 0
push offset _Lt_0000
push 36
call _HEMITSTABS@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
mov dword ptr [_CTX+16], -1
mov dword ptr [_CTX+8], 0
mov dword ptr [_CTX+12], 0
mov dword ptr [_CTX+4], 0
.Lt_0128:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_012E,12
.balign 4
	.lcomm	_Lt_012F,12

.section .text
.balign 16

.globl _EDBGEMITGLOBALVAR@8
_EDBGEMITGLOBALVAR@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_018A:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [_ENV+148], 0
jne .Lt_018D
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .Lt_018B
.Lt_018D:
.Lt_018C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .Lt_018F
lea ebx, [ebp-20]
push ebx
call _fb_StrDelete@4
jmp .Lt_018B
.Lt_018F:
.Lt_018E:
cmp dword ptr [ebp+12], 0
jne .Lt_0191
.Lt_0192:
mov dword ptr [ebp-4], 36
jmp .Lt_0190
.Lt_0191:
cmp dword ptr [ebp+12], 2
jne .Lt_0193
.Lt_0194:
mov dword ptr [ebp-4], 40
jmp .Lt_0190
.Lt_0193:
mov dword ptr [ebp-4], 38
.Lt_0195:
.Lt_0190:
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETDBGNAME@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0197
push 0
push 3
push offset _Lt_0198
push -1
lea ecx, [ebp-20]
push ecx
call _fb_StrConcatAssign@20
jmp .Lt_0196
.Lt_0197:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 2
test ebx, ebx
je .Lt_0199
push 0
push 3
push offset _Lt_019A
push -1
lea ebx, [ebp-20]
push ebx
call _fb_StrConcatAssign@20
jmp .Lt_0196
.Lt_0199:
push 0
push 2
push offset _Lt_00A5
push -1
lea ebx, [ebp-20]
push ebx
call _fb_StrConcatAssign@20
.Lt_0196:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETDATATYPE@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push 0
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call _HEMITSTABS@20
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.Lt_018B:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EDBGEMITLOCALVAR@8
_EDBGEMITLOCALVAR@8:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_019D:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
cmp dword ptr [_ENV+148], 0
jne .Lt_01A0
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_019E
.Lt_01A0:
.Lt_019F:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
cmp dword ptr [ebp+12], 0
je .Lt_01A2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 2
test ebx, ebx
jne .Lt_01A4
lea ebx, [ebp-28]
push ebx
call _fb_StrDelete@4
lea ebx, [ebp-16]
push ebx
call _fb_StrDelete@4
jmp .Lt_019E
.Lt_01A4:
.Lt_01A3:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .Lt_01A6
mov dword ptr [ebp-4], 38
jmp .Lt_01A5
.Lt_01A6:
mov dword ptr [ebp-4], 40
.Lt_01A5:
push 0
push 3
push offset _Lt_01A7
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign@20
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
jmp .Lt_01A1
.Lt_01A2:
mov dword ptr [ebp-4], 128
push 0
push 2
push offset _Lt_00A5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
.Lt_01A1:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETDATATYPE@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push dword ptr [ebp-28]
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-4]
call _HEMITSTABS@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_019E:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _EDBGEMITPROCARG@4
_EDBGEMITPROCARG@4:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_01A8:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [_ENV+148], 0
jne .Lt_01AB
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_01A9
.Lt_01AB:
.Lt_01AA:
push 0
push -1
push 2
push offset _Lt_00A5
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32768
test ebx, ebx
je .Lt_01AE
push 0
push 2
push offset _Lt_01AF
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
jmp .Lt_01AD
.Lt_01AE:
push 0
push 2
push offset _Lt_01B0
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign@20
.Lt_01AD:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETDATATYPE@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
push 0
push 0
push dword ptr [ebp-12]
push 160
call _HEMITSTABS@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_01A9:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _EDBGINCLUDE@4
_EDBGINCLUDE@4:
push ebp
mov ebp, esp
sub esp, 12
.Lt_01B2:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_01B5
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_01B3
.Lt_01B5:
.Lt_01B4:
mov eax, dword ptr [_CTX+292]
cmp dword ptr [ebp+8], eax
jne .Lt_01B7
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
jmp .Lt_01B3
.Lt_01B7:
.Lt_01B6:
push 0
push 3
call dword ptr [_EMIT+220]
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-12]
push 0
push 0
push dword ptr [ebp+8]
push 132
call _HEMITSTABS@20
push dword ptr [ebp-12]
call _HLABEL@4
mov eax, dword ptr [ebp+8]
mov dword ptr [_CTX+292], eax
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_01B3:
mov esp, ebp
pop ebp
ret 4
.balign 16
_fb_ctor__edbg_stab:
.Lt_0002:
.Lt_0003:
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
_HEMITSTABS@20:
push ebp
mov ebp, esp
sub esp, 24
.Lt_0091:
push 0
push 9
push offset _Lt_0095
push -1
push offset _Lt_01B8
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+12]
call _HESCAPE@4
push eax
push -1
push offset _Lt_01B8
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_01B8
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_0098
push -1
push offset _Lt_01B8
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01B8
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01B8
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01B8
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01B8
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+20]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01B8
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01B8
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+24]
push -1
push offset _Lt_01B8
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_01B8
call _fb_StrAssign@20
push -1
push dword ptr [_Lt_01B8]
call _EMITWRITESTR@8
.Lt_0092:
mov esp, ebp
pop ebp
ret 20

.section .bss
.balign 4
	.lcomm	_Lt_01B8,12

.section .text
.balign 16
_HMAKESTABN@16:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_009A:
push 0
push 8
push offset _Lt_009C
push -1
push offset _Lt_01B9
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01B9
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01B9
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01B9
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01B9
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01B9
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01B9
call _fb_StrConcatAssign@20
push 0
push -1
push 0
push dword ptr [ebp+20]
push -1
push offset _Lt_01B9
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_01B9
call _fb_StrAssign@20
mov eax, dword ptr [_Lt_01B9]
mov dword ptr [ebp-4], eax
.Lt_009B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_01B9,12

.section .text
.balign 16
_HEMITSTABN@16:
push ebp
mov ebp, esp
.Lt_009E:
push -1
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMAKESTABN@16
push eax
call _EMITWRITESTR@8
.Lt_009F:
mov esp, ebp
pop ebp
ret 16
.balign 16
_HEMITSTABD@12:
push ebp
mov ebp, esp
.Lt_00A0:
push 0
push 8
push offset _Lt_00A2
push -1
push offset _Lt_01BA
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01BA
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01BA
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+12]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01BA
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0097
push -1
push offset _Lt_01BA
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp+16]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_01BA
call _fb_StrConcatAssign@20
push -1
push dword ptr [_Lt_01BA]
call _EMITWRITESTR@8
.Lt_00A1:
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_01BA,12

.section .text
.balign 16
_HLABEL@4:
push ebp
mov ebp, esp
.Lt_00A3:
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_01BB
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_00A5
push -1
push offset _Lt_01BB
call _fb_StrConcatAssign@20
push 0
push dword ptr [_Lt_01BB]
call _EMITWRITESTR@8
.Lt_00A4:
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_01BB,12

.section .text
.balign 16
_HDECLARGS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00F6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_00F8:
cmp dword ptr [ebp-4], 0
je .Lt_00F9
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 1
jne .Lt_00FB
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 114688
test eax, eax
je .Lt_00FD
push dword ptr [ebp-4]
call _EDBGEMITPROCARG@4
.Lt_00FD:
.Lt_00FC:
.Lt_00FB:
.Lt_00FA:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-4], ebx
jmp .Lt_00F8
.Lt_00F9:
.Lt_00F7:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HDECLLOCALVARS@16:
push ebp
mov ebp, esp
sub esp, 84
push ebx
.Lt_010B:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .Lt_010E
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
jmp .Lt_010D
.Lt_010E:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
.Lt_010D:
mov dword ptr [_Lt_01BC], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.Lt_010F:
cmp dword ptr [ebp-8], 0
je .Lt_0110
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-84], ebx
cmp dword ptr [ebp-84], 1
jne .Lt_0113
.Lt_0114:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 249860
test eax, eax
jne .Lt_0116
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 16
test ebx, ebx
jne .Lt_0118
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
call _EDBGEMITLOCALVAR@8
.Lt_0118:
.Lt_0117:
.Lt_0116:
.Lt_0115:
jmp .Lt_0111
.Lt_0113:
cmp dword ptr [ebp-84], 15
jne .Lt_0119
.Lt_011A:
inc dword ptr [_Lt_01BC]
.Lt_0119:
.Lt_0111:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-8], ebx
jmp .Lt_010F
.Lt_0110:
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push 2
push offset _Lt_00D4
push 0
push dword ptr [ebp+16]
call _SYMBGETMANGLEDNAME@4
push eax
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
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-44]
push 0
push 0
push 192
call _HEMITSTABN@16
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
cmp dword ptr [_Lt_01BC], 0
jle .Lt_011F
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.Lt_0120:
cmp dword ptr [ebp-8], 0
je .Lt_0121
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 15
jne .Lt_0123
mov eax, dword ptr [ebp-8]
push dword ptr [eax+84]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+80]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HDECLLOCALVARS@16
.Lt_0123:
.Lt_0122:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+176]
mov dword ptr [ebp-8], ebx
jmp .Lt_0120
.Lt_0121:
.Lt_011F:
.Lt_011E:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME@4
push eax
push -1
push 2
push offset _Lt_00D4
push 0
push dword ptr [ebp+20]
call _SYMBGETMANGLEDNAME@4
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-80]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-80]
push 0
push 0
push 224
call _HEMITSTABN@16
lea eax, [ebp-80]
push eax
call _fb_StrDelete@4
.Lt_010C:
pop ebx
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_01BC,4

.section .text
.balign 16
_HDECLPOINTER@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0130:
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_01BE
call _fb_StrAssign@20
.Lt_0132:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
test ebx, ebx
je .Lt_0133
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 31
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
and ecx, 480
add ecx, -32
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
and ecx, 32505856
or eax, ecx
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], eax
push 0
push -1
push dword ptr [_CTX]
call _fb_UIntToStr@4
push eax
push -1
push offset _Lt_01BE
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0134
push -1
push offset _Lt_01BE
call _fb_StrConcatAssign@20
inc dword ptr [_CTX]
jmp .Lt_0132
.Lt_0133:
push 0
push -1
push offset _Lt_01BE
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_0131:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_01BE,12

.section .text
.balign 16
_HGETDATATYPE@8:
push ebp
mov ebp, esp
sub esp, 92
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0135:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+8], 0
jne .Lt_0138
push 0
push -1
push dword ptr [_REMAPTB]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
jmp .Lt_0136
.Lt_0138:
.Lt_0137:
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .Lt_013A
mov dword ptr [ebp-16], 20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+92]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-20], ebx
jmp .Lt_0139
.Lt_013A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
cmp ecx, 12
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_013C
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 262144
test eax, eax
je .Lt_013E
mov eax, dword ptr [ebp-16]
and eax, 31
mov ecx, dword ptr [ebp-16]
and ecx, 480
add ecx, 32
or eax, ecx
mov ecx, dword ptr [ebp-16]
and ecx, 261632
sal ecx, 1
or eax, ecx
mov ecx, dword ptr [ebp-16]
and ecx, 32505856
or eax, ecx
mov dword ptr [ebp-16], eax
.Lt_013E:
.Lt_013D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
jle .Lt_0140
push 0
push -1
push dword ptr [_CTX]
call _fb_UIntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0141
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
inc dword ptr [_CTX]
cmp dword ptr [ebp+12], 0
jle .Lt_0143
push 0
push 5
push offset _Lt_0144
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0145
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
mov eax, dword ptr [ebp+12]
dec eax
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0146
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0142
.Lt_0143:
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+64]
dec ecx
mov dword ptr [ebp-44], ecx
jmp .Lt_0148
.Lt_014B:
push 0
push 5
push offset _Lt_0144
push -1
lea ecx, [ebp-36]
push ecx
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_0146
push -1
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-40]
sal eax, 4
mov ebx, dword ptr [ecx+68]
add ebx, eax
push dword ptr [ebx+4]
push dword ptr [ebx]
call _fb_LongintToStr@8
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_0146
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-40]
sal ebx, 4
mov ecx, dword ptr [eax+68]
add ecx, ebx
push dword ptr [ecx+12]
push dword ptr [ecx+8]
call _fb_LongintToStr@8
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
.Lt_0149:
inc dword ptr [ebp-40]
.Lt_0148:
mov eax, dword ptr [ebp-44]
cmp dword ptr [ebp-40], eax
jle .Lt_014B
.Lt_014A:
.Lt_0142:
.Lt_0140:
.Lt_013F:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8192
test ecx, ecx
je .Lt_0151
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+96]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebp-20], ecx
.Lt_0151:
.Lt_0150:
.Lt_013C:
.Lt_013B:
.Lt_0139:
cmp dword ptr [ebp-20], 0
jge .Lt_0153
mov dword ptr [ebp-20], 1
.Lt_0153:
.Lt_0152:
mov ecx, dword ptr [ebp-16]
and ecx, 480
test ecx, ecx
je .Lt_0155
push 0
push -1
lea ecx, [ebp-16]
push ecx
call _HDECLPOINTER@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
.Lt_0155:
.Lt_0154:
and dword ptr [ebp-16], -513
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
jmp .Lt_0157
.Lt_0159:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+136], -1
jne .Lt_015B
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call _HDECLUDT@8
.Lt_015B:
.Lt_015A:
push 0
push -1
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+136]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
jmp .Lt_0156
.Lt_015D:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+100], -1
jne .Lt_015F
push dword ptr [ebp-24]
call _HDECLENUM@4
.Lt_015F:
.Lt_015E:
push 0
push -1
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+100]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
jmp .Lt_0156
.Lt_0161:
push 0
push -1
push dword ptr [_CTX]
call _fb_UIntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0162
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
inc dword ptr [_CTX]
push 0
push -1
push 0
push dword ptr [ebp-24]
call _HGETDATATYPE@8
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0156
.Lt_0163:
push 0
push -1
push dword ptr [_REMAPTB]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0156
.Lt_0164:
push 0
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [_REMAPTB+eax*4]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0156
.Lt_0157:
mov eax, dword ptr [ebp-40]
add eax, 4294967286
cmp eax, 13
ja .Lt_0164
mov eax, dword ptr [ebp-40]
jmp dword ptr [_.LT_0165+eax*4-40]
_.LT_0165:
.int .Lt_015D
.int .Lt_0164
.int .Lt_0164
.int .Lt_0164
.int .Lt_0164
.int .Lt_0164
.int .Lt_0164
.int .Lt_0164
.int .Lt_0164
.int .Lt_0164
.int .Lt_0159
.int .Lt_0164
.int .Lt_0161
.int .Lt_0163
.Lt_0156:
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_0136:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDECLUDT@8:
push ebp
mov ebp, esp
sub esp, 168
push ebx
.Lt_0166:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_CTX]
mov dword ptr [eax+136], ebx
inc dword ptr [_CTX]
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETDBGNAME@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call _fb_LongintToStr@8
push eax
push -1
push 3
push offset _Lt_0169
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+136]
call _fb_IntToStr@4
push eax
push 4
push offset _Lt_0168
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-4], eax
.Lt_016E:
cmp dword ptr [ebp-4], 0
je .Lt_016F
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .Lt_0171
push 0
push -1
push -1
push -1
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call _HGETDATATYPE@8
push eax
push -1
push 2
push offset _Lt_00A5
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
shld ebx, ecx, 3
shl ecx, 3
mov dword ptr [ebp-168], ecx
mov dword ptr [ebp-164], ebx
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+116], 0
jle .Lt_0175
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+112]
mov dword ptr [ebp-104], ebx
jmp .Lt_01C1
.Lt_0175:
mov dword ptr [ebp-104], 0
.Lt_01C1:
mov ecx, dword ptr [ebp-104]
mov ebx, ecx
sar ebx, 31
add ecx, dword ptr [ebp-168]
adc ebx, dword ptr [ebp-164]
push ebx
push ecx
call _fb_LongintToStr@8
push eax
push 2
push offset _Lt_0097
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+116], 0
jle .Lt_0179
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+116]
mov ecx, ebx
sar ecx, 31
mov dword ptr [ebp-136], ebx
mov dword ptr [ebp-132], ecx
jmp .Lt_01C2
.Lt_0179:
push dword ptr [ebp-4]
call _SYMBGETREALSIZE@4
shld edx, eax, 3
shl eax, 3
mov dword ptr [ebp-136], eax
mov dword ptr [ebp-132], edx
.Lt_01C2:
push dword ptr [ebp-132]
push dword ptr [ebp-136]
call _fb_LongintToStr@8
push eax
push 2
push offset _Lt_0097
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push 2
push offset _Lt_0146
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0171:
.Lt_0170:
push dword ptr [ebp-4]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-4], eax
jmp .Lt_016E
.Lt_016F:
push 0
push 2
push offset _Lt_0146
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push offset _Lt_0006
push 0
push 0
push dword ptr [ebp-16]
push 128
call _HEMITSTABS@20
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_0167:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HDECLENUM@4:
push ebp
mov ebp, esp
sub esp, 100
push ebx
.Lt_017D:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_CTX]
mov dword ptr [eax+100], ebx
inc dword ptr [_CTX]
push 0
push 0
push dword ptr [ebp+8]
call _SYMBGETDBGNAME@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 3
push offset _Lt_0180
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+100]
call _fb_IntToStr@4
push eax
push 3
push offset _Lt_017F
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp+8]
call _SYMBGETENUMFIRSTELM@4
mov dword ptr [ebp-4], eax
.Lt_0184:
cmp dword ptr [ebp-4], 0
je .Lt_0185
push 0
push -1
push -1
push 2
push offset _Lt_0097
push -1
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+60]
push dword ptr [eax+56]
call _fb_LongintToStr@8
push eax
push -1
push 2
push offset _Lt_00A5
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-4]
call _SYMBGETENUMNEXTELM@4
mov dword ptr [ebp-4], eax
jmp .Lt_0184
.Lt_0185:
push 0
push 2
push offset _Lt_0146
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push offset _Lt_0006
push 0
push 0
push dword ptr [ebp-16]
push 128
call _HEMITSTABS@20
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_017E:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0006:	.ascii	"0\0"
.balign 4
_Lt_001A:	.ascii	"\\\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
.balign 4
	.lcomm	_Lt_007B,36
.balign 4
	.lcomm	_CTX,296

.section .data
.balign 4
_REMAPTB:
.int 7
.int 16
.int 2
.int 3
.int 4
.int 5
.int 6
.int 6
.int 1
.int 8
.int 1
.int 1
.int 8
.int 9
.int 10
.int 11
.int 12
.int 13
.int 14
.int 17
.skip 24,0
.balign 4
_STABSTB:
.int _Lt_007D
.int _Lt_007E
.int _Lt_007F
.int _Lt_0080
.int _Lt_0081
.int _Lt_0082
.int _Lt_0083
.int _Lt_0084
.int _Lt_0085
.int _Lt_0086
.int _Lt_0087
.int _Lt_0088
.int _Lt_0089
.int _Lt_008A
.int _Lt_008B
.int _Lt_008C
.int _Lt_008D
.balign 4
_Lt_007D:	.ascii	"integer:t1=-1\0"
.balign 4
_Lt_007E:	.ascii	"void:t7=-11\0"
.balign 4
_Lt_007F:	.ascii	"byte:t2=-6\0"
.balign 4
_Lt_0080:	.ascii	"ubyte:t3=-5\0"
.balign 4
_Lt_0081:	.ascii	"char:t4=-2\0"
.balign 4
_Lt_0082:	.ascii	"short:t5=-3\0"
.balign 4
_Lt_0083:	.ascii	"ushort:t6=-7\0"
.balign 4
_Lt_0084:	.ascii	"uinteger:t8=-8\0"
.balign 4
_Lt_0085:	.ascii	"longint:t9=-31\0"
.balign 4
_Lt_0086:	.ascii	"ulongint:t10=-32\0"
.balign 4
_Lt_0087:	.ascii	"single:t11=-12\0"
.balign 4
_Lt_0088:	.ascii	"double:t12=-13\0"
.balign 4
_Lt_0089:	.ascii	"string:t13=s12data:15,0,32;len:1,32,32;size:1,64,32;;\0"
.balign 4
_Lt_008A:	.ascii	"fixstr:t14=-2\0"
.balign 4
_Lt_008B:	.ascii	"pchar:t15=*4;\0"
.balign 4
_Lt_008C:	.ascii	"boolean:t16=@s8;-16\0"
.balign 4
_Lt_008D:	.ascii	"va_list:t17=-11\0"
.balign 4
_Lt_0094:	.ascii	"\"\0"
.balign 4
_Lt_0095:	.ascii	".stabs \"\0"
.balign 4
_Lt_0097:	.ascii	",\0"
.balign 4
_Lt_0098:	.ascii	"\",\0"
.balign 4
_Lt_009C:	.ascii	".stabn \0"
.balign 4
_Lt_00A2:	.ascii	".stabd \0"
.balign 4
_Lt_00A5:	.ascii	":\0"
.balign 4
_Lt_00AB:	.ascii	".file \"\0"
.balign 4
_Lt_00D4:	.ascii	"-\0"
.balign 4
_Lt_0107:	.ascii	":F\0"
.balign 4
_Lt_0108:	.ascii	":f\0"
.balign 4
_Lt_0134:	.ascii	"=*\0"
.balign 4
_Lt_0141:	.ascii	"=\0"
.balign 4
_Lt_0144:	.ascii	"ar1;\0"
.balign 4
_Lt_0145:	.ascii	"0;\0"
.balign 4
_Lt_0146:	.ascii	";\0"
.balign 4
_Lt_0162:	.ascii	"=f\0"
.balign 4
_Lt_0168:	.ascii	":Tt\0"
.balign 4
_Lt_0169:	.ascii	"=s\0"
.balign 4
_Lt_017F:	.ascii	":T\0"
.balign 4
_Lt_0180:	.ascii	"=e\0"
.balign 4
_Lt_0198:	.ascii	":G\0"
.balign 4
_Lt_019A:	.ascii	":S\0"
.balign 4
_Lt_01A7:	.ascii	":V\0"
.balign 4
_Lt_01AF:	.ascii	"p\0"
.balign 4
_Lt_01B0:	.ascii	"v\0"

.section .ctors
.int _fb_ctor__edbg_stab
