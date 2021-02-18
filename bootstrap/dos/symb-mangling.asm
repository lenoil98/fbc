	.intel_syntax noprefix

.section .text
.balign 16

.globl _SYMBMANGLEINIT
_SYMBMANGLEINIT:
.Lt_005E:
push 12
push 96
lea eax, [_CTX]
push eax
call _FLISTINIT
add esp, 12
mov dword ptr [_CTX+56], 0
mov dword ptr [_CTX+80], 0
mov dword ptr [_CTX+84], 0
mov dword ptr [_CTX+88], 0
.Lt_005F:
ret
.balign 16

.globl _SYMBMANGLEEND
_SYMBMANGLEEND:
.Lt_0060:
lea eax, [_CTX]
push eax
call _FLISTEND
add esp, 4
.Lt_0061:
ret
.balign 16

.globl _SYMBUNIQUEID
_SYMBUNIQUEID:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0062:
mov eax, dword ptr [_ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
movzx ebx, byte ptr [ebp+8]
neg ebx
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0065
push 0
push 5
push offset _Lt_0066
push 17
lea ebx, [_CTX+60]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [_CTX+80]
call _fb_IntToStr
add esp, 4
push eax
push 17
lea eax, [_CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0064
.Lt_0065:
push 0
push 4
push offset _Lt_0068
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [_CTX+80]
call _HHEXUINT
add esp, 4
push eax
push 17
lea eax, [_CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0064:
inc dword ptr [_CTX+80]
lea eax, [_CTX+60]
mov dword ptr [ebp-4], eax
.Lt_0063:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBUNIQUELABEL
_SYMBUNIQUELABEL:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_006C:
cmp dword ptr [_ENV+104], 1
jne .Lt_006F
push 0
push 7
push offset _Lt_0070
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push dword ptr [_CTX+84]
call _fb_IntToStr
add esp, 4
push eax
push 17
lea eax, [_CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
inc dword ptr [_CTX+84]
jmp .Lt_006E
.Lt_006F:
push 0
push 5
push offset _Lt_0072
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
push dword ptr [_CTX+80]
call _HHEXUINT
add esp, 4
push eax
push 17
lea eax, [_CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
inc dword ptr [_CTX+80]
.Lt_006E:
lea eax, [_CTX+60]
mov dword ptr [ebp-4], eax
.Lt_006D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBMAKEPROFILELABELNAME
_SYMBMAKEPROFILELABELNAME:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0074:
push 0
push -1
push 0
push dword ptr [_CTX+88]
call _HHEXUINT
add esp, 4
push eax
push 4
push offset _Lt_0076
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 17
lea eax, [_CTX+60]
push eax
call _fb_StrAssign
add esp, 20
inc dword ptr [_CTX+88]
lea eax, [_CTX+60]
mov dword ptr [ebp-4], eax
.Lt_0075:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETDBGNAME
_SYMBGETDBGNAME:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0078:
push dword ptr [ebp+8]
call _HDOCPPMANGLING
add esp, 4
test eax, eax
je .Lt_007B
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_007D
.Lt_007F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0081
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-12], ebx
.Lt_0081:
.Lt_0080:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .Lt_0079
jmp .Lt_007C
.Lt_0082:
push dword ptr [ebp+8]
call _SYMBGETMANGLEDNAME
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0079
jmp .Lt_007C
.Lt_007D:
mov eax, dword ptr [ebp-8]
add eax, 4294967288
cmp eax, 3
ja .Lt_0082
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0083+eax*4-32]
_.LT_0083:
.int .Lt_007F
.int .Lt_007F
.int .Lt_007F
.int .Lt_007F
.Lt_007C:
.Lt_007B:
.Lt_007A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
and ecx, 8192
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0085
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+20], 0
je .Lt_0087
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+20]
mov dword ptr [ebp-4], ebx
jmp .Lt_0079
.Lt_0087:
.Lt_0086:
.Lt_0085:
.Lt_0084:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+16]
mov dword ptr [ebp-4], ecx
.Lt_0079:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBSETNAME
_SYMBSETNAME:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_008A:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .Lt_008D
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
lea eax, [_SYMB+98608]
push eax
call _POOLDELITEM
add esp, 8
.Lt_008D:
.Lt_008C:
push 0
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_008F
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
jmp .Lt_008E
.Lt_008F:
mov eax, dword ptr [ebp-4]
inc eax
push eax
lea eax, [_SYMB+98608]
push eax
call _POOLNEWITEM
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], eax
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call _fb_StrAssign
add esp, 20
.Lt_008E:
.Lt_008B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBGETMANGLEDNAME
_SYMBGETMANGLEDNAME:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .Lt_00A3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
jmp .Lt_00A1
.Lt_00A3:
.Lt_00A2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_00A5
.Lt_00A7:
push dword ptr [ebp+8]
call _HMANGLEPROC
add esp, 4
jmp .Lt_00A4
.Lt_00A8:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
push dword ptr [ebx]
lea ebx, [ebp-20]
push ebx
call _HMANGLENAMESPACE
add esp, 16
push dword ptr [ebp+8]
lea ebx, [ebp-20]
push ebx
call _HMANGLEUDTID
add esp, 8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
lea ebx, [_SYMB+98352]
cmp dword ptr [eax], ebx
je .Lt_00AA
push 0
push 2
push offset _Lt_009E
push -1
lea ebx, [ebp-20]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_00AA:
.Lt_00A9:
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call _SYMBSETMANGLEDID
add esp, 8
lea ebx, [ebp-20]
push ebx
call _fb_StrDelete
add esp, 4
jmp .Lt_00A4
.Lt_00AB:
push dword ptr [ebp+8]
call _HMANGLEVARIABLE
add esp, 4
jmp .Lt_00A4
.Lt_00AC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
jmp .Lt_00A1
jmp .Lt_00A4
.Lt_00A5:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 13
ja .Lt_00AC
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_00AD+eax*4-4]
_.LT_00AD:
.int .Lt_00AB
.int .Lt_00AC
.int .Lt_00A7
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00A8
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00A8
.Lt_00A4:
call _SYMBMANGLERESETABBREV
cmp dword ptr [_ENV+104], 1
jne .Lt_00AF
mov eax, dword ptr [_ENV+888]
and eax, 524288
test eax, eax
je .Lt_00B1
push 36
push 46
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _HREPLACECHAR
add esp, 12
.Lt_00B1:
.Lt_00B0:
.Lt_00AF:
.Lt_00AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
.Lt_00A1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBMANGLERESETABBREV
_SYMBMANGLERESETABBREV:
.Lt_00B3:
lea eax, [_CTX]
push eax
call _FLISTRESET
add esp, 4
mov dword ptr [_CTX+56], 0
.Lt_00B4:
ret
.balign 16

.globl _HMANGLEBUILTINTYPE
_HMANGLEBUILTINTYPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D5:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 17
jne .Lt_00D8
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov eax, offset _Lt_00D9
mov dword ptr [ebp-4], eax
jmp .Lt_00D6
.Lt_00D8:
.Lt_00D7:
call _FBIS64BIT
mov ebx, dword ptr [_ENV+260]
and ebx, 1
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00DB
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
test ebx, ebx
je .Lt_00DD
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
sar ebx, 20
mov dword ptr [ebp+8], ebx
cmp dword ptr [ebp+8], 8
jne .Lt_00DF
.Lt_00E0:
mov ebx, offset _Lt_00E1
mov dword ptr [ebp-4], ebx
jmp .Lt_00D6
jmp .Lt_00DE
.Lt_00DF:
cmp dword ptr [ebp+8], 9
jne .Lt_00E2
.Lt_00E3:
mov ebx, offset _Lt_00E4
mov dword ptr [ebp-4], ebx
jmp .Lt_00D6
.Lt_00E2:
.Lt_00DE:
jmp .Lt_00DC
.Lt_00DD:
cmp dword ptr [ebp+8], 8
jne .Lt_00E6
.Lt_00E7:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], -1
mov ebx, offset _Lt_00E8
mov dword ptr [ebp-4], ebx
jmp .Lt_00D6
jmp .Lt_00E5
.Lt_00E6:
cmp dword ptr [ebp+8], 9
jne .Lt_00E9
.Lt_00EA:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], -1
mov ebx, offset _Lt_00EB
mov dword ptr [ebp-4], ebx
jmp .Lt_00D6
.Lt_00E9:
.Lt_00E5:
.Lt_00DC:
jmp .Lt_00DA
.Lt_00DB:
cmp dword ptr [ebp+8], 8
jne .Lt_00ED
.Lt_00EE:
mov ebx, offset _Lt_00E1
mov dword ptr [ebp-4], ebx
jmp .Lt_00D6
jmp .Lt_00EC
.Lt_00ED:
cmp dword ptr [ebp+8], 9
jne .Lt_00EF
.Lt_00F0:
mov ebx, offset _Lt_00E4
mov dword ptr [ebp-4], ebx
jmp .Lt_00D6
.Lt_00EF:
.Lt_00EC:
.Lt_00DA:
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
test ebx, ebx
je .Lt_00F2
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
sar ebx, 20
mov dword ptr [ebp+8], ebx
.Lt_00F2:
.Lt_00F1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [_Lt_0103+ebx*4]
mov dword ptr [ebp-4], eax
.Lt_00D6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0103:
.int _Lt_00F4
.int _Lt_00F5
.int _Lt_00F6
.int _Lt_00F7
.int _Lt_00F8
.int _Lt_00F9
.int _Lt_00FA
.int _Lt_00FB
.long 0
.long 0
.long 0
.int _Lt_00FC
.int _Lt_00FD
.int _Lt_00FE
.int _Lt_00FF
.int _Lt_0100
.int _Lt_0101
.long 0
.long 0
.int _Lt_00F8
.long 0
.long 0
.long 0
.long 0
.long 0
.skip 4,0

.section .text
.balign 16

.globl _SYMBMANGLETYPE
_SYMBMANGLETYPE:
push ebp
mov ebp, esp
sub esp, 56
push ebx
.Lt_0104:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVFIND
add esp, 8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], -1
je .Lt_0107
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _HABBREVGET
add esp, 8
jmp .Lt_0105
.Lt_0107:
.Lt_0106:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_0108
mov dword ptr [ebp-16], 24
jmp .Lt_014D
.Lt_0108:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_014D:
cmp dword ptr [ebp-16], 23
jne .Lt_010B
mov eax, dword ptr [ebp+12]
and eax, 2147483647
and eax, -512
or eax, 20
mov dword ptr [ebp+12], eax
.Lt_010B:
.Lt_010A:
mov eax, dword ptr [ebp+12]
and eax, 524288
test eax, eax
je .Lt_010D
push 0
push -1
push 2
push offset _Lt_010E
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+20]
or eax, 4
or eax, 1
push eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, -524289
push eax
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD
add esp, 8
jmp .Lt_0105
.Lt_010D:
.Lt_010C:
mov eax, dword ptr [ebp+12]
and eax, 512
test eax, eax
je .Lt_0111
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .Lt_0113
push 0
push -1
push 2
push offset _Lt_0114
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_0113:
.Lt_0112:
mov eax, dword ptr [ebp+20]
and eax, -2
push eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, -513
push eax
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD
add esp, 8
jmp .Lt_0105
.Lt_0111:
.Lt_0110:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
je .Lt_0117
push 0
push -1
push 2
push offset _Lt_0118
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+20]
or eax, 2
or eax, 1
push eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, 31
mov ebx, dword ptr [ebp+12]
and ebx, 480
add ebx, -32
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 261632
sar ebx, 1
and ebx, 261632
or eax, ebx
mov ebx, dword ptr [ebp+12]
and ebx, 32505856
or eax, ebx
push eax
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD
add esp, 8
jmp .Lt_0105
.Lt_0117:
.Lt_0116:
mov eax, dword ptr [ebp+12]
and eax, 32505856
test eax, eax
je .Lt_011B
mov eax, dword ptr [ebp+12]
and eax, 31
cmp eax, 20
jne .Lt_011D
mov eax, dword ptr [ebp+12]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .Lt_011F
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _SYMBGETVALISTTYPE
add esp, 8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 3
jne .Lt_0122
.Lt_0123:
mov eax, dword ptr [ebp+20]
and eax, 6
test eax, eax
je .Lt_0125
push 0
push -1
push 4
push offset _Lt_0126
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .Lt_0124
.Lt_0125:
push 0
push -1
push 2
push offset _Lt_0118
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_0124:
and dword ptr [ebp+12], -32505857
jmp .Lt_0120
.Lt_0122:
cmp dword ptr [ebp-20], 4
je .Lt_012A
.Lt_012B:
cmp dword ptr [ebp-20], 5
jne .Lt_0129
.Lt_012A:
push 0
push -1
push 3
push offset _Lt_012C
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
and dword ptr [ebp+12], -32505857
.Lt_0129:
.Lt_0120:
.Lt_011F:
.Lt_011E:
.Lt_011D:
.Lt_011C:
.Lt_011B:
.Lt_011A:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 20
je .Lt_0131
.Lt_0132:
cmp dword ptr [ebp-20], 10
jne .Lt_0130
.Lt_0131:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
lea eax, [_SYMB+98352]
cmp dword ptr [ebp-4], eax
jne .Lt_0134
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HMANGLEUDTID
add esp, 8
jmp .Lt_0133
.Lt_0134:
push 0
push -1
push 2
push offset _Lt_0135
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push 0
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
push dword ptr [eax+28]
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HMANGLEUDTID
add esp, 8
push 0
push -1
push 2
push offset _Lt_009E
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_0133:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD
add esp, 8
jmp .Lt_012E
.Lt_0130:
cmp dword ptr [ebp-20], 21
jne .Lt_0138
.Lt_0139:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp+16], eax
jne .Lt_013B
jmp .Lt_0105
.Lt_013B:
.Lt_013A:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_013D
push 0
push dword ptr [ebp-4]
push 21
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
.Lt_013D:
.Lt_013C:
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HMANGLEUDTID
add esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD
add esp, 8
jmp .Lt_012E
.Lt_0138:
cmp dword ptr [ebp-20], 22
jne .Lt_013E
.Lt_013F:
push 0
push -1
push 2
push offset _Lt_0140
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .Lt_0143
push 0
push -1
push 2
push offset _Lt_010E
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea ebx, [ebp-56]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_0143:
.Lt_0142:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+28]
and ebx, 512
test ebx, ebx
je .Lt_0146
push 0
push -1
push 2
push offset _Lt_0114
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea ebx, [ebp-56]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_0146:
.Lt_0145:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+28]
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _HGETPROCPARAMSTYPECODE
add esp, 12
push 0
push -1
push 2
push offset _Lt_009E
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD
add esp, 8
jmp .Lt_012E
.Lt_013E:
push 0
push -1
push 0
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
call _HMANGLEBUILTINTYPE
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-8], 0
je .Lt_014C
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HABBREVADD
add esp, 8
.Lt_014C:
.Lt_014B:
.Lt_0149:
.Lt_012E:
.Lt_0105:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _SYMBMANGLEPARAM
_SYMBMANGLEPARAM:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_014E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
jmp .Lt_0151
.Lt_0153:
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+28]
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
jmp .Lt_0150
.Lt_0154:
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
or eax, 524288
push eax
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
jmp .Lt_0150
.Lt_0155:
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+72]
push 524308
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
jmp .Lt_0150
.Lt_0156:
push 0
push -1
push 2
push offset _Lt_0157
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .Lt_0150
.Lt_0151:
mov eax, dword ptr [ebp-4]
add eax, 4294967295
cmp eax, 3
ja .Lt_0150
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_0159+eax*4-4]
_.LT_0159:
.int .Lt_0153
.int .Lt_0154
.int .Lt_0155
.int .Lt_0156
.Lt_0150:
.Lt_014F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__symbzmangling:
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
_SYMBSETMANGLEDID:
push ebp
mov ebp, esp
push ebx
.Lt_0090:
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
inc eax
push eax
call _XALLOCATE
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+24], eax
push 0
push -1
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call _fb_StrAssign
add esp, 20
.Lt_0091:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMANGLEUDTID:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_0092:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .Lt_0095
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call _fb_StrLen
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .Lt_0094
.Lt_0095:
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
call _fb_StrLen
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push 0
push -1
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_0094:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
cmp ebx, 10
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+4]
and ecx, 8192
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_009B
push 0
push -1
push 2
push offset _Lt_009C
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ecx, [ebp-20]
push ecx
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
push dword ptr [ebp+12]
call _SYMBGETDESCTYPEARRAYDTYPE
add esp, 12
push 1
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _SYMBMANGLETYPE
add esp, 16
push 0
push -1
push 2
push offset _Lt_009E
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_009B:
.Lt_009A:
.Lt_0093:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HABBREVFIND:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B5:
cmp dword ptr [_CTX+56], 0
jne .Lt_00B8
mov dword ptr [ebp-4], -1
jmp .Lt_00B6
.Lt_00B8:
.Lt_00B7:
lea eax, [_CTX]
push eax
call _FLISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00B9:
cmp dword ptr [ebp-8], 0
je .Lt_00BA
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+8], ebx
jne .Lt_00BC
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebx+4], eax
jne .Lt_00BE
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .Lt_00B6
.Lt_00BE:
.Lt_00BD:
.Lt_00BC:
.Lt_00BB:
push dword ptr [ebp-8]
call _FLISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_00B9
.Lt_00BA:
mov dword ptr [ebp-4], -1
.Lt_00B6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HABBREVADD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BF:
lea eax, [_CTX]
push eax
call _FLISTNEWITEM
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_CTX+56]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
inc dword ptr [_CTX+56]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00C0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HABBREVGET:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.Lt_00C1:
push 0
push -1
push 2
push offset _Lt_00C3
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+12], 0
jle .Lt_00C6
cmp dword ptr [ebp+12], 10
jg .Lt_00C8
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
add ebx, 48
mov eax, ebx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .Lt_00C7
.Lt_00C8:
cmp dword ptr [ebp+12], 33
jg .Lt_00CA
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
add eax, -11
mov ebx, eax
add ebx, 65
mov eax, ebx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .Lt_00C7
.Lt_00CA:
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
mov ecx, 33
cdq
idiv ecx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov ecx, 33
mov eax, dword ptr [ebp+12]
cdq
idiv ecx
mov eax, edx
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 10
jg .Lt_00CF
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
add ebx, 48
mov eax, ebx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .Lt_00CE
.Lt_00CF:
cmp dword ptr [ebp+12], 33
jg .Lt_00D1
push 0
push -1
push -1
mov eax, dword ptr [ebp+12]
add eax, -11
mov ebx, eax
add ebx, 65
mov eax, ebx
push eax
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_00D1:
.Lt_00CE:
.Lt_00C7:
.Lt_00C6:
.Lt_00C5:
push 0
push -1
push 2
push offset _Lt_00D3
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_00C2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HADDUNDERSCORE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_015A:
cmp dword ptr [_ENV+104], 1
jne .Lt_015D
mov dword ptr [ebp-4], 0
jmp .Lt_015C
.Lt_015D:
mov eax, dword ptr [_ENV+268]
mov dword ptr [ebp-4], eax
.Lt_015C:
.Lt_015B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HDOCPPMANGLING:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_015E:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
cmp ebx, 4
jne .Lt_0161
mov dword ptr [ebp-4], -1
jmp .Lt_015F
.Lt_0161:
.Lt_0160:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 2080
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
movsx ecx, word ptr [ebx+38]
cmp ecx, 6
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0163
mov dword ptr [ebp-4], 0
jmp .Lt_015F
.Lt_0163:
.Lt_0162:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+140]
lea ecx, [_SYMB+98352]
cmp dword ptr [eax], ecx
je .Lt_0165
mov dword ptr [ebp-4], -1
jmp .Lt_015F
.Lt_0165:
.Lt_0164:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 3
jne .Lt_0167
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+8]
and eax, 1
test eax, eax
je .Lt_0169
mov dword ptr [ebp-4], -1
jmp .Lt_015F
.Lt_0169:
.Lt_0168:
.Lt_0167:
.Lt_0166:
mov dword ptr [ebp-4], 0
.Lt_015F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMANGLENAMESPACE:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_016A:
cmp dword ptr [ebp+12], 0
jne .Lt_016E
jmp .Lt_016B
.Lt_016E:
.Lt_016D:
lea eax, [_SYMB+98352]
cmp dword ptr [ebp+12], eax
jne .Lt_0170
jmp .Lt_016B
.Lt_0170:
.Lt_016F:
cmp dword ptr [ebp+16], 0
je .Lt_0172
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
lea eax, [ebp-28]
push eax
call _SYMBMANGLETYPE
add esp, 16
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0172:
.Lt_0171:
mov dword ptr [ebp-4], -1
.Lt_0173:
inc dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [_Lt_02BA+eax*4], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp+12], ebx
.Lt_0175:
lea ebx, [_SYMB+98352]
cmp dword ptr [ebp+12], ebx
jne .Lt_0173
.Lt_0174:
push 0
push -1
push 2
push offset _Lt_0135
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp+20], 0
je .Lt_0178
push 0
push -1
push 2
push offset _Lt_0114
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
.Lt_0178:
.Lt_0177:
.Lt_017A:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [_Lt_02BA+eax*4]
mov dword ptr [ebp+12], ebx
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HMANGLEUDTID
add esp, 8
dec dword ptr [ebp-4]
.Lt_017C:
cmp dword ptr [ebp-4], 0
jge .Lt_017A
.Lt_017B:
.Lt_016B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02BA,256

.section .text
.balign 16
_HMANGLEVARIABLE:
push ebp
mov ebp, esp
sub esp, 56
push ebx
.Lt_017D:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
test ebx, ebx
jle .Lt_0180
mov dword ptr [ebp-20], 0
jmp .Lt_017F
.Lt_0180:
push dword ptr [ebp+8]
call _HDOCPPMANGLING
add esp, 4
mov dword ptr [ebp-20], eax
.Lt_017F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 59
je .Lt_0182
cmp dword ptr [_ENV+104], 2
jne .Lt_0184
push 0
push 2
push offset _Lt_0185
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_0184:
.Lt_0183:
call _HADDUNDERSCORE
test eax, eax
je .Lt_0187
push 0
push 2
push offset _Lt_00D3
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0187:
.Lt_0186:
mov eax, dword ptr [_ENV+108]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .Lt_018B
.Lt_018C:
cmp dword ptr [ebp-28], 1
jne .Lt_018A
.Lt_018B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_018E
push 0
push 7
push offset _Lt_018F
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_018E:
.Lt_018D:
.Lt_018A:
.Lt_0188:
cmp dword ptr [ebp-20], 0
je .Lt_0191
push 0
push 3
push offset _Lt_0192
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 256
je .Lt_0194
push 0
push 3
push offset _Lt_0195
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0193
.Lt_0194:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 1024
je .Lt_0196
push 0
push 3
push offset _Lt_0197
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_0196:
.Lt_0193:
.Lt_0191:
.Lt_0190:
jmp .Lt_0181
.Lt_0182:
cmp dword ptr [_ENV+104], 2
jne .Lt_0199
push 0
push 2
push offset _Lt_019A
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_0199:
.Lt_0198:
.Lt_0181:
cmp dword ptr [ebp-20], 0
je .Lt_019C
push 0
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
push dword ptr [eax]
lea eax, [ebp-12]
push eax
call _HMANGLENAMESPACE
add esp, 16
.Lt_019C:
.Lt_019B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 1280
je .Lt_019E
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
jmp .Lt_019D
.Lt_019E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 512
je .Lt_019F
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
jmp .Lt_019D
.Lt_019F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 57
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-20]
or ebx, dword ptr [ebp-24]
je .Lt_01A1
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+38]
test eax, eax
jne .Lt_01A3
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_01A5
push 0
push 2
push offset _Lt_00B2
push -1
push offset _Lt_02BB
call _fb_StrConcatAssign
add esp, 20
.Lt_01A5:
.Lt_01A4:
jmp .Lt_01A2
.Lt_01A3:
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
.Lt_01A2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_01A7
push 0
push -1
push 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-28]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _HMANGLEBUILTINTYPE
add esp, 8
push eax
push -1
push offset _Lt_02BB
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
cmp dword ptr [_ENV+104], 1
jne .Lt_01AB
push 0
push 2
push offset _Lt_00B2
push -1
push offset _Lt_02BB
call _fb_StrConcatAssign
add esp, 20
.Lt_01AB:
.Lt_01AA:
.Lt_01A7:
.Lt_01A6:
jmp .Lt_01A0
.Lt_01A1:
mov eax, dword ptr [_ENV+104]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
jne .Lt_01AE
.Lt_01AF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push dword ptr [ebp+8]
call _SYMBHASDTOR
add esp, 4
and ebx, eax
je .Lt_01B1
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
jmp .Lt_01B0
.Lt_01B1:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .Lt_01B3
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_00B2
push -1
push offset _Lt_02BB
call _fb_StrConcatAssign
add esp, 20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_01B5
push 0
push -1
push 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _HMANGLEBUILTINTYPE
add esp, 8
push eax
push -1
push offset _Lt_02BB
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
push 0
push 2
push offset _Lt_00B2
push -1
push offset _Lt_02BB
call _fb_StrConcatAssign
add esp, 20
.Lt_01B5:
.Lt_01B4:
push 0
push -1
push -1
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
push ebx
call _fb_UIntToStr
add esp, 4
push eax
push -1
push offset _Lt_02BB
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
jmp .Lt_01B2
.Lt_01B3:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
.Lt_01B2:
.Lt_01B0:
jmp .Lt_01AC
.Lt_01AE:
cmp dword ptr [ebp-28], 2
jne .Lt_01B9
.Lt_01BA:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .Lt_01BC
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_01BE
push 0
push -1
push 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _HMANGLEBUILTINTYPE
add esp, 8
push eax
push -1
push offset _Lt_02BB
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
.Lt_01BE:
.Lt_01BD:
push 0
push 2
push offset _Lt_0007
push -1
push offset _Lt_02BB
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [_Lt_02C0]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_02BB
call _fb_StrConcatAssign
add esp, 20
inc dword ptr [_Lt_02C0]
jmp .Lt_01BB
.Lt_01BC:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
.Lt_01BB:
jmp .Lt_01AC
.Lt_01B9:
cmp dword ptr [ebp-28], 3
jne .Lt_01C1
.Lt_01C2:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .Lt_01C4
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_01C6
push 0
push -1
push 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call _HMANGLEBUILTINTYPE
add esp, 8
push eax
push -1
push offset _Lt_02BB
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
.Lt_01C6:
.Lt_01C5:
push 0
push 2
push offset _Lt_0007
push -1
push offset _Lt_02BB
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [_Lt_02C0]
call _fb_IntToStr
add esp, 4
push eax
push -1
push offset _Lt_02BB
call _fb_StrConcatAssign
add esp, 20
inc dword ptr [_Lt_02C0]
jmp .Lt_01C3
.Lt_01C4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .Lt_01C9
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
jmp .Lt_01C3
.Lt_01C9:
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
.Lt_01C3:
jmp .Lt_01AC
.Lt_01C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .Lt_01CC
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
jmp .Lt_01CB
.Lt_01CC:
push 0
push 0
call dword ptr [_IR+44]
push eax
push -1
push offset _Lt_02BB
call _fb_StrAssign
add esp, 20
.Lt_01CB:
.Lt_01CA:
.Lt_01AC:
.Lt_01A0:
.Lt_019D:
push -1
push offset _Lt_02BB
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_01CE
cmp dword ptr [ebp-20], 0
je .Lt_01D0
push 0
push -1
push -1
push offset _Lt_02BB
call _fb_StrLen
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_01D0:
.Lt_01CF:
push 0
push -1
push offset _Lt_02BB
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_01CE:
.Lt_01CD:
cmp dword ptr [ebp-20], 0
je .Lt_01D2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [_SYMB+98352]
cmp dword ptr [ebx], eax
je .Lt_01D4
push 0
push 2
push offset _Lt_009E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_01D4:
.Lt_01D3:
.Lt_01D2:
.Lt_01D1:
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _SYMBSETMANGLEDID
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_017E:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_02BB,12
.balign 4
	.lcomm	_Lt_02C0,4

.section .text
.balign 16
_HGETPROCPARAMSTYPECODE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_01D5:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_01D8
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 524288
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp+16]
je .Lt_01DA
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
.Lt_01DA:
.Lt_01D9:
.Lt_01D8:
.Lt_01D7:
cmp dword ptr [ebp-4], 0
jne .Lt_01DC
push 0
push -1
push 2
push offset _Lt_00F4
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
jmp .Lt_01D6
.Lt_01DC:
.Lt_01DB:
.Lt_01DE:
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call _SYMBMANGLEPARAM
add esp, 8
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
.Lt_01E0:
cmp dword ptr [ebp-4], 0
jne .Lt_01DE
.Lt_01DF:
.Lt_01D6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETOPERATORNAME:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01E1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-8], eax
jmp .Lt_01E4
.Lt_01E6:
mov eax, offset _Lt_01E7
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_01E8:
mov eax, offset _Lt_01E9
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_01EA:
mov eax, offset _Lt_01EB
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_01EC:
mov eax, offset _Lt_01ED
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_01EE:
mov eax, offset _Lt_01EF
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_01F0:
mov eax, offset _Lt_01F1
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_01F2:
mov eax, offset _Lt_01F3
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_01F4:
mov eax, offset _Lt_01F5
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_01F6:
mov eax, offset _Lt_01F7
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_01F8:
mov eax, offset _Lt_01F9
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_01FA:
mov eax, offset _Lt_01FB
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_01FC:
mov eax, offset _Lt_01FD
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_01FE:
mov eax, offset _Lt_01FF
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0200:
mov eax, offset _Lt_0201
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0202:
mov eax, offset _Lt_0203
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0204:
mov eax, offset _Lt_0205
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0206:
mov eax, offset _Lt_0207
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0208:
mov eax, offset _Lt_0209
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_020A:
mov eax, offset _Lt_020B
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_020C:
mov eax, offset _Lt_020D
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_020E:
mov eax, offset _Lt_020F
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0210:
mov eax, offset _Lt_0211
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0212:
mov eax, offset _Lt_0213
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0214:
mov eax, offset _Lt_0215
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0216:
mov eax, offset _Lt_0217
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0218:
mov eax, offset _Lt_0219
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_021A:
mov eax, offset _Lt_021B
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_021C:
mov eax, offset _Lt_021D
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_021E:
mov eax, offset _Lt_021F
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0220:
mov eax, offset _Lt_0221
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0222:
mov eax, offset _Lt_0223
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0224:
mov eax, offset _Lt_0225
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0226:
mov eax, offset _Lt_0227
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0228:
mov eax, offset _Lt_0229
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_022A:
mov eax, offset _Lt_022B
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_022C:
mov eax, offset _Lt_022D
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_022E:
mov eax, offset _Lt_022F
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0230:
mov eax, offset _Lt_0231
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0232:
mov eax, offset _Lt_0233
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0234:
mov eax, offset _Lt_0235
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0236:
mov eax, offset _Lt_0237
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0238:
mov eax, offset _Lt_0239
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_023A:
mov eax, offset _Lt_023B
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_023C:
mov eax, offset _Lt_023D
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_023E:
mov eax, offset _Lt_023F
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0240:
mov eax, offset _Lt_0241
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0242:
mov eax, offset _Lt_0243
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0244:
mov eax, offset _Lt_0245
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0246:
mov eax, offset _Lt_0247
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0248:
mov eax, offset _Lt_0249
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_024A:
mov eax, offset _Lt_024B
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_024C:
mov eax, offset _Lt_024D
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_024E:
mov eax, offset _Lt_024F
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0250:
mov eax, offset _Lt_0251
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0252:
mov eax, offset _Lt_0253
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0254:
mov eax, offset _Lt_0255
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0256:
mov eax, offset _Lt_0257
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0258:
mov eax, offset _Lt_0259
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_025A:
mov eax, offset _Lt_025B
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_025C:
mov eax, offset _Lt_025D
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_025E:
mov eax, offset _Lt_025F
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0260:
mov eax, offset _Lt_0261
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0262:
mov eax, offset _Lt_0263
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0264:
mov eax, offset _Lt_0265
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0266:
mov eax, offset _Lt_0267
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_0268:
mov eax, offset _Lt_0269
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_026A:
mov eax, offset _Lt_026B
mov dword ptr [ebp-4], eax
jmp .Lt_01E3
.Lt_026C:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 2
jne .Lt_026E
mov ebx, offset _Lt_026F
mov dword ptr [ebp-4], ebx
jmp .Lt_026D
.Lt_026E:
mov ebx, offset _Lt_0270
mov dword ptr [ebp-4], ebx
.Lt_026D:
jmp .Lt_01E3
.Lt_0271:
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+68]
cmp eax, 2
jne .Lt_0273
mov eax, offset _Lt_0274
mov dword ptr [ebp-4], eax
jmp .Lt_0272
.Lt_0273:
mov eax, offset _Lt_0275
mov dword ptr [ebp-4], eax
.Lt_0272:
jmp .Lt_01E3
.Lt_0276:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 3
jne .Lt_0278
mov ebx, offset _Lt_0279
mov dword ptr [ebp-4], ebx
jmp .Lt_0277
.Lt_0278:
mov ebx, offset _Lt_027A
mov dword ptr [ebp-4], ebx
.Lt_0277:
jmp .Lt_01E3
.Lt_01E4:
cmp dword ptr [ebp-8], 81
ja .Lt_01E3
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.LT_027B+ebx*4]
_.LT_027B:
.int .Lt_01E6
.int .Lt_01EA
.int .Lt_01EE
.int .Lt_01F2
.int .Lt_01F6
.int .Lt_01FA
.int .Lt_01FE
.int .Lt_0202
.int .Lt_0206
.int .Lt_020A
.int .Lt_020E
.int .Lt_0212
.int .Lt_0216
.int .Lt_021A
.int .Lt_021E
.int .Lt_0222
.int .Lt_0226
.int .Lt_022A
.int .Lt_025C
.int .Lt_025E
.int .Lt_0260
.int .Lt_0262
.int .Lt_026A
.int .Lt_0268
.int .Lt_026C
.int .Lt_0271
.int .Lt_0276
.int .Lt_01E3
.int .Lt_01E8
.int .Lt_01EC
.int .Lt_01F0
.int .Lt_01F4
.int .Lt_01F8
.int .Lt_01FC
.int .Lt_0200
.int .Lt_0204
.int .Lt_0208
.int .Lt_020C
.int .Lt_0210
.int .Lt_0214
.int .Lt_0218
.int .Lt_021C
.int .Lt_0220
.int .Lt_0224
.int .Lt_0228
.int .Lt_022C
.int .Lt_022E
.int .Lt_0230
.int .Lt_0232
.int .Lt_0234
.int .Lt_0236
.int .Lt_01E3
.int .Lt_0238
.int .Lt_023C
.int .Lt_023A
.int .Lt_01E3
.int .Lt_023E
.int .Lt_0246
.int .Lt_024E
.int .Lt_0250
.int .Lt_0252
.int .Lt_0254
.int .Lt_0256
.int .Lt_0258
.int .Lt_01E3
.int .Lt_025A
.int .Lt_01E3
.int .Lt_01E3
.int .Lt_024C
.int .Lt_024A
.int .Lt_0248
.int .Lt_0240
.int .Lt_0242
.int .Lt_0244
.int .Lt_01E3
.int .Lt_01E3
.int .Lt_0264
.int .Lt_0266
.int .Lt_025C
.int .Lt_025E
.int .Lt_0260
.int .Lt_0262
.Lt_01E3:
.Lt_01E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMANGLEPROC:
push ebp
mov ebp, esp
sub esp, 56
push ebx
.Lt_027C:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-28], 0
push dword ptr [ebp+8]
call _HDOCPPMANGLING
add esp, 4
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
call _FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
mov eax, dword ptr [_ENV+104]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-24], ebx
cmp dword ptr [_ENV+104], 2
jne .Lt_027F
push 0
push 2
push offset _Lt_0185
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
cmp dword ptr [ebp-24], 0
je .Lt_0281
push 0
push 2
push offset _Lt_0282
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-28], -1
.Lt_0281:
.Lt_0280:
mov ebx, dword ptr [_ENV+108]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 0
je .Lt_0286
.Lt_0287:
cmp dword ptr [ebp-36], 1
je .Lt_0286
.Lt_0288:
cmp dword ptr [ebp-36], 4
jne .Lt_0285
.Lt_0286:
cmp dword ptr [ebp-28], 0
jne .Lt_028A
push 0
push 2
push offset _Lt_0282
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-28], -1
.Lt_028A:
.Lt_0289:
push 0
push 2
push offset _Lt_028B
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_0285:
.Lt_0283:
.Lt_027F:
.Lt_027E:
call _HADDUNDERSCORE
test eax, eax
je .Lt_028D
push 0
push 2
push offset _Lt_00D3
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_028D:
.Lt_028C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-20]
je .Lt_028F
push 0
push 3
push offset _Lt_0192
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_028F:
.Lt_028E:
cmp dword ptr [ebp-20], 0
je .Lt_0291
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 2048
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push eax
push -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
push dword ptr [ebx]
lea ebx, [ebp-12]
push ebx
call _HMANGLENAMESPACE
add esp, 16
.Lt_0291:
.Lt_0290:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 512
test eax, eax
je .Lt_0293
cmp dword ptr [ebp-20], 0
je .Lt_0295
push 0
push -1
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call _fb_StrLen
add esp, 8
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0295:
.Lt_0294:
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0292
.Lt_0293:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .Lt_0298
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
cmp dword ptr [eax+40], 27
jne .Lt_029A
push 0
push 3
push offset _Lt_029B
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
lea eax, [ebp-12]
push eax
call _SYMBMANGLETYPE
add esp, 16
jmp .Lt_0299
.Lt_029A:
push 0
push -1
push 0
push dword ptr [ebp+8]
call _HGETOPERATORNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0299:
jmp .Lt_0292
.Lt_0298:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .Lt_029D
push 0
push 3
push offset _Lt_029E
push -1
lea ebx, [ebp-12]
push ebx
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0292
.Lt_029D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 8
test eax, eax
je .Lt_029F
push 0
push 3
push offset _Lt_02A0
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0292
.Lt_029F:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .Lt_02A2
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-32], eax
jmp .Lt_02A1
.Lt_02A2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-32], ebx
.Lt_02A1:
cmp dword ptr [ebp-20], 0
je .Lt_02A4
push 0
push dword ptr [ebp-32]
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_02A6
add dword ptr [ebp-16], 7
.Lt_02A6:
.Lt_02A5:
push 0
push -1
push dword ptr [ebp-16]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_02A4:
.Lt_02A3:
push 0
push -1
push 0
push dword ptr [ebp-32]
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_02A9
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
jne .Lt_02AB
push 0
push 8
push offset _Lt_02AC
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_02AA
.Lt_02AB:
push 0
push 8
push offset _Lt_02AD
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_02AA:
.Lt_02A9:
.Lt_02A8:
.Lt_0292:
cmp dword ptr [ebp-20], 0
je .Lt_02AF
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [_SYMB+98352]
cmp dword ptr [ebx], eax
je .Lt_02B1
push 0
push 2
push offset _Lt_009E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_02B1:
.Lt_02B0:
push -1
push dword ptr [ebp+8]
lea eax, [ebp-12]
push eax
call _HGETPROCPARAMSTYPECODE
add esp, 12
.Lt_02AF:
.Lt_02AE:
cmp dword ptr [ebp-24], 0
je .Lt_02B3
push 0
push 2
push offset _Lt_0185
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+8]
call _SYMBPROCCALCSTDCALLSUFFIXN
add esp, 4
push edx
push eax
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_02B3:
.Lt_02B2:
cmp dword ptr [ebp-28], 0
je .Lt_02B5
push 0
push 2
push offset _Lt_0282
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_02B5:
.Lt_02B4:
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call _SYMBSETMANGLEDID
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_027D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0007:	.ascii	".\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
.balign 4
	.lcomm	_CTX,92

.section .data
.balign 4
_Lt_0066:	.ascii	"tmp$\0"
.balign 4
_Lt_0068:	.ascii	"Lt_\0"
.balign 4
_Lt_0070:	.ascii	"label$\0"
.balign 4
_Lt_0072:	.ascii	".Lt_\0"
.balign 4
_Lt_0076:	.ascii	"LP_\0"
.balign 4
_Lt_009C:	.ascii	"I\0"
.balign 4
_Lt_009E:	.ascii	"E\0"
.balign 4
_Lt_00B2:	.ascii	"$\0"
.balign 4
_Lt_00C3:	.ascii	"S\0"
.balign 4
_Lt_00D3:	.ascii	"_\0"
.balign 4
_Lt_00D9:	.ascii	"8FBSTRING\0"
.balign 4
_Lt_00E1:	.ascii	"l\0"
.balign 4
_Lt_00E4:	.ascii	"m\0"
.balign 4
_Lt_00E8:	.ascii	"u7INTEGER\0"
.balign 4
_Lt_00EB:	.ascii	"u8UINTEGER\0"
.balign 4
_Lt_00F4:	.ascii	"v\0"
.balign 4
_Lt_00F5:	.ascii	"b\0"
.balign 4
_Lt_00F6:	.ascii	"a\0"
.balign 4
_Lt_00F7:	.ascii	"h\0"
.balign 4
_Lt_00F8:	.ascii	"c\0"
.balign 4
_Lt_00F9:	.ascii	"s\0"
.balign 4
_Lt_00FA:	.ascii	"t\0"
.balign 4
_Lt_00FB:	.ascii	"w\0"
.balign 4
_Lt_00FC:	.ascii	"i\0"
.balign 4
_Lt_00FD:	.ascii	"j\0"
.balign 4
_Lt_00FE:	.ascii	"x\0"
.balign 4
_Lt_00FF:	.ascii	"y\0"
.balign 4
_Lt_0100:	.ascii	"f\0"
.balign 4
_Lt_0101:	.ascii	"d\0"
.balign 4
_Lt_010E:	.ascii	"R\0"
.balign 4
_Lt_0114:	.ascii	"K\0"
.balign 4
_Lt_0118:	.ascii	"P\0"
.balign 4
_Lt_0126:	.ascii	"A1_\0"
.balign 4
_Lt_012C:	.ascii	"St\0"
.balign 4
_Lt_0135:	.ascii	"N\0"
.balign 4
_Lt_0140:	.ascii	"F\0"
.balign 4
_Lt_0157:	.ascii	"z\0"
.balign 4
_Lt_0185:	.ascii	"@\0"
.balign 4
_Lt_018F:	.ascii	"_imp__\0"
.balign 4
_Lt_0192:	.ascii	"_Z\0"
.balign 4
_Lt_0195:	.ascii	"TS\0"
.balign 4
_Lt_0197:	.ascii	"TV\0"
.balign 4
_Lt_019A:	.ascii	"%\0"
.balign 4
_Lt_01E7:	.ascii	"aS\0"
.balign 4
_Lt_01E9:	.ascii	"pl\0"
.balign 4
_Lt_01EB:	.ascii	"pL\0"
.balign 4
_Lt_01ED:	.ascii	"mi\0"
.balign 4
_Lt_01EF:	.ascii	"mI\0"
.balign 4
_Lt_01F1:	.ascii	"ml\0"
.balign 4
_Lt_01F3:	.ascii	"mL\0"
.balign 4
_Lt_01F5:	.ascii	"dv\0"
.balign 4
_Lt_01F7:	.ascii	"dV\0"
.balign 4
_Lt_01F9:	.ascii	"v24idiv\0"
.balign 4
_Lt_01FB:	.ascii	"v28selfidiv\0"
.balign 4
_Lt_01FD:	.ascii	"rm\0"
.balign 4
_Lt_01FF:	.ascii	"rM\0"
.balign 4
_Lt_0201:	.ascii	"an\0"
.balign 4
_Lt_0203:	.ascii	"aN\0"
.balign 4
_Lt_0205:	.ascii	"or\0"
.balign 4
_Lt_0207:	.ascii	"oR\0"
.balign 4
_Lt_0209:	.ascii	"aa\0"
.balign 4
_Lt_020B:	.ascii	"aA\0"
.balign 4
_Lt_020D:	.ascii	"oo\0"
.balign 4
_Lt_020F:	.ascii	"oO\0"
.balign 4
_Lt_0211:	.ascii	"eo\0"
.balign 4
_Lt_0213:	.ascii	"eO\0"
.balign 4
_Lt_0215:	.ascii	"v23eqv\0"
.balign 4
_Lt_0217:	.ascii	"v27selfeqv\0"
.balign 4
_Lt_0219:	.ascii	"v23imp\0"
.balign 4
_Lt_021B:	.ascii	"v27selfimp\0"
.balign 4
_Lt_021D:	.ascii	"ls\0"
.balign 4
_Lt_021F:	.ascii	"lS\0"
.balign 4
_Lt_0221:	.ascii	"rs\0"
.balign 4
_Lt_0223:	.ascii	"rS\0"
.balign 4
_Lt_0225:	.ascii	"v23pow\0"
.balign 4
_Lt_0227:	.ascii	"v27selfpow\0"
.balign 4
_Lt_0229:	.ascii	"v23cat\0"
.balign 4
_Lt_022B:	.ascii	"v27selfcat\0"
.balign 4
_Lt_022D:	.ascii	"eq\0"
.balign 4
_Lt_022F:	.ascii	"gt\0"
.balign 4
_Lt_0231:	.ascii	"lt\0"
.balign 4
_Lt_0233:	.ascii	"ne\0"
.balign 4
_Lt_0235:	.ascii	"ge\0"
.balign 4
_Lt_0237:	.ascii	"le\0"
.balign 4
_Lt_0239:	.ascii	"co\0"
.balign 4
_Lt_023B:	.ascii	"ng\0"
.balign 4
_Lt_023D:	.ascii	"ps\0"
.balign 4
_Lt_023F:	.ascii	"v13abs\0"
.balign 4
_Lt_0241:	.ascii	"v13fix\0"
.balign 4
_Lt_0243:	.ascii	"v14frac\0"
.balign 4
_Lt_0245:	.ascii	"v13len\0"
.balign 4
_Lt_0247:	.ascii	"v13sgn\0"
.balign 4
_Lt_0249:	.ascii	"v13int\0"
.balign 4
_Lt_024B:	.ascii	"v13exp\0"
.balign 4
_Lt_024D:	.ascii	"v13log\0"
.balign 4
_Lt_024F:	.ascii	"v13sin\0"
.balign 4
_Lt_0251:	.ascii	"v14asin\0"
.balign 4
_Lt_0253:	.ascii	"v13cos\0"
.balign 4
_Lt_0255:	.ascii	"v14acos\0"
.balign 4
_Lt_0257:	.ascii	"v13tan\0"
.balign 4
_Lt_0259:	.ascii	"v13atn\0"
.balign 4
_Lt_025B:	.ascii	"v13sqr\0"
.balign 4
_Lt_025D:	.ascii	"nw\0"
.balign 4
_Lt_025F:	.ascii	"na\0"
.balign 4
_Lt_0261:	.ascii	"dl\0"
.balign 4
_Lt_0263:	.ascii	"da\0"
.balign 4
_Lt_0265:	.ascii	"de\0"
.balign 4
_Lt_0267:	.ascii	"pt\0"
.balign 4
_Lt_0269:	.ascii	"ix\0"
.balign 4
_Lt_026B:	.ascii	"ad\0"
.balign 4
_Lt_026F:	.ascii	"v13for\0"
.balign 4
_Lt_0270:	.ascii	"v03for\0"
.balign 4
_Lt_0274:	.ascii	"v14step\0"
.balign 4
_Lt_0275:	.ascii	"v04step\0"
.balign 4
_Lt_0279:	.ascii	"v24next\0"
.balign 4
_Lt_027A:	.ascii	"v14next\0"
.balign 4
_Lt_0282:	.ascii	"\"\0"
.balign 4
_Lt_028B:	.ascii	"\1""\0"
.balign 4
_Lt_029B:	.ascii	"cv\0"
.balign 4
_Lt_029E:	.ascii	"C1\0"
.balign 4
_Lt_02A0:	.ascii	"D1\0"
.balign 4
_Lt_02AC:	.ascii	"__set__\0"
.balign 4
_Lt_02AD:	.ascii	"__get__\0"

.section .ctors
.int _fb_ctor__symbzmangling
