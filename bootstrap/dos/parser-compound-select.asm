	.intel_syntax noprefix

.section .text
.balign 16

.globl _PARSERSELECTSTMTINIT
_PARSERSELECTSTMTINIT:
.Lt_0069:
mov dword ptr [_CTX], 0
.Lt_006A:
ret
.balign 16

.globl _PARSERSELECTSTMTEND
_PARSERSELECTSTMTEND:
.Lt_006B:
.Lt_006C:
ret
.balign 16

.globl _CSELECTSTMTBEGIN
_CSELECTSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.Lt_006D:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
push 271
call _HMATCH
add esp, 8
test eax, eax
jne .Lt_0070
push 0
push 0
push 34
call _ERRREPORT
add esp, 12
.Lt_0070:
.Lt_006F:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .Lt_0072
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
push 335
call _HMATCH
add esp, 8
test eax, eax
je .Lt_0074
call _CSELCONSTSTMTBEGIN
jmp .Lt_006E
.Lt_0074:
.Lt_0073:
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
.Lt_0072:
.Lt_0071:
call _ASTSCOPEBEGIN
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_0076
push 0
push 0
push 27
call _ERRREPORT
add esp, 12
.Lt_0076:
.Lt_0075:
call _CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0078
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
mov dword ptr [ebp-4], eax
.Lt_0078:
.Lt_0077:
lea eax, [ebp-4]
push eax
call _ASTTRYOVLSTRINGCONV
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .Lt_007A
push 0
push 0
push 24
call _ERRREPORT
add esp, 12
push dword ptr [ebp-4]
call _ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call _ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_007A:
.Lt_0079:
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-20], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-24], eax
push dword ptr [ebp-4]
call _ASTGETEFFECTIVENODE
add esp, 4
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax], 17
jne .Lt_007C
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-4]
call _ASTREBUILDWITHOUTEFFECTIVEPART
add esp, 4
push eax
call _ASTADD
add esp, 4
jmp .Lt_007B
.Lt_007C:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_007D
mov dword ptr [ebp-44], 24
jmp .Lt_0092
.Lt_007D:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_0092:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 18
je .Lt_0082
.Lt_0083:
cmp dword ptr [ebp-48], 4
jne .Lt_0081
.Lt_0082:
mov dword ptr [ebp-8], 17
.Lt_0081:
.Lt_007F:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [_ENV+888]
and eax, 2
test eax, eax
jne .Lt_0085
or dword ptr [ebp-12], 2
.Lt_0085:
.Lt_0084:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_0086
mov dword ptr [ebp-40], 24
jmp .Lt_0093
.Lt_0086:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_0093:
cmp dword ptr [ebp-40], 7
je .Lt_0089
push dword ptr [ebp-12]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call _SYMBADDIMPLICITVAR
add esp, 12
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_008A
mov dword ptr [ebp-44], 24
jmp .Lt_0094
.Lt_008A:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_0094:
cmp dword ptr [ebp-44], 17
je .Lt_008D
mov eax, dword ptr [ebp-16]
or dword ptr [eax+12], 2048
.Lt_008D:
.Lt_008C:
mov eax, dword ptr [ebp-12]
and eax, 2
je .Lt_008F
push -1
push dword ptr [ebp-16]
call _ASTNEWDECL
add esp, 8
push eax
call _ASTADDUNSCOPED
add esp, 4
push 0
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
call _ASTADD
add esp, 4
jmp .Lt_008E
.Lt_008F:
push 0
push 64
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call _ASTNEWVAR
add esp, 20
push eax
call _ASTNEWASSIGN
add esp, 12
push eax
push 0
push dword ptr [ebp-16]
call _ASTNEWDECL
add esp, 8
push eax
call _ASTNEWLINK
add esp, 12
push eax
call _ASTADD
add esp, 4
.Lt_008E:
jmp .Lt_0088
.Lt_0089:
push dword ptr [ebp-12]
push 0
push 39
call _SYMBADDIMPLICITVAR
add esp, 12
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
or dword ptr [eax+12], 16777216
mov eax, dword ptr [ebp-12]
and eax, 2
je .Lt_0091
push -1
push dword ptr [ebp-16]
call _ASTNEWDECL
add esp, 8
push eax
call _ASTADDUNSCOPED
add esp, 4
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-16]
call _ASTBUILDFAKEWSTRINGASSIGN
add esp, 12
push eax
call _ASTADD
add esp, 4
jmp .Lt_0090
.Lt_0091:
push 0
push 64
push dword ptr [ebp-4]
push dword ptr [ebp-16]
call _ASTBUILDFAKEWSTRINGASSIGN
add esp, 12
push eax
push 0
push dword ptr [ebp-16]
call _ASTNEWDECL
add esp, 8
push eax
call _ASTNEWLINK
add esp, 12
push eax
call _ASTADD
add esp, 4
.Lt_0090:
.Lt_0088:
.Lt_007B:
push 0
push 270
call _CCOMPSTMTPUSH
add esp, 8
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [eax+12], 0
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-16]
mov dword ptr [eax+16], ebx
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+20], 0
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+44], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+48], ebx
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-32]
mov dword ptr [ebx+56], eax
.Lt_006E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSELECTSTMTNEXT
_CSELECTSTMTNEXT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_00B3:
push 0
push 270
call _CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_00B6
push 0
push 0
push 118
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00B4
.Lt_00B6:
.Lt_00B5:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+20], -1
jne .Lt_00B8
push 0
push 0
push 35
call _ERRREPORT
add esp, 12
.Lt_00B8:
.Lt_00B7:
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+4], 1
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+12], 0
je .Lt_00BA
push dword ptr [ebp-24]
call _CSELCONSTSTMTNEXT
add esp, 4
jmp .Lt_00B4
.Lt_00BA:
.Lt_00B9:
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+8], 0
je .Lt_00BC
mov eax, dword ptr [ebp-24]
push dword ptr [eax+8]
call _ASTSCOPEEND
add esp, 4
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+8], 0
.Lt_00BC:
.Lt_00BB:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+20], 0
jle .Lt_00BE
push 0
mov eax, dword ptr [ebp-24]
push dword ptr [eax+48]
push 98
call _ASTNEWBRANCH
add esp, 12
push eax
call _ASTADD
add esp, 4
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+44]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+44], eax
.Lt_00BE:
.Lt_00BD:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 268
jne .Lt_00C0
push 2048
call _LEXSKIPTOKEN
add esp, 4
call _ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+20], -1
jmp .Lt_00B4
.Lt_00C0:
.Lt_00BF:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [_CTX]
mov dword ptr [ebp-20], eax
.Lt_00C1:
mov eax, dword ptr [ebp-24]
push dword ptr [eax+16]
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-20]
sal eax, 4
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx+4]
push eax
call _HCASEEXPRESSION
add esp, 8
inc dword ptr [ebp-12]
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_00C5
jmp .Lt_00C2
.Lt_00C5:
.Lt_00C4:
push 0
call _LEXSKIPTOKEN
add esp, 4
.Lt_00C3:
jmp .Lt_00C1
.Lt_00C2:
mov eax, dword ptr [ebp-12]
add dword ptr [_CTX], eax
push 4
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-4], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-12]
dec eax
mov dword ptr [ebp-28], eax
jmp .Lt_00C7
.Lt_00CA:
mov eax, dword ptr [ebp-12]
dec eax
cmp dword ptr [ebp-16], eax
jge .Lt_00CC
push 0
push 0
call _SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00CB
.Lt_00CC:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-8], ebx
.Lt_00CB:
mov ebx, dword ptr [ebp-16]
add ebx, dword ptr [ebp-20]
sal ebx, 4
mov eax, offset _CTX
add eax, ebx
cmp dword ptr [eax+4], 3
je .Lt_00CE
mov eax, dword ptr [ebp-12]
dec eax
cmp eax, dword ptr [ebp-16]
sete al
shr eax, 1
sbb eax, eax
push eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
mov eax, dword ptr [ebp-24]
push dword ptr [eax+16]
mov eax, dword ptr [ebp-16]
add eax, dword ptr [ebp-20]
sal eax, 4
mov ebx, offset _CTX
add ebx, eax
lea eax, [ebx+4]
push eax
call _HFLUSHCASEEXPR
add esp, 20
test eax, eax
jne .Lt_00D0
push 0
push -1
push 24
call _ERRREPORT
add esp, 12
.Lt_00D0:
.Lt_00CF:
.Lt_00CE:
.Lt_00CD:
mov eax, dword ptr [ebp-12]
dec eax
cmp dword ptr [ebp-16], eax
jge .Lt_00D2
push -1
push dword ptr [ebp-8]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
.Lt_00D2:
.Lt_00D1:
.Lt_00C8:
inc dword ptr [ebp-16]
.Lt_00C7:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-16], eax
jle .Lt_00CA
.Lt_00C9:
mov eax, dword ptr [ebp-12]
sub dword ptr [_CTX], eax
push -1
push dword ptr [ebp-4]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
call _ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp-24]
inc dword ptr [eax+20]
.Lt_00B4:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _CSELECTSTMTEND
_CSELECTSTMTEND:
push ebp
mov ebp, esp
sub esp, 4
.Lt_00D4:
push -1
push 270
call _CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_00D7
push 0
push 0
push 0
push -1
call _HSKIPUNTIL
add esp, 16
jmp .Lt_00D5
.Lt_00D7:
.Lt_00D6:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+20], 0
jne .Lt_00D9
push 0
push 0
push 34
call _ERRREPORT
add esp, 12
.Lt_00D9:
.Lt_00D8:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .Lt_00DB
push dword ptr [ebp-4]
call _CSELCONSTSTMTEND
add esp, 4
jmp .Lt_00D5
.Lt_00DB:
.Lt_00DA:
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .Lt_00DD
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call _ASTSCOPEEND
add esp, 4
.Lt_00DD:
.Lt_00DC:
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+44]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+48]
call _ASTNEWLABEL
add esp, 8
push eax
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+56], 0
je .Lt_00DF
mov eax, dword ptr [ebp-4]
push dword ptr [eax+56]
call _ASTSCOPEEND
add esp, 4
.Lt_00DF:
.Lt_00DE:
push dword ptr [ebp-4]
call _CCOMPSTMTPOP
add esp, 4
.Lt_00D5:
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__parserzcompoundzselect:
.Lt_0002:
.Lt_0003:
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
_HCASEEXPRESSION:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0095:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 45
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 272
jne .Lt_0098
push 2048
call _LEXSKIPTOKEN
add esp, 4
push 0
call _LEXGETTOKEN
add esp, 4
push eax
call _HFBRELOP2IRRELOP
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
push 0
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 2
jmp .Lt_0097
.Lt_0098:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
.Lt_0097:
call _CEXPRESSION
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
jne .Lt_009A
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .Lt_009B
mov dword ptr [ebp-4], 7
jmp .Lt_00E0
.Lt_009B:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-4], eax
.Lt_00E0:
push dword ptr [ebp-4]
call _ASTNEWCONSTZ
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
.Lt_009A:
.Lt_0099:
push 0
call _LEXGETTOKEN
add esp, 4
cmp eax, 284
jne .Lt_009E
push 2048
call _LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00A0
push 0
push 0
push 17
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .Lt_009F
.Lt_00A0:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
call _CEXPRESSION
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
jne .Lt_00A2
push 0
push 0
push 9
call _ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call _HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
.Lt_00A2:
.Lt_00A1:
.Lt_009F:
.Lt_009E:
.Lt_009D:
.Lt_0096:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHCASEEXPR:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A3:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .Lt_00A5
push dword ptr [ebp+12]
call _ASTBUILDFAKEWSTRINGACCESS
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_00E1
.Lt_00A5:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-12], eax
.Lt_00E1:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 1
je .Lt_00A8
cmp dword ptr [ebp+24], 0
je .Lt_00AA
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _ASTGETINVERSELOGOP
add esp, 4
push eax
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_00A9
.Lt_00AA:
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_00A9:
jmp .Lt_00A7
.Lt_00A8:
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
push 47
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00AC
mov dword ptr [ebp-4], 0
jmp .Lt_00A4
.Lt_00AC:
.Lt_00AB:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .Lt_00AD
push dword ptr [ebp+12]
call _ASTBUILDFAKEWSTRINGACCESS
add esp, 4
mov dword ptr [ebp-16], eax
jmp .Lt_00E2
.Lt_00AD:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call _ASTNEWVAR
add esp, 20
mov dword ptr [ebp-16], eax
.Lt_00E2:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+24], 0
je .Lt_00B0
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp-8]
push 46
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_00AF
.Lt_00B0:
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp-8]
push 50
call _ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_00AF:
.Lt_00A7:
cmp dword ptr [ebp-8], 0
jne .Lt_00B2
mov dword ptr [ebp-4], 0
jmp .Lt_00A4
.Lt_00B2:
.Lt_00B1:
push dword ptr [ebp-8]
call _ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_00A4:
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
.balign 4
	.lcomm	_CTX,16388

.section .ctors
.int _fb_ctor__parserzcompoundzselect
