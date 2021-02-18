	.intel_syntax noprefix

.section .text
.balign 16

.globl LEXPUSHCTX
LEXPUSHCTX:
.type LEXPUSHCTX, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0067:
add dword ptr [LEX+839936], 49408
.Lt_0068:
mov esp, ebp
pop ebp
ret
.size LEXPUSHCTX, .-LEXPUSHCTX
.balign 16

.globl LEXPOPCTX
LEXPOPCTX:
.type LEXPOPCTX, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0069:
cmp dword ptr [ENV+876], 0
jne .Lt_006C
sub esp, 8
push 0
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+49392]
push ebx
call DZSTRALLOCATE
add esp, 16
.Lt_006C:
.Lt_006B:
cmp dword ptr [ENV+552], 0
jne .Lt_006E
sub esp, 8
push 0
mov ebx, dword ptr [LEX+839936]
lea eax, [ebx+16592]
push eax
call DZSTRALLOCATE
add esp, 16
jmp .Lt_006D
.Lt_006E:
sub esp, 8
push 0
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16592]
push ebx
call DWSTRALLOCATE
add esp, 16
.Lt_006D:
add dword ptr [LEX+839936], -49408
.Lt_006A:
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXPOPCTX, .-LEXPOPCTX
.balign 16

.globl LEXINIT
LEXINIT:
.type LEXINIT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_006F:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ENV+876]
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
je .Lt_0072
lea ebx, [LEX]
mov dword ptr [LEX+839936], ebx
.Lt_0072:
.Lt_0071:
mov ebx, dword ptr [LEX+839936]
mov dword ptr [ebx+16544], 0
mov ebx, dword ptr [LEX+839936]
lea eax, [ebx]
mov ebx, dword ptr [LEX+839936]
mov dword ptr [ebx+16548], eax
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [LEX+839936]
mov ecx, dword ptr [eax+16548]
mov dword ptr [ebx+16552], ecx
mov ecx, dword ptr [LEX+839936]
mov ebx, dword ptr [ecx+16548]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], 0
.Lt_0076:
mov ebx, dword ptr [ebp-4]
imul ebx, 4136
mov ecx, dword ptr [LEX+839936]
add ecx, ebx
lea ebx, [ecx+4136]
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+4132], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebx+4132]
mov dword ptr [ebp-8], ecx
.Lt_0074:
inc dword ptr [ebp-4]
.Lt_0073:
cmp dword ptr [ebp-4], 2
jle .Lt_0076
.Lt_0075:
mov ecx, dword ptr [LEX+839936]
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+16548]
mov dword ptr [ebx+4132], eax
mov dword ptr [ebp-4], 0
.Lt_007A:
mov eax, dword ptr [ebp-4]
imul eax, 4136
mov ebx, dword ptr [LEX+839936]
add ebx, eax
mov dword ptr [ebx], -1
.Lt_0078:
inc dword ptr [ebp-4]
.Lt_0077:
cmp dword ptr [ebp-4], 3
jle .Lt_007A
.Lt_0079:
mov ebx, dword ptr [LEX+839936]
mov dword ptr [ebx+16556], 4294967295
mov ebx, dword ptr [LEX+839936]
mov dword ptr [ebx+16560], 4294967295
cmp dword ptr [ebp+12], 0
je .Lt_007C
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [ebx-32844]
mov dword ptr [eax+16564], ecx
mov ecx, dword ptr [LEX+839936]
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [ecx-32836]
mov dword ptr [eax+16572], ebx
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [ebx-32832]
mov dword ptr [eax+16576], ecx
jmp .Lt_007B
.Lt_007C:
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+16564], 1
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+16572], 0
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+16576], 0
.Lt_007B:
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+16568], -1
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+16604], 0
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+16584], 0
cmp dword ptr [ENV+552], 0
jne .Lt_007E
cmp dword ptr [ebp+12], 0
je .Lt_007F
mov ecx, dword ptr [LEX+839936]
lea eax, [ecx+16612]
mov dword ptr [ebp-12], eax
jmp .Lt_0087
.Lt_007F:
mov dword ptr [ebp-12], 0
.Lt_0087:
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax+16608], ecx
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+16588], 0
sub esp, 8
push 0
mov ecx, dword ptr [LEX+839936]
lea eax, [ecx+16592]
push eax
call DZSTRALLOCATE
add esp, 16
jmp .Lt_007D
.Lt_007E:
mov eax, dword ptr [LEX+839936]
lea ecx, [eax+16612]
mov eax, dword ptr [LEX+839936]
mov dword ptr [eax+16608], ecx
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+16588], 0
sub esp, 8
push 0
mov ecx, dword ptr [LEX+839936]
lea eax, [ecx+16592]
push eax
call DWSTRALLOCATE
add esp, 16
.Lt_007D:
cmp dword ptr [ebp+12], 0
je .Lt_0082
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [LEX+839936]
mov ebx, dword ptr [eax-24]
mov dword ptr [ecx+49384], ebx
mov ebx, dword ptr [LEX+839936]
mov ecx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx-20]
mov dword ptr [ecx+49388], eax
jmp .Lt_0081
.Lt_0082:
mov eax, dword ptr [LEX+839936]
mov dword ptr [eax+49384], 0
mov eax, dword ptr [LEX+839936]
mov dword ptr [eax+49388], 0
.Lt_0081:
mov eax, dword ptr [ENV+876]
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
je .Lt_0084
sub esp, 8
push 0
mov ecx, dword ptr [LEX+839936]
lea eax, [ecx+49392]
push eax
call DZSTRALLOCATE
add esp, 16
mov dword ptr [LEX+839940], 0
.Lt_0084:
.Lt_0083:
mov eax, dword ptr [LEX+839936]
mov dword ptr [eax+49404], 0
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
je .Lt_0086
call PPINIT
.Lt_0086:
.Lt_0085:
.Lt_0070:
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXINIT, .-LEXINIT
.balign 16

.globl LEXEND
LEXEND:
.type LEXEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_008E:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset PPONLY_LN
call fb_StrAssign
add esp, 32
call PPEND
.Lt_008F:
mov esp, ebp
pop ebp
ret
.size LEXEND, .-LEXEND
.balign 16

.globl LEXEATCHAR
LEXEATCHAR:
.type LEXEATCHAR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00C5:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16560], 4294967295
jne .Lt_00C8
call HSKIPCHAR
mov eax, dword ptr [LEX+839936]
mov dword ptr [eax+16556], 4294967295
jmp .Lt_00C7
.Lt_00C8:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [LEX+839936]
mov ecx, dword ptr [eax+16560]
mov dword ptr [ebx+16556], ecx
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+16560], 4294967295
.Lt_00C7:
.Lt_00C6:
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXEATCHAR, .-LEXEATCHAR
.balign 16

.globl LEXCURRENTCHAR
LEXCURRENTCHAR:
.type LEXCURRENTCHAR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D4:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16556], 4294967295
jne .Lt_00D7
call HREADCHAR
mov ebx, dword ptr [LEX+839936]
mov dword ptr [ebx+16556], eax
.Lt_00D7:
.Lt_00D6:
cmp dword ptr [ebp+8], 0
je .Lt_00D9
.Lt_00DA:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16556], 9
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16556], 32
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00DB
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+49404], -1
call LEXEATCHAR
call HREADCHAR
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+16556], eax
jmp .Lt_00DA
.Lt_00DB:
.Lt_00D9:
.Lt_00D8:
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [eax+16556]
mov dword ptr [ebp-4], ecx
.Lt_00D5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXCURRENTCHAR, .-LEXCURRENTCHAR
.balign 16

.globl LEXGETLOOKAHEADCHAR
LEXGETLOOKAHEADCHAR:
.type LEXGETLOOKAHEADCHAR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DE:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16560], 4294967295
jne .Lt_00E1
call HSKIPCHAR
call HREADCHAR
mov ebx, dword ptr [LEX+839936]
mov dword ptr [ebx+16560], eax
.Lt_00E1:
.Lt_00E0:
cmp dword ptr [ebp+8], 0
je .Lt_00E3
.Lt_00E4:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16560], 9
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16560], 32
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00E5
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+49404], -1
call HSKIPCHAR
call HREADCHAR
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+16560], eax
jmp .Lt_00E4
.Lt_00E5:
.Lt_00E3:
.Lt_00E2:
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [eax+16560]
mov dword ptr [ebp-4], ecx
.Lt_00DF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXGETLOOKAHEADCHAR, .-LEXGETLOOKAHEADCHAR
.balign 16

.globl LEXNEXTTOKEN
LEXNEXTTOKEN:
.type LEXNEXTTOKEN, @function
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.Lt_02C4:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+49404]
mov dword ptr [ebx+4128], ecx
mov ecx, dword ptr [LEX+839936]
mov dword ptr [ecx+49404], 0
.Lt_02C6:
mov ecx, dword ptr [ebp+8]
mov byte ptr [ecx+12], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+4112], 0
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+4116], 0
mov dword ptr [ebp-8], 0
.Lt_02C7:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-16], eax
jmp .Lt_02CB
.Lt_02CD:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 256
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4124], 0
jmp .Lt_02C5
jmp .Lt_02CA
.Lt_02CE:
cmp dword ptr [ebp-8], 0
je .Lt_02D0
call LEXEATCHAR
jmp .Lt_02C9
.Lt_02D0:
.Lt_02CF:
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .Lt_02D2
sub esp, 12
push 0
call LEXGETLOOKAHEADCHAR
add esp, 16
mov dword ptr [ebp-20], eax
jmp .Lt_02D4
.Lt_02D6:
jmp .Lt_02C8
jmp .Lt_02D3
.Lt_02D7:
call LEXEATCHAR
mov dword ptr [ebp-8], -1
jmp .Lt_02C9
jmp .Lt_02D3
.Lt_02D4:
mov eax, dword ptr [ebp-20]
add eax, 4294967248
cmp eax, 74
ja .Lt_02D7
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_02D8+eax*4-192]
.LT_02D8:
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D6
.int .Lt_02D7
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.int .Lt_02D6
.Lt_02D3:
jmp .Lt_02D1
.Lt_02D2:
jmp .Lt_02C8
.Lt_02D1:
jmp .Lt_02CA
.Lt_02D9:
call LEXEATCHAR
cmp dword ptr [ebp-4], 13
jne .Lt_02DB
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
cmp eax, 10
jne .Lt_02DD
call LEXEATCHAR
.Lt_02DD:
.Lt_02DC:
.Lt_02DB:
.Lt_02DA:
cmp dword ptr [ebp-8], 0
jne .Lt_02DF
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 257
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], -2147483648
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4124], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4112], 1
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+12], 10
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+13], 0
jmp .Lt_02C5
jmp .Lt_02DE
.Lt_02DF:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4128], -1
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16584], 0
jne .Lt_02E1
mov eax, dword ptr [LEX+839936]
inc dword ptr [eax+16564]
.Lt_02E1:
.Lt_02E0:
mov dword ptr [ebp-8], 0
jmp .Lt_02C9
.Lt_02DE:
jmp .Lt_02CA
.Lt_02E2:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4128], -1
cmp dword ptr [ebp-8], 0
jne .Lt_02E4
mov eax, dword ptr [ebp+12]
and eax, 4
test eax, eax
je .Lt_02E6
jmp .Lt_02C8
.Lt_02E6:
.Lt_02E5:
.Lt_02E4:
.Lt_02E3:
call LEXEATCHAR
jmp .Lt_02CA
.Lt_02E7:
cmp dword ptr [ebp-8], 0
jne .Lt_02E9
jmp .Lt_02C8
.Lt_02E9:
.Lt_02E8:
call LEXEATCHAR
jmp .Lt_02CA
.Lt_02CB:
cmp dword ptr [ebp-16], 95
ja .Lt_02E7
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_02EA+eax*4]
.LT_02EA:
.int .Lt_02CD
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E2
.int .Lt_02D9
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02D9
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E2
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02E7
.int .Lt_02CE
.Lt_02CA:
.Lt_02C9:
jmp .Lt_02C7
.Lt_02C8:
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [LEX+839936]
mov ebx, dword ptr [LEX+839936]
lea esi, [ebx+16612]
mov ebx, dword ptr [ecx+16608]
sub ebx, esi
add ebx, dword ptr [eax+49384]
dec ebx
mov eax, dword ptr [LEX+839936]
mov dword ptr [eax+49388], ebx
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-16], ebx
jmp .Lt_02EC
.Lt_02EE:
mov ebx, dword ptr [ebp+12]
and ebx, 9
test ebx, ebx
jne .Lt_02F0
sub esp, 12
push -1
call LEXGETLOOKAHEADCHAR
add esp, 16
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
je .Lt_02F2
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HREADNUMBER
add esp, 16
jmp .Lt_02EB
.Lt_02F2:
.Lt_02F1:
.Lt_02F0:
.Lt_02EF:
jmp .Lt_02F3
jmp .Lt_02EB
.Lt_02F4:
sub esp, 12
push 0
call LEXGETLOOKAHEADCHAR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 72
je .Lt_02F8
.Lt_02F9:
cmp dword ptr [ebp-20], 104
je .Lt_02F8
.Lt_02FA:
cmp dword ptr [ebp-20], 79
je .Lt_02F8
.Lt_02FB:
cmp dword ptr [ebp-20], 111
je .Lt_02F8
.Lt_02FC:
cmp dword ptr [ebp-20], 66
je .Lt_02F8
.Lt_02FD:
cmp dword ptr [ebp-20], 98
jne .Lt_02F7
.Lt_02F8:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HREADNUMBER
add esp, 16
jmp .Lt_02F5
.Lt_02F7:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 38
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+8]
mov esi, dword ptr [eax]
mov dword ptr [ebx+8], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+4112], 1
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], 38
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+13], 0
call LEXEATCHAR
.Lt_02FE:
.Lt_02F5:
jmp .Lt_02EB
.Lt_02FF:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HREADNUMBER
add esp, 16
jmp .Lt_02EB
.Lt_0300:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call READID
add esp, 16
not eax
test eax, eax
je .Lt_0302
jmp .Lt_02C6
.Lt_0302:
.Lt_0301:
jmp .Lt_02EB
.Lt_0303:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 4
cmp dword ptr [ENV+940], 0
je .Lt_0304
mov dword ptr [ebp-20], 263
jmp .Lt_0345
.Lt_0304:
mov dword ptr [ebp-20], 262
.Lt_0345:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+8], -2147483648
cmp dword ptr [ENV+552], 0
jne .Lt_0307
sub esp, 4
push dword ptr [ebp+12]
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
push eax
push dword ptr [ebp+8]
call HREADSTRING
add esp, 16
jmp .Lt_0306
.Lt_0307:
sub esp, 4
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea esi, [eax+12]
push esi
push dword ptr [ebp+8]
call HREADWSTR
add esp, 16
.Lt_0306:
jmp .Lt_02EB
.Lt_0308:
sub esp, 12
push 0
call LEXGETLOOKAHEADCHAR
add esp, 16
cmp eax, 34
je .Lt_030A
jmp .Lt_02F3
.Lt_030A:
.Lt_0309:
call LEXEATCHAR
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 4
cmp dword ptr [ebp-4], 33
jne .Lt_030B
mov dword ptr [ebp-20], 263
jmp .Lt_0346
.Lt_030B:
mov dword ptr [ebp-20], 264
.Lt_0346:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-20]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+8], -2147483648
cmp dword ptr [ENV+552], 0
jne .Lt_030E
mov esi, dword ptr [ebp+12]
and esi, 16
test esi, esi
jne .Lt_0310
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
mov dword ptr [ebp-24], eax
jmp .Lt_030F
.Lt_0310:
mov al, byte ptr [ebp-4]
mov esi, dword ptr [ebp+8]
mov byte ptr [esi+12], al
mov eax, dword ptr [ebp+8]
lea esi, [eax+13]
mov dword ptr [ebp-24], esi
.Lt_030F:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call HREADSTRING
add esp, 16
jmp .Lt_030D
.Lt_030E:
mov esi, dword ptr [ebp+12]
and esi, 16
test esi, esi
jne .Lt_0312
mov esi, dword ptr [ebp+8]
lea eax, [esi+12]
mov dword ptr [ebp-24], eax
jmp .Lt_0311
.Lt_0312:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov dword ptr [eax+12], esi
mov esi, dword ptr [ebp+8]
lea eax, [esi+16]
mov dword ptr [ebp-24], eax
.Lt_0311:
sub esp, 4
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call HREADWSTR
add esp, 16
.Lt_030D:
jmp .Lt_02EB
.Lt_0313:
.Lt_02F3:
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebp-4]
mov dword ptr [eax], esi
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [esi]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4124], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4112], 1
mov bl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov byte ptr [eax+12], bl
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx+13], 0
call LEXEATCHAR
mov ebx, dword ptr [ebp-4]
mov dword ptr [ebp-20], ebx
jmp .Lt_0315
.Lt_0317:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], 5
cmp dword ptr [ebp-4], 60
jne .Lt_0319
.Lt_031A:
sub esp, 12
push -1
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 61
jne .Lt_031D
.Lt_031E:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 61
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+4112]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 303
call LEXEATCHAR
jmp .Lt_031B
.Lt_031D:
cmp dword ptr [ebp-24], 62
jne .Lt_031F
.Lt_0320:
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+4112]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 302
call LEXEATCHAR
jmp .Lt_031B
.Lt_031F:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 301
.Lt_0321:
.Lt_031B:
jmp .Lt_0318
.Lt_0319:
cmp dword ptr [ebp-4], 62
jne .Lt_0322
.Lt_0323:
mov eax, dword ptr [PARSER+148]
and eax, 512
test eax, eax
jne .Lt_0324
sub esp, 12
push -1
call LEXCURRENTCHAR
add esp, 16
cmp eax, 61
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
jmp .Lt_0347
.Lt_0324:
mov dword ptr [ebp-24], 0
.Lt_0347:
cmp dword ptr [ebp-24], 0
je .Lt_0327
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax], 61
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx+1], 0
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+4112]
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 304
call LEXEATCHAR
jmp .Lt_0326
.Lt_0327:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx], 300
.Lt_0326:
jmp .Lt_0318
.Lt_0322:
cmp dword ptr [ebp-4], 61
jne .Lt_0328
.Lt_0329:
sub esp, 12
push -1
call LEXCURRENTCHAR
add esp, 16
cmp eax, 62
jne .Lt_032B
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+4112]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 305
call LEXEATCHAR
jmp .Lt_032A
.Lt_032B:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 299
.Lt_032A:
.Lt_0328:
.Lt_0318:
jmp .Lt_0314
.Lt_032C:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
jmp .Lt_0314
.Lt_032D:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
sub esp, 12
push -1
call LEXCURRENTCHAR
add esp, 16
cmp eax, 62
jne .Lt_032F
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 62
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax+1], 0
mov eax, dword ptr [ebp+8]
inc dword ptr [eax+4112]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 398
call LEXEATCHAR
.Lt_032F:
.Lt_032E:
jmp .Lt_0314
.Lt_0330:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 5
mov eax, dword ptr [ebp+12]
and eax, 512
test eax, eax
jne .Lt_0332
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
cmp eax, 39
jne .Lt_0334
call HMULTILINECOMMENT
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4128], -1
jmp .Lt_02C6
.Lt_0334:
.Lt_0333:
.Lt_0332:
.Lt_0331:
jmp .Lt_0314
.Lt_0335:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 259
jmp .Lt_0314
.Lt_0336:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 258
jmp .Lt_0314
.Lt_0337:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
jmp .Lt_0314
.Lt_0338:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 6
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 32
.Lt_0339:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_033D
.Lt_033F:
call LEXEATCHAR
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
mov eax, dword ptr [ebp+8]
add ebx, dword ptr [eax+4112]
mov byte ptr [ebx], 32
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+4112]
jmp .Lt_033C
.Lt_0340:
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
mov ebx, dword ptr [ebp+8]
add eax, dword ptr [ebx+4112]
mov byte ptr [eax], 0
jmp .Lt_033A
jmp .Lt_033C
.Lt_033D:
mov eax, dword ptr [ebp-24]
add eax, 4294967287
cmp eax, 23
ja .Lt_0340
mov eax, dword ptr [ebp-24]
jmp dword ptr [.LT_0341+eax*4-36]
.LT_0341:
.int .Lt_033F
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_0340
.int .Lt_033F
.Lt_033C:
.Lt_033B:
jmp .Lt_0339
.Lt_033A:
jmp .Lt_0314
.Lt_0342:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 7
jmp .Lt_0314
.Lt_0315:
mov eax, dword ptr [ebp-20]
add eax, 4294967287
cmp eax, 116
ja .Lt_0342
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_0343+eax*4-36]
.LT_0343:
.int .Lt_0338
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0338
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0335
.int .Lt_0337
.int .Lt_0337
.int .Lt_032C
.int .Lt_032C
.int .Lt_0337
.int .Lt_032D
.int .Lt_0337
.int .Lt_0330
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0336
.int .Lt_0337
.int .Lt_0317
.int .Lt_0317
.int .Lt_0317
.int .Lt_0342
.int .Lt_032C
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0337
.int .Lt_032C
.int .Lt_0337
.int .Lt_032C
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0342
.int .Lt_0337
.int .Lt_0342
.int .Lt_0337
.Lt_0314:
jmp .Lt_02EB
.Lt_02EC:
mov eax, dword ptr [ebp-16]
add eax, 4294967263
cmp eax, 89
ja .Lt_0313
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_0344+eax*4-132]
.LT_0344:
.int .Lt_0308
.int .Lt_0303
.int .Lt_0313
.int .Lt_0308
.int .Lt_0313
.int .Lt_02F4
.int .Lt_0313
.int .Lt_0313
.int .Lt_0313
.int .Lt_0313
.int .Lt_0313
.int .Lt_0313
.int .Lt_0313
.int .Lt_02EE
.int .Lt_0313
.int .Lt_02FF
.int .Lt_02FF
.int .Lt_02FF
.int .Lt_02FF
.int .Lt_02FF
.int .Lt_02FF
.int .Lt_02FF
.int .Lt_02FF
.int .Lt_02FF
.int .Lt_02FF
.int .Lt_0313
.int .Lt_0313
.int .Lt_0313
.int .Lt_0313
.int .Lt_0313
.int .Lt_0313
.int .Lt_0313
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
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0313
.int .Lt_0313
.int .Lt_0313
.int .Lt_0313
.int .Lt_0300
.int .Lt_0313
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
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.int .Lt_0300
.Lt_02EB:
.Lt_02C5:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXNEXTTOKEN, .-LEXNEXTTOKEN
.balign 16

.globl LEXGETTOKEN
LEXGETTOKEN:
.type LEXGETTOKEN, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0366:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx], -1
jne .Lt_0369
sub esp, 8
push dword ptr [ebp+8]
mov ebx, dword ptr [LEX+839936]
push dword ptr [ebx+16548]
call LEXNEXTTOKEN
add esp, 16
call PPCHECK
.Lt_0369:
.Lt_0368:
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
.Lt_0367:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXGETTOKEN, .-LEXGETTOKEN
.balign 16

.globl LEXGETCLASS
LEXGETCLASS:
.type LEXGETCLASS, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_036A:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx], -1
jne .Lt_036D
sub esp, 8
push dword ptr [ebp+8]
mov ebx, dword ptr [LEX+839936]
push dword ptr [ebx+16548]
call LEXNEXTTOKEN
add esp, 16
call PPCHECK
.Lt_036D:
.Lt_036C:
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-4], ebx
.Lt_036B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXGETCLASS, .-LEXGETCLASS
.balign 16

.globl LEXGETLOOKAHEAD
LEXGETLOOKAHEAD:
.type LEXGETLOOKAHEAD, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_036E:
cmp dword ptr [ebp+8], 3
jle .Lt_0371
jmp .Lt_036F
.Lt_0371:
.Lt_0370:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16544]
cmp dword ptr [ebp+8], ebx
jle .Lt_0373
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+16544], eax
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16552]
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [ebx+4132]
mov dword ptr [eax+16552], ecx
.Lt_0373:
.Lt_0372:
mov ecx, dword ptr [LEX+839936]
mov eax, dword ptr [ecx+16552]
cmp dword ptr [eax], -1
jne .Lt_0375
sub esp, 8
push dword ptr [ebp+12]
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16552]
call LEXNEXTTOKEN
add esp, 16
.Lt_0375:
.Lt_0374:
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [eax+16552]
mov eax, dword ptr [ecx]
mov dword ptr [ebp-4], eax
.Lt_036F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXGETLOOKAHEAD, .-LEXGETLOOKAHEAD
.balign 16

.globl LEXGETLOOKAHEADCLASS
LEXGETLOOKAHEADCLASS:
.type LEXGETLOOKAHEADCLASS, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0376:
cmp dword ptr [ebp+8], 3
jle .Lt_0379
jmp .Lt_0377
.Lt_0379:
.Lt_0378:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16544]
cmp dword ptr [ebp+8], ebx
jle .Lt_037B
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+16544], eax
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16552]
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [ebx+4132]
mov dword ptr [eax+16552], ecx
.Lt_037B:
.Lt_037A:
mov ecx, dword ptr [LEX+839936]
mov eax, dword ptr [ecx+16552]
cmp dword ptr [eax], -1
jne .Lt_037D
sub esp, 8
push dword ptr [ebp+12]
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16552]
call LEXNEXTTOKEN
add esp, 16
.Lt_037D:
.Lt_037C:
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [eax+16552]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-4], eax
.Lt_0377:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXGETLOOKAHEADCLASS, .-LEXGETLOOKAHEADCLASS
.balign 16

.globl LEXPPONLYEMITTOKEN
LEXPPONLYEMITTOKEN:
.type LEXPPONLYEMITTOKEN, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_039D:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 259
je .Lt_03A2
.Lt_03A3:
cmp dword ptr [ebp-4], 260
jne .Lt_03A1
.Lt_03A2:
jmp .Lt_039E
jmp .Lt_039F
.Lt_03A1:
cmp dword ptr [ebp-4], 256
je .Lt_03A5
.Lt_03A6:
cmp dword ptr [ebp-4], 257
jne .Lt_03A4
.Lt_03A5:
sub esp, 8
push -1
push offset PPONLY_LN
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_03A8
mov eax, dword ptr [ENV+836]
mov dword ptr [ebp-8], eax
sub esp, 4
push 1
push offset PPONLY_LN
push dword ptr [ebp-8]
call fb_PrintString
add esp, 16
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset PPONLY_LN
call fb_StrAssign
add esp, 32
jmp .Lt_03A7
.Lt_03A8:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 257
jne .Lt_03AA
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16568], 257
jne .Lt_03AC
mov eax, dword ptr [ENV+836]
mov dword ptr [ebp-8], eax
sub esp, 4
push 1
push 0
push offset Lt_0000
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-8]
call fb_PrintString
add esp, 16
.Lt_03AC:
.Lt_03AB:
.Lt_03AA:
.Lt_03A7:
jmp .Lt_039E
.Lt_03A4:
.Lt_039F:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4128], 0
je .Lt_03AF
sub esp, 12
push 0
push 2
push offset Lt_03B0
push -1
push offset PPONLY_LN
call fb_StrConcatAssign
add esp, 32
.Lt_03AF:
.Lt_03AE:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 262
je .Lt_03B4
.Lt_03B5:
cmp dword ptr [ebp-4], 263
je .Lt_03B4
.Lt_03B6:
cmp dword ptr [ebp-4], 264
jne .Lt_03B3
.Lt_03B4:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
call LEXGETTOKEN
add esp, 4
push eax
call LEXGETSTRLITTEXT
add esp, 12
push eax
push -1
push offset PPONLY_LN
call fb_StrConcatAssign
add esp, 32
jmp .Lt_03B1
.Lt_03B3:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
call LEXGETTEXT
push eax
push -1
push offset PPONLY_LN
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset PPONLY_LN
call fb_StrAssign
add esp, 32
.Lt_03B7:
.Lt_03B1:
.Lt_039E:
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXPPONLYEMITTOKEN, .-LEXPPONLYEMITTOKEN
.balign 16

.globl LEXPPONLYEMITTEXT
LEXPPONLYEMITTEXT:
.type LEXPPONLYEMITTEXT, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_03B9:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
push dword ptr [ebp+8]
push -1
push offset PPONLY_LN
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset PPONLY_LN
call fb_StrAssign
add esp, 32
.Lt_03BA:
mov esp, ebp
pop ebp
ret
.size LEXPPONLYEMITTEXT, .-LEXPPONLYEMITTEXT
.balign 16

.globl LEXSKIPTOKEN
LEXSKIPTOKEN:
.type LEXSKIPTOKEN, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_03BC:
sub esp, 12
push dword ptr [ebp+8]
call LEXCHECKTOKEN
add esp, 16
and dword ptr [ebp+8], -14337
cmp dword ptr [ENV+836], 0
jle .Lt_03BF
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16572], 0
jne .Lt_03C1
call LEXPPONLYEMITTOKEN
.Lt_03C1:
.Lt_03C0:
.Lt_03BF:
.Lt_03BE:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 257
jne .Lt_03C4
.Lt_03C5:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16584], 0
jne .Lt_03C7
mov eax, dword ptr [LEX+839936]
inc dword ptr [eax+16564]
.Lt_03C7:
.Lt_03C6:
.Lt_03C4:
.Lt_03C2:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [LEX+839936]
mov ecx, dword ptr [ebx]
mov dword ptr [eax+16568], ecx
mov ecx, dword ptr [LEX+839936]
cmp dword ptr [ecx+16544], 0
jne .Lt_03C9
sub esp, 8
push dword ptr [ebp+8]
mov ecx, dword ptr [LEX+839936]
push dword ptr [ecx+16548]
call LEXNEXTTOKEN
add esp, 16
jmp .Lt_03C8
.Lt_03C9:
call HMOVEKDOWN
.Lt_03C8:
call PPCHECK
.Lt_03BD:
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXSKIPTOKEN, .-LEXSKIPTOKEN
.balign 16

.globl LEXEATTOKEN
LEXEATTOKEN:
.type LEXEATTOKEN, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_03CA:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], 7
je .Lt_03CD
sub esp, 12
push 0
push 1025
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
lea ebx, [eax+12]
push ebx
push 0
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
jmp .Lt_03CC
.Lt_03CD:
sub esp, 12
push 0
push -1
sub esp, 8
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
lea ebx, [eax+12]
push ebx
call fb_WstrToStr
add esp, 12
push eax
push 0
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_03CC:
sub esp, 12
push dword ptr [ebp+12]
call LEXSKIPTOKEN
add esp, 16
.Lt_03CB:
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXEATTOKEN, .-LEXEATTOKEN
.balign 16

.globl LEXGETTEXT
LEXGETTEXT:
.type LEXGETTEXT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_03CE:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], 7
je .Lt_03D1
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
lea ebx, [eax+12]
mov dword ptr [ebp-4], ebx
jmp .Lt_03D0
.Lt_03D1:
sub esp, 12
push 0
push -1
sub esp, 8
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
lea ebx, [eax+12]
push ebx
call fb_WstrToStr
add esp, 12
push eax
push 1025
push offset Lt_03D2
call fb_StrAssign
add esp, 32
mov eax, offset Lt_03D2
mov dword ptr [ebp-4], eax
.Lt_03D0:
.Lt_03CF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXGETTEXT, .-LEXGETTEXT

.section .bss
.balign 4
	.lcomm	Lt_03D2,1025

.section .text
.balign 16

.globl LEXREADLINE
LEXREADLINE:
.type LEXREADLINE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_03D3:
cmp dword ptr [ebp+16], 0
jne .Lt_03D6
sub esp, 12
push 0
push 1
push offset Lt_0000
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.Lt_03D6:
.Lt_03D5:
.Lt_03D7:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16544], 0
jle .Lt_03D8
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 256
je .Lt_03DC
.Lt_03DD:
cmp dword ptr [ebp-4], 257
je .Lt_03DC
.Lt_03DE:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-4], eax
jne .Lt_03DB
.Lt_03DC:
jmp .Lt_03D4
jmp .Lt_03D9
.Lt_03DB:
cmp dword ptr [ebp+16], 0
jne .Lt_03E1
sub esp, 12
push 0
push -1
sub esp, 8
push 1025
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.Lt_03E1:
.Lt_03E0:
.Lt_03DF:
.Lt_03D9:
call HMOVEKDOWN
jmp .Lt_03D7
.Lt_03D8:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 256
je .Lt_03E6
.Lt_03E7:
cmp dword ptr [ebp-4], 257
je .Lt_03E6
.Lt_03E8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp-4], eax
jne .Lt_03E5
.Lt_03E6:
jmp .Lt_03D4
jmp .Lt_03E3
.Lt_03E5:
cmp dword ptr [ebp+16], 0
jne .Lt_03EB
sub esp, 12
push 0
push -1
sub esp, 8
push 1025
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
lea eax, [ebx+12]
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.Lt_03EB:
.Lt_03EA:
.Lt_03E9:
.Lt_03E3:
.Lt_03ED:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [Lt_0400], eax
mov eax, dword ptr [Lt_0400]
mov dword ptr [ebp-4], eax
jmp .Lt_03F1
.Lt_03F3:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx], 256
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4], 6
jmp .Lt_03D4
jmp .Lt_03F0
.Lt_03F4:
call LEXEATCHAR
cmp dword ptr [Lt_0400], 13
jne .Lt_03F6
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
cmp eax, 10
jne .Lt_03F8
call LEXEATCHAR
.Lt_03F8:
.Lt_03F7:
.Lt_03F6:
.Lt_03F5:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx], 257
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4], 6
jmp .Lt_03D4
jmp .Lt_03F0
.Lt_03F9:
mov eax, dword ptr [ebp+8]
cmp dword ptr [Lt_0400], eax
jne .Lt_03FB
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx], eax
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+4], 6
jmp .Lt_03D4
.Lt_03FB:
.Lt_03FA:
jmp .Lt_03F0
.Lt_03F1:
cmp dword ptr [ebp-4], 13
ja .Lt_03F9
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.LT_03FC+ebx*4]
.LT_03FC:
.int .Lt_03F3
.int .Lt_03F9
.int .Lt_03F9
.int .Lt_03F9
.int .Lt_03F9
.int .Lt_03F9
.int .Lt_03F9
.int .Lt_03F9
.int .Lt_03F9
.int .Lt_03F9
.int .Lt_03F4
.int .Lt_03F9
.int .Lt_03F9
.int .Lt_03F4
.Lt_03F0:
call LEXEATCHAR
cmp dword ptr [ebp+16], 0
jne .Lt_03FE
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
push dword ptr [Lt_0400]
push 1
call fb_CHR
add esp, 16
push eax
push 0
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push 0
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.Lt_03FE:
.Lt_03FD:
.Lt_03EF:
jmp .Lt_03ED
.Lt_03EE:
.Lt_03D4:
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXREADLINE, .-LEXREADLINE

.section .bss
.balign 4
	.lcomm	Lt_0400,4

.section .text
.balign 16

.globl LEXSKIPLINE
LEXSKIPLINE:
.type LEXSKIPLINE, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0401:
sub esp, 4
push -1
push 0
push 4294967295
call LEXREADLINE
add esp, 16
.Lt_0402:
mov esp, ebp
pop ebp
ret
.size LEXSKIPLINE, .-LEXSKIPLINE
.balign 16

.globl LEXPEEKCURRENTLINE
LEXPEEKCURRENTLINE:
.type LEXPEEKCURRENTLINE, @function
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0403:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-48], 0
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
cmp dword ptr [ENV+552], 0
je .Lt_0406
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0404
.Lt_0406:
.Lt_0405:
sub esp, 12
push dword ptr [ENV+276]
call fb_FileTell
add esp, 16
mov ebx, eax
mov dword ptr [ebp-32], ebx
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+49388]
add eax, -512
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-36], 512
cmp dword ptr [ebp-28], 0
jge .Lt_0408
mov eax, dword ptr [ebp-28]
add dword ptr [ebp-36], eax
mov dword ptr [ebp-28], 0
.Lt_0408:
.Lt_0407:
push 1025
push offset Lt_0442
mov eax, dword ptr [ebp-28]
inc eax
push eax
push dword ptr [ENV+276]
call fb_FileGetStr
add esp, 16
test eax, eax
je .Lt_0409
push 0
push 0
push offset Lt_040A
push 2369
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0409:
sub esp, 8
push dword ptr [ebp-32]
push dword ptr [ENV+276]
call fb_FileSeek
add esp, 16
test eax, eax
je .Lt_040B
push 0
push 0
push offset Lt_040A
push 2370
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_040B:
mov eax, offset Lt_0442
add eax, dword ptr [ebp-36]
mov dword ptr [ebp-44], eax
mov dword ptr [ebp-40], 0
cmp dword ptr [ebp-36], 0
jle .Lt_040D
dec dword ptr [ebp-44]
.Lt_040E:
mov eax, dword ptr [ebp-44]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-48], ebx
cmp dword ptr [ebp-48], 13
je .Lt_0413
.Lt_0414:
cmp dword ptr [ebp-48], 10
jne .Lt_0412
.Lt_0413:
jmp .Lt_040F
.Lt_0412:
.Lt_0411:
cmp dword ptr [ebp-36], 0
jg .Lt_0416
jmp .Lt_040F
.Lt_0416:
.Lt_0415:
inc dword ptr [ebp-40]
dec dword ptr [ebp-44]
dec dword ptr [ebp-36]
.Lt_0410:
jmp .Lt_040E
.Lt_040F:
inc dword ptr [ebp-44]
.Lt_040D:
.Lt_040C:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0417:
mov ebx, dword ptr [ebp-44]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
je .Lt_041C
.Lt_041D:
cmp dword ptr [ebp-48], 13
je .Lt_041C
.Lt_041E:
cmp dword ptr [ebp-48], 10
jne .Lt_041B
.Lt_041C:
jmp .Lt_0418
.Lt_041B:
.Lt_041A:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-48]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp-40], 0
jle .Lt_0420
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
cmp dword ptr [ebp-48], 9
jne .Lt_0421
mov dword ptr [ebp-64], 9
jmp .Lt_0441
.Lt_0421:
mov dword ptr [ebp-64], 32
.Lt_0441:
push dword ptr [ebp-64]
push 1
call fb_CHR
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
dec dword ptr [ebp-40]
.Lt_0420:
.Lt_041F:
inc dword ptr [ebp-44]
.Lt_0419:
jmp .Lt_0417
.Lt_0418:
cmp dword ptr [ebp+12], 0
je .Lt_0425
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-64], 0
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
dec eax
mov dword ptr [ebp-68], eax
jmp .Lt_0427
.Lt_042A:
mov eax, dword ptr [ebp-24]
add eax, dword ptr [ebp-64]
mov bl, byte ptr [eax]
mov byte ptr [ebp-72], bl
movzx ebx, byte ptr [ebp-72]
cmp ebx, 9
je .Lt_042E
.Lt_042F:
movzx ebx, byte ptr [ebp-72]
cmp ebx, 32
jne .Lt_042D
.Lt_042E:
jmp .Lt_042B
.Lt_042D:
jmp .Lt_0429
.Lt_0430:
.Lt_042B:
.Lt_0428:
inc dword ptr [ebp-64]
.Lt_0427:
mov ebx, dword ptr [ebp-68]
cmp dword ptr [ebp-64], ebx
jle .Lt_042A
.Lt_0429:
sub esp, 8
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrLen
add esp, 16
cmp dword ptr [ebp-64], eax
jge .Lt_0432
sub esp, 12
push 0
push -1
push -1
mov eax, dword ptr [ebp-64]
inc eax
push eax
lea eax, [ebp-24]
push eax
call fb_StrMid
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0431
.Lt_0432:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_0431:
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
dec eax
mov dword ptr [ebp-64], eax
jmp .Lt_0433
.Lt_0436:
mov eax, dword ptr [ebp-24]
add eax, dword ptr [ebp-64]
mov bl, byte ptr [eax]
mov byte ptr [ebp-68], bl
movzx ebx, byte ptr [ebp-68]
cmp ebx, 9
je .Lt_043A
.Lt_043B:
movzx ebx, byte ptr [ebp-68]
cmp ebx, 32
jne .Lt_0439
.Lt_043A:
jmp .Lt_0437
.Lt_0439:
jmp .Lt_0435
.Lt_043C:
.Lt_0437:
.Lt_0434:
dec dword ptr [ebp-64]
.Lt_0433:
cmp dword ptr [ebp-64], 0
jge .Lt_0436
.Lt_0435:
cmp dword ptr [ebp-64], 0
jle .Lt_043E
sub esp, 12
push 0
push -1
sub esp, 4
mov ebx, dword ptr [ebp-64]
inc ebx
push ebx
lea ebx, [ebp-24]
push ebx
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_043E:
.Lt_043D:
.Lt_0425:
.Lt_0424:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_043F
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_0404:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXPEEKCURRENTLINE, .-LEXPEEKCURRENTLINE

.section .bss
.balign 4
	.lcomm	Lt_0442,1025

.section .text
.balign 16

.globl LEXCHECKTOKEN
LEXCHECKTOKEN:
.type LEXCHECKTOKEN, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_0443:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 0
je .Lt_0446
mov ebx, dword ptr [ebp+8]
and ebx, 14336
je .Lt_0448
mov ebx, dword ptr [ebp+8]
and ebx, 2048
test ebx, ebx
je .Lt_044A
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_044E
push -1
sub esp, 4
push -1
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
cmp dword ptr [eax+4124], 0
je .Lt_044C
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4124]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_0477
.Lt_044C:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.Lt_0477:
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_044B
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4124], 0
jmp .Lt_0449
.Lt_044A:
mov eax, dword ptr [ebp+8]
and eax, 4096
test eax, eax
je .Lt_0453
mov eax, dword ptr [ENV+888]
and eax, 8388608
test eax, eax
jne .Lt_0455
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_044E
push -1
sub esp, 4
push -1
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 0
je .Lt_0456
sub esp, 12
push 0
push -1
sub esp, 4
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
push dword ptr [eax+4124]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_0478
.Lt_0456:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.Lt_0478:
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_044B
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4124], 0
.Lt_0455:
.Lt_0454:
jmp .Lt_0449
.Lt_0453:
mov eax, dword ptr [ebp+8]
and eax, 8192
test eax, eax
je .Lt_045C
mov eax, dword ptr [ENV+888]
and eax, 8388608
test eax, eax
je .Lt_045E
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 36
je .Lt_0460
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_044E
push -1
sub esp, 4
push -1
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
cmp dword ptr [eax+4124], 0
je .Lt_0461
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4124]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_0479
.Lt_0461:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.Lt_0479:
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_044B
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4124], 0
.Lt_0460:
.Lt_045F:
jmp .Lt_045D
.Lt_045E:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 36
jne .Lt_0468
mov ebx, dword ptr [ENV+196]
and ebx, 256
test ebx, ebx
je .Lt_046A
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_044E
push -1
sub esp, 4
push -1
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
cmp dword ptr [eax+4124], 0
je .Lt_046B
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4124]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_047A
.Lt_046B:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.Lt_047A:
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_044B
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_046A:
.Lt_0469:
jmp .Lt_0467
.Lt_0468:
push 0
push 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_044E
push -1
sub esp, 4
push -1
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4124], 0
je .Lt_0471
sub esp, 12
push 0
push -1
sub esp, 4
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
push dword ptr [eax+4124]
push 1
call fb_CHR
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
jmp .Lt_047B
.Lt_0471:
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
.Lt_047B:
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 0
call LEXGETTEXT
push eax
push 5
push offset Lt_044B
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-60]
push 44
call ERRREPORTWARN
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_0467:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx+8], -2147483648
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
mov dword ptr [eax+4124], 0
.Lt_045D:
.Lt_045C:
.Lt_0449:
.Lt_0448:
.Lt_0447:
.Lt_0446:
.Lt_0445:
.Lt_0444:
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXCHECKTOKEN, .-LEXCHECKTOKEN
.balign 16

.globl HMATCHIDORKW
HMATCHIDORKW:
.type HMATCHIDORKW, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_047C:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0481
.Lt_0482:
cmp dword ptr [ebp-8], 2
je .Lt_0481
.Lt_0483:
cmp dword ptr [ebp-8], 1
jne .Lt_0480
.Lt_0481:
push 0
push dword ptr [ebp+8]
push -1
sub esp, 12
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0485
sub esp, 12
push dword ptr [ebp+12]
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_047D
.Lt_0485:
.Lt_0484:
.Lt_0480:
.Lt_047E:
mov dword ptr [ebp-4], 0
.Lt_047D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HMATCHIDORKW, .-HMATCHIDORKW
.balign 16

.globl HMATCH
HMATCH:
.type HMATCH, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0486:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov ebx, dword ptr [ebp+8]
cmp eax, ebx
jne .Lt_0489
sub esp, 12
push dword ptr [ebp+12]
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0488
.Lt_0489:
mov dword ptr [ebp-4], 0
.Lt_0488:
.Lt_0487:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HMATCH, .-HMATCH
.balign 16
fb_ctor__lex:
.type fb_ctor__lex, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__lex, .-fb_ctor__lex
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
HCOLLECTCHARFORDEBUGOUTPUT:
.type HCOLLECTCHARFORDEBUGOUTPUT, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0090:
cmp dword ptr [ebp+8], 32
jae .Lt_0093
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0095
.Lt_0097:
jmp .Lt_0091
jmp .Lt_0094
.Lt_0098:
jmp .Lt_0094
.Lt_0099:
mov dword ptr [ebp+8], 63
jmp .Lt_0094
.Lt_0095:
cmp dword ptr [ebp-4], 13
ja .Lt_0099
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_009B+eax*4]
.LT_009B:
.int .Lt_0097
.int .Lt_0099
.int .Lt_0099
.int .Lt_0099
.int .Lt_0099
.int .Lt_0099
.int .Lt_0099
.int .Lt_0099
.int .Lt_0099
.int .Lt_0098
.int .Lt_0097
.int .Lt_0098
.int .Lt_0098
.int .Lt_0097
.Lt_0094:
jmp .Lt_0092
.Lt_0093:
cmp dword ptr [ebp+8], 255
jbe .Lt_009C
mov dword ptr [ebp+8], 63
.Lt_009C:
.Lt_0092:
sub esp, 8
push dword ptr [ebp+8]
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+49392]
push ebx
call DZSTRCONCATASSIGNC
add esp, 16
.Lt_0091:
pop ebx
mov esp, ebp
pop ebp
ret
.size HCOLLECTCHARFORDEBUGOUTPUT, .-HCOLLECTCHARFORDEBUGOUTPUT
.balign 16
HREADCHAR:
.type HREADCHAR, @function
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_009D:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16584], 0
jle .Lt_00A0
cmp dword ptr [ENV+552], 0
jne .Lt_00A2
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16588]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_00A1
.Lt_00A2:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16588]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_00A1:
cmp dword ptr [ENV+148], 0
je .Lt_00A4
cmp dword ptr [ENV+876], 0
jne .Lt_00A6
cmp dword ptr [LEX+839940], 0
jne .Lt_00A8
mov dword ptr [LEX+839940], -1
sub esp, 8
push offset Lt_00A9
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+49392]
push ebx
call DZSTRCONCATASSIGN
add esp, 16
.Lt_00A8:
.Lt_00A7:
sub esp, 12
push dword ptr [ebp-8]
call HCOLLECTCHARFORDEBUGOUTPUT
add esp, 16
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
.Lt_00A3:
jmp .Lt_009F
.Lt_00A0:
mov ebx, dword ptr [LEX+839936]
cmp dword ptr [ebx+16604], 0
jne .Lt_00AB
sub esp, 12
push dword ptr [ENV+276]
call fb_FileEof
add esp, 16
test eax, eax
jne .Lt_00AD
sub esp, 12
push dword ptr [ENV+276]
call fb_FileTell
add esp, 16
mov ebx, eax
mov eax, dword ptr [LEX+839936]
mov dword ptr [eax+49384], ebx
mov ebx, dword ptr [ENV+552]
mov dword ptr [ebp-12], ebx
jmp .Lt_00AF
.Lt_00B1:
push 8193
mov ebx, dword ptr [LEX+839936]
lea eax, [ebx+16612]
push eax
push 0
push dword ptr [ENV+276]
call fb_FileGetStr
add esp, 16
test eax, eax
jne .Lt_00B3
sub esp, 12
push dword ptr [ENV+276]
call fb_FileTell
add esp, 16
mov ebx, dword ptr [LEX+839936]
mov esi, dword ptr [ebx+49384]
mov ecx, esi
sar ecx, 31
sub eax, esi
sbb edx, ecx
mov esi, eax
mov eax, dword ptr [LEX+839936]
mov dword ptr [eax+16604], esi
mov esi, dword ptr [LEX+839936]
lea eax, [esi+16612]
mov esi, dword ptr [LEX+839936]
mov dword ptr [esi+16608], eax
.Lt_00B3:
.Lt_00B2:
jmp .Lt_00AE
.Lt_00B4:
call LEXREADUTF8
jmp .Lt_00AE
.Lt_00B5:
call LEXREADUTF16LE
jmp .Lt_00AE
.Lt_00B6:
call LEXREADUTF16BE
jmp .Lt_00AE
.Lt_00B7:
call LEXREADUTF32LE
jmp .Lt_00AE
.Lt_00B8:
call LEXREADUTF32BE
jmp .Lt_00AE
.Lt_00AF:
cmp dword ptr [ebp-12], 5
ja .Lt_00AE
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00B9+eax*4]
.LT_00B9:
.int .Lt_00B1
.int .Lt_00B4
.int .Lt_00B5
.int .Lt_00B6
.int .Lt_00B7
.int .Lt_00B8
.Lt_00AE:
.Lt_00AD:
.Lt_00AC:
.Lt_00AB:
.Lt_00AA:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16604], 0
jle .Lt_00BB
cmp dword ptr [ENV+552], 0
jne .Lt_00BD
mov eax, dword ptr [LEX+839936]
mov esi, dword ptr [eax+16608]
movzx eax, byte ptr [esi]
mov dword ptr [ebp-8], eax
jmp .Lt_00BC
.Lt_00BD:
mov eax, dword ptr [LEX+839936]
mov esi, dword ptr [eax+16608]
mov eax, dword ptr [esi]
mov dword ptr [ebp-8], eax
.Lt_00BC:
jmp .Lt_00BA
.Lt_00BB:
mov dword ptr [ebp-8], 0
.Lt_00BA:
cmp dword ptr [ENV+148], 0
je .Lt_00BF
cmp dword ptr [ENV+876], 0
jne .Lt_00C1
cmp dword ptr [LEX+839940], 0
je .Lt_00C3
mov dword ptr [LEX+839940], 0
sub esp, 8
push offset Lt_00C4
mov eax, dword ptr [LEX+839936]
lea esi, [eax+49392]
push esi
call DZSTRCONCATASSIGN
add esp, 16
.Lt_00C3:
.Lt_00C2:
sub esp, 12
push dword ptr [ebp-8]
call HCOLLECTCHARFORDEBUGOUTPUT
add esp, 16
.Lt_00C1:
.Lt_00C0:
.Lt_00BF:
.Lt_00BE:
.Lt_009F:
mov esi, dword ptr [ebp-8]
mov dword ptr [ebp-4], esi
.Lt_009E:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HREADCHAR, .-HREADCHAR
.balign 16
HSKIPCHAR:
.type HSKIPCHAR, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00C9:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16584], 0
jle .Lt_00CC
mov eax, dword ptr [LEX+839936]
dec dword ptr [eax+16584]
cmp dword ptr [ENV+552], 0
jne .Lt_00CE
mov eax, dword ptr [LEX+839936]
inc dword ptr [eax+16588]
jmp .Lt_00CD
.Lt_00CE:
mov eax, dword ptr [LEX+839936]
add dword ptr [eax+16588], 4
.Lt_00CD:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16584], 0
jne .Lt_00D0
mov eax, dword ptr [LEX+839936]
mov dword ptr [eax+16576], 0
.Lt_00D0:
.Lt_00CF:
jmp .Lt_00CB
.Lt_00CC:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16556], 0
je .Lt_00D1
mov eax, dword ptr [LEX+839936]
dec dword ptr [eax+16604]
cmp dword ptr [ENV+552], 0
jne .Lt_00D3
mov eax, dword ptr [LEX+839936]
inc dword ptr [eax+16608]
jmp .Lt_00D2
.Lt_00D3:
mov eax, dword ptr [LEX+839936]
add dword ptr [eax+16608], 4
.Lt_00D2:
.Lt_00D1:
.Lt_00CB:
.Lt_00CA:
mov esp, ebp
pop ebp
ret
.size HSKIPCHAR, .-HSKIPCHAR
.balign 16
HREADIDENTIFIER:
.type HREADIDENTIFIER, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00E8:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov bl, al
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], bl
inc dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 0
call LEXEATCHAR
mov dword ptr [ebp-4], 0
.Lt_00EA:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
jmp .Lt_00EE
.Lt_00F0:
jmp .Lt_00ED
.Lt_00F1:
mov eax, dword ptr [ebp+24]
and eax, 128
test eax, eax
jne .Lt_00F3
jmp .Lt_00EB
.Lt_00F3:
.Lt_00F2:
jmp .Lt_00ED
.Lt_00F4:
jmp .Lt_00EB
jmp .Lt_00ED
.Lt_00EE:
mov eax, dword ptr [ebp-12]
add eax, 4294967250
cmp eax, 76
ja .Lt_00F4
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00F5+eax*4-184]
.LT_00F5:
.int .Lt_00F1
.int .Lt_00F4
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F4
.int .Lt_00F4
.int .Lt_00F4
.int .Lt_00F4
.int .Lt_00F4
.int .Lt_00F4
.int .Lt_00F4
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F4
.int .Lt_00F4
.int .Lt_00F4
.int .Lt_00F4
.int .Lt_00F0
.int .Lt_00F4
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.int .Lt_00F0
.Lt_00ED:
call LEXEATCHAR
cmp dword ptr [ebp-4], 0
jne .Lt_00F7
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 128
jne .Lt_00F9
mov eax, dword ptr [ebp+24]
and eax, 1
test eax, eax
jne .Lt_00FB
or dword ptr [ebp+24], 1
push 0
push 1
push 0
push 7
call ERRREPORTWARN
add esp, 16
.Lt_00FB:
.Lt_00FA:
mov dword ptr [ebp-4], -1
jmp .Lt_00F8
.Lt_00F9:
mov al, byte ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
mov byte ptr [ebx], al
inc dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax]
.Lt_00F8:
.Lt_00F7:
.Lt_00F6:
.Lt_00EC:
jmp .Lt_00EA
.Lt_00EB:
mov eax, dword ptr [ebp+8]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -2147483648
mov eax, dword ptr [ebp+24]
and eax, 8
test eax, eax
jne .Lt_00FD
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00FF
.Lt_0101:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ENV+892]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 37
call LEXEATCHAR
jmp .Lt_00FE
.Lt_0102:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 38
call LEXEATCHAR
jmp .Lt_00FE
.Lt_0103:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 15
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 33
call LEXEATCHAR
jmp .Lt_00FE
.Lt_0104:
sub esp, 12
push 0
call LEXGETLOOKAHEADCHAR
add esp, 16
cmp eax, 35
je .Lt_0106
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 16
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 35
call LEXEATCHAR
.Lt_0106:
.Lt_0105:
jmp .Lt_00FE
.Lt_0107:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 17
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 36
call LEXEATCHAR
jmp .Lt_00FE
.Lt_00FF:
mov eax, dword ptr [ebp-8]
add eax, 4294967263
cmp eax, 5
ja .Lt_00FE
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0108+eax*4-132]
.LT_0108:
.int .Lt_0103
.int .Lt_00FE
.int .Lt_0104
.int .Lt_0107
.int .Lt_0101
.int .Lt_0102
.Lt_00FE:
.Lt_00FD:
.Lt_00FC:
.Lt_00E9:
pop ebx
mov esp, ebp
pop ebp
ret
.size HREADIDENTIFIER, .-HREADIDENTIFIER
.balign 16
HREADNONDECNUMBER:
.type HREADNONDECNUMBER, @function
push ebp
mov ebp, esp
sub esp, 64
push ebx
push esi
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0109:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-36], 0
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-44], eax
jmp .Lt_010C
.Lt_010E:
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
call LEXEATCHAR
mov ebx, dword ptr [ebp+20]
and ebx, 9
test ebx, ebx
jne .Lt_0110
.Lt_0111:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
cmp eax, 48
jne .Lt_0112
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 48
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
call LEXEATCHAR
jmp .Lt_0111
.Lt_0112:
.Lt_0110:
.Lt_010F:
.Lt_0113:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 97
jb .Lt_0119
cmp dword ptr [ebp-16], 102
jbe .Lt_0118
.Lt_0119:
cmp dword ptr [ebp-16], 65
jb .Lt_011A
cmp dword ptr [ebp-16], 70
jbe .Lt_0118
.Lt_011A:
cmp dword ptr [ebp-16], 48
jb .Lt_0117
cmp dword ptr [ebp-16], 57
ja .Lt_0117
.Lt_0118:
call LEXEATCHAR
cmp dword ptr [ebp-36], 0
jne .Lt_011C
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
jbe .Lt_011E
add dword ptr [ebp-16], 4294967289
.Lt_011E:
.Lt_011D:
cmp dword ptr [ebp-16], 16
jbe .Lt_0120
add dword ptr [ebp-16], 4294967264
.Lt_0120:
.Lt_011F:
inc dword ptr [ebp-32]
cmp dword ptr [ebp-32], 8
jle .Lt_0122
cmp dword ptr [ebp-32], 9
jne .Lt_0124
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
jmp .Lt_0123
.Lt_0124:
cmp dword ptr [ebp-32], 17
jne .Lt_0125
mov ecx, dword ptr [ebp+20]
and ecx, 1
test ecx, ecx
jne .Lt_0127
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.Lt_0127:
.Lt_0126:
mov dword ptr [ebp-36], -1
jmp .Lt_0123
.Lt_0125:
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
.Lt_0123:
jmp .Lt_0121
.Lt_0122:
cmp dword ptr [ebp-32], 5
jne .Lt_0129
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 11
.Lt_0129:
.Lt_0128:
mov eax, dword ptr [ebp-12]
shl eax, 4
add eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.Lt_0121:
.Lt_011C:
.Lt_011B:
jmp .Lt_0116
.Lt_0117:
jmp .Lt_0114
.Lt_012A:
.Lt_0116:
.Lt_0115:
jmp .Lt_0113
.Lt_0114:
jmp .Lt_010B
.Lt_012B:
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
call LEXEATCHAR
mov ecx, dword ptr [ebp+20]
and ecx, 9
test ecx, ecx
jne .Lt_012D
.Lt_012E:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
cmp eax, 48
jne .Lt_012F
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 48
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
call LEXEATCHAR
jmp .Lt_012E
.Lt_012F:
.Lt_012D:
.Lt_012C:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_0130:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 48
jb .Lt_0134
cmp dword ptr [ebp-16], 55
ja .Lt_0134
.Lt_0135:
call LEXEATCHAR
cmp dword ptr [ebp-36], 0
jne .Lt_0137
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
jle .Lt_0139
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-48], eax
jmp .Lt_013B
.Lt_013D:
cmp dword ptr [ebp-20], 51
jbe .Lt_013F
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
jmp .Lt_013E
.Lt_013F:
mov ebx, dword ptr [ebp-12]
shl ebx, 3
add ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.Lt_013E:
jmp .Lt_013A
.Lt_0140:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 480
je .Lt_0141
mov dword ptr [ebp-52], 24
jmp .Lt_048A
.Lt_0141:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-52], ebx
.Lt_048A:
mov ebx, dword ptr [ebp-52]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 8
jge .Lt_0144
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 13
mov eax, dword ptr [ebp-12]
mov ebx, 0
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], ebx
.Lt_0144:
.Lt_0143:
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
jmp .Lt_013A
.Lt_0145:
cmp dword ptr [ebp-20], 49
jbe .Lt_0147
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
jne .Lt_0149
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.Lt_0149:
.Lt_0148:
mov dword ptr [ebp-36], -1
jmp .Lt_0146
.Lt_0147:
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
.Lt_0146:
jmp .Lt_013A
.Lt_014A:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .Lt_014C
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.Lt_014C:
.Lt_014B:
mov dword ptr [ebp-36], -1
jmp .Lt_013A
.Lt_014D:
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
jmp .Lt_013A
.Lt_013B:
mov ebx, dword ptr [ebp-48]
add ebx, 4294967285
cmp ebx, 12
ja .Lt_014D
mov ebx, dword ptr [ebp-48]
jmp dword ptr [.LT_014E+ebx*4-44]
.LT_014E:
.int .Lt_013D
.int .Lt_0140
.int .Lt_014D
.int .Lt_014D
.int .Lt_014D
.int .Lt_014D
.int .Lt_014D
.int .Lt_014D
.int .Lt_014D
.int .Lt_014D
.int .Lt_014D
.int .Lt_0145
.int .Lt_014A
.Lt_013A:
jmp .Lt_0138
.Lt_0139:
cmp dword ptr [ebp-32], 6
jne .Lt_0150
cmp dword ptr [ebp-20], 49
jbe .Lt_0152
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
.Lt_0152:
.Lt_0151:
jmp .Lt_014F
.Lt_0150:
cmp dword ptr [ebp-32], 7
jne .Lt_0153
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 11
.Lt_0153:
.Lt_014F:
mov ebx, dword ptr [ebp-12]
shl ebx, 3
add ebx, dword ptr [ebp-16]
mov dword ptr [ebp-12], ebx
.Lt_0138:
.Lt_0137:
.Lt_0136:
jmp .Lt_0133
.Lt_0134:
jmp .Lt_0131
.Lt_0154:
.Lt_0133:
.Lt_0132:
jmp .Lt_0130
.Lt_0131:
jmp .Lt_010B
.Lt_0155:
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
call LEXEATCHAR
mov eax, dword ptr [ebp+20]
and eax, 9
test eax, eax
jne .Lt_0157
.Lt_0158:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
cmp eax, 48
jne .Lt_0159
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 48
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx]
call LEXEATCHAR
jmp .Lt_0158
.Lt_0159:
.Lt_0157:
.Lt_0156:
.Lt_015A:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 48
je .Lt_015F
.Lt_0160:
cmp dword ptr [ebp-16], 49
jne .Lt_015E
.Lt_015F:
call LEXEATCHAR
cmp dword ptr [ebp-36], 0
jne .Lt_0162
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
jle .Lt_0164
cmp dword ptr [ebp-32], 33
jne .Lt_0166
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
jmp .Lt_0165
.Lt_0166:
cmp dword ptr [ebp-32], 65
jne .Lt_0167
mov ebx, dword ptr [ebp+20]
and ebx, 1
test ebx, ebx
jne .Lt_0169
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.Lt_0169:
.Lt_0168:
mov dword ptr [ebp-36], -1
jmp .Lt_0165
.Lt_0167:
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
.Lt_0165:
jmp .Lt_0163
.Lt_0164:
cmp dword ptr [ebp-32], 17
jne .Lt_016B
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 11
.Lt_016B:
.Lt_016A:
mov eax, dword ptr [ebp-12]
shl eax, 1
add eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.Lt_0163:
.Lt_0162:
.Lt_0161:
jmp .Lt_015D
.Lt_015E:
jmp .Lt_015B
.Lt_016C:
.Lt_015D:
.Lt_015C:
jmp .Lt_015A
.Lt_015B:
jmp .Lt_010B
.Lt_016D:
jmp .Lt_010A
jmp .Lt_010B
.Lt_010C:
mov eax, dword ptr [ebp-44]
add eax, 4294967230
cmp eax, 45
ja .Lt_016D
mov eax, dword ptr [ebp-44]
jmp dword ptr [.LT_016E+eax*4-264]
.LT_016E:
.int .Lt_0155
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_010E
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_012B
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_0155
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_010E
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_016D
.int .Lt_012B
.Lt_010B:
cmp dword ptr [ebp-32], 0
jne .Lt_0170
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], 48
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+12]
inc dword ptr [ebx]
.Lt_0170:
.Lt_016F:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 480
je .Lt_0171
mov dword ptr [ebp-40], 24
jmp .Lt_048B
.Lt_0171:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov dword ptr [ebp-40], ebx
.Lt_048B:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx+4], 8
jge .Lt_0174
mov eax, dword ptr [ebp-12]
mov ebx, 0
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
jmp .Lt_0173
.Lt_0174:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-8], ebx
mov dword ptr [ebp-4], eax
.Lt_0173:
.Lt_010A:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HREADNONDECNUMBER, .-HREADNONDECNUMBER
.balign 16
HREADFLOATNUMBER:
.type HREADFLOATNUMBER, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0175:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ENV+920]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4112]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-12], 0
.Lt_0177:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 48
jb .Lt_017B
cmp dword ptr [ebp-4], 57
ja .Lt_017B
.Lt_017C:
call LEXEATCHAR
cmp dword ptr [ebp-12], 0
jne .Lt_017E
mov al, byte ptr [ebp-4]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
mov byte ptr [ecx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+4112]
.Lt_017E:
.Lt_017D:
jmp .Lt_017A
.Lt_017B:
jmp .Lt_0178
.Lt_017F:
.Lt_017A:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4112], 64
jne .Lt_0181
cmp dword ptr [ebp-12], 0
jne .Lt_0183
mov dword ptr [ebp-12], -1
jmp .Lt_0182
.Lt_0183:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .Lt_0185
or dword ptr [ebp+20], 1
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.Lt_0185:
.Lt_0184:
.Lt_0182:
.Lt_0181:
.Lt_0180:
.Lt_0179:
jmp .Lt_0177
.Lt_0178:
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp+16], 0
je .Lt_0186
mov dword ptr [ebp-16], 1
jmp .Lt_048C
.Lt_0186:
mov dword ptr [ebp-16], 0
.Lt_048C:
mov eax, dword ptr [ebp-16]
add eax, 7
mov ecx, dword ptr [ebp-20]
cmp dword ptr [ecx+4112], eax
jle .Lt_0189
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 16
.Lt_0189:
.Lt_0188:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-20], eax
jmp .Lt_018B
.Lt_018D:
cmp dword ptr [ebp-4], 100
sete al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp-4], 68
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_018F
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+8], 16
.Lt_018F:
.Lt_018E:
cmp dword ptr [ebp-12], 0
jne .Lt_0191
cmp dword ptr [ebp+20], 0
jne .Lt_0193
mov dword ptr [ebp-4], 101
.Lt_0193:
.Lt_0192:
mov cl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx+4112]
.Lt_0191:
.Lt_0190:
call LEXEATCHAR
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
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
je .Lt_0195
call LEXEATCHAR
cmp dword ptr [ebp-12], 0
jne .Lt_0197
mov cl, byte ptr [ebp-4]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov byte ptr [ebx], cl
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+12]
inc dword ptr [ecx+4112]
.Lt_0197:
.Lt_0196:
.Lt_0195:
.Lt_0194:
.Lt_0198:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp-4]
mov dword ptr [ebp-24], eax
jmp .Lt_019C
.Lt_019E:
call LEXEATCHAR
cmp dword ptr [ebp-12], 0
jne .Lt_01A0
mov al, byte ptr [ebp-4]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx]
mov byte ptr [ebx], al
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+4112]
.Lt_01A0:
.Lt_019F:
jmp .Lt_019B
.Lt_01A1:
jmp .Lt_0199
jmp .Lt_019B
.Lt_019C:
mov eax, dword ptr [ebp-24]
add eax, 4294967248
cmp eax, 9
ja .Lt_01A1
mov eax, dword ptr [ebp-24]
jmp dword ptr [.LT_01A2+eax*4-192]
.LT_01A2:
.int .Lt_019E
.int .Lt_019E
.int .Lt_019E
.int .Lt_019E
.int .Lt_019E
.int .Lt_019E
.int .Lt_019E
.int .Lt_019E
.int .Lt_019E
.int .Lt_019E
.Lt_019B:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4112], 64
jne .Lt_01A4
cmp dword ptr [ebp-12], 0
jne .Lt_01A6
mov dword ptr [ebp-12], -1
jmp .Lt_01A5
.Lt_01A6:
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
jne .Lt_01A8
or dword ptr [ebp+20], 1
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.Lt_01A8:
.Lt_01A7:
.Lt_01A5:
.Lt_01A4:
.Lt_01A3:
.Lt_019A:
jmp .Lt_0198
.Lt_0199:
jmp .Lt_018A
.Lt_018B:
mov eax, dword ptr [ebp-20]
add eax, 4294967228
cmp eax, 33
ja .Lt_018A
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_01A9+eax*4-272]
.LT_01A9:
.int .Lt_018D
.int .Lt_018D
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018A
.int .Lt_018D
.int .Lt_018D
.Lt_018A:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-20], eax
jmp .Lt_01AB
.Lt_01AD:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 15
mov eax, dword ptr [ebp+20]
and eax, 1032
test eax, eax
jne .Lt_01AF
call LEXEATCHAR
.Lt_01AF:
.Lt_01AE:
jmp .Lt_01AA
.Lt_01B0:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 15
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .Lt_01B2
call LEXEATCHAR
.Lt_01B2:
.Lt_01B1:
jmp .Lt_01AA
.Lt_01B3:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+8], 16
mov eax, dword ptr [ebp+20]
and eax, 8
test eax, eax
jne .Lt_01B5
call LEXEATCHAR
.Lt_01B5:
.Lt_01B4:
jmp .Lt_01AA
.Lt_01AB:
mov eax, dword ptr [ebp-20]
add eax, 4294967263
cmp eax, 69
ja .Lt_01AA
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_01B6+eax*4-132]
.LT_01B6:
.int .Lt_01B0
.int .Lt_01AA
.int .Lt_01B3
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AD
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AA
.int .Lt_01AD
.Lt_01AA:
cmp dword ptr [ebp+20], 0
jne .Lt_01B8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4112]
sub ebx, dword ptr [ebp-8]
test ebx, ebx
jne .Lt_01BA
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 48
mov eax, dword ptr [ebp+8]
inc dword ptr [eax]
mov eax, dword ptr [ebp+12]
inc dword ptr [eax+4112]
.Lt_01BA:
.Lt_01B9:
.Lt_01B8:
.Lt_01B7:
.Lt_0176:
pop ebx
mov esp, ebp
pop ebp
ret
.size HREADFLOATNUMBER, .-HREADFLOATNUMBER
.balign 16
READNUMBERCHARS:
.type READNUMBERCHARS, @function
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
push edi
.Lt_01BB:
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
.Lt_01BD:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-20], eax
jmp .Lt_01C1
.Lt_01C3:
call LEXEATCHAR
cmp dword ptr [ebp-16], 48
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4112]
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
je .Lt_01C5
mov bl, byte ptr [ebp-16]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], bl
mov ebx, dword ptr [ebp+16]
inc dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
inc dword ptr [ebx+4112]
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
.Lt_01C5:
.Lt_01C4:
jmp .Lt_01C0
.Lt_01C6:
mov dword ptr [ebp-24], 0
cmp dword ptr [ebp-16], 46
jne .Lt_01C8
call LEXEATCHAR
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .Lt_01CA
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
mov byte ptr [ecx], 46
mov ecx, dword ptr [ebp+16]
inc dword ptr [ecx]
mov ecx, dword ptr [ebp+8]
inc dword ptr [ecx+4112]
.Lt_01CA:
.Lt_01C9:
mov dword ptr [ebp-24], -1
.Lt_01C8:
.Lt_01C7:
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
call HREADFLOATNUMBER
add esp, 16
jmp .Lt_01BE
jmp .Lt_01C0
.Lt_01CB:
jmp .Lt_01BE
jmp .Lt_01C0
.Lt_01C1:
mov ecx, dword ptr [ebp-20]
add ecx, 4294967250
cmp ecx, 55
ja .Lt_01CB
mov ecx, dword ptr [ebp-20]
jmp dword ptr [.LT_01CC+ecx*4-184]
.LT_01CC:
.int .Lt_01C6
.int .Lt_01CB
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01C3
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01CB
.int .Lt_01C6
.int .Lt_01C6
.Lt_01C0:
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx]
and eax, 8
test eax, eax
jne .Lt_01CE
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .Lt_01D0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4112]
mov dword ptr [ebp-20], ecx
jmp .Lt_01D2
.Lt_01D4:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .Lt_01D6
ja .Lt_0495
cmp dword ptr [ecx], 32767
jbe .Lt_01D6
.Lt_0495:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 11
.Lt_01D6:
.Lt_01D5:
jmp .Lt_01D1
.Lt_01D7:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 11
jmp .Lt_01D1
.Lt_01D8:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .Lt_01DA
ja .Lt_0496
cmp dword ptr [ecx], 2147483647
jbe .Lt_01DA
.Lt_0496:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 0
jb .Lt_01DC
ja .Lt_0497
cmp dword ptr [ecx], 4294967295
jbe .Lt_01DC
.Lt_0497:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 13
jmp .Lt_01DB
.Lt_01DC:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 12
.Lt_01DB:
.Lt_01DA:
.Lt_01D9:
jmp .Lt_01D1
.Lt_01DD:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 13
jmp .Lt_01D1
.Lt_01DE:
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx+4], 2147483647
jb .Lt_01E0
ja .Lt_0498
cmp dword ptr [ecx], 4294967295
jbe .Lt_01E0
.Lt_0498:
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+8], 14
.Lt_01E0:
.Lt_01DF:
mov ecx, dword ptr [ebp+24]
mov ebx, dword ptr [ecx]
mov eax, dword ptr [ecx+4]
mov dword ptr [ebp-12], ebx
mov dword ptr [ebp-8], eax
jmp .Lt_01D1
.Lt_01E1:
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], 14
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 1
test eax, eax
jne .Lt_01E3
cmp dword ptr [ebp-8], 429496729
mov eax, -1
ja .Lt_0499
jb .Lt_049A
cmp dword ptr [ebp-12], 2576980377
ja .Lt_0499
.Lt_049A:
xor eax, eax
.Lt_0499:
mov ebx, dword ptr [ebp+24]
mov esi, dword ptr [ebx]
mov ecx, dword ptr [ebx+4]
and esi, 0
and ecx, 2147483648
cmp ecx, 0
mov ebx, -1
jne .Lt_049C
cmp esi, 0
je .Lt_049B
.Lt_049C:
xor ebx, ebx
.Lt_049B:
or eax, ebx
je .Lt_01E5
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], -1
.Lt_01E5:
.Lt_01E4:
.Lt_01E3:
.Lt_01E2:
jmp .Lt_01D1
.Lt_01E6:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
and eax, 1
test eax, eax
jne .Lt_01E8
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.Lt_01E8:
.Lt_01E7:
jmp .Lt_01D1
.Lt_01D2:
mov eax, dword ptr [ebp-20]
add eax, 4294967291
cmp eax, 16
ja .Lt_01D1
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_01E9+eax*4-20]
.LT_01E9:
.int .Lt_01D4
.int .Lt_01D7
.int .Lt_01D1
.int .Lt_01D1
.int .Lt_01D1
.int .Lt_01D8
.int .Lt_01DD
.int .Lt_01D1
.int .Lt_01D1
.int .Lt_01D1
.int .Lt_01D1
.int .Lt_01D1
.int .Lt_01D1
.int .Lt_01D1
.int .Lt_01DE
.int .Lt_01E1
.int .Lt_01E6
.Lt_01D1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4112], 64
jne .Lt_01EB
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .Lt_01ED
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
jmp .Lt_01EC
.Lt_01ED:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 1
test ebx, ebx
jne .Lt_01EF
mov ebx, dword ptr [ebp+12]
or dword ptr [ebx], 1
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.Lt_01EF:
.Lt_01EE:
.Lt_01EC:
.Lt_01EB:
.Lt_01EA:
.Lt_01D0:
.Lt_01CF:
.Lt_01CE:
.Lt_01CD:
.Lt_01BF:
jmp .Lt_01BD
.Lt_01BE:
mov ebx, dword ptr [ebp+8]
cmp dword ptr [ebx+4112], 0
jne .Lt_01F1
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov byte ptr [eax], 48
mov eax, dword ptr [ebp+16]
inc dword ptr [eax]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4112], 1
.Lt_01F1:
.Lt_01F0:
.Lt_01BC:
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size READNUMBERCHARS, .-READNUMBERCHARS
.balign 16
HREADNUMBER:
.type HREADNUMBER, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_01F2:
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
mov dword ptr [ebx+4112], 0
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-28], eax
jmp .Lt_01F5
.Lt_01F7:
sub esp, 12
lea eax, [ebp-16]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp+12]
push eax
push dword ptr [ebp+8]
call READNUMBERCHARS
add esp, 32
jmp .Lt_01F4
.Lt_01F8:
call LEXEATCHAR
mov eax, dword ptr [ebp-20]
mov byte ptr [eax], 46
inc dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4112], 1
push dword ptr [ebp+12]
push -1
push dword ptr [ebp+8]
lea eax, [ebp-20]
push eax
call HREADFLOATNUMBER
add esp, 16
jmp .Lt_01F4
.Lt_01F9:
call LEXEATCHAR
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4112], 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+4112]
push eax
lea eax, [ebp-20]
push eax
call HREADNONDECNUMBER
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
jmp .Lt_01F4
.Lt_01F5:
mov eax, dword ptr [ebp-28]
add eax, 4294967258
cmp eax, 19
ja .Lt_01F4
mov eax, dword ptr [ebp-28]
jmp dword ptr [.LT_01FA+eax*4-152]
.LT_01FA:
.int .Lt_01F9
.int .Lt_01F4
.int .Lt_01F4
.int .Lt_01F4
.int .Lt_01F4
.int .Lt_01F4
.int .Lt_01F4
.int .Lt_01F4
.int .Lt_01F8
.int .Lt_01F4
.int .Lt_01F7
.int .Lt_01F7
.int .Lt_01F7
.int .Lt_01F7
.int .Lt_01F7
.int .Lt_01F7
.int .Lt_01F7
.int .Lt_01F7
.int .Lt_01F7
.int .Lt_01F7
.Lt_01F4:
mov eax, dword ptr [ebp-20]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+8]
mov dword ptr [ebp-28], edx
cmp dword ptr [ebp-28], 5
jne .Lt_01FD
.Lt_01FE:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ENV+896]
mov dword ptr [edx+8], eax
jmp .Lt_01FB
.Lt_01FD:
cmp dword ptr [ebp-28], 6
jne .Lt_01FF
.Lt_0200:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ENV+900]
mov dword ptr [eax+8], edx
jmp .Lt_01FB
.Lt_01FF:
cmp dword ptr [ebp-28], 11
jne .Lt_0201
.Lt_0202:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ENV+904]
mov dword ptr [edx+8], eax
jmp .Lt_01FB
.Lt_0201:
cmp dword ptr [ebp-28], 12
jne .Lt_0203
.Lt_0204:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ENV+908]
mov dword ptr [eax+8], edx
jmp .Lt_01FB
.Lt_0203:
cmp dword ptr [ebp-28], 13
jne .Lt_0205
.Lt_0206:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ENV+912]
mov dword ptr [edx+8], eax
jmp .Lt_01FB
.Lt_0205:
cmp dword ptr [ebp-28], 14
jne .Lt_0207
.Lt_0208:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ENV+916]
mov dword ptr [eax+8], edx
.Lt_0207:
.Lt_01FB:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [edx+8]
and eax, 480
je .Lt_0209
mov dword ptr [ebp-24], 24
jmp .Lt_049D
.Lt_0209:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [eax+8]
and edx, 31
mov dword ptr [ebp-24], edx
.Lt_049D:
mov edx, dword ptr [ebp-24]
imul edx, 28
cmp dword ptr [SYMB_DTYPETB+edx], 1
je .Lt_020C
mov edx, dword ptr [ebp+12]
and edx, 8
test edx, edx
jne .Lt_020E
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .Lt_0210
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 85
je .Lt_0214
.Lt_0215:
cmp dword ptr [ebp-28], 117
jne .Lt_0213
.Lt_0214:
call LEXEATCHAR
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
call TYPETOUNSIGNED
add esp, 16
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], eax
mov dword ptr [ebp-4], -1
.Lt_0213:
.Lt_0211:
.Lt_0210:
.Lt_020F:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-28], eax
jmp .Lt_0217
.Lt_0219:
mov eax, dword ptr [ebp+12]
and eax, 1024
test eax, eax
jne .Lt_021B
call LEXEATCHAR
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
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
je .Lt_021D
call LEXEATCHAR
cmp dword ptr [ebp-4], 0
je .Lt_021E
mov dword ptr [ebp-36], 14
jmp .Lt_049E
.Lt_021E:
mov dword ptr [ebp-36], 13
.Lt_049E:
mov edx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-36]
mov dword ptr [edx+8], eax
jmp .Lt_021C
.Lt_021D:
cmp dword ptr [ebp-12], 0
jb .Lt_0221
ja .Lt_04A3
cmp dword ptr [ebp-16], 4294967295
jbe .Lt_0221
.Lt_04A3:
cmp dword ptr [ebp-8], 0
jne .Lt_0223
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .Lt_0225
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.Lt_0225:
.Lt_0224:
.Lt_0223:
.Lt_0222:
.Lt_0221:
.Lt_0220:
cmp dword ptr [ebp-4], 0
je .Lt_0226
mov dword ptr [ebp-36], 12
jmp .Lt_049F
.Lt_0226:
mov dword ptr [ebp-36], 11
.Lt_049F:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp-36]
mov dword ptr [eax+8], edx
.Lt_021C:
.Lt_021B:
.Lt_021A:
jmp .Lt_0216
.Lt_0228:
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .Lt_022A
cmp dword ptr [ebp-4], 0
jne .Lt_022C
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 15
call LEXEATCHAR
.Lt_022C:
.Lt_022B:
.Lt_022A:
.Lt_0229:
jmp .Lt_0216
.Lt_022D:
mov edx, dword ptr [ebp+12]
and edx, 1024
test edx, edx
jne .Lt_022F
cmp dword ptr [ebp-4], 0
jne .Lt_0231
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 16
call LEXEATCHAR
.Lt_0231:
.Lt_0230:
.Lt_022F:
.Lt_022E:
jmp .Lt_0216
.Lt_0232:
mov dword ptr [ebp-32], 0
mov edx, dword ptr [ENV+892]
and edx, 480
je .Lt_0233
mov dword ptr [ebp-36], 24
jmp .Lt_04A0
.Lt_0233:
mov edx, dword ptr [ENV+892]
and edx, 31
mov dword ptr [ebp-36], edx
.Lt_04A0:
mov edx, dword ptr [ebp-36]
imul edx, 28
mov eax, dword ptr [SYMB_DTYPETB+edx+4]
mov dword ptr [ebp-40], eax
cmp dword ptr [ebp-40], 2
jne .Lt_0237
.Lt_0238:
cmp dword ptr [ebp-12], 0
mov eax, -1
ja .Lt_04A4
jb .Lt_04A5
cmp dword ptr [ebp-16], 65535
ja .Lt_04A4
.Lt_04A5:
xor eax, eax
.Lt_04A4:
mov dword ptr [ebp-32], eax
jmp .Lt_0235
.Lt_0237:
cmp dword ptr [ebp-40], 4
jne .Lt_0239
.Lt_023A:
cmp dword ptr [ebp-12], 0
mov eax, -1
ja .Lt_04A6
jb .Lt_04A7
cmp dword ptr [ebp-16], 4294967295
ja .Lt_04A6
.Lt_04A7:
xor eax, eax
.Lt_04A6:
mov dword ptr [ebp-32], eax
.Lt_0239:
.Lt_0235:
cmp dword ptr [ebp-32], 0
je .Lt_023C
cmp dword ptr [ebp-8], 0
jne .Lt_023E
mov eax, dword ptr [ebp+12]
and eax, 1
test eax, eax
jne .Lt_0240
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.Lt_0240:
.Lt_023F:
.Lt_023E:
.Lt_023D:
.Lt_023C:
.Lt_023B:
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ENV+892]
mov dword ptr [eax+8], edx
call LEXEATCHAR
jmp .Lt_0216
.Lt_0241:
cmp dword ptr [ebp-12], 0
jb .Lt_0243
ja .Lt_04A8
cmp dword ptr [ebp-16], 4294967295
jbe .Lt_0243
.Lt_04A8:
cmp dword ptr [ebp-8], 0
jne .Lt_0245
mov edx, dword ptr [ebp+12]
and edx, 1
test edx, edx
jne .Lt_0247
push 0
push 1
push 0
push 8
call ERRREPORTWARN
add esp, 16
.Lt_0247:
.Lt_0246:
.Lt_0245:
.Lt_0244:
.Lt_0243:
.Lt_0242:
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 11
call LEXEATCHAR
jmp .Lt_0216
.Lt_0248:
cmp dword ptr [ebp-4], 0
jne .Lt_024A
mov edx, dword ptr [ebp+8]
mov dword ptr [edx+8], 15
call LEXEATCHAR
.Lt_024A:
.Lt_0249:
jmp .Lt_0216
.Lt_024B:
cmp dword ptr [ebp-4], 0
jne .Lt_024D
sub esp, 12
push 0
call LEXGETLOOKAHEADCHAR
add esp, 16
cmp eax, 35
je .Lt_024F
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 16
call LEXEATCHAR
.Lt_024F:
.Lt_024E:
.Lt_024D:
.Lt_024C:
jmp .Lt_0216
.Lt_0217:
mov eax, dword ptr [ebp-28]
add eax, 4294967263
cmp eax, 75
ja .Lt_0216
mov eax, dword ptr [ebp-28]
jmp dword ptr [.LT_0250+eax*4-132]
.LT_0250:
.int .Lt_0248
.int .Lt_0216
.int .Lt_024B
.int .Lt_0216
.int .Lt_0232
.int .Lt_0241
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_022D
.int .Lt_0216
.int .Lt_0228
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0219
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_022D
.int .Lt_0216
.int .Lt_0228
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0216
.int .Lt_0219
.Lt_0216:
.Lt_020E:
.Lt_020D:
.Lt_020C:
.Lt_020B:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 3
mov eax, dword ptr [ebp+8]
mov edx, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
mov dword ptr [edx], ebx
.Lt_01F3:
pop ebx
mov esp, ebp
pop ebp
ret
.size HREADNUMBER, .-HREADNUMBER
.balign 16
HREADSTRING:
.type HREADSTRING, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0251:
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
je .Lt_0254
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov bl, al
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], bl
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.Lt_0254:
.Lt_0253:
call LEXEATCHAR
.Lt_0255:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
jne .Lt_0259
call LEXEATCHAR
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
je .Lt_025B
cmp dword ptr [ebp-16], 0
jne .Lt_025D
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 34
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.Lt_025D:
.Lt_025C:
.Lt_025B:
.Lt_025A:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .Lt_025F
jmp .Lt_0256
.Lt_025F:
jmp .Lt_0258
.Lt_0259:
cmp dword ptr [ebp-20], 27
jne .Lt_0260
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
jne .Lt_0262
cmp dword ptr [ebp-16], 0
jne .Lt_0264
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 27
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.Lt_0264:
.Lt_0263:
.Lt_0262:
.Lt_0261:
jmp .Lt_0258
.Lt_0260:
cmp dword ptr [ebp-20], 92
jne .Lt_0265
mov dword ptr [ebp-8], -1
cmp dword ptr [ebp-12], 0
je .Lt_0267
call LEXEATCHAR
cmp dword ptr [ebp-16], 0
jne .Lt_0269
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 92
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.Lt_0269:
.Lt_0268:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_0267:
.Lt_0266:
.Lt_0265:
.Lt_0258:
cmp dword ptr [ebp-20], 0
je .Lt_026C
.Lt_026D:
cmp dword ptr [ebp-20], 13
je .Lt_026C
.Lt_026E:
cmp dword ptr [ebp-20], 10
jne .Lt_026B
.Lt_026C:
mov eax, dword ptr [ebp+16]
and eax, 9
test eax, eax
jne .Lt_0270
push 0
push 1
push 0
push 12
call ERRREPORTWARN
add esp, 16
.Lt_0270:
.Lt_026F:
jmp .Lt_0256
.Lt_026B:
.Lt_026A:
call LEXEATCHAR
cmp dword ptr [ebp-16], 0
jne .Lt_0272
cmp dword ptr [ebp-4], 1024
jne .Lt_0274
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
jne .Lt_0276
or dword ptr [ebp+16], 1
push 0
push 1
push 0
push 9
call ERRREPORTWARN
add esp, 16
.Lt_0276:
.Lt_0275:
mov dword ptr [ebp-16], -1
jmp .Lt_0273
.Lt_0274:
mov al, byte ptr [ebp-20]
mov ebx, dword ptr [ebp+12]
mov byte ptr [ebx], al
inc dword ptr [ebp+12]
inc dword ptr [ebp-4]
.Lt_0273:
.Lt_0272:
.Lt_0271:
.Lt_0257:
jmp .Lt_0255
.Lt_0256:
mov eax, dword ptr [ebp+12]
mov byte ptr [eax], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+8], 4
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+4112], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-8]
mov dword ptr [ebx+4120], eax
.Lt_0252:
pop ebx
mov esp, ebp
pop ebp
ret
.size HREADSTRING, .-HREADSTRING
.balign 16
HREADWSTR:
.type HREADWSTR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0277:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
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
je .Lt_027A
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.Lt_027A:
.Lt_0279:
call LEXEATCHAR
.Lt_027B:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
jne .Lt_027F
call LEXEATCHAR
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
je .Lt_0281
cmp dword ptr [ebp-16], 0
jne .Lt_0283
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 34
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.Lt_0283:
.Lt_0282:
.Lt_0281:
.Lt_0280:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 34
je .Lt_0285
jmp .Lt_027C
.Lt_0285:
jmp .Lt_027E
.Lt_027F:
cmp dword ptr [ebp-20], 27
jne .Lt_0286
mov eax, dword ptr [ebp+16]
and eax, 16
test eax, eax
jne .Lt_0288
cmp dword ptr [ebp-16], 0
jne .Lt_028A
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 27
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.Lt_028A:
.Lt_0289:
.Lt_0288:
.Lt_0287:
jmp .Lt_027E
.Lt_0286:
cmp dword ptr [ebp-20], 92
jne .Lt_028B
mov dword ptr [ebp-8], -1
cmp dword ptr [ebp-12], 0
je .Lt_028D
call LEXEATCHAR
cmp dword ptr [ebp-16], 0
jne .Lt_028F
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 92
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.Lt_028F:
.Lt_028E:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_028D:
.Lt_028C:
.Lt_028B:
.Lt_027E:
cmp dword ptr [ebp-20], 0
je .Lt_0292
.Lt_0293:
cmp dword ptr [ebp-20], 13
je .Lt_0292
.Lt_0294:
cmp dword ptr [ebp-20], 10
jne .Lt_0291
.Lt_0292:
mov eax, dword ptr [ebp+16]
and eax, 9
test eax, eax
jne .Lt_0296
push 0
push 1
push 0
push 12
call ERRREPORTWARN
add esp, 16
.Lt_0296:
.Lt_0295:
jmp .Lt_027C
.Lt_0291:
.Lt_0290:
call LEXEATCHAR
cmp dword ptr [ebp-16], 0
jne .Lt_0298
cmp dword ptr [ebp-4], 1024
jne .Lt_029A
mov eax, dword ptr [ebp+16]
and eax, 1
test eax, eax
jne .Lt_029C
or dword ptr [ebp+16], 1
push 0
push 1
push 0
push 9
call ERRREPORTWARN
add esp, 16
.Lt_029C:
.Lt_029B:
mov dword ptr [ebp-16], -1
jmp .Lt_0299
.Lt_029A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax], ebx
add dword ptr [ebp+12], 4
inc dword ptr [ebp-4]
.Lt_0299:
.Lt_0298:
.Lt_0297:
.Lt_027D:
jmp .Lt_027B
.Lt_027C:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], 7
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-4]
mov dword ptr [ebx+4112], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-8]
mov dword ptr [eax+4120], ebx
.Lt_0278:
pop ebx
mov esp, ebp
pop ebp
ret
.size HREADWSTR, .-HREADWSTR
.balign 16
HCHECKPERIODS:
.type HCHECKPERIODS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_029D:
cmp dword ptr [ebp+16], 0
je .Lt_02A0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
cmp eax, 46
jne .Lt_02A2
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
cmp dword ptr [ebx], 8
je .Lt_02A4
mov dword ptr [ebp-4], -1
.Lt_02A5:
cmp dword ptr [ebp+16], 0
je .Lt_02A6
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
.Lt_02A7:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 1
jne .Lt_02AB
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .Lt_02AD
jmp .Lt_029E
.Lt_02AD:
.Lt_02AC:
.Lt_02AB:
.Lt_02AA:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+156]
mov dword ptr [ebp-8], eax
.Lt_02A9:
cmp dword ptr [ebp-8], 0
jne .Lt_02A7
.Lt_02A8:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp+16], ebx
jmp .Lt_02A5
.Lt_02A6:
.Lt_02A4:
.Lt_02A3:
.Lt_02A2:
.Lt_02A1:
jmp .Lt_029F
.Lt_02A0:
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
cmp eax, 46
sete bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_029F:
cmp dword ptr [ebp-4], 0
je .Lt_02AF
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+4112]
mov dword ptr [eax+4120], ecx
sub esp, 12
mov ecx, dword ptr [ebp+12]
or ecx, 128
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+4124]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+8]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+4112]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax+12]
mov eax, dword ptr [ebp+8]
add ecx, dword ptr [eax+4112]
push ecx
call HREADIDENTIFIER
add esp, 32
sub esp, 4
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+4]
push eax
mov eax, dword ptr [ebp+8]
lea ecx, [eax]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+12]
push eax
call SYMBLOOKUP
add esp, 16
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx+4116], eax
.Lt_02AF:
.Lt_02AE:
.Lt_029E:
pop ebx
mov esp, ebp
pop ebp
ret
.size HCHECKPERIODS, .-HCHECKPERIODS
.balign 16
READID:
.type READID, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_02B0:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16576]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4112], 0
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4120], 0
sub esp, 12
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+4124]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+8]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+4112]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
push ebx
call HREADIDENTIFIER
add esp, 32
mov ebx, dword ptr [ebp+12]
and ebx, 256
je .Lt_02B3
push 0
push 0
mov ebx, dword ptr [ebp+8]
lea eax, [ebx+12]
push eax
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16580]
call SYMBLOOKUPAT
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4116], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4116], 0
jne .Lt_02B5
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
jmp .Lt_02B4
.Lt_02B5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4116]
mov eax, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+4116]
mov ecx, dword ptr [ebx]
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+60]
mov dword ptr [ebx+4], eax
.Lt_02B4:
mov dword ptr [ebp-4], -1
jmp .Lt_02B1
.Lt_02B3:
.Lt_02B2:
mov eax, dword ptr [ebp+12]
and eax, 32
je .Lt_02B7
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 265
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 0
mov dword ptr [ebp-4], -1
jmp .Lt_02B1
.Lt_02B7:
.Lt_02B6:
sub esp, 4
mov eax, dword ptr [ebp+8]
lea ebx, [eax+4]
push ebx
mov ebx, dword ptr [ebp+8]
lea eax, [ebx]
push eax
mov eax, dword ptr [ebp+8]
lea ebx, [eax+12]
push ebx
call SYMBLOOKUP
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4116], eax
mov eax, dword ptr [ebp+12]
and eax, 2
je .Lt_02B9
mov dword ptr [ebp-4], -1
jmp .Lt_02B1
.Lt_02B9:
.Lt_02B8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+4116], 0
je .Lt_02BB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4116]
mov eax, dword ptr [ebx]
cmp dword ptr [eax], 5
jne .Lt_02BD
sub esp, 8
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4116]
push dword ptr [ebx]
call PPDEFINELOAD
add esp, 16
test eax, eax
je .Lt_02BF
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4128], -1
mov dword ptr [ebp-4], 0
jmp .Lt_02B1
.Lt_02BF:
.Lt_02BE:
.Lt_02BD:
.Lt_02BC:
.Lt_02BB:
.Lt_02BA:
mov eax, dword ptr [ENV+888]
and eax, 524288
test eax, eax
je .Lt_02C1
mov eax, dword ptr [ebp+12]
and eax, 64
test eax, eax
jne .Lt_02C3
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4116]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HCHECKPERIODS
add esp, 16
.Lt_02C3:
.Lt_02C2:
.Lt_02C1:
.Lt_02C0:
mov dword ptr [ebp-4], -1
.Lt_02B1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size READID, .-READID
.balign 16
HMULTILINECOMMENT:
.type HMULTILINECOMMENT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_034B:
call LEXEATCHAR
mov dword ptr [Lt_04AC], 0
.Lt_034D:
sub esp, 12
push -1
call LEXCURRENTCHAR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0351
.Lt_0353:
sub esp, 12
push 0
push 1
push 0
push 0
push 132
call ERRREPORTEX
add esp, 32
jmp .Lt_034C
jmp .Lt_0350
.Lt_0354:
call LEXEATCHAR
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
cmp eax, 10
jne .Lt_0356
call LEXEATCHAR
.Lt_0356:
.Lt_0355:
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16584], 0
jne .Lt_0358
mov eax, dword ptr [LEX+839936]
inc dword ptr [eax+16564]
.Lt_0358:
.Lt_0357:
jmp .Lt_0350
.Lt_0359:
call LEXEATCHAR
mov eax, dword ptr [LEX+839936]
cmp dword ptr [eax+16584], 0
jne .Lt_035B
mov eax, dword ptr [LEX+839936]
inc dword ptr [eax+16564]
.Lt_035B:
.Lt_035A:
jmp .Lt_0350
.Lt_035C:
call LEXEATCHAR
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
cmp eax, 39
jne .Lt_035E
call LEXEATCHAR
inc dword ptr [Lt_04AC]
.Lt_035E:
.Lt_035D:
jmp .Lt_0350
.Lt_035F:
call LEXEATCHAR
sub esp, 12
push 0
call LEXCURRENTCHAR
add esp, 16
cmp eax, 47
jne .Lt_0361
call LEXEATCHAR
cmp dword ptr [Lt_04AC], 0
jne .Lt_0363
jmp .Lt_034E
.Lt_0363:
.Lt_0362:
dec dword ptr [Lt_04AC]
.Lt_0361:
.Lt_0360:
jmp .Lt_0350
.Lt_0364:
call LEXEATCHAR
jmp .Lt_0350
.Lt_0351:
cmp dword ptr [ebp-4], 47
ja .Lt_0364
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_0365+eax*4]
.LT_0365:
.int .Lt_0353
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0359
.int .Lt_0364
.int .Lt_0364
.int .Lt_0354
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_035F
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_0364
.int .Lt_035C
.Lt_0350:
.Lt_034F:
jmp .Lt_034D
.Lt_034E:
.Lt_034C:
mov esp, ebp
pop ebp
ret
.size HMULTILINECOMMENT, .-HMULTILINECOMMENT

.section .bss
.balign 4
	.lcomm	Lt_04AC,4

.section .text
.balign 16
HMOVEKDOWN:
.type HMOVEKDOWN, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_037E:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov dword ptr [ebx], -1
mov ebx, dword ptr [LEX+839936]
dec dword ptr [ebx+16544]
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
mov ebx, dword ptr [LEX+839936]
mov ecx, dword ptr [eax+4132]
mov dword ptr [ebx+16548], ecx
.Lt_037F:
pop ebx
mov esp, ebp
pop ebp
ret
.size HMOVEKDOWN, .-HMOVEKDOWN
.balign 16
LEXGETSTRLITTEXT:
.type LEXGETSTRLITTEXT, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0380:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], 262
jne .Lt_0383
.Lt_0384:
mov dword ptr [ebp-28], 0
jmp .Lt_0382
.Lt_0383:
cmp dword ptr [ebp+8], 263
jne .Lt_0385
.Lt_0386:
sub esp, 12
push 0
push 2
push offset Lt_0387
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-28], -1
jmp .Lt_0382
.Lt_0385:
cmp dword ptr [ebp+8], 264
jne .Lt_0388
.Lt_0389:
sub esp, 12
push 0
push 2
push offset Lt_038A
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-28], 0
.Lt_0388:
.Lt_0382:
sub esp, 12
push 0
push 2
push offset Lt_038B
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-32], 0
call LEXGETTEXT
mov dword ptr [ebp-36], eax
.Lt_038C:
mov eax, dword ptr [ebp-36]
mov bl, byte ptr [eax]
mov byte ptr [ebp-40], bl
movzx ebx, byte ptr [ebp-40]
test ebx, ebx
jne .Lt_0391
.Lt_0392:
jmp .Lt_038D
jmp .Lt_038F
.Lt_0391:
movzx ebx, byte ptr [ebp-40]
cmp ebx, 34
jne .Lt_0393
.Lt_0394:
cmp dword ptr [ebp-32], 0
je .Lt_0396
sub esp, 12
push 0
push 2
push offset Lt_038B
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0395
.Lt_0396:
sub esp, 12
push 0
push 3
push offset Lt_0397
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_0395:
mov dword ptr [ebp-32], 0
jmp .Lt_038F
.Lt_0393:
movzx ebx, byte ptr [ebp-40]
cmp ebx, 92
jne .Lt_0398
.Lt_039A:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-32], ebx
sub esp, 12
push 0
push 2
push offset Lt_0399
push -1
lea ebx, [ebp-24]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_038F
.Lt_0398:
mov dword ptr [ebp-32], 0
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov ebx, dword ptr [ebp-36]
movzx eax, byte ptr [ebx]
push eax
push 1
call fb_CHR
add esp, 16
push eax
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_039B:
.Lt_038F:
inc dword ptr [ebp-36]
.Lt_038E:
jmp .Lt_038C
.Lt_038D:
sub esp, 12
push 0
push 2
push offset Lt_038B
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_0381:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXGETSTRLITTEXT, .-LEXGETSTRLITTEXT

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.globl LEX
.balign 4
	.lcomm	LEX,839944
.balign 4
	.lcomm	PPONLY_LN,12

.section .rodata
.balign 4
Lt_00A9:	.ascii	" [Macro Expansion: \0"
.balign 4
Lt_00C4:	.ascii	" ] \0"
.balign 4
Lt_0387:	.ascii	"!\0"
.balign 4
Lt_038A:	.ascii	"$\0"
.balign 4
Lt_038B:	.ascii	"\"\0"
.balign 4
Lt_0397:	.ascii	"\"\"\0"
.balign 4
Lt_0399:	.ascii	"\\\0"
.balign 4
Lt_03B0:	.ascii	" \0"
.balign 4
Lt_040A:	.ascii	"src/compiler/lex.bas\0"
.balign 4
Lt_043F:	.ascii	"^\0"
.balign 4
Lt_044B:	.ascii	"in '\0"
.balign 4
Lt_044E:	.ascii	"'\0"

.section .ctors, "aw", @progbits
.int fb_ctor__lex
