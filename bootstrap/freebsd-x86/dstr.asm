	.intel_syntax noprefix

.section .text
.balign 16

.globl DZSTRZERO
DZSTRZERO:
push ebp
mov ebp, esp
.Lt_005D:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_005E:
mov esp, ebp
pop ebp
ret
.balign 16

.globl DZSTRALLOCATE
DZSTRALLOCATE:
push ebp
mov ebp, esp
push ebx
.Lt_005F:
cmp dword ptr [ebp+12], 0
jne .Lt_0062
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0064
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_0064:
.Lt_0063:
jmp .Lt_0060
.Lt_0062:
.Lt_0061:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+4], ebx
je .Lt_0066
push 0
push 1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.Lt_0066:
.Lt_0065:
.Lt_0060:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DZSTRRESET
DZSTRRESET:
push ebp
mov ebp, esp
push ebx
.Lt_0067:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_006A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 0
.Lt_006A:
.Lt_0069:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 0
.Lt_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DZSTRASSIGN
DZSTRASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_006B:
cmp dword ptr [ebp+12], 0
je .Lt_006D
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_0077
.Lt_006D:
mov dword ptr [ebp-8], 0
.Lt_0077:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0070
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0072
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_0072:
.Lt_0071:
jmp .Lt_006C
.Lt_0070:
.Lt_006F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .Lt_0074
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.Lt_0074:
.Lt_0073:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_0076
push 0
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call fb_StrAssign
add esp, 20
.Lt_0076:
.Lt_0075:
.Lt_006C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DZSTRASSIGNW
DZSTRASSIGNW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0078:
cmp dword ptr [ebp+12], 0
je .Lt_007A
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0084
.Lt_007A:
mov dword ptr [ebp-8], 0
.Lt_0084:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_007D
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_007F
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_007F:
.Lt_007E:
jmp .Lt_0079
.Lt_007D:
.Lt_007C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .Lt_0081
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.Lt_0081:
.Lt_0080:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_0083
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call fb_WstrAssignToA
add esp, 16
.Lt_0083:
.Lt_0082:
.Lt_0079:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DZSTRASSIGNC
DZSTRASSIGNC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0085:
mov dword ptr [ebp-4], 1
cmp dword ptr [ebp-4], 0
jne .Lt_0088
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_008A
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_008A:
.Lt_0089:
jmp .Lt_0086
.Lt_0088:
.Lt_0087:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .Lt_008C
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.Lt_008C:
.Lt_008B:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_008E
mov bl, byte ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx+1], 0
.Lt_008E:
.Lt_008D:
.Lt_0086:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DZSTRCONCATASSIGN
DZSTRCONCATASSIGN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_008F:
cmp dword ptr [ebp+12], 0
je .Lt_0091
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_0097
.Lt_0091:
mov dword ptr [ebp-8], 0
.Lt_0097:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_0094
jmp .Lt_0090
.Lt_0094:
.Lt_0093:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0096
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-12]
push ebx
call fb_StrAssign
add esp, 20
.Lt_0096:
.Lt_0095:
.Lt_0090:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DZSTRCONCATASSIGNW
DZSTRCONCATASSIGNW:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0098:
cmp dword ptr [ebp+12], 0
je .Lt_009A
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00A0
.Lt_009A:
mov dword ptr [ebp-8], 0
.Lt_00A0:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_009D
jmp .Lt_0099
.Lt_009D:
.Lt_009C:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_009F
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-12]
push ebx
call fb_WstrAssignToA
add esp, 16
.Lt_009F:
.Lt_009E:
.Lt_0099:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DZSTRCONCATASSIGNC
DZSTRCONCATASSIGNC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00A1:
mov dword ptr [ebp-4], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00A4
jmp .Lt_00A2
.Lt_00A4:
.Lt_00A3:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00A6
mov al, byte ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
add ecx, dword ptr [ebp-8]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebp-8]
mov byte ptr [ecx+1], 0
.Lt_00A6:
.Lt_00A5:
.Lt_00A2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DWSTRZERO
DWSTRZERO:
push ebp
mov ebp, esp
.Lt_00A7:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_00A8:
mov esp, ebp
pop ebp
ret
.balign 16

.globl DWSTRALLOCATE
DWSTRALLOCATE:
push ebp
mov ebp, esp
push ebx
.Lt_00A9:
cmp dword ptr [ebp+12], 0
jne .Lt_00AC
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00AE
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_00AE:
.Lt_00AD:
jmp .Lt_00AA
.Lt_00AC:
.Lt_00AB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+4], ebx
je .Lt_00B0
push 0
push 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.Lt_00B0:
.Lt_00AF:
.Lt_00AA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DWSTRRESET
DWSTRRESET:
push ebp
mov ebp, esp
push ebx
.Lt_00B1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00B4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebx], 0
.Lt_00B4:
.Lt_00B3:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 0
.Lt_00B2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DWSTRASSIGN
DWSTRASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00B5:
cmp dword ptr [ebp+12], 0
je .Lt_00B7
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C1
.Lt_00B7:
mov dword ptr [ebp-8], 0
.Lt_00C1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00BA
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00BC
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_00BC:
.Lt_00BB:
jmp .Lt_00B6
.Lt_00BA:
.Lt_00B9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .Lt_00BE
push 0
push 4
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.Lt_00BE:
.Lt_00BD:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_00C0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call fb_WstrAssign
add esp, 12
.Lt_00C0:
.Lt_00BF:
.Lt_00B6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DWSTRASSIGNA
DWSTRASSIGNA:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00C2:
cmp dword ptr [ebp+12], 0
je .Lt_00C4
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00CE
.Lt_00C4:
mov dword ptr [ebp-8], 0
.Lt_00CE:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00C7
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00C9
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_00C9:
.Lt_00C8:
jmp .Lt_00C3
.Lt_00C7:
.Lt_00C6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .Lt_00CB
push 0
push 4
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.Lt_00CB:
.Lt_00CA:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_00CD
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call fb_WstrAssignFromA
add esp, 16
.Lt_00CD:
.Lt_00CC:
.Lt_00C3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DWSTRASSIGNC
DWSTRASSIGNC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00CF:
mov dword ptr [ebp-4], 4
cmp dword ptr [ebp-4], 0
jne .Lt_00D2
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00D4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_00D4:
.Lt_00D3:
jmp .Lt_00D0
.Lt_00D2:
.Lt_00D1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .Lt_00D6
push 0
push 4
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
.Lt_00D6:
.Lt_00D5:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_00D8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [eax+4], 0
.Lt_00D8:
.Lt_00D7:
.Lt_00D0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DWSTRCONCATASSIGN
DWSTRCONCATASSIGN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00D9:
cmp dword ptr [ebp+12], 0
je .Lt_00DB
push dword ptr [ebp+12]
call fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00E1
.Lt_00DB:
mov dword ptr [ebp-8], 0
.Lt_00E1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00DE
jmp .Lt_00DA
.Lt_00DE:
.Lt_00DD:
push -1
push 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00E0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
sal ebx, 2
mov ecx, dword ptr [eax]
add ecx, ebx
push ecx
call fb_WstrAssign
add esp, 12
.Lt_00E0:
.Lt_00DF:
.Lt_00DA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DWSTRCONCATASSIGNA
DWSTRCONCATASSIGNA:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00E2:
cmp dword ptr [ebp+12], 0
je .Lt_00E4
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00EA
.Lt_00E4:
mov dword ptr [ebp-8], 0
.Lt_00EA:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00E7
jmp .Lt_00E3
.Lt_00E7:
.Lt_00E6:
push -1
push 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00E9
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-12]
sal ebx, 2
mov ecx, dword ptr [eax]
add ecx, ebx
push ecx
call fb_WstrAssignFromA
add esp, 16
.Lt_00E9:
.Lt_00E8:
.Lt_00E3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl DWSTRCONCATASSIGNC
DWSTRCONCATASSIGNC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00EB:
mov dword ptr [ebp-4], 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00EE
jmp .Lt_00EC
.Lt_00EE:
.Lt_00ED:
push -1
push 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00F0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
sal ebx, 2
mov ecx, dword ptr [eax]
add ecx, ebx
mov ebx, dword ptr [ebp+12]
mov dword ptr [ecx], ebx
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
sal ecx, 2
mov eax, dword ptr [ebx]
add eax, ecx
mov dword ptr [eax+4], 0
.Lt_00F0:
.Lt_00EF:
.Lt_00EC:
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
HREALLOC:
push ebp
mov ebp, esp
push ebx
push esi
.Lt_00F1:
mov eax, dword ptr [ebp+12]
add eax, 15
and eax, -16
mov dword ptr [Lt_00FD], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
cmp ecx, dword ptr [eax+8]
setg cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+8]
sar esi, 3
mov eax, dword ptr [ecx+8]
sub eax, esi
mov esi, dword ptr [Lt_00FD]
cmp esi, eax
setl dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
je .Lt_00F4
cmp dword ptr [ebp+20], 0
jne .Lt_00F6
mov esi, dword ptr [ebp+8]
cmp dword ptr [esi], 0
je .Lt_00F8
mov esi, dword ptr [ebp+8]
push dword ptr [esi]
call free
add esp, 4
.Lt_00F8:
.Lt_00F7:
mov esi, dword ptr [Lt_00FD]
inc esi
imul esi, dword ptr [ebp+16]
mov ebx, esi
push ebx
call malloc
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00FA
mov eax, dword ptr [ebp+12]
inc eax
imul eax, dword ptr [ebp+16]
push eax
call XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [Lt_00FD], eax
.Lt_00FA:
.Lt_00F9:
jmp .Lt_00F5
.Lt_00F6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_0101], ebx
mov ebx, dword ptr [Lt_00FD]
inc ebx
imul ebx, dword ptr [ebp+16]
mov eax, ebx
push eax
push dword ptr [Lt_0101]
call realloc
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00FC
mov eax, dword ptr [ebp+12]
inc eax
imul eax, dword ptr [ebp+16]
push eax
push dword ptr [Lt_0101]
call XREALLOCATE
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [Lt_00FD], eax
.Lt_00FC:
.Lt_00FB:
.Lt_00F5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [Lt_00FD]
mov dword ptr [eax+8], ebx
.Lt_00F4:
.Lt_00F3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
.Lt_00F2:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_00FD,4
.balign 4
	.lcomm	Lt_0101,4
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
