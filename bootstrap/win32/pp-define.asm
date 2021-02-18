	.intel_syntax noprefix

.section .text
.balign 16

.globl _PPDEFINEINIT@0
_PPDEFINEINIT@0:
.Lt_0068:
push 6
push 388
push 8
lea eax, [_PP+184]
push eax
call _LISTINIT@16
.Lt_0069:
ret
.balign 16

.globl _PPDEFINEEND@0
_PPDEFINEEND@0:
.Lt_006A:
lea eax, [_PP+184]
push eax
call _LISTEND@4
.Lt_006B:
ret
.balign 16

.globl _PPDEFINELOAD@8
_PPDEFINELOAD@8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_01A9:
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+8], eax
jne .Lt_01AC
push 0
push 0
push 89
call _ERRREPORT@12
push 0
push 62
push 0
push -1
call _HSKIPUNTIL@16
mov dword ptr [ebp-4], -1
jmp .Lt_01AA
.Lt_01AC:
.Lt_01AB:
cmp dword ptr [_ENV+552], 0
jne .Lt_01AE
push dword ptr [ebp+8]
call _HLOADDEFINE@4
mov dword ptr [ebp-4], eax
jmp .Lt_01AD
.Lt_01AE:
push dword ptr [ebp+8]
call _HLOADDEFINEW@4
mov dword ptr [ebp-4], eax
.Lt_01AD:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8392], 0
jle .Lt_01B0
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8384], 0
jne .Lt_01B2
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [ebp+8]
mov dword ptr [eax+8384], ebx
.Lt_01B2:
.Lt_01B1:
.Lt_01B0:
.Lt_01AF:
mov ebx, dword ptr [_LEX+422144]
mov dword ptr [ebx+8364], 4294967295
.Lt_01AA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16

.globl _PPDEFINE@4
_PPDEFINE@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
.Lt_0221:
push 38
lea eax, [ebp-32]
push eax
call _CIDENTIFIER@8
mov dword ptr [ebp-28], eax
mov dword ptr [ebp-12], 62
cmp dword ptr [ebp+8], 0
je .Lt_0224
and dword ptr [ebp-12], -5
.Lt_0224:
.Lt_0223:
push dword ptr [ebp-12]
push offset _Lt_0254
call _LEXEATTOKEN@8
push offset _Lt_0254
call _HISVALIDSYMBOLNAME@4
test eax, eax
jne .Lt_0226
push 0
push 0
push 14
call _ERRREPORT@12
jmp .Lt_0222
.Lt_0226:
.Lt_0225:
push dword ptr [ebp-12]
call _LEXGETTOKEN@4
cmp eax, 46
jne .Lt_0228
push 0
push 0
push 90
call _ERRREPORT@12
.Lt_0228:
.Lt_0227:
cmp dword ptr [ebp-28], 0
je .Lt_022A
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-24]
cmp dword ptr [ebx], 5
je .Lt_022C
mov ebx, dword ptr [ebp-24]
mov eax, dword ptr [ebx+12]
and eax, 1048576
test eax, eax
je .Lt_022E
push 0
push 1
push 0
push 39
call _ERRREPORTWARN@16
push dword ptr [ebp-24]
call _SYMBDELFROMHASH@4
mov dword ptr [ebp-24], 0
jmp .Lt_022D
.Lt_022E:
push 0
push 1
push 0
push offset _Lt_0254
push 4
call _ERRREPORTEX@20
push 0
push 0
call _SYMBUNIQUELABEL@0
push eax
push 129
push offset _Lt_0254
call _fb_StrAssign@20
.Lt_022D:
.Lt_022C:
.Lt_022B:
jmp .Lt_0229
.Lt_022A:
mov dword ptr [ebp-24], 0
.Lt_0229:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-40], 8
cmp dword ptr [ebp+8], 0
je .Lt_0230
push dword ptr [ebp-12]
call _LEXGETTOKEN@4
cmp eax, 63
jne .Lt_0232
push 2
call _LEXSKIPTOKEN@4
and dword ptr [ebp-40], -9
.Lt_0232:
.Lt_0231:
.Lt_0230:
.Lt_022F:
push dword ptr [ebp-12]
call _LEXGETTOKEN@4
cmp eax, 40
jne .Lt_0234
push 34
call _LEXSKIPTOKEN@4
push 34
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_0236
mov dword ptr [ebp-20], 0
.Lt_0237:
push 0
call _LEXGETCLASS@4
mov dword ptr [ebp-44], eax
jmp .Lt_023B
.Lt_023D:
call _LEXGETTEXT@0
push eax
push dword ptr [ebp-20]
call _SYMBADDDEFINEPARAM@8
mov dword ptr [ebp-20], eax
jmp .Lt_023A
.Lt_023E:
push 0
push 0
push 14
call _ERRREPORT@12
call _SYMBUNIQUELABEL@0
push eax
push dword ptr [ebp-20]
call _SYMBADDDEFINEPARAM@8
mov dword ptr [ebp-20], eax
jmp .Lt_023A
.Lt_023B:
cmp dword ptr [ebp-44], 2
ja .Lt_023E
mov eax, dword ptr [ebp-44]
jmp dword ptr [_.LT_023F+eax*4]
_.LT_023F:
.int .Lt_023D
.int .Lt_023D
.int .Lt_023D
.Lt_023A:
cmp dword ptr [ebp-20], 0
jne .Lt_0241
push 0
push 0
push 4
call _ERRREPORT@12
.Lt_0241:
.Lt_0240:
push 34
call _LEXSKIPTOKEN@4
inc dword ptr [ebp-4]
cmp dword ptr [ebp-4], 32
jl .Lt_0243
push 0
push 0
push 79
call _ERRREPORT@12
push 0
push 0
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0222
.Lt_0243:
.Lt_0242:
cmp dword ptr [ebp-16], 0
jne .Lt_0245
mov eax, dword ptr [ebp-20]
mov dword ptr [ebp-16], eax
.Lt_0245:
.Lt_0244:
push 34
call _LEXGETTOKEN@4
cmp eax, 44
je .Lt_0247
jmp .Lt_0238
.Lt_0247:
.Lt_0246:
push 34
call _LEXSKIPTOKEN@4
.Lt_0239:
jmp .Lt_0237
.Lt_0238:
call _HMATCHPARAMELLIPSIS@0
test eax, eax
je .Lt_0249
or dword ptr [ebp-40], 4
.Lt_0249:
.Lt_0248:
jmp .Lt_0235
.Lt_0236:
mov dword ptr [ebp-8], -1
.Lt_0235:
push 62
call _LEXGETTOKEN@4
cmp eax, 41
je .Lt_024B
push 0
push 0
push 7
call _ERRREPORT@12
push 0
push 62
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_024A
.Lt_024B:
push 58
call _LEXSKIPTOKEN@4
.Lt_024A:
jmp .Lt_0233
.Lt_0234:
cmp dword ptr [ebp+8], 0
jne .Lt_024D
push 62
call _LEXGETTOKEN@4
cmp eax, 32
jne .Lt_024F
push 58
call _LEXSKIPTOKEN@4
.Lt_024F:
.Lt_024E:
.Lt_024D:
.Lt_024C:
.Lt_0233:
cmp dword ptr [ebp-4], 0
jne .Lt_0251
push dword ptr [ebp-40]
push dword ptr [ebp+8]
push dword ptr [ebp-8]
push offset _Lt_0254
push dword ptr [ebp-24]
call _HREADDEFINETEXT@20
jmp .Lt_0222
.Lt_0251:
.Lt_0250:
cmp dword ptr [ebp-24], 0
je .Lt_0253
push 0
push 1
push 0
push offset _Lt_0254
push 4
call _ERRREPORTEX@20
jmp .Lt_0252
.Lt_0253:
push dword ptr [ebp+8]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
call _HREADMACROTEXT@12
mov dword ptr [ebp-36], eax
push dword ptr [ebp-40]
push dword ptr [ebp-16]
push dword ptr [ebp-4]
push dword ptr [ebp-36]
push offset _Lt_0254
call _SYMBADDDEFINEMACRO@20
.Lt_0252:
.Lt_0222:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0254,129

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
_HREPORTMACROERROR@8:
push ebp
mov ebp, esp
sub esp, 24
.Lt_006C:
push 0
push 1
push 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+16]
push 12
push offset _Lt_006E
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
push dword ptr [ebp+12]
call _ERRREPORTEX@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_006D:
mov esp, ebp
pop ebp
ret 8
.balign 16
_ISMACROALLOWED@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0071:
cmp dword ptr [_PP+220], 0
jne .Lt_0074
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 2
je .Lt_0076
cmp dword ptr [_ENV+104], 1
jne .Lt_0078
push 0
push 0
push 286
call _ERRREPORT@12
mov dword ptr [ebp-4], 0
jmp .Lt_0072
.Lt_0078:
.Lt_0077:
.Lt_0076:
.Lt_0075:
.Lt_0074:
.Lt_0073:
mov dword ptr [ebp-4], -1
.Lt_0072:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HLOADMACRO@4:
push ebp
mov ebp, esp
sub esp, 2160
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0079:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-2132], 0
push -1
call _LEXCURRENTCHAR@4
cmp eax, 40
jne .Lt_007C
mov dword ptr [ebp-2132], -1
jmp .Lt_007B
.Lt_007C:
mov eax, dword ptr [_PP+224]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+72]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_007E
jmp .Lt_007A
.Lt_007E:
.Lt_007D:
.Lt_007B:
push dword ptr [ebp+8]
call _ISMACROALLOWED@4
test eax, eax
jne .Lt_0080
jmp .Lt_007A
.Lt_0080:
.Lt_007F:
inc dword ptr [_PP+224]
cmp dword ptr [ebp-2132], 0
je .Lt_0082
call _LEXEATCHAR@0
.Lt_0082:
.Lt_0081:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-8], ecx
cmp dword ptr [ebp-8], 0
je .Lt_0084
lea ecx, [_PP+184]
push ecx
call _LISTNEWNODE@4
mov dword ptr [ebp-2108], eax
jmp .Lt_0083
.Lt_0084:
mov dword ptr [ebp-2108], 0
.Lt_0083:
mov dword ptr [ebp-2112], 1
mov dword ptr [ebp-2120], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+72]
and ecx, 4
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-2124], ecx
mov dword ptr [ebp-2136], -1
mov dword ptr [ebp-2116], 0
cmp dword ptr [ebp-2108], 0
je .Lt_0086
mov ecx, dword ptr [ebp-2108]
mov dword ptr [ecx+384], 0
.Lt_0086:
.Lt_0085:
.Lt_0087:
cmp dword ptr [ebp-2108], 0
je .Lt_008B
mov ecx, dword ptr [ebp-2116]
imul ecx, 12
mov eax, dword ptr [ebp-2108]
add eax, ecx
lea ecx, [eax]
push ecx
call _DZSTRZERO@4
.Lt_008B:
.Lt_008A:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_008D
mov eax, dword ptr [ebp-2124]
mov dword ptr [ebp-2120], eax
.Lt_008D:
.Lt_008C:
.Lt_008E:
push 92
lea eax, [ebp-2104]
push eax
call _LEXNEXTTOKEN@8
mov eax, dword ptr [ebp-2104]
mov dword ptr [ebp-2140], eax
jmp .Lt_0092
.Lt_0094:
inc dword ptr [ebp-2112]
jmp .Lt_0091
.Lt_0095:
cmp dword ptr [ebp-2112], 0
jle .Lt_0097
dec dword ptr [ebp-2112]
cmp dword ptr [ebp-2112], 0
jne .Lt_0099
jmp .Lt_008F
.Lt_0099:
.Lt_0098:
.Lt_0097:
.Lt_0096:
jmp .Lt_0091
.Lt_009A:
cmp dword ptr [ebp-2112], 1
jne .Lt_009C
cmp dword ptr [ebp-2108], 0
je .Lt_009E
mov eax, dword ptr [ebp-2108]
cmp dword ptr [eax+384], 0
jne .Lt_00A0
mov eax, dword ptr [ebp-2108]
mov dword ptr [eax+384], 1
.Lt_00A0:
.Lt_009F:
mov eax, dword ptr [ebp-2108]
inc dword ptr [eax+384]
.Lt_009E:
.Lt_009D:
cmp dword ptr [ebp-2120], 0
jne .Lt_00A2
jmp .Lt_008F
.Lt_00A2:
.Lt_00A1:
.Lt_009C:
.Lt_009B:
jmp .Lt_0091
.Lt_00A3:
mov eax, dword ptr [ebp-2132]
not eax
test eax, eax
je .Lt_00A5
mov dword ptr [ebp-2136], 58
mov dword ptr [ebp-2112], 0
jmp .Lt_008F
.Lt_00A5:
.Lt_00A4:
jmp .Lt_0091
.Lt_00A6:
cmp dword ptr [ebp-2132], 0
je .Lt_00A8
push 7
push dword ptr [ebp+8]
call _HREPORTMACROERROR@8
jmp .Lt_00A7
.Lt_00A8:
cmp dword ptr [ebp-2104], 256
jne .Lt_00A9
mov dword ptr [ebp-2144], 0
jmp .Lt_0255
.Lt_00A9:
mov dword ptr [ebp-2144], 10
.Lt_0255:
mov eax, dword ptr [ebp-2144]
mov dword ptr [ebp-2136], eax
.Lt_00A7:
mov dword ptr [ebp-2112], 0
jmp .Lt_008F
jmp .Lt_0091
.Lt_00AB:
jmp .Lt_0091
.Lt_00AC:
cmp dword ptr [ebp-2108], 0
je .Lt_00AE
mov eax, dword ptr [ebp-2108]
cmp dword ptr [eax+384], 0
jne .Lt_00B0
mov eax, dword ptr [ebp-2108]
mov dword ptr [eax+384], 1
.Lt_00B0:
.Lt_00AF:
.Lt_00AE:
.Lt_00AD:
jmp .Lt_0091
.Lt_0092:
mov eax, dword ptr [ebp-2140]
add eax, 4294967287
cmp eax, 249
ja .Lt_00AC
mov eax, dword ptr [ebp-2140]
jmp dword ptr [_.LT_00B1+eax*4-36]
_.LT_00B1:
.int .Lt_00AB
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AB
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_0094
.int .Lt_0095
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_009A
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00AC
.int .Lt_00A6
.int .Lt_00A6
.int .Lt_00A3
.Lt_0091:
cmp dword ptr [ebp-2108], 0
je .Lt_00B3
cmp dword ptr [ebp-2096], 7
je .Lt_00B5
lea eax, [ebp-2092]
push eax
mov eax, dword ptr [ebp-2116]
imul eax, 12
mov ecx, dword ptr [ebp-2108]
add ecx, eax
lea eax, [ecx]
push eax
call _DZSTRCONCATASSIGN@8
jmp .Lt_00B4
.Lt_00B5:
lea eax, [ebp-2092]
push eax
mov eax, dword ptr [ebp-2116]
imul eax, 12
mov ecx, dword ptr [ebp-2108]
add ecx, eax
lea eax, [ecx]
push eax
call _DZSTRCONCATASSIGNW@8
.Lt_00B4:
.Lt_00B3:
.Lt_00B2:
.Lt_0090:
jmp .Lt_008E
.Lt_008F:
cmp dword ptr [ebp-2108], 0
je .Lt_00B7
mov eax, dword ptr [ebp-2116]
imul eax, 12
mov ecx, dword ptr [ebp-2108]
add ecx, eax
lea eax, [ecx]
mov dword ptr [ebp-2140], eax
mov eax, dword ptr [ebp-2140]
cmp dword ptr [eax], 0
je .Lt_00BA
mov eax, dword ptr [ebp-2140]
mov ecx, dword ptr [eax]
movzx eax, byte ptr [ecx]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-2140]
push 0
mov ebx, dword ptr [ebp-2140]
push dword ptr [ebx]
mov ebx, ecx
mov esi, eax
call _fb_StrLen@8
mov ecx, dword ptr [ebx]
add ecx, eax
movzx eax, byte ptr [ecx-1]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
or esi, eax
je .Lt_00BC
mov dword ptr [ebp-2152], 0
mov dword ptr [ebp-2148], 0
mov dword ptr [ebp-2144], 0
push 0
push -1
mov eax, dword ptr [ebp-2140]
push dword ptr [eax]
call _fb_StrAllocTempDescZ@4
push eax
call _fb_TRIM@4
push eax
push -1
lea eax, [ebp-2152]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-2152]
mov eax, dword ptr [ebp-2140]
lea esi, [eax]
push esi
call _DZSTRASSIGN@8
lea esi, [ebp-2152]
push esi
call _fb_StrDelete@4
.Lt_00BC:
.Lt_00BB:
.Lt_00BA:
.Lt_00B9:
.Lt_00B7:
.Lt_00B6:
cmp dword ptr [ebp-2112], 0
jne .Lt_00BF
cmp dword ptr [ebp-12], 0
je .Lt_00C1
mov esi, dword ptr [ebp-12]
cmp dword ptr [esi+8], 0
setne al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp-2124]
not esi
or eax, esi
je .Lt_00C3
push 1
push dword ptr [ebp+8]
call _HREPORTMACROERROR@8
.Lt_00C3:
.Lt_00C2:
.Lt_00C4:
inc dword ptr [ebp-2116]
mov esi, dword ptr [ebp-2116]
imul esi, 12
mov eax, dword ptr [ebp-2108]
add eax, esi
lea esi, [eax]
push esi
call _DZSTRZERO@4
.Lt_00C6:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+56]
dec eax
cmp dword ptr [ebp-2116], eax
jl .Lt_00C4
.Lt_00C5:
.Lt_00C1:
.Lt_00C0:
jmp .Lt_0088
.Lt_00BF:
.Lt_00BE:
cmp dword ptr [ebp-12], 0
jne .Lt_00C8
push 1
push dword ptr [ebp+8]
call _HREPORTMACROERROR@8
push 0
push 62
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_0088
.Lt_00C8:
.Lt_00C7:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-2116]
.Lt_0089:
jmp .Lt_0087
.Lt_0088:
push 0
push 1
push offset _Lt_0000
push -1
push offset _Lt_025C
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .Lt_00CA
mov dword ptr [ebp-2140], 0
push 0
push -1
lea eax, [ebp-2140]
push eax
push dword ptr [ebp-2108]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
push eax
push -1
lea eax, [ebp-2152]
push eax
call _fb_StrInit@20
cmp dword ptr [ebp-2140], 0
jne .Lt_00CC
push 0
push -1
lea eax, [ebp-2152]
push eax
push -1
push offset _Lt_025C
call _fb_StrAssign@20
jmp .Lt_00CB
.Lt_00CC:
push dword ptr [ebp-2140]
push dword ptr [ebp+8]
call _HREPORTMACROERROR@8
.Lt_00CB:
lea eax, [ebp-2152]
push eax
call _fb_StrDelete@4
jmp .Lt_00C9
.Lt_00CA:
cmp dword ptr [ebp-2108], 0
je .Lt_00CE
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+64]
mov dword ptr [ebp-16], esi
.Lt_00CF:
cmp dword ptr [ebp-16], 0
je .Lt_00D0
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi]
mov dword ptr [ebp-2140], eax
jmp .Lt_00D2
.Lt_00D4:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-2108]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-2128], esi
cmp dword ptr [ebp-2128], 0
je .Lt_00D6
push 0
push -1
push 0
push dword ptr [ebp-2128]
push -1
push offset _Lt_025C
mov dword ptr [ebp-2152], 0
mov dword ptr [ebp-2148], 0
mov dword ptr [ebp-2144], 0
lea esi, [ebp-2152]
push esi
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_025C
call _fb_StrAssign@20
.Lt_00D6:
.Lt_00D5:
jmp .Lt_00D1
.Lt_00D8:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-2108]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-2128], esi
cmp dword ptr [ebp-2128], 0
je .Lt_00DA
push 0
push 3
push offset _Lt_00DD
push -1
push offset _Lt_025C
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_00DE
push offset _Lt_00DC
push dword ptr [ebp-2128]
call _HREPLACE@12
push eax
push -1
push offset _Lt_025C
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00DC
push -1
push offset _Lt_025C
call _fb_StrConcatAssign@20
jmp .Lt_00D9
.Lt_00DA:
push 0
push 3
push offset _Lt_00DE
push -1
push offset _Lt_025C
call _fb_StrConcatAssign@20
.Lt_00D9:
jmp .Lt_00D1
.Lt_00DF:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push -1
push offset _Lt_025C
mov dword ptr [ebp-2152], 0
mov dword ptr [ebp-2148], 0
mov dword ptr [ebp-2144], 0
lea eax, [ebp-2152]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_025C
call _fb_StrAssign@20
jmp .Lt_00D1
.Lt_00E1:
push 0
push -1
push -1
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call _fb_WstrToStr@4
push eax
push -1
push offset _Lt_025C
mov dword ptr [ebp-2152], 0
mov dword ptr [ebp-2148], 0
mov dword ptr [ebp-2144], 0
lea eax, [ebp-2152]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_025C
call _fb_StrAssign@20
jmp .Lt_00D1
.Lt_00D2:
cmp dword ptr [ebp-2140], 3
ja .Lt_00D1
mov eax, dword ptr [ebp-2140]
jmp dword ptr [_.LT_00E3+eax*4]
_.LT_00E3:
.int .Lt_00D4
.int .Lt_00D8
.int .Lt_00DF
.int .Lt_00E1
.Lt_00D1:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+12]
mov dword ptr [ebp-16], esi
jmp .Lt_00CF
.Lt_00D0:
.Lt_00E4:
cmp dword ptr [ebp-2116], 0
jle .Lt_00E5
dec dword ptr [ebp-2116]
push 0
mov esi, dword ptr [ebp-2116]
imul esi, 12
mov eax, dword ptr [ebp-2108]
add eax, esi
lea esi, [eax]
push esi
call _DZSTRASSIGN@8
jmp .Lt_00E4
.Lt_00E5:
push dword ptr [ebp-2108]
lea esi, [_PP+184]
push esi
call _LISTDELNODE@8
.Lt_00CE:
.Lt_00CD:
cmp dword ptr [ebp-2136], -1
je .Lt_00E7
push 0
push -1
push dword ptr [ebp-2136]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
push offset _Lt_025C
call _fb_StrConcatAssign@20
.Lt_00E7:
.Lt_00E6:
.Lt_00C9:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8392], 0
jne .Lt_00E9
push dword ptr [_Lt_025C]
mov eax, dword ptr [_LEX+422144]
lea esi, [eax+8400]
push esi
call _DZSTRASSIGN@8
jmp .Lt_00E8
.Lt_00E9:
mov dword ptr [ebp-2160], 0
mov dword ptr [ebp-2156], 0
mov dword ptr [ebp-2152], 0
push 0
push -1
push 0
mov esi, dword ptr [_LEX+422144]
push dword ptr [esi+8396]
push -1
push offset _Lt_025C
mov dword ptr [ebp-2148], 0
mov dword ptr [ebp-2144], 0
mov dword ptr [ebp-2140], 0
lea esi, [ebp-2148]
push esi
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-2160]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-2160]
mov eax, dword ptr [_LEX+422144]
lea esi, [eax+8400]
push esi
call _DZSTRASSIGN@8
lea esi, [ebp-2160]
push esi
call _fb_StrDelete@4
.Lt_00E8:
dec dword ptr [_PP+224]
push -1
push offset _Lt_025C
call _fb_StrLen@8
mov dword ptr [ebp-4], eax
.Lt_007A:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_025C,12

.section .text
.balign 16
_HLOADDEFINE@4:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EC:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jle .Lt_00EF
push dword ptr [ebp+8]
call _HLOADMACRO@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_00F1
jmp .Lt_00ED
.Lt_00F1:
.Lt_00F0:
jmp .Lt_00EE
.Lt_00EF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .Lt_00F3
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 1
je .Lt_00F5
push 0
push -1
push 2
push offset _Lt_00DC
push -1
push -1
mov ebx, dword ptr [ebp+8]
call dword ptr [ebx+76]
push eax
push 3
push offset _Lt_00DD
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
push offset _Lt_025D
call _fb_StrAssign@20
jmp .Lt_00F4
.Lt_00F5:
push 0
push -1
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
push eax
push -1
push offset _Lt_025D
call _fb_StrAssign@20
.Lt_00F4:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8392], 0
jne .Lt_00F9
push dword ptr [_Lt_025D]
mov eax, dword ptr [_LEX+422144]
lea ebx, [eax+8400]
push ebx
call _DZSTRASSIGN@8
jmp .Lt_00F8
.Lt_00F9:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
mov ebx, dword ptr [_LEX+422144]
push dword ptr [ebx+8396]
push -1
push offset _Lt_025D
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea ebx, [ebp-20]
push ebx
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-32]
mov eax, dword ptr [_LEX+422144]
lea ebx, [eax+8400]
push ebx
call _DZSTRASSIGN@8
lea ebx, [ebp-32]
push ebx
call _fb_StrDelete@4
.Lt_00F8:
push -1
push offset _Lt_025D
call _fb_StrLen@8
mov dword ptr [ebp-8], eax
jmp .Lt_00F2
.Lt_00F3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .Lt_00FD
mov dword ptr [ebp-12], 0
push -1
call _LEXCURRENTCHAR@4
cmp eax, 40
jne .Lt_00FF
mov dword ptr [ebp-12], -1
jmp .Lt_00FE
.Lt_00FF:
mov eax, dword ptr [_PP+224]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+72]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0101
jmp .Lt_00ED
.Lt_0101:
.Lt_0100:
.Lt_00FE:
cmp dword ptr [ebp-12], 0
je .Lt_0103
call _LEXEATCHAR@0
push -1
call _LEXCURRENTCHAR@4
cmp eax, 41
je .Lt_0105
push 0
push 0
push 7
call _ERRREPORT@12
jmp .Lt_0104
.Lt_0105:
call _LEXEATCHAR@0
.Lt_0104:
.Lt_0103:
.Lt_0102:
.Lt_00FD:
.Lt_00FC:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ecx, 7
je .Lt_0107
mov ecx, dword ptr [_LEX+422144]
cmp dword ptr [ecx+8392], 0
jne .Lt_0109
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
mov ecx, dword ptr [_LEX+422144]
lea eax, [ecx+8400]
push eax
call _DZSTRASSIGN@8
jmp .Lt_0108
.Lt_0109:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+8396]
push 0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-32]
mov eax, dword ptr [_LEX+422144]
lea ecx, [eax+8400]
push ecx
call _DZSTRASSIGN@8
lea ecx, [ebp-32]
push ecx
call _fb_StrDelete@4
.Lt_0108:
jmp .Lt_0106
.Lt_0107:
mov ecx, dword ptr [_LEX+422144]
cmp dword ptr [ecx+8392], 0
jne .Lt_010D
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
mov ecx, dword ptr [_LEX+422144]
lea eax, [ecx+8400]
push eax
call _DZSTRASSIGNW@8
jmp .Lt_010C
.Lt_010D:
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
push 0
push -1
push 0
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+8396]
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _fb_WstrToStr@4
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-32]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-32]
mov eax, dword ptr [_LEX+422144]
lea ecx, [eax+8400]
push ecx
call _DZSTRASSIGN@8
lea ecx, [ebp-32]
push ecx
call _fb_StrDelete@4
.Lt_010C:
.Lt_0106:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+40]
mov dword ptr [ebp-8], eax
.Lt_00F2:
.Lt_00EE:
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8400]
mov dword ptr [ecx+8396], ebx
mov ebx, dword ptr [_LEX+422144]
mov ecx, dword ptr [ebp-8]
add dword ptr [ebx+8392], ecx
mov ecx, dword ptr [_LEX+422144]
mov dword ptr [ecx+8364], 4294967295
mov dword ptr [ebp-4], -1
.Lt_00ED:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_025D,12

.section .text
.balign 16
_HLOADMACROW@4:
push ebp
mov ebp, esp
sub esp, 2160
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0110:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-2136], 0
push -1
call _LEXCURRENTCHAR@4
cmp eax, 40
jne .Lt_0113
mov dword ptr [ebp-2136], -1
jmp .Lt_0112
.Lt_0113:
mov eax, dword ptr [_PP+224]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+72]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0115
jmp .Lt_0111
.Lt_0115:
.Lt_0114:
.Lt_0112:
push dword ptr [ebp+8]
call _ISMACROALLOWED@4
test eax, eax
jne .Lt_0117
jmp .Lt_0111
.Lt_0117:
.Lt_0116:
inc dword ptr [_PP+224]
cmp dword ptr [ebp-2136], 0
je .Lt_0119
call _LEXEATCHAR@0
.Lt_0119:
.Lt_0118:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+60]
mov dword ptr [ebp-8], ecx
cmp dword ptr [ebp-8], 0
je .Lt_011B
lea ecx, [_PP+184]
push ecx
call _LISTNEWNODE@4
mov dword ptr [ebp-2108], eax
jmp .Lt_011A
.Lt_011B:
mov dword ptr [ebp-2108], 0
.Lt_011A:
mov dword ptr [ebp-2112], 1
mov dword ptr [ebp-2124], 0
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+72]
and ecx, 4
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
mov dword ptr [ebp-2128], ecx
mov dword ptr [ebp-2140], -1
mov dword ptr [ebp-2120], 0
cmp dword ptr [ebp-2108], 0
je .Lt_011D
mov ecx, dword ptr [ebp-2108]
mov dword ptr [ecx+384], 0
.Lt_011D:
.Lt_011C:
.Lt_011E:
cmp dword ptr [ebp-2108], 0
je .Lt_0122
mov ecx, dword ptr [ebp-2120]
imul ecx, 12
mov eax, dword ptr [ebp-2108]
add eax, ecx
lea ecx, [eax]
push ecx
call _DWSTRZERO@4
.Lt_0122:
.Lt_0121:
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ecx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_0124
mov eax, dword ptr [ebp-2128]
mov dword ptr [ebp-2124], eax
.Lt_0124:
.Lt_0123:
.Lt_0125:
push 92
lea eax, [ebp-2104]
push eax
call _LEXNEXTTOKEN@8
mov eax, dword ptr [ebp-2104]
mov dword ptr [ebp-2144], eax
jmp .Lt_0129
.Lt_012B:
inc dword ptr [ebp-2112]
jmp .Lt_0128
.Lt_012C:
cmp dword ptr [ebp-2112], 0
jle .Lt_012E
dec dword ptr [ebp-2112]
cmp dword ptr [ebp-2112], 0
jne .Lt_0130
jmp .Lt_0126
.Lt_0130:
.Lt_012F:
.Lt_012E:
.Lt_012D:
jmp .Lt_0128
.Lt_0131:
cmp dword ptr [ebp-2112], 1
jne .Lt_0133
cmp dword ptr [ebp-2108], 0
je .Lt_0135
mov eax, dword ptr [ebp-2108]
cmp dword ptr [eax+384], 0
jne .Lt_0137
mov eax, dword ptr [ebp-2108]
mov dword ptr [eax+384], 1
.Lt_0137:
.Lt_0136:
mov eax, dword ptr [ebp-2108]
inc dword ptr [eax+384]
.Lt_0135:
.Lt_0134:
cmp dword ptr [ebp-2124], 0
jne .Lt_0139
jmp .Lt_0126
.Lt_0139:
.Lt_0138:
.Lt_0133:
.Lt_0132:
jmp .Lt_0128
.Lt_013A:
mov eax, dword ptr [ebp-2136]
not eax
test eax, eax
je .Lt_013C
mov dword ptr [ebp-2140], 58
mov dword ptr [ebp-2112], 0
jmp .Lt_0126
.Lt_013C:
.Lt_013B:
jmp .Lt_0128
.Lt_013D:
cmp dword ptr [ebp-2136], 0
je .Lt_013F
push 7
push dword ptr [ebp+8]
call _HREPORTMACROERROR@8
jmp .Lt_013E
.Lt_013F:
cmp dword ptr [ebp-2104], 256
jne .Lt_0140
mov dword ptr [ebp-2148], 0
jmp .Lt_0260
.Lt_0140:
mov dword ptr [ebp-2148], 10
.Lt_0260:
mov eax, dword ptr [ebp-2148]
mov dword ptr [ebp-2140], eax
.Lt_013E:
mov dword ptr [ebp-2112], 0
jmp .Lt_0126
jmp .Lt_0128
.Lt_0142:
jmp .Lt_0128
.Lt_0143:
cmp dword ptr [ebp-2108], 0
je .Lt_0145
mov eax, dword ptr [ebp-2108]
cmp dword ptr [eax+384], 0
jne .Lt_0147
mov eax, dword ptr [ebp-2108]
mov dword ptr [eax+384], 1
.Lt_0147:
.Lt_0146:
.Lt_0145:
.Lt_0144:
jmp .Lt_0128
.Lt_0129:
mov eax, dword ptr [ebp-2144]
add eax, 4294967287
cmp eax, 249
ja .Lt_0143
mov eax, dword ptr [ebp-2144]
jmp dword ptr [_.LT_0148+eax*4-36]
_.LT_0148:
.int .Lt_0142
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0142
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_012B
.int .Lt_012C
.int .Lt_0143
.int .Lt_0143
.int .Lt_0131
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_0143
.int .Lt_013D
.int .Lt_013D
.int .Lt_013A
.Lt_0128:
cmp dword ptr [ebp-2108], 0
je .Lt_014A
cmp dword ptr [ebp-2096], 7
je .Lt_014C
lea eax, [ebp-2092]
push eax
mov eax, dword ptr [ebp-2120]
imul eax, 12
mov ecx, dword ptr [ebp-2108]
add ecx, eax
lea eax, [ecx]
push eax
call _DWSTRCONCATASSIGNA@8
jmp .Lt_014B
.Lt_014C:
lea eax, [ebp-2092]
push eax
mov eax, dword ptr [ebp-2120]
imul eax, 12
mov ecx, dword ptr [ebp-2108]
add ecx, eax
lea eax, [ecx]
push eax
call _DWSTRCONCATASSIGN@8
.Lt_014B:
.Lt_014A:
.Lt_0149:
.Lt_0127:
jmp .Lt_0125
.Lt_0126:
cmp dword ptr [ebp-2108], 0
je .Lt_014E
mov eax, dword ptr [ebp-2120]
imul eax, 12
mov ecx, dword ptr [ebp-2108]
add ecx, eax
lea eax, [ecx]
mov dword ptr [ebp-2144], eax
mov eax, dword ptr [ebp-2144]
cmp dword ptr [eax], 0
je .Lt_0151
mov eax, dword ptr [ebp-2144]
mov ecx, dword ptr [eax]
movzx eax, word ptr [ecx]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-2144]
mov ebx, dword ptr [ebp-2144]
push dword ptr [ebx]
mov ebx, ecx
mov esi, eax
call _fb_WstrLen@4
sal eax, 1
mov ecx, dword ptr [ebx]
add ecx, eax
movzx eax, word ptr [ecx-2]
cmp eax, 32
sete al
shr eax, 1
sbb eax, eax
or esi, eax
je .Lt_0153
mov eax, dword ptr [ebp-2144]
push dword ptr [eax]
call _fb_WstrTrim@4
mov dword ptr [ebp-2148], eax
push dword ptr [ebp-2148]
mov eax, dword ptr [ebp-2144]
lea esi, [eax]
push esi
call _DWSTRASSIGN@8
push dword ptr [ebp-2148]
call _fb_WstrDelete@4
.Lt_0153:
.Lt_0152:
.Lt_0151:
.Lt_0150:
.Lt_014E:
.Lt_014D:
cmp dword ptr [ebp-2112], 0
jne .Lt_0156
cmp dword ptr [ebp-12], 0
je .Lt_0158
mov esi, dword ptr [ebp-12]
cmp dword ptr [esi+8], 0
setne al
shr eax, 1
sbb eax, eax
mov esi, dword ptr [ebp-2128]
not esi
or eax, esi
je .Lt_015A
push 1
push dword ptr [ebp+8]
call _HREPORTMACROERROR@8
.Lt_015A:
.Lt_0159:
.Lt_015B:
inc dword ptr [ebp-2120]
mov esi, dword ptr [ebp-2120]
imul esi, 12
mov eax, dword ptr [ebp-2108]
add eax, esi
lea esi, [eax]
push esi
call _DWSTRZERO@4
.Lt_015D:
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+56]
dec eax
cmp dword ptr [ebp-2120], eax
jl .Lt_015B
.Lt_015C:
.Lt_0158:
.Lt_0157:
jmp .Lt_011F
.Lt_0156:
.Lt_0155:
cmp dword ptr [ebp-12], 0
jne .Lt_015F
push 1
push dword ptr [ebp+8]
call _HREPORTMACROERROR@8
push 0
push 62
push -1
push 41
call _HSKIPUNTIL@16
jmp .Lt_011F
.Lt_015F:
.Lt_015E:
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-8], eax
inc dword ptr [ebp-2120]
.Lt_0120:
jmp .Lt_011E
.Lt_011F:
push 0
push offset _Lt_0267
call _DWSTRASSIGN@8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .Lt_0161
mov dword ptr [ebp-2144], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+80], 0
je .Lt_0163
lea eax, [ebp-2144]
push eax
push dword ptr [ebp-2108]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+80]
mov dword ptr [ebp-2148], eax
cmp dword ptr [ebp-2144], 0
jne .Lt_0165
push dword ptr [ebp-2148]
push offset _Lt_0267
call _DWSTRASSIGN@8
jmp .Lt_0164
.Lt_0165:
push dword ptr [ebp-2144]
push dword ptr [ebp+8]
call _HREPORTMACROERROR@8
.Lt_0164:
jmp .Lt_0162
.Lt_0163:
push 0
push -1
lea eax, [ebp-2144]
push eax
push dword ptr [ebp-2108]
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
push eax
push -1
lea eax, [ebp-2156]
push eax
call _fb_StrInit@20
cmp dword ptr [ebp-2144], 0
jne .Lt_0167
push dword ptr [ebp-2156]
push offset _Lt_0267
call _DWSTRASSIGNA@8
jmp .Lt_0166
.Lt_0167:
push dword ptr [ebp-2144]
push dword ptr [ebp+8]
call _HREPORTMACROERROR@8
.Lt_0166:
lea eax, [ebp-2156]
push eax
call _fb_StrDelete@4
.Lt_0162:
jmp .Lt_0160
.Lt_0161:
cmp dword ptr [ebp-2108], 0
je .Lt_0169
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+64]
mov dword ptr [ebp-16], esi
.Lt_016A:
cmp dword ptr [ebp-16], 0
je .Lt_016B
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi]
mov dword ptr [ebp-2144], eax
jmp .Lt_016D
.Lt_016F:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+4]
imul esi, 12
mov eax, dword ptr [ebp-2108]
add eax, esi
mov esi, dword ptr [eax]
mov dword ptr [ebp-2132], esi
cmp dword ptr [ebp-2132], 0
je .Lt_0171
push dword ptr [ebp-2132]
push offset _Lt_0267
call _DWSTRCONCATASSIGN@8
.Lt_0171:
.Lt_0170:
jmp .Lt_016C
.Lt_0172:
mov esi, dword ptr [ebp-16]
mov eax, dword ptr [esi+4]
imul eax, 12
mov esi, dword ptr [ebp-2108]
add esi, eax
mov eax, dword ptr [esi]
mov dword ptr [ebp-2132], eax
cmp dword ptr [ebp-2132], 0
je .Lt_0174
push offset _Lt_00DD
call _fb_StrToWstr@4
mov dword ptr [ebp-2148], eax
push dword ptr [ebp-2148]
push offset _Lt_0267
call _DWSTRCONCATASSIGN@8
push dword ptr [ebp-2148]
call _fb_WstrDelete@4
push offset _Lt_00DE
call _fb_StrToWstr@4
mov dword ptr [ebp-2156], eax
push dword ptr [ebp-2156]
push offset _Lt_00DC
call _fb_StrToWstr@4
mov dword ptr [ebp-2152], eax
push dword ptr [ebp-2152]
push dword ptr [ebp-2132]
call _HREPLACEW@12
push eax
push offset _Lt_0267
call _DWSTRCONCATASSIGN@8
push dword ptr [ebp-2156]
call _fb_WstrDelete@4
push dword ptr [ebp-2152]
call _fb_WstrDelete@4
push offset _Lt_00DC
call _fb_StrToWstr@4
mov dword ptr [ebp-2160], eax
push dword ptr [ebp-2160]
push offset _Lt_0267
call _DWSTRCONCATASSIGN@8
push dword ptr [ebp-2160]
call _fb_WstrDelete@4
jmp .Lt_0173
.Lt_0174:
push offset _Lt_00DE
call _fb_StrToWstr@4
mov dword ptr [ebp-2148], eax
push dword ptr [ebp-2148]
push offset _Lt_0267
call _DWSTRCONCATASSIGN@8
push dword ptr [ebp-2148]
call _fb_WstrDelete@4
.Lt_0173:
jmp .Lt_016C
.Lt_017A:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push offset _Lt_0267
call _DWSTRCONCATASSIGNA@8
jmp .Lt_016C
.Lt_017B:
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
push offset _Lt_0267
call _DWSTRCONCATASSIGN@8
jmp .Lt_016C
.Lt_016D:
cmp dword ptr [ebp-2144], 3
ja .Lt_016C
mov eax, dword ptr [ebp-2144]
jmp dword ptr [_.LT_017C+eax*4]
_.LT_017C:
.int .Lt_016F
.int .Lt_0172
.int .Lt_017A
.int .Lt_017B
.Lt_016C:
mov eax, dword ptr [ebp-16]
mov esi, dword ptr [eax+12]
mov dword ptr [ebp-16], esi
jmp .Lt_016A
.Lt_016B:
.Lt_017D:
cmp dword ptr [ebp-2120], 0
jle .Lt_017E
dec dword ptr [ebp-2120]
push 0
mov esi, dword ptr [ebp-2120]
imul esi, 12
mov eax, dword ptr [ebp-2108]
add eax, esi
lea esi, [eax]
push esi
call _DWSTRASSIGN@8
jmp .Lt_017D
.Lt_017E:
push dword ptr [ebp-2108]
lea esi, [_PP+184]
push esi
call _LISTDELNODE@8
.Lt_0169:
.Lt_0168:
.Lt_0160:
cmp dword ptr [ebp-2140], -1
je .Lt_0180
mov dword ptr [ebp-2152], 0
mov dword ptr [ebp-2148], 0
mov dword ptr [ebp-2144], 0
push 0
push -1
push dword ptr [ebp-2140]
push 1
call _fb_CHR
add esp, 8
push eax
push -1
lea eax, [ebp-2152]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-2152]
push offset _Lt_0267
call _DWSTRCONCATASSIGNA@8
lea eax, [ebp-2152]
push eax
call _fb_StrDelete@4
.Lt_0180:
.Lt_017F:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8392], 0
jne .Lt_0183
push dword ptr [_Lt_0267]
mov eax, dword ptr [_LEX+422144]
lea esi, [eax+8400]
push esi
call _DWSTRASSIGN@8
jmp .Lt_0182
.Lt_0183:
mov esi, dword ptr [_LEX+422144]
push dword ptr [esi+8396]
push dword ptr [_Lt_0267]
call _fb_WstrConcat@8
mov dword ptr [ebp-2144], eax
push dword ptr [ebp-2144]
mov eax, dword ptr [_LEX+422144]
lea esi, [eax+8400]
push esi
call _DWSTRASSIGN@8
push dword ptr [ebp-2144]
call _fb_WstrDelete@4
.Lt_0182:
dec dword ptr [_PP+224]
push dword ptr [_Lt_0267]
call _fb_WstrLen@4
mov dword ptr [ebp-4], eax
.Lt_0111:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0267,12

.section .text
.balign 16
_HLOADDEFINEW@4:
push ebp
mov ebp, esp
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
.Lt_0185:
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jle .Lt_0188
push dword ptr [ebp+8]
call _HLOADMACROW@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_018A
jmp .Lt_0186
.Lt_018A:
.Lt_0189:
jmp .Lt_0187
.Lt_0188:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+76], 0
je .Lt_018C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+72]
and ebx, 1
je .Lt_018E
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
push 0
push -1
push 2
push offset _Lt_00DC
push -1
push -1
mov ebx, dword ptr [ebp+8]
call dword ptr [ebx+76]
push eax
push 3
push offset _Lt_00DD
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-44]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-44]
push offset _Lt_0268
call _DWSTRASSIGNA@8
lea eax, [ebp-44]
push eax
call _fb_StrDelete@4
jmp .Lt_018D
.Lt_018E:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
call dword ptr [eax+76]
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-20]
push offset _Lt_0268
call _DWSTRASSIGNA@8
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.Lt_018D:
mov eax, dword ptr [_LEX+422144]
cmp dword ptr [eax+8392], 0
jne .Lt_0194
push dword ptr [_Lt_0268]
mov eax, dword ptr [_LEX+422144]
lea ebx, [eax+8400]
push ebx
call _DWSTRASSIGN@8
jmp .Lt_0193
.Lt_0194:
mov ebx, dword ptr [_LEX+422144]
push dword ptr [ebx+8396]
push dword ptr [_Lt_0268]
call _fb_WstrConcat@8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [_LEX+422144]
lea ebx, [eax+8400]
push ebx
call _DWSTRASSIGN@8
push dword ptr [ebp-12]
call _fb_WstrDelete@4
.Lt_0193:
push dword ptr [_Lt_0268]
call _fb_WstrLen@4
mov dword ptr [ebp-8], eax
jmp .Lt_018B
.Lt_018C:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+68], 0
je .Lt_0197
mov dword ptr [ebp-12], 0
push -1
call _LEXCURRENTCHAR@4
cmp eax, 40
jne .Lt_0199
mov dword ptr [ebp-12], -1
jmp .Lt_0198
.Lt_0199:
mov eax, dword ptr [_PP+224]
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+72]
and ecx, 8
test ecx, ecx
setne cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_019B
jmp .Lt_0186
.Lt_019B:
.Lt_019A:
.Lt_0198:
cmp dword ptr [ebp-12], 0
je .Lt_019D
call _LEXEATCHAR@0
push -1
call _LEXCURRENTCHAR@4
cmp eax, 41
je .Lt_019F
push 0
push 0
push 7
call _ERRREPORT@12
jmp .Lt_019E
.Lt_019F:
call _LEXEATCHAR@0
.Lt_019E:
.Lt_019D:
.Lt_019C:
.Lt_0197:
.Lt_0196:
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ecx, 7
je .Lt_01A1
mov ecx, dword ptr [_LEX+422144]
cmp dword ptr [ecx+8392], 0
jne .Lt_01A3
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
mov ecx, dword ptr [_LEX+422144]
lea eax, [ecx+8400]
push eax
call _DWSTRASSIGNA@8
jmp .Lt_01A2
.Lt_01A3:
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+8396]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _fb_StrToWstr@4
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call _fb_WstrConcat@8
mov dword ptr [ebp-16], eax
push dword ptr [ebp-16]
mov eax, dword ptr [_LEX+422144]
lea ecx, [eax+8400]
push ecx
call _DWSTRASSIGN@8
push dword ptr [ebp-16]
call _fb_WstrDelete@4
push dword ptr [ebp-12]
call _fb_WstrDelete@4
.Lt_01A2:
jmp .Lt_01A0
.Lt_01A1:
mov ecx, dword ptr [_LEX+422144]
cmp dword ptr [ecx+8392], 0
jne .Lt_01A7
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
mov ecx, dword ptr [_LEX+422144]
lea eax, [ecx+8400]
push eax
call _DWSTRASSIGN@8
jmp .Lt_01A6
.Lt_01A7:
mov eax, dword ptr [_LEX+422144]
push dword ptr [eax+8396]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+64]
call _fb_WstrConcat@8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
mov eax, dword ptr [_LEX+422144]
lea ecx, [eax+8400]
push ecx
call _DWSTRASSIGN@8
push dword ptr [ebp-12]
call _fb_WstrDelete@4
.Lt_01A6:
.Lt_01A0:
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+40]
mov dword ptr [ebp-8], eax
.Lt_018B:
.Lt_0187:
mov eax, dword ptr [_LEX+422144]
mov ecx, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8400]
mov dword ptr [ecx+8396], ebx
mov ebx, dword ptr [_LEX+422144]
mov ecx, dword ptr [ebp-8]
add dword ptr [ebx+8392], ecx
mov dword ptr [ebp-4], -1
.Lt_0186:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .bss
.balign 4
	.lcomm	_Lt_0268,12

.section .text
.balign 16
_HRTRIMMACROTEXT@8:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_01B3:
.Lt_01B5:
cmp dword ptr [ebp+12], 0
je .Lt_01B6
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 2
je .Lt_01B8
jmp .Lt_01B6
.Lt_01B8:
.Lt_01B7:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
movzx eax, byte ptr [ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_01BA
.Lt_01BC:
push dword ptr [ebp+12]
call _SYMBDELDEFINETOK@4
mov dword ptr [ebp+12], eax
jmp .Lt_01B9
.Lt_01BD:
jmp .Lt_01B6
jmp .Lt_01B9
.Lt_01BA:
mov eax, dword ptr [ebp-8]
add eax, 4294967287
cmp eax, 23
ja .Lt_01BD
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_01BE+eax*4-36]
_.LT_01BE:
.int .Lt_01BC
.int .Lt_01BC
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BD
.int .Lt_01BC
.Lt_01B9:
jmp .Lt_01B5
.Lt_01B6:
cmp dword ptr [ebp+12], 0
jne .Lt_01C0
mov dword ptr [ebp-4], 0
jmp .Lt_01BF
.Lt_01C0:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
.Lt_01BF:
.Lt_01B4:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HREADMACROTEXT@12:
push ebp
mov ebp, esp
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
.Lt_01C1:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-24], 0
.Lt_01C3:
mov dword ptr [ebp-20], 0
push 62
call _LEXGETTOKEN@4
mov dword ptr [ebp-28], eax
jmp .Lt_01C7
.Lt_01C9:
cmp dword ptr [ebp+16], 0
je .Lt_01CB
push 0
push 0
push 134
call _ERRREPORT@12
.Lt_01CB:
.Lt_01CA:
jmp .Lt_01C4
jmp .Lt_01C6
.Lt_01CC:
cmp dword ptr [ebp+16], 0
jne .Lt_01CE
jmp .Lt_01C4
.Lt_01CE:
.Lt_01CD:
cmp dword ptr [ebp-16], 0
je .Lt_01D0
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK@8
mov dword ptr [ebp-12], eax
push offset _Lt_01D1
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN@8
.Lt_01D0:
.Lt_01CF:
push 62
call _LEXSKIPTOKEN@4
jmp .Lt_01C5
jmp .Lt_01C6
.Lt_01D2:
cmp dword ptr [ebp+16], 0
jne .Lt_01D4
jmp .Lt_01C4
.Lt_01D4:
.Lt_01D3:
.Lt_01D5:
push 62
call _LEXSKIPTOKEN@4
push 62
call _LEXGETTOKEN@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 257
je .Lt_01DB
.Lt_01DC:
cmp dword ptr [ebp-32], 256
jne .Lt_01DA
.Lt_01DB:
jmp .Lt_01D6
.Lt_01DA:
.Lt_01D8:
.Lt_01D7:
jmp .Lt_01D5
.Lt_01D6:
jmp .Lt_01C5
jmp .Lt_01C6
.Lt_01DD:
push 314
push 1
call _LEXGETLOOKAHEAD@8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 35
jne .Lt_01E0
.Lt_01E1:
push 62
call _LEXSKIPTOKEN@4
push 62
call _LEXSKIPTOKEN@4
jmp .Lt_01C5
jmp .Lt_01DE
.Lt_01E0:
cmp dword ptr [ebp-32], 274
jne .Lt_01E2
.Lt_01E3:
cmp dword ptr [ebp+16], 0
je .Lt_01E5
inc dword ptr [ebp-24]
.Lt_01E5:
.Lt_01E4:
jmp .Lt_01DE
.Lt_01E2:
cmp dword ptr [ebp-32], 275
jne .Lt_01E6
.Lt_01E7:
cmp dword ptr [ebp+16], 0
je .Lt_01E9
cmp dword ptr [ebp-24], 0
jne .Lt_01EB
push 62
call _LEXSKIPTOKEN@4
push 0
call _LEXSKIPTOKEN@4
push dword ptr [ebp-12]
push dword ptr [ebp-16]
call _HRTRIMMACROTEXT@8
mov dword ptr [ebp-16], eax
jmp .Lt_01C4
.Lt_01EB:
.Lt_01EA:
dec dword ptr [ebp-24]
.Lt_01E9:
.Lt_01E8:
jmp .Lt_01DE
.Lt_01E6:
cmp dword ptr [ebp-32], 265
jne .Lt_01EC
.Lt_01ED:
push 62
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-20], -1
.Lt_01EC:
.Lt_01DE:
jmp .Lt_01C6
.Lt_01EE:
cmp dword ptr [ebp-16], 0
je .Lt_01F0
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK@8
mov dword ptr [ebp-12], eax
push offset _Lt_01F1
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN@8
.Lt_01F0:
.Lt_01EF:
push 62
call _LEXSKIPTOKEN@4
jmp .Lt_01C5
jmp .Lt_01C6
.Lt_01C7:
mov ebx, dword ptr [ebp-28]
add ebx, 4294967287
cmp ebx, 251
ja .Lt_01C6
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.LT_01F2+ebx*4-36]
_.LT_01F2:
.int .Lt_01EE
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01EE
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01DD
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C9
.int .Lt_01CC
.int .Lt_01C6
.int .Lt_01D2
.int .Lt_01D2
.Lt_01C6:
push 62
call _LEXGETCLASS@4
mov dword ptr [ebp-28], eax
jmp .Lt_01F4
.Lt_01F6:
cmp dword ptr [_ENV+552], 0
jne .Lt_01F8
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01FA
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.Lt_01FA:
.Lt_01F9:
call _LEXGETTEXT@0
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN@8
jmp .Lt_01F7
.Lt_01F8:
push 3
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01FC
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.Lt_01FC:
.Lt_01FB:
mov eax, dword ptr [_LEX+422144]
mov ebx, dword ptr [eax+8356]
lea eax, [ebx+12]
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _WSTRASSIGN@8
.Lt_01F7:
push 62
call _LEXSKIPTOKEN@4
jmp .Lt_01F3
.Lt_01FD:
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .Lt_01FF
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.Lt_01FF:
.Lt_01FE:
push 0
push -1
push 0
call _LEXGETTEXT@0
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
push 129
push offset _Lt_026B
call _fb_StrAssign@20
push offset _Lt_026B
lea eax, [_SYMB+98776]
push eax
call _HASHLOOKUP@8
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
je .Lt_0201
cmp dword ptr [ebp-20], 0
jne .Lt_0203
mov eax, dword ptr [ebp-12]
mov dword ptr [eax], 0
jmp .Lt_0202
.Lt_0203:
mov eax, dword ptr [ebp-12]
mov dword ptr [eax], 1
.Lt_0202:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp-12]
mov ecx, dword ptr [eax+4]
mov dword ptr [ebx+4], ecx
jmp .Lt_0200
.Lt_0201:
cmp dword ptr [ebp-20], 0
je .Lt_0205
push offset _Lt_0206
mov ecx, dword ptr [ebp-12]
lea ebx, [ecx+4]
push ebx
call _ZSTRASSIGN@8
call _LEXGETTEXT@0
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRCONCATASSIGN@8
jmp .Lt_0204
.Lt_0205:
call _LEXGETTEXT@0
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN@8
.Lt_0204:
.Lt_0200:
push 62
call _LEXSKIPTOKEN@4
jmp .Lt_01F3
.Lt_0207:
push 2
push dword ptr [ebp-12]
call _SYMBADDDEFINETOK@8
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
jne .Lt_0209
mov eax, dword ptr [ebp-12]
mov dword ptr [ebp-16], eax
.Lt_0209:
.Lt_0208:
call _LEXGETTEXT@0
push eax
mov eax, dword ptr [ebp-12]
lea ebx, [eax+4]
push ebx
call _ZSTRASSIGN@8
push 62
call _LEXSKIPTOKEN@4
jmp .Lt_01F3
.Lt_01F4:
cmp dword ptr [ebp-28], 4
ja .Lt_0207
mov ebx, dword ptr [ebp-28]
jmp dword ptr [_.LT_020A+ebx*4]
_.LT_020A:
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_01FD
.int .Lt_0207
.int .Lt_01F6
.Lt_01F3:
.Lt_01C5:
jmp .Lt_01C3
.Lt_01C4:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ebx
.Lt_01C2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .bss
.balign 4
	.lcomm	_Lt_026B,129

.section .text
.balign 16
_HREADDEFINETEXT@20:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_020B:
cmp dword ptr [_ENV+552], 0
jne .Lt_020E
push dword ptr [ebp+20]
call _PPREADLITERAL@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp+8], 0
je .Lt_0210
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
test ebx, ebx
setg bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+28]
and ecx, 511
cmp ecx, 4
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0212
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX@20
jmp .Lt_0211
.Lt_0212:
push 0
push dword ptr [ebp-4]
push 0
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+64]
call _fb_StrCompare@16
test eax, eax
je .Lt_0213
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX@20
.Lt_0213:
.Lt_0211:
jmp .Lt_020F
.Lt_0210:
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp-4]
call _fb_StrLen@8
push eax
push dword ptr [ebp-4]
push dword ptr [ebp+12]
call _SYMBADDDEFINE@24
.Lt_020F:
jmp .Lt_020D
.Lt_020E:
push dword ptr [ebp+20]
call _PPREADLITERALW@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+8], 0
je .Lt_0215
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+56]
test ecx, ecx
setg cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+28]
and ebx, 511
cmp ebx, 7
setne bl
shr ebx, 1
sbb ebx, ebx
or ecx, ebx
je .Lt_0217
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX@20
jmp .Lt_0216
.Lt_0217:
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp+8]
push dword ptr [ebx+64]
call _fb_WstrCompare@8
test eax, eax
je .Lt_0218
push 0
push 1
push 0
push dword ptr [ebp+12]
push 4
call _ERRREPORTEX@20
.Lt_0218:
.Lt_0216:
jmp .Lt_0214
.Lt_0215:
push dword ptr [ebp+24]
push 0
push dword ptr [ebp+16]
push dword ptr [ebp-8]
call _fb_WstrLen@4
push eax
push dword ptr [ebp-8]
push dword ptr [ebp+12]
call _SYMBADDDEFINEW@24
.Lt_0214:
.Lt_020D:
.Lt_020C:
pop ebx
mov esp, ebp
pop ebp
ret 20
.balign 16
_HMATCHPARAMELLIPSIS@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0219:
mov dword ptr [ebp-4], 0
push 34
call _LEXGETTOKEN@4
cmp eax, 46
jne .Lt_021C
push 34
push 1
call _LEXGETLOOKAHEAD@8
cmp eax, 46
jne .Lt_021E
push 34
push 2
call _LEXGETLOOKAHEAD@8
cmp eax, 46
jne .Lt_0220
push 34
call _LEXSKIPTOKEN@4
push 34
call _LEXSKIPTOKEN@4
push 34
call _LEXSKIPTOKEN@4
mov dword ptr [ebp-4], -1
.Lt_0220:
.Lt_021F:
.Lt_021E:
.Lt_021D:
.Lt_021C:
.Lt_021B:
.Lt_021A:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_Lt_006E:	.ascii	"expanding: \0"
.balign 4
_Lt_00DC:	.ascii	"\"\0"
.balign 4
_Lt_00DD:	.ascii	"$\"\0"
.balign 4
_Lt_00DE:	.ascii	"\"\"\0"
.balign 4
_Lt_01D1:	.ascii	"\n\0"
.balign 4
_Lt_01F1:	.ascii	" \0"
.balign 4
_Lt_0206:	.ascii	"#\0"
