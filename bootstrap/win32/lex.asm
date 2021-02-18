	.intel_syntax noprefix

.section .text
.balign 16

.globl _LEXPUSHCTX@0
_LEXPUSHCTX@0:
.Lt_0068:
add dword ptr [_LEX+422144], 24832
.Lt_0069:
ret
.balign 16

.globl _LEXPOPCTX@0
_LEXPOPCTX@0:
push ebx
.Lt_006A:
cmp dword ptr [_ENV+876], 0
jne .Lt_006D
push 0
mov eax, dword ptr [_LEX+422144]
lea ebx, [eax+24816]
push ebx
call _DZSTRALLOCATE@8
.Lt_006D:
.Lt_006C:
cmp dword ptr [_ENV+552], 0
jne .Lt_006F
push 0
mov ebx, dword ptr [_LEX+422144]
lea eax, [ebx+8400]
push eax
call _DZSTRALLOCATE@8
jmp .Lt_006E
.Lt_006F:
push 0
mov eax, dword ptr [_LEX+422144]
lea ebx, [eax+8400]
push ebx
call _DWSTRALLOCATE@8
.Lt_006E:
add dword ptr [_LEX+422144], -24832
.Lt_006B:
pop ebx
ret
.balign 16

.globl _LEXINIT@8
_LEXINIT@8:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0070:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [_ENV+876]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0073
lea ebx, [_LEX]
mov dword ptr [_LEX+422144], ebx
.Lt_0073:
.Lt_0072:
mov ebx, dword ptr [_LEX+422144]
mov dword ptr [ebx+8352], 0
mov ebx, dword ptr [_LEX+422144]
lea eax, [ebx]
mov ebx, dword ptr [_LEX+422144]
mov dword ptr [ebx+8356], eax
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [_LEX+422144]
mov ecx, dword ptr [eax+8356]
mov dword ptr [ebx+8360], ecx
mov ecx, dword ptr [_LEX+422144]
mov ebx, dword ptr [ecx+8356]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], 0
.Lt_0077:
mov ebx, dword ptr [ebp-4]
imul ebx, 2088
mov ecx, dword ptr [_LEX+422144]
add ecx, ebx
lea ebx, [ecx+2088]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+2084], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+2084]
mov dword ptr [ebp-8], ecx
.Lt_0075:
inc dword ptr [ebp-4]
.Lt_0074:
cmp dword ptr [ebp-4], 2
jle .Lt_0077
.Lt_0076:
mov ecx, dword ptr [_LEX+422144]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8356]
mov dword ptr [ebx+2084], eax
mov dword ptr [ebp-4], 0
.Lt_007B:
mov eax, dword ptr [ebp-4]
imul eax, 2088
mov ebx, dword ptr [_LEX+422144]
add ebx, eax
mov dword ptr [ebx], -1
.Lt_0079:
inc dword ptr [ebp-4]
.Lt_0078:
cmp dword ptr [ebp-4], 3
jle .Lt_007B
.Lt_007A:
mov ebx, dword ptr [_LEX+422144]
mov dword ptr [ebx+8364], 4294967295
mov ebx, dword ptr [_LEX+422144]
mov dword ptr [ebx+8368], 4294967295
cmp dword ptr [ebp+12], 0
je .Lt_007D
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [ebx-16460]
mov dword ptr [eax+8372], ecx
mov ecx, dword ptr [_LEX+422144]
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [ecx-16452]
mov dword ptr [eax+8380], ebx
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [ebx-16448]
mov dword ptr [eax+8384], ecx
jmp .Lt_007C
.Lt_007D:
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+8372], 1
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+8380], 0
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+8384], 0
.Lt_007C:
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+8376], -1
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+8412], 0
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+8392], 0
cmp dword ptr [_ENV+552], 0
jne .Lt_007F
cmp dword ptr [ebp+12], 0
je .Lt_0080
mov ecx, dword ptr [_LEX+422144]
lea eax, [ecx+8420]
mov dword ptr [ebp-12], eax
jmp .Lt_0088
.Lt_0080:
mov dword ptr [ebp-12], 0
.Lt_0088:
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax+8416], ecx
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+8396], 0
push 0
mov ecx, dword ptr [_LEX+422144]
lea eax, [ecx+8400]
push eax
call _DZSTRALLOCATE@8
jmp .Lt_007E
.Lt_007F:
mov eax, dword ptr [_LEX+422144]
lea ecx, [eax+8420]
mov eax, dword ptr [_LEX+422144]
mov dword ptr [eax+8416], ecx
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+8396], 0
push 0
mov ecx, dword ptr [_LEX+422144]
lea eax, [ecx+8400]
push eax
call _DWSTRALLOCATE@8
.Lt_007E:
cmp dword ptr [ebp+12], 0
je .Lt_0083
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax-24]
mov dword ptr [ecx+24808], ebx
mov ebx, dword ptr [_LEX+422144]
mov ecx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx-20]
mov dword ptr [ecx+24812], eax
jmp .Lt_0082
.Lt_0083:
mov eax, dword ptr [_LEX+422144]
mov dword ptr [eax+24808], 0
mov eax, dword ptr [_LEX+422144]
mov dword ptr [eax+24812], 0
.Lt_0082:
mov eax, dword ptr [_ENV+876]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0085
push 0
mov ecx, dword ptr [_LEX+422144]
lea eax, [ecx+24816]
push eax
call _DZSTRALLOCATE@8
mov dword ptr [_LEX+422148], 0
.Lt_0085:
.Lt_0084:
mov eax, dword ptr [_LEX+422144]
mov dword ptr [eax+24828], 0
mov eax, dword ptr [ebp+8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp+12]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_0087
call _PPINIT@0
.Lt_0087:
.Lt_0086:
.Lt_0071:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LEXEND@0
_LEXEND@0:
.Lt_008F:
push 0
push 1
push offset _Lt_0000
push -1
push offset _PPONLY_LN
call _fb_StrAssign@20
call _PPEND@0
.Lt_0090:
ret
.balign 16

.globl _LEXEATCHAR@0
_LEXEATCHAR@0:
push ebx
.Lt_00C6:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8368], 4294967295
jne .Lt_00C9
call _HSKIPCHAR@0
mov eax, dword ptr [_LEX+422144]
mov dword ptr [eax+8364], 4294967295
jmp .Lt_00C8
.Lt_00C9:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [_LEX+422144]
mov ecx, dword ptr [eax+8368]
mov dword ptr [ebx+8364], ecx
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+8368], 4294967295
.Lt_00C8:
.Lt_00C7:
pop ebx
ret
.balign 16

.globl _LEXCURRENTCHAR@4
_LEXCURRENTCHAR@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D5:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8364], 4294967295
jne .Lt_00D8
call _HREADCHAR@0
mov ebx, dword ptr [_LEX+422144]
mov dword ptr [ebx+8364], eax
.Lt_00D8:
.Lt_00D7:
cmp dword ptr [ebp+8], 0
je .Lt_00DA
.Lt_00DB:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8364], 9
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8364], 32
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00DC
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+24828], -1
call _LEXEATCHAR@0
call _HREADCHAR@0
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+8364], eax
jmp .Lt_00DB
.Lt_00DC:
.Lt_00DA:
.Lt_00D9:
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [eax+8364]
mov dword ptr [ebp-4], ecx
.Lt_00D6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXGETLOOKAHEADCHAR@4
_LEXGETLOOKAHEADCHAR@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DF:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8368], 4294967295
jne .Lt_00E2
call _HSKIPCHAR@0
call _HREADCHAR@0
mov ebx, dword ptr [_LEX+422144]
mov dword ptr [ebx+8368], eax
.Lt_00E2:
.Lt_00E1:
cmp dword ptr [ebp+8], 0
je .Lt_00E4
.Lt_00E5:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8368], 9
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8368], 32
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00E6
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+24828], -1
call _HSKIPCHAR@0
call _HREADCHAR@0
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+8368], eax
jmp .Lt_00E5
.Lt_00E6:
.Lt_00E4:
.Lt_00E3:
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [eax+8368]
mov dword ptr [ebp-4], ecx
.Lt_00E0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXNEXTTOKEN@8
_LEXNEXTTOKEN@8:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
.Lt_02C5:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24828]
mov dword ptr [ebx+2080], ecx
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+24828], 0
.Lt_02C7:
mov ecx, dword ptr [ebp+8]
mov byte ptr [ecx+12], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+2064], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+2068], 0
mov dword ptr [ebp-8], 0
.Lt_02C8:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-16], eax
jmp .Lt_02CC
.Lt_02CE:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 256
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2076], 0
jmp .Lt_02C6
jmp .Lt_02CB
.Lt_02CF:
cmp dword ptr [ebp-8], 0
je .Lt_02D1
call _LEXEATCHAR@0
jmp .Lt_02CA
.Lt_02D1:
.Lt_02D0:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .Lt_02D3
push 0
call _LEXGETLOOKAHEADCHAR@4
mov dword ptr [ebp-20], eax
jmp .Lt_02D5
.Lt_02D7:
jmp .Lt_02C9
jmp .Lt_02D4
.Lt_02D8:
call _LEXEATCHAR@0
mov dword ptr [ebp-8], -1
jmp .Lt_02CA
jmp .Lt_02D4
.Lt_02D5:
mov eax, dword ptr [ebp-20]
add eax, 4294967248
cmp eax, 74
ja .Lt_02D8
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_02D9+eax*4-192]
_.LT_02D9:
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D8
.int .Lt_02D8
.int .Lt_02D8
.int .Lt_02D8
.int .Lt_02D8
.int .Lt_02D8
.int .Lt_02D8
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D8
.int .Lt_02D8
.int .Lt_02D8
.int .Lt_02D8
.int .Lt_02D7
.int .Lt_02D8
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.Lt_02D4:
jmp .Lt_02D2
.Lt_02D3:
jmp .Lt_02C9
.Lt_02D2:
jmp .Lt_02CB
.Lt_02DA:
call _LEXEATCHAR@0
cmp dword ptr [ebp-4], 13
jne .Lt_02DC
push 0
call _LEXCURRENTCHAR@4
cmp eax, 10
jne .Lt_02DE
call _LEXEATCHAR@0
.Lt_02DE:
.Lt_02DD:
.Lt_02DC:
.Lt_02DB:
cmp dword ptr [ebp-8], 0
jne .Lt_02E0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 257
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2076], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2064], 1
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+12], 10
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+13], 0
jmp .Lt_02C6
jmp .Lt_02DF
.Lt_02E0:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2080], -1
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8392], 0
jne .Lt_02E2
mov eax, dword ptr [_LEX+422144]
inc dword ptr [eax+8372]
.Lt_02E2:
.Lt_02E1:
mov dword ptr [ebp-8], 0
jmp .Lt_02CA
.Lt_02DF:
jmp .Lt_02CB
.Lt_02E3:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2080], -1
cmp dword ptr [ebp-8], 0
jne .Lt_02E5
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .Lt_02E7
jmp .Lt_02C9
.Lt_02E7:
.Lt_02E6:
.Lt_02E5:
.Lt_02E4:
call _LEXEATCHAR@0
jmp .Lt_02CB
.Lt_02E8:
cmp dword ptr [ebp-8], 0
jne .Lt_02EA
jmp .Lt_02C9
.Lt_02EA:
.Lt_02E9:
call _LEXEATCHAR@0
jmp .Lt_02CB
.Lt_02CC:
cmp dword ptr [ebp-16], 95
ja .Lt_02E8
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_02EB+eax*4]
_.LT_02EB:
.int .Lt_02CE
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E3
.int .Lt_02DA
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02DA
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E3
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02E8
.int .Lt_02CF
.Lt_02CB:
.Lt_02CA:
jmp .Lt_02C8
.Lt_02C9:
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [_LEX+422144]
mov ebx, dword ptr [_LEX+422144]
lea esi, [ebx+8420]
mov ebx, dword ptr [ecx+8416]
sub ebx, esi
add ebx, dword ptr [eax+24808]
dec ebx
mov eax, dword ptr [_LEX+422144]
mov dword ptr [eax+24812], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-16], ebx
jmp .Lt_02ED
.Lt_02EF:
mov ebx, dword ptr [ebp+12]
and ebx, 9
test ebx, ebx
jne .Lt_02F1
push -1
call _LEXGETLOOKAHEADCHAR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 48
setae al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-20], 57
setbe bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_02F3
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HREADNUMBER@8
jmp .Lt_02EC
.Lt_02F3:
.Lt_02F2:
.Lt_02F1:
.Lt_02F0:
jmp .Lt_02F4
jmp .Lt_02EC
.Lt_02F5:
push 0
call _LEXGETLOOKAHEADCHAR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 72
je .Lt_02F9
.Lt_02FA:
cmp dword ptr [ebp-20], 104
je .Lt_02F9
.Lt_02FB:
cmp dword ptr [ebp-20], 79
je .Lt_02F9
.Lt_02FC:
cmp dword ptr [ebp-20], 111
je .Lt_02F9
.Lt_02FD:
cmp dword ptr [ebp-20], 66
je .Lt_02F9
.Lt_02FE:
cmp dword ptr [ebp-20], 98
jne .Lt_02F8
.Lt_02F9:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HREADNUMBER@8
jmp .Lt_02F6
.Lt_02F8:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 38
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [eax]
mov dword ptr [ebx+8], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+2064], 1
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], 38
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+13], 0
call _LEXEATCHAR@0
.Lt_02FF:
.Lt_02F6:
jmp .Lt_02EC
.Lt_0300:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HREADNUMBER@8
jmp .Lt_02EC
.Lt_0301:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _READID@8
not eax
test eax, eax
je .Lt_0303
jmp .Lt_02C7
.Lt_0303:
.Lt_0302:
jmp .Lt_02EC
.Lt_0304:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 4
cmp dword ptr [_ENV+940], 0
je .Lt_0305
mov dword ptr [ebp-20], 263
jmp .Lt_0346
.Lt_0305:
mov dword ptr [ebp-20], 262
.Lt_0346:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+8], -2147483648
cmp dword ptr [_ENV+552], 0
jne .Lt_0308
push dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
push eax
push dword ptr [ebp+8]
call _HREADSTRING@12
jmp .Lt_0307
.Lt_0308:
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea esi, [eax+12]
push esi
push dword ptr [ebp+8]
call _HREADWSTR@12
.Lt_0307:
jmp .Lt_02EC
.Lt_0309:
push 0
call _LEXGETLOOKAHEADCHAR@4
cmp eax, 34
je .Lt_030B
jmp .Lt_02F4
.Lt_030B:
.Lt_030A:
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 4
cmp dword ptr [ebp-4], 33
jne .Lt_030C
mov dword ptr [ebp-20], 263
jmp .Lt_0347
.Lt_030C:
mov dword ptr [ebp-20], 264
.Lt_0347:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+8], -2147483648
cmp dword ptr [_ENV+552], 0
jne .Lt_030F
mov esi, dword ptr [ebp+12]
and esi, 16
test esi, esi
jne .Lt_0311
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
mov dword ptr [ebp-24], eax
jmp .Lt_0310
.Lt_0311:
mov al, byte ptr [ebp-4]
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], al
mov eax, dword ptr [ebp+8]
lea esi, [eax+13]
mov dword ptr [ebp-24], esi
.Lt_0310:
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _HREADSTRING@12
jmp .Lt_030E
.Lt_030F:
mov esi, dword ptr [ebp+12]
and esi, 16
test esi, esi
jne .Lt_0313
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
mov dword ptr [ebp-24], eax
jmp .Lt_0312
.Lt_0313:
mov ax, word ptr [ebp-4]
mov esi, dword ptr [ebp+8]
mov word ptr [esi+12], ax
mov eax, dword ptr [ebp+8]
lea esi, [eax+14]
mov dword ptr [ebp-24], esi
.Lt_0312:
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _HREADWSTR@12
.Lt_030E:
jmp .Lt_02EC
.Lt_0314:
.Lt_02F4:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [esi], eax
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [esi+8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2076], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2064], 1
mov bl, byte ptr [ebp-4]
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], bl
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx+13], 0
call _LEXEATCHAR@0
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-20], ebx
jmp .Lt_0316
.Lt_0318:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 5
cmp dword ptr [ebp-4], 60
jne .Lt_031A
.Lt_031B:
push -1
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 61
jne .Lt_031E
.Lt_031F:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 61
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+2064]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 303
call _LEXEATCHAR@0
jmp .Lt_031C
.Lt_031E:
cmp dword ptr [ebp-24], 62
jne .Lt_0320
.Lt_0321:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+2064]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 302
call _LEXEATCHAR@0
jmp .Lt_031C
.Lt_0320:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 301
.Lt_0322:
.Lt_031C:
jmp .Lt_0319
.Lt_031A:
cmp dword ptr [ebp-4], 62
jne .Lt_0323
.Lt_0324:
mov eax, dword ptr [_PARSER+148]
and eax, 512
test eax, eax
jne .Lt_0325
push -1
call _LEXCURRENTCHAR@4
cmp eax, 61
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_0348
.Lt_0325:
mov dword ptr [ebp-24], 0
.Lt_0348:
cmp dword ptr [ebp-24], 0
je .Lt_0328
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax], 61
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx+1], 0
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+2064]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 304
call _LEXEATCHAR@0
jmp .Lt_0327
.Lt_0328:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 300
.Lt_0327:
jmp .Lt_0319
.Lt_0323:
cmp dword ptr [ebp-4], 61
jne .Lt_0329
.Lt_032A:
push -1
call _LEXCURRENTCHAR@4
cmp eax, 62
jne .Lt_032C
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+2064]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 305
call _LEXEATCHAR@0
jmp .Lt_032B
.Lt_032C:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 299
.Lt_032B:
.Lt_0329:
.Lt_0319:
jmp .Lt_0315
.Lt_032D:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
jmp .Lt_0315
.Lt_032E:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
push -1
call _LEXCURRENTCHAR@4
cmp eax, 62
jne .Lt_0330
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+2064]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 398
call _LEXEATCHAR@0
.Lt_0330:
.Lt_032F:
jmp .Lt_0315
.Lt_0331:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
mov eax, dword ptr [ebp+12]
and eax, 512
test eax, eax
jne .Lt_0333
push 0
call _LEXCURRENTCHAR@4
cmp eax, 39
jne .Lt_0335
call _HMULTILINECOMMENT@0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2080], -1
jmp .Lt_02C7
.Lt_0335:
.Lt_0334:
.Lt_0333:
.Lt_0332:
jmp .Lt_0315
.Lt_0336:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 259
jmp .Lt_0315
.Lt_0337:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 258
jmp .Lt_0315
.Lt_0338:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
jmp .Lt_0315
.Lt_0339:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 32
.Lt_033A:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-24], eax
jmp .Lt_033E
.Lt_0340:
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+2064]
mov byte ptr [ebx], 32
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+2064]
jmp .Lt_033D
.Lt_0341:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+2064]
mov byte ptr [eax], 0
jmp .Lt_033B
jmp .Lt_033D
.Lt_033E:
mov eax, dword ptr [ebp-24]
add eax, 4294967287
cmp eax, 23
ja .Lt_0341
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.LT_0342+eax*4-36]
_.LT_0342:
.int .Lt_0340
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0341
.int .Lt_0340
.Lt_033D:
.Lt_033C:
jmp .Lt_033A
.Lt_033B:
jmp .Lt_0315
.Lt_0343:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 7
jmp .Lt_0315
.Lt_0316:
mov eax, dword ptr [ebp-20]
add eax, 4294967287
cmp eax, 116
ja .Lt_0343
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_0344+eax*4-36]
_.LT_0344:
.int .Lt_0339
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0339
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0336
.int .Lt_0338
.int .Lt_0338
.int .Lt_032D
.int .Lt_032D
.int .Lt_0338
.int .Lt_032E
.int .Lt_0338
.int .Lt_0331
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0337
.int .Lt_0338
.int .Lt_0318
.int .Lt_0318
.int .Lt_0318
.int .Lt_0343
.int .Lt_032D
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0338
.int .Lt_032D
.int .Lt_0338
.int .Lt_032D
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0343
.int .Lt_0338
.int .Lt_0343
.int .Lt_0338
.Lt_0315:
jmp .Lt_02EC
.Lt_02ED:
mov eax, dword ptr [ebp-16]
add eax, 4294967263
cmp eax, 89
ja .Lt_0314
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_0345+eax*4-132]
_.LT_0345:
.int .Lt_0309
.int .Lt_0304
.int .Lt_0314
.int .Lt_0309
.int .Lt_0314
.int .Lt_02F5
.int .Lt_0314
.int .Lt_0314
.int .Lt_0314
.int .Lt_0314
.int .Lt_0314
.int .Lt_0314
.int .Lt_0314
.int .Lt_02EF
.int .Lt_0314
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0314
.int .Lt_0314
.int .Lt_0314
.int .Lt_0314
.int .Lt_0314
.int .Lt_0314
.int .Lt_0314
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0314
.int .Lt_0314
.int .Lt_0314
.int .Lt_0314
.int .Lt_0301
.int .Lt_0314
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.int .Lt_0301
.Lt_02EC:
.Lt_02C6:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LEXGETTOKEN@4
_LEXGETTOKEN@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0367:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx], -1
jne .Lt_036A
push dword ptr [ebp+8]
mov ebx, dword ptr [_LEX+422144]
push dword ptr [ebx+8356]
call _LEXNEXTTOKEN@8
call _PPCHECK@0
.Lt_036A:
.Lt_0369:
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.Lt_0368:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXGETCLASS@4
_LEXGETCLASS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_036B:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx], -1
jne .Lt_036E
push dword ptr [ebp+8]
mov ebx, dword ptr [_LEX+422144]
push dword ptr [ebx+8356]
call _LEXNEXTTOKEN@8
call _PPCHECK@0
.Lt_036E:
.Lt_036D:
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.Lt_036C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXGETLOOKAHEAD@8
_LEXGETLOOKAHEAD@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_036F:
cmp dword ptr [ebp+8], 3
jle .Lt_0372
jmp .Lt_0370
.Lt_0372:
.Lt_0371:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8352]
cmp dword ptr [ebp+8], ebx
jle .Lt_0374
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8352], eax
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8360]
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [ebx+2084]
mov dword ptr [eax+8360], ecx
.Lt_0374:
.Lt_0373:
mov ecx, dword ptr [_LEX+422144]
mov eax, dword ptr [ecx+8360]
cmp dword ptr [eax], -1
jne .Lt_0376
push dword ptr [ebp+12]
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+8360]
call _LEXNEXTTOKEN@8
.Lt_0376:
.Lt_0375:
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [eax+8360]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-4], eax
.Lt_0370:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LEXGETLOOKAHEADCLASS@8
_LEXGETLOOKAHEADCLASS@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0377:
cmp dword ptr [ebp+8], 3
jle .Lt_037A
jmp .Lt_0378
.Lt_037A:
.Lt_0379:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8352]
cmp dword ptr [ebp+8], ebx
jle .Lt_037C
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+8352], eax
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8360]
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [ebx+2084]
mov dword ptr [eax+8360], ecx
.Lt_037C:
.Lt_037B:
mov ecx, dword ptr [_LEX+422144]
mov eax, dword ptr [ecx+8360]
cmp dword ptr [eax], -1
jne .Lt_037E
push dword ptr [ebp+12]
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+8360]
call _LEXNEXTTOKEN@8
.Lt_037E:
.Lt_037D:
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [eax+8360]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-4], eax
.Lt_0378:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LEXPPONLYEMITTOKEN@0
_LEXPPONLYEMITTOKEN@0:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_039E:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 259
je .Lt_03A3
.Lt_03A4:
cmp dword ptr [ebp-4], 260
jne .Lt_03A2
.Lt_03A3:
jmp .Lt_039F
jmp .Lt_03A0
.Lt_03A2:
cmp dword ptr [ebp-4], 256
je .Lt_03A6
.Lt_03A7:
cmp dword ptr [ebp-4], 257
jne .Lt_03A5
.Lt_03A6:
push -1
push offset _PPONLY_LN
call _fb_StrLen@8
test eax, eax
jle .Lt_03A9
mov eax, dword ptr [_ENV+836]
mov dword ptr [ebp-8], eax
push 1
push offset _PPONLY_LN
push dword ptr [ebp-8]
call _fb_PrintString@12
push 0
push 1
push offset _Lt_0000
push -1
push offset _PPONLY_LN
call _fb_StrAssign@20
jmp .Lt_03A8
.Lt_03A9:
push 0
call _LEXGETTOKEN@4
cmp eax, 257
jne .Lt_03AB
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8376], 257
jne .Lt_03AD
mov eax, dword ptr [_ENV+836]
mov dword ptr [ebp-8], eax
push 1
push 0
push offset _Lt_0000
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp-8]
call _fb_PrintString@12
.Lt_03AD:
.Lt_03AC:
.Lt_03AB:
.Lt_03A8:
jmp .Lt_039F
.Lt_03A5:
.Lt_03A0:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2080], 0
je .Lt_03B0
push 0
push 2
push offset _Lt_03B1
push -1
push offset _PPONLY_LN
call _fb_StrConcatAssign@20
.Lt_03B0:
.Lt_03AF:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 262
je .Lt_03B5
.Lt_03B6:
cmp dword ptr [ebp-4], 263
je .Lt_03B5
.Lt_03B7:
cmp dword ptr [ebp-4], 264
jne .Lt_03B4
.Lt_03B5:
push 0
push -1
push 0
call _LEXGETTOKEN@4
push eax
call _LEXGETSTRLITTEXT@4
push eax
push -1
push offset _PPONLY_LN
call _fb_StrConcatAssign@20
jmp .Lt_03B2
.Lt_03B4:
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
push -1
push offset _PPONLY_LN
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _PPONLY_LN
call _fb_StrAssign@20
.Lt_03B8:
.Lt_03B2:
.Lt_039F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXPPONLYEMITTEXT@4
_LEXPPONLYEMITTEXT@4:
push ebp
mov ebp, esp
sub esp, 12
.Lt_03BA:
push 0
push -1
push -1
push dword ptr [ebp+8]
push -1
push offset _PPONLY_LN
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _PPONLY_LN
call _fb_StrAssign@20
.Lt_03BB:
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXSKIPTOKEN@4
_LEXSKIPTOKEN@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_03BD:
push dword ptr [ebp+8]
call _LEXCHECKTOKEN@4
and dword ptr [ebp+8], -14337
cmp dword ptr [_ENV+836], 0
jle .Lt_03C0
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8380], 0
jne .Lt_03C2
call _LEXPPONLYEMITTOKEN@0
.Lt_03C2:
.Lt_03C1:
.Lt_03C0:
.Lt_03BF:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 257
jne .Lt_03C5
.Lt_03C6:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8392], 0
jne .Lt_03C8
mov eax, dword ptr [_LEX+422144]
inc dword ptr [eax+8372]
.Lt_03C8:
.Lt_03C7:
.Lt_03C5:
.Lt_03C3:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [ebx]
mov dword ptr [eax+8376], ecx
mov ecx, dword ptr [_LEX+422144]
cmp dword ptr [ecx+8352], 0
jne .Lt_03CA
push dword ptr [ebp+8]
mov ecx, dword ptr [_LEX+422144]
push dword ptr [ecx+8356]
call _LEXNEXTTOKEN@8
jmp .Lt_03C9
.Lt_03CA:
call _HMOVEKDOWN@0
.Lt_03C9:
call _PPCHECK@0
.Lt_03BE:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _LEXEATTOKEN@8
_LEXEATTOKEN@8:
push ebp
mov ebp, esp
push ebx
.Lt_03CB:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], 7
je .Lt_03CE
push 0
push 1025
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
lea ebx, [eax+12]
push ebx
push 0
push dword ptr [ebp+8]
call _fb_StrAssign@20
jmp .Lt_03CD
.Lt_03CE:
push 0
push -1
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
lea ebx, [eax+12]
push ebx
call _fb_WstrToStr@4
push eax
push 0
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_03CD:
push dword ptr [ebp+12]
call _LEXSKIPTOKEN@4
.Lt_03CC:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _LEXGETTEXT@0
_LEXGETTEXT@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_03CF:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+8], 7
je .Lt_03D2
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
lea ebx, [eax+12]
mov dword ptr [ebp-4], ebx
jmp .Lt_03D1
.Lt_03D2:
push 0
push -1
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
lea ebx, [eax+12]
push ebx
call _fb_WstrToStr@4
push eax
push 1025
push offset _Lt_03D3
call _fb_StrAssign@20
mov eax, offset _Lt_03D3
mov dword ptr [ebp-4], eax
.Lt_03D1:
.Lt_03D0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_03D3,1025

.section .text
.balign 16

.globl _LEXREADLINE@12
_LEXREADLINE@12:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_03D4:
cmp dword ptr [ebp+16], 0
jne .Lt_03D7
push 0
push 1
push offset _Lt_0000
push 0
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_03D7:
.Lt_03D6:
.Lt_03D8:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8352], 0
jle .Lt_03D9
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 256
je .Lt_03DD
.Lt_03DE:
cmp dword ptr [ebp-4], 257
je .Lt_03DD
.Lt_03DF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-4], eax
jne .Lt_03DC
.Lt_03DD:
jmp .Lt_03D5
jmp .Lt_03DA
.Lt_03DC:
cmp dword ptr [ebp+16], 0
jne .Lt_03E2
push 0
push -1
push 1025
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
lea eax, [ebx+12]
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_03E2:
.Lt_03E1:
.Lt_03E0:
.Lt_03DA:
call _HMOVEKDOWN@0
jmp .Lt_03D8
.Lt_03D9:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 256
je .Lt_03E7
.Lt_03E8:
cmp dword ptr [ebp-4], 257
je .Lt_03E7
.Lt_03E9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-4], eax
jne .Lt_03E6
.Lt_03E7:
jmp .Lt_03D5
jmp .Lt_03E4
.Lt_03E6:
cmp dword ptr [ebp+16], 0
jne .Lt_03EC
push 0
push -1
push 1025
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
lea eax, [ebx+12]
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_03EC:
.Lt_03EB:
.Lt_03EA:
.Lt_03E4:
.Lt_03EE:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [_Lt_0401], eax
mov eax, dword ptr [_Lt_0401]
mov dword ptr [ebp-4], eax
jmp .Lt_03F2
.Lt_03F4:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx], 256
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+4], 6
jmp .Lt_03D5
jmp .Lt_03F1
.Lt_03F5:
call _LEXEATCHAR@0
cmp dword ptr [_Lt_0401], 13
jne .Lt_03F7
push 0
call _LEXCURRENTCHAR@4
cmp eax, 10
jne .Lt_03F9
call _LEXEATCHAR@0
.Lt_03F9:
.Lt_03F8:
.Lt_03F7:
.Lt_03F6:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx], 257
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+4], 6
jmp .Lt_03D5
jmp .Lt_03F1
.Lt_03FA:
mov eax, dword ptr [ebp+8]
cmp dword ptr [_Lt_0401], eax
jne .Lt_03FC
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+4], 6
jmp .Lt_03D5
.Lt_03FC:
.Lt_03FB:
jmp .Lt_03F1
.Lt_03F2:
cmp dword ptr [ebp-4], 13
ja .Lt_03FA
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.LT_03FD+ebx*4]
_.LT_03FD:
.int .Lt_03F4
.int .Lt_03FA
.int .Lt_03FA
.int .Lt_03FA
.int .Lt_03FA
.int .Lt_03FA
.int .Lt_03FA
.int .Lt_03FA
.int .Lt_03FA
.int .Lt_03FA
.int .Lt_03F5
.int .Lt_03FA
.int .Lt_03FA
.int .Lt_03F5
.Lt_03F1:
call _LEXEATCHAR@0
cmp dword ptr [ebp+16], 0
jne .Lt_03FF
push 0
push -1
push -1
push dword ptr [_Lt_0401]
push 1
call _fb_CHR
add esp, 8
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push 0
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_03FF:
.Lt_03FE:
.Lt_03F0:
jmp .Lt_03EE
.Lt_03EF:
.Lt_03D5:
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_0401,4

.section .text
.balign 16

.globl _LEXSKIPLINE@0
_LEXSKIPLINE@0:
.Lt_0402:
push -1
push 0
push 4294967295
call _LEXREADLINE@12
.Lt_0403:
ret
.balign 16

.globl _LEXPEEKCURRENTLINE@8
_LEXPEEKCURRENTLINE@8:
push ebp
mov ebp, esp
sub esp, 76
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0404:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
cmp dword ptr [_ENV+552], 0
je .Lt_0407
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .Lt_0405
.Lt_0407:
.Lt_0406:
push dword ptr [_ENV+276]
call _fb_FileTell@4
mov ebx, eax
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+24812]
add eax, -512
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-36], 512
cmp dword ptr [ebp-28], 0
jge .Lt_0409
mov eax, dword ptr [ebp-28]
add dword ptr [ebp-36], eax
mov dword ptr [ebp-28], 0
.Lt_0409:
.Lt_0408:
push 1025
push offset _Lt_0443
mov eax, dword ptr [ebp-28]
inc eax
push eax
push dword ptr [_ENV+276]
call _fb_FileGetStr@16
test eax, eax
je .Lt_040A
push 0
push 0
push offset _Lt_040B
push 2369
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_040A:
push dword ptr [ebp-32]
push dword ptr [_ENV+276]
call _fb_FileSeek@8
test eax, eax
je .Lt_040C
push 0
push 0
push offset _Lt_040B
push 2370
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_040C:
mov eax, offset _Lt_0443
add eax, dword ptr [ebp-36]
mov dword ptr [ebp-44], eax
mov dword ptr [ebp-40], 0
cmp dword ptr [ebp-36], 0
jle .Lt_040E
dec dword ptr [ebp-44]
.Lt_040F:
mov eax, dword ptr [ebp-44]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-48], ebx
cmp dword ptr [ebp-48], 13
je .Lt_0414
.Lt_0415:
cmp dword ptr [ebp-48], 10
jne .Lt_0413
.Lt_0414:
jmp .Lt_0410
.Lt_0413:
.Lt_0412:
cmp dword ptr [ebp-36], 0
jg .Lt_0417
jmp .Lt_0410
.Lt_0417:
.Lt_0416:
inc dword ptr [ebp-40]
dec dword ptr [ebp-44]
dec dword ptr [ebp-36]
.Lt_0411:
jmp .Lt_040F
.Lt_0410:
inc dword ptr [ebp-44]
.Lt_040E:
.Lt_040D:
push 0
push 1
push offset _Lt_0000
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrAssign@20
push 0
push 1
push offset _Lt_0000
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
.Lt_0418:
mov ebx, dword ptr [ebp-44]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .Lt_041D
.Lt_041E:
cmp dword ptr [ebp-48], 13
je .Lt_041D
.Lt_041F:
cmp dword ptr [ebp-48], 10
jne .Lt_041C
.Lt_041D:
jmp .Lt_0419
.Lt_041C:
.Lt_041B:
push 0
push -1
push dword ptr [ebp-48]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [ebp-40], 0
jle .Lt_0421
push 0
push -1
push -1
cmp dword ptr [ebp-48], 9
jne .Lt_0422
mov dword ptr [ebp-64], 9
jmp .Lt_0442
.Lt_0422:
mov dword ptr [ebp-64], 32
.Lt_0442:
push dword ptr [ebp-64]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
dec dword ptr [ebp-40]
.Lt_0421:
.Lt_0420:
inc dword ptr [ebp-44]
.Lt_041A:
jmp .Lt_0418
.Lt_0419:
cmp dword ptr [ebp+12], 0
je .Lt_0426
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-64], 0
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-68], eax
jmp .Lt_0428
.Lt_042B:
mov eax, dword ptr [ebp-24]
add eax, dword ptr [ebp-64]
mov bl, byte ptr [eax]
mov byte ptr [ebp-72], bl
movzx ebx, byte ptr [ebp-72]
cmp ebx, 9
je .Lt_042F
.Lt_0430:
movzx ebx, byte ptr [ebp-72]
cmp ebx, 32
jne .Lt_042E
.Lt_042F:
jmp .Lt_042C
.Lt_042E:
jmp .Lt_042A
.Lt_0431:
.Lt_042C:
.Lt_0429:
inc dword ptr [ebp-64]
.Lt_0428:
mov ebx, dword ptr [ebp-68]
cmp dword ptr [ebp-64], ebx
jle .Lt_042B
.Lt_042A:
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrLen@8
cmp dword ptr [ebp-64], eax
jge .Lt_0433
push 0
push -1
push -1
mov eax, dword ptr [ebp-64]
inc eax
push eax
lea eax, [ebp-24]
push eax
call _fb_StrMid@12
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
jmp .Lt_0432
.Lt_0433:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_0432:
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
dec eax
mov dword ptr [ebp-64], eax
jmp .Lt_0434
.Lt_0437:
mov eax, dword ptr [ebp-24]
add eax, dword ptr [ebp-64]
mov bl, byte ptr [eax]
mov byte ptr [ebp-68], bl
movzx ebx, byte ptr [ebp-68]
cmp ebx, 9
je .Lt_043B
.Lt_043C:
movzx ebx, byte ptr [ebp-68]
cmp ebx, 32
jne .Lt_043A
.Lt_043B:
jmp .Lt_0438
.Lt_043A:
jmp .Lt_0436
.Lt_043D:
.Lt_0438:
.Lt_0435:
dec dword ptr [ebp-64]
.Lt_0434:
cmp dword ptr [ebp-64], 0
jge .Lt_0437
.Lt_0436:
cmp dword ptr [ebp-64], 0
jle .Lt_043F
push 0
push -1
mov ebx, dword ptr [ebp-64]
inc ebx
push ebx
lea ebx, [ebp-24]
push ebx
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_043F:
.Lt_043E:
.Lt_0426:
.Lt_0425:
push 0
push -1
push 2
push offset _Lt_0440
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0405:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 8

.section .bss
.balign 4
	.lcomm	_Lt_0443,1025

.section .text
.balign 16

.globl _LEXCHECKTOKEN@4
_LEXCHECKTOKEN@4:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.Lt_0444:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 0
je .Lt_0447
mov ebx, dword ptr [ebp+8]
and ebx, 14336
je .Lt_0449
mov ebx, dword ptr [ebp+8]
and ebx, 2048
test ebx, ebx
je .Lt_044B
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_044F
push -1
push -1
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
cmp dword ptr [eax+2076], 0
je .Lt_044D
push 0
push -1
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .Lt_0478
.Lt_044D:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.Lt_0478:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_044C
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+2076], 0
jmp .Lt_044A
.Lt_044B:
mov eax, dword ptr [ebp+8]
and eax, 4096
test eax, eax
je .Lt_0454
mov eax, dword ptr [_ENV+888]
and eax, 8388608
test eax, eax
jne .Lt_0456
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_044F
push -1
push -1
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 0
je .Lt_0457
push 0
push -1
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
push dword ptr [eax+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .Lt_0479
.Lt_0457:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.Lt_0479:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_044C
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+2076], 0
.Lt_0456:
.Lt_0455:
jmp .Lt_044A
.Lt_0454:
mov eax, dword ptr [ebp+8]
and eax, 8192
test eax, eax
je .Lt_045D
mov eax, dword ptr [_ENV+888]
and eax, 8388608
test eax, eax
je .Lt_045F
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 36
je .Lt_0461
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_044F
push -1
push -1
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
cmp dword ptr [eax+2076], 0
je .Lt_0462
push 0
push -1
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .Lt_047A
.Lt_0462:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.Lt_047A:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_044C
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+2076], 0
.Lt_0461:
.Lt_0460:
jmp .Lt_045E
.Lt_045F:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 36
jne .Lt_0469
mov ebx, dword ptr [_ENV+196]
and ebx, 256
test ebx, ebx
je .Lt_046B
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_044F
push -1
push -1
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
cmp dword ptr [eax+2076], 0
je .Lt_046C
push 0
push -1
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .Lt_047B
.Lt_046C:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.Lt_047B:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_044C
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_046B:
.Lt_046A:
jmp .Lt_0468
.Lt_0469:
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push -1
push 2
push offset _Lt_044F
push -1
push -1
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2076], 0
je .Lt_0472
push 0
push -1
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
push dword ptr [eax+2076]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
jmp .Lt_047C
.Lt_0472:
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
.Lt_047C:
lea eax, [ebp-12]
push eax
push -1
push 0
call _LEXGETTEXT@0
push eax
push 5
push offset _Lt_044C
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-60]
push 44
call _ERRREPORTWARN@16
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0468:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
mov dword ptr [eax+2076], 0
.Lt_045E:
.Lt_045D:
.Lt_044A:
.Lt_0449:
.Lt_0448:
.Lt_0447:
.Lt_0446:
.Lt_0445:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _HMATCHIDORKW@8
_HMATCHIDORKW@8:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_047D:
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0482
.Lt_0483:
cmp dword ptr [ebp-8], 2
je .Lt_0482
.Lt_0484:
cmp dword ptr [ebp-8], 1
jne .Lt_0481
.Lt_0482:
push 0
push dword ptr [ebp+8]
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0486
push dword ptr [ebp+12]
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-4], -1
jmp .Lt_047E
.Lt_0486:
.Lt_0485:
.Lt_0481:
.Lt_047F:
mov dword ptr [ebp-4], 0
.Lt_047E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _HMATCH@8
_HMATCH@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0487:
push 0
call _LEXGETTOKEN@4
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
jne .Lt_048A
push dword ptr [ebp+12]
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-4], -1
jmp .Lt_0489
.Lt_048A:
mov dword ptr [ebp-4], 0
.Lt_0489:
.Lt_0488:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_fb_ctor__lex:
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
_HCOLLECTCHARFORDEBUGOUTPUT@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0091:
cmp dword ptr [ebp+8], 32
jae .Lt_0094
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0096
.Lt_0098:
jmp .Lt_0092
jmp .Lt_0095
.Lt_0099:
jmp .Lt_0095
.Lt_009A:
mov dword ptr [ebp+8], 63
jmp .Lt_0095
.Lt_0096:
cmp dword ptr [ebp-4], 13
ja .Lt_009A
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_009C+eax*4]
_.LT_009C:
.int .Lt_0098
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_009A
.int .Lt_0099
.int .Lt_0098
.int .Lt_0099
.int .Lt_0099
.int .Lt_0098
.Lt_0095:
jmp .Lt_0093
.Lt_0094:
cmp dword ptr [ebp+8], 255
jbe .Lt_009D
mov dword ptr [ebp+8], 63
.Lt_009D:
.Lt_0093:
push dword ptr [ebp+8]
mov eax, dword ptr [_LEX+422144]
lea ebx, [eax+24816]
push ebx
call _DZSTRCONCATASSIGNC@8
.Lt_0092:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HREADCHAR@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_009E:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8392], 0
jle .Lt_00A1
cmp dword ptr [_ENV+552], 0
jne .Lt_00A3
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8396]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_00A2
.Lt_00A3:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8396]
movzx eax, word ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_00A2:
cmp dword ptr [_ENV+148], 0
je .Lt_00A5
cmp dword ptr [_ENV+876], 0
jne .Lt_00A7
cmp dword ptr [_LEX+422148], 0
jne .Lt_00A9
mov dword ptr [_LEX+422148], -1
push offset _Lt_00AA
mov eax, dword ptr [_LEX+422144]
lea ebx, [eax+24816]
push ebx
call _DZSTRCONCATASSIGN@8
.Lt_00A9:
.Lt_00A8:
push dword ptr [ebp-8]
call _HCOLLECTCHARFORDEBUGOUTPUT@4
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
jmp .Lt_00A0
.Lt_00A1:
mov ebx, dword ptr [_LEX+422144]
cmp dword ptr [ebx+8412], 0
jne .Lt_00AC
push dword ptr [_ENV+276]
call _fb_FileEof@4
test eax, eax
jne .Lt_00AE
push dword ptr [_ENV+276]
call _fb_FileTell@4
mov ebx, eax
mov eax, dword ptr [_LEX+422144]
mov dword ptr [eax+24808], ebx
mov ebx, dword ptr [_ENV+552]
mov dword ptr [ebp-12], ebx
jmp .Lt_00B0
.Lt_00B2:
push 8193
mov ebx, dword ptr [_LEX+422144]
lea eax, [ebx+8420]
push eax
push 0
push dword ptr [_ENV+276]
call _fb_FileGetStr@16
test eax, eax
jne .Lt_00B4
push dword ptr [_ENV+276]
call _fb_FileTell@4
mov ebx, dword ptr [_LEX+422144]
mov esi, dword ptr [ebx+24808]
mov ecx, esi
sar ecx, 31
sub eax, esi
sbb edx, ecx
mov esi, eax
mov eax, dword ptr [_LEX+422144]
mov dword ptr [eax+8412], esi
mov esi, dword ptr [_LEX+422144]
lea eax, [esi+8420]
mov esi, dword ptr [_LEX+422144]
mov dword ptr [esi+8416], eax
.Lt_00B4:
.Lt_00B3:
jmp .Lt_00AF
.Lt_00B5:
call _LEXREADUTF8@0
jmp .Lt_00AF
.Lt_00B6:
call _LEXREADUTF16LE@0
jmp .Lt_00AF
.Lt_00B7:
call _LEXREADUTF16BE@0
jmp .Lt_00AF
.Lt_00B8:
call _LEXREADUTF32LE@0
jmp .Lt_00AF
.Lt_00B9:
call _LEXREADUTF32BE@0
jmp .Lt_00AF
.Lt_00B0:
cmp dword ptr [ebp-12], 5
ja .Lt_00AF
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00BA+eax*4]
_.LT_00BA:
.int .Lt_00B2
.int .Lt_00B5
.int .Lt_00B6
.int .Lt_00B7
.int .Lt_00B8
.int .Lt_00B9
.Lt_00AF:
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
.Lt_00AB:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8412], 0
jle .Lt_00BC
cmp dword ptr [_ENV+552], 0
jne .Lt_00BE
mov eax, dword ptr [_LEX+422144]
mov esi, dword ptr [eax+8416]
movzx eax, byte ptr [esi]
mov dword ptr [ebp-8], eax
jmp .Lt_00BD
.Lt_00BE:
mov eax, dword ptr [_LEX+422144]
mov esi, dword ptr [eax+8416]
movzx eax, word ptr [esi]
mov dword ptr [ebp-8], eax
.Lt_00BD:
jmp .Lt_00BB
.Lt_00BC:
mov dword ptr [ebp-8], 0
.Lt_00BB:
cmp dword ptr [_ENV+148], 0
je .Lt_00C0
cmp dword ptr [_ENV+876], 0
jne .Lt_00C2
cmp dword ptr [_LEX+422148], 0
je .Lt_00C4
mov dword ptr [_LEX+422148], 0
push offset _Lt_00C5
mov eax, dword ptr [_LEX+422144]
lea esi, [eax+24816]
push esi
call _DZSTRCONCATASSIGN@8
.Lt_00C4:
.Lt_00C3:
push dword ptr [ebp-8]
call _HCOLLECTCHARFORDEBUGOUTPUT@4
.Lt_00C2:
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
.Lt_00A0:
mov esi, dword ptr [ebp-8]
mov dword ptr [ebp-4], esi
.Lt_009F:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSKIPCHAR@0:
.Lt_00CA:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8392], 0
jle .Lt_00CD
mov eax, dword ptr [_LEX+422144]
dec dword ptr [eax+8392]
cmp dword ptr [_ENV+552], 0
jne .Lt_00CF
mov eax, dword ptr [_LEX+422144]
inc dword ptr [eax+8396]
jmp .Lt_00CE
.Lt_00CF:
mov eax, dword ptr [_LEX+422144]
add dword ptr [eax+8396], 2
.Lt_00CE:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8392], 0
jne .Lt_00D1
mov eax, dword ptr [_LEX+422144]
mov dword ptr [eax+8384], 0
.Lt_00D1:
.Lt_00D0:
jmp .Lt_00CC
.Lt_00CD:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8364], 0
je .Lt_00D2
mov eax, dword ptr [_LEX+422144]
dec dword ptr [eax+8412]
cmp dword ptr [_ENV+552], 0
jne .Lt_00D4
mov eax, dword ptr [_LEX+422144]
inc dword ptr [eax+8416]
jmp .Lt_00D3
.Lt_00D4:
mov eax, dword ptr [_LEX+422144]
add dword ptr [eax+8416], 2
.Lt_00D3:
.Lt_00D2:
.Lt_00CC:
.Lt_00CB:
ret
.balign 16
_HREADIDENTIFIER@20:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00E9:
push 0
call _LEXCURRENTCHAR@4
mov bl, al
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], bl
inc dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 0
call _LEXEATCHAR@0
mov dword ptr [ebp-4], 0
.Lt_00EB:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_00EF
.Lt_00F1:
jmp .Lt_00EE
.Lt_00F2:
mov eax, dword ptr [ebp+24]
and eax, 128
test eax, eax
jne .Lt_00F4
jmp .Lt_00EC
.Lt_00F4:
.Lt_00F3:
jmp .Lt_00EE
.Lt_00F5:
jmp .Lt_00EC
jmp .Lt_00EE
.Lt_00EF:
mov eax, dword ptr [ebp-12]
add eax, 4294967250
cmp eax, 76
ja .Lt_00F5
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00F6+eax*4-184]
_.LT_00F6:
.int .Lt_00F2
.int .Lt_00F5
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F5
.int .Lt_00F5
.int .Lt_00F5
.int .Lt_00F5
.int .Lt_00F5
.int .Lt_00F5
.int .Lt_00F5
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F5
.int .Lt_00F5
.int .Lt_00F5
.int .Lt_00F5
.int .Lt_00F1
.int .Lt_00F5
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.int .Lt_00F1
.Lt_00EE:
call _LEXEATCHAR@0
cmp dword ptr [ebp-4], 0
jne .Lt_00F8
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 128
jne .Lt_00FA
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
jne .Lt_00FC
or dword ptr [ebp+24], 1
push 0
push 1
push 0
push 7
call _ERRREPORTWARN@16
.Lt_00FC:
.Lt_00FB:
mov dword ptr [ebp-4], -1
jmp .Lt_00F9
.Lt_00FA:
mov al, byte ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx], al
inc dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
.Lt_00F9:
.Lt_00F8:
.Lt_00F7:
.Lt_00ED:
jmp .Lt_00EB
.Lt_00EC:
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -2147483648
mov eax, dword ptr [ebp+24]
and eax, 8
test eax, eax
jne .Lt_00FE
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-8], eax
jmp .Lt_0100
.Lt_0102:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [_ENV+892]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 37
call _LEXEATCHAR@0
jmp .Lt_00FF
.Lt_0103:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 38
call _LEXEATCHAR@0
jmp .Lt_00FF
.Lt_0104:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 15
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 33
call _LEXEATCHAR@0
jmp .Lt_00FF
.Lt_0105:
push 0
call _LEXGETLOOKAHEADCHAR@4
cmp eax, 35
je .Lt_0107
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 16
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 35
call _LEXEATCHAR@0
.Lt_0107:
.Lt_0106:
jmp .Lt_00FF
.Lt_0108:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 17
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 36
call _LEXEATCHAR@0
jmp .Lt_00FF
.Lt_0100:
mov eax, dword ptr [ebp-8]
add eax, 4294967263
cmp eax, 5
ja .Lt_00FF
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0109+eax*4-132]
_.LT_0109:
.int .Lt_0104
.int .Lt_00FF
.int .Lt_0105
.int .Lt_0108
.int .Lt_0102
.int .Lt_0103
.Lt_00FF:
.Lt_00FE:
.Lt_00FD:
.Lt_00EA:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HREADNONDECNUMBER@16:
push ebp
mov ebp, esp
sub esp, 52
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_010A:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-44], eax
jmp .Lt_010D
.Lt_010F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 38
mov bl, byte ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx+1], bl
mov ebx, dword ptr [ebp+8]
add dword ptr [ebx], 2
mov ebx, dword ptr [ebp+12]
add dword ptr [ebx], 2
call _LEXEATCHAR@0
mov ebx, dword ptr [ebp+20]
and ebx, 9
test ebx, ebx
jne .Lt_0111
.Lt_0112:
push 0
call _LEXCURRENTCHAR@4
cmp eax, 48
jne .Lt_0113
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 48
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
call _LEXEATCHAR@0
jmp .Lt_0112
.Lt_0113:
.Lt_0111:
.Lt_0110:
.Lt_0114:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 97
jb .Lt_011A
cmp dword ptr [ebp-16], 102
jbe .Lt_0119
.Lt_011A:
cmp dword ptr [ebp-16], 65
jb .Lt_011B
cmp dword ptr [ebp-16], 70
jbe .Lt_0119
.Lt_011B:
cmp dword ptr [ebp-16], 48
jb .Lt_0118
cmp dword ptr [ebp-16], 57
ja .Lt_0118
.Lt_0119:
call _LEXEATCHAR@0
cmp dword ptr [ebp-36], 0
jne .Lt_011D
mov al, byte ptr [ebp-16]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
add dword ptr [ebp-16], 4294967248
cmp dword ptr [ebp-16], 9
jbe .Lt_011F
add dword ptr [ebp-16], 4294967289
.Lt_011F:
.Lt_011E:
cmp dword ptr [ebp-16], 16
jbe .Lt_0121
add dword ptr [ebp-16], 4294967264
.Lt_0121:
.Lt_0120:
inc dword ptr [ebp-32]
cmp dword ptr [ebp-32], 8
jle .Lt_0123
cmp dword ptr [ebp-32], 9
jne .Lt_0125
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 13
mov ecx, dword ptr [ebp-12]
mov eax, 0
shld eax, ecx, 4
shl ecx, 4
mov esi, dword ptr [ebp-16]
mov ebx, 0
add ecx, esi
adc eax, ebx
mov dword ptr [ebp-28], ecx
mov dword ptr [ebp-24], eax
jmp .Lt_0124
.Lt_0125:
cmp dword ptr [ebp-32], 17
jne .Lt_0126
mov ecx, dword ptr [ebp+20]
and ecx, 1
test ecx, ecx
jne .Lt_0128
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.Lt_0128:
.Lt_0127:
mov dword ptr [ebp-36], -1
jmp .Lt_0124
.Lt_0126:
mov eax, dword ptr [ebp-28]
mov ecx, dword ptr [ebp-24]
shld ecx, eax, 4
shl eax, 4
mov ebx, dword ptr [ebp-16]
mov esi, 0
add eax, ebx
adc ecx, esi
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ecx
.Lt_0124:
jmp .Lt_0122
.Lt_0123:
cmp dword ptr [ebp-32], 5
jne .Lt_012A
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 11
.Lt_012A:
.Lt_0129:
mov eax, dword ptr [ebp-12]
shl eax, 4
add eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.Lt_0122:
.Lt_011D:
.Lt_011C:
jmp .Lt_0117
.Lt_0118:
jmp .Lt_0115
.Lt_012B:
.Lt_0117:
.Lt_0116:
jmp .Lt_0114
.Lt_0115:
jmp .Lt_010C
.Lt_012C:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 38
mov cl, byte ptr [ebp-16]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx+1], cl
mov ecx, dword ptr [ebp+8]
add dword ptr [ecx], 2
mov ecx, dword ptr [ebp+12]
add dword ptr [ecx], 2
call _LEXEATCHAR@0
mov ecx, dword ptr [ebp+20]
and ecx, 9
test ecx, ecx
jne .Lt_012E
.Lt_012F:
push 0
call _LEXCURRENTCHAR@4
cmp eax, 48
jne .Lt_0130
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 48
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
call _LEXEATCHAR@0
jmp .Lt_012F
.Lt_0130:
.Lt_012E:
.Lt_012D:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-20], eax
.Lt_0131:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 48
jb .Lt_0135
cmp dword ptr [ebp-16], 55
ja .Lt_0135
.Lt_0136:
call _LEXEATCHAR@0
cmp dword ptr [ebp-36], 0
jne .Lt_0138
mov al, byte ptr [ebp-16]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
add dword ptr [ebp-16], 4294967248
inc dword ptr [ebp-32]
cmp dword ptr [ebp-32], 10
jle .Lt_013A
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-48], eax
jmp .Lt_013C
.Lt_013E:
cmp dword ptr [ebp-20], 51
jbe .Lt_0140
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 13
mov ebx, dword ptr [ebp-12]
mov eax, 0
shld eax, ebx, 3
shl ebx, 3
mov esi, dword ptr [ebp-16]
mov ecx, 0
add ebx, esi
adc eax, ecx
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], eax
jmp .Lt_013F
.Lt_0140:
mov ebx, dword ptr [ebp-12]
shl ebx, 3
add ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.Lt_013F:
jmp .Lt_013B
.Lt_0141:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 480
je .Lt_0142
mov dword ptr [ebp-52], 24
jmp .Lt_048B
.Lt_0142:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-52], ebx
.Lt_048B:
mov ebx, dword ptr [ebp-52]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 8
jge .Lt_0145
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 13
mov eax, dword ptr [ebp-12]
mov ebx, 0
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
.Lt_0145:
.Lt_0144:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
shld eax, ebx, 3
shl ebx, 3
mov ecx, dword ptr [ebp-16]
mov esi, 0
add ebx, ecx
adc eax, esi
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], eax
jmp .Lt_013B
.Lt_0146:
cmp dword ptr [ebp-20], 49
jbe .Lt_0148
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
jne .Lt_014A
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.Lt_014A:
.Lt_0149:
mov dword ptr [ebp-36], -1
jmp .Lt_0147
.Lt_0148:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-24]
shld ebx, eax, 3
shl eax, 3
mov esi, dword ptr [ebp-16]
mov ecx, 0
add eax, esi
adc ebx, ecx
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
.Lt_0147:
jmp .Lt_013B
.Lt_014B:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .Lt_014D
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.Lt_014D:
.Lt_014C:
mov dword ptr [ebp-36], -1
jmp .Lt_013B
.Lt_014E:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
shld eax, ebx, 3
shl ebx, 3
mov ecx, dword ptr [ebp-16]
mov esi, 0
add ebx, ecx
adc eax, esi
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], eax
jmp .Lt_013B
.Lt_013C:
mov ebx, dword ptr [ebp-48]
add ebx, 4294967285
cmp ebx, 12
ja .Lt_014E
mov ebx, dword ptr [ebp-48]
jmp dword ptr [_.LT_014F+ebx*4-44]
_.LT_014F:
.int .Lt_013E
.int .Lt_0141
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_014E
.int .Lt_0146
.int .Lt_014B
.Lt_013B:
jmp .Lt_0139
.Lt_013A:
cmp dword ptr [ebp-32], 6
jne .Lt_0151
cmp dword ptr [ebp-20], 49
jbe .Lt_0153
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
.Lt_0153:
.Lt_0152:
jmp .Lt_0150
.Lt_0151:
cmp dword ptr [ebp-32], 7
jne .Lt_0154
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
.Lt_0154:
.Lt_0150:
mov ebx, dword ptr [ebp-12]
shl ebx, 3
add ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.Lt_0139:
.Lt_0138:
.Lt_0137:
jmp .Lt_0134
.Lt_0135:
jmp .Lt_0132
.Lt_0155:
.Lt_0134:
.Lt_0133:
jmp .Lt_0131
.Lt_0132:
jmp .Lt_010C
.Lt_0156:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 38
mov al, byte ptr [ebp-16]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx+1], al
mov eax, dword ptr [ebp+8]
add dword ptr [eax], 2
mov eax, dword ptr [ebp+12]
add dword ptr [eax], 2
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+20]
and eax, 9
test eax, eax
jne .Lt_0158
.Lt_0159:
push 0
call _LEXCURRENTCHAR@4
cmp eax, 48
jne .Lt_015A
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 48
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
call _LEXEATCHAR@0
jmp .Lt_0159
.Lt_015A:
.Lt_0158:
.Lt_0157:
.Lt_015B:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 48
je .Lt_0160
.Lt_0161:
cmp dword ptr [ebp-16], 49
jne .Lt_015F
.Lt_0160:
call _LEXEATCHAR@0
cmp dword ptr [ebp-36], 0
jne .Lt_0163
mov al, byte ptr [ebp-16]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
add dword ptr [ebp-16], 4294967248
inc dword ptr [ebp-32]
cmp dword ptr [ebp-32], 32
jle .Lt_0165
cmp dword ptr [ebp-32], 33
jne .Lt_0167
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 13
mov ebx, dword ptr [ebp-12]
mov eax, 0
shld eax, ebx, 1
shl ebx, 1
mov esi, dword ptr [ebp-16]
mov ecx, 0
add ebx, esi
adc eax, ecx
mov dword ptr [ebp-28], ebx
mov dword ptr [ebp-24], eax
jmp .Lt_0166
.Lt_0167:
cmp dword ptr [ebp-32], 65
jne .Lt_0168
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
jne .Lt_016A
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.Lt_016A:
.Lt_0169:
mov dword ptr [ebp-36], -1
jmp .Lt_0166
.Lt_0168:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-24]
shld ebx, eax, 1
shl eax, 1
mov ecx, dword ptr [ebp-16]
mov esi, 0
add eax, ecx
adc ebx, esi
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
.Lt_0166:
jmp .Lt_0164
.Lt_0165:
cmp dword ptr [ebp-32], 17
jne .Lt_016C
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 11
.Lt_016C:
.Lt_016B:
mov eax, dword ptr [ebp-12]
shl eax, 1
add eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.Lt_0164:
.Lt_0163:
.Lt_0162:
jmp .Lt_015E
.Lt_015F:
jmp .Lt_015C
.Lt_016D:
.Lt_015E:
.Lt_015D:
jmp .Lt_015B
.Lt_015C:
jmp .Lt_010C
.Lt_016E:
jmp .Lt_010B
jmp .Lt_010C
.Lt_010D:
mov eax, dword ptr [ebp-44]
add eax, 4294967230
cmp eax, 45
ja .Lt_016E
mov eax, dword ptr [ebp-44]
jmp dword ptr [_.LT_016F+eax*4-264]
_.LT_016F:
.int .Lt_0156
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_010F
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_012C
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
.int .Lt_0156
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_010F
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_016E
.int .Lt_012C
.Lt_010C:
cmp dword ptr [ebp-32], 0
jne .Lt_0171
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 48
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
.Lt_0171:
.Lt_0170:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 480
je .Lt_0172
mov dword ptr [ebp-40], 24
jmp .Lt_048C
.Lt_0172:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-40], ebx
.Lt_048C:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx+4], 8
jge .Lt_0175
mov eax, dword ptr [ebp-12]
mov ebx, 0
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
jmp .Lt_0174
.Lt_0175:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
.Lt_0174:
.Lt_010B:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HREADFLOATNUMBER@16:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_0176:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [_ENV+920]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+2064]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
.Lt_0178:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 48
jb .Lt_017C
cmp dword ptr [ebp-4], 57
ja .Lt_017C
.Lt_017D:
call _LEXEATCHAR@0
cmp dword ptr [ebp-12], 0
jne .Lt_017F
mov al, byte ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+2064]
.Lt_017F:
.Lt_017E:
jmp .Lt_017B
.Lt_017C:
jmp .Lt_0179
.Lt_0180:
.Lt_017B:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+2064], 64
jne .Lt_0182
cmp dword ptr [ebp-12], 0
jne .Lt_0184
mov dword ptr [ebp-12], -1
jmp .Lt_0183
.Lt_0184:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .Lt_0186
or dword ptr [ebp+20], 1
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.Lt_0186:
.Lt_0185:
.Lt_0183:
.Lt_0182:
.Lt_0181:
.Lt_017A:
jmp .Lt_0178
.Lt_0179:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+16], 0
je .Lt_0187
mov dword ptr [ebp-16], 1
jmp .Lt_048D
.Lt_0187:
mov dword ptr [ebp-16], 0
.Lt_048D:
mov eax, dword ptr [ebp-16]
add eax, 7
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx+2064], eax
jle .Lt_018A
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 16
.Lt_018A:
.Lt_0189:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-20], eax
jmp .Lt_018C
.Lt_018E:
cmp dword ptr [ebp-4], 100
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-4], 68
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0190
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+8], 16
.Lt_0190:
.Lt_018F:
cmp dword ptr [ebp-12], 0
jne .Lt_0192
cmp dword ptr [ebp+20], 0
jne .Lt_0194
mov dword ptr [ebp-4], 101
.Lt_0194:
.Lt_0193:
mov cl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx+2064]
.Lt_0192:
.Lt_0191:
call _LEXEATCHAR@0
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 43
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-4], 45
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0196
call _LEXEATCHAR@0
cmp dword ptr [ebp-12], 0
jne .Lt_0198
mov cl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx+2064]
.Lt_0198:
.Lt_0197:
.Lt_0196:
.Lt_0195:
.Lt_0199:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-24], eax
jmp .Lt_019D
.Lt_019F:
call _LEXEATCHAR@0
cmp dword ptr [ebp-12], 0
jne .Lt_01A1
mov al, byte ptr [ebp-4]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+2064]
.Lt_01A1:
.Lt_01A0:
jmp .Lt_019C
.Lt_01A2:
jmp .Lt_019A
jmp .Lt_019C
.Lt_019D:
mov eax, dword ptr [ebp-24]
add eax, 4294967248
cmp eax, 9
ja .Lt_01A2
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.LT_01A3+eax*4-192]
_.LT_01A3:
.int .Lt_019F
.int .Lt_019F
.int .Lt_019F
.int .Lt_019F
.int .Lt_019F
.int .Lt_019F
.int .Lt_019F
.int .Lt_019F
.int .Lt_019F
.int .Lt_019F
.Lt_019C:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+2064], 64
jne .Lt_01A5
cmp dword ptr [ebp-12], 0
jne .Lt_01A7
mov dword ptr [ebp-12], -1
jmp .Lt_01A6
.Lt_01A7:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .Lt_01A9
or dword ptr [ebp+20], 1
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.Lt_01A9:
.Lt_01A8:
.Lt_01A6:
.Lt_01A5:
.Lt_01A4:
.Lt_019B:
jmp .Lt_0199
.Lt_019A:
jmp .Lt_018B
.Lt_018C:
mov eax, dword ptr [ebp-20]
add eax, 4294967228
cmp eax, 33
ja .Lt_018B
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_01AA+eax*4-272]
_.LT_01AA:
.int .Lt_018E
.int .Lt_018E
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018B
.int .Lt_018E
.int .Lt_018E
.Lt_018B:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-20], eax
jmp .Lt_01AC
.Lt_01AE:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 15
mov eax, dword ptr [ebp+20]
and eax, 1032
test eax, eax
jne .Lt_01B0
call _LEXEATCHAR@0
.Lt_01B0:
.Lt_01AF:
jmp .Lt_01AB
.Lt_01B1:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 15
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .Lt_01B3
call _LEXEATCHAR@0
.Lt_01B3:
.Lt_01B2:
jmp .Lt_01AB
.Lt_01B4:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 16
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .Lt_01B6
call _LEXEATCHAR@0
.Lt_01B6:
.Lt_01B5:
jmp .Lt_01AB
.Lt_01AC:
mov eax, dword ptr [ebp-20]
add eax, 4294967263
cmp eax, 69
ja .Lt_01AB
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_01B7+eax*4-132]
_.LT_01B7:
.int .Lt_01B1
.int .Lt_01AB
.int .Lt_01B4
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AE
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AB
.int .Lt_01AE
.Lt_01AB:
cmp dword ptr [ebp+20], 0
jne .Lt_01B9
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+2064]
sub ebx, dword ptr [ebp-8]
test ebx, ebx
jne .Lt_01BB
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 48
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+2064]
.Lt_01BB:
.Lt_01BA:
.Lt_01B9:
.Lt_01B8:
.Lt_0177:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_READNUMBERCHARS@20:
push ebp
mov ebp, esp
sub esp, 24
push ebx
push esi
push edi
.Lt_01BC:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 9
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
.Lt_01BE:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .Lt_01C2
.Lt_01C4:
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 48
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+2064]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
or eax, dword ptr [ebp-4]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [ecx]
not ebx
and eax, ebx
je .Lt_01C6
mov bl, byte ptr [ebp-16]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+16]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+2064]
mov ebx, dword ptr [ebp+24]
mov eax, dword ptr [ebx]
mov ecx, dword ptr [ebx+4]
shld ecx, eax, 3
shl eax, 3
mov ebx, dword ptr [ebp+24]
mov edi, dword ptr [ebx]
mov esi, dword ptr [ebx+4]
shld esi, edi, 1
shl edi, 1
add eax, edi
adc ecx, esi
mov edi, dword ptr [ebp-16]
add edi, 4294967248
mov ebx, edi
mov esi, 0
add eax, ebx
adc ecx, esi
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], eax
mov dword ptr [ebx+4], ecx
.Lt_01C6:
.Lt_01C5:
jmp .Lt_01C1
.Lt_01C7:
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-16], 46
jne .Lt_01C9
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .Lt_01CB
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 46
mov ecx, dword ptr [ebp+16]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx+2064]
.Lt_01CB:
.Lt_01CA:
mov dword ptr [ebp-24], -1
.Lt_01C9:
.Lt_01C8:
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call _HREADFLOATNUMBER@16
jmp .Lt_01BF
jmp .Lt_01C1
.Lt_01CC:
jmp .Lt_01BF
jmp .Lt_01C1
.Lt_01C2:
mov ecx, dword ptr [ebp-20]
add ecx, 4294967250
cmp ecx, 55
ja .Lt_01CC
mov ecx, dword ptr [ebp-20]
jmp dword ptr [_.LT_01CD+ecx*4-184]
_.LT_01CD:
.int .Lt_01C7
.int .Lt_01CC
.int .Lt_01C4
.int .Lt_01C4
.int .Lt_01C4
.int .Lt_01C4
.int .Lt_01C4
.int .Lt_01C4
.int .Lt_01C4
.int .Lt_01C4
.int .Lt_01C4
.int .Lt_01C4
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01C7
.int .Lt_01C7
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01CC
.int .Lt_01C7
.int .Lt_01C7
.Lt_01C1:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
and eax, 8
test eax, eax
jne .Lt_01CF
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .Lt_01D1
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+2064]
mov dword ptr [ebp-20], ecx
jmp .Lt_01D3
.Lt_01D5:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .Lt_01D7
ja .Lt_0496
cmp dword ptr [ecx], 32767
jbe .Lt_01D7
.Lt_0496:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 11
.Lt_01D7:
.Lt_01D6:
jmp .Lt_01D2
.Lt_01D8:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 11
jmp .Lt_01D2
.Lt_01D9:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .Lt_01DB
ja .Lt_0497
cmp dword ptr [ecx], 2147483647
jbe .Lt_01DB
.Lt_0497:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .Lt_01DD
ja .Lt_0498
cmp dword ptr [ecx], 4294967295
jbe .Lt_01DD
.Lt_0498:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 13
jmp .Lt_01DC
.Lt_01DD:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 12
.Lt_01DC:
.Lt_01DB:
.Lt_01DA:
jmp .Lt_01D2
.Lt_01DE:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 13
jmp .Lt_01D2
.Lt_01DF:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 2147483647
jb .Lt_01E1
ja .Lt_0499
cmp dword ptr [ecx], 4294967295
jbe .Lt_01E1
.Lt_0499:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 14
.Lt_01E1:
.Lt_01E0:
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-8], eax
jmp .Lt_01D2
.Lt_01E2:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], 14
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 1
test eax, eax
jne .Lt_01E4
cmp dword ptr [ebp-8], 429496729
mov eax, -1
ja .Lt_049A
jb .Lt_049B
cmp dword ptr [ebp-12], 2576980377
ja .Lt_049A
.Lt_049B:
xor eax, eax
.Lt_049A:
mov ebx, dword ptr [ebp+24]
mov esi, dword ptr [ebx]
mov ecx, dword ptr [ebx+4]
and esi, 0
and ecx, 2147483648
cmp ecx, 0
mov ebx, -1
jne .Lt_049D
cmp esi, 0
je .Lt_049C
.Lt_049D:
xor ebx, ebx
.Lt_049C:
or eax, ebx
je .Lt_01E6
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], -1
.Lt_01E6:
.Lt_01E5:
.Lt_01E4:
.Lt_01E3:
jmp .Lt_01D2
.Lt_01E7:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 1
test eax, eax
jne .Lt_01E9
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.Lt_01E9:
.Lt_01E8:
jmp .Lt_01D2
.Lt_01D3:
mov eax, dword ptr [ebp-20]
add eax, 4294967291
cmp eax, 16
ja .Lt_01D2
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_01EA+eax*4-20]
_.LT_01EA:
.int .Lt_01D5
.int .Lt_01D8
.int .Lt_01D2
.int .Lt_01D2
.int .Lt_01D2
.int .Lt_01D9
.int .Lt_01DE
.int .Lt_01D2
.int .Lt_01D2
.int .Lt_01D2
.int .Lt_01D2
.int .Lt_01D2
.int .Lt_01D2
.int .Lt_01D2
.int .Lt_01DF
.int .Lt_01E2
.int .Lt_01E7
.Lt_01D2:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+2064], 64
jne .Lt_01EC
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .Lt_01EE
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
jmp .Lt_01ED
.Lt_01EE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 1
test ebx, ebx
jne .Lt_01F0
mov ebx, dword ptr [ebp+12]
or dword ptr [ebx], 1
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.Lt_01F0:
.Lt_01EF:
.Lt_01ED:
.Lt_01EC:
.Lt_01EB:
.Lt_01D1:
.Lt_01D0:
.Lt_01CF:
.Lt_01CE:
.Lt_01C0:
jmp .Lt_01BE
.Lt_01BF:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+2064], 0
jne .Lt_01F2
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 48
mov eax, dword ptr [ebp+16]
inc dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2064], 1
.Lt_01F2:
.Lt_01F1:
.Lt_01BD:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HREADNUMBER@8:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_01F3:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 5
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov dword ptr [ebp-20], ebx
mov ebx, dword ptr [ebp-20]
mov byte ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2064], 0
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-28], eax
jmp .Lt_01F6
.Lt_01F8:
lea eax, [ebp-16]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp+12]
push eax
push dword ptr [ebp+8]
call _READNUMBERCHARS@20
jmp .Lt_01F5
.Lt_01F9:
call _LEXEATCHAR@0
mov eax, dword ptr [ebp-20]
mov byte ptr [eax], 46
inc dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2064], 1
push dword ptr [ebp+12]
push -1
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call _HREADFLOATNUMBER@16
jmp .Lt_01F5
.Lt_01FA:
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2064], 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+2064]
push eax
lea eax, [ebp-20]
push eax
call _HREADNONDECNUMBER@16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
jmp .Lt_01F5
.Lt_01F6:
mov eax, dword ptr [ebp-28]
add eax, 4294967258
cmp eax, 19
ja .Lt_01F5
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.LT_01FB+eax*4-152]
_.LT_01FB:
.int .Lt_01FA
.int .Lt_01F5
.int .Lt_01F5
.int .Lt_01F5
.int .Lt_01F5
.int .Lt_01F5
.int .Lt_01F5
.int .Lt_01F5
.int .Lt_01F9
.int .Lt_01F5
.int .Lt_01F8
.int .Lt_01F8
.int .Lt_01F8
.int .Lt_01F8
.int .Lt_01F8
.int .Lt_01F8
.int .Lt_01F8
.int .Lt_01F8
.int .Lt_01F8
.int .Lt_01F8
.Lt_01F5:
mov eax, dword ptr [ebp-20]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+8]
mov dword ptr [ebp-28], edx
cmp dword ptr [ebp-28], 5
jne .Lt_01FE
.Lt_01FF:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [_ENV+896]
mov dword ptr [edx+8], eax
jmp .Lt_01FC
.Lt_01FE:
cmp dword ptr [ebp-28], 6
jne .Lt_0200
.Lt_0201:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [_ENV+900]
mov dword ptr [eax+8], edx
jmp .Lt_01FC
.Lt_0200:
cmp dword ptr [ebp-28], 11
jne .Lt_0202
.Lt_0203:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [_ENV+904]
mov dword ptr [edx+8], eax
jmp .Lt_01FC
.Lt_0202:
cmp dword ptr [ebp-28], 12
jne .Lt_0204
.Lt_0205:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [_ENV+908]
mov dword ptr [eax+8], edx
jmp .Lt_01FC
.Lt_0204:
cmp dword ptr [ebp-28], 13
jne .Lt_0206
.Lt_0207:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [_ENV+912]
mov dword ptr [edx+8], eax
jmp .Lt_01FC
.Lt_0206:
cmp dword ptr [ebp-28], 14
jne .Lt_0208
.Lt_0209:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [_ENV+916]
mov dword ptr [eax+8], edx
.Lt_0208:
.Lt_01FC:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+8]
and eax, 480
je .Lt_020A
mov dword ptr [ebp-24], 24
jmp .Lt_049E
.Lt_020A:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+8]
and edx, 31
mov dword ptr [ebp-24], edx
.Lt_049E:
mov edx, dword ptr [ebp-24]
imul edx, 28
cmp dword ptr [_SYMB_DTYPETB+edx], 1
je .Lt_020D
mov edx, dword ptr [ebp+12]
and edx, 8
test edx, edx
jne .Lt_020F
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .Lt_0211
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 85
je .Lt_0215
.Lt_0216:
cmp dword ptr [ebp-28], 117
jne .Lt_0214
.Lt_0215:
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call _TYPETOUNSIGNED@4
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], eax
mov dword ptr [ebp-4], -1
.Lt_0214:
.Lt_0212:
.Lt_0211:
.Lt_0210:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-28], eax
jmp .Lt_0218
.Lt_021A:
mov eax, dword ptr [ebp+12]
and eax, 1024
test eax, eax
jne .Lt_021C
call _LEXEATCHAR@0
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 76
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-32], 108
sete dl
shr edx, 1
sbb edx, edx
or eax, edx
je .Lt_021E
call _LEXEATCHAR@0
cmp dword ptr [ebp-4], 0
je .Lt_021F
mov dword ptr [ebp-36], 14
jmp .Lt_049F
.Lt_021F:
mov dword ptr [ebp-36], 13
.Lt_049F:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-36]
mov dword ptr [edx+8], eax
jmp .Lt_021D
.Lt_021E:
cmp dword ptr [ebp-12], 0
jb .Lt_0222
ja .Lt_04A4
cmp dword ptr [ebp-16], 4294967295
jbe .Lt_0222
.Lt_04A4:
cmp dword ptr [ebp-8], 0
jne .Lt_0224
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .Lt_0226
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.Lt_0226:
.Lt_0225:
.Lt_0224:
.Lt_0223:
.Lt_0222:
.Lt_0221:
cmp dword ptr [ebp-4], 0
je .Lt_0227
mov dword ptr [ebp-36], 12
jmp .Lt_04A0
.Lt_0227:
mov dword ptr [ebp-36], 11
.Lt_04A0:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp-36]
mov dword ptr [eax+8], edx
.Lt_021D:
.Lt_021C:
.Lt_021B:
jmp .Lt_0217
.Lt_0229:
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .Lt_022B
cmp dword ptr [ebp-4], 0
jne .Lt_022D
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 15
call _LEXEATCHAR@0
.Lt_022D:
.Lt_022C:
.Lt_022B:
.Lt_022A:
jmp .Lt_0217
.Lt_022E:
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .Lt_0230
cmp dword ptr [ebp-4], 0
jne .Lt_0232
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 16
call _LEXEATCHAR@0
.Lt_0232:
.Lt_0231:
.Lt_0230:
.Lt_022F:
jmp .Lt_0217
.Lt_0233:
mov dword ptr [ebp-32], 0
mov edx, dword ptr [_ENV+892]
and edx, 480
je .Lt_0234
mov dword ptr [ebp-36], 24
jmp .Lt_04A1
.Lt_0234:
mov edx, dword ptr [_ENV+892]
and edx, 31
mov dword ptr [ebp-36], edx
.Lt_04A1:
mov edx, dword ptr [ebp-36]
imul edx, 28
mov eax, dword ptr [_SYMB_DTYPETB+edx+4]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 2
jne .Lt_0238
.Lt_0239:
cmp dword ptr [ebp-12], 0
mov eax, -1
ja .Lt_04A5
jb .Lt_04A6
cmp dword ptr [ebp-16], 65535
ja .Lt_04A5
.Lt_04A6:
xor eax, eax
.Lt_04A5:
mov dword ptr [ebp-32], eax
jmp .Lt_0236
.Lt_0238:
cmp dword ptr [ebp-40], 4
jne .Lt_023A
.Lt_023B:
cmp dword ptr [ebp-12], 0
mov eax, -1
ja .Lt_04A7
jb .Lt_04A8
cmp dword ptr [ebp-16], 4294967295
ja .Lt_04A7
.Lt_04A8:
xor eax, eax
.Lt_04A7:
mov dword ptr [ebp-32], eax
.Lt_023A:
.Lt_0236:
cmp dword ptr [ebp-32], 0
je .Lt_023D
cmp dword ptr [ebp-8], 0
jne .Lt_023F
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .Lt_0241
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.Lt_0241:
.Lt_0240:
.Lt_023F:
.Lt_023E:
.Lt_023D:
.Lt_023C:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [_ENV+892]
mov dword ptr [eax+8], edx
call _LEXEATCHAR@0
jmp .Lt_0217
.Lt_0242:
cmp dword ptr [ebp-12], 0
jb .Lt_0244
ja .Lt_04A9
cmp dword ptr [ebp-16], 4294967295
jbe .Lt_0244
.Lt_04A9:
cmp dword ptr [ebp-8], 0
jne .Lt_0246
mov edx, dword ptr [ebp+12]
and edx, 1
test edx, edx
jne .Lt_0248
push 0
push 1
push 0
push 8
call _ERRREPORTWARN@16
.Lt_0248:
.Lt_0247:
.Lt_0246:
.Lt_0245:
.Lt_0244:
.Lt_0243:
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 11
call _LEXEATCHAR@0
jmp .Lt_0217
.Lt_0249:
cmp dword ptr [ebp-4], 0
jne .Lt_024B
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 15
call _LEXEATCHAR@0
.Lt_024B:
.Lt_024A:
jmp .Lt_0217
.Lt_024C:
cmp dword ptr [ebp-4], 0
jne .Lt_024E
push 0
call _LEXGETLOOKAHEADCHAR@4
cmp eax, 35
je .Lt_0250
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 16
call _LEXEATCHAR@0
.Lt_0250:
.Lt_024F:
.Lt_024E:
.Lt_024D:
jmp .Lt_0217
.Lt_0218:
mov eax, dword ptr [ebp-28]
add eax, 4294967263
cmp eax, 75
ja .Lt_0217
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.LT_0251+eax*4-132]
_.LT_0251:
.int .Lt_0249
.int .Lt_0217
.int .Lt_024C
.int .Lt_0217
.int .Lt_0233
.int .Lt_0242
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_022E
.int .Lt_0217
.int .Lt_0229
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_021A
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_022E
.int .Lt_0217
.int .Lt_0229
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_0217
.int .Lt_021A
.Lt_0217:
.Lt_020F:
.Lt_020E:
.Lt_020D:
.Lt_020C:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 3
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [edx], ebx
.Lt_01F4:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HREADSTRING@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0252:
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 263
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp+16]
and ebx, 16
je .Lt_0255
push 0
call _LEXCURRENTCHAR@4
mov bl, al
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], bl
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.Lt_0255:
.Lt_0254:
call _LEXEATCHAR@0
.Lt_0256:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
jne .Lt_025A
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
je .Lt_025C
cmp dword ptr [ebp-16], 0
jne .Lt_025E
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 34
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.Lt_025E:
.Lt_025D:
.Lt_025C:
.Lt_025B:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .Lt_0260
jmp .Lt_0257
.Lt_0260:
jmp .Lt_0259
.Lt_025A:
cmp dword ptr [ebp-20], 27
jne .Lt_0261
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
jne .Lt_0263
cmp dword ptr [ebp-16], 0
jne .Lt_0265
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 27
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.Lt_0265:
.Lt_0264:
.Lt_0263:
.Lt_0262:
jmp .Lt_0259
.Lt_0261:
cmp dword ptr [ebp-20], 92
jne .Lt_0266
mov dword ptr [ebp-8], -1
cmp dword ptr [ebp-12], 0
je .Lt_0268
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 0
jne .Lt_026A
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 92
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.Lt_026A:
.Lt_0269:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-20], eax
.Lt_0268:
.Lt_0267:
.Lt_0266:
.Lt_0259:
cmp dword ptr [ebp-20], 0
je .Lt_026D
.Lt_026E:
cmp dword ptr [ebp-20], 13
je .Lt_026D
.Lt_026F:
cmp dword ptr [ebp-20], 10
jne .Lt_026C
.Lt_026D:
mov eax, dword ptr [ebp+16]
and eax, 9
test eax, eax
jne .Lt_0271
push 0
push 1
push 0
push 12
call _ERRREPORTWARN@16
.Lt_0271:
.Lt_0270:
jmp .Lt_0257
.Lt_026C:
.Lt_026B:
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 0
jne .Lt_0273
cmp dword ptr [ebp-4], 1024
jne .Lt_0275
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
jne .Lt_0277
or dword ptr [ebp+16], 1
push 0
push 1
push 0
push 9
call _ERRREPORTWARN@16
.Lt_0277:
.Lt_0276:
mov dword ptr [ebp-16], -1
jmp .Lt_0274
.Lt_0275:
mov al, byte ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov byte ptr [ebx], al
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.Lt_0274:
.Lt_0273:
.Lt_0272:
.Lt_0258:
jmp .Lt_0256
.Lt_0257:
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+2064], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+2072], eax
.Lt_0253:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HREADWSTR@12:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0278:
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 263
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-16], 0
mov ebx, dword ptr [ebp+16]
and ebx, 16
je .Lt_027B
push 0
call _LEXCURRENTCHAR@4
mov ebx, dword ptr [ebp+12]
mov word ptr [ebx], ax
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.Lt_027B:
.Lt_027A:
call _LEXEATCHAR@0
.Lt_027C:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
jne .Lt_0280
call _LEXEATCHAR@0
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
je .Lt_0282
cmp dword ptr [ebp-16], 0
jne .Lt_0284
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 34
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.Lt_0284:
.Lt_0283:
.Lt_0282:
.Lt_0281:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .Lt_0286
jmp .Lt_027D
.Lt_0286:
jmp .Lt_027F
.Lt_0280:
cmp dword ptr [ebp-20], 27
jne .Lt_0287
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
jne .Lt_0289
cmp dword ptr [ebp-16], 0
jne .Lt_028B
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 27
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.Lt_028B:
.Lt_028A:
.Lt_0289:
.Lt_0288:
jmp .Lt_027F
.Lt_0287:
cmp dword ptr [ebp-20], 92
jne .Lt_028C
mov dword ptr [ebp-8], -1
cmp dword ptr [ebp-12], 0
je .Lt_028E
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 0
jne .Lt_0290
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 92
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.Lt_0290:
.Lt_028F:
push 0
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-20], eax
.Lt_028E:
.Lt_028D:
.Lt_028C:
.Lt_027F:
cmp dword ptr [ebp-20], 0
je .Lt_0293
.Lt_0294:
cmp dword ptr [ebp-20], 13
je .Lt_0293
.Lt_0295:
cmp dword ptr [ebp-20], 10
jne .Lt_0292
.Lt_0293:
mov eax, dword ptr [ebp+16]
and eax, 9
test eax, eax
jne .Lt_0297
push 0
push 1
push 0
push 12
call _ERRREPORTWARN@16
.Lt_0297:
.Lt_0296:
jmp .Lt_027D
.Lt_0292:
.Lt_0291:
call _LEXEATCHAR@0
cmp dword ptr [ebp-16], 0
jne .Lt_0299
cmp dword ptr [ebp-4], 1024
jne .Lt_029B
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
jne .Lt_029D
or dword ptr [ebp+16], 1
push 0
push 1
push 0
push 9
call _ERRREPORTWARN@16
.Lt_029D:
.Lt_029C:
mov dword ptr [ebp-16], -1
jmp .Lt_029A
.Lt_029B:
mov ax, word ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov word ptr [ebx], ax
add dword ptr [ebp+12], 2
inc dword ptr [ebp-4]
.Lt_029A:
.Lt_0299:
.Lt_0298:
.Lt_027E:
jmp .Lt_027C
.Lt_027D:
mov eax, dword ptr [ebp+12]
mov word ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+2064], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+2072], eax
.Lt_0279:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCHECKPERIODS@12:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_029E:
cmp dword ptr [ebp+16], 0
je .Lt_02A1
mov dword ptr [ebp-4], 0
push 0
call _LEXCURRENTCHAR@4
cmp eax, 46
jne .Lt_02A3
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 8
je .Lt_02A5
mov dword ptr [ebp-4], -1
.Lt_02A6:
cmp dword ptr [ebp+16], 0
je .Lt_02A7
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_02A8:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .Lt_02AC
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .Lt_02AE
jmp .Lt_029F
.Lt_02AE:
.Lt_02AD:
.Lt_02AC:
.Lt_02AB:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+160]
mov dword ptr [ebp-8], eax
.Lt_02AA:
cmp dword ptr [ebp-8], 0
jne .Lt_02A8
.Lt_02A9:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+16], ebx
jmp .Lt_02A6
.Lt_02A7:
.Lt_02A5:
.Lt_02A4:
.Lt_02A3:
.Lt_02A2:
jmp .Lt_02A0
.Lt_02A1:
push 0
call _LEXCURRENTCHAR@4
cmp eax, 46
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_02A0:
cmp dword ptr [ebp-4], 0
je .Lt_02B0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+2064]
mov dword ptr [eax+2072], ecx
mov ecx, dword ptr [ebp+12]
or ecx, 128
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+2076]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+8]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+2064]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+12]
mov eax, dword ptr [ebp+8]
add ecx, dword ptr [eax+2064]
push ecx
call _HREADIDENTIFIER@20
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+4]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+12]
push eax
call _SYMBLOOKUP@12
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+2068], eax
.Lt_02B0:
.Lt_02AF:
.Lt_029F:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_READID@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_02B1:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8384]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2064], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2072], 0
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+2076]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+2064]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
push ebx
call _HREADIDENTIFIER@20
mov ebx, dword ptr [ebp+12]
and ebx, 256
je .Lt_02B4
push 0
push 0
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
push eax
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+8388]
call _SYMBLOOKUPAT@16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2068], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+2068], 0
jne .Lt_02B6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
jmp .Lt_02B5
.Lt_02B6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+2068]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+2068]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebx+4], eax
.Lt_02B5:
mov dword ptr [ebp-4], -1
jmp .Lt_02B2
.Lt_02B4:
.Lt_02B3:
mov eax, dword ptr [ebp+12]
and eax, 32
je .Lt_02B8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov dword ptr [ebp-4], -1
jmp .Lt_02B2
.Lt_02B8:
.Lt_02B7:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
push ebx
call _SYMBLOOKUP@12
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+2068], eax
mov eax, dword ptr [ebp+12]
and eax, 2
je .Lt_02BA
mov dword ptr [ebp-4], -1
jmp .Lt_02B2
.Lt_02BA:
.Lt_02B9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+2068], 0
je .Lt_02BC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+2068]
mov eax, dword ptr [ebx]
cmp dword ptr [eax], 5
jne .Lt_02BE
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+2068]
push dword ptr [ebx]
call _PPDEFINELOAD@8
test eax, eax
je .Lt_02C0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+2080], -1
mov dword ptr [ebp-4], 0
jmp .Lt_02B2
.Lt_02C0:
.Lt_02BF:
.Lt_02BE:
.Lt_02BD:
.Lt_02BC:
.Lt_02BB:
mov eax, dword ptr [_ENV+888]
and eax, 524288
test eax, eax
je .Lt_02C2
mov eax, dword ptr [ebp+12]
and eax, 64
test eax, eax
jne .Lt_02C4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+2068]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HCHECKPERIODS@12
.Lt_02C4:
.Lt_02C3:
.Lt_02C2:
.Lt_02C1:
mov dword ptr [ebp-4], -1
.Lt_02B2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HMULTILINECOMMENT@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_034C:
call _LEXEATCHAR@0
mov dword ptr [_Lt_04AD], 0
.Lt_034E:
push -1
call _LEXCURRENTCHAR@4
mov dword ptr [ebp-4], eax
jmp .Lt_0352
.Lt_0354:
push 0
push 1
push 0
push 0
push 132
call _ERRREPORTEX@20
jmp .Lt_034D
jmp .Lt_0351
.Lt_0355:
call _LEXEATCHAR@0
push 0
call _LEXCURRENTCHAR@4
cmp eax, 10
jne .Lt_0357
call _LEXEATCHAR@0
.Lt_0357:
.Lt_0356:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8392], 0
jne .Lt_0359
mov eax, dword ptr [_LEX+422144]
inc dword ptr [eax+8372]
.Lt_0359:
.Lt_0358:
jmp .Lt_0351
.Lt_035A:
call _LEXEATCHAR@0
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8392], 0
jne .Lt_035C
mov eax, dword ptr [_LEX+422144]
inc dword ptr [eax+8372]
.Lt_035C:
.Lt_035B:
jmp .Lt_0351
.Lt_035D:
call _LEXEATCHAR@0
push 0
call _LEXCURRENTCHAR@4
cmp eax, 39
jne .Lt_035F
call _LEXEATCHAR@0
inc dword ptr [_Lt_04AD]
.Lt_035F:
.Lt_035E:
jmp .Lt_0351
.Lt_0360:
call _LEXEATCHAR@0
push 0
call _LEXCURRENTCHAR@4
cmp eax, 47
jne .Lt_0362
call _LEXEATCHAR@0
cmp dword ptr [_Lt_04AD], 0
jne .Lt_0364
jmp .Lt_034F
.Lt_0364:
.Lt_0363:
dec dword ptr [_Lt_04AD]
.Lt_0362:
.Lt_0361:
jmp .Lt_0351
.Lt_0365:
call _LEXEATCHAR@0
jmp .Lt_0351
.Lt_0352:
cmp dword ptr [ebp-4], 47
ja .Lt_0365
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_0366+eax*4]
_.LT_0366:
.int .Lt_0354
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_035A
.int .Lt_0365
.int .Lt_0365
.int .Lt_0355
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0360
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_0365
.int .Lt_035D
.Lt_0351:
.Lt_0350:
jmp .Lt_034E
.Lt_034F:
.Lt_034D:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_04AD,4

.section .text
.balign 16
_HMOVEKDOWN@0:
push ebx
.Lt_037F:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov dword ptr [ebx], -1
mov ebx, dword ptr [_LEX+422144]
dec dword ptr [ebx+8352]
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
mov ebx, dword ptr [_LEX+422144]
mov ecx, dword ptr [eax+2084]
mov dword ptr [ebx+8356], ecx
.Lt_0380:
pop ebx
ret
.balign 16
_LEXGETSTRLITTEXT@4:
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0381:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], 262
jne .Lt_0384
.Lt_0385:
mov dword ptr [ebp-28], 0
jmp .Lt_0383
.Lt_0384:
cmp dword ptr [ebp+8], 263
jne .Lt_0386
.Lt_0387:
push 0
push 2
push offset _Lt_0388
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-28], -1
jmp .Lt_0383
.Lt_0386:
cmp dword ptr [ebp+8], 264
jne .Lt_0389
.Lt_038A:
push 0
push 2
push offset _Lt_038B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-28], 0
.Lt_0389:
.Lt_0383:
push 0
push 2
push offset _Lt_038C
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-32], 0
call _LEXGETTEXT@0
mov dword ptr [ebp-36], eax
.Lt_038D:
mov eax, dword ptr [ebp-36]
mov bl, byte ptr [eax]
mov byte ptr [ebp-40], bl
movzx ebx, byte ptr [ebp-40]
test ebx, ebx
jne .Lt_0392
.Lt_0393:
jmp .Lt_038E
jmp .Lt_0390
.Lt_0392:
movzx ebx, byte ptr [ebp-40]
cmp ebx, 34
jne .Lt_0394
.Lt_0395:
cmp dword ptr [ebp-32], 0
je .Lt_0397
push 0
push 2
push offset _Lt_038C
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .Lt_0396
.Lt_0397:
push 0
push 3
push offset _Lt_0398
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
.Lt_0396:
mov dword ptr [ebp-32], 0
jmp .Lt_0390
.Lt_0394:
movzx ebx, byte ptr [ebp-40]
cmp ebx, 92
jne .Lt_0399
.Lt_039B:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-32], ebx
push 0
push 2
push offset _Lt_039A
push -1
lea ebx, [ebp-24]
push ebx
call _fb_StrConcatAssign@20
jmp .Lt_0390
.Lt_0399:
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
mov ebx, dword ptr [ebp-36]
movzx eax, byte ptr [ebx]
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
.Lt_039C:
.Lt_0390:
inc dword ptr [ebp-36]
.Lt_038F:
jmp .Lt_038D
.Lt_038E:
push 0
push 2
push offset _Lt_038C
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0382:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.globl _LEX
.balign 4
	.lcomm	_LEX,422152
.balign 4
	.lcomm	_PPONLY_LN,12

.section .data
.balign 4
_Lt_00AA:	.ascii	" [Macro Expansion: \0"
.balign 4
_Lt_00C5:	.ascii	" ] \0"
.balign 4
_Lt_0388:	.ascii	"!\0"
.balign 4
_Lt_038B:	.ascii	"$\0"
.balign 4
_Lt_038C:	.ascii	"\"\0"
.balign 4
_Lt_0398:	.ascii	"\"\"\0"
.balign 4
_Lt_039A:	.ascii	"\\\0"
.balign 4
_Lt_03B1:	.ascii	" \0"
.balign 4
_Lt_040B:	.ascii	"src/compiler/lex.bas\0"
.balign 4
_Lt_0440:	.ascii	"^\0"
.balign 4
_Lt_044C:	.ascii	"in '\0"
.balign 4
_Lt_044F:	.ascii	"'\0"

.section .ctors
.int _fb_ctor__lex
