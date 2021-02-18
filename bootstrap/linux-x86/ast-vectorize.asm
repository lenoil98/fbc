	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTPROCVECTORIZE
ASTPROCVECTORIZE:
.type ASTPROCVECTORIZE, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_017B:
sub esp, 12
push dword ptr [ebp+8]
call HGETNEXTTREE
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_017D:
cmp dword ptr [ebp-4], 0
jne .Lt_0181
jmp .Lt_017E
.Lt_0181:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
sub esp, 12
push dword ptr [ebp-4]
call HCHECKLINK
add esp, 16
cmp eax, -1
jne .Lt_0183
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-12], ebx
jmp .Lt_0182
.Lt_0183:
sub esp, 12
push dword ptr [ebp-4]
call HISVECTORIZABLE
add esp, 16
cmp eax, -1
jne .Lt_0184
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-32], -1
.Lt_0184:
.Lt_0182:
mov dword ptr [MAXVECTORWIDTH], 4
mov dword ptr [VECTORWIDTH], 0
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-8], eax
.Lt_0185:
sub esp, 12
mov eax, dword ptr [ebp-8]
push dword ptr [eax+68]
call HGETNEXTTREE
add esp, 16
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
je .Lt_0189
mov dword ptr [ebp-28], -1
jmp .Lt_0188
.Lt_0189:
sub esp, 12
push dword ptr [ebp-8]
call HISVECTORIZABLE
add esp, 16
cmp eax, -1
jne .Lt_018B
mov dword ptr [ebp-36], -1
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-16], eax
jmp .Lt_018A
.Lt_018B:
mov dword ptr [ebp-28], -1
.Lt_018A:
.Lt_0188:
mov dword ptr [ebp-40], -1
mov eax, dword ptr [ebp-36]
and eax, dword ptr [ebp-32]
je .Lt_018D
sub esp, 4
push 0
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call HMERGENODE
add esp, 16
test eax, eax
je .Lt_018F
mov dword ptr [VECTORWIDTH], 0
sub esp, 4
push -1
push dword ptr [ebp-16]
push dword ptr [ebp-12]
call HMERGENODE
add esp, 16
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+68]
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
call ASTNEWNOP
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+68], eax
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+68], 0
je .Lt_0191
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+64], eax
.Lt_0191:
.Lt_0190:
mov dword ptr [ebp-40], 0
jmp .Lt_018E
.Lt_018F:
mov dword ptr [ebp-28], -1
.Lt_018E:
.Lt_018D:
.Lt_018C:
mov eax, dword ptr [ebp-28]
cmp eax, -1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+124]
cmp ebx, 2
setge bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0193
mov dword ptr [MAXVECTORWIDTH], 4
mov dword ptr [VECTORWIDTH], 0
.Lt_0194:
sub esp, 12
push dword ptr [ebp-12]
call ASTINTRATREEVECTORIZE
add esp, 16
test eax, eax
je .Lt_0195
jmp .Lt_0194
.Lt_0195:
.Lt_0193:
.Lt_0192:
cmp dword ptr [ebp-8], 0
je .Lt_0197
cmp dword ptr [ebp-40], 0
je .Lt_0199
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0186
jmp .Lt_0198
.Lt_0199:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp-8], ebx
.Lt_0198:
jmp .Lt_0196
.Lt_0197:
jmp .Lt_017E
.Lt_0196:
.Lt_0187:
jmp .Lt_0185
.Lt_0186:
.Lt_017F:
jmp .Lt_017D
.Lt_017E:
.Lt_017C:
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTPROCVECTORIZE, .-ASTPROCVECTORIZE
.balign 16
fb_ctor__astzvectorize:
.type fb_ctor__astzvectorize, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__astzvectorize, .-fb_ctor__astzvectorize
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
HNODESMATCH:
.type HNODESMATCH, @function
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_005D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
cmp dword ptr [eax], ecx
je .Lt_0060
mov dword ptr [ebp-4], 0
jmp .Lt_005E
.Lt_0060:
.Lt_005F:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 17
jne .Lt_0062
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ecx+12], ebx
je .Lt_0064
mov dword ptr [ebp-4], 0
jmp .Lt_005E
.Lt_0064:
.Lt_0063:
.Lt_0062:
.Lt_0061:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 16
jne .Lt_0066
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4]
and ecx, 511
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp ecx, eax
je .Lt_0068
mov dword ptr [ebp-4], 0
jmp .Lt_005E
.Lt_0068:
.Lt_0067:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 480
je .Lt_0069
mov dword ptr [ebp-8], 24
jmp .Lt_019E
.Lt_0069:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_019E:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_006C
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebp+12]
fld qword ptr [eax+20]
fcomp qword ptr [ecx+20]
fnstsw ax
test ah, 0b01000000
jnz .Lt_006E
mov dword ptr [ebp-4], 0
jmp .Lt_005E
.Lt_006E:
.Lt_006D:
jmp .Lt_006B
.Lt_006C:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov esi, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
cmp dword ptr [ecx+24], ebx
jne .Lt_019F
cmp dword ptr [ecx+20], esi
je .Lt_0070
.Lt_019F:
mov dword ptr [ebp-4], 0
jmp .Lt_005E
.Lt_0070:
.Lt_006F:
.Lt_006B:
.Lt_0066:
.Lt_0065:
mov dword ptr [ebp-4], -1
.Lt_005E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HNODESMATCH, .-HNODESMATCH
.balign 16
HALLOWEDINVECTORIZE:
.type HALLOWEDINVECTORIZE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0071:
cmp dword ptr [ebp+12], 0
je .Lt_0074
mov dword ptr [ebp-4], -1
jmp .Lt_0072
.Lt_0074:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
jmp .Lt_0076
.Lt_0078:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 28
jne .Lt_007A
mov dword ptr [ebp-4], -1
jmp .Lt_0072
.Lt_007A:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 29
jne .Lt_007C
mov dword ptr [ebp-4], -1
jmp .Lt_0072
.Lt_007C:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 30
jne .Lt_007E
mov dword ptr [ebp-4], -1
jmp .Lt_0072
.Lt_007E:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 31
jne .Lt_0080
mov dword ptr [ebp-4], -1
jmp .Lt_0072
.Lt_0080:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 0
jne .Lt_0082
mov dword ptr [ebp-4], -1
jmp .Lt_0072
.Lt_0082:
jmp .Lt_0075
.Lt_0083:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+20], 75
jne .Lt_0085
mov dword ptr [ebp-4], -1
jmp .Lt_0072
.Lt_0085:
jmp .Lt_0075
.Lt_0086:
mov dword ptr [ebp-4], -1
jmp .Lt_0072
jmp .Lt_0075
.Lt_0087:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 15
jne .Lt_0089
mov dword ptr [ebp-4], -1
jmp .Lt_0072
.Lt_0089:
cmp dword ptr [ebp-8], 16
jne .Lt_008B
mov dword ptr [MAXVECTORWIDTH], 2
mov dword ptr [ebp-4], -1
jmp .Lt_0072
.Lt_008B:
.Lt_008A:
jmp .Lt_0075
.Lt_008C:
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
je .Lt_008E
mov dword ptr [ebp-4], -1
jmp .Lt_0072
jmp .Lt_008D
.Lt_008E:
cmp dword ptr [ebp-8], 16
jne .Lt_008F
mov dword ptr [MAXVECTORWIDTH], 2
mov dword ptr [ebp-4], -1
jmp .Lt_0072
.Lt_008F:
.Lt_008D:
mov dword ptr [ebp-4], 0
jmp .Lt_0072
jmp .Lt_0075
.Lt_0090:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov ebx, dword ptr [eax+28]
and ebx, 31
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 15
jne .Lt_0092
mov dword ptr [ebp-4], -1
jmp .Lt_0072
.Lt_0092:
cmp dword ptr [ebp-8], 16
jne .Lt_0094
mov dword ptr [MAXVECTORWIDTH], 2
mov dword ptr [ebp-4], -1
jmp .Lt_0072
.Lt_0094:
.Lt_0093:
mov dword ptr [ebp-4], 0
jmp .Lt_0072
jmp .Lt_0075
.Lt_0095:
mov dword ptr [ebp-4], -1
jmp .Lt_0072
jmp .Lt_0075
.Lt_0096:
jmp .Lt_0075
.Lt_0076:
mov ebx, dword ptr [ebp-12]
add ebx, 4294967295
cmp ebx, 19
ja .Lt_0096
mov ebx, dword ptr [ebp-12]
jmp dword ptr [.LT_0097+ebx*4-4]
.LT_0097:
.int .Lt_0086
.int .Lt_0086
.int .Lt_0078
.int .Lt_0083
.int .Lt_0087
.int .Lt_0095
.int .Lt_0096
.int .Lt_0096
.int .Lt_0096
.int .Lt_0096
.int .Lt_0096
.int .Lt_0096
.int .Lt_0096
.int .Lt_0096
.int .Lt_0096
.int .Lt_0087
.int .Lt_008C
.int .Lt_0095
.int .Lt_0090
.int .Lt_0095
.Lt_0075:
mov dword ptr [ebp-4], 0
.Lt_0072:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HALLOWEDINVECTORIZE, .-HALLOWEDINVECTORIZE
.balign 16
HGETVARDISTANCE:
.type HGETVARDISTANCE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0098:
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
je .Lt_009B
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+8]
add eax, dword ptr [ecx+20]
adc ebx, dword ptr [ecx+24]
mov ecx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+16]
add ebx, dword ptr [ecx+20]
adc eax, dword ptr [ecx+24]
mov ecx, ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], ecx
.Lt_009B:
.Lt_009A:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 17
jne .Lt_009D
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
mov ebx, eax
sar ebx, 31
mov ecx, dword ptr [ebp+8]
add eax, dword ptr [ecx+20]
adc ebx, dword ptr [ecx+24]
mov ecx, eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], ecx
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx]
mov eax, ebx
sar eax, 31
mov ecx, dword ptr [ebp+16]
add ebx, dword ptr [ecx+20]
adc eax, dword ptr [ecx+24]
mov ecx, ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], ecx
.Lt_009D:
.Lt_009C:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+56], 0
jne .Lt_009F
jmp .Lt_0099
.Lt_009F:
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+56], 0
jne .Lt_00A1
jmp .Lt_0099
.Lt_00A1:
push dword ptr [ebp+20]
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+56]
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+56]
call HGETVARDISTANCE
add esp, 16
.Lt_0099:
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETVARDISTANCE, .-HGETVARDISTANCE
.balign 16
HSKIPNEWNODES:
.type HSKIPNEWNODES, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A2:
.Lt_00A4:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
jne .Lt_00A8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
cmp ebx, 75
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+20]
cmp ecx, 55
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00AA
cmp dword ptr [ebp+12], 0
je .Lt_00AC
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
jne .Lt_00AD
mov dword ptr [ebp-12], 2
jmp .Lt_01A4
.Lt_00AD:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+16]
inc ebx
mov dword ptr [ebp-12], ebx
.Lt_01A4:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-12]
mov dword ptr [ebx+16], ecx
.Lt_00AC:
.Lt_00AB:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+56]
mov dword ptr [ebp+8], ebx
.Lt_00AA:
.Lt_00A9:
.Lt_00A8:
.Lt_00A7:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebp-8], ebx
jne .Lt_00B0
jmp .Lt_00A5
.Lt_00B0:
.Lt_00AF:
.Lt_00A6:
jmp .Lt_00A4
.Lt_00A5:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ebx
.Lt_00A3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HSKIPNEWNODES, .-HSKIPNEWNODES
.balign 16
HCHECKLOAD:
.type HCHECKLOAD, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B1:
cmp dword ptr [ebp+8], 0
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+12], 0
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00B4
mov dword ptr [ebp-4], -1
jmp .Lt_00B2
.Lt_00B4:
cmp dword ptr [ebp+8], 0
sete bl
shr ebx, 1
sbb ebx, ebx
cmp dword ptr [ebp+12], 0
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_00B6
mov dword ptr [ebp-4], 0
jmp .Lt_00B2
.Lt_00B6:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HSKIPNEWNODES
add esp, 16
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
je .Lt_00B8
mov dword ptr [ebp+16], -1
.Lt_00B8:
.Lt_00B7:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HALLOWEDINVECTORIZE
add esp, 16
test eax, eax
jne .Lt_00BA
mov dword ptr [ebp-4], 0
jmp .Lt_00B2
.Lt_00BA:
.Lt_00B9:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNODESMATCH
add esp, 16
test eax, eax
jne .Lt_00BC
mov dword ptr [ebp-4], 0
jmp .Lt_00B2
.Lt_00BC:
.Lt_00BB:
sub esp, 4
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HCHECKLOAD
add esp, 16
test eax, eax
jne .Lt_00BE
mov dword ptr [ebp-4], 0
jmp .Lt_00B2
.Lt_00BE:
sub esp, 4
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HCHECKLOAD
add esp, 16
test eax, eax
jne .Lt_00C0
mov dword ptr [ebp-4], 0
jmp .Lt_00B2
.Lt_00C0:
mov dword ptr [ebp-4], -1
.Lt_00B2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKLOAD, .-HCHECKLOAD
.balign 16
HINSERTSWIZZLE:
.type HINSERTSWIZZLE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00C1:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
sub esp, 4
push 0
push 0
push 0
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
push edi
push esi
mov edi, dword ptr [ebp-8]
mov esi, dword ptr [ebp+8]
mov ecx, 18
rep movsd
pop esi
pop edi
sub esp, 8
push dword ptr [ebp-8]
push 75
call ASTNEWUOP
add esp, 16
mov dword ptr [ebp-4], eax
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov ecx, 18
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+56], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 0
sub esp, 12
push dword ptr [ebp-4]
call ASTDELNODE
add esp, 16
.Lt_00C2:
pop ebx
mov esp, ebp
pop ebp
ret
.size HINSERTSWIZZLE, .-HINSERTSWIZZLE
.balign 16
HVECTORIZENODE:
.type HVECTORIZENODE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C3:
cmp dword ptr [ebp+8], 0
jne .Lt_00C6
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_00C4
.Lt_00C6:
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
je .Lt_00C8
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
jne .Lt_00C9
mov dword ptr [ebp-8], 2
jmp .Lt_01AD
.Lt_00C9:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+16]
inc ebx
mov dword ptr [ebp-8], ebx
.Lt_01AD:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+16], ecx
jmp .Lt_00C7
.Lt_00C8:
cmp dword ptr [ebp+12], 0
jne .Lt_00CC
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+16], 0
jmp .Lt_00CB
.Lt_00CC:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+16], 0
jne .Lt_00CD
mov dword ptr [ebp-8], 2
jmp .Lt_01AE
.Lt_00CD:
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+16]
inc ebx
mov dword ptr [ebp-8], ebx
.Lt_01AE:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebx+16], ecx
.Lt_00CB:
.Lt_00C7:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ebp-4], ecx
.Lt_00C4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HVECTORIZENODE, .-HVECTORIZENODE
.balign 16
HCHECKDEREFVAR:
.type HCHECKDEREFVAR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00CF:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+8], 0
jne .Lt_00D2
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_00D0
.Lt_00D2:
.Lt_00D3:
cmp dword ptr [ebp+8], 0
je .Lt_00D4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 5
jne .Lt_00D7
.Lt_00D8:
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
je .Lt_00DA
mov dword ptr [ebp-8], -1
.Lt_00DA:
.Lt_00D9:
jmp .Lt_00D4
jmp .Lt_00D5
.Lt_00D7:
cmp dword ptr [ebp-12], 17
je .Lt_00DC
.Lt_00DD:
cmp dword ptr [ebp-12], 19
jne .Lt_00DB
.Lt_00DC:
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
je .Lt_00DF
mov dword ptr [ebp-8], -1
.Lt_00DF:
.Lt_00DE:
jmp .Lt_00D4
.Lt_00DB:
.Lt_00E0:
.Lt_00D5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp+8], ebx
jmp .Lt_00D3
.Lt_00D4:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00D0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKDEREFVAR, .-HCHECKDEREFVAR
.balign 16
HCHECKARRAYVAR:
.type HCHECKARRAYVAR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E1:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_00E4
jmp .Lt_00E2
.Lt_00E4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 17
jne .Lt_00E6
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
je .Lt_00E8
mov dword ptr [ebp-4], -1
.Lt_00E8:
.Lt_00E7:
.Lt_00E6:
.Lt_00E5:
.Lt_00E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKARRAYVAR, .-HCHECKARRAYVAR
.balign 16
HCHECKMEMOFFSET:
.type HCHECKMEMOFFSET, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E9:
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .Lt_00EC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [VECTORWIDTH]
cmp dword ptr [eax+16], ebx
jle .Lt_00EE
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [VECTORWIDTH], eax
.Lt_00EE:
mov eax, dword ptr [ebp+16]
and eax, 480
je .Lt_00EF
mov dword ptr [ebp-12], 24
jmp .Lt_01B7
.Lt_00EF:
mov eax, dword ptr [ebp+16]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_01B7:
mov eax, dword ptr [ebp-12]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
imul ebx, dword ptr [VECTORWIDTH]
mov dword ptr [ebp-8], ebx
jmp .Lt_00EB
.Lt_00EC:
mov ebx, dword ptr [ebp+16]
and ebx, 480
je .Lt_00F1
mov dword ptr [ebp-12], 24
jmp .Lt_01B8
.Lt_00F1:
mov ebx, dword ptr [ebp+16]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_01B8:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-8], eax
.Lt_00EB:
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
je .Lt_00F4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebx+16]
je .Lt_00F6
mov dword ptr [ebp-4], 0
jmp .Lt_00EA
.Lt_00F6:
.Lt_00F5:
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
je .Lt_00F8
mov dword ptr [ebp-4], 0
.Lt_00F8:
.Lt_00F7:
.Lt_00F4:
.Lt_00F3:
.Lt_00EA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKMEMOFFSET, .-HCHECKMEMOFFSET
.balign 16
HGETASSIGNDATATYPE:
.type HGETASSIGNDATATYPE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F9:
cmp dword ptr [ebp+8], 0
jne .Lt_00FC
mov dword ptr [ebp-4], 0
jmp .Lt_00FA
.Lt_00FC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 5
jne .Lt_00FF
.Lt_0100:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
jmp .Lt_00FA
jmp .Lt_00FD
.Lt_00FF:
cmp dword ptr [ebp-8], 17
je .Lt_0102
.Lt_0103:
cmp dword ptr [ebp-8], 19
jne .Lt_0101
.Lt_0102:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-4], eax
jmp .Lt_00FA
jmp .Lt_00FD
.Lt_0101:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HGETASSIGNDATATYPE
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0104:
.Lt_00FD:
.Lt_00FA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETASSIGNDATATYPE, .-HGETASSIGNDATATYPE
.balign 16
HMERGENODE:
.type HMERGENODE, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0105:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp+12], 0
jne .Lt_0108
mov dword ptr [ebp-4], -1
jmp .Lt_0106
.Lt_0108:
cmp dword ptr [ebp+8], 0
jne .Lt_010A
mov dword ptr [ebp-4], -1
jmp .Lt_0106
.Lt_010A:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HSKIPNEWNODES
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+16], 0
jne .Lt_010C
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNODESMATCH
add esp, 16
test eax, eax
jne .Lt_010E
mov dword ptr [ebp-4], 0
jmp .Lt_0106
.Lt_010E:
.Lt_010D:
sub esp, 8
push 0
push dword ptr [ebp+8]
call HALLOWEDINVECTORIZE
add esp, 16
test eax, eax
jne .Lt_0110
mov dword ptr [ebp-4], 0
jmp .Lt_0106
.Lt_0110:
.Lt_010F:
.Lt_010C:
.Lt_010B:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 2
jne .Lt_0112
sub esp, 12
push dword ptr [ebp+8]
call HGETASSIGNDATATYPE
add esp, 16
mov dword ptr [ebp-24], eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call HGETVARDISTANCE
add esp, 16
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .Lt_0114
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [VECTORWIDTH]
cmp dword ptr [eax+16], ebx
jle .Lt_0116
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [VECTORWIDTH], eax
.Lt_0116:
mov eax, dword ptr [ebp-24]
and eax, 480
je .Lt_0117
mov dword ptr [ebp-28], 24
jmp .Lt_01BE
.Lt_0117:
mov eax, dword ptr [ebp-24]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_01BE:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
imul ebx, dword ptr [VECTORWIDTH]
mov dword ptr [ebp-12], ebx
jmp .Lt_0113
.Lt_0114:
mov ebx, dword ptr [ebp-24]
and ebx, 480
je .Lt_0119
mov dword ptr [ebp-28], 24
jmp .Lt_01BF
.Lt_0119:
mov ebx, dword ptr [ebp-24]
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_01BF:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-12], eax
.Lt_0113:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
je .Lt_011C
mov dword ptr [ebp-4], 0
jmp .Lt_0106
.Lt_011C:
.Lt_011B:
.Lt_0112:
.Lt_0111:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [MAXVECTORWIDTH]
cmp dword ptr [eax+16], ebx
jne .Lt_011E
mov dword ptr [ebp-4], 0
jmp .Lt_0106
.Lt_011E:
.Lt_011D:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx], 19
jne .Lt_0120
cmp dword ptr [ebp+16], 0
jne .Lt_0122
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKLOAD
add esp, 16
test eax, eax
jne .Lt_0124
mov dword ptr [ebp-4], 0
jmp .Lt_0106
.Lt_0124:
.Lt_0123:
.Lt_0122:
.Lt_0121:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call HGETVARDISTANCE
add esp, 16
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
mov eax, dword ptr [ebx+28]
and eax, 31
mov dword ptr [ebp-24], eax
sub esp, 4
push dword ptr [ebp-24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HCHECKMEMOFFSET
add esp, 16
test eax, eax
jne .Lt_0126
mov dword ptr [ebp-4], 0
jmp .Lt_0106
.Lt_0126:
.Lt_0125:
cmp dword ptr [ebp+16], 0
je .Lt_0128
mov eax, dword ptr [ebp-8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [VECTORWIDTH]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_012A
sub esp, 12
push dword ptr [ebp+8]
call HINSERTSWIZZLE
add esp, 16
jmp .Lt_0129
.Lt_012A:
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HVECTORIZENODE
add esp, 16
.Lt_0129:
.Lt_0128:
.Lt_0127:
mov dword ptr [ebp-4], -1
jmp .Lt_0106
.Lt_0120:
.Lt_011F:
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
je .Lt_012C
cmp dword ptr [ebp+16], 0
jne .Lt_012E
sub esp, 4
push -1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKLOAD
add esp, 16
test eax, eax
jne .Lt_0130
mov dword ptr [ebp-4], 0
jmp .Lt_0106
.Lt_0130:
.Lt_012F:
.Lt_012E:
.Lt_012D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 20
jne .Lt_0132
sub esp, 8
lea eax, [ebp-24]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HCHECKDEREFVAR
add esp, 16
test eax, eax
jne .Lt_0134
mov dword ptr [ebp-4], 0
jmp .Lt_0106
.Lt_0134:
.Lt_0133:
jmp .Lt_0131
.Lt_0132:
sub esp, 8
lea eax, [ebp-24]
push eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HCHECKARRAYVAR
add esp, 16
test eax, eax
jne .Lt_0136
mov dword ptr [ebp-4], 0
jmp .Lt_0106
.Lt_0136:
.Lt_0135:
.Lt_0131:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-20]
push eax
push dword ptr [ebp+12]
lea eax, [ebp-16]
push eax
push dword ptr [ebp+8]
call HGETVARDISTANCE
add esp, 16
mov eax, dword ptr [ebp-20]
sub eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
sub esp, 4
push dword ptr [ebp-24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HCHECKMEMOFFSET
add esp, 16
test eax, eax
jne .Lt_0138
mov dword ptr [ebp-4], 0
jmp .Lt_0106
.Lt_0138:
.Lt_0137:
cmp dword ptr [ebp+16], 0
je .Lt_013A
mov eax, dword ptr [ebp-8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [VECTORWIDTH]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_013C
sub esp, 12
push dword ptr [ebp+8]
call HINSERTSWIZZLE
add esp, 16
jmp .Lt_013B
.Lt_013C:
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HVECTORIZENODE
add esp, 16
.Lt_013B:
.Lt_013A:
.Lt_0139:
mov dword ptr [ebp-4], -1
jmp .Lt_0106
.Lt_012C:
.Lt_012B:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 17
jne .Lt_013E
cmp dword ptr [ebp+16], 0
jne .Lt_0140
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKLOAD
add esp, 16
test eax, eax
jne .Lt_0142
mov dword ptr [ebp-4], 0
jmp .Lt_0106
.Lt_0142:
.Lt_0141:
.Lt_0140:
.Lt_013F:
cmp dword ptr [ebp+16], 0
je .Lt_0144
cmp dword ptr [VECTORWIDTH], 0
jne .Lt_0146
sub esp, 12
push dword ptr [ebp+8]
call HINSERTSWIZZLE
add esp, 16
.Lt_0146:
.Lt_0145:
.Lt_0144:
.Lt_0143:
mov dword ptr [ebp-4], -1
jmp .Lt_0106
.Lt_013E:
.Lt_013D:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .Lt_0148
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
je .Lt_014A
cmp dword ptr [ebp+16], 0
je .Lt_014C
cmp dword ptr [VECTORWIDTH], 0
jne .Lt_014E
sub esp, 12
push dword ptr [ebp+8]
call HINSERTSWIZZLE
add esp, 16
.Lt_014E:
.Lt_014D:
.Lt_014C:
.Lt_014B:
jmp .Lt_0149
.Lt_014A:
mov dword ptr [ebp-4], 0
jmp .Lt_0106
.Lt_0149:
mov dword ptr [ebp-4], -1
jmp .Lt_0106
.Lt_0148:
.Lt_0147:
cmp dword ptr [ebp+16], 0
je .Lt_0150
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HVECTORIZENODE
add esp, 16
.Lt_0150:
.Lt_014F:
sub esp, 4
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+56]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HMERGENODE
add esp, 16
test eax, eax
jne .Lt_0152
mov dword ptr [ebp-4], 0
jmp .Lt_0106
.Lt_0152:
sub esp, 4
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call HMERGENODE
add esp, 16
test eax, eax
jne .Lt_0154
mov dword ptr [ebp-4], 0
.Lt_0154:
.Lt_0106:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HMERGENODE, .-HMERGENODE
.balign 16
HISVECTORIZABLE:
.type HISVECTORIZABLE, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0155:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 2
jne .Lt_0158
mov dword ptr [ebp-4], -1
jmp .Lt_0156
.Lt_0158:
mov dword ptr [ebp-4], 0
.Lt_0156:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HISVECTORIZABLE, .-HISVECTORIZABLE
.balign 16
ASTINTRATREEVECTORIZE:
.type ASTINTRATREEVECTORIZE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0159:
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+8], 0
jne .Lt_015C
mov dword ptr [ebp-4], 0
jmp .Lt_015A
.Lt_015C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 3
jne .Lt_015E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+20], 28
jne .Lt_0160
mov dword ptr [MAXVECTORWIDTH], 4
mov dword ptr [VECTORWIDTH], 0
sub esp, 4
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HMERGENODE
add esp, 16
test eax, eax
je .Lt_0162
mov dword ptr [MAXVECTORWIDTH], 4
mov dword ptr [VECTORWIDTH], 0
sub esp, 4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call HMERGENODE
add esp, 16
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 4
jne .Lt_0164
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx+20], 55
jne .Lt_0166
push edi
push esi
mov edi, dword ptr [ebp+8]
mov esi, dword ptr [ebp-8]
mov ecx, 18
rep movsd
pop esi
pop edi
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+56]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+16]
mov dword ptr [ebx+16], ecx
sub esp, 12
push dword ptr [ebp-8]
call ASTDELNODE
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_015A
.Lt_0166:
.Lt_0165:
.Lt_0164:
.Lt_0163:
sub esp, 12
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+60]
call ASTDELTREE
add esp, 16
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+60], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], 4
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+20], 55
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+56]
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [ecx+16], eax
mov dword ptr [ebp-4], -1
jmp .Lt_015A
.Lt_0162:
.Lt_0161:
.Lt_0160:
.Lt_015F:
.Lt_015E:
.Lt_015D:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTINTRATREEVECTORIZE
add esp, 16
cmp eax, -1
jne .Lt_0168
mov dword ptr [ebp-12], -1
.Lt_0168:
.Lt_0167:
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+60]
call ASTINTRATREEVECTORIZE
add esp, 16
cmp eax, -1
jne .Lt_016A
mov dword ptr [ebp-12], -1
.Lt_016A:
.Lt_0169:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-4], eax
.Lt_015A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTINTRATREEVECTORIZE, .-ASTINTRATREEVECTORIZE
.balign 16
HGETNEXTTREE:
.type HGETNEXTTREE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_016B:
mov dword ptr [ebp-8], 0
.Lt_016D:
cmp dword ptr [ebp+8], 0
je .Lt_016E
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
je .Lt_0170
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-8], eax
.Lt_0170:
.Lt_016F:
cmp dword ptr [ebp-8], 0
je .Lt_0172
jmp .Lt_016E
.Lt_0172:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+68]
mov dword ptr [ebp+8], ebx
jmp .Lt_016D
.Lt_016E:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_016C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETNEXTTREE, .-HGETNEXTTREE
.balign 16
HCHECKLINK:
.type HCHECKLINK, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0173:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 15
je .Lt_0176
jmp .Lt_0174
.Lt_0176:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
cmp dword ptr [ebx], 24
je .Lt_0178
jmp .Lt_0174
.Lt_0178:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
cmp dword ptr [eax], 2
jne .Lt_017A
mov dword ptr [ebp-4], -1
.Lt_017A:
.Lt_0179:
.Lt_0174:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKLINK, .-HCHECKLINK

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
.balign 4
	.lcomm	VECTORWIDTH,4
.balign 4
	.lcomm	MAXVECTORWIDTH,4

.section .ctors, "aw", @progbits
.int fb_ctor__astzvectorize
