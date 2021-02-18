	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTPROCVECTORIZE@4
_ASTPROCVECTORIZE@4:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_017C:
push dword ptr [ebp+8]
call _HGETNEXTTREE@4
mov dword ptr [ebp-4], eax
.Lt_017E:
cmp dword ptr [ebp-4], 0
jne .Lt_0182
jmp .Lt_017F
.Lt_0182:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
push dword ptr [ebp-4]
call _HCHECKLINK@4
cmp eax, -1
jne .Lt_0184
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-12], ebx
jmp .Lt_0183
.Lt_0184:
push dword ptr [ebp-4]
call _HISVECTORIZABLE@4
cmp eax, -1
jne .Lt_0185
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-32], -1
.Lt_0185:
.Lt_0183:
mov dword ptr [_MAXVECTORWIDTH], 4
mov dword ptr [_VECTORWIDTH], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.Lt_0186:
mov eax, dword ptr [ebp-8]
push dword ptr [eax+76]
call _HGETNEXTTREE@4
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-36], 0
cmp dword ptr [ebp-8], 0
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-32]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_018A
mov dword ptr [ebp-28], -1
jmp .Lt_0189
.Lt_018A:
push dword ptr [ebp-8]
call _HISVECTORIZABLE@4
cmp eax, -1
jne .Lt_018C
mov dword ptr [ebp-36], -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-16], eax
jmp .Lt_018B
.Lt_018C:
mov dword ptr [ebp-28], -1
.Lt_018B:
.Lt_0189:
mov dword ptr [ebp-40], -1
mov eax, dword ptr [ebp-36]
and eax, dword ptr [ebp-32]
je .Lt_018E
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _HMERGENODE@12
test eax, eax
je .Lt_0190
mov dword ptr [_VECTORWIDTH], 0
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call _HMERGENODE@12
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+72]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-24], eax
push dword ptr [ebp-8]
call _ASTDELTREE@4
call _ASTNEWNOP@0
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+72], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebx+76], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+72]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+76], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+76], 0
je .Lt_0192
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+76]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+72], eax
.Lt_0192:
.Lt_0191:
mov dword ptr [ebp-40], 0
jmp .Lt_018F
.Lt_0190:
mov dword ptr [ebp-28], -1
.Lt_018F:
.Lt_018E:
.Lt_018D:
mov eax, dword ptr [ebp-28]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+124]
cmp ebx, 2
setge bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0194
mov dword ptr [_MAXVECTORWIDTH], 4
mov dword ptr [_VECTORWIDTH], 0
.Lt_0195:
push dword ptr [ebp-12]
call _ASTINTRATREEVECTORIZE@4
test eax, eax
je .Lt_0196
jmp .Lt_0195
.Lt_0196:
.Lt_0194:
.Lt_0193:
cmp dword ptr [ebp-8], 0
je .Lt_0198
cmp dword ptr [ebp-40], 0
je .Lt_019A
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0187
jmp .Lt_0199
.Lt_019A:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-8], ebx
.Lt_0199:
jmp .Lt_0197
.Lt_0198:
jmp .Lt_017F
.Lt_0197:
.Lt_0188:
jmp .Lt_0186
.Lt_0187:
.Lt_0180:
jmp .Lt_017E
.Lt_017F:
.Lt_017D:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_fb_ctor__astzvectorize:
.Lt_0002:
.Lt_0003:
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
_HNODESMATCH@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_005E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
cmp dword ptr [eax], ecx
je .Lt_0061
mov dword ptr [ebp-4], 0
jmp .Lt_005F
.Lt_0061:
.Lt_0060:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 17
jne .Lt_0063
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ecx+12], ebx
je .Lt_0065
mov dword ptr [ebp-4], 0
jmp .Lt_005F
.Lt_0065:
.Lt_0064:
.Lt_0063:
.Lt_0062:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 16
jne .Lt_0067
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 511
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp ecx, eax
je .Lt_0069
mov dword ptr [ebp-4], 0
jmp .Lt_005F
.Lt_0069:
.Lt_0068:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_006A
mov dword ptr [ebp-8], 24
jmp .Lt_019F
.Lt_006A:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_019F:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_006D
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
fld qword ptr [eax+24]
fcomp qword ptr [ecx+24]
fnstsw ax
test ah, 0b01000000
jnz .Lt_006F
mov dword ptr [ebp-4], 0
jmp .Lt_005F
.Lt_006F:
.Lt_006E:
jmp .Lt_006C
.Lt_006D:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
cmp dword ptr [ecx+28], ebx
jne .Lt_01A0
cmp dword ptr [ecx+24], esi
je .Lt_0071
.Lt_01A0:
mov dword ptr [ebp-4], 0
jmp .Lt_005F
.Lt_0071:
.Lt_0070:
.Lt_006C:
.Lt_0067:
.Lt_0066:
mov dword ptr [ebp-4], -1
.Lt_005F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HALLOWEDINVECTORIZE@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0072:
cmp dword ptr [ebp+12], 0
je .Lt_0075
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_0075:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .Lt_0077
.Lt_0079:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+24], 28
jne .Lt_007B
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_007B:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+24], 29
jne .Lt_007D
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_007D:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+24], 30
jne .Lt_007F
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_007F:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+24], 31
jne .Lt_0081
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_0081:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+24], 0
jne .Lt_0083
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_0083:
jmp .Lt_0076
.Lt_0084:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+24], 75
jne .Lt_0086
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_0086:
jmp .Lt_0076
.Lt_0087:
mov dword ptr [ebp-4], -1
jmp .Lt_0073
jmp .Lt_0076
.Lt_0088:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 15
jne .Lt_008A
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_008A:
cmp dword ptr [ebp-8], 16
jne .Lt_008C
mov dword ptr [_MAXVECTORWIDTH], 2
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_008C:
.Lt_008B:
jmp .Lt_0076
.Lt_008D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
cmp eax, 15
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_008F
mov dword ptr [ebp-4], -1
jmp .Lt_0073
jmp .Lt_008E
.Lt_008F:
cmp dword ptr [ebp-8], 16
jne .Lt_0090
mov dword ptr [_MAXVECTORWIDTH], 2
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_0090:
.Lt_008E:
mov dword ptr [ebp-4], 0
jmp .Lt_0073
jmp .Lt_0076
.Lt_0091:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 15
jne .Lt_0093
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_0093:
cmp dword ptr [ebp-8], 16
jne .Lt_0095
mov dword ptr [_MAXVECTORWIDTH], 2
mov dword ptr [ebp-4], -1
jmp .Lt_0073
.Lt_0095:
.Lt_0094:
mov dword ptr [ebp-4], 0
jmp .Lt_0073
jmp .Lt_0076
.Lt_0096:
mov dword ptr [ebp-4], -1
jmp .Lt_0073
jmp .Lt_0076
.Lt_0097:
jmp .Lt_0076
.Lt_0077:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967295
cmp ebx, 19
ja .Lt_0097
mov ebx, dword ptr [ebp-12]
jmp dword ptr [_.LT_0098+ebx*4-4]
_.LT_0098:
.int .Lt_0087
.int .Lt_0087
.int .Lt_0079
.int .Lt_0084
.int .Lt_0088
.int .Lt_0096
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0097
.int .Lt_0088
.int .Lt_008D
.int .Lt_0096
.int .Lt_0091
.int .Lt_0096
.Lt_0076:
mov dword ptr [ebp-4], 0
.Lt_0073:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HGETVARDISTANCE@16:
push ebp
mov ebp, esp
push ebx
.Lt_0099:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 18
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_009C
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+8]
add eax, dword ptr [ecx+24]
adc ebx, dword ptr [ecx+28]
mov ecx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+16]
add ebx, dword ptr [ecx+24]
adc eax, dword ptr [ecx+28]
mov ecx, ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], ecx
.Lt_009C:
.Lt_009B:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 17
jne .Lt_009E
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+8]
add eax, dword ptr [ecx+24]
adc ebx, dword ptr [ecx+28]
mov ecx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+16]
add ebx, dword ptr [ecx+24]
adc eax, dword ptr [ecx+28]
mov ecx, ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], ecx
.Lt_009E:
.Lt_009D:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+64], 0
jne .Lt_00A0
jmp .Lt_009A
.Lt_00A0:
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+64], 0
jne .Lt_00A2
jmp .Lt_009A
.Lt_00A2:
push dword ptr [ebp+20]
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+64]
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
call _HGETVARDISTANCE@16
.Lt_009A:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HSKIPNEWNODES@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A3:
.Lt_00A5:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .Lt_00A9
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
cmp ebx, 75
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
cmp ecx, 55
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00AB
cmp dword ptr [ebp+12], 0
je .Lt_00AD
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
jne .Lt_00AE
mov dword ptr [ebp-12], 2
jmp .Lt_01A5
.Lt_00AE:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+16]
inc ebx
mov dword ptr [ebp-12], ebx
.Lt_01A5:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebx+16], ecx
.Lt_00AD:
.Lt_00AC:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+64]
mov dword ptr [ebp+8], ebx
.Lt_00AB:
.Lt_00AA:
.Lt_00A9:
.Lt_00A8:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebp-8], ebx
jne .Lt_00B1
jmp .Lt_00A6
.Lt_00B1:
.Lt_00B0:
.Lt_00A7:
jmp .Lt_00A5
.Lt_00A6:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_00A4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKLOAD@12:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B2:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00B5
mov dword ptr [ebp-4], -1
jmp .Lt_00B3
.Lt_00B5:
cmp dword ptr [ebp+8], 0
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+12], 0
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_00B7
mov dword ptr [ebp-4], 0
jmp .Lt_00B3
.Lt_00B7:
push 0
push dword ptr [ebp+8]
call _HSKIPNEWNODES@8
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 18
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00B9
mov dword ptr [ebp+16], -1
.Lt_00B9:
.Lt_00B8:
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HALLOWEDINVECTORIZE@8
test eax, eax
jne .Lt_00BB
mov dword ptr [ebp-4], 0
jmp .Lt_00B3
.Lt_00BB:
.Lt_00BA:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNODESMATCH@8
test eax, eax
jne .Lt_00BD
mov dword ptr [ebp-4], 0
jmp .Lt_00B3
.Lt_00BD:
.Lt_00BC:
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _HCHECKLOAD@12
test eax, eax
jne .Lt_00BF
mov dword ptr [ebp-4], 0
jmp .Lt_00B3
.Lt_00BF:
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+68]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _HCHECKLOAD@12
test eax, eax
jne .Lt_00C1
mov dword ptr [ebp-4], 0
jmp .Lt_00B3
.Lt_00C1:
mov dword ptr [ebp-4], -1
.Lt_00B3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HINSERTSWIZZLE@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00C2:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
push 0
push 0
push 0
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
push edi
push esi
mov edi, dword ptr [ebp-8]
mov esi, dword ptr [ebp+8]
mov ecx, 20
rep movsd
pop esi
pop edi
push dword ptr [ebp-8]
push 75
call _ASTNEWUOP@8
mov dword ptr [ebp-4], eax
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov ecx, 20
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 0
push dword ptr [ebp-4]
call _ASTDELNODE@4
.Lt_00C3:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HVECTORIZENODE@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C4:
cmp dword ptr [ebp+8], 0
jne .Lt_00C7
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00C5
.Lt_00C7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 3
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00C9
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
jne .Lt_00CA
mov dword ptr [ebp-8], 2
jmp .Lt_01AE
.Lt_00CA:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+16]
inc ebx
mov dword ptr [ebp-8], ebx
.Lt_01AE:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+16], ecx
jmp .Lt_00C8
.Lt_00C9:
cmp dword ptr [ebp+12], 0
jne .Lt_00CD
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+16], 0
jmp .Lt_00CC
.Lt_00CD:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
jne .Lt_00CE
mov dword ptr [ebp-8], 2
jmp .Lt_01AF
.Lt_00CE:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+16]
inc ebx
mov dword ptr [ebp-8], ebx
.Lt_01AF:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+16], ecx
.Lt_00CC:
.Lt_00C8:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
.Lt_00C5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKDEREFVAR@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D0:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+8], 0
jne .Lt_00D3
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00D1
.Lt_00D3:
.Lt_00D4:
cmp dword ptr [ebp+8], 0
je .Lt_00D5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 5
jne .Lt_00D8
.Lt_00D9:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 15
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp ecx, 16
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00DB
mov dword ptr [ebp-8], -1
.Lt_00DB:
.Lt_00DA:
jmp .Lt_00D5
jmp .Lt_00D6
.Lt_00D8:
cmp dword ptr [ebp-12], 17
je .Lt_00DD
.Lt_00DE:
cmp dword ptr [ebp-12], 19
jne .Lt_00DC
.Lt_00DD:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+12]
mov ecx, dword ptr [ebx+28]
and ecx, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx]
cmp ebx, 15
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
cmp eax, 16
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_00E0
mov dword ptr [ebp-8], -1
.Lt_00E0:
.Lt_00DF:
jmp .Lt_00D5
.Lt_00DC:
.Lt_00E1:
.Lt_00D6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp+8], ebx
jmp .Lt_00D4
.Lt_00D5:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00D1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKARRAYVAR@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E2:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_00E5
jmp .Lt_00E3
.Lt_00E5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .Lt_00E7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 15
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax]
cmp ecx, 16
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00E9
mov dword ptr [ebp-4], -1
.Lt_00E9:
.Lt_00E8:
.Lt_00E7:
.Lt_00E6:
.Lt_00E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCHECKMEMOFFSET@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EA:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .Lt_00ED
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_VECTORWIDTH]
cmp dword ptr [eax+16], ebx
jle .Lt_00EF
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [_VECTORWIDTH], eax
.Lt_00EF:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_00F0
mov dword ptr [ebp-12], 24
jmp .Lt_01B8
.Lt_00F0:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_01B8:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
imul ebx, dword ptr [_VECTORWIDTH]
mov dword ptr [ebp-8], ebx
jmp .Lt_00EC
.Lt_00ED:
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .Lt_00F2
mov dword ptr [ebp-12], 24
jmp .Lt_01B9
.Lt_00F2:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_01B9:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-8], eax
.Lt_00EC:
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+16]
cmp eax, 15
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
cmp ebx, 16
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00F5
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebx+16]
je .Lt_00F7
mov dword ptr [ebp-4], 0
jmp .Lt_00EB
.Lt_00F7:
.Lt_00F6:
mov ebx, dword ptr [ebp-8]
cmp ebx, dword ptr [ebp+12]
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_00F9
mov dword ptr [ebp-4], 0
.Lt_00F9:
.Lt_00F8:
.Lt_00F5:
.Lt_00F4:
.Lt_00EB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HGETASSIGNDATATYPE@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FA:
cmp dword ptr [ebp+8], 0
jne .Lt_00FD
mov dword ptr [ebp-4], 0
jmp .Lt_00FB
.Lt_00FD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 5
jne .Lt_0100
.Lt_0101:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
jmp .Lt_00FB
jmp .Lt_00FE
.Lt_0100:
cmp dword ptr [ebp-8], 17
je .Lt_0103
.Lt_0104:
cmp dword ptr [ebp-8], 19
jne .Lt_0102
.Lt_0103:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-4], eax
jmp .Lt_00FB
jmp .Lt_00FE
.Lt_0102:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _HGETASSIGNDATATYPE@4
mov dword ptr [ebp-4], eax
.Lt_0105:
.Lt_00FE:
.Lt_00FB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HMERGENODE@12:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_0106:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+12], 0
jne .Lt_0109
mov dword ptr [ebp-4], -1
jmp .Lt_0107
.Lt_0109:
cmp dword ptr [ebp+8], 0
jne .Lt_010B
mov dword ptr [ebp-4], -1
jmp .Lt_0107
.Lt_010B:
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HSKIPNEWNODES@8
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+16], 0
jne .Lt_010D
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNODESMATCH@8
test eax, eax
jne .Lt_010F
mov dword ptr [ebp-4], 0
jmp .Lt_0107
.Lt_010F:
.Lt_010E:
push 0
push dword ptr [ebp+8]
call _HALLOWEDINVECTORIZE@8
test eax, eax
jne .Lt_0111
mov dword ptr [ebp-4], 0
jmp .Lt_0107
.Lt_0111:
.Lt_0110:
.Lt_010D:
.Lt_010C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 2
jne .Lt_0113
push dword ptr [ebp+8]
call _HGETASSIGNDATATYPE@4
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call _HGETVARDISTANCE@16
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .Lt_0115
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_VECTORWIDTH]
cmp dword ptr [eax+16], ebx
jle .Lt_0117
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [_VECTORWIDTH], eax
.Lt_0117:
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_0118
mov dword ptr [ebp-28], 24
jmp .Lt_01BF
.Lt_0118:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_01BF:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
imul ebx, dword ptr [_VECTORWIDTH]
mov dword ptr [ebp-12], ebx
jmp .Lt_0114
.Lt_0115:
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_011A
mov dword ptr [ebp-28], 24
jmp .Lt_01C0
.Lt_011A:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_01C0:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-12], eax
.Lt_0114:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
je .Lt_011D
mov dword ptr [ebp-4], 0
jmp .Lt_0107
.Lt_011D:
.Lt_011C:
.Lt_0113:
.Lt_0112:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [_MAXVECTORWIDTH]
cmp dword ptr [eax+16], ebx
jne .Lt_011F
mov dword ptr [ebp-4], 0
jmp .Lt_0107
.Lt_011F:
.Lt_011E:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 19
jne .Lt_0121
cmp dword ptr [ebp+16], 0
jne .Lt_0123
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKLOAD@12
test eax, eax
jne .Lt_0125
mov dword ptr [ebp-4], 0
jmp .Lt_0107
.Lt_0125:
.Lt_0124:
.Lt_0123:
.Lt_0122:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call _HGETVARDISTANCE@16
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-24], eax
push dword ptr [ebp-24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HCHECKMEMOFFSET@12
test eax, eax
jne .Lt_0127
mov dword ptr [ebp-4], 0
jmp .Lt_0107
.Lt_0127:
.Lt_0126:
cmp dword ptr [ebp+16], 0
je .Lt_0129
mov eax, dword ptr [ebp-8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_VECTORWIDTH]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_012B
push dword ptr [ebp+8]
call _HINSERTSWIZZLE@4
jmp .Lt_012A
.Lt_012B:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HVECTORIZENODE@8
.Lt_012A:
.Lt_0129:
.Lt_0128:
mov dword ptr [ebp-4], -1
jmp .Lt_0107
.Lt_0121:
.Lt_0120:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
cmp ecx, 18
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_012D
cmp dword ptr [ebp+16], 0
jne .Lt_012F
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKLOAD@12
test eax, eax
jne .Lt_0131
mov dword ptr [ebp-4], 0
jmp .Lt_0107
.Lt_0131:
.Lt_0130:
.Lt_012F:
.Lt_012E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
jne .Lt_0133
lea eax, [ebp-24]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _HCHECKDEREFVAR@8
test eax, eax
jne .Lt_0135
mov dword ptr [ebp-4], 0
jmp .Lt_0107
.Lt_0135:
.Lt_0134:
jmp .Lt_0132
.Lt_0133:
lea eax, [ebp-24]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _HCHECKARRAYVAR@8
test eax, eax
jne .Lt_0137
mov dword ptr [ebp-4], 0
jmp .Lt_0107
.Lt_0137:
.Lt_0136:
.Lt_0132:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call _HGETVARDISTANCE@16
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HCHECKMEMOFFSET@12
test eax, eax
jne .Lt_0139
mov dword ptr [ebp-4], 0
jmp .Lt_0107
.Lt_0139:
.Lt_0138:
cmp dword ptr [ebp+16], 0
je .Lt_013B
mov eax, dword ptr [ebp-8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_VECTORWIDTH]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_013D
push dword ptr [ebp+8]
call _HINSERTSWIZZLE@4
jmp .Lt_013C
.Lt_013D:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HVECTORIZENODE@8
.Lt_013C:
.Lt_013B:
.Lt_013A:
mov dword ptr [ebp-4], -1
jmp .Lt_0107
.Lt_012D:
.Lt_012C:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 17
jne .Lt_013F
cmp dword ptr [ebp+16], 0
jne .Lt_0141
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKLOAD@12
test eax, eax
jne .Lt_0143
mov dword ptr [ebp-4], 0
jmp .Lt_0107
.Lt_0143:
.Lt_0142:
.Lt_0141:
.Lt_0140:
cmp dword ptr [ebp+16], 0
je .Lt_0145
cmp dword ptr [_VECTORWIDTH], 0
jne .Lt_0147
push dword ptr [ebp+8]
call _HINSERTSWIZZLE@4
.Lt_0147:
.Lt_0146:
.Lt_0145:
.Lt_0144:
mov dword ptr [ebp-4], -1
jmp .Lt_0107
.Lt_013F:
.Lt_013E:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .Lt_0149
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 31
mov dword ptr [ebp-24], ecx
mov ecx, dword ptr [ebp-24]
cmp ecx, 15
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp-24]
cmp eax, 16
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .Lt_014B
cmp dword ptr [ebp+16], 0
je .Lt_014D
cmp dword ptr [_VECTORWIDTH], 0
jne .Lt_014F
push dword ptr [ebp+8]
call _HINSERTSWIZZLE@4
.Lt_014F:
.Lt_014E:
.Lt_014D:
.Lt_014C:
jmp .Lt_014A
.Lt_014B:
mov dword ptr [ebp-4], 0
jmp .Lt_0107
.Lt_014A:
mov dword ptr [ebp-4], -1
jmp .Lt_0107
.Lt_0149:
.Lt_0148:
cmp dword ptr [ebp+16], 0
je .Lt_0151
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HVECTORIZENODE@8
.Lt_0151:
.Lt_0150:
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+64]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _HMERGENODE@12
test eax, eax
jne .Lt_0153
mov dword ptr [ebp-4], 0
jmp .Lt_0107
.Lt_0153:
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+68]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _HMERGENODE@12
test eax, eax
jne .Lt_0155
mov dword ptr [ebp-4], 0
.Lt_0155:
.Lt_0107:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HISVECTORIZABLE@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0156:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 2
jne .Lt_0159
mov dword ptr [ebp-4], -1
jmp .Lt_0157
.Lt_0159:
mov dword ptr [ebp-4], 0
.Lt_0157:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_ASTINTRATREEVECTORIZE@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_015A:
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+8], 0
jne .Lt_015D
mov dword ptr [ebp-4], 0
jmp .Lt_015B
.Lt_015D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_015F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 28
jne .Lt_0161
mov dword ptr [_MAXVECTORWIDTH], 4
mov dword ptr [_VECTORWIDTH], 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _HMERGENODE@12
test eax, eax
je .Lt_0163
mov dword ptr [_MAXVECTORWIDTH], 4
mov dword ptr [_VECTORWIDTH], 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _HMERGENODE@12
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 4
jne .Lt_0165
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+24], 55
jne .Lt_0167
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-8]
mov ecx, 20
rep movsd
pop esi
pop edi
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+64]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+16], ecx
push dword ptr [ebp-8]
call _ASTDELNODE@4
mov dword ptr [ebp-4], -1
jmp .Lt_015B
.Lt_0167:
.Lt_0166:
.Lt_0165:
.Lt_0164:
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+68]
call _ASTDELTREE@4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+68], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+24], 55
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+64]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [ecx+16], eax
mov dword ptr [ebp-4], -1
jmp .Lt_015B
.Lt_0163:
.Lt_0162:
.Lt_0161:
.Lt_0160:
.Lt_015F:
.Lt_015E:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _ASTINTRATREEVECTORIZE@4
cmp eax, -1
jne .Lt_0169
mov dword ptr [ebp-12], -1
.Lt_0169:
.Lt_0168:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+68]
call _ASTINTRATREEVECTORIZE@4
cmp eax, -1
jne .Lt_016B
mov dword ptr [ebp-12], -1
.Lt_016B:
.Lt_016A:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_015B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETNEXTTREE@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_016C:
mov dword ptr [ebp-8], 0
.Lt_016E:
cmp dword ptr [ebp+8], 0
je .Lt_016F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 30
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 27
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
cmp eax, 21
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 24
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
cmp ecx, 33
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
cmp eax, 34
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0171
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.Lt_0171:
.Lt_0170:
cmp dword ptr [ebp-8], 0
je .Lt_0173
jmp .Lt_016F
.Lt_0173:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp+8], ebx
jmp .Lt_016E
.Lt_016F:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_016D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCHECKLINK@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0174:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
je .Lt_0177
jmp .Lt_0175
.Lt_0177:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
cmp dword ptr [ebx], 24
je .Lt_0179
jmp .Lt_0175
.Lt_0179:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+68]
cmp dword ptr [eax], 2
jne .Lt_017B
mov dword ptr [ebp-4], -1
.Lt_017B:
.Lt_017A:
.Lt_0175:
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
.balign 4
	.lcomm	_VECTORWIDTH,4
.balign 4
	.lcomm	_MAXVECTORWIDTH,4

.section .ctors
.int _fb_ctor__astzvectorize
