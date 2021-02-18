	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLERRORMODINIT
_RTLERRORMODINIT:
.Lt_007D:
push offset _FUNCDATA
call _RTLADDINTRINSICPROCS
add esp, 4
.Lt_007E:
ret
.balign 16

.globl _RTLERRORMODEND
_RTLERRORMODEND:
.Lt_007F:
.Lt_0080:
ret
.balign 16

.globl _RTLERRORCHECK
_RTLERRORCHECK:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0087:
mov dword ptr [ebp-16], 0
cmp dword ptr [_ENV+160], 0
je .Lt_008A
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push -1
push dword ptr [ebp-12]
call _ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_0089
.Lt_008A:
mov dword ptr [ebp-12], 0
.Lt_0089:
cmp dword ptr [_ENV+156], 0
je .Lt_008C
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+8]
push 45
call _ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HERRORTHROW
add esp, 8
push eax
push 0
push 104
call _ASTNEWBRANCH
add esp, 12
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
push 0
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-16]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_008B
.Lt_008C:
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call _ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
.Lt_008B:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_0088:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLERRORTHROW
_RTLERRORTHROW:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_008D:
push 0
push 292
push offset _Lt_006A
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
push -1
push dword ptr [ebp-16]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0090
jmp .Lt_008E
.Lt_0090:
.Lt_008F:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0092
jmp .Lt_008E
.Lt_0092:
.Lt_0091:
push -1
push -2147483648
push dword ptr [ebp+16]
call _ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp-4]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0094
jmp .Lt_008E
.Lt_0094:
.Lt_0093:
cmp dword ptr [_ENV+160], 0
je .Lt_0096
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0095
.Lt_0096:
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0095:
push -1
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0098
jmp .Lt_008E
.Lt_0098:
.Lt_0097:
cmp dword ptr [_ENV+160], 0
je .Lt_009A
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0099
.Lt_009A:
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0099:
push -1
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_009C
jmp .Lt_008E
.Lt_009C:
.Lt_009B:
push dword ptr [ebp-4]
push 0
push 104
call _ASTNEWBRANCH
add esp, 12
push eax
call _ASTADD
add esp, 4
push -1
push dword ptr [ebp-12]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
.Lt_008E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLERRORSETHANDLER
_RTLERRORSETHANDLER:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_009D:
push 0
push 293
push offset _Lt_006B
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00A0
jmp .Lt_009E
.Lt_00A0:
.Lt_009F:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
je .Lt_00A2
mov eax, dword ptr [_ENV+880]
cmp dword ptr [_PARSER+104], eax
je .Lt_00A4
mov eax, dword ptr [_PARSER+104]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 0
jne .Lt_00A7
push 0
push 32
call _SYMBADDTEMPVAR
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx], eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTADD
add esp, 4
.Lt_00A7:
.Lt_00A6:
.Lt_00A4:
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
cmp dword ptr [ebp-8], 0
jne .Lt_00A9
push dword ptr [ebp-4]
call _ASTADD
add esp, 4
.Lt_00A9:
.Lt_00A8:
.Lt_009E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLERRORGETNUM
_RTLERRORGETNUM:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00AA:
push 0
push 294
push offset _Lt_006C
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_00AB:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLERRORSETNUM
_RTLERRORSETNUM:
push ebp
mov ebp, esp
sub esp, 4
.Lt_00AC:
push 0
push 295
push offset _Lt_006D
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00AF
jmp .Lt_00AD
.Lt_00AF:
.Lt_00AE:
push dword ptr [ebp-4]
call _ASTADD
add esp, 4
.Lt_00AD:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLERRORRESUME
_RTLERRORRESUME:
push ebp
mov ebp, esp
sub esp, 8
.Lt_00B0:
cmp dword ptr [ebp+8], 0
jne .Lt_00B3
push 296
push offset _Lt_006E
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B2
.Lt_00B3:
push 297
push offset _Lt_006F
call _RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_00B2:
push 0
push dword ptr [ebp-8]
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
push 0
push 104
call _ASTNEWBRANCH
add esp, 12
push eax
call _ASTADD
add esp, 4
.Lt_00B1:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLERRORSETMODNAME
_RTLERRORSETMODNAME:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B4:
push 0
push 298
push offset _Lt_0076
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00B7
mov dword ptr [ebp-4], 0
jmp .Lt_00B5
.Lt_00B7:
.Lt_00B6:
cmp dword ptr [ebp+8], 0
je .Lt_00B9
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-16], eax
push 0
push 36
call _SYMBADDTEMPVAR
add esp, 8
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+4], eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-12], eax
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00B8
.Lt_00B9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00B8:
.Lt_00B5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _RTLERRORSETFUNCNAME
_RTLERRORSETFUNCNAME:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BB:
push 0
push 299
push offset _Lt_0077
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00BE
mov dword ptr [ebp-4], 0
jmp .Lt_00BC
.Lt_00BE:
.Lt_00BD:
cmp dword ptr [ebp+8], 0
je .Lt_00C0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-16], eax
push 0
push 36
call _SYMBADDTEMPVAR
add esp, 8
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+8]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-12], eax
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00BF
.Lt_00C0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00BF:
.Lt_00BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__rtlzerror:
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
_HERRORTHROW:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0081:
push 0
push 291
push offset _Lt_0069
call _RTLPROCLOOKUP
add esp, 8
push eax
call _ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [_LEX+213248]
mov ecx, dword ptr [eax+4276]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call _ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
push -1
push -2147483648
lea eax, [_ENV+280]
push eax
call _ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
cmp dword ptr [ebp+8], 0
je .Lt_0084
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_0083
.Lt_0084:
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0083:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
cmp dword ptr [_ENV+160], 0
je .Lt_0086
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_0085
.Lt_0086:
push 0
push 9
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0085:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call _ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0082:
mov eax, dword ptr [ebp-4]
pop ebx
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
_FUNCDATA:
.int _Lt_0069
.long 0
.int 32
.int 3
.long 0
.int 0
.int 4
.int 523
.int 1
.int 0
.skip 8,0
.int 1060
.int 1
.int 0
.skip 8,0
.int 1056
.int 1
.int 0
.skip 8,0
.int 1056
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_006A
.long 0
.int 32
.int 3
.long 0
.int 0
.int 5
.int 523
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 1060
.int 1
.int 0
.skip 8,0
.int 1056
.int 1
.int 0
.skip 8,0
.int 1056
.int 1
.int 0
.skip 8,0
.skip 220,0
.int _Lt_006B
.long 0
.int 32
.int -1
.long 0
.int 0
.int 1
.int 32
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_006C
.long 0
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int _Lt_006D
.long 0
.int 11
.int -1
.long 0
.int 0
.int 1
.int 523
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_006E
.long 0
.int 32
.int 3
.long 0
.int 0
.int 0
.skip 320,0
.int _Lt_006F
.long 0
.int 32
.int 3
.long 0
.int 0
.int 0
.skip 320,0
.int _Lt_0070
.int _Lt_0071
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int _Lt_0072
.int _Lt_0073
.int 36
.int -1
.long 0
.int 128
.int 0
.skip 320,0
.int _Lt_0074
.int _Lt_0075
.int 36
.int -1
.long 0
.int 128
.int 0
.skip 320,0
.int _Lt_0076
.long 0
.int 36
.int -1
.long 0
.int 0
.int 1
.int 1060
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0077
.long 0
.int 36
.int -1
.long 0
.int 0
.int 1
.int 1060
.int 1
.int 0
.skip 8,0
.skip 300,0
.int _Lt_0078
.long 0
.int 0
.int -1
.long 0
.int 1
.int 4
.int 1060
.int 1
.int 0
.skip 8,0
.int 520
.int 1
.int 0
.skip 8,0
.int 1060
.int 1
.int 0
.skip 8,0
.int 1060
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_0078
.int _Lt_0079
.int 0
.int -1
.long 0
.int 1
.int 4
.int 1060
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 1060
.int 1
.int 0
.skip 8,0
.int 1063
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_007A
.long 0
.int 0
.int -1
.long 0
.int 1
.int 4
.int 1060
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 1060
.int 1
.int 0
.skip 8,0
.int 1060
.int 1
.int 0
.skip 8,0
.skip 240,0
.int _Lt_007A
.int _Lt_007B
.int 0
.int -1
.long 0
.int 1
.int 4
.int 1060
.int 1
.int 0
.skip 8,0
.int 523
.int 1
.int 0
.skip 8,0
.int 1060
.int 1
.int 0
.skip 8,0
.int 1063
.int 1
.int 0
.skip 8,0
.skip 240,0
.long 0
.skip 344,0
.balign 4
_Lt_0069:	.ascii	"fb_ErrorThrowAt\0"
.balign 4
_Lt_006A:	.ascii	"fb_ErrorThrowEx\0"
.balign 4
_Lt_006B:	.ascii	"fb_ErrorSetHandler\0"
.balign 4
_Lt_006C:	.ascii	"fb_ErrorGetNum\0"
.balign 4
_Lt_006D:	.ascii	"fb_ErrorSetNum\0"
.balign 4
_Lt_006E:	.ascii	"fb_ErrorResume\0"
.balign 4
_Lt_006F:	.ascii	"fb_ErrorResumeNext\0"
.balign 4
_Lt_0070:	.ascii	"erl\0"
.balign 4
_Lt_0071:	.ascii	"fb_ErrorGetLineNum\0"
.balign 4
_Lt_0072:	.ascii	"erfn\0"
.balign 4
_Lt_0073:	.ascii	"fb_ErrorGetFuncName\0"
.balign 4
_Lt_0074:	.ascii	"ermn\0"
.balign 4
_Lt_0075:	.ascii	"fb_ErrorGetModName\0"
.balign 4
_Lt_0076:	.ascii	"fb_ErrorSetModName\0"
.balign 4
_Lt_0077:	.ascii	"fb_ErrorSetFuncName\0"
.balign 4
_Lt_0078:	.ascii	"fb_Assert\0"
.balign 4
_Lt_0079:	.ascii	"fb_AssertW\0"
.balign 4
_Lt_007A:	.ascii	"fb_AssertWarn\0"
.balign 4
_Lt_007B:	.ascii	"fb_AssertWarnW\0"

.section .ctors
.int _fb_ctor__rtlzerror
