	.intel_syntax noprefix

.section .text
.balign 16

.globl _CTYPEDEFMULTDECL@0
_CTYPEDEFMULTDECL@0:
push ebp
mov ebp, esp
sub esp, 28
.Lt_00AE:
push 9
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_00B1
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00AF
.Lt_00B1:
.Lt_00B0:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-8]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-4]
push eax
call _HREADTYPE@16
mov dword ptr [ebp-24], eax
.Lt_00B2:
call _HREADID@0
mov dword ptr [ebp-28], eax
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call _HADDTYPEDEF@28
.Lt_00B4:
push 0
push 44
call _HMATCH@8
test eax, eax
jne .Lt_00B2
.Lt_00B3:
.Lt_00AF:
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CTYPEDEFSINGLEDECL@4
_CTYPEDEFSINGLEDECL@4:
push ebp
mov ebp, esp
sub esp, 24
.Lt_00B5:
push 9
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_00B8
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00B6
.Lt_00B8:
.Lt_00B7:
.Lt_00B9:
push 2048
push 376
call _HMATCH@8
test eax, eax
jne .Lt_00BD
push 0
push 0
push 17
call _ERRREPORT@12
.Lt_00BD:
.Lt_00BC:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-8]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-20]
push eax
lea eax, [ebp-4]
push eax
call _HREADTYPE@16
mov dword ptr [ebp-24], eax
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call _HADDTYPEDEF@28
push 0
push 44
call _HMATCH@8
test eax, eax
jne .Lt_00BF
jmp .Lt_00BA
.Lt_00BF:
.Lt_00BE:
call _HREADID@0
mov dword ptr [ebp+8], eax
.Lt_00BB:
jmp .Lt_00B9
.Lt_00BA:
.Lt_00B6:
mov esp, ebp
pop ebp
ret 4
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
_HPTRDECL@4:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0068:
mov dword ptr [ebp-4], 0
.Lt_006A:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-8], eax
jmp .Lt_006E
.Lt_0070:
push 2048
call _LEXSKIPTOKEN@4
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 373
je .Lt_0074
.Lt_0075:
cmp dword ptr [ebp-12], 374
jne .Lt_0073
.Lt_0074:
cmp dword ptr [ebp-4], 8
jl .Lt_0077
push 0
push 0
push 274
call _ERRREPORT@12
jmp .Lt_0076
.Lt_0077:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 31
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
and ecx, 32505856
or ebx, ecx
or ebx, 512
mov ecx, dword ptr [ebp+8]
mov dword ptr [ecx], ebx
inc dword ptr [ebp-4]
.Lt_0076:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_0071
.Lt_0073:
push 0
push 0
push 273
call _ERRREPORT@12
jmp .Lt_006B
.Lt_0078:
.Lt_0071:
jmp .Lt_006D
.Lt_0079:
cmp dword ptr [ebp-4], 8
jl .Lt_007B
push 0
push 0
push 274
call _ERRREPORT@12
jmp .Lt_007A
.Lt_007B:
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx]
and ecx, 31
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 480
add eax, 32
or ecx, eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
and ebx, 261632
sal ebx, 1
or ecx, ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx]
and eax, 32505856
or ecx, eax
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], ecx
inc dword ptr [ebp-4]
.Lt_007A:
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_006D
.Lt_007C:
jmp .Lt_006B
jmp .Lt_006D
.Lt_006E:
mov ecx, dword ptr [ebp-8]
add ecx, 4294966961
cmp ecx, 39
ja .Lt_007C
mov ecx, dword ptr [ebp-8]
jmp dword ptr [_.LT_007D+ecx*4-1340]
_.LT_007D:
.int .Lt_0070
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_007C
.int .Lt_0079
.int .Lt_0079
.Lt_006D:
.Lt_006C:
jmp .Lt_006A
.Lt_006B:
.Lt_0069:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HREADTYPE@16:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_007E:
push 2
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _CSYMBOLTYPE@20
test eax, eax
je .Lt_0081
mov dword ptr [ebp-4], 0
jmp .Lt_007F
.Lt_0081:
.Lt_0080:
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0085
.Lt_0086:
cmp dword ptr [ebp-8], 2
jne .Lt_0084
.Lt_0085:
push 0
push 0
call _LEXGETTEXT@0
push eax
push 129
push offset _Lt_00C0
call _fb_StrAssign@20
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_0082
.Lt_0084:
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
push 0
call _SYMBUNIQUEID@4
push eax
push 129
push offset _Lt_00C0
call _fb_StrAssign@20
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
.Lt_0087:
.Lt_0082:
push dword ptr [ebp+8]
call _HPTRDECL@4
mov eax, offset _Lt_00C0
mov dword ptr [ebp-4], eax
.Lt_007F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_00C0,129

.section .text
.balign 16
_HADDFORWARDREF@24:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0088:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 480
sar ebx, 5
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 261632
mov dword ptr [ebp-8], eax
push dword ptr [ebp+12]
push dword ptr [ebp+12]
call _HUCASE@8
push dword ptr [ebp+8]
push dword ptr [ebp+8]
call _HUCASE@8
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [ebp+12]
call _fb_StrCompare@16
test eax, eax
jne .Lt_008B
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
jmp .Lt_008A
.Lt_008B:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 23
push dword ptr [ebp+12]
call _SYMBADDFWDREF@4
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 4294967295
mov dword ptr [eax+4], 4294967295
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .Lt_008D
push 0
push -1
push 14
push dword ptr [ebp+12]
push dword ptr [_SYMB+98536]
call _SYMBLOOKUPBYNAMEANDCLASS@20
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .Lt_008F
push 0
push 0
push 4
call _ERRREPORT@12
call _SYMBUNIQUELABEL@0
push eax
call _SYMBADDFWDREF@4
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
.Lt_008F:
.Lt_008E:
.Lt_008D:
.Lt_008C:
.Lt_008A:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 31
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
and ecx, 480
mov eax, dword ptr [ebp-4]
sal eax, 5
add ecx, eax
or ebx, ecx
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ecx]
and eax, 261632
mov cl, byte ptr [ebp-4]
sal eax, cl
or ebx, eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
and ecx, 32505856
or ebx, ecx
or ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], ebx
.Lt_0089:
pop ebx
mov esp, ebp
pop ebp
ret 24
.balign 16
_HADDTYPEDEF@28:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0090:
cmp dword ptr [ebp+12], 0
je .Lt_0093
lea eax, [ebp+32]
push eax
lea eax, [ebp+24]
push eax
lea eax, [ebp+20]
push eax
lea eax, [ebp+16]
push eax
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HADDFORWARDREF@24
.Lt_0093:
.Lt_0092:
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call _SYMBADDTYPEDEF@20
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_0095
cmp dword ptr [ebp+32], 0
je .Lt_0097
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 2097152
.Lt_0097:
.Lt_0096:
jmp .Lt_0094
.Lt_0095:
mov dword ptr [ebp-8], -1
push 0
push 0
push 13
push dword ptr [ebp+8]
push dword ptr [_SYMB+98536]
call _SYMBLOOKUPBYNAMEANDCLASS@20
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_0099
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+16]
cmp dword ptr [eax+28], ebx
jne .Lt_009B
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebx+32], eax
jne .Lt_009D
mov dword ptr [ebp-8], 0
.Lt_009D:
.Lt_009C:
.Lt_009B:
.Lt_009A:
.Lt_0099:
.Lt_0098:
cmp dword ptr [ebp-8], 0
je .Lt_009F
push 0
push -1
push 4
call _ERRREPORT@12
.Lt_009F:
.Lt_009E:
.Lt_0094:
.Lt_0091:
pop ebx
mov esp, ebp
pop ebp
ret 28
.balign 16
_HREADID@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A0:
call _CCURRENTPARENTID@0
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-8], eax
jmp .Lt_00A3
.Lt_00A5:
mov eax, dword ptr [_ENV+888]
and eax, 524288
test eax, eax
je .Lt_00A7
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98536], eax
je .Lt_00A9
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
cmp dword ptr [ebx+2072], 0
jle .Lt_00AB
push 0
push 0
push 90
call _ERRREPORT@12
.Lt_00AB:
.Lt_00AA:
.Lt_00A9:
.Lt_00A8:
.Lt_00A7:
.Lt_00A6:
push 0
push 0
call _LEXGETTEXT@0
push eax
push 129
push offset _Lt_00C1
call _fb_StrAssign@20
push 2048
call _LEXSKIPTOKEN@4
jmp .Lt_00A2
.Lt_00AC:
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push 129
push offset _Lt_00C1
call _fb_StrAssign@20
jmp .Lt_00A2
.Lt_00A3:
cmp dword ptr [ebp-8], 2
ja .Lt_00AC
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_00AD+eax*4]
_.LT_00AD:
.int .Lt_00A5
.int .Lt_00A5
.int .Lt_00A5
.Lt_00A2:
mov eax, offset _Lt_00C1
mov dword ptr [ebp-4], eax
.Lt_00A1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_00C1,129
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
