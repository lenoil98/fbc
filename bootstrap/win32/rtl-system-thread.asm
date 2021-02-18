	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLTHREADCALL@4
_RTLTHREADCALL@4:
push ebp
mov ebp, esp
sub esp, 164
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B4:
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
mov eax, dword ptr [ebx+28]
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-36], 0
jne .Lt_00B6
mov dword ptr [ebp-48], 1
jmp .Lt_00EA
.Lt_00B6:
mov ebx, dword ptr [ebp-36]
mov dword ptr [ebp-48], ebx
.Lt_00EA:
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
push dword ptr [ebp-44]
push 1
push 1
push 0
push -1
push 4
lea ebx, [ebp-84]
push ebx
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .Lt_00B8
push 0
push 0
push offset _Lt_00B9
push 191
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00B8:
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 4
mov dword ptr [ebp-104], 1
mov dword ptr [ebp-100], 17
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
push dword ptr [ebp-44]
push 1
push 1
push 0
push -1
push 4
lea eax, [ebp-120]
push eax
call _fb_ArrayRedimEx
add esp, 28
test eax, eax
je .Lt_00BA
push 0
push 0
push offset _Lt_00B9
push 192
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00BA:
mov dword ptr [ebp-140], 1
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-144], eax
jmp .Lt_00BC
.Lt_00BF:
cmp dword ptr [ebp-40], 0
jne .Lt_00C1
lea eax, [ebp-120]
push eax
call _fb_ArrayErase@4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase@4
jmp .Lt_00B5
.Lt_00C1:
.Lt_00C0:
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-36]
sub ebx, dword ptr [ebp-140]
sal ebx, 2
add ebx, dword ptr [ebp-84]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebx+4], ecx
mov ecx, dword ptr [ebp-40]
mov dword ptr [ecx+64], 0
mov ecx, dword ptr [ebp-40]
mov ebx, dword ptr [ebp-36]
sub ebx, dword ptr [ebp-140]
sal ebx, 2
add ebx, dword ptr [ebp-120]
mov eax, dword ptr [ecx+24]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-40]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-40], ebx
.Lt_00BD:
inc dword ptr [ebp-140]
.Lt_00BC:
mov ebx, dword ptr [ebp-144]
cmp dword ptr [ebp-140], ebx
jle .Lt_00BF
.Lt_00BE:
push dword ptr [ebp+8]
call _ASTDELTREE@4
push 0
push 365
push offset _Lt_00C2
call _RTLPROCLOOKUP@8
push eax
call _ASTNEWCALL@8
mov dword ptr [ebp-124], eax
push -1
push -2147483648
push dword ptr [ebp-8]
call _ASTBUILDPROCADDROF@4
push eax
push dword ptr [ebp-124]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00C4
lea eax, [ebp-120]
push eax
call _fb_ArrayErase@4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase@4
jmp .Lt_00B5
.Lt_00C4:
.Lt_00C3:
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-132], 0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+84]
mov dword ptr [ebp-132], ebx
cmp dword ptr [ebp-132], -1
jne .Lt_00C6
mov ebx, dword ptr [_ENV+252]
mov dword ptr [ebp-132], ebx
.Lt_00C6:
cmp dword ptr [ebp-132], 3
jne .Lt_00C8
mov dword ptr [ebp-128], 1
jmp .Lt_00C7
.Lt_00C8:
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
mov eax, dword ptr [_ENV+108]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00C9
mov dword ptr [ebp-128], 0
jmp .Lt_00C7
.Lt_00C9:
push 0
push 0
push 288
call _ERRREPORT@12
lea eax, [ebp-120]
push eax
call _fb_ArrayErase@4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase@4
jmp .Lt_00B5
.Lt_00C7:
push 0
push 8
mov ebx, dword ptr [ebp-128]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-16], eax
push -1
push -2147483648
push dword ptr [ebp-16]
push dword ptr [ebp-124]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00CB
lea eax, [ebp-120]
push eax
call _fb_ArrayErase@4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase@4
jmp .Lt_00B5
.Lt_00CB:
.Lt_00CA:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-24], eax
push -1
push -2147483648
push dword ptr [ebp-24]
push dword ptr [ebp-124]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00CD
lea eax, [ebp-120]
push eax
call _fb_ArrayErase@4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase@4
jmp .Lt_00B5
.Lt_00CD:
.Lt_00CC:
push 0
push 8
mov ebx, dword ptr [ebp-36]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-28], eax
push -1
push -2147483648
push dword ptr [ebp-28]
push dword ptr [ebp-124]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00CF
lea eax, [ebp-120]
push eax
call _fb_ArrayErase@4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase@4
jmp .Lt_00B5
.Lt_00CF:
.Lt_00CE:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+84], 4
jne .Lt_00D0
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-136], ebx
jmp .Lt_00EB
.Lt_00D0:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-136], eax
.Lt_00EB:
mov eax, dword ptr [ebp-136]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-140], 1
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-144], eax
jmp .Lt_00D3
.Lt_00D6:
mov dword ptr [ebp-148], 0
mov dword ptr [ebp-152], -1
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-148], ebx
push 0
push dword ptr [ebp-12]
call _HTHREADCALLMAPTYPE@8
mov dword ptr [ebp-152], eax
cmp dword ptr [ebp-148], 1
jne .Lt_00D8
.Lt_00D9:
jmp .Lt_00D7
.Lt_00D8:
cmp dword ptr [ebp-148], 2
je .Lt_00DB
.Lt_00DC:
cmp dword ptr [ebp-148], 3
jne .Lt_00DA
.Lt_00DB:
cmp dword ptr [ebp-152], -1
je .Lt_00DE
mov dword ptr [ebp-152], 13
.Lt_00DE:
.Lt_00DD:
jmp .Lt_00D7
.Lt_00DA:
mov dword ptr [ebp-152], -1
.Lt_00DF:
.Lt_00D7:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+32]
mov dword ptr [ebp-156], ebx
push dword ptr [ebp-156]
push dword ptr [ebp-152]
push dword ptr [ebp-124]
call _HTHREADCALLPUSHTYPE@12
test eax, eax
jne .Lt_00E1
lea eax, [ebp-120]
push eax
call _fb_ArrayErase@4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase@4
jmp .Lt_00B5
.Lt_00E1:
.Lt_00E0:
mov eax, dword ptr [ebp-140]
sal eax, 2
add eax, dword ptr [ebp-84]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
push 2
lea ebx, [ebp-32]
push ebx
call _HGETEXPRREF@4
push eax
push dword ptr [ebp-20]
call _ASTNEWLINK@12
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
je .Lt_00E3
push 2
lea ecx, [ebp-32]
push ecx
call _HGETEXPRREF@4
push eax
push dword ptr [ebp-20]
call _ASTNEWLINK@12
mov dword ptr [ebp-20], eax
.Lt_00E3:
.Lt_00E2:
cmp dword ptr [ebp-32], 0
jne .Lt_00E5
lea eax, [ebp-120]
push eax
call _fb_ArrayErase@4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase@4
jmp .Lt_00B5
.Lt_00E5:
.Lt_00E4:
push -1
push -2147483648
push dword ptr [ebp-32]
push dword ptr [ebp-124]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00E7
lea eax, [ebp-120]
push eax
call _fb_ArrayErase@4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase@4
jmp .Lt_00B5
.Lt_00E7:
.Lt_00E6:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+84], 4
jne .Lt_00E8
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+172]
mov dword ptr [ebp-164], ecx
jmp .Lt_00EC
.Lt_00E8:
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+176]
mov dword ptr [ebp-164], eax
.Lt_00EC:
mov eax, dword ptr [ebp-164]
mov dword ptr [ebp-12], eax
.Lt_00D4:
inc dword ptr [ebp-140]
.Lt_00D3:
mov eax, dword ptr [ebp-144]
cmp dword ptr [ebp-140], eax
jle .Lt_00D6
.Lt_00D5:
push 2
push dword ptr [ebp-124]
push dword ptr [ebp-20]
call _ASTNEWLINK@12
mov dword ptr [ebp-4], eax
lea eax, [ebp-120]
push eax
call _fb_ArrayErase@4
lea eax, [ebp-84]
push eax
call _fb_ArrayErase@4
.Lt_00B5:
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
_HTHREADCALLMAPTYPE@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
mov dword ptr [ebp-4], 0
.Lt_005F:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-12], eax
push dword ptr [ebp+8]
call _SYMBISARRAY@4
test eax, eax
je .Lt_0062
cmp dword ptr [ebp+12], 0
je .Lt_0063
mov dword ptr [ebp-20], -1
jmp .Lt_00F3
.Lt_0063:
mov dword ptr [ebp-20], 13
.Lt_00F3:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
jmp .Lt_0060
.Lt_0062:
.Lt_0061:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
jne .Lt_0065
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-16], ebx
jmp .Lt_00F4
.Lt_0065:
mov dword ptr [ebp-16], 0
.Lt_00F4:
cmp dword ptr [ebp-16], 0
je .Lt_0068
jmp .Lt_0060
.Lt_0068:
.Lt_0067:
mov ebx, dword ptr [ebp-8]
and ebx, 480
test ebx, ebx
je .Lt_006A
mov dword ptr [ebp-4], 13
jmp .Lt_0060
.Lt_006A:
.Lt_0069:
cmp dword ptr [ebp-8], 17
jne .Lt_006C
.Lt_006D:
cmp dword ptr [ebp+12], 0
je .Lt_006E
mov dword ptr [ebp-20], -1
jmp .Lt_00F5
.Lt_006E:
mov dword ptr [ebp-20], 13
.Lt_00F5:
mov ebx, dword ptr [ebp-20]
mov dword ptr [ebp-4], ebx
jmp .Lt_006B
.Lt_006C:
cmp dword ptr [ebp-8], 20
jne .Lt_0070
.Lt_0071:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+120]
and eax, 1
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [ebx+120]
and ecx, 8192
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0073
jmp .Lt_0060
.Lt_0073:
.Lt_0072:
mov ecx, dword ptr [ebp-12]
movzx eax, byte ptr [ecx+125]
test eax, eax
je .Lt_0075
jmp .Lt_0060
.Lt_0075:
.Lt_0074:
push dword ptr [ebp-12]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-20], eax
push dword ptr [ebp-20]
call _SYMBUDTGETNEXTFIELD@4
test eax, eax
jne .Lt_0077
push -1
push dword ptr [ebp-20]
call _HTHREADCALLMAPTYPE@8
mov dword ptr [ebp-4], eax
jmp .Lt_0076
.Lt_0077:
mov dword ptr [ebp-4], 12
.Lt_0076:
jmp .Lt_006B
.Lt_0070:
cmp dword ptr [ebp-8], 2
je .Lt_0079
.Lt_007A:
cmp dword ptr [ebp-8], 4
je .Lt_0079
.Lt_007B:
cmp dword ptr [ebp-8], 3
je .Lt_0079
.Lt_007C:
cmp dword ptr [ebp-8], 5
je .Lt_0079
.Lt_007D:
cmp dword ptr [ebp-8], 7
je .Lt_0079
.Lt_007E:
cmp dword ptr [ebp-8], 6
je .Lt_0079
.Lt_007F:
cmp dword ptr [ebp-8], 8
je .Lt_0079
.Lt_0080:
cmp dword ptr [ebp-8], 10
je .Lt_0079
.Lt_0081:
cmp dword ptr [ebp-8], 9
je .Lt_0079
.Lt_0082:
cmp dword ptr [ebp-8], 11
je .Lt_0079
.Lt_0083:
cmp dword ptr [ebp-8], 12
je .Lt_0079
.Lt_0084:
cmp dword ptr [ebp-8], 13
je .Lt_0079
.Lt_0085:
cmp dword ptr [ebp-8], 14
je .Lt_0079
.Lt_0086:
cmp dword ptr [ebp-8], 15
je .Lt_0079
.Lt_0087:
cmp dword ptr [ebp-8], 16
jne .Lt_0078
.Lt_0079:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_0088
mov dword ptr [ebp-20], 24
jmp .Lt_00F6
.Lt_0088:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_00F6:
mov eax, dword ptr [ebp-20]
imul eax, 28
mov ecx, dword ptr [_SYMB_DTYPETB+eax+20]
mov dword ptr [ebp-24], ecx
jmp .Lt_008B
.Lt_008D:
mov dword ptr [ebp-4], 2
jmp .Lt_008A
.Lt_008E:
mov dword ptr [ebp-4], 3
jmp .Lt_008A
.Lt_008F:
mov dword ptr [ebp-4], 4
jmp .Lt_008A
.Lt_0090:
mov dword ptr [ebp-4], 5
jmp .Lt_008A
.Lt_0091:
mov dword ptr [ebp-4], 6
jmp .Lt_008A
.Lt_0092:
mov dword ptr [ebp-4], 7
jmp .Lt_008A
.Lt_0093:
mov dword ptr [ebp-4], 8
jmp .Lt_008A
.Lt_0094:
mov dword ptr [ebp-4], 9
jmp .Lt_008A
.Lt_0095:
mov dword ptr [ebp-4], 10
jmp .Lt_008A
.Lt_0096:
mov dword ptr [ebp-4], 11
jmp .Lt_008A
.Lt_0097:
jmp .Lt_008A
.Lt_008B:
mov ecx, dword ptr [ebp-24]
add ecx, 4294967295
cmp ecx, 9
ja .Lt_0097
mov ecx, dword ptr [ebp-24]
jmp dword ptr [_.LT_0098+ecx*4-4]
_.LT_0098:
.int .Lt_008D
.int .Lt_008E
.int .Lt_008F
.int .Lt_0090
.int .Lt_0091
.int .Lt_0092
.int .Lt_0093
.int .Lt_0094
.int .Lt_0095
.int .Lt_0096
.Lt_008A:
jmp .Lt_006B
.Lt_0078:
.Lt_0099:
.Lt_006B:
.Lt_0060:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HTHREADCALLPUSHSTRUCT@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_009A:
mov dword ptr [ebp-12], 0
push dword ptr [ebp+12]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-8], eax
.Lt_009C:
inc dword ptr [ebp-12]
push dword ptr [ebp-8]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-8], eax
.Lt_009E:
cmp dword ptr [ebp-8], 0
jne .Lt_009C
.Lt_009D:
push -1
push -2147483648
push 0
push 8
mov ebx, dword ptr [ebp-12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp+8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00A0
jmp .Lt_009B
.Lt_00A0:
.Lt_009F:
push dword ptr [ebp+12]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-8], eax
.Lt_00A1:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+32]
push -1
push dword ptr [ebp-8]
call _HTHREADCALLMAPTYPE@8
push eax
push dword ptr [ebp+8]
call _HTHREADCALLPUSHTYPE@12
test eax, eax
jne .Lt_00A5
jmp .Lt_009B
.Lt_00A5:
.Lt_00A4:
push dword ptr [ebp-8]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-8], eax
.Lt_00A3:
cmp dword ptr [ebp-8], 0
jne .Lt_00A1
.Lt_00A2:
mov dword ptr [ebp-4], -1
.Lt_009B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HTHREADCALLPUSHTYPE@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A6:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], -1
jne .Lt_00A9
push 0
push 0
push 288
call _ERRREPORT@12
jmp .Lt_00A7
.Lt_00A9:
.Lt_00A8:
mov dword ptr [ebp-8], 0
push 0
push 8
mov ebx, dword ptr [ebp+12]
mov eax, ebx
sar eax, 31
push eax
push ebx
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
push -1
push -2147483648
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTNEWARG@16
test eax, eax
jne .Lt_00AB
jmp .Lt_00A7
.Lt_00AB:
.Lt_00AA:
cmp dword ptr [ebp+12], 12
jne .Lt_00AD
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HTHREADCALLPUSHSTRUCT@8
test eax, eax
jne .Lt_00AF
jmp .Lt_00A7
.Lt_00AF:
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
mov dword ptr [ebp-4], -1
.Lt_00A7:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HGETEXPRREF@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 17
jne .Lt_00B3
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx]
call _ASTNEWADDROF@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
jmp .Lt_00B2
.Lt_00B3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
push dword ptr [ebx+8]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [eax+4]
and ebx, 511
push ebx
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-8], eax
push 16
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
push eax
call _ASTNEWASSIGN@12
mov dword ptr [ebp-4], eax
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
push eax
call _ASTNEWADDROF@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], eax
.Lt_00B2:
.Lt_00B1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_00B9:	.ascii	"src/compiler/rtl-system-thread.bas\0"
.balign 4
_Lt_00C2:	.ascii	"fb_ThreadCall\0"
