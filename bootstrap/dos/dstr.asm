	.intel_syntax noprefix

.section .text
.balign 16

.globl _DZSTRZERO
_DZSTRZERO:
push ebp
mov ebp, esp
.Lt_005E:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_005F:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRALLOCATE
_DZSTRALLOCATE:
push ebp
mov ebp, esp
push ebx
.Lt_0060:
cmp dword ptr [ebp+12], 0
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
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_0065:
.Lt_0064:
jmp .Lt_0061
.Lt_0063:
.Lt_0062:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+4], ebx
je .Lt_0067
push 0
push 1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.Lt_0067:
.Lt_0066:
.Lt_0061:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRRESET
_DZSTRRESET:
push ebp
mov ebp, esp
push ebx
.Lt_0068:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_006B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 0
.Lt_006B:
.Lt_006A:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 0
.Lt_0069:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRASSIGN
_DZSTRASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_006C:
cmp dword ptr [ebp+12], 0
je .Lt_006E
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_0078
.Lt_006E:
mov dword ptr [ebp-8], 0
.Lt_0078:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
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
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_0073:
.Lt_0072:
jmp .Lt_006D
.Lt_0071:
.Lt_0070:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .Lt_0075
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.Lt_0075:
.Lt_0074:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_0077
push 0
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call _fb_StrAssign
add esp, 20
.Lt_0077:
.Lt_0076:
.Lt_006D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRASSIGNW
_DZSTRASSIGNW:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0079:
cmp dword ptr [ebp+12], 0
je .Lt_007B
push dword ptr [ebp+12]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0085
.Lt_007B:
mov dword ptr [ebp-8], 0
.Lt_0085:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_007E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0080
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_0080:
.Lt_007F:
jmp .Lt_007A
.Lt_007E:
.Lt_007D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .Lt_0082
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.Lt_0082:
.Lt_0081:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_0084
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call _fb_WstrAssignToA
add esp, 16
.Lt_0084:
.Lt_0083:
.Lt_007A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRASSIGNC
_DZSTRASSIGNC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0086:
mov dword ptr [ebp-4], 1
cmp dword ptr [ebp-4], 0
jne .Lt_0089
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_008B
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_008B:
.Lt_008A:
jmp .Lt_0087
.Lt_0089:
.Lt_0088:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .Lt_008D
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.Lt_008D:
.Lt_008C:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_008F
mov bl, byte ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx+1], 0
.Lt_008F:
.Lt_008E:
.Lt_0087:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRCONCATASSIGN
_DZSTRCONCATASSIGN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0090:
cmp dword ptr [ebp+12], 0
je .Lt_0092
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_0098
.Lt_0092:
mov dword ptr [ebp-8], 0
.Lt_0098:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_0095
jmp .Lt_0091
.Lt_0095:
.Lt_0094:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_0097
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-12]
push ebx
call _fb_StrAssign
add esp, 20
.Lt_0097:
.Lt_0096:
.Lt_0091:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRCONCATASSIGNW
_DZSTRCONCATASSIGNW:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0099:
cmp dword ptr [ebp+12], 0
je .Lt_009B
push dword ptr [ebp+12]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00A1
.Lt_009B:
mov dword ptr [ebp-8], 0
.Lt_00A1:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_009E
jmp .Lt_009A
.Lt_009E:
.Lt_009D:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00A0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-12]
push ebx
call _fb_WstrAssignToA
add esp, 16
.Lt_00A0:
.Lt_009F:
.Lt_009A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DZSTRCONCATASSIGNC
_DZSTRCONCATASSIGNC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00A2:
mov dword ptr [ebp-4], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00A5
jmp .Lt_00A3
.Lt_00A5:
.Lt_00A4:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00A7
mov al, byte ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
add ecx, dword ptr [ebp-8]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebp-8]
mov byte ptr [ecx+1], 0
.Lt_00A7:
.Lt_00A6:
.Lt_00A3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRZERO
_DWSTRZERO:
push ebp
mov ebp, esp
.Lt_00A8:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_00A9:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRALLOCATE
_DWSTRALLOCATE:
push ebp
mov ebp, esp
push ebx
.Lt_00AA:
cmp dword ptr [ebp+12], 0
jne .Lt_00AD
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00AF
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_00AF:
.Lt_00AE:
jmp .Lt_00AB
.Lt_00AD:
.Lt_00AC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+4], ebx
je .Lt_00B1
push 0
push 1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.Lt_00B1:
.Lt_00B0:
.Lt_00AB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRRESET
_DWSTRRESET:
push ebp
mov ebp, esp
push ebx
.Lt_00B2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00B5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 0
.Lt_00B5:
.Lt_00B4:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 0
.Lt_00B3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRASSIGN
_DWSTRASSIGN:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00B6:
cmp dword ptr [ebp+12], 0
je .Lt_00B8
push dword ptr [ebp+12]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00C2
.Lt_00B8:
mov dword ptr [ebp-8], 0
.Lt_00C2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00BB
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00BD
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_00BD:
.Lt_00BC:
jmp .Lt_00B7
.Lt_00BB:
.Lt_00BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .Lt_00BF
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.Lt_00BF:
.Lt_00BE:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_00C1
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call _fb_WstrAssign
add esp, 12
.Lt_00C1:
.Lt_00C0:
.Lt_00B7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRASSIGNA
_DWSTRASSIGNA:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00C3:
cmp dword ptr [ebp+12], 0
je .Lt_00C5
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00CF
.Lt_00C5:
mov dword ptr [ebp-8], 0
.Lt_00CF:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00C8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00CA
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_00CA:
.Lt_00C9:
jmp .Lt_00C4
.Lt_00C8:
.Lt_00C7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .Lt_00CC
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.Lt_00CC:
.Lt_00CB:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_00CE
push 0
push dword ptr [ebp+12]
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call _fb_WstrAssignFromA
add esp, 16
.Lt_00CE:
.Lt_00CD:
.Lt_00C4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRASSIGNC
_DWSTRASSIGNC:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00D0:
mov dword ptr [ebp-4], 1
cmp dword ptr [ebp-4], 0
jne .Lt_00D3
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00D5
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _free
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 0
.Lt_00D5:
.Lt_00D4:
jmp .Lt_00D1
.Lt_00D3:
.Lt_00D2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
cmp dword ptr [eax+4], ebx
je .Lt_00D7
push 0
push 1
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
.Lt_00D7:
.Lt_00D6:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 0
je .Lt_00D9
mov bl, byte ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx+1], 0
.Lt_00D9:
.Lt_00D8:
.Lt_00D1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRCONCATASSIGN
_DWSTRCONCATASSIGN:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00DA:
cmp dword ptr [ebp+12], 0
je .Lt_00DC
push dword ptr [ebp+12]
call _fb_WstrLen
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00E2
.Lt_00DC:
mov dword ptr [ebp-8], 0
.Lt_00E2:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00DF
jmp .Lt_00DB
.Lt_00DF:
.Lt_00DE:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00E1
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-12]
push ebx
call _fb_WstrAssign
add esp, 12
.Lt_00E1:
.Lt_00E0:
.Lt_00DB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRCONCATASSIGNA
_DWSTRCONCATASSIGNA:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00E3:
cmp dword ptr [ebp+12], 0
je .Lt_00E5
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00EB
.Lt_00E5:
mov dword ptr [ebp-8], 0
.Lt_00EB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00E8
jmp .Lt_00E4
.Lt_00E8:
.Lt_00E7:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00EA
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
add ebx, dword ptr [ebp-12]
push ebx
call _fb_WstrAssignFromA
add esp, 16
.Lt_00EA:
.Lt_00E9:
.Lt_00E4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _DWSTRCONCATASSIGNC
_DWSTRCONCATASSIGNC:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00EC:
mov dword ptr [ebp-4], 1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00EF
jmp .Lt_00ED
.Lt_00EF:
.Lt_00EE:
push -1
push 1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
add eax, dword ptr [ebx+4]
push eax
push dword ptr [ebp+8]
call _HREALLOC
add esp, 16
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00F1
mov al, byte ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
add ecx, dword ptr [ebp-8]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
add ecx, dword ptr [ebp-8]
mov byte ptr [ecx+1], 0
.Lt_00F1:
.Lt_00F0:
.Lt_00ED:
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
_HREALLOC:
push ebp
mov ebp, esp
push ebx
push esi
.Lt_00F2:
mov eax, dword ptr [ebp+12]
add eax, 15
and eax, -16
mov dword ptr [_Lt_00FE], eax
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
mov esi, dword ptr [_Lt_00FE]
cmp esi, eax
setl dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
je .Lt_00F5
cmp dword ptr [ebp+20], 0
jne .Lt_00F7
mov esi, dword ptr [ebp+8]
cmp dword ptr [esi], 0
je .Lt_00F9
mov esi, dword ptr [ebp+8]
push dword ptr [esi]
call _free
add esp, 4
.Lt_00F9:
.Lt_00F8:
mov esi, dword ptr [_Lt_00FE]
inc esi
imul esi, dword ptr [ebp+16]
mov ebx, esi
push ebx
call _malloc
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00FB
mov eax, dword ptr [ebp+12]
inc eax
imul eax, dword ptr [ebp+16]
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [_Lt_00FE], eax
.Lt_00FB:
.Lt_00FA:
jmp .Lt_00F6
.Lt_00F7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_0102], ebx
mov ebx, dword ptr [_Lt_00FE]
inc ebx
imul ebx, dword ptr [ebp+16]
mov eax, ebx
push eax
push dword ptr [_Lt_0102]
call _realloc
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
jne .Lt_00FD
mov eax, dword ptr [ebp+12]
inc eax
imul eax, dword ptr [ebp+16]
push eax
push dword ptr [_Lt_0102]
call _XREALLOCATE
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [_Lt_00FE], eax
.Lt_00FD:
.Lt_00FC:
.Lt_00F6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_Lt_00FE]
mov dword ptr [eax+8], ebx
.Lt_00F5:
.Lt_00F4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+4], eax
.Lt_00F3:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00FE,4
.balign 4
	.lcomm	_Lt_0102,4
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
