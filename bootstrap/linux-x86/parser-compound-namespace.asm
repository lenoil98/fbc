	.intel_syntax noprefix

.section .text
.balign 16

.globl CNAMESPACESTMTBEGIN
CNAMESPACESTMTBEGIN:
.type CNAMESPACESTMTBEGIN, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_006B:
mov eax, dword ptr [ENV+888]
and eax, 4
test eax, eax
jne .Lt_006E
sub esp, 4
push 0
push 146
push 4
call ERRREPORTNOTALLOWED
add esp, 16
sub esp, 4
push 0
push -1
push 286
call HSKIPCOMPOUND
add esp, 16
jmp .Lt_006C
.Lt_006E:
.Lt_006D:
sub esp, 12
push 4
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0070
sub esp, 4
push 0
push -1
push 286
call HSKIPCOMPOUND
add esp, 16
jmp .Lt_006C
.Lt_0070:
.Lt_006F:
sub esp, 12
push 2112
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-24], eax
jmp .Lt_0072
.Lt_0074:
sub esp, 8
push -50
push 286
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
push 0
push dword ptr [ebp-16]
call NAMESPACEBEGIN
add esp, 16
jmp .Lt_006C
jmp .Lt_0071
.Lt_0072:
mov eax, dword ptr [ebp-24]
add eax, 4294967040
cmp eax, 4
ja .Lt_0071
mov eax, dword ptr [ebp-24]
jmp dword ptr [.LT_0075+eax*4-1024]
.LT_0075:
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.int .Lt_0074
.Lt_0071:
mov dword ptr [ebp-20], 0
.Lt_0076:
mov eax, dword ptr [ebp-20]
add eax, dword ptr [PARSER+88]
cmp eax, 64
jl .Lt_007A
sub esp, 4
push 0
push 0
push 27
call ERRREPORT
add esp, 16
jmp .Lt_006C
.Lt_007A:
.Lt_0079:
inc dword ptr [ebp-20]
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_007D
.Lt_007E:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 129
push offset Lt_0096
call fb_StrAssign
add esp, 32
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov dword ptr [ebp-12], eax
jmp .Lt_007B
.Lt_007D:
cmp dword ptr [ebp-24], 2
jne .Lt_007F
.Lt_0080:
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
jne .Lt_0082
sub esp, 4
push 0
push 0
push 4
call ERRREPORT
add esp, 16
mov byte ptr [Lt_0096], 0
mov dword ptr [ebp-12], 0
jmp .Lt_0081
.Lt_0082:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 129
push offset Lt_0096
call fb_StrAssign
add esp, 32
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
mov eax, dword ptr [ebx+4116]
mov dword ptr [ebp-12], eax
.Lt_0081:
jmp .Lt_007B
.Lt_007F:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov byte ptr [Lt_0096], 0
mov dword ptr [ebp-12], 0
.Lt_0083:
.Lt_007B:
cmp dword ptr [ebp-12], 0
je .Lt_0085
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebx], 8
je .Lt_0087
sub esp, 12
push 0
push 1
push 0
push offset Lt_0096
push 4
call ERRREPORTEX
add esp, 32
sub esp, 12
push 0
push 0
sub esp, 12
call SYMBUNIQUELABEL
add esp, 12
push eax
push 129
push offset Lt_0096
call fb_StrAssign
add esp, 32
mov dword ptr [ebp-8], 0
jmp .Lt_0086
.Lt_0087:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [SYMB+98532]
cmp dword ptr [eax+140], ebx
je .Lt_0089
mov dword ptr [ebp-8], 0
.Lt_0089:
.Lt_0088:
.Lt_0086:
jmp .Lt_0084
.Lt_0085:
mov dword ptr [ebp-8], 0
.Lt_0084:
movzx ebx, byte ptr [Lt_0096]
test ebx, ebx
je .Lt_008B
sub esp, 12
push 2112
call LEXSKIPTOKEN
add esp, 16
.Lt_008B:
.Lt_008A:
cmp dword ptr [ebp-8], 0
jne .Lt_008D
cmp dword ptr [ebp-20], 1
jne .Lt_008F
call CALIASATTRIBUTE
mov dword ptr [ebp-4], eax
.Lt_008F:
.Lt_008E:
sub esp, 8
push dword ptr [ebp-4]
push offset Lt_0096
call SYMBADDNAMESPACE
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0091
sub esp, 12
push 0
push 1
push 0
push offset Lt_0096
push 4
call ERRREPORTEX
add esp, 32
.Lt_0091:
.Lt_0090:
.Lt_008D:
.Lt_008C:
sub esp, 8
push -34
push 286
call CCOMPSTMTPUSH
add esp, 16
mov dword ptr [ebp-16], eax
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp-16]
call NAMESPACEBEGIN
add esp, 16
cmp dword ptr [ebp-4], 0
je .Lt_0093
jmp .Lt_0077
.Lt_0093:
.Lt_0092:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 46
je .Lt_0095
jmp .Lt_0077
.Lt_0095:
.Lt_0094:
sub esp, 12
push 64
call LEXSKIPTOKEN
add esp, 16
.Lt_0078:
jmp .Lt_0076
.Lt_0077:
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-20]
add dword ptr [PARSER+88], ebx
.Lt_006C:
pop ebx
mov esp, ebp
pop ebp
ret
.size CNAMESPACESTMTBEGIN, .-CNAMESPACESTMTBEGIN

.section .bss
.balign 4
	.lcomm	Lt_0096,129

.section .text
.balign 16

.globl CNAMESPACESTMTEND
CNAMESPACESTMTEND:
.type CNAMESPACESTMTEND, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0097:
sub esp, 8
push -1
push 286
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_009A
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0098
.Lt_009A:
.Lt_0099:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
sub dword ptr [PARSER+88], ebx
.Lt_009B:
cmp dword ptr [ebp-8], 0
jle .Lt_009C
sub esp, 12
push 0
call SYMBNESTEND
add esp, 16
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
inc dword ptr [eax+96]
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax+96], 1
jle .Lt_009E
sub esp, 12
push dword ptr [ebp-12]
call SYMBNAMESPACEREIMPORT
add esp, 16
.Lt_009E:
.Lt_009D:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [eax+64]
mov dword ptr [ebx+100], ecx
sub esp, 12
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 16
sub esp, 8
push 0
push 286
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00A0
jmp .Lt_009C
.Lt_00A0:
.Lt_009F:
dec dword ptr [ebp-8]
jmp .Lt_009B
.Lt_009C:
.Lt_0098:
pop ebx
mov esp, ebp
pop ebp
ret
.size CNAMESPACESTMTEND, .-CNAMESPACESTMTEND
.balign 16

.globl CUSINGSTMT
CUSINGSTMT:
.type CUSINGSTMT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00A1:
mov eax, dword ptr [ENV+888]
and eax, 4
test eax, eax
jne .Lt_00A4
sub esp, 4
push 0
push 146
push 4
call ERRREPORTNOTALLOWED
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00A2
.Lt_00A4:
.Lt_00A3:
sub esp, 12
push 2112
call LEXSKIPTOKEN
add esp, 16
.Lt_00A5:
sub esp, 12
push 1
call CPARENTID
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00A9
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 265
je .Lt_00AB
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
jmp .Lt_00AA
.Lt_00AB:
sub esp, 4
push 0
push 0
push 8
call ERRREPORT
add esp, 16
.Lt_00AA:
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
jmp .Lt_00A8
.Lt_00A9:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 8
je .Lt_00AD
sub esp, 4
push 0
push 0
push 20
call ERRREPORT
add esp, 16
jmp .Lt_00AC
.Lt_00AD:
sub esp, 12
push dword ptr [ebp-4]
call SYMBNAMESPACEIMPORT
add esp, 16
.Lt_00AC:
.Lt_00A8:
.Lt_00A7:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00A5
.Lt_00A6:
.Lt_00A2:
mov esp, ebp
pop ebp
ret
.size CUSINGSTMT, .-CUSINGSTMT
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
NAMESPACEBEGIN:
.type NAMESPACEBEGIN, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0067:
cmp dword ptr [ebp+12], 0
jne .Lt_006A
sub esp, 8
push 0
sub esp, 4
call SYMBUNIQUELABEL
add esp, 4
push eax
call SYMBADDNAMESPACE
add esp, 16
mov dword ptr [ebp+12], eax
.Lt_006A:
.Lt_0069:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+16], 1
sub esp, 8
push 0
push dword ptr [ebp+12]
call SYMBNESTBEGIN
add esp, 16
.Lt_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.size NAMESPACEBEGIN, .-NAMESPACEBEGIN

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
