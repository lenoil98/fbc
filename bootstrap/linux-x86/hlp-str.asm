	.intel_syntax noprefix

.section .text
.balign 16

.globl ZSTRASSIGN
ZSTRASSIGN:
.type ZSTRASSIGN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_005D:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0060
mov dword ptr [ebp-8], 0
jmp .Lt_005F
.Lt_0060:
sub esp, 8
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_005F:
cmp dword ptr [ebp-8], 0
jne .Lt_0062
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0064
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .Lt_005E
.Lt_0064:
.Lt_0063:
.Lt_0062:
.Lt_0061:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_0066
mov dword ptr [ebp-4], 0
jmp .Lt_0065
.Lt_0066:
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0065:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .Lt_0068
sub esp, 12
mov eax, dword ptr [ebp-8]
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_0068:
.Lt_0067:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_006A
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_StrAssign
add esp, 32
.Lt_006A:
.Lt_0069:
.Lt_005E:
pop ebx
mov esp, ebp
pop ebp
ret
.size ZSTRASSIGN, .-ZSTRASSIGN
.balign 16

.globl ZSTRASSIGNW
ZSTRASSIGNW:
.type ZSTRASSIGNW, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_006B:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_006E
mov dword ptr [ebp-8], 0
jmp .Lt_006D
.Lt_006E:
sub esp, 12
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_006D:
cmp dword ptr [ebp-8], 0
jne .Lt_0070
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0072
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .Lt_006C
.Lt_0072:
.Lt_0071:
.Lt_0070:
.Lt_006F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_0074
mov dword ptr [ebp-4], 0
jmp .Lt_0073
.Lt_0074:
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0073:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .Lt_0076
sub esp, 12
mov eax, dword ptr [ebp-8]
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_0076:
.Lt_0075:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0078
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_WstrAssignToA
add esp, 16
.Lt_0078:
.Lt_0077:
.Lt_006C:
pop ebx
mov esp, ebp
pop ebp
ret
.size ZSTRASSIGNW, .-ZSTRASSIGNW
.balign 16

.globl ZSTRCONCATASSIGN
ZSTRCONCATASSIGN:
.type ZSTRCONCATASSIGN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0079:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_007C
jmp .Lt_007A
.Lt_007C:
.Lt_007B:
sub esp, 8
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_007E
jmp .Lt_007A
.Lt_007E:
.Lt_007D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_0080
mov dword ptr [ebp-4], 0
sub esp, 12
mov eax, dword ptr [ebp-8]
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_007F
.Lt_0080:
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call XREALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_007F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0082
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-4]
push ebx
call fb_StrAssign
add esp, 32
.Lt_0082:
.Lt_0081:
.Lt_007A:
pop ebx
mov esp, ebp
pop ebp
ret
.size ZSTRCONCATASSIGN, .-ZSTRCONCATASSIGN
.balign 16

.globl ZSTRCONCATASSIGNW
ZSTRCONCATASSIGNW:
.type ZSTRCONCATASSIGNW, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0083:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0086
jmp .Lt_0084
.Lt_0086:
.Lt_0085:
sub esp, 12
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0088
jmp .Lt_0084
.Lt_0088:
.Lt_0087:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_008A
mov dword ptr [ebp-4], 0
sub esp, 12
mov eax, dword ptr [ebp-8]
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_0089
.Lt_008A:
sub esp, 8
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
inc eax
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call XREALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_0089:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_008C
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-4]
push ebx
call fb_WstrAssignToA
add esp, 16
.Lt_008C:
.Lt_008B:
.Lt_0084:
pop ebx
mov esp, ebp
pop ebp
ret
.size ZSTRCONCATASSIGNW, .-ZSTRCONCATASSIGNW
.balign 16

.globl WSTRASSIGN
WSTRASSIGN:
.type WSTRASSIGN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_008D:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0090
mov dword ptr [ebp-8], 0
jmp .Lt_008F
.Lt_0090:
sub esp, 12
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_008F:
cmp dword ptr [ebp-8], 0
jne .Lt_0092
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0094
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .Lt_008E
.Lt_0094:
.Lt_0093:
.Lt_0092:
.Lt_0091:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_0096
mov dword ptr [ebp-4], 0
jmp .Lt_0095
.Lt_0096:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0095:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .Lt_0098
sub esp, 12
mov eax, dword ptr [ebp-8]
sal eax, 2
add eax, 4
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_0098:
.Lt_0097:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_009A
sub esp, 4
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_WstrAssign
add esp, 16
.Lt_009A:
.Lt_0099:
.Lt_008E:
pop ebx
mov esp, ebp
pop ebp
ret
.size WSTRASSIGN, .-WSTRASSIGN
.balign 16

.globl WSTRASSIGNA
WSTRASSIGNA:
.type WSTRASSIGNA, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_009B:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_009E
mov dword ptr [ebp-8], 0
jmp .Lt_009D
.Lt_009E:
sub esp, 8
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_009D:
cmp dword ptr [ebp-8], 0
jne .Lt_00A0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00A2
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .Lt_009C
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
.Lt_009F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00A4
mov dword ptr [ebp-4], 0
jmp .Lt_00A3
.Lt_00A4:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00A3:
mov eax, dword ptr [ebp-8]
cmp dword ptr [ebp-4], eax
je .Lt_00A6
sub esp, 12
mov eax, dword ptr [ebp-8]
sal eax, 2
add eax, 4
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_00A6:
.Lt_00A5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00A8
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_WstrAssignFromA
add esp, 16
.Lt_00A8:
.Lt_00A7:
.Lt_009C:
pop ebx
mov esp, ebp
pop ebp
ret
.size WSTRASSIGNA, .-WSTRASSIGNA
.balign 16

.globl WSTRCONCATASSIGN
WSTRCONCATASSIGN:
.type WSTRCONCATASSIGN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00A9:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_00AC
jmp .Lt_00AA
.Lt_00AC:
.Lt_00AB:
sub esp, 12
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00AE
jmp .Lt_00AA
.Lt_00AE:
.Lt_00AD:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00B0
mov dword ptr [ebp-4], 0
sub esp, 12
mov eax, dword ptr [ebp-8]
sal eax, 2
add eax, 4
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_00AF
.Lt_00B0:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
sal eax, 2
add eax, 4
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call XREALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_00AF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00B2
sub esp, 4
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
sal ebx, 2
mov ecx, dword ptr [eax]
add ecx, ebx
push ecx
call fb_WstrAssign
add esp, 16
.Lt_00B2:
.Lt_00B1:
.Lt_00AA:
pop ebx
mov esp, ebp
pop ebp
ret
.size WSTRCONCATASSIGN, .-WSTRCONCATASSIGN
.balign 16

.globl WSTRCONCATASSIGNW
WSTRCONCATASSIGNW:
.type WSTRCONCATASSIGNW, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00B3:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_00B6
jmp .Lt_00B4
.Lt_00B6:
.Lt_00B5:
sub esp, 8
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00B8
jmp .Lt_00B4
.Lt_00B8:
.Lt_00B7:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00BA
mov dword ptr [ebp-4], 0
sub esp, 12
mov eax, dword ptr [ebp-8]
sal eax, 2
add eax, 4
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_00B9
.Lt_00BA:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call fb_WstrLen
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
mov eax, dword ptr [ebp-8]
add eax, dword ptr [ebp-4]
sal eax, 2
add eax, 4
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call XREALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_00B9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00BC
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
sal ebx, 2
mov ecx, dword ptr [eax]
add ecx, ebx
push ecx
call fb_WstrAssignFromA
add esp, 16
.Lt_00BC:
.Lt_00BB:
.Lt_00B4:
pop ebx
mov esp, ebp
pop ebp
ret
.size WSTRCONCATASSIGNW, .-WSTRCONCATASSIGNW
.balign 16

.globl ZSTRDUP
ZSTRDUP:
.type ZSTRDUP, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00BD:
mov dword ptr [ebp-8], 0
sub esp, 12
sub esp, 12
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 20
inc eax
push eax
call XALLOCATE
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [ebp-8]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00BE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ZSTRDUP, .-ZSTRDUP
.balign 16

.globl WSTRDUP
WSTRDUP:
.type WSTRDUP, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00BF:
mov dword ptr [ebp-8], 0
sub esp, 12
push dword ptr [ebp+8]
call fb_WstrLen
add esp, 4
sal eax, 2
add eax, 4
push eax
call XALLOCATE
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push dword ptr [ebp+8]
push 0
push dword ptr [ebp-8]
call fb_WstrAssign
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00C0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size WSTRDUP, .-WSTRDUP
.balign 16

.globl HREPLACE
HREPLACE:
.type HREPLACE, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00C1:
sub esp, 8
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
mov dword ptr [Lt_00C9], eax
sub esp, 8
push 0
push dword ptr [ebp+16]
call fb_StrLen
add esp, 16
mov dword ptr [Lt_00CA], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push -1
push offset Lt_00CB
call fb_StrAssign
add esp, 32
mov dword ptr [Lt_00CC], 0
.Lt_00C3:
sub esp, 4
sub esp, 8
push dword ptr [ebp+12]
call fb_StrAllocTempDescZ
add esp, 12
push eax
push offset Lt_00CB
mov eax, dword ptr [Lt_00CC]
inc eax
push eax
call fb_StrInstr
add esp, 16
mov dword ptr [Lt_00CC], eax
cmp dword ptr [Lt_00CC], 0
jne .Lt_00C7
jmp .Lt_00C4
.Lt_00C7:
.Lt_00C6:
sub esp, 12
push 0
push -1
push -1
mov eax, dword ptr [Lt_00C9]
add eax, dword ptr [Lt_00CC]
push eax
push offset Lt_00CB
call fb_StrMid
add esp, 12
push eax
push -1
push offset Lt_00CD
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [Lt_00CC]
dec eax
push eax
push offset Lt_00CB
call fb_LEFT
add esp, 12
push eax
push -1
push offset Lt_00CB
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+16]
push -1
push offset Lt_00CB
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_00CB
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push offset Lt_00CD
push -1
push offset Lt_00CB
call fb_StrConcatAssign
add esp, 32
mov eax, dword ptr [Lt_00CA]
add eax, dword ptr [Lt_00CC]
dec eax
mov dword ptr [Lt_00CC], eax
.Lt_00C5:
jmp .Lt_00C3
.Lt_00C4:
sub esp, 12
push 0
push -1
push offset Lt_00CB
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_00C2:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HREPLACE, .-HREPLACE

.section .bss
.balign 4
	.lcomm	Lt_00C9,4
.balign 4
	.lcomm	Lt_00CA,4
.balign 4
	.lcomm	Lt_00CC,4
.balign 4
	.lcomm	Lt_00CB,12
.balign 4
	.lcomm	Lt_00CD,12

.section .text
.balign 16

.globl HREPLACEW
HREPLACEW:
.type HREPLACEW, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_00CE:
sub esp, 12
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 16
mov dword ptr [Lt_00D7], eax
sub esp, 12
push dword ptr [ebp+16]
call fb_WstrLen
add esp, 16
mov dword ptr [Lt_00D8], eax
sub esp, 8
push dword ptr [ebp+8]
push offset Lt_00D9
call DWSTRASSIGN
add esp, 16
mov dword ptr [Lt_00DA], 0
.Lt_00D0:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [Lt_00D9]
mov eax, dword ptr [Lt_00DA]
inc eax
push eax
call fb_WstrInstr
add esp, 16
mov dword ptr [Lt_00DA], eax
cmp dword ptr [Lt_00DA], 0
jne .Lt_00D4
jmp .Lt_00D1
.Lt_00D4:
.Lt_00D3:
sub esp, 8
sub esp, 12
push -1
mov eax, dword ptr [Lt_00D7]
add eax, dword ptr [Lt_00DA]
push eax
push dword ptr [Lt_00D9]
call fb_WstrMid
add esp, 24
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push offset Lt_00DB
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call fb_WstrDelete
add esp, 16
sub esp, 8
mov eax, dword ptr [Lt_00DA]
dec eax
push eax
push dword ptr [Lt_00D9]
call fb_WstrLeft
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
push offset Lt_00D9
call DWSTRASSIGN
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call fb_WstrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push offset Lt_00D9
call DWSTRCONCATASSIGN
add esp, 16
sub esp, 8
push dword ptr [Lt_00DB]
push offset Lt_00D9
call DWSTRCONCATASSIGN
add esp, 16
mov eax, dword ptr [Lt_00D8]
add eax, dword ptr [Lt_00DA]
dec eax
mov dword ptr [Lt_00DA], eax
.Lt_00D2:
jmp .Lt_00D0
.Lt_00D1:
mov eax, dword ptr [Lt_00D9]
mov dword ptr [ebp-4], eax
.Lt_00CF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HREPLACEW, .-HREPLACEW

.section .bss
.balign 4
	.lcomm	Lt_00D7,4
.balign 4
	.lcomm	Lt_00D8,4
.balign 4
	.lcomm	Lt_00DA,4
.balign 4
	.lcomm	Lt_00D9,12
.balign 4
	.lcomm	Lt_00DB,12

.section .text
.balign 16

.globl HREPLACECHAR
HREPLACECHAR:
.type HREPLACECHAR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DC:
mov dword ptr [ebp-8], 0
sub esp, 8
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
dec eax
mov dword ptr [ebp-12], eax
jmp .Lt_00DF
.Lt_00E2:
mov eax, dword ptr [ebp+8]
add eax, dword ptr [ebp-8]
movzx ebx, byte ptr [eax]
mov eax, dword ptr [ebp+12]
cmp ebx, eax
jne .Lt_00E4
mov al, byte ptr [ebp+16]
mov ebx, dword ptr [ebp+8]
add ebx, dword ptr [ebp-8]
mov byte ptr [ebx], al
.Lt_00E4:
.Lt_00E3:
.Lt_00E0:
inc dword ptr [ebp-8]
.Lt_00DF:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .Lt_00E2
.Lt_00E1:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_00DD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HREPLACECHAR, .-HREPLACECHAR
.balign 16

.globl HREESCAPE
HREESCAPE:
.type HREESCAPE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E5:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
sub esp, 8
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
mov dword ptr [Lt_0142], eax
cmp dword ptr [Lt_0142], 0
jne .Lt_00E8
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00E6
.Lt_00E8:
.Lt_00E7:
sub esp, 8
mov eax, dword ptr [Lt_0142]
sal eax, 1
push eax
push offset Lt_0143
call DZSTRALLOCATE
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_0144], eax
mov eax, dword ptr [Lt_0143]
mov dword ptr [Lt_0145], eax
mov eax, dword ptr [Lt_0144]
add eax, dword ptr [Lt_0142]
mov dword ptr [Lt_0146], eax
.Lt_00E9:
mov eax, dword ptr [Lt_0146]
cmp dword ptr [Lt_0144], eax
jae .Lt_00EA
mov eax, dword ptr [Lt_0144]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_0147], ebx
inc dword ptr [Lt_0144]
cmp dword ptr [Lt_0147], 92
jne .Lt_00EC
mov ebx, dword ptr [Lt_0146]
cmp dword ptr [Lt_0144], ebx
jb .Lt_00EE
jmp .Lt_00EA
.Lt_00EE:
mov ebx, dword ptr [Lt_0145]
mov byte ptr [ebx], 27
inc dword ptr [Lt_0145]
mov dword ptr [Lt_0148], 0
mov ebx, dword ptr [Lt_0144]
movzx eax, byte ptr [ebx]
mov dword ptr [Lt_0147], eax
inc dword ptr [Lt_0144]
cmp dword ptr [Lt_0147], 48
jl .Lt_00F0
cmp dword ptr [Lt_0147], 57
jg .Lt_00F0
.Lt_00F1:
mov dword ptr [Lt_0148], -1
mov eax, dword ptr [Lt_0147]
add eax, -48
mov dword ptr [Lt_0149], eax
mov dword ptr [Lt_014A], 2
.Lt_00F5:
mov eax, dword ptr [Lt_0146]
cmp dword ptr [Lt_0144], eax
jb .Lt_00F7
jmp .Lt_00F4
.Lt_00F7:
mov eax, dword ptr [Lt_0144]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_0147], ebx
mov ebx, dword ptr [Lt_0147]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_0147]
cmp eax, 57
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_00F9
jmp .Lt_00F4
.Lt_00F9:
.Lt_00F8:
mov eax, dword ptr [Lt_0149]
imul eax, 10
add eax, dword ptr [Lt_0147]
add eax, -48
mov dword ptr [Lt_0149], eax
inc dword ptr [Lt_0144]
.Lt_00F3:
inc dword ptr [Lt_014A]
.Lt_00F2:
cmp dword ptr [Lt_014A], 3
jle .Lt_00F5
.Lt_00F4:
jmp .Lt_00EF
.Lt_00F0:
cmp dword ptr [Lt_0147], 38
je .Lt_00FB
.Lt_00FC:
cmp dword ptr [Lt_0147], 88
je .Lt_00FB
.Lt_00FD:
cmp dword ptr [Lt_0147], 120
jne .Lt_00FA
.Lt_00FB:
mov eax, dword ptr [Lt_0146]
cmp dword ptr [Lt_0144], eax
jb .Lt_00FF
jmp .Lt_00EA
.Lt_00FF:
mov dword ptr [Lt_0149], 0
cmp dword ptr [Lt_0147], 38
jne .Lt_0101
mov eax, dword ptr [Lt_0144]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_0147], ebx
inc dword ptr [Lt_0144]
jmp .Lt_0100
.Lt_0101:
mov dword ptr [Lt_0147], 72
.Lt_0100:
mov ebx, dword ptr [Lt_0147]
mov dword ptr [ebp-8], ebx
jmp .Lt_0103
.Lt_0105:
mov dword ptr [Lt_0148], -1
mov dword ptr [Lt_014A], 1
.Lt_0109:
mov ebx, dword ptr [Lt_0146]
cmp dword ptr [Lt_0144], ebx
jb .Lt_010B
jmp .Lt_0108
.Lt_010B:
mov ebx, dword ptr [Lt_0144]
movzx eax, byte ptr [ebx]
mov dword ptr [Lt_0147], eax
cmp dword ptr [Lt_0147], 97
jl .Lt_010F
cmp dword ptr [Lt_0147], 102
jle .Lt_010E
.Lt_010F:
cmp dword ptr [Lt_0147], 65
jl .Lt_0110
cmp dword ptr [Lt_0147], 70
jle .Lt_010E
.Lt_0110:
cmp dword ptr [Lt_0147], 48
jl .Lt_010D
cmp dword ptr [Lt_0147], 57
jg .Lt_010D
.Lt_010E:
add dword ptr [Lt_0147], -48
cmp dword ptr [Lt_0147], 9
jle .Lt_0112
add dword ptr [Lt_0147], -7
.Lt_0112:
.Lt_0111:
cmp dword ptr [Lt_0147], 16
jle .Lt_0114
add dword ptr [Lt_0147], -32
.Lt_0114:
.Lt_0113:
mov eax, dword ptr [Lt_0149]
sal eax, 4
add eax, dword ptr [Lt_0147]
mov dword ptr [Lt_0149], eax
jmp .Lt_010C
.Lt_010D:
jmp .Lt_0108
.Lt_0115:
.Lt_010C:
inc dword ptr [Lt_0144]
.Lt_0107:
inc dword ptr [Lt_014A]
.Lt_0106:
cmp dword ptr [Lt_014A], 2
jle .Lt_0109
.Lt_0108:
jmp .Lt_0102
.Lt_0116:
mov dword ptr [Lt_0148], -1
mov dword ptr [Lt_014A], 1
.Lt_011A:
mov eax, dword ptr [Lt_0146]
cmp dword ptr [Lt_0144], eax
jb .Lt_011C
jmp .Lt_0119
.Lt_011C:
mov eax, dword ptr [Lt_0144]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_0147], ebx
mov ebx, dword ptr [Lt_0147]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_0147]
cmp eax, 55
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_011E
jmp .Lt_0119
.Lt_011E:
.Lt_011D:
mov eax, dword ptr [Lt_0149]
sal eax, 3
add eax, dword ptr [Lt_0147]
add eax, -48
mov dword ptr [Lt_0149], eax
inc dword ptr [Lt_0144]
.Lt_0118:
inc dword ptr [Lt_014A]
.Lt_0117:
cmp dword ptr [Lt_014A], 3
jle .Lt_011A
.Lt_0119:
jmp .Lt_0102
.Lt_011F:
mov dword ptr [Lt_0148], -1
mov dword ptr [Lt_014A], 1
.Lt_0123:
mov eax, dword ptr [Lt_0146]
cmp dword ptr [Lt_0144], eax
jb .Lt_0125
jmp .Lt_0122
.Lt_0125:
mov eax, dword ptr [Lt_0144]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_0147], ebx
mov ebx, dword ptr [Lt_0147]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_0147]
cmp eax, 49
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0127
jmp .Lt_0122
.Lt_0127:
.Lt_0126:
mov eax, dword ptr [Lt_0149]
sal eax, 1
add eax, dword ptr [Lt_0147]
add eax, -48
mov dword ptr [Lt_0149], eax
inc dword ptr [Lt_0144]
.Lt_0121:
inc dword ptr [Lt_014A]
.Lt_0120:
cmp dword ptr [Lt_014A], 8
jle .Lt_0123
.Lt_0122:
jmp .Lt_0102
.Lt_0103:
mov eax, dword ptr [ebp-8]
add eax, 4294967230
cmp eax, 45
ja .Lt_0102
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0128+eax*4-264]
.LT_0128:
.int .Lt_011F
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0105
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0116
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_011F
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0105
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0102
.int .Lt_0116
.Lt_0102:
jmp .Lt_00EF
.Lt_00FA:
cmp dword ptr [Lt_0147], 97
jne .Lt_0129
.Lt_012A:
mov dword ptr [Lt_0148], -1
mov dword ptr [Lt_0149], 7
jmp .Lt_00EF
.Lt_0129:
cmp dword ptr [Lt_0147], 117
jne .Lt_012B
.Lt_012C:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov al, byte ptr [Lt_0147]
mov ebx, dword ptr [Lt_0145]
mov byte ptr [ebx], al
inc dword ptr [Lt_0145]
mov dword ptr [Lt_014A], 1
.Lt_0130:
sub esp, 12
push 0
push 0
push dword ptr [Lt_0144]
push 0
push dword ptr [Lt_0145]
call fb_StrAssign
add esp, 32
inc dword ptr [Lt_0145]
inc dword ptr [Lt_0144]
.Lt_012E:
inc dword ptr [Lt_014A]
.Lt_012D:
cmp dword ptr [Lt_014A], 4
jle .Lt_0130
.Lt_012F:
mov eax, dword ptr [ebp+12]
add dword ptr [eax], 2
jmp .Lt_00E9
jmp .Lt_00EF
.Lt_012B:
cmp dword ptr [Lt_0147], 85
jne .Lt_0131
.Lt_0132:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [Lt_0145]
mov byte ptr [eax], 85
inc dword ptr [Lt_0145]
mov dword ptr [Lt_014A], 1
.Lt_0136:
sub esp, 12
push 0
push 0
push dword ptr [Lt_0144]
push 0
push dword ptr [Lt_0145]
call fb_StrAssign
add esp, 32
inc dword ptr [Lt_0145]
inc dword ptr [Lt_0144]
.Lt_0134:
inc dword ptr [Lt_014A]
.Lt_0133:
cmp dword ptr [Lt_014A], 4
jle .Lt_0136
.Lt_0135:
mov eax, dword ptr [Lt_0145]
mov byte ptr [eax], 27
mov eax, dword ptr [Lt_0145]
mov byte ptr [eax+1], 85
add dword ptr [Lt_0145], 2
mov dword ptr [Lt_014A], 1
.Lt_013A:
sub esp, 12
push 0
push 0
push dword ptr [Lt_0144]
push 0
push dword ptr [Lt_0145]
call fb_StrAssign
add esp, 32
inc dword ptr [Lt_0145]
inc dword ptr [Lt_0144]
.Lt_0138:
inc dword ptr [Lt_014A]
.Lt_0137:
cmp dword ptr [Lt_014A], 4
jle .Lt_013A
.Lt_0139:
mov eax, dword ptr [ebp+12]
add dword ptr [eax], 4
jmp .Lt_00E9
.Lt_0131:
.Lt_00EF:
cmp dword ptr [Lt_0148], 0
je .Lt_013C
cmp dword ptr [Lt_0149], 255
jbe .Lt_013E
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
mov dword ptr [Lt_0149], 255
.Lt_013E:
.Lt_013D:
cmp dword ptr [Lt_0149], 8
jge .Lt_0140
mov dword ptr [Lt_0142], 1
jmp .Lt_013F
.Lt_0140:
cmp dword ptr [Lt_0149], 64
jge .Lt_0141
mov dword ptr [Lt_0142], 2
jmp .Lt_013F
.Lt_0141:
mov dword ptr [Lt_0142], 3
.Lt_013F:
mov al, byte ptr [Lt_0142]
mov ebx, dword ptr [Lt_0145]
mov byte ptr [ebx], al
inc dword ptr [Lt_0145]
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [Lt_0149]
call fb_OCT_i
add esp, 12
push eax
push 0
push dword ptr [Lt_0145]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [Lt_0142]
add dword ptr [Lt_0145], eax
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .Lt_00E9
.Lt_013C:
.Lt_013B:
.Lt_00EC:
.Lt_00EB:
mov al, byte ptr [Lt_0147]
mov ebx, dword ptr [Lt_0145]
mov byte ptr [ebx], al
inc dword ptr [Lt_0145]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .Lt_00E9
.Lt_00EA:
mov eax, dword ptr [Lt_0145]
mov byte ptr [eax], 0
mov eax, dword ptr [Lt_0143]
mov dword ptr [ebp-4], eax
.Lt_00E6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HREESCAPE, .-HREESCAPE

.section .bss
.balign 4
	.lcomm	Lt_0143,12
.balign 4
	.lcomm	Lt_0147,4
.balign 4
	.lcomm	Lt_0142,4
.balign 4
	.lcomm	Lt_014A,4
.balign 4
	.lcomm	Lt_0149,4
.balign 4
	.lcomm	Lt_0148,4
.balign 4
	.lcomm	Lt_0144,4
.balign 4
	.lcomm	Lt_0145,4
.balign 4
	.lcomm	Lt_0146,4

.section .text
.balign 16

.globl HREESCAPEW
HREESCAPEW:
.type HREESCAPEW, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0151:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
sub esp, 12
push dword ptr [ebp+8]
call fb_WstrLen
add esp, 16
mov dword ptr [Lt_01AC], eax
cmp dword ptr [Lt_01AC], 0
jne .Lt_0154
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0152
.Lt_0154:
.Lt_0153:
sub esp, 8
mov eax, dword ptr [Lt_01AC]
sal eax, 1
push eax
push offset Lt_01AD
call DWSTRALLOCATE
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_01AE], eax
mov eax, dword ptr [Lt_01AD]
mov dword ptr [Lt_01AF], eax
mov eax, dword ptr [Lt_01AC]
sal eax, 2
mov ebx, dword ptr [Lt_01AE]
add ebx, eax
mov dword ptr [Lt_01B0], ebx
.Lt_0155:
mov ebx, dword ptr [Lt_01B0]
cmp dword ptr [Lt_01AE], ebx
jae .Lt_0156
mov ebx, dword ptr [Lt_01AE]
mov eax, dword ptr [ebx]
mov dword ptr [Lt_01B1], eax
add dword ptr [Lt_01AE], 4
cmp dword ptr [Lt_01B1], 92
jne .Lt_0158
mov eax, dword ptr [Lt_01B0]
cmp dword ptr [Lt_01AE], eax
jb .Lt_015A
jmp .Lt_0156
.Lt_015A:
mov eax, dword ptr [Lt_01AF]
mov dword ptr [eax], 27
add dword ptr [Lt_01AF], 4
mov dword ptr [Lt_01B2], 0
mov eax, dword ptr [Lt_01AE]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_01B1], ebx
add dword ptr [Lt_01AE], 4
cmp dword ptr [Lt_01B1], 48
jl .Lt_015C
cmp dword ptr [Lt_01B1], 57
jg .Lt_015C
.Lt_015D:
mov dword ptr [Lt_01B2], -1
mov ebx, dword ptr [Lt_01B1]
add ebx, -48
mov eax, ebx
mov dword ptr [Lt_01B3], eax
mov dword ptr [Lt_01B4], 2
.Lt_0161:
mov eax, dword ptr [Lt_01B0]
cmp dword ptr [Lt_01AE], eax
jb .Lt_0163
jmp .Lt_0160
.Lt_0163:
mov eax, dword ptr [Lt_01AE]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_01B1], ebx
mov ebx, dword ptr [Lt_01B1]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_01B1]
cmp eax, 57
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0165
jmp .Lt_0160
.Lt_0165:
.Lt_0164:
mov eax, dword ptr [Lt_01B3]
imul eax, 10
mov ebx, dword ptr [Lt_01B1]
add ebx, -48
mov ecx, ebx
add eax, ecx
mov dword ptr [Lt_01B3], eax
add dword ptr [Lt_01AE], 4
.Lt_015F:
inc dword ptr [Lt_01B4]
.Lt_015E:
cmp dword ptr [Lt_01B4], 5
jle .Lt_0161
.Lt_0160:
jmp .Lt_015B
.Lt_015C:
cmp dword ptr [Lt_01B1], 38
je .Lt_0167
.Lt_0168:
cmp dword ptr [Lt_01B1], 88
je .Lt_0167
.Lt_0169:
cmp dword ptr [Lt_01B1], 120
jne .Lt_0166
.Lt_0167:
mov eax, dword ptr [Lt_01B0]
cmp dword ptr [Lt_01AE], eax
jb .Lt_016B
jmp .Lt_0156
.Lt_016B:
mov dword ptr [Lt_01B3], 0
cmp dword ptr [Lt_01B1], 38
jne .Lt_016D
mov eax, dword ptr [Lt_01AE]
mov ecx, dword ptr [eax]
mov dword ptr [Lt_01B1], ecx
add dword ptr [Lt_01AE], 4
jmp .Lt_016C
.Lt_016D:
mov dword ptr [Lt_01B1], 72
.Lt_016C:
mov ecx, dword ptr [Lt_01B1]
mov dword ptr [ebp-8], ecx
jmp .Lt_016F
.Lt_0171:
mov dword ptr [Lt_01B2], -1
mov dword ptr [Lt_01B4], 1
.Lt_0175:
mov ecx, dword ptr [Lt_01B0]
cmp dword ptr [Lt_01AE], ecx
jb .Lt_0177
jmp .Lt_0174
.Lt_0177:
mov ecx, dword ptr [Lt_01AE]
mov eax, dword ptr [ecx]
mov dword ptr [Lt_01B1], eax
cmp dword ptr [Lt_01B1], 97
jl .Lt_017B
cmp dword ptr [Lt_01B1], 102
jle .Lt_017A
.Lt_017B:
cmp dword ptr [Lt_01B1], 65
jl .Lt_017C
cmp dword ptr [Lt_01B1], 70
jle .Lt_017A
.Lt_017C:
cmp dword ptr [Lt_01B1], 48
jl .Lt_0179
cmp dword ptr [Lt_01B1], 57
jg .Lt_0179
.Lt_017A:
add dword ptr [Lt_01B1], -48
cmp dword ptr [Lt_01B1], 9
jle .Lt_017E
add dword ptr [Lt_01B1], -7
.Lt_017E:
.Lt_017D:
cmp dword ptr [Lt_01B1], 16
jle .Lt_0180
add dword ptr [Lt_01B1], -32
.Lt_0180:
.Lt_017F:
mov eax, dword ptr [Lt_01B3]
shl eax, 4
add eax, dword ptr [Lt_01B1]
mov dword ptr [Lt_01B3], eax
jmp .Lt_0178
.Lt_0179:
jmp .Lt_0174
.Lt_0181:
.Lt_0178:
add dword ptr [Lt_01AE], 4
.Lt_0173:
inc dword ptr [Lt_01B4]
.Lt_0172:
cmp dword ptr [Lt_01B4], 4
jle .Lt_0175
.Lt_0174:
jmp .Lt_016E
.Lt_0182:
mov dword ptr [Lt_01B2], -1
mov dword ptr [Lt_01B4], 1
.Lt_0186:
mov eax, dword ptr [Lt_01B0]
cmp dword ptr [Lt_01AE], eax
jb .Lt_0188
jmp .Lt_0185
.Lt_0188:
mov eax, dword ptr [Lt_01AE]
mov ecx, dword ptr [eax]
mov dword ptr [Lt_01B1], ecx
mov ecx, dword ptr [Lt_01B1]
cmp ecx, 48
setl cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [Lt_01B1]
cmp eax, 55
setg al
shr eax, 1
sbb eax, eax
or ecx, eax
je .Lt_018A
jmp .Lt_0185
.Lt_018A:
.Lt_0189:
mov eax, dword ptr [Lt_01B3]
shl eax, 3
mov ecx, dword ptr [Lt_01B1]
add ecx, -48
mov ebx, ecx
add eax, ebx
mov dword ptr [Lt_01B3], eax
add dword ptr [Lt_01AE], 4
.Lt_0184:
inc dword ptr [Lt_01B4]
.Lt_0183:
cmp dword ptr [Lt_01B4], 6
jle .Lt_0186
.Lt_0185:
jmp .Lt_016E
.Lt_018B:
mov dword ptr [Lt_01B2], -1
mov dword ptr [Lt_01B4], 1
.Lt_018F:
mov eax, dword ptr [Lt_01B0]
cmp dword ptr [Lt_01AE], eax
jb .Lt_0191
jmp .Lt_018E
.Lt_0191:
mov eax, dword ptr [Lt_01AE]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_01B1], ebx
mov ebx, dword ptr [Lt_01B1]
cmp ebx, 48
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_01B1]
cmp eax, 49
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0193
jmp .Lt_018E
.Lt_0193:
.Lt_0192:
mov eax, dword ptr [Lt_01B3]
shl eax, 1
mov ebx, dword ptr [Lt_01B1]
add ebx, -48
mov ecx, ebx
add eax, ecx
mov dword ptr [Lt_01B3], eax
add dword ptr [Lt_01AE], 4
.Lt_018D:
inc dword ptr [Lt_01B4]
.Lt_018C:
cmp dword ptr [Lt_01B4], 16
jle .Lt_018F
.Lt_018E:
jmp .Lt_016E
.Lt_016F:
mov eax, dword ptr [ebp-8]
add eax, 4294967230
cmp eax, 45
ja .Lt_016E
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0194+eax*4-264]
.LT_0194:
.int .Lt_018B
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_0171
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_0182
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_018B
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_0171
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_0182
.Lt_016E:
jmp .Lt_015B
.Lt_0166:
cmp dword ptr [Lt_01B1], 117
jne .Lt_0195
.Lt_0196:
mov eax, dword ptr [Lt_01AF]
mov ecx, dword ptr [Lt_01B1]
mov dword ptr [eax], ecx
add dword ptr [Lt_01AF], 4
mov dword ptr [Lt_01B4], 1
.Lt_019A:
sub esp, 4
push dword ptr [Lt_01AE]
push 0
push dword ptr [Lt_01AF]
call fb_WstrAssign
add esp, 16
add dword ptr [Lt_01AF], 4
add dword ptr [Lt_01AE], 4
.Lt_0198:
inc dword ptr [Lt_01B4]
.Lt_0197:
cmp dword ptr [Lt_01B4], 4
jle .Lt_019A
.Lt_0199:
mov ecx, dword ptr [ebp+12]
add dword ptr [ecx], 2
jmp .Lt_0155
jmp .Lt_015B
.Lt_0195:
cmp dword ptr [Lt_01B1], 85
jne .Lt_019B
.Lt_019C:
mov ecx, dword ptr [Lt_01AF]
mov dword ptr [ecx], 85
add dword ptr [Lt_01AF], 4
mov dword ptr [Lt_01B4], 1
.Lt_01A0:
sub esp, 4
push dword ptr [Lt_01AE]
push 0
push dword ptr [Lt_01AF]
call fb_WstrAssign
add esp, 16
add dword ptr [Lt_01AF], 4
add dword ptr [Lt_01AE], 4
.Lt_019E:
inc dword ptr [Lt_01B4]
.Lt_019D:
cmp dword ptr [Lt_01B4], 4
jle .Lt_01A0
.Lt_019F:
mov ecx, dword ptr [Lt_01AF]
mov dword ptr [ecx], 27
mov ecx, dword ptr [Lt_01AF]
mov dword ptr [ecx+4], 85
add dword ptr [Lt_01AF], 8
mov dword ptr [Lt_01B4], 1
.Lt_01A4:
sub esp, 4
push dword ptr [Lt_01AE]
push 0
push dword ptr [Lt_01AF]
call fb_WstrAssign
add esp, 16
add dword ptr [Lt_01AF], 4
add dword ptr [Lt_01AE], 4
.Lt_01A2:
inc dword ptr [Lt_01B4]
.Lt_01A1:
cmp dword ptr [Lt_01B4], 4
jle .Lt_01A4
.Lt_01A3:
mov ecx, dword ptr [ebp+12]
add dword ptr [ecx], 4
jmp .Lt_0155
.Lt_019B:
.Lt_015B:
cmp dword ptr [Lt_01B2], 0
je .Lt_01A6
cmp dword ptr [Lt_01B3], 65535
jbe .Lt_01A8
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
mov dword ptr [Lt_01B3], 65535
.Lt_01A8:
.Lt_01A7:
mov dword ptr [Lt_01AC], 1
.Lt_01A9:
cmp dword ptr [Lt_01B3], 7
jbe .Lt_01AA
shr dword ptr [Lt_01B3], 3
inc dword ptr [Lt_01AC]
jmp .Lt_01A9
.Lt_01AA:
mov ecx, dword ptr [Lt_01AF]
mov eax, dword ptr [Lt_01AC]
mov dword ptr [ecx], eax
add dword ptr [Lt_01AF], 4
sub esp, 4
sub esp, 8
push dword ptr [Lt_01B3]
call fb_WstrOct_i
add esp, 12
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
push 0
push dword ptr [Lt_01AF]
call fb_WstrAssign
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call fb_WstrDelete
add esp, 16
mov eax, dword ptr [Lt_01AC]
sal eax, 2
add dword ptr [Lt_01AF], eax
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
jmp .Lt_0155
.Lt_01A6:
.Lt_01A5:
.Lt_0158:
.Lt_0157:
mov eax, dword ptr [Lt_01AF]
mov ecx, dword ptr [Lt_01B1]
mov dword ptr [eax], ecx
add dword ptr [Lt_01AF], 4
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
jmp .Lt_0155
.Lt_0156:
mov ecx, dword ptr [Lt_01AF]
mov dword ptr [ecx], 0
mov ecx, dword ptr [Lt_01AD]
mov dword ptr [ebp-4], ecx
.Lt_0152:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HREESCAPEW, .-HREESCAPEW

.section .bss
.balign 4
	.lcomm	Lt_01AD,12
.balign 4
	.lcomm	Lt_01B1,4
.balign 4
	.lcomm	Lt_01AC,4
.balign 4
	.lcomm	Lt_01B4,4
.balign 4
	.lcomm	Lt_01B2,4
.balign 4
	.lcomm	Lt_01B3,4
.balign 4
	.lcomm	Lt_01AE,4
.balign 4
	.lcomm	Lt_01AF,4
.balign 4
	.lcomm	Lt_01B0,4

.section .text
.balign 16

.globl HESCAPE
HESCAPE:
.type HESCAPE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01BB:
mov dword ptr [Lt_01D7], 0
sub esp, 8
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
mov dword ptr [Lt_01D8], eax
cmp dword ptr [Lt_01D8], 0
jne .Lt_01BE
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_01BC
.Lt_01BE:
.Lt_01BD:
sub esp, 8
mov eax, dword ptr [Lt_01D8]
sal eax, 2
push eax
push offset Lt_01D9
call DZSTRALLOCATE
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_01DA], eax
mov eax, dword ptr [Lt_01D9]
mov dword ptr [Lt_01DB], eax
mov eax, dword ptr [Lt_01DA]
add eax, dword ptr [Lt_01D8]
mov dword ptr [Lt_01DC], eax
.Lt_01BF:
mov eax, dword ptr [Lt_01DC]
cmp dword ptr [Lt_01DA], eax
jae .Lt_01C0
mov eax, dword ptr [Lt_01DA]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_01DD], ebx
inc dword ptr [Lt_01DA]
cmp dword ptr [Lt_01DD], 92
je .Lt_01C3
.Lt_01C4:
cmp dword ptr [Lt_01DD], 34
jne .Lt_01C2
.Lt_01C3:
mov ebx, dword ptr [Lt_01DB]
mov byte ptr [ebx], 92
inc dword ptr [Lt_01DB]
jmp .Lt_01C1
.Lt_01C2:
cmp dword ptr [Lt_01DD], 27
jne .Lt_01C5
.Lt_01C6:
mov ebx, dword ptr [Lt_01DB]
mov byte ptr [ebx], 92
inc dword ptr [Lt_01DB]
mov ebx, dword ptr [Lt_01DC]
cmp dword ptr [Lt_01DA], ebx
jb .Lt_01C8
jmp .Lt_01C0
.Lt_01C8:
mov ebx, dword ptr [Lt_01DA]
movzx eax, byte ptr [ebx]
mov dword ptr [Lt_01DD], eax
inc dword ptr [Lt_01DA]
mov eax, dword ptr [Lt_01DD]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_01DD]
cmp ebx, 3
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_01CA
mov ebx, dword ptr [Lt_01DD]
mov dword ptr [Lt_01D7], ebx
mov ebx, dword ptr [Lt_01DC]
cmp dword ptr [Lt_01DA], ebx
jb .Lt_01CC
jmp .Lt_01C0
.Lt_01CC:
mov ebx, dword ptr [Lt_01DA]
movzx eax, byte ptr [ebx]
mov dword ptr [Lt_01DD], eax
inc dword ptr [Lt_01DA]
.Lt_01CA:
.Lt_01C9:
jmp .Lt_01C1
.Lt_01C5:
cmp dword ptr [Lt_01DD], 0
jl .Lt_01CF
cmp dword ptr [Lt_01DD], 31
jle .Lt_01CE
.Lt_01CF:
cmp dword ptr [Lt_01DD], 128
jl .Lt_01CD
cmp dword ptr [Lt_01DD], 255
jg .Lt_01CD
.Lt_01CE:
mov eax, dword ptr [Lt_01DB]
mov byte ptr [eax], 92
inc dword ptr [Lt_01DB]
cmp dword ptr [Lt_01DD], 8
jge .Lt_01D1
mov eax, dword ptr [Lt_01DB]
mov byte ptr [eax], 48
mov eax, dword ptr [Lt_01DB]
mov byte ptr [eax+1], 48
add dword ptr [Lt_01DB], 2
add dword ptr [Lt_01DD], 48
jmp .Lt_01D0
.Lt_01D1:
cmp dword ptr [Lt_01DD], 64
jge .Lt_01D2
mov eax, dword ptr [Lt_01DB]
mov byte ptr [eax], 48
mov eax, dword ptr [Lt_01DD]
sar eax, 3
add eax, 48
mov bl, al
mov eax, dword ptr [Lt_01DB]
mov byte ptr [eax+1], bl
add dword ptr [Lt_01DB], 2
mov ebx, dword ptr [Lt_01DD]
and ebx, 7
add ebx, 48
mov dword ptr [Lt_01DD], ebx
jmp .Lt_01D0
.Lt_01D2:
mov ebx, dword ptr [Lt_01DD]
sar ebx, 6
add ebx, 48
mov al, bl
mov ebx, dword ptr [Lt_01DB]
mov byte ptr [ebx], al
mov eax, dword ptr [Lt_01DD]
and eax, 56
sar eax, 3
add eax, 48
mov bl, al
mov eax, dword ptr [Lt_01DB]
mov byte ptr [eax+1], bl
add dword ptr [Lt_01DB], 2
mov ebx, dword ptr [Lt_01DD]
and ebx, 7
add ebx, 48
mov dword ptr [Lt_01DD], ebx
.Lt_01D0:
.Lt_01CD:
.Lt_01C1:
mov bl, byte ptr [Lt_01DD]
mov eax, dword ptr [Lt_01DB]
mov byte ptr [eax], bl
inc dword ptr [Lt_01DB]
cmp dword ptr [Lt_01D7], 0
jle .Lt_01D4
dec dword ptr [Lt_01D7]
cmp dword ptr [Lt_01D7], 0
jne .Lt_01D6
mov ebx, dword ptr [Lt_01DB]
mov byte ptr [ebx], 34
mov ebx, dword ptr [Lt_01DB]
mov byte ptr [ebx+1], 34
add dword ptr [Lt_01DB], 2
.Lt_01D6:
.Lt_01D5:
.Lt_01D4:
.Lt_01D3:
jmp .Lt_01BF
.Lt_01C0:
mov ebx, dword ptr [Lt_01DB]
mov byte ptr [ebx], 0
mov ebx, dword ptr [Lt_01D9]
mov dword ptr [ebp-4], ebx
.Lt_01BC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HESCAPE, .-HESCAPE

.section .bss
.balign 4
	.lcomm	Lt_01D9,12
.balign 4
	.lcomm	Lt_01DD,4
.balign 4
	.lcomm	Lt_01D7,4
.balign 4
	.lcomm	Lt_01D8,4
.balign 4
	.lcomm	Lt_01DA,4
.balign 4
	.lcomm	Lt_01DC,4
.balign 4
	.lcomm	Lt_01DB,4

.section .text
.balign 16

.globl HHASESCAPE
HHASESCAPE:
.type HHASESCAPE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01F6:
sub esp, 8
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
mov dword ptr [Lt_0201], eax
.Lt_01F8:
cmp dword ptr [Lt_0201], 0
jle .Lt_01F9
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
cmp ebx, 92
jne .Lt_01FB
inc dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx]
mov dword ptr [Lt_0202], eax
mov eax, dword ptr [Lt_0202]
mov dword ptr [ebp-8], eax
jmp .Lt_01FD
.Lt_01FF:
mov dword ptr [ebp-4], -1
jmp .Lt_01F7
jmp .Lt_01FC
.Lt_01FD:
mov eax, dword ptr [ebp-8]
add eax, 4294967262
cmp eax, 84
ja .Lt_01FC
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0200+eax*4-136]
.LT_0200:
.int .Lt_01FF
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FF
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FF
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FF
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FF
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FF
.int .Lt_01FC
.int .Lt_01FF
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FC
.int .Lt_01FF
.int .Lt_01FC
.int .Lt_01FF
.int .Lt_01FF
.int .Lt_01FF
.Lt_01FC:
.Lt_01FB:
.Lt_01FA:
inc dword ptr [ebp+8]
dec dword ptr [Lt_0201]
jmp .Lt_01F8
.Lt_01F9:
mov dword ptr [ebp-4], 0
.Lt_01F7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HHASESCAPE, .-HHASESCAPE

.section .bss
.balign 4
	.lcomm	Lt_0202,4
.balign 4
	.lcomm	Lt_0201,4

.section .text
.balign 16

.globl HHASESCAPEW
HHASESCAPEW:
.type HHASESCAPEW, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0203:
sub esp, 12
push dword ptr [ebp+8]
call fb_WstrLen
add esp, 16
mov dword ptr [Lt_020E], eax
.Lt_0205:
cmp dword ptr [Lt_020E], 0
jle .Lt_0206
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 92
jne .Lt_0208
add dword ptr [ebp+8], 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_020F], ebx
mov ebx, dword ptr [Lt_020F]
mov dword ptr [ebp-8], ebx
jmp .Lt_020A
.Lt_020C:
mov dword ptr [ebp-4], -1
jmp .Lt_0204
jmp .Lt_0209
.Lt_020A:
mov ebx, dword ptr [ebp-8]
add ebx, 4294967262
cmp ebx, 84
ja .Lt_0209
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.LT_020D+ebx*4-136]
.LT_020D:
.int .Lt_020C
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_020C
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_020C
.int .Lt_020C
.int .Lt_020C
.int .Lt_020C
.int .Lt_020C
.int .Lt_020C
.int .Lt_020C
.int .Lt_020C
.int .Lt_020C
.int .Lt_020C
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_020C
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_020C
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_020C
.int .Lt_020C
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_020C
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_020C
.int .Lt_0209
.int .Lt_020C
.int .Lt_0209
.int .Lt_0209
.int .Lt_0209
.int .Lt_020C
.int .Lt_0209
.int .Lt_020C
.int .Lt_020C
.int .Lt_020C
.Lt_0209:
.Lt_0208:
.Lt_0207:
add dword ptr [ebp+8], 4
dec dword ptr [Lt_020E]
jmp .Lt_0205
.Lt_0206:
mov dword ptr [ebp-4], 0
.Lt_0204:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HHASESCAPEW, .-HHASESCAPEW

.section .bss
.balign 4
	.lcomm	Lt_020F,4
.balign 4
	.lcomm	Lt_020E,4

.section .text
.balign 16

.globl HESCAPEW
HESCAPEW:
.type HESCAPEW, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_021A:
mov eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [Lt_0237], eax
sub esp, 12
push dword ptr [ebp+8]
call fb_WstrLen
add esp, 16
mov dword ptr [Lt_0238], eax
cmp dword ptr [Lt_0238], 0
jne .Lt_021D
mov dword ptr [ebp-4], 0
jmp .Lt_021B
.Lt_021D:
.Lt_021C:
sub esp, 8
mov eax, dword ptr [Lt_0237]
imul eax, dword ptr [Lt_0238]
sal eax, 2
push eax
push offset Lt_0239
call DZSTRALLOCATE
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_023A], eax
mov eax, dword ptr [Lt_0239]
mov dword ptr [Lt_023B], eax
mov eax, dword ptr [Lt_0238]
sal eax, 2
mov ebx, dword ptr [Lt_023A]
add ebx, eax
mov dword ptr [Lt_023C], ebx
.Lt_021E:
mov ebx, dword ptr [Lt_023C]
cmp dword ptr [Lt_023A], ebx
jae .Lt_021F
mov ebx, dword ptr [Lt_023A]
mov eax, dword ptr [ebx]
mov dword ptr [Lt_023D], eax
add dword ptr [Lt_023A], 4
cmp dword ptr [Lt_023D], 27
jne .Lt_0221
mov eax, dword ptr [Lt_023C]
cmp dword ptr [Lt_023A], eax
jb .Lt_0223
jmp .Lt_021F
.Lt_0223:
mov eax, dword ptr [Lt_023A]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_023D], ebx
add dword ptr [Lt_023A], 4
cmp dword ptr [Lt_023D], 1
setae bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [Lt_023D], 11
setbe al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0225
mov eax, dword ptr [Lt_023D]
mov dword ptr [Lt_0240], eax
mov dword ptr [Lt_023D], 0
mov eax, dword ptr [Lt_0240]
sal eax, 2
mov ebx, dword ptr [Lt_023A]
add ebx, eax
mov eax, dword ptr [Lt_023C]
cmp ebx, eax
jbe .Lt_0227
jmp .Lt_021F
.Lt_0227:
.Lt_0228:
cmp dword ptr [Lt_0240], 0
jle .Lt_0229
mov eax, dword ptr [Lt_023D]
shl eax, 3
mov ebx, dword ptr [Lt_023A]
add eax, dword ptr [ebx]
add eax, 4294967248
mov dword ptr [Lt_023D], eax
add dword ptr [Lt_023A], 4
dec dword ptr [Lt_0240]
jmp .Lt_0228
.Lt_0229:
jmp .Lt_0224
.Lt_0225:
cmp dword ptr [Lt_023D], 117
jne .Lt_022C
mov eax, dword ptr [Lt_023A]
add eax, 16
mov ebx, dword ptr [Lt_023C]
cmp eax, ebx
jbe .Lt_022E
jmp .Lt_021F
.Lt_022E:
sub esp, 12
push dword ptr [Lt_023A]
call HU16TOWCHAR
add esp, 16
mov dword ptr [Lt_023D], eax
add dword ptr [Lt_023A], 16
jmp .Lt_022B
.Lt_022C:
sub esp, 12
push dword ptr [Lt_023D]
call HREMAPCHAR
add esp, 16
mov dword ptr [Lt_023D], eax
.Lt_022B:
.Lt_0224:
.Lt_0221:
.Lt_0220:
mov dword ptr [Lt_0240], 1
mov eax, dword ptr [Lt_0237]
mov dword ptr [ebp-8], eax
jmp .Lt_0230
.Lt_0233:
mov eax, dword ptr [Lt_023B]
mov byte ptr [eax], 92
inc dword ptr [Lt_023B]
mov eax, dword ptr [Lt_023D]
and eax, 255
mov dword ptr [Lt_0241], eax
cmp dword ptr [Lt_0241], 8
jae .Lt_0235
mov eax, dword ptr [Lt_0241]
add eax, 48
mov bl, al
mov eax, dword ptr [Lt_023B]
mov byte ptr [eax], bl
inc dword ptr [Lt_023B]
jmp .Lt_0234
.Lt_0235:
cmp dword ptr [Lt_0241], 64
jae .Lt_0236
mov ebx, dword ptr [Lt_0241]
shr ebx, 3
add ebx, 48
mov al, bl
mov ebx, dword ptr [Lt_023B]
mov byte ptr [ebx], al
mov eax, dword ptr [Lt_0241]
and eax, 7
add eax, 48
mov bl, al
mov eax, dword ptr [Lt_023B]
mov byte ptr [eax+1], bl
add dword ptr [Lt_023B], 2
jmp .Lt_0234
.Lt_0236:
mov ebx, dword ptr [Lt_0241]
shr ebx, 6
add ebx, 48
mov al, bl
mov ebx, dword ptr [Lt_023B]
mov byte ptr [ebx], al
mov eax, dword ptr [Lt_0241]
and eax, 56
shr eax, 3
add eax, 48
mov bl, al
mov eax, dword ptr [Lt_023B]
mov byte ptr [eax+1], bl
mov ebx, dword ptr [Lt_0241]
and ebx, 7
add ebx, 48
mov al, bl
mov ebx, dword ptr [Lt_023B]
mov byte ptr [ebx+2], al
add dword ptr [Lt_023B], 3
.Lt_0234:
shr dword ptr [Lt_023D], 8
.Lt_0231:
inc dword ptr [Lt_0240]
.Lt_0230:
mov eax, dword ptr [ebp-8]
cmp dword ptr [Lt_0240], eax
jle .Lt_0233
.Lt_0232:
jmp .Lt_021E
.Lt_021F:
mov eax, dword ptr [Lt_023B]
mov byte ptr [eax], 0
mov eax, dword ptr [Lt_0239]
mov dword ptr [ebp-4], eax
.Lt_021B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HESCAPEW, .-HESCAPEW

.section .bss
.balign 4
	.lcomm	Lt_0239,12
.balign 4
	.lcomm	Lt_023D,4
.balign 4
	.lcomm	Lt_0241,4
.balign 4
	.lcomm	Lt_0238,4
.balign 4
	.lcomm	Lt_0240,4
.balign 4
	.lcomm	Lt_0237,4
.balign 4
	.lcomm	Lt_023A,4
.balign 4
	.lcomm	Lt_023C,4
.balign 4
	.lcomm	Lt_023B,4

.section .text
.balign 16

.globl HUNESCAPE
HUNESCAPE:
.type HUNESCAPE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0242:
sub esp, 8
push 0
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
mov dword ptr [Lt_0250], eax
cmp dword ptr [Lt_0250], 0
jne .Lt_0245
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0243
.Lt_0245:
.Lt_0244:
sub esp, 8
push dword ptr [Lt_0250]
push offset Lt_0251
call DZSTRALLOCATE
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_0252], eax
mov eax, dword ptr [Lt_0251]
mov dword ptr [Lt_0253], eax
mov eax, dword ptr [Lt_0252]
add eax, dword ptr [Lt_0250]
mov dword ptr [Lt_0254], eax
.Lt_0246:
mov eax, dword ptr [Lt_0254]
cmp dword ptr [Lt_0252], eax
jae .Lt_0247
mov eax, dword ptr [Lt_0252]
movzx ebx, byte ptr [eax]
mov dword ptr [Lt_0255], ebx
inc dword ptr [Lt_0252]
cmp dword ptr [Lt_0255], 27
jne .Lt_0249
mov ebx, dword ptr [Lt_0254]
cmp dword ptr [Lt_0252], ebx
jb .Lt_024B
jmp .Lt_0247
.Lt_024B:
mov ebx, dword ptr [Lt_0252]
movzx eax, byte ptr [ebx]
mov dword ptr [Lt_0255], eax
inc dword ptr [Lt_0252]
mov eax, dword ptr [Lt_0255]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0255]
cmp ebx, 3
setle bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_024D
mov ebx, dword ptr [Lt_0255]
mov dword ptr [Lt_0258], ebx
mov dword ptr [Lt_0255], 0
.Lt_024E:
cmp dword ptr [Lt_0258], 0
jle .Lt_024F
mov ebx, dword ptr [Lt_0255]
sal ebx, 3
mov eax, dword ptr [Lt_0252]
movzx ecx, byte ptr [eax]
add ebx, ecx
add ebx, -48
mov dword ptr [Lt_0255], ebx
inc dword ptr [Lt_0252]
dec dword ptr [Lt_0258]
jmp .Lt_024E
.Lt_024F:
jmp .Lt_024C
.Lt_024D:
sub esp, 12
push dword ptr [Lt_0255]
call HREMAPCHAR
add esp, 16
mov dword ptr [Lt_0255], eax
.Lt_024C:
.Lt_0249:
.Lt_0248:
mov al, byte ptr [Lt_0255]
mov ebx, dword ptr [Lt_0253]
mov byte ptr [ebx], al
inc dword ptr [Lt_0253]
jmp .Lt_0246
.Lt_0247:
mov eax, dword ptr [Lt_0253]
mov byte ptr [eax], 0
mov eax, dword ptr [Lt_0251]
mov dword ptr [ebp-4], eax
.Lt_0243:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUNESCAPE, .-HUNESCAPE

.section .bss
.balign 4
	.lcomm	Lt_0251,12
.balign 4
	.lcomm	Lt_0255,4
.balign 4
	.lcomm	Lt_0250,4
.balign 4
	.lcomm	Lt_0258,4
.balign 4
	.lcomm	Lt_0252,4
.balign 4
	.lcomm	Lt_0253,4
.balign 4
	.lcomm	Lt_0254,4

.section .text
.balign 16

.globl HUNESCAPEW
HUNESCAPEW:
.type HUNESCAPEW, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0259:
sub esp, 12
push dword ptr [ebp+8]
call fb_WstrLen
add esp, 16
mov dword ptr [Lt_026B], eax
cmp dword ptr [Lt_026B], 0
jne .Lt_025C
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_025A
.Lt_025C:
.Lt_025B:
sub esp, 8
push dword ptr [Lt_026B]
push offset Lt_026C
call DWSTRALLOCATE
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_026D], eax
mov eax, dword ptr [Lt_026C]
mov dword ptr [Lt_026E], eax
mov eax, dword ptr [Lt_026B]
sal eax, 2
mov ebx, dword ptr [Lt_026D]
add ebx, eax
mov dword ptr [Lt_026F], ebx
.Lt_025D:
mov ebx, dword ptr [Lt_026F]
cmp dword ptr [Lt_026D], ebx
jae .Lt_025E
mov ebx, dword ptr [Lt_026D]
mov eax, dword ptr [ebx]
mov dword ptr [Lt_0270], eax
add dword ptr [Lt_026D], 4
cmp dword ptr [Lt_0270], 27
jne .Lt_0260
mov eax, dword ptr [Lt_026F]
cmp dword ptr [Lt_026D], eax
jb .Lt_0262
jmp .Lt_025E
.Lt_0262:
mov eax, dword ptr [Lt_026D]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_0270], ebx
add dword ptr [Lt_026D], 4
mov ebx, dword ptr [Lt_0270]
cmp ebx, 1
setge bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_0270]
cmp eax, 11
setle al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0264
mov eax, dword ptr [Lt_0270]
mov dword ptr [Lt_0273], eax
mov dword ptr [Lt_0270], 0
.Lt_0265:
cmp dword ptr [Lt_0273], 0
jle .Lt_0266
mov eax, dword ptr [Lt_0270]
sal eax, 3
mov ebx, eax
mov eax, dword ptr [Lt_026D]
add ebx, dword ptr [eax]
add ebx, 4294967248
mov eax, ebx
mov dword ptr [Lt_0270], eax
add dword ptr [Lt_026D], 4
dec dword ptr [Lt_0273]
jmp .Lt_0265
.Lt_0266:
jmp .Lt_0263
.Lt_0264:
cmp dword ptr [Lt_0270], 117
jne .Lt_0268
mov eax, dword ptr [Lt_026D]
add eax, 16
mov ebx, dword ptr [Lt_026F]
cmp eax, ebx
jbe .Lt_026A
jmp .Lt_025E
.Lt_026A:
sub esp, 12
push dword ptr [Lt_026D]
call HU16TOWCHAR
add esp, 16
mov dword ptr [Lt_0270], eax
add dword ptr [Lt_026D], 16
jmp .Lt_0267
.Lt_0268:
sub esp, 12
push dword ptr [Lt_0270]
call HREMAPCHAR
add esp, 16
mov dword ptr [Lt_0270], eax
.Lt_0267:
.Lt_0263:
.Lt_0260:
.Lt_025F:
mov eax, dword ptr [Lt_026E]
mov ebx, dword ptr [Lt_0270]
mov dword ptr [eax], ebx
add dword ptr [Lt_026E], 4
jmp .Lt_025D
.Lt_025E:
mov ebx, dword ptr [Lt_026E]
mov dword ptr [ebx], 0
mov ebx, dword ptr [Lt_026C]
mov dword ptr [ebp-4], ebx
.Lt_025A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUNESCAPEW, .-HUNESCAPEW

.section .bss
.balign 4
	.lcomm	Lt_026C,12
.balign 4
	.lcomm	Lt_0270,4
.balign 4
	.lcomm	Lt_026B,4
.balign 4
	.lcomm	Lt_0273,4
.balign 4
	.lcomm	Lt_026D,4
.balign 4
	.lcomm	Lt_026E,4
.balign 4
	.lcomm	Lt_026F,4

.section .text
.balign 16

.globl HCHARNEEDSESCAPING
HCHARNEEDSESCAPING:
.type HCHARNEEDSESCAPING, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0274:
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
.Lt_0275:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHARNEEDSESCAPING, .-HCHARNEEDSESCAPING
.balign 16

.globl HISVALIDHEXDIGIT
HISVALIDHEXDIGIT:
.type HISVALIDHEXDIGIT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_027B:
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
.Lt_027C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HISVALIDHEXDIGIT, .-HISVALIDHEXDIGIT
.balign 16

.globl HSPLITSTR
HSPLITSTR:
.type HSPLITSTR, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_0286:
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
sub esp, 4
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
call fb_ArrayRedimEx
add esp, 32
test eax, eax
je .Lt_0288
push 0
push 0
push offset Lt_0289
push 1267
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0288:
sub esp, 8
push -1
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-44], eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-52], 1
.Lt_028A:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp-52]
call fb_StrInstr
add esp, 16
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jle .Lt_028E
mov eax, dword ptr [ebp-4]
cmp dword ptr [ebp-48], eax
jl .Lt_0290
add dword ptr [ebp-4], 10
sub esp, 4
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
call fb_ArrayRedimPresvEx
add esp, 32
test eax, eax
je .Lt_0291
push 0
push 0
push offset Lt_0289
push 1278
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0291:
.Lt_0290:
.Lt_028F:
mov eax, dword ptr [ebp-48]
sal eax, 2
add eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-52]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-44]
add dword ptr [ebp-52], ebx
.Lt_028E:
.Lt_028D:
inc dword ptr [ebp-48]
.Lt_028C:
cmp dword ptr [ebp-52], 0
jne .Lt_028A
.Lt_028B:
dec dword ptr [ebp-48]
cmp dword ptr [ebp-48], 0
jne .Lt_0293
sub esp, 4
push 0
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+16]
call fb_ArrayRedimEx
add esp, 32
test eax, eax
je .Lt_0294
push 0
push 0
push offset Lt_0289
push 1288
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0294:
sub esp, 12
push 0
push -1
push dword ptr [ebp+8]
push -1
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_ArrayErase
add esp, 16
jmp .Lt_0287
.Lt_0293:
.Lt_0292:
sub esp, 4
push dword ptr [ebp-48]
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+16]
call fb_ArrayRedimEx
add esp, 32
test eax, eax
je .Lt_0295
push 0
push 0
push offset Lt_0289
push 1293
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0295:
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [eax]
dec ebx
push ebx
push dword ptr [ebp+8]
call fb_LEFT
add esp, 12
push eax
push -1
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
mov dword ptr [ebp-52], 1
.Lt_0296:
mov eax, dword ptr [ebp-48]
cmp dword ptr [ebp-52], eax
je .Lt_0297
sub esp, 12
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
call fb_StrMid
add esp, 12
push eax
push -1
mov eax, dword ptr [ebp-52]
imul eax, 12
mov ebx, dword ptr [ebp+16]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 32
inc dword ptr [ebp-52]
jmp .Lt_0296
.Lt_0297:
sub esp, 12
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
call fb_StrMid
add esp, 12
push eax
push -1
mov eax, dword ptr [ebp-48]
imul eax, 12
mov ebx, dword ptr [ebp+16]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 12
lea ebx, [ebp-40]
push ebx
call fb_ArrayErase
add esp, 16
.Lt_0287:
pop ebx
mov esp, ebp
pop ebp
ret
.size HSPLITSTR, .-HSPLITSTR
.balign 16

.globl HSTR2TOK
HSTR2TOK:
.type HSTR2TOK, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0298:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 32
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.Lt_029A:
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
test ebx, ebx
je .Lt_029B
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 7
jne .Lt_029D
mov dword ptr [ebp-24], 32
.Lt_029D:
.Lt_029C:
cmp dword ptr [ebp-24], 32
jne .Lt_029F
cmp dword ptr [ebp-12], 32
je .Lt_02A1
inc dword ptr [ebp-8]
.Lt_02A1:
.Lt_02A0:
.Lt_029F:
.Lt_029E:
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-12], eax
inc dword ptr [ebp-16]
jmp .Lt_029A
.Lt_029B:
cmp dword ptr [ebp-12], 32
je .Lt_02A3
inc dword ptr [ebp-8]
.Lt_02A3:
.Lt_02A2:
cmp dword ptr [ebp-8], 0
jne .Lt_02A5
mov dword ptr [ebp-4], 0
jmp .Lt_0299
.Lt_02A5:
.Lt_02A4:
sub esp, 4
mov eax, dword ptr [ebp-8]
dec eax
push eax
push 0
push 1
push -1
push -1
push 12
push dword ptr [ebp+12]
call fb_ArrayRedimEx
add esp, 32
test eax, eax
je .Lt_02A6
push 0
push 0
push offset Lt_0289
push 1335
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_02A6:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 32
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.Lt_02A7:
mov eax, dword ptr [ebp-16]
movzx ebx, byte ptr [eax]
test ebx, ebx
je .Lt_02A8
mov ebx, dword ptr [ebp-16]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 7
jne .Lt_02AA
mov dword ptr [ebp-24], 32
.Lt_02AA:
.Lt_02A9:
cmp dword ptr [ebp-24], 32
jne .Lt_02AC
cmp dword ptr [ebp-12], 32
je .Lt_02AE
inc dword ptr [ebp-8]
.Lt_02AE:
.Lt_02AD:
jmp .Lt_02AB
.Lt_02AC:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push dword ptr [ebp-24]
push 1
call fb_CHR
add esp, 16
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
call fb_StrConcat
add esp, 28
push eax
push -1
mov eax, dword ptr [ebp-8]
imul eax, 12
mov ebx, dword ptr [ebp+12]
add eax, dword ptr [ebx]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 32
.Lt_02AB:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-12], ebx
inc dword ptr [ebp-16]
jmp .Lt_02A7
.Lt_02A8:
cmp dword ptr [ebp-12], 32
je .Lt_02B0
mov ebx, dword ptr [ebp-8]
inc ebx
mov dword ptr [ebp-20], ebx
jmp .Lt_02B2
.Lt_02B0:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-20], ebx
.Lt_02B2:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
.Lt_0299:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HSTR2TOK, .-HSTR2TOK
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
HREMAPCHAR:
.type HREMAPCHAR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_01E0:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
jmp .Lt_01E3
.Lt_01E5:
mov dword ptr [ebp-4], 13
jmp .Lt_01E2
.Lt_01E7:
mov dword ptr [ebp-4], 10
jmp .Lt_01E2
.Lt_01EA:
mov dword ptr [ebp-4], 9
jmp .Lt_01E2
.Lt_01EC:
mov dword ptr [ebp-4], 8
jmp .Lt_01E2
.Lt_01EE:
mov dword ptr [ebp-4], 7
jmp .Lt_01E2
.Lt_01F0:
mov dword ptr [ebp-4], 12
jmp .Lt_01E2
.Lt_01F2:
mov dword ptr [ebp-4], 11
jmp .Lt_01E2
.Lt_01F4:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_01E3:
mov eax, dword ptr [ebp-8]
add eax, 4294967199
cmp eax, 21
ja .Lt_01F4
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_01F5+eax*4-388]
.LT_01F5:
.int .Lt_01EE
.int .Lt_01EC
.int .Lt_01F4
.int .Lt_01F4
.int .Lt_01F4
.int .Lt_01F0
.int .Lt_01F4
.int .Lt_01F4
.int .Lt_01F4
.int .Lt_01F4
.int .Lt_01F4
.int .Lt_01E7
.int .Lt_01F4
.int .Lt_01E7
.int .Lt_01F4
.int .Lt_01F4
.int .Lt_01F4
.int .Lt_01E5
.int .Lt_01F4
.int .Lt_01EA
.int .Lt_01F4
.int .Lt_01F2
.Lt_01E2:
.Lt_01E1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HREMAPCHAR, .-HREMAPCHAR
.balign 16
HU16TOWCHAR:
.type HU16TOWCHAR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0210:
mov dword ptr [Lt_02B3], 0
mov dword ptr [Lt_02B4], 1
.Lt_0215:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, 4294967248
mov dword ptr [Lt_02B5], ebx
add dword ptr [ebp+8], 4
cmp dword ptr [Lt_02B5], 9
jbe .Lt_0217
add dword ptr [Lt_02B5], 4294967289
.Lt_0217:
.Lt_0216:
cmp dword ptr [Lt_02B5], 16
jbe .Lt_0219
add dword ptr [Lt_02B5], 4294967264
.Lt_0219:
.Lt_0218:
mov ebx, dword ptr [Lt_02B3]
shl ebx, 4
or ebx, dword ptr [Lt_02B5]
mov dword ptr [Lt_02B3], ebx
.Lt_0213:
inc dword ptr [Lt_02B4]
.Lt_0212:
cmp dword ptr [Lt_02B4], 4
jle .Lt_0215
.Lt_0214:
mov ebx, dword ptr [Lt_02B3]
mov dword ptr [ebp-4], ebx
.Lt_0211:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HU16TOWCHAR, .-HU16TOWCHAR

.section .bss
.balign 4
	.lcomm	Lt_02B3,4
.balign 4
	.lcomm	Lt_02B5,4
.balign 4
	.lcomm	Lt_02B4,4
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_0289:	.ascii	"src/compiler/hlp-str.bas\0"
