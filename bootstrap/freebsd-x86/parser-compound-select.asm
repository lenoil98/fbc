	.intel_syntax noprefix

.section .text
.balign 16

.globl PARSERSELECTSTMTINIT
PARSERSELECTSTMTINIT:
.Lt_0068:
mov dword ptr [CTX], 0
.Lt_0069:
ret
.balign 16

.globl PARSERSELECTSTMTEND
PARSERSELECTSTMTEND:
.Lt_006A:
.Lt_006B:
ret
.balign 16

.globl CSELECTSTMTBEGIN
CSELECTSTMTBEGIN:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.Lt_006C:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
push 271
call HMATCH
add esp, 8
test eax, eax
jne .Lt_006F
push 0
push 0
push 34
call ERRREPORT
add esp, 12
.Lt_006F:
.Lt_006E:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 376
jne .Lt_0071
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
push 335
call HMATCH
add esp, 8
test eax, eax
je .Lt_0073
call CSELCONSTSTMTBEGIN
jmp .Lt_006D
.Lt_0073:
.Lt_0072:
push 0
push 0
push 17
call ERRREPORT
add esp, 12
.Lt_0071:
.Lt_0070:
call ASTSCOPEBEGIN
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_0075
push 0
push 0
push 27
call ERRREPORT
add esp, 12
.Lt_0075:
.Lt_0074:
call CEXPRESSION
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0077
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0077:
.Lt_0076:
lea eax, [ebp-4]
push eax
call ASTTRYOVLSTRINGCONV
add esp, 4
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 511
cmp ebx, 20
jne .Lt_0079
push 0
push 0
push 24
call ERRREPORT
add esp, 12
push dword ptr [ebp-4]
call ASTDELTREE
add esp, 4
push 0
push 8
push 0
push 0
call ASTNEWCONSTI
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0079:
.Lt_0078:
push 0
push 0
call SYMBADDLABEL
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
call ASTGETEFFECTIVENODE
add esp, 4
mov dword ptr [ebp-36], eax
mov eax, dword ptr [ebp-36]
cmp dword ptr [eax], 17
jne .Lt_007B
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+12]
mov dword ptr [ebp-16], ebx
push dword ptr [ebp-4]
call ASTREBUILDWITHOUTEFFECTIVEPART
add esp, 4
push eax
call ASTADD
add esp, 4
jmp .Lt_007A
.Lt_007B:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_007C
mov dword ptr [ebp-44], 24
jmp .Lt_0091
.Lt_007C:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_0091:
mov eax, dword ptr [ebp-44]
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 18
je .Lt_0081
.Lt_0082:
cmp dword ptr [ebp-48], 4
jne .Lt_0080
.Lt_0081:
mov dword ptr [ebp-8], 17
.Lt_0080:
.Lt_007E:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [ENV+888]
and eax, 2
test eax, eax
jne .Lt_0084
or dword ptr [ebp-12], 2
.Lt_0084:
.Lt_0083:
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_0085
mov dword ptr [ebp-40], 24
jmp .Lt_0092
.Lt_0085:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-40], eax
.Lt_0092:
cmp dword ptr [ebp-40], 7
je .Lt_0088
push dword ptr [ebp-12]
push dword ptr [ebp-24]
push dword ptr [ebp-8]
call SYMBADDIMPLICITVAR
add esp, 12
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_0089
mov dword ptr [ebp-44], 24
jmp .Lt_0093
.Lt_0089:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-44], eax
.Lt_0093:
cmp dword ptr [ebp-44], 17
je .Lt_008C
mov eax, dword ptr [ebp-16]
or dword ptr [eax+12], 2048
.Lt_008C:
.Lt_008B:
mov eax, dword ptr [ebp-12]
and eax, 2
je .Lt_008E
push -1
push dword ptr [ebp-16]
call ASTNEWDECL
add esp, 8
push eax
call ASTADDUNSCOPED
add esp, 4
push 0
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .Lt_008D
.Lt_008E:
push 0
push 64
push dword ptr [ebp-4]
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp-16]
call ASTNEWVAR
add esp, 20
push eax
call ASTNEWASSIGN
add esp, 12
push eax
push 0
push dword ptr [ebp-16]
call ASTNEWDECL
add esp, 8
push eax
call ASTNEWLINK
add esp, 12
push eax
call ASTADD
add esp, 4
.Lt_008D:
jmp .Lt_0087
.Lt_0088:
push dword ptr [ebp-12]
push 0
push 39
call SYMBADDIMPLICITVAR
add esp, 12
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp-16]
or dword ptr [eax+12], 16777216
mov eax, dword ptr [ebp-12]
and eax, 2
je .Lt_0090
push -1
push dword ptr [ebp-16]
call ASTNEWDECL
add esp, 8
push eax
call ASTADDUNSCOPED
add esp, 4
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-16]
call ASTBUILDFAKEWSTRINGASSIGN
add esp, 12
push eax
call ASTADD
add esp, 4
jmp .Lt_008F
.Lt_0090:
push 0
push 64
push dword ptr [ebp-4]
push dword ptr [ebp-16]
call ASTBUILDFAKEWSTRINGASSIGN
add esp, 12
push eax
push 0
push dword ptr [ebp-16]
call ASTNEWDECL
add esp, 8
push eax
call ASTNEWLINK
add esp, 12
push eax
call ASTADD
add esp, 4
.Lt_008F:
.Lt_0087:
.Lt_007A:
push 0
push 270
call CCOMPSTMTPUSH
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
call SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebx+44], eax
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [ebp-20]
mov dword ptr [eax+48], ebx
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-32]
mov dword ptr [ebx+56], eax
.Lt_006D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CSELECTSTMTNEXT
CSELECTSTMTNEXT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_00B2:
push 0
push 270
call CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_00B5
push 0
push 0
push 118
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push -1
call HSKIPUNTIL
add esp, 16
jmp .Lt_00B3
.Lt_00B5:
.Lt_00B4:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+20], -1
jne .Lt_00B7
push 0
push 0
push 35
call ERRREPORT
add esp, 12
.Lt_00B7:
.Lt_00B6:
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+4], 1
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+12], 0
je .Lt_00B9
push dword ptr [ebp-24]
call CSELCONSTSTMTNEXT
add esp, 4
jmp .Lt_00B3
.Lt_00B9:
.Lt_00B8:
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+8], 0
je .Lt_00BB
mov eax, dword ptr [ebp-24]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 4
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+8], 0
.Lt_00BB:
.Lt_00BA:
mov eax, dword ptr [ebp-24]
cmp dword ptr [eax+20], 0
jle .Lt_00BD
push 0
mov eax, dword ptr [ebp-24]
push dword ptr [eax+48]
push 98
call ASTNEWBRANCH
add esp, 12
push eax
call ASTADD
add esp, 4
push -1
mov eax, dword ptr [ebp-24]
push dword ptr [eax+44]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+44], eax
.Lt_00BD:
.Lt_00BC:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 268
jne .Lt_00BF
push 2048
call LEXSKIPTOKEN
add esp, 4
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [eax+20], -1
jmp .Lt_00B3
.Lt_00BF:
.Lt_00BE:
mov dword ptr [ebp-12], 0
mov eax, dword ptr [CTX]
mov dword ptr [ebp-20], eax
.Lt_00C0:
mov eax, dword ptr [ebp-24]
push dword ptr [eax+16]
mov eax, dword ptr [ebp-12]
add eax, dword ptr [ebp-20]
sal eax, 4
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx+4]
push eax
call HCASEEXPRESSION
add esp, 8
inc dword ptr [ebp-12]
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 44
je .Lt_00C4
jmp .Lt_00C1
.Lt_00C4:
.Lt_00C3:
push 0
call LEXSKIPTOKEN
add esp, 4
.Lt_00C2:
jmp .Lt_00C0
.Lt_00C1:
mov eax, dword ptr [ebp-12]
add dword ptr [CTX], eax
push 4
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-4], eax
mov dword ptr [ebp-16], 0
mov eax, dword ptr [ebp-12]
dec eax
mov dword ptr [ebp-28], eax
jmp .Lt_00C6
.Lt_00C9:
mov eax, dword ptr [ebp-12]
dec eax
cmp dword ptr [ebp-16], eax
jge .Lt_00CB
push 0
push 0
call SYMBADDLABEL
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00CA
.Lt_00CB:
mov eax, dword ptr [ebp-24]
mov ebx, dword ptr [eax+44]
mov dword ptr [ebp-8], ebx
.Lt_00CA:
mov ebx, dword ptr [ebp-16]
add ebx, dword ptr [ebp-20]
sal ebx, 4
mov eax, offset CTX
add eax, ebx
cmp dword ptr [eax+4], 3
je .Lt_00CD
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
mov ebx, offset CTX
add ebx, eax
lea eax, [ebx+4]
push eax
call HFLUSHCASEEXPR
add esp, 20
test eax, eax
jne .Lt_00CF
push 0
push -1
push 24
call ERRREPORT
add esp, 12
.Lt_00CF:
.Lt_00CE:
.Lt_00CD:
.Lt_00CC:
mov eax, dword ptr [ebp-12]
dec eax
cmp dword ptr [ebp-16], eax
jge .Lt_00D1
push -1
push dword ptr [ebp-8]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
.Lt_00D1:
.Lt_00D0:
.Lt_00C7:
inc dword ptr [ebp-16]
.Lt_00C6:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-16], eax
jle .Lt_00C9
.Lt_00C8:
mov eax, dword ptr [ebp-12]
sub dword ptr [CTX], eax
push -1
push dword ptr [ebp-4]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
call ASTSCOPEBEGIN
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp-24]
inc dword ptr [eax+20]
.Lt_00B3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl CSELECTSTMTEND
CSELECTSTMTEND:
push ebp
mov ebp, esp
sub esp, 4
.Lt_00D3:
push -1
push 270
call CCOMPSTMTGETTOS
add esp, 8
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
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
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+20], 0
jne .Lt_00D8
push 0
push 0
push 34
call ERRREPORT
add esp, 12
.Lt_00D8:
.Lt_00D7:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+12], 0
je .Lt_00DA
push dword ptr [ebp-4]
call CSELCONSTSTMTEND
add esp, 4
jmp .Lt_00D4
.Lt_00DA:
.Lt_00D9:
push 2048
call LEXSKIPTOKEN
add esp, 4
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+8], 0
je .Lt_00DC
mov eax, dword ptr [ebp-4]
push dword ptr [eax+8]
call ASTSCOPEEND
add esp, 4
.Lt_00DC:
.Lt_00DB:
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+44]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
push -1
mov eax, dword ptr [ebp-4]
push dword ptr [eax+48]
call ASTNEWLABEL
add esp, 8
push eax
call ASTADD
add esp, 4
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax+56], 0
je .Lt_00DE
mov eax, dword ptr [ebp-4]
push dword ptr [eax+56]
call ASTSCOPEEND
add esp, 4
.Lt_00DE:
.Lt_00DD:
push dword ptr [ebp-4]
call CCOMPSTMTPOP
add esp, 4
.Lt_00D4:
mov esp, ebp
pop ebp
ret
.balign 16
fb_ctor__parserzcompoundzselect:
.Lt_0002:
.Lt_0003:
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
HCASEEXPRESSION:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0094:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+4], 45
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 272
jne .Lt_0097
push 2048
call LEXSKIPTOKEN
add esp, 4
push 0
call LEXGETTOKEN
add esp, 4
push eax
call HFBRELOP2IRRELOP
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
push 0
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 2
jmp .Lt_0096
.Lt_0097:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
.Lt_0096:
call CEXPRESSION
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+8], 0
jne .Lt_0099
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .Lt_009A
mov dword ptr [ebp-4], 7
jmp .Lt_00DF
.Lt_009A:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+28]
and eax, 511
mov dword ptr [ebp-4], eax
.Lt_00DF:
push dword ptr [ebp-4]
call ASTNEWCONSTZ
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+8], eax
.Lt_0099:
.Lt_0098:
push 0
call LEXGETTOKEN
add esp, 4
cmp eax, 284
jne .Lt_009D
push 2048
call LEXSKIPTOKEN
add esp, 4
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_009F
push 0
push 0
push 17
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
jmp .Lt_009E
.Lt_009F:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
call CEXPRESSION
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], 0
jne .Lt_00A1
push 0
push 0
push 9
call ERRREPORT
add esp, 12
push 0
push 0
push 0
push 44
call HSKIPUNTIL
add esp, 16
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
.Lt_00A1:
.Lt_00A0:
.Lt_009E:
.Lt_009D:
.Lt_009C:
.Lt_0095:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFLUSHCASEEXPR:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_00A2:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .Lt_00A4
push dword ptr [ebp+12]
call ASTBUILDFAKEWSTRINGACCESS
add esp, 4
mov dword ptr [ebp-12], eax
jmp .Lt_00E0
.Lt_00A4:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-12], eax
.Lt_00E0:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 1
je .Lt_00A7
cmp dword ptr [ebp+24], 0
je .Lt_00A9
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call ASTGETINVERSELOGOP
add esp, 4
push eax
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_00A8
.Lt_00A9:
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_00A8:
jmp .Lt_00A6
.Lt_00A7:
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-8]
push 47
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00AB
mov dword ptr [ebp-4], 0
jmp .Lt_00A3
.Lt_00AB:
.Lt_00AA:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+12]
and ebx, 16777216
test ebx, ebx
je .Lt_00AC
push dword ptr [ebp+12]
call ASTBUILDFAKEWSTRINGACCESS
add esp, 4
mov dword ptr [ebp-16], eax
jmp .Lt_00E1
.Lt_00AC:
push 0
push -2147483648
push 0
push 0
push dword ptr [ebp+12]
call ASTNEWVAR
add esp, 20
mov dword ptr [ebp-16], eax
.Lt_00E1:
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+24], 0
je .Lt_00AF
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp-8]
push 46
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
jmp .Lt_00AE
.Lt_00AF:
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp-8]
push 50
call ASTNEWBOP
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_00AE:
.Lt_00A6:
cmp dword ptr [ebp-8], 0
jne .Lt_00B1
mov dword ptr [ebp-4], 0
jmp .Lt_00A3
.Lt_00B1:
.Lt_00B0:
push dword ptr [ebp-8]
call ASTADD
add esp, 4
mov dword ptr [ebp-4], -1
.Lt_00A3:
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
.balign 4
	.lcomm	CTX,16388

.section .ctors
.int fb_ctor__parserzcompoundzselect
