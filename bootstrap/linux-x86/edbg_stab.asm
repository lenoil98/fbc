	.intel_syntax noprefix

.section .text
.balign 16

.globl EDBGINIT
EDBGINIT:
.type EDBGINIT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_008E:
mov eax, dword ptr [ENV+248]
mov ebx, dword ptr [REMAPTB+eax*4]
mov dword ptr [REMAPTB+28], ebx
.Lt_008F:
pop ebx
mov esp, ebp
pop ebp
ret
.size EDBGINIT, .-EDBGINIT
.balign 16

.globl EDBGEMITHEADER
EDBGEMITHEADER:
.type EDBGEMITHEADER, @function
push ebp
mov ebp, esp
sub esp, 72
.Lt_00A5:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ENV+148], 0
jne .Lt_00A8
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00A6
.Lt_00A8:
.Lt_00A7:
mov dword ptr [CTX], 1
mov dword ptr [CTX+4], 0
mov dword ptr [CTX+292], 0
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push 261
lea eax, [CTX+28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push 2
push offset Lt_0093
push -1
sub esp, 4
push 0
sub esp, 12
push dword ptr [ebp+8]
call HESCAPE
add esp, 16
push eax
push 8
push offset Lt_00AA
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call EMITWRITESTR
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ebp+8]
call PATHISABSOLUTE
add esp, 16
test eax, eax
jne .Lt_00AF
sub esp, 12
push dword ptr [ebp-12]
push 0
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_0019
push -1
sub esp, 8
call HCURDIR
add esp, 8
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-72]
push 100
call HEMITSTABS
add esp, 32
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
.Lt_00AF:
.Lt_00AE:
sub esp, 12
push dword ptr [ebp-12]
push 0
push 0
push dword ptr [ebp+8]
push 100
call HEMITSTABS
add esp, 32
sub esp, 8
push 0
push 3
call dword ptr [EMIT+220]
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call HLABEL
add esp, 16
mov dword ptr [ebp-52], 0
.Lt_00B5:
sub esp, 12
push offset Lt_0006
push 0
push 0
mov eax, dword ptr [ebp-52]
push dword ptr [STABSTB+eax*4]
push 128
call HEMITSTABS
add esp, 32
inc dword ptr [CTX]
.Lt_00B3:
inc dword ptr [ebp-52]
.Lt_00B2:
cmp dword ptr [ebp-52], 16
jle .Lt_00B5
.Lt_00B4:
sub esp, 8
push 0
push offset Lt_0000
call EMITWRITESTR
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_00A6:
mov esp, ebp
pop ebp
ret
.size EDBGEMITHEADER, .-EDBGEMITHEADER
.balign 16

.globl EDBGEMITFOOTER
EDBGEMITFOOTER:
.type EDBGEMITFOOTER, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00B6:
cmp dword ptr [ENV+148], 0
jne .Lt_00B9
jmp .Lt_00B7
.Lt_00B9:
.Lt_00B8:
sub esp, 8
push 0
push 3
call dword ptr [EMIT+220]
add esp, 16
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
push offset Lt_00BA
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_00BA]
push 0
push 0
push offset Lt_0000
push 100
call HEMITSTABS
add esp, 32
sub esp, 12
push dword ptr [Lt_00BA]
call HLABEL
add esp, 16
.Lt_00B7:
mov esp, ebp
pop ebp
ret
.size EDBGEMITFOOTER, .-EDBGEMITFOOTER

.section .bss
.balign 4
	.lcomm	Lt_00BA,12

.section .text
.balign 16

.globl EDBGLINEBEGIN
EDBGLINEBEGIN:
.type EDBGLINEBEGIN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00BB:
cmp dword ptr [ENV+148], 0
jne .Lt_00BE
jmp .Lt_00BC
.Lt_00BE:
.Lt_00BD:
cmp dword ptr [CTX+8], 0
jle .Lt_00C0
mov eax, dword ptr [ebp+16]
sub eax, dword ptr [CTX+12]
mov dword ptr [CTX+12], eax
cmp dword ptr [CTX+12], 0
jle .Lt_00C2
sub esp, 4
push dword ptr [CTX+4]
push dword ptr [CTX+8]
push dword ptr [ebp+8]
call EDBGEMITLINE
add esp, 16
mov dword ptr [CTX+16], -1
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
sub esp, 12
push dword ptr [ebp+20]
call EDBGINCLUDE
add esp, 16
mov eax, dword ptr [ebp+16]
mov dword ptr [CTX+12], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [CTX+8], eax
cmp dword ptr [CTX+16], 0
je .Lt_00C4
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [CTX+4], eax
sub esp, 12
push dword ptr [CTX+4]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call HLABEL
add esp, 16
mov dword ptr [CTX+16], 0
.Lt_00C4:
.Lt_00C3:
.Lt_00BC:
mov esp, ebp
pop ebp
ret
.size EDBGLINEBEGIN, .-EDBGLINEBEGIN
.balign 16

.globl EDBGLINEEND
EDBGLINEEND:
.type EDBGLINEEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00C5:
cmp dword ptr [ENV+148], 0
jne .Lt_00C8
jmp .Lt_00C6
.Lt_00C8:
.Lt_00C7:
cmp dword ptr [CTX+8], 0
jle .Lt_00CA
mov eax, dword ptr [ebp+16]
sub eax, dword ptr [CTX+12]
mov dword ptr [CTX+12], eax
cmp dword ptr [CTX+12], 0
jle .Lt_00CC
sub esp, 4
push dword ptr [CTX+4]
push dword ptr [CTX+8]
push dword ptr [ebp+8]
call EDBGEMITLINE
add esp, 16
mov dword ptr [CTX+16], -1
.Lt_00CC:
.Lt_00CB:
mov dword ptr [CTX+8], 0
.Lt_00CA:
.Lt_00C9:
.Lt_00C6:
mov esp, ebp
pop ebp
ret
.size EDBGLINEEND, .-EDBGLINEEND
.balign 16

.globl EDBGEMITLINE
EDBGEMITLINE:
.type EDBGEMITLINE, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_00CD:
cmp dword ptr [ENV+148], 0
jne .Lt_00D0
jmp .Lt_00CE
.Lt_00D0:
.Lt_00CF:
cmp dword ptr [CTX+20], -1
jne .Lt_00D2
mov eax, dword ptr [ebp+12]
mov dword ptr [CTX+20], eax
.Lt_00D2:
.Lt_00D1:
mov eax, dword ptr [ebp+12]
mov dword ptr [CTX+24], eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_00D3
push 0
sub esp, 4
push dword ptr [ebp+16]
call SYMBGETMANGLEDNAME
add esp, 8
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push 0
push 68
call HMAKESTABN
add esp, 16
mov dword ptr [Lt_00D7], eax
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push 0
push dword ptr [Lt_00D7]
call EMITWRITESTR
add esp, 16
.Lt_00CE:
mov esp, ebp
pop ebp
ret
.size EDBGEMITLINE, .-EDBGEMITLINE

.section .bss
.balign 4
	.lcomm	Lt_00D7,4

.section .text
.balign 16

.globl EDBGEMITLINEFLUSH
EDBGEMITLINEFLUSH:
.type EDBGEMITLINEFLUSH, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_00D8:
cmp dword ptr [ENV+148], 0
jne .Lt_00DB
jmp .Lt_00D9
.Lt_00DB:
.Lt_00DA:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_00D3
push 0
sub esp, 4
push dword ptr [ebp+16]
call SYMBGETMANGLEDNAME
add esp, 8
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
push dword ptr [ebp-36]
push dword ptr [ebp+12]
push 0
push 68
call HEMITSTABN
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.Lt_00D9:
mov esp, ebp
pop ebp
ret
.size EDBGEMITLINEFLUSH, .-EDBGEMITLINEFLUSH
.balign 16

.globl EDBGSCOPEBEGIN
EDBGSCOPEBEGIN:
.type EDBGSCOPEBEGIN, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00DF:
cmp dword ptr [ENV+148], 0
jne .Lt_00E2
jmp .Lt_00E0
.Lt_00E2:
.Lt_00E1:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+16564]
mov dword ptr [ebx+72], ecx
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+80], eax
.Lt_00E0:
pop ebx
mov esp, ebp
pop ebp
ret
.size EDBGSCOPEBEGIN, .-EDBGSCOPEBEGIN
.balign 16

.globl EDBGSCOPEEND
EDBGSCOPEEND:
.type EDBGSCOPEEND, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00E3:
cmp dword ptr [ENV+148], 0
jne .Lt_00E6
jmp .Lt_00E4
.Lt_00E6:
.Lt_00E5:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+16564]
mov dword ptr [ebx+76], ecx
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+84], eax
.Lt_00E4:
pop ebx
mov esp, ebp
pop ebp
ret
.size EDBGSCOPEEND, .-EDBGSCOPEEND
.balign 16

.globl EDBGEMITSCOPEINI
EDBGEMITSCOPEINI:
.type EDBGEMITSCOPEINI, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00E7:
cmp dword ptr [ENV+148], 0
jne .Lt_00EA
jmp .Lt_00E8
.Lt_00EA:
.Lt_00E9:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+80]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call HLABEL
add esp, 16
.Lt_00E8:
mov esp, ebp
pop ebp
ret
.size EDBGEMITSCOPEINI, .-EDBGEMITSCOPEINI
.balign 16

.globl EDBGEMITSCOPEEND
EDBGEMITSCOPEEND:
.type EDBGEMITSCOPEEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00EB:
cmp dword ptr [ENV+148], 0
jne .Lt_00EE
jmp .Lt_00EC
.Lt_00EE:
.Lt_00ED:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+84]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call HLABEL
add esp, 16
.Lt_00EC:
mov esp, ebp
pop ebp
ret
.size EDBGEMITSCOPEEND, .-EDBGEMITSCOPEEND
.balign 16

.globl EDBGPROCBEGIN
EDBGPROCBEGIN:
.type EDBGPROCBEGIN, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00EF:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16564]
mov dword ptr [ecx+16], ebx
.Lt_00F0:
pop ebx
mov esp, ebp
pop ebp
ret
.size EDBGPROCBEGIN, .-EDBGPROCBEGIN
.balign 16

.globl EDBGPROCEND
EDBGPROCEND:
.type EDBGPROCEND, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00F1:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+112]
mov ebx, dword ptr [eax+16564]
mov dword ptr [ecx+20], ebx
.Lt_00F2:
pop ebx
mov esp, ebp
pop ebp
ret
.size EDBGPROCEND, .-EDBGPROCEND
.balign 16

.globl EDBGPROCEMITBEGIN
EDBGPROCEMITBEGIN:
.type EDBGPROCEMITBEGIN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00F3:
mov dword ptr [CTX+20], -1
mov dword ptr [CTX+24], -1
.Lt_00F4:
mov esp, ebp
pop ebp
ret
.size EDBGPROCEMITBEGIN, .-EDBGPROCEMITBEGIN
.balign 16

.globl EDBGEMITPROCHEADER
EDBGEMITPROCHEADER:
.type EDBGEMITPROCHEADER, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00FD:
cmp dword ptr [ENV+148], 0
jne .Lt_0100
jmp .Lt_00FE
.Lt_0100:
.Lt_00FF:
sub esp, 12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
push dword ptr [ebx+24]
call EDBGINCLUDE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 4096
test eax, eax
je .Lt_0102
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 1
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push -1
sub esp, 12
call FBGETENTRYPOINT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-12]
push 42
call HEMITSTABS
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
sub esp, 4
push 1
push 0
push 68
call HEMITSTABD
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov dword ptr [ebx+16], 1
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
mov eax, dword ptr [ebx+16564]
mov dword ptr [ecx+20], eax
sub esp, 12
push 0
push -1
sub esp, 12
call FBGETENTRYPOINT
add esp, 12
push eax
push -1
push offset Lt_0108
call fb_StrAssign
add esp, 32
jmp .Lt_0101
.Lt_0102:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETDBGNAME
add esp, 12
push eax
push -1
push offset Lt_0108
call fb_StrAssign
add esp, 32
.Lt_0101:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
push offset Lt_0109
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 32
test ecx, ecx
je .Lt_0105
sub esp, 12
push 0
push 3
push offset Lt_0106
push -1
push offset Lt_0108
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0104
.Lt_0105:
sub esp, 12
push 0
push 3
push offset Lt_0107
push -1
push offset Lt_0108
call fb_StrConcatAssign
add esp, 32
.Lt_0104:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+8]
call HGETDATATYPE
add esp, 12
push eax
push -1
push offset Lt_0108
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_0109]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+112]
push dword ptr [ecx+16]
push 0
push dword ptr [Lt_0108]
push 36
call HEMITSTABS
add esp, 32
sub esp, 12
push dword ptr [ebp+8]
call HDECLARGS
add esp, 16
mov dword ptr [CTX+16], -1
mov dword ptr [CTX+8], 0
mov dword ptr [CTX+12], 0
mov dword ptr [CTX+4], 0
.Lt_00FE:
pop ebx
mov esp, ebp
pop ebp
ret
.size EDBGEMITPROCHEADER, .-EDBGEMITPROCHEADER

.section .bss
.balign 4
	.lcomm	Lt_0108,12
.balign 4
	.lcomm	Lt_0109,12

.section .text
.balign 16

.globl EDBGEMITPROCFOOTER
EDBGEMITPROCFOOTER:
.type EDBGEMITPROCFOOTER, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_0126:
cmp dword ptr [ENV+148], 0
jne .Lt_0129
jmp .Lt_0127
.Lt_0129:
.Lt_0128:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
push offset Lt_012D
call fb_StrAssign
add esp, 32
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+8]
call HDECLLOCALVARS
add esp, 16
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
push offset Lt_012E
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [Lt_012E]
call HLABEL
add esp, 16
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
push -1
push offset Lt_012D
push -1
sub esp, 4
push 2
push offset Lt_00D3
push -1
push offset Lt_012E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
push 0
push 0
push offset Lt_0000
push 36
call HEMITSTABS
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
mov dword ptr [CTX+16], -1
mov dword ptr [CTX+8], 0
mov dword ptr [CTX+12], 0
mov dword ptr [CTX+4], 0
.Lt_0127:
mov esp, ebp
pop ebp
ret
.size EDBGEMITPROCFOOTER, .-EDBGEMITPROCFOOTER

.section .bss
.balign 4
	.lcomm	Lt_012D,12
.balign 4
	.lcomm	Lt_012E,12

.section .text
.balign 16

.globl EDBGEMITGLOBALVAR
EDBGEMITGLOBALVAR:
.type EDBGEMITGLOBALVAR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0189:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [ENV+148], 0
jne .Lt_018C
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_018A
.Lt_018C:
.Lt_018B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 128
test ebx, ebx
je .Lt_018E
sub esp, 12
lea ebx, [ebp-20]
push ebx
call fb_StrDelete
add esp, 16
jmp .Lt_018A
.Lt_018E:
.Lt_018D:
cmp dword ptr [ebp+12], 0
jne .Lt_0190
.Lt_0191:
mov dword ptr [ebp-4], 36
jmp .Lt_018F
.Lt_0190:
cmp dword ptr [ebp+12], 2
jne .Lt_0192
.Lt_0193:
mov dword ptr [ebp-4], 40
jmp .Lt_018F
.Lt_0192:
mov dword ptr [ebp-4], 38
.Lt_0194:
.Lt_018F:
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETDBGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 32
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
je .Lt_0196
sub esp, 12
push 0
push 3
push offset Lt_0197
push -1
lea ecx, [ebp-20]
push ecx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0195
.Lt_0196:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4]
and ebx, 2
test ebx, ebx
je .Lt_0198
sub esp, 12
push 0
push 3
push offset Lt_0199
push -1
lea ebx, [ebp-20]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0195
.Lt_0198:
sub esp, 12
push 0
push 2
push offset Lt_00A4
push -1
lea ebx, [ebp-20]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_0195:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+8]
call HGETDATATYPE
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push 0
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-4]
call HEMITSTABS
add esp, 32
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.Lt_018A:
pop ebx
mov esp, ebp
pop ebp
ret
.size EDBGEMITGLOBALVAR, .-EDBGEMITGLOBALVAR
.balign 16

.globl EDBGEMITLOCALVAR
EDBGEMITLOCALVAR:
.type EDBGEMITLOCALVAR, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_019C:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
cmp dword ptr [ENV+148], 0
jne .Lt_019F
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_019D
.Lt_019F:
.Lt_019E:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+12], 0
je .Lt_01A1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 2
test ebx, ebx
jne .Lt_01A3
sub esp, 12
lea ebx, [ebp-28]
push ebx
call fb_StrDelete
add esp, 16
sub esp, 12
lea ebx, [ebp-16]
push ebx
call fb_StrDelete
add esp, 16
jmp .Lt_019D
.Lt_01A3:
.Lt_01A2:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+56], 0
je .Lt_01A5
mov dword ptr [ebp-4], 38
jmp .Lt_01A4
.Lt_01A5:
mov dword ptr [ebp-4], 40
.Lt_01A4:
sub esp, 12
push 0
push 3
push offset Lt_01A6
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_01A0
.Lt_01A1:
mov dword ptr [ebp-4], 128
sub esp, 12
push 0
push 2
push offset Lt_00A4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
.Lt_01A0:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+8]
call HGETDATATYPE
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-28]
push 0
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-4]
call HEMITSTABS
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_019D:
pop ebx
mov esp, ebp
pop ebp
ret
.size EDBGEMITLOCALVAR, .-EDBGEMITLOCALVAR
.balign 16

.globl EDBGEMITPROCARG
EDBGEMITPROCARG:
.type EDBGEMITPROCARG, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_01A7:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ENV+148], 0
jne .Lt_01AA
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_01A8
.Lt_01AA:
.Lt_01A9:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00A4
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32768
test ebx, ebx
je .Lt_01AD
sub esp, 12
push 0
push 2
push offset Lt_01AE
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01AC
.Lt_01AD:
sub esp, 12
push 0
push 2
push offset Lt_01AF
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_01AC:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+8]
call HGETDATATYPE
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
push 0
push 0
push dword ptr [ebp-12]
push 160
call HEMITSTABS
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_01A8:
pop ebx
mov esp, ebp
pop ebp
ret
.size EDBGEMITPROCARG, .-EDBGEMITPROCARG
.balign 16

.globl EDBGINCLUDE
EDBGINCLUDE:
.type EDBGINCLUDE, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_01B1:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_01B4
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_01B2
.Lt_01B4:
.Lt_01B3:
mov eax, dword ptr [CTX+292]
cmp dword ptr [ebp+8], eax
jne .Lt_01B6
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_01B2
.Lt_01B6:
.Lt_01B5:
sub esp, 8
push 0
push 3
call dword ptr [EMIT+220]
add esp, 16
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-12]
push 0
push 0
push dword ptr [ebp+8]
push 132
call HEMITSTABS
add esp, 32
sub esp, 12
push dword ptr [ebp-12]
call HLABEL
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [CTX+292], eax
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_01B2:
mov esp, ebp
pop ebp
ret
.size EDBGINCLUDE, .-EDBGINCLUDE
.balign 16
fb_ctor__edbg_stab:
.type fb_ctor__edbg_stab, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__edbg_stab, .-fb_ctor__edbg_stab
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
HEMITSTABS:
.type HEMITSTABS, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_0090:
sub esp, 12
push 0
push 9
push offset Lt_0094
push -1
push offset Lt_01B7
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+12]
call HESCAPE
add esp, 16
push eax
push -1
push offset Lt_01B7
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_01B7
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0097
push -1
push offset Lt_01B7
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_01B7
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B7
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_01B7
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B7
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+20]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_01B7
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B7
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+24]
push -1
push offset Lt_01B7
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_01B7
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push dword ptr [Lt_01B7]
call EMITWRITESTR
add esp, 16
.Lt_0091:
mov esp, ebp
pop ebp
ret
.size HEMITSTABS, .-HEMITSTABS

.section .bss
.balign 4
	.lcomm	Lt_01B7,12

.section .text
.balign 16
HMAKESTABN:
.type HMAKESTABN, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0099:
sub esp, 12
push 0
push 8
push offset Lt_009B
push -1
push offset Lt_01B8
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_01B8
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B8
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_01B8
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B8
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_01B8
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B8
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+20]
push -1
push offset Lt_01B8
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_01B8
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_01B8]
mov dword ptr [ebp-4], eax
.Lt_009A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HMAKESTABN, .-HMAKESTABN

.section .bss
.balign 4
	.lcomm	Lt_01B8,12

.section .text
.balign 16
HEMITSTABN:
.type HEMITSTABN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_009D:
sub esp, 8
push -1
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HMAKESTABN
add esp, 20
push eax
call EMITWRITESTR
add esp, 16
.Lt_009E:
mov esp, ebp
pop ebp
ret
.size HEMITSTABN, .-HEMITSTABN
.balign 16
HEMITSTABD:
.type HEMITSTABD, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_009F:
sub esp, 12
push 0
push 8
push offset Lt_00A1
push -1
push offset Lt_01B9
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_01B9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_01B9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0096
push -1
push offset Lt_01B9
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+16]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_01B9
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push -1
push dword ptr [Lt_01B9]
call EMITWRITESTR
add esp, 16
.Lt_00A0:
mov esp, ebp
pop ebp
ret
.size HEMITSTABD, .-HEMITSTABD

.section .bss
.balign 4
	.lcomm	Lt_01B9,12

.section .text
.balign 16
HLABEL:
.type HLABEL, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00A2:
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_01BA
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00A4
push -1
push offset Lt_01BA
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 0
push dword ptr [Lt_01BA]
call EMITWRITESTR
add esp, 16
.Lt_00A3:
mov esp, ebp
pop ebp
ret
.size HLABEL, .-HLABEL

.section .bss
.balign 4
	.lcomm	Lt_01BA,12

.section .text
.balign 16
HDECLARGS:
.type HDECLARGS, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00F5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_00F7:
cmp dword ptr [ebp-4], 0
je .Lt_00F8
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 1
jne .Lt_00FA
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 114688
test eax, eax
je .Lt_00FC
sub esp, 12
push dword ptr [ebp-4]
call EDBGEMITPROCARG
add esp, 16
.Lt_00FC:
.Lt_00FB:
.Lt_00FA:
.Lt_00F9:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
jmp .Lt_00F7
.Lt_00F8:
.Lt_00F6:
pop ebx
mov esp, ebp
pop ebp
ret
.size HDECLARGS, .-HDECLARGS
.balign 16
HDECLLOCALVARS:
.type HDECLLOCALVARS, @function
push ebp
mov ebp, esp
sub esp, 84
push ebx
.Lt_010A:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 3
jne .Lt_010D
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
jmp .Lt_010C
.Lt_010D:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+64]
mov dword ptr [ebp-4], eax
.Lt_010C:
mov dword ptr [Lt_01BB], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.Lt_010E:
cmp dword ptr [ebp-8], 0
je .Lt_010F
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-84], ebx
cmp dword ptr [ebp-84], 1
jne .Lt_0112
.Lt_0113:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 249860
test eax, eax
jne .Lt_0115
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 16
test ebx, ebx
jne .Lt_0117
sub esp, 8
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 2
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
call EDBGEMITLOCALVAR
add esp, 16
.Lt_0117:
.Lt_0116:
.Lt_0115:
.Lt_0114:
jmp .Lt_0110
.Lt_0112:
cmp dword ptr [ebp-84], 15
jne .Lt_0118
.Lt_0119:
inc dword ptr [Lt_01BB]
.Lt_0118:
.Lt_0110:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .Lt_010E
.Lt_010F:
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_00D3
push 0
sub esp, 4
push dword ptr [ebp+16]
call SYMBGETMANGLEDNAME
add esp, 8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 32
push dword ptr [ebp-44]
push 0
push 0
push 192
call HEMITSTABN
add esp, 16
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [Lt_01BB], 0
jle .Lt_011E
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.Lt_011F:
cmp dword ptr [ebp-8], 0
je .Lt_0120
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 15
jne .Lt_0122
mov eax, dword ptr [ebp-8]
push dword ptr [eax+84]
mov eax, dword ptr [ebp-8]
push dword ptr [eax+80]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HDECLLOCALVARS
add esp, 16
.Lt_0122:
.Lt_0121:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .Lt_011F
.Lt_0120:
.Lt_011E:
.Lt_011D:
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_00D3
push 0
sub esp, 4
push dword ptr [ebp+20]
call SYMBGETMANGLEDNAME
add esp, 8
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-80]
push eax
call fb_StrAssign
add esp, 32
push dword ptr [ebp-80]
push 0
push 0
push 224
call HEMITSTABN
add esp, 16
sub esp, 12
lea eax, [ebp-80]
push eax
call fb_StrDelete
add esp, 16
.Lt_010B:
pop ebx
mov esp, ebp
pop ebp
ret
.size HDECLLOCALVARS, .-HDECLLOCALVARS

.section .bss
.balign 4
	.lcomm	Lt_01BB,4

.section .text
.balign 16
HDECLPOINTER:
.type HDECLPOINTER, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_012F:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_01BD
call fb_StrAssign
add esp, 32
.Lt_0131:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 480
test ebx, ebx
je .Lt_0132
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
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [CTX]
call fb_UIntToStr
add esp, 12
push eax
push -1
push offset Lt_01BD
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0133
push -1
push offset Lt_01BD
call fb_StrConcatAssign
add esp, 32
inc dword ptr [CTX]
jmp .Lt_0131
.Lt_0132:
sub esp, 12
push 0
push -1
push offset Lt_01BD
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0130:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HDECLPOINTER, .-HDECLPOINTER

.section .bss
.balign 4
	.lcomm	Lt_01BD,12

.section .text
.balign 16
HGETDATATYPE:
.type HGETDATATYPE, @function
push ebp
mov ebp, esp
sub esp, 100
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0134:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp+8], 0
jne .Lt_0137
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [REMAPTB]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0135
.Lt_0137:
.Lt_0136:
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16384
test ebx, ebx
je .Lt_0139
mov dword ptr [ebp-16], 20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+88]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-20], ebx
jmp .Lt_0138
.Lt_0139:
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
je .Lt_013B
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 262144
test eax, eax
je .Lt_013D
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
.Lt_013D:
.Lt_013C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
jle .Lt_013F
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [CTX]
call fb_UIntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0140
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
inc dword ptr [CTX]
cmp dword ptr [ebp+12], 0
jle .Lt_0142
sub esp, 12
push 0
push 5
push offset Lt_0143
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0144
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+12]
dec eax
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0145
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0141
.Lt_0142:
mov dword ptr [ebp-40], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+60]
dec ecx
mov dword ptr [ebp-44], ecx
jmp .Lt_0147
.Lt_014A:
sub esp, 12
push 0
push 5
push offset Lt_0143
push -1
lea ecx, [ebp-36]
push ecx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0145
push -1
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-40]
sal eax, 4
mov ebx, dword ptr [ecx+64]
add ebx, eax
push dword ptr [ebx+4]
push dword ptr [ebx]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0145
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-40]
sal ebx, 4
mov ecx, dword ptr [eax+64]
add ecx, ebx
push dword ptr [ecx+12]
push dword ptr [ecx+8]
call fb_LongintToStr
add esp, 8
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
lea eax, [ebp-92]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
.Lt_0148:
inc dword ptr [ebp-40]
.Lt_0147:
mov eax, dword ptr [ebp-44]
cmp dword ptr [ebp-40], eax
jle .Lt_014A
.Lt_0149:
.Lt_0141:
.Lt_013F:
.Lt_013E:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8192
test ecx, ecx
je .Lt_0150
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+92]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-20], ecx
.Lt_0150:
.Lt_014F:
.Lt_013B:
.Lt_013A:
.Lt_0138:
cmp dword ptr [ebp-20], 0
jge .Lt_0152
mov dword ptr [ebp-20], 1
.Lt_0152:
.Lt_0151:
mov ecx, dword ptr [ebp-16]
and ecx, 480
test ecx, ecx
je .Lt_0154
sub esp, 12
push 0
push -1
sub esp, 8
lea ecx, [ebp-16]
push ecx
call HDECLPOINTER
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0154:
.Lt_0153:
and dword ptr [ebp-16], -513
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-40], eax
jmp .Lt_0156
.Lt_0158:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+132], -1
jne .Lt_015A
sub esp, 8
push dword ptr [ebp-20]
push dword ptr [ebp-24]
call HDECLUDT
add esp, 16
.Lt_015A:
.Lt_0159:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp-24]
push dword ptr [eax+132]
call fb_IntToStr
add esp, 16
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0155
.Lt_015C:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+100], -1
jne .Lt_015E
sub esp, 12
push dword ptr [ebp-24]
call HDECLENUM
add esp, 16
.Lt_015E:
.Lt_015D:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp-24]
push dword ptr [eax+100]
call fb_IntToStr
add esp, 16
push eax
push -1
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0155
.Lt_0160:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [CTX]
call fb_UIntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0161
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
inc dword ptr [CTX]
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp-24]
call HGETDATATYPE
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0155
.Lt_0162:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [REMAPTB]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0155
.Lt_0163:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp-16]
push dword ptr [REMAPTB+eax*4]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0155
.Lt_0156:
mov eax, dword ptr [ebp-40]
add eax, 4294967286
cmp eax, 13
ja .Lt_0163
mov eax, dword ptr [ebp-40]
jmp dword ptr [.LT_0164+eax*4-40]
.LT_0164:
.int .Lt_015C
.int .Lt_0163
.int .Lt_0163
.int .Lt_0163
.int .Lt_0163
.int .Lt_0163
.int .Lt_0163
.int .Lt_0163
.int .Lt_0163
.int .Lt_0163
.int .Lt_0158
.int .Lt_0163
.int .Lt_0160
.int .Lt_0162
.Lt_0155:
sub esp, 12
push 0
push -1
lea eax, [ebp-36]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.Lt_0135:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETDATATYPE, .-HGETDATATYPE
.balign 16
HDECLUDT:
.type HDECLUDT, @function
push ebp
mov ebp, esp
sub esp, 180
push ebx
.Lt_0165:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [CTX]
mov dword ptr [eax+132], ebx
inc dword ptr [CTX]
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETDBGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+44]
push dword ptr [eax+40]
call fb_LongintToStr
add esp, 16
push eax
push -1
sub esp, 4
push 3
push offset Lt_0168
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+132]
call fb_IntToStr
add esp, 16
push eax
push 4
push offset Lt_0167
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_016D:
cmp dword ptr [ebp-4], 0
je .Lt_016E
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 4
test ebx, ebx
jne .Lt_0170
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call HGETDATATYPE
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_00A4
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 8
mov eax, dword ptr [ebp-4]
mov ecx, dword ptr [eax+48]
mov ebx, dword ptr [eax+52]
shld ebx, ecx, 3
shl ecx, 3
mov dword ptr [ebp-168], ecx
mov dword ptr [ebp-164], ebx
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx+112], 0
jle .Lt_0174
mov ecx, dword ptr [ebp-4]
mov ebx, dword ptr [ecx+108]
mov dword ptr [ebp-104], ebx
jmp .Lt_01C0
.Lt_0174:
mov dword ptr [ebp-104], 0
.Lt_01C0:
mov ecx, dword ptr [ebp-104]
mov ebx, ecx
sar ebx, 31
add ecx, dword ptr [ebp-168]
adc ebx, dword ptr [ebp-164]
push ebx
push ecx
call fb_LongintToStr
add esp, 16
push eax
push 2
push offset Lt_0096
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
sub esp, 8
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+112], 0
jle .Lt_0178
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+112]
mov ecx, ebx
sar ecx, 31
mov dword ptr [ebp-136], ebx
mov dword ptr [ebp-132], ecx
jmp .Lt_01C1
.Lt_0178:
sub esp, 4
push dword ptr [ebp-4]
call SYMBGETREALSIZE
add esp, 8
shld edx, eax, 3
shl eax, 3
mov dword ptr [ebp-136], eax
mov dword ptr [ebp-132], edx
.Lt_01C1:
push dword ptr [ebp-132]
push dword ptr [ebp-136]
call fb_LongintToStr
add esp, 16
push eax
push 2
push offset Lt_0096
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
lea eax, [ebp-148]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-160], 0
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
lea eax, [ebp-160]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0145
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0170:
.Lt_016F:
sub esp, 12
push dword ptr [ebp-4]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_016D
.Lt_016E:
sub esp, 12
push 0
push 2
push offset Lt_0145
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push offset Lt_0006
push 0
push 0
push dword ptr [ebp-16]
push 128
call HEMITSTABS
add esp, 32
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_0166:
pop ebx
mov esp, ebp
pop ebp
ret
.size HDECLUDT, .-HDECLUDT
.balign 16
HDECLENUM:
.type HDECLENUM, @function
push ebp
mov ebp, esp
sub esp, 100
push ebx
.Lt_017C:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [CTX]
mov dword ptr [eax+100], ebx
inc dword ptr [CTX]
sub esp, 12
push 0
push 0
sub esp, 8
push dword ptr [ebp+8]
call SYMBGETDBGNAME
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 3
push offset Lt_017F
push -1
sub esp, 4
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+100]
call fb_IntToStr
add esp, 16
push eax
push 3
push offset Lt_017E
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETENUMFIRSTELM
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0183:
cmp dword ptr [ebp-4], 0
je .Lt_0184
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_0096
push -1
sub esp, 4
push -1
sub esp, 8
mov eax, dword ptr [ebp-4]
push dword ptr [eax+60]
push dword ptr [eax+56]
call fb_LongintToStr
add esp, 16
push eax
push -1
sub esp, 4
push 2
push offset Lt_00A4
push 0
mov eax, dword ptr [ebp-4]
push dword ptr [eax+16]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-4]
call SYMBGETENUMNEXTELM
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0183
.Lt_0184:
sub esp, 12
push 0
push 2
push offset Lt_0145
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push offset Lt_0006
push 0
push 0
push dword ptr [ebp-16]
push 128
call HEMITSTABS
add esp, 32
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_017D:
pop ebx
mov esp, ebp
pop ebp
ret
.size HDECLENUM, .-HDECLENUM

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0006:	.ascii	"0\0"
.balign 4
Lt_0019:	.ascii	"/\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
.balign 4
	.lcomm	Lt_007A,36
.balign 4
	.lcomm	CTX,296

.section .data
.balign 4
REMAPTB:
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
STABSTB:
.int Lt_007C
.int Lt_007D
.int Lt_007E
.int Lt_007F
.int Lt_0080
.int Lt_0081
.int Lt_0082
.int Lt_0083
.int Lt_0084
.int Lt_0085
.int Lt_0086
.int Lt_0087
.int Lt_0088
.int Lt_0089
.int Lt_008A
.int Lt_008B
.int Lt_008C

.section .rodata
.balign 4
Lt_007C:	.ascii	"integer:t1=-1\0"
.balign 4
Lt_007D:	.ascii	"void:t7=-11\0"
.balign 4
Lt_007E:	.ascii	"byte:t2=-6\0"
.balign 4
Lt_007F:	.ascii	"ubyte:t3=-5\0"
.balign 4
Lt_0080:	.ascii	"char:t4=-2\0"
.balign 4
Lt_0081:	.ascii	"short:t5=-3\0"
.balign 4
Lt_0082:	.ascii	"ushort:t6=-7\0"
.balign 4
Lt_0083:	.ascii	"uinteger:t8=-8\0"
.balign 4
Lt_0084:	.ascii	"longint:t9=-31\0"
.balign 4
Lt_0085:	.ascii	"ulongint:t10=-32\0"
.balign 4
Lt_0086:	.ascii	"single:t11=-12\0"
.balign 4
Lt_0087:	.ascii	"double:t12=-13\0"
.balign 4
Lt_0088:	.ascii	"string:t13=s12data:15,0,32;len:1,32,32;size:1,64,32;;\0"
.balign 4
Lt_0089:	.ascii	"fixstr:t14=-2\0"
.balign 4
Lt_008A:	.ascii	"pchar:t15=*4;\0"
.balign 4
Lt_008B:	.ascii	"boolean:t16=@s8;-16\0"
.balign 4
Lt_008C:	.ascii	"va_list:t17=-11\0"
.balign 4
Lt_0093:	.ascii	"\"\0"
.balign 4
Lt_0094:	.ascii	".stabs \"\0"
.balign 4
Lt_0096:	.ascii	",\0"
.balign 4
Lt_0097:	.ascii	"\",\0"
.balign 4
Lt_009B:	.ascii	".stabn \0"
.balign 4
Lt_00A1:	.ascii	".stabd \0"
.balign 4
Lt_00A4:	.ascii	":\0"
.balign 4
Lt_00AA:	.ascii	".file \"\0"
.balign 4
Lt_00D3:	.ascii	"-\0"
.balign 4
Lt_0106:	.ascii	":F\0"
.balign 4
Lt_0107:	.ascii	":f\0"
.balign 4
Lt_0133:	.ascii	"=*\0"
.balign 4
Lt_0140:	.ascii	"=\0"
.balign 4
Lt_0143:	.ascii	"ar1;\0"
.balign 4
Lt_0144:	.ascii	"0;\0"
.balign 4
Lt_0145:	.ascii	";\0"
.balign 4
Lt_0161:	.ascii	"=f\0"
.balign 4
Lt_0167:	.ascii	":Tt\0"
.balign 4
Lt_0168:	.ascii	"=s\0"
.balign 4
Lt_017E:	.ascii	":T\0"
.balign 4
Lt_017F:	.ascii	"=e\0"
.balign 4
Lt_0197:	.ascii	":G\0"
.balign 4
Lt_0199:	.ascii	":S\0"
.balign 4
Lt_01A6:	.ascii	":V\0"
.balign 4
Lt_01AE:	.ascii	"p\0"
.balign 4
Lt_01AF:	.ascii	"v\0"

.section .ctors, "aw", @progbits
.int fb_ctor__edbg_stab
