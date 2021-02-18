	.intel_syntax noprefix

.section .text
.balign 16

.globl _CPARAMETERS
_CPARAMETERS:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0068:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_006B
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBADDPROCINSTANCEPARAM
add esp, 8
mov eax, dword ptr [_ENV+272]
mov ebx, eax
sar ebx, 31
add dword ptr [ebp-8], eax
adc dword ptr [ebp-4], ebx
.Lt_006B:
.Lt_006A:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
je .Lt_006D
jmp .Lt_0069
.Lt_006D:
.Lt_006C:
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
jne .Lt_006F
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0069
.Lt_006F:
.Lt_006E:
.Lt_0070:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HPARAMDECL
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0074
jmp .Lt_0071
.Lt_0074:
.Lt_0073:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add dword ptr [ebp-8], ecx
adc dword ptr [ebp-4], ebx
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ecx+56], 4
jne .Lt_0076
jmp .Lt_0071
.Lt_0076:
.Lt_0075:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_0078
jmp .Lt_0071
.Lt_0078:
.Lt_0077:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0072:
jmp .Lt_0070
.Lt_0071:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_007A
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0079
.Lt_007A:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0079:
mov eax, dword ptr [_ENV+272]
sal eax, 6
mov ebx, eax
mov ecx, ebx
sar ecx, 31
cmp dword ptr [ebp-4], ecx
jl .Lt_007C
jg .Lt_007D
cmp dword ptr [ebp-8], ebx
jbe .Lt_007C
.Lt_007D:
push 0
push 1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
push 18
call _ERRREPORTWARN
add esp, 16
.Lt_007C:
.Lt_007B:
.Lt_0069:
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
_HPARAMERROR:
push ebp
mov ebp, esp
push ebx
.Lt_007E:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
add ebx, dword ptr [ebp+20]
push ebx
push dword ptr [ebp+8]
call _ERRREPORTPARAM
add esp, 16
.Lt_007F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPARAMWARNING:
push ebp
mov ebp, esp
push ebx
.Lt_0080:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
add ebx, dword ptr [ebp+20]
push ebx
push dword ptr [ebp+8]
call _ERRREPORTPARAMWARN
add esp, 16
.Lt_0081:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOPTIONALEXPR:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0082:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 1
je .Lt_0085
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 2
je .Lt_0087
jmp .Lt_0083
.Lt_0087:
.Lt_0086:
.Lt_0085:
.Lt_0084:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_008B
.Lt_008C:
cmp dword ptr [ebp-16], 23
jne .Lt_008A
.Lt_008B:
push 0
push 0
push 71
call _ERRREPORT
add esp, 12
push -1
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0083
.Lt_008A:
.Lt_0088:
push 0
push -2147483648
push 1
push dword ptr [ebp+16]
call _CINITIALIZER
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_008E
jmp .Lt_0083
.Lt_008E:
.Lt_008D:
push dword ptr [ebp-8]
call _ASTFORGETBITFIELDS
add esp, 4
push 12288
push dword ptr [ebp-8]
call _ASTTYPEINIUSESLOCALS
add esp, 8
test eax, eax
je .Lt_0090
push 0
push 272
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp-8], 0
.Lt_0090:
.Lt_008F:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0083:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMOCKPARAM:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0091:
cmp dword ptr [ebp+12], -1
jne .Lt_0094
mov eax, dword ptr [_ENV+928]
mov dword ptr [ebp+12], eax
.Lt_0094:
.Lt_0093:
cmp dword ptr [ebp+12], 4
jne .Lt_0096
mov dword ptr [ebp-8], -2147483648
jmp .Lt_0095
.Lt_0096:
mov dword ptr [ebp-8], 8
.Lt_0095:
push 0
push 0
push dword ptr [ebp+12]
cmp dword ptr [ebp+12], 3
jne .Lt_0097
mov dword ptr [ebp-12], -1
jmp .Lt_010E
.Lt_0097:
mov dword ptr [ebp-12], 0
.Lt_010E:
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+8]
call _SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_0092:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HPARAMDECL:
push ebp
mov ebp, esp
sub esp, 72
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0099:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
jne .Lt_009E
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 46
jne .Lt_00A0
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .Lt_00A2
push 1
push 59
push offset _Lt_00A3
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
push 4
push dword ptr [ebp+8]
call _HMOCKPARAM
add esp, 8
jmp .Lt_00A1
.Lt_00A2:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00A1:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jne .Lt_00A5
push 1
push 313
push offset _Lt_00A3
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 4
push dword ptr [ebp+8]
call _HMOCKPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_009A
.Lt_00A5:
.Lt_00A4:
cmp dword ptr [ebp+12], 3
je .Lt_00A7
push 1
push 312
push offset _Lt_00A3
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 4
push dword ptr [ebp+8]
call _HMOCKPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_009A
.Lt_00A7:
.Lt_00A6:
push 0
push 0
push 4
push 0
push 0
push -2147483648
push 0
push dword ptr [ebp+8]
call _SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-4], eax
jmp .Lt_009A
jmp .Lt_009F
.Lt_00A0:
push 1
push 59
push offset _Lt_00A3
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
push 4
push dword ptr [ebp+8]
call _HMOCKPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_009A
.Lt_009F:
.Lt_009E:
.Lt_009D:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 319
jne .Lt_00AA
.Lt_00AB:
mov dword ptr [ebp-16], 1
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_00A8
.Lt_00AA:
cmp dword ptr [ebp-60], 320
jne .Lt_00AC
.Lt_00AD:
mov dword ptr [ebp-16], 2
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_00A8
.Lt_00AC:
mov dword ptr [ebp-16], -1
.Lt_00AE:
.Lt_00A8:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .Lt_00B1
.Lt_00B2:
mov dword ptr [ebp-28], -1
jmp .Lt_00AF
.Lt_00B1:
cmp dword ptr [ebp-60], 1
je .Lt_00B4
.Lt_00B5:
cmp dword ptr [ebp-60], 2
jne .Lt_00B3
.Lt_00B4:
cmp dword ptr [ebp+16], 0
jne .Lt_00B7
push 1
push 59
call _LEXGETTEXT
push eax
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HMOCKPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_009A
.Lt_00B7:
.Lt_00B6:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .Lt_00AF
.Lt_00B3:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+16]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_00BA
push 1
push 59
call _LEXGETTEXT
push eax
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HMOCKPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_009A
.Lt_00BA:
.Lt_00B9:
mov dword ptr [ebp-28], 0
.Lt_00B8:
.Lt_00AF:
cmp dword ptr [_Lt_0116], 8
jl .Lt_00BC
push 0
push 0
push 27
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HMOCKPARAM
add esp, 8
mov dword ptr [ebp-4], eax
jmp .Lt_009A
.Lt_00BC:
.Lt_00BB:
mov eax, dword ptr [_Lt_0116]
imul eax, 129
lea ebx, [_Lt_0117+eax]
mov dword ptr [ebp-8], ebx
push 0
push 1
push offset _Lt_0000
push 0
push dword ptr [ebp-8]
call _fb_StrAssign
add esp, 20
cmp dword ptr [ebp-28], 0
je .Lt_00BE
push 0
push 0
call _LEXGETTEXT
push eax
push 0
push dword ptr [ebp-8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+1048]
mov dword ptr [ebp-32], eax
push 4096
call _LEXCHECKTOKEN
add esp, 4
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_00BD
.Lt_00BE:
mov dword ptr [ebp-12], -2147483648
.Lt_00BD:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-44], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_00C0
push 0
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp-16], -1
je .Lt_00C2
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
.Lt_00C2:
.Lt_00C1:
mov dword ptr [ebp-16], 3
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
jne .Lt_00C4
mov dword ptr [ebp-24], -1
jmp .Lt_00C3
.Lt_00C4:
push offset _Lt_0118
lea eax, [ebp-44]
push eax
lea eax, [ebp-24]
push eax
call _CARRAYDECL
add esp, 12
cmp dword ptr [ebp-44], 0
je .Lt_00C6
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
.Lt_00C6:
.Lt_00C5:
.Lt_00C3:
push 0
push 41
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00C8
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
.Lt_00C8:
.Lt_00C7:
.Lt_00C0:
.Lt_00BF:
mov dword ptr [ebp-40], 0
cmp dword ptr [ebp-16], -1
jne .Lt_00CA
mov eax, dword ptr [_ENV+928]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-40], -1
mov eax, dword ptr [_ENV+196]
and eax, 2
test eax, eax
je .Lt_00CC
push 1
push 15
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMWARNING
add esp, 16
.Lt_00CC:
.Lt_00CB:
.Lt_00CA:
.Lt_00C9:
mov dword ptr [ebp-36], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .Lt_00CE
push 2048
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp-12], -2147483648
je .Lt_00D0
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
jmp .Lt_009A
.Lt_00D0:
.Lt_00CF:
inc dword ptr [_Lt_0116]
mov dword ptr [ebp-60], 1
cmp dword ptr [ebp-16], 2
jne .Lt_00D2
cmp dword ptr [ebp+16], 0
je .Lt_00D4
or dword ptr [ebp-60], 2
.Lt_00D4:
.Lt_00D3:
and dword ptr [ebp-60], -2
or dword ptr [ebp-60], 4
.Lt_00D2:
.Lt_00D1:
push dword ptr [ebp-60]
mov dword ptr [ebp-72], 0
lea eax, [ebp-72]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-68]
push eax
lea eax, [ebp-48]
push eax
lea eax, [ebp-12]
push eax
call _CSYMBOLTYPE
add esp, 20
test eax, eax
jne .Lt_00D8
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
mov dword ptr [ebp-12], 8
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-36], -1
.Lt_00D8:
.Lt_00D7:
cmp dword ptr [ebp-16], 1
jne .Lt_00DA
push dword ptr [ebp-48]
push dword ptr [ebp-12]
call _HCOMPLAINIFABSTRACTCLASS
add esp, 8
.Lt_00DA:
.Lt_00D9:
dec dword ptr [_Lt_0116]
jmp .Lt_00CD
.Lt_00CE:
mov eax, dword ptr [_ENV+888]
and eax, 4194304
test eax, eax
jne .Lt_00DC
push 0
push 147
push 4194304
call _ERRREPORTNOTALLOWED
add esp, 12
mov dword ptr [ebp-36], -1
jmp .Lt_00DB
.Lt_00DC:
cmp dword ptr [ebp-28], 0
jne .Lt_00DE
push 1
push 59
push 0
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
mov dword ptr [ebp-36], -1
.Lt_00DE:
.Lt_00DD:
.Lt_00DB:
mov dword ptr [ebp-48], 0
or dword ptr [ebp-20], 1048576
.Lt_00CD:
cmp dword ptr [_ENV+136], 0
jne .Lt_00E0
cmp dword ptr [ebp-40], 0
je .Lt_00E2
push dword ptr [ebp-48]
push dword ptr [ebp-12]
call _SYMBGETDEFAULTPARAMMODE
add esp, 8
mov dword ptr [ebp-16], eax
.Lt_00E2:
.Lt_00E1:
.Lt_00E0:
.Lt_00DF:
cmp dword ptr [ebp-12], -2147483648
jne .Lt_00E4
push dword ptr [ebp-8]
call _SYMBGETDEFTYPE
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_00E4:
.Lt_00E3:
cmp dword ptr [ebp-36], 0
je .Lt_00E6
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
.Lt_00E6:
.Lt_00E5:
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_00E7
mov dword ptr [ebp-60], 24
jmp .Lt_010F
.Lt_00E7:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-60], eax
.Lt_010F:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
jmp .Lt_00EA
.Lt_00EC:
mov eax, dword ptr [ebp-16]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-72], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_00ED
mov dword ptr [ebp-68], 24
jmp .Lt_0110
.Lt_00ED:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-68], eax
.Lt_0110:
mov eax, dword ptr [ebp-68]
cmp eax, 18
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-72]
je .Lt_00F0
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
.Lt_00F0:
.Lt_00EF:
jmp .Lt_00E9
.Lt_00F1:
cmp dword ptr [ebp+16], 0
jne .Lt_00F3
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
jmp .Lt_00F2
.Lt_00F3:
cmp dword ptr [ebp-16], 1
jne .Lt_00F5
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
mov eax, dword ptr [ebp-12]
and eax, 31
mov ebx, dword ptr [ebp-12]
and ebx, 480
add ebx, 32
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 261632
sal ebx, 1
or eax, ebx
mov ebx, dword ptr [ebp-12]
and ebx, 32505856
or eax, ebx
mov dword ptr [ebp-12], eax
.Lt_00F5:
.Lt_00F4:
.Lt_00F2:
jmp .Lt_00E9
.Lt_00F6:
cmp dword ptr [ebp+16], 0
jne .Lt_00F8
cmp dword ptr [ebp-32], 0
jle .Lt_00FA
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
.Lt_00FA:
.Lt_00F9:
.Lt_00F8:
.Lt_00F7:
jmp .Lt_00E9
.Lt_00EA:
cmp dword ptr [ebp-64], 20
ja .Lt_00E9
mov eax, dword ptr [ebp-64]
jmp dword ptr [_.LT_00FB+eax*4]
_.LT_00FB:
.int .Lt_00F1
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00EC
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00EC
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00E9
.int .Lt_00EC
.int .Lt_00E9
.int .Lt_00F6
.Lt_00E9:
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp-48]
push dword ptr [ebp-12]
cmp dword ptr [ebp+16], 0
je .Lt_00FC
mov dword ptr [ebp-56], 0
jmp .Lt_0112
.Lt_00FC:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-56], eax
.Lt_0112:
push dword ptr [ebp-56]
push dword ptr [ebp+8]
call _SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .Lt_00FF
jmp .Lt_009A
.Lt_00FF:
.Lt_00FE:
cmp dword ptr [ebp+16], 0
jne .Lt_0101
mov eax, dword ptr [ebp-52]
mov ebx, dword ptr [_ENV+272]
sal ebx, 2
mov esi, ebx
mov ecx, esi
sar ecx, 31
cmp dword ptr [eax+44], ecx
jl .Lt_0103
jg .Lt_011B
cmp dword ptr [eax+40], esi
jbe .Lt_0103
.Lt_011B:
mov esi, dword ptr [_ENV+196]
and esi, 4
test esi, esi
je .Lt_0105
push 0
push 17
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMWARNING
add esp, 16
.Lt_0105:
.Lt_0104:
.Lt_0103:
.Lt_0102:
.Lt_0101:
.Lt_0100:
call _CASSIGNTOKEN
test eax, eax
je .Lt_0107
cmp dword ptr [ebp-16], 3
jne .Lt_0109
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 372
jne .Lt_010B
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-52]
or dword ptr [eax+12], 2048
jmp .Lt_010A
.Lt_010B:
push 0
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
.Lt_010A:
jmp .Lt_0108
.Lt_0109:
push dword ptr [ebp-52]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HOPTIONALEXPR
add esp, 12
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .Lt_010D
push dword ptr [ebp-60]
push dword ptr [ebp-52]
push dword ptr [ebp+8]
call _SYMBMAKEPARAMOPTIONAL
add esp, 12
jmp .Lt_010C
.Lt_010D:
push 0
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
.Lt_010C:
.Lt_0108:
.Lt_0107:
.Lt_0106:
mov eax, dword ptr [ebp-52]
mov dword ptr [ebp-4], eax
.Lt_009A:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0117,1032

.section .data
.balign 4
_Lt_0116:
.int 0

.section .bss
.balign 4
	.lcomm	_Lt_011C,64

.section .data
.balign 4
_Lt_0118:
.int _Lt_011C
.int _Lt_011C
.int 64
.int 4
.int 2
.int 50
.int 8
.int 0
.int 7
.int 2
.int 0
.int 1
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_00A3:	.ascii	"...\0"
