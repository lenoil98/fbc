	.intel_syntax noprefix

.section .text
.balign 16

.globl _PARSERLETINIT@0
_PARSERLETINIT@0:
.Lt_0068:
push -1
push 4
push 16
lea eax, [_PARSER+56]
push eax
call _LISTINIT@16
.Lt_0069:
ret
.balign 16

.globl _PARSERLETEND@0
_PARSERLETEND@0:
.Lt_006A:
lea eax, [_PARSER+56]
push eax
call _LISTEND@4
.Lt_006B:
ret
.balign 16

.globl _HISASSIGNTOKEN@4
_HISASSIGNTOKEN@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_006C:
mov eax, dword ptr [ebp+8]
cmp eax, 299
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 305
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
mov dword ptr [ebp-4], eax
.Lt_006D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CASSIGNTOKEN@0
_CASSIGNTOKEN@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0070:
push 0
call _LEXGETTOKEN@4
push eax
call _HISASSIGNTOKEN@4
test eax, eax
je .Lt_0073
push 0
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-4], -1
jmp .Lt_0072
.Lt_0073:
mov dword ptr [ebp-4], 0
.Lt_0072:
.Lt_0071:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16

.globl _COPERATOR@4
_COPERATOR@4:
push ebp
mov ebp, esp
sub esp, 28
push ebx
mov dword ptr [ebp-4], 0
.Lt_0074:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], -1
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_0077
.Lt_0079:
mov dword ptr [ebp-8], 34
jmp .Lt_0076
.Lt_007A:
mov dword ptr [ebp-8], 35
jmp .Lt_0076
.Lt_007B:
mov dword ptr [ebp-8], 36
jmp .Lt_0076
.Lt_007C:
mov dword ptr [ebp-8], 37
jmp .Lt_0076
.Lt_007D:
mov dword ptr [ebp-8], 38
jmp .Lt_0076
.Lt_007E:
mov dword ptr [ebp-8], 39
jmp .Lt_0076
.Lt_007F:
mov dword ptr [ebp-8], 40
jmp .Lt_0076
.Lt_0080:
mov dword ptr [ebp-8], 41
jmp .Lt_0076
.Lt_0081:
mov dword ptr [ebp-8], 42
jmp .Lt_0076
.Lt_0082:
mov dword ptr [ebp-8], 33
jmp .Lt_0076
.Lt_0083:
mov dword ptr [ebp-8], 28
jmp .Lt_0076
.Lt_0084:
mov dword ptr [ebp-8], 29
jmp .Lt_0076
.Lt_0085:
mov dword ptr [ebp-8], 32
jmp .Lt_0076
.Lt_0086:
mov dword ptr [ebp-8], 30
jmp .Lt_0076
.Lt_0087:
mov dword ptr [ebp-8], 31
jmp .Lt_0076
.Lt_0088:
mov dword ptr [ebp-8], 43
jmp .Lt_0076
.Lt_0089:
mov dword ptr [ebp-8], 44
jmp .Lt_0076
.Lt_008A:
cmp dword ptr [ebp+8], 0
jne .Lt_008C
jmp .Lt_0075
.Lt_008C:
.Lt_008B:
push 2048
call _LEXSKIPTOKEN@4
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-20], eax
jmp .Lt_008E
.Lt_0090:
mov dword ptr [ebp-8], 45
jmp .Lt_008D
.Lt_0091:
mov dword ptr [ebp-8], 46
jmp .Lt_008D
.Lt_0092:
mov dword ptr [ebp-8], 47
jmp .Lt_008D
.Lt_0093:
mov dword ptr [ebp-8], 48
jmp .Lt_008D
.Lt_0094:
mov dword ptr [ebp-8], 50
jmp .Lt_008D
.Lt_0095:
mov dword ptr [ebp-8], 49
jmp .Lt_008D
.Lt_0096:
mov dword ptr [ebp-8], 0
jmp .Lt_008D
.Lt_0097:
mov dword ptr [ebp-8], 52
jmp .Lt_008D
.Lt_0098:
mov dword ptr [ebp-8], 27
jmp .Lt_008D
.Lt_0099:
mov dword ptr [ebp-8], 56
jmp .Lt_008D
.Lt_009A:
mov dword ptr [ebp-8], 57
jmp .Lt_008D
.Lt_009B:
mov dword ptr [ebp-8], 71
jmp .Lt_008D
.Lt_009C:
mov dword ptr [ebp-8], 72
jmp .Lt_008D
.Lt_009D:
mov dword ptr [ebp-8], 70
jmp .Lt_008D
.Lt_009E:
mov dword ptr [ebp-8], 69
jmp .Lt_008D
.Lt_009F:
mov dword ptr [ebp-8], 68
jmp .Lt_008D
.Lt_00A0:
mov dword ptr [ebp-8], 58
jmp .Lt_008D
.Lt_00A1:
mov dword ptr [ebp-8], 59
jmp .Lt_008D
.Lt_00A2:
mov dword ptr [ebp-8], 60
jmp .Lt_008D
.Lt_00A3:
mov dword ptr [ebp-8], 61
jmp .Lt_008D
.Lt_00A4:
mov dword ptr [ebp-8], 62
jmp .Lt_008D
.Lt_00A5:
mov dword ptr [ebp-8], 63
jmp .Lt_008D
.Lt_00A6:
mov dword ptr [ebp-8], 65
jmp .Lt_008D
.Lt_00A7:
mov dword ptr [ebp-8], 73
jmp .Lt_008D
.Lt_00A8:
mov dword ptr [ebp-8], 22
jmp .Lt_008D
.Lt_00A9:
mov dword ptr [ebp-8], 77
jmp .Lt_008D
.Lt_00AA:
push 0
push 93
call _HMATCH@8
test eax, eax
jne .Lt_00AC
push 0
push 0
push 66
call _ERRREPORT@12
.Lt_00AC:
.Lt_00AB:
mov dword ptr [ebp-8], 23
jmp .Lt_008D
.Lt_00AD:
mov eax, dword ptr [ebp-12]
cmp eax, 387
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
push 0
push 91
call _HMATCH@8
test eax, eax
je .Lt_00AF
push 0
push 93
call _HMATCH@8
test eax, eax
jne .Lt_00B1
push 0
push 0
push 66
call _ERRREPORT@12
.Lt_00B1:
.Lt_00B0:
cmp dword ptr [ebp-24], 0
je .Lt_00B2
mov dword ptr [ebp-28], 19
jmp .Lt_00C1
.Lt_00B2:
mov dword ptr [ebp-28], 21
.Lt_00C1:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-8], eax
jmp .Lt_00AE
.Lt_00AF:
cmp dword ptr [ebp-24], 0
je .Lt_00B4
mov dword ptr [ebp-28], 18
jmp .Lt_00C2
.Lt_00B4:
mov dword ptr [ebp-28], 20
.Lt_00C2:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-8], eax
.Lt_00AE:
jmp .Lt_008D
.Lt_00B6:
mov dword ptr [ebp-8], 24
jmp .Lt_008D
.Lt_00B7:
mov dword ptr [ebp-8], 25
jmp .Lt_008D
.Lt_00B8:
mov dword ptr [ebp-8], 26
jmp .Lt_008D
.Lt_00B9:
jmp .Lt_008D
.Lt_008E:
mov eax, dword ptr [ebp-20]
add eax, 4294967232
cmp eax, 399
ja .Lt_00B9
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_00BA+eax*4-256]
_.LT_00BA:
.int .Lt_00A8
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00AA
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B6
.int .Lt_00B7
.int .Lt_00B8
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_0097
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_0090
.int .Lt_0091
.int .Lt_0092
.int .Lt_0093
.int .Lt_0094
.int .Lt_0095
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00AD
.int .Lt_00AD
.int .Lt_0096
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00A9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_0098
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_0099
.int .Lt_009A
.int .Lt_009B
.int .Lt_009C
.int .Lt_00A0
.int .Lt_00A1
.int .Lt_00A2
.int .Lt_00A3
.int .Lt_00A4
.int .Lt_00A5
.int .Lt_00A6
.int .Lt_009F
.int .Lt_009E
.int .Lt_009D
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00B9
.int .Lt_00A7
.Lt_008D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0075
jmp .Lt_0076
.Lt_00BB:
jmp .Lt_0075
jmp .Lt_0076
.Lt_0077:
mov eax, dword ptr [ebp-16]
add eax, 4294967258
cmp eax, 425
ja .Lt_00BB
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_00BC+eax*4-152]
_.LT_00BC:
.int .Lt_0089
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_0086
.int .Lt_0083
.int .Lt_00BB
.int .Lt_0084
.int .Lt_00BB
.int .Lt_0087
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_008A
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_008A
.int .Lt_0085
.int .Lt_00BB
.int .Lt_0088
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_0079
.int .Lt_007A
.int .Lt_007B
.int .Lt_007C
.int .Lt_007D
.int .Lt_007E
.int .Lt_007F
.int .Lt_008A
.int .Lt_0082
.int .Lt_0080
.int .Lt_0081
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_008A
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_008A
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_008A
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_00BB
.int .Lt_008A
.Lt_0076:
push 2048
call _LEXSKIPTOKEN@4
cmp dword ptr [ebp+8], 0
jne .Lt_00BE
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0075
.Lt_00BE:
.Lt_00BD:
call _CASSIGNTOKEN@0
test eax, eax
je .Lt_00C0
mov eax, dword ptr [ebp-8]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+12]
mov dword ptr [ebp-8], ebx
.Lt_00C0:
.Lt_00BF:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0075:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CASSIGNMENT@4
_CASSIGNMENT@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00C4:
push dword ptr [ebp+8]
call _ASTISCONSTANT@4
test eax, eax
je .Lt_00C7
push 0
push -1
push 119
call _ERRREPORT@12
.Lt_00C7:
.Lt_00C6:
mov dword ptr [ebp-4], -1
push 0
call _LEXGETTOKEN@4
push eax
call _HISASSIGNTOKEN@4
test eax, eax
jne .Lt_00C9
push 0
call _COPERATOR@4
mov dword ptr [ebp-4], eax
push 0
call _LEXGETTOKEN@4
push eax
call _HISASSIGNTOKEN@4
test eax, eax
jne .Lt_00CB
push 0
push 0
push 10
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00C5
.Lt_00CB:
.Lt_00CA:
mov eax, dword ptr [ebp-4]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+12]
mov dword ptr [ebp-4], ebx
.Lt_00C9:
.Lt_00C8:
push 0
call _LEXSKIPTOKEN@4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [_PARSER+156], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [_PARSER+152], ebx
call _CEXPRESSION@0
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00CD
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00C5
.Lt_00CD:
.Lt_00CC:
mov dword ptr [_PARSER+156], 0
mov dword ptr [_PARSER+152], -2147483648
cmp dword ptr [ebp-4], -1
je .Lt_00CF
push 2
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call _ASTNEWSELFBOP@20
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .Lt_00D1
push dword ptr [ebp+8]
call _ASTADD@4
jmp .Lt_00D0
.Lt_00D1:
push 0
push -1
push 20
call _ERRREPORT@12
.Lt_00D0:
jmp .Lt_00CE
.Lt_00CF:
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _ASTNEWASSIGN@12
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .Lt_00D3
push dword ptr [ebp+8]
call _ASTADD@4
jmp .Lt_00D2
.Lt_00D3:
push 0
push -1
push 181
call _ERRREPORT@12
.Lt_00D2:
.Lt_00CE:
.Lt_00C5:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CASSIGNMENTORPTRCALLEX@4
_CASSIGNMENTORPTRCALLEX@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00D4:
mov dword ptr [ebp-4], 0
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_00D7
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00D5
.Lt_00D7:
.Lt_00D6:
cmp dword ptr [ebp+8], 0
je .Lt_00D9
push dword ptr [ebp+8]
call _CMAYBEIGNORECALLRESULT@4
test eax, eax
jne .Lt_00DB
push dword ptr [ebp+8]
call _CASSIGNMENT@4
.Lt_00DB:
.Lt_00DA:
.Lt_00D9:
.Lt_00D8:
mov dword ptr [ebp-4], -1
.Lt_00D5:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16

.globl _CASSIGNMENTORPTRCALL@0
_CASSIGNMENTORPTRCALL@0:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FB:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 389
je .Lt_00FE
push 2
call _CVARORDEREF@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0100
jmp .Lt_00FC
.Lt_0100:
.Lt_00FF:
push dword ptr [ebp-12]
call _CMAYBEIGNORECALLRESULT@4
test eax, eax
je .Lt_0102
mov dword ptr [ebp-4], -1
jmp .Lt_00FC
.Lt_0102:
.Lt_0101:
push dword ptr [ebp-12]
call _ASTSKIPNOCONVCAST@4
push dword ptr [ebp-12]
mov ebx, eax
call _ASTSKIPCASTS@4
cmp ebx, eax
je .Lt_0104
push 0
push 0
push 24
call _ERRREPORT@12
jmp .Lt_00FC
.Lt_0104:
.Lt_0103:
push dword ptr [ebp-12]
call _CASSIGNMENTORPTRCALLEX@4
mov dword ptr [ebp-4], eax
jmp .Lt_00FC
.Lt_00FE:
.Lt_00FD:
mov eax, dword ptr [_ENV+888]
and eax, 262144
test eax, eax
jne .Lt_0106
push 0
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 40
je .Lt_0108
push 0
push 146
push 262144
call _ERRREPORTNOTALLOWED@12
jmp .Lt_0107
.Lt_0108:
mov dword ptr [ebp-8], -1
push 2048
call _LEXSKIPTOKEN@4
.Lt_0107:
.Lt_0106:
.Lt_0105:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_010A
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_00FC
.Lt_010A:
.Lt_0109:
push 2048
call _LEXSKIPTOKEN@4
cmp dword ptr [ebp-8], 0
jne .Lt_010C
push 0
call _CVARORDEREF@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_010E
push 0
push 0
push 14
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
jmp .Lt_010D
.Lt_010E:
push dword ptr [ebp-12]
call _CASSIGNMENT@4
.Lt_010D:
mov dword ptr [ebp-4], -1
jmp .Lt_00FC
.Lt_010C:
.Lt_010B:
mov dword ptr [ebp-20], 0
.Lt_010F:
lea eax, [_PARSER+56]
push eax
call _LISTNEWNODE@4
mov dword ptr [ebp-32], eax
push 0
call _CVARORDEREF@4
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 0
je .Lt_0113
mov eax, dword ptr [ebp-32]
push dword ptr [eax]
call _ASTISCONSTANT@4
test eax, eax
je .Lt_0115
push 0
push -1
push 119
call _ERRREPORT@12
.Lt_0115:
.Lt_0114:
inc dword ptr [ebp-20]
.Lt_0113:
.Lt_0112:
push 0
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0117
jmp .Lt_0110
.Lt_0117:
.Lt_0116:
push 0
call _LEXSKIPTOKEN@4
.Lt_0111:
jmp .Lt_010F
.Lt_0110:
cmp dword ptr [ebp-20], 0
jne .Lt_0119
push 0
push 0
push 14
call _ERRREPORT@12
.Lt_0119:
.Lt_0118:
push 0
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_011B
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 0
push 0
push 41
call _HSKIPUNTIL@16
jmp .Lt_011A
.Lt_011B:
push 0
call _LEXSKIPTOKEN@4
.Lt_011A:
call _CASSIGNTOKEN@0
test eax, eax
jne .Lt_011D
push 0
push 0
push 10
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-12], 0
jmp .Lt_011C
.Lt_011D:
call _CEXPRESSION@0
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_011F
push 0
push 0
push 9
call _ERRREPORT@12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL@16
.Lt_011F:
.Lt_011E:
.Lt_011C:
cmp dword ptr [ebp-12], 0
je .Lt_0121
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 20
jne .Lt_0124
.Lt_0125:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+120]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+8]
mov eax, dword ptr [ecx+120]
and eax, 8192
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0127
push 0
push 0
push 268
call _ERRREPORT@12
push dword ptr [ebp-12]
call _ASTDELTREE@4
mov dword ptr [ebp-12], 0
.Lt_0127:
.Lt_0126:
jmp .Lt_0122
.Lt_0124:
push 0
push 0
push 24
call _ERRREPORT@12
push dword ptr [ebp-12]
call _ASTDELTREE@4
mov dword ptr [ebp-12], 0
.Lt_0128:
.Lt_0122:
.Lt_0121:
.Lt_0120:
cmp dword ptr [ebp-12], 0
jne .Lt_012A
.Lt_012B:
lea eax, [_PARSER+56]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_012F
jmp .Lt_012C
.Lt_012F:
.Lt_012E:
push dword ptr [ebp-32]
lea eax, [_PARSER+56]
push eax
call _LISTDELNODE@8
.Lt_012D:
jmp .Lt_012B
.Lt_012C:
jmp .Lt_00FC
.Lt_012A:
.Lt_0129:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 9
jne .Lt_0131
push dword ptr [ebp-12]
call _ASTBUILDCALLRESULTUDT@4
mov dword ptr [ebp-12], eax
.Lt_0131:
.Lt_0130:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp-20], 0
jle .Lt_0133
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 480
add ecx, 32
or ebx, ecx
mov ecx, dword ptr [ebp-12]
mov eax, dword ptr [ecx+4]
and eax, 261632
sal eax, 1
or ebx, eax
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
and ecx, 32505856
or ebx, ecx
push ebx
call _SYMBADDTEMPVAR@8
mov dword ptr [ebp-24], eax
push 64
push dword ptr [ebp-12]
call _ASTNEWADDROF@4
push eax
push dword ptr [ebp-24]
call __Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl@12
mov dword ptr [ebp-28], eax
.Lt_0133:
.Lt_0132:
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
call _SYMBUDTGETFIRSTFIELD@4
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
.Lt_0134:
lea eax, [_PARSER+56]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_0138
jmp .Lt_0135
.Lt_0138:
.Lt_0137:
cmp dword ptr [ebp-16], 0
jne .Lt_013A
push 0
push 0
push 266
call _ERRREPORT@12
jmp .Lt_0139
.Lt_013A:
inc dword ptr [ebp-20]
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 0
je .Lt_013C
push dword ptr [ebp-20]
push dword ptr [ebp-24]
mov eax, dword ptr [ebp-32]
push dword ptr [eax]
push dword ptr [ebp-16]
call _HASSIGNFROMFIELD@16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_013E
jmp .Lt_00FC
.Lt_013E:
.Lt_013D:
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-28]
call _ASTNEWLINK@12
mov dword ptr [ebp-28], eax
.Lt_013C:
.Lt_013B:
push dword ptr [ebp-16]
call _SYMBUDTGETNEXTFIELD@4
mov dword ptr [ebp-16], eax
.Lt_0139:
push dword ptr [ebp-32]
lea eax, [_PARSER+56]
push eax
call _LISTDELNODE@8
.Lt_0136:
jmp .Lt_0134
.Lt_0135:
push dword ptr [ebp-28]
call _ASTADD@4
mov dword ptr [ebp-4], -1
.Lt_00FC:
mov eax, dword ptr [ebp-4]
pop ebx
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
_HCARD2ORD@4:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00DC:
cmp dword ptr [ebp+8], 1
jne .Lt_00DF
.Lt_00E0:
mov eax, offset _Lt_00E1
mov dword ptr [ebp-4], eax
jmp .Lt_00DD
jmp .Lt_00DE
.Lt_00DF:
cmp dword ptr [ebp+8], 2
jne .Lt_00E2
.Lt_00E3:
mov eax, offset _Lt_00E4
mov dword ptr [ebp-4], eax
jmp .Lt_00DD
jmp .Lt_00DE
.Lt_00E2:
cmp dword ptr [ebp+8], 3
jne .Lt_00E5
.Lt_00E6:
mov eax, offset _Lt_00E7
mov dword ptr [ebp-4], eax
jmp .Lt_00DD
jmp .Lt_00DE
.Lt_00E5:
push 0
push -1
push dword ptr [ebp+8]
call _fb_IntToStr@4
push eax
push -1
push offset _Lt_0141
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_00E9
push -1
push offset _Lt_0141
call _fb_StrConcatAssign@20
mov eax, dword ptr [_Lt_0141]
mov dword ptr [ebp-4], eax
.Lt_00E8:
.Lt_00DE:
.Lt_00DD:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0141,12

.section .text
.balign 16
_HREPORTLETERROR@8:
push ebp
mov ebp, esp
sub esp, 36
.Lt_00EA:
push 0
push 1
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 18
push offset _Lt_00ED
push -1
push 0
push dword ptr [ebp+12]
call _HCARD2ORD@4
push eax
push 8
push offset _Lt_00EC
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
push dword ptr [ebp+8]
call _ERRREPORTEX@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_00EB:
mov esp, ebp
pop ebp
ret 8
.balign 16
_HASSIGNFROMFIELD@16:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00F1:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
je .Lt_00F4
push dword ptr [ebp+20]
push 267
call _HREPORTLETERROR@8
push dword ptr [ebp+12]
call _ASTDELTREE@4
call _ASTNEWNOP@0
mov dword ptr [ebp-4], eax
jmp .Lt_00F2
.Lt_00F4:
.Lt_00F3:
push dword ptr [ebp+8]
call _SYMBCHECKACCESS@4
test eax, eax
jne .Lt_00F6
push dword ptr [ebp+20]
push 202
call _HREPORTLETERROR@8
push dword ptr [ebp+12]
call _ASTDELTREE@4
call _ASTNEWNOP@0
mov dword ptr [ebp-4], eax
jmp .Lt_00F2
.Lt_00F6:
.Lt_00F5:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+64], 0
je .Lt_00F8
push dword ptr [ebp+20]
push 269
call _HREPORTLETERROR@8
push dword ptr [ebp+12]
call _ASTDELTREE@4
call _ASTNEWNOP@0
mov dword ptr [ebp-4], eax
jmp .Lt_00F2
.Lt_00F8:
.Lt_00F7:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call _ASTNEWVAR@20
mov dword ptr [ebp-8], eax
push 1
push 0
push 0
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call _ASTNEWCONSTI@16
push eax
push dword ptr [ebp-8]
push 28
call _ASTNEWBOP@20
mov dword ptr [ebp-8], eax
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [ebp-8]
call _ASTNEWDEREF@20
mov dword ptr [ebp-8], eax
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call _ASTNEWFIELD@8
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call _ASTNEWASSIGN@12
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00FA
push dword ptr [ebp+20]
push 181
call _HREPORTLETERROR@8
call _ASTNEWNOP@0
mov dword ptr [ebp-4], eax
jmp .Lt_00F2
.Lt_00FA:
.Lt_00F9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00F2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 16

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_00E1:	.ascii	"1st\0"
.balign 4
_Lt_00E4:	.ascii	"2nd\0"
.balign 4
_Lt_00E7:	.ascii	"3rd\0"
.balign 4
_Lt_00E9:	.ascii	"th\0"
.balign 4
_Lt_00EC:	.ascii	"at the \0"
.balign 4
_Lt_00ED:	.ascii	" element of LET()\0"
