	.intel_syntax noprefix

.section .text
.balign 16

.globl _CNAMESPACESTMTBEGIN
_CNAMESPACESTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_006C:
mov eax, dword ptr [_ENV+888]
and eax, 4
test eax, eax
jne .Lt_006F
push 0
push 146
push 4
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push -1
push 286
call _HSKIPCOMPOUND
add esp, 12
jmp .Lt_006D
.Lt_006F:
.Lt_006E:
push 4
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_0071
push 0
push -1
push 286
call _HSKIPCOMPOUND
add esp, 12
jmp .Lt_006D
.Lt_0071:
.Lt_0070:
push 2112
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-24], eax
jmp .Lt_0073
.Lt_0075:
push -50
push 286
call _CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-16], eax
push 0
push dword ptr [ebp-16]
call _NAMESPACEBEGIN
add esp, 8
jmp .Lt_006D
jmp .Lt_0072
.Lt_0073:
mov eax, dword ptr [ebp-24]
add eax, 4294967040
cmp eax, 4
ja .Lt_0072
mov eax, dword ptr [ebp-24]
jmp dword ptr [_.LT_0076+eax*4-1024]
_.LT_0076:
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.int .Lt_0075
.Lt_0072:
mov dword ptr [ebp-20], 0
.Lt_0077:
mov eax, dword ptr [ebp-20]
add eax, dword ptr [_PARSER+88]
cmp eax, 64
jl .Lt_007B
push 0
push 0
push 27
call _ERRREPORT
add esp, 12
jmp .Lt_006D
.Lt_007B:
.Lt_007A:
inc dword ptr [ebp-20]
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_007E
.Lt_007F:
push 0
push 0
call _LEXGETTEXT
push eax
push 129
push offset _Lt_0097
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+1044]
mov dword ptr [ebp-12], eax
jmp .Lt_007C
.Lt_007E:
cmp dword ptr [ebp-24], 2
jne .Lt_0080
.Lt_0081:
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
jne .Lt_0083
push 0
push 0
push 4
call _ERRREPORT
add esp, 12
mov byte ptr [_Lt_0097], 0
mov dword ptr [ebp-12], 0
jmp .Lt_0082
.Lt_0083:
push 0
push 0
call _LEXGETTEXT
push eax
push 129
push offset _Lt_0097
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
mov eax, dword ptr [ebx+1044]
mov dword ptr [ebp-12], eax
.Lt_0082:
jmp .Lt_007C
.Lt_0080:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov byte ptr [_Lt_0097], 0
mov dword ptr [ebp-12], 0
.Lt_0084:
.Lt_007C:
cmp dword ptr [ebp-12], 0
je .Lt_0086
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 8
je .Lt_0088
push 0
push 1
push 0
push offset _Lt_0097
push 4
call _ERRREPORTEX
add esp, 20
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push 129
push offset _Lt_0097
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-8], 0
jmp .Lt_0087
.Lt_0088:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_SYMB+98532]
cmp dword ptr [eax+140], ebx
je .Lt_008A
mov dword ptr [ebp-8], 0
.Lt_008A:
.Lt_0089:
.Lt_0087:
jmp .Lt_0085
.Lt_0086:
mov dword ptr [ebp-8], 0
.Lt_0085:
movzx ebx, byte ptr [_Lt_0097]
test ebx, ebx
je .Lt_008C
push 2112
call _LEXSKIPTOKEN
add esp, 4
.Lt_008C:
.Lt_008B:
cmp dword ptr [ebp-8], 0
jne .Lt_008E
cmp dword ptr [ebp-20], 1
jne .Lt_0090
call _CALIASATTRIBUTE
mov dword ptr [ebp-4], eax
.Lt_0090:
.Lt_008F:
push dword ptr [ebp-4]
push offset _Lt_0097
call _SYMBADDNAMESPACE
add esp, 8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0092
push 0
push 1
push 0
push offset _Lt_0097
push 4
call _ERRREPORTEX
add esp, 20
.Lt_0092:
.Lt_0091:
.Lt_008E:
.Lt_008D:
push -34
push 286
call _CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call _NAMESPACEBEGIN
add esp, 8
cmp dword ptr [ebp-4], 0
je .Lt_0094
jmp .Lt_0078
.Lt_0094:
.Lt_0093:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 46
je .Lt_0096
jmp .Lt_0078
.Lt_0096:
.Lt_0095:
push 64
call _LEXSKIPTOKEN
add esp, 4
.Lt_0079:
jmp .Lt_0077
.Lt_0078:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-20]
add dword ptr [_PARSER+88], ebx
.Lt_006D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0097,129

.section .text
.balign 16

.globl _CNAMESPACESTMTEND
_CNAMESPACESTMTEND:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0098:
push -1
push 286
call _CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_009B
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0099
.Lt_009B:
.Lt_009A:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
sub dword ptr [_PARSER+88], ebx
.Lt_009C:
cmp dword ptr [ebp-8], 0
jle .Lt_009D
push 0
call _SYMBNESTEND
add esp, 4
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
inc dword ptr [eax+96]
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+96], 1
jle .Lt_009F
push dword ptr [ebp-12]
call _SYMBNAMESPACEREIMPORT
add esp, 4
.Lt_009F:
.Lt_009E:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebx+100], ecx
push dword ptr [ebp-4]
call _CCOMPSTMTPOP
add esp, 4
push 0
push 286
call _CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00A1
jmp .Lt_009D
.Lt_00A1:
.Lt_00A0:
dec dword ptr [ebp-8]
jmp .Lt_009C
.Lt_009D:
.Lt_0099:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CUSINGSTMT
_CUSINGSTMT:
push ebp
mov ebp, esp
sub esp, 4
.Lt_00A2:
mov eax, dword ptr [_ENV+888]
and eax, 4
test eax, eax
jne .Lt_00A5
push 0
push 146
push 4
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00A3
.Lt_00A5:
.Lt_00A4:
push 2112
call _LEXSKIPTOKEN
add esp, 4
.Lt_00A6:
push 1
call _CPARENTID
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00AA
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 265
je .Lt_00AC
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
jmp .Lt_00AB
.Lt_00AC:
push 0
push 0
push 8
call _ERRREPORT
add esp, 12
.Lt_00AB:
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00A9
.Lt_00AA:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 8
je .Lt_00AE
push 0
push 0
push 20
call _ERRREPORT
add esp, 12
jmp .Lt_00AD
.Lt_00AE:
push dword ptr [ebp-4]
call _SYMBNAMESPACEIMPORT
add esp, 4
.Lt_00AD:
.Lt_00A9:
.Lt_00A8:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00A6
.Lt_00A7:
.Lt_00A3:
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
_NAMESPACEBEGIN:
push ebp
mov ebp, esp
push ebx
.Lt_0068:
cmp dword ptr [ebp+12], 0
jne .Lt_006B
push 0
call _SYMBUNIQUELABEL
push eax
call _SYMBADDNAMESPACE
add esp, 8
mov dword ptr [ebp+12], eax
.Lt_006B:
.Lt_006A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], 1
push 0
push dword ptr [ebp+12]
call _SYMBNESTBEGIN
add esp, 8
.Lt_0069:
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
