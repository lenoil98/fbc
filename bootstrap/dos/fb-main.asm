	.intel_syntax noprefix

.section .text
.balign 16

.globl _FBMAINBEGIN
_FBMAINBEGIN:
.Lt_0076:
cmp dword ptr [_ENV+828], 0
je .Lt_0079
call _HMAINBEGIN
jmp .Lt_0078
.Lt_0079:
call _HMODLEVELBEGIN
.Lt_0078:
mov eax, dword ptr [_ENV+96]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [_ENV+828]
je .Lt_007B
cmp dword ptr [_ENV+108], 0
jne .Lt_007D
call _HBUILDDLLMAINWIN32
jmp .Lt_007C
.Lt_007D:
call _HBUILDDLLMAINCTOR
.Lt_007C:
.Lt_007B:
.Lt_007A:
.Lt_0077:
ret
.balign 16

.globl _FBMAINEND
_FBMAINEND:
push ebp
mov ebp, esp
sub esp, 4
.Lt_007F:
mov dword ptr [ebp-4], 0
cmp dword ptr [_ENV+828], 0
je .Lt_0082
cmp dword ptr [_AST+124], 0
je .Lt_0084
push dword ptr [_ENV+884]
push 0
call _RTLDATARESTORE
add esp, 8
.Lt_0084:
.Lt_0083:
mov eax, dword ptr [_ENV+96]
cmp eax, 2
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_0082:
.Lt_0081:
push dword ptr [ebp-4]
call _ASTPROCEND
add esp, 4
.Lt_0080:
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
_HCALLMAIN:
push ebp
mov ebp, esp
sub esp, 4
.Lt_005F:
push 0
push dword ptr [_ENV+880]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
push -1
push -2147483648
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
call _ASTNEWARG
add esp, 16
push -1
push -2147483648
push 0
push 32
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
call _ASTNEWARG
add esp, 16
push 0
push 0
push dword ptr [ebp-4]
call _ASTSETTYPE
add esp, 12
push dword ptr [ebp-4]
call _ASTADD
add esp, 4
.Lt_0060:
mov esp, ebp
pop ebp
ret
.balign 16
_HBUILDDLLMAINWIN32:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0061:
push 0
call _SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-4], eax
push 0
push 0
push 1
push 0
push 0
push 32
push offset _Lt_0063
push dword ptr [ebp-4]
call _SYMBADDPROCPARAM
add esp, 32
push 0
push 0
push 1
push 0
push 0
push 9
push offset _Lt_0064
push dword ptr [ebp-4]
call _SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-12], eax
push 0
push 0
push 1
push 0
push 0
push 32
push offset _Lt_0065
push dword ptr [ebp-4]
call _SYMBADDPROCPARAM
add esp, 32
push 4
push dword ptr [_ENV+256]
push 0
push 32
push 0
push 8
push offset _Lt_0066
push 0
push dword ptr [ebp-4]
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
call _ASTPROCBEGIN
add esp, 8
push 0
push 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
push 0
push 1
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-4]
call _SYMBGETPROCRESULT
add esp, 4
push eax
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 9
push 0
push 1
call _ASTNEWCONSTI
add esp, 16
push eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR
add esp, 20
push eax
push 48
call _ASTNEWBOP
add esp, 20
push eax
call _ASTADD
add esp, 4
call _HCALLMAIN
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
push 0
call _ASTPROCEND
add esp, 4
.Lt_0062:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HBUILDDLLMAINCTOR:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0067:
push 4
push 3
push 0
push 64
push 0
push 0
push offset _Lt_0069
push 0
push 0
call _SYMBPREADDPROC
add esp, 4
push eax
call _SYMBADDPROC
add esp, 36
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
call _SYMBADDGLOBALCTOR
add esp, 4
push 0
push dword ptr [ebp-4]
call _ASTPROCBEGIN
add esp, 8
call _HCALLMAIN
push 0
call _ASTPROCEND
add esp, 4
.Lt_0068:
mov esp, ebp
pop ebp
ret
.balign 16
_HMAINBEGIN:
push ebp
mov ebp, esp
sub esp, 24
.Lt_006A:
push 0
call _SYMBPREADDPROC
add esp, 4
mov dword ptr [ebp-4], eax
push 0
push 0
push 1
push 0
push 0
push 11
push offset _Lt_006C
push dword ptr [ebp-4]
call _SYMBADDPROCPARAM
add esp, 32
push 0
push 0
push 1
push 0
push 0
push 68
push offset _Lt_006D
push dword ptr [ebp-4]
call _SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 32
push 0
push -1
call _FBGETENTRYPOINT
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
cmp dword ptr [_ENV+96], 2
jne .Lt_006F
mov dword ptr [ebp-12], 64
cmp dword ptr [_ENV+104], 1
jne .Lt_0071
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0071:
.Lt_0070:
jmp .Lt_006E
.Lt_006F:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 524288
.Lt_006E:
push 4
push 3
push 0
push dword ptr [ebp-12]
push 0
push 11
push dword ptr [ebp-24]
push 0
push dword ptr [ebp-4]
call _SYMBADDPROC
add esp, 36
mov dword ptr [_ENV+880], eax
mov eax, dword ptr [_ENV+880]
or dword ptr [eax+12], 4096
push -1
push dword ptr [_ENV+880]
call _ASTPROCBEGIN
add esp, 8
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_006B:
mov esp, ebp
pop ebp
ret
.balign 16
_HMODLEVELBEGIN:
push ebp
mov ebp, esp
sub esp, 12
.Lt_0072:
push 4
push 3
push 0
push 64
push 0
push 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
call _FBGETMODULEENTRY
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-12]
push offset _Lt_0074
push 0
call _SYMBPREADDPROC
add esp, 4
push eax
call _SYMBADDPROC
add esp, 36
mov dword ptr [_ENV+880], eax
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [_ENV+880]
call _SYMBADDGLOBALCTOR
add esp, 4
mov eax, dword ptr [_ENV+880]
or dword ptr [eax+12], 2
mov eax, dword ptr [_ENV+880]
or dword ptr [eax+12], 8192
push -1
push dword ptr [_ENV+880]
call _ASTPROCBEGIN
add esp, 8
.Lt_0073:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_0063:	.ascii	"__FB_DLLINSTANCE__\0"
.balign 4
_Lt_0064:	.ascii	"__FB_DLLREASON__\0"
.balign 4
_Lt_0065:	.ascii	"__FB_DLLRESERVED__\0"
.balign 4
_Lt_0066:	.ascii	"DllMain\0"
.balign 4
_Lt_0069:	.ascii	"__fb_DllMain_ctor\0"
.balign 4
_Lt_006C:	.ascii	"__FB_ARGC__\0"
.balign 4
_Lt_006D:	.ascii	"__FB_ARGV__\0"
.balign 4
_Lt_0074:	.ascii	"{modlevel}\0"
