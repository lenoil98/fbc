	.intel_syntax noprefix

.section .text
.balign 16

.globl _HTYPESTATICVARDECL
_HTYPESTATICVARDECL:
push ebp
mov ebp, esp
push ebx
.Lt_00FE:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
je .Lt_0101
push 0
push 0
push 156
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00FF
.Lt_0101:
.Lt_0100:
push dword ptr [ebp+8]
call _HBEGINNESTING
add esp, 4
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+116], 16384
or dword ptr [ebp+12], 19
push 0
push 306
push 0
push dword ptr [ebp+12]
call _CVARDECL
add esp, 16
.Lt_00FF:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CTYPEDECL
_CTYPEDECL:
push ebp
mov ebp, esp
sub esp, 72
push ebx
.Lt_0173:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 337
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov dword ptr [ebp-8], -1
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-60], eax
jmp .Lt_0176
.Lt_0178:
jmp .Lt_0175
.Lt_0179:
cmp dword ptr [ebp-4], 0
jne .Lt_017B
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .Lt_017D
call _CTYPEDEFMULTDECL
jmp .Lt_0174
.Lt_017D:
.Lt_017C:
.Lt_017B:
.Lt_017A:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-8], 0
jmp .Lt_0175
.Lt_017E:
jmp .Lt_0175
.Lt_017F:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-8], 0
jmp .Lt_0175
.Lt_0176:
cmp dword ptr [ebp-60], 2
ja .Lt_017F
mov eax, dword ptr [ebp-60]
jmp dword ptr [_.LT_0180+eax*4]
_.LT_0180:
.int .Lt_0178
.int .Lt_0179
.int .Lt_017E
.Lt_0175:
cmp dword ptr [ebp-8], 0
je .Lt_0182
call _CCURRENTPARENTID
mov eax, dword ptr [_ENV+888]
and eax, 524288
test eax, eax
je .Lt_0184
lea eax, [_SYMB+98352]
cmp dword ptr [_SYMB+98528], eax
je .Lt_0186
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+1048], 0
jle .Lt_0188
push 0
push 0
push 90
call _ERRREPORT
add esp, 12
.Lt_0188:
.Lt_0187:
.Lt_0186:
.Lt_0185:
.Lt_0184:
.Lt_0183:
push 0
push offset _Lt_01BD
call _LEXEATTOKEN
add esp, 8
jmp .Lt_0181
.Lt_0182:
push 0
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push 129
push offset _Lt_01BD
call _fb_StrAssign
add esp, 20
.Lt_0181:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .Lt_018A
cmp dword ptr [ebp-4], 0
je .Lt_018C
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.Lt_018C:
.Lt_018B:
push offset _Lt_01BD
call _CTYPEDEFSINGLEDECL
add esp, 4
jmp .Lt_0174
.Lt_018A:
.Lt_0189:
push 9
call _CCOMPSTMTISALLOWED
add esp, 4
test eax, eax
jne .Lt_018E
push 0
push -1
push 336
call _HSKIPCOMPOUND
add esp, 12
jmp .Lt_0174
.Lt_018E:
.Lt_018D:
call _CALIASATTRIBUTE
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 351
jne .Lt_0190
push 2048
call _LEXSKIPTOKEN
add esp, 4
push -1
push 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-64]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-28]
push eax
call _HSYMBOLTYPE
add esp, 20
cmp dword ptr [ebp-28], 20
je .Lt_0193
mov eax, dword ptr [ebp-28]
cmp eax, 7
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-28]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0195
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-28], 0
jmp .Lt_0194
.Lt_0195:
push 0
push 0
push 293
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-24], 0
.Lt_0194:
.Lt_0193:
.Lt_0192:
cmp dword ptr [ebp-32], 0
je .Lt_0197
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
jne .Lt_0199
push 0
call _LEXSKIPTOKEN
add esp, 4
push -1
push 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-72]
push eax
lea eax, [ebp-24]
push eax
lea eax, [ebp-28]
push eax
call _HSYMBOLTYPE
add esp, 20
cmp dword ptr [ebp-28], 20
je .Lt_019C
push 0
push 0
push 293
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-24], 0
.Lt_019C:
.Lt_019B:
.Lt_0199:
.Lt_0198:
.Lt_0197:
.Lt_0196:
cmp dword ptr [ebp-24], 0
je .Lt_019E
cmp dword ptr [ebp-32], 4
jne .Lt_01A0
.Lt_01A1:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+116]
and ebx, 65536
test ebx, ebx
je .Lt_01A3
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-32], 7
.Lt_01A3:
.Lt_01A2:
jmp .Lt_019F
.Lt_01A0:
cmp dword ptr [ebp-32], 7
jne .Lt_01A4
.Lt_01A5:
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+116]
and eax, 131072
test eax, eax
je .Lt_01A7
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
mov dword ptr [ebp-32], 4
.Lt_01A7:
.Lt_01A6:
jmp .Lt_019F
.Lt_01A4:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+116]
and ebx, 131072
test ebx, ebx
je .Lt_01AA
mov dword ptr [ebp-32], 4
jmp .Lt_01A9
.Lt_01AA:
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+116]
and eax, 65536
test eax, eax
je .Lt_01AB
mov dword ptr [ebp-32], 7
.Lt_01AB:
.Lt_01A9:
.Lt_01A8:
.Lt_019F:
.Lt_019E:
.Lt_019D:
.Lt_0190:
.Lt_018F:
call _CFIELDALIGNMENTATTRIBUTE
mov dword ptr [ebp-36], eax
push -34
push 336
call _CCOMPSTMTPUSH
add esp, 8
mov eax, dword ptr [_AST+40]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [_AST+132]
mov dword ptr [ebp-44], eax
mov eax, dword ptr [_PARSER+104]
mov dword ptr [ebp-48], eax
mov eax, dword ptr [_PARSER+108]
mov dword ptr [ebp-52], eax
mov eax, dword ptr [_PARSER+96]
mov dword ptr [ebp-56], eax
push dword ptr [ebp-32]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-36]
push dword ptr [ebp-4]
push dword ptr [ebp-20]
push offset _Lt_01BD
push 0
call _HTYPEADD
add esp, 32
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-40]
mov dword ptr [_AST+40], eax
mov eax, dword ptr [ebp-44]
mov dword ptr [_AST+132], eax
mov eax, dword ptr [ebp-48]
mov dword ptr [_PARSER+104], eax
mov eax, dword ptr [ebp-52]
mov dword ptr [_PARSER+108], eax
mov eax, dword ptr [ebp-56]
mov dword ptr [_PARSER+96], eax
push dword ptr [ebp-12]
call _HDISALLOWNESTEDCLASSES
add esp, 4
push -1
push 336
call _CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_01AD
push dword ptr [ebp-16]
call _CCOMPSTMTPOP
add esp, 4
.Lt_01AD:
.Lt_01AC:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .Lt_01AF
push 0
push 0
push offset _Lt_01BD
push dword ptr [_SYMB+98528]
call _SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .Lt_01B1
mov eax, dword ptr [ebp-60]
mov ebx, dword ptr [ebp-12]
cmp dword ptr [eax], ebx
je .Lt_01B3
push 0
push 1
push 0
push offset _Lt_01BD
push 167
call _ERRREPORTEX
add esp, 20
.Lt_01B3:
.Lt_01B2:
.Lt_01B1:
.Lt_01B0:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+116]
and eax, 2048
test eax, eax
je .Lt_01B5
push 0
push 0
push 238
call _ERRREPORT
add esp, 12
.Lt_01B5:
.Lt_01B4:
.Lt_01AF:
.Lt_01AE:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+116]
and ebx, 32
test ebx, ebx
je .Lt_01B7
push dword ptr [ebp-12]
call _SYMBCOMPISTRIVIAL
add esp, 4
test eax, eax
jne .Lt_01B9
push dword ptr [ebp-12]
call _HPATCHBYVALPARAMSTOSELF
add esp, 4
.Lt_01B9:
.Lt_01B8:
.Lt_01B7:
.Lt_01B6:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+116]
and ebx, 64
test ebx, ebx
je .Lt_01BB
push dword ptr [ebp-12]
call _HPATCHBYVALRESULTTOSELF
add esp, 4
.Lt_01BB:
.Lt_01BA:
.Lt_0174:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01BD,129

.section .text
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
_HBEGINNESTING:
push ebp
mov ebp, esp
push ebx
.Lt_0068:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
jne .Lt_006B
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 262144
push 0
push dword ptr [ebp+8]
call _SYMBNESTBEGIN
add esp, 8
.Lt_006B:
.Lt_006A:
.Lt_0069:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HTYPEPROTODECL:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_006C:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
je .Lt_006F
push 0
push 0
push 154
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_006D
.Lt_006F:
.Lt_006E:
mov ebx, dword ptr [_ENV+888]
and ebx, 64
test ebx, ebx
jne .Lt_0071
push 0
push 146
push 64
call _ERRREPORTNOTALLOWED
add esp, 12
.Lt_0071:
.Lt_0070:
push dword ptr [ebp+8]
call _HBEGINNESTING
add esp, 4
push 2048
call _LEXSKIPTOKEN
add esp, 4
lea ebx, [ebp-12]
push ebx
lea ebx, [ebp+12]
push ebx
push dword ptr [ebp+8]
call _CMETHODATTRIBUTES
add esp, 12
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 347
jne .Lt_0073
.Lt_0074:
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call _HDISALLOWSTATICATTRIB
add esp, 8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call _HDISALLOWVIRTUALCTOR
add esp, 8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
push dword ptr [ebp-8]
call _HDISALLOWCONSTCTORDTOR
add esp, 12
jmp .Lt_0072
.Lt_0073:
cmp dword ptr [ebp-8], 348
jne .Lt_0075
.Lt_0076:
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call _HDISALLOWSTATICATTRIB
add esp, 8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call _HDISALLOWABSTRACTDTOR
add esp, 8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
push dword ptr [ebp-8]
call _HDISALLOWCONSTCTORDTOR
add esp, 12
jmp .Lt_0072
.Lt_0075:
cmp dword ptr [ebp-8], 350
jne .Lt_0077
.Lt_0078:
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call _HDISALLOWSTATICATTRIB
add esp, 8
.Lt_0077:
.Lt_0072:
cmp dword ptr [ebp-8], 345
je .Lt_007B
.Lt_007C:
cmp dword ptr [ebp-8], 346
je .Lt_007B
.Lt_007D:
cmp dword ptr [ebp-8], 347
je .Lt_007B
.Lt_007E:
cmp dword ptr [ebp-8], 348
je .Lt_007B
.Lt_007F:
cmp dword ptr [ebp-8], 349
je .Lt_007B
.Lt_0080:
cmp dword ptr [ebp-8], 350
jne .Lt_007A
.Lt_007B:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-8]
push 3
lea eax, [ebp-4]
push eax
push dword ptr [ebp-12]
push dword ptr [ebp+12]
call _CPROCHEADER
add esp, 20
jmp .Lt_0079
.Lt_007A:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
.Lt_0081:
.Lt_0079:
.Lt_006D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HTYPEENUMDECL:
push ebp
mov ebp, esp
push ebx
.Lt_0082:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
je .Lt_0085
push 0
push 0
push 155
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0083
.Lt_0085:
.Lt_0084:
push dword ptr [ebp+8]
call _HBEGINNESTING
add esp, 4
cmp dword ptr [ebp+12], 335
jne .Lt_0087
push dword ptr [ebp+16]
call _CCONSTDECL
add esp, 4
jmp .Lt_0086
.Lt_0087:
push dword ptr [ebp+16]
call _CENUMDECL
add esp, 4
.Lt_0086:
.Lt_0083:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSETFIELDINITREE:
push ebp
mov ebp, esp
push ebx
.Lt_0088:
cmp dword ptr [ebp+12], 0
je .Lt_008B
push 12288
push dword ptr [ebp+12]
call _ASTTYPEINIUSESLOCALS
add esp, 8
test eax, eax
je .Lt_008D
push 0
push -1
push 272
call _ERRREPORT
add esp, 12
push dword ptr [ebp+12]
call _ASTDELTREE
add esp, 4
mov dword ptr [ebp+12], 0
.Lt_008D:
.Lt_008C:
.Lt_008B:
.Lt_008A:
push dword ptr [ebp+12]
call _ASTFORGETBITFIELDS
add esp, 4
cmp dword ptr [ebp+12], 0
je .Lt_008F
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
.Lt_008F:
.Lt_008E:
.Lt_0089:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFIELDINIT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0090:
push 0
call _LEXGETTOKEN
add esp, 4
push eax
call _HISASSIGNTOKEN
add esp, 4
test eax, eax
jne .Lt_0093
cmp dword ptr [ebp+12], 0
je .Lt_0095
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .Lt_0097
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-8]
call _SYMBGETCOMPCTORHEAD
add esp, 4
test eax, eax
je .Lt_0099
push dword ptr [ebp-8]
call _SYMBGETCOMPDEFCTOR
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_009B
push dword ptr [ebp-4]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_009D
push 0
push 0
push 204
call _ERRREPORT
add esp, 12
.Lt_009D:
.Lt_009C:
jmp .Lt_009A
.Lt_009B:
push 0
push 0
push 183
call _ERRREPORT
add esp, 12
.Lt_009A:
.Lt_0099:
.Lt_0098:
push dword ptr [ebp-8]
call _SYMBGETCOMPDTOR
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_009F
push dword ptr [ebp-4]
call _SYMBCHECKACCESS
add esp, 4
test eax, eax
jne .Lt_00A1
push 0
push 0
push 206
call _ERRREPORT
add esp, 12
.Lt_00A1:
.Lt_00A0:
.Lt_009F:
.Lt_009E:
.Lt_0097:
.Lt_0096:
.Lt_0095:
.Lt_0094:
cmp dword ptr [ebp+16], 0
je .Lt_00A3
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 4096
push dword ptr [ebp+8]
call _HBEGINNESTING
add esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _HSETFIELDINITREE
add esp, 8
.Lt_00A3:
.Lt_00A2:
jmp .Lt_0091
.Lt_0093:
.Lt_0092:
mov eax, dword ptr [_ENV+888]
and eax, 128
test eax, eax
jne .Lt_00A5
push 0
push 146
push 128
call _ERRREPORTNOTALLOWED
add esp, 12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0091
.Lt_00A5:
.Lt_00A4:
cmp dword ptr [ebp+12], 0
je .Lt_00A7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 3
test ebx, ebx
je .Lt_00A9
push 0
push 0
push 163
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 257
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0091
.Lt_00A9:
.Lt_00A8:
.Lt_00A7:
.Lt_00A6:
push 0
call _LEXSKIPTOKEN
add esp, 4
cmp dword ptr [ebp+12], 0
jne .Lt_00AB
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0091
.Lt_00AB:
.Lt_00AA:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+116], 4096
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 372
jne .Lt_00AD
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .Lt_00AF
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
jmp .Lt_00AE
.Lt_00AF:
mov ebx, dword ptr [ebp+12]
or dword ptr [ebx+12], 2048
.Lt_00AE:
push 2048
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_0091
.Lt_00AD:
.Lt_00AC:
push dword ptr [ebp+8]
call _HBEGINNESTING
add esp, 4
push 0
push -2147483648
push 1
push dword ptr [ebp+12]
call _CINITIALIZER
add esp, 16
push eax
push dword ptr [ebp+12]
call _HSETFIELDINITREE
add esp, 8
.Lt_0091:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFIELDTYPE:
push ebp
mov ebp, esp
.Lt_00B0:
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HSYMBOLTYPE
add esp, 20
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HCOMPLAINIFABSTRACTCLASS
add esp, 8
.Lt_00B1:
mov esp, ebp
pop ebp
ret
.balign 16
_HARRAYORBITFIELD:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_00B2:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
push 0
push 40
call _HMATCH
add esp, 8
test eax, eax
je .Lt_00B6
push 0
push 0
push 0
push 0
push 8
call _ASTTYPEINIBEGIN
add esp, 20
mov ebx, dword ptr [ebp+28]
mov dword ptr [ebx], eax
push offset _Lt_01D5
lea eax, [ebp-4]
push eax
push dword ptr [ebp+20]
call _CARRAYDECL
add esp, 12
cmp dword ptr [ebp-4], 0
je .Lt_00B8
push 77
push offset _Lt_01D5
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call _HCOMPLAINABOUTELLIPSIS
add esp, 12
push dword ptr [ebp+24]
push offset _Lt_01D5
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
push dword ptr [ebp+12]
call _HMAYBECONVERTEXPRTB2DIMTB
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 4
je .Lt_00BA
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
dec eax
mov dword ptr [ebp-12], eax
jmp .Lt_00BC
.Lt_00BF:
push 0
push 8
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [_Lt_01D6+eax*8]
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call _ASTTYPEINIADDASSIGN
add esp, 20
push 0
push 8
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [_Lt_01D6+eax*8+4]
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call _ASTTYPEINIADDASSIGN
add esp, 20
.Lt_00BD:
inc dword ptr [ebp-8]
.Lt_00BC:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .Lt_00BF
.Lt_00BE:
.Lt_00BA:
.Lt_00B9:
jmp .Lt_00B7
.Lt_00B8:
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 4
.Lt_00B7:
push -1
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call _ASTTYPEINIEND
add esp, 8
mov eax, dword ptr [ebp-4]
not eax
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [ebx]
and ecx, 4
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_00C1
mov ecx, dword ptr [ebp+28]
push dword ptr [ecx]
call _ASTDELTREE
add esp, 4
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
.Lt_00C1:
.Lt_00C0:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 41
je .Lt_00C3
push 0
push 0
push 7
call _ERRREPORT
add esp, 12
jmp .Lt_00C2
.Lt_00C3:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00C2:
jmp .Lt_00B5
.Lt_00B6:
cmp dword ptr [ebp+8], 310
jne .Lt_00C5
push 0
push 0
push 63
call _ERRREPORT
add esp, 12
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.Lt_00C5:
.Lt_00C4:
.Lt_00B5:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 258
jne .Lt_00C7
push 0
push 1
call _LEXGETLOOKAHEADCLASS
add esp, 8
cmp eax, 3
jne .Lt_00C9
push 0
call _LEXSKIPTOKEN
add esp, 4
call _LEXGETTEXT
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_VALINT
add esp, 4
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], eax
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
test ecx, ecx
setle cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .Lt_00CB
push 0
push -1
push 17
call _ERRREPORT
add esp, 12
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 0
.Lt_00CB:
.Lt_00CA:
.Lt_00C9:
.Lt_00C8:
.Lt_00C7:
.Lt_00C6:
.Lt_00B3:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01D6,64

.section .data
.balign 4
_Lt_01D5:
.int _Lt_01D6
.int _Lt_01D6
.int 64
.int 4
.int 2
.int 50
.int 8
.int 0
.int 7
.int 2
.int 0
.int 1

.section .text
.balign 16
_HADDANDINITFIELD:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00CC:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 0
jle .Lt_00CF
push 0
push dword ptr [ebp+40]
push dword ptr [ebp+36]
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
lea eax, [ebx]
push eax
push dword ptr [ebp+16]
call _SYMBCHECKARRAYSIZE
add esp, 20
test eax, eax
jne .Lt_00D1
push 0
push 0
push 50
call _ERRREPORT
add esp, 12
mov dword ptr [ebp+16], 1
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
mov dword ptr [eax+8], 0
mov dword ptr [eax+12], 0
.Lt_00D1:
.Lt_00D0:
.Lt_00CF:
.Lt_00CE:
cmp dword ptr [ebp+44], 0
jle .Lt_00D3
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+28]
push dword ptr [ebp+8]
call _SYMBCHECKBITFIELD
add esp, 20
test eax, eax
jne .Lt_00D5
push 0
push -1
push 78
call _ERRREPORT
add esp, 12
mov dword ptr [ebp+44], 0
.Lt_00D5:
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
cmp dword ptr [ebp+28], 20
jne .Lt_00D7
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp+32], eax
jne .Lt_00D9
push 0
push 0
push 88
call _ERRREPORT
add esp, 12
mov dword ptr [ebp+28], 8
mov dword ptr [ebp+32], 0
mov dword ptr [ebp+36], 0
mov dword ptr [ebp+40], 0
.Lt_00D9:
.Lt_00D8:
.Lt_00D7:
.Lt_00D6:
push dword ptr [ebp+48]
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBADDFIELD
add esp, 40
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00DB
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX
add esp, 20
jmp .Lt_00CD
.Lt_00DB:
.Lt_00DA:
mov eax, dword ptr [ebp+48]
and eax, 4
je .Lt_00DD
push dword ptr [ebp-8]
call _HCOMPLAINABOUTCONSTDYNAMICARRAY
add esp, 4
.Lt_00DD:
.Lt_00DC:
push dword ptr [ebp+24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HFIELDINIT
add esp, 12
mov dword ptr [ebp-4], -1
.Lt_00CD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFIELDID:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DE:
push 0
call _LEXGETCLASS
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00E3
.Lt_00E4:
cmp dword ptr [ebp-8], 1
je .Lt_00E3
.Lt_00E5:
cmp dword ptr [ebp-8], 2
jne .Lt_00E2
.Lt_00E3:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [eax+4260]
cmp dword ptr [ebx+8], -2147483648
je .Lt_00E7
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.Lt_00E7:
.Lt_00E6:
mov ebx, dword ptr [_LEX+213248]
mov eax, dword ptr [ebx+4260]
cmp dword ptr [eax+1048], 0
jle .Lt_00E9
push 0
push 0
push 90
call _ERRREPORT
add esp, 12
.Lt_00E9:
.Lt_00E8:
push 0
call _LEXGETCLASS
add esp, 4
cmp eax, 1
jne .Lt_00EB
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .Lt_00ED
push 0
push 0
push 238
call _ERRREPORT
add esp, 12
jmp .Lt_00EC
.Lt_00ED:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+116], 2048
.Lt_00EC:
.Lt_00EB:
.Lt_00EA:
push 0
push 0
call _LEXGETTEXT
push eax
push 129
push offset _Lt_01DA
call _fb_StrAssign
add esp, 20
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_00E0
.Lt_00E2:
push 0
push 0
push 14
call _ERRREPORT
add esp, 12
push 0
push 0
call _SYMBUNIQUELABEL
push eax
push 129
push offset _Lt_01DA
call _fb_StrAssign
add esp, 20
.Lt_00EE:
.Lt_00E0:
mov eax, offset _Lt_01DA
mov dword ptr [ebp-4], eax
.Lt_00DF:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01DA,129

.section .text
.balign 16
_HTYPEMULTELEMENTDECL:
push ebp
mov ebp, esp
sub esp, 36
.Lt_00EF:
push 2048
call _LEXSKIPTOKEN
add esp, 4
lea eax, [ebp-32]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-12]
push eax
call _HFIELDTYPE
add esp, 12
.Lt_00F2:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-24], eax
push dword ptr [ebp+12]
call _HFIELDID
add esp, 4
mov dword ptr [ebp-4], eax
lea eax, [ebp-36]
push eax
push offset _Lt_01DB
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call _HARRAYORBITFIELD
add esp, 24
push dword ptr [ebp-24]
push dword ptr [ebp-16]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-36]
push offset _Lt_01DB
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call _HADDANDINITFIELD
add esp, 44
.Lt_00F4:
push 0
push 44
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_00F2
.Lt_00F3:
.Lt_00F0:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01DC,128

.section .data
.balign 4
_Lt_01DB:
.int _Lt_01DC
.int _Lt_01DC
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16
_HTYPEELEMENTDECL:
push ebp
mov ebp, esp
sub esp, 32
.Lt_00F5:
push dword ptr [ebp+12]
call _HFIELDID
add esp, 4
mov dword ptr [ebp-4], eax
lea eax, [ebp-32]
push eax
push offset _Lt_01DD
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp+16]
push eax
push dword ptr [ebp+8]
call _HARRAYORBITFIELD
add esp, 24
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
je .Lt_00F9
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
jmp .Lt_00F8
.Lt_00F9:
push 2048
call _LEXSKIPTOKEN
add esp, 4
.Lt_00F8:
lea eax, [ebp-28]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-12]
push eax
call _HFIELDTYPE
add esp, 12
push dword ptr [ebp+16]
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
push offset _Lt_01DD
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call _HADDANDINITFIELD
add esp, 44
.Lt_00F6:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_01DE,128

.section .data
.balign 4
_Lt_01DD:
.int _Lt_01DE
.int _Lt_01DE
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16
_HFIELDDECLWITHEXPLICITDIM:
push ebp
mov ebp, esp
.Lt_00FA:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .Lt_00FD
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HTYPEMULTELEMENTDECL
add esp, 12
jmp .Lt_00FC
.Lt_00FD:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HTYPEELEMENTDECL
add esp, 12
.Lt_00FC:
.Lt_00FB:
mov esp, ebp
pop ebp
ret
.balign 16
_HTYPEADD:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_0102:
push 0
push 0
cmp dword ptr [ebp+32], 0
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
push 0
call _SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0105
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX
add esp, 20
push 0
push 0
cmp dword ptr [ebp+32], 0
setne al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push 0
call _SYMBUNIQUELABEL
push eax
push dword ptr [ebp+8]
push 0
push 0
call _SYMBSTRUCTBEGIN
add esp, 40
mov dword ptr [ebp-8], eax
.Lt_0105:
.Lt_0104:
cmp dword ptr [ebp+36], 4
jne .Lt_0107
.Lt_0108:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+116], 131072
jmp .Lt_0106
.Lt_0107:
cmp dword ptr [ebp+36], 7
jne .Lt_0109
.Lt_010A:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+116], 65536
.Lt_0109:
.Lt_0106:
cmp dword ptr [ebp+32], 0
je .Lt_010C
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call _SYMBSTRUCTADDBASE
add esp, 8
.Lt_010C:
.Lt_010B:
push 0
call _CCOMMENT
add esp, 4
cmp dword ptr [_ENV+148], 0
je .Lt_010E
cmp dword ptr [_ENV+876], 0
jne .Lt_0110
mov eax, dword ptr [_LEX+213248]
push dword ptr [eax+12528]
call _ASTNEWLIT
add esp, 4
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+12528]
push ebx
call _DZSTRRESET
add esp, 4
.Lt_0110:
.Lt_010F:
.Lt_010E:
.Lt_010D:
push 0
call _CSTMTSEPARATOR
add esp, 4
test eax, eax
jne .Lt_0112
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push -1
call _HSKIPUNTIL
add esp, 16
.Lt_0112:
.Lt_0111:
push dword ptr [ebp-8]
call _HTYPEBODY
add esp, 4
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp-8]
call _SYMBSTRUCTEND
add esp, 8
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 340
je .Lt_0114
push 0
push 0
push 19
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0113
.Lt_0114:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+20], 0
je .Lt_0115
mov dword ptr [ebp-12], 337
jmp .Lt_01DF
.Lt_0115:
mov dword ptr [ebp-12], 336
.Lt_01DF:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
je .Lt_0118
push 0
push 0
push 19
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_0117
.Lt_0118:
push 2048
call _LEXSKIPTOKEN
add esp, 4
.Lt_0117:
.Lt_0113:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0103:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_CFIELDALIGNMENTATTRIBUTE:
push ebp
mov ebp, esp
sub esp, 16
mov dword ptr [ebp-4], 0
.Lt_0119:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 491
je .Lt_011C
mov dword ptr [ebp-4], 0
jmp .Lt_011A
.Lt_011C:
.Lt_011B:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CASSIGNTOKEN
test eax, eax
jne .Lt_011E
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.Lt_011E:
.Lt_011D:
call _CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0120
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0120:
.Lt_011F:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .Lt_0122
push 0
push 0
push 11
call _ERRREPORT
add esp, 12
push dword ptr [ebp-8]
call _ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0122:
.Lt_0121:
push 8
push dword ptr [ebp-8]
call _ASTCONSTFLUSHTOINT
add esp, 8
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jg .Lt_0124
jl .Lt_01E4
cmp dword ptr [ebp-16], 0
jae .Lt_0124
.Lt_01E4:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
jmp .Lt_0123
.Lt_0124:
mov edx, dword ptr [_ENV+272]
mov eax, edx
sar eax, 31
cmp dword ptr [ebp-12], eax
jl .Lt_0125
jg .Lt_01E5
cmp dword ptr [ebp-16], edx
jbe .Lt_0125
.Lt_01E5:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
jmp .Lt_0123
.Lt_0125:
cmp dword ptr [ebp-12], 0
jne .Lt_0126
cmp dword ptr [ebp-16], 3
jne .Lt_0126
.Lt_01E6:
mov dword ptr [ebp-16], 2
mov dword ptr [ebp-12], 0
.Lt_0126:
.Lt_0123:
mov edx, dword ptr [ebp-16]
mov dword ptr [ebp-4], edx
.Lt_011A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HTYPEBODY:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_0127:
mov dword ptr [ebp-8], 0
.Lt_0129:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-16], eax
jmp .Lt_012D
.Lt_012F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
je .Lt_0131
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.Lt_0131:
.Lt_0130:
push 0
call _LEXGETTOKEN
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 378
jne .Lt_0134
.Lt_0135:
mov dword ptr [ebp-8], 0
jmp .Lt_0132
.Lt_0134:
cmp dword ptr [ebp-20], 379
jne .Lt_0136
.Lt_0137:
mov dword ptr [ebp-8], 2097152
jmp .Lt_0132
.Lt_0136:
cmp dword ptr [ebp-20], 380
jne .Lt_0138
.Lt_0139:
mov dword ptr [ebp-8], 4194304
.Lt_0138:
.Lt_0132:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 258
je .Lt_013B
push 0
push 0
push 203
call _ERRREPORT
add esp, 12
.Lt_013B:
.Lt_013A:
jmp .Lt_012C
.Lt_013C:
push 0
call _CCOMMENT
add esp, 4
jmp .Lt_012C
.Lt_013D:
push 0
call _LEXSKIPTOKEN
add esp, 4
jmp .Lt_012B
jmp .Lt_012C
.Lt_013E:
jmp .Lt_012A
jmp .Lt_012C
.Lt_013F:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 376
je .Lt_0143
.Lt_0144:
cmp dword ptr [ebp-20], 40
je .Lt_0143
.Lt_0145:
cmp dword ptr [ebp-20], 258
jne .Lt_0142
.Lt_0143:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call _HTYPEELEMENTDECL
add esp, 12
jmp .Lt_0140
.Lt_0142:
jmp .Lt_012A
.Lt_0146:
.Lt_0140:
jmp .Lt_012C
.Lt_0147:
push 0
push 1
call _LEXGETLOOKAHEAD
add esp, 8
mov dword ptr [ebp-20], eax
jmp .Lt_0149
.Lt_014B:
.Lt_014C:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 337
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-4]
cmp ebx, eax
jne .Lt_014E
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
not dword ptr [ebp-4]
.Lt_014E:
.Lt_014D:
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _CFIELDALIGNMENTATTRIBUTE
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_0150
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+121]
mov dword ptr [ebp-24], ebx
.Lt_0150:
.Lt_014F:
push 0
push 0
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-4]
push 0
push 0
call _SYMBUNIQUEID
add esp, 4
push eax
push dword ptr [ebp+8]
call _HTYPEADD
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-4], 0
je .Lt_0152
mov eax, dword ptr [ebp-12]
or dword ptr [eax+116], 1
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 8192
.Lt_0152:
.Lt_0151:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-28], ebx
.Lt_0153:
cmp dword ptr [ebp-28], 0
je .Lt_0154
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-8]
or dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-28], ebx
jmp .Lt_0153
.Lt_0154:
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call _SYMBINSERTINNERUDT
add esp, 8
jmp .Lt_0148
.Lt_0155:
push 0
push 2
call _LEXGETLOOKAHEADCLASS
add esp, 8
cmp eax, 3
je .Lt_0157
jmp .Lt_014C
.Lt_0157:
.Lt_0156:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call _HTYPEELEMENTDECL
add esp, 12
jmp .Lt_0148
.Lt_0158:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call _HTYPEELEMENTDECL
add esp, 12
jmp .Lt_0148
.Lt_0149:
mov eax, dword ptr [ebp-20]
add eax, 4294967040
cmp eax, 235
ja .Lt_0158
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_0159+eax*4-1024]
_.LT_0159:
.int .Lt_014B
.int .Lt_014B
.int .Lt_0155
.int .Lt_014B
.int .Lt_014B
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_0158
.int .Lt_014B
.Lt_0148:
jmp .Lt_012C
.Lt_015A:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call _HTYPEMULTELEMENTDECL
add esp, 12
jmp .Lt_012C
.Lt_015B:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HTYPEPROTODECL
add esp, 8
jmp .Lt_012C
.Lt_015C:
push dword ptr [ebp-8]
push 0
call _LEXGETTOKEN
add esp, 4
push eax
push dword ptr [ebp+8]
call _HTYPEENUMDECL
add esp, 12
jmp .Lt_012C
.Lt_015D:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call _HFIELDDECLWITHEXPLICITDIM
add esp, 12
jmp .Lt_012C
.Lt_015E:
mov eax, dword ptr [ebp-8]
or eax, 4
push eax
push dword ptr [ebp+8]
push 310
call _HFIELDDECLWITHEXPLICITDIM
add esp, 12
jmp .Lt_012C
.Lt_015F:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call _HTYPESTATICVARDECL
add esp, 8
jmp .Lt_012C
.Lt_0160:
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call _HTYPEELEMENTDECL
add esp, 12
jmp .Lt_012C
.Lt_012D:
mov eax, dword ptr [ebp-16]
add eax, 4294967040
cmp eax, 124
ja .Lt_0160
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_0161+eax*4-1024]
_.LT_0161:
.int .Lt_013E
.int .Lt_013D
.int .Lt_0160
.int .Lt_013C
.int .Lt_013C
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_015F
.int .Lt_015D
.int .Lt_0160
.int .Lt_015E
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_015B
.int .Lt_015C
.int .Lt_0147
.int .Lt_0147
.int .Lt_015C
.int .Lt_0160
.int .Lt_013F
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_0160
.int .Lt_015A
.int .Lt_0160
.int .Lt_012F
.int .Lt_012F
.int .Lt_012F
.Lt_012C:
push 0
call _CCOMMENT
add esp, 4
cmp dword ptr [_ENV+148], 0
je .Lt_0163
cmp dword ptr [_ENV+876], 0
jne .Lt_0165
mov eax, dword ptr [_LEX+213248]
push dword ptr [eax+12528]
call _ASTNEWLIT
add esp, 4
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+12528]
push ebx
call _DZSTRRESET
add esp, 4
.Lt_0165:
.Lt_0164:
.Lt_0163:
.Lt_0162:
push 0
call _CSTMTSEPARATOR
add esp, 4
test eax, eax
jne .Lt_0167
push 0
push 0
push 3
call _ERRREPORT
add esp, 12
push 0
push 0
push -1
push -1
call _HSKIPUNTIL
add esp, 16
.Lt_0167:
.Lt_0166:
.Lt_012B:
jmp .Lt_0129
.Lt_012A:
push dword ptr [ebp+8]
call _SYMBUDTGETFIRSTFIELD
add esp, 4
test eax, eax
jne .Lt_0169
push 0
push 0
push 256
call _ERRREPORT
add esp, 12
.Lt_0169:
.Lt_0168:
.Lt_0128:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HDISALLOWNESTEDCLASSES:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_016A:
cmp dword ptr [_PARSER+96], 0
jbe .Lt_016D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_016E:
cmp dword ptr [ebp-4], 0
je .Lt_016F
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 3
jne .Lt_0171
push 0
push 1
push 0
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
push 263
call _ERRREPORTEX
add esp, 20
jmp .Lt_0170
.Lt_0171:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx]
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+4]
and ecx, 16
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_0172
push 0
push 1
push 0
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+16]
push 264
call _ERRREPORTEX
add esp, 20
.Lt_0172:
.Lt_0170:
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-4], eax
jmp .Lt_016E
.Lt_016F:
.Lt_016D:
.Lt_016C:
.Lt_016B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPATCHBYVALPARAMSTOSELF:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_01C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_01C2:
cmp dword ptr [ebp-4], 0
je .Lt_01C3
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 3
jne .Lt_01C5
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
.Lt_01C6:
cmp dword ptr [ebp-8], 0
je .Lt_01C7
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [eax+32]
cmp ecx, dword ptr [ebp+8]
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_01C9
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 1
jne .Lt_01CB
push dword ptr [ebp-8]
call _SYMBRECALCLEN
add esp, 4
.Lt_01CB:
.Lt_01CA:
.Lt_01C9:
.Lt_01C8:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .Lt_01C6
.Lt_01C7:
.Lt_01C5:
.Lt_01C4:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-4], eax
jmp .Lt_01C2
.Lt_01C3:
.Lt_01C1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPATCHBYVALRESULTTOSELF:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01CC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_01CE:
cmp dword ptr [ebp-4], 0
je .Lt_01CF
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+28]
and eax, 511
cmp eax, 20
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+32]
cmp ecx, dword ptr [ebp+8]
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
mov ebx, dword ptr [ebp-4]
mov ecx, dword ptr [ebx+4]
and ecx, 262144
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_01D1
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx], 3
jne .Lt_01D3
push dword ptr [ebp-4]
call _SYMBPROCRECALCREALTYPE
add esp, 4
jmp .Lt_01D2
.Lt_01D3:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx], 1
jne .Lt_01D4
push dword ptr [ebp-4]
call _SYMBRECALCLEN
add esp, 4
.Lt_01D4:
.Lt_01D2:
.Lt_01D1:
.Lt_01D0:
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-4], eax
jmp .Lt_01CE
.Lt_01CF:
.Lt_01CD:
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
