	.intel_syntax noprefix

.section .text
.balign 16

.globl _PARSERPROCCALLINIT
_PARSERPROCCALLINIT:
.Lt_0068:
push 6
push 12
push 128
lea eax, [_PARSER+112]
push eax
call _LISTINIT
add esp, 16
.Lt_0069:
ret
.balign 16

.globl _PARSERPROCCALLEND
_PARSERPROCCALLEND:
.Lt_006A:
lea eax, [_PARSER+112]
push eax
call _LISTEND
add esp, 4
.Lt_006B:
ret
.balign 16

.globl _CPROCARGLIST
_CPROCARGLIST:
push ebp
mov ebp, esp
sub esp, 40
push ebx
mov dword ptr [ebp-4], 0
.Lt_00E9:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 1
test ebx, ebx
jle .Lt_00EC
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+108], 0
je .Lt_00EE
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HOVLPROCARGLIST
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_00EA
.Lt_00EE:
.Lt_00ED:
.Lt_00EC:
.Lt_00EB:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp+12]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00F0
push 0
push 1
push 0
push dword ptr [ebp+12]
call _SYMBGETFULLPROCNAME
add esp, 4
push eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .Lt_00F1
mov dword ptr [ebp-40], 205
jmp .Lt_0122
.Lt_00F1:
mov dword ptr [ebp-40], 202
.Lt_0122:
push dword ptr [ebp-40]
call _ERRREPORTEX
add esp, 20
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00EA
.Lt_00F0:
.Lt_00EF:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_00F4
mov ebx, dword ptr [ebp+24]
and ebx, 64
test ebx, ebx
jne .Lt_00F6
cmp dword ptr [ebp+8], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_PARSER+104]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00F8
push 0
push -1
push 214
call _ERRREPORT
add esp, 12
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00EA
.Lt_00F8:
.Lt_00F7:
push -1
push dword ptr [ebp+20]
lea eax, [_PARSER+112]
push eax
call _SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-36], eax
push 0
push 0
push 0
mov eax, dword ptr [_PARSER+104]
mov ecx, dword ptr [eax+76]
push dword ptr [ecx+60]
call _ASTBUILDVARFIELD
add esp, 16
mov ecx, dword ptr [ebp-36]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp-36]
mov dword ptr [eax+4], -1
.Lt_00F6:
.Lt_00F5:
push dword ptr [ebp+24]
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+4]
push dword ptr [ecx]
push dword ptr [ebp+12]
call _HGETVTABLELOOKUPIFNEEDED
add esp, 12
mov dword ptr [ebp+16], eax
jmp .Lt_00F3
.Lt_00F4:
mov eax, dword ptr [ebp+24]
and eax, 64
test eax, eax
je .Lt_00FA
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-36], ecx
mov ecx, dword ptr [ebp-36]
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [ecx+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-36]
lea ebx, [_PARSER+112]
push ebx
call _LISTDELNODE
add esp, 8
.Lt_00FA:
.Lt_00F9:
.Lt_00F3:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _ASTNEWCALL
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
.Lt_00FB:
cmp dword ptr [ebp-36], 0
je .Lt_00FC
mov ebx, dword ptr [ebp-36]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [ebp-36]
push dword ptr [eax+4]
push -2147483648
mov eax, dword ptr [ebp-36]
push dword ptr [eax]
push dword ptr [ebp-28]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00FE
push dword ptr [ebp-28]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00EA
.Lt_00FE:
.Lt_00FD:
push dword ptr [ebp-36]
lea eax, [_PARSER+112]
push eax
call _LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-36], ebx
dec dword ptr [ebp-12]
jmp .Lt_00FB
.Lt_00FC:
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp-12], 0
jne .Lt_0100
mov ebx, dword ptr [ebp+24]
and ebx, 16
test ebx, ebx
jne .Lt_0102
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_0104
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_0106
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0105
.Lt_0106:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_0105:
.Lt_0104:
.Lt_0103:
.Lt_0102:
.Lt_0101:
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-4], eax
jmp .Lt_00EA
.Lt_0100:
.Lt_00FF:
mov eax, dword ptr [ebp+24]
and eax, 32
test eax, eax
jne .Lt_0108
.Lt_0109:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jl .Lt_010D
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+56], 4
je .Lt_010F
push 0
push 0
push 1
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+24]
and eax, 16
test eax, eax
je .Lt_0111
push 0
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0110
.Lt_0111:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
.Lt_0110:
dec dword ptr [ebp-8]
jmp .Lt_010A
.Lt_010F:
.Lt_010E:
.Lt_010D:
.Lt_010C:
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
call _HPROCARG
add esp, 28
test eax, eax
jne .Lt_0113
jmp .Lt_010A
.Lt_0113:
.Lt_0112:
push dword ptr [ebp-16]
push -2147483648
push dword ptr [ebp-32]
push dword ptr [ebp-28]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0115
mov eax, dword ptr [ebp+24]
and eax, 16
test eax, eax
je .Lt_0117
push 0
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0116
.Lt_0117:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
.Lt_0116:
push dword ptr [ebp-28]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00EA
.Lt_0115:
.Lt_0114:
inc dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jge .Lt_0119
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-24], ebx
.Lt_0119:
.Lt_0118:
.Lt_010B:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0109
.Lt_010A:
.Lt_0108:
.Lt_0107:
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push dword ptr [ebp-8]
call _HMAYBEWARNABOUTEQOUTSIDEPARENS
add esp, 12
.Lt_011A:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jge .Lt_011B
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+56], 4
jne .Lt_011D
jmp .Lt_011B
.Lt_011D:
.Lt_011C:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+64], 0
jne .Lt_011F
push 0
push 0
push 1
call _ERRREPORT
add esp, 12
push dword ptr [ebp-28]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00EA
.Lt_011F:
.Lt_011E:
push -1
push -2147483648
push 0
push dword ptr [ebp-28]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_0121
push dword ptr [ebp-28]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00EA
.Lt_0121:
.Lt_0120:
inc dword ptr [ebp-8]
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-24], ebx
jmp .Lt_011A
.Lt_011B:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-4], ebx
.Lt_00EA:
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
_HPROCARG:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_006C:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+24]
mov dword ptr [ebx], -1
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 319
jne .Lt_006F
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 1
.Lt_006F:
.Lt_006E:
mov eax, dword ptr [_PARSER+156]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [_PARSER+152]
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+32]
mov dword ptr [_PARSER+156], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [_PARSER+152], eax
mov dword ptr [_PARSER+160], 0
call _CEXPRESSION
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+28]
mov ebx, dword ptr [_PARSER+160]
or dword ptr [eax], ebx
jmp .Lt_0071
or dword ptr [_PARSER+148], 1
jmp .Lt_0070
.Lt_0071:
and dword ptr [_PARSER+148], -2
.Lt_0070:
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx], 0
jne .Lt_0073
mov ebx, dword ptr [ebp+32]
and ebx, 16
test ebx, ebx
je .Lt_0075
mov ebx, dword ptr [ebp+20]
mov dword ptr [ebx], 0
jmp .Lt_0074
.Lt_0075:
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
je .Lt_0077
push 2048
push 319
call _HMATCH
add esp, 8
test eax, eax
je .Lt_0079
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 1
call _CEXPRESSION
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], eax
.Lt_0079:
.Lt_0078:
.Lt_0077:
.Lt_0076:
.Lt_0074:
.Lt_0073:
.Lt_0072:
mov eax, dword ptr [ebp-16]
mov dword ptr [_PARSER+156], eax
mov eax, dword ptr [ebp-12]
mov dword ptr [_PARSER+152], eax
mov eax, dword ptr [ebp+20]
cmp dword ptr [eax], 0
jne .Lt_007B
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+64], 0
jne .Lt_007D
cmp dword ptr [ebp-8], 4
jne .Lt_007F
jmp .Lt_006D
.Lt_007F:
.Lt_007E:
push 0
push 0
push 1
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax+32]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [eax+28]
and ecx, 511
push ecx
call _ASTNEWCONSTZ
add esp, 8
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], eax
.Lt_007D:
.Lt_007C:
jmp .Lt_007A
.Lt_007B:
cmp dword ptr [ebp-8], 3
jne .Lt_0081
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_0083
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
jne .Lt_0085
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], -1
je .Lt_0087
push 0
push 0
push 22
call _ERRREPORT
add esp, 12
.Lt_0087:
.Lt_0086:
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+24]
mov dword ptr [eax], 3
.Lt_0085:
.Lt_0084:
.Lt_0083:
.Lt_0082:
.Lt_0081:
.Lt_0080:
.Lt_007A:
mov eax, dword ptr [ebp+24]
cmp dword ptr [eax], -1
je .Lt_0089
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [ebp-8]
cmp dword ptr [eax], ecx
je .Lt_008B
cmp dword ptr [ebp-8], 4
je .Lt_008D
mov ecx, dword ptr [ebp+24]
cmp dword ptr [ecx], 1
je .Lt_008F
mov ecx, dword ptr [ebp+24]
mov eax, dword ptr [ebp-8]
cmp dword ptr [ecx], eax
je .Lt_0091
push 0
push 0
push 22
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+24]
mov ecx, dword ptr [ebp-8]
mov dword ptr [eax], ecx
.Lt_0091:
.Lt_0090:
.Lt_008F:
.Lt_008E:
.Lt_008D:
.Lt_008C:
.Lt_008B:
.Lt_008A:
.Lt_0089:
.Lt_0088:
mov dword ptr [ebp-4], -1
.Lt_006D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOVLPROCARG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0092:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], -1
push 2048
push 319
call _HMATCH
add esp, 8
test eax, eax
je .Lt_0095
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 1
.Lt_0095:
.Lt_0094:
mov eax, dword ptr [_PARSER+156]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [_PARSER+152]
mov dword ptr [ebp-8], eax
mov dword ptr [_PARSER+156], 0
mov dword ptr [_PARSER+152], -2147483648
mov dword ptr [_PARSER+160], 0
call _CEXPRESSION
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 0
jne .Lt_0097
mov eax, dword ptr [ebp+20]
and eax, 16
test eax, eax
je .Lt_0099
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 0
jmp .Lt_0098
.Lt_0099:
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
je .Lt_009B
push 2048
push 319
call _HMATCH
add esp, 8
test eax, eax
je .Lt_009D
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 1
call _CEXPRESSION
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], eax
.Lt_009D:
.Lt_009C:
.Lt_009B:
.Lt_009A:
.Lt_0098:
.Lt_0097:
.Lt_0096:
mov eax, dword ptr [ebp-4]
mov dword ptr [_PARSER+156], eax
mov eax, dword ptr [ebp-8]
mov dword ptr [_PARSER+152], eax
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [_PARSER+160]
or dword ptr [eax], ecx
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx], 0
je .Lt_009F
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 40
jne .Lt_00A1
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
cmp eax, 41
jne .Lt_00A3
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax+4], -1
je .Lt_00A5
push 0
push 0
push 22
call _ERRREPORT
add esp, 12
.Lt_00A5:
.Lt_00A4:
push 0
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+4], 3
.Lt_00A3:
.Lt_00A2:
.Lt_00A1:
.Lt_00A0:
.Lt_009F:
.Lt_009E:
.Lt_0093:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HMAYBEWARNABOUTEQOUTSIDEPARENS:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00A6:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+8]
and ebx, 2048
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
jne .Lt_00A9
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
and eax, 1
test eax, eax
jle .Lt_00AB
.Lt_00AC:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+108]
mov dword ptr [ebp+16], ebx
cmp dword ptr [ebp+16], 0
jne .Lt_00B0
jmp .Lt_00AD
.Lt_00B0:
.Lt_00AF:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+8]
and eax, 2048
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
.Lt_00AE:
cmp dword ptr [ebp-4], 0
je .Lt_00AC
.Lt_00AD:
.Lt_00AB:
.Lt_00AA:
.Lt_00A9:
.Lt_00A8:
mov eax, dword ptr [ebp+8]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
and dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+12]
and dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_00B2
push 0
push 1
push 0
push 34
call _ERRREPORTWARN
add esp, 16
.Lt_00B2:
.Lt_00B1:
.Lt_00A7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETVTABLELOOKUPIFNEEDED:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B3:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+16]
and eax, 2048
je .Lt_00B6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
and ebx, 512
test ebx, ebx
je .Lt_00B8
push 0
push 0
push 307
call _ERRREPORT
add esp, 12
.Lt_00B8:
.Lt_00B7:
jmp .Lt_00B5
.Lt_00B6:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _ASTBUILDVTABLELOOKUP
add esp, 8
mov dword ptr [ebp-4], eax
.Lt_00B5:
.Lt_00B4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HOVLPROCARGLIST:
push ebp
mov ebp, esp
sub esp, 56
push ebx
mov dword ptr [ebp-4], 0
.Lt_00B9:
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
je .Lt_00BC
dec dword ptr [ebp-16]
.Lt_00BC:
.Lt_00BB:
mov eax, dword ptr [ebp+20]
and eax, 32
test eax, eax
jne .Lt_00BE
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-56], eax
.Lt_00BF:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
jle .Lt_00C3
push 0
push 0
push 1
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+20]
and eax, 16
test eax, eax
je .Lt_00C5
push 0
push 0
push 0
push 41
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00C4
.Lt_00C5:
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
.Lt_00C4:
dec dword ptr [ebp-16]
jmp .Lt_00C0
.Lt_00C3:
.Lt_00C2:
push 0
push dword ptr [ebp+16]
lea eax, [_PARSER+112]
push eax
call _SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-36], eax
push dword ptr [ebp+20]
lea eax, [ebp-20]
push eax
push dword ptr [ebp-36]
mov eax, dword ptr [ebp-16]
sub eax, dword ptr [ebp-56]
push eax
call _HOVLPROCARG
add esp, 16
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_00C7
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax], 0
je .Lt_00C9
inc dword ptr [ebp-16]
.Lt_00C9:
.Lt_00C8:
jmp .Lt_00C0
.Lt_00C7:
.Lt_00C6:
push 0
call _LEXSKIPTOKEN
add esp, 4
inc dword ptr [ebp-16]
.Lt_00C1:
jmp .Lt_00BF
.Lt_00C0:
.Lt_00BE:
.Lt_00BD:
push dword ptr [ebp+12]
push dword ptr [ebp-20]
push dword ptr [ebp-16]
call _HMAYBEWARNABOUTEQOUTSIDEPARENS
add esp, 12
mov dword ptr [ebp-48], 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 32
test ebx, ebx
je .Lt_00CB
mov ebx, dword ptr [ebp+20]
and ebx, 128
test ebx, ebx
je .Lt_00CD
mov dword ptr [ebp-48], 1
.Lt_00CD:
.Lt_00CC:
.Lt_00CB:
.Lt_00CA:
push dword ptr [ebp-48]
lea ebx, [ebp-44]
push ebx
mov ebx, dword ptr [ebp+20]
and ebx, 64
test ebx, ebx
je .Lt_00CE
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-52], ebx
jmp .Lt_012C
.Lt_00CE:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-52], eax
.Lt_012C:
push dword ptr [ebp-52]
push dword ptr [ebp-16]
push dword ptr [ebp+12]
call _SYMBFINDCLOSESTOVLPROC
add esp, 20
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_00D1
push dword ptr [ebp+16]
lea eax, [_PARSER+112]
push eax
call _SYMBFREEOVLCALLARGS
add esp, 8
cmp dword ptr [ebp-44], 0
jne .Lt_00D3
mov dword ptr [ebp-44], 99
.Lt_00D3:
.Lt_00D2:
push dword ptr [ebp-44]
push 0
push 0
push dword ptr [ebp+12]
call _ERRREPORTPARAM
add esp, 16
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00D1:
.Lt_00D0:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp+12], eax
push dword ptr [ebp+12]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00D5
push 0
push 1
push 0
push dword ptr [ebp+12]
call _SYMBGETFULLPROCNAME
add esp, 4
push eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 4
test ebx, ebx
je .Lt_00D6
mov dword ptr [ebp-56], 205
jmp .Lt_012D
.Lt_00D6:
mov dword ptr [ebp-56], 202
.Lt_012D:
push dword ptr [ebp-56]
call _ERRREPORTEX
add esp, 20
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00D5:
.Lt_00D4:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+8]
and ebx, 2
test ebx, ebx
je .Lt_00D9
mov ebx, dword ptr [ebp+20]
and ebx, 64
test ebx, ebx
jne .Lt_00DB
cmp dword ptr [ebp+8], 0
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_PARSER+104]
mov ecx, dword ptr [eax+8]
and ecx, 2
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_00DD
push 0
push -1
push 214
call _ERRREPORT
add esp, 12
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00DD:
.Lt_00DC:
push -1
push dword ptr [ebp+16]
lea eax, [_PARSER+112]
push eax
call _SYMBALLOCOVLCALLARG
add esp, 12
mov dword ptr [ebp-36], eax
push 0
push 0
push 0
mov eax, dword ptr [_PARSER+104]
mov ecx, dword ptr [eax+76]
push dword ptr [ecx+60]
call _ASTBUILDVARFIELD
add esp, 16
mov ecx, dword ptr [ebp-36]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebp-36]
mov dword ptr [eax+4], -1
.Lt_00DB:
.Lt_00DA:
inc dword ptr [ebp-16]
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
push dword ptr [ecx]
push dword ptr [ebp+12]
call _HGETVTABLELOOKUPIFNEEDED
add esp, 12
mov dword ptr [ebp-24], eax
jmp .Lt_00D8
.Lt_00D9:
mov eax, dword ptr [ebp+20]
and eax, 64
test eax, eax
je .Lt_00DF
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebp-36], ecx
mov ecx, dword ptr [ebp-36]
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+8]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp-36]
lea ebx, [_PARSER+112]
push ebx
call _LISTDELNODE
add esp, 8
.Lt_00DF:
.Lt_00DE:
mov dword ptr [ebp-24], 0
.Lt_00D8:
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call _ASTNEWCALL
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
jmp .Lt_00E1
.Lt_00E4:
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-40], ebx
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx+4]
push -2147483648
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx]
push dword ptr [ebp-24]
call _ASTNEWARG
add esp, 16
test eax, eax
jne .Lt_00E6
push 0
push 0
push 22
call _ERRREPORT
add esp, 12
push dword ptr [ebp-24]
call _ASTDELTREE
add esp, 4
push dword ptr [ebp+12]
call _ASTBUILDFAKECALL
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_00BA
.Lt_00E6:
.Lt_00E5:
push dword ptr [ebp-36]
lea eax, [_PARSER+112]
push eax
call _LISTDELNODE
add esp, 8
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-28], ebx
mov ebx, dword ptr [ebp-40]
mov dword ptr [ebp-36], ebx
.Lt_00E2:
inc dword ptr [ebp-8]
.Lt_00E1:
mov ebx, dword ptr [ebp-56]
cmp dword ptr [ebp-8], ebx
jle .Lt_00E4
.Lt_00E3:
mov ebx, dword ptr [ebp+12]
movsx eax, word ptr [ebx+68]
mov dword ptr [ebp-12], eax
.Lt_00E7:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
jge .Lt_00E8
push -1
push -2147483648
push 0
push dword ptr [ebp-24]
call _ASTNEWARG
add esp, 16
inc dword ptr [ebp-16]
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-28], ebx
jmp .Lt_00E7
.Lt_00E8:
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebp-4], ebx
.Lt_00BA:
mov eax, dword ptr [ebp-4]
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
