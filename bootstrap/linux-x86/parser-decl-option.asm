	.intel_syntax noprefix

.section .text
.balign 16

.globl COPTDECL
COPTDECL:
.type COPTDECL, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_0067:
mov eax, dword ptr [ENV+888]
and eax, 33554432
test eax, eax
jne .Lt_006A
sub esp, 4
push 0
push 146
push 33554432
call ERRREPORTNOTALLOWED
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_006A:
.Lt_0069:
sub esp, 12
push 8
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_006C
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0068
.Lt_006C:
.Lt_006B:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_006E
.Lt_0070:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ENV+928], 1
jmp .Lt_006D
.Lt_0071:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ENV+944], -1
jmp .Lt_006D
.Lt_0072:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ENV+944], 0
jmp .Lt_006D
.Lt_0073:
mov eax, dword ptr [ENV+888]
and eax, 65536
test eax, eax
jne .Lt_0075
sub esp, 4
push 0
push 146
push 65536
call ERRREPORTNOTALLOWED
add esp, 16
jmp .Lt_0074
.Lt_0075:
mov dword ptr [ENV+948], -1
.Lt_0074:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_006D
.Lt_0076:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 9
push offset Lt_007A
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0079
.Lt_007B:
mov dword ptr [ENV+932], -1
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0077
.Lt_0079:
push 8
push offset Lt_007D
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_007C
.Lt_007E:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ENV+936], 0
jmp .Lt_0077
.Lt_007C:
push 7
push offset Lt_0080
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_007F
.Lt_0081:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ENV+940], -1
jmp .Lt_0077
.Lt_007F:
push 5
push offset Lt_0083
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0082
.Lt_0084:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 3
je .Lt_0086
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0085
.Lt_0086:
sub esp, 12
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VALINT
add esp, 16
mov dword ptr [ENV+924], eax
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0085:
jmp .Lt_0077
.Lt_0082:
push 10
push offset Lt_0088
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0087
.Lt_0089:
sub esp, 12
push 2050
call LEXSKIPTOKEN
add esp, 16
.Lt_008A:
call HUNDEFSYMBOL
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_008E
jmp .Lt_008B
.Lt_008E:
.Lt_008D:
sub esp, 12
push 2
call LEXSKIPTOKEN
add esp, 16
.Lt_008C:
jmp .Lt_008A
.Lt_008B:
jmp .Lt_0077
.Lt_0087:
push 8
push offset Lt_0090
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_008F
.Lt_0091:
mov eax, dword ptr [ENV+888]
and eax, 65536
test eax, eax
jne .Lt_0093
sub esp, 4
push 0
push 146
push 65536
call ERRREPORTNOTALLOWED
add esp, 16
jmp .Lt_0092
.Lt_0093:
mov dword ptr [ENV+948], 0
.Lt_0092:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0077
.Lt_008F:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.Lt_0094:
.Lt_0077:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_006D
.Lt_006E:
mov eax, dword ptr [ebp-4]
add eax, 4294966989
cmp eax, 85
ja .Lt_0076
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_0095+eax*4-1228]
.LT_0095:
.int .Lt_0072
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0071
.int .Lt_0076
.int .Lt_0070
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0076
.int .Lt_0073
.Lt_006D:
.Lt_0068:
mov esp, ebp
pop ebp
ret
.size COPTDECL, .-COPTDECL
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
HUNDEFSYMBOL:
.type HUNDEFSYMBOL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0096:
mov dword ptr [ebp-4], 0
sub esp, 12
push 2
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0099
.Lt_009B:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_009D
sub esp, 12
push dword ptr [ebp-4]
call SYMBDELFROMHASH
add esp, 16
jmp .Lt_009C
.Lt_009D:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
.Lt_009C:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0098
.Lt_009E:
sub esp, 8
push 3
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
push dword ptr [eax+4116]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_00A0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
jne .Lt_00A2
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .Lt_00A1
.Lt_00A2:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+140]
lea ebx, [SYMB+98352]
cmp dword ptr [eax], ebx
je .Lt_00A4
sub esp, 4
push 0
push 0
push 123
call ERRREPORT
add esp, 16
jmp .Lt_00A3
.Lt_00A4:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
and eax, 8388608
test eax, eax
je .Lt_00A6
sub esp, 4
push 0
push 0
push 177
call ERRREPORT
add esp, 16
jmp .Lt_00A5
.Lt_00A6:
sub esp, 12
push dword ptr [ebp-4]
call SYMBDELFROMHASH
add esp, 16
.Lt_00A5:
.Lt_00A3:
.Lt_00A1:
jmp .Lt_009F
.Lt_00A0:
sub esp, 8
push 5
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
push dword ptr [ebx+4116]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00A8
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .Lt_00A7
.Lt_00A8:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+140]
lea eax, [SYMB+98352]
cmp dword ptr [ebx], eax
je .Lt_00AA
sub esp, 4
push 0
push 0
push 123
call ERRREPORT
add esp, 16
jmp .Lt_00A9
.Lt_00AA:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
and ebx, 8388608
test ebx, ebx
je .Lt_00AC
sub esp, 4
push 0
push 0
push 177
call ERRREPORT
add esp, 16
jmp .Lt_00AB
.Lt_00AC:
sub esp, 12
push dword ptr [ebp-4]
call SYMBDELFROMHASH
add esp, 16
.Lt_00AB:
.Lt_00A9:
.Lt_00A7:
.Lt_009F:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0098
.Lt_00AD:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .Lt_0098
.Lt_0099:
cmp dword ptr [ebp-8], 2
ja .Lt_00AD
mov ebx, dword ptr [ebp-8]
jmp dword ptr [.LT_00AE+ebx*4]
.LT_00AE:
.int .Lt_009E
.int .Lt_009B
.int .Lt_009B
.Lt_0098:
.Lt_0097:
pop ebx
mov esp, ebp
pop ebp
ret
.size HUNDEFSYMBOL, .-HUNDEFSYMBOL

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_007A:	.ascii	"EXPLICIT\0"
.balign 4
Lt_007D:	.ascii	"PRIVATE\0"
.balign 4
Lt_0080:	.ascii	"ESCAPE\0"
.balign 4
Lt_0083:	.ascii	"BASE\0"
.balign 4
Lt_0088:	.ascii	"NOKEYWORD\0"
.balign 4
Lt_0090:	.ascii	"NOGOSUB\0"
