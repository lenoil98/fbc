	.intel_syntax noprefix

.section .text
.balign 16

.globl _COPTDECL@0
_COPTDECL@0:
push ebp
mov ebp, esp
sub esp, 16
.Lt_0068:
mov eax, dword ptr [_ENV+888]
and eax, 33554432
test eax, eax
jne .Lt_006B
push 0
push 146
push 33554432
call _ERRREPORTNOTALLOWED@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0069
.Lt_006B:
.Lt_006A:
push 8
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_006D
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0069
.Lt_006D:
.Lt_006C:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-4], eax
jmp .Lt_006F
.Lt_0071:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [_ENV+928], 1
jmp .Lt_006E
.Lt_0072:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [_ENV+944], -1
jmp .Lt_006E
.Lt_0073:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [_ENV+944], 0
jmp .Lt_006E
.Lt_0074:
mov eax, dword ptr [_ENV+888]
and eax, 65536
test eax, eax
jne .Lt_0076
push 0
push 146
push 65536
call _ERRREPORTNOTALLOWED@12
jmp .Lt_0075
.Lt_0076:
mov dword ptr [_ENV+948], -1
.Lt_0075:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_006E
.Lt_0077:
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 9
push offset _Lt_007B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_007A
.Lt_007C:
mov dword ptr [_ENV+932], -1
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_0078
.Lt_007A:
push 8
push offset _Lt_007E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_007D
.Lt_007F:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [_ENV+936], 0
jmp .Lt_0078
.Lt_007D:
push 7
push offset _Lt_0081
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0080
.Lt_0082:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [_ENV+940], -1
jmp .Lt_0078
.Lt_0080:
push 5
push offset _Lt_0084
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0083
.Lt_0085:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETCLASS@4
cmp eax, 3
je .Lt_0087
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_0086
.Lt_0087:
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_VALINT@4
mov dword ptr [_ENV+924], eax
push 0
call _LEXSKIPTOKEN@4
.Lt_0086:
jmp .Lt_0078
.Lt_0083:
push 10
push offset _Lt_0089
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0088
.Lt_008A:
push 2050
call _LEXSKIPTOKEN@4
.Lt_008B:
call _HUNDEFSYMBOL@0
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_008F
jmp .Lt_008C
.Lt_008F:
.Lt_008E:
push 2
call _LEXSKIPTOKEN@4
.Lt_008D:
jmp .Lt_008B
.Lt_008C:
jmp .Lt_0078
.Lt_0088:
push 8
push offset _Lt_0091
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0090
.Lt_0092:
mov eax, dword ptr [_ENV+888]
and eax, 65536
test eax, eax
jne .Lt_0094
push 0
push 146
push 65536
call _ERRREPORTNOTALLOWED@12
jmp .Lt_0093
.Lt_0094:
mov dword ptr [_ENV+948], 0
.Lt_0093:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_0078
.Lt_0090:
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_0095:
.Lt_0078:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_006E
.Lt_006F:
mov eax, dword ptr [ebp-4]
add eax, 4294966989
cmp eax, 85
ja .Lt_0077
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_0096+eax*4-1228]
_.LT_0096:
.int .Lt_0073
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0072
.int .Lt_0077
.int .Lt_0071
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0077
.int .Lt_0074
.Lt_006E:
.Lt_0069:
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
_HUNDEFSYMBOL@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0097:
mov dword ptr [ebp-4], 0
push 2
call _LEXGETCLASS@4
mov dword ptr [ebp-8], eax
jmp .Lt_009A
.Lt_009C:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
mov eax, dword ptr [ebx+2068]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_009E
push dword ptr [ebp-4]
call _SYMBDELFROMHASH@4
jmp .Lt_009D
.Lt_009E:
push 0
push 0
push 14
call _ERRREPORT@12
.Lt_009D:
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_0099
.Lt_009F:
push 3
mov ebx, dword ptr [_LEX+422144]
mov eax, dword ptr [ebx+8356]
push dword ptr [eax+2068]
call _SYMBFINDBYCLASS@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_00A1
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
and ebx, 32
test ebx, ebx
jne .Lt_00A3
push 0
push 0
push 14
call _ERRREPORT@12
jmp .Lt_00A2
.Lt_00A3:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+144]
lea ebx, [_SYMB+98352]
cmp dword ptr [eax], ebx
je .Lt_00A5
push 0
push 0
push 123
call _ERRREPORT@12
jmp .Lt_00A4
.Lt_00A5:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
and eax, 8388608
test eax, eax
je .Lt_00A7
push 0
push 0
push 177
call _ERRREPORT@12
jmp .Lt_00A6
.Lt_00A7:
push dword ptr [ebp-4]
call _SYMBDELFROMHASH@4
.Lt_00A6:
.Lt_00A4:
.Lt_00A2:
jmp .Lt_00A0
.Lt_00A1:
push 5
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
push dword ptr [ebx+2068]
call _SYMBFINDBYCLASS@8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00A9
push 0
push 0
push 14
call _ERRREPORT@12
jmp .Lt_00A8
.Lt_00A9:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+144]
lea eax, [_SYMB+98352]
cmp dword ptr [ebx], eax
je .Lt_00AB
push 0
push 0
push 123
call _ERRREPORT@12
jmp .Lt_00AA
.Lt_00AB:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+12]
and ebx, 8388608
test ebx, ebx
je .Lt_00AD
push 0
push 0
push 177
call _ERRREPORT@12
jmp .Lt_00AC
.Lt_00AD:
push dword ptr [ebp-4]
call _SYMBDELFROMHASH@4
.Lt_00AC:
.Lt_00AA:
.Lt_00A8:
.Lt_00A0:
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_0099
.Lt_00AE:
push 0
push 0
push 17
call _ERRREPORT@12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL@16
jmp .Lt_0099
.Lt_009A:
cmp dword ptr [ebp-8], 2
ja .Lt_00AE
mov ebx, dword ptr [ebp-8]
jmp dword ptr [_.LT_00AF+ebx*4]
_.LT_00AF:
.int .Lt_009F
.int .Lt_009C
.int .Lt_009C
.Lt_0099:
.Lt_0098:
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
.balign 4
_Lt_007B:	.ascii	"EXPLICIT\0"
.balign 4
_Lt_007E:	.ascii	"PRIVATE\0"
.balign 4
_Lt_0081:	.ascii	"ESCAPE\0"
.balign 4
_Lt_0084:	.ascii	"BASE\0"
.balign 4
_Lt_0089:	.ascii	"NOKEYWORD\0"
.balign 4
_Lt_0091:	.ascii	"NOGOSUB\0"
