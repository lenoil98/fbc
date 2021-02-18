	.intel_syntax noprefix

.section .text
.balign 16

.globl _HHEXUINT@4
_HHEXUINT@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
mov dword ptr [_Lt_007F], 4
cmp dword ptr [ebp+8], 65535
jbe .Lt_0079
mov dword ptr [_Lt_007F], 8
.Lt_0079:
.Lt_0078:
mov eax, offset _Lt_0080 + 7
mov dword ptr [_Lt_0081], eax
mov dword ptr [_Lt_0082], 0
.Lt_007A:
mov eax, dword ptr [ebp+8]
and eax, 15
mov ebx, eax
mov al, byte ptr [_Lt_0083+ebx*4]
mov ebx, dword ptr [_Lt_0081]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0082]
mov eax, dword ptr [_Lt_007F]
cmp dword ptr [_Lt_0082], eax
jne .Lt_007E
jmp .Lt_007B
.Lt_007E:
.Lt_007D:
dec dword ptr [_Lt_0081]
shr dword ptr [ebp+8], 4
.Lt_007C:
jmp .Lt_007A
.Lt_007B:
mov eax, dword ptr [_Lt_0081]
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0080,9
.balign 4
	.lcomm	_Lt_0081,4
.balign 4
	.lcomm	_Lt_0082,4
.balign 4
	.lcomm	_Lt_007F,4

.section .data
.balign 4
_Lt_0083:
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

.globl _HFLOATTOHEX@12
_HFLOATTOHEX@12:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0084:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_0086
mov dword ptr [ebp-16], 24
jmp .Lt_008B
.Lt_0086:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_008B:
cmp dword ptr [ebp-16], 16
jne .Lt_0089
push 0
push 3
push offset _Lt_008A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push 16
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_HEXEx_l@12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0088
.Lt_0089:
fld qword ptr [ebp+8]
fstp dword ptr [ebp-20]
push 0
push 3
push offset _Lt_008A
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
push 8
push dword ptr [ebp-20]
call _fb_HEXEx_i@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_0088:
.Lt_0085:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _HFLOATTOHEX_C99@8
_HFLOATTOHEX_C99@8:
push ebp
mov ebp, esp
sub esp, 88
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_008C:
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
je .Lt_008F
push 0
push 4
push offset _Lt_0090
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
jmp .Lt_008E
.Lt_008F:
push 0
push 3
push offset _Lt_008A
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
.Lt_008E:
add dword ptr [ebp-28], -1023
cmp dword ptr [ebp-28], -1023
jle .Lt_0092
push 0
push 3
push offset _Lt_0008
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 13
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _fb_HEXEx_l@12
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign@20
push 2
push offset _Lt_0006
push -1
push 1
lea eax, [ebp-48]
push eax
call _fb_RIGHT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0094
push 0
push -1
push 1
push offset _Lt_0006
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-48]
push eax
call _fb_RTrimEx@8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
.Lt_0094:
jmp .Lt_0091
.Lt_0092:
cmp dword ptr [ebp-32], 0
jne .Lt_0096
cmp dword ptr [ebp-36], 0
jne .Lt_0096
.Lt_00A3:
push 0
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-28], 0
jmp .Lt_0095
.Lt_0096:
inc dword ptr [ebp-28]
push 0
push 3
push offset _Lt_0097
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 13
push dword ptr [ebp-32]
push dword ptr [ebp-36]
call _fb_HEXEx_l@12
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrConcatAssign@20
push 2
push offset _Lt_0006
push -1
push 1
lea eax, [ebp-48]
push eax
call _fb_RIGHT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0099
push 0
push -1
push 1
push offset _Lt_0006
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-48]
push eax
call _fb_RTrimEx@8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
.Lt_0099:
.Lt_0095:
.Lt_0091:
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
call _fb_IntToStr@4
push eax
push 0
cmp dword ptr [ebp-28], 0
jl .Lt_009D
mov eax, offset _Lt_009B
mov dword ptr [ebp-52], eax
jmp .Lt_00A2
.Lt_009D:
mov eax, offset _Lt_009C
mov dword ptr [ebp-52], eax
.Lt_00A2:
push dword ptr [ebp-52]
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
push 2
push offset _Lt_009A
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-48]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
jmp .Lt_008D
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
.Lt_008D:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HFBRELOP2IRRELOP@4
_HFBRELOP2IRRELOP@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00A4:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_00A7
.Lt_00A9:
mov dword ptr [_Lt_00B1], 45
jmp .Lt_00A6
.Lt_00AA:
mov dword ptr [_Lt_00B1], 46
jmp .Lt_00A6
.Lt_00AB:
mov dword ptr [_Lt_00B1], 47
jmp .Lt_00A6
.Lt_00AC:
mov dword ptr [_Lt_00B1], 48
jmp .Lt_00A6
.Lt_00AD:
mov dword ptr [_Lt_00B1], 50
jmp .Lt_00A6
.Lt_00AE:
mov dword ptr [_Lt_00B1], 49
jmp .Lt_00A6
.Lt_00AF:
push 0
push 0
push 285
call _ERRREPORT@12
mov dword ptr [_Lt_00B1], 45
jmp .Lt_00A6
.Lt_00A7:
mov eax, dword ptr [ebp-8]
add eax, 4294966997
cmp eax, 5
ja .Lt_00AF
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_00B0+eax*4-1196]
_.LT_00B0:
.int .Lt_00A9
.int .Lt_00AA
.int .Lt_00AB
.int .Lt_00AC
.int .Lt_00AD
.int .Lt_00AE
.Lt_00A6:
mov eax, dword ptr [_Lt_00B1]
mov dword ptr [ebp-4], eax
.Lt_00A5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00B1,4

.section .text
.balign 16

.globl _HFILEEXISTS@4
_HFILEEXISTS@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00B2:
call _fb_FileFree@0
mov dword ptr [_Lt_00B8], eax
push 0
push dword ptr [_Lt_00B8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileOpen@24
test eax, eax
jne .Lt_00B5
mov dword ptr [ebp-4], -1
push dword ptr [_Lt_00B8]
call _fb_FileClose@4
test eax, eax
je .Lt_00B6
push 0
push 0
push offset _Lt_00B7
push 161
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00B6:
jmp .Lt_00B4
.Lt_00B5:
mov dword ptr [ebp-4], 0
.Lt_00B4:
.Lt_00B3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00B8,4

.section .text
.balign 16

.globl _HUCASE@8
_HUCASE@8:
push ebp
mov ebp, esp
push ebx
.Lt_00B9:
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_00C3], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [_Lt_00C4], eax
.Lt_00BB:
mov eax, dword ptr [_Lt_00C3]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_00C5], ebx
cmp dword ptr [_Lt_00C5], 97
jl .Lt_00BF
cmp dword ptr [_Lt_00C5], 122
jg .Lt_00C1
add dword ptr [_Lt_00C5], -32
.Lt_00C1:
.Lt_00C0:
jmp .Lt_00BE
.Lt_00BF:
cmp dword ptr [_Lt_00C5], 0
jne .Lt_00C2
jmp .Lt_00BC
.Lt_00C2:
.Lt_00BE:
mov bl, byte ptr [_Lt_00C5]
mov eax, dword ptr [_Lt_00C4]
mov byte ptr [eax], bl
inc dword ptr [_Lt_00C3]
inc dword ptr [_Lt_00C4]
.Lt_00BD:
jmp .Lt_00BB
.Lt_00BC:
mov ebx, dword ptr [_Lt_00C4]
mov byte ptr [ebx], 0
.Lt_00BA:
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_00C5,4
.balign 4
	.lcomm	_Lt_00C3,4
.balign 4
	.lcomm	_Lt_00C4,4

.section .text
.balign 16

.globl _HCLEARNAME@4
_HCLEARNAME@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00C6:
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_00D2], eax
.Lt_00C8:
mov eax, dword ptr [_Lt_00D2]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .Lt_00CC
.Lt_00CE:
jmp .Lt_00C9
jmp .Lt_00CB
.Lt_00CF:
jmp .Lt_00CB
.Lt_00D0:
mov ebx, dword ptr [_Lt_00D2]
mov byte ptr [ebx], 122
jmp .Lt_00CB
.Lt_00CC:
cmp dword ptr [ebp-4], 122
ja .Lt_00D0
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.LT_00D1+ebx*4]
_.LT_00D1:
.int .Lt_00CE
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
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
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
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
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00D0
.int .Lt_00CF
.int .Lt_00D0
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
.Lt_00CB:
inc dword ptr [_Lt_00D2]
.Lt_00CA:
jmp .Lt_00C8
.Lt_00C9:
.Lt_00C7:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00D2,4

.section .text
.balign 16

.globl _HSTRIPEXT@4
_HSTRIPEXT@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00E2:
push 0
push -1
push dword ptr [ebp+8]
call _HFINDEXTBEGIN@4
push eax
push dword ptr [ebp+8]
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_00E3:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HSTRIPPATH@4
_HSTRIPPATH@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00E4:
mov dword ptr [_Lt_00F0], 0
.Lt_00E7:
push 1
push offset _Lt_001A
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
mov eax, dword ptr [_Lt_00F0]
inc eax
push eax
call _fb_StrInstr@12
mov dword ptr [_Lt_00F1], eax
push 1
push offset _Lt_00DF
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
mov eax, dword ptr [_Lt_00F0]
inc eax
push eax
call _fb_StrInstr@12
mov dword ptr [_Lt_00F1+4], eax
mov eax, dword ptr [_Lt_00F1]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_00F1+4]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_00F1+4]
cmp ecx, dword ptr [_Lt_00F1]
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .Lt_00EB
mov ebx, dword ptr [_Lt_00F1+4]
mov dword ptr [_Lt_00F5], ebx
jmp .Lt_00EA
.Lt_00EB:
mov ebx, dword ptr [_Lt_00F1]
mov dword ptr [_Lt_00F5], ebx
.Lt_00EA:
cmp dword ptr [_Lt_00F5], 0
jne .Lt_00ED
jmp .Lt_00E8
.Lt_00ED:
.Lt_00EC:
mov ebx, dword ptr [_Lt_00F5]
mov dword ptr [_Lt_00F0], ebx
.Lt_00E9:
jmp .Lt_00E7
.Lt_00E8:
cmp dword ptr [_Lt_00F0], 0
jle .Lt_00EF
push 0
push -1
push -1
mov ebx, dword ptr [_Lt_00F0]
inc ebx
push ebx
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_00EE
.Lt_00EF:
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_00EE:
.Lt_00E5:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00F0,4
.balign 4
	.lcomm	_Lt_00F5,4
.balign 4
	.lcomm	_Lt_00F1,8

.section .text
.balign 16

.globl _HSTRIPFILENAME@4
_HSTRIPFILENAME@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00F6:
mov dword ptr [_Lt_0102], 0
.Lt_00F9:
push 1
push offset _Lt_001A
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
mov eax, dword ptr [_Lt_0102]
inc eax
push eax
call _fb_StrInstr@12
mov dword ptr [_Lt_0103], eax
push 1
push offset _Lt_00DF
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
mov eax, dword ptr [_Lt_0102]
inc eax
push eax
call _fb_StrInstr@12
mov dword ptr [_Lt_0103+4], eax
mov eax, dword ptr [_Lt_0103]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0103+4]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_0103+4]
cmp ecx, dword ptr [_Lt_0103]
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .Lt_00FD
mov ebx, dword ptr [_Lt_0103+4]
mov dword ptr [_Lt_0107], ebx
jmp .Lt_00FC
.Lt_00FD:
mov ebx, dword ptr [_Lt_0103]
mov dword ptr [_Lt_0107], ebx
.Lt_00FC:
cmp dword ptr [_Lt_0107], 0
jne .Lt_00FF
jmp .Lt_00FA
.Lt_00FF:
.Lt_00FE:
mov ebx, dword ptr [_Lt_0107]
mov dword ptr [_Lt_0102], ebx
.Lt_00FB:
jmp .Lt_00F9
.Lt_00FA:
cmp dword ptr [_Lt_0102], 0
jle .Lt_0101
push 0
push -1
push dword ptr [_Lt_0102]
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_0100
.Lt_0101:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_0100:
.Lt_00F7:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0102,4
.balign 4
	.lcomm	_Lt_0107,4
.balign 4
	.lcomm	_Lt_0103,8

.section .text
.balign 16

.globl _HGETFILEEXT@4
_HGETFILEEXT@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0108:
mov dword ptr [_Lt_0116], 0
.Lt_010A:
push 1
push offset _Lt_0007
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
mov eax, dword ptr [_Lt_0116]
inc eax
push eax
call _fb_StrInstr@12
mov dword ptr [_Lt_0117], eax
cmp dword ptr [_Lt_0117], 0
jne .Lt_010E
jmp .Lt_010B
.Lt_010E:
.Lt_010D:
mov eax, dword ptr [_Lt_0117]
mov dword ptr [_Lt_0116], eax
.Lt_010C:
jmp .Lt_010A
.Lt_010B:
cmp dword ptr [_Lt_0116], 0
jne .Lt_0110
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_010F
.Lt_0110:
push 0
push -1
push 0
push -1
mov eax, dword ptr [_Lt_0116]
inc eax
push eax
push dword ptr [ebp+8]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrMid@12
push eax
call _fb_StrLcase2@8
push eax
push -1
push offset _Lt_0118
call _fb_StrAssign@20
push 1
push offset _Lt_001A
call _fb_StrAllocTempDescZEx@8
push eax
push offset _Lt_0118
push 1
call _fb_StrInstr@12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push 1
push offset _Lt_00DF
mov ebx, eax
call _fb_StrAllocTempDescZEx@8
push eax
push offset _Lt_0118
push 1
call _fb_StrInstr@12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0112
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_0111
.Lt_0112:
push -1
push offset _Lt_0118
call _fb_StrLen@8
test eax, eax
jle .Lt_0113
mov eax, dword ptr [_Lt_0118]
movzx ebx, byte ptr [eax]
cmp ebx, 92
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0118]
movzx ecx, byte ptr [ebx]
cmp ecx, 47
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0115
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
jmp .Lt_0114
.Lt_0115:
push 0
push -1
push offset _Lt_0118
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrAssign@20
.Lt_0114:
.Lt_0113:
.Lt_0111:
.Lt_010F:
.Lt_0109:
lea ebx, [ebp-12]
push ebx
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0117,4
.balign 4
	.lcomm	_Lt_0116,4
.balign 4
	.lcomm	_Lt_0118,12

.section .text
.balign 16

.globl _HREPLACESLASH@8
_HREPLACESLASH@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_011D:
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_0120
.Lt_0123:
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
je .Lt_0125
mov cl, byte ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-4]
mov byte ptr [ebx], cl
.Lt_0125:
.Lt_0124:
.Lt_0121:
inc dword ptr [ebp-4]
.Lt_0120:
mov ecx, dword ptr [ebp-8]
cmp dword ptr [ebp-4], ecx
jle .Lt_0123
.Lt_0122:
.Lt_011E:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _PATHSTRIPDIV@4
_PATHSTRIPDIV@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0128:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .Lt_012B
dec dword ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-16]
mov al, byte ptr [ebx]
mov byte ptr [ebp-20], al
movzx eax, byte ptr [ebp-20]
cmp eax, 47
je .Lt_012F
.Lt_0130:
movzx eax, byte ptr [ebp-20]
cmp eax, 92
jne .Lt_012E
.Lt_012F:
push 0
push -1
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .Lt_0129
.Lt_012E:
.Lt_012C:
.Lt_012B:
.Lt_012A:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_0129:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _PATHISABSOLUTE@4
_PATHISABSOLUTE@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0131:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
test ebx, ebx
je .Lt_0134
mov ebx, dword ptr [ebp+8]
mov al, byte ptr [ebx+1]
mov byte ptr [ebp-8], al
movzx eax, byte ptr [ebp-8]
cmp eax, 58
jne .Lt_0137
.Lt_0139:
mov dword ptr [ebp-4], -1
jmp .Lt_0135
.Lt_0137:
movzx eax, byte ptr [ebp-8]
cmp eax, 92
jne .Lt_013A
.Lt_013B:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 92
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_013A:
.Lt_0135:
.Lt_0134:
.Lt_0133:
.Lt_0132:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HCHECKFILEFORMAT@4
_HCHECKFILEFORMAT@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_013D:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-12], 0
push 4
lea eax, [ebp-8]
push eax
push 0
push dword ptr [ebp+8]
call _fb_FileGet@16
test eax, eax
jne .Lt_0140
cmp dword ptr [ebp-8], -131072
jne .Lt_0142
mov dword ptr [ebp-12], 5
jmp .Lt_0141
.Lt_0142:
cmp dword ptr [ebp-8], 65279
jne .Lt_0143
mov dword ptr [ebp-12], 4
jmp .Lt_0141
.Lt_0143:
and dword ptr [ebp-8], 16777215
cmp dword ptr [ebp-8], 12565487
jne .Lt_0145
mov dword ptr [ebp-12], 1
jmp .Lt_0144
.Lt_0145:
and dword ptr [ebp-8], 65535
cmp dword ptr [ebp-8], 65279
jne .Lt_0147
mov dword ptr [ebp-12], 2
jmp .Lt_0146
.Lt_0147:
cmp dword ptr [ebp-8], 65534
jne .Lt_0148
mov dword ptr [ebp-12], 3
.Lt_0148:
.Lt_0146:
.Lt_0144:
.Lt_0141:
cmp dword ptr [ebp-12], 0
jne .Lt_014A
.Lt_014B:
push 1
push dword ptr [ebp+8]
call _fb_FileSeek@8
test eax, eax
je .Lt_014C
push 0
push 0
push offset _Lt_00B7
push 425
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_014C:
jmp .Lt_0149
.Lt_014A:
cmp dword ptr [ebp-12], 1
jne .Lt_014D
.Lt_014E:
push 4
push dword ptr [ebp+8]
call _fb_FileSeek@8
test eax, eax
je .Lt_014F
push 0
push 0
push offset _Lt_00B7
push 428
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_014F:
jmp .Lt_0149
.Lt_014D:
cmp dword ptr [ebp-12], 2
je .Lt_0151
.Lt_0152:
cmp dword ptr [ebp-12], 3
jne .Lt_0150
.Lt_0151:
push 3
push dword ptr [ebp+8]
call _fb_FileSeek@8
test eax, eax
je .Lt_0153
push 0
push 0
push offset _Lt_00B7
push 432
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0153:
.Lt_0150:
.Lt_0149:
.Lt_0140:
.Lt_013F:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_013E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HCURDIR@0
_HCURDIR@0:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0154:
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
call _fb_CurDir@0
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0155:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PATHSTRIPCURDIR@4
_PATHSTRIPCURDIR@4:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0157:
push 0
push -1
push 2
push offset _Lt_001A
push -1
call _HCURDIR@0
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
push -1
lea eax, [ebp-24]
push eax
push -1
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
push eax
push dword ptr [ebp+8]
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_015B
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
push -1
lea ebx, [ebp-24]
push ebx
mov ebx, eax
call _fb_StrLen@8
sub ebx, eax
push ebx
push dword ptr [ebp+8]
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_015A
.Lt_015B:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_015A:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0158:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HISVALIDSYMBOLNAME@4
_HISVALIDSYMBOLNAME@4:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.Lt_015C:
cmp dword ptr [ebp+8], 0
jne .Lt_015F
jmp .Lt_015D
.Lt_015F:
push 0
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0161
jmp .Lt_015D
.Lt_0161:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 97
jb .Lt_0164
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
cmp eax, 122
setbe bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
jmp .Lt_0183
.Lt_0164:
mov dword ptr [ebp-12], 0
.Lt_0183:
cmp dword ptr [ebp-12], 0
jne .Lt_0169
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
cmp eax, 90
ja .Lt_0167
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 65
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-16], eax
jmp .Lt_0185
.Lt_0167:
mov dword ptr [ebp-16], 0
.Lt_0185:
mov eax, dword ptr [ebp-16]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-20], eax
jmp .Lt_0184
.Lt_0169:
mov dword ptr [ebp-20], -1
.Lt_0184:
cmp dword ptr [ebp-20], 0
jne .Lt_016C
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 95
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
jmp .Lt_0186
.Lt_016C:
mov dword ptr [ebp-24], -1
.Lt_0186:
cmp dword ptr [ebp-24], 0
jne .Lt_016F
jmp .Lt_015D
.Lt_016F:
mov dword ptr [ebp-28], 1
mov eax, dword ptr [ebp-8]
dec eax
mov dword ptr [ebp-32], eax
jmp .Lt_0171
.Lt_0174:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 97
jb .Lt_0175
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 122
setbe bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-36], ebx
jmp .Lt_0187
.Lt_0175:
mov dword ptr [ebp-36], 0
.Lt_0187:
cmp dword ptr [ebp-36], 0
jne .Lt_0179
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 90
ja .Lt_0177
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 65
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-40], eax
jmp .Lt_0189
.Lt_0177:
mov dword ptr [ebp-40], 0
.Lt_0189:
mov eax, dword ptr [ebp-40]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-44], eax
jmp .Lt_0188
.Lt_0179:
mov dword ptr [ebp-44], -1
.Lt_0188:
cmp dword ptr [ebp-44], 0
jne .Lt_017B
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 95
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
jmp .Lt_018A
.Lt_017B:
mov dword ptr [ebp-48], -1
.Lt_018A:
cmp dword ptr [ebp-48], 0
jne .Lt_017F
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-28]
movzx ebx, byte ptr [eax]
cmp ebx, 57
ja .Lt_017D
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-28]
movzx eax, byte ptr [ebx]
cmp eax, 48
setae bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-52], ebx
jmp .Lt_018C
.Lt_017D:
mov dword ptr [ebp-52], 0
.Lt_018C:
mov ebx, dword ptr [ebp-52]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-56], ebx
jmp .Lt_018B
.Lt_017F:
mov dword ptr [ebp-56], -1
.Lt_018B:
cmp dword ptr [ebp-56], 0
jne .Lt_0182
jmp .Lt_015D
.Lt_0182:
.Lt_0172:
inc dword ptr [ebp-28]
.Lt_0171:
mov ebx, dword ptr [ebp-32]
cmp dword ptr [ebp-28], ebx
jle .Lt_0174
.Lt_0173:
mov dword ptr [ebp-4], -1
.Lt_015D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _STRUNQUOTE@4
_STRUNQUOTE@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_019D:
push dword ptr [ebp+8]
call _STRISQUOTED@4
test eax, eax
je .Lt_01A0
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
add eax, -2
push eax
push 2
push dword ptr [ebp+8]
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .Lt_019E
.Lt_01A0:
.Lt_019F:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.Lt_019E:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
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
_HFINDEXTBEGIN@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D3:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-8], eax
jmp .Lt_00D5
.Lt_00D8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-8]
mov al, byte ptr [ebx]
mov byte ptr [ebp-12], al
movzx eax, byte ptr [ebp-12]
cmp eax, 46
jne .Lt_00DB
.Lt_00DC:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00D4
jmp .Lt_00D9
.Lt_00DB:
movzx eax, byte ptr [ebp-12]
cmp eax, 92
je .Lt_00E0
.Lt_00E1:
movzx eax, byte ptr [ebp-12]
cmp eax, 47
jne .Lt_00DD
.Lt_00E0:
jmp .Lt_00D7
.Lt_00DD:
.Lt_00D9:
.Lt_00D6:
dec dword ptr [ebp-8]
.Lt_00D5:
cmp dword ptr [ebp-8], 0
jge .Lt_00D8
.Lt_00D7:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
mov dword ptr [ebp-4], eax
.Lt_00D4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_STRISQUOTED@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0197:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
jge .Lt_019A
mov dword ptr [ebp-4], 0
jmp .Lt_0198
.Lt_019A:
.Lt_0199:
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
.Lt_0198:
mov eax, dword ptr [ebp-4]
pop esi
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
_Lt_0007:	.ascii	".\0"
.balign 4
_Lt_0008:	.ascii	"1.\0"
.balign 4
_Lt_001A:	.ascii	"\\\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_008A:	.ascii	"0x\0"
.balign 4
_Lt_0090:	.ascii	"-0x\0"
.balign 4
_Lt_0097:	.ascii	"0.\0"
.balign 4
_Lt_009A:	.ascii	"p\0"
.balign 4
_Lt_009B:	.ascii	"+\0"
.balign 4
_Lt_009C:	.ascii	"-\0"
.balign 4
_Lt_00B7:	.ascii	"src/compiler/hlp.bas\0"
.balign 4
_Lt_00DF:	.ascii	"/\0"
