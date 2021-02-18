	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBADDCONST@20
_SYMBADDCONST@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_005E:
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 2
push 0
push 0
push 0
push 32
call _SYMBNEWSYMBOL@44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0061
jmp .Lt_005F
.Lt_0061:
.Lt_0060:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+60], ecx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _SYMBREUSEORADDCONST@20
_SYMBREUSEORADDCONST@20:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0062:
mov dword ptr [ebp-4], 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBADDCONST@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0065
push 0
push 0
push 2
push dword ptr [ebp+8]
push dword ptr [_SYMB+98536]
call _SYMBLOOKUPBYNAMEANDCLASS@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0067
jmp .Lt_0063
.Lt_0067:
.Lt_0066:
mov dword ptr [ebp-12], 0
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
je .Lt_0069
mov eax, dword ptr [ebp+12]
and eax, 511
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 17
je .Lt_006D
.Lt_006E:
cmp dword ptr [ebp-16], 4
je .Lt_006D
.Lt_006F:
cmp dword ptr [ebp-16], 7
jne .Lt_006C
.Lt_006D:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
cmp ecx, dword ptr [ebx+56]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .Lt_006A
.Lt_006C:
cmp dword ptr [ebp-16], 15
je .Lt_0071
.Lt_0072:
cmp dword ptr [ebp-16], 16
jne .Lt_0070
.Lt_0071:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [eax]
mov ecx, dword ptr [eax+4]
cmp ecx, dword ptr [ebx+60]
mov eax, -1
jne .Lt_007C
cmp esi, dword ptr [ebx+56]
je .Lt_007B
.Lt_007C:
xor eax, eax
.Lt_007B:
mov dword ptr [ebp-12], eax
jmp .Lt_006A
.Lt_0070:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov esi, dword ptr [eax+4]
cmp esi, dword ptr [ebx+60]
mov eax, -1
jne .Lt_007E
cmp ecx, dword ptr [ebx+56]
je .Lt_007D
.Lt_007E:
xor eax, eax
.Lt_007D:
mov dword ptr [ebp-12], eax
.Lt_0073:
.Lt_006A:
.Lt_0069:
.Lt_0068:
cmp dword ptr [ebp-12], 0
jne .Lt_0075
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 1048576
test ebx, ebx
je .Lt_0077
push 0
push 1
push 0
push 39
call _ERRREPORTWARN@16
push dword ptr [ebp-8]
call _SYMBDELFROMHASH@4
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBADDCONST@20
mov dword ptr [ebp-8], eax
jmp .Lt_0076
.Lt_0077:
mov dword ptr [ebp-8], 0
.Lt_0076:
jmp .Lt_0074
.Lt_0075:
mov eax, dword ptr [ebp-8]
and dword ptr [eax+12], -1048577
.Lt_0074:
.Lt_0065:
.Lt_0064:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0063:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16

.globl _SYMBALLOCFLOATCONST@12
_SYMBALLOCFLOATCONST@12:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0086:
push dword ptr [ebp+16]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFLOATTOHEX@12
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HALLOCINTORFLOATCONST@8
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_0087:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBALLOCINTCONST@12
_SYMBALLOCINTCONST@12:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_0089:
push 0
push 3
push offset _Lt_008B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_008C
mov dword ptr [ebp-20], 24
jmp .Lt_0090
.Lt_008C:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_0090:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+4], 8
jne .Lt_008F
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_HEXEx_l@12
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_008E
.Lt_008F:
push 0
push -1
push 8
mov eax, dword ptr [ebp+8]
push eax
call _fb_HEXEx_i@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_008E:
push dword ptr [ebp+16]
lea eax, [ebp-16]
push eax
call _HALLOCINTORFLOATCONST@8
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_008A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _SYMBALLOCSTRCONST@8
_SYMBALLOCSTRCONST@8:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_0091:
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp+12], 0
jge .Lt_0095
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+12], eax
.Lt_0095:
.Lt_0094:
cmp dword ptr [ebp-12], 122
jg .Lt_0097
push 0
push 7
push offset _Lt_0098
push 134
push offset _Lt_009C
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
push 134
push offset _Lt_009C
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push 134
push offset _Lt_009C
call _fb_StrAssign@20
jmp .Lt_0096
.Lt_0097:
push 0
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push 134
push offset _Lt_009C
call _fb_StrAssign@20
.Lt_0096:
push 0
push -1
push 1
push offset _Lt_009C
lea eax, [_SYMB+98352]
push eax
call _SYMBLOOKUPBYNAMEANDCLASS@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_009B
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0092
.Lt_009B:
.Lt_009A:
push 0
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push 134
push offset _Lt_009D
call _fb_StrAssign@20
mov eax, dword ptr [ebp+12]
inc eax
mov dword ptr [ebp-16], eax
push 137
push 3073
push offset _Lt_009E
push 0
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 4
push offset _Lt_009D
push offset _Lt_009C
call _SYMBADDVAR@40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
inc eax
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
push 0
push 0
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _fb_StrAssign@20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0092:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_009C,134
.balign 4
	.lcomm	_Lt_009D,134
.balign 4
	.lcomm	_Lt_009F,16

.section .data
.balign 4
_Lt_009E:
.int _Lt_009F
.int _Lt_009F
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBALLOCWSTRCONST@8
_SYMBALLOCWSTRCONST@8:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A0:
mov dword ptr [ebp-4], 0
push dword ptr [ebp+8]
call _fb_WstrLen@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp+12], 0
jge .Lt_00A4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+12], eax
.Lt_00A4:
.Lt_00A3:
mov eax, dword ptr [ebp-12]
sal eax, 3
cmp eax, 122
jg .Lt_00A6
push 0
push 7
push offset _Lt_00A7
push 134
push offset _Lt_00AB
call _fb_StrAssign@20
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HESCAPEW@4
push eax
push 134
push offset _Lt_00AB
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push 134
push offset _Lt_00AB
call _fb_StrAssign@20
jmp .Lt_00A5
.Lt_00A6:
push 0
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push 134
push offset _Lt_00AB
call _fb_StrAssign@20
.Lt_00A5:
push 0
push -1
push 1
push offset _Lt_00AB
lea eax, [_SYMB+98352]
push eax
call _SYMBLOOKUPBYNAMEANDCLASS@20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00AA
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00A1
.Lt_00AA:
.Lt_00A9:
push 0
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push 134
push offset _Lt_00AC
call _fb_StrAssign@20
mov eax, dword ptr [ebp+12]
inc eax
imul eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-16], eax
push 137
push 3073
push offset _Lt_00AD
push 0
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 7
push offset _Lt_00AC
push offset _Lt_00AB
call _SYMBADDVAR@40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
sal eax, 1
add eax, 2
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call _fb_WstrAssign@12
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_00AB,134
.balign 4
	.lcomm	_Lt_00AC,134
.balign 4
	.lcomm	_Lt_00AE,16

.section .data
.balign 4
_Lt_00AD:
.int _Lt_00AE
.int _Lt_00AE
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl _SYMBDELCONST@4
_SYMBDELCONST@4:
push ebp
mov ebp, esp
.Lt_00AF:
cmp dword ptr [ebp+8], 0
jne .Lt_00B2
jmp .Lt_00B0
.Lt_00B2:
.Lt_00B1:
push dword ptr [ebp+8]
call _SYMBFREESYMBOL@4
.Lt_00B0:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBGETCONSTVALUEASSTR@4
_SYMBGETCONSTVALUEASSTR@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00B3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 17
je .Lt_00B8
.Lt_00B9:
cmp dword ptr [ebp-16], 18
je .Lt_00B8
.Lt_00BA:
cmp dword ptr [ebp-16], 4
jne .Lt_00B7
.Lt_00B8:
push 0
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
push dword ptr [eax+56]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_00B5
.Lt_00B7:
cmp dword ptr [ebp-16], 16
jne .Lt_00BB
.Lt_00BC:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [eax+56]
call _fb_DoubleToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_00B5
.Lt_00BB:
cmp dword ptr [ebp-16], 15
jne .Lt_00BD
.Lt_00BE:
push 0
push -1
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+56]
sub esp,4
fstp dword ptr [esp]
call _fb_FloatToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_00B5
.Lt_00BD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 480
je .Lt_00C0
mov dword ptr [ebp-20], 24
jmp .Lt_00C4
.Lt_00C0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_00C4:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_00C3
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [eax+56]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_00C2
.Lt_00C3:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [eax+56]
call _fb_ULongintToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_00C2:
.Lt_00BF:
.Lt_00B5:
.Lt_00B4:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _SYMBCLONECONST@4
_SYMBCLONECONST@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C5:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
push ebx
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
push eax
push 0
call _SYMBADDCONST@20
mov dword ptr [ebp-4], eax
.Lt_00C6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
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
_HALLOCINTORFLOATCONST@8:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.Lt_007F:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
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
push 0
push 7
push offset _Lt_0082
push 134
push offset _Lt_00C7
call _fb_StrAssign@20
push 0
push -1
push -1
push dword ptr [ebp+8]
push 134
push offset _Lt_00C7
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push 134
push offset _Lt_00C7
call _fb_StrAssign@20
push 0
push -1
push 1
push offset _Lt_00C7
lea eax, [_SYMB+98352]
push eax
call _SYMBLOOKUPBYNAMEANDCLASS@20
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
je .Lt_0085
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-4], eax
jmp .Lt_0080
.Lt_0085:
.Lt_0084:
push 137
push 3073
lea eax, [ebp-56]
push eax
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push 0
call _SYMBUNIQUEID@4
push eax
push offset _Lt_00C7
call _SYMBADDVAR@40
mov dword ptr [ebp-72], eax
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
inc eax
push eax
call _XALLOCATE@4
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebx+56], eax
push 0
push -1
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-72]
push dword ptr [eax+56]
call _fb_StrAssign@20
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-4], eax
.Lt_0080:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_00C7,134
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_0082:	.ascii	"{fbnc}\0"
.balign 4
_Lt_008B:	.ascii	"0x\0"
.balign 4
_Lt_0098:	.ascii	"{fbsc}\0"
.balign 4
_Lt_00A7:	.ascii	"{fbwc}\0"
