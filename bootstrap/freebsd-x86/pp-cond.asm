	.intel_syntax noprefix

.section .text
.balign 16

.globl PPCONDINIT
PPCONDINIT:
.Lt_0068:
mov dword ptr [PP+208], 0
.Lt_0069:
ret
.balign 16

.globl PPCONDEND
PPCONDEND:
.Lt_006A:
.Lt_006B:
ret
.balign 16

.globl PPCONDIF
PPCONDIF:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0077:
mov dword ptr [ebp-4], 0
push 256
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_007A
.Lt_007C:
push 2050
call LEXSKIPTOKEN
add esp, 4
push 0
lea eax, [ebp-8]
push eax
call CIDENTIFIER
add esp, 8
test eax, eax
je .Lt_007E
mov dword ptr [ebp-4], -1
.Lt_007E:
.Lt_007D:
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_0079
.Lt_007F:
push 2050
call LEXSKIPTOKEN
add esp, 4
push 0
lea eax, [ebp-8]
push eax
call CIDENTIFIER
add esp, 8
test eax, eax
jne .Lt_0081
mov dword ptr [ebp-4], -1
.Lt_0081:
.Lt_0080:
push 0
call LEXSKIPTOKEN
add esp, 4
jmp .Lt_0079
.Lt_0082:
push 2048
call LEXSKIPTOKEN
add esp, 4
call PPEXPRESSION
mov dword ptr [ebp-4], eax
jmp .Lt_0079
.Lt_007A:
mov eax, dword ptr [ebp-12]
add eax, 4294967030
cmp eax, 2
ja .Lt_0079
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_0083+eax*4-1064]
.LT_0083:
.int .Lt_0082
.int .Lt_007C
.int .Lt_007F
.Lt_0079:
inc dword ptr [PP+208]
cmp dword ptr [PP+208], 64
jle .Lt_0085
push 0
push 0
push 27
call ERRREPORT
add esp, 12
call ERRHIDEFURTHERERRORS
jmp .Lt_0078
.Lt_0085:
.Lt_0084:
mov eax, dword ptr [PP+208]
mov ebx, dword ptr [ebp-4]
mov dword ptr [PPTB+eax*8-8], ebx
mov ebx, dword ptr [PP+208]
mov dword ptr [PPTB+ebx*8-4], 0
cmp dword ptr [ebp-4], 0
jne .Lt_0087
call PPSKIP
.Lt_0087:
.Lt_0086:
.Lt_0078:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl PPCONDELSE
PPCONDELSE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0088:
mov dword ptr [ebp-4], 0
cmp dword ptr [PP+208], 0
jne .Lt_008B
push 0
push 0
push 44
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0089
.Lt_008B:
.Lt_008A:
mov eax, dword ptr [PP+208]
cmp dword ptr [PPTB+eax*8-4], 0
jle .Lt_008D
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0089
.Lt_008D:
.Lt_008C:
push 256
call LEXGETTOKEN
add esp, 4
cmp eax, 270
jne .Lt_008F
push 2048
call LEXSKIPTOKEN
add esp, 4
call PPEXPRESSION
mov dword ptr [ebp-4], eax
mov eax, dword ptr [PP+208]
cmp dword ptr [PPTB+eax*8-8], 0
je .Lt_0091
call PPSKIP
jmp .Lt_0089
.Lt_0091:
.Lt_0090:
mov eax, dword ptr [PP+208]
mov ebx, dword ptr [ebp-4]
mov dword ptr [PPTB+eax*8-8], ebx
jmp .Lt_008E
.Lt_008F:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov ebx, dword ptr [PP+208]
inc dword ptr [PPTB+ebx*8-4]
mov ebx, dword ptr [PP+208]
not dword ptr [PPTB+ebx*8-8]
.Lt_008E:
mov ebx, dword ptr [PP+208]
cmp dword ptr [PPTB+ebx*8-8], 0
jne .Lt_0093
call PPSKIP
.Lt_0093:
.Lt_0092:
.Lt_0089:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl PPCONDENDIF
PPCONDENDIF:
.Lt_0094:
push 2048
call LEXSKIPTOKEN
add esp, 4
cmp dword ptr [PP+208], 0
jle .Lt_0097
dec dword ptr [PP+208]
jmp .Lt_0096
.Lt_0097:
push 0
push 0
push 44
call ERRREPORT
add esp, 12
.Lt_0096:
.Lt_0095:
ret
.balign 16

.globl PPASSERT
PPASSERT:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0098:
call PPEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_009B
push 0
push 0
push 308
call ERRREPORT
add esp, 12
.Lt_009B:
.Lt_009A:
.Lt_0099:
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__ppzcond:
.Lt_0002:
.Lt_0003:
ret
.balign 16
_ZN11TSTRSETITEMaSERKS_:
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
call fb_StrAssign
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
PPEXPRESSION:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_006C:
or dword ptr [PARSER+148], 1024
jmp .Lt_006E
.Lt_006F:
and dword ptr [PARSER+148], -1025
.Lt_006E:
call CEXPRESSION
mov dword ptr [ebp-8], eax
jmp .Lt_0071
or dword ptr [PARSER+148], 1024
jmp .Lt_0070
.Lt_0071:
and dword ptr [PARSER+148], -1025
.Lt_0070:
cmp dword ptr [ebp-8], 0
jne .Lt_0073
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0073:
.Lt_0072:
push dword ptr [ebp-8]
call ASTGETSTRLITSYMBOL
add esp, 4
test eax, eax
je .Lt_0075
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0074
.Lt_0075:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .Lt_0076
push 0
push 0
push 11
call ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0076:
.Lt_0074:
push dword ptr [ebp-8]
call ASTCONSTEQZERO
add esp, 4
not eax
mov dword ptr [ebp-4], eax
.Lt_006D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
PPSKIP:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_009C:
mov dword ptr [PP+212], -1
push 0
call CCOMMENT
add esp, 4
cmp dword ptr [ENV+148], 0
je .Lt_009F
cmp dword ptr [ENV+876], 0
jne .Lt_00A1
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+49392]
call ASTNEWLIT
add esp, 4
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+49392]
push ebx
call DZSTRRESET
add esp, 4
.Lt_00A1:
.Lt_00A0:
.Lt_009F:
.Lt_009E:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 257
je .Lt_00A3
push 0
push 0
push 3
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 257
call HSKIPUNTIL
add esp, 16
jmp .Lt_00A2
.Lt_00A3:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_00A2:
mov eax, dword ptr [PP+208]
mov dword ptr [ebp-4], eax
.Lt_00A4:
push 0
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 35
jne .Lt_00A9
.Lt_00AA:
push 256
call LEXSKIPTOKEN
add esp, 4
push 256
call LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_00AC
.Lt_00AE:
inc dword ptr [ebp-4]
jmp .Lt_00AB
.Lt_00AF:
mov eax, dword ptr [PP+208]
cmp dword ptr [ebp-4], eax
jne .Lt_00B1
.Lt_00B2:
mov dword ptr [PP+212], 0
call PPCONDELSE
jmp .Lt_009D
jmp .Lt_00B0
.Lt_00B1:
cmp dword ptr [ebp-4], 0
jne .Lt_00B3
.Lt_00B4:
push 0
push 0
push 44
call ERRREPORT
add esp, 12
.Lt_00B3:
.Lt_00B0:
jmp .Lt_00AB
.Lt_00B5:
mov eax, dword ptr [PP+208]
cmp dword ptr [ebp-4], eax
jne .Lt_00B7
.Lt_00B8:
mov dword ptr [PP+212], 0
call PPCONDENDIF
jmp .Lt_009D
jmp .Lt_00B6
.Lt_00B7:
cmp dword ptr [ebp-4], 0
jne .Lt_00B9
.Lt_00BA:
push 0
push 0
push 44
call ERRREPORT
add esp, 12
jmp .Lt_00B6
.Lt_00B9:
dec dword ptr [ebp-4]
.Lt_00BB:
.Lt_00B6:
jmp .Lt_00AB
.Lt_00BC:
jmp .Lt_00AB
.Lt_00BD:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
jmp .Lt_00AB
.Lt_00AC:
mov eax, dword ptr [ebp-12]
add eax, 4294967030
cmp eax, 20
ja .Lt_00BD
mov eax, dword ptr [ebp-12]
jmp dword ptr [.LT_00BE+eax*4-1064]
.LT_00BE:
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AE
.int .Lt_00AF
.int .Lt_00AF
.int .Lt_00B5
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.int .Lt_00BC
.Lt_00AB:
jmp .Lt_00A7
.Lt_00A9:
cmp dword ptr [ebp-8], 256
jne .Lt_00BF
.Lt_00C0:
push 0
push 0
push 290
call ERRREPORT
add esp, 12
jmp .Lt_00A5
.Lt_00BF:
.Lt_00A7:
call LEXSKIPLINE
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 257
jne .Lt_00C2
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_00C2:
.Lt_00C1:
.Lt_00A6:
jmp .Lt_00A4
.Lt_00A5:
mov dword ptr [PP+212], 0
.Lt_009D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
.balign 4
	.lcomm	PPTB,512

.section .ctors
.int fb_ctor__ppzcond
