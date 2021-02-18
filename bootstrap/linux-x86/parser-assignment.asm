	.intel_syntax noprefix

.section .text
.balign 16

.globl PARSERLETINIT
PARSERLETINIT:
.type PARSERLETINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0067:
push -1
push 4
push 16
lea eax, [PARSER+56]
push eax
call LISTINIT
add esp, 16
.Lt_0068:
mov esp, ebp
pop ebp
ret
.size PARSERLETINIT, .-PARSERLETINIT
.balign 16

.globl PARSERLETEND
PARSERLETEND:
.type PARSERLETEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0069:
sub esp, 12
lea eax, [PARSER+56]
push eax
call LISTEND
add esp, 16
.Lt_006A:
mov esp, ebp
pop ebp
ret
.size PARSERLETEND, .-PARSERLETEND
.balign 16

.globl HISASSIGNTOKEN
HISASSIGNTOKEN:
.type HISASSIGNTOKEN, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_006B:
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
.Lt_006C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HISASSIGNTOKEN, .-HISASSIGNTOKEN
.balign 16

.globl CASSIGNTOKEN
CASSIGNTOKEN:
.type CASSIGNTOKEN, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_006F:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
je .Lt_0072
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-4], -1
jmp .Lt_0071
.Lt_0072:
mov dword ptr [ebp-4], 0
.Lt_0071:
.Lt_0070:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CASSIGNTOKEN, .-CASSIGNTOKEN
.balign 16

.globl COPERATOR
COPERATOR:
.type COPERATOR, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_0073:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], -1
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
jmp .Lt_0076
.Lt_0078:
mov dword ptr [ebp-8], 34
jmp .Lt_0075
.Lt_0079:
mov dword ptr [ebp-8], 35
jmp .Lt_0075
.Lt_007A:
mov dword ptr [ebp-8], 36
jmp .Lt_0075
.Lt_007B:
mov dword ptr [ebp-8], 37
jmp .Lt_0075
.Lt_007C:
mov dword ptr [ebp-8], 38
jmp .Lt_0075
.Lt_007D:
mov dword ptr [ebp-8], 39
jmp .Lt_0075
.Lt_007E:
mov dword ptr [ebp-8], 40
jmp .Lt_0075
.Lt_007F:
mov dword ptr [ebp-8], 41
jmp .Lt_0075
.Lt_0080:
mov dword ptr [ebp-8], 42
jmp .Lt_0075
.Lt_0081:
mov dword ptr [ebp-8], 33
jmp .Lt_0075
.Lt_0082:
mov dword ptr [ebp-8], 28
jmp .Lt_0075
.Lt_0083:
mov dword ptr [ebp-8], 29
jmp .Lt_0075
.Lt_0084:
mov dword ptr [ebp-8], 32
jmp .Lt_0075
.Lt_0085:
mov dword ptr [ebp-8], 30
jmp .Lt_0075
.Lt_0086:
mov dword ptr [ebp-8], 31
jmp .Lt_0075
.Lt_0087:
mov dword ptr [ebp-8], 43
jmp .Lt_0075
.Lt_0088:
mov dword ptr [ebp-8], 44
jmp .Lt_0075
.Lt_0089:
cmp dword ptr [ebp+8], 0
jne .Lt_008B
jmp .Lt_0074
.Lt_008B:
.Lt_008A:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-20], eax
jmp .Lt_008D
.Lt_008F:
mov dword ptr [ebp-8], 45
jmp .Lt_008C
.Lt_0090:
mov dword ptr [ebp-8], 46
jmp .Lt_008C
.Lt_0091:
mov dword ptr [ebp-8], 47
jmp .Lt_008C
.Lt_0092:
mov dword ptr [ebp-8], 48
jmp .Lt_008C
.Lt_0093:
mov dword ptr [ebp-8], 50
jmp .Lt_008C
.Lt_0094:
mov dword ptr [ebp-8], 49
jmp .Lt_008C
.Lt_0095:
mov dword ptr [ebp-8], 0
jmp .Lt_008C
.Lt_0096:
mov dword ptr [ebp-8], 52
jmp .Lt_008C
.Lt_0097:
mov dword ptr [ebp-8], 27
jmp .Lt_008C
.Lt_0098:
mov dword ptr [ebp-8], 56
jmp .Lt_008C
.Lt_0099:
mov dword ptr [ebp-8], 57
jmp .Lt_008C
.Lt_009A:
mov dword ptr [ebp-8], 71
jmp .Lt_008C
.Lt_009B:
mov dword ptr [ebp-8], 72
jmp .Lt_008C
.Lt_009C:
mov dword ptr [ebp-8], 70
jmp .Lt_008C
.Lt_009D:
mov dword ptr [ebp-8], 69
jmp .Lt_008C
.Lt_009E:
mov dword ptr [ebp-8], 68
jmp .Lt_008C
.Lt_009F:
mov dword ptr [ebp-8], 58
jmp .Lt_008C
.Lt_00A0:
mov dword ptr [ebp-8], 59
jmp .Lt_008C
.Lt_00A1:
mov dword ptr [ebp-8], 60
jmp .Lt_008C
.Lt_00A2:
mov dword ptr [ebp-8], 61
jmp .Lt_008C
.Lt_00A3:
mov dword ptr [ebp-8], 62
jmp .Lt_008C
.Lt_00A4:
mov dword ptr [ebp-8], 63
jmp .Lt_008C
.Lt_00A5:
mov dword ptr [ebp-8], 65
jmp .Lt_008C
.Lt_00A6:
mov dword ptr [ebp-8], 73
jmp .Lt_008C
.Lt_00A7:
mov dword ptr [ebp-8], 22
jmp .Lt_008C
.Lt_00A8:
mov dword ptr [ebp-8], 77
jmp .Lt_008C
.Lt_00A9:
sub esp, 8
push 0
push 93
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00AB
sub esp, 4
push 0
push 0
push 66
call ERRREPORT
add esp, 16
.Lt_00AB:
.Lt_00AA:
mov dword ptr [ebp-8], 23
jmp .Lt_008C
.Lt_00AC:
mov eax, dword ptr [ebp-12]
cmp eax, 387
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-24], eax
sub esp, 8
push 0
push 91
call HMATCH
add esp, 16
test eax, eax
je .Lt_00AE
sub esp, 8
push 0
push 93
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00B0
sub esp, 4
push 0
push 0
push 66
call ERRREPORT
add esp, 16
.Lt_00B0:
.Lt_00AF:
cmp dword ptr [ebp-24], 0
je .Lt_00B1
mov dword ptr [ebp-28], 19
jmp .Lt_00C0
.Lt_00B1:
mov dword ptr [ebp-28], 21
.Lt_00C0:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-8], eax
jmp .Lt_00AD
.Lt_00AE:
cmp dword ptr [ebp-24], 0
je .Lt_00B3
mov dword ptr [ebp-28], 18
jmp .Lt_00C1
.Lt_00B3:
mov dword ptr [ebp-28], 20
.Lt_00C1:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-8], eax
.Lt_00AD:
jmp .Lt_008C
.Lt_00B5:
mov dword ptr [ebp-8], 24
jmp .Lt_008C
.Lt_00B6:
mov dword ptr [ebp-8], 25
jmp .Lt_008C
.Lt_00B7:
mov dword ptr [ebp-8], 26
jmp .Lt_008C
.Lt_00B8:
jmp .Lt_008C
.Lt_008D:
mov eax, dword ptr [ebp-20]
add eax, 4294967232
cmp eax, 399
ja .Lt_00B8
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_00B9+eax*4-256]
.LT_00B9:
.int .Lt_00A7
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00A9
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B5
.int .Lt_00B6
.int .Lt_00B7
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_0096
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_008F
.int .Lt_0090
.int .Lt_0091
.int .Lt_0092
.int .Lt_0093
.int .Lt_0094
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_0095
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00A8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_0097
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_0098
.int .Lt_0099
.int .Lt_009A
.int .Lt_009B
.int .Lt_009F
.int .Lt_00A0
.int .Lt_00A1
.int .Lt_00A2
.int .Lt_00A3
.int .Lt_00A4
.int .Lt_00A5
.int .Lt_009E
.int .Lt_009D
.int .Lt_009C
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00B8
.int .Lt_00A6
.Lt_008C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0074
jmp .Lt_0075
.Lt_00BA:
jmp .Lt_0074
jmp .Lt_0075
.Lt_0076:
mov eax, dword ptr [ebp-16]
add eax, 4294967258
cmp eax, 425
ja .Lt_00BA
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_00BB+eax*4-152]
.LT_00BB:
.int .Lt_0088
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_0085
.int .Lt_0082
.int .Lt_00BA
.int .Lt_0083
.int .Lt_00BA
.int .Lt_0086
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_0089
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_0089
.int .Lt_0084
.int .Lt_00BA
.int .Lt_0087
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_0078
.int .Lt_0079
.int .Lt_007A
.int .Lt_007B
.int .Lt_007C
.int .Lt_007D
.int .Lt_007E
.int .Lt_0089
.int .Lt_0081
.int .Lt_007F
.int .Lt_0080
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_0089
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_0089
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_0089
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_00BA
.int .Lt_0089
.Lt_0075:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp+8], 0
jne .Lt_00BD
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
jmp .Lt_0074
.Lt_00BD:
.Lt_00BC:
call CASSIGNTOKEN
test eax, eax
je .Lt_00BF
mov eax, dword ptr [ebp-8]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+12]
mov dword ptr [ebp-8], ebx
.Lt_00BF:
.Lt_00BE:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0074:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size COPERATOR, .-COPERATOR
.balign 16

.globl CASSIGNMENT
CASSIGNMENT:
.type CASSIGNMENT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00C3:
sub esp, 12
push dword ptr [ebp+8]
call ASTISCONSTANT
add esp, 16
test eax, eax
je .Lt_00C6
sub esp, 4
push 0
push -1
push 119
call ERRREPORT
add esp, 16
.Lt_00C6:
.Lt_00C5:
mov dword ptr [ebp-4], -1
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
jne .Lt_00C8
sub esp, 12
push 0
call COPERATOR
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
jne .Lt_00CA
sub esp, 4
push 0
push 0
push 10
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00C4
.Lt_00CA:
.Lt_00C9:
mov eax, dword ptr [ebp-4]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+12]
mov dword ptr [ebp-4], ebx
.Lt_00C8:
.Lt_00C7:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [PARSER+156], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [PARSER+152], ebx
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00CC
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00C4
.Lt_00CC:
.Lt_00CB:
mov dword ptr [PARSER+156], 0
mov dword ptr [PARSER+152], -2147483648
cmp dword ptr [ebp-4], -1
je .Lt_00CE
sub esp, 12
push 2
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push dword ptr [ebp-4]
call ASTNEWSELFBOP
add esp, 32
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .Lt_00D0
sub esp, 12
push dword ptr [ebp+8]
call ASTADD
add esp, 16
jmp .Lt_00CF
.Lt_00D0:
sub esp, 4
push 0
push -1
push 20
call ERRREPORT
add esp, 16
.Lt_00CF:
jmp .Lt_00CD
.Lt_00CE:
sub esp, 4
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp+8], eax
cmp dword ptr [ebp+8], 0
je .Lt_00D2
sub esp, 12
push dword ptr [ebp+8]
call ASTADD
add esp, 16
jmp .Lt_00D1
.Lt_00D2:
sub esp, 4
push 0
push -1
push 181
call ERRREPORT
add esp, 16
.Lt_00D1:
.Lt_00CD:
.Lt_00C4:
pop ebx
mov esp, ebp
pop ebp
ret
.size CASSIGNMENT, .-CASSIGNMENT
.balign 16

.globl CASSIGNMENTORPTRCALLEX
CASSIGNMENTORPTRCALLEX:
.type CASSIGNMENTORPTRCALLEX, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00D3:
mov dword ptr [ebp-4], 0
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_00D6
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00D4
.Lt_00D6:
.Lt_00D5:
cmp dword ptr [ebp+8], 0
je .Lt_00D8
sub esp, 12
push dword ptr [ebp+8]
call CMAYBEIGNORECALLRESULT
add esp, 16
test eax, eax
jne .Lt_00DA
sub esp, 12
push dword ptr [ebp+8]
call CASSIGNMENT
add esp, 16
.Lt_00DA:
.Lt_00D9:
.Lt_00D8:
.Lt_00D7:
mov dword ptr [ebp-4], -1
.Lt_00D4:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CASSIGNMENTORPTRCALLEX, .-CASSIGNMENTORPTRCALLEX
.balign 16

.globl CASSIGNMENTORPTRCALL
CASSIGNMENTORPTRCALL:
.type CASSIGNMENTORPTRCALL, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
mov dword ptr [ebp-4], 0
.Lt_00FA:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 389
je .Lt_00FD
sub esp, 12
push 2
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00FF
jmp .Lt_00FB
.Lt_00FF:
.Lt_00FE:
sub esp, 12
push dword ptr [ebp-12]
call CMAYBEIGNORECALLRESULT
add esp, 16
test eax, eax
je .Lt_0101
mov dword ptr [ebp-4], -1
jmp .Lt_00FB
.Lt_0101:
.Lt_0100:
sub esp, 12
push dword ptr [ebp-12]
call ASTSKIPNOCONVCAST
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
mov ebx, eax
call ASTSKIPCASTS
add esp, 16
cmp ebx, eax
je .Lt_0103
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .Lt_00FB
.Lt_0103:
.Lt_0102:
sub esp, 12
push dword ptr [ebp-12]
call CASSIGNMENTORPTRCALLEX
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00FB
.Lt_00FD:
.Lt_00FC:
mov eax, dword ptr [ENV+888]
and eax, 262144
test eax, eax
jne .Lt_0105
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
cmp eax, 40
je .Lt_0107
sub esp, 4
push 0
push 146
push 262144
call ERRREPORTNOTALLOWED
add esp, 16
jmp .Lt_0106
.Lt_0107:
mov dword ptr [ebp-8], -1
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.Lt_0106:
.Lt_0105:
.Lt_0104:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0109
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00FB
.Lt_0109:
.Lt_0108:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp-8], 0
jne .Lt_010B
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_010D
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_010C
.Lt_010D:
sub esp, 12
push dword ptr [ebp-12]
call CASSIGNMENT
add esp, 16
.Lt_010C:
mov dword ptr [ebp-4], -1
jmp .Lt_00FB
.Lt_010B:
.Lt_010A:
mov dword ptr [ebp-20], 0
.Lt_010E:
sub esp, 12
lea eax, [PARSER+56]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-32], eax
sub esp, 12
push 0
call CVARORDEREF
add esp, 16
mov ebx, dword ptr [ebp-32]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 0
je .Lt_0112
sub esp, 12
mov eax, dword ptr [ebp-32]
push dword ptr [eax]
call ASTISCONSTANT
add esp, 16
test eax, eax
je .Lt_0114
sub esp, 4
push 0
push -1
push 119
call ERRREPORT
add esp, 16
.Lt_0114:
.Lt_0113:
inc dword ptr [ebp-20]
.Lt_0112:
.Lt_0111:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
je .Lt_0116
jmp .Lt_010F
.Lt_0116:
.Lt_0115:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0110:
jmp .Lt_010E
.Lt_010F:
cmp dword ptr [ebp-20], 0
jne .Lt_0118
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
.Lt_0118:
.Lt_0117:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_011A
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0119
.Lt_011A:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_0119:
call CASSIGNTOKEN
test eax, eax
jne .Lt_011C
sub esp, 4
push 0
push 0
push 10
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
mov dword ptr [ebp-12], 0
jmp .Lt_011B
.Lt_011C:
call CEXPRESSION
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_011E
sub esp, 4
push 0
push 0
push 9
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.Lt_011E:
.Lt_011D:
.Lt_011B:
cmp dword ptr [ebp-12], 0
je .Lt_0120
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 511
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 20
jne .Lt_0123
.Lt_0124:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+8]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [eax+8]
mov eax, dword ptr [ecx+116]
and eax, 8192
test eax, eax
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0126
sub esp, 4
push 0
push 0
push 268
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-12], 0
.Lt_0126:
.Lt_0125:
jmp .Lt_0121
.Lt_0123:
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp-12], 0
.Lt_0127:
.Lt_0121:
.Lt_0120:
.Lt_011F:
cmp dword ptr [ebp-12], 0
jne .Lt_0129
.Lt_012A:
sub esp, 12
lea eax, [PARSER+56]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_012E
jmp .Lt_012B
.Lt_012E:
.Lt_012D:
sub esp, 8
push dword ptr [ebp-32]
lea eax, [PARSER+56]
push eax
call LISTDELNODE
add esp, 16
.Lt_012C:
jmp .Lt_012A
.Lt_012B:
jmp .Lt_00FB
.Lt_0129:
.Lt_0128:
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 9
jne .Lt_0130
sub esp, 12
push dword ptr [ebp-12]
call ASTBUILDCALLRESULTUDT
add esp, 16
mov dword ptr [ebp-12], eax
.Lt_0130:
.Lt_012F:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
cmp dword ptr [ebp-20], 0
jle .Lt_0132
sub esp, 8
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
call SYMBADDTEMPVAR
add esp, 16
mov dword ptr [ebp-24], eax
sub esp, 4
push 64
sub esp, 4
push dword ptr [ebp-12]
call ASTNEWADDROF
add esp, 8
push eax
push dword ptr [ebp-24]
call _Z17ASTBUILDVARASSIGNP8FBSYMBOLP7ASTNODEl
add esp, 16
mov dword ptr [ebp-28], eax
.Lt_0132:
.Lt_0131:
sub esp, 12
mov eax, dword ptr [ebp-12]
push dword ptr [eax+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-20], 0
.Lt_0133:
sub esp, 12
lea eax, [PARSER+56]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_0137
jmp .Lt_0134
.Lt_0137:
.Lt_0136:
cmp dword ptr [ebp-16], 0
jne .Lt_0139
sub esp, 4
push 0
push 0
push 266
call ERRREPORT
add esp, 16
jmp .Lt_0138
.Lt_0139:
inc dword ptr [ebp-20]
mov eax, dword ptr [ebp-32]
cmp dword ptr [eax], 0
je .Lt_013B
push dword ptr [ebp-20]
push dword ptr [ebp-24]
mov eax, dword ptr [ebp-32]
push dword ptr [eax]
push dword ptr [ebp-16]
call HASSIGNFROMFIELD
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_013D
jmp .Lt_00FB
.Lt_013D:
.Lt_013C:
sub esp, 4
push 0
push dword ptr [ebp-12]
push dword ptr [ebp-28]
call ASTNEWLINK
add esp, 16
mov dword ptr [ebp-28], eax
.Lt_013B:
.Lt_013A:
sub esp, 12
push dword ptr [ebp-16]
call SYMBUDTGETNEXTFIELD
add esp, 16
mov dword ptr [ebp-16], eax
.Lt_0138:
sub esp, 8
push dword ptr [ebp-32]
lea eax, [PARSER+56]
push eax
call LISTDELNODE
add esp, 16
.Lt_0135:
jmp .Lt_0133
.Lt_0134:
sub esp, 12
push dword ptr [ebp-28]
call ASTADD
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_00FB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CASSIGNMENTORPTRCALL, .-CASSIGNMENTORPTRCALL
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
HCARD2ORD:
.type HCARD2ORD, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00DB:
cmp dword ptr [ebp+8], 1
jne .Lt_00DE
.Lt_00DF:
mov eax, offset Lt_00E0
mov dword ptr [ebp-4], eax
jmp .Lt_00DC
jmp .Lt_00DD
.Lt_00DE:
cmp dword ptr [ebp+8], 2
jne .Lt_00E1
.Lt_00E2:
mov eax, offset Lt_00E3
mov dword ptr [ebp-4], eax
jmp .Lt_00DC
jmp .Lt_00DD
.Lt_00E1:
cmp dword ptr [ebp+8], 3
jne .Lt_00E4
.Lt_00E5:
mov eax, offset Lt_00E6
mov dword ptr [ebp-4], eax
jmp .Lt_00DC
jmp .Lt_00DD
.Lt_00E4:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call fb_IntToStr
add esp, 12
push eax
push -1
push offset Lt_0140
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_00E8
push -1
push offset Lt_0140
call fb_StrConcatAssign
add esp, 32
mov eax, dword ptr [Lt_0140]
mov dword ptr [ebp-4], eax
.Lt_00E7:
.Lt_00DD:
.Lt_00DC:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HCARD2ORD, .-HCARD2ORD

.section .bss
.balign 4
	.lcomm	Lt_0140,12

.section .text
.balign 16
HREPORTLETERROR:
.type HREPORTLETERROR, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_00E9:
sub esp, 12
push 0
push 1
push 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 18
push offset Lt_00EC
push -1
sub esp, 4
push 0
sub esp, 12
push dword ptr [ebp+12]
call HCARD2ORD
add esp, 16
push eax
push 8
push offset Lt_00EB
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-36]
push dword ptr [ebp+8]
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.Lt_00EA:
mov esp, ebp
pop ebp
ret
.size HREPORTLETERROR, .-HREPORTLETERROR
.balign 16
HASSIGNFROMFIELD:
.type HASSIGNFROMFIELD, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_00F0:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 12
je .Lt_00F3
sub esp, 8
push dword ptr [ebp+20]
push 267
call HREPORTLETERROR
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
call ASTNEWNOP
mov dword ptr [ebp-4], eax
jmp .Lt_00F1
.Lt_00F3:
.Lt_00F2:
sub esp, 12
push dword ptr [ebp+8]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_00F5
sub esp, 8
push dword ptr [ebp+20]
push 202
call HREPORTLETERROR
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
call ASTNEWNOP
mov dword ptr [ebp-4], eax
jmp .Lt_00F1
.Lt_00F5:
.Lt_00F4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+60], 0
je .Lt_00F7
sub esp, 8
push dword ptr [ebp+20]
push 269
call HREPORTLETERROR
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
call ASTNEWNOP
mov dword ptr [ebp-4], eax
jmp .Lt_00F1
.Lt_00F7:
.Lt_00F6:
sub esp, 12
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+16]
call ASTNEWVAR
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 1
push 0
sub esp, 12
push 0
push 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [eax+48]
call ASTNEWCONSTI
add esp, 28
push eax
push dword ptr [ebp-8]
push 28
call ASTNEWBOP
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+28]
push dword ptr [ebp-8]
call ASTNEWDEREF
add esp, 32
mov dword ptr [ebp-8], eax
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-8]
call ASTNEWFIELD
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 4
push 0
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call ASTNEWASSIGN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00F9
sub esp, 8
push dword ptr [ebp+20]
push 181
call HREPORTLETERROR
add esp, 16
call ASTNEWNOP
mov dword ptr [ebp-4], eax
jmp .Lt_00F1
.Lt_00F9:
.Lt_00F8:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_00F1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HASSIGNFROMFIELD, .-HASSIGNFROMFIELD

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .rodata
.balign 4
Lt_00E0:	.ascii	"1st\0"
.balign 4
Lt_00E3:	.ascii	"2nd\0"
.balign 4
Lt_00E6:	.ascii	"3rd\0"
.balign 4
Lt_00E8:	.ascii	"th\0"
.balign 4
Lt_00EB:	.ascii	"at the \0"
.balign 4
Lt_00EC:	.ascii	" element of LET()\0"
