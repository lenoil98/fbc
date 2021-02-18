	.intel_syntax noprefix

.section .text
.balign 16

.globl CTYPECONVEXPR
CTYPECONVEXPR:
.type CTYPECONVEXPR, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0067:
mov dword ptr [ebp-8], -2147483648
mov dword ptr [ebp-12], -1
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-24], eax
jmp .Lt_006A
.Lt_006C:
mov dword ptr [ebp-8], 1
jmp .Lt_0069
.Lt_006D:
mov dword ptr [ebp-8], 2
jmp .Lt_0069
.Lt_006E:
mov dword ptr [ebp-8], 3
jmp .Lt_0069
.Lt_006F:
mov dword ptr [ebp-8], 5
jmp .Lt_0069
.Lt_0070:
mov dword ptr [ebp-8], 6
jmp .Lt_0069
.Lt_0071:
mov eax, dword ptr [ENV+892]
mov dword ptr [ebp-8], eax
jmp .Lt_0069
.Lt_0072:
mov dword ptr [ebp-8], 9
jmp .Lt_0069
.Lt_0073:
mov dword ptr [ebp-8], 11
jmp .Lt_0069
.Lt_0074:
mov dword ptr [ebp-8], 12
jmp .Lt_0069
.Lt_0075:
mov dword ptr [ebp-8], 13
jmp .Lt_0069
.Lt_0076:
mov dword ptr [ebp-8], 14
jmp .Lt_0069
.Lt_0077:
mov dword ptr [ebp-8], 15
jmp .Lt_0069
.Lt_0078:
mov dword ptr [ebp-8], 16
jmp .Lt_0069
.Lt_0079:
mov dword ptr [ebp-12], 119
jmp .Lt_0069
.Lt_007A:
mov dword ptr [ebp-12], 120
jmp .Lt_0069
.Lt_006A:
mov eax, dword ptr [ebp-24]
add eax, 4294966897
cmp eax, 14
ja .Lt_0069
mov eax, dword ptr [ebp-24]
jmp dword ptr [.LT_007B+eax*4-1596]
.LT_007B:
.int .Lt_006C
.int .Lt_006D
.int .Lt_006E
.int .Lt_006F
.int .Lt_0070
.int .Lt_0071
.int .Lt_0072
.int .Lt_0073
.int .Lt_0074
.int .Lt_0075
.int .Lt_0076
.int .Lt_0077
.int .Lt_0078
.int .Lt_0079
.int .Lt_007A
.Lt_0069:
cmp dword ptr [ebp-8], -2147483648
jne .Lt_007D
cmp dword ptr [ebp-12], -1
jne .Lt_007F
mov dword ptr [ebp-4], 0
jmp .Lt_0068
.Lt_007F:
.Lt_007E:
.Lt_007D:
.Lt_007C:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp+8]
cmp eax, 404
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 405
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0081
sub esp, 8
push 0
push 301
call HMATCH
add esp, 16
test eax, eax
je .Lt_0083
sub esp, 8
push 8
sub esp, 4
call CGTINPARENSONLYEXPR
add esp, 4
push eax
call CCONSTINTEXPR
add esp, 16
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-24], edx
sub esp, 4
mov eax, dword ptr [ebp+8]
cmp eax, 405
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-24]
push dword ptr [ebp-28]
call HINTEGERTYPEFROMBITSIZE
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push 300
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0085
sub esp, 4
push 0
push 0
push 309
call ERRREPORT
add esp, 16
.Lt_0085:
.Lt_0084:
.Lt_0083:
.Lt_0082:
.Lt_0081:
.Lt_0080:
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0087
sub esp, 4
push 0
push 0
push 6
call ERRREPORT
add esp, 16
.Lt_0087:
.Lt_0086:
call CEXPRESSION
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0089
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_0089:
.Lt_0088:
cmp dword ptr [ebp-12], 119
jne .Lt_008B
.Lt_008C:
sub esp, 12
mov eax, dword ptr [ebp-20]
push dword ptr [eax+4]
call TYPETOSIGNED
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_008A
.Lt_008B:
cmp dword ptr [ebp-12], 120
jne .Lt_008D
.Lt_008E:
sub esp, 12
mov eax, dword ptr [ebp-20]
push dword ptr [eax+4]
call TYPETOUNSIGNED
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_008D:
.Lt_008A:
sub esp, 12
lea eax, [ebp-16]
push eax
push 2
push dword ptr [ebp-20]
push 0
push dword ptr [ebp-8]
call ASTNEWCONV
add esp, 32
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
jne .Lt_0090
cmp dword ptr [ebp-16], 0
jne .Lt_0092
mov dword ptr [ebp-16], 20
.Lt_0092:
.Lt_0091:
sub esp, 4
push 0
push -1
push dword ptr [ebp-16]
call ERRREPORT
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_0090:
.Lt_008F:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_0094
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0093
.Lt_0094:
cmp dword ptr [ebp+12], 0
jne .Lt_0096
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0096:
.Lt_0095:
.Lt_0093:
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-4], eax
.Lt_0068:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CTYPECONVEXPR, .-CTYPECONVEXPR
.balign 16

.globl CANONTYPE
CANONTYPE:
.type CANONTYPE, @function
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-4], 0
.Lt_009A:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push 0
push 301
call HMATCH
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
je .Lt_009D
sub esp, 12
push 1
mov dword ptr [ebp-36], 0
lea eax, [ebp-36]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-32]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-20]
push eax
call CSYMBOLTYPE
add esp, 32
test eax, eax
jne .Lt_00A1
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov dword ptr [ebp-20], 8
mov dword ptr [ebp-16], 0
.Lt_00A1:
.Lt_00A0:
jmp .Lt_009C
.Lt_009D:
mov eax, dword ptr [PARSER+156]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [PARSER+152]
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], -2147483648
jne .Lt_00A3
sub esp, 4
push 0
push 0
push 71
call ERRREPORT
add esp, 16
mov dword ptr [ebp-20], 8
mov dword ptr [ebp-16], 0
.Lt_00A3:
.Lt_00A2:
mov eax, dword ptr [ebp-20]
and eax, 511
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .Lt_00A7
.Lt_00A8:
cmp dword ptr [ebp-28], 23
jne .Lt_00A6
.Lt_00A7:
sub esp, 4
push 0
push 0
push 71
call ERRREPORT
add esp, 16
mov dword ptr [ebp-20], 8
mov dword ptr [ebp-16], 0
.Lt_00A6:
.Lt_00A4:
.Lt_009C:
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call HCOMPLAINIFABSTRACTCLASS
add esp, 16
cmp dword ptr [ebp-24], 0
je .Lt_00AA
sub esp, 8
push 0
push 300
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00AC
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 300
call HSKIPUNTIL
add esp, 16
.Lt_00AC:
.Lt_00AB:
.Lt_00AA:
.Lt_00A9:
mov eax, dword ptr [ebp-20]
and eax, 511
cmp eax, 20
jne .Lt_00AE
sub esp, 12
push dword ptr [ebp-16]
call SYMBGETCOMPCTORHEAD
add esp, 16
test eax, eax
je .Lt_00B0
sub esp, 12
push dword ptr [ebp-16]
call CCTORCALL
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_009B
.Lt_00B0:
.Lt_00AF:
.Lt_00AE:
.Lt_00AD:
sub esp, 8
push dword ptr [ebp-16]
push dword ptr [ebp-20]
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-12], eax
push 0
push -2147483648
push 0
push dword ptr [ebp-12]
call CINITIALIZER
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call ASTREPLACESYMBOLONTREE
add esp, 16
sub esp, 8
push 0
push dword ptr [ebp-12]
call SYMBDELSYMBOL
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_009B:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CANONTYPE, .-CANONTYPE
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
