	.intel_syntax noprefix

.section .text
.balign 16

.globl PARSERINLINEASMEND
PARSERINLINEASMEND:
.type PARSERINLINEASMEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_02CB:
cmp dword ptr [ASMKEYWORDS], 0
je .Lt_02CE
sub esp, 12
lea eax, [ASMKEYWORDS+4]
push eax
call HASHEND
add esp, 16
mov dword ptr [ASMKEYWORDS], 0
.Lt_02CE:
.Lt_02CD:
.Lt_02CC:
mov esp, ebp
pop ebp
ret
.size PARSERINLINEASMEND, .-PARSERINLINEASMEND
.balign 16

.globl CASMCODE
CASMCODE:
.type CASMCODE, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_02CF:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.Lt_02D1:
sub esp, 12
push 1028
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-32], eax
jmp .Lt_02D5
.Lt_02D7:
jmp .Lt_02D2
jmp .Lt_02D4
.Lt_02D5:
mov eax, dword ptr [ebp-32]
add eax, 4294967040
cmp eax, 84
ja .Lt_02D4
mov eax, dword ptr [ebp-32]
jmp dword ptr [.LT_02D8+eax*4-1024]
.LT_02D8:
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D4
.int .Lt_02D7
.int .Lt_02D7
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D4
.int .Lt_02D7
.Lt_02D4:
sub esp, 12
push 0
push 0
sub esp, 12
call LEXGETTEXT
add esp, 12
push eax
push 1025
push offset Lt_0319
call fb_StrAssign
add esp, 32
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-24], 0
sub esp, 12
push 1028
call LEXGETCLASS
add esp, 16
mov dword ptr [ebp-32], eax
jmp .Lt_02DA
.Lt_02DC:
cmp dword ptr [ebp-28], 464
jne .Lt_02DE
sub esp, 8
push -1
push dword ptr [ebp-28]
call CMATHFUNCT
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_02E0
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .Lt_02E2
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-12]
call ASTCONSTFLUSHTOSTR
add esp, 12
push eax
push 1025
push offset Lt_0319
call fb_StrAssign
add esp, 32
jmp .Lt_02E1
.Lt_02E2:
sub esp, 4
push 0
push 0
push 11
call ERRREPORT
add esp, 16
mov dword ptr [ebp-24], -1
.Lt_02E1:
jmp .Lt_02DF
.Lt_02E0:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov dword ptr [ebp-24], -1
.Lt_02DF:
jmp .Lt_02DD
.Lt_02DE:
sub esp, 12
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
sub esp, 4
push 0
push offset Lt_0319
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-44]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call HISASMKEYWORD
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
sub esp, 12
lea eax, [ebp-44]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ebp-48], 0
je .Lt_02E3
sub esp, 8
push 34
lea eax, [ebp-52]
push eax
call CIDENTIFIER
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_02E6:
cmp dword ptr [ebp-4], 0
je .Lt_02E7
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-56], ebx
.Lt_02E8:
mov ebx, dword ptr [ebp-56]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 3
je .Lt_02EE
.Lt_02EF:
cmp dword ptr [ebp-60], 7
jne .Lt_02ED
.Lt_02EE:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp-8], eax
jmp .Lt_02E7
jmp .Lt_02EB
.Lt_02ED:
cmp dword ptr [ebp-60], 2
jne .Lt_02F0
.Lt_02F1:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-56]
call SYMBGETCONSTVALUEASSTR
add esp, 12
push eax
push 1025
push offset Lt_0319
call fb_StrAssign
add esp, 32
jmp .Lt_02E7
jmp .Lt_02EB
.Lt_02F0:
cmp dword ptr [ebp-60], 1
jne .Lt_02F2
.Lt_02F3:
sub esp, 8
push 1
push dword ptr [ebp-4]
call SYMBFINDBYCLASS
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_02F5
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2
.Lt_02F5:
.Lt_02F4:
jmp .Lt_02E7
.Lt_02F2:
.Lt_02EB:
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [eax+156]
mov dword ptr [ebp-56], ebx
.Lt_02EA:
cmp dword ptr [ebp-56], 0
jne .Lt_02E8
.Lt_02E9:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-4], eax
jmp .Lt_02E6
.Lt_02E7:
.Lt_02E3:
.Lt_02DD:
jmp .Lt_02D9
.Lt_02F6:
sub esp, 12
push 0
call CNUMLITERAL
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_02F8
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-12]
call ASTCONSTFLUSHTOSTR
add esp, 12
push eax
push 1025
push offset Lt_0319
call fb_StrAssign
add esp, 32
.Lt_02F8:
.Lt_02F7:
jmp .Lt_02D9
.Lt_02F9:
sub esp, 12
push 0
call CSTRLITERAL
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_02FB
sub esp, 12
push dword ptr [ebp-12]
call ASTGETSTRLITSYMBOL
add esp, 16
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .Lt_02FD
sub esp, 12
push 0
push 2
push offset Lt_02FE
push 1025
push offset Lt_0319
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .Lt_0300
sub esp, 12
push 0
push -1
sub esp, 8
push 0
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx+56]
push 1025
push offset Lt_0319
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea ebx, [ebp-60]
push ebx
call fb_StrConcat
add esp, 28
push eax
push 1025
push offset Lt_0319
call fb_StrAssign
add esp, 32
jmp .Lt_02FF
.Lt_0300:
push 0
mov eax, dword ptr [ebp-36]
push dword ptr [eax+56]
push 1025
push offset Lt_0319
call fb_WstrConcatAW
add esp, 12
mov dword ptr [ebp-52], eax
push dword ptr [ebp-52]
push 1025
push offset Lt_0319
call fb_WstrAssignToA
add esp, 16
sub esp, 12
push dword ptr [ebp-52]
call fb_WstrDelete
add esp, 16
.Lt_02FF:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_02FE
push 1025
push offset Lt_0319
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push 1025
push offset Lt_0319
call fb_StrAssign
add esp, 32
.Lt_02FD:
.Lt_02FC:
sub esp, 12
push dword ptr [ebp-12]
call ASTDELTREE
add esp, 16
.Lt_02FB:
.Lt_02FA:
jmp .Lt_02D9
.Lt_0304:
cmp dword ptr [ebp-28], 346
jne .Lt_0306
.Lt_0307:
sub esp, 12
push dword ptr [PARSER+104]
call SYMBGETPROCRESULT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_0309
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov dword ptr [ebp-24], -1
jmp .Lt_0308
.Lt_0309:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2
.Lt_0308:
jmp .Lt_0305
.Lt_0306:
cmp dword ptr [ebp-28], 404
jne .Lt_030A
.Lt_030B:
sub esp, 8
push -1
push dword ptr [ebp-28]
call CTYPECONVEXPR
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_030D
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .Lt_030F
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-12]
call ASTCONSTFLUSHTOSTR
add esp, 12
push eax
push 1025
push offset Lt_0319
call fb_StrAssign
add esp, 32
jmp .Lt_030E
.Lt_030F:
sub esp, 4
push 0
push 0
push 11
call ERRREPORT
add esp, 16
mov dword ptr [ebp-24], -1
.Lt_030E:
jmp .Lt_030C
.Lt_030D:
sub esp, 4
push 0
push 0
push 17
call ERRREPORT
add esp, 16
mov dword ptr [ebp-24], -1
.Lt_030C:
.Lt_030A:
.Lt_0305:
jmp .Lt_02D9
.Lt_02DA:
cmp dword ptr [ebp-32], 4
ja .Lt_02D9
mov eax, dword ptr [ebp-32]
jmp dword ptr [.LT_0310+eax*4]
.LT_0310:
.int .Lt_02DC
.int .Lt_0304
.int .Lt_02DC
.int .Lt_02F6
.int .Lt_02F9
.Lt_02D9:
cmp dword ptr [ebp-24], 0
jne .Lt_0312
cmp dword ptr [ebp-8], 0
je .Lt_0314
sub esp, 8
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call ASTASMAPPENDSYMB
add esp, 16
mov dword ptr [ebp-20], eax
jmp .Lt_0313
.Lt_0314:
sub esp, 8
push offset Lt_0319
push dword ptr [ebp-20]
call ASTASMAPPENDTEXT
add esp, 16
mov dword ptr [ebp-20], eax
.Lt_0313:
cmp dword ptr [ebp-16], 0
jne .Lt_0316
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
.Lt_0316:
.Lt_0315:
.Lt_0312:
.Lt_0311:
sub esp, 12
push 1028
call LEXSKIPTOKEN
add esp, 16
.Lt_02D3:
jmp .Lt_02D1
.Lt_02D2:
cmp dword ptr [ebp-16], 0
je .Lt_0318
sub esp, 12
push dword ptr [ebp-16]
call ASTNEWASM
add esp, 4
push eax
call ASTADD
add esp, 16
.Lt_0318:
.Lt_0317:
.Lt_02D0:
pop ebx
mov esp, ebp
pop ebp
ret
.size CASMCODE, .-CASMCODE

.section .bss
.balign 4
	.lcomm	Lt_0319,1025

.section .text
.balign 16

.globl CASMBLOCK
CASMBLOCK:
.type CASMBLOCK, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_031B:
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
cmp eax, 344
je .Lt_031E
jmp .Lt_031C
.Lt_031E:
.Lt_031D:
sub esp, 12
push 1
call CCOMPSTMTISALLOWED
add esp, 16
test eax, eax
jne .Lt_0320
sub esp, 4
push 0
push -1
push 344
call HSKIPCOMPOUND
add esp, 16
jmp .Lt_031C
.Lt_0320:
.Lt_031F:
sub esp, 12
push 2048
call LEXSKIPTOKEN
add esp, 16
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
call CCOMMENT
add esp, 16
test eax, eax
je .Lt_0322
cmp dword ptr [ENV+148], 0
je .Lt_0324
cmp dword ptr [ENV+876], 0
jne .Lt_0326
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
.Lt_0326:
.Lt_0325:
.Lt_0324:
.Lt_0323:
sub esp, 12
push 0
call CSTMTSEPARATOR
add esp, 16
test eax, eax
jne .Lt_0328
sub esp, 4
push 0
push 0
push 3
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 257
call HSKIPUNTIL
add esp, 16
.Lt_0328:
.Lt_0327:
jmp .Lt_0321
.Lt_0322:
sub esp, 12
push 0
call CSTMTSEPARATOR
add esp, 16
test eax, eax
jne .Lt_032A
mov dword ptr [ebp-8], -1
.Lt_032A:
.Lt_0329:
.Lt_0321:
.Lt_032B:
cmp dword ptr [ebp-8], 0
jne .Lt_032F
sub esp, 12
sub esp, 8
push dword ptr [ENV+544]
mov eax, dword ptr [LEX+839936]
push dword ptr [eax+16564]
push 113
call ASTNEWDBG
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_032F:
.Lt_032E:
call CASMCODE
sub esp, 12
push 1028
call CCOMMENT
add esp, 16
cmp dword ptr [ENV+148], 0
je .Lt_0331
cmp dword ptr [ENV+876], 0
jne .Lt_0333
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
.Lt_0333:
.Lt_0332:
.Lt_0331:
.Lt_0330:
sub esp, 12
push 0
call LEXGETTOKEN
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 257
jne .Lt_0336
.Lt_0337:
cmp dword ptr [ebp-8], 0
je .Lt_0339
jmp .Lt_032C
.Lt_0339:
.Lt_0338:
sub esp, 12
push 0
call LEXSKIPTOKEN
add esp, 16
jmp .Lt_0334
.Lt_0336:
cmp dword ptr [ebp-12], 256
jne .Lt_033A
.Lt_033B:
jmp .Lt_032C
jmp .Lt_0334
.Lt_033A:
cmp dword ptr [ebp-12], 340
jne .Lt_033C
.Lt_033D:
jmp .Lt_032C
jmp .Lt_0334
.Lt_033C:
sub esp, 4
push 0
push 0
push 3
call ERRREPORT
add esp, 16
push 0
push 0
push -1
push 257
call HSKIPUNTIL
add esp, 16
.Lt_033E:
.Lt_0334:
cmp dword ptr [ebp-8], 0
jne .Lt_0340
sub esp, 12
sub esp, 8
push 0
push 0
push 114
call ASTNEWDBG
add esp, 20
push eax
call ASTADD
add esp, 16
.Lt_0340:
.Lt_033F:
.Lt_032D:
jmp .Lt_032B
.Lt_032C:
cmp dword ptr [ebp-8], 0
jne .Lt_0342
sub esp, 8
push 2048
push 340
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0344
sub esp, 4
push 0
push 0
push 45
call ERRREPORT
add esp, 16
jmp .Lt_0343
.Lt_0344:
sub esp, 8
push 2048
push 344
call HMATCH
add esp, 16
test eax, eax
jne .Lt_0346
sub esp, 4
push 0
push 0
push 45
call ERRREPORT
add esp, 16
.Lt_0346:
.Lt_0345:
.Lt_0343:
.Lt_0342:
.Lt_0341:
mov dword ptr [ebp-4], -1
.Lt_031C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size CASMBLOCK, .-CASMBLOCK
.balign 16
fb_ctor__parserzinlineasm:
.type fb_ctor__parserzinlineasm, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__parserzinlineasm, .-fb_ctor__parserzinlineasm
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
HINITASMKEYWORDS:
.type HINITASMKEYWORDS, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_02C1:
sub esp, 4
push 0
push 600
lea eax, [ASMKEYWORDS+4]
push eax
call HASHINIT
add esp, 16
mov dword ptr [ebp-4], 0
.Lt_02C6:
push 4294967295
push 4294967295
mov eax, dword ptr [ebp-4]
push dword ptr [ASMKEYWORDSX86+eax*4]
lea eax, [ASMKEYWORDS+4]
push eax
call HASHADD
add esp, 16
.Lt_02C4:
inc dword ptr [ebp-4]
.Lt_02C3:
cmp dword ptr [ebp-4], 601
jle .Lt_02C6
.Lt_02C5:
.Lt_02C2:
mov esp, ebp
pop ebp
ret
.size HINITASMKEYWORDS, .-HINITASMKEYWORDS
.balign 16
HISASMKEYWORD:
.type HISASMKEYWORD, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_02C7:
cmp dword ptr [ASMKEYWORDS], 0
jne .Lt_02CA
call HINITASMKEYWORDS
mov dword ptr [ASMKEYWORDS], -1
.Lt_02CA:
.Lt_02C9:
sub esp, 8
push dword ptr [ebp+8]
lea eax, [ASMKEYWORDS+4]
push eax
call HASHLOOKUP
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_02C8:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HISASMKEYWORD, .-HISASMKEYWORD

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
ASMKEYWORDSX86:
.int Lt_0067
.int Lt_0068
.int Lt_0069
.int Lt_006A
.int Lt_006B
.int Lt_006C
.int Lt_006D
.int Lt_006E
.int Lt_006F
.int Lt_0070
.int Lt_0071
.int Lt_0072
.int Lt_0073
.int Lt_0074
.int Lt_0075
.int Lt_0076
.int Lt_0077
.int Lt_0078
.int Lt_0079
.int Lt_007A
.int Lt_007B
.int Lt_007C
.int Lt_007D
.int Lt_007E
.int Lt_007F
.int Lt_0080
.int Lt_0081
.int Lt_0082
.int Lt_0083
.int Lt_0084
.int Lt_0085
.int Lt_0086
.int Lt_0087
.int Lt_0088
.int Lt_0089
.int Lt_008A
.int Lt_008B
.int Lt_008C
.int Lt_008D
.int Lt_008E
.int Lt_008F
.int Lt_0090
.int Lt_0091
.int Lt_0092
.int Lt_0093
.int Lt_0094
.int Lt_0095
.int Lt_0096
.int Lt_0097
.int Lt_0098
.int Lt_0099
.int Lt_009A
.int Lt_009B
.int Lt_009C
.int Lt_009D
.int Lt_009E
.int Lt_009F
.int Lt_00A0
.int Lt_00A1
.int Lt_00A2
.int Lt_00A3
.int Lt_00A4
.int Lt_00A5
.int Lt_00A6
.int Lt_00A7
.int Lt_00A8
.int Lt_00A9
.int Lt_00AA
.int Lt_00AB
.int Lt_00AC
.int Lt_00AD
.int Lt_00AE
.int Lt_00AF
.int Lt_00B0
.int Lt_00B1
.int Lt_00B2
.int Lt_00B3
.int Lt_00B4
.int Lt_00B5
.int Lt_00B6
.int Lt_00B7
.int Lt_00B8
.int Lt_00B9
.int Lt_00BA
.int Lt_00BB
.int Lt_00BC
.int Lt_00BD
.int Lt_00BE
.int Lt_00BF
.int Lt_00C0
.int Lt_00C1
.int Lt_00C2
.int Lt_00C3
.int Lt_00C4
.int Lt_00C5
.int Lt_00C6
.int Lt_00C7
.int Lt_00C8
.int Lt_00C9
.int Lt_00CA
.int Lt_00CB
.int Lt_00CC
.int Lt_00CD
.int Lt_00CE
.int Lt_00CF
.int Lt_00D0
.int Lt_00D1
.int Lt_00D2
.int Lt_00D3
.int Lt_00D4
.int Lt_00D4
.int Lt_00D5
.int Lt_00D6
.int Lt_00D7
.int Lt_00D8
.int Lt_00D9
.int Lt_00DA
.int Lt_00DB
.int Lt_00DC
.int Lt_00DD
.int Lt_00DE
.int Lt_00DF
.int Lt_00E0
.int Lt_00E1
.int Lt_00E2
.int Lt_00E3
.int Lt_00E4
.int Lt_00E5
.int Lt_00E6
.int Lt_00E7
.int Lt_00E8
.int Lt_00E9
.int Lt_00EA
.int Lt_00EB
.int Lt_00EC
.int Lt_00ED
.int Lt_00EE
.int Lt_00EF
.int Lt_00F0
.int Lt_00F1
.int Lt_00F2
.int Lt_00F3
.int Lt_00F4
.int Lt_00F5
.int Lt_00F6
.int Lt_00F7
.int Lt_00F8
.int Lt_00F9
.int Lt_00FA
.int Lt_00FB
.int Lt_00FC
.int Lt_00FD
.int Lt_00FE
.int Lt_00FF
.int Lt_0100
.int Lt_0101
.int Lt_0102
.int Lt_0103
.int Lt_0104
.int Lt_0105
.int Lt_0106
.int Lt_0107
.int Lt_0108
.int Lt_0109
.int Lt_010A
.int Lt_010B
.int Lt_010C
.int Lt_010D
.int Lt_010E
.int Lt_010F
.int Lt_0110
.int Lt_0111
.int Lt_0112
.int Lt_0113
.int Lt_0114
.int Lt_0115
.int Lt_0116
.int Lt_0117
.int Lt_0118
.int Lt_0119
.int Lt_011A
.int Lt_011B
.int Lt_011C
.int Lt_011D
.int Lt_011E
.int Lt_011F
.int Lt_0120
.int Lt_0121
.int Lt_0122
.int Lt_0123
.int Lt_0124
.int Lt_0125
.int Lt_0126
.int Lt_0127
.int Lt_0128
.int Lt_0129
.int Lt_012A
.int Lt_012B
.int Lt_012C
.int Lt_012D
.int Lt_012E
.int Lt_012F
.int Lt_0130
.int Lt_0131
.int Lt_0132
.int Lt_0133
.int Lt_0134
.int Lt_0135
.int Lt_0136
.int Lt_0137
.int Lt_0138
.int Lt_0139
.int Lt_013A
.int Lt_013B
.int Lt_013C
.int Lt_013D
.int Lt_013E
.int Lt_013F
.int Lt_0140
.int Lt_0141
.int Lt_0142
.int Lt_0143
.int Lt_0144
.int Lt_0145
.int Lt_0146
.int Lt_0147
.int Lt_0148
.int Lt_0149
.int Lt_014A
.int Lt_014B
.int Lt_014C
.int Lt_014D
.int Lt_014E
.int Lt_014F
.int Lt_0150
.int Lt_0151
.int Lt_0152
.int Lt_0153
.int Lt_0154
.int Lt_0155
.int Lt_0156
.int Lt_0157
.int Lt_0158
.int Lt_0159
.int Lt_015A
.int Lt_015B
.int Lt_015C
.int Lt_015D
.int Lt_015E
.int Lt_015F
.int Lt_0160
.int Lt_0161
.int Lt_0162
.int Lt_0163
.int Lt_0164
.int Lt_0165
.int Lt_0166
.int Lt_0167
.int Lt_0168
.int Lt_0169
.int Lt_016A
.int Lt_016B
.int Lt_016C
.int Lt_016D
.int Lt_016E
.int Lt_016F
.int Lt_0170
.int Lt_0171
.int Lt_0172
.int Lt_0173
.int Lt_0174
.int Lt_0175
.int Lt_0176
.int Lt_0177
.int Lt_0178
.int Lt_0179
.int Lt_017A
.int Lt_017B
.int Lt_017C
.int Lt_017D
.int Lt_017E
.int Lt_017F
.int Lt_0180
.int Lt_0181
.int Lt_0182
.int Lt_0183
.int Lt_0184
.int Lt_0185
.int Lt_0186
.int Lt_0187
.int Lt_0188
.int Lt_0189
.int Lt_018A
.int Lt_018B
.int Lt_018C
.int Lt_018D
.int Lt_018E
.int Lt_018F
.int Lt_0190
.int Lt_0191
.int Lt_0192
.int Lt_0193
.int Lt_0194
.int Lt_0195
.int Lt_0196
.int Lt_0197
.int Lt_0198
.int Lt_0199
.int Lt_019A
.int Lt_019B
.int Lt_019C
.int Lt_019D
.int Lt_019E
.int Lt_019F
.int Lt_01A0
.int Lt_01A1
.int Lt_01A2
.int Lt_01A3
.int Lt_01A4
.int Lt_01A5
.int Lt_01A6
.int Lt_01A7
.int Lt_01A8
.int Lt_01A9
.int Lt_01AA
.int Lt_01AB
.int Lt_01AC
.int Lt_01AD
.int Lt_01AE
.int Lt_01AF
.int Lt_01B0
.int Lt_01B1
.int Lt_01B2
.int Lt_01B3
.int Lt_01B4
.int Lt_01B5
.int Lt_01B6
.int Lt_01B7
.int Lt_01B8
.int Lt_01B9
.int Lt_01BA
.int Lt_01BB
.int Lt_01BC
.int Lt_01BD
.int Lt_01BE
.int Lt_01BF
.int Lt_01C0
.int Lt_01C1
.int Lt_01C2
.int Lt_01C3
.int Lt_01C4
.int Lt_01C5
.int Lt_01C6
.int Lt_01C7
.int Lt_01C8
.int Lt_01C9
.int Lt_01CA
.int Lt_01CB
.int Lt_01CC
.int Lt_01CD
.int Lt_01CE
.int Lt_01CF
.int Lt_01D0
.int Lt_01D1
.int Lt_01D2
.int Lt_01D3
.int Lt_01D4
.int Lt_01D5
.int Lt_01D6
.int Lt_01D7
.int Lt_01D8
.int Lt_01D9
.int Lt_01DA
.int Lt_01DB
.int Lt_01DC
.int Lt_01DD
.int Lt_01DE
.int Lt_01DF
.int Lt_01E0
.int Lt_01E1
.int Lt_01E2
.int Lt_01E3
.int Lt_01E4
.int Lt_01E5
.int Lt_01E6
.int Lt_01E7
.int Lt_01E8
.int Lt_01E9
.int Lt_01EA
.int Lt_01EB
.int Lt_01EC
.int Lt_01ED
.int Lt_01EE
.int Lt_01EF
.int Lt_01F0
.int Lt_01F1
.int Lt_01F2
.int Lt_01F3
.int Lt_01F4
.int Lt_01F5
.int Lt_01F6
.int Lt_01F7
.int Lt_01F8
.int Lt_01F9
.int Lt_01FA
.int Lt_01FB
.int Lt_01FC
.int Lt_01FD
.int Lt_01FE
.int Lt_01FF
.int Lt_0200
.int Lt_0201
.int Lt_0202
.int Lt_0203
.int Lt_0204
.int Lt_0205
.int Lt_0206
.int Lt_0207
.int Lt_0208
.int Lt_0209
.int Lt_020A
.int Lt_020B
.int Lt_020C
.int Lt_020D
.int Lt_020E
.int Lt_020F
.int Lt_0210
.int Lt_0211
.int Lt_0212
.int Lt_0213
.int Lt_0214
.int Lt_0215
.int Lt_0216
.int Lt_0217
.int Lt_0218
.int Lt_0219
.int Lt_021A
.int Lt_021B
.int Lt_021C
.int Lt_021D
.int Lt_021E
.int Lt_021F
.int Lt_0220
.int Lt_0221
.int Lt_0222
.int Lt_0223
.int Lt_0224
.int Lt_0225
.int Lt_0226
.int Lt_0227
.int Lt_0228
.int Lt_0229
.int Lt_022A
.int Lt_022B
.int Lt_022C
.int Lt_022D
.int Lt_022E
.int Lt_022F
.int Lt_0230
.int Lt_0231
.int Lt_0232
.int Lt_0233
.int Lt_0234
.int Lt_0235
.int Lt_0236
.int Lt_0237
.int Lt_0238
.int Lt_0239
.int Lt_023A
.int Lt_023B
.int Lt_023C
.int Lt_023D
.int Lt_023E
.int Lt_023F
.int Lt_0240
.int Lt_0241
.int Lt_0242
.int Lt_0243
.int Lt_0244
.int Lt_0245
.int Lt_0246
.int Lt_0247
.int Lt_0248
.int Lt_0249
.int Lt_024A
.int Lt_024B
.int Lt_024C
.int Lt_024D
.int Lt_024E
.int Lt_024F
.int Lt_0250
.int Lt_0251
.int Lt_0252
.int Lt_0253
.int Lt_0254
.int Lt_0255
.int Lt_0256
.int Lt_0257
.int Lt_0258
.int Lt_0259
.int Lt_025A
.int Lt_025B
.int Lt_025C
.int Lt_025D
.int Lt_025E
.int Lt_025F
.int Lt_0260
.int Lt_0261
.int Lt_0262
.int Lt_0263
.int Lt_0264
.int Lt_0265
.int Lt_0266
.int Lt_0267
.int Lt_0268
.int Lt_0269
.int Lt_026A
.int Lt_026B
.int Lt_026C
.int Lt_026D
.int Lt_026E
.int Lt_026F
.int Lt_0270
.int Lt_0271
.int Lt_0272
.int Lt_0273
.int Lt_0274
.int Lt_0275
.int Lt_0276
.int Lt_0277
.int Lt_0278
.int Lt_0279
.int Lt_027A
.int Lt_027B
.int Lt_027C
.int Lt_027D
.int Lt_027E
.int Lt_027F
.int Lt_0280
.int Lt_0281
.int Lt_0282
.int Lt_0283
.int Lt_0284
.int Lt_0285
.int Lt_0286
.int Lt_0287
.int Lt_0288
.int Lt_0289
.int Lt_028A
.int Lt_028B
.int Lt_028C
.int Lt_028D
.int Lt_028E
.int Lt_028F
.int Lt_0290
.int Lt_0291
.int Lt_0292
.int Lt_0293
.int Lt_0294
.int Lt_0295
.int Lt_0296
.int Lt_0297
.int Lt_0298
.int Lt_0299
.int Lt_029A
.int Lt_029B
.int Lt_029C
.int Lt_029D
.int Lt_029E
.int Lt_029F
.int Lt_02A0
.int Lt_02A1
.int Lt_02A2
.int Lt_02A3
.int Lt_02A4
.int Lt_02A5
.int Lt_02A6
.int Lt_02A7
.int Lt_02A8
.int Lt_02A9
.int Lt_02AA
.int Lt_02AB
.int Lt_02AC
.int Lt_02AD
.int Lt_02AE
.int Lt_02AF
.int Lt_02B0
.int Lt_02B1
.int Lt_02B2
.int Lt_02B3
.int Lt_02B4
.int Lt_02B5
.int Lt_02B6
.int Lt_02B7
.int Lt_02B8
.int Lt_02B9
.int Lt_02BA
.int Lt_02BB
.int Lt_02BC
.int Lt_02BD
.int Lt_02BE
.int Lt_02BF

.section .rodata
.balign 4
Lt_0067:	.ascii	"dl\0"
.balign 4
Lt_0068:	.ascii	"di\0"
.balign 4
Lt_0069:	.ascii	"si\0"
.balign 4
Lt_006A:	.ascii	"cl\0"
.balign 4
Lt_006B:	.ascii	"bl\0"
.balign 4
Lt_006C:	.ascii	"al\0"
.balign 4
Lt_006D:	.ascii	"bp\0"
.balign 4
Lt_006E:	.ascii	"sp\0"
.balign 4
Lt_006F:	.ascii	"dx\0"
.balign 4
Lt_0070:	.ascii	"cx\0"
.balign 4
Lt_0071:	.ascii	"bx\0"
.balign 4
Lt_0072:	.ascii	"ax\0"
.balign 4
Lt_0073:	.ascii	"edx\0"
.balign 4
Lt_0074:	.ascii	"edi\0"
.balign 4
Lt_0075:	.ascii	"esi\0"
.balign 4
Lt_0076:	.ascii	"ecx\0"
.balign 4
Lt_0077:	.ascii	"ebx\0"
.balign 4
Lt_0078:	.ascii	"eax\0"
.balign 4
Lt_0079:	.ascii	"ebp\0"
.balign 4
Lt_007A:	.ascii	"esp\0"
.balign 4
Lt_007B:	.ascii	"st\0"
.balign 4
Lt_007C:	.ascii	"cs\0"
.balign 4
Lt_007D:	.ascii	"ds\0"
.balign 4
Lt_007E:	.ascii	"es\0"
.balign 4
Lt_007F:	.ascii	"fs\0"
.balign 4
Lt_0080:	.ascii	"gs\0"
.balign 4
Lt_0081:	.ascii	"ss\0"
.balign 4
Lt_0082:	.ascii	"mm0\0"
.balign 4
Lt_0083:	.ascii	"mm1\0"
.balign 4
Lt_0084:	.ascii	"mm2\0"
.balign 4
Lt_0085:	.ascii	"mm3\0"
.balign 4
Lt_0086:	.ascii	"mm4\0"
.balign 4
Lt_0087:	.ascii	"mm5\0"
.balign 4
Lt_0088:	.ascii	"mm6\0"
.balign 4
Lt_0089:	.ascii	"mm7\0"
.balign 4
Lt_008A:	.ascii	"xmm0\0"
.balign 4
Lt_008B:	.ascii	"xmm1\0"
.balign 4
Lt_008C:	.ascii	"xmm2\0"
.balign 4
Lt_008D:	.ascii	"xmm3\0"
.balign 4
Lt_008E:	.ascii	"xmm4\0"
.balign 4
Lt_008F:	.ascii	"xmm5\0"
.balign 4
Lt_0090:	.ascii	"xmm6\0"
.balign 4
Lt_0091:	.ascii	"xmm7\0"
.balign 4
Lt_0092:	.ascii	"byte\0"
.balign 4
Lt_0093:	.ascii	"word\0"
.balign 4
Lt_0094:	.ascii	"dword\0"
.balign 4
Lt_0095:	.ascii	"qword\0"
.balign 4
Lt_0096:	.ascii	"ptr\0"
.balign 4
Lt_0097:	.ascii	"offset\0"
.balign 4
Lt_0098:	.ascii	"aaa\0"
.balign 4
Lt_0099:	.ascii	"aad\0"
.balign 4
Lt_009A:	.ascii	"aam\0"
.balign 4
Lt_009B:	.ascii	"aas\0"
.balign 4
Lt_009C:	.ascii	"adc\0"
.balign 4
Lt_009D:	.ascii	"add\0"
.balign 4
Lt_009E:	.ascii	"addpd\0"
.balign 4
Lt_009F:	.ascii	"addps\0"
.balign 4
Lt_00A0:	.ascii	"addsd\0"
.balign 4
Lt_00A1:	.ascii	"addss\0"
.balign 4
Lt_00A2:	.ascii	"and\0"
.balign 4
Lt_00A3:	.ascii	"andpd\0"
.balign 4
Lt_00A4:	.ascii	"andps\0"
.balign 4
Lt_00A5:	.ascii	"andnpd\0"
.balign 4
Lt_00A6:	.ascii	"andnps\0"
.balign 4
Lt_00A7:	.ascii	"arpl\0"
.balign 4
Lt_00A8:	.ascii	"bound\0"
.balign 4
Lt_00A9:	.ascii	"bsf\0"
.balign 4
Lt_00AA:	.ascii	"bsr\0"
.balign 4
Lt_00AB:	.ascii	"bswap\0"
.balign 4
Lt_00AC:	.ascii	"bt\0"
.balign 4
Lt_00AD:	.ascii	"btc\0"
.balign 4
Lt_00AE:	.ascii	"btr\0"
.balign 4
Lt_00AF:	.ascii	"bts\0"
.balign 4
Lt_00B0:	.ascii	"call\0"
.balign 4
Lt_00B1:	.ascii	"cbw\0"
.balign 4
Lt_00B2:	.ascii	"cwde\0"
.balign 4
Lt_00B3:	.ascii	"cdq\0"
.balign 4
Lt_00B4:	.ascii	"clc\0"
.balign 4
Lt_00B5:	.ascii	"cld\0"
.balign 4
Lt_00B6:	.ascii	"clflush\0"
.balign 4
Lt_00B7:	.ascii	"cli\0"
.balign 4
Lt_00B8:	.ascii	"clts\0"
.balign 4
Lt_00B9:	.ascii	"cmc\0"
.balign 4
Lt_00BA:	.ascii	"cmova\0"
.balign 4
Lt_00BB:	.ascii	"cmovae\0"
.balign 4
Lt_00BC:	.ascii	"cmovb\0"
.balign 4
Lt_00BD:	.ascii	"cmovbe\0"
.balign 4
Lt_00BE:	.ascii	"cmovc\0"
.balign 4
Lt_00BF:	.ascii	"cmove\0"
.balign 4
Lt_00C0:	.ascii	"cmovg\0"
.balign 4
Lt_00C1:	.ascii	"cmovge\0"
.balign 4
Lt_00C2:	.ascii	"cmovl\0"
.balign 4
Lt_00C3:	.ascii	"cmovle\0"
.balign 4
Lt_00C4:	.ascii	"cmovna\0"
.balign 4
Lt_00C5:	.ascii	"cmovnae\0"
.balign 4
Lt_00C6:	.ascii	"cmovnb\0"
.balign 4
Lt_00C7:	.ascii	"cmovnbe\0"
.balign 4
Lt_00C8:	.ascii	"cmovnc\0"
.balign 4
Lt_00C9:	.ascii	"cmovne\0"
.balign 4
Lt_00CA:	.ascii	"cmovng\0"
.balign 4
Lt_00CB:	.ascii	"cmovnge\0"
.balign 4
Lt_00CC:	.ascii	"cmovnl\0"
.balign 4
Lt_00CD:	.ascii	"cmovnle\0"
.balign 4
Lt_00CE:	.ascii	"cmovno\0"
.balign 4
Lt_00CF:	.ascii	"cmovnp\0"
.balign 4
Lt_00D0:	.ascii	"cmovns\0"
.balign 4
Lt_00D1:	.ascii	"cmovnz\0"
.balign 4
Lt_00D2:	.ascii	"cmovo\0"
.balign 4
Lt_00D3:	.ascii	"cmovp\0"
.balign 4
Lt_00D4:	.ascii	"cmovpe\0"
.balign 4
Lt_00D5:	.ascii	"cmovpo\0"
.balign 4
Lt_00D6:	.ascii	"cmovs\0"
.balign 4
Lt_00D7:	.ascii	"cmovz\0"
.balign 4
Lt_00D8:	.ascii	"cmp\0"
.balign 4
Lt_00D9:	.ascii	"cmppd\0"
.balign 4
Lt_00DA:	.ascii	"cmpps\0"
.balign 4
Lt_00DB:	.ascii	"cmps\0"
.balign 4
Lt_00DC:	.ascii	"cmpsb\0"
.balign 4
Lt_00DD:	.ascii	"cmpsw\0"
.balign 4
Lt_00DE:	.ascii	"cmpsd\0"
.balign 4
Lt_00DF:	.ascii	"cmpss\0"
.balign 4
Lt_00E0:	.ascii	"cmpxchg\0"
.balign 4
Lt_00E1:	.ascii	"cmpxchg8b\0"
.balign 4
Lt_00E2:	.ascii	"comisd\0"
.balign 4
Lt_00E3:	.ascii	"comiss\0"
.balign 4
Lt_00E4:	.ascii	"cpuid\0"
.balign 4
Lt_00E5:	.ascii	"cvtdq2pd\0"
.balign 4
Lt_00E6:	.ascii	"cvtdq2ps\0"
.balign 4
Lt_00E7:	.ascii	"cvtpd2dq\0"
.balign 4
Lt_00E8:	.ascii	"cvtpd2pi\0"
.balign 4
Lt_00E9:	.ascii	"cvtpd2ps\0"
.balign 4
Lt_00EA:	.ascii	"cvtpi2pd\0"
.balign 4
Lt_00EB:	.ascii	"cvtpi2ps\0"
.balign 4
Lt_00EC:	.ascii	"cvtps2dq\0"
.balign 4
Lt_00ED:	.ascii	"cvtps2pd\0"
.balign 4
Lt_00EE:	.ascii	"cvtps2pi\0"
.balign 4
Lt_00EF:	.ascii	"cvtsd2si\0"
.balign 4
Lt_00F0:	.ascii	"cvtsd2ss\0"
.balign 4
Lt_00F1:	.ascii	"cvtsi2sd\0"
.balign 4
Lt_00F2:	.ascii	"cvtsi2ss\0"
.balign 4
Lt_00F3:	.ascii	"cvtss2sd\0"
.balign 4
Lt_00F4:	.ascii	"cvtss2si\0"
.balign 4
Lt_00F5:	.ascii	"cvttpd2pi\0"
.balign 4
Lt_00F6:	.ascii	"cvttpd2dq\0"
.balign 4
Lt_00F7:	.ascii	"cvttps2dq\0"
.balign 4
Lt_00F8:	.ascii	"cvttps2pi\0"
.balign 4
Lt_00F9:	.ascii	"cvttsd2si\0"
.balign 4
Lt_00FA:	.ascii	"cvttss2si\0"
.balign 4
Lt_00FB:	.ascii	"cwd\0"
.balign 4
Lt_00FC:	.ascii	"daa\0"
.balign 4
Lt_00FD:	.ascii	"das\0"
.balign 4
Lt_00FE:	.ascii	"dec\0"
.balign 4
Lt_00FF:	.ascii	"div\0"
.balign 4
Lt_0100:	.ascii	"divpd\0"
.balign 4
Lt_0101:	.ascii	"divps\0"
.balign 4
Lt_0102:	.ascii	"divss\0"
.balign 4
Lt_0103:	.ascii	"emms\0"
.balign 4
Lt_0104:	.ascii	"enter\0"
.balign 4
Lt_0105:	.ascii	"f2xm1\0"
.balign 4
Lt_0106:	.ascii	"fabs\0"
.balign 4
Lt_0107:	.ascii	"fadd\0"
.balign 4
Lt_0108:	.ascii	"faddp\0"
.balign 4
Lt_0109:	.ascii	"fiadd\0"
.balign 4
Lt_010A:	.ascii	"fbld\0"
.balign 4
Lt_010B:	.ascii	"fbstp\0"
.balign 4
Lt_010C:	.ascii	"fchs\0"
.balign 4
Lt_010D:	.ascii	"fclex\0"
.balign 4
Lt_010E:	.ascii	"fnclex\0"
.balign 4
Lt_010F:	.ascii	"fcmovb\0"
.balign 4
Lt_0110:	.ascii	"fcmove\0"
.balign 4
Lt_0111:	.ascii	"fcmovbe\0"
.balign 4
Lt_0112:	.ascii	"fcmovu\0"
.balign 4
Lt_0113:	.ascii	"fcmovnb\0"
.balign 4
Lt_0114:	.ascii	"fcmovne\0"
.balign 4
Lt_0115:	.ascii	"fcmovnbe\0"
.balign 4
Lt_0116:	.ascii	"fcmovnu\0"
.balign 4
Lt_0117:	.ascii	"fcom\0"
.balign 4
Lt_0118:	.ascii	"fcomp\0"
.balign 4
Lt_0119:	.ascii	"fcompp\0"
.balign 4
Lt_011A:	.ascii	"fcomi\0"
.balign 4
Lt_011B:	.ascii	"fcomip\0"
.balign 4
Lt_011C:	.ascii	"fucomi\0"
.balign 4
Lt_011D:	.ascii	"fucomip\0"
.balign 4
Lt_011E:	.ascii	"fcos\0"
.balign 4
Lt_011F:	.ascii	"fdecstp\0"
.balign 4
Lt_0120:	.ascii	"fdiv\0"
.balign 4
Lt_0121:	.ascii	"fdivp\0"
.balign 4
Lt_0122:	.ascii	"fidiv\0"
.balign 4
Lt_0123:	.ascii	"fdivr\0"
.balign 4
Lt_0124:	.ascii	"fdivrp\0"
.balign 4
Lt_0125:	.ascii	"fidivr\0"
.balign 4
Lt_0126:	.ascii	"ffree\0"
.balign 4
Lt_0127:	.ascii	"ficom\0"
.balign 4
Lt_0128:	.ascii	"ficomp\0"
.balign 4
Lt_0129:	.ascii	"fild\0"
.balign 4
Lt_012A:	.ascii	"fincstp\0"
.balign 4
Lt_012B:	.ascii	"finit\0"
.balign 4
Lt_012C:	.ascii	"fninit\0"
.balign 4
Lt_012D:	.ascii	"fist\0"
.balign 4
Lt_012E:	.ascii	"fistp\0"
.balign 4
Lt_012F:	.ascii	"fld\0"
.balign 4
Lt_0130:	.ascii	"fld1\0"
.balign 4
Lt_0131:	.ascii	"fldl2t\0"
.balign 4
Lt_0132:	.ascii	"fldl2e\0"
.balign 4
Lt_0133:	.ascii	"fldpi\0"
.balign 4
Lt_0134:	.ascii	"fldlg2\0"
.balign 4
Lt_0135:	.ascii	"fldln2\0"
.balign 4
Lt_0136:	.ascii	"fldz\0"
.balign 4
Lt_0137:	.ascii	"fldcw\0"
.balign 4
Lt_0138:	.ascii	"fldenv\0"
.balign 4
Lt_0139:	.ascii	"fmul\0"
.balign 4
Lt_013A:	.ascii	"fmulp\0"
.balign 4
Lt_013B:	.ascii	"fimul\0"
.balign 4
Lt_013C:	.ascii	"fnop\0"
.balign 4
Lt_013D:	.ascii	"fpatan\0"
.balign 4
Lt_013E:	.ascii	"fprem\0"
.balign 4
Lt_013F:	.ascii	"fprem1\0"
.balign 4
Lt_0140:	.ascii	"fptan\0"
.balign 4
Lt_0141:	.ascii	"frndint\0"
.balign 4
Lt_0142:	.ascii	"frstor\0"
.balign 4
Lt_0143:	.ascii	"fsave\0"
.balign 4
Lt_0144:	.ascii	"fnsave\0"
.balign 4
Lt_0145:	.ascii	"fscale\0"
.balign 4
Lt_0146:	.ascii	"fsin\0"
.balign 4
Lt_0147:	.ascii	"fsincos\0"
.balign 4
Lt_0148:	.ascii	"fsqrt\0"
.balign 4
Lt_0149:	.ascii	"fst\0"
.balign 4
Lt_014A:	.ascii	"fstp\0"
.balign 4
Lt_014B:	.ascii	"fstcw\0"
.balign 4
Lt_014C:	.ascii	"fnstcw\0"
.balign 4
Lt_014D:	.ascii	"fstenv\0"
.balign 4
Lt_014E:	.ascii	"fnstenv\0"
.balign 4
Lt_014F:	.ascii	"fstsw\0"
.balign 4
Lt_0150:	.ascii	"fnstsw\0"
.balign 4
Lt_0151:	.ascii	"fsub\0"
.balign 4
Lt_0152:	.ascii	"fsubp\0"
.balign 4
Lt_0153:	.ascii	"fisub\0"
.balign 4
Lt_0154:	.ascii	"fsubr\0"
.balign 4
Lt_0155:	.ascii	"fsubrp\0"
.balign 4
Lt_0156:	.ascii	"fisubr\0"
.balign 4
Lt_0157:	.ascii	"ftst\0"
.balign 4
Lt_0158:	.ascii	"fucom\0"
.balign 4
Lt_0159:	.ascii	"fucomp\0"
.balign 4
Lt_015A:	.ascii	"fucompp\0"
.balign 4
Lt_015B:	.ascii	"fwait\0"
.balign 4
Lt_015C:	.ascii	"fxam\0"
.balign 4
Lt_015D:	.ascii	"fxch\0"
.balign 4
Lt_015E:	.ascii	"fxrstor\0"
.balign 4
Lt_015F:	.ascii	"fxsave\0"
.balign 4
Lt_0160:	.ascii	"fxtract\0"
.balign 4
Lt_0161:	.ascii	"fyl2x\0"
.balign 4
Lt_0162:	.ascii	"fyl2xp1\0"
.balign 4
Lt_0163:	.ascii	"hlt\0"
.balign 4
Lt_0164:	.ascii	"idiv\0"
.balign 4
Lt_0165:	.ascii	"imul\0"
.balign 4
Lt_0166:	.ascii	"in\0"
.balign 4
Lt_0167:	.ascii	"inc\0"
.balign 4
Lt_0168:	.ascii	"ins\0"
.balign 4
Lt_0169:	.ascii	"insb\0"
.balign 4
Lt_016A:	.ascii	"insw\0"
.balign 4
Lt_016B:	.ascii	"insd\0"
.balign 4
Lt_016C:	.ascii	"int\0"
.balign 4
Lt_016D:	.ascii	"into\0"
.balign 4
Lt_016E:	.ascii	"invd\0"
.balign 4
Lt_016F:	.ascii	"invlpg\0"
.balign 4
Lt_0170:	.ascii	"iret\0"
.balign 4
Lt_0171:	.ascii	"iretd\0"
.balign 4
Lt_0172:	.ascii	"ja\0"
.balign 4
Lt_0173:	.ascii	"jae\0"
.balign 4
Lt_0174:	.ascii	"jb\0"
.balign 4
Lt_0175:	.ascii	"jbe\0"
.balign 4
Lt_0176:	.ascii	"jc\0"
.balign 4
Lt_0177:	.ascii	"jcxz\0"
.balign 4
Lt_0178:	.ascii	"jecxz\0"
.balign 4
Lt_0179:	.ascii	"je\0"
.balign 4
Lt_017A:	.ascii	"jg\0"
.balign 4
Lt_017B:	.ascii	"jge\0"
.balign 4
Lt_017C:	.ascii	"jl\0"
.balign 4
Lt_017D:	.ascii	"jle\0"
.balign 4
Lt_017E:	.ascii	"jna\0"
.balign 4
Lt_017F:	.ascii	"jnae\0"
.balign 4
Lt_0180:	.ascii	"jnb\0"
.balign 4
Lt_0181:	.ascii	"jnbe\0"
.balign 4
Lt_0182:	.ascii	"jnc\0"
.balign 4
Lt_0183:	.ascii	"jne\0"
.balign 4
Lt_0184:	.ascii	"jng\0"
.balign 4
Lt_0185:	.ascii	"jnge\0"
.balign 4
Lt_0186:	.ascii	"jnl\0"
.balign 4
Lt_0187:	.ascii	"jnle\0"
.balign 4
Lt_0188:	.ascii	"jno\0"
.balign 4
Lt_0189:	.ascii	"jnp\0"
.balign 4
Lt_018A:	.ascii	"jns\0"
.balign 4
Lt_018B:	.ascii	"jnz\0"
.balign 4
Lt_018C:	.ascii	"jo\0"
.balign 4
Lt_018D:	.ascii	"jp\0"
.balign 4
Lt_018E:	.ascii	"jpe\0"
.balign 4
Lt_018F:	.ascii	"jpo\0"
.balign 4
Lt_0190:	.ascii	"js\0"
.balign 4
Lt_0191:	.ascii	"jz\0"
.balign 4
Lt_0192:	.ascii	"jmp\0"
.balign 4
Lt_0193:	.ascii	"lahf\0"
.balign 4
Lt_0194:	.ascii	"lar\0"
.balign 4
Lt_0195:	.ascii	"ldmxcsr\0"
.balign 4
Lt_0196:	.ascii	"lds\0"
.balign 4
Lt_0197:	.ascii	"les\0"
.balign 4
Lt_0198:	.ascii	"lfs\0"
.balign 4
Lt_0199:	.ascii	"lgs\0"
.balign 4
Lt_019A:	.ascii	"lss\0"
.balign 4
Lt_019B:	.ascii	"lea\0"
.balign 4
Lt_019C:	.ascii	"leave\0"
.balign 4
Lt_019D:	.ascii	"lfence\0"
.balign 4
Lt_019E:	.ascii	"lgdt\0"
.balign 4
Lt_019F:	.ascii	"lidt\0"
.balign 4
Lt_01A0:	.ascii	"lldt\0"
.balign 4
Lt_01A1:	.ascii	"lmsw\0"
.balign 4
Lt_01A2:	.ascii	"lock\0"
.balign 4
Lt_01A3:	.ascii	"lods\0"
.balign 4
Lt_01A4:	.ascii	"lodsb\0"
.balign 4
Lt_01A5:	.ascii	"lodsw\0"
.balign 4
Lt_01A6:	.ascii	"lodsd\0"
.balign 4
Lt_01A7:	.ascii	"loop\0"
.balign 4
Lt_01A8:	.ascii	"loope\0"
.balign 4
Lt_01A9:	.ascii	"loopz\0"
.balign 4
Lt_01AA:	.ascii	"loopne\0"
.balign 4
Lt_01AB:	.ascii	"loopnz\0"
.balign 4
Lt_01AC:	.ascii	"lsl\0"
.balign 4
Lt_01AD:	.ascii	"ltr\0"
.balign 4
Lt_01AE:	.ascii	"maskmovdqu\0"
.balign 4
Lt_01AF:	.ascii	"maskmovq\0"
.balign 4
Lt_01B0:	.ascii	"maxpd\0"
.balign 4
Lt_01B1:	.ascii	"maxps\0"
.balign 4
Lt_01B2:	.ascii	"maxsd\0"
.balign 4
Lt_01B3:	.ascii	"maxss\0"
.balign 4
Lt_01B4:	.ascii	"mfence\0"
.balign 4
Lt_01B5:	.ascii	"minpd\0"
.balign 4
Lt_01B6:	.ascii	"minps\0"
.balign 4
Lt_01B7:	.ascii	"minsd\0"
.balign 4
Lt_01B8:	.ascii	"minss\0"
.balign 4
Lt_01B9:	.ascii	"mov\0"
.balign 4
Lt_01BA:	.ascii	"movapd\0"
.balign 4
Lt_01BB:	.ascii	"movaps\0"
.balign 4
Lt_01BC:	.ascii	"movd\0"
.balign 4
Lt_01BD:	.ascii	"movdqa\0"
.balign 4
Lt_01BE:	.ascii	"movdqu\0"
.balign 4
Lt_01BF:	.ascii	"movdq2q\0"
.balign 4
Lt_01C0:	.ascii	"movhlps\0"
.balign 4
Lt_01C1:	.ascii	"movhpd\0"
.balign 4
Lt_01C2:	.ascii	"movhps\0"
.balign 4
Lt_01C3:	.ascii	"movlhps\0"
.balign 4
Lt_01C4:	.ascii	"movlpd\0"
.balign 4
Lt_01C5:	.ascii	"movlps\0"
.balign 4
Lt_01C6:	.ascii	"movmskpd\0"
.balign 4
Lt_01C7:	.ascii	"movmskps\0"
.balign 4
Lt_01C8:	.ascii	"movntdq\0"
.balign 4
Lt_01C9:	.ascii	"movnti\0"
.balign 4
Lt_01CA:	.ascii	"movntpd\0"
.balign 4
Lt_01CB:	.ascii	"movntps\0"
.balign 4
Lt_01CC:	.ascii	"movntq\0"
.balign 4
Lt_01CD:	.ascii	"movq\0"
.balign 4
Lt_01CE:	.ascii	"movq2dq\0"
.balign 4
Lt_01CF:	.ascii	"movs\0"
.balign 4
Lt_01D0:	.ascii	"movsb\0"
.balign 4
Lt_01D1:	.ascii	"movsw\0"
.balign 4
Lt_01D2:	.ascii	"movsd\0"
.balign 4
Lt_01D3:	.ascii	"movss\0"
.balign 4
Lt_01D4:	.ascii	"movsx\0"
.balign 4
Lt_01D5:	.ascii	"movupd\0"
.balign 4
Lt_01D6:	.ascii	"movups\0"
.balign 4
Lt_01D7:	.ascii	"movzx\0"
.balign 4
Lt_01D8:	.ascii	"mul\0"
.balign 4
Lt_01D9:	.ascii	"mulpd\0"
.balign 4
Lt_01DA:	.ascii	"mulps\0"
.balign 4
Lt_01DB:	.ascii	"mulsd\0"
.balign 4
Lt_01DC:	.ascii	"mulss\0"
.balign 4
Lt_01DD:	.ascii	"neg\0"
.balign 4
Lt_01DE:	.ascii	"nop\0"
.balign 4
Lt_01DF:	.ascii	"not\0"
.balign 4
Lt_01E0:	.ascii	"or\0"
.balign 4
Lt_01E1:	.ascii	"orpd\0"
.balign 4
Lt_01E2:	.ascii	"orps\0"
.balign 4
Lt_01E3:	.ascii	"out\0"
.balign 4
Lt_01E4:	.ascii	"outs\0"
.balign 4
Lt_01E5:	.ascii	"outsb\0"
.balign 4
Lt_01E6:	.ascii	"outsw\0"
.balign 4
Lt_01E7:	.ascii	"outsd\0"
.balign 4
Lt_01E8:	.ascii	"packsswb\0"
.balign 4
Lt_01E9:	.ascii	"packssdw\0"
.balign 4
Lt_01EA:	.ascii	"packuswb\0"
.balign 4
Lt_01EB:	.ascii	"paddb\0"
.balign 4
Lt_01EC:	.ascii	"paddw\0"
.balign 4
Lt_01ED:	.ascii	"paddd\0"
.balign 4
Lt_01EE:	.ascii	"paddq\0"
.balign 4
Lt_01EF:	.ascii	"paddsb\0"
.balign 4
Lt_01F0:	.ascii	"paddsw\0"
.balign 4
Lt_01F1:	.ascii	"paddusb\0"
.balign 4
Lt_01F2:	.ascii	"paddusw\0"
.balign 4
Lt_01F3:	.ascii	"pand\0"
.balign 4
Lt_01F4:	.ascii	"pandn\0"
.balign 4
Lt_01F5:	.ascii	"pause\0"
.balign 4
Lt_01F6:	.ascii	"pavgb\0"
.balign 4
Lt_01F7:	.ascii	"pavgw\0"
.balign 4
Lt_01F8:	.ascii	"pcmpeqb\0"
.balign 4
Lt_01F9:	.ascii	"pcmpeqw\0"
.balign 4
Lt_01FA:	.ascii	"pcmpeqd\0"
.balign 4
Lt_01FB:	.ascii	"pcmpgtb\0"
.balign 4
Lt_01FC:	.ascii	"pcmpgtw\0"
.balign 4
Lt_01FD:	.ascii	"pcmpgtd\0"
.balign 4
Lt_01FE:	.ascii	"pextrw\0"
.balign 4
Lt_01FF:	.ascii	"pinsrw\0"
.balign 4
Lt_0200:	.ascii	"pmaddwd\0"
.balign 4
Lt_0201:	.ascii	"pmaxsw\0"
.balign 4
Lt_0202:	.ascii	"pmaxub\0"
.balign 4
Lt_0203:	.ascii	"pminsw\0"
.balign 4
Lt_0204:	.ascii	"pminub\0"
.balign 4
Lt_0205:	.ascii	"pmovmskb\0"
.balign 4
Lt_0206:	.ascii	"pmulhuv\0"
.balign 4
Lt_0207:	.ascii	"pmulhw\0"
.balign 4
Lt_0208:	.ascii	"pmullw\0"
.balign 4
Lt_0209:	.ascii	"pmuludq\0"
.balign 4
Lt_020A:	.ascii	"pop\0"
.balign 4
Lt_020B:	.ascii	"popa\0"
.balign 4
Lt_020C:	.ascii	"popad\0"
.balign 4
Lt_020D:	.ascii	"popf\0"
.balign 4
Lt_020E:	.ascii	"popfd\0"
.balign 4
Lt_020F:	.ascii	"por\0"
.balign 4
Lt_0210:	.ascii	"prefetcht0\0"
.balign 4
Lt_0211:	.ascii	"prefetcht1\0"
.balign 4
Lt_0212:	.ascii	"prefetcht2\0"
.balign 4
Lt_0213:	.ascii	"prefetchnta\0"
.balign 4
Lt_0214:	.ascii	"psadbw\0"
.balign 4
Lt_0215:	.ascii	"pshufd\0"
.balign 4
Lt_0216:	.ascii	"pshufhw\0"
.balign 4
Lt_0217:	.ascii	"pshuflw\0"
.balign 4
Lt_0218:	.ascii	"pshufw\0"
.balign 4
Lt_0219:	.ascii	"psllw\0"
.balign 4
Lt_021A:	.ascii	"pslld\0"
.balign 4
Lt_021B:	.ascii	"psllq\0"
.balign 4
Lt_021C:	.ascii	"psraw\0"
.balign 4
Lt_021D:	.ascii	"psrad\0"
.balign 4
Lt_021E:	.ascii	"psrldq\0"
.balign 4
Lt_021F:	.ascii	"psrlw\0"
.balign 4
Lt_0220:	.ascii	"psrld\0"
.balign 4
Lt_0221:	.ascii	"psrlq\0"
.balign 4
Lt_0222:	.ascii	"psubb\0"
.balign 4
Lt_0223:	.ascii	"psubw\0"
.balign 4
Lt_0224:	.ascii	"psubd\0"
.balign 4
Lt_0225:	.ascii	"psubq\0"
.balign 4
Lt_0226:	.ascii	"psubsb\0"
.balign 4
Lt_0227:	.ascii	"psubsw\0"
.balign 4
Lt_0228:	.ascii	"psubusb\0"
.balign 4
Lt_0229:	.ascii	"psubusw\0"
.balign 4
Lt_022A:	.ascii	"punpckhbw\0"
.balign 4
Lt_022B:	.ascii	"punpckhwd\0"
.balign 4
Lt_022C:	.ascii	"punpckhdq\0"
.balign 4
Lt_022D:	.ascii	"punpckhqdq\0"
.balign 4
Lt_022E:	.ascii	"punpcklbw\0"
.balign 4
Lt_022F:	.ascii	"punpcklwd\0"
.balign 4
Lt_0230:	.ascii	"punpckldq\0"
.balign 4
Lt_0231:	.ascii	"punpcklqdq\0"
.balign 4
Lt_0232:	.ascii	"push\0"
.balign 4
Lt_0233:	.ascii	"pusha\0"
.balign 4
Lt_0234:	.ascii	"pushad\0"
.balign 4
Lt_0235:	.ascii	"pushf\0"
.balign 4
Lt_0236:	.ascii	"pushfd\0"
.balign 4
Lt_0237:	.ascii	"pxor\0"
.balign 4
Lt_0238:	.ascii	"rcl\0"
.balign 4
Lt_0239:	.ascii	"rcr\0"
.balign 4
Lt_023A:	.ascii	"rol\0"
.balign 4
Lt_023B:	.ascii	"ror\0"
.balign 4
Lt_023C:	.ascii	"rcpps\0"
.balign 4
Lt_023D:	.ascii	"rcpss\0"
.balign 4
Lt_023E:	.ascii	"rdmsr\0"
.balign 4
Lt_023F:	.ascii	"rdpmc\0"
.balign 4
Lt_0240:	.ascii	"rdtsc\0"
.balign 4
Lt_0241:	.ascii	"rep\0"
.balign 4
Lt_0242:	.ascii	"repe\0"
.balign 4
Lt_0243:	.ascii	"repz\0"
.balign 4
Lt_0244:	.ascii	"repne\0"
.balign 4
Lt_0245:	.ascii	"repnz\0"
.balign 4
Lt_0246:	.ascii	"ret\0"
.balign 4
Lt_0247:	.ascii	"rsm\0"
.balign 4
Lt_0248:	.ascii	"rsqrtps\0"
.balign 4
Lt_0249:	.ascii	"rsqrtss\0"
.balign 4
Lt_024A:	.ascii	"sahf\0"
.balign 4
Lt_024B:	.ascii	"sal\0"
.balign 4
Lt_024C:	.ascii	"sar\0"
.balign 4
Lt_024D:	.ascii	"shl\0"
.balign 4
Lt_024E:	.ascii	"shr\0"
.balign 4
Lt_024F:	.ascii	"sbb\0"
.balign 4
Lt_0250:	.ascii	"scas\0"
.balign 4
Lt_0251:	.ascii	"scasb\0"
.balign 4
Lt_0252:	.ascii	"scasw\0"
.balign 4
Lt_0253:	.ascii	"scasd\0"
.balign 4
Lt_0254:	.ascii	"seta\0"
.balign 4
Lt_0255:	.ascii	"setae\0"
.balign 4
Lt_0256:	.ascii	"setb\0"
.balign 4
Lt_0257:	.ascii	"setbe\0"
.balign 4
Lt_0258:	.ascii	"setc\0"
.balign 4
Lt_0259:	.ascii	"sete\0"
.balign 4
Lt_025A:	.ascii	"setg\0"
.balign 4
Lt_025B:	.ascii	"setge\0"
.balign 4
Lt_025C:	.ascii	"setl\0"
.balign 4
Lt_025D:	.ascii	"setle\0"
.balign 4
Lt_025E:	.ascii	"setna\0"
.balign 4
Lt_025F:	.ascii	"setnae\0"
.balign 4
Lt_0260:	.ascii	"setnb\0"
.balign 4
Lt_0261:	.ascii	"setnbe\0"
.balign 4
Lt_0262:	.ascii	"setnc\0"
.balign 4
Lt_0263:	.ascii	"setne\0"
.balign 4
Lt_0264:	.ascii	"setng\0"
.balign 4
Lt_0265:	.ascii	"setnge\0"
.balign 4
Lt_0266:	.ascii	"setnl\0"
.balign 4
Lt_0267:	.ascii	"setnle\0"
.balign 4
Lt_0268:	.ascii	"setno\0"
.balign 4
Lt_0269:	.ascii	"setnp\0"
.balign 4
Lt_026A:	.ascii	"setns\0"
.balign 4
Lt_026B:	.ascii	"setnz\0"
.balign 4
Lt_026C:	.ascii	"seto\0"
.balign 4
Lt_026D:	.ascii	"setp\0"
.balign 4
Lt_026E:	.ascii	"setpe\0"
.balign 4
Lt_026F:	.ascii	"setpo\0"
.balign 4
Lt_0270:	.ascii	"sets\0"
.balign 4
Lt_0271:	.ascii	"setz\0"
.balign 4
Lt_0272:	.ascii	"sfence\0"
.balign 4
Lt_0273:	.ascii	"sgdt\0"
.balign 4
Lt_0274:	.ascii	"sidt\0"
.balign 4
Lt_0275:	.ascii	"shld\0"
.balign 4
Lt_0276:	.ascii	"shrd\0"
.balign 4
Lt_0277:	.ascii	"shufpd\0"
.balign 4
Lt_0278:	.ascii	"shufps\0"
.balign 4
Lt_0279:	.ascii	"sldt\0"
.balign 4
Lt_027A:	.ascii	"smsw\0"
.balign 4
Lt_027B:	.ascii	"sqrtpd\0"
.balign 4
Lt_027C:	.ascii	"sqrtps\0"
.balign 4
Lt_027D:	.ascii	"sqrtsd\0"
.balign 4
Lt_027E:	.ascii	"sqrtss\0"
.balign 4
Lt_027F:	.ascii	"stc\0"
.balign 4
Lt_0280:	.ascii	"std\0"
.balign 4
Lt_0281:	.ascii	"sti\0"
.balign 4
Lt_0282:	.ascii	"stmxcsr\0"
.balign 4
Lt_0283:	.ascii	"stos\0"
.balign 4
Lt_0284:	.ascii	"stosb\0"
.balign 4
Lt_0285:	.ascii	"stosw\0"
.balign 4
Lt_0286:	.ascii	"stosd\0"
.balign 4
Lt_0287:	.ascii	"str\0"
.balign 4
Lt_0288:	.ascii	"sub\0"
.balign 4
Lt_0289:	.ascii	"subpd\0"
.balign 4
Lt_028A:	.ascii	"subps\0"
.balign 4
Lt_028B:	.ascii	"subsd\0"
.balign 4
Lt_028C:	.ascii	"subss\0"
.balign 4
Lt_028D:	.ascii	"sysenter\0"
.balign 4
Lt_028E:	.ascii	"sysexit\0"
.balign 4
Lt_028F:	.ascii	"test\0"
.balign 4
Lt_0290:	.ascii	"ucomisd\0"
.balign 4
Lt_0291:	.ascii	"ucomiss\0"
.balign 4
Lt_0292:	.ascii	"ud2\0"
.balign 4
Lt_0293:	.ascii	"unpckhpd\0"
.balign 4
Lt_0294:	.ascii	"unpckhps\0"
.balign 4
Lt_0295:	.ascii	"unpcklpd\0"
.balign 4
Lt_0296:	.ascii	"unpcklps\0"
.balign 4
Lt_0297:	.ascii	"verr\0"
.balign 4
Lt_0298:	.ascii	"verw\0"
.balign 4
Lt_0299:	.ascii	"wait\0"
.balign 4
Lt_029A:	.ascii	"wbinvd\0"
.balign 4
Lt_029B:	.ascii	"wrmsr\0"
.balign 4
Lt_029C:	.ascii	"xadd\0"
.balign 4
Lt_029D:	.ascii	"xchg\0"
.balign 4
Lt_029E:	.ascii	"xlat\0"
.balign 4
Lt_029F:	.ascii	"xlatb\0"
.balign 4
Lt_02A0:	.ascii	"xor\0"
.balign 4
Lt_02A1:	.ascii	"xorpd\0"
.balign 4
Lt_02A2:	.ascii	"xorps\0"
.balign 4
Lt_02A3:	.ascii	"pavgusb\0"
.balign 4
Lt_02A4:	.ascii	"pfadd\0"
.balign 4
Lt_02A5:	.ascii	"pfsub\0"
.balign 4
Lt_02A6:	.ascii	"pfsubr\0"
.balign 4
Lt_02A7:	.ascii	"pfacc\0"
.balign 4
Lt_02A8:	.ascii	"pfcmpge\0"
.balign 4
Lt_02A9:	.ascii	"pfcmpgt\0"
.balign 4
Lt_02AA:	.ascii	"pfcmpeq\0"
.balign 4
Lt_02AB:	.ascii	"pfmin\0"
.balign 4
Lt_02AC:	.ascii	"pfmax\0"
.balign 4
Lt_02AD:	.ascii	"pi2fw\0"
.balign 4
Lt_02AE:	.ascii	"pi2fd\0"
.balign 4
Lt_02AF:	.ascii	"pf2iw\0"
.balign 4
Lt_02B0:	.ascii	"pf2id\0"
.balign 4
Lt_02B1:	.ascii	"pfrcp\0"
.balign 4
Lt_02B2:	.ascii	"pfrsqrt\0"
.balign 4
Lt_02B3:	.ascii	"pfmul\0"
.balign 4
Lt_02B4:	.ascii	"pfrcpit1\0"
.balign 4
Lt_02B5:	.ascii	"pfrsqit1\0"
.balign 4
Lt_02B6:	.ascii	"pfrcpit2\0"
.balign 4
Lt_02B7:	.ascii	"pmulhrw\0"
.balign 4
Lt_02B8:	.ascii	"pswapw\0"
.balign 4
Lt_02B9:	.ascii	"femms\0"
.balign 4
Lt_02BA:	.ascii	"prefetch\0"
.balign 4
Lt_02BB:	.ascii	"prefetchw\0"
.balign 4
Lt_02BC:	.ascii	"pfnacc\0"
.balign 4
Lt_02BD:	.ascii	"pfpnacc\0"
.balign 4
Lt_02BE:	.ascii	"pswapd\0"
.balign 4
Lt_02BF:	.ascii	"pmulhuw\0"

.section .bss
.balign 4
	.lcomm	ASMKEYWORDS,16

.section .rodata
.balign 4
Lt_02FE:	.ascii	"\"\0"

.section .ctors, "aw", @progbits
.int fb_ctor__parserzinlineasm
