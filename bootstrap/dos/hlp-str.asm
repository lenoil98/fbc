	.intel_syntax noprefix

.section .text
.balign 16

.globl _ZSTRASSIGN
_ZSTRASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_005E:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0061
mov dword ptr [ebp-8], 0
jmp .Lt_0060
.Lt_0061:
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_0060:
cmp dword ptr [ebp-8], 0
jne .Lt_0063
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0065
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .Lt_005F
.Lt_0065:
.Lt_0064:
.Lt_0063:
.Lt_0062:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_0067
mov dword ptr [ebp-4], 0
jmp .Lt_0066
.Lt_0067:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0066:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .Lt_0069
mov eax, dword ptr [ebp-8]
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_0069:
.Lt_0068:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_006B
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_StrAssign
add esp, 20
.Lt_006B:
.Lt_006A:
.Lt_005F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ZSTRASSIGNW
_ZSTRASSIGNW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_006C:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_006F
mov dword ptr [ebp-8], 0
jmp .Lt_006E
.Lt_006F:
push dword ptr [ebp+12]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_006E:
cmp dword ptr [ebp-8], 0
jne .Lt_0071
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0073
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .Lt_006D
.Lt_0073:
.Lt_0072:
.Lt_0071:
.Lt_0070:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_0075
mov dword ptr [ebp-4], 0
jmp .Lt_0074
.Lt_0075:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_0074:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .Lt_0077
mov eax, dword ptr [ebp-8]
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_0077:
.Lt_0076:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0079
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_WstrAssignToA
add esp, 16
.Lt_0079:
.Lt_0078:
.Lt_006D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ZSTRCONCATASSIGN
_ZSTRCONCATASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_007A:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_007D
jmp .Lt_007B
.Lt_007D:
.Lt_007C:
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_007F
jmp .Lt_007B
.Lt_007F:
.Lt_007E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_0081
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp-8]
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_0080
.Lt_0081:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _XREALLOCATE
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_0080:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0083
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-4]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_0083:
.Lt_0082:
.Lt_007B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ZSTRCONCATASSIGNW
_ZSTRCONCATASSIGNW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0084:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0087
jmp .Lt_0085
.Lt_0087:
.Lt_0086:
push dword ptr [ebp+12]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0089
jmp .Lt_0085
.Lt_0089:
.Lt_0088:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_008B
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp-8]
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_008A
.Lt_008B:
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _XREALLOCATE
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_008A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_008D
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-4]
push ebx
call _fb_WstrAssignToA
add esp, 16
.Lt_008D:
.Lt_008C:
.Lt_0085:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _WSTRASSIGN
_WSTRASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_008E:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0091
mov dword ptr [ebp-8], 0
jmp .Lt_0090
.Lt_0091:
push dword ptr [ebp+12]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0090:
cmp dword ptr [ebp-8], 0
jne .Lt_0093
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0095
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .Lt_008F
.Lt_0095:
.Lt_0094:
.Lt_0093:
.Lt_0092:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_0097
mov dword ptr [ebp-4], 0
jmp .Lt_0096
.Lt_0097:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0096:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .Lt_0099
mov eax, dword ptr [ebp-8]
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_0099:
.Lt_0098:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_009B
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_WstrAssign
add esp, 12
.Lt_009B:
.Lt_009A:
.Lt_008F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _WSTRASSIGNA
_WSTRASSIGNA:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_009C:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_009F
mov dword ptr [ebp-8], 0
jmp .Lt_009E
.Lt_009F:
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
.Lt_009E:
cmp dword ptr [ebp-8], 0
jne .Lt_00A1
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00A3
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .Lt_009D
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00A5
mov dword ptr [ebp-4], 0
jmp .Lt_00A4
.Lt_00A5:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_00A4:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .Lt_00A7
mov eax, dword ptr [ebp-8]
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_00A7:
.Lt_00A6:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00A9
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_WstrAssignFromA
add esp, 16
.Lt_00A9:
.Lt_00A8:
.Lt_009D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _WSTRCONCATASSIGN
_WSTRCONCATASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00AA:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_00AD
jmp .Lt_00AB
.Lt_00AD:
.Lt_00AC:
push dword ptr [ebp+12]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00AF
jmp .Lt_00AB
.Lt_00AF:
.Lt_00AE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00B1
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp-8]
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_00B0
.Lt_00B1:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _XREALLOCATE
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_00B0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00B3
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-4]
push ebx
call _fb_WstrAssign
add esp, 12
.Lt_00B3:
.Lt_00B2:
.Lt_00AB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _WSTRCONCATASSIGNW
_WSTRCONCATASSIGNW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00B4:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_00B7
jmp .Lt_00B5
.Lt_00B7:
.Lt_00B6:
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00B9
jmp .Lt_00B5
.Lt_00B9:
.Lt_00B8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00BB
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp-8]
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_00BA
.Lt_00BB:
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _XREALLOCATE
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_00BA:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00BD
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-4]
push ebx
call _fb_WstrAssignFromA
add esp, 16
.Lt_00BD:
.Lt_00BC:
.Lt_00B5:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _ZSTRDUP
_ZSTRDUP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00BE:
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
inc eax
push eax
call _XALLOCATE
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [ebp-8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00BF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _WSTRDUP
_WSTRDUP:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00C0:
mov dword ptr [ebp-8], 0
push dword ptr [ebp+8]
call _fb_WstrLen
add esp, 4
inc eax
push eax
call _XALLOCATE
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp+8]
push 0
push dword ptr [ebp-8]
call _fb_WstrAssign
add esp, 12
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00C1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HREPLACE
_HREPLACE:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00C2:
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [_Lt_00CA], eax
push 0
push dword ptr [ebp+16]
call _fb_StrLen
add esp, 8
mov dword ptr [_Lt_00CB], eax
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset _Lt_00CC
call _fb_StrAssign
add esp, 20
mov dword ptr [_Lt_00CD], 0
.Lt_00C4:
push dword ptr [ebp+12]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push offset _Lt_00CC
mov eax, dword ptr [_Lt_00CD]
inc eax
push eax
call _fb_StrInstr
add esp, 12
mov dword ptr [_Lt_00CD], eax
cmp dword ptr [_Lt_00CD], 0
jne .Lt_00C8
jmp .Lt_00C5
.Lt_00C8:
.Lt_00C7:
push 0
push -1
push -1
mov eax, dword ptr [_Lt_00CA]
add eax, dword ptr [_Lt_00CD]
push eax
push offset _Lt_00CC
call _fb_StrMid
add esp, 12
push eax
push -1
push offset _Lt_00CE
call _fb_StrAssign
add esp, 20
push 0
push -1
mov eax, dword ptr [_Lt_00CD]
dec eax
push eax
push offset _Lt_00CC
call _fb_LEFT
add esp, 8
push eax
push -1
push offset _Lt_00CC
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [ebp+16]
push -1
push offset _Lt_00CC
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_00CC
call _fb_StrAssign
add esp, 20
push 0
push -1
push offset _Lt_00CE
push -1
push offset _Lt_00CC
call _fb_StrConcatAssign
add esp, 20
mov eax, dword ptr [_Lt_00CB]
add eax, dword ptr [_Lt_00CD]
dec eax
mov dword ptr [_Lt_00CD], eax
.Lt_00C6:
jmp .Lt_00C4
.Lt_00C5:
push 0
push -1
push offset _Lt_00CC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_00C3:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00CA,4
.balign 4
	.lcomm	_Lt_00CB,4
.balign 4
	.lcomm	_Lt_00CD,4
.balign 4
	.lcomm	_Lt_00CC,12
.balign 4
	.lcomm	_Lt_00CE,12

.section .text
.balign 16

.globl _HREPLACEW
_HREPLACEW:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00CF:
push dword ptr [ebp+12]
call _fb_WstrLen
add esp, 4
mov dword ptr [_Lt_00D8], eax
push dword ptr [ebp+16]
call _fb_WstrLen
add esp, 4
mov dword ptr [_Lt_00D9], eax
push dword ptr [ebp+8]
push offset _Lt_00DA
call _DWSTRASSIGN
add esp, 8
mov dword ptr [_Lt_00DB], 0
.Lt_00D1:
push dword ptr [ebp+12]
push dword ptr [_Lt_00DA]
mov eax, dword ptr [_Lt_00DB]
inc eax
push eax
call _fb_WstrInstr
add esp, 12
mov dword ptr [_Lt_00DB], eax
cmp dword ptr [_Lt_00DB], 0
jne .Lt_00D5
jmp .Lt_00D2
.Lt_00D5:
.Lt_00D4:
push -1
mov eax, dword ptr [_Lt_00D8]
add eax, dword ptr [_Lt_00DB]
push eax
push dword ptr [_Lt_00DA]
call _fb_WstrMid
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push offset _Lt_00DC
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-8]
call _fb_WstrDelete
add esp, 4
mov eax, dword ptr [_Lt_00DB]
dec eax
push eax
push dword ptr [_Lt_00DA]
call _fb_WstrLeft
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push offset _Lt_00DA
call _DWSTRASSIGN
add esp, 8
push dword ptr [ebp-12]
call _fb_WstrDelete
add esp, 4
push dword ptr [ebp+16]
push offset _Lt_00DA
call _DWSTRCONCATASSIGN
add esp, 8
push dword ptr [_Lt_00DC]
push offset _Lt_00DA
call _DWSTRCONCATASSIGN
add esp, 8
mov eax, dword ptr [_Lt_00D9]
add eax, dword ptr [_Lt_00DB]
dec eax
mov dword ptr [_Lt_00DB], eax
.Lt_00D3:
jmp .Lt_00D1
.Lt_00D2:
mov eax, dword ptr [_Lt_00DA]
mov dword ptr [ebp-4], eax
.Lt_00D0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00D8,4
.balign 4
	.lcomm	_Lt_00D9,4
.balign 4
	.lcomm	_Lt_00DB,4
.balign 4
	.lcomm	_Lt_00DA,12
.balign 4
	.lcomm	_Lt_00DC,12

.section .text
.balign 16

.globl _HREPLACECHAR
_HREPLACECHAR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DD:
mov dword ptr [ebp-8], 0
push 0
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
dec eax
mov dword ptr [ebp-12], eax
jmp .Lt_00E0
.Lt_00E3:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp+12]
cmp ebx, eax
jne .Lt_00E5
mov al, byte ptr [ebp+16]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-8]
mov byte ptr [ebx], al
.Lt_00E5:
.Lt_00E4:
.Lt_00E1:
inc dword ptr [ebp-8]
.Lt_00E0:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .Lt_00E3
.Lt_00E2:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00DE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HREESCAPE
_HREESCAPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E6:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
push 0
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [_Lt_0143], eax
cmp dword ptr [_Lt_0143], 0
jne .Lt_00E9
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00E7
.Lt_00E9:
.Lt_00E8:
mov eax, dword ptr [_Lt_0143]
sal eax, 1
push eax
push offset _Lt_0144
call _DZSTRALLOCATE
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_0145], eax
mov eax, dword ptr [_Lt_0144]
mov dword ptr [_Lt_0146], eax
mov eax, dword ptr [_Lt_0145]
add eax, dword ptr [_Lt_0143]
mov dword ptr [_Lt_0147], eax
.Lt_00EA:
mov eax, dword ptr [_Lt_0147]
cmp dword ptr [_Lt_0145], eax
jae .Lt_00EB
mov eax, dword ptr [_Lt_0145]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_0148], ebx
inc dword ptr [_Lt_0145]
cmp dword ptr [_Lt_0148], 92
jne .Lt_00ED
mov ebx, dword ptr [_Lt_0147]
cmp dword ptr [_Lt_0145], ebx
jb .Lt_00EF
jmp .Lt_00EB
.Lt_00EF:
mov ebx, dword ptr [_Lt_0146]
mov byte ptr [ebx], 27
inc dword ptr [_Lt_0146]
mov dword ptr [_Lt_0149], 0
mov ebx, dword ptr [_Lt_0145]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_0148], eax
inc dword ptr [_Lt_0145]
cmp dword ptr [_Lt_0148], 48
jl .Lt_00F1
cmp dword ptr [_Lt_0148], 57
jg .Lt_00F1
.Lt_00F2:
mov dword ptr [_Lt_0149], -1
mov eax, dword ptr [_Lt_0148]
add eax, -48
mov dword ptr [_Lt_014A], eax
mov dword ptr [_Lt_014B], 2
.Lt_00F6:
mov eax, dword ptr [_Lt_0147]
cmp dword ptr [_Lt_0145], eax
jb .Lt_00F8
jmp .Lt_00F5
.Lt_00F8:
mov eax, dword ptr [_Lt_0145]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_0148], ebx
mov ebx, dword ptr [_Lt_0148]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0148]
cmp eax, 57
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_00FA
jmp .Lt_00F5
.Lt_00FA:
.Lt_00F9:
mov eax, dword ptr [_Lt_014A]
imul eax, 10
add eax, dword ptr [_Lt_0148]
add eax, -48
mov dword ptr [_Lt_014A], eax
inc dword ptr [_Lt_0145]
.Lt_00F4:
inc dword ptr [_Lt_014B]
.Lt_00F3:
cmp dword ptr [_Lt_014B], 3
jle .Lt_00F6
.Lt_00F5:
jmp .Lt_00F0
.Lt_00F1:
cmp dword ptr [_Lt_0148], 38
je .Lt_00FC
.Lt_00FD:
cmp dword ptr [_Lt_0148], 88
je .Lt_00FC
.Lt_00FE:
cmp dword ptr [_Lt_0148], 120
jne .Lt_00FB
.Lt_00FC:
mov eax, dword ptr [_Lt_0147]
cmp dword ptr [_Lt_0145], eax
jb .Lt_0100
jmp .Lt_00EB
.Lt_0100:
mov dword ptr [_Lt_014A], 0
cmp dword ptr [_Lt_0148], 38
jne .Lt_0102
mov eax, dword ptr [_Lt_0145]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_0148], ebx
inc dword ptr [_Lt_0145]
jmp .Lt_0101
.Lt_0102:
mov dword ptr [_Lt_0148], 72
.Lt_0101:
mov ebx, dword ptr [_Lt_0148]
mov dword ptr [ebp-8], ebx
jmp .Lt_0104
.Lt_0106:
mov dword ptr [_Lt_0149], -1
mov dword ptr [_Lt_014B], 1
.Lt_010A:
mov ebx, dword ptr [_Lt_0147]
cmp dword ptr [_Lt_0145], ebx
jb .Lt_010C
jmp .Lt_0109
.Lt_010C:
mov ebx, dword ptr [_Lt_0145]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_0148], eax
cmp dword ptr [_Lt_0148], 97
jl .Lt_0110
cmp dword ptr [_Lt_0148], 102
jle .Lt_010F
.Lt_0110:
cmp dword ptr [_Lt_0148], 65
jl .Lt_0111
cmp dword ptr [_Lt_0148], 70
jle .Lt_010F
.Lt_0111:
cmp dword ptr [_Lt_0148], 48
jl .Lt_010E
cmp dword ptr [_Lt_0148], 57
jg .Lt_010E
.Lt_010F:
add dword ptr [_Lt_0148], -48
cmp dword ptr [_Lt_0148], 9
jle .Lt_0113
add dword ptr [_Lt_0148], -7
.Lt_0113:
.Lt_0112:
cmp dword ptr [_Lt_0148], 16
jle .Lt_0115
add dword ptr [_Lt_0148], -32
.Lt_0115:
.Lt_0114:
mov eax, dword ptr [_Lt_014A]
sal eax, 4
add eax, dword ptr [_Lt_0148]
mov dword ptr [_Lt_014A], eax
jmp .Lt_010D
.Lt_010E:
jmp .Lt_0109
.Lt_0116:
.Lt_010D:
inc dword ptr [_Lt_0145]
.Lt_0108:
inc dword ptr [_Lt_014B]
.Lt_0107:
cmp dword ptr [_Lt_014B], 2
jle .Lt_010A
.Lt_0109:
jmp .Lt_0103
.Lt_0117:
mov dword ptr [_Lt_0149], -1
mov dword ptr [_Lt_014B], 1
.Lt_011B:
mov eax, dword ptr [_Lt_0147]
cmp dword ptr [_Lt_0145], eax
jb .Lt_011D
jmp .Lt_011A
.Lt_011D:
mov eax, dword ptr [_Lt_0145]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_0148], ebx
mov ebx, dword ptr [_Lt_0148]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0148]
cmp eax, 55
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_011F
jmp .Lt_011A
.Lt_011F:
.Lt_011E:
mov eax, dword ptr [_Lt_014A]
sal eax, 3
add eax, dword ptr [_Lt_0148]
add eax, -48
mov dword ptr [_Lt_014A], eax
inc dword ptr [_Lt_0145]
.Lt_0119:
inc dword ptr [_Lt_014B]
.Lt_0118:
cmp dword ptr [_Lt_014B], 3
jle .Lt_011B
.Lt_011A:
jmp .Lt_0103
.Lt_0120:
mov dword ptr [_Lt_0149], -1
mov dword ptr [_Lt_014B], 1
.Lt_0124:
mov eax, dword ptr [_Lt_0147]
cmp dword ptr [_Lt_0145], eax
jb .Lt_0126
jmp .Lt_0123
.Lt_0126:
mov eax, dword ptr [_Lt_0145]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_0148], ebx
mov ebx, dword ptr [_Lt_0148]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0148]
cmp eax, 49
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0128
jmp .Lt_0123
.Lt_0128:
.Lt_0127:
mov eax, dword ptr [_Lt_014A]
sal eax, 1
add eax, dword ptr [_Lt_0148]
add eax, -48
mov dword ptr [_Lt_014A], eax
inc dword ptr [_Lt_0145]
.Lt_0122:
inc dword ptr [_Lt_014B]
.Lt_0121:
cmp dword ptr [_Lt_014B], 8
jle .Lt_0124
.Lt_0123:
jmp .Lt_0103
.Lt_0104:
mov eax, dword ptr [ebp-8]
add eax, 4294967230
cmp eax, 45
ja .Lt_0103
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0129+eax*4-264]
_.LT_0129:
.int .Lt_0120
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0106
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0117
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0120
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0106
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0103
.int .Lt_0117
.Lt_0103:
jmp .Lt_00F0
.Lt_00FB:
cmp dword ptr [_Lt_0148], 97
jne .Lt_012A
.Lt_012B:
mov dword ptr [_Lt_0149], -1
mov dword ptr [_Lt_014A], 7
jmp .Lt_00F0
.Lt_012A:
cmp dword ptr [_Lt_0148], 117
jne .Lt_012C
.Lt_012D:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov al, byte ptr [_Lt_0148]
mov ebx, dword ptr [_Lt_0146]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0146]
mov dword ptr [_Lt_014B], 1
.Lt_0131:
push 0
push 0
push dword ptr [_Lt_0145]
push 0
push dword ptr [_Lt_0146]
call _fb_StrAssign
add esp, 20
inc dword ptr [_Lt_0146]
inc dword ptr [_Lt_0145]
.Lt_012F:
inc dword ptr [_Lt_014B]
.Lt_012E:
cmp dword ptr [_Lt_014B], 4
jle .Lt_0131
.Lt_0130:
mov eax, dword ptr [ebp+12]
add dword ptr [eax], 2
jmp .Lt_00EA
jmp .Lt_00F0
.Lt_012C:
cmp dword ptr [_Lt_0148], 85
jne .Lt_0132
.Lt_0133:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [_Lt_0146]
mov byte ptr [eax], 85
inc dword ptr [_Lt_0146]
mov dword ptr [_Lt_014B], 1
.Lt_0137:
push 0
push 0
push dword ptr [_Lt_0145]
push 0
push dword ptr [_Lt_0146]
call _fb_StrAssign
add esp, 20
inc dword ptr [_Lt_0146]
inc dword ptr [_Lt_0145]
.Lt_0135:
inc dword ptr [_Lt_014B]
.Lt_0134:
cmp dword ptr [_Lt_014B], 4
jle .Lt_0137
.Lt_0136:
mov eax, dword ptr [_Lt_0146]
mov byte ptr [eax], 27
mov eax, dword ptr [_Lt_0146]
mov byte ptr [eax+1], 85
add dword ptr [_Lt_0146], 2
mov dword ptr [_Lt_014B], 1
.Lt_013B:
push 0
push 0
push dword ptr [_Lt_0145]
push 0
push dword ptr [_Lt_0146]
call _fb_StrAssign
add esp, 20
inc dword ptr [_Lt_0146]
inc dword ptr [_Lt_0145]
.Lt_0139:
inc dword ptr [_Lt_014B]
.Lt_0138:
cmp dword ptr [_Lt_014B], 4
jle .Lt_013B
.Lt_013A:
mov eax, dword ptr [ebp+12]
add dword ptr [eax], 4
jmp .Lt_00EA
.Lt_0132:
.Lt_00F0:
cmp dword ptr [_Lt_0149], 0
je .Lt_013D
cmp dword ptr [_Lt_014A], 255
jbe .Lt_013F
push 0
push 1
push 0
push 8
call _ERRREPORTWARN
add esp, 16
mov dword ptr [_Lt_014A], 255
.Lt_013F:
.Lt_013E:
cmp dword ptr [_Lt_014A], 8
jge .Lt_0141
mov dword ptr [_Lt_0143], 1
jmp .Lt_0140
.Lt_0141:
cmp dword ptr [_Lt_014A], 64
jge .Lt_0142
mov dword ptr [_Lt_0143], 2
jmp .Lt_0140
.Lt_0142:
mov dword ptr [_Lt_0143], 3
.Lt_0140:
mov al, byte ptr [_Lt_0143]
mov ebx, dword ptr [_Lt_0146]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0146]
push 0
push -1
push dword ptr [_Lt_014A]
call _fb_OCT_i
add esp, 4
push eax
push 0
push dword ptr [_Lt_0146]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_Lt_0143]
add dword ptr [_Lt_0146], eax
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .Lt_00EA
.Lt_013D:
.Lt_013C:
.Lt_00ED:
.Lt_00EC:
mov al, byte ptr [_Lt_0148]
mov ebx, dword ptr [_Lt_0146]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0146]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .Lt_00EA
.Lt_00EB:
mov eax, dword ptr [_Lt_0146]
mov byte ptr [eax], 0
mov eax, dword ptr [_Lt_0144]
mov dword ptr [ebp-4], eax
.Lt_00E7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0144,12
.balign 4
	.lcomm	_Lt_0148,4
.balign 4
	.lcomm	_Lt_0143,4
.balign 4
	.lcomm	_Lt_014B,4
.balign 4
	.lcomm	_Lt_014A,4
.balign 4
	.lcomm	_Lt_0149,4
.balign 4
	.lcomm	_Lt_0145,4
.balign 4
	.lcomm	_Lt_0146,4
.balign 4
	.lcomm	_Lt_0147,4

.section .text
.balign 16

.globl _HREESCAPEW
_HREESCAPEW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0152:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
push dword ptr [ebp+8]
call _fb_WstrLen
add esp, 4
mov dword ptr [_Lt_01AD], eax
cmp dword ptr [_Lt_01AD], 0
jne .Lt_0155
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0153
.Lt_0155:
.Lt_0154:
mov eax, dword ptr [_Lt_01AD]
sal eax, 1
push eax
push offset _Lt_01AE
call _DWSTRALLOCATE
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_01AF], eax
mov eax, dword ptr [_Lt_01AE]
mov dword ptr [_Lt_01B0], eax
mov eax, dword ptr [_Lt_01AF]
add eax, dword ptr [_Lt_01AD]
mov dword ptr [_Lt_01B1], eax
.Lt_0156:
mov eax, dword ptr [_Lt_01B1]
cmp dword ptr [_Lt_01AF], eax
jae .Lt_0157
mov eax, dword ptr [_Lt_01AF]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_01B2], ebx
inc dword ptr [_Lt_01AF]
cmp dword ptr [_Lt_01B2], 92
jne .Lt_0159
mov ebx, dword ptr [_Lt_01B1]
cmp dword ptr [_Lt_01AF], ebx
jb .Lt_015B
jmp .Lt_0157
.Lt_015B:
mov ebx, dword ptr [_Lt_01B0]
mov byte ptr [ebx], 27
inc dword ptr [_Lt_01B0]
mov dword ptr [_Lt_01B3], 0
mov ebx, dword ptr [_Lt_01AF]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_01B2], eax
inc dword ptr [_Lt_01AF]
cmp dword ptr [_Lt_01B2], 48
jl .Lt_015D
cmp dword ptr [_Lt_01B2], 57
jg .Lt_015D
.Lt_015E:
mov dword ptr [_Lt_01B3], -1
mov eax, dword ptr [_Lt_01B2]
add eax, -48
mov ebx, eax
mov dword ptr [_Lt_01B4], ebx
mov dword ptr [_Lt_01B5], 2
.Lt_0162:
mov ebx, dword ptr [_Lt_01B1]
cmp dword ptr [_Lt_01AF], ebx
jb .Lt_0164
jmp .Lt_0161
.Lt_0164:
mov ebx, dword ptr [_Lt_01AF]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_01B2], eax
mov eax, dword ptr [_Lt_01B2]
cmp eax, 48
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_01B2]
cmp ebx, 57
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0166
jmp .Lt_0161
.Lt_0166:
.Lt_0165:
mov ebx, dword ptr [_Lt_01B4]
imul ebx, 10
mov eax, dword ptr [_Lt_01B2]
add eax, -48
mov ecx, eax
add ebx, ecx
mov dword ptr [_Lt_01B4], ebx
inc dword ptr [_Lt_01AF]
.Lt_0160:
inc dword ptr [_Lt_01B5]
.Lt_015F:
cmp dword ptr [_Lt_01B5], 5
jle .Lt_0162
.Lt_0161:
jmp .Lt_015C
.Lt_015D:
cmp dword ptr [_Lt_01B2], 38
je .Lt_0168
.Lt_0169:
cmp dword ptr [_Lt_01B2], 88
je .Lt_0168
.Lt_016A:
cmp dword ptr [_Lt_01B2], 120
jne .Lt_0167
.Lt_0168:
mov ebx, dword ptr [_Lt_01B1]
cmp dword ptr [_Lt_01AF], ebx
jb .Lt_016C
jmp .Lt_0157
.Lt_016C:
mov dword ptr [_Lt_01B4], 0
cmp dword ptr [_Lt_01B2], 38
jne .Lt_016E
mov ebx, dword ptr [_Lt_01AF]
movzx ecx, byte ptr [ebx]
mov dword ptr [_Lt_01B2], ecx
inc dword ptr [_Lt_01AF]
jmp .Lt_016D
.Lt_016E:
mov dword ptr [_Lt_01B2], 72
.Lt_016D:
mov ecx, dword ptr [_Lt_01B2]
mov dword ptr [ebp-8], ecx
jmp .Lt_0170
.Lt_0172:
mov dword ptr [_Lt_01B3], -1
mov dword ptr [_Lt_01B5], 1
.Lt_0176:
mov ecx, dword ptr [_Lt_01B1]
cmp dword ptr [_Lt_01AF], ecx
jb .Lt_0178
jmp .Lt_0175
.Lt_0178:
mov ecx, dword ptr [_Lt_01AF]
movzx ebx, byte ptr [ecx]
mov dword ptr [_Lt_01B2], ebx
cmp dword ptr [_Lt_01B2], 97
jl .Lt_017C
cmp dword ptr [_Lt_01B2], 102
jle .Lt_017B
.Lt_017C:
cmp dword ptr [_Lt_01B2], 65
jl .Lt_017D
cmp dword ptr [_Lt_01B2], 70
jle .Lt_017B
.Lt_017D:
cmp dword ptr [_Lt_01B2], 48
jl .Lt_017A
cmp dword ptr [_Lt_01B2], 57
jg .Lt_017A
.Lt_017B:
add dword ptr [_Lt_01B2], -48
cmp dword ptr [_Lt_01B2], 9
jle .Lt_017F
add dword ptr [_Lt_01B2], -7
.Lt_017F:
.Lt_017E:
cmp dword ptr [_Lt_01B2], 16
jle .Lt_0181
add dword ptr [_Lt_01B2], -32
.Lt_0181:
.Lt_0180:
mov ebx, dword ptr [_Lt_01B4]
shl ebx, 4
add ebx, dword ptr [_Lt_01B2]
mov dword ptr [_Lt_01B4], ebx
jmp .Lt_0179
.Lt_017A:
jmp .Lt_0175
.Lt_0182:
.Lt_0179:
inc dword ptr [_Lt_01AF]
.Lt_0174:
inc dword ptr [_Lt_01B5]
.Lt_0173:
cmp dword ptr [_Lt_01B5], 4
jle .Lt_0176
.Lt_0175:
jmp .Lt_016F
.Lt_0183:
mov dword ptr [_Lt_01B3], -1
mov dword ptr [_Lt_01B5], 1
.Lt_0187:
mov ebx, dword ptr [_Lt_01B1]
cmp dword ptr [_Lt_01AF], ebx
jb .Lt_0189
jmp .Lt_0186
.Lt_0189:
mov ebx, dword ptr [_Lt_01AF]
movzx ecx, byte ptr [ebx]
mov dword ptr [_Lt_01B2], ecx
mov ecx, dword ptr [_Lt_01B2]
cmp ecx, 48
setl cl
shr ecx, 1
sbb ecx, ecx
mov ebx, dword ptr [_Lt_01B2]
cmp ebx, 55
setg bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .Lt_018B
jmp .Lt_0186
.Lt_018B:
.Lt_018A:
mov ebx, dword ptr [_Lt_01B4]
shl ebx, 3
mov ecx, dword ptr [_Lt_01B2]
add ecx, -48
mov eax, ecx
add ebx, eax
mov dword ptr [_Lt_01B4], ebx
inc dword ptr [_Lt_01AF]
.Lt_0185:
inc dword ptr [_Lt_01B5]
.Lt_0184:
cmp dword ptr [_Lt_01B5], 6
jle .Lt_0187
.Lt_0186:
jmp .Lt_016F
.Lt_018C:
mov dword ptr [_Lt_01B3], -1
mov dword ptr [_Lt_01B5], 1
.Lt_0190:
mov ebx, dword ptr [_Lt_01B1]
cmp dword ptr [_Lt_01AF], ebx
jb .Lt_0192
jmp .Lt_018F
.Lt_0192:
mov ebx, dword ptr [_Lt_01AF]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_01B2], eax
mov eax, dword ptr [_Lt_01B2]
cmp eax, 48
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_01B2]
cmp ebx, 49
setg bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0194
jmp .Lt_018F
.Lt_0194:
.Lt_0193:
mov ebx, dword ptr [_Lt_01B4]
shl ebx, 1
mov eax, dword ptr [_Lt_01B2]
add eax, -48
mov ecx, eax
add ebx, ecx
mov dword ptr [_Lt_01B4], ebx
inc dword ptr [_Lt_01AF]
.Lt_018E:
inc dword ptr [_Lt_01B5]
.Lt_018D:
cmp dword ptr [_Lt_01B5], 16
jle .Lt_0190
.Lt_018F:
jmp .Lt_016F
.Lt_0170:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967230
cmp ebx, 45
ja .Lt_016F
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.LT_0195+ebx*4-264]
_.LT_0195:
.int .Lt_018C
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_0172
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_0183
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_018C
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_0172
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_0183
.Lt_016F:
jmp .Lt_015C
.Lt_0167:
cmp dword ptr [_Lt_01B2], 117
jne .Lt_0196
.Lt_0197:
mov bl, byte ptr [_Lt_01B2]
mov ecx, dword ptr [_Lt_01B0]
mov byte ptr [ecx], bl
inc dword ptr [_Lt_01B0]
mov dword ptr [_Lt_01B5], 1
.Lt_019B:
push dword ptr [_Lt_01AF]
push 0
push dword ptr [_Lt_01B0]
call _fb_WstrAssign
add esp, 12
inc dword ptr [_Lt_01B0]
inc dword ptr [_Lt_01AF]
.Lt_0199:
inc dword ptr [_Lt_01B5]
.Lt_0198:
cmp dword ptr [_Lt_01B5], 4
jle .Lt_019B
.Lt_019A:
mov ebx, dword ptr [ebp+12]
add dword ptr [ebx], 2
jmp .Lt_0156
jmp .Lt_015C
.Lt_0196:
cmp dword ptr [_Lt_01B2], 85
jne .Lt_019C
.Lt_019D:
mov ebx, dword ptr [_Lt_01B0]
mov byte ptr [ebx], 85
inc dword ptr [_Lt_01B0]
mov dword ptr [_Lt_01B5], 1
.Lt_01A1:
push dword ptr [_Lt_01AF]
push 0
push dword ptr [_Lt_01B0]
call _fb_WstrAssign
add esp, 12
inc dword ptr [_Lt_01B0]
inc dword ptr [_Lt_01AF]
.Lt_019F:
inc dword ptr [_Lt_01B5]
.Lt_019E:
cmp dword ptr [_Lt_01B5], 4
jle .Lt_01A1
.Lt_01A0:
mov ebx, dword ptr [_Lt_01B0]
mov byte ptr [ebx], 27
mov ebx, dword ptr [_Lt_01B0]
mov byte ptr [ebx+1], 85
add dword ptr [_Lt_01B0], 2
mov dword ptr [_Lt_01B5], 1
.Lt_01A5:
push dword ptr [_Lt_01AF]
push 0
push dword ptr [_Lt_01B0]
call _fb_WstrAssign
add esp, 12
inc dword ptr [_Lt_01B0]
inc dword ptr [_Lt_01AF]
.Lt_01A3:
inc dword ptr [_Lt_01B5]
.Lt_01A2:
cmp dword ptr [_Lt_01B5], 4
jle .Lt_01A5
.Lt_01A4:
mov ebx, dword ptr [ebp+12]
add dword ptr [ebx], 4
jmp .Lt_0156
.Lt_019C:
.Lt_015C:
cmp dword ptr [_Lt_01B3], 0
je .Lt_01A7
cmp dword ptr [_Lt_01B4], 65535
jbe .Lt_01A9
push 0
push 1
push 0
push 8
call _ERRREPORTWARN
add esp, 16
mov dword ptr [_Lt_01B4], 65535
.Lt_01A9:
.Lt_01A8:
mov dword ptr [_Lt_01AD], 1
.Lt_01AA:
cmp dword ptr [_Lt_01B4], 7
jbe .Lt_01AB
shr dword ptr [_Lt_01B4], 3
inc dword ptr [_Lt_01AD]
jmp .Lt_01AA
.Lt_01AB:
mov bl, byte ptr [_Lt_01AD]
mov ecx, dword ptr [_Lt_01B0]
mov byte ptr [ecx], bl
inc dword ptr [_Lt_01B0]
push dword ptr [_Lt_01B4]
call _fb_WstrOct_i
add esp, 4
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push 0
push dword ptr [_Lt_01B0]
call _fb_WstrAssign
add esp, 12
push dword ptr [ebp-8]
call _fb_WstrDelete
add esp, 4
mov eax, dword ptr [_Lt_01AD]
add dword ptr [_Lt_01B0], eax
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .Lt_0156
.Lt_01A7:
.Lt_01A6:
.Lt_0159:
.Lt_0158:
mov al, byte ptr [_Lt_01B2]
mov ebx, dword ptr [_Lt_01B0]
mov byte ptr [ebx], al
inc dword ptr [_Lt_01B0]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .Lt_0156
.Lt_0157:
mov eax, dword ptr [_Lt_01B0]
mov byte ptr [eax], 0
mov eax, dword ptr [_Lt_01AE]
mov dword ptr [ebp-4], eax
.Lt_0153:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01AE,12
.balign 4
	.lcomm	_Lt_01B2,4
.balign 4
	.lcomm	_Lt_01AD,4
.balign 4
	.lcomm	_Lt_01B5,4
.balign 4
	.lcomm	_Lt_01B3,4
.balign 4
	.lcomm	_Lt_01B4,4
.balign 4
	.lcomm	_Lt_01AF,4
.balign 4
	.lcomm	_Lt_01B0,4
.balign 4
	.lcomm	_Lt_01B1,4

.section .text
.balign 16

.globl _HESCAPE
_HESCAPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01BC:
mov dword ptr [_Lt_01D8], 0
push 0
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [_Lt_01D9], eax
cmp dword ptr [_Lt_01D9], 0
jne .Lt_01BF
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_01BD
.Lt_01BF:
.Lt_01BE:
mov eax, dword ptr [_Lt_01D9]
sal eax, 2
push eax
push offset _Lt_01DA
call _DZSTRALLOCATE
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_01DB], eax
mov eax, dword ptr [_Lt_01DA]
mov dword ptr [_Lt_01DC], eax
mov eax, dword ptr [_Lt_01DB]
add eax, dword ptr [_Lt_01D9]
mov dword ptr [_Lt_01DD], eax
.Lt_01C0:
mov eax, dword ptr [_Lt_01DD]
cmp dword ptr [_Lt_01DB], eax
jae .Lt_01C1
mov eax, dword ptr [_Lt_01DB]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_01DE], ebx
inc dword ptr [_Lt_01DB]
cmp dword ptr [_Lt_01DE], 92
je .Lt_01C4
.Lt_01C5:
cmp dword ptr [_Lt_01DE], 34
jne .Lt_01C3
.Lt_01C4:
mov ebx, dword ptr [_Lt_01DC]
mov byte ptr [ebx], 92
inc dword ptr [_Lt_01DC]
jmp .Lt_01C2
.Lt_01C3:
cmp dword ptr [_Lt_01DE], 27
jne .Lt_01C6
.Lt_01C7:
mov ebx, dword ptr [_Lt_01DC]
mov byte ptr [ebx], 92
inc dword ptr [_Lt_01DC]
mov ebx, dword ptr [_Lt_01DD]
cmp dword ptr [_Lt_01DB], ebx
jb .Lt_01C9
jmp .Lt_01C1
.Lt_01C9:
mov ebx, dword ptr [_Lt_01DB]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_01DE], eax
inc dword ptr [_Lt_01DB]
mov eax, dword ptr [_Lt_01DE]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_01DE]
cmp ebx, 3
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_01CB
mov ebx, dword ptr [_Lt_01DE]
mov dword ptr [_Lt_01D8], ebx
mov ebx, dword ptr [_Lt_01DD]
cmp dword ptr [_Lt_01DB], ebx
jb .Lt_01CD
jmp .Lt_01C1
.Lt_01CD:
mov ebx, dword ptr [_Lt_01DB]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_01DE], eax
inc dword ptr [_Lt_01DB]
.Lt_01CB:
.Lt_01CA:
jmp .Lt_01C2
.Lt_01C6:
cmp dword ptr [_Lt_01DE], 0
jl .Lt_01D0
cmp dword ptr [_Lt_01DE], 31
jle .Lt_01CF
.Lt_01D0:
cmp dword ptr [_Lt_01DE], 128
jl .Lt_01CE
cmp dword ptr [_Lt_01DE], 255
jg .Lt_01CE
.Lt_01CF:
mov eax, dword ptr [_Lt_01DC]
mov byte ptr [eax], 92
inc dword ptr [_Lt_01DC]
cmp dword ptr [_Lt_01DE], 8
jge .Lt_01D2
mov eax, dword ptr [_Lt_01DC]
mov byte ptr [eax], 48
mov eax, dword ptr [_Lt_01DC]
mov byte ptr [eax+1], 48
add dword ptr [_Lt_01DC], 2
add dword ptr [_Lt_01DE], 48
jmp .Lt_01D1
.Lt_01D2:
cmp dword ptr [_Lt_01DE], 64
jge .Lt_01D3
mov eax, dword ptr [_Lt_01DC]
mov byte ptr [eax], 48
mov eax, dword ptr [_Lt_01DE]
sar eax, 3
add eax, 48
mov bl, al
mov eax, dword ptr [_Lt_01DC]
mov byte ptr [eax+1], bl
add dword ptr [_Lt_01DC], 2
mov ebx, dword ptr [_Lt_01DE]
and ebx, 7
add ebx, 48
mov dword ptr [_Lt_01DE], ebx
jmp .Lt_01D1
.Lt_01D3:
mov ebx, dword ptr [_Lt_01DE]
sar ebx, 6
add ebx, 48
mov al, bl
mov ebx, dword ptr [_Lt_01DC]
mov byte ptr [ebx], al
mov eax, dword ptr [_Lt_01DE]
and eax, 56
sar eax, 3
add eax, 48
mov bl, al
mov eax, dword ptr [_Lt_01DC]
mov byte ptr [eax+1], bl
add dword ptr [_Lt_01DC], 2
mov ebx, dword ptr [_Lt_01DE]
and ebx, 7
add ebx, 48
mov dword ptr [_Lt_01DE], ebx
.Lt_01D1:
.Lt_01CE:
.Lt_01C2:
mov bl, byte ptr [_Lt_01DE]
mov eax, dword ptr [_Lt_01DC]
mov byte ptr [eax], bl
inc dword ptr [_Lt_01DC]
cmp dword ptr [_Lt_01D8], 0
jle .Lt_01D5
dec dword ptr [_Lt_01D8]
cmp dword ptr [_Lt_01D8], 0
jne .Lt_01D7
mov ebx, dword ptr [_Lt_01DC]
mov byte ptr [ebx], 34
mov ebx, dword ptr [_Lt_01DC]
mov byte ptr [ebx+1], 34
add dword ptr [_Lt_01DC], 2
.Lt_01D7:
.Lt_01D6:
.Lt_01D5:
.Lt_01D4:
jmp .Lt_01C0
.Lt_01C1:
mov ebx, dword ptr [_Lt_01DC]
mov byte ptr [ebx], 0
mov ebx, dword ptr [_Lt_01DA]
mov dword ptr [ebp-4], ebx
.Lt_01BD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01DA,12
.balign 4
	.lcomm	_Lt_01DE,4
.balign 4
	.lcomm	_Lt_01D8,4
.balign 4
	.lcomm	_Lt_01D9,4
.balign 4
	.lcomm	_Lt_01DB,4
.balign 4
	.lcomm	_Lt_01DD,4
.balign 4
	.lcomm	_Lt_01DC,4

.section .text
.balign 16

.globl _HHASESCAPE
_HHASESCAPE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01F7:
push 0
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [_Lt_0202], eax
.Lt_01F9:
cmp dword ptr [_Lt_0202], 0
jle .Lt_01FA
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 92
jne .Lt_01FC
inc dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_0203], eax
mov eax, dword ptr [_Lt_0203]
mov dword ptr [ebp-8], eax
jmp .Lt_01FE
.Lt_0200:
mov dword ptr [ebp-4], -1
jmp .Lt_01F8
jmp .Lt_01FD
.Lt_01FE:
mov eax, dword ptr [ebp-8]
add eax, 4294967262
cmp eax, 84
ja .Lt_01FD
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0201+eax*4-136]
_.LT_0201:
.int .Lt_0200
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_0200
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_0200
.int .Lt_0200
.int .Lt_0200
.int .Lt_0200
.int .Lt_0200
.int .Lt_0200
.int .Lt_0200
.int .Lt_0200
.int .Lt_0200
.int .Lt_0200
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_0200
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_0200
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_0200
.int .Lt_0200
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_0200
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_0200
.int .Lt_01FD
.int .Lt_0200
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_0200
.int .Lt_01FD
.int .Lt_0200
.int .Lt_0200
.int .Lt_0200
.Lt_01FD:
.Lt_01FC:
.Lt_01FB:
inc dword ptr [ebp+8]
dec dword ptr [_Lt_0202]
jmp .Lt_01F9
.Lt_01FA:
mov dword ptr [ebp-4], 0
.Lt_01F8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0203,4
.balign 4
	.lcomm	_Lt_0202,4

.section .text
.balign 16

.globl _HHASESCAPEW
_HHASESCAPEW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0204:
push dword ptr [ebp+8]
call _fb_WstrLen
add esp, 4
mov dword ptr [_Lt_020F], eax
.Lt_0206:
cmp dword ptr [_Lt_020F], 0
jle .Lt_0207
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 92
jne .Lt_0209
inc dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_0210], eax
mov eax, dword ptr [_Lt_0210]
mov dword ptr [ebp-8], eax
jmp .Lt_020B
.Lt_020D:
mov dword ptr [ebp-4], -1
jmp .Lt_0205
jmp .Lt_020A
.Lt_020B:
mov eax, dword ptr [ebp-8]
add eax, 4294967262
cmp eax, 84
ja .Lt_020A
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_020E+eax*4-136]
_.LT_020E:
.int .Lt_020D
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020D
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020D
.int .Lt_020D
.int .Lt_020D
.int .Lt_020D
.int .Lt_020D
.int .Lt_020D
.int .Lt_020D
.int .Lt_020D
.int .Lt_020D
.int .Lt_020D
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020D
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020D
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020D
.int .Lt_020D
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020D
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020D
.int .Lt_020A
.int .Lt_020D
.int .Lt_020A
.int .Lt_020A
.int .Lt_020A
.int .Lt_020D
.int .Lt_020A
.int .Lt_020D
.int .Lt_020D
.int .Lt_020D
.Lt_020A:
.Lt_0209:
.Lt_0208:
inc dword ptr [ebp+8]
dec dword ptr [_Lt_020F]
jmp .Lt_0206
.Lt_0207:
mov dword ptr [ebp-4], 0
.Lt_0205:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0210,4
.balign 4
	.lcomm	_Lt_020F,4

.section .text
.balign 16

.globl _HESCAPEW
_HESCAPEW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_021B:
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [_Lt_0238], eax
push dword ptr [ebp+8]
call _fb_WstrLen
add esp, 4
mov dword ptr [_Lt_0239], eax
cmp dword ptr [_Lt_0239], 0
jne .Lt_021E
mov dword ptr [ebp-4], 0
jmp .Lt_021C
.Lt_021E:
.Lt_021D:
mov eax, dword ptr [_Lt_0238]
imul eax, dword ptr [_Lt_0239]
sal eax, 2
push eax
push offset _Lt_023A
call _DZSTRALLOCATE
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_023B], eax
mov eax, dword ptr [_Lt_023A]
mov dword ptr [_Lt_023C], eax
mov eax, dword ptr [_Lt_023B]
add eax, dword ptr [_Lt_0239]
mov dword ptr [_Lt_023D], eax
.Lt_021F:
mov eax, dword ptr [_Lt_023D]
cmp dword ptr [_Lt_023B], eax
jae .Lt_0220
mov eax, dword ptr [_Lt_023B]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_023E], ebx
inc dword ptr [_Lt_023B]
cmp dword ptr [_Lt_023E], 27
jne .Lt_0222
mov ebx, dword ptr [_Lt_023D]
cmp dword ptr [_Lt_023B], ebx
jb .Lt_0224
jmp .Lt_0220
.Lt_0224:
mov ebx, dword ptr [_Lt_023B]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_023E], eax
inc dword ptr [_Lt_023B]
cmp dword ptr [_Lt_023E], 1
setae al
shr eax, 1
sbb eax, eax
cmp dword ptr [_Lt_023E], 11
setbe bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0226
mov ebx, dword ptr [_Lt_023E]
mov dword ptr [_Lt_0241], ebx
mov dword ptr [_Lt_023E], 0
mov ebx, dword ptr [_Lt_023B]
add ebx, dword ptr [_Lt_0241]
mov eax, dword ptr [_Lt_023D]
cmp ebx, eax
jbe .Lt_0228
jmp .Lt_0220
.Lt_0228:
.Lt_0229:
cmp dword ptr [_Lt_0241], 0
jle .Lt_022A
mov eax, dword ptr [_Lt_023E]
shl eax, 3
mov ebx, dword ptr [_Lt_023B]
movzx ecx, byte ptr [ebx]
add ecx, -48
mov ebx, ecx
add eax, ebx
mov dword ptr [_Lt_023E], eax
inc dword ptr [_Lt_023B]
dec dword ptr [_Lt_0241]
jmp .Lt_0229
.Lt_022A:
jmp .Lt_0225
.Lt_0226:
cmp dword ptr [_Lt_023E], 117
jne .Lt_022D
mov eax, dword ptr [_Lt_023B]
add eax, 4
mov ebx, dword ptr [_Lt_023D]
cmp eax, ebx
jbe .Lt_022F
jmp .Lt_0220
.Lt_022F:
push dword ptr [_Lt_023B]
call _HU16TOWCHAR
add esp, 4
mov dword ptr [_Lt_023E], eax
add dword ptr [_Lt_023B], 4
jmp .Lt_022C
.Lt_022D:
push dword ptr [_Lt_023E]
call _HREMAPCHAR
add esp, 4
mov dword ptr [_Lt_023E], eax
.Lt_022C:
.Lt_0225:
.Lt_0222:
.Lt_0221:
mov dword ptr [_Lt_0241], 1
mov eax, dword ptr [_Lt_0238]
mov dword ptr [ebp-8], eax
jmp .Lt_0231
.Lt_0234:
mov eax, dword ptr [_Lt_023C]
mov byte ptr [eax], 92
inc dword ptr [_Lt_023C]
mov eax, dword ptr [_Lt_023E]
and eax, 255
mov dword ptr [_Lt_0242], eax
cmp dword ptr [_Lt_0242], 8
jae .Lt_0236
mov eax, dword ptr [_Lt_0242]
add eax, 48
mov bl, al
mov eax, dword ptr [_Lt_023C]
mov byte ptr [eax], bl
inc dword ptr [_Lt_023C]
jmp .Lt_0235
.Lt_0236:
cmp dword ptr [_Lt_0242], 64
jae .Lt_0237
mov ebx, dword ptr [_Lt_0242]
shr ebx, 3
add ebx, 48
mov al, bl
mov ebx, dword ptr [_Lt_023C]
mov byte ptr [ebx], al
mov eax, dword ptr [_Lt_0242]
and eax, 7
add eax, 48
mov bl, al
mov eax, dword ptr [_Lt_023C]
mov byte ptr [eax+1], bl
add dword ptr [_Lt_023C], 2
jmp .Lt_0235
.Lt_0237:
mov ebx, dword ptr [_Lt_0242]
shr ebx, 6
add ebx, 48
mov al, bl
mov ebx, dword ptr [_Lt_023C]
mov byte ptr [ebx], al
mov eax, dword ptr [_Lt_0242]
and eax, 56
shr eax, 3
add eax, 48
mov bl, al
mov eax, dword ptr [_Lt_023C]
mov byte ptr [eax+1], bl
mov ebx, dword ptr [_Lt_0242]
and ebx, 7
add ebx, 48
mov al, bl
mov ebx, dword ptr [_Lt_023C]
mov byte ptr [ebx+2], al
add dword ptr [_Lt_023C], 3
.Lt_0235:
shr dword ptr [_Lt_023E], 8
.Lt_0232:
inc dword ptr [_Lt_0241]
.Lt_0231:
mov eax, dword ptr [ebp-8]
cmp dword ptr [_Lt_0241], eax
jle .Lt_0234
.Lt_0233:
jmp .Lt_021F
.Lt_0220:
mov eax, dword ptr [_Lt_023C]
mov byte ptr [eax], 0
mov eax, dword ptr [_Lt_023A]
mov dword ptr [ebp-4], eax
.Lt_021C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_023A,12
.balign 4
	.lcomm	_Lt_023E,4
.balign 4
	.lcomm	_Lt_0242,4
.balign 4
	.lcomm	_Lt_0239,4
.balign 4
	.lcomm	_Lt_0241,4
.balign 4
	.lcomm	_Lt_0238,4
.balign 4
	.lcomm	_Lt_023B,4
.balign 4
	.lcomm	_Lt_023D,4
.balign 4
	.lcomm	_Lt_023C,4

.section .text
.balign 16

.globl _HUNESCAPE
_HUNESCAPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0243:
push 0
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
mov dword ptr [_Lt_0251], eax
cmp dword ptr [_Lt_0251], 0
jne .Lt_0246
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0244
.Lt_0246:
.Lt_0245:
push dword ptr [_Lt_0251]
push offset _Lt_0252
call _DZSTRALLOCATE
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_0253], eax
mov eax, dword ptr [_Lt_0252]
mov dword ptr [_Lt_0254], eax
mov eax, dword ptr [_Lt_0253]
add eax, dword ptr [_Lt_0251]
mov dword ptr [_Lt_0255], eax
.Lt_0247:
mov eax, dword ptr [_Lt_0255]
cmp dword ptr [_Lt_0253], eax
jae .Lt_0248
mov eax, dword ptr [_Lt_0253]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_0256], ebx
inc dword ptr [_Lt_0253]
cmp dword ptr [_Lt_0256], 27
jne .Lt_024A
mov ebx, dword ptr [_Lt_0255]
cmp dword ptr [_Lt_0253], ebx
jb .Lt_024C
jmp .Lt_0248
.Lt_024C:
mov ebx, dword ptr [_Lt_0253]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_0256], eax
inc dword ptr [_Lt_0253]
mov eax, dword ptr [_Lt_0256]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0256]
cmp ebx, 3
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_024E
mov ebx, dword ptr [_Lt_0256]
mov dword ptr [_Lt_0259], ebx
mov dword ptr [_Lt_0256], 0
.Lt_024F:
cmp dword ptr [_Lt_0259], 0
jle .Lt_0250
mov ebx, dword ptr [_Lt_0256]
sal ebx, 3
mov eax, dword ptr [_Lt_0253]
movzx ecx, byte ptr [eax]
add ebx, ecx
add ebx, -48
mov dword ptr [_Lt_0256], ebx
inc dword ptr [_Lt_0253]
dec dword ptr [_Lt_0259]
jmp .Lt_024F
.Lt_0250:
jmp .Lt_024D
.Lt_024E:
push dword ptr [_Lt_0256]
call _HREMAPCHAR
add esp, 4
mov dword ptr [_Lt_0256], eax
.Lt_024D:
.Lt_024A:
.Lt_0249:
mov al, byte ptr [_Lt_0256]
mov ebx, dword ptr [_Lt_0254]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0254]
jmp .Lt_0247
.Lt_0248:
mov eax, dword ptr [_Lt_0254]
mov byte ptr [eax], 0
mov eax, dword ptr [_Lt_0252]
mov dword ptr [ebp-4], eax
.Lt_0244:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0252,12
.balign 4
	.lcomm	_Lt_0256,4
.balign 4
	.lcomm	_Lt_0251,4
.balign 4
	.lcomm	_Lt_0259,4
.balign 4
	.lcomm	_Lt_0253,4
.balign 4
	.lcomm	_Lt_0254,4
.balign 4
	.lcomm	_Lt_0255,4

.section .text
.balign 16

.globl _HUNESCAPEW
_HUNESCAPEW:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_025A:
push dword ptr [ebp+8]
call _fb_WstrLen
add esp, 4
mov dword ptr [_Lt_026C], eax
cmp dword ptr [_Lt_026C], 0
jne .Lt_025D
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_025B
.Lt_025D:
.Lt_025C:
push dword ptr [_Lt_026C]
push offset _Lt_026D
call _DWSTRALLOCATE
add esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_026E], eax
mov eax, dword ptr [_Lt_026D]
mov dword ptr [_Lt_026F], eax
mov eax, dword ptr [_Lt_026E]
add eax, dword ptr [_Lt_026C]
mov dword ptr [_Lt_0270], eax
.Lt_025E:
mov eax, dword ptr [_Lt_0270]
cmp dword ptr [_Lt_026E], eax
jae .Lt_025F
mov eax, dword ptr [_Lt_026E]
movzx ebx, byte ptr [eax]
mov dword ptr [_Lt_0271], ebx
inc dword ptr [_Lt_026E]
cmp dword ptr [_Lt_0271], 27
jne .Lt_0261
mov ebx, dword ptr [_Lt_0270]
cmp dword ptr [_Lt_026E], ebx
jb .Lt_0263
jmp .Lt_025F
.Lt_0263:
mov ebx, dword ptr [_Lt_026E]
movzx eax, byte ptr [ebx]
mov dword ptr [_Lt_0271], eax
inc dword ptr [_Lt_026E]
mov eax, dword ptr [_Lt_0271]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0271]
cmp ebx, 11
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0265
mov ebx, dword ptr [_Lt_0271]
mov dword ptr [_Lt_0274], ebx
mov dword ptr [_Lt_0271], 0
.Lt_0266:
cmp dword ptr [_Lt_0274], 0
jle .Lt_0267
mov ebx, dword ptr [_Lt_0271]
sal ebx, 3
mov eax, dword ptr [_Lt_026E]
movzx ecx, byte ptr [eax]
add ebx, ecx
add ebx, -48
mov dword ptr [_Lt_0271], ebx
inc dword ptr [_Lt_026E]
dec dword ptr [_Lt_0274]
jmp .Lt_0266
.Lt_0267:
jmp .Lt_0264
.Lt_0265:
cmp dword ptr [_Lt_0271], 117
jne .Lt_0269
mov ebx, dword ptr [_Lt_026E]
add ebx, 4
mov ecx, dword ptr [_Lt_0270]
cmp ebx, ecx
jbe .Lt_026B
jmp .Lt_025F
.Lt_026B:
push dword ptr [_Lt_026E]
call _HU16TOWCHAR
add esp, 4
mov dword ptr [_Lt_0271], eax
add dword ptr [_Lt_026E], 4
jmp .Lt_0268
.Lt_0269:
push dword ptr [_Lt_0271]
call _HREMAPCHAR
add esp, 4
mov dword ptr [_Lt_0271], eax
.Lt_0268:
.Lt_0264:
.Lt_0261:
.Lt_0260:
mov al, byte ptr [_Lt_0271]
mov ecx, dword ptr [_Lt_026F]
mov byte ptr [ecx], al
inc dword ptr [_Lt_026F]
jmp .Lt_025E
.Lt_025F:
mov eax, dword ptr [_Lt_026F]
mov byte ptr [eax], 0
mov eax, dword ptr [_Lt_026D]
mov dword ptr [ebp-4], eax
.Lt_025B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_026D,12
.balign 4
	.lcomm	_Lt_0271,4
.balign 4
	.lcomm	_Lt_026C,4
.balign 4
	.lcomm	_Lt_0274,4
.balign 4
	.lcomm	_Lt_026E,4
.balign 4
	.lcomm	_Lt_026F,4
.balign 4
	.lcomm	_Lt_0270,4

.section .text
.balign 16

.globl _HCHARNEEDSESCAPING
_HCHARNEEDSESCAPING:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0275:
mov eax, dword ptr [ebp+8]
cmp eax, 32
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 127
setge bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
cmp dword ptr [ebp+8], 92
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov ebx, dword ptr [ebp+12]
cmp ebx, dword ptr [ebp+8]
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov dword ptr [ebp-4], eax
.Lt_0276:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HISVALIDHEXDIGIT
_HISVALIDHEXDIGIT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_027C:
cmp dword ptr [ebp+8], 48
setae al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+8], 57
setbe bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
cmp dword ptr [ebp+8], 97
setae bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+8], 102
setbe cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
cmp dword ptr [ebp+8], 65
setae bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+8], 70
setbe cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
mov dword ptr [ebp-4], eax
.Lt_027D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HSPLITSTR
_HSPLITSTR:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_0287:
mov dword ptr [ebp-4], 10
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 4
mov dword ptr [ebp-24], 1
mov dword ptr [ebp-20], 17
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp-4]
dec eax
push eax
push 0
push 1
push 0
push -1
push 4
lea eax, [ebp-40]
push eax
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .Lt_0289
push 0
push 0
push offset _Lt_028A
push 1267
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0289:
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-44], eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 1
.Lt_028B:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-52]
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jle .Lt_028F
mov eax, dword ptr [ebp-4]
cmp dword ptr [ebp-48], eax
jl .Lt_0291
add dword ptr [ebp-4], 10
mov eax, dword ptr [ebp-4]
dec eax
push eax
push 0
push 1
push 0
push -1
push 4
lea eax, [ebp-40]
push eax
call _fb_ArrayRedimPresvEx
add esp, 28
test eax, eax
je .Lt_0292
push 0
push 0
push offset _Lt_028A
push 1278
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0292:
.Lt_0291:
.Lt_0290:
mov eax, dword ptr [ebp-48]
sal eax, 2
add eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-52]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-44]
add dword ptr [ebp-52], ebx
.Lt_028F:
.Lt_028E:
inc dword ptr [ebp-48]
.Lt_028D:
cmp dword ptr [ebp-52], 0
jne .Lt_028B
.Lt_028C:
dec dword ptr [ebp-48]
cmp dword ptr [ebp-48], 0
jne .Lt_0294
push 0
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+16]
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .Lt_0295
push 0
push 0
push offset _Lt_028A
push 1288
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0295:
push 0
push -1
push dword ptr [ebp+8]
push -1
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _fb_ArrayErase
add esp, 4
jmp .Lt_0288
.Lt_0294:
.Lt_0293:
push dword ptr [ebp-48]
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+16]
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .Lt_0296
push 0
push 0
push offset _Lt_028A
push 1293
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0296:
push 0
push -1
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [eax]
dec ebx
push ebx
push dword ptr [ebp+8]
call _fb_LEFT
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
lea eax, [ebx]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-52], 1
.Lt_0297:
mov eax, dword ptr [ebp-48]
cmp dword ptr [ebp-52], eax
je .Lt_0298
push 0
push -1
mov eax, dword ptr [ebp-52]
sal eax, 2
add eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-52]
sal ebx, 2
add ebx, dword ptr [ebp-40]
mov ecx, dword ptr [eax]
sub ecx, dword ptr [ebx-4]
sub ecx, dword ptr [ebp-44]
push ecx
mov ecx, dword ptr [ebp-52]
sal ecx, 2
add ecx, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-44]
add ebx, dword ptr [ecx-4]
push ebx
push dword ptr [ebp+8]
call _fb_StrMid
add esp, 12
push eax
push -1
mov eax, dword ptr [ebp-52]
imul eax, 12
mov ebx, dword ptr [ebp+16]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
inc dword ptr [ebp-52]
jmp .Lt_0297
.Lt_0298:
push 0
push -1
push -1
mov ebx, dword ptr [ebp-48]
sal ebx, 2
add ebx, dword ptr [ebp-40]
mov eax, dword ptr [ebp-44]
add eax, dword ptr [ebx-4]
push eax
push dword ptr [ebp+8]
call _fb_StrMid
add esp, 12
push eax
push -1
mov eax, dword ptr [ebp-48]
imul eax, 12
mov ebx, dword ptr [ebp+16]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
lea ebx, [ebp-40]
push ebx
call _fb_ArrayErase
add esp, 4
.Lt_0288:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _HSTR2TOK
_HSTR2TOK:
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0299:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 32
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.Lt_029B:
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
test ebx, ebx
je .Lt_029C
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 7
jne .Lt_029E
mov dword ptr [ebp-24], 32
.Lt_029E:
.Lt_029D:
cmp dword ptr [ebp-24], 32
jne .Lt_02A0
cmp dword ptr [ebp-12], 32
je .Lt_02A2
inc dword ptr [ebp-8]
.Lt_02A2:
.Lt_02A1:
.Lt_02A0:
.Lt_029F:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-12], eax
inc dword ptr [ebp-16]
jmp .Lt_029B
.Lt_029C:
cmp dword ptr [ebp-12], 32
je .Lt_02A4
inc dword ptr [ebp-8]
.Lt_02A4:
.Lt_02A3:
cmp dword ptr [ebp-8], 0
jne .Lt_02A6
mov dword ptr [ebp-4], 0
jmp .Lt_029A
.Lt_02A6:
.Lt_02A5:
mov eax, dword ptr [ebp-8]
dec eax
push eax
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+12]
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .Lt_02A7
push 0
push 0
push offset _Lt_028A
push 1335
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_02A7:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 32
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.Lt_02A8:
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
test ebx, ebx
je .Lt_02A9
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 7
jne .Lt_02AB
mov dword ptr [ebp-24], 32
.Lt_02AB:
.Lt_02AA:
cmp dword ptr [ebp-24], 32
jne .Lt_02AD
cmp dword ptr [ebp-12], 32
je .Lt_02AF
inc dword ptr [ebp-8]
.Lt_02AF:
.Lt_02AE:
jmp .Lt_02AC
.Lt_02AD:
push 0
push -1
push -1
push dword ptr [ebp-24]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea ebx, [ebp-36]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_02AC:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-12], ebx
inc dword ptr [ebp-16]
jmp .Lt_02A8
.Lt_02A9:
cmp dword ptr [ebp-12], 32
je .Lt_02B1
mov ebx, dword ptr [ebp-8]
inc ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_02B3
.Lt_02B1:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-20], ebx
.Lt_02B3:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
.Lt_029A:
mov eax, dword ptr [ebp-4]
pop ebx
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
_HREMAPCHAR:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_01E1:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_01E4
.Lt_01E6:
mov dword ptr [ebp-4], 13
jmp .Lt_01E3
.Lt_01E8:
mov dword ptr [ebp-4], 10
jmp .Lt_01E3
.Lt_01EB:
mov dword ptr [ebp-4], 9
jmp .Lt_01E3
.Lt_01ED:
mov dword ptr [ebp-4], 8
jmp .Lt_01E3
.Lt_01EF:
mov dword ptr [ebp-4], 7
jmp .Lt_01E3
.Lt_01F1:
mov dword ptr [ebp-4], 12
jmp .Lt_01E3
.Lt_01F3:
mov dword ptr [ebp-4], 11
jmp .Lt_01E3
.Lt_01F5:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_01E4:
mov eax, dword ptr [ebp-8]
add eax, 4294967199
cmp eax, 21
ja .Lt_01F5
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_01F6+eax*4-388]
_.LT_01F6:
.int .Lt_01EF
.int .Lt_01ED
.int .Lt_01F5
.int .Lt_01F5
.int .Lt_01F5
.int .Lt_01F1
.int .Lt_01F5
.int .Lt_01F5
.int .Lt_01F5
.int .Lt_01F5
.int .Lt_01F5
.int .Lt_01E8
.int .Lt_01F5
.int .Lt_01E8
.int .Lt_01F5
.int .Lt_01F5
.int .Lt_01F5
.int .Lt_01E6
.int .Lt_01F5
.int .Lt_01EB
.int .Lt_01F5
.int .Lt_01F3
.Lt_01E3:
.Lt_01E2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HU16TOWCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0211:
mov dword ptr [_Lt_02B4], 0
mov dword ptr [_Lt_02B5], 1
.Lt_0216:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
add ebx, -48
mov eax, ebx
mov dword ptr [_Lt_02B6], eax
inc dword ptr [ebp+8]
cmp dword ptr [_Lt_02B6], 9
jbe .Lt_0218
add dword ptr [_Lt_02B6], 4294967289
.Lt_0218:
.Lt_0217:
cmp dword ptr [_Lt_02B6], 16
jbe .Lt_021A
add dword ptr [_Lt_02B6], 4294967264
.Lt_021A:
.Lt_0219:
mov eax, dword ptr [_Lt_02B4]
shl eax, 4
or eax, dword ptr [_Lt_02B6]
mov dword ptr [_Lt_02B4], eax
.Lt_0214:
inc dword ptr [_Lt_02B5]
.Lt_0213:
cmp dword ptr [_Lt_02B5], 4
jle .Lt_0216
.Lt_0215:
mov eax, dword ptr [_Lt_02B4]
mov dword ptr [ebp-4], eax
.Lt_0212:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02B4,4
.balign 4
	.lcomm	_Lt_02B6,4
.balign 4
	.lcomm	_Lt_02B5,4
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_028A:	.ascii	"src/compiler/hlp-str.bas\0"
