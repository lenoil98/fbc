	.intel_syntax noprefix

.section .text
.balign 16

.globl PARSERPROCCALLINIT
PARSERPROCCALLINIT:
.Lt_0067:
push 6
push 12
push 128
lea eax, [PARSER+112]
push eax
call LISTINIT
add esp, 16
.Lt_0068:
ret
.balign 16

.globl PARSERPROCCALLEND
PARSERPROCCALLEND:
.Lt_0069:
lea eax, [PARSER+112]
push eax
call LISTEND
add esp, 4
.Lt_006A:
ret
.balign 16

.globl CPROCARGLIST
CPROCARGLIST:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E8:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
jle .Lt_00EB
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+108], 0
je .Lt_00ED
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HOVLPROCARGLIST
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00E9
.Lt_00ED:
.Lt_00EC:
.Lt_00EB:
.Lt_00EA:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp+12]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00EF
push 0
push 1
push 0
push dword ptr [ebp+12]
call SYMBGETFULLPROCNAME
add esp, 4
push eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .Lt_00F0
mov dword ptr [ebp-40], 205
jmp .Lt_0121
.Lt_00F0:
mov dword ptr [ebp-40], 202
.Lt_0121:
push dword ptr [ebp-40]
call ERRREPORTEX
add esp, 20
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00E9
.Lt_00EF:
.Lt_00EE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_00F3
mov ebx, dword ptr [ebp+24]
and ebx, 64
test ebx, ebx
jne .Lt_00F5
cmp dword ptr [ebp+8], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [PARSER+104]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00F7
push 0
push -1
push 214
call ERRREPORT
add esp, 12
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00E9
.Lt_00F7:
.Lt_00F6:
push -1
push dword ptr [ebp+20]
lea eax, [PARSER+112]
push eax
call SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-36], eax
push 0
push 0
push 0
mov eax, dword ptr [PARSER+104]
mov ecx, dword ptr [eax+76]
push dword ptr [ecx+60]
call ASTBUILDVARFIELD
add esp, 16
mov ecx, dword ptr [ebp-36]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp-36]
mov dword ptr [eax+4], -1
.Lt_00F5:
.Lt_00F4:
push dword ptr [ebp+24]
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+4]
push dword ptr [ecx]
push dword ptr [ebp+12]
call HGETVTABLELOOKUPIFNEEDED
add esp, 12
mov dword ptr [ebp+16], eax
jmp .Lt_00F2
.Lt_00F3:
mov eax, dword ptr [ebp+24]
and eax, 64
test eax, eax
je .Lt_00F9
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-36], ecx
mov ecx, dword ptr [ebp-36]
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx]
call ASTDELTREE
add esp, 4
push dword ptr [ebp-36]
lea ebx, [PARSER+112]
push ebx
call LISTDELNODE
add esp, 8
.Lt_00F9:
.Lt_00F8:
.Lt_00F2:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp+12]
movsx ebx, word ptr [eax+68]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-36], ebx
.Lt_00FA:
cmp dword ptr [ebp-36], 0
je .Lt_00FB
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-36]
push dword ptr [eax+4]
push -2147483648
mov eax, dword ptr [ebp-36]
push dword ptr [eax]
push dword ptr [ebp-28]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00FD
push dword ptr [ebp-28]
call ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00E9
.Lt_00FD:
.Lt_00FC:
push dword ptr [ebp-36]
lea eax, [PARSER+112]
push eax
call LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-36], ebx
dec dword ptr [ebp-12]
jmp .Lt_00FA
.Lt_00FB:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp-12], 0
jne .Lt_00FF
mov ebx, dword ptr [ebp+24]
and ebx, 16
test ebx, ebx
jne .Lt_0101
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_0103
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0105
push 0
push 0
push 7
call ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0104
.Lt_0105:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_0104:
.Lt_0103:
.Lt_0102:
.Lt_0101:
.Lt_0100:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
jmp .Lt_00E9
.Lt_00FF:
.Lt_00FE:
mov eax, dword ptr [ebp+24]
and eax, 32
test eax, eax
jne .Lt_0107
.Lt_0108:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jl .Lt_010C
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+56], 4
je .Lt_010E
push 0
push 0
push 1
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+24]
and eax, 16
test eax, eax
je .Lt_0110
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_010F
.Lt_0110:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.Lt_010F:
dec dword ptr [ebp-8]
jmp .Lt_0109
.Lt_010E:
.Lt_010D:
.Lt_010C:
.Lt_010B:
push dword ptr [ebp+24]
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-32]
push eax
push dword ptr [ebp-8]
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call HPROCARG
add esp, 28
test eax, eax
jne .Lt_0112
jmp .Lt_0109
.Lt_0112:
.Lt_0111:
push dword ptr [ebp-16]
push -2147483648
push dword ptr [ebp-32]
push dword ptr [ebp-28]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0114
mov eax, dword ptr [ebp+24]
and eax, 16
test eax, eax
je .Lt_0116
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_0115
.Lt_0116:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.Lt_0115:
push dword ptr [ebp-28]
call ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00E9
.Lt_0114:
.Lt_0113:
inc dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jge .Lt_0118
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-24], ebx
.Lt_0118:
.Lt_0117:
.Lt_010A:
push 0
push 44
call HMATCH
add esp, 8
test eax, eax
jne .Lt_0108
.Lt_0109:
.Lt_0107:
.Lt_0106:
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push dword ptr [ebp-8]
call HMAYBEWARNABOUTEQOUTSIDEPARENS
add esp, 12
.Lt_0119:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jge .Lt_011A
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+56], 4
jne .Lt_011C
jmp .Lt_011A
.Lt_011C:
.Lt_011B:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+64], 0
jne .Lt_011E
push 0
push 0
push 1
call ERRREPORT
add esp, 12
push dword ptr [ebp-28]
call ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00E9
.Lt_011E:
.Lt_011D:
push -1
push -2147483648
push 0
push dword ptr [ebp-28]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0120
push dword ptr [ebp-28]
call ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00E9
.Lt_0120:
.Lt_011F:
inc dword ptr [ebp-8]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-24], ebx
jmp .Lt_0119
.Lt_011A:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-4], ebx
.Lt_00E9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
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
HPROCARG:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_006B:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], -1
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 0
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 319
jne .Lt_006E
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 1
.Lt_006E:
.Lt_006D:
mov eax, dword ptr [PARSER+156]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [PARSER+152]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov dword ptr [PARSER+156], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [PARSER+152], eax
mov dword ptr [PARSER+160], 0
call CEXPRESSION
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [PARSER+160]
or dword ptr [eax], ebx
jmp .Lt_0070
or dword ptr [PARSER+148], 1
jmp .Lt_006F
.Lt_0070:
and dword ptr [PARSER+148], -2
.Lt_006F:
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx], 0
jne .Lt_0072
mov ebx, dword ptr [ebp+32]
and ebx, 16
test ebx, ebx
je .Lt_0074
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 0
jmp .Lt_0073
.Lt_0074:
mov ebx, dword ptr [ebp+16]
test ebx, ebx
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [eax]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0076
push 2048
push 319
call HMATCH
add esp, 8
test eax, eax
je .Lt_0078
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 1
call CEXPRESSION
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], eax
.Lt_0078:
.Lt_0077:
.Lt_0076:
.Lt_0075:
.Lt_0073:
.Lt_0072:
.Lt_0071:
mov eax, dword ptr [ebp-16]
mov dword ptr [PARSER+156], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [PARSER+152], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .Lt_007A
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+64], 0
jne .Lt_007C
cmp dword ptr [ebp-8], 4
jne .Lt_007E
jmp .Lt_006C
.Lt_007E:
.Lt_007D:
push 0
push 0
push 1
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
and ecx, 511
push ecx
call ASTNEWCONSTZ
add esp, 8
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], eax
.Lt_007C:
.Lt_007B:
jmp .Lt_0079
.Lt_007A:
cmp dword ptr [ebp-8], 3
jne .Lt_0080
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_0082
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
jne .Lt_0084
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], -1
je .Lt_0086
push 0
push 0
push 22
call ERRREPORT
add esp, 12
.Lt_0086:
.Lt_0085:
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 3
.Lt_0084:
.Lt_0083:
.Lt_0082:
.Lt_0081:
.Lt_0080:
.Lt_007F:
.Lt_0079:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], -1
je .Lt_0088
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [ebp-8]
cmp dword ptr [eax], ecx
je .Lt_008A
cmp dword ptr [ebp-8], 4
je .Lt_008C
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx], 1
je .Lt_008E
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp-8]
cmp dword ptr [ecx], eax
je .Lt_0090
push 0
push 0
push 22
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [ebp-8]
mov dword ptr [eax], ecx
.Lt_0090:
.Lt_008F:
.Lt_008E:
.Lt_008D:
.Lt_008C:
.Lt_008B:
.Lt_008A:
.Lt_0089:
.Lt_0088:
.Lt_0087:
mov dword ptr [ebp-4], -1
.Lt_006C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOVLPROCARG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0091:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], -1
push 2048
push 319
call HMATCH
add esp, 8
test eax, eax
je .Lt_0094
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 1
.Lt_0094:
.Lt_0093:
mov eax, dword ptr [PARSER+156]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [PARSER+152]
mov dword ptr [ebp-8], eax
mov dword ptr [PARSER+156], 0
mov dword ptr [PARSER+152], -2147483648
mov dword ptr [PARSER+160], 0
call CEXPRESSION
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_0096
mov eax, dword ptr [ebp+20]
and eax, 16
test eax, eax
je .Lt_0098
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
jmp .Lt_0097
.Lt_0098:
mov eax, dword ptr [ebp+8]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+4]
cmp ecx, -1
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_009A
push 2048
push 319
call HMATCH
add esp, 8
test eax, eax
je .Lt_009C
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 1
call CEXPRESSION
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], eax
.Lt_009C:
.Lt_009B:
.Lt_009A:
.Lt_0099:
.Lt_0097:
.Lt_0096:
.Lt_0095:
mov eax, dword ptr [ebp-4]
mov dword ptr [PARSER+156], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [PARSER+152], eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [PARSER+160]
or dword ptr [eax], ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 0
je .Lt_009E
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_00A0
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
jne .Lt_00A2
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], -1
je .Lt_00A4
push 0
push 0
push 22
call ERRREPORT
add esp, 12
.Lt_00A4:
.Lt_00A3:
push 0
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 3
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
.Lt_009F:
.Lt_009E:
.Lt_009D:
.Lt_0092:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HMAYBEWARNABOUTEQOUTSIDEPARENS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00A5:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00A8
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
and eax, 1
test eax, eax
jle .Lt_00AA
.Lt_00AB:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp+16], ebx
cmp dword ptr [ebp+16], 0
jne .Lt_00AF
jmp .Lt_00AC
.Lt_00AF:
.Lt_00AE:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_00AD:
cmp dword ptr [ebp-4], 0
je .Lt_00AB
.Lt_00AC:
.Lt_00AA:
.Lt_00A9:
.Lt_00A8:
.Lt_00A7:
mov eax, dword ptr [ebp+8]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
and dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_00B1
push 0
push 1
push 0
push 34
call ERRREPORTWARN
add esp, 16
.Lt_00B1:
.Lt_00B0:
.Lt_00A6:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HGETVTABLELOOKUPIFNEEDED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B2:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
and eax, 2048
je .Lt_00B5
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 512
test ebx, ebx
je .Lt_00B7
push 0
push 0
push 307
call ERRREPORT
add esp, 12
.Lt_00B7:
.Lt_00B6:
jmp .Lt_00B4
.Lt_00B5:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call ASTBUILDVTABLELOOKUP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_00B4:
.Lt_00B3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HOVLPROCARGLIST:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B8:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
mov eax, dword ptr [ebp+12]
movsx ebx, word ptr [eax+106]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+20]
and eax, 64
test eax, eax
je .Lt_00BB
dec dword ptr [ebp-16]
.Lt_00BB:
.Lt_00BA:
mov eax, dword ptr [ebp+20]
and eax, 32
test eax, eax
jne .Lt_00BD
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-56], eax
.Lt_00BE:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
jle .Lt_00C2
push 0
push 0
push 1
call ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+20]
and eax, 16
test eax, eax
je .Lt_00C4
push 0
push 0
push 0
push 41
call HSKIPUNTIL
add esp, 16
jmp .Lt_00C3
.Lt_00C4:
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.Lt_00C3:
dec dword ptr [ebp-16]
jmp .Lt_00BF
.Lt_00C2:
.Lt_00C1:
push 0
push dword ptr [ebp+16]
lea eax, [PARSER+112]
push eax
call SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-36], eax
push dword ptr [ebp+20]
lea eax, [ebp-20]
push eax
push dword ptr [ebp-36]
mov eax, dword ptr [ebp-16]
sub eax, dword ptr [ebp-56]
push eax
call HOVLPROCARG
add esp, 16
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_00C6
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax], 0
je .Lt_00C8
inc dword ptr [ebp-16]
.Lt_00C8:
.Lt_00C7:
jmp .Lt_00BF
.Lt_00C6:
.Lt_00C5:
push 0
call LEXSKIPTOKEN
add esp, 4
inc dword ptr [ebp-16]
.Lt_00C0:
jmp .Lt_00BE
.Lt_00BF:
.Lt_00BD:
.Lt_00BC:
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call HMAYBEWARNABOUTEQOUTSIDEPARENS
add esp, 12
mov dword ptr [ebp-48], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_00CA
mov ebx, dword ptr [ebp+20]
and ebx, 128
test ebx, ebx
je .Lt_00CC
mov dword ptr [ebp-48], 1
.Lt_00CC:
.Lt_00CB:
.Lt_00CA:
.Lt_00C9:
push dword ptr [ebp-48]
lea ebx, [ebp-44]
push ebx
mov ebx, dword ptr [ebp+20]
and ebx, 64
test ebx, ebx
je .Lt_00CD
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-52], ebx
jmp .Lt_012B
.Lt_00CD:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-52], eax
.Lt_012B:
push dword ptr [ebp-52]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
call SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_00D0
push dword ptr [ebp+16]
lea eax, [PARSER+112]
push eax
call SYMBFREEOVLCALLARGS
add esp, 8
cmp dword ptr [ebp-44], 0
jne .Lt_00D2
mov dword ptr [ebp-44], 99
.Lt_00D2:
.Lt_00D1:
push dword ptr [ebp-44]
push 0
push 0
push dword ptr [ebp+12]
call ERRREPORTPARAM
add esp, 16
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00B9
.Lt_00D0:
.Lt_00CF:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp+12], eax
push dword ptr [ebp+12]
call SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00D4
push 0
push 1
push 0
push dword ptr [ebp+12]
call SYMBGETFULLPROCNAME
add esp, 4
push eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .Lt_00D5
mov dword ptr [ebp-56], 205
jmp .Lt_012C
.Lt_00D5:
mov dword ptr [ebp-56], 202
.Lt_012C:
push dword ptr [ebp-56]
call ERRREPORTEX
add esp, 20
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00B9
.Lt_00D4:
.Lt_00D3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_00D8
mov ebx, dword ptr [ebp+20]
and ebx, 64
test ebx, ebx
jne .Lt_00DA
cmp dword ptr [ebp+8], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [PARSER+104]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00DC
push 0
push -1
push 214
call ERRREPORT
add esp, 12
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00B9
.Lt_00DC:
.Lt_00DB:
push -1
push dword ptr [ebp+16]
lea eax, [PARSER+112]
push eax
call SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-36], eax
push 0
push 0
push 0
mov eax, dword ptr [PARSER+104]
mov ecx, dword ptr [eax+76]
push dword ptr [ecx+60]
call ASTBUILDVARFIELD
add esp, 16
mov ecx, dword ptr [ebp-36]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp-36]
mov dword ptr [eax+4], -1
.Lt_00DA:
.Lt_00D9:
inc dword ptr [ebp-16]
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
push dword ptr [ecx]
push dword ptr [ebp+12]
call HGETVTABLELOOKUPIFNEEDED
add esp, 12
mov dword ptr [ebp-24], eax
jmp .Lt_00D7
.Lt_00D8:
mov eax, dword ptr [ebp+20]
and eax, 64
test eax, eax
je .Lt_00DE
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-36], ecx
mov ecx, dword ptr [ebp-36]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx]
call ASTDELTREE
add esp, 4
push dword ptr [ebp-36]
lea ebx, [PARSER+112]
push ebx
call LISTDELNODE
add esp, 8
.Lt_00DE:
.Lt_00DD:
mov dword ptr [ebp-24], 0
.Lt_00D7:
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call ASTNEWCALL
add esp, 8
mov dword ptr [ebp-24], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+76]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-36], eax
mov dword ptr [ebp-8], 0
mov eax, dword ptr [ebp-16]
dec eax
mov dword ptr [ebp-56], eax
jmp .Lt_00E0
.Lt_00E3:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx+4]
push -2147483648
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx]
push dword ptr [ebp-24]
call ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00E5
push 0
push 0
push 22
call ERRREPORT
add esp, 12
push dword ptr [ebp-24]
call ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00B9
.Lt_00E5:
.Lt_00E4:
push dword ptr [ebp-36]
lea eax, [PARSER+112]
push eax
call LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-36], ebx
.Lt_00E1:
inc dword ptr [ebp-8]
.Lt_00E0:
mov ebx, dword ptr [ebp-56]
cmp dword ptr [ebp-8], ebx
jle .Lt_00E3
.Lt_00E2:
mov ebx, dword ptr [ebp+12]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-12], eax
.Lt_00E6:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
jge .Lt_00E7
push -1
push -2147483648
push 0
push dword ptr [ebp-24]
call ASTNEWARG
add esp, 16
inc dword ptr [ebp-16]
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-28], ebx
jmp .Lt_00E6
.Lt_00E7:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-4], ebx
.Lt_00B9:
mov eax, dword ptr [ebp-4]
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
