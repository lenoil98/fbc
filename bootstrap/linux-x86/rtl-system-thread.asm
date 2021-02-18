	.intel_syntax noprefix

.section .text
.balign 16

.globl RTLTHREADCALL
RTLTHREADCALL:
.type RTLTHREADCALL, @function
push ebp
mov ebp, esp
sub esp, 164
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B3:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-36], 0
jne .Lt_00B5
mov dword ptr [ebp-48], 1
jmp .Lt_00E9
.Lt_00B5:
mov ebx, dword ptr [ebp-36]
mov dword ptr [ebp-48], ebx
.Lt_00E9:
mov ebx, dword ptr [ebp-48]
mov dword ptr [ebp-44], ebx
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 4
mov dword ptr [ebp-68], 1
mov dword ptr [ebp-64], 17
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 4
push dword ptr [ebp-44]
push 1
push 1
push 0
push -1
push 4
lea ebx, [ebp-84]
push ebx
call fb_ArrayRedimEx
add esp, 32
test eax, eax
je .Lt_00B7
push 0
push 0
push offset Lt_00B8
push 191
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00B7:
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 4
mov dword ptr [ebp-104], 1
mov dword ptr [ebp-100], 17
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
sub esp, 4
push dword ptr [ebp-44]
push 1
push 1
push 0
push -1
push 4
lea eax, [ebp-120]
push eax
call fb_ArrayRedimEx
add esp, 32
test eax, eax
je .Lt_00B9
push 0
push 0
push offset Lt_00B8
push 192
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00B9:
mov dword ptr [ebp-140], 1
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-144], eax
jmp .Lt_00BB
.Lt_00BE:
cmp dword ptr [ebp-40], 0
jne .Lt_00C0
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .Lt_00B4
.Lt_00C0:
.Lt_00BF:
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-36]
sub ebx, dword ptr [ebp-140]
sal ebx, 2
add ebx, dword ptr [ebp-84]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp-40]
mov dword ptr [ecx+56], 0
mov ecx, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-36]
sub ebx, dword ptr [ebp-140]
sal ebx, 2
add ebx, dword ptr [ebp-120]
mov eax, dword ptr [ecx+20]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-40], ebx
.Lt_00BC:
inc dword ptr [ebp-140]
.Lt_00BB:
mov ebx, dword ptr [ebp-144]
cmp dword ptr [ebp-140], ebx
jle .Lt_00BE
.Lt_00BD:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELTREE
add esp, 16
sub esp, 8
push 0
sub esp, 12
push 365
push offset Lt_00C1
call RTLPROCLOOKUP
add esp, 20
push eax
call ASTNEWCALL
add esp, 16
mov dword ptr [ebp-124], eax
push -1
push -2147483648
sub esp, 4
push dword ptr [ebp-8]
call ASTBUILDPROCADDROF
add esp, 8
push eax
push dword ptr [ebp-124]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00C3
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .Lt_00B4
.Lt_00C3:
.Lt_00C2:
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-132], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-132], ebx
cmp dword ptr [ebp-132], -1
jne .Lt_00C5
mov ebx, dword ptr [ENV+252]
mov dword ptr [ebp-132], ebx
.Lt_00C5:
cmp dword ptr [ebp-132], 3
jne .Lt_00C7
mov dword ptr [ebp-128], 1
jmp .Lt_00C6
.Lt_00C7:
mov ebx, dword ptr [ebp-132]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-132]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00C8
mov dword ptr [ebp-128], 0
jmp .Lt_00C6
.Lt_00C8:
sub esp, 4
push 0
push 0
push 288
call ERRREPORT
add esp, 16
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .Lt_00B4
.Lt_00C6:
push 0
push 8
mov ebx, dword ptr [ebp-128]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-16], eax
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-124]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00CA
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .Lt_00B4
.Lt_00CA:
.Lt_00C9:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-24], eax
push -1
push -2147483648
push dword ptr [ebp-24]
push dword ptr [ebp-124]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00CC
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .Lt_00B4
.Lt_00CC:
.Lt_00CB:
push 0
push 8
mov ebx, dword ptr [ebp-36]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-28], eax
push -1
push -2147483648
push dword ptr [ebp-28]
push dword ptr [ebp-124]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00CE
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .Lt_00B4
.Lt_00CE:
.Lt_00CD:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+84], 4
jne .Lt_00CF
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-136], ebx
jmp .Lt_00EA
.Lt_00CF:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-136], eax
.Lt_00EA:
mov eax, dword ptr [ebp-136]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-140], 1
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-144], eax
jmp .Lt_00D2
.Lt_00D5:
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-152], -1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-148], ebx
sub esp, 8
push 0
push dword ptr [ebp-12]
call HTHREADCALLMAPTYPE
add esp, 16
mov dword ptr [ebp-152], eax
cmp dword ptr [ebp-148], 1
jne .Lt_00D7
.Lt_00D8:
jmp .Lt_00D6
.Lt_00D7:
cmp dword ptr [ebp-148], 2
je .Lt_00DA
.Lt_00DB:
cmp dword ptr [ebp-148], 3
jne .Lt_00D9
.Lt_00DA:
cmp dword ptr [ebp-152], -1
je .Lt_00DD
mov dword ptr [ebp-152], 13
.Lt_00DD:
.Lt_00DC:
jmp .Lt_00D6
.Lt_00D9:
mov dword ptr [ebp-152], -1
.Lt_00DE:
.Lt_00D6:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-156], ebx
sub esp, 4
push dword ptr [ebp-156]
push dword ptr [ebp-152]
push dword ptr [ebp-124]
call HTHREADCALLPUSHTYPE
add esp, 16
test eax, eax
jne .Lt_00E0
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .Lt_00B4
.Lt_00E0:
.Lt_00DF:
mov eax, dword ptr [ebp-140]
sal eax, 2
add eax, dword ptr [ebp-84]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
sub esp, 4
push 2
sub esp, 4
lea ebx, [ebp-32]
push ebx
call HGETEXPRREF
add esp, 8
push eax
push dword ptr [ebp-20]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-160], 0
mov eax, dword ptr [ebp-140]
sal eax, 2
add eax, dword ptr [ebp-84]
mov ebx, dword ptr [eax]
mov eax, dword ptr [ebx+4]
and eax, 511
and eax, 31
mov dword ptr [ebp-160], eax
mov eax, dword ptr [ebp-148]
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-140]
sal ebx, 2
add ebx, dword ptr [ebp-120]
mov ecx, dword ptr [ebx]
cmp ecx, 1
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
mov ecx, dword ptr [ebp-160]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_00E2
sub esp, 4
push 2
sub esp, 4
lea ecx, [ebp-32]
push ecx
call HGETEXPRREF
add esp, 8
push eax
push dword ptr [ebp-20]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_00E2:
.Lt_00E1:
cmp dword ptr [ebp-32], 0
jne .Lt_00E4
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .Lt_00B4
.Lt_00E4:
.Lt_00E3:
push -1
push -2147483648
push dword ptr [ebp-32]
push dword ptr [ebp-124]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00E6
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
jmp .Lt_00B4
.Lt_00E6:
.Lt_00E5:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+84], 4
jne .Lt_00E7
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+168]
mov dword ptr [ebp-164], ecx
jmp .Lt_00EB
.Lt_00E7:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-164], eax
.Lt_00EB:
mov eax, dword ptr [ebp-164]
mov dword ptr [ebp-12], eax
.Lt_00D3:
inc dword ptr [ebp-140]
.Lt_00D2:
mov eax, dword ptr [ebp-144]
cmp dword ptr [ebp-140], eax
jle .Lt_00D5
.Lt_00D4:
sub esp, 4
push 2
push dword ptr [ebp-124]
push dword ptr [ebp-20]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-120]
push eax
call fb_ArrayErase
add esp, 16
sub esp, 12
lea eax, [ebp-84]
push eax
call fb_ArrayErase
add esp, 16
.Lt_00B4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size RTLTHREADCALL, .-RTLTHREADCALL
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
HTHREADCALLMAPTYPE:
.type HTHREADCALLMAPTYPE, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_005E:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-12], eax
sub esp, 12
push dword ptr [ebp+8]
call SYMBISARRAY
add esp, 16
test eax, eax
je .Lt_0061
cmp dword ptr [ebp+12], 0
je .Lt_0062
mov dword ptr [ebp-20], -1
jmp .Lt_00F2
.Lt_0062:
mov dword ptr [ebp-20], 13
.Lt_00F2:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
jmp .Lt_005F
.Lt_0061:
.Lt_0060:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
jne .Lt_0064
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .Lt_00F3
.Lt_0064:
mov dword ptr [ebp-16], 0
.Lt_00F3:
cmp dword ptr [ebp-16], 0
je .Lt_0067
jmp .Lt_005F
.Lt_0067:
.Lt_0066:
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
je .Lt_0069
mov dword ptr [ebp-4], 13
jmp .Lt_005F
.Lt_0069:
.Lt_0068:
cmp dword ptr [ebp-8], 17
jne .Lt_006B
.Lt_006C:
cmp dword ptr [ebp+12], 0
je .Lt_006D
mov dword ptr [ebp-20], -1
jmp .Lt_00F4
.Lt_006D:
mov dword ptr [ebp-20], 13
.Lt_00F4:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
jmp .Lt_006A
.Lt_006B:
cmp dword ptr [ebp-8], 20
jne .Lt_006F
.Lt_0070:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+116]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+116]
and ecx, 8192
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0072
jmp .Lt_005F
.Lt_0072:
.Lt_0071:
mov ecx, dword ptr [ebp-12]
movzx eax, byte ptr [ecx+121]
test eax, eax
je .Lt_0074
jmp .Lt_005F
.Lt_0074:
.Lt_0073:
sub esp, 12
push dword ptr [ebp-12]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-20], eax
sub esp, 12
push dword ptr [ebp-20]
call SYMBUDTGETNEXTFIELD
add esp, 16
test eax, eax
jne .Lt_0076
sub esp, 8
push -1
push dword ptr [ebp-20]
call HTHREADCALLMAPTYPE
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0075
.Lt_0076:
mov dword ptr [ebp-4], 12
.Lt_0075:
jmp .Lt_006A
.Lt_006F:
cmp dword ptr [ebp-8], 2
je .Lt_0078
.Lt_0079:
cmp dword ptr [ebp-8], 4
je .Lt_0078
.Lt_007A:
cmp dword ptr [ebp-8], 3
je .Lt_0078
.Lt_007B:
cmp dword ptr [ebp-8], 5
je .Lt_0078
.Lt_007C:
cmp dword ptr [ebp-8], 7
je .Lt_0078
.Lt_007D:
cmp dword ptr [ebp-8], 6
je .Lt_0078
.Lt_007E:
cmp dword ptr [ebp-8], 8
je .Lt_0078
.Lt_007F:
cmp dword ptr [ebp-8], 10
je .Lt_0078
.Lt_0080:
cmp dword ptr [ebp-8], 9
je .Lt_0078
.Lt_0081:
cmp dword ptr [ebp-8], 11
je .Lt_0078
.Lt_0082:
cmp dword ptr [ebp-8], 12
je .Lt_0078
.Lt_0083:
cmp dword ptr [ebp-8], 13
je .Lt_0078
.Lt_0084:
cmp dword ptr [ebp-8], 14
je .Lt_0078
.Lt_0085:
cmp dword ptr [ebp-8], 15
je .Lt_0078
.Lt_0086:
cmp dword ptr [ebp-8], 16
jne .Lt_0077
.Lt_0078:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_0087
mov dword ptr [ebp-20], 24
jmp .Lt_00F5
.Lt_0087:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_00F5:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-24], ecx
jmp .Lt_008A
.Lt_008C:
mov dword ptr [ebp-4], 2
jmp .Lt_0089
.Lt_008D:
mov dword ptr [ebp-4], 3
jmp .Lt_0089
.Lt_008E:
mov dword ptr [ebp-4], 4
jmp .Lt_0089
.Lt_008F:
mov dword ptr [ebp-4], 5
jmp .Lt_0089
.Lt_0090:
mov dword ptr [ebp-4], 6
jmp .Lt_0089
.Lt_0091:
mov dword ptr [ebp-4], 7
jmp .Lt_0089
.Lt_0092:
mov dword ptr [ebp-4], 8
jmp .Lt_0089
.Lt_0093:
mov dword ptr [ebp-4], 9
jmp .Lt_0089
.Lt_0094:
mov dword ptr [ebp-4], 10
jmp .Lt_0089
.Lt_0095:
mov dword ptr [ebp-4], 11
jmp .Lt_0089
.Lt_0096:
jmp .Lt_0089
.Lt_008A:
mov ecx, dword ptr [ebp-24]
add ecx, 4294967295
cmp ecx, 9
ja .Lt_0096
mov ecx, dword ptr [ebp-24]
jmp dword ptr [.LT_0097+ecx*4-4]
.LT_0097:
.int .Lt_008C
.int .Lt_008D
.int .Lt_008E
.int .Lt_008F
.int .Lt_0090
.int .Lt_0091
.int .Lt_0092
.int .Lt_0093
.int .Lt_0094
.int .Lt_0095
.Lt_0089:
jmp .Lt_006A
.Lt_0077:
.Lt_0098:
.Lt_006A:
.Lt_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HTHREADCALLMAPTYPE, .-HTHREADCALLMAPTYPE
.balign 16
HTHREADCALLPUSHSTRUCT:
.type HTHREADCALLPUSHSTRUCT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0099:
mov dword ptr [ebp-12], 0
sub esp, 12
push dword ptr [ebp+12]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_009B:
inc dword ptr [ebp-12]
sub esp, 12
push dword ptr [ebp-8]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_009D:
cmp dword ptr [ebp-8], 0
jne .Lt_009B
.Lt_009C:
push -1
push -2147483648
sub esp, 8
push 0
push 8
mov ebx, dword ptr [ebp-12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 24
push eax
push dword ptr [ebp+8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_009F
jmp .Lt_009A
.Lt_009F:
.Lt_009E:
sub esp, 12
push dword ptr [ebp+12]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00A0:
sub esp, 4
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push -1
push dword ptr [ebp-8]
call HTHREADCALLMAPTYPE
add esp, 8
push eax
push dword ptr [ebp+8]
call HTHREADCALLPUSHTYPE
add esp, 16
test eax, eax
jne .Lt_00A4
jmp .Lt_009A
.Lt_00A4:
.Lt_00A3:
sub esp, 12
push dword ptr [ebp-8]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00A2:
cmp dword ptr [ebp-8], 0
jne .Lt_00A0
.Lt_00A1:
mov dword ptr [ebp-4], -1
.Lt_009A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HTHREADCALLPUSHSTRUCT, .-HTHREADCALLPUSHSTRUCT
.balign 16
HTHREADCALLPUSHTYPE:
.type HTHREADCALLPUSHTYPE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A5:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], -1
jne .Lt_00A8
sub esp, 4
push 0
push 0
push 288
call ERRREPORT
add esp, 16
jmp .Lt_00A6
.Lt_00A8:
.Lt_00A7:
mov dword ptr [ebp-8], 0
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00AA
jmp .Lt_00A6
.Lt_00AA:
.Lt_00A9:
cmp dword ptr [ebp+12], 12
jne .Lt_00AC
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HTHREADCALLPUSHSTRUCT
add esp, 16
test eax, eax
jne .Lt_00AE
jmp .Lt_00A6
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
.Lt_00AB:
mov dword ptr [ebp-4], -1
.Lt_00A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HTHREADCALLPUSHTYPE, .-HTHREADCALLPUSHTYPE
.balign 16
HGETEXPRREF:
.type HGETEXPRREF, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00AF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 17
jne .Lt_00B2
sub esp, 12
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call ASTNEWADDROF
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_00B1
.Lt_00B2:
sub esp, 8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 16
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWADDROF
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_00B1:
.Lt_00B0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETEXPRREF, .-HGETEXPRREF

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_00B8:	.ascii	"src/compiler/rtl-system-thread.bas\0"
.balign 4
Lt_00C1:	.ascii	"fb_ThreadCall\0"
