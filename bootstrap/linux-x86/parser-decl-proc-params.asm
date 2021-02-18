	.intel_syntax noprefix

.section .text
.balign 16

.globl CPARAMETERS
CPARAMETERS:
.type CPARAMETERS, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0067:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_006A
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBADDPROCINSTANCEPARAM
add esp, 16
mov eax, dword ptr [ENV+272]
mov ebx, eax
sar ebx, 31
add dword ptr [ebp-8], eax
adc dword ptr [ebp-4], ebx
.Lt_006A:
.Lt_0069:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
je .Lt_006C
jmp .Lt_0068
.Lt_006C:
.Lt_006B:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
jne .Lt_006E
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0068
.Lt_006E:
.Lt_006D:
.Lt_006F:
sub esp, 4
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HPARAMDECL
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0073
jmp .Lt_0070
.Lt_0073:
.Lt_0072:
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+40]
mov ebx, dword ptr [eax+44]
add dword ptr [ebp-8], ecx
adc dword ptr [ebp-4], ebx
mov ecx, dword ptr [ebp-12]
cmp dword ptr [ecx+56], 4
jne .Lt_0075
jmp .Lt_0070
.Lt_0075:
.Lt_0074:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0077
jmp .Lt_0070
.Lt_0077:
.Lt_0076:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0071:
jmp .Lt_006F
.Lt_0070:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0079
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0078
.Lt_0079:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0078:
mov eax, dword ptr [ENV+272]
sal eax, 6
mov ebx, eax
mov ecx, ebx
sar ecx, 31
cmp dword ptr [ebp-4], ecx
jl .Lt_007B
jg .Lt_007C
cmp dword ptr [ebp-8], ebx
jbe .Lt_007B
.Lt_007C:
push 0
push 1
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+16]
push 18
call ERRREPORTWARN
add esp, 16
.Lt_007B:
.Lt_007A:
.Lt_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.size CPARAMETERS, .-CPARAMETERS
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
HPARAMERROR:
.type HPARAMERROR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_007D:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
add ebx, dword ptr [ebp+20]
push ebx
push dword ptr [ebp+8]
call ERRREPORTPARAM
add esp, 16
.Lt_007E:
pop ebx
mov esp, ebp
pop ebp
ret
.size HPARAMERROR, .-HPARAMERROR
.balign 16
HPARAMWARNING:
.type HPARAMWARNING, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_007F:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
add ebx, dword ptr [ebp+20]
push ebx
push dword ptr [ebp+8]
call ERRREPORTPARAMWARN
add esp, 16
.Lt_0080:
pop ebx
mov esp, ebp
pop ebp
ret
.size HPARAMWARNING, .-HPARAMWARNING
.balign 16
HOPTIONALEXPR:
.type HOPTIONALEXPR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0081:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 1
je .Lt_0084
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+56], 2
je .Lt_0086
jmp .Lt_0082
.Lt_0086:
.Lt_0085:
.Lt_0084:
.Lt_0083:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+28]
and ebx, 511
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 0
je .Lt_008A
.Lt_008B:
cmp dword ptr [ebp-16], 23
jne .Lt_0089
.Lt_008A:
sub esp, 4
push 0
push 0
push 71
call ERRREPORT
add esp, 16
push -1
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0082
.Lt_0089:
.Lt_0087:
push 0
push -2147483648
push 1
push dword ptr [ebp+16]
call CINITIALIZER
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_008D
jmp .Lt_0082
.Lt_008D:
.Lt_008C:
sub esp, 12
push dword ptr [ebp-8]
call ASTFORGETBITFIELDS
add esp, 16
sub esp, 8
push 12288
push dword ptr [ebp-8]
call ASTTYPEINIUSESLOCALS
add esp, 16
test eax, eax
je .Lt_008F
push 0
push 272
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-8], 0
.Lt_008F:
.Lt_008E:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0082:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HOPTIONALEXPR, .-HOPTIONALEXPR
.balign 16
HMOCKPARAM:
.type HMOCKPARAM, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0090:
cmp dword ptr [ebp+12], -1
jne .Lt_0093
mov eax, dword ptr [ENV+928]
mov dword ptr [ebp+12], eax
.Lt_0093:
.Lt_0092:
cmp dword ptr [ebp+12], 4
jne .Lt_0095
mov dword ptr [ebp-8], -2147483648
jmp .Lt_0094
.Lt_0095:
mov dword ptr [ebp-8], 8
.Lt_0094:
push 0
push 0
push dword ptr [ebp+12]
cmp dword ptr [ebp+12], 3
jne .Lt_0096
mov dword ptr [ebp-12], -1
jmp .Lt_010D
.Lt_0096:
mov dword ptr [ebp-12], 0
.Lt_010D:
push dword ptr [ebp-12]
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+8]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_0091:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HMOCKPARAM, .-HMOCKPARAM
.balign 16
HPARAMDECL:
.type HPARAMDECL, @function
push ebp
mov ebp, esp
sub esp, 80
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0098:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
jne .Lt_009D
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 46
jne .Lt_009F
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
je .Lt_00A1
push 1
push 59
push offset Lt_00A2
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
sub esp, 8
push 4
push dword ptr [ebp+8]
call HMOCKPARAM
add esp, 16
jmp .Lt_00A0
.Lt_00A1:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00A0:
mov eax, dword ptr [ebp+8]
movsx ebx, word ptr [eax+68]
test ebx, ebx
jne .Lt_00A4
push 1
push 313
push offset Lt_00A2
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
sub esp, 8
push 4
push dword ptr [ebp+8]
call HMOCKPARAM
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0099
.Lt_00A4:
.Lt_00A3:
cmp dword ptr [ebp+12], 3
je .Lt_00A6
push 1
push 312
push offset Lt_00A2
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
sub esp, 8
push 4
push dword ptr [ebp+8]
call HMOCKPARAM
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0099
.Lt_00A6:
.Lt_00A5:
push 0
push 0
push 4
push 0
push 0
push -2147483648
push 0
push dword ptr [ebp+8]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-4], eax
jmp .Lt_0099
jmp .Lt_009E
.Lt_009F:
push 1
push 59
push offset Lt_00A2
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
sub esp, 8
push 4
push dword ptr [ebp+8]
call HMOCKPARAM
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0099
.Lt_009E:
.Lt_009D:
.Lt_009C:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 319
jne .Lt_00A9
.Lt_00AA:
mov dword ptr [ebp-16], 1
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00A7
.Lt_00A9:
cmp dword ptr [ebp-60], 320
jne .Lt_00AB
.Lt_00AC:
mov dword ptr [ebp-16], 2
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00A7
.Lt_00AB:
mov dword ptr [ebp-16], -1
.Lt_00AD:
.Lt_00A7:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .Lt_00B0
.Lt_00B1:
mov dword ptr [ebp-28], -1
jmp .Lt_00AE
.Lt_00B0:
cmp dword ptr [ebp-60], 1
je .Lt_00B3
.Lt_00B4:
cmp dword ptr [ebp-60], 2
jne .Lt_00B2
.Lt_00B3:
cmp dword ptr [ebp+16], 0
jne .Lt_00B6
push 1
push 59
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HMOCKPARAM
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0099
.Lt_00B6:
.Lt_00B5:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-28], eax
jmp .Lt_00AE
.Lt_00B2:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
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
je .Lt_00B9
push 1
push 59
sub esp, 8
call LEXGETTEXT
add esp, 8
push eax
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HMOCKPARAM
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0099
.Lt_00B9:
.Lt_00B8:
mov dword ptr [ebp-28], 0
.Lt_00B7:
.Lt_00AE:
cmp dword ptr [Lt_0115], 8
jl .Lt_00BB
sub esp, 4
push 0
push 0
push 27
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HMOCKPARAM
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0099
.Lt_00BB:
.Lt_00BA:
mov eax, dword ptr [Lt_0115]
imul eax, 129
lea ebx, [Lt_0116+eax]
mov dword ptr [ebp-8], ebx
sub esp, 12
push 0
push 1
push offset Lt_0000
push 0
push dword ptr [ebp-8]
call fb_StrAssign
add esp, 32
cmp dword ptr [ebp-28], 0
je .Lt_00BD
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 0
push dword ptr [ebp-8]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4120]
mov dword ptr [ebp-32], eax
sub esp, 12
push 4096
call LEXCHECKTOKEN
add esp, 16
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00BC
.Lt_00BD:
mov dword ptr [ebp-12], -2147483648
.Lt_00BC:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-44], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 40
jne .Lt_00BF
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp-16], -1
je .Lt_00C1
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
.Lt_00C1:
.Lt_00C0:
mov dword ptr [ebp-16], 3
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
jne .Lt_00C3
mov dword ptr [ebp-24], -1
jmp .Lt_00C2
.Lt_00C3:
sub esp, 4
push offset Lt_0117
lea eax, [ebp-44]
push eax
lea eax, [ebp-24]
push eax
call CARRAYDECL
add esp, 16
cmp dword ptr [ebp-44], 0
je .Lt_00C5
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
.Lt_00C5:
.Lt_00C4:
.Lt_00C2:
sub esp, 8
push 0
push 41
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00C7
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
.Lt_00C7:
.Lt_00C6:
.Lt_00BF:
.Lt_00BE:
mov dword ptr [ebp-40], 0
cmp dword ptr [ebp-16], -1
jne .Lt_00C9
mov eax, dword ptr [ENV+928]
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-40], -1
mov eax, dword ptr [ENV+196]
and eax, 2
test eax, eax
je .Lt_00CB
push 1
push 15
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMWARNING
add esp, 16
.Lt_00CB:
.Lt_00CA:
.Lt_00C9:
.Lt_00C8:
mov dword ptr [ebp-36], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .Lt_00CD
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp-12], -2147483648
je .Lt_00CF
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
jmp .Lt_0099
.Lt_00CF:
.Lt_00CE:
inc dword ptr [Lt_0115]
mov dword ptr [ebp-60], 1
cmp dword ptr [ebp-16], 2
jne .Lt_00D1
cmp dword ptr [ebp+16], 0
je .Lt_00D3
or dword ptr [ebp-60], 2
.Lt_00D3:
.Lt_00D2:
and dword ptr [ebp-60], -2
or dword ptr [ebp-60], 4
.Lt_00D1:
.Lt_00D0:
sub esp, 12
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
call CSYMBOLTYPE
add esp, 32
test eax, eax
jne .Lt_00D7
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
mov dword ptr [ebp-12], 8
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-36], -1
.Lt_00D7:
.Lt_00D6:
cmp dword ptr [ebp-16], 1
jne .Lt_00D9
sub esp, 8
push dword ptr [ebp-48]
push dword ptr [ebp-12]
call HCOMPLAINIFABSTRACTCLASS
add esp, 16
.Lt_00D9:
.Lt_00D8:
dec dword ptr [Lt_0115]
jmp .Lt_00CC
.Lt_00CD:
mov eax, dword ptr [ENV+888]
and eax, 4194304
test eax, eax
jne .Lt_00DB
sub esp, 4
push 0
push 147
push 4194304
call ERRREPORTNOTALLOWED
add esp, 16
mov dword ptr [ebp-36], -1
jmp .Lt_00DA
.Lt_00DB:
cmp dword ptr [ebp-28], 0
jne .Lt_00DD
push 1
push 59
push 0
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
mov dword ptr [ebp-36], -1
.Lt_00DD:
.Lt_00DC:
.Lt_00DA:
mov dword ptr [ebp-48], 0
or dword ptr [ebp-20], 1048576
.Lt_00CC:
cmp dword ptr [ENV+136], 0
jne .Lt_00DF
cmp dword ptr [ebp-40], 0
je .Lt_00E1
sub esp, 8
push dword ptr [ebp-48]
push dword ptr [ebp-12]
call SYMBGETDEFAULTPARAMMODE
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_00E1:
.Lt_00E0:
.Lt_00DF:
.Lt_00DE:
cmp dword ptr [ebp-12], -2147483648
jne .Lt_00E3
sub esp, 12
push dword ptr [ebp-8]
call SYMBGETDEFTYPE
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_00E3:
.Lt_00E2:
cmp dword ptr [ebp-36], 0
je .Lt_00E5
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
.Lt_00E5:
.Lt_00E4:
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_00E6
mov dword ptr [ebp-60], 24
jmp .Lt_010E
.Lt_00E6:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-60], eax
.Lt_010E:
mov eax, dword ptr [ebp-60]
mov dword ptr [ebp-64], eax
jmp .Lt_00E9
.Lt_00EB:
mov eax, dword ptr [ebp-16]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-72], eax
mov eax, dword ptr [ebp-12]
and eax, 480
je .Lt_00EC
mov dword ptr [ebp-68], 24
jmp .Lt_010F
.Lt_00EC:
mov eax, dword ptr [ebp-12]
and eax, 31
mov dword ptr [ebp-68], eax
.Lt_010F:
mov eax, dword ptr [ebp-68]
cmp eax, 18
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [ebp-72]
je .Lt_00EF
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
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
.Lt_00EF:
.Lt_00EE:
jmp .Lt_00E8
.Lt_00F0:
cmp dword ptr [ebp+16], 0
jne .Lt_00F2
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
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
jmp .Lt_00F1
.Lt_00F2:
cmp dword ptr [ebp-16], 1
jne .Lt_00F4
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
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
.Lt_00F4:
.Lt_00F3:
.Lt_00F1:
jmp .Lt_00E8
.Lt_00F5:
cmp dword ptr [ebp+16], 0
jne .Lt_00F7
cmp dword ptr [ebp-32], 0
jle .Lt_00F9
push 1
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
.Lt_00F9:
.Lt_00F8:
.Lt_00F7:
.Lt_00F6:
jmp .Lt_00E8
.Lt_00E9:
cmp dword ptr [ebp-64], 20
ja .Lt_00E8
mov eax, dword ptr [ebp-64]
jmp dword ptr [.LT_00FA+eax*4]
.LT_00FA:
.int .Lt_00F0
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00EB
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00EB
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00E8
.int .Lt_00EB
.int .Lt_00E8
.int .Lt_00F5
.Lt_00E8:
push 0
push dword ptr [ebp-20]
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp-48]
push dword ptr [ebp-12]
cmp dword ptr [ebp+16], 0
je .Lt_00FB
mov dword ptr [ebp-56], 0
jmp .Lt_0111
.Lt_00FB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-56], eax
.Lt_0111:
push dword ptr [ebp-56]
push dword ptr [ebp+8]
call SYMBADDPROCPARAM
add esp, 32
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .Lt_00FE
jmp .Lt_0099
.Lt_00FE:
.Lt_00FD:
cmp dword ptr [ebp+16], 0
jne .Lt_0100
mov eax, dword ptr [ebp-52]
mov ebx, dword ptr [ENV+272]
sal ebx, 2
mov esi, ebx
mov ecx, esi
sar ecx, 31
cmp dword ptr [eax+44], ecx
jl .Lt_0102
jg .Lt_011A
cmp dword ptr [eax+40], esi
jbe .Lt_0102
.Lt_011A:
mov esi, dword ptr [ENV+196]
and esi, 4
test esi, esi
je .Lt_0104
push 0
push 17
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMWARNING
add esp, 16
.Lt_0104:
.Lt_0103:
.Lt_0102:
.Lt_0101:
.Lt_0100:
.Lt_00FF:
call CASSIGNTOKEN
test eax, eax
je .Lt_0106
cmp dword ptr [ebp-16], 3
jne .Lt_0108
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 372
jne .Lt_010A
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-52]
or dword ptr [eax+12], 2048
jmp .Lt_0109
.Lt_010A:
push 0
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
.Lt_0109:
jmp .Lt_0107
.Lt_0108:
sub esp, 4
push dword ptr [ebp-52]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HOPTIONALEXPR
add esp, 16
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .Lt_010C
sub esp, 4
push dword ptr [ebp-60]
push dword ptr [ebp-52]
push dword ptr [ebp+8]
call SYMBMAKEPARAMOPTIONAL
add esp, 16
jmp .Lt_010B
.Lt_010C:
push 0
push 59
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HPARAMERROR
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
.Lt_010B:
.Lt_0107:
.Lt_0106:
.Lt_0105:
mov eax, dword ptr [ebp-52]
mov dword ptr [ebp-4], eax
.Lt_0099:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HPARAMDECL, .-HPARAMDECL

.section .bss
.balign 4
	.lcomm	Lt_0116,1032

.section .data
.balign 4
Lt_0115:
.int 0

.section .bss
.balign 4
	.lcomm	Lt_011B,64

.section .data
.balign 4
Lt_0117:
.int Lt_011B
.int Lt_011B
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

.section .rodata
.balign 4
Lt_00A2:	.ascii	"...\0"
