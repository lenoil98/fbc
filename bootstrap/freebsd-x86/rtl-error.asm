	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLERRORMODINIT
RTLERRORMODINIT:
.Lt_007C:
push offset FUNCDATA
call RTLADDINTRINSICPROCS
add esp, 4
.Lt_007D:
ret
.balign 16

.globl RTLERRORMODEND
RTLERRORMODEND:
.Lt_007E:
.Lt_007F:
ret
.balign 16

.globl RTLERRORCHECK
RTLERRORCHECK:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0086:
mov dword ptr [ebp-16], 0
cmp dword ptr [ENV+160], 0
je .Lt_0089
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push 0
push -1
push dword ptr [ebp-12]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_0088
.Lt_0089:
mov dword ptr [ebp-12], 0
.Lt_0088:
cmp dword ptr [ENV+156], 0
je .Lt_008B
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp+8]
push 45
call ASTNEWBOP
add esp, 20
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HERRORTHROW
add esp, 8
push eax
push 0
push 104
call ASTNEWBRANCH
add esp, 12
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
push 0
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 8
push eax
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
jmp .Lt_008A
.Lt_008B:
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-16]
call ASTNEWLINK
add esp, 12
mov dword ptr [ebp-16], eax
.Lt_008A:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-4], eax
.Lt_0087:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLERRORTHROW
RTLERRORTHROW:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_008C:
push 0
push 292
push offset Lt_0069
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-16], eax
push -1
push dword ptr [ebp-16]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-12], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_008F
jmp .Lt_008D
.Lt_008F:
.Lt_008E:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0091
jmp .Lt_008D
.Lt_0091:
.Lt_0090:
push -1
push -2147483648
push dword ptr [ebp+16]
call ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0093
jmp .Lt_008D
.Lt_0093:
.Lt_0092:
cmp dword ptr [ENV+160], 0
je .Lt_0095
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0094
.Lt_0095:
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0094:
push -1
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0097
jmp .Lt_008D
.Lt_0097:
.Lt_0096:
cmp dword ptr [ENV+160], 0
je .Lt_0099
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0098
.Lt_0099:
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0098:
push -1
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_009B
jmp .Lt_008D
.Lt_009B:
.Lt_009A:
push dword ptr [ebp-4]
push 0
push 104
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
push -1
push dword ptr [ebp-12]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
.Lt_008D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLERRORSETHANDLER
RTLERRORSETHANDLER:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_009C:
push 0
push 293
push offset Lt_006A
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_009F
jmp .Lt_009D
.Lt_009F:
.Lt_009E:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
je .Lt_00A1
mov eax, dword ptr [ENV+880]
cmp dword ptr [PARSER+104], eax
je .Lt_00A3
mov eax, dword ptr [PARSER+104]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 0
jne .Lt_00A6
push 0
push 32
call SYMBADDTEMPVAR
add esp, 8
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx], eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-12]
push dword ptr [eax]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-8]
call ASTNEWASSIGN
add esp, 12
push eax
call ASTADD
add esp, 4
.Lt_00A6:
.Lt_00A5:
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
cmp dword ptr [ebp-8], 0
jne .Lt_00A8
push dword ptr [ebp-4]
call ASTADD
add esp, 4
.Lt_00A8:
.Lt_00A7:
.Lt_009D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLERRORGETNUM
RTLERRORGETNUM:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00A9:
push 0
push 294
push offset Lt_006B
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_00AA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLERRORSETNUM
RTLERRORSETNUM:
push ebp
mov ebp, esp
sub esp, 4
.Lt_00AB:
push 0
push 295
push offset Lt_006C
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
push -1
push -2147483648
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00AE
jmp .Lt_00AC
.Lt_00AE:
.Lt_00AD:
push dword ptr [ebp-4]
call ASTADD
add esp, 4
.Lt_00AC:
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLERRORRESUME
RTLERRORRESUME:
push ebp
mov ebp, esp
sub esp, 8
.Lt_00AF:
cmp dword ptr [ebp+8], 0
jne .Lt_00B2
push 296
push offset Lt_006D
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00B1
.Lt_00B2:
push 297
push offset Lt_006E
call RTLPROCLOOKUP
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_00B1:
push 0
push dword ptr [ebp-8]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-4], eax
push dword ptr [ebp-4]
push 0
push 104
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
.Lt_00B0:
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLERRORSETMODNAME
RTLERRORSETMODNAME:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B3:
push 0
push 298
push offset Lt_0075
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00B6
mov dword ptr [ebp-4], 0
jmp .Lt_00B4
.Lt_00B6:
.Lt_00B5:
cmp dword ptr [ebp+8], 0
je .Lt_00B8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-16], eax
push 0
push 36
call SYMBADDTEMPVAR
add esp, 8
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+4], eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-12], eax
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00B7
.Lt_00B8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00B7:
.Lt_00B4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl RTLERRORSETFUNCNAME
RTLERRORSETFUNCNAME:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BA:
push 0
push 299
push offset Lt_0076
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp+12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00BD
mov dword ptr [ebp-4], 0
jmp .Lt_00BB
.Lt_00BD:
.Lt_00BC:
cmp dword ptr [ebp+8], 0
je .Lt_00BF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
lea eax, [ebx+28]
mov dword ptr [ebp-16], eax
push 0
push 36
call SYMBADDTEMPVAR
add esp, 8
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebx+8], eax
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+8]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-12], eax
push 0
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call ASTNEWASSIGN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_00BE
.Lt_00BF:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00BE:
.Lt_00BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__rtlzerror:
.Lt_0002:
.Lt_0003:
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
HERRORTHROW:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0080:
push 0
push 291
push offset Lt_0068
call RTLPROCLOOKUP
add esp, 8
push eax
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push 0
push 8
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [eax+16564]
mov ebx, ecx
sar ebx, 31
push ebx
push ecx
call ASTNEWCONSTI
add esp, 16
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
push -1
push -2147483648
lea eax, [ENV+280]
push eax
call ASTNEWCONSTSTR
add esp, 4
push eax
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
cmp dword ptr [ebp+8], 0
je .Lt_0083
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_0082
.Lt_0083:
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0082:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
cmp dword ptr [ENV+160], 0
je .Lt_0085
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_0084
.Lt_0085:
push 0
push 9
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0084:
push -1
push -2147483648
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTNEWARG
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0081:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
FUNCDATA:
.int Lt_0068
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
.int Lt_0069
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
.int Lt_006A
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
.int Lt_006B
.long 0
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int Lt_006C
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
.int Lt_006D
.long 0
.int 32
.int 3
.long 0
.int 0
.int 0
.skip 320,0
.int Lt_006E
.long 0
.int 32
.int 3
.long 0
.int 0
.int 0
.skip 320,0
.int Lt_006F
.int Lt_0070
.int 11
.int -1
.long 0
.int 0
.int 0
.skip 320,0
.int Lt_0071
.int Lt_0072
.int 36
.int -1
.long 0
.int 128
.int 0
.skip 320,0
.int Lt_0073
.int Lt_0074
.int 36
.int -1
.long 0
.int 128
.int 0
.skip 320,0
.int Lt_0075
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
.int Lt_0076
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
.int Lt_0077
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
.int Lt_0077
.int Lt_0078
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
.int Lt_0079
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
.int Lt_0079
.int Lt_007A
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
Lt_0068:	.ascii	"fb_ErrorThrowAt\0"
.balign 4
Lt_0069:	.ascii	"fb_ErrorThrowEx\0"
.balign 4
Lt_006A:	.ascii	"fb_ErrorSetHandler\0"
.balign 4
Lt_006B:	.ascii	"fb_ErrorGetNum\0"
.balign 4
Lt_006C:	.ascii	"fb_ErrorSetNum\0"
.balign 4
Lt_006D:	.ascii	"fb_ErrorResume\0"
.balign 4
Lt_006E:	.ascii	"fb_ErrorResumeNext\0"
.balign 4
Lt_006F:	.ascii	"erl\0"
.balign 4
Lt_0070:	.ascii	"fb_ErrorGetLineNum\0"
.balign 4
Lt_0071:	.ascii	"erfn\0"
.balign 4
Lt_0072:	.ascii	"fb_ErrorGetFuncName\0"
.balign 4
Lt_0073:	.ascii	"ermn\0"
.balign 4
Lt_0074:	.ascii	"fb_ErrorGetModName\0"
.balign 4
Lt_0075:	.ascii	"fb_ErrorSetModName\0"
.balign 4
Lt_0076:	.ascii	"fb_ErrorSetFuncName\0"
.balign 4
Lt_0077:	.ascii	"fb_Assert\0"
.balign 4
Lt_0078:	.ascii	"fb_AssertW\0"
.balign 4
Lt_0079:	.ascii	"fb_AssertWarn\0"
.balign 4
Lt_007A:	.ascii	"fb_AssertWarnW\0"

.section .ctors
.int fb_ctor__rtlzerror
