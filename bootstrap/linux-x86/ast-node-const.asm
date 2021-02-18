	.intel_syntax noprefix

.section .text
.balign 16

.globl ASTCONSTEQZERO
ASTCONSTEQZERO:
.type ASTCONSTEQZERO, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_005D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_005F
mov dword ptr [ebp-8], 24
jmp .Lt_0063
.Lt_005F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0063:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_0062
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+20]
fcomp qword ptr [Lt_0064]
fnstsw ax
test ah, 0b01000000
setnz al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .Lt_0061
.Lt_0062:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
mov ebx, -1
jne .Lt_0067
cmp dword ptr [eax+20], 0
je .Lt_0066
.Lt_0067:
xor ebx, ebx
.Lt_0066:
mov dword ptr [ebp-4], ebx
.Lt_0061:
.Lt_005E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTCONSTEQZERO, .-ASTCONSTEQZERO
.balign 16

.globl ASTCONSTGEZERO
ASTCONSTGEZERO:
.type ASTCONSTGEZERO, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_006A
mov dword ptr [ebp-8], 24
jmp .Lt_0071
.Lt_006A:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0071:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_006D
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+20]
fcomp qword ptr [Lt_0064]
fnstsw ax
sahf
setae al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
jmp .Lt_006C
.Lt_006D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_006F
mov dword ptr [ebp-12], 24
jmp .Lt_0072
.Lt_006F:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_0072:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_006E
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+24], 0
mov ebx, -1
jg .Lt_0074
jl .Lt_0075
cmp dword ptr [eax+20], 0
jae .Lt_0074
.Lt_0075:
xor ebx, ebx
.Lt_0074:
mov dword ptr [ebp-4], ebx
jmp .Lt_006C
.Lt_006E:
mov dword ptr [ebp-4], -1
.Lt_006C:
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTCONSTGEZERO, .-ASTCONSTGEZERO
.balign 16

.globl ASTISCONST0ORMINUS1
ASTISCONST0ORMINUS1:
.type ASTISCONST0ORMINUS1, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0076:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 16
jne .Lt_0079
sub esp, 12
push dword ptr [ebp+8]
call ASTCONSTGETASINT64
add esp, 16
mov dword ptr [ebp-12], eax
mov dword ptr [ebp-8], edx
cmp dword ptr [ebp-8], 0
mov eax, -1
jne .Lt_007D
cmp dword ptr [ebp-12], 0
je .Lt_007C
.Lt_007D:
xor eax, eax
.Lt_007C:
cmp dword ptr [ebp-8], 4294967295
mov edx, -1
jne .Lt_007F
cmp dword ptr [ebp-12], 4294967295
je .Lt_007E
.Lt_007F:
xor edx, edx
.Lt_007E:
or eax, edx
je .Lt_007B
mov dword ptr [ebp-4], -1
jmp .Lt_0077
.Lt_007B:
.Lt_007A:
.Lt_0079:
.Lt_0078:
mov dword ptr [ebp-4], 0
.Lt_0077:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTISCONST0ORMINUS1, .-ASTISCONST0ORMINUS1
.balign 16

.globl ASTNEWCONSTSTR
ASTNEWCONSTSTR:
.type ASTNEWCONSTSTR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0080:
sub esp, 8
push -1
push dword ptr [ebp+8]
call SYMBALLOCSTRCONST
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0083
jmp .Lt_0081
.Lt_0083:
.Lt_0082:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_0081:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTNEWCONSTSTR, .-ASTNEWCONSTSTR
.balign 16

.globl ASTNEWCONSTWSTR
ASTNEWCONSTWSTR:
.type ASTNEWCONSTWSTR, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0084:
sub esp, 8
push -1
push dword ptr [ebp+8]
call SYMBALLOCWSTRCONST
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0087
jmp .Lt_0085
.Lt_0087:
.Lt_0086:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-8]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_0085:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTNEWCONSTWSTR, .-ASTNEWCONSTWSTR
.balign 16

.globl ASTNEWCONSTI
ASTNEWCONSTI:
.type ASTNEWCONSTI, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0088:
sub esp, 4
push 0
push 13
push 16
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+20], ecx
mov dword ptr [eax+24], ebx
sub esp, 12
push 0
push 8
push dword ptr [ebp-8]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0089:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTNEWCONSTI, .-ASTNEWCONSTI
.balign 16

.globl ASTNEWCONSTF
ASTNEWCONSTF:
.type ASTNEWCONSTF, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_008A:
sub esp, 4
push 0
push 16
push 16
call ASTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+8]
push dword ptr [ebp+12]
pop dword ptr [eax+24]
pop dword ptr [eax+20]
sub esp, 12
push 0
push 0
push dword ptr [ebp-8]
push 0
push dword ptr [ebp+16]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-4], eax
.Lt_008B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTNEWCONSTF, .-ASTNEWCONSTF
.balign 16

.globl ASTNEWCONST
ASTNEWCONST:
.type ASTNEWCONST, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_008C:
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_008E
mov dword ptr [ebp-8], 24
jmp .Lt_0092
.Lt_008E:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_0092:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_0091
sub esp, 4
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [eax]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0090
.Lt_0091:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
push dword ptr [eax]
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0090:
.Lt_008D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size ASTNEWCONST, .-ASTNEWCONST
.balign 16

.globl ASTNEWCONSTZ
ASTNEWCONSTZ:
.type ASTNEWCONSTZ, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0093:
mov eax, dword ptr [ebp+8]
and eax, 511
mov ebx, eax
mov dword ptr [ebp-16], ebx
jmp .Lt_0096
.Lt_0098:
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0095
.Lt_0099:
sub esp, 12
push 0
call ASTNEWCONSTSTR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0095
.Lt_009A:
sub esp, 12
push 0
call ASTNEWCONSTWSTR
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0095
.Lt_009B:
sub esp, 12
push 0
push 0
push -1
push dword ptr [ebp+12]
push 20
call ASTTYPEINIBEGIN
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
push 0
push dword ptr [ebp-8]
call ASTTYPEINISCOPEBEGIN
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_009C:
cmp dword ptr [ebp-12], 0
je .Lt_009D
sub esp, 12
push 0
push -2147483648
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp-12]
push dword ptr [eax+28]
call ASTNEWCONSTZ
add esp, 8
push eax
push dword ptr [ebp-8]
call ASTTYPEINIADDASSIGN
add esp, 32
sub esp, 12
push dword ptr [ebp-12]
call SYMBUDTGETNEXTINITABLEFIELD
add esp, 16
mov dword ptr [ebp-12], eax
jmp .Lt_009C
.Lt_009D:
sub esp, 8
push 0
push dword ptr [ebp-8]
call ASTTYPEINISCOPEEND
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp-8]
call ASTTYPEINIEND
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0095
.Lt_009E:
cmp dword ptr [ebp+8], -2147483648
jne .Lt_00A0
mov dword ptr [ebp+8], 8
.Lt_00A0:
.Lt_009F:
mov eax, dword ptr [ebp+8]
and eax, 480
je .Lt_00A1
mov dword ptr [ebp-20], 24
jmp .Lt_00A6
.Lt_00A1:
mov eax, dword ptr [ebp+8]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_00A6:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_00A4
sub esp, 4
push dword ptr [ebp+8]
push dword ptr [Lt_0064+4]
push dword ptr [Lt_0064]
call ASTNEWCONSTF
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00A3
.Lt_00A4:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00A3:
jmp .Lt_0095
.Lt_0096:
cmp dword ptr [ebp-16], 20
ja .Lt_009E
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_00A5+eax*4]
.LT_00A5:
.int .Lt_0098
.int .Lt_009E
.int .Lt_009E
.int .Lt_009E
.int .Lt_0099
.int .Lt_009E
.int .Lt_009E
.int .Lt_009A
.int .Lt_009E
.int .Lt_009E
.int .Lt_009E
.int .Lt_009E
.int .Lt_009E
.int .Lt_009E
.int .Lt_009E
.int .Lt_009E
.int .Lt_009E
.int .Lt_0099
.int .Lt_0099
.int .Lt_009E
.int .Lt_009B
.Lt_0095:
.Lt_0094:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTNEWCONSTZ, .-ASTNEWCONSTZ
.balign 16

.globl ASTLOADCONST
ASTLOADCONST:
.type ASTLOADCONST, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A7:
cmp dword ptr [AST+136], 0
je .Lt_00AA
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
and ebx, 480
je .Lt_00AB
mov dword ptr [ebp-12], 24
jmp .Lt_00AF
.Lt_00AB:
mov ebx, dword ptr [ebp-8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_00AF:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
cmp dword ptr [SYMB_DTYPETB+ebx], 1
jne .Lt_00AE
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+8]
push dword ptr [ebp-8]
call dword ptr [IR+236]
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00AD
.Lt_00AE:
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
call dword ptr [IR+232]
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00AD:
.Lt_00AA:
.Lt_00A9:
.Lt_00A8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTLOADCONST, .-ASTLOADCONST
.balign 16

.globl ASTCONSTFLUSHTOINT
ASTCONSTFLUSHTOINT:
.type ASTCONSTFLUSHTOINT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00B0:
sub esp, 12
push 0
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [ebp+12]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+8], eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+20]
mov ebx, dword ptr [eax+24]
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
.Lt_00B1:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTCONSTFLUSHTOINT, .-ASTCONSTFLUSHTOINT
.balign 16

.globl ASTCONSTFLUSHTOSTR
ASTCONSTFLUSHTOSTR:
.type ASTCONSTFLUSHTOSTR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00B2:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00B4
mov dword ptr [ebp-16], 24
jmp .Lt_00BE
.Lt_00B4:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00BE:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_00B7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 16
jne .Lt_00B9
sub esp, 12
push 0
push -1
sub esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
call fb_DoubleToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_00B8
.Lt_00B9:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+20]
sub esp,4
fstp dword ptr [esp]
call fb_FloatToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_00B8:
jmp .Lt_00B6
.Lt_00B7:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
jne .Lt_00BA
sub esp, 12
push 0
push -1
sub esp, 8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
or eax, dword ptr [ebx+24]
cmp eax, 0
setne al
push eax
call fb_BoolToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_00B6
.Lt_00BA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00BC
mov dword ptr [ebp-20], 24
jmp .Lt_00BF
.Lt_00BC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-20], eax
.Lt_00BF:
mov eax, dword ptr [ebp-20]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_00BB
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call fb_LongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_00B6
.Lt_00BB:
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call fb_ULongintToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
.Lt_00B6:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
.Lt_00B3:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTCONSTFLUSHTOSTR, .-ASTCONSTFLUSHTOSTR
.balign 16

.globl ASTCONSTFLUSHTOWSTR
ASTCONSTFLUSHTOWSTR:
.type ASTCONSTFLUSHTOWSTR, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00C2
mov dword ptr [ebp-8], 24
jmp .Lt_00D1
.Lt_00C2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_00D1:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_00C5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 16
jne .Lt_00C7
sub esp, 4
sub esp, 4
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+24]
push dword ptr [ebx+20]
call fb_DoubleToWstr
add esp, 12
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset Lt_00D3
call fb_WstrAssign
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call fb_WstrDelete
add esp, 16
jmp .Lt_00C6
.Lt_00C7:
sub esp, 4
sub esp, 8
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+20]
sub esp,4
fstp dword ptr [esp]
call fb_FloatToWstr
add esp, 12
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset Lt_00D3
call fb_WstrAssign
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call fb_WstrDelete
add esp, 16
.Lt_00C6:
jmp .Lt_00C4
.Lt_00C5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 1
jne .Lt_00CA
sub esp, 4
sub esp, 8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+20]
or eax, dword ptr [ebx+24]
cmp eax, 0
setne al
push eax
call fb_BoolToWstr
add esp, 12
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset Lt_00D3
call fb_WstrAssign
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call fb_WstrDelete
add esp, 16
jmp .Lt_00C4
.Lt_00CA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00CD
mov dword ptr [ebp-12], 24
jmp .Lt_00D2
.Lt_00CD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_00D2:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_00CC
sub esp, 4
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call fb_LongintToWstr
add esp, 12
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset Lt_00D3
call fb_WstrAssign
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call fb_WstrDelete
add esp, 16
jmp .Lt_00C4
.Lt_00CC:
sub esp, 4
sub esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax+24]
push dword ptr [eax+20]
call fb_ULongintToWstr
add esp, 12
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
push 65
push offset Lt_00D3
call fb_WstrAssign
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call fb_WstrDelete
add esp, 16
.Lt_00C4:
sub esp, 12
push dword ptr [ebp+8]
call ASTDELNODE
add esp, 16
mov eax, offset Lt_00D3
mov dword ptr [ebp-4], eax
.Lt_00C1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTCONSTFLUSHTOWSTR, .-ASTCONSTFLUSHTOWSTR

.section .bss
.balign 4
	.lcomm	Lt_00D3,260

.section .text
.balign 16

.globl ASTCONSTGETASINT64
ASTCONSTGETASINT64:
.type ASTCONSTGETASINT64, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00D4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00D6
mov dword ptr [ebp-12], 24
jmp .Lt_00DA
.Lt_00D6:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_00DA:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_00D9
mov eax, dword ptr [ebp+8]
fld qword ptr [eax+20]
sub esp, 8
fistp qword ptr [esp]
pop ecx
pop ebx
mov dword ptr [ebp-8], ecx
mov dword ptr [ebp-4], ebx
jmp .Lt_00D8
.Lt_00D9:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+20]
mov ebx, dword ptr [ecx+24]
mov dword ptr [ebp-8], eax
mov dword ptr [ebp-4], ebx
.Lt_00D8:
.Lt_00D5:
mov eax, dword ptr [ebp-8]
mov edx, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTCONSTGETASINT64, .-ASTCONSTGETASINT64
.balign 16

.globl ASTCONSTGETASDOUBLE
ASTCONSTGETASDOUBLE:
.type ASTCONSTGETASDOUBLE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00DB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00DD
mov dword ptr [ebp-12], 24
jmp .Lt_00E4
.Lt_00DD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-12], eax
.Lt_00E4:
mov eax, dword ptr [ebp-12]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax], 1
jne .Lt_00E0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+20]
push dword ptr [eax+24]
pop dword ptr [ebp-4]
pop dword ptr [ebp-8]
jmp .Lt_00DF
.Lt_00E0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00E2
mov dword ptr [ebp-16], 24
jmp .Lt_00E5
.Lt_00E2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_00E5:
mov eax, dword ptr [ebp-16]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_00E1
mov eax, dword ptr [ebp+8]
fild qword ptr [eax+20]
fstp qword ptr [ebp-8]
jmp .Lt_00DF
.Lt_00E1:
mov eax, dword ptr [ebp+8]
fild qword ptr [eax+20]
cmp dword ptr [eax+24], 0
jns .Lt_00E6
push 0x403f
push 0x80000000
push 0
fldt [esp]
add esp, 12
faddp
.Lt_00E6:
fstp qword ptr [ebp-8]
.Lt_00DF:
.Lt_00DC:
fld qword ptr [ebp-8]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTCONSTGETASDOUBLE, .-ASTCONSTGETASDOUBLE
.balign 16

.globl ASTBUILDCONST
ASTBUILDCONST:
.type ASTBUILDCONST, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E7:
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
je .Lt_00EC
.Lt_00ED:
cmp dword ptr [ebp-16], 7
jne .Lt_00EB
.Lt_00EC:
sub esp, 12
push 0
push -2147483648
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+56]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-4], eax
jmp .Lt_00E9
.Lt_00EB:
sub esp, 4
push dword ptr [ebp-12]
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
lea ebx, [eax+56]
push ebx
call ASTNEWCONST
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_00EE:
.Lt_00E9:
.Lt_00E8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTBUILDCONST, .-ASTBUILDCONST
.balign 16

.globl ASTCONVERTRAWCONSTI
ASTCONVERTRAWCONSTI:
.type ASTCONVERTRAWCONSTI, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EF:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00F1
mov dword ptr [ebp-8], 24
jmp .Lt_00F5
.Lt_00F1:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-8], eax
.Lt_00F5:
mov eax, dword ptr [ebp-8]
imul eax, 28
cmp dword ptr [SYMB_DTYPETB+eax+8], 0
je .Lt_00F3
mov dword ptr [ebp-12], 13
jmp .Lt_00F6
.Lt_00F3:
mov dword ptr [ebp-12], 14
.Lt_00F6:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp-12]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+8], 0
inc dword ptr [AST+232]
sub esp, 12
push 0
push 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp+16], eax
dec dword ptr [AST+232]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-4], eax
.Lt_00F0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size ASTCONVERTRAWCONSTI, .-ASTCONVERTRAWCONSTI
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

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 8
Lt_0064:	.quad	0x0000000000000000
