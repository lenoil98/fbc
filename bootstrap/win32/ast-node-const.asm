	.intel_syntax noprefix

.section .text
.balign 16

.globl _ASTCONSTEQZERO@4
_ASTCONSTEQZERO@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_005E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0060
mov dword ptr [ebp-8], 24
jmp .Lt_0064
.Lt_0060:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0064:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_0063
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+24]
fcomp qword ptr [_Lt_0065]
fnstsw ax
test ah, 0b01000000
setnz al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .Lt_0062
.Lt_0063:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
mov ebx, -1
jne .Lt_0068
cmp dword ptr [eax+24], 0
je .Lt_0067
.Lt_0068:
xor ebx, ebx
.Lt_0067:
mov dword ptr [ebp-4], ebx
.Lt_0062:
.Lt_005F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTCONSTGEZERO@4
_ASTCONSTGEZERO@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0069:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_006B
mov dword ptr [ebp-8], 24
jmp .Lt_0072
.Lt_006B:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0072:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_006E
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+24]
fcomp qword ptr [_Lt_0065]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .Lt_006D
.Lt_006E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0070
mov dword ptr [ebp-12], 24
jmp .Lt_0073
.Lt_0070:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0073:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_006F
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+28], 0
mov ebx, -1
jg .Lt_0075
jl .Lt_0076
cmp dword ptr [eax+24], 0
jae .Lt_0075
.Lt_0076:
xor ebx, ebx
.Lt_0075:
mov dword ptr [ebp-4], ebx
jmp .Lt_006D
.Lt_006F:
mov dword ptr [ebp-4], -1
.Lt_006D:
.Lt_006A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTISCONST0ORMINUS1@4
_ASTISCONST0ORMINUS1@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0077:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .Lt_007A
push dword ptr [ebp+8]
call _ASTCONSTGETASINT64@4
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], edx
cmp dword ptr [ebp-8], 0
mov eax, -1
jne .Lt_007E
cmp dword ptr [ebp-12], 0
je .Lt_007D
.Lt_007E:
xor eax, eax
.Lt_007D:
cmp dword ptr [ebp-8], 4294967295
mov edx, -1
jne .Lt_0080
cmp dword ptr [ebp-12], 4294967295
je .Lt_007F
.Lt_0080:
xor edx, edx
.Lt_007F:
or eax, edx
je .Lt_007C
mov dword ptr [ebp-4], -1
jmp .Lt_0078
.Lt_007C:
.Lt_007B:
.Lt_007A:
.Lt_0079:
mov dword ptr [ebp-4], 0
.Lt_0078:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWCONSTSTR@4
_ASTNEWCONSTSTR@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0081:
push -1
push dword ptr [ebp+8]
call _SYMBALLOCSTRCONST@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0084
jmp .Lt_0082
.Lt_0084:
.Lt_0083:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
.Lt_0082:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWCONSTWSTR@4
_ASTNEWCONSTWSTR@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0085:
push -1
push dword ptr [ebp+8]
call _SYMBALLOCWSTRCONST@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0088
jmp .Lt_0086
.Lt_0088:
.Lt_0087:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
.Lt_0086:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTNEWCONSTI@16
_ASTNEWCONSTI@16:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0089:
push 0
push 13
push 16
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+24], ecx
mov dword ptr [eax+28], ebx
push 0
push 8
push dword ptr [ebp-8]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _ASTNEWCONV@20
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_008A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16

.globl _ASTNEWCONSTF@12
_ASTNEWCONSTF@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_008B:
push 0
push 16
push 16
call _ASTNEWNODE@12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+8]
push dword ptr [ebp+12]
pop dword ptr [eax+28]
pop dword ptr [eax+24]
push 0
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+16]
call _ASTNEWCONV@20
mov dword ptr [ebp-4], eax
.Lt_008C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTNEWCONST@12
_ASTNEWCONST@12:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_008D:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_008F
mov dword ptr [ebp-8], 24
jmp .Lt_0093
.Lt_008F:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0093:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_0092
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [eax]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-4], eax
jmp .Lt_0091
.Lt_0092:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [eax]
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.Lt_0091:
.Lt_008E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16

.globl _ASTNEWCONSTZ@8
_ASTNEWCONSTZ@8:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0094:
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-16], ebx
jmp .Lt_0097
.Lt_0099:
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
jmp .Lt_0096
.Lt_009A:
push 0
call _ASTNEWCONSTSTR@4
mov dword ptr [ebp-4], eax
jmp .Lt_0096
.Lt_009B:
push 0
call _ASTNEWCONSTWSTR@4
mov dword ptr [ebp-4], eax
jmp .Lt_0096
.Lt_009C:
push 0
push 0
push -1
push dword ptr [ebp+12]
push 20
call _ASTTYPEINIBEGIN@20
mov dword ptr [ebp-8], eax
push 0
push 0
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEBEGIN@12
push dword ptr [ebp+12]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-12], eax
.Lt_009D:
cmp dword ptr [ebp-12], 0
je .Lt_009E
push 0
push -2147483648
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+28]
call _ASTNEWCONSTZ@8
push eax
push dword ptr [ebp-8]
call _ASTTYPEINIADDASSIGN@20
push dword ptr [ebp-12]
call _SYMBUDTGETNEXTINITABLEFIELD@4
mov dword ptr [ebp-12], eax
jmp .Lt_009D
.Lt_009E:
push 0
push dword ptr [ebp-8]
call _ASTTYPEINISCOPEEND@8
push 0
push dword ptr [ebp-8]
call _ASTTYPEINIEND@8
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0096
.Lt_009F:
cmp dword ptr [ebp+8], -2147483648
jne .Lt_00A1
mov dword ptr [ebp+8], 8
.Lt_00A1:
.Lt_00A0:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_00A2
mov dword ptr [ebp-20], 24
jmp .Lt_00A7
.Lt_00A2:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_00A7:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_00A5
push dword ptr [ebp+8]
push dword ptr [_Lt_0065+4]
push dword ptr [_Lt_0065]
call _ASTNEWCONSTF@12
mov dword ptr [ebp-4], eax
jmp .Lt_00A4
.Lt_00A5:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-4], eax
.Lt_00A4:
jmp .Lt_0096
.Lt_0097:
cmp dword ptr [ebp-16], 20
ja .Lt_009F
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_00A6+eax*4]
_.LT_00A6:
.int .Lt_0099
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009A
.int .Lt_009F
.int .Lt_009F
.int .Lt_009B
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009F
.int .Lt_009A
.int .Lt_009A
.int .Lt_009F
.int .Lt_009C
.Lt_0096:
.Lt_0095:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTLOADCONST@4
_ASTLOADCONST@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A8:
cmp dword ptr [_AST+136], 0
je .Lt_00AB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_00AC
mov dword ptr [ebp-12], 24
jmp .Lt_00B0
.Lt_00AC:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_00B0:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
cmp dword ptr [_SYMB_DTYPETB+ebx], 1
jne .Lt_00AF
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-8]
call dword ptr [_IR+236]
mov dword ptr [ebp-4], eax
jmp .Lt_00AE
.Lt_00AF:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
call dword ptr [_IR+232]
mov dword ptr [ebp-4], eax
.Lt_00AE:
.Lt_00AB:
.Lt_00AA:
.Lt_00A9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTCONSTFLUSHTOINT@8
_ASTCONSTFLUSHTOINT@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00B1:
push 0
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [ebp+12]
call _ASTNEWCONV@20
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+24]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
push dword ptr [ebp+8]
call _ASTDELNODE@4
.Lt_00B2:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _ASTCONSTFLUSHTOSTR@4
_ASTCONSTFLUSHTOSTR@4:
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00B3:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00B5
mov dword ptr [ebp-16], 24
jmp .Lt_00BF
.Lt_00B5:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00BF:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_00B8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 16
jne .Lt_00BA
push 0
push -1
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
call _fb_DoubleToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_00B9
.Lt_00BA:
push 0
push -1
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+24]
sub esp,4
fstp dword ptr [esp]
call _fb_FloatToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_00B9:
jmp .Lt_00B7
.Lt_00B8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
jne .Lt_00BB
push 0
push -1
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
or eax, dword ptr [ebx+28]
cmp eax, 0
setne al
push eax
call _fb_BoolToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_00B7
.Lt_00BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00BD
mov dword ptr [ebp-20], 24
jmp .Lt_00C0
.Lt_00BD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_00C0:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_00BC
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
jmp .Lt_00B7
.Lt_00BC:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_ULongintToStr@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
.Lt_00B7:
push dword ptr [ebp+8]
call _ASTDELNODE@4
.Lt_00B4:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTCONSTFLUSHTOWSTR@4
_ASTCONSTFLUSHTOWSTR@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00C3
mov dword ptr [ebp-8], 24
jmp .Lt_00D2
.Lt_00C3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_00D2:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_00C6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 16
jne .Lt_00C8
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+28]
push dword ptr [ebx+24]
call _fb_DoubleToWstr@8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset _Lt_00D4
call _fb_WstrAssign@12
push dword ptr [ebp-16]
call _fb_WstrDelete@4
jmp .Lt_00C7
.Lt_00C8:
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+24]
sub esp,4
fstp dword ptr [esp]
call _fb_FloatToWstr@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset _Lt_00D4
call _fb_WstrAssign@12
push dword ptr [ebp-16]
call _fb_WstrDelete@4
.Lt_00C7:
jmp .Lt_00C5
.Lt_00C6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
jne .Lt_00CB
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+24]
or eax, dword ptr [ebx+28]
cmp eax, 0
setne al
push eax
call _fb_BoolToWstr@4
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset _Lt_00D4
call _fb_WstrAssign@12
push dword ptr [ebp-16]
call _fb_WstrDelete@4
jmp .Lt_00C5
.Lt_00CB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00CE
mov dword ptr [ebp-12], 24
jmp .Lt_00D3
.Lt_00CE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_00D3:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_00CD
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_LongintToWstr@8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset _Lt_00D4
call _fb_WstrAssign@12
push dword ptr [ebp-16]
call _fb_WstrDelete@4
jmp .Lt_00C5
.Lt_00CD:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [eax+24]
call _fb_ULongintToWstr@8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset _Lt_00D4
call _fb_WstrAssign@12
push dword ptr [ebp-16]
call _fb_WstrDelete@4
.Lt_00C5:
push dword ptr [ebp+8]
call _ASTDELNODE@4
mov eax, offset _Lt_00D4
mov dword ptr [ebp-4], eax
.Lt_00C2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_00D4,130

.section .text
.balign 16

.globl _ASTCONSTGETASINT64@4
_ASTCONSTGETASINT64@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00D5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00D7
mov dword ptr [ebp-12], 24
jmp .Lt_00DB
.Lt_00D7:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_00DB:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_00DA
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+24]
sub esp, 8
fistp qword ptr [esp]
pop ecx
pop ebx
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
jmp .Lt_00D9
.Lt_00DA:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+24]
mov ebx, dword ptr [ecx+28]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
.Lt_00D9:
.Lt_00D6:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTCONSTGETASDOUBLE@4
_ASTCONSTGETASDOUBLE@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00DC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00DE
mov dword ptr [ebp-12], 24
jmp .Lt_00E5
.Lt_00DE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_00E5:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax], 1
jne .Lt_00E1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+28]
pop dword ptr [ebp-4]
pop dword ptr [ebp-8]
jmp .Lt_00E0
.Lt_00E1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00E3
mov dword ptr [ebp-16], 24
jmp .Lt_00E6
.Lt_00E3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00E6:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_00E2
mov eax, dword ptr [ebp+8]
fild qword ptr [eax+24]
fstp qword ptr [ebp-8]
jmp .Lt_00E0
.Lt_00E2:
mov eax, dword ptr [ebp+8]
fild qword ptr [eax+24]
cmp dword ptr [eax+28], 0
jns .Lt_00E7
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_00E7:
fstp qword ptr [ebp-8]
.Lt_00E0:
.Lt_00DD:
fld qword ptr [ebp-8]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTBUILDCONST@4
_ASTBUILDCONST@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
and eax, 511
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 4
je .Lt_00ED
.Lt_00EE:
cmp dword ptr [ebp-16], 7
jne .Lt_00EC
.Lt_00ED:
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call _ASTNEWVAR@20
mov dword ptr [ebp-4], eax
jmp .Lt_00EA
.Lt_00EC:
push dword ptr [ebp-12]
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
push ebx
call _ASTNEWCONST@12
mov dword ptr [ebp-4], eax
.Lt_00EF:
.Lt_00EA:
.Lt_00E9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _ASTCONVERTRAWCONSTI@12
_ASTCONVERTRAWCONSTI@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_00F0:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00F2
mov dword ptr [ebp-8], 24
jmp .Lt_00F6
.Lt_00F2:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_00F6:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [_SYMB_DTYPETB+eax+8], 0
je .Lt_00F4
mov dword ptr [ebp-12], 13
jmp .Lt_00F7
.Lt_00F4:
mov dword ptr [ebp-12], 14
.Lt_00F7:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+8], 0
inc dword ptr [_AST+232]
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTNEWCONV@20
mov dword ptr [ebp+16], eax
dec dword ptr [_AST+232]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.Lt_00F1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12
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

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 8
_Lt_0065:	.quad	0x0000000000000000
