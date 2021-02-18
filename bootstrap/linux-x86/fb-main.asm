	.intel_syntax noprefix

.section .text
.balign 16

.globl FBMAINBEGIN
FBMAINBEGIN:
.type FBMAINBEGIN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0075:
cmp dword ptr [ENV+828], 0
je .Lt_0078
call HMAINBEGIN
jmp .Lt_0077
.Lt_0078:
call HMODLEVELBEGIN
.Lt_0077:
mov eax, dword ptr [ENV+96]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ENV+828]
je .Lt_007A
cmp dword ptr [ENV+108], 0
jne .Lt_007C
call HBUILDDLLMAINWIN32
jmp .Lt_007B
.Lt_007C:
call HBUILDDLLMAINCTOR
.Lt_007B:
.Lt_007A:
.Lt_0079:
.Lt_0076:
mov esp, ebp
pop ebp
ret
.size FBMAINBEGIN, .-FBMAINBEGIN
.balign 16

.globl FBMAINEND
FBMAINEND:
.type FBMAINEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_007E:
mov dword ptr [ebp-4], 0
cmp dword ptr [ENV+828], 0
je .Lt_0081
cmp dword ptr [AST+124], 0
je .Lt_0083
sub esp, 8
push dword ptr [ENV+884]
push 0
call RTLDATARESTORE
add esp, 16
.Lt_0083:
.Lt_0082:
mov eax, dword ptr [ENV+96]
cmp eax, 2
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0081:
.Lt_0080:
sub esp, 12
push dword ptr [ebp-4]
call ASTPROCEND
add esp, 16
.Lt_007F:
mov esp, ebp
pop ebp
ret
.size FBMAINEND, .-FBMAINEND
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
HCALLMAIN:
.type HCALLMAIN, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_005E:
sub esp, 8
push 0
push dword ptr [ENV+880]
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-4], eax
push -1
push -2147483648
sub esp, 8
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
push -1
push -2147483648
sub esp, 8
push 0
push 32
push 0
push 0
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
sub esp, 4
push 0
push 0
push dword ptr [ebp-4]
call ASTSETTYPE
add esp, 16
sub esp, 12
push dword ptr [ebp-4]
call ASTADD
add esp, 16
.Lt_005F:
mov esp, ebp
pop ebp
ret
.size HCALLMAIN, .-HCALLMAIN
.balign 16
HBUILDDLLMAINWIN32:
.type HBUILDDLLMAINWIN32, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0060:
sub esp, 12
push 0
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-4], eax
push 0
push 0
push 1
push 0
push 0
push 32
push offset Lt_0062
push dword ptr [ebp-4]
call SYMBADDPROCPARAM
add esp, 32
push 0
push 0
push 1
push 0
push 0
push 9
push offset Lt_0063
push dword ptr [ebp-4]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-12], eax
push 0
push 0
push 1
push 0
push 0
push 32
push offset Lt_0064
push dword ptr [ebp-4]
call SYMBADDPROCPARAM
add esp, 32
sub esp, 12
push 4
push dword ptr [ENV+256]
push 0
push 32
push 0
push 8
push offset Lt_0065
push 0
push dword ptr [ebp-4]
call SYMBADDPROC
add esp, 48
mov dword ptr [ebp-4], eax
sub esp, 8
push 0
push dword ptr [ebp-4]
call ASTPROCBEGIN
add esp, 16
sub esp, 12
sub esp, 8
push 0
sub esp, 8
push 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
push 0
push 1
call ASTNEWCONSTI
add esp, 24
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call SYMBGETPROCRESULT
add esp, 4
push eax
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 20
push eax
call ASTADD
add esp, 16
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
sub esp, 8
push 4
push 0
call SYMBADDLABEL
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push dword ptr [ebp-8]
sub esp, 12
push 0
push 9
push 0
push 1
call ASTNEWCONSTI
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
push 48
call ASTNEWBOP
add esp, 20
push eax
call ASTADD
add esp, 16
call HCALLMAIN
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 20
push eax
call ASTADD
add esp, 16
sub esp, 12
push 0
call ASTPROCEND
add esp, 16
.Lt_0061:
pop ebx
mov esp, ebp
pop ebp
ret
.size HBUILDDLLMAINWIN32, .-HBUILDDLLMAINWIN32
.balign 16
HBUILDDLLMAINCTOR:
.type HBUILDDLLMAINCTOR, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0066:
sub esp, 12
push 4
push 3
push 0
push 64
push 0
push 0
push offset Lt_0068
push 0
push 0
call SYMBPREADDPROC
add esp, 4
push eax
call SYMBADDPROC
add esp, 48
mov dword ptr [ebp-4], eax
sub esp, 12
push dword ptr [ebp-4]
call SYMBADDGLOBALCTOR
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp-4]
call ASTPROCBEGIN
add esp, 16
call HCALLMAIN
sub esp, 12
push 0
call ASTPROCEND
add esp, 16
.Lt_0067:
mov esp, ebp
pop ebp
ret
.size HBUILDDLLMAINCTOR, .-HBUILDDLLMAINCTOR
.balign 16
HMAINBEGIN:
.type HMAINBEGIN, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_0069:
sub esp, 12
push 0
call SYMBPREADDPROC
add esp, 16
mov dword ptr [ebp-4], eax
push 0
push 0
push 1
push 0
push 0
push 11
push offset Lt_006B
push dword ptr [ebp-4]
call SYMBADDPROCPARAM
add esp, 32
push 0
push 0
push 1
push 0
push 0
push 68
push offset Lt_006C
push dword ptr [ebp-4]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 32
sub esp, 12
push 0
push -1
sub esp, 12
call FBGETENTRYPOINT
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
cmp dword ptr [ENV+96], 2
jne .Lt_006E
mov dword ptr [ebp-12], 64
cmp dword ptr [ENV+104], 1
jne .Lt_0070
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_0070:
.Lt_006F:
jmp .Lt_006D
.Lt_006E:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 524288
.Lt_006D:
sub esp, 12
push 4
push 3
push 0
push dword ptr [ebp-12]
push 0
push 11
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-4]
call SYMBADDPROC
add esp, 48
mov dword ptr [ENV+880], eax
mov eax, dword ptr [ENV+880]
or dword ptr [eax+12], 4096
sub esp, 8
push -1
push dword ptr [ENV+880]
call ASTPROCBEGIN
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_006A:
mov esp, ebp
pop ebp
ret
.size HMAINBEGIN, .-HMAINBEGIN
.balign 16
HMODLEVELBEGIN:
.type HMODLEVELBEGIN, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_0071:
sub esp, 12
push 4
push 3
push 0
push 64
push 0
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 8
push 0
push -1
sub esp, 12
call FBGETMODULEENTRY
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 28
push dword ptr [ebp-12]
push offset Lt_0073
push 0
call SYMBPREADDPROC
add esp, 4
push eax
call SYMBADDPROC
add esp, 48
mov dword ptr [ENV+880], eax
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push dword ptr [ENV+880]
call SYMBADDGLOBALCTOR
add esp, 16
mov eax, dword ptr [ENV+880]
or dword ptr [eax+12], 2
mov eax, dword ptr [ENV+880]
or dword ptr [eax+12], 8192
sub esp, 8
push -1
push dword ptr [ENV+880]
call ASTPROCBEGIN
add esp, 16
.Lt_0072:
mov esp, ebp
pop ebp
ret
.size HMODLEVELBEGIN, .-HMODLEVELBEGIN

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_0062:	.ascii	"__FB_DLLINSTANCE__\0"
.balign 4
Lt_0063:	.ascii	"__FB_DLLREASON__\0"
.balign 4
Lt_0064:	.ascii	"__FB_DLLRESERVED__\0"
.balign 4
Lt_0065:	.ascii	"DllMain\0"
.balign 4
Lt_0068:	.ascii	"__fb_DllMain_ctor\0"
.balign 4
Lt_006B:	.ascii	"__FB_ARGC__\0"
.balign 4
Lt_006C:	.ascii	"__FB_ARGV__\0"
.balign 4
Lt_0073:	.ascii	"{modlevel}\0"
