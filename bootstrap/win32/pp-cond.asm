	.intel_syntax noprefix

.section .text
.balign 16

.globl _PPCONDINIT@0
_PPCONDINIT@0:
.Lt_0069:
mov dword ptr [_PP+216], 0
.Lt_006A:
ret
.balign 16

.globl _PPCONDEND@0
_PPCONDEND@0:
.Lt_006B:
.Lt_006C:
ret
.balign 16

.globl _PPCONDIF@0
_PPCONDIF@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0078:
mov dword ptr [ebp-4], 0
push 256
call _LEXGETTOKEN@4
mov dword ptr [ebp-12], eax
jmp .Lt_007B
.Lt_007D:
push 2050
call _LEXSKIPTOKEN@4
push 0
lea eax, [ebp-8]
push eax
call _CIDENTIFIER@8
test eax, eax
je .Lt_007F
mov dword ptr [ebp-4], -1
.Lt_007F:
.Lt_007E:
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_007A
.Lt_0080:
push 2050
call _LEXSKIPTOKEN@4
push 0
lea eax, [ebp-8]
push eax
call _CIDENTIFIER@8
test eax, eax
jne .Lt_0082
mov dword ptr [ebp-4], -1
.Lt_0082:
.Lt_0081:
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_007A
.Lt_0083:
push 2048
call _LEXSKIPTOKEN@4
call _PPEXPRESSION@0
mov dword ptr [ebp-4], eax
jmp .Lt_007A
.Lt_007B:
mov eax, dword ptr [ebp-12]
add eax, 4294967030
cmp eax, 2
ja .Lt_007A
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_0084+eax*4-1064]
_.LT_0084:
.int .Lt_0083
.int .Lt_007D
.int .Lt_0080
.Lt_007A:
inc dword ptr [_PP+216]
cmp dword ptr [_PP+216], 64
jle .Lt_0086
push 0
push 0
push 27
call _ERRREPORT@12
call _ERRHIDEFURTHERERRORS@0
jmp .Lt_0079
.Lt_0086:
.Lt_0085:
mov eax, dword ptr [_PP+216]
mov ebx, dword ptr [ebp-4]
mov dword ptr [_PPTB+eax*8-8], ebx
mov ebx, dword ptr [_PP+216]
mov dword ptr [_PPTB+ebx*8-4], 0
cmp dword ptr [ebp-4], 0
jne .Lt_0088
call _PPSKIP@0
.Lt_0088:
.Lt_0087:
.Lt_0079:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPCONDELSE@0
_PPCONDELSE@0:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0089:
mov dword ptr [ebp-4], 0
cmp dword ptr [_PP+216], 0
jne .Lt_008C
push 0
push 0
push 44
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_008A
.Lt_008C:
.Lt_008B:
mov eax, dword ptr [_PP+216]
cmp dword ptr [_PPTB+eax*8-4], 0
jle .Lt_008E
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_008A
.Lt_008E:
.Lt_008D:
push 256
call _LEXGETTOKEN@4
cmp eax, 270
jne .Lt_0090
push 2048
call _LEXSKIPTOKEN@4
call _PPEXPRESSION@0
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_PP+216]
cmp dword ptr [_PPTB+eax*8-8], 0
je .Lt_0092
call _PPSKIP@0
jmp .Lt_008A
.Lt_0092:
.Lt_0091:
mov eax, dword ptr [_PP+216]
mov ebx, dword ptr [ebp-4]
mov dword ptr [_PPTB+eax*8-8], ebx
jmp .Lt_008F
.Lt_0090:
push 2048
call _LEXSKIPTOKEN@4
mov ebx, dword ptr [_PP+216]
inc dword ptr [_PPTB+ebx*8-4]
mov ebx, dword ptr [_PP+216]
not dword ptr [_PPTB+ebx*8-8]
.Lt_008F:
mov ebx, dword ptr [_PP+216]
cmp dword ptr [_PPTB+ebx*8-8], 0
jne .Lt_0094
call _PPSKIP@0
.Lt_0094:
.Lt_0093:
.Lt_008A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _PPCONDENDIF@0
_PPCONDENDIF@0:
.Lt_0095:
push 2048
call _LEXSKIPTOKEN@4
cmp dword ptr [_PP+216], 0
jle .Lt_0098
dec dword ptr [_PP+216]
jmp .Lt_0097
.Lt_0098:
push 0
push 0
push 44
call _ERRREPORT@12
.Lt_0097:
.Lt_0096:
ret
.balign 16

.globl _PPASSERT@0
_PPASSERT@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0099:
call _PPEXPRESSION@0
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_009C
push 0
push 0
push 308
call _ERRREPORT@12
.Lt_009C:
.Lt_009B:
.Lt_009A:
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__ppzcond:
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
_PPEXPRESSION@0:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_006D:
or dword ptr [_PARSER+148], 1024
jmp .Lt_006F
.Lt_0070:
and dword ptr [_PARSER+148], -1025
.Lt_006F:
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
jmp .Lt_0072
or dword ptr [_PARSER+148], 1024
jmp .Lt_0071
.Lt_0072:
and dword ptr [_PARSER+148], -1025
.Lt_0071:
cmp dword ptr [ebp-8], 0
jne .Lt_0074
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.Lt_0074:
.Lt_0073:
push dword ptr [ebp-8]
call _ASTGETSTRLITSYMBOL@4
test eax, eax
je .Lt_0076
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
jmp .Lt_0075
.Lt_0076:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .Lt_0077
push 0
push 0
push 11
call _ERRREPORT@12
push dword ptr [ebp-8]
call _ASTDELTREE@4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI@16
mov dword ptr [ebp-8], eax
.Lt_0077:
.Lt_0075:
push dword ptr [ebp-8]
call _ASTCONSTEQZERO@4
not eax
mov dword ptr [ebp-4], eax
.Lt_006E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_PPSKIP@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_009D:
mov dword ptr [_PP+220], -1
push 0
call _CCOMMENT@4
cmp dword ptr [_ENV+148], 0
je .Lt_00A0
cmp dword ptr [_ENV+876], 0
jne .Lt_00A2
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+24816]
call _ASTNEWLIT@4
push eax
call _ASTADD@4
mov eax, dword ptr [_LEX+422144]
lea ebx, [eax+24816]
push ebx
call _DZSTRRESET@4
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
.Lt_009F:
push 0
call _LEXGETTOKEN@4
cmp eax, 257
je .Lt_00A4
push 0
push 0
push 3
call _ERRREPORT@12
push 0
push 0
push -1
push 257
call _HSKIPUNTIL@16
jmp .Lt_00A3
.Lt_00A4:
push 0
call _LEXSKIPTOKEN@4
.Lt_00A3:
mov eax, dword ptr [_PP+216]
mov dword ptr [ebp-4], eax
.Lt_00A5:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 35
jne .Lt_00AA
.Lt_00AB:
push 256
call _LEXSKIPTOKEN@4
push 256
call _LEXGETTOKEN@4
mov dword ptr [ebp-12], eax
jmp .Lt_00AD
.Lt_00AF:
inc dword ptr [ebp-4]
jmp .Lt_00AC
.Lt_00B0:
mov eax, dword ptr [_PP+216]
cmp dword ptr [ebp-4], eax
jne .Lt_00B2
.Lt_00B3:
mov dword ptr [_PP+220], 0
call _PPCONDELSE@0
jmp .Lt_009E
jmp .Lt_00B1
.Lt_00B2:
cmp dword ptr [ebp-4], 0
jne .Lt_00B4
.Lt_00B5:
push 0
push 0
push 44
call _ERRREPORT@12
.Lt_00B4:
.Lt_00B1:
jmp .Lt_00AC
.Lt_00B6:
mov eax, dword ptr [_PP+216]
cmp dword ptr [ebp-4], eax
jne .Lt_00B8
.Lt_00B9:
mov dword ptr [_PP+220], 0
call _PPCONDENDIF@0
jmp .Lt_009E
jmp .Lt_00B7
.Lt_00B8:
cmp dword ptr [ebp-4], 0
jne .Lt_00BA
.Lt_00BB:
push 0
push 0
push 44
call _ERRREPORT@12
jmp .Lt_00B7
.Lt_00BA:
dec dword ptr [ebp-4]
.Lt_00BC:
.Lt_00B7:
jmp .Lt_00AC
.Lt_00BD:
jmp .Lt_00AC
.Lt_00BE:
push 0
push 0
push 17
call _ERRREPORT@12
jmp .Lt_00AC
.Lt_00AD:
mov eax, dword ptr [ebp-12]
add eax, 4294967030
cmp eax, 20
ja .Lt_00BE
mov eax, dword ptr [ebp-12]
jmp dword ptr [_.LT_00BF+eax*4-1064]
_.LT_00BF:
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00B0
.int .Lt_00B0
.int .Lt_00B6
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.int .Lt_00BD
.Lt_00AC:
jmp .Lt_00A8
.Lt_00AA:
cmp dword ptr [ebp-8], 256
jne .Lt_00C0
.Lt_00C1:
push 0
push 0
push 290
call _ERRREPORT@12
jmp .Lt_00A6
.Lt_00C0:
.Lt_00A8:
call _LEXSKIPLINE@0
push 0
call _LEXGETTOKEN@4
cmp eax, 257
jne .Lt_00C3
push 0
call _LEXSKIPTOKEN@4
.Lt_00C3:
.Lt_00C2:
.Lt_00A7:
jmp .Lt_00A5
.Lt_00A6:
mov dword ptr [_PP+220], 0
.Lt_009E:
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
.balign 4
	.lcomm	_PPTB,512

.section .ctors
.int _fb_ctor__ppzcond
