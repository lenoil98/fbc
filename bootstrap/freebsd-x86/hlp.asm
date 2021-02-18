	.intel_syntax noprefix

.section .text
.balign 16

.globl HHEXUINT
HHEXUINT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0066:
mov dword ptr [Lt_007E], 4
cmp dword ptr [ebp+8], 65535
jbe .Lt_0078
mov dword ptr [Lt_007E], 8
.Lt_0078:
.Lt_0077:
mov eax, offset Lt_007F + 7
mov dword ptr [Lt_0080], eax
mov dword ptr [Lt_0081], 0
.Lt_0079:
mov eax, dword ptr [ebp+8]
and eax, 15
mov ebx, eax
mov al, byte ptr [Lt_0082+ebx*4]
mov ebx, dword ptr [Lt_0080]
mov byte ptr [ebx], al
inc dword ptr [Lt_0081]
mov eax, dword ptr [Lt_007E]
cmp dword ptr [Lt_0081], eax
jne .Lt_007D
jmp .Lt_007A
.Lt_007D:
.Lt_007C:
dec dword ptr [Lt_0080]
shr dword ptr [ebp+8], 4
.Lt_007B:
jmp .Lt_0079
.Lt_007A:
mov eax, dword ptr [Lt_0080]
mov dword ptr [ebp-4], eax
.Lt_0067:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_007F,9
.balign 4
	.lcomm	Lt_0080,4
.balign 4
	.lcomm	Lt_0081,4
.balign 4
	.lcomm	Lt_007E,4

.section .data
.balign 4
Lt_0082:
.int 48
.int 49
.int 50
.int 51
.int 52
.int 53
.int 54
.int 55
.int 56
.int 57
.int 65
.int 66
.int 67
.int 68
.int 69
.int 70

.section .text
.balign 16

.globl HFLOATTOHEX
HFLOATTOHEX:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0083:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_0085
mov dword ptr [ebp-16], 24
jmp .Lt_008A
.Lt_0085:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_008A:
cmp dword ptr [ebp-16], 16
jne .Lt_0088
push 0
push 3
push offset Lt_0089
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
jmp .Lt_0087
.Lt_0088:
fld qword ptr [ebp+8]
fstp dword ptr [ebp-20]
push 0
push 3
push offset Lt_0089
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
push 8
push dword ptr [ebp-20]
call fb_HEXEx_i
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.Lt_0087:
.Lt_0084:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl HFLOATTOHEX_C99
HFLOATTOHEX_C99:
push ebp
mov ebp, esp
sub esp, 88
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_008B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], ebx
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
mov eax, ebx
xor ebx, ebx
shr eax, 31
mov ecx, eax
mov dword ptr [ebp-24], ecx
mov eax, dword ptr [ebp-20]
mov ecx, dword ptr [ebp-16]
mov eax, ecx
xor ecx, ecx
shr eax, 20
and eax, 2047
and ecx, 0
mov ebx, eax
mov dword ptr [ebp-28], ebx
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [ebp-16]
and eax, 4294967295
and ebx, 1048575
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
cmp dword ptr [ebp-24], 0
je .Lt_008E
push 0
push 4
push offset Lt_008F
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_008D
.Lt_008E:
push 0
push 3
push offset Lt_0089
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
.Lt_008D:
add dword ptr [ebp-28], -1023
cmp dword ptr [ebp-28], -1023
jle .Lt_0091
push 0
push 3
push offset Lt_0008
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 13
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push 2
push offset Lt_0006
push -1
push 1
lea eax, [ebp-48]
push eax
call fb_RIGHT
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0093
push 0
push -1
push 1
push offset Lt_0006
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-48]
push eax
call fb_RTrimEx
add esp, 8
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
.Lt_0093:
jmp .Lt_0090
.Lt_0091:
cmp dword ptr [ebp-32], 0
jne .Lt_0095
cmp dword ptr [ebp-36], 0
jne .Lt_0095
.Lt_00A2:
push 0
push 2
push offset Lt_0006
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-28], 0
jmp .Lt_0094
.Lt_0095:
inc dword ptr [ebp-28]
push 0
push 3
push offset Lt_0096
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push 0
push -1
push 13
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call fb_HEXEx_l
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrConcatAssign
add esp, 20
push 2
push offset Lt_0006
push -1
push 1
lea eax, [ebp-48]
push eax
call fb_RIGHT
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0098
push 0
push -1
push 1
push offset Lt_0006
call fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-48]
push eax
call fb_RTrimEx
add esp, 8
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
.Lt_0098:
.Lt_0094:
.Lt_0090:
push 0
push -1
push -1
push -1
push -1
mov eax, dword ptr [ebp-28]
mov ebx, eax
sar ebx, 31
xor eax, ebx
sub eax, ebx
push eax
call fb_IntToStr
add esp, 4
push eax
push 0
cmp dword ptr [ebp-28], 0
jl .Lt_009C
mov eax, offset Lt_009A
mov dword ptr [ebp-52], eax
jmp .Lt_00A1
.Lt_009C:
mov eax, offset Lt_009B
mov dword ptr [ebp-52], eax
.Lt_00A1:
push dword ptr [ebp-52]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 20
push eax
push 2
push offset Lt_0099
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-48]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_008C
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 4
.Lt_008C:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HFBRELOP2IRRELOP
HFBRELOP2IRRELOP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00A3:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_00A6
.Lt_00A8:
mov dword ptr [Lt_00B0], 45
jmp .Lt_00A5
.Lt_00A9:
mov dword ptr [Lt_00B0], 46
jmp .Lt_00A5
.Lt_00AA:
mov dword ptr [Lt_00B0], 47
jmp .Lt_00A5
.Lt_00AB:
mov dword ptr [Lt_00B0], 48
jmp .Lt_00A5
.Lt_00AC:
mov dword ptr [Lt_00B0], 50
jmp .Lt_00A5
.Lt_00AD:
mov dword ptr [Lt_00B0], 49
jmp .Lt_00A5
.Lt_00AE:
push 0
push 0
push 285
call ERRREPORT
add esp, 12
mov dword ptr [Lt_00B0], 45
jmp .Lt_00A5
.Lt_00A6:
mov eax, dword ptr [ebp-8]
add eax, 4294966997
cmp eax, 5
ja .Lt_00AE
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_00AF+eax*4-1196]
.LT_00AF:
.int .Lt_00A8
.int .Lt_00A9
.int .Lt_00AA
.int .Lt_00AB
.int .Lt_00AC
.int .Lt_00AD
.Lt_00A5:
mov eax, dword ptr [Lt_00B0]
mov dword ptr [ebp-4], eax
.Lt_00A4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00B0,4

.section .text
.balign 16

.globl HFILEEXISTS
HFILEEXISTS:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00B1:
call fb_FileFree
mov dword ptr [Lt_00B7], eax
push 0
push dword ptr [Lt_00B7]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileOpen
add esp, 24
test eax, eax
jne .Lt_00B4
mov dword ptr [ebp-4], -1
push dword ptr [Lt_00B7]
call fb_FileClose
add esp, 4
test eax, eax
je .Lt_00B5
push 0
push 0
push offset Lt_00B6
push 161
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00B5:
jmp .Lt_00B3
.Lt_00B4:
mov dword ptr [ebp-4], 0
.Lt_00B3:
.Lt_00B2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00B7,4

.section .text
.balign 16

.globl HUCASE
HUCASE:
push ebp
mov ebp, esp
push ebx
.Lt_00B8:
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_00C2], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [Lt_00C3], eax
.Lt_00BA:
mov eax, dword ptr [Lt_00C2]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_00C4], ebx
cmp dword ptr [Lt_00C4], 97
jl .Lt_00BE
cmp dword ptr [Lt_00C4], 122
jg .Lt_00C0
add dword ptr [Lt_00C4], -32
.Lt_00C0:
.Lt_00BF:
jmp .Lt_00BD
.Lt_00BE:
cmp dword ptr [Lt_00C4], 0
jne .Lt_00C1
jmp .Lt_00BB
.Lt_00C1:
.Lt_00BD:
mov bl, byte ptr [Lt_00C4]
mov eax, dword ptr [Lt_00C3]
mov byte ptr [eax], bl
inc dword ptr [Lt_00C2]
inc dword ptr [Lt_00C3]
.Lt_00BC:
jmp .Lt_00BA
.Lt_00BB:
mov ebx, dword ptr [Lt_00C3]
mov byte ptr [ebx], 0
.Lt_00B9:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00C4,4
.balign 4
	.lcomm	Lt_00C2,4
.balign 4
	.lcomm	Lt_00C3,4

.section .text
.balign 16

.globl HCLEARNAME
HCLEARNAME:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00C5:
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_00D1], eax
.Lt_00C7:
mov eax, dword ptr [Lt_00D1]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .Lt_00CB
.Lt_00CD:
jmp .Lt_00C8
jmp .Lt_00CA
.Lt_00CE:
jmp .Lt_00CA
.Lt_00CF:
mov ebx, dword ptr [Lt_00D1]
mov byte ptr [ebx], 122
jmp .Lt_00CA
.Lt_00CB:
cmp dword ptr [ebp-4], 122
ja .Lt_00CF
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.LT_00D0+ebx*4]
.LT_00D0:
.int .Lt_00CD
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CF
.int .Lt_00CE
.int .Lt_00CF
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.int .Lt_00CE
.Lt_00CA:
inc dword ptr [Lt_00D1]
.Lt_00C9:
jmp .Lt_00C7
.Lt_00C8:
.Lt_00C6:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00D1,4

.section .text
.balign 16

.globl HSTRIPEXT
HSTRIPEXT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00DE:
push 0
push -1
push dword ptr [ebp+8]
call HFINDEXTBEGIN
add esp, 4
push eax
push dword ptr [ebp+8]
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.Lt_00DF:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl HSTRIPPATH
HSTRIPPATH:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00E0:
mov dword ptr [Lt_00ED], 0
.Lt_00E3:
push 1
push offset Lt_00E6
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
mov eax, dword ptr [Lt_00ED]
inc eax
push eax
call fb_StrInstr
add esp, 12
mov dword ptr [Lt_00EE], eax
push 1
push offset Lt_0019
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
mov eax, dword ptr [Lt_00ED]
inc eax
push eax
call fb_StrInstr
add esp, 12
mov dword ptr [Lt_00EE+4], eax
mov eax, dword ptr [Lt_00EE]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_00EE+4]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [Lt_00EE+4]
cmp ecx, dword ptr [Lt_00EE]
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .Lt_00E8
mov ebx, dword ptr [Lt_00EE+4]
mov dword ptr [Lt_00F2], ebx
jmp .Lt_00E7
.Lt_00E8:
mov ebx, dword ptr [Lt_00EE]
mov dword ptr [Lt_00F2], ebx
.Lt_00E7:
cmp dword ptr [Lt_00F2], 0
jne .Lt_00EA
jmp .Lt_00E4
.Lt_00EA:
.Lt_00E9:
mov ebx, dword ptr [Lt_00F2]
mov dword ptr [Lt_00ED], ebx
.Lt_00E5:
jmp .Lt_00E3
.Lt_00E4:
cmp dword ptr [Lt_00ED], 0
jle .Lt_00EC
push 0
push -1
push -1
mov ebx, dword ptr [Lt_00ED]
inc ebx
push ebx
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_00EB
.Lt_00EC:
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.Lt_00EB:
.Lt_00E1:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00ED,4
.balign 4
	.lcomm	Lt_00F2,4
.balign 4
	.lcomm	Lt_00EE,8

.section .text
.balign 16

.globl HSTRIPFILENAME
HSTRIPFILENAME:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00F3:
mov dword ptr [Lt_00FF], 0
.Lt_00F6:
push 1
push offset Lt_00E6
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
mov eax, dword ptr [Lt_00FF]
inc eax
push eax
call fb_StrInstr
add esp, 12
mov dword ptr [Lt_0100], eax
push 1
push offset Lt_0019
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
mov eax, dword ptr [Lt_00FF]
inc eax
push eax
call fb_StrInstr
add esp, 12
mov dword ptr [Lt_0100+4], eax
mov eax, dword ptr [Lt_0100]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0100+4]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [Lt_0100+4]
cmp ecx, dword ptr [Lt_0100]
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .Lt_00FA
mov ebx, dword ptr [Lt_0100+4]
mov dword ptr [Lt_0104], ebx
jmp .Lt_00F9
.Lt_00FA:
mov ebx, dword ptr [Lt_0100]
mov dword ptr [Lt_0104], ebx
.Lt_00F9:
cmp dword ptr [Lt_0104], 0
jne .Lt_00FC
jmp .Lt_00F7
.Lt_00FC:
.Lt_00FB:
mov ebx, dword ptr [Lt_0104]
mov dword ptr [Lt_00FF], ebx
.Lt_00F8:
jmp .Lt_00F6
.Lt_00F7:
cmp dword ptr [Lt_00FF], 0
jle .Lt_00FE
push 0
push -1
push dword ptr [Lt_00FF]
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_00FD
.Lt_00FE:
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.Lt_00FD:
.Lt_00F4:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00FF,4
.balign 4
	.lcomm	Lt_0104,4
.balign 4
	.lcomm	Lt_0100,8

.section .text
.balign 16

.globl HGETFILEEXT
HGETFILEEXT:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0105:
mov dword ptr [Lt_0113], 0
.Lt_0107:
push 1
push offset Lt_0007
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
mov eax, dword ptr [Lt_0113]
inc eax
push eax
call fb_StrInstr
add esp, 12
mov dword ptr [Lt_0114], eax
cmp dword ptr [Lt_0114], 0
jne .Lt_010B
jmp .Lt_0108
.Lt_010B:
.Lt_010A:
mov eax, dword ptr [Lt_0114]
mov dword ptr [Lt_0113], eax
.Lt_0109:
jmp .Lt_0107
.Lt_0108:
cmp dword ptr [Lt_0113], 0
jne .Lt_010D
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_010C
.Lt_010D:
push 0
push -1
push 0
push -1
mov eax, dword ptr [Lt_0113]
inc eax
push eax
push dword ptr [ebp+8]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrMid
add esp, 12
push eax
call fb_StrLcase2
add esp, 8
push eax
push -1
push offset Lt_0115
call fb_StrAssign
add esp, 20
push 1
push offset Lt_00E6
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset Lt_0115
push 1
call fb_StrInstr
add esp, 12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push 1
push offset Lt_0019
mov ebx, eax
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push offset Lt_0115
push 1
call fb_StrInstr
add esp, 12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_010F
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_010E
.Lt_010F:
push -1
push offset Lt_0115
call fb_StrLen
add esp, 8
test eax, eax
jle .Lt_0110
mov eax, dword ptr [Lt_0115]
movzx ebx, byte ptr [eax]
cmp ebx, 92
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0115]
movzx ecx, byte ptr [ebx]
cmp ecx, 47
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0112
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
jmp .Lt_0111
.Lt_0112:
push 0
push -1
push offset Lt_0115
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
.Lt_0111:
.Lt_0110:
.Lt_010E:
.Lt_010C:
.Lt_0106:
lea ebx, [ebp-12]
push ebx
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0114,4
.balign 4
	.lcomm	Lt_0113,4
.balign 4
	.lcomm	Lt_0115,12

.section .text
.balign 16

.globl HREPLACESLASH
HREPLACESLASH:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_011A:
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_011D
.Lt_0120:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-4]
movzx ebx, byte ptr [eax]
cmp ebx, 92
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-4]
movzx ecx, byte ptr [eax]
cmp ecx, 47
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0122
mov cl, byte ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-4]
mov byte ptr [ebx], cl
.Lt_0122:
.Lt_0121:
.Lt_011E:
inc dword ptr [ebp-4]
.Lt_011D:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .Lt_0120
.Lt_011F:
.Lt_011B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl PATHSTRIPDIV
PATHSTRIPDIV:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0125:
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .Lt_0128
dec dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-16]
mov al, byte ptr [ebx]
mov byte ptr [ebp-20], al
movzx eax, byte ptr [ebp-20]
cmp eax, 47
jne .Lt_012B
.Lt_012C:
push 0
push -1
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_0126
.Lt_012B:
.Lt_0129:
.Lt_0128:
.Lt_0127:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.Lt_0126:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl PATHISABSOLUTE
PATHISABSOLUTE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_012D:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 47
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_012E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HCHECKFILEFORMAT
HCHECKFILEFORMAT:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0130:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-12], 0
push 4
lea eax, [ebp-8]
push eax
push 0
push dword ptr [ebp+8]
call fb_FileGet
add esp, 16
test eax, eax
jne .Lt_0133
cmp dword ptr [ebp-8], -131072
jne .Lt_0135
mov dword ptr [ebp-12], 5
jmp .Lt_0134
.Lt_0135:
cmp dword ptr [ebp-8], 65279
jne .Lt_0136
mov dword ptr [ebp-12], 4
jmp .Lt_0134
.Lt_0136:
and dword ptr [ebp-8], 16777215
cmp dword ptr [ebp-8], 12565487
jne .Lt_0138
mov dword ptr [ebp-12], 1
jmp .Lt_0137
.Lt_0138:
and dword ptr [ebp-8], 65535
cmp dword ptr [ebp-8], 65279
jne .Lt_013A
mov dword ptr [ebp-12], 2
jmp .Lt_0139
.Lt_013A:
cmp dword ptr [ebp-8], 65534
jne .Lt_013B
mov dword ptr [ebp-12], 3
.Lt_013B:
.Lt_0139:
.Lt_0137:
.Lt_0134:
cmp dword ptr [ebp-12], 0
jne .Lt_013D
.Lt_013E:
push 1
push dword ptr [ebp+8]
call fb_FileSeek
add esp, 8
test eax, eax
je .Lt_013F
push 0
push 0
push offset Lt_00B6
push 425
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_013F:
jmp .Lt_013C
.Lt_013D:
cmp dword ptr [ebp-12], 1
jne .Lt_0140
.Lt_0141:
push 4
push dword ptr [ebp+8]
call fb_FileSeek
add esp, 8
test eax, eax
je .Lt_0142
push 0
push 0
push offset Lt_00B6
push 428
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0142:
jmp .Lt_013C
.Lt_0140:
cmp dword ptr [ebp-12], 2
je .Lt_0144
.Lt_0145:
cmp dword ptr [ebp-12], 3
jne .Lt_0143
.Lt_0144:
push 3
push dword ptr [ebp+8]
call fb_FileSeek
add esp, 8
test eax, eax
je .Lt_0146
push 0
push 0
push offset Lt_00B6
push 432
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0146:
.Lt_0143:
.Lt_013C:
.Lt_0133:
.Lt_0132:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_0131:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl HCURDIR
HCURDIR:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0147:
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
call fb_CurDir
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call PATHSTRIPDIV
add esp, 4
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
.Lt_0148:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16

.globl PATHSTRIPCURDIR
PATHSTRIPCURDIR:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_014A:
push 0
push -1
push 2
push offset Lt_0019
push -1
call HCURDIR
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 20
push -1
lea eax, [ebp-24]
push eax
push -1
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 8
push eax
push dword ptr [ebp+8]
call fb_LEFT
add esp, 8
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_014E
push 0
push -1
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
push -1
lea ebx, [ebp-24]
push ebx
mov ebx, eax
call fb_StrLen
add esp, 8
sub ebx, eax
push ebx
push dword ptr [ebp+8]
call fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_014D
.Lt_014E:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
.Lt_014D:
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 4
.Lt_014B:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl HISVALIDSYMBOLNAME
HISVALIDSYMBOLNAME:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.Lt_014F:
cmp dword ptr [ebp+8], 0
jne .Lt_0152
jmp .Lt_0150
.Lt_0152:
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0154
jmp .Lt_0150
.Lt_0154:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 97
jb .Lt_0157
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
cmp eax, 122
setbe bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
jmp .Lt_0176
.Lt_0157:
mov dword ptr [ebp-12], 0
.Lt_0176:
cmp dword ptr [ebp-12], 0
jne .Lt_015C
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
cmp eax, 90
ja .Lt_015A
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 65
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_0178
.Lt_015A:
mov dword ptr [ebp-16], 0
.Lt_0178:
mov eax, dword ptr [ebp-16]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .Lt_0177
.Lt_015C:
mov dword ptr [ebp-20], -1
.Lt_0177:
cmp dword ptr [ebp-20], 0
jne .Lt_015F
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 95
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .Lt_0179
.Lt_015F:
mov dword ptr [ebp-24], -1
.Lt_0179:
cmp dword ptr [ebp-24], 0
jne .Lt_0162
jmp .Lt_0150
.Lt_0162:
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-32], eax
jmp .Lt_0164
.Lt_0167:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 97
jb .Lt_0168
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 122
setbe bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
jmp .Lt_017A
.Lt_0168:
mov dword ptr [ebp-36], 0
.Lt_017A:
cmp dword ptr [ebp-36], 0
jne .Lt_016C
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 90
ja .Lt_016A
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 65
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .Lt_017C
.Lt_016A:
mov dword ptr [ebp-40], 0
.Lt_017C:
mov eax, dword ptr [ebp-40]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .Lt_017B
.Lt_016C:
mov dword ptr [ebp-44], -1
.Lt_017B:
cmp dword ptr [ebp-44], 0
jne .Lt_016E
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 95
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .Lt_017D
.Lt_016E:
mov dword ptr [ebp-48], -1
.Lt_017D:
cmp dword ptr [ebp-48], 0
jne .Lt_0172
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 57
ja .Lt_0170
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 48
setae bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-52], ebx
jmp .Lt_017F
.Lt_0170:
mov dword ptr [ebp-52], 0
.Lt_017F:
mov ebx, dword ptr [ebp-52]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-56], ebx
jmp .Lt_017E
.Lt_0172:
mov dword ptr [ebp-56], -1
.Lt_017E:
cmp dword ptr [ebp-56], 0
jne .Lt_0175
jmp .Lt_0150
.Lt_0175:
.Lt_0165:
inc dword ptr [ebp-28]
.Lt_0164:
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ebx
jle .Lt_0167
.Lt_0166:
mov dword ptr [ebp-4], -1
.Lt_0150:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl STRUNQUOTE
STRUNQUOTE:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0190:
push dword ptr [ebp+8]
call STRISQUOTED
add esp, 4
test eax, eax
je .Lt_0193
push 0
push -1
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
add eax, -2
push eax
push 2
push dword ptr [ebp+8]
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
jmp .Lt_0191
.Lt_0193:
.Lt_0192:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 20
.Lt_0191:
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 4
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
HFINDEXTBEGIN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D2:
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_00D4
.Lt_00D7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-8]
mov al, byte ptr [ebx]
mov byte ptr [ebp-12], al
movzx eax, byte ptr [ebp-12]
cmp eax, 46
jne .Lt_00DA
.Lt_00DB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00D3
jmp .Lt_00D8
.Lt_00DA:
movzx eax, byte ptr [ebp-12]
cmp eax, 47
jne .Lt_00DC
.Lt_00DD:
jmp .Lt_00D6
.Lt_00DC:
.Lt_00D8:
.Lt_00D5:
dec dword ptr [ebp-8]
.Lt_00D4:
cmp dword ptr [ebp-8], 0
jge .Lt_00D7
.Lt_00D6:
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_00D3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
STRISQUOTED:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_018A:
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
dec eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jge .Lt_018D
mov dword ptr [ebp-4], 0
jmp .Lt_018B
.Lt_018D:
.Lt_018C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
movzx eax, byte ptr [ebx]
cmp eax, 34
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebp-8]
movzx eax, byte ptr [ecx]
cmp eax, 34
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
movzx ecx, byte ptr [eax]
cmp ecx, 39
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+8]
mov esi, dword ptr [ecx]
add esi, dword ptr [ebp-8]
movzx ecx, byte ptr [esi]
cmp ecx, 39
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
and eax, esi
or ebx, eax
mov dword ptr [ebp-4], ebx
.Lt_018B:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0006:	.ascii	"0\0"
.balign 4
Lt_0007:	.ascii	".\0"
.balign 4
Lt_0008:	.ascii	"1.\0"
.balign 4
Lt_0019:	.ascii	"/\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
Lt_0089:	.ascii	"0x\0"
.balign 4
Lt_008F:	.ascii	"-0x\0"
.balign 4
Lt_0096:	.ascii	"0.\0"
.balign 4
Lt_0099:	.ascii	"p\0"
.balign 4
Lt_009A:	.ascii	"+\0"
.balign 4
Lt_009B:	.ascii	"-\0"
.balign 4
Lt_00B6:	.ascii	"src/compiler/hlp.bas\0"
.balign 4
Lt_00E6:	.ascii	"\\\0"
