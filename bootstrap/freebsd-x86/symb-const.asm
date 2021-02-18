	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBADDCONST
SYMBADDCONST:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_005D:
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
call SYMBNEWSYMBOL
add esp, 44
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0060
jmp .Lt_005E
.Lt_0060:
.Lt_005F:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+20]
mov ecx, dword ptr [ebx]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+60], ecx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBREUSEORADDCONST
SYMBREUSEORADDCONST:
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0061:
mov dword ptr [ebp-4], 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBADDCONST
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0064
push 0
push 0
push 2
push dword ptr [ebp+8]
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0066
jmp .Lt_0062
.Lt_0066:
.Lt_0065:
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
je .Lt_0068
mov eax, dword ptr [ebp+12]
and eax, 511
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 17
je .Lt_006C
.Lt_006D:
cmp dword ptr [ebp-16], 4
je .Lt_006C
.Lt_006E:
cmp dword ptr [ebp-16], 7
jne .Lt_006B
.Lt_006C:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
cmp ecx, dword ptr [ebx+56]
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-12], eax
jmp .Lt_0069
.Lt_006B:
cmp dword ptr [ebp-16], 15
je .Lt_0070
.Lt_0071:
cmp dword ptr [ebp-16], 16
jne .Lt_006F
.Lt_0070:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp-8]
mov esi, dword ptr [eax]
mov ecx, dword ptr [eax+4]
cmp ecx, dword ptr [ebx+60]
mov eax, -1
jne .Lt_007B
cmp esi, dword ptr [ebx+56]
je .Lt_007A
.Lt_007B:
xor eax, eax
.Lt_007A:
mov dword ptr [ebp-12], eax
jmp .Lt_0069
.Lt_006F:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [eax]
mov esi, dword ptr [eax+4]
cmp esi, dword ptr [ebx+60]
mov eax, -1
jne .Lt_007D
cmp ecx, dword ptr [ebx+56]
je .Lt_007C
.Lt_007D:
xor eax, eax
.Lt_007C:
mov dword ptr [ebp-12], eax
.Lt_0072:
.Lt_0069:
.Lt_0068:
.Lt_0067:
cmp dword ptr [ebp-12], 0
jne .Lt_0074
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 1048576
test ebx, ebx
je .Lt_0076
push 0
push 1
push 0
push 39
call ERRREPORTWARN
add esp, 16
push dword ptr [ebp-8]
call SYMBDELFROMHASH
add esp, 4
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBADDCONST
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_0075
.Lt_0076:
mov dword ptr [ebp-8], 0
.Lt_0075:
jmp .Lt_0073
.Lt_0074:
mov eax, dword ptr [ebp-8]
and dword ptr [eax+12], -1048577
.Lt_0073:
.Lt_0064:
.Lt_0063:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0062:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBALLOCFLOATCONST
SYMBALLOCFLOATCONST:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0085:
push dword ptr [ebp+16]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFLOATTOHEX
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HALLOCINTORFLOATCONST
add esp, 8
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.Lt_0086:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBALLOCINTCONST
SYMBALLOCINTCONST:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_0088:
push 0
push 3
push offset Lt_008A
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 20
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_008B
mov dword ptr [ebp-20], 24
jmp .Lt_008F
.Lt_008B:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_008F:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+4], 8
jne .Lt_008E
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .Lt_008D
.Lt_008E:
push 0
push -1
push 8
mov eax, dword ptr [ebp+8]
push eax
call fb_HEXEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 20
.Lt_008D:
push dword ptr [ebp+16]
lea eax, [ebp-16]
push eax
call HALLOCINTORFLOATCONST
add esp, 8
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
.Lt_0089:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBALLOCSTRCONST
SYMBALLOCSTRCONST:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_0090:
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp+12], 0
jge .Lt_0094
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+12], eax
.Lt_0094:
.Lt_0093:
cmp dword ptr [ebp-12], 122
jg .Lt_0096
push 0
push 7
push offset Lt_0097
push 134
push offset Lt_009B
call fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
push 134
push offset Lt_009B
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push 134
push offset Lt_009B
call fb_StrAssign
add esp, 20
jmp .Lt_0095
.Lt_0096:
push 0
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
push 134
push offset Lt_009B
call fb_StrAssign
add esp, 20
.Lt_0095:
push 0
push -1
push 1
push offset Lt_009B
lea eax, [SYMB+98352]
push eax
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_009A
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0091
.Lt_009A:
.Lt_0099:
push 0
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
push 134
push offset Lt_009C
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
inc eax
mov dword ptr [ebp-16], eax
push 137
push 3073
push offset Lt_009D
push 0
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 4
push offset Lt_009C
push offset Lt_009B
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
inc eax
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
push 0
push 0
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0091:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_009B,134
.balign 4
	.lcomm	Lt_009C,134
.balign 4
	.lcomm	Lt_009E,16

.section .data
.balign 4
Lt_009D:
.int Lt_009E
.int Lt_009E
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBALLOCWSTRCONST
SYMBALLOCWSTRCONST:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_009F:
mov dword ptr [ebp-4], 0
push dword ptr [ebp+8]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp+12], 0
jge .Lt_00A3
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp+12], eax
.Lt_00A3:
.Lt_00A2:
mov eax, dword ptr [ebp-12]
sal eax, 4
cmp eax, 122
jg .Lt_00A5
push 0
push 7
push offset Lt_00A6
push 134
push offset Lt_00AA
call fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+8]
call HESCAPEW
add esp, 4
push eax
push 134
push offset Lt_00AA
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 20
push eax
push 134
push offset Lt_00AA
call fb_StrAssign
add esp, 20
jmp .Lt_00A4
.Lt_00A5:
push 0
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
push 134
push offset Lt_00AA
call fb_StrAssign
add esp, 20
.Lt_00A4:
push 0
push -1
push 1
push offset Lt_00AA
lea eax, [SYMB+98352]
push eax
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00A9
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00A0
.Lt_00A9:
.Lt_00A8:
push 0
push 0
push 0
call SYMBUNIQUEID
add esp, 4
push eax
push 134
push offset Lt_00AB
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
inc eax
imul eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [ebp-16], eax
push 137
push 3073
push offset Lt_00AC
push 0
mov ebx, dword ptr [ebp-16]
mov eax, ebx
sar eax, 31
push eax
push ebx
push 0
push 7
push offset Lt_00AB
push offset Lt_00AA
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-12]
sal eax, 2
add eax, 4
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], eax
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [eax+56]
call fb_WstrAssign
add esp, 12
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00AA,134
.balign 4
	.lcomm	Lt_00AB,134
.balign 4
	.lcomm	Lt_00AD,16

.section .data
.balign 4
Lt_00AC:
.int Lt_00AD
.int Lt_00AD
.int 16
.int 16
.int 1
.int 49
.int 1
.int 0
.int 0

.section .text
.balign 16

.globl SYMBDELCONST
SYMBDELCONST:
push ebp
mov ebp, esp
.Lt_00AE:
cmp dword ptr [ebp+8], 0
jne .Lt_00B1
jmp .Lt_00AF
.Lt_00B1:
.Lt_00B0:
push dword ptr [ebp+8]
call SYMBFREESYMBOL
add esp, 4
.Lt_00AF:
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBGETCONSTVALUEASSTR
SYMBGETCONSTVALUEASSTR:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 17
je .Lt_00B7
.Lt_00B8:
cmp dword ptr [ebp-16], 18
je .Lt_00B7
.Lt_00B9:
cmp dword ptr [ebp-16], 4
jne .Lt_00B6
.Lt_00B7:
push 0
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
push dword ptr [eax+56]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_00B4
.Lt_00B6:
cmp dword ptr [ebp-16], 16
jne .Lt_00BA
.Lt_00BB:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [eax+56]
call fb_DoubleToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_00B4
.Lt_00BA:
cmp dword ptr [ebp-16], 15
jne .Lt_00BC
.Lt_00BD:
push 0
push -1
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+56]
sub esp,4
fstp dword ptr [esp]
call fb_FloatToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_00B4
.Lt_00BC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 480
je .Lt_00BF
mov dword ptr [ebp-20], 24
jmp .Lt_00C3
.Lt_00BF:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_00C3:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_00C2
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [eax+56]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_00C1
.Lt_00C2:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
push dword ptr [eax+56]
call fb_ULongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.Lt_00C1:
.Lt_00BE:
.Lt_00B4:
.Lt_00B3:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl SYMBCLONECONST
SYMBCLONECONST:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C4:
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
call SYMBADDCONST
add esp, 20
mov dword ptr [ebp-4], eax
.Lt_00C5:
mov eax, dword ptr [ebp-4]
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
HALLOCINTORFLOATCONST:
push ebp
mov ebp, esp
sub esp, 72
push ebx
mov dword ptr [ebp-4], 0
.Lt_007E:
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
push offset Lt_0081
push 134
push offset Lt_00C6
call fb_StrAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [ebp+8]
push 134
push offset Lt_00C6
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 20
push eax
push 134
push offset Lt_00C6
call fb_StrAssign
add esp, 20
push 0
push -1
push 1
push offset Lt_00C6
lea eax, [SYMB+98352]
push eax
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 20
mov dword ptr [ebp-72], eax
cmp dword ptr [ebp-72], 0
je .Lt_0084
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-4], eax
jmp .Lt_007F
.Lt_0084:
.Lt_0083:
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
call SYMBUNIQUEID
add esp, 4
push eax
push offset Lt_00C6
call SYMBADDVAR
add esp, 40
mov dword ptr [ebp-72], eax
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
inc eax
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp-72]
mov dword ptr [ebx+56], eax
push 0
push -1
push dword ptr [ebp+8]
push 0
mov eax, dword ptr [ebp-72]
push dword ptr [eax+56]
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-72]
mov dword ptr [ebp-4], eax
.Lt_007F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00C6,134
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
Lt_0081:	.ascii	"{fbnc}\0"
.balign 4
Lt_008A:	.ascii	"0x\0"
.balign 4
Lt_0097:	.ascii	"{fbsc}\0"
.balign 4
Lt_00A6:	.ascii	"{fbwc}\0"
