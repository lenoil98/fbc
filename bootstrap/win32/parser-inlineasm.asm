	.intel_syntax noprefix

.section .text
.balign 16

.globl _PARSERINLINEASMEND@0
_PARSERINLINEASMEND@0:
.Lt_02CC:
cmp dword ptr [_ASMKEYWORDS], 0
je .Lt_02CF
lea eax, [_ASMKEYWORDS+4]
push eax
call _HASHEND@4
mov dword ptr [_ASMKEYWORDS], 0
.Lt_02CF:
.Lt_02CE:
.Lt_02CD:
ret
.balign 16

.globl _CASMCODE@0
_CASMCODE@0:
push ebp
mov ebp, esp
sub esp, 60
push ebx
.Lt_02D0:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-20], 0
.Lt_02D2:
push 1028
call _LEXGETTOKEN@4
mov dword ptr [ebp-28], eax
mov eax, dword ptr [ebp-28]
mov dword ptr [ebp-32], eax
jmp .Lt_02D6
.Lt_02D8:
jmp .Lt_02D3
jmp .Lt_02D5
.Lt_02D6:
mov eax, dword ptr [ebp-32]
add eax, 4294967040
cmp eax, 84
ja .Lt_02D5
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.LT_02D9+eax*4-1024]
_.LT_02D9:
.int .Lt_02D8
.int .Lt_02D8
.int .Lt_02D5
.int .Lt_02D8
.int .Lt_02D8
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D5
.int .Lt_02D8
.Lt_02D5:
push 0
push 0
call _LEXGETTEXT@0
push eax
push 1025
push offset _Lt_031A
call _fb_StrAssign@20
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-24], 0
push 1028
call _LEXGETCLASS@4
mov dword ptr [ebp-32], eax
jmp .Lt_02DB
.Lt_02DD:
cmp dword ptr [ebp-28], 464
jne .Lt_02DF
push -1
push dword ptr [ebp-28]
call _CMATHFUNCT@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_02E1
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .Lt_02E3
push 0
push -1
push dword ptr [ebp-12]
call _ASTCONSTFLUSHTOSTR@4
push eax
push 1025
push offset _Lt_031A
call _fb_StrAssign@20
jmp .Lt_02E2
.Lt_02E3:
push 0
push 0
push 11
call _ERRREPORT@12
mov dword ptr [ebp-24], -1
.Lt_02E2:
jmp .Lt_02E0
.Lt_02E1:
push 0
push 0
push 17
call _ERRREPORT@12
mov dword ptr [ebp-24], -1
.Lt_02E0:
jmp .Lt_02DE
.Lt_02DF:
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 0
push offset _Lt_031A
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-44]
call _HISASMKEYWORD@4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-48], eax
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-48], 0
je .Lt_02E4
push 34
lea eax, [ebp-52]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-4], eax
.Lt_02E7:
cmp dword ptr [ebp-4], 0
je .Lt_02E8
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-56], ebx
.Lt_02E9:
mov ebx, dword ptr [ebp-56]
mov eax, dword ptr [ebx]
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 3
je .Lt_02EF
.Lt_02F0:
cmp dword ptr [ebp-60], 7
jne .Lt_02EE
.Lt_02EF:
mov eax, dword ptr [ebp-56]
mov dword ptr [ebp-8], eax
jmp .Lt_02E8
jmp .Lt_02EC
.Lt_02EE:
cmp dword ptr [ebp-60], 2
jne .Lt_02F1
.Lt_02F2:
push 0
push -1
push dword ptr [ebp-56]
call _SYMBGETCONSTVALUEASSTR@4
push eax
push 1025
push offset _Lt_031A
call _fb_StrAssign@20
jmp .Lt_02E8
jmp .Lt_02EC
.Lt_02F1:
cmp dword ptr [ebp-60], 1
jne .Lt_02F3
.Lt_02F4:
push 1
push dword ptr [ebp-4]
call _SYMBFINDBYCLASS@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_02F6
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2
.Lt_02F6:
.Lt_02F5:
jmp .Lt_02E8
.Lt_02F3:
.Lt_02EC:
mov eax, dword ptr [ebp-56]
mov ebx, dword ptr [eax+160]
mov dword ptr [ebp-56], ebx
.Lt_02EB:
cmp dword ptr [ebp-56], 0
jne .Lt_02E9
.Lt_02EA:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov dword ptr [ebp-4], eax
jmp .Lt_02E7
.Lt_02E8:
.Lt_02E4:
.Lt_02DE:
jmp .Lt_02DA
.Lt_02F7:
push 0
call _CNUMLITERAL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_02F9
push 0
push -1
push dword ptr [ebp-12]
call _ASTCONSTFLUSHTOSTR@4
push eax
push 1025
push offset _Lt_031A
call _fb_StrAssign@20
.Lt_02F9:
.Lt_02F8:
jmp .Lt_02DA
.Lt_02FA:
push 0
call _CSTRLITERAL@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_02FC
push dword ptr [ebp-12]
call _ASTGETSTRLITSYMBOL@4
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .Lt_02FE
push 0
push 2
push offset _Lt_02FF
push 1025
push offset _Lt_031A
call _fb_StrAssign@20
mov eax, dword ptr [ebp-36]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
je .Lt_0301
push 0
push -1
push 0
mov ebx, dword ptr [ebp-36]
push dword ptr [ebx+56]
push 1025
push offset _Lt_031A
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea ebx, [ebp-60]
push ebx
call _fb_StrConcat@20
push eax
push 1025
push offset _Lt_031A
call _fb_StrAssign@20
jmp .Lt_0300
.Lt_0301:
push 0
mov eax, dword ptr [ebp-36]
push dword ptr [eax+56]
push 1025
push offset _Lt_031A
call _fb_WstrConcatAW@12
mov dword ptr [ebp-52], eax
push dword ptr [ebp-52]
push 1025
push offset _Lt_031A
call _fb_WstrAssignToA@16
push dword ptr [ebp-52]
call _fb_WstrDelete@4
.Lt_0300:
push 0
push -1
push 2
push offset _Lt_02FF
push 1025
push offset _Lt_031A
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push 1025
push offset _Lt_031A
call _fb_StrAssign@20
.Lt_02FE:
.Lt_02FD:
push dword ptr [ebp-12]
call _ASTDELTREE@4
.Lt_02FC:
.Lt_02FB:
jmp .Lt_02DA
.Lt_0305:
cmp dword ptr [ebp-28], 346
jne .Lt_0307
.Lt_0308:
push dword ptr [_PARSER+104]
call _SYMBGETPROCRESULT@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_030A
push 0
push 0
push 17
call _ERRREPORT@12
mov dword ptr [ebp-24], -1
jmp .Lt_0309
.Lt_030A:
mov eax, dword ptr [ebp-8]
or dword ptr [eax+12], 2
.Lt_0309:
jmp .Lt_0306
.Lt_0307:
cmp dword ptr [ebp-28], 404
jne .Lt_030B
.Lt_030C:
push -1
push dword ptr [ebp-28]
call _CTYPECONVEXPR@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
je .Lt_030E
mov eax, dword ptr [ebp-12]
cmp dword ptr [eax], 16
jne .Lt_0310
push 0
push -1
push dword ptr [ebp-12]
call _ASTCONSTFLUSHTOSTR@4
push eax
push 1025
push offset _Lt_031A
call _fb_StrAssign@20
jmp .Lt_030F
.Lt_0310:
push 0
push 0
push 11
call _ERRREPORT@12
mov dword ptr [ebp-24], -1
.Lt_030F:
jmp .Lt_030D
.Lt_030E:
push 0
push 0
push 17
call _ERRREPORT@12
mov dword ptr [ebp-24], -1
.Lt_030D:
.Lt_030B:
.Lt_0306:
jmp .Lt_02DA
.Lt_02DB:
cmp dword ptr [ebp-32], 4
ja .Lt_02DA
mov eax, dword ptr [ebp-32]
jmp dword ptr [_.LT_0311+eax*4]
_.LT_0311:
.int .Lt_02DD
.int .Lt_0305
.int .Lt_02DD
.int .Lt_02F7
.int .Lt_02FA
.Lt_02DA:
cmp dword ptr [ebp-24], 0
jne .Lt_0313
cmp dword ptr [ebp-8], 0
je .Lt_0315
push dword ptr [ebp-8]
push dword ptr [ebp-20]
call _ASTASMAPPENDSYMB@8
mov dword ptr [ebp-20], eax
jmp .Lt_0314
.Lt_0315:
push offset _Lt_031A
push dword ptr [ebp-20]
call _ASTASMAPPENDTEXT@8
mov dword ptr [ebp-20], eax
.Lt_0314:
cmp dword ptr [ebp-16], 0
jne .Lt_0317
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
.Lt_0317:
.Lt_0316:
.Lt_0313:
.Lt_0312:
push 1028
call _LEXSKIPTOKEN@4
.Lt_02D4:
jmp .Lt_02D2
.Lt_02D3:
cmp dword ptr [ebp-16], 0
je .Lt_0319
push dword ptr [ebp-16]
call _ASTNEWASM@4
push eax
call _ASTADD@4
.Lt_0319:
.Lt_0318:
.Lt_02D1:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_031A,1025

.section .text
.balign 16

.globl _CASMBLOCK@0
_CASMBLOCK@0:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_031C:
mov dword ptr [ebp-4], 0
push 0
call _LEXGETTOKEN@4
cmp eax, 344
je .Lt_031F
jmp .Lt_031D
.Lt_031F:
.Lt_031E:
push 1
call _CCOMPSTMTISALLOWED@4
test eax, eax
jne .Lt_0321
push 0
push -1
push 344
call _HSKIPCOMPOUND@12
jmp .Lt_031D
.Lt_0321:
.Lt_0320:
push 2048
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-8], 0
push 0
call _CCOMMENT@4
test eax, eax
je .Lt_0323
cmp dword ptr [_ENV+148], 0
je .Lt_0325
cmp dword ptr [_ENV+876], 0
jne .Lt_0327
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+24816]
call _ASTNEWLIT@4
push eax
call _ASTADD@4
mov eax, dword ptr [_LEX+422144]
lea ebx, [eax+24816]
push ebx
call _DZSTRRESET@4
.Lt_0327:
.Lt_0326:
.Lt_0325:
.Lt_0324:
push 0
call _CSTMTSEPARATOR@4
test eax, eax
jne .Lt_0329
push 0
push 0
push 3
call _ERRREPORT@12
push 0
push 0
push -1
push 257
call _HSKIPUNTIL@16
.Lt_0329:
.Lt_0328:
jmp .Lt_0322
.Lt_0323:
push 0
call _CSTMTSEPARATOR@4
test eax, eax
jne .Lt_032B
mov dword ptr [ebp-8], -1
.Lt_032B:
.Lt_032A:
.Lt_0322:
.Lt_032C:
cmp dword ptr [ebp-8], 0
jne .Lt_0330
push dword ptr [_ENV+544]
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+8372]
push 113
call _ASTNEWDBG@12
push eax
call _ASTADD@4
.Lt_0330:
.Lt_032F:
call _CASMCODE@0
push 1028
call _CCOMMENT@4
cmp dword ptr [_ENV+148], 0
je .Lt_0332
cmp dword ptr [_ENV+876], 0
jne .Lt_0334
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+24816]
call _ASTNEWLIT@4
push eax
call _ASTADD@4
mov eax, dword ptr [_LEX+422144]
lea ebx, [eax+24816]
push ebx
call _DZSTRRESET@4
.Lt_0334:
.Lt_0333:
.Lt_0332:
.Lt_0331:
push 0
call _LEXGETTOKEN@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 257
jne .Lt_0337
.Lt_0338:
cmp dword ptr [ebp-8], 0
je .Lt_033A
jmp .Lt_032D
.Lt_033A:
.Lt_0339:
push 0
call _LEXSKIPTOKEN@4
jmp .Lt_0335
.Lt_0337:
cmp dword ptr [ebp-12], 256
jne .Lt_033B
.Lt_033C:
jmp .Lt_032D
jmp .Lt_0335
.Lt_033B:
cmp dword ptr [ebp-12], 340
jne .Lt_033D
.Lt_033E:
jmp .Lt_032D
jmp .Lt_0335
.Lt_033D:
push 0
push 0
push 3
call _ERRREPORT@12
push 0
push 0
push -1
push 257
call _HSKIPUNTIL@16
.Lt_033F:
.Lt_0335:
cmp dword ptr [ebp-8], 0
jne .Lt_0341
push 0
push 0
push 114
call _ASTNEWDBG@12
push eax
call _ASTADD@4
.Lt_0341:
.Lt_0340:
.Lt_032E:
jmp .Lt_032C
.Lt_032D:
cmp dword ptr [ebp-8], 0
jne .Lt_0343
push 2048
push 340
call _HMATCH@8
test eax, eax
jne .Lt_0345
push 0
push 0
push 45
call _ERRREPORT@12
jmp .Lt_0344
.Lt_0345:
push 2048
push 344
call _HMATCH@8
test eax, eax
jne .Lt_0347
push 0
push 0
push 45
call _ERRREPORT@12
.Lt_0347:
.Lt_0346:
.Lt_0344:
.Lt_0343:
.Lt_0342:
mov dword ptr [ebp-4], -1
.Lt_031D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__parserzinlineasm:
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
_HINITASMKEYWORDS@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_02C2:
push 0
push 600
lea eax, [_ASMKEYWORDS+4]
push eax
call _HASHINIT@12
mov dword ptr [ebp-4], 0
.Lt_02C7:
push 4294967295
push 4294967295
mov eax, dword ptr [ebp-4]
push dword ptr [_ASMKEYWORDSX86+eax*4]
lea eax, [_ASMKEYWORDS+4]
push eax
call _HASHADD@16
.Lt_02C5:
inc dword ptr [ebp-4]
.Lt_02C4:
cmp dword ptr [ebp-4], 601
jle .Lt_02C7
.Lt_02C6:
.Lt_02C3:
mov esp, ebp
pop ebp
ret
.balign 16
_HISASMKEYWORD@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_02C8:
cmp dword ptr [_ASMKEYWORDS], 0
jne .Lt_02CB
call _HINITASMKEYWORDS@0
mov dword ptr [_ASMKEYWORDS], -1
.Lt_02CB:
.Lt_02CA:
push dword ptr [ebp+8]
lea eax, [_ASMKEYWORDS+4]
push eax
call _HASHLOOKUP@8
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
mov dword ptr [ebp-4], ebx
.Lt_02C9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_ASMKEYWORDSX86:
.int _Lt_0068
.int _Lt_0069
.int _Lt_006A
.int _Lt_006B
.int _Lt_006C
.int _Lt_006D
.int _Lt_006E
.int _Lt_006F
.int _Lt_0070
.int _Lt_0071
.int _Lt_0072
.int _Lt_0073
.int _Lt_0074
.int _Lt_0075
.int _Lt_0076
.int _Lt_0077
.int _Lt_0078
.int _Lt_0079
.int _Lt_007A
.int _Lt_007B
.int _Lt_007C
.int _Lt_007D
.int _Lt_007E
.int _Lt_007F
.int _Lt_0080
.int _Lt_0081
.int _Lt_0082
.int _Lt_0083
.int _Lt_0084
.int _Lt_0085
.int _Lt_0086
.int _Lt_0087
.int _Lt_0088
.int _Lt_0089
.int _Lt_008A
.int _Lt_008B
.int _Lt_008C
.int _Lt_008D
.int _Lt_008E
.int _Lt_008F
.int _Lt_0090
.int _Lt_0091
.int _Lt_0092
.int _Lt_0093
.int _Lt_0094
.int _Lt_0095
.int _Lt_0096
.int _Lt_0097
.int _Lt_0098
.int _Lt_0099
.int _Lt_009A
.int _Lt_009B
.int _Lt_009C
.int _Lt_009D
.int _Lt_009E
.int _Lt_009F
.int _Lt_00A0
.int _Lt_00A1
.int _Lt_00A2
.int _Lt_00A3
.int _Lt_00A4
.int _Lt_00A5
.int _Lt_00A6
.int _Lt_00A7
.int _Lt_00A8
.int _Lt_00A9
.int _Lt_00AA
.int _Lt_00AB
.int _Lt_00AC
.int _Lt_00AD
.int _Lt_00AE
.int _Lt_00AF
.int _Lt_00B0
.int _Lt_00B1
.int _Lt_00B2
.int _Lt_00B3
.int _Lt_00B4
.int _Lt_00B5
.int _Lt_00B6
.int _Lt_00B7
.int _Lt_00B8
.int _Lt_00B9
.int _Lt_00BA
.int _Lt_00BB
.int _Lt_00BC
.int _Lt_00BD
.int _Lt_00BE
.int _Lt_00BF
.int _Lt_00C0
.int _Lt_00C1
.int _Lt_00C2
.int _Lt_00C3
.int _Lt_00C4
.int _Lt_00C5
.int _Lt_00C6
.int _Lt_00C7
.int _Lt_00C8
.int _Lt_00C9
.int _Lt_00CA
.int _Lt_00CB
.int _Lt_00CC
.int _Lt_00CD
.int _Lt_00CE
.int _Lt_00CF
.int _Lt_00D0
.int _Lt_00D1
.int _Lt_00D2
.int _Lt_00D3
.int _Lt_00D4
.int _Lt_00D5
.int _Lt_00D5
.int _Lt_00D6
.int _Lt_00D7
.int _Lt_00D8
.int _Lt_00D9
.int _Lt_00DA
.int _Lt_00DB
.int _Lt_00DC
.int _Lt_00DD
.int _Lt_00DE
.int _Lt_00DF
.int _Lt_00E0
.int _Lt_00E1
.int _Lt_00E2
.int _Lt_00E3
.int _Lt_00E4
.int _Lt_00E5
.int _Lt_00E6
.int _Lt_00E7
.int _Lt_00E8
.int _Lt_00E9
.int _Lt_00EA
.int _Lt_00EB
.int _Lt_00EC
.int _Lt_00ED
.int _Lt_00EE
.int _Lt_00EF
.int _Lt_00F0
.int _Lt_00F1
.int _Lt_00F2
.int _Lt_00F3
.int _Lt_00F4
.int _Lt_00F5
.int _Lt_00F6
.int _Lt_00F7
.int _Lt_00F8
.int _Lt_00F9
.int _Lt_00FA
.int _Lt_00FB
.int _Lt_00FC
.int _Lt_00FD
.int _Lt_00FE
.int _Lt_00FF
.int _Lt_0100
.int _Lt_0101
.int _Lt_0102
.int _Lt_0103
.int _Lt_0104
.int _Lt_0105
.int _Lt_0106
.int _Lt_0107
.int _Lt_0108
.int _Lt_0109
.int _Lt_010A
.int _Lt_010B
.int _Lt_010C
.int _Lt_010D
.int _Lt_010E
.int _Lt_010F
.int _Lt_0110
.int _Lt_0111
.int _Lt_0112
.int _Lt_0113
.int _Lt_0114
.int _Lt_0115
.int _Lt_0116
.int _Lt_0117
.int _Lt_0118
.int _Lt_0119
.int _Lt_011A
.int _Lt_011B
.int _Lt_011C
.int _Lt_011D
.int _Lt_011E
.int _Lt_011F
.int _Lt_0120
.int _Lt_0121
.int _Lt_0122
.int _Lt_0123
.int _Lt_0124
.int _Lt_0125
.int _Lt_0126
.int _Lt_0127
.int _Lt_0128
.int _Lt_0129
.int _Lt_012A
.int _Lt_012B
.int _Lt_012C
.int _Lt_012D
.int _Lt_012E
.int _Lt_012F
.int _Lt_0130
.int _Lt_0131
.int _Lt_0132
.int _Lt_0133
.int _Lt_0134
.int _Lt_0135
.int _Lt_0136
.int _Lt_0137
.int _Lt_0138
.int _Lt_0139
.int _Lt_013A
.int _Lt_013B
.int _Lt_013C
.int _Lt_013D
.int _Lt_013E
.int _Lt_013F
.int _Lt_0140
.int _Lt_0141
.int _Lt_0142
.int _Lt_0143
.int _Lt_0144
.int _Lt_0145
.int _Lt_0146
.int _Lt_0147
.int _Lt_0148
.int _Lt_0149
.int _Lt_014A
.int _Lt_014B
.int _Lt_014C
.int _Lt_014D
.int _Lt_014E
.int _Lt_014F
.int _Lt_0150
.int _Lt_0151
.int _Lt_0152
.int _Lt_0153
.int _Lt_0154
.int _Lt_0155
.int _Lt_0156
.int _Lt_0157
.int _Lt_0158
.int _Lt_0159
.int _Lt_015A
.int _Lt_015B
.int _Lt_015C
.int _Lt_015D
.int _Lt_015E
.int _Lt_015F
.int _Lt_0160
.int _Lt_0161
.int _Lt_0162
.int _Lt_0163
.int _Lt_0164
.int _Lt_0165
.int _Lt_0166
.int _Lt_0167
.int _Lt_0168
.int _Lt_0169
.int _Lt_016A
.int _Lt_016B
.int _Lt_016C
.int _Lt_016D
.int _Lt_016E
.int _Lt_016F
.int _Lt_0170
.int _Lt_0171
.int _Lt_0172
.int _Lt_0173
.int _Lt_0174
.int _Lt_0175
.int _Lt_0176
.int _Lt_0177
.int _Lt_0178
.int _Lt_0179
.int _Lt_017A
.int _Lt_017B
.int _Lt_017C
.int _Lt_017D
.int _Lt_017E
.int _Lt_017F
.int _Lt_0180
.int _Lt_0181
.int _Lt_0182
.int _Lt_0183
.int _Lt_0184
.int _Lt_0185
.int _Lt_0186
.int _Lt_0187
.int _Lt_0188
.int _Lt_0189
.int _Lt_018A
.int _Lt_018B
.int _Lt_018C
.int _Lt_018D
.int _Lt_018E
.int _Lt_018F
.int _Lt_0190
.int _Lt_0191
.int _Lt_0192
.int _Lt_0193
.int _Lt_0194
.int _Lt_0195
.int _Lt_0196
.int _Lt_0197
.int _Lt_0198
.int _Lt_0199
.int _Lt_019A
.int _Lt_019B
.int _Lt_019C
.int _Lt_019D
.int _Lt_019E
.int _Lt_019F
.int _Lt_01A0
.int _Lt_01A1
.int _Lt_01A2
.int _Lt_01A3
.int _Lt_01A4
.int _Lt_01A5
.int _Lt_01A6
.int _Lt_01A7
.int _Lt_01A8
.int _Lt_01A9
.int _Lt_01AA
.int _Lt_01AB
.int _Lt_01AC
.int _Lt_01AD
.int _Lt_01AE
.int _Lt_01AF
.int _Lt_01B0
.int _Lt_01B1
.int _Lt_01B2
.int _Lt_01B3
.int _Lt_01B4
.int _Lt_01B5
.int _Lt_01B6
.int _Lt_01B7
.int _Lt_01B8
.int _Lt_01B9
.int _Lt_01BA
.int _Lt_01BB
.int _Lt_01BC
.int _Lt_01BD
.int _Lt_01BE
.int _Lt_01BF
.int _Lt_01C0
.int _Lt_01C1
.int _Lt_01C2
.int _Lt_01C3
.int _Lt_01C4
.int _Lt_01C5
.int _Lt_01C6
.int _Lt_01C7
.int _Lt_01C8
.int _Lt_01C9
.int _Lt_01CA
.int _Lt_01CB
.int _Lt_01CC
.int _Lt_01CD
.int _Lt_01CE
.int _Lt_01CF
.int _Lt_01D0
.int _Lt_01D1
.int _Lt_01D2
.int _Lt_01D3
.int _Lt_01D4
.int _Lt_01D5
.int _Lt_01D6
.int _Lt_01D7
.int _Lt_01D8
.int _Lt_01D9
.int _Lt_01DA
.int _Lt_01DB
.int _Lt_01DC
.int _Lt_01DD
.int _Lt_01DE
.int _Lt_01DF
.int _Lt_01E0
.int _Lt_01E1
.int _Lt_01E2
.int _Lt_01E3
.int _Lt_01E4
.int _Lt_01E5
.int _Lt_01E6
.int _Lt_01E7
.int _Lt_01E8
.int _Lt_01E9
.int _Lt_01EA
.int _Lt_01EB
.int _Lt_01EC
.int _Lt_01ED
.int _Lt_01EE
.int _Lt_01EF
.int _Lt_01F0
.int _Lt_01F1
.int _Lt_01F2
.int _Lt_01F3
.int _Lt_01F4
.int _Lt_01F5
.int _Lt_01F6
.int _Lt_01F7
.int _Lt_01F8
.int _Lt_01F9
.int _Lt_01FA
.int _Lt_01FB
.int _Lt_01FC
.int _Lt_01FD
.int _Lt_01FE
.int _Lt_01FF
.int _Lt_0200
.int _Lt_0201
.int _Lt_0202
.int _Lt_0203
.int _Lt_0204
.int _Lt_0205
.int _Lt_0206
.int _Lt_0207
.int _Lt_0208
.int _Lt_0209
.int _Lt_020A
.int _Lt_020B
.int _Lt_020C
.int _Lt_020D
.int _Lt_020E
.int _Lt_020F
.int _Lt_0210
.int _Lt_0211
.int _Lt_0212
.int _Lt_0213
.int _Lt_0214
.int _Lt_0215
.int _Lt_0216
.int _Lt_0217
.int _Lt_0218
.int _Lt_0219
.int _Lt_021A
.int _Lt_021B
.int _Lt_021C
.int _Lt_021D
.int _Lt_021E
.int _Lt_021F
.int _Lt_0220
.int _Lt_0221
.int _Lt_0222
.int _Lt_0223
.int _Lt_0224
.int _Lt_0225
.int _Lt_0226
.int _Lt_0227
.int _Lt_0228
.int _Lt_0229
.int _Lt_022A
.int _Lt_022B
.int _Lt_022C
.int _Lt_022D
.int _Lt_022E
.int _Lt_022F
.int _Lt_0230
.int _Lt_0231
.int _Lt_0232
.int _Lt_0233
.int _Lt_0234
.int _Lt_0235
.int _Lt_0236
.int _Lt_0237
.int _Lt_0238
.int _Lt_0239
.int _Lt_023A
.int _Lt_023B
.int _Lt_023C
.int _Lt_023D
.int _Lt_023E
.int _Lt_023F
.int _Lt_0240
.int _Lt_0241
.int _Lt_0242
.int _Lt_0243
.int _Lt_0244
.int _Lt_0245
.int _Lt_0246
.int _Lt_0247
.int _Lt_0248
.int _Lt_0249
.int _Lt_024A
.int _Lt_024B
.int _Lt_024C
.int _Lt_024D
.int _Lt_024E
.int _Lt_024F
.int _Lt_0250
.int _Lt_0251
.int _Lt_0252
.int _Lt_0253
.int _Lt_0254
.int _Lt_0255
.int _Lt_0256
.int _Lt_0257
.int _Lt_0258
.int _Lt_0259
.int _Lt_025A
.int _Lt_025B
.int _Lt_025C
.int _Lt_025D
.int _Lt_025E
.int _Lt_025F
.int _Lt_0260
.int _Lt_0261
.int _Lt_0262
.int _Lt_0263
.int _Lt_0264
.int _Lt_0265
.int _Lt_0266
.int _Lt_0267
.int _Lt_0268
.int _Lt_0269
.int _Lt_026A
.int _Lt_026B
.int _Lt_026C
.int _Lt_026D
.int _Lt_026E
.int _Lt_026F
.int _Lt_0270
.int _Lt_0271
.int _Lt_0272
.int _Lt_0273
.int _Lt_0274
.int _Lt_0275
.int _Lt_0276
.int _Lt_0277
.int _Lt_0278
.int _Lt_0279
.int _Lt_027A
.int _Lt_027B
.int _Lt_027C
.int _Lt_027D
.int _Lt_027E
.int _Lt_027F
.int _Lt_0280
.int _Lt_0281
.int _Lt_0282
.int _Lt_0283
.int _Lt_0284
.int _Lt_0285
.int _Lt_0286
.int _Lt_0287
.int _Lt_0288
.int _Lt_0289
.int _Lt_028A
.int _Lt_028B
.int _Lt_028C
.int _Lt_028D
.int _Lt_028E
.int _Lt_028F
.int _Lt_0290
.int _Lt_0291
.int _Lt_0292
.int _Lt_0293
.int _Lt_0294
.int _Lt_0295
.int _Lt_0296
.int _Lt_0297
.int _Lt_0298
.int _Lt_0299
.int _Lt_029A
.int _Lt_029B
.int _Lt_029C
.int _Lt_029D
.int _Lt_029E
.int _Lt_029F
.int _Lt_02A0
.int _Lt_02A1
.int _Lt_02A2
.int _Lt_02A3
.int _Lt_02A4
.int _Lt_02A5
.int _Lt_02A6
.int _Lt_02A7
.int _Lt_02A8
.int _Lt_02A9
.int _Lt_02AA
.int _Lt_02AB
.int _Lt_02AC
.int _Lt_02AD
.int _Lt_02AE
.int _Lt_02AF
.int _Lt_02B0
.int _Lt_02B1
.int _Lt_02B2
.int _Lt_02B3
.int _Lt_02B4
.int _Lt_02B5
.int _Lt_02B6
.int _Lt_02B7
.int _Lt_02B8
.int _Lt_02B9
.int _Lt_02BA
.int _Lt_02BB
.int _Lt_02BC
.int _Lt_02BD
.int _Lt_02BE
.int _Lt_02BF
.int _Lt_02C0
.balign 4
_Lt_0068:	.ascii	"dl\0"
.balign 4
_Lt_0069:	.ascii	"di\0"
.balign 4
_Lt_006A:	.ascii	"si\0"
.balign 4
_Lt_006B:	.ascii	"cl\0"
.balign 4
_Lt_006C:	.ascii	"bl\0"
.balign 4
_Lt_006D:	.ascii	"al\0"
.balign 4
_Lt_006E:	.ascii	"bp\0"
.balign 4
_Lt_006F:	.ascii	"sp\0"
.balign 4
_Lt_0070:	.ascii	"dx\0"
.balign 4
_Lt_0071:	.ascii	"cx\0"
.balign 4
_Lt_0072:	.ascii	"bx\0"
.balign 4
_Lt_0073:	.ascii	"ax\0"
.balign 4
_Lt_0074:	.ascii	"edx\0"
.balign 4
_Lt_0075:	.ascii	"edi\0"
.balign 4
_Lt_0076:	.ascii	"esi\0"
.balign 4
_Lt_0077:	.ascii	"ecx\0"
.balign 4
_Lt_0078:	.ascii	"ebx\0"
.balign 4
_Lt_0079:	.ascii	"eax\0"
.balign 4
_Lt_007A:	.ascii	"ebp\0"
.balign 4
_Lt_007B:	.ascii	"esp\0"
.balign 4
_Lt_007C:	.ascii	"st\0"
.balign 4
_Lt_007D:	.ascii	"cs\0"
.balign 4
_Lt_007E:	.ascii	"ds\0"
.balign 4
_Lt_007F:	.ascii	"es\0"
.balign 4
_Lt_0080:	.ascii	"fs\0"
.balign 4
_Lt_0081:	.ascii	"gs\0"
.balign 4
_Lt_0082:	.ascii	"ss\0"
.balign 4
_Lt_0083:	.ascii	"mm0\0"
.balign 4
_Lt_0084:	.ascii	"mm1\0"
.balign 4
_Lt_0085:	.ascii	"mm2\0"
.balign 4
_Lt_0086:	.ascii	"mm3\0"
.balign 4
_Lt_0087:	.ascii	"mm4\0"
.balign 4
_Lt_0088:	.ascii	"mm5\0"
.balign 4
_Lt_0089:	.ascii	"mm6\0"
.balign 4
_Lt_008A:	.ascii	"mm7\0"
.balign 4
_Lt_008B:	.ascii	"xmm0\0"
.balign 4
_Lt_008C:	.ascii	"xmm1\0"
.balign 4
_Lt_008D:	.ascii	"xmm2\0"
.balign 4
_Lt_008E:	.ascii	"xmm3\0"
.balign 4
_Lt_008F:	.ascii	"xmm4\0"
.balign 4
_Lt_0090:	.ascii	"xmm5\0"
.balign 4
_Lt_0091:	.ascii	"xmm6\0"
.balign 4
_Lt_0092:	.ascii	"xmm7\0"
.balign 4
_Lt_0093:	.ascii	"byte\0"
.balign 4
_Lt_0094:	.ascii	"word\0"
.balign 4
_Lt_0095:	.ascii	"dword\0"
.balign 4
_Lt_0096:	.ascii	"qword\0"
.balign 4
_Lt_0097:	.ascii	"ptr\0"
.balign 4
_Lt_0098:	.ascii	"offset\0"
.balign 4
_Lt_0099:	.ascii	"aaa\0"
.balign 4
_Lt_009A:	.ascii	"aad\0"
.balign 4
_Lt_009B:	.ascii	"aam\0"
.balign 4
_Lt_009C:	.ascii	"aas\0"
.balign 4
_Lt_009D:	.ascii	"adc\0"
.balign 4
_Lt_009E:	.ascii	"add\0"
.balign 4
_Lt_009F:	.ascii	"addpd\0"
.balign 4
_Lt_00A0:	.ascii	"addps\0"
.balign 4
_Lt_00A1:	.ascii	"addsd\0"
.balign 4
_Lt_00A2:	.ascii	"addss\0"
.balign 4
_Lt_00A3:	.ascii	"and\0"
.balign 4
_Lt_00A4:	.ascii	"andpd\0"
.balign 4
_Lt_00A5:	.ascii	"andps\0"
.balign 4
_Lt_00A6:	.ascii	"andnpd\0"
.balign 4
_Lt_00A7:	.ascii	"andnps\0"
.balign 4
_Lt_00A8:	.ascii	"arpl\0"
.balign 4
_Lt_00A9:	.ascii	"bound\0"
.balign 4
_Lt_00AA:	.ascii	"bsf\0"
.balign 4
_Lt_00AB:	.ascii	"bsr\0"
.balign 4
_Lt_00AC:	.ascii	"bswap\0"
.balign 4
_Lt_00AD:	.ascii	"bt\0"
.balign 4
_Lt_00AE:	.ascii	"btc\0"
.balign 4
_Lt_00AF:	.ascii	"btr\0"
.balign 4
_Lt_00B0:	.ascii	"bts\0"
.balign 4
_Lt_00B1:	.ascii	"call\0"
.balign 4
_Lt_00B2:	.ascii	"cbw\0"
.balign 4
_Lt_00B3:	.ascii	"cwde\0"
.balign 4
_Lt_00B4:	.ascii	"cdq\0"
.balign 4
_Lt_00B5:	.ascii	"clc\0"
.balign 4
_Lt_00B6:	.ascii	"cld\0"
.balign 4
_Lt_00B7:	.ascii	"clflush\0"
.balign 4
_Lt_00B8:	.ascii	"cli\0"
.balign 4
_Lt_00B9:	.ascii	"clts\0"
.balign 4
_Lt_00BA:	.ascii	"cmc\0"
.balign 4
_Lt_00BB:	.ascii	"cmova\0"
.balign 4
_Lt_00BC:	.ascii	"cmovae\0"
.balign 4
_Lt_00BD:	.ascii	"cmovb\0"
.balign 4
_Lt_00BE:	.ascii	"cmovbe\0"
.balign 4
_Lt_00BF:	.ascii	"cmovc\0"
.balign 4
_Lt_00C0:	.ascii	"cmove\0"
.balign 4
_Lt_00C1:	.ascii	"cmovg\0"
.balign 4
_Lt_00C2:	.ascii	"cmovge\0"
.balign 4
_Lt_00C3:	.ascii	"cmovl\0"
.balign 4
_Lt_00C4:	.ascii	"cmovle\0"
.balign 4
_Lt_00C5:	.ascii	"cmovna\0"
.balign 4
_Lt_00C6:	.ascii	"cmovnae\0"
.balign 4
_Lt_00C7:	.ascii	"cmovnb\0"
.balign 4
_Lt_00C8:	.ascii	"cmovnbe\0"
.balign 4
_Lt_00C9:	.ascii	"cmovnc\0"
.balign 4
_Lt_00CA:	.ascii	"cmovne\0"
.balign 4
_Lt_00CB:	.ascii	"cmovng\0"
.balign 4
_Lt_00CC:	.ascii	"cmovnge\0"
.balign 4
_Lt_00CD:	.ascii	"cmovnl\0"
.balign 4
_Lt_00CE:	.ascii	"cmovnle\0"
.balign 4
_Lt_00CF:	.ascii	"cmovno\0"
.balign 4
_Lt_00D0:	.ascii	"cmovnp\0"
.balign 4
_Lt_00D1:	.ascii	"cmovns\0"
.balign 4
_Lt_00D2:	.ascii	"cmovnz\0"
.balign 4
_Lt_00D3:	.ascii	"cmovo\0"
.balign 4
_Lt_00D4:	.ascii	"cmovp\0"
.balign 4
_Lt_00D5:	.ascii	"cmovpe\0"
.balign 4
_Lt_00D6:	.ascii	"cmovpo\0"
.balign 4
_Lt_00D7:	.ascii	"cmovs\0"
.balign 4
_Lt_00D8:	.ascii	"cmovz\0"
.balign 4
_Lt_00D9:	.ascii	"cmp\0"
.balign 4
_Lt_00DA:	.ascii	"cmppd\0"
.balign 4
_Lt_00DB:	.ascii	"cmpps\0"
.balign 4
_Lt_00DC:	.ascii	"cmps\0"
.balign 4
_Lt_00DD:	.ascii	"cmpsb\0"
.balign 4
_Lt_00DE:	.ascii	"cmpsw\0"
.balign 4
_Lt_00DF:	.ascii	"cmpsd\0"
.balign 4
_Lt_00E0:	.ascii	"cmpss\0"
.balign 4
_Lt_00E1:	.ascii	"cmpxchg\0"
.balign 4
_Lt_00E2:	.ascii	"cmpxchg8b\0"
.balign 4
_Lt_00E3:	.ascii	"comisd\0"
.balign 4
_Lt_00E4:	.ascii	"comiss\0"
.balign 4
_Lt_00E5:	.ascii	"cpuid\0"
.balign 4
_Lt_00E6:	.ascii	"cvtdq2pd\0"
.balign 4
_Lt_00E7:	.ascii	"cvtdq2ps\0"
.balign 4
_Lt_00E8:	.ascii	"cvtpd2dq\0"
.balign 4
_Lt_00E9:	.ascii	"cvtpd2pi\0"
.balign 4
_Lt_00EA:	.ascii	"cvtpd2ps\0"
.balign 4
_Lt_00EB:	.ascii	"cvtpi2pd\0"
.balign 4
_Lt_00EC:	.ascii	"cvtpi2ps\0"
.balign 4
_Lt_00ED:	.ascii	"cvtps2dq\0"
.balign 4
_Lt_00EE:	.ascii	"cvtps2pd\0"
.balign 4
_Lt_00EF:	.ascii	"cvtps2pi\0"
.balign 4
_Lt_00F0:	.ascii	"cvtsd2si\0"
.balign 4
_Lt_00F1:	.ascii	"cvtsd2ss\0"
.balign 4
_Lt_00F2:	.ascii	"cvtsi2sd\0"
.balign 4
_Lt_00F3:	.ascii	"cvtsi2ss\0"
.balign 4
_Lt_00F4:	.ascii	"cvtss2sd\0"
.balign 4
_Lt_00F5:	.ascii	"cvtss2si\0"
.balign 4
_Lt_00F6:	.ascii	"cvttpd2pi\0"
.balign 4
_Lt_00F7:	.ascii	"cvttpd2dq\0"
.balign 4
_Lt_00F8:	.ascii	"cvttps2dq\0"
.balign 4
_Lt_00F9:	.ascii	"cvttps2pi\0"
.balign 4
_Lt_00FA:	.ascii	"cvttsd2si\0"
.balign 4
_Lt_00FB:	.ascii	"cvttss2si\0"
.balign 4
_Lt_00FC:	.ascii	"cwd\0"
.balign 4
_Lt_00FD:	.ascii	"daa\0"
.balign 4
_Lt_00FE:	.ascii	"das\0"
.balign 4
_Lt_00FF:	.ascii	"dec\0"
.balign 4
_Lt_0100:	.ascii	"div\0"
.balign 4
_Lt_0101:	.ascii	"divpd\0"
.balign 4
_Lt_0102:	.ascii	"divps\0"
.balign 4
_Lt_0103:	.ascii	"divss\0"
.balign 4
_Lt_0104:	.ascii	"emms\0"
.balign 4
_Lt_0105:	.ascii	"enter\0"
.balign 4
_Lt_0106:	.ascii	"f2xm1\0"
.balign 4
_Lt_0107:	.ascii	"fabs\0"
.balign 4
_Lt_0108:	.ascii	"fadd\0"
.balign 4
_Lt_0109:	.ascii	"faddp\0"
.balign 4
_Lt_010A:	.ascii	"fiadd\0"
.balign 4
_Lt_010B:	.ascii	"fbld\0"
.balign 4
_Lt_010C:	.ascii	"fbstp\0"
.balign 4
_Lt_010D:	.ascii	"fchs\0"
.balign 4
_Lt_010E:	.ascii	"fclex\0"
.balign 4
_Lt_010F:	.ascii	"fnclex\0"
.balign 4
_Lt_0110:	.ascii	"fcmovb\0"
.balign 4
_Lt_0111:	.ascii	"fcmove\0"
.balign 4
_Lt_0112:	.ascii	"fcmovbe\0"
.balign 4
_Lt_0113:	.ascii	"fcmovu\0"
.balign 4
_Lt_0114:	.ascii	"fcmovnb\0"
.balign 4
_Lt_0115:	.ascii	"fcmovne\0"
.balign 4
_Lt_0116:	.ascii	"fcmovnbe\0"
.balign 4
_Lt_0117:	.ascii	"fcmovnu\0"
.balign 4
_Lt_0118:	.ascii	"fcom\0"
.balign 4
_Lt_0119:	.ascii	"fcomp\0"
.balign 4
_Lt_011A:	.ascii	"fcompp\0"
.balign 4
_Lt_011B:	.ascii	"fcomi\0"
.balign 4
_Lt_011C:	.ascii	"fcomip\0"
.balign 4
_Lt_011D:	.ascii	"fucomi\0"
.balign 4
_Lt_011E:	.ascii	"fucomip\0"
.balign 4
_Lt_011F:	.ascii	"fcos\0"
.balign 4
_Lt_0120:	.ascii	"fdecstp\0"
.balign 4
_Lt_0121:	.ascii	"fdiv\0"
.balign 4
_Lt_0122:	.ascii	"fdivp\0"
.balign 4
_Lt_0123:	.ascii	"fidiv\0"
.balign 4
_Lt_0124:	.ascii	"fdivr\0"
.balign 4
_Lt_0125:	.ascii	"fdivrp\0"
.balign 4
_Lt_0126:	.ascii	"fidivr\0"
.balign 4
_Lt_0127:	.ascii	"ffree\0"
.balign 4
_Lt_0128:	.ascii	"ficom\0"
.balign 4
_Lt_0129:	.ascii	"ficomp\0"
.balign 4
_Lt_012A:	.ascii	"fild\0"
.balign 4
_Lt_012B:	.ascii	"fincstp\0"
.balign 4
_Lt_012C:	.ascii	"finit\0"
.balign 4
_Lt_012D:	.ascii	"fninit\0"
.balign 4
_Lt_012E:	.ascii	"fist\0"
.balign 4
_Lt_012F:	.ascii	"fistp\0"
.balign 4
_Lt_0130:	.ascii	"fld\0"
.balign 4
_Lt_0131:	.ascii	"fld1\0"
.balign 4
_Lt_0132:	.ascii	"fldl2t\0"
.balign 4
_Lt_0133:	.ascii	"fldl2e\0"
.balign 4
_Lt_0134:	.ascii	"fldpi\0"
.balign 4
_Lt_0135:	.ascii	"fldlg2\0"
.balign 4
_Lt_0136:	.ascii	"fldln2\0"
.balign 4
_Lt_0137:	.ascii	"fldz\0"
.balign 4
_Lt_0138:	.ascii	"fldcw\0"
.balign 4
_Lt_0139:	.ascii	"fldenv\0"
.balign 4
_Lt_013A:	.ascii	"fmul\0"
.balign 4
_Lt_013B:	.ascii	"fmulp\0"
.balign 4
_Lt_013C:	.ascii	"fimul\0"
.balign 4
_Lt_013D:	.ascii	"fnop\0"
.balign 4
_Lt_013E:	.ascii	"fpatan\0"
.balign 4
_Lt_013F:	.ascii	"fprem\0"
.balign 4
_Lt_0140:	.ascii	"fprem1\0"
.balign 4
_Lt_0141:	.ascii	"fptan\0"
.balign 4
_Lt_0142:	.ascii	"frndint\0"
.balign 4
_Lt_0143:	.ascii	"frstor\0"
.balign 4
_Lt_0144:	.ascii	"fsave\0"
.balign 4
_Lt_0145:	.ascii	"fnsave\0"
.balign 4
_Lt_0146:	.ascii	"fscale\0"
.balign 4
_Lt_0147:	.ascii	"fsin\0"
.balign 4
_Lt_0148:	.ascii	"fsincos\0"
.balign 4
_Lt_0149:	.ascii	"fsqrt\0"
.balign 4
_Lt_014A:	.ascii	"fst\0"
.balign 4
_Lt_014B:	.ascii	"fstp\0"
.balign 4
_Lt_014C:	.ascii	"fstcw\0"
.balign 4
_Lt_014D:	.ascii	"fnstcw\0"
.balign 4
_Lt_014E:	.ascii	"fstenv\0"
.balign 4
_Lt_014F:	.ascii	"fnstenv\0"
.balign 4
_Lt_0150:	.ascii	"fstsw\0"
.balign 4
_Lt_0151:	.ascii	"fnstsw\0"
.balign 4
_Lt_0152:	.ascii	"fsub\0"
.balign 4
_Lt_0153:	.ascii	"fsubp\0"
.balign 4
_Lt_0154:	.ascii	"fisub\0"
.balign 4
_Lt_0155:	.ascii	"fsubr\0"
.balign 4
_Lt_0156:	.ascii	"fsubrp\0"
.balign 4
_Lt_0157:	.ascii	"fisubr\0"
.balign 4
_Lt_0158:	.ascii	"ftst\0"
.balign 4
_Lt_0159:	.ascii	"fucom\0"
.balign 4
_Lt_015A:	.ascii	"fucomp\0"
.balign 4
_Lt_015B:	.ascii	"fucompp\0"
.balign 4
_Lt_015C:	.ascii	"fwait\0"
.balign 4
_Lt_015D:	.ascii	"fxam\0"
.balign 4
_Lt_015E:	.ascii	"fxch\0"
.balign 4
_Lt_015F:	.ascii	"fxrstor\0"
.balign 4
_Lt_0160:	.ascii	"fxsave\0"
.balign 4
_Lt_0161:	.ascii	"fxtract\0"
.balign 4
_Lt_0162:	.ascii	"fyl2x\0"
.balign 4
_Lt_0163:	.ascii	"fyl2xp1\0"
.balign 4
_Lt_0164:	.ascii	"hlt\0"
.balign 4
_Lt_0165:	.ascii	"idiv\0"
.balign 4
_Lt_0166:	.ascii	"imul\0"
.balign 4
_Lt_0167:	.ascii	"in\0"
.balign 4
_Lt_0168:	.ascii	"inc\0"
.balign 4
_Lt_0169:	.ascii	"ins\0"
.balign 4
_Lt_016A:	.ascii	"insb\0"
.balign 4
_Lt_016B:	.ascii	"insw\0"
.balign 4
_Lt_016C:	.ascii	"insd\0"
.balign 4
_Lt_016D:	.ascii	"int\0"
.balign 4
_Lt_016E:	.ascii	"into\0"
.balign 4
_Lt_016F:	.ascii	"invd\0"
.balign 4
_Lt_0170:	.ascii	"invlpg\0"
.balign 4
_Lt_0171:	.ascii	"iret\0"
.balign 4
_Lt_0172:	.ascii	"iretd\0"
.balign 4
_Lt_0173:	.ascii	"ja\0"
.balign 4
_Lt_0174:	.ascii	"jae\0"
.balign 4
_Lt_0175:	.ascii	"jb\0"
.balign 4
_Lt_0176:	.ascii	"jbe\0"
.balign 4
_Lt_0177:	.ascii	"jc\0"
.balign 4
_Lt_0178:	.ascii	"jcxz\0"
.balign 4
_Lt_0179:	.ascii	"jecxz\0"
.balign 4
_Lt_017A:	.ascii	"je\0"
.balign 4
_Lt_017B:	.ascii	"jg\0"
.balign 4
_Lt_017C:	.ascii	"jge\0"
.balign 4
_Lt_017D:	.ascii	"jl\0"
.balign 4
_Lt_017E:	.ascii	"jle\0"
.balign 4
_Lt_017F:	.ascii	"jna\0"
.balign 4
_Lt_0180:	.ascii	"jnae\0"
.balign 4
_Lt_0181:	.ascii	"jnb\0"
.balign 4
_Lt_0182:	.ascii	"jnbe\0"
.balign 4
_Lt_0183:	.ascii	"jnc\0"
.balign 4
_Lt_0184:	.ascii	"jne\0"
.balign 4
_Lt_0185:	.ascii	"jng\0"
.balign 4
_Lt_0186:	.ascii	"jnge\0"
.balign 4
_Lt_0187:	.ascii	"jnl\0"
.balign 4
_Lt_0188:	.ascii	"jnle\0"
.balign 4
_Lt_0189:	.ascii	"jno\0"
.balign 4
_Lt_018A:	.ascii	"jnp\0"
.balign 4
_Lt_018B:	.ascii	"jns\0"
.balign 4
_Lt_018C:	.ascii	"jnz\0"
.balign 4
_Lt_018D:	.ascii	"jo\0"
.balign 4
_Lt_018E:	.ascii	"jp\0"
.balign 4
_Lt_018F:	.ascii	"jpe\0"
.balign 4
_Lt_0190:	.ascii	"jpo\0"
.balign 4
_Lt_0191:	.ascii	"js\0"
.balign 4
_Lt_0192:	.ascii	"jz\0"
.balign 4
_Lt_0193:	.ascii	"jmp\0"
.balign 4
_Lt_0194:	.ascii	"lahf\0"
.balign 4
_Lt_0195:	.ascii	"lar\0"
.balign 4
_Lt_0196:	.ascii	"ldmxcsr\0"
.balign 4
_Lt_0197:	.ascii	"lds\0"
.balign 4
_Lt_0198:	.ascii	"les\0"
.balign 4
_Lt_0199:	.ascii	"lfs\0"
.balign 4
_Lt_019A:	.ascii	"lgs\0"
.balign 4
_Lt_019B:	.ascii	"lss\0"
.balign 4
_Lt_019C:	.ascii	"lea\0"
.balign 4
_Lt_019D:	.ascii	"leave\0"
.balign 4
_Lt_019E:	.ascii	"lfence\0"
.balign 4
_Lt_019F:	.ascii	"lgdt\0"
.balign 4
_Lt_01A0:	.ascii	"lidt\0"
.balign 4
_Lt_01A1:	.ascii	"lldt\0"
.balign 4
_Lt_01A2:	.ascii	"lmsw\0"
.balign 4
_Lt_01A3:	.ascii	"lock\0"
.balign 4
_Lt_01A4:	.ascii	"lods\0"
.balign 4
_Lt_01A5:	.ascii	"lodsb\0"
.balign 4
_Lt_01A6:	.ascii	"lodsw\0"
.balign 4
_Lt_01A7:	.ascii	"lodsd\0"
.balign 4
_Lt_01A8:	.ascii	"loop\0"
.balign 4
_Lt_01A9:	.ascii	"loope\0"
.balign 4
_Lt_01AA:	.ascii	"loopz\0"
.balign 4
_Lt_01AB:	.ascii	"loopne\0"
.balign 4
_Lt_01AC:	.ascii	"loopnz\0"
.balign 4
_Lt_01AD:	.ascii	"lsl\0"
.balign 4
_Lt_01AE:	.ascii	"ltr\0"
.balign 4
_Lt_01AF:	.ascii	"maskmovdqu\0"
.balign 4
_Lt_01B0:	.ascii	"maskmovq\0"
.balign 4
_Lt_01B1:	.ascii	"maxpd\0"
.balign 4
_Lt_01B2:	.ascii	"maxps\0"
.balign 4
_Lt_01B3:	.ascii	"maxsd\0"
.balign 4
_Lt_01B4:	.ascii	"maxss\0"
.balign 4
_Lt_01B5:	.ascii	"mfence\0"
.balign 4
_Lt_01B6:	.ascii	"minpd\0"
.balign 4
_Lt_01B7:	.ascii	"minps\0"
.balign 4
_Lt_01B8:	.ascii	"minsd\0"
.balign 4
_Lt_01B9:	.ascii	"minss\0"
.balign 4
_Lt_01BA:	.ascii	"mov\0"
.balign 4
_Lt_01BB:	.ascii	"movapd\0"
.balign 4
_Lt_01BC:	.ascii	"movaps\0"
.balign 4
_Lt_01BD:	.ascii	"movd\0"
.balign 4
_Lt_01BE:	.ascii	"movdqa\0"
.balign 4
_Lt_01BF:	.ascii	"movdqu\0"
.balign 4
_Lt_01C0:	.ascii	"movdq2q\0"
.balign 4
_Lt_01C1:	.ascii	"movhlps\0"
.balign 4
_Lt_01C2:	.ascii	"movhpd\0"
.balign 4
_Lt_01C3:	.ascii	"movhps\0"
.balign 4
_Lt_01C4:	.ascii	"movlhps\0"
.balign 4
_Lt_01C5:	.ascii	"movlpd\0"
.balign 4
_Lt_01C6:	.ascii	"movlps\0"
.balign 4
_Lt_01C7:	.ascii	"movmskpd\0"
.balign 4
_Lt_01C8:	.ascii	"movmskps\0"
.balign 4
_Lt_01C9:	.ascii	"movntdq\0"
.balign 4
_Lt_01CA:	.ascii	"movnti\0"
.balign 4
_Lt_01CB:	.ascii	"movntpd\0"
.balign 4
_Lt_01CC:	.ascii	"movntps\0"
.balign 4
_Lt_01CD:	.ascii	"movntq\0"
.balign 4
_Lt_01CE:	.ascii	"movq\0"
.balign 4
_Lt_01CF:	.ascii	"movq2dq\0"
.balign 4
_Lt_01D0:	.ascii	"movs\0"
.balign 4
_Lt_01D1:	.ascii	"movsb\0"
.balign 4
_Lt_01D2:	.ascii	"movsw\0"
.balign 4
_Lt_01D3:	.ascii	"movsd\0"
.balign 4
_Lt_01D4:	.ascii	"movss\0"
.balign 4
_Lt_01D5:	.ascii	"movsx\0"
.balign 4
_Lt_01D6:	.ascii	"movupd\0"
.balign 4
_Lt_01D7:	.ascii	"movups\0"
.balign 4
_Lt_01D8:	.ascii	"movzx\0"
.balign 4
_Lt_01D9:	.ascii	"mul\0"
.balign 4
_Lt_01DA:	.ascii	"mulpd\0"
.balign 4
_Lt_01DB:	.ascii	"mulps\0"
.balign 4
_Lt_01DC:	.ascii	"mulsd\0"
.balign 4
_Lt_01DD:	.ascii	"mulss\0"
.balign 4
_Lt_01DE:	.ascii	"neg\0"
.balign 4
_Lt_01DF:	.ascii	"nop\0"
.balign 4
_Lt_01E0:	.ascii	"not\0"
.balign 4
_Lt_01E1:	.ascii	"or\0"
.balign 4
_Lt_01E2:	.ascii	"orpd\0"
.balign 4
_Lt_01E3:	.ascii	"orps\0"
.balign 4
_Lt_01E4:	.ascii	"out\0"
.balign 4
_Lt_01E5:	.ascii	"outs\0"
.balign 4
_Lt_01E6:	.ascii	"outsb\0"
.balign 4
_Lt_01E7:	.ascii	"outsw\0"
.balign 4
_Lt_01E8:	.ascii	"outsd\0"
.balign 4
_Lt_01E9:	.ascii	"packsswb\0"
.balign 4
_Lt_01EA:	.ascii	"packssdw\0"
.balign 4
_Lt_01EB:	.ascii	"packuswb\0"
.balign 4
_Lt_01EC:	.ascii	"paddb\0"
.balign 4
_Lt_01ED:	.ascii	"paddw\0"
.balign 4
_Lt_01EE:	.ascii	"paddd\0"
.balign 4
_Lt_01EF:	.ascii	"paddq\0"
.balign 4
_Lt_01F0:	.ascii	"paddsb\0"
.balign 4
_Lt_01F1:	.ascii	"paddsw\0"
.balign 4
_Lt_01F2:	.ascii	"paddusb\0"
.balign 4
_Lt_01F3:	.ascii	"paddusw\0"
.balign 4
_Lt_01F4:	.ascii	"pand\0"
.balign 4
_Lt_01F5:	.ascii	"pandn\0"
.balign 4
_Lt_01F6:	.ascii	"pause\0"
.balign 4
_Lt_01F7:	.ascii	"pavgb\0"
.balign 4
_Lt_01F8:	.ascii	"pavgw\0"
.balign 4
_Lt_01F9:	.ascii	"pcmpeqb\0"
.balign 4
_Lt_01FA:	.ascii	"pcmpeqw\0"
.balign 4
_Lt_01FB:	.ascii	"pcmpeqd\0"
.balign 4
_Lt_01FC:	.ascii	"pcmpgtb\0"
.balign 4
_Lt_01FD:	.ascii	"pcmpgtw\0"
.balign 4
_Lt_01FE:	.ascii	"pcmpgtd\0"
.balign 4
_Lt_01FF:	.ascii	"pextrw\0"
.balign 4
_Lt_0200:	.ascii	"pinsrw\0"
.balign 4
_Lt_0201:	.ascii	"pmaddwd\0"
.balign 4
_Lt_0202:	.ascii	"pmaxsw\0"
.balign 4
_Lt_0203:	.ascii	"pmaxub\0"
.balign 4
_Lt_0204:	.ascii	"pminsw\0"
.balign 4
_Lt_0205:	.ascii	"pminub\0"
.balign 4
_Lt_0206:	.ascii	"pmovmskb\0"
.balign 4
_Lt_0207:	.ascii	"pmulhuv\0"
.balign 4
_Lt_0208:	.ascii	"pmulhw\0"
.balign 4
_Lt_0209:	.ascii	"pmullw\0"
.balign 4
_Lt_020A:	.ascii	"pmuludq\0"
.balign 4
_Lt_020B:	.ascii	"pop\0"
.balign 4
_Lt_020C:	.ascii	"popa\0"
.balign 4
_Lt_020D:	.ascii	"popad\0"
.balign 4
_Lt_020E:	.ascii	"popf\0"
.balign 4
_Lt_020F:	.ascii	"popfd\0"
.balign 4
_Lt_0210:	.ascii	"por\0"
.balign 4
_Lt_0211:	.ascii	"prefetcht0\0"
.balign 4
_Lt_0212:	.ascii	"prefetcht1\0"
.balign 4
_Lt_0213:	.ascii	"prefetcht2\0"
.balign 4
_Lt_0214:	.ascii	"prefetchnta\0"
.balign 4
_Lt_0215:	.ascii	"psadbw\0"
.balign 4
_Lt_0216:	.ascii	"pshufd\0"
.balign 4
_Lt_0217:	.ascii	"pshufhw\0"
.balign 4
_Lt_0218:	.ascii	"pshuflw\0"
.balign 4
_Lt_0219:	.ascii	"pshufw\0"
.balign 4
_Lt_021A:	.ascii	"psllw\0"
.balign 4
_Lt_021B:	.ascii	"pslld\0"
.balign 4
_Lt_021C:	.ascii	"psllq\0"
.balign 4
_Lt_021D:	.ascii	"psraw\0"
.balign 4
_Lt_021E:	.ascii	"psrad\0"
.balign 4
_Lt_021F:	.ascii	"psrldq\0"
.balign 4
_Lt_0220:	.ascii	"psrlw\0"
.balign 4
_Lt_0221:	.ascii	"psrld\0"
.balign 4
_Lt_0222:	.ascii	"psrlq\0"
.balign 4
_Lt_0223:	.ascii	"psubb\0"
.balign 4
_Lt_0224:	.ascii	"psubw\0"
.balign 4
_Lt_0225:	.ascii	"psubd\0"
.balign 4
_Lt_0226:	.ascii	"psubq\0"
.balign 4
_Lt_0227:	.ascii	"psubsb\0"
.balign 4
_Lt_0228:	.ascii	"psubsw\0"
.balign 4
_Lt_0229:	.ascii	"psubusb\0"
.balign 4
_Lt_022A:	.ascii	"psubusw\0"
.balign 4
_Lt_022B:	.ascii	"punpckhbw\0"
.balign 4
_Lt_022C:	.ascii	"punpckhwd\0"
.balign 4
_Lt_022D:	.ascii	"punpckhdq\0"
.balign 4
_Lt_022E:	.ascii	"punpckhqdq\0"
.balign 4
_Lt_022F:	.ascii	"punpcklbw\0"
.balign 4
_Lt_0230:	.ascii	"punpcklwd\0"
.balign 4
_Lt_0231:	.ascii	"punpckldq\0"
.balign 4
_Lt_0232:	.ascii	"punpcklqdq\0"
.balign 4
_Lt_0233:	.ascii	"push\0"
.balign 4
_Lt_0234:	.ascii	"pusha\0"
.balign 4
_Lt_0235:	.ascii	"pushad\0"
.balign 4
_Lt_0236:	.ascii	"pushf\0"
.balign 4
_Lt_0237:	.ascii	"pushfd\0"
.balign 4
_Lt_0238:	.ascii	"pxor\0"
.balign 4
_Lt_0239:	.ascii	"rcl\0"
.balign 4
_Lt_023A:	.ascii	"rcr\0"
.balign 4
_Lt_023B:	.ascii	"rol\0"
.balign 4
_Lt_023C:	.ascii	"ror\0"
.balign 4
_Lt_023D:	.ascii	"rcpps\0"
.balign 4
_Lt_023E:	.ascii	"rcpss\0"
.balign 4
_Lt_023F:	.ascii	"rdmsr\0"
.balign 4
_Lt_0240:	.ascii	"rdpmc\0"
.balign 4
_Lt_0241:	.ascii	"rdtsc\0"
.balign 4
_Lt_0242:	.ascii	"rep\0"
.balign 4
_Lt_0243:	.ascii	"repe\0"
.balign 4
_Lt_0244:	.ascii	"repz\0"
.balign 4
_Lt_0245:	.ascii	"repne\0"
.balign 4
_Lt_0246:	.ascii	"repnz\0"
.balign 4
_Lt_0247:	.ascii	"ret\0"
.balign 4
_Lt_0248:	.ascii	"rsm\0"
.balign 4
_Lt_0249:	.ascii	"rsqrtps\0"
.balign 4
_Lt_024A:	.ascii	"rsqrtss\0"
.balign 4
_Lt_024B:	.ascii	"sahf\0"
.balign 4
_Lt_024C:	.ascii	"sal\0"
.balign 4
_Lt_024D:	.ascii	"sar\0"
.balign 4
_Lt_024E:	.ascii	"shl\0"
.balign 4
_Lt_024F:	.ascii	"shr\0"
.balign 4
_Lt_0250:	.ascii	"sbb\0"
.balign 4
_Lt_0251:	.ascii	"scas\0"
.balign 4
_Lt_0252:	.ascii	"scasb\0"
.balign 4
_Lt_0253:	.ascii	"scasw\0"
.balign 4
_Lt_0254:	.ascii	"scasd\0"
.balign 4
_Lt_0255:	.ascii	"seta\0"
.balign 4
_Lt_0256:	.ascii	"setae\0"
.balign 4
_Lt_0257:	.ascii	"setb\0"
.balign 4
_Lt_0258:	.ascii	"setbe\0"
.balign 4
_Lt_0259:	.ascii	"setc\0"
.balign 4
_Lt_025A:	.ascii	"sete\0"
.balign 4
_Lt_025B:	.ascii	"setg\0"
.balign 4
_Lt_025C:	.ascii	"setge\0"
.balign 4
_Lt_025D:	.ascii	"setl\0"
.balign 4
_Lt_025E:	.ascii	"setle\0"
.balign 4
_Lt_025F:	.ascii	"setna\0"
.balign 4
_Lt_0260:	.ascii	"setnae\0"
.balign 4
_Lt_0261:	.ascii	"setnb\0"
.balign 4
_Lt_0262:	.ascii	"setnbe\0"
.balign 4
_Lt_0263:	.ascii	"setnc\0"
.balign 4
_Lt_0264:	.ascii	"setne\0"
.balign 4
_Lt_0265:	.ascii	"setng\0"
.balign 4
_Lt_0266:	.ascii	"setnge\0"
.balign 4
_Lt_0267:	.ascii	"setnl\0"
.balign 4
_Lt_0268:	.ascii	"setnle\0"
.balign 4
_Lt_0269:	.ascii	"setno\0"
.balign 4
_Lt_026A:	.ascii	"setnp\0"
.balign 4
_Lt_026B:	.ascii	"setns\0"
.balign 4
_Lt_026C:	.ascii	"setnz\0"
.balign 4
_Lt_026D:	.ascii	"seto\0"
.balign 4
_Lt_026E:	.ascii	"setp\0"
.balign 4
_Lt_026F:	.ascii	"setpe\0"
.balign 4
_Lt_0270:	.ascii	"setpo\0"
.balign 4
_Lt_0271:	.ascii	"sets\0"
.balign 4
_Lt_0272:	.ascii	"setz\0"
.balign 4
_Lt_0273:	.ascii	"sfence\0"
.balign 4
_Lt_0274:	.ascii	"sgdt\0"
.balign 4
_Lt_0275:	.ascii	"sidt\0"
.balign 4
_Lt_0276:	.ascii	"shld\0"
.balign 4
_Lt_0277:	.ascii	"shrd\0"
.balign 4
_Lt_0278:	.ascii	"shufpd\0"
.balign 4
_Lt_0279:	.ascii	"shufps\0"
.balign 4
_Lt_027A:	.ascii	"sldt\0"
.balign 4
_Lt_027B:	.ascii	"smsw\0"
.balign 4
_Lt_027C:	.ascii	"sqrtpd\0"
.balign 4
_Lt_027D:	.ascii	"sqrtps\0"
.balign 4
_Lt_027E:	.ascii	"sqrtsd\0"
.balign 4
_Lt_027F:	.ascii	"sqrtss\0"
.balign 4
_Lt_0280:	.ascii	"stc\0"
.balign 4
_Lt_0281:	.ascii	"std\0"
.balign 4
_Lt_0282:	.ascii	"sti\0"
.balign 4
_Lt_0283:	.ascii	"stmxcsr\0"
.balign 4
_Lt_0284:	.ascii	"stos\0"
.balign 4
_Lt_0285:	.ascii	"stosb\0"
.balign 4
_Lt_0286:	.ascii	"stosw\0"
.balign 4
_Lt_0287:	.ascii	"stosd\0"
.balign 4
_Lt_0288:	.ascii	"str\0"
.balign 4
_Lt_0289:	.ascii	"sub\0"
.balign 4
_Lt_028A:	.ascii	"subpd\0"
.balign 4
_Lt_028B:	.ascii	"subps\0"
.balign 4
_Lt_028C:	.ascii	"subsd\0"
.balign 4
_Lt_028D:	.ascii	"subss\0"
.balign 4
_Lt_028E:	.ascii	"sysenter\0"
.balign 4
_Lt_028F:	.ascii	"sysexit\0"
.balign 4
_Lt_0290:	.ascii	"test\0"
.balign 4
_Lt_0291:	.ascii	"ucomisd\0"
.balign 4
_Lt_0292:	.ascii	"ucomiss\0"
.balign 4
_Lt_0293:	.ascii	"ud2\0"
.balign 4
_Lt_0294:	.ascii	"unpckhpd\0"
.balign 4
_Lt_0295:	.ascii	"unpckhps\0"
.balign 4
_Lt_0296:	.ascii	"unpcklpd\0"
.balign 4
_Lt_0297:	.ascii	"unpcklps\0"
.balign 4
_Lt_0298:	.ascii	"verr\0"
.balign 4
_Lt_0299:	.ascii	"verw\0"
.balign 4
_Lt_029A:	.ascii	"wait\0"
.balign 4
_Lt_029B:	.ascii	"wbinvd\0"
.balign 4
_Lt_029C:	.ascii	"wrmsr\0"
.balign 4
_Lt_029D:	.ascii	"xadd\0"
.balign 4
_Lt_029E:	.ascii	"xchg\0"
.balign 4
_Lt_029F:	.ascii	"xlat\0"
.balign 4
_Lt_02A0:	.ascii	"xlatb\0"
.balign 4
_Lt_02A1:	.ascii	"xor\0"
.balign 4
_Lt_02A2:	.ascii	"xorpd\0"
.balign 4
_Lt_02A3:	.ascii	"xorps\0"
.balign 4
_Lt_02A4:	.ascii	"pavgusb\0"
.balign 4
_Lt_02A5:	.ascii	"pfadd\0"
.balign 4
_Lt_02A6:	.ascii	"pfsub\0"
.balign 4
_Lt_02A7:	.ascii	"pfsubr\0"
.balign 4
_Lt_02A8:	.ascii	"pfacc\0"
.balign 4
_Lt_02A9:	.ascii	"pfcmpge\0"
.balign 4
_Lt_02AA:	.ascii	"pfcmpgt\0"
.balign 4
_Lt_02AB:	.ascii	"pfcmpeq\0"
.balign 4
_Lt_02AC:	.ascii	"pfmin\0"
.balign 4
_Lt_02AD:	.ascii	"pfmax\0"
.balign 4
_Lt_02AE:	.ascii	"pi2fw\0"
.balign 4
_Lt_02AF:	.ascii	"pi2fd\0"
.balign 4
_Lt_02B0:	.ascii	"pf2iw\0"
.balign 4
_Lt_02B1:	.ascii	"pf2id\0"
.balign 4
_Lt_02B2:	.ascii	"pfrcp\0"
.balign 4
_Lt_02B3:	.ascii	"pfrsqrt\0"
.balign 4
_Lt_02B4:	.ascii	"pfmul\0"
.balign 4
_Lt_02B5:	.ascii	"pfrcpit1\0"
.balign 4
_Lt_02B6:	.ascii	"pfrsqit1\0"
.balign 4
_Lt_02B7:	.ascii	"pfrcpit2\0"
.balign 4
_Lt_02B8:	.ascii	"pmulhrw\0"
.balign 4
_Lt_02B9:	.ascii	"pswapw\0"
.balign 4
_Lt_02BA:	.ascii	"femms\0"
.balign 4
_Lt_02BB:	.ascii	"prefetch\0"
.balign 4
_Lt_02BC:	.ascii	"prefetchw\0"
.balign 4
_Lt_02BD:	.ascii	"pfnacc\0"
.balign 4
_Lt_02BE:	.ascii	"pfpnacc\0"
.balign 4
_Lt_02BF:	.ascii	"pswapd\0"
.balign 4
_Lt_02C0:	.ascii	"pmulhuw\0"

.section .bss
.balign 4
	.lcomm	_ASMKEYWORDS,16

.section .data
.balign 4
_Lt_02FF:	.ascii	"\"\0"

.section .ctors
.int _fb_ctor__parserzinlineasm
