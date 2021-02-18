	.intel_syntax noprefix

.section .text
.balign 16

.globl HTYPESTATICVARDECL
HTYPESTATICVARDECL:
.type HTYPESTATICVARDECL, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00FD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
je .Lt_0100
sub esp, 4
push 0
push 0
push 156
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00FE
.Lt_0100:
.Lt_00FF:
sub esp, 12
push dword ptr [ebp+8]
call HBEGINNESTING
add esp, 16
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+116], 16384
or dword ptr [ebp+12], 19
push 0
push 306
push 0
push dword ptr [ebp+12]
call CVARDECL
add esp, 16
.Lt_00FE:
pop ebx
mov esp, ebp
pop ebp
ret
.size HTYPESTATICVARDECL, .-HTYPESTATICVARDECL
.balign 16

.globl CTYPEDECL
CTYPEDECL:
.type CTYPEDECL, @function
push ebp
mov ebp, esp
sub esp, 84
push ebx
.Lt_0172:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 337
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], -1
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-60], eax
jmp .Lt_0175
.Lt_0177:
jmp .Lt_0174
.Lt_0178:
cmp dword ptr [ebp-4], 0
jne .Lt_017A
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .Lt_017C
call CTYPEDEFMULTDECL
jmp .Lt_0173
.Lt_017C:
.Lt_017B:
.Lt_017A:
.Lt_0179:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov dword ptr [ebp-8], 0
jmp .Lt_0174
.Lt_017D:
jmp .Lt_0174
.Lt_017E:
sub esp, 4
push 0
push 0
push 14
call ERRREPORT
add esp, 16
mov dword ptr [ebp-8], 0
jmp .Lt_0174
.Lt_0175:
cmp dword ptr [ebp-60], 2
ja .Lt_017E
mov eax, dword ptr [ebp-60]
jmp dword ptr [.LT_017F+eax*4]
.LT_017F:
.int .Lt_0177
.int .Lt_0178
.int .Lt_017D
.Lt_0174:
cmp dword ptr [ebp-8], 0
je .Lt_0181
call CCURRENTPARENTID
mov eax, dword ptr [ENV+888]
and eax, 524288
test eax, eax
je .Lt_0183
lea eax, [SYMB+98352]
cmp dword ptr [SYMB+98528], eax
je .Lt_0185
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+4120], 0
jle .Lt_0187
sub esp, 4
push 0
push 0
push 90
call ERRREPORT
add esp, 16
.Lt_0187:
.Lt_0186:
.Lt_0185:
.Lt_0184:
.Lt_0183:
.Lt_0182:
sub esp, 8
push 0
push offset Lt_01BC
call LEXEATTOKEN
add esp, 16
jmp .Lt_0180
.Lt_0181:
sub esp, 12
push 0
push 0
sub esp, 8
push 0
call SYMBUNIQUEID
add esp, 12
push eax
push 129
push offset Lt_01BC
call fb_StrAssign
add esp, 32
.Lt_0180:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .Lt_0189
cmp dword ptr [ebp-4], 0
je .Lt_018B
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.Lt_018B:
.Lt_018A:
sub esp, 12
push offset Lt_01BC
call CTYPEDEFSINGLEDECL
add esp, 16
jmp .Lt_0173
.Lt_0189:
.Lt_0188:
sub esp, 12
push 9
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_018D
sub esp, 4
push 0
push -1
push 336
call HSKIPCOMPOUND
add esp, 16
jmp .Lt_0173
.Lt_018D:
.Lt_018C:
call CALIASATTRIBUTE
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-32], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 351
jne .Lt_018F
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
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
call HSYMBOLTYPE
add esp, 32
cmp dword ptr [ebp-28], 20
je .Lt_0192
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
je .Lt_0194
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-32], ebx
mov dword ptr [ebp-28], 0
jmp .Lt_0193
.Lt_0194:
sub esp, 4
push 0
push 0
push 293
call ERRREPORT
add esp, 16
mov dword ptr [ebp-24], 0
.Lt_0193:
.Lt_0192:
.Lt_0191:
cmp dword ptr [ebp-32], 0
je .Lt_0196
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 44
jne .Lt_0198
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
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
call HSYMBOLTYPE
add esp, 32
cmp dword ptr [ebp-28], 20
je .Lt_019B
sub esp, 4
push 0
push 0
push 293
call ERRREPORT
add esp, 16
mov dword ptr [ebp-24], 0
.Lt_019B:
.Lt_019A:
.Lt_0198:
.Lt_0197:
.Lt_0196:
.Lt_0195:
cmp dword ptr [ebp-24], 0
je .Lt_019D
cmp dword ptr [ebp-32], 4
jne .Lt_019F
.Lt_01A0:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+116]
and ebx, 65536
test ebx, ebx
je .Lt_01A2
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
mov dword ptr [ebp-32], 7
.Lt_01A2:
.Lt_01A1:
jmp .Lt_019E
.Lt_019F:
cmp dword ptr [ebp-32], 7
jne .Lt_01A3
.Lt_01A4:
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+116]
and eax, 131072
test eax, eax
je .Lt_01A6
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
mov dword ptr [ebp-32], 4
.Lt_01A6:
.Lt_01A5:
jmp .Lt_019E
.Lt_01A3:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+116]
and ebx, 131072
test ebx, ebx
je .Lt_01A9
mov dword ptr [ebp-32], 4
jmp .Lt_01A8
.Lt_01A9:
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+116]
and eax, 65536
test eax, eax
je .Lt_01AA
mov dword ptr [ebp-32], 7
.Lt_01AA:
.Lt_01A8:
.Lt_01A7:
.Lt_019E:
.Lt_019D:
.Lt_019C:
.Lt_018F:
.Lt_018E:
call CFIELDALIGNMENTATTRIBUTE
mov dword ptr [ebp-36], eax
sub esp, 8
push -34
push 336
call CCOMPSTMTPUSH
add esp, 16
mov eax, dword ptr [AST+40]
mov dword ptr [ebp-40], eax
mov eax, dword ptr [AST+132]
mov dword ptr [ebp-44], eax
mov eax, dword ptr [PARSER+104]
mov dword ptr [ebp-48], eax
mov eax, dword ptr [PARSER+108]
mov dword ptr [ebp-52], eax
mov eax, dword ptr [PARSER+96]
mov dword ptr [ebp-56], eax
push dword ptr [ebp-32]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-36]
push dword ptr [ebp-4]
push dword ptr [ebp-20]
push offset Lt_01BC
push 0
call HTYPEADD
add esp, 32
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-40]
mov dword ptr [AST+40], eax
mov eax, dword ptr [ebp-44]
mov dword ptr [AST+132], eax
mov eax, dword ptr [ebp-48]
mov dword ptr [PARSER+104], eax
mov eax, dword ptr [ebp-52]
mov dword ptr [PARSER+108], eax
mov eax, dword ptr [ebp-56]
mov dword ptr [PARSER+96], eax
sub esp, 12
push dword ptr [ebp-12]
call HDISALLOWNESTEDCLASSES
add esp, 16
sub esp, 8
push -1
push 336
call CCOMPSTMTGETTOS
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_01AC
sub esp, 12
push dword ptr [ebp-16]
call CCOMPSTMTPOP
add esp, 16
.Lt_01AC:
.Lt_01AB:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .Lt_01AE
push 0
push 0
push offset Lt_01BC
push dword ptr [SYMB+98528]
call SYMBLOOKUPAT
add esp, 16
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .Lt_01B0
mov eax, dword ptr [ebp-60]
mov ebx, dword ptr [ebp-12]
cmp dword ptr [eax], ebx
je .Lt_01B2
sub esp, 12
push 0
push 1
push 0
push offset Lt_01BC
push 167
call ERRREPORTEX
add esp, 32
.Lt_01B2:
.Lt_01B1:
.Lt_01B0:
.Lt_01AF:
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+116]
and eax, 2048
test eax, eax
je .Lt_01B4
sub esp, 4
push 0
push 0
push 238
call ERRREPORT
add esp, 16
.Lt_01B4:
.Lt_01B3:
.Lt_01AE:
.Lt_01AD:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+116]
and ebx, 32
test ebx, ebx
je .Lt_01B6
sub esp, 12
push dword ptr [ebp-12]
call SYMBCOMPISTRIVIAL
add esp, 16
test eax, eax
jne .Lt_01B8
sub esp, 12
push dword ptr [ebp-12]
call HPATCHBYVALPARAMSTOSELF
add esp, 16
.Lt_01B8:
.Lt_01B7:
.Lt_01B6:
.Lt_01B5:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+116]
and ebx, 64
test ebx, ebx
je .Lt_01BA
sub esp, 12
push dword ptr [ebp-12]
call HPATCHBYVALRESULTTOSELF
add esp, 16
.Lt_01BA:
.Lt_01B9:
.Lt_0173:
pop ebx
mov esp, ebp
pop ebp
ret
.size CTYPEDECL, .-CTYPEDECL

.section .bss
.balign 4
	.lcomm	Lt_01BC,129

.section .text
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
HBEGINNESTING:
.type HBEGINNESTING, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0067:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
jne .Lt_006A
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+12], 262144
sub esp, 8
push 0
push dword ptr [ebp+8]
call SYMBNESTBEGIN
add esp, 16
.Lt_006A:
.Lt_0069:
.Lt_0068:
pop ebx
mov esp, ebp
pop ebp
ret
.size HBEGINNESTING, .-HBEGINNESTING
.balign 16
HTYPEPROTODECL:
.type HTYPEPROTODECL, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_006B:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
je .Lt_006E
sub esp, 4
push 0
push 0
push 154
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_006C
.Lt_006E:
.Lt_006D:
mov ebx, dword ptr [ENV+888]
and ebx, 64
test ebx, ebx
jne .Lt_0070
sub esp, 4
push 0
push 146
push 64
call ERRREPORTNOTALLOWED
add esp, 16
.Lt_0070:
.Lt_006F:
sub esp, 12
push dword ptr [ebp+8]
call HBEGINNESTING
add esp, 16
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 4
lea ebx, [ebp-12]
push ebx
lea ebx, [ebp+12]
push ebx
push dword ptr [ebp+8]
call CMETHODATTRIBUTES
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 347
jne .Lt_0072
.Lt_0073:
sub esp, 8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call HDISALLOWSTATICATTRIB
add esp, 16
sub esp, 8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call HDISALLOWVIRTUALCTOR
add esp, 16
sub esp, 4
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
push dword ptr [ebp-8]
call HDISALLOWCONSTCTORDTOR
add esp, 16
jmp .Lt_0071
.Lt_0072:
cmp dword ptr [ebp-8], 348
jne .Lt_0074
.Lt_0075:
sub esp, 8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call HDISALLOWSTATICATTRIB
add esp, 16
sub esp, 8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call HDISALLOWABSTRACTDTOR
add esp, 16
sub esp, 4
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
push dword ptr [ebp-8]
call HDISALLOWCONSTCTORDTOR
add esp, 16
jmp .Lt_0071
.Lt_0074:
cmp dword ptr [ebp-8], 350
jne .Lt_0076
.Lt_0077:
sub esp, 8
lea eax, [ebp-12]
push eax
lea eax, [ebp+12]
push eax
call HDISALLOWSTATICATTRIB
add esp, 16
.Lt_0076:
.Lt_0071:
cmp dword ptr [ebp-8], 345
je .Lt_007A
.Lt_007B:
cmp dword ptr [ebp-8], 346
je .Lt_007A
.Lt_007C:
cmp dword ptr [ebp-8], 347
je .Lt_007A
.Lt_007D:
cmp dword ptr [ebp-8], 348
je .Lt_007A
.Lt_007E:
cmp dword ptr [ebp-8], 349
je .Lt_007A
.Lt_007F:
cmp dword ptr [ebp-8], 350
jne .Lt_0079
.Lt_007A:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
push 3
lea eax, [ebp-4]
push eax
push dword ptr [ebp-12]
push dword ptr [ebp+12]
call CPROCHEADER
add esp, 32
jmp .Lt_0078
.Lt_0079:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
.Lt_0080:
.Lt_0078:
.Lt_006C:
pop ebx
mov esp, ebp
pop ebp
ret
.size HTYPEPROTODECL, .-HTYPEPROTODECL
.balign 16
HTYPEENUMDECL:
.type HTYPEENUMDECL, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0081:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 2
test ebx, ebx
je .Lt_0084
sub esp, 4
push 0
push 0
push 155
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0082
.Lt_0084:
.Lt_0083:
sub esp, 12
push dword ptr [ebp+8]
call HBEGINNESTING
add esp, 16
cmp dword ptr [ebp+12], 335
jne .Lt_0086
sub esp, 12
push dword ptr [ebp+16]
call CCONSTDECL
add esp, 16
jmp .Lt_0085
.Lt_0086:
sub esp, 12
push dword ptr [ebp+16]
call CENUMDECL
add esp, 16
.Lt_0085:
.Lt_0082:
pop ebx
mov esp, ebp
pop ebp
ret
.size HTYPEENUMDECL, .-HTYPEENUMDECL
.balign 16
HSETFIELDINITREE:
.type HSETFIELDINITREE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0087:
cmp dword ptr [ebp+12], 0
je .Lt_008A
sub esp, 8
push 12288
push dword ptr [ebp+12]
call ASTTYPEINIUSESLOCALS
add esp, 16
test eax, eax
je .Lt_008C
sub esp, 4
push 0
push -1
push 272
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp+12]
call ASTDELTREE
add esp, 16
mov dword ptr [ebp+12], 0
.Lt_008C:
.Lt_008B:
.Lt_008A:
.Lt_0089:
sub esp, 12
push dword ptr [ebp+12]
call ASTFORGETBITFIELDS
add esp, 16
cmp dword ptr [ebp+12], 0
je .Lt_008E
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
.Lt_008E:
.Lt_008D:
.Lt_0088:
pop ebx
mov esp, ebp
pop ebp
ret
.size HSETFIELDINITREE, .-HSETFIELDINITREE
.balign 16
HFIELDINIT:
.type HFIELDINIT, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_008F:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HISASSIGNTOKEN
add esp, 16
test eax, eax
jne .Lt_0092
cmp dword ptr [ebp+12], 0
je .Lt_0094
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 20
jne .Lt_0096
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+32]
mov dword ptr [ebp-8], eax
sub esp, 12
push dword ptr [ebp-8]
call SYMBGETCOMPCTORHEAD
add esp, 16
test eax, eax
je .Lt_0098
sub esp, 12
push dword ptr [ebp-8]
call SYMBGETCOMPDEFCTOR
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_009A
sub esp, 12
push dword ptr [ebp-4]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_009C
sub esp, 4
push 0
push 0
push 204
call ERRREPORT
add esp, 16
.Lt_009C:
.Lt_009B:
jmp .Lt_0099
.Lt_009A:
sub esp, 4
push 0
push 0
push 183
call ERRREPORT
add esp, 16
.Lt_0099:
.Lt_0098:
.Lt_0097:
sub esp, 12
push dword ptr [ebp-8]
call SYMBGETCOMPDTOR
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_009E
sub esp, 12
push dword ptr [ebp-4]
call SYMBCHECKACCESS
add esp, 16
test eax, eax
jne .Lt_00A0
sub esp, 4
push 0
push 0
push 206
call ERRREPORT
add esp, 16
.Lt_00A0:
.Lt_009F:
.Lt_009E:
.Lt_009D:
.Lt_0096:
.Lt_0095:
.Lt_0094:
.Lt_0093:
cmp dword ptr [ebp+16], 0
je .Lt_00A2
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 4096
sub esp, 12
push dword ptr [ebp+8]
call HBEGINNESTING
add esp, 16
sub esp, 8
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call HSETFIELDINITREE
add esp, 16
.Lt_00A2:
.Lt_00A1:
jmp .Lt_0090
.Lt_0092:
.Lt_0091:
mov eax, dword ptr [ENV+888]
and eax, 128
test eax, eax
jne .Lt_00A4
sub esp, 4
push 0
push 146
push 128
call ERRREPORTNOTALLOWED
add esp, 16
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .Lt_0090
.Lt_00A4:
.Lt_00A3:
cmp dword ptr [ebp+12], 0
je .Lt_00A6
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 3
test ebx, ebx
je .Lt_00A8
sub esp, 4
push 0
push 0
push 163
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push 257
call HSKIPUNTIL
add esp, 16
jmp .Lt_0090
.Lt_00A8:
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
cmp dword ptr [ebp+12], 0
jne .Lt_00AA
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0090
.Lt_00AA:
.Lt_00A9:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+116], 4096
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 372
jne .Lt_00AC
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 17
jne .Lt_00AE
sub esp, 4
push 0
push 0
push 24
call ERRREPORT
add esp, 16
jmp .Lt_00AD
.Lt_00AE:
mov ebx, dword ptr [ebp+12]
or dword ptr [ebx+12], 2048
.Lt_00AD:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0090
.Lt_00AC:
.Lt_00AB:
sub esp, 12
push dword ptr [ebp+8]
call HBEGINNESTING
add esp, 16
sub esp, 8
sub esp, 8
push 0
push -2147483648
push 1
push dword ptr [ebp+12]
call CINITIALIZER
add esp, 24
push eax
push dword ptr [ebp+12]
call HSETFIELDINITREE
add esp, 16
.Lt_0090:
pop ebx
mov esp, ebp
pop ebp
ret
.size HFIELDINIT, .-HFIELDINIT
.balign 16
HFIELDTYPE:
.type HFIELDTYPE, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00AF:
sub esp, 12
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HSYMBOLTYPE
add esp, 32
sub esp, 8
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call HCOMPLAINIFABSTRACTCLASS
add esp, 16
.Lt_00B0:
mov esp, ebp
pop ebp
ret
.size HFIELDTYPE, .-HFIELDTYPE
.balign 16
HARRAYORBITFIELD:
.type HARRAYORBITFIELD, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_00B1:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+28]
mov dword ptr [eax], 0
sub esp, 8
push 0
push 40
call HMATCH
add esp, 16
test eax, eax
je .Lt_00B5
sub esp, 12
push 0
push 0
push 0
push 0
push 8
call ASTTYPEINIBEGIN
add esp, 32
mov ebx, dword ptr [ebp+28]
mov dword ptr [ebx], eax
sub esp, 4
push offset Lt_01D4
lea eax, [ebp-4]
push eax
push dword ptr [ebp+20]
call CARRAYDECL
add esp, 16
cmp dword ptr [ebp-4], 0
je .Lt_00B7
sub esp, 4
push 77
push offset Lt_01D4
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
call HCOMPLAINABOUTELLIPSIS
add esp, 16
push dword ptr [ebp+24]
push offset Lt_01D4
mov eax, dword ptr [ebp+20]
push dword ptr [eax]
push dword ptr [ebp+12]
call HMAYBECONVERTEXPRTB2DIMTB
add esp, 16
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
and ebx, 4
je .Lt_00B9
mov dword ptr [ebp-8], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
dec eax
mov dword ptr [ebp-12], eax
jmp .Lt_00BB
.Lt_00BE:
sub esp, 12
push 0
push 8
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [Lt_01D5+eax*8]
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call ASTTYPEINIADDASSIGN
add esp, 32
sub esp, 12
push 0
push 8
push 0
mov eax, dword ptr [ebp-8]
push dword ptr [Lt_01D5+eax*8+4]
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call ASTTYPEINIADDASSIGN
add esp, 32
.Lt_00BC:
inc dword ptr [ebp-8]
.Lt_00BB:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-8], eax
jle .Lt_00BE
.Lt_00BD:
.Lt_00B9:
.Lt_00B8:
jmp .Lt_00B6
.Lt_00B7:
mov eax, dword ptr [ebp+12]
or dword ptr [eax], 4
.Lt_00B6:
sub esp, 8
push -1
mov eax, dword ptr [ebp+28]
push dword ptr [eax]
call ASTTYPEINIEND
add esp, 16
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
je .Lt_00C0
sub esp, 12
mov ecx, dword ptr [ebp+28]
push dword ptr [ecx]
call ASTDELTREE
add esp, 16
mov ecx, dword ptr [ebp+28]
mov dword ptr [ecx], 0
.Lt_00C0:
.Lt_00BF:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 41
je .Lt_00C2
sub esp, 4
push 0
push 0
push 7
call ERRREPORT
add esp, 16
jmp .Lt_00C1
.Lt_00C2:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
.Lt_00C1:
jmp .Lt_00B4
.Lt_00B5:
cmp dword ptr [ebp+8], 310
jne .Lt_00C4
sub esp, 4
push 0
push 0
push 63
call ERRREPORT
add esp, 16
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], -1
.Lt_00C4:
.Lt_00C3:
.Lt_00B4:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 258
jne .Lt_00C6
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEADCLASS
add esp, 16
cmp eax, 3
jne .Lt_00C8
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
sub esp, 4
call LEXGETTEXT
add esp, 4
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_VALINT
add esp, 16
mov ecx, dword ptr [ebp+16]
mov dword ptr [ecx], eax
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
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
je .Lt_00CA
sub esp, 4
push 0
push -1
push 17
call ERRREPORT
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 0
.Lt_00CA:
.Lt_00C9:
.Lt_00C8:
.Lt_00C7:
.Lt_00C6:
.Lt_00C5:
.Lt_00B2:
pop ebx
mov esp, ebp
pop ebp
ret
.size HARRAYORBITFIELD, .-HARRAYORBITFIELD

.section .bss
.balign 4
	.lcomm	Lt_01D5,64

.section .data
.balign 4
Lt_01D4:
.int Lt_01D5
.int Lt_01D5
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
HADDANDINITFIELD:
.type HADDANDINITFIELD, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00CB:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+16], 0
jle .Lt_00CE
sub esp, 12
push 0
push dword ptr [ebp+40]
push dword ptr [ebp+36]
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
lea eax, [ebx]
push eax
push dword ptr [ebp+16]
call SYMBCHECKARRAYSIZE
add esp, 32
test eax, eax
jne .Lt_00D0
sub esp, 4
push 0
push 0
push 50
call ERRREPORT
add esp, 16
mov dword ptr [ebp+16], 1
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
mov dword ptr [ebx], 0
mov dword ptr [ebx+4], 0
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx]
mov dword ptr [eax+8], 0
mov dword ptr [eax+12], 0
.Lt_00D0:
.Lt_00CF:
.Lt_00CE:
.Lt_00CD:
cmp dword ptr [ebp+44], 0
jle .Lt_00D2
sub esp, 12
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+28]
push dword ptr [ebp+8]
call SYMBCHECKBITFIELD
add esp, 32
test eax, eax
jne .Lt_00D4
sub esp, 4
push 0
push -1
push 78
call ERRREPORT
add esp, 16
mov dword ptr [ebp+44], 0
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
.Lt_00D1:
cmp dword ptr [ebp+28], 20
jne .Lt_00D6
mov eax, dword ptr [ebp+8]
cmp dword ptr [ebp+32], eax
jne .Lt_00D8
sub esp, 4
push 0
push 0
push 88
call ERRREPORT
add esp, 16
mov dword ptr [ebp+28], 8
mov dword ptr [ebp+32], 0
mov dword ptr [ebp+36], 0
mov dword ptr [ebp+40], 0
.Lt_00D8:
.Lt_00D7:
.Lt_00D6:
.Lt_00D5:
sub esp, 8
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
call SYMBADDFIELD
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00DA
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 32
jmp .Lt_00CC
.Lt_00DA:
.Lt_00D9:
mov eax, dword ptr [ebp+48]
and eax, 4
je .Lt_00DC
sub esp, 12
push dword ptr [ebp-8]
call HCOMPLAINABOUTCONSTDYNAMICARRAY
add esp, 16
.Lt_00DC:
.Lt_00DB:
sub esp, 4
push dword ptr [ebp+24]
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HFIELDINIT
add esp, 16
mov dword ptr [ebp-4], -1
.Lt_00CC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HADDANDINITFIELD, .-HADDANDINITFIELD
.balign 16
HFIELDID:
.type HFIELDID, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DD:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_00E2
.Lt_00E3:
cmp dword ptr [ebp-8], 1
je .Lt_00E2
.Lt_00E4:
cmp dword ptr [ebp-8], 2
jne .Lt_00E1
.Lt_00E2:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [eax+16548]
cmp dword ptr [ebx+8], -2147483648
je .Lt_00E6
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.Lt_00E6:
.Lt_00E5:
mov ebx, dword ptr [LEX+839936]
mov eax, dword ptr [ebx+16548]
cmp dword ptr [eax+4120], 0
jle .Lt_00E8
sub esp, 4
push 0
push 0
push 90
call ERRREPORT
add esp, 16
.Lt_00E8:
.Lt_00E7:
sub esp, 12
push 0
call LEXGETCLASS
add esp, 16
cmp eax, 1
jne .Lt_00EA
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
je .Lt_00EC
sub esp, 4
push 0
push 0
push 238
call ERRREPORT
add esp, 16
jmp .Lt_00EB
.Lt_00EC:
mov ebx, dword ptr [ebp+8]
or dword ptr [ebx+116], 2048
.Lt_00EB:
.Lt_00EA:
.Lt_00E9:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 129
push offset Lt_01D9
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_00DF
.Lt_00E1:
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
push offset Lt_01D9
call fb_StrAssign
add esp, 32
.Lt_00ED:
.Lt_00DF:
mov eax, offset Lt_01D9
mov dword ptr [ebp-4], eax
.Lt_00DE:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HFIELDID, .-HFIELDID

.section .bss
.balign 4
	.lcomm	Lt_01D9,129

.section .text
.balign 16
HTYPEMULTELEMENTDECL:
.type HTYPEMULTELEMENTDECL, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_00EE:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 4
lea eax, [ebp-32]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-12]
push eax
call HFIELDTYPE
add esp, 16
.Lt_00F1:
mov eax, dword ptr [ebp+16]
mov dword ptr [ebp-24], eax
sub esp, 12
push dword ptr [ebp+12]
call HFIELDID
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
lea eax, [ebp-36]
push eax
push offset Lt_01DA
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+8]
call HARRAYORBITFIELD
add esp, 32
sub esp, 4
push dword ptr [ebp-24]
push dword ptr [ebp-16]
push dword ptr [ebp-28]
push dword ptr [ebp-32]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-36]
push offset Lt_01DA
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call HADDANDINITFIELD
add esp, 48
.Lt_00F3:
sub esp, 8
push 0
push 44
call HMATCH
add esp, 16
test eax, eax
jne .Lt_00F1
.Lt_00F2:
.Lt_00EF:
mov esp, ebp
pop ebp
ret
.size HTYPEMULTELEMENTDECL, .-HTYPEMULTELEMENTDECL

.section .bss
.balign 4
	.lcomm	Lt_01DB,128

.section .data
.balign 4
Lt_01DA:
.int Lt_01DB
.int Lt_01DB
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16
HTYPEELEMENTDECL:
.type HTYPEELEMENTDECL, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_00F4:
sub esp, 12
push dword ptr [ebp+12]
call HFIELDID
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 8
lea eax, [ebp-32]
push eax
push offset Lt_01DC
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
lea eax, [ebp+16]
push eax
push dword ptr [ebp+8]
call HARRAYORBITFIELD
add esp, 32
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
je .Lt_00F8
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
jmp .Lt_00F7
.Lt_00F8:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.Lt_00F7:
sub esp, 4
lea eax, [ebp-28]
push eax
lea eax, [ebp-8]
push eax
lea eax, [ebp-12]
push eax
call HFIELDTYPE
add esp, 16
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp-16]
push dword ptr [ebp-24]
push dword ptr [ebp-28]
push dword ptr [ebp-8]
push dword ptr [ebp-12]
push dword ptr [ebp-32]
push offset Lt_01DC
push dword ptr [ebp-20]
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call HADDANDINITFIELD
add esp, 48
.Lt_00F5:
mov esp, ebp
pop ebp
ret
.size HTYPEELEMENTDECL, .-HTYPEELEMENTDECL

.section .bss
.balign 4
	.lcomm	Lt_01DD,128

.section .data
.balign 4
Lt_01DC:
.int Lt_01DD
.int Lt_01DD
.int 128
.int 16
.int 1
.int 49
.int 8
.int 0
.int 7

.section .text
.balign 16
HFIELDDECLWITHEXPLICITDIM:
.type HFIELDDECLWITHEXPLICITDIM, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00F9:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 376
jne .Lt_00FC
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HTYPEMULTELEMENTDECL
add esp, 16
jmp .Lt_00FB
.Lt_00FC:
sub esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HTYPEELEMENTDECL
add esp, 16
.Lt_00FB:
.Lt_00FA:
mov esp, ebp
pop ebp
ret
.size HFIELDDECLWITHEXPLICITDIM, .-HFIELDDECLWITHEXPLICITDIM
.balign 16
HTYPEADD:
.type HTYPEADD, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0101:
sub esp, 8
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
call SYMBSTRUCTBEGIN
add esp, 48
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0104
sub esp, 12
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call ERRREPORTEX
add esp, 32
sub esp, 8
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
call SYMBUNIQUELABEL
push eax
push dword ptr [ebp+8]
push 0
push 0
call SYMBSTRUCTBEGIN
add esp, 48
mov dword ptr [ebp-8], eax
.Lt_0104:
.Lt_0103:
cmp dword ptr [ebp+36], 4
jne .Lt_0106
.Lt_0107:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+116], 131072
jmp .Lt_0105
.Lt_0106:
cmp dword ptr [ebp+36], 7
jne .Lt_0108
.Lt_0109:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+116], 65536
.Lt_0108:
.Lt_0105:
cmp dword ptr [ebp+32], 0
je .Lt_010B
sub esp, 8
push dword ptr [ebp+32]
push dword ptr [ebp-8]
call SYMBSTRUCTADDBASE
add esp, 16
.Lt_010B:
.Lt_010A:
sub esp, 12
push 0
call CCOMMENT
add esp, 16
cmp dword ptr [ENV+148], 0
je .Lt_010D
cmp dword ptr [ENV+876], 0
jne .Lt_010F
sub esp, 12
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+49392]
call ASTNEWLIT
add esp, 4
push eax
call ASTADD
add esp, 16
sub esp, 12
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+49392]
push ebx
call DZSTRRESET
add esp, 16
.Lt_010F:
.Lt_010E:
.Lt_010D:
.Lt_010C:
sub esp, 12
push 0
call CSTMTSEPARATOR
add esp, 16
test eax, eax
jne .Lt_0111
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push -1
call HSKIPUNTIL
add esp, 16
.Lt_0111:
.Lt_0110:
sub esp, 12
push dword ptr [ebp-8]
call HTYPEBODY
add esp, 16
sub esp, 8
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+12]
and ebx, 262144
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
push ebx
push dword ptr [ebp-8]
call SYMBSTRUCTEND
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 340
je .Lt_0113
sub esp, 4
push 0
push 0
push 19
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0112
.Lt_0113:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp+20], 0
je .Lt_0114
mov dword ptr [ebp-12], 337
jmp .Lt_01DE
.Lt_0114:
mov dword ptr [ebp-12], 336
.Lt_01DE:
mov eax, dword ptr [ebp-12]
cmp dword ptr [ebp-16], eax
je .Lt_0117
sub esp, 4
push 0
push 0
push 19
call ERRREPORT
add esp, 16
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_0116
.Lt_0117:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
.Lt_0116:
.Lt_0112:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0102:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HTYPEADD, .-HTYPEADD
.balign 16
CFIELDALIGNMENTATTRIBUTE:
.type CFIELDALIGNMENTATTRIBUTE, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0118:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 491
je .Lt_011B
mov dword ptr [ebp-4], 0
jmp .Lt_0119
.Lt_011B:
.Lt_011A:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CASSIGNTOKEN
test eax, eax
jne .Lt_011D
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.Lt_011D:
.Lt_011C:
call CEXPRESSION
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_011F
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
mov dword ptr [ebp-8], eax
.Lt_011F:
.Lt_011E:
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax], 16
je .Lt_0121
sub esp, 4
push 0
push 0
push 11
call ERRREPORT
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call ASTDELTREE
add esp, 16
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0121:
.Lt_0120:
sub esp, 8
push 8
push dword ptr [ebp-8]
call ASTCONSTFLUSHTOINT
add esp, 16
mov dword ptr [ebp-16], eax
mov dword ptr [ebp-12], edx
cmp dword ptr [ebp-12], 0
jg .Lt_0123
jl .Lt_01E3
cmp dword ptr [ebp-16], 0
jae .Lt_0123
.Lt_01E3:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
jmp .Lt_0122
.Lt_0123:
mov edx, dword ptr [ENV+272]
mov eax, edx
sar eax, 31
cmp dword ptr [ebp-12], eax
jl .Lt_0124
jg .Lt_01E4
cmp dword ptr [ebp-16], edx
jbe .Lt_0124
.Lt_01E4:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
jmp .Lt_0122
.Lt_0124:
cmp dword ptr [ebp-12], 0
jne .Lt_0125
cmp dword ptr [ebp-16], 3
jne .Lt_0125
.Lt_01E5:
mov dword ptr [ebp-16], 2
mov dword ptr [ebp-12], 0
.Lt_0125:
.Lt_0122:
mov edx, dword ptr [ebp-16]
mov dword ptr [ebp-4], edx
.Lt_0119:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CFIELDALIGNMENTATTRIBUTE, .-CFIELDALIGNMENTATTRIBUTE
.balign 16
HTYPEBODY:
.type HTYPEBODY, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_0126:
mov dword ptr [ebp-8], 0
.Lt_0128:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-16], eax
jmp .Lt_012C
.Lt_012E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+116]
and ebx, 1
test ebx, ebx
je .Lt_0130
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
.Lt_0130:
.Lt_012F:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 378
jne .Lt_0133
.Lt_0134:
mov dword ptr [ebp-8], 0
jmp .Lt_0131
.Lt_0133:
cmp dword ptr [ebp-20], 379
jne .Lt_0135
.Lt_0136:
mov dword ptr [ebp-8], 2097152
jmp .Lt_0131
.Lt_0135:
cmp dword ptr [ebp-20], 380
jne .Lt_0137
.Lt_0138:
mov dword ptr [ebp-8], 4194304
.Lt_0137:
.Lt_0131:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 258
je .Lt_013A
sub esp, 4
push 0
push 0
push 203
call ERRREPORT
add esp, 16
.Lt_013A:
.Lt_0139:
jmp .Lt_012B
.Lt_013B:
sub esp, 12
push 0
call CCOMMENT
add esp, 16
jmp .Lt_012B
.Lt_013C:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_012A
jmp .Lt_012B
.Lt_013D:
jmp .Lt_0129
jmp .Lt_012B
.Lt_013E:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 376
je .Lt_0142
.Lt_0143:
cmp dword ptr [ebp-20], 40
je .Lt_0142
.Lt_0144:
cmp dword ptr [ebp-20], 258
jne .Lt_0141
.Lt_0142:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call HTYPEELEMENTDECL
add esp, 16
jmp .Lt_013F
.Lt_0141:
jmp .Lt_0129
.Lt_0145:
.Lt_013F:
jmp .Lt_012B
.Lt_0146:
sub esp, 8
push 0
push 1
call LEXGETLOOKAHEAD
add esp, 16
mov dword ptr [ebp-20], eax
jmp .Lt_0148
.Lt_014A:
.Lt_014B:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
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
jne .Lt_014D
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
not dword ptr [ebp-4]
.Lt_014D:
.Lt_014C:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
call CFIELDALIGNMENTATTRIBUTE
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_014F
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+121]
mov dword ptr [ebp-24], ebx
.Lt_014F:
.Lt_014E:
push 0
push 0
push 0
push dword ptr [ebp-24]
push dword ptr [ebp-4]
push 0
sub esp, 4
push 0
call SYMBUNIQUEID
add esp, 8
push eax
push dword ptr [ebp+8]
call HTYPEADD
add esp, 32
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-4], 0
je .Lt_0151
mov eax, dword ptr [ebp-12]
or dword ptr [eax+116], 1
mov eax, dword ptr [ebp+8]
or dword ptr [eax+116], 8192
.Lt_0151:
.Lt_0150:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-28], ebx
.Lt_0152:
cmp dword ptr [ebp-28], 0
je .Lt_0153
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-8]
or dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-28], ebx
jmp .Lt_0152
.Lt_0153:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp+8]
call SYMBINSERTINNERUDT
add esp, 16
jmp .Lt_0147
.Lt_0154:
sub esp, 8
push 0
push 2
call LEXGETLOOKAHEADCLASS
add esp, 16
cmp eax, 3
je .Lt_0156
jmp .Lt_014B
.Lt_0156:
.Lt_0155:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call HTYPEELEMENTDECL
add esp, 16
jmp .Lt_0147
.Lt_0157:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call HTYPEELEMENTDECL
add esp, 16
jmp .Lt_0147
.Lt_0148:
mov eax, dword ptr [ebp-20]
add eax, 4294967040
cmp eax, 235
ja .Lt_0157
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_0158+eax*4-1024]
.LT_0158:
.int .Lt_014A
.int .Lt_014A
.int .Lt_0154
.int .Lt_014A
.int .Lt_014A
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_0157
.int .Lt_014A
.Lt_0147:
jmp .Lt_012B
.Lt_0159:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call HTYPEMULTELEMENTDECL
add esp, 16
jmp .Lt_012B
.Lt_015A:
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HTYPEPROTODECL
add esp, 16
jmp .Lt_012B
.Lt_015B:
sub esp, 4
push dword ptr [ebp-8]
sub esp, 4
push 0
call LEXGETTOKEN
add esp, 8
push eax
push dword ptr [ebp+8]
call HTYPEENUMDECL
add esp, 16
jmp .Lt_012B
.Lt_015C:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call HFIELDDECLWITHEXPLICITDIM
add esp, 16
jmp .Lt_012B
.Lt_015D:
sub esp, 4
mov eax, dword ptr [ebp-8]
or eax, 4
push eax
push dword ptr [ebp+8]
push 310
call HFIELDDECLWITHEXPLICITDIM
add esp, 16
jmp .Lt_012B
.Lt_015E:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp+8]
call HTYPESTATICVARDECL
add esp, 16
jmp .Lt_012B
.Lt_015F:
sub esp, 4
push dword ptr [ebp-8]
push dword ptr [ebp+8]
push 308
call HTYPEELEMENTDECL
add esp, 16
jmp .Lt_012B
.Lt_012C:
mov eax, dword ptr [ebp-16]
add eax, 4294967040
cmp eax, 124
ja .Lt_015F
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_0160+eax*4-1024]
.LT_0160:
.int .Lt_013D
.int .Lt_013C
.int .Lt_015F
.int .Lt_013B
.int .Lt_013B
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015E
.int .Lt_015C
.int .Lt_015F
.int .Lt_015D
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015A
.int .Lt_015B
.int .Lt_0146
.int .Lt_0146
.int .Lt_015B
.int .Lt_015F
.int .Lt_013E
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_015F
.int .Lt_0159
.int .Lt_015F
.int .Lt_012E
.int .Lt_012E
.int .Lt_012E
.Lt_012B:
sub esp, 12
push 0
call CCOMMENT
add esp, 16
cmp dword ptr [ENV+148], 0
je .Lt_0162
cmp dword ptr [ENV+876], 0
jne .Lt_0164
sub esp, 12
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+49392]
call ASTNEWLIT
add esp, 4
push eax
call ASTADD
add esp, 16
sub esp, 12
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+49392]
push ebx
call DZSTRRESET
add esp, 16
.Lt_0164:
.Lt_0163:
.Lt_0162:
.Lt_0161:
sub esp, 12
push 0
call CSTMTSEPARATOR
add esp, 16
test eax, eax
jne .Lt_0166
sub esp, 4
push 0
push 0
push 3
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push -1
call HSKIPUNTIL
add esp, 16
.Lt_0166:
.Lt_0165:
.Lt_012A:
jmp .Lt_0128
.Lt_0129:
sub esp, 12
push dword ptr [ebp+8]
call SYMBUDTGETFIRSTFIELD
add esp, 16
test eax, eax
jne .Lt_0168
sub esp, 4
push 0
push 0
push 256
call ERRREPORT
add esp, 16
.Lt_0168:
.Lt_0167:
.Lt_0127:
pop ebx
mov esp, ebp
pop ebp
ret
.size HTYPEBODY, .-HTYPEBODY
.balign 16
HDISALLOWNESTEDCLASSES:
.type HDISALLOWNESTEDCLASSES, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0169:
cmp dword ptr [PARSER+96], 0
jbe .Lt_016C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_016D:
cmp dword ptr [ebp-4], 0
je .Lt_016E
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 3
jne .Lt_0170
sub esp, 12
push 0
push 1
push 0
mov ebx, dword ptr [ebp-4]
push dword ptr [ebx+16]
push 263
call ERRREPORTEX
add esp, 32
jmp .Lt_016F
.Lt_0170:
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
je .Lt_0171
sub esp, 12
push 0
push 1
push 0
mov ecx, dword ptr [ebp-4]
push dword ptr [ecx+16]
push 264
call ERRREPORTEX
add esp, 32
.Lt_0171:
.Lt_016F:
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-4], eax
jmp .Lt_016D
.Lt_016E:
.Lt_016C:
.Lt_016B:
.Lt_016A:
pop ebx
mov esp, ebp
pop ebp
ret
.size HDISALLOWNESTEDCLASSES, .-HDISALLOWNESTEDCLASSES
.balign 16
HPATCHBYVALPARAMSTOSELF:
.type HPATCHBYVALPARAMSTOSELF, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_01BF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_01C1:
cmp dword ptr [ebp-4], 0
je .Lt_01C2
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx], 3
jne .Lt_01C4
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+76]
mov dword ptr [ebp-8], eax
.Lt_01C5:
cmp dword ptr [ebp-8], 0
je .Lt_01C6
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
je .Lt_01C8
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+56], 1
jne .Lt_01CA
sub esp, 12
push dword ptr [ebp-8]
call SYMBRECALCLEN
add esp, 16
.Lt_01CA:
.Lt_01C9:
.Lt_01C8:
.Lt_01C7:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+172]
mov dword ptr [ebp-8], ebx
jmp .Lt_01C5
.Lt_01C6:
.Lt_01C4:
.Lt_01C3:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+172]
mov dword ptr [ebp-4], eax
jmp .Lt_01C1
.Lt_01C2:
.Lt_01C0:
pop ebx
mov esp, ebp
pop ebp
ret
.size HPATCHBYVALPARAMSTOSELF, .-HPATCHBYVALPARAMSTOSELF
.balign 16
HPATCHBYVALRESULTTOSELF:
.type HPATCHBYVALRESULTTOSELF, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01CB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+60]
mov dword ptr [ebp-4], ebx
.Lt_01CD:
cmp dword ptr [ebp-4], 0
je .Lt_01CE
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
je .Lt_01D0
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx], 3
jne .Lt_01D2
sub esp, 12
push dword ptr [ebp-4]
call SYMBPROCRECALCREALTYPE
add esp, 16
jmp .Lt_01D1
.Lt_01D2:
mov ecx, dword ptr [ebp-4]
cmp dword ptr [ecx], 1
jne .Lt_01D3
sub esp, 12
push dword ptr [ebp-4]
call SYMBRECALCLEN
add esp, 16
.Lt_01D3:
.Lt_01D1:
.Lt_01D0:
.Lt_01CF:
mov ecx, dword ptr [ebp-4]
mov eax, dword ptr [ecx+172]
mov dword ptr [ebp-4], eax
jmp .Lt_01CD
.Lt_01CE:
.Lt_01CC:
pop ebx
mov esp, ebp
pop ebp
ret
.size HPATCHBYVALRESULTTOSELF, .-HPATCHBYVALRESULTTOSELF

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
