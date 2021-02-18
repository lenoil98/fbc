	.intel_syntax noprefix

.section .text
.balign 16

.globl CTYPEDEFMULTDECL
CTYPEDEFMULTDECL:
.type CTYPEDEFMULTDECL, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_00AD:
sub esp, 12
push 9
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_00B0
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00AE
.Lt_00B0:
.Lt_00AF:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
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
call HREADTYPE
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_00B1:
call HREADID
mov dword ptr [ebp-28], eax
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call HADDTYPEDEF
add esp, 32
.Lt_00B3:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00B1
.Lt_00B2:
.Lt_00AE:
mov esp, ebp
pop ebp
ret
.size CTYPEDEFMULTDECL, .-CTYPEDEFMULTDECL
.balign 16

.globl CTYPEDEFSINGLEDECL
CTYPEDEFSINGLEDECL:
.type CTYPEDEFSINGLEDECL, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_00B4:
sub esp, 12
push 9
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_00B7
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00B5
.Lt_00B7:
.Lt_00B6:
.Lt_00B8:
sub esp, 8
push 2048
push 376
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00BC
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.Lt_00BC:
.Lt_00BB:
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
call HREADTYPE
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-16]
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp-24]
push dword ptr [ebp+8]
call HADDTYPEDEF
add esp, 32
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00BE
jmp .Lt_00B9
.Lt_00BE:
.Lt_00BD:
call HREADID
mov dword ptr [ebp+8], eax
.Lt_00BA:
jmp .Lt_00B8
.Lt_00B9:
.Lt_00B5:
mov esp, ebp
pop ebp
ret
.size CTYPEDEFSINGLEDECL, .-CTYPEDEFSINGLEDECL
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
HPTRDECL:
.type HPTRDECL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0067:
mov dword ptr [ebp-4], 0
.Lt_0069:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_006D
.Lt_006F:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 373
je .Lt_0073
.Lt_0074:
cmp dword ptr [ebp-12], 374
jne .Lt_0072
.Lt_0073:
cmp dword ptr [ebp-4], 8
jl .Lt_0076
sub esp, 4
push 0
push 0
push 274
call ERRREPORT
add esp, 16
jmp .Lt_0075
.Lt_0076:
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
.Lt_0075:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0070
.Lt_0072:
sub esp, 4
push 0
push 0
push 273
call ERRREPORT
add esp, 16
jmp .Lt_006A
.Lt_0077:
.Lt_0070:
jmp .Lt_006C
.Lt_0078:
cmp dword ptr [ebp-4], 8
jl .Lt_007A
sub esp, 4
push 0
push 0
push 274
call ERRREPORT
add esp, 16
jmp .Lt_0079
.Lt_007A:
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
.Lt_0079:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_006C
.Lt_007B:
jmp .Lt_006A
jmp .Lt_006C
.Lt_006D:
mov ecx, dword ptr [ebp-8]
add ecx, 4294966961
cmp ecx, 39
ja .Lt_007B
mov ecx, dword ptr [ebp-8]
jmp dword ptr [.LT_007C+ecx*4-1340]
.LT_007C:
.int .Lt_006F
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_007B
.int .Lt_0078
.int .Lt_0078
.Lt_006C:
.Lt_006B:
jmp .Lt_0069
.Lt_006A:
.Lt_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.size HPTRDECL, .-HPTRDECL
.balign 16
HREADTYPE:
.type HREADTYPE, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_007D:
sub esp, 12
push 2
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call CSYMBOLTYPE
add esp, 32
test eax, eax
je .Lt_0080
mov dword ptr [ebp-4], 0
jmp .Lt_007E
.Lt_0080:
.Lt_007F:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0084
.Lt_0085:
cmp dword ptr [ebp-8], 2
jne .Lt_0083
.Lt_0084:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 129
push offset Lt_00BF
call fb_StrAssign
add esp, 32
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0081
.Lt_0083:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push 129
push offset Lt_00BF
call fb_StrAssign
add esp, 32
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.Lt_0086:
.Lt_0081:
sub esp, 12
push dword ptr [ebp+8]
call HPTRDECL
add esp, 16
mov eax, offset Lt_00BF
mov dword ptr [ebp-4], eax
.Lt_007E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HREADTYPE, .-HREADTYPE

.section .bss
.balign 4
	.lcomm	Lt_00BF,129

.section .text
.balign 16
HADDFORWARDREF:
.type HADDFORWARDREF, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0087:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
and ebx, 480
sar ebx, 5
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
and eax, 261632
mov dword ptr [ebp-8], eax
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+12]
call HUCASE
add esp, 16
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp+8]
call HUCASE
add esp, 16
push 0
push dword ptr [ebp+8]
push 0
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_008A
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
jmp .Lt_0089
.Lt_008A:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 23
sub esp, 12
push dword ptr [ebp+12]
call SYMBADDFWDREF
add esp, 16
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 4294967295
mov dword ptr [eax+4], 4294967295
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .Lt_008C
sub esp, 12
push 0
push -1
push 14
push dword ptr [ebp+12]
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 32
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .Lt_008E
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
sub esp, 12
sub esp, 4
call SYMBUNIQUELABEL
add esp, 4
push eax
call SYMBADDFWDREF
add esp, 16
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
.Lt_008E:
.Lt_008D:
.Lt_008C:
.Lt_008B:
.Lt_0089:
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
.Lt_0088:
pop ebx
mov esp, ebp
pop ebp
ret
.size HADDFORWARDREF, .-HADDFORWARDREF
.balign 16
HADDTYPEDEF:
.type HADDTYPEDEF, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_008F:
cmp dword ptr [ebp+12], 0
je .Lt_0092
sub esp, 8
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
call HADDFORWARDREF
add esp, 32
.Lt_0092:
.Lt_0091:
sub esp, 12
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+8]
call SYMBADDTYPEDEF
add esp, 32
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_0094
cmp dword ptr [ebp+32], 0
je .Lt_0096
mov eax, dword ptr [ebp-4]
or dword ptr [eax+12], 2097152
.Lt_0096:
.Lt_0095:
jmp .Lt_0093
.Lt_0094:
mov dword ptr [ebp-8], -1
sub esp, 12
push 0
push 0
push 13
push dword ptr [ebp+8]
push dword ptr [SYMB+98528]
call SYMBLOOKUPBYNAMEANDCLASS
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_0098
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp+16]
cmp dword ptr [eax+28], ebx
jne .Lt_009A
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebx+32], eax
jne .Lt_009C
mov dword ptr [ebp-8], 0
.Lt_009C:
.Lt_009B:
.Lt_009A:
.Lt_0099:
.Lt_0098:
.Lt_0097:
cmp dword ptr [ebp-8], 0
je .Lt_009E
sub esp, 4
push 0
push -1
push 4
call ERRREPORT
add esp, 16
.Lt_009E:
.Lt_009D:
.Lt_0093:
.Lt_0090:
pop ebx
mov esp, ebp
pop ebp
ret
.size HADDTYPEDEF, .-HADDTYPEDEF
.balign 16
HREADID:
.type HREADID, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_009F:
call CCURRENTPARENTID
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_00A2
.Lt_00A4:
mov eax, dword ptr [ENV+888]
and eax, 524288
test eax, eax
je .Lt_00A6
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .Lt_00A8
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .Lt_00AA
sub esp, 4
push 0
push 0
push 90
call ERRREPORT
add esp, 16
.Lt_00AA:
.Lt_00A9:
.Lt_00A8:
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 129
push offset Lt_00C0
call fb_StrAssign
add esp, 32
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00A1
.Lt_00AB:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push 129
push offset Lt_00C0
call fb_StrAssign
add esp, 32
jmp .Lt_00A1
.Lt_00A2:
cmp dword ptr [ebp-8], 2
ja .Lt_00AB
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_00AC+eax*4]
.LT_00AC:
.int .Lt_00A4
.int .Lt_00A4
.int .Lt_00A4
.Lt_00A1:
mov eax, offset Lt_00C0
mov dword ptr [ebp-4], eax
.Lt_00A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HREADID, .-HREADID

.section .bss
.balign 4
	.lcomm	Lt_00C0,129
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
