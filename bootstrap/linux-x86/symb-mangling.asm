	.intel_syntax noprefix

.section .text
.balign 16

.globl SYMBMANGLEINIT
SYMBMANGLEINIT:
.type SYMBMANGLEINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_005D:
sub esp, 4
push 12
push 96
lea eax, [CTX]
push eax
call FLISTINIT
add esp, 16
mov dword ptr [CTX+56], 0
mov dword ptr [CTX+80], 0
mov dword ptr [CTX+84], 0
mov dword ptr [CTX+88], 0
.Lt_005E:
mov esp, ebp
pop ebp
ret
.size SYMBMANGLEINIT, .-SYMBMANGLEINIT
.balign 16

.globl SYMBMANGLEEND
SYMBMANGLEEND:
.type SYMBMANGLEEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_005F:
sub esp, 12
lea eax, [CTX]
push eax
call FLISTEND
add esp, 16
.Lt_0060:
mov esp, ebp
pop ebp
ret
.size SYMBMANGLEEND, .-SYMBMANGLEEND
.balign 16

.globl SYMBUNIQUEID
SYMBUNIQUEID:
.type SYMBUNIQUEID, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0061:
mov eax, dword ptr [ENV+104]
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
je .Lt_0064
sub esp, 12
push 0
push 5
push offset Lt_0065
push 17
lea ebx, [CTX+60]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [CTX+80]
call fb_IntToStr
add esp, 16
push eax
push 17
lea eax, [CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0063
.Lt_0064:
sub esp, 12
push 0
push 4
push offset Lt_0067
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [CTX+80]
call HHEXUINT
add esp, 16
push eax
push 17
lea eax, [CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
.Lt_0063:
inc dword ptr [CTX+80]
lea eax, [CTX+60]
mov dword ptr [ebp-4], eax
.Lt_0062:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBUNIQUEID, .-SYMBUNIQUEID
.balign 16

.globl SYMBUNIQUELABEL
SYMBUNIQUELABEL:
.type SYMBUNIQUELABEL, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_006B:
cmp dword ptr [ENV+104], 1
jne .Lt_006E
sub esp, 12
push 0
push 7
push offset Lt_006F
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push dword ptr [CTX+84]
call fb_IntToStr
add esp, 16
push eax
push 17
lea eax, [CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
inc dword ptr [CTX+84]
jmp .Lt_006D
.Lt_006E:
sub esp, 12
push 0
push 5
push offset Lt_0071
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [CTX+80]
call HHEXUINT
add esp, 16
push eax
push 17
lea eax, [CTX+60]
push eax
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
inc dword ptr [CTX+80]
.Lt_006D:
lea eax, [CTX+60]
mov dword ptr [ebp-4], eax
.Lt_006C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size SYMBUNIQUELABEL, .-SYMBUNIQUELABEL
.balign 16

.globl SYMBMAKEPROFILELABELNAME
SYMBMAKEPROFILELABELNAME:
.type SYMBMAKEPROFILELABELNAME, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0073:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [CTX+88]
call HHEXUINT
add esp, 16
push eax
push 4
push offset Lt_0075
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push 17
lea eax, [CTX+60]
push eax
call fb_StrAssign
add esp, 32
inc dword ptr [CTX+88]
lea eax, [CTX+60]
mov dword ptr [ebp-4], eax
.Lt_0074:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size SYMBMAKEPROFILELABELNAME, .-SYMBMAKEPROFILELABELNAME
.balign 16

.globl SYMBGETDBGNAME
SYMBGETDBGNAME:
.type SYMBGETDBGNAME, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0077:
sub esp, 12
push dword ptr [ebp+8]
call HDOCPPMANGLING
add esp, 16
test eax, eax
je .Lt_007A
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_007C
.Lt_007E:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0080
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-12], ebx
.Lt_0080:
.Lt_007F:
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebp-4], ebx
jmp .Lt_0078
jmp .Lt_007B
.Lt_0081:
sub esp, 12
push dword ptr [ebp+8]
call SYMBGETMANGLEDNAME
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0078
jmp .Lt_007B
.Lt_007C:
mov eax, dword ptr [ebp-8]
add eax, 4294967288
cmp eax, 3
ja .Lt_0081
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0082+eax*4-32]
.LT_0082:
.int .Lt_007E
.int .Lt_007E
.int .Lt_007E
.int .Lt_007E
.Lt_007B:
.Lt_007A:
.Lt_0079:
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
je .Lt_0084
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx+20], 0
je .Lt_0086
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ecx+20]
mov dword ptr [ebp-4], ebx
jmp .Lt_0078
.Lt_0086:
.Lt_0085:
.Lt_0084:
.Lt_0083:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+16]
mov dword ptr [ebp-4], ecx
.Lt_0078:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBGETDBGNAME, .-SYMBGETDBGNAME
.balign 16

.globl SYMBSETNAME
SYMBSETNAME:
.type SYMBSETNAME, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0089:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
je .Lt_008C
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
lea eax, [SYMB+98608]
push eax
call POOLDELITEM
add esp, 16
.Lt_008C:
.Lt_008B:
sub esp, 8
push 0
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_008E
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
jmp .Lt_008D
.Lt_008E:
sub esp, 8
mov eax, dword ptr [ebp-4]
inc eax
push eax
lea eax, [SYMB+98608]
push eax
call POOLNEWITEM
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], eax
sub esp, 12
push 0
push 0
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
call fb_StrAssign
add esp, 32
.Lt_008D:
.Lt_008A:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBSETNAME, .-SYMBSETNAME
.balign 16

.globl SYMBGETMANGLEDNAME
SYMBGETMANGLEDNAME:
.type SYMBGETMANGLEDNAME, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_009F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
je .Lt_00A2
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
jmp .Lt_00A0
.Lt_00A2:
.Lt_00A1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_00A4
.Lt_00A6:
sub esp, 12
push dword ptr [ebp+8]
call HMANGLEPROC
add esp, 16
jmp .Lt_00A3
.Lt_00A7:
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
call HMANGLENAMESPACE
add esp, 16
sub esp, 8
push dword ptr [ebp+8]
lea ebx, [ebp-20]
push ebx
call HMANGLEUDTID
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
lea ebx, [SYMB+98352]
cmp dword ptr [eax], ebx
je .Lt_00A9
sub esp, 12
push 0
push 2
push offset Lt_009D
push -1
lea ebx, [ebp-20]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_00A9:
.Lt_00A8:
sub esp, 8
lea ebx, [ebp-20]
push ebx
push dword ptr [ebp+8]
call SYMBSETMANGLEDID
add esp, 16
sub esp, 12
lea ebx, [ebp-20]
push ebx
call fb_StrDelete
add esp, 16
jmp .Lt_00A3
.Lt_00AA:
sub esp, 12
push dword ptr [ebp+8]
call HMANGLEVARIABLE
add esp, 16
jmp .Lt_00A3
.Lt_00AB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
mov dword ptr [ebp-4], eax
jmp .Lt_00A0
jmp .Lt_00A3
.Lt_00A4:
mov eax, dword ptr [ebp-8]
add eax, 4294967295
cmp eax, 13
ja .Lt_00AB
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_00AC+eax*4-4]
.LT_00AC:
.int .Lt_00AA
.int .Lt_00AB
.int .Lt_00A6
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00A7
.int .Lt_00AB
.int .Lt_00AB
.int .Lt_00A7
.Lt_00A3:
call SYMBMANGLERESETABBREV
cmp dword ptr [ENV+104], 1
jne .Lt_00AE
mov eax, dword ptr [ENV+888]
and eax, 524288
test eax, eax
je .Lt_00B0
sub esp, 4
push 36
push 46
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call HREPLACECHAR
add esp, 16
.Lt_00B0:
.Lt_00AF:
.Lt_00AE:
.Lt_00AD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-4], ebx
.Lt_00A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBGETMANGLEDNAME, .-SYMBGETMANGLEDNAME
.balign 16

.globl SYMBMANGLERESETABBREV
SYMBMANGLERESETABBREV:
.type SYMBMANGLERESETABBREV, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00B2:
sub esp, 12
lea eax, [CTX]
push eax
call FLISTRESET
add esp, 16
mov dword ptr [CTX+56], 0
.Lt_00B3:
mov esp, ebp
pop ebp
ret
.size SYMBMANGLERESETABBREV, .-SYMBMANGLERESETABBREV
.balign 16

.globl HMANGLEBUILTINTYPE
HMANGLEBUILTINTYPE:
.type HMANGLEBUILTINTYPE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00D4:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
cmp dword ptr [ebp+8], 17
jne .Lt_00D7
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov eax, offset Lt_00D8
mov dword ptr [ebp-4], eax
jmp .Lt_00D5
.Lt_00D7:
.Lt_00D6:
call FBIS64BIT
mov ebx, dword ptr [ENV+260]
and ebx, 1
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_00DA
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
test ebx, ebx
je .Lt_00DC
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
sar ebx, 20
mov dword ptr [ebp+8], ebx
cmp dword ptr [ebp+8], 8
jne .Lt_00DE
.Lt_00DF:
mov ebx, offset Lt_00E0
mov dword ptr [ebp-4], ebx
jmp .Lt_00D5
jmp .Lt_00DD
.Lt_00DE:
cmp dword ptr [ebp+8], 9
jne .Lt_00E1
.Lt_00E2:
mov ebx, offset Lt_00E3
mov dword ptr [ebp-4], ebx
jmp .Lt_00D5
.Lt_00E1:
.Lt_00DD:
jmp .Lt_00DB
.Lt_00DC:
cmp dword ptr [ebp+8], 8
jne .Lt_00E5
.Lt_00E6:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], -1
mov ebx, offset Lt_00E7
mov dword ptr [ebp-4], ebx
jmp .Lt_00D5
jmp .Lt_00E4
.Lt_00E5:
cmp dword ptr [ebp+8], 9
jne .Lt_00E8
.Lt_00E9:
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], -1
mov ebx, offset Lt_00EA
mov dword ptr [ebp-4], ebx
jmp .Lt_00D5
.Lt_00E8:
.Lt_00E4:
.Lt_00DB:
jmp .Lt_00D9
.Lt_00DA:
cmp dword ptr [ebp+8], 8
jne .Lt_00EC
.Lt_00ED:
mov ebx, offset Lt_00E0
mov dword ptr [ebp-4], ebx
jmp .Lt_00D5
jmp .Lt_00EB
.Lt_00EC:
cmp dword ptr [ebp+8], 9
jne .Lt_00EE
.Lt_00EF:
mov ebx, offset Lt_00E3
mov dword ptr [ebp-4], ebx
jmp .Lt_00D5
.Lt_00EE:
.Lt_00EB:
.Lt_00D9:
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
test ebx, ebx
je .Lt_00F1
mov ebx, dword ptr [ebp+8]
and ebx, 32505856
sar ebx, 20
mov dword ptr [ebp+8], ebx
.Lt_00F1:
.Lt_00F0:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [Lt_0102+ebx*4]
mov dword ptr [ebp-4], eax
.Lt_00D5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HMANGLEBUILTINTYPE, .-HMANGLEBUILTINTYPE

.section .data
.balign 4
Lt_0102:
.int Lt_00F3
.int Lt_00F4
.int Lt_00F5
.int Lt_00F6
.int Lt_00F7
.int Lt_00F8
.int Lt_00F9
.int Lt_00FA
.long 0
.long 0
.long 0
.int Lt_00FB
.int Lt_00FC
.int Lt_00FD
.int Lt_00FE
.int Lt_00FF
.int Lt_0100
.long 0
.long 0
.int Lt_00F7
.long 0
.long 0
.long 0
.long 0
.long 0
.skip 4,0

.section .text
.balign 16

.globl SYMBMANGLETYPE
SYMBMANGLETYPE:
.type SYMBMANGLETYPE, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_0103:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVFIND
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], -1
je .Lt_0106
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call HABBREVGET
add esp, 16
jmp .Lt_0104
.Lt_0106:
.Lt_0105:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_0107
mov dword ptr [ebp-16], 24
jmp .Lt_014C
.Lt_0107:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_014C:
cmp dword ptr [ebp-16], 23
jne .Lt_010A
mov eax, dword ptr [ebp+12]
and eax, 2147483647
and eax, -512
or eax, 20
mov dword ptr [ebp+12], eax
.Lt_010A:
.Lt_0109:
mov eax, dword ptr [ebp+12]
and eax, 524288
test eax, eax
je .Lt_010C
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_010D
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+20]
or eax, 4
or eax, 1
push eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, -524289
push eax
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .Lt_0104
.Lt_010C:
.Lt_010B:
mov eax, dword ptr [ebp+12]
and eax, 512
test eax, eax
je .Lt_0110
mov eax, dword ptr [ebp+20]
and eax, 1
test eax, eax
je .Lt_0112
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0113
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0112:
.Lt_0111:
mov eax, dword ptr [ebp+20]
and eax, -2
push eax
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
and eax, -513
push eax
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .Lt_0104
.Lt_0110:
.Lt_010F:
mov eax, dword ptr [ebp+12]
and eax, 480
test eax, eax
je .Lt_0116
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0117
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
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
call SYMBMANGLETYPE
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .Lt_0104
.Lt_0116:
.Lt_0115:
mov eax, dword ptr [ebp+12]
and eax, 32505856
test eax, eax
je .Lt_011A
mov eax, dword ptr [ebp+12]
and eax, 31
cmp eax, 20
jne .Lt_011C
mov eax, dword ptr [ebp+12]
and eax, 32505856
sar eax, 20
cmp eax, 19
jne .Lt_011E
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call SYMBGETVALISTTYPE
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 3
jne .Lt_0121
.Lt_0122:
mov eax, dword ptr [ebp+20]
and eax, 6
test eax, eax
je .Lt_0124
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_0125
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
jmp .Lt_0123
.Lt_0124:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0117
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0123:
and dword ptr [ebp+12], -32505857
jmp .Lt_011F
.Lt_0121:
cmp dword ptr [ebp-20], 4
je .Lt_0129
.Lt_012A:
cmp dword ptr [ebp-20], 5
jne .Lt_0128
.Lt_0129:
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_012B
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
and dword ptr [ebp+12], -32505857
.Lt_0128:
.Lt_011F:
.Lt_011E:
.Lt_011D:
.Lt_011C:
.Lt_011B:
.Lt_011A:
.Lt_0119:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 20
je .Lt_0130
.Lt_0131:
cmp dword ptr [ebp-20], 10
jne .Lt_012F
.Lt_0130:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
lea eax, [SYMB+98352]
cmp dword ptr [ebp-4], eax
jne .Lt_0133
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HMANGLEUDTID
add esp, 16
jmp .Lt_0132
.Lt_0133:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0134
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
push 0
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
push dword ptr [eax+28]
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HMANGLEUDTID
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_009D
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0132:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .Lt_012D
.Lt_012F:
cmp dword ptr [ebp-20], 21
jne .Lt_0137
.Lt_0138:
lea eax, [SYMB+98352]
cmp dword ptr [ebp+16], eax
jne .Lt_013A
jmp .Lt_0104
.Lt_013A:
.Lt_0139:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+140]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_013C
push 0
push dword ptr [ebp-4]
push 21
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
.Lt_013C:
.Lt_013B:
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HMANGLEUDTID
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .Lt_012D
.Lt_0137:
cmp dword ptr [ebp-20], 22
jne .Lt_013D
.Lt_013E:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_013F
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
je .Lt_0142
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_010D
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea ebx, [ebp-56]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0142:
.Lt_0141:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+28]
and ebx, 512
test ebx, ebx
je .Lt_0145
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0113
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea ebx, [ebp-56]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0145:
.Lt_0144:
push 0
mov eax, dword ptr [ebp+16]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+16]
push dword ptr [eax+28]
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
sub esp, 4
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call HGETPROCPARAMSTYPECODE
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_009D
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
jmp .Lt_012D
.Lt_013D:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-8], 0
je .Lt_014B
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HABBREVADD
add esp, 16
.Lt_014B:
.Lt_014A:
.Lt_0148:
.Lt_012D:
.Lt_0104:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBMANGLETYPE, .-SYMBMANGLETYPE
.balign 16

.globl SYMBMANGLEPARAM
SYMBMANGLEPARAM:
.type SYMBMANGLEPARAM, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_014D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
jmp .Lt_0150
.Lt_0152:
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+28]
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
jmp .Lt_014F
.Lt_0153:
push 0
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+32]
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
or eax, 524288
push eax
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
jmp .Lt_014F
.Lt_0154:
push 1
mov eax, dword ptr [ebp+12]
push dword ptr [eax+72]
push 524308
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
jmp .Lt_014F
.Lt_0155:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0156
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
jmp .Lt_014F
.Lt_0150:
mov eax, dword ptr [ebp-4]
add eax, 4294967295
cmp eax, 3
ja .Lt_014F
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_0158+eax*4-4]
.LT_0158:
.int .Lt_0152
.int .Lt_0153
.int .Lt_0154
.int .Lt_0155
.Lt_014F:
.Lt_014E:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBMANGLEPARAM, .-SYMBMANGLEPARAM
.balign 16
fb_ctor__symbzmangling:
.type fb_ctor__symbzmangling, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__symbzmangling, .-fb_ctor__symbzmangling
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
SYMBSETMANGLEDID:
.type SYMBSETMANGLEDID, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_008F:
sub esp, 12
sub esp, 12
push -1
push dword ptr [ebp+12]
call fb_StrLen
add esp, 20
inc eax
push eax
call XALLOCATE
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+24], eax
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
call fb_StrAssign
add esp, 32
.Lt_0090:
pop ebx
mov esp, ebp
pop ebp
ret
.size SYMBSETMANGLEDID, .-SYMBSETMANGLEDID
.balign 16
HMANGLEUDTID:
.type HMANGLEUDTID, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0091:
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+20], 0
je .Lt_0094
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
sub esp, 12
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+20]
call fb_StrLen
add esp, 20
push eax
call fb_IntToStr
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
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
sub esp, 8
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
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
jmp .Lt_0093
.Lt_0094:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
sub esp, 12
push 0
mov eax, dword ptr [ebp+12]
push dword ptr [eax+16]
call fb_StrLen
add esp, 20
push eax
call fb_IntToStr
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
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
sub esp, 8
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
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0093:
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
je .Lt_009A
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_009B
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ecx, [ebp-20]
push ecx
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
sub esp, 4
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
push dword ptr [ebp+12]
call SYMBGETDESCTYPEARRAYDTYPE
add esp, 16
push 1
push dword ptr [ebp-8]
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call SYMBMANGLETYPE
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_009D
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_009A:
.Lt_0099:
.Lt_0092:
pop ebx
mov esp, ebp
pop ebp
ret
.size HMANGLEUDTID, .-HMANGLEUDTID
.balign 16
HABBREVFIND:
.type HABBREVFIND, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B4:
cmp dword ptr [CTX+56], 0
jne .Lt_00B7
mov dword ptr [ebp-4], -1
jmp .Lt_00B5
.Lt_00B7:
.Lt_00B6:
sub esp, 12
lea eax, [CTX]
push eax
call FLISTGETHEAD
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_00B8:
cmp dword ptr [ebp-8], 0
je .Lt_00B9
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
cmp dword ptr [eax+8], ebx
jne .Lt_00BB
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebx+4], eax
jne .Lt_00BD
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
jmp .Lt_00B5
.Lt_00BD:
.Lt_00BC:
.Lt_00BB:
.Lt_00BA:
sub esp, 12
push dword ptr [ebp-8]
call FLISTGETNEXT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00B8
.Lt_00B9:
mov dword ptr [ebp-4], -1
.Lt_00B5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HABBREVFIND, .-HABBREVFIND
.balign 16
HABBREVADD:
.type HABBREVADD, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BE:
sub esp, 12
lea eax, [CTX]
push eax
call FLISTNEWITEM
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [CTX+56]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
inc dword ptr [CTX+56]
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_00BF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HABBREVADD, .-HABBREVADD
.balign 16
HABBREVGET:
.type HABBREVGET, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_00C0:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00C2
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+12], 0
jle .Lt_00C5
cmp dword ptr [ebp+12], 10
jg .Lt_00C7
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
add ebx, 48
mov eax, ebx
push eax
push 1
call fb_CHR
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
jmp .Lt_00C6
.Lt_00C7:
cmp dword ptr [ebp+12], 33
jg .Lt_00C9
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+12]
add eax, -11
mov ebx, eax
add ebx, 65
mov eax, ebx
push eax
push 1
call fb_CHR
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
jmp .Lt_00C6
.Lt_00C9:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+12]
mov ecx, 33
cdq
idiv ecx
push eax
push 1
call fb_CHR
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
mov ecx, 33
mov eax, dword ptr [ebp+12]
cdq
idiv ecx
mov eax, edx
mov dword ptr [ebp+12], eax
cmp dword ptr [ebp+12], 10
jg .Lt_00CE
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+12]
dec eax
mov ebx, eax
add ebx, 48
mov eax, ebx
push eax
push 1
call fb_CHR
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
jmp .Lt_00CD
.Lt_00CE:
cmp dword ptr [ebp+12], 33
jg .Lt_00D0
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 8
mov eax, dword ptr [ebp+12]
add eax, -11
mov ebx, eax
add ebx, 65
mov eax, ebx
push eax
push 1
call fb_CHR
add esp, 16
push eax
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_00D0:
.Lt_00CD:
.Lt_00C6:
.Lt_00C5:
.Lt_00C4:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00D2
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_00C1:
pop ebx
mov esp, ebp
pop ebp
ret
.size HABBREVGET, .-HABBREVGET
.balign 16
HADDUNDERSCORE:
.type HADDUNDERSCORE, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0159:
cmp dword ptr [ENV+104], 1
jne .Lt_015C
mov dword ptr [ebp-4], 0
jmp .Lt_015B
.Lt_015C:
mov eax, dword ptr [ENV+268]
mov dword ptr [ebp-4], eax
.Lt_015B:
.Lt_015A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HADDUNDERSCORE, .-HADDUNDERSCORE
.balign 16
HDOCPPMANGLING:
.type HDOCPPMANGLING, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_015D:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
cmp ebx, 4
jne .Lt_0160
mov dword ptr [ebp-4], -1
jmp .Lt_015E
.Lt_0160:
.Lt_015F:
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
je .Lt_0162
mov dword ptr [ebp-4], 0
jmp .Lt_015E
.Lt_0162:
.Lt_0161:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+140]
lea ecx, [SYMB+98352]
cmp dword ptr [eax], ecx
je .Lt_0164
mov dword ptr [ebp-4], -1
jmp .Lt_015E
.Lt_0164:
.Lt_0163:
mov ecx, dword ptr [ebp+8]
cmp dword ptr [ecx], 3
jne .Lt_0166
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+8]
and eax, 1
test eax, eax
je .Lt_0168
mov dword ptr [ebp-4], -1
jmp .Lt_015E
.Lt_0168:
.Lt_0167:
.Lt_0166:
.Lt_0165:
mov dword ptr [ebp-4], 0
.Lt_015E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HDOCPPMANGLING, .-HDOCPPMANGLING
.balign 16
HMANGLENAMESPACE:
.type HMANGLENAMESPACE, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0169:
cmp dword ptr [ebp+12], 0
jne .Lt_016D
jmp .Lt_016A
.Lt_016D:
.Lt_016C:
lea eax, [SYMB+98352]
cmp dword ptr [ebp+12], eax
jne .Lt_016F
jmp .Lt_016A
.Lt_016F:
.Lt_016E:
cmp dword ptr [ebp+16], 0
je .Lt_0171
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+12]
push dword ptr [eax+28]
lea eax, [ebp-28]
push eax
call SYMBMANGLETYPE
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.Lt_0171:
.Lt_0170:
mov dword ptr [ebp-4], -1
.Lt_0172:
inc dword ptr [ebp-4]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [Lt_02B9+eax*4], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+140]
mov ebx, dword ptr [eax]
mov dword ptr [ebp+12], ebx
.Lt_0174:
lea ebx, [SYMB+98352]
cmp dword ptr [ebp+12], ebx
jne .Lt_0172
.Lt_0173:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0134
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp+20], 0
je .Lt_0177
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_0113
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
.Lt_0177:
.Lt_0176:
.Lt_0179:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [Lt_02B9+eax*4]
mov dword ptr [ebp+12], ebx
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HMANGLEUDTID
add esp, 16
dec dword ptr [ebp-4]
.Lt_017B:
cmp dword ptr [ebp-4], 0
jge .Lt_0179
.Lt_017A:
.Lt_016A:
pop ebx
mov esp, ebp
pop ebp
ret
.size HMANGLENAMESPACE, .-HMANGLENAMESPACE

.section .bss
.balign 4
	.lcomm	Lt_02B9,256

.section .text
.balign 16
HMANGLEVARIABLE:
.type HMANGLEVARIABLE, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_017C:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
test ebx, ebx
jle .Lt_017F
mov dword ptr [ebp-20], 0
jmp .Lt_017E
.Lt_017F:
sub esp, 12
push dword ptr [ebp+8]
call HDOCPPMANGLING
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_017E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 59
je .Lt_0181
cmp dword ptr [ENV+104], 2
jne .Lt_0183
sub esp, 12
push 0
push 2
push offset Lt_0184
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_0183:
.Lt_0182:
call HADDUNDERSCORE
test eax, eax
je .Lt_0186
sub esp, 12
push 0
push 2
push offset Lt_00D2
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0186:
.Lt_0185:
mov eax, dword ptr [ENV+108]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .Lt_018A
.Lt_018B:
cmp dword ptr [ebp-28], 1
jne .Lt_0189
.Lt_018A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 512
test ebx, ebx
je .Lt_018D
sub esp, 12
push 0
push 7
push offset Lt_018E
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_018D:
.Lt_018C:
.Lt_0189:
.Lt_0187:
cmp dword ptr [ebp-20], 0
je .Lt_0190
sub esp, 12
push 0
push 3
push offset Lt_0191
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 256
je .Lt_0193
sub esp, 12
push 0
push 3
push offset Lt_0194
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0192
.Lt_0193:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 1024
je .Lt_0195
sub esp, 12
push 0
push 3
push offset Lt_0196
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_0195:
.Lt_0192:
.Lt_0190:
.Lt_018F:
jmp .Lt_0180
.Lt_0181:
cmp dword ptr [ENV+104], 2
jne .Lt_0198
sub esp, 12
push 0
push 2
push offset Lt_0199
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_0198:
.Lt_0197:
.Lt_0180:
cmp dword ptr [ebp-20], 0
je .Lt_019B
push 0
push 0
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+140]
push dword ptr [eax]
lea eax, [ebp-12]
push eax
call HMANGLENAMESPACE
add esp, 16
.Lt_019B:
.Lt_019A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 1280
je .Lt_019D
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
jmp .Lt_019C
.Lt_019D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 512
je .Lt_019E
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
jmp .Lt_019C
.Lt_019E:
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
je .Lt_01A0
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+38]
test eax, eax
jne .Lt_01A2
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ENV+104]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ENV+104]
cmp ebx, 3
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_01A4
sub esp, 12
push 0
push 2
push offset Lt_00B1
push -1
push offset Lt_02BA
call fb_StrConcatAssign
add esp, 32
.Lt_01A4:
.Lt_01A3:
jmp .Lt_01A1
.Lt_01A2:
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+20]
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
.Lt_01A1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_01A6
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
mov dword ptr [ebp-28], 0
lea eax, [ebp-28]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push offset Lt_02BA
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
cmp dword ptr [ENV+104], 1
jne .Lt_01AA
sub esp, 12
push 0
push 2
push offset Lt_00B1
push -1
push offset Lt_02BA
call fb_StrConcatAssign
add esp, 32
.Lt_01AA:
.Lt_01A9:
.Lt_01A6:
.Lt_01A5:
jmp .Lt_019F
.Lt_01A0:
mov eax, dword ptr [ENV+104]
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 1
jne .Lt_01AD
.Lt_01AE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
sub esp, 12
push dword ptr [ebp+8]
call SYMBHASDTOR
add esp, 16
and ebx, eax
je .Lt_01B0
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
jmp .Lt_01AF
.Lt_01B0:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .Lt_01B2
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00B1
push -1
push offset Lt_02BA
call fb_StrConcatAssign
add esp, 32
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_01B4
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
mov dword ptr [ebp-44], 0
lea eax, [ebp-44]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push offset Lt_02BA
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00B1
push -1
push offset Lt_02BA
call fb_StrConcatAssign
add esp, 32
.Lt_01B4:
.Lt_01B3:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
mov eax, dword ptr [ebp+8]
movzx ebx, word ptr [eax+36]
push ebx
call fb_UIntToStr
add esp, 16
push eax
push -1
push offset Lt_02BA
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
jmp .Lt_01B1
.Lt_01B2:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
.Lt_01B1:
.Lt_01AF:
jmp .Lt_01AB
.Lt_01AD:
cmp dword ptr [ebp-28], 2
jne .Lt_01B8
.Lt_01B9:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .Lt_01BB
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_01BD
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push offset Lt_02BA
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
.Lt_01BD:
.Lt_01BC:
sub esp, 12
push 0
push 2
push offset Lt_0007
push -1
push offset Lt_02BA
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [Lt_02BF]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_02BA
call fb_StrConcatAssign
add esp, 32
inc dword ptr [Lt_02BF]
jmp .Lt_01BA
.Lt_01BB:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
.Lt_01BA:
jmp .Lt_01AB
.Lt_01B8:
cmp dword ptr [ebp-28], 3
jne .Lt_01C0
.Lt_01C1:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .Lt_01C3
sub esp, 12
push 0
push 0
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+16]
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 1048576
test eax, eax
je .Lt_01C5
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 8
mov dword ptr [ebp-32], 0
lea eax, [ebp-32]
push eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
push ebx
call HMANGLEBUILTINTYPE
add esp, 16
push eax
push -1
push offset Lt_02BA
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
.Lt_01C5:
.Lt_01C4:
sub esp, 12
push 0
push 2
push offset Lt_0007
push -1
push offset Lt_02BA
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [Lt_02BF]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_02BA
call fb_StrConcatAssign
add esp, 32
inc dword ptr [Lt_02BF]
jmp .Lt_01C2
.Lt_01C3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .Lt_01C8
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
jmp .Lt_01C2
.Lt_01C8:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
.Lt_01C2:
jmp .Lt_01AB
.Lt_01C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 2
test ebx, ebx
je .Lt_01CB
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
jmp .Lt_01CA
.Lt_01CB:
sub esp, 12
push 0
push 0
sub esp, 12
call dword ptr [IR+44]
add esp, 12
push eax
push -1
push offset Lt_02BA
call fb_StrAssign
add esp, 32
.Lt_01CA:
.Lt_01C9:
.Lt_01AB:
.Lt_019F:
.Lt_019C:
sub esp, 8
push -1
push offset Lt_02BA
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_01CD
cmp dword ptr [ebp-20], 0
je .Lt_01CF
sub esp, 12
push 0
push -1
sub esp, 8
sub esp, 12
push -1
push offset Lt_02BA
call fb_StrLen
add esp, 20
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01CF:
.Lt_01CE:
sub esp, 12
push 0
push -1
push offset Lt_02BA
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01CD:
.Lt_01CC:
cmp dword ptr [ebp-20], 0
je .Lt_01D1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
je .Lt_01D3
sub esp, 12
push 0
push 2
push offset Lt_009D
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01D3:
.Lt_01D2:
.Lt_01D1:
.Lt_01D0:
sub esp, 8
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call SYMBSETMANGLEDID
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_017D:
pop ebx
mov esp, ebp
pop ebp
ret
.size HMANGLEVARIABLE, .-HMANGLEVARIABLE

.section .bss
.balign 4
	.lcomm	Lt_02BA,12
.balign 4
	.lcomm	Lt_02BF,4

.section .text
.balign 16
HGETPROCPARAMSTYPECODE:
.type HGETPROCPARAMSTYPECODE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_01D4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_01D7
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 524288
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and eax, dword ptr [ebp+16]
je .Lt_01D9
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
.Lt_01D9:
.Lt_01D8:
.Lt_01D7:
.Lt_01D6:
cmp dword ptr [ebp-4], 0
jne .Lt_01DB
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_00F3
push -1
push dword ptr [ebp+8]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea ebx, [ebp-16]
push ebx
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
jmp .Lt_01D5
.Lt_01DB:
.Lt_01DA:
.Lt_01DD:
sub esp, 8
push dword ptr [ebp-4]
push dword ptr [ebp+8]
call SYMBMANGLEPARAM
add esp, 16
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-4], ebx
.Lt_01DF:
cmp dword ptr [ebp-4], 0
jne .Lt_01DD
.Lt_01DE:
.Lt_01D5:
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETPROCPARAMSTYPECODE, .-HGETPROCPARAMSTYPECODE
.balign 16
HGETOPERATORNAME:
.type HGETOPERATORNAME, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_01E0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+112]
mov eax, dword ptr [ebx+40]
mov dword ptr [ebp-8], eax
jmp .Lt_01E3
.Lt_01E5:
mov eax, offset Lt_01E6
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_01E7:
mov eax, offset Lt_01E8
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_01E9:
mov eax, offset Lt_01EA
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_01EB:
mov eax, offset Lt_01EC
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_01ED:
mov eax, offset Lt_01EE
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_01EF:
mov eax, offset Lt_01F0
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_01F1:
mov eax, offset Lt_01F2
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_01F3:
mov eax, offset Lt_01F4
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_01F5:
mov eax, offset Lt_01F6
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_01F7:
mov eax, offset Lt_01F8
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_01F9:
mov eax, offset Lt_01FA
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_01FB:
mov eax, offset Lt_01FC
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_01FD:
mov eax, offset Lt_01FE
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_01FF:
mov eax, offset Lt_0200
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0201:
mov eax, offset Lt_0202
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0203:
mov eax, offset Lt_0204
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0205:
mov eax, offset Lt_0206
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0207:
mov eax, offset Lt_0208
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0209:
mov eax, offset Lt_020A
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_020B:
mov eax, offset Lt_020C
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_020D:
mov eax, offset Lt_020E
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_020F:
mov eax, offset Lt_0210
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0211:
mov eax, offset Lt_0212
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0213:
mov eax, offset Lt_0214
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0215:
mov eax, offset Lt_0216
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0217:
mov eax, offset Lt_0218
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0219:
mov eax, offset Lt_021A
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_021B:
mov eax, offset Lt_021C
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_021D:
mov eax, offset Lt_021E
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_021F:
mov eax, offset Lt_0220
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0221:
mov eax, offset Lt_0222
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0223:
mov eax, offset Lt_0224
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0225:
mov eax, offset Lt_0226
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0227:
mov eax, offset Lt_0228
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0229:
mov eax, offset Lt_022A
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_022B:
mov eax, offset Lt_022C
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_022D:
mov eax, offset Lt_022E
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_022F:
mov eax, offset Lt_0230
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0231:
mov eax, offset Lt_0232
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0233:
mov eax, offset Lt_0234
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0235:
mov eax, offset Lt_0236
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0237:
mov eax, offset Lt_0238
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0239:
mov eax, offset Lt_023A
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_023B:
mov eax, offset Lt_023C
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_023D:
mov eax, offset Lt_023E
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_023F:
mov eax, offset Lt_0240
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0241:
mov eax, offset Lt_0242
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0243:
mov eax, offset Lt_0244
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0245:
mov eax, offset Lt_0246
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0247:
mov eax, offset Lt_0248
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0249:
mov eax, offset Lt_024A
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_024B:
mov eax, offset Lt_024C
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_024D:
mov eax, offset Lt_024E
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_024F:
mov eax, offset Lt_0250
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0251:
mov eax, offset Lt_0252
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0253:
mov eax, offset Lt_0254
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0255:
mov eax, offset Lt_0256
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0257:
mov eax, offset Lt_0258
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0259:
mov eax, offset Lt_025A
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_025B:
mov eax, offset Lt_025C
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_025D:
mov eax, offset Lt_025E
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_025F:
mov eax, offset Lt_0260
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0261:
mov eax, offset Lt_0262
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0263:
mov eax, offset Lt_0264
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0265:
mov eax, offset Lt_0266
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0267:
mov eax, offset Lt_0268
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_0269:
mov eax, offset Lt_026A
mov dword ptr [ebp-4], eax
jmp .Lt_01E2
.Lt_026B:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 2
jne .Lt_026D
mov ebx, offset Lt_026E
mov dword ptr [ebp-4], ebx
jmp .Lt_026C
.Lt_026D:
mov ebx, offset Lt_026F
mov dword ptr [ebp-4], ebx
.Lt_026C:
jmp .Lt_01E2
.Lt_0270:
mov ebx, dword ptr [ebp+8]
movsx eax, word ptr [ebx+68]
cmp eax, 2
jne .Lt_0272
mov eax, offset Lt_0273
mov dword ptr [ebp-4], eax
jmp .Lt_0271
.Lt_0272:
mov eax, offset Lt_0274
mov dword ptr [ebp-4], eax
.Lt_0271:
jmp .Lt_01E2
.Lt_0275:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
cmp ebx, 3
jne .Lt_0277
mov ebx, offset Lt_0278
mov dword ptr [ebp-4], ebx
jmp .Lt_0276
.Lt_0277:
mov ebx, offset Lt_0279
mov dword ptr [ebp-4], ebx
.Lt_0276:
jmp .Lt_01E2
.Lt_01E3:
cmp dword ptr [ebp-8], 81
ja .Lt_01E2
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.LT_027A+ebx*4]
.LT_027A:
.int .Lt_01E5
.int .Lt_01E9
.int .Lt_01ED
.int .Lt_01F1
.int .Lt_01F5
.int .Lt_01F9
.int .Lt_01FD
.int .Lt_0201
.int .Lt_0205
.int .Lt_0209
.int .Lt_020D
.int .Lt_0211
.int .Lt_0215
.int .Lt_0219
.int .Lt_021D
.int .Lt_0221
.int .Lt_0225
.int .Lt_0229
.int .Lt_025B
.int .Lt_025D
.int .Lt_025F
.int .Lt_0261
.int .Lt_0269
.int .Lt_0267
.int .Lt_026B
.int .Lt_0270
.int .Lt_0275
.int .Lt_01E2
.int .Lt_01E7
.int .Lt_01EB
.int .Lt_01EF
.int .Lt_01F3
.int .Lt_01F7
.int .Lt_01FB
.int .Lt_01FF
.int .Lt_0203
.int .Lt_0207
.int .Lt_020B
.int .Lt_020F
.int .Lt_0213
.int .Lt_0217
.int .Lt_021B
.int .Lt_021F
.int .Lt_0223
.int .Lt_0227
.int .Lt_022B
.int .Lt_022D
.int .Lt_022F
.int .Lt_0231
.int .Lt_0233
.int .Lt_0235
.int .Lt_01E2
.int .Lt_0237
.int .Lt_023B
.int .Lt_0239
.int .Lt_01E2
.int .Lt_023D
.int .Lt_0245
.int .Lt_024D
.int .Lt_024F
.int .Lt_0251
.int .Lt_0253
.int .Lt_0255
.int .Lt_0257
.int .Lt_01E2
.int .Lt_0259
.int .Lt_01E2
.int .Lt_01E2
.int .Lt_024B
.int .Lt_0249
.int .Lt_0247
.int .Lt_023F
.int .Lt_0241
.int .Lt_0243
.int .Lt_01E2
.int .Lt_01E2
.int .Lt_0263
.int .Lt_0265
.int .Lt_025B
.int .Lt_025D
.int .Lt_025F
.int .Lt_0261
.Lt_01E2:
.Lt_01E1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HGETOPERATORNAME, .-HGETOPERATORNAME
.balign 16
HMANGLEPROC:
.type HMANGLEPROC, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_027B:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-28], 0
sub esp, 12
push dword ptr [ebp+8]
call HDOCPPMANGLING
add esp, 16
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+84]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
call FBGETCPUFAMILY
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
mov eax, dword ptr [ENV+104]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
mov dword ptr [ebp-24], ebx
cmp dword ptr [ENV+104], 2
jne .Lt_027E
sub esp, 12
push 0
push 2
push offset Lt_0184
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [ebp-24], 0
je .Lt_0280
sub esp, 12
push 0
push 2
push offset Lt_0281
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-28], -1
.Lt_0280:
.Lt_027F:
mov ebx, dword ptr [ENV+108]
mov dword ptr [ebp-36], ebx
cmp dword ptr [ebp-36], 0
je .Lt_0285
.Lt_0286:
cmp dword ptr [ebp-36], 1
je .Lt_0285
.Lt_0287:
cmp dword ptr [ebp-36], 4
jne .Lt_0284
.Lt_0285:
cmp dword ptr [ebp-28], 0
jne .Lt_0289
sub esp, 12
push 0
push 2
push offset Lt_0281
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-28], -1
.Lt_0289:
.Lt_0288:
sub esp, 12
push 0
push 2
push offset Lt_028A
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_0284:
.Lt_0282:
.Lt_027E:
.Lt_027D:
call HADDUNDERSCORE
test eax, eax
je .Lt_028C
sub esp, 12
push 0
push 2
push offset Lt_00D2
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_028C:
.Lt_028B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ebx, dword ptr [ebp-20]
je .Lt_028E
sub esp, 12
push 0
push 3
push offset Lt_0191
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_028E:
.Lt_028D:
cmp dword ptr [ebp-20], 0
je .Lt_0290
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
call HMANGLENAMESPACE
add esp, 16
.Lt_0290:
.Lt_028F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
and eax, 512
test eax, eax
je .Lt_0292
cmp dword ptr [ebp-20], 0
je .Lt_0294
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
sub esp, 12
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
call fb_StrLen
add esp, 20
push eax
call fb_IntToStr
add esp, 16
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0294:
.Lt_0293:
sub esp, 12
push 0
push -1
sub esp, 8
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
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0291
.Lt_0292:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 16
test ebx, ebx
je .Lt_0297
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+112]
cmp dword ptr [eax+40], 27
jne .Lt_0299
sub esp, 12
push 0
push 3
push offset Lt_029A
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
lea eax, [ebp-12]
push eax
call SYMBMANGLETYPE
add esp, 16
jmp .Lt_0298
.Lt_0299:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
sub esp, 12
push dword ptr [ebp+8]
call HGETOPERATORNAME
add esp, 16
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_0298:
jmp .Lt_0291
.Lt_0297:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .Lt_029C
sub esp, 12
push 0
push 3
push offset Lt_029D
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0291
.Lt_029C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
and eax, 8
test eax, eax
je .Lt_029E
sub esp, 12
push 0
push 3
push offset Lt_029F
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0291
.Lt_029E:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+38]
test ebx, ebx
jne .Lt_02A1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+16]
mov dword ptr [ebp-32], eax
jmp .Lt_02A0
.Lt_02A1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+20]
mov dword ptr [ebp-32], ebx
.Lt_02A0:
cmp dword ptr [ebp-20], 0
je .Lt_02A3
sub esp, 8
push 0
push dword ptr [ebp-32]
call fb_StrLen
add esp, 16
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_02A5
add dword ptr [ebp-16], 7
.Lt_02A5:
.Lt_02A4:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-16]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_02A3:
.Lt_02A2:
sub esp, 12
push 0
push -1
sub esp, 8
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
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_02A8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+28]
and eax, 511
test eax, eax
jne .Lt_02AA
sub esp, 12
push 0
push 8
push offset Lt_02AB
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_02A9
.Lt_02AA:
sub esp, 12
push 0
push 8
push offset Lt_02AC
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_02A9:
.Lt_02A8:
.Lt_02A7:
.Lt_0291:
cmp dword ptr [ebp-20], 0
je .Lt_02AE
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
je .Lt_02B0
sub esp, 12
push 0
push 2
push offset Lt_009D
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_02B0:
.Lt_02AF:
sub esp, 4
push -1
push dword ptr [ebp+8]
lea eax, [ebp-12]
push eax
call HGETPROCPARAMSTYPECODE
add esp, 16
.Lt_02AE:
.Lt_02AD:
cmp dword ptr [ebp-24], 0
je .Lt_02B2
sub esp, 12
push 0
push 2
push offset Lt_0184
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
sub esp, 4
push dword ptr [ebp+8]
call SYMBPROCCALCSTDCALLSUFFIXN
add esp, 8
push edx
push eax
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_02B2:
.Lt_02B1:
cmp dword ptr [ebp-28], 0
je .Lt_02B4
sub esp, 12
push 0
push 2
push offset Lt_0281
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_02B4:
.Lt_02B3:
sub esp, 8
lea eax, [ebp-12]
push eax
push dword ptr [ebp+8]
call SYMBSETMANGLEDID
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_027C:
pop ebx
mov esp, ebp
pop ebp
ret
.size HMANGLEPROC, .-HMANGLEPROC

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0007:	.ascii	".\0"

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
.balign 4
	.lcomm	CTX,92

.section .rodata
.balign 4
Lt_0065:	.ascii	"tmp$\0"
.balign 4
Lt_0067:	.ascii	"Lt_\0"
.balign 4
Lt_006F:	.ascii	"label$\0"
.balign 4
Lt_0071:	.ascii	".Lt_\0"
.balign 4
Lt_0075:	.ascii	"LP_\0"
.balign 4
Lt_009B:	.ascii	"I\0"
.balign 4
Lt_009D:	.ascii	"E\0"
.balign 4
Lt_00B1:	.ascii	"$\0"
.balign 4
Lt_00C2:	.ascii	"S\0"
.balign 4
Lt_00D2:	.ascii	"_\0"
.balign 4
Lt_00D8:	.ascii	"8FBSTRING\0"
.balign 4
Lt_00E0:	.ascii	"l\0"
.balign 4
Lt_00E3:	.ascii	"m\0"
.balign 4
Lt_00E7:	.ascii	"u7INTEGER\0"
.balign 4
Lt_00EA:	.ascii	"u8UINTEGER\0"
.balign 4
Lt_00F3:	.ascii	"v\0"
.balign 4
Lt_00F4:	.ascii	"b\0"
.balign 4
Lt_00F5:	.ascii	"a\0"
.balign 4
Lt_00F6:	.ascii	"h\0"
.balign 4
Lt_00F7:	.ascii	"c\0"
.balign 4
Lt_00F8:	.ascii	"s\0"
.balign 4
Lt_00F9:	.ascii	"t\0"
.balign 4
Lt_00FA:	.ascii	"w\0"
.balign 4
Lt_00FB:	.ascii	"i\0"
.balign 4
Lt_00FC:	.ascii	"j\0"
.balign 4
Lt_00FD:	.ascii	"x\0"
.balign 4
Lt_00FE:	.ascii	"y\0"
.balign 4
Lt_00FF:	.ascii	"f\0"
.balign 4
Lt_0100:	.ascii	"d\0"
.balign 4
Lt_010D:	.ascii	"R\0"
.balign 4
Lt_0113:	.ascii	"K\0"
.balign 4
Lt_0117:	.ascii	"P\0"
.balign 4
Lt_0125:	.ascii	"A1_\0"
.balign 4
Lt_012B:	.ascii	"St\0"
.balign 4
Lt_0134:	.ascii	"N\0"
.balign 4
Lt_013F:	.ascii	"F\0"
.balign 4
Lt_0156:	.ascii	"z\0"
.balign 4
Lt_0184:	.ascii	"@\0"
.balign 4
Lt_018E:	.ascii	"_imp__\0"
.balign 4
Lt_0191:	.ascii	"_Z\0"
.balign 4
Lt_0194:	.ascii	"TS\0"
.balign 4
Lt_0196:	.ascii	"TV\0"
.balign 4
Lt_0199:	.ascii	"%\0"
.balign 4
Lt_01E6:	.ascii	"aS\0"
.balign 4
Lt_01E8:	.ascii	"pl\0"
.balign 4
Lt_01EA:	.ascii	"pL\0"
.balign 4
Lt_01EC:	.ascii	"mi\0"
.balign 4
Lt_01EE:	.ascii	"mI\0"
.balign 4
Lt_01F0:	.ascii	"ml\0"
.balign 4
Lt_01F2:	.ascii	"mL\0"
.balign 4
Lt_01F4:	.ascii	"dv\0"
.balign 4
Lt_01F6:	.ascii	"dV\0"
.balign 4
Lt_01F8:	.ascii	"v24idiv\0"
.balign 4
Lt_01FA:	.ascii	"v28selfidiv\0"
.balign 4
Lt_01FC:	.ascii	"rm\0"
.balign 4
Lt_01FE:	.ascii	"rM\0"
.balign 4
Lt_0200:	.ascii	"an\0"
.balign 4
Lt_0202:	.ascii	"aN\0"
.balign 4
Lt_0204:	.ascii	"or\0"
.balign 4
Lt_0206:	.ascii	"oR\0"
.balign 4
Lt_0208:	.ascii	"aa\0"
.balign 4
Lt_020A:	.ascii	"aA\0"
.balign 4
Lt_020C:	.ascii	"oo\0"
.balign 4
Lt_020E:	.ascii	"oO\0"
.balign 4
Lt_0210:	.ascii	"eo\0"
.balign 4
Lt_0212:	.ascii	"eO\0"
.balign 4
Lt_0214:	.ascii	"v23eqv\0"
.balign 4
Lt_0216:	.ascii	"v27selfeqv\0"
.balign 4
Lt_0218:	.ascii	"v23imp\0"
.balign 4
Lt_021A:	.ascii	"v27selfimp\0"
.balign 4
Lt_021C:	.ascii	"ls\0"
.balign 4
Lt_021E:	.ascii	"lS\0"
.balign 4
Lt_0220:	.ascii	"rs\0"
.balign 4
Lt_0222:	.ascii	"rS\0"
.balign 4
Lt_0224:	.ascii	"v23pow\0"
.balign 4
Lt_0226:	.ascii	"v27selfpow\0"
.balign 4
Lt_0228:	.ascii	"v23cat\0"
.balign 4
Lt_022A:	.ascii	"v27selfcat\0"
.balign 4
Lt_022C:	.ascii	"eq\0"
.balign 4
Lt_022E:	.ascii	"gt\0"
.balign 4
Lt_0230:	.ascii	"lt\0"
.balign 4
Lt_0232:	.ascii	"ne\0"
.balign 4
Lt_0234:	.ascii	"ge\0"
.balign 4
Lt_0236:	.ascii	"le\0"
.balign 4
Lt_0238:	.ascii	"co\0"
.balign 4
Lt_023A:	.ascii	"ng\0"
.balign 4
Lt_023C:	.ascii	"ps\0"
.balign 4
Lt_023E:	.ascii	"v13abs\0"
.balign 4
Lt_0240:	.ascii	"v13fix\0"
.balign 4
Lt_0242:	.ascii	"v14frac\0"
.balign 4
Lt_0244:	.ascii	"v13len\0"
.balign 4
Lt_0246:	.ascii	"v13sgn\0"
.balign 4
Lt_0248:	.ascii	"v13int\0"
.balign 4
Lt_024A:	.ascii	"v13exp\0"
.balign 4
Lt_024C:	.ascii	"v13log\0"
.balign 4
Lt_024E:	.ascii	"v13sin\0"
.balign 4
Lt_0250:	.ascii	"v14asin\0"
.balign 4
Lt_0252:	.ascii	"v13cos\0"
.balign 4
Lt_0254:	.ascii	"v14acos\0"
.balign 4
Lt_0256:	.ascii	"v13tan\0"
.balign 4
Lt_0258:	.ascii	"v13atn\0"
.balign 4
Lt_025A:	.ascii	"v13sqr\0"
.balign 4
Lt_025C:	.ascii	"nw\0"
.balign 4
Lt_025E:	.ascii	"na\0"
.balign 4
Lt_0260:	.ascii	"dl\0"
.balign 4
Lt_0262:	.ascii	"da\0"
.balign 4
Lt_0264:	.ascii	"de\0"
.balign 4
Lt_0266:	.ascii	"pt\0"
.balign 4
Lt_0268:	.ascii	"ix\0"
.balign 4
Lt_026A:	.ascii	"ad\0"
.balign 4
Lt_026E:	.ascii	"v13for\0"
.balign 4
Lt_026F:	.ascii	"v03for\0"
.balign 4
Lt_0273:	.ascii	"v14step\0"
.balign 4
Lt_0274:	.ascii	"v04step\0"
.balign 4
Lt_0278:	.ascii	"v24next\0"
.balign 4
Lt_0279:	.ascii	"v14next\0"
.balign 4
Lt_0281:	.ascii	"\"\0"
.balign 4
Lt_028A:	.ascii	"\1""\0"
.balign 4
Lt_029A:	.ascii	"cv\0"
.balign 4
Lt_029D:	.ascii	"C1\0"
.balign 4
Lt_029F:	.ascii	"D1\0"
.balign 4
Lt_02AB:	.ascii	"__set__\0"
.balign 4
Lt_02AC:	.ascii	"__get__\0"

.section .ctors, "aw", @progbits
.int fb_ctor__symbzmangling
