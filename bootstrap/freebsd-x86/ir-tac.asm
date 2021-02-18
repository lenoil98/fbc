	.intel_syntax noprefix

.section .text
.balign 16
fb_ctor__irztac:
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
_INIT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0073:
mov dword ptr [CTX+60], 0
mov dword ptr [CTX+56], 0
push 128
push 2048
lea eax, [CTX]
push eax
call FLISTINIT
add esp, 12
push 68
push 6144
lea eax, [CTX+64]
push eax
call FLISTINIT
add esp, 12
call EMITINIT
mov dword ptr [ebp-4], 0
.Lt_0078:
push dword ptr [ebp-4]
call EMITGETREGCLASS
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [REGTB+ebx*4], eax
.Lt_0076:
inc dword ptr [ebp-4]
.Lt_0075:
cmp dword ptr [ebp-4], 1
jle .Lt_0078
.Lt_0077:
.Lt_0074:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_END:
.Lt_0079:
call EMITEND
lea eax, [CTX+64]
push eax
call FLISTEND
add esp, 4
lea eax, [CTX]
push eax
call FLISTEND
add esp, 4
mov dword ptr [CTX+60], 0
mov dword ptr [CTX+56], 0
.Lt_007A:
ret
.balign 16
_EMITBEGIN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_007B:
call dword ptr [EMIT+160]
mov dword ptr [ebp-4], eax
.Lt_007C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_EMITEND:
.Lt_007D:
call dword ptr [EMIT+164]
.Lt_007E:
ret
.balign 16
_GETOPTIONVALUE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_007F:
push dword ptr [ebp+8]
call dword ptr [EMIT+156]
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0080:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
HLOADIDX:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0081:
cmp dword ptr [ebp+8], 0
jne .Lt_0084
jmp .Lt_0082
.Lt_0084:
.Lt_0083:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
je .Lt_0088
.Lt_0089:
cmp dword ptr [ebp-8], 3
jne .Lt_0087
.Lt_0088:
jmp .Lt_0085
.Lt_0087:
jmp .Lt_0082
.Lt_008A:
.Lt_0085:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_008C
jmp .Lt_0082
.Lt_008C:
.Lt_008B:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
jne .Lt_008E
jmp .Lt_0082
.Lt_008E:
.Lt_008D:
push dword ptr [SYMB_DTYPETB+228]
push 0
push dword ptr [ebp-4]
push dword ptr [REGTB]
mov eax, dword ptr [REGTB]
call dword ptr [eax]
add esp, 16
.Lt_0082:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HRELINK:
push ebp
mov ebp, esp
push ebx
.Lt_008F:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jne .Lt_0092
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
jmp .Lt_0091
.Lt_0092:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
.Lt_0091:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
.Lt_0090:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMIT:
push ebp
mov ebp, esp
push ebx
.Lt_0093:
lea eax, [CTX]
push eax
call FLISTNEWITEM
add esp, 4
mov dword ptr [Lt_0403], eax
mov eax, dword ptr [Lt_0403]
mov ebx, dword ptr [CTX+56]
mov dword ptr [eax], ebx
mov ebx, dword ptr [Lt_0403]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [Lt_0403]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+44], ebx
mov ebx, dword ptr [Lt_0403]
mov dword ptr [ebx+48], 0
mov ebx, dword ptr [Lt_0403]
mov dword ptr [ebx+52], 0
cmp dword ptr [ebp+12], 0
je .Lt_0096
mov ebx, dword ptr [Lt_0403]
lea eax, [ebx+44]
push eax
push dword ptr [ebp+12]
call HRELINK
add esp, 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [Lt_0403]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+48], 0
je .Lt_0098
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [Lt_0403]
mov ecx, dword ptr [ebx+48]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [Lt_0403]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+60], eax
mov eax, dword ptr [Lt_0403]
mov dword ptr [eax+64], 0
mov eax, dword ptr [Lt_0403]
lea ecx, [eax+56]
push ecx
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+48]
call HRELINK
add esp, 8
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+48]
mov ecx, dword ptr [Lt_0403]
mov dword ptr [eax+64], ecx
.Lt_0098:
.Lt_0097:
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+52], 0
je .Lt_009A
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [Lt_0403]
mov ebx, dword ptr [ecx+52]
mov dword ptr [eax+68], ebx
mov ebx, dword ptr [Lt_0403]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [Lt_0403]
mov dword ptr [eax+76], 0
mov eax, dword ptr [Lt_0403]
lea ebx, [eax+68]
push ebx
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+52]
call HRELINK
add esp, 8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov ebx, dword ptr [Lt_0403]
mov dword ptr [eax+64], ebx
.Lt_009A:
.Lt_0099:
.Lt_0096:
.Lt_0095:
mov ebx, dword ptr [Lt_0403]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+80], eax
mov eax, dword ptr [Lt_0403]
mov dword ptr [eax+84], 0
mov eax, dword ptr [Lt_0403]
mov dword ptr [eax+88], 0
cmp dword ptr [ebp+16], 0
je .Lt_009C
mov eax, dword ptr [Lt_0403]
lea ebx, [eax+80]
push ebx
push dword ptr [ebp+16]
call HRELINK
add esp, 8
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [Lt_0403]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+48], 0
je .Lt_009E
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [Lt_0403]
mov ecx, dword ptr [eax+48]
mov dword ptr [ebx+92], ecx
mov ecx, dword ptr [Lt_0403]
mov ebx, dword ptr [ebp+16]
mov dword ptr [ecx+96], ebx
mov ebx, dword ptr [Lt_0403]
mov dword ptr [ebx+100], 0
mov ebx, dword ptr [Lt_0403]
lea ecx, [ebx+92]
push ecx
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+48]
call HRELINK
add esp, 8
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+48]
mov ecx, dword ptr [Lt_0403]
mov dword ptr [ebx+64], ecx
.Lt_009E:
.Lt_009D:
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+52], 0
je .Lt_00A0
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [Lt_0403]
mov eax, dword ptr [ecx+52]
mov dword ptr [ebx+104], eax
mov eax, dword ptr [Lt_0403]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+108], ebx
mov ebx, dword ptr [Lt_0403]
mov dword ptr [ebx+112], 0
mov ebx, dword ptr [Lt_0403]
lea eax, [ebx+104]
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax+52]
call HRELINK
add esp, 8
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [Lt_0403]
mov dword ptr [ebx+64], eax
.Lt_00A0:
.Lt_009F:
.Lt_009C:
.Lt_009B:
mov eax, dword ptr [Lt_0403]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [Lt_0403]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [Lt_0403]
mov dword ptr [ebx+16], 0
cmp dword ptr [ebp+20], 0
je .Lt_00A2
mov ebx, dword ptr [Lt_0403]
lea eax, [ebx+8]
push eax
push dword ptr [ebp+20]
call HRELINK
add esp, 8
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [Lt_0403]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx+48], 0
je .Lt_00A4
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [Lt_0403]
mov ecx, dword ptr [ebx+48]
mov dword ptr [eax+20], ecx
mov ecx, dword ptr [Lt_0403]
mov eax, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov eax, dword ptr [Lt_0403]
mov dword ptr [eax+28], 0
mov eax, dword ptr [Lt_0403]
lea ecx, [eax+20]
push ecx
mov ecx, dword ptr [ebp+20]
push dword ptr [ecx+48]
call HRELINK
add esp, 8
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+48]
mov ecx, dword ptr [Lt_0403]
mov dword ptr [eax+64], ecx
.Lt_00A4:
.Lt_00A3:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+52], 0
je .Lt_00A6
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [Lt_0403]
mov ebx, dword ptr [ecx+52]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [Lt_0403]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+36], eax
mov eax, dword ptr [Lt_0403]
mov dword ptr [eax+40], 0
mov eax, dword ptr [Lt_0403]
lea ebx, [eax+32]
push ebx
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+52]
call HRELINK
add esp, 8
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+52]
mov ebx, dword ptr [Lt_0403]
mov dword ptr [eax+64], ebx
.Lt_00A6:
.Lt_00A5:
.Lt_00A2:
.Lt_00A1:
mov ebx, dword ptr [Lt_0403]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+116], eax
mov eax, dword ptr [Lt_0403]
mov ebx, dword ptr [ebp+28]
mov dword ptr [eax+120], ebx
mov ebx, dword ptr [Lt_0403]
mov eax, dword ptr [ebp+32]
mov dword ptr [ebx+124], eax
inc dword ptr [CTX+56]
.Lt_0094:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0403,4

.section .text
.balign 16
_PROCBEGIN:
push ebp
mov ebp, esp
.Lt_00A7:
push dword ptr [ebp+8]
call dword ptr [EMIT+184]
add esp, 4
.Lt_00A8:
mov esp, ebp
pop ebp
ret
.balign 16
_PROCEND:
push ebp
mov ebp, esp
.Lt_00A9:
push dword ptr [ebp+8]
call dword ptr [EMIT+188]
add esp, 4
.Lt_00AA:
mov esp, ebp
pop ebp
ret
.balign 16
_PROCALLOCARG:
push ebp
mov ebp, esp
.Lt_00AB:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [EMIT+200]
add esp, 8
.Lt_00AC:
mov esp, ebp
pop ebp
ret
.balign 16
_PROCALLOCLOCAL:
push ebp
mov ebp, esp
.Lt_00AD:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [EMIT+204]
add esp, 8
.Lt_00AE:
mov esp, ebp
pop ebp
ret
.balign 16
_PROCGETFRAMEREGNAME:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00AF:
call dword ptr [EMIT+180]
mov dword ptr [ebp-4], eax
.Lt_00B0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_SCOPEBEGIN:
push ebp
mov ebp, esp
.Lt_00B1:
push dword ptr [ebp+8]
call dword ptr [EMIT+212]
add esp, 4
.Lt_00B2:
mov esp, ebp
pop ebp
ret
.balign 16
_SCOPEEND:
push ebp
mov ebp, esp
.Lt_00B3:
push dword ptr [ebp+8]
call dword ptr [EMIT+216]
add esp, 4
.Lt_00B4:
mov esp, ebp
pop ebp
ret
.balign 16
_PROCALLOCSTATICVARS:
push ebp
mov ebp, esp
.Lt_00B5:
push dword ptr [ebp+8]
call dword ptr [EMIT+208]
add esp, 4
.Lt_00B6:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITLABEL:
push ebp
mov ebp, esp
.Lt_00B7:
call _FLUSH
push dword ptr [ebp+8]
call EMITLABEL
add esp, 4
.Lt_00B8:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITRETURN:
push ebp
mov ebp, esp
.Lt_00B9:
call _FLUSH
push dword ptr [ebp+8]
call EMITRET
add esp, 4
.Lt_00BA:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITPROCBEGIN:
push ebp
mov ebp, esp
push ebx
.Lt_00BB:
call _FLUSH
mov dword ptr [Lt_0404], 0
.Lt_00C0:
mov eax, dword ptr [Lt_0404]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0404]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+44]
add esp, 4
.Lt_00BE:
inc dword ptr [Lt_0404]
.Lt_00BD:
cmp dword ptr [Lt_0404], 1
jle .Lt_00C0
.Lt_00BF:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [EMIT+192]
add esp, 8
.Lt_00BC:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0404,4

.section .text
.balign 16
_EMITPROCEND:
push ebp
mov ebp, esp
push ebx
.Lt_00C1:
call _FLUSH
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call SYMBPROCCALCBYTESTOPOP
add esp, 4
mov ebx, eax
push ebx
push dword ptr [ebp+8]
call dword ptr [EMIT+196]
add esp, 16
.Lt_00C2:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSCOPEBEGIN:
push ebp
mov ebp, esp
.Lt_00C3:
call _FLUSH
.Lt_00C4:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSCOPEEND:
push ebp
mov ebp, esp
.Lt_00C5:
call _FLUSH
.Lt_00C6:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITBOP:
push ebp
mov ebp, esp
.Lt_00C7:
push 0
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMIT
add esp, 28
.Lt_00C8:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITUOP:
push ebp
mov ebp, esp
.Lt_00C9:
push 0
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMIT
add esp, 28
.Lt_00CA:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCONVERT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00CB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00CD
mov dword ptr [ebp-4], 24
jmp .Lt_0405
.Lt_00CD:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0405:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_00D1
.Lt_00D2:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 1
jne .Lt_00D4
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 84
call _EMIT
add esp, 28
jmp .Lt_00D3
.Lt_00D4:
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 82
call _EMIT
add esp, 28
.Lt_00D3:
jmp .Lt_00CF
.Lt_00D1:
cmp dword ptr [ebp-8], 1
jne .Lt_00D5
.Lt_00D6:
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 83
call _EMIT
add esp, 28
.Lt_00D5:
.Lt_00CF:
.Lt_00CC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSTORE:
push ebp
mov ebp, esp
.Lt_00D7:
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call _EMIT
add esp, 28
.Lt_00D8:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSPILLREGS:
.Lt_00D9:
push 0
push 0
push 0
push 0
push 0
push 0
push 87
call _EMIT
add esp, 28
.Lt_00DA:
ret
.balign 16
_EMITLOAD:
push ebp
mov ebp, esp
.Lt_00DB:
push 0
push 0
push 0
push 0
push 0
push dword ptr [ebp+8]
push 85
call _EMIT
add esp, 28
.Lt_00DC:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITLOADRES:
push ebp
mov ebp, esp
.Lt_00DD:
push 0
push 0
push 0
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 86
call _EMIT
add esp, 28
.Lt_00DE:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSTACK:
push ebp
mov ebp, esp
.Lt_00DF:
push 0
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMIT
add esp, 28
.Lt_00E0:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITPUSHARG:
push ebp
mov ebp, esp
.Lt_00E1:
cmp dword ptr [ebp+20], 0
jne .Lt_00E4
cmp dword ptr [ebp+16], 0
jne .Lt_00E4
.Lt_0406:
push dword ptr [ebp+12]
push 88
call _EMITSTACK
add esp, 8
jmp .Lt_00E3
.Lt_00E4:
push 0
mov eax, dword ptr [ebp+16]
push eax
push 0
push 0
push 0
push dword ptr [ebp+12]
push 90
call _EMIT
add esp, 28
.Lt_00E3:
.Lt_00E2:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITADDR:
push ebp
mov ebp, esp
.Lt_00E5:
push 0
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMIT
add esp, 28
.Lt_00E6:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITLABELNF:
push ebp
mov ebp, esp
.Lt_00E7:
push 0
push 0
push dword ptr [ebp+8]
push 0
push 0
push 0
push 100
call _EMIT
add esp, 28
.Lt_00E8:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCALL:
push ebp
mov ebp, esp
.Lt_00E9:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push 0
push 0
push 102
call _EMIT
add esp, 28
.Lt_00EA:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCALLPTR:
push ebp
mov ebp, esp
.Lt_00EB:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push 103
call _EMIT
add esp, 28
.Lt_00EC:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITSTACKALIGN:
push ebp
mov ebp, esp
.Lt_00ED:
push 0
push dword ptr [ebp+8]
push 0
push 0
push 0
push 0
push 91
call _EMIT
add esp, 28
.Lt_00EE:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITJUMPPTR:
push ebp
mov ebp, esp
.Lt_00EF:
push 0
push 0
push 0
push 0
push 0
push dword ptr [ebp+8]
push 104
call _EMIT
add esp, 28
.Lt_00F0:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITBRANCH:
push ebp
mov ebp, esp
.Lt_00F1:
push 0
push 0
push dword ptr [ebp+12]
push 0
push 0
push 0
push dword ptr [ebp+8]
call _EMIT
add esp, 28
.Lt_00F2:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITJMPTB:
push ebp
mov ebp, esp
.Lt_00F3:
call _FLUSH
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITJMPTB
add esp, 36
.Lt_00F4:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITMEM:
push ebp
mov ebp, esp
.Lt_00F5:
push 0
mov eax, dword ptr [ebp+20]
push eax
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMIT
add esp, 28
.Lt_00F6:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITMACRO:
push ebp
mov ebp, esp
.Lt_00F7:
.Lt_00F8:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITDECL:
push ebp
mov ebp, esp
.Lt_00F9:
.Lt_00FA:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITDBG:
push ebp
mov ebp, esp
.Lt_00FB:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push 0
push 0
push dword ptr [ebp+8]
call _EMIT
add esp, 28
.Lt_00FC:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITCOMMENT:
push ebp
mov ebp, esp
.Lt_00FD:
push 0
push 0
push dword ptr [ebp+8]
call ZSTRDUP
add esp, 4
push eax
push 0
push 0
push 0
push 117
call _EMIT
add esp, 28
.Lt_00FE:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITASMLINE:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_00FF:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.Lt_0101:
cmp dword ptr [ebp-16], 0
je .Lt_0102
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .Lt_0105
.Lt_0106:
push 0
push -1
push 0
mov ebx, dword ptr [ebp-16]
push dword ptr [ebx+4]
push -1
lea ebx, [ebp-12]
push ebx
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea ebx, [ebp-32]
push ebx
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
jmp .Lt_0103
.Lt_0105:
cmp dword ptr [ebp-20], 1
jne .Lt_0108
.Lt_0109:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-40], ecx
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_0407
cmp dword ptr [ebp-40], 0
je .Lt_010C
.Lt_0407:
cmp dword ptr [ebp-36], 0
jl .Lt_010E
jg .Lt_0408
cmp dword ptr [ebp-40], 0
jbe .Lt_010E
.Lt_0408:
push 0
push 2
push offset Lt_010F
push -1
lea ecx, [ebp-12]
push ecx
call fb_StrConcatAssign
add esp, 20
.Lt_010E:
.Lt_010D:
push 0
push -1
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 20
.Lt_010C:
.Lt_010B:
.Lt_0108:
.Lt_0103:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebp-16], ecx
jmp .Lt_0101
.Lt_0102:
push 0
push 0
push dword ptr [ebp-12]
call ZSTRDUP
add esp, 4
push eax
push 0
push 0
push 0
push 118
call _EMIT
add esp, 28
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 4
.Lt_0100:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIBEGIN:
push ebp
mov ebp, esp
.Lt_0110:
push dword ptr [ebp+8]
call EMITVARINIBEGIN
add esp, 4
.Lt_0111:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIEND:
push ebp
mov ebp, esp
.Lt_0112:
.Lt_0113:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINII:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0114:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
push dword ptr [ebp+8]
call SYMBGETREALTYPE
add esp, 12
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call EMITVARINII
add esp, 12
.Lt_0115:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIF:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0116:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
push dword ptr [ebp+8]
call SYMBGETREALTYPE
add esp, 12
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call EMITVARINIF
add esp, 12
.Lt_0117:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIOFS:
push ebp
mov ebp, esp
.Lt_0118:
mov eax, dword ptr [ebp+16]
push eax
push dword ptr [ebp+12]
call SYMBGETMANGLEDNAME
add esp, 4
push eax
call EMITVARINIOFS
add esp, 8
.Lt_0119:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINISTR:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_011A:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .Lt_011D
cmp dword ptr [ebp+8], 0
jne .Lt_011D
.Lt_0409:
push 0
push 0
push 2
call EMITVARINII
add esp, 12
jmp .Lt_011B
.Lt_011D:
.Lt_011C:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .Lt_011F
jg .Lt_040A
cmp dword ptr [ebp+20], ebx
jbe .Lt_011F
.Lt_040A:
push 0
push 1
push 0
push 9
call ERRREPORTWARN
add esp, 16
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
mov ebx, dword ptr [ebp+8]
push ebx
push dword ptr [ebp+16]
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-16]
call HESCAPE
add esp, 4
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 4
jmp .Lt_011E
.Lt_011F:
push dword ptr [ebp+16]
call HESCAPE
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_011E:
push dword ptr [ebp-4]
call EMITVARINISTR
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jg .Lt_0122
jl .Lt_040B
cmp dword ptr [ebp+20], ebx
jae .Lt_0122
.Lt_040B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sub eax, dword ptr [ebp+20]
sbb ebx, dword ptr [ebp+24]
mov ecx, eax
push ecx
call EMITVARINIPAD
add esp, 4
.Lt_0122:
.Lt_0121:
.Lt_011B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIWSTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
.Lt_0123:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0126
cmp dword ptr [ebp+8], 0
jne .Lt_0126
.Lt_040C:
push 0
push 0
push dword ptr [ENV+248]
call EMITVARINII
add esp, 12
jmp .Lt_0124
.Lt_0126:
.Lt_0125:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .Lt_0128
jg .Lt_040D
cmp dword ptr [ebp+20], ebx
jbe .Lt_0128
.Lt_040D:
push 0
push 1
push 0
push 9
call ERRREPORTWARN
add esp, 16
mov ebx, dword ptr [ebp+8]
push ebx
push dword ptr [ebp+16]
call fb_WstrLeft
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call HESCAPEW
add esp, 4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-12]
call fb_WstrDelete
add esp, 4
jmp .Lt_0127
.Lt_0128:
push dword ptr [ebp+16]
call HESCAPEW
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0127:
mov eax, dword ptr [SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
call EMITVARINIWSTR
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jg .Lt_012B
jl .Lt_040E
cmp dword ptr [ebp+20], ebx
jae .Lt_012B
.Lt_040E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sub eax, dword ptr [ebp+20]
sbb ebx, dword ptr [ebp+24]
mov esi, dword ptr [ebp-8]
mov ecx, esi
sar ecx, 31
push ecx
push esi
push ebx
push eax
mov eax, [esp+0]
mul dword ptr [esp+8]
xchg eax, [esp+0]
imul eax, [esp+12]
add eax, edx
mov edx, [esp+4]
imul edx, [esp+8]
add edx, eax
mov [esp+4], edx
pop eax
pop ebx
add esp, 8
mov esi, eax
push esi
call EMITVARINIPAD
add esp, 4
.Lt_012B:
.Lt_012A:
.Lt_0124:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINIPAD:
push ebp
mov ebp, esp
.Lt_012C:
mov eax, dword ptr [ebp+8]
push eax
call EMITVARINIPAD
add esp, 4
.Lt_012D:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINISCOPEBEGIN:
push ebp
mov ebp, esp
.Lt_012E:
.Lt_012F:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITVARINISCOPEEND:
.Lt_0130:
.Lt_0131:
ret
.balign 16
_EMITFBCTINFBEGIN:
.Lt_0132:
call EMITFBCTINFBEGIN
.Lt_0133:
ret
.balign 16
_EMITFBCTINFSTRING:
push ebp
mov ebp, esp
.Lt_0134:
push dword ptr [ebp+8]
call EMITFBCTINFSTRING
add esp, 4
.Lt_0135:
mov esp, ebp
pop ebp
ret
.balign 16
_EMITFBCTINFEND:
.Lt_0136:
call EMITFBCTINFEND
.Lt_0137:
ret
.balign 16
HNEWVR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0138:
lea eax, [CTX+64]
push eax
call FLISTNEWITEM
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_013A
mov dword ptr [ebp-12], 24
jmp .Lt_040F
.Lt_013A:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_040F:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], -1
cmp dword ptr [ENV+116], 0
jne .Lt_013D
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 0
jmp .Lt_013C
.Lt_013D:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 1
.Lt_013C:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+20], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+32], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+36], 0
mov dword ptr [ebx+40], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+44], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+48], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+52], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+56], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+60], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+64], 0
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ebx
.Lt_0139:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ALLOCVREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_013E:
and dword ptr [ebp+8], 511
push 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNEWVR
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0141
push 4
push 0
push 8
call HNEWVR
add esp, 12
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+52], eax
.Lt_0141:
.Lt_0140:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_013F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ALLOCVRIMM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0142:
and dword ptr [ebp+8], 511
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNEWVR
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp+8]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+8]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0145
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
and eax, 4294967295
and ebx, 0
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+24], eax
mov dword ptr [ecx+28], ebx
push 0
push 0
push 8
call HNEWVR
add esp, 12
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+52], eax
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+20]
mov ebx, eax
xor eax, eax
mov esi, ebx
mov ecx, eax
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+52]
mov dword ptr [eax+24], esi
mov dword ptr [eax+28], ecx
jmp .Lt_0144
.Lt_0145:
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+20]
mov dword ptr [esi+24], eax
mov dword ptr [esi+28], ecx
.Lt_0144:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0143:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ALLOCVRIMMF:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0146:
and dword ptr [ebp+8], 511
mov eax, dword ptr [IR+276]
and eax, 2
test eax, eax
je .Lt_0149
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNEWVR
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
pop dword ptr [eax+28]
pop dword ptr [eax+24]
jmp .Lt_0148
.Lt_0149:
push dword ptr [ebp+8]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call SYMBALLOCFLOATCONST
add esp, 12
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [IR+240]
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_0148:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0147:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_ALLOCVRVAR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_014A:
and dword ptr [ebp+8], 511
push 1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNEWVR
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+36], ecx
mov dword ptr [ebx+40], eax
mov ecx, dword ptr [ebp+8]
cmp ecx, 13
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .Lt_014D
push 1
push 0
push 8
call HNEWVR
add esp, 12
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax+52], ecx
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
add eax, 4
adc ecx, 0
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+36], eax
mov dword ptr [ebx+40], ecx
.Lt_014D:
.Lt_014C:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_014B:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ALLOCVRIDX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_014E:
and dword ptr [ebp+8], 511
push 2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNEWVR
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+36], ecx
mov dword ptr [ebx+40], eax
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [ebp+28]
mov dword ptr [ecx+44], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+32]
mov dword ptr [eax+48], ecx
mov ecx, dword ptr [ebp+8]
cmp ecx, 13
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [ebp+8]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .Lt_0151
push 2
push 0
push 8
call HNEWVR
add esp, 12
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax+52], ecx
mov eax, dword ptr [ebp+20]
mov ecx, dword ptr [ebp+24]
add eax, 4
adc ecx, 0
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+36], eax
mov dword ptr [ebx+40], ecx
.Lt_0151:
.Lt_0150:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_014F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ALLOCVRPTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0152:
and dword ptr [ebp+8], 511
push 3
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNEWVR
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+36], ecx
mov dword ptr [eax+40], ebx
mov ecx, dword ptr [ebp-8]
mov dword ptr [ecx+44], 1
mov ecx, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+24]
mov dword ptr [ecx+48], ebx
mov ebx, dword ptr [ebp+8]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [ebp+8]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0155
push 3
push 0
push 8
call HNEWVR
add esp, 12
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-8]
mov ecx, dword ptr [ebp-12]
mov dword ptr [eax+52], ecx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+20]
add eax, 4
adc ecx, 0
mov ebx, dword ptr [ebp-12]
mov dword ptr [ebx+36], eax
mov dword ptr [ebx+40], ecx
.Lt_0155:
.Lt_0154:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0153:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_ALLOCVROFS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0156:
and dword ptr [ebp+8], 511
push 5
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HNEWVR
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [ebp-8]
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+36], ecx
mov dword ptr [ebx+40], eax
mov ecx, dword ptr [ebp-8]
mov dword ptr [ebp-4], ecx
.Lt_0157:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_SETVREGDATATYPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0158:
and dword ptr [ebp+12], 511
cmp dword ptr [ebp+8], 0
je .Lt_015B
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_015C
mov dword ptr [ebp-4], 24
jmp .Lt_041A
.Lt_015C:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_041A:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], eax
.Lt_015B:
.Lt_015A:
.Lt_0159:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HRENAME:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_015E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
.Lt_0160:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 0
je .Lt_0164
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+48], ebx
jne .Lt_0166
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+48], ebx
jmp .Lt_0165
.Lt_0166:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+52], ebx
.Lt_0165:
.Lt_0164:
.Lt_0163:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-4], ebx
.Lt_0162:
cmp dword ptr [ebp-4], 0
jne .Lt_0160
.Lt_0161:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+56]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+60]
mov dword ptr [eax+60], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+64]
mov dword ptr [eax+64], ecx
.Lt_015F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HREUSE:
push ebp
mov ebp, esp
sub esp, 76
push ebx
.Lt_0167:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-52], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+44]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+80]
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+8]
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-4], 0
je .Lt_016A
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_016B
mov dword ptr [ebp-56], 24
jmp .Lt_041B
.Lt_016B:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-56], ebx
.Lt_041B:
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 24
jne .Lt_016E
mov dword ptr [ebp-16], 12
.Lt_016E:
.Lt_016D:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-20], eax
jmp .Lt_0169
.Lt_016A:
mov dword ptr [ebp-24], -1
mov dword ptr [ebp-16], -2147483648
mov dword ptr [ebp-20], -1
.Lt_0169:
cmp dword ptr [ebp-8], 0
je .Lt_0170
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0171
mov dword ptr [ebp-56], 24
jmp .Lt_041C
.Lt_0171:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-56], ebx
.Lt_041C:
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 24
jne .Lt_0174
mov dword ptr [ebp-28], 12
.Lt_0174:
.Lt_0173:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-32], eax
jmp .Lt_016F
.Lt_0170:
mov dword ptr [ebp-36], -1
mov dword ptr [ebp-28], -2147483648
mov dword ptr [ebp-32], -1
.Lt_016F:
cmp dword ptr [ebp-12], 0
je .Lt_0176
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0177
mov dword ptr [ebp-56], 24
jmp .Lt_041D
.Lt_0177:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-56], ebx
.Lt_041D:
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 24
jne .Lt_017A
mov dword ptr [ebp-40], 12
.Lt_017A:
.Lt_0179:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-44], eax
jmp .Lt_0175
.Lt_0176:
mov dword ptr [ebp-48], -1
mov dword ptr [ebp-40], -2147483648
mov dword ptr [ebp-44], -1
.Lt_0175:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax]
mov dword ptr [ebp-56], ebx
cmp dword ptr [ebp-56], 4
jne .Lt_017D
.Lt_017E:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebp-12], ebx
je .Lt_0180
mov ebx, dword ptr [ebp-40]
and ebx, 480
je .Lt_0181
mov dword ptr [ebp-60], 24
jmp .Lt_041E
.Lt_0181:
mov ebx, dword ptr [ebp-40]
and ebx, 31
mov dword ptr [ebp-60], ebx
.Lt_041E:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_0183
mov dword ptr [ebp-64], 24
jmp .Lt_041F
.Lt_0183:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-64], ebx
.Lt_041F:
mov ebx, dword ptr [ebp-64]
imul ebx, 28
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [SYMB_DTYPETB+ebx+20]
cmp dword ptr [SYMB_DTYPETB+eax+20], ecx
jne .Lt_0186
push dword ptr [ebp-4]
call dword ptr [IR+260]
add esp, 4
cmp eax, 2147483647
jne .Lt_0188
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call HRENAME
add esp, 8
.Lt_0188:
.Lt_0187:
.Lt_0186:
.Lt_0185:
.Lt_0180:
.Lt_017F:
jmp .Lt_017B
.Lt_017D:
cmp dword ptr [ebp-56], 3
je .Lt_018A
.Lt_018B:
cmp dword ptr [ebp-56], 14
jne .Lt_0189
.Lt_018A:
cmp dword ptr [ebp-12], 0
jne .Lt_018D
jmp .Lt_0168
.Lt_018D:
.Lt_018C:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-20], eax
je .Lt_018F
jmp .Lt_0168
.Lt_018F:
.Lt_018E:
mov dword ptr [ebp-60], 0
mov eax, dword ptr [ebp-4]
cmp dword ptr [ebp-12], eax
je .Lt_0191
mov eax, dword ptr [ebp-40]
and eax, 480
je .Lt_0192
mov dword ptr [ebp-68], 24
jmp .Lt_0421
.Lt_0192:
mov eax, dword ptr [ebp-40]
and eax, 31
mov dword ptr [ebp-68], eax
.Lt_0421:
mov eax, dword ptr [ebp-68]
imul eax, 28
mov dword ptr [ebp-76], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_0194
mov dword ptr [ebp-72], 24
jmp .Lt_0422
.Lt_0194:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-72], eax
.Lt_0422:
mov eax, dword ptr [ebp-72]
imul eax, 28
mov ecx, dword ptr [ebp-76]
mov ebx, dword ptr [SYMB_DTYPETB+eax+20]
cmp dword ptr [SYMB_DTYPETB+ecx+20], ebx
jne .Lt_0197
push dword ptr [ebp-4]
call dword ptr [IR+260]
add esp, 4
cmp eax, 2147483647
jne .Lt_0199
mov dword ptr [ebp-60], -1
.Lt_0199:
.Lt_0198:
.Lt_0197:
.Lt_0196:
.Lt_0191:
.Lt_0190:
mov dword ptr [ebp-64], 0
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax+4]
and ebx, 2
test ebx, ebx
je .Lt_019B
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-12], ebx
je .Lt_019D
mov ebx, dword ptr [ebp-40]
and ebx, 480
je .Lt_019E
mov dword ptr [ebp-68], 24
jmp .Lt_0424
.Lt_019E:
mov ebx, dword ptr [ebp-40]
and ebx, 31
mov dword ptr [ebp-68], ebx
.Lt_0424:
mov ebx, dword ptr [ebp-68]
imul ebx, 28
mov dword ptr [ebp-76], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .Lt_01A0
mov dword ptr [ebp-72], 24
jmp .Lt_0425
.Lt_01A0:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-72], ebx
.Lt_0425:
mov ebx, dword ptr [ebp-72]
imul ebx, 28
mov eax, dword ptr [ebp-76]
mov ecx, dword ptr [SYMB_DTYPETB+ebx+20]
cmp dword ptr [SYMB_DTYPETB+eax+20], ecx
jne .Lt_01A3
cmp dword ptr [ebp-36], 0
je .Lt_01A5
push dword ptr [ebp-8]
call dword ptr [IR+260]
add esp, 4
cmp eax, 2147483647
jne .Lt_01A7
mov dword ptr [ebp-64], -1
.Lt_01A7:
.Lt_01A6:
.Lt_01A5:
.Lt_01A4:
.Lt_01A3:
.Lt_01A2:
.Lt_019D:
.Lt_019C:
.Lt_019B:
.Lt_019A:
mov eax, dword ptr [ebp-64]
and eax, dword ptr [ebp-60]
je .Lt_01A9
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 4
je .Lt_01AB
mov dword ptr [ebp-60], 0
.Lt_01AB:
.Lt_01AA:
.Lt_01A9:
.Lt_01A8:
cmp dword ptr [ebp-60], 0
je .Lt_01AD
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call HRENAME
add esp, 8
jmp .Lt_01AC
.Lt_01AD:
cmp dword ptr [ebp-64], 0
je .Lt_01AE
push 36
mov eax, dword ptr [ebp+8]
lea ecx, [eax+80]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+44]
push eax
call fb_MemSwap
add esp, 12
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call HRENAME
add esp, 8
.Lt_01AE:
.Lt_01AC:
.Lt_0189:
.Lt_017B:
.Lt_0168:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_FLUSH:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01AF:
cmp dword ptr [CTX+56], 0
jne .Lt_01B2
jmp .Lt_01B0
.Lt_01B2:
.Lt_01B1:
lea eax, [CTX]
push eax
call FLISTGETHEAD
add esp, 4
mov dword ptr [Lt_0427], eax
.Lt_01B3:
mov eax, dword ptr [Lt_0427]
mov dword ptr [CTX+60], eax
push dword ptr [Lt_0427]
call HREUSE
add esp, 4
mov eax, dword ptr [Lt_0427]
mov ebx, dword ptr [eax+4]
mov dword ptr [Lt_0428], ebx
mov ebx, dword ptr [Lt_0427]
mov eax, dword ptr [ebx+44]
mov dword ptr [Lt_0429], eax
mov eax, dword ptr [Lt_0427]
mov ebx, dword ptr [eax+80]
mov dword ptr [Lt_042A], ebx
mov ebx, dword ptr [Lt_0427]
mov eax, dword ptr [ebx+8]
mov dword ptr [Lt_042B], eax
mov eax, dword ptr [Lt_0428]
sal eax, 4
mov ebx, dword ptr [AST_OPTB+eax]
mov dword ptr [ebp-4], ebx
jmp .Lt_01B7
.Lt_01B9:
push dword ptr [Lt_042B]
push dword ptr [Lt_0429]
push dword ptr [Lt_0428]
call HFLUSHUOP
add esp, 12
jmp .Lt_01B6
.Lt_01BA:
push dword ptr [Lt_042B]
push dword ptr [Lt_042A]
push dword ptr [Lt_0429]
push dword ptr [Lt_0428]
call HFLUSHBOP
add esp, 16
jmp .Lt_01B6
.Lt_01BB:
mov ebx, dword ptr [Lt_0427]
push dword ptr [ebx+116]
push dword ptr [Lt_042B]
push dword ptr [Lt_042A]
push dword ptr [Lt_0429]
push dword ptr [Lt_0428]
call HFLUSHCOMP
add esp, 20
jmp .Lt_01B6
.Lt_01BC:
push dword ptr [Lt_042A]
push dword ptr [Lt_0429]
push dword ptr [Lt_0428]
call HFLUSHSTORE
add esp, 12
jmp .Lt_01B6
.Lt_01BD:
push dword ptr [Lt_042B]
push dword ptr [Lt_0429]
push dword ptr [Lt_0428]
call HFLUSHLOAD
add esp, 12
jmp .Lt_01B6
.Lt_01BE:
push dword ptr [Lt_042A]
push dword ptr [Lt_0429]
push dword ptr [Lt_0428]
call HFLUSHCONVERT
add esp, 12
jmp .Lt_01B6
.Lt_01BF:
mov ebx, dword ptr [Lt_0427]
push dword ptr [ebx+120]
push dword ptr [Lt_0429]
push dword ptr [Lt_0428]
call HFLUSHSTACK
add esp, 12
jmp .Lt_01B6
.Lt_01C0:
push dword ptr [Lt_042B]
push dword ptr [Lt_0429]
mov ebx, dword ptr [Lt_0427]
push dword ptr [ebx+120]
mov ebx, dword ptr [Lt_0427]
push dword ptr [ebx+116]
push dword ptr [Lt_0428]
call HFLUSHCALL
add esp, 20
jmp .Lt_01B6
.Lt_01C1:
mov ebx, dword ptr [Lt_0427]
push dword ptr [ebx+116]
push dword ptr [Lt_0428]
call HFLUSHBRANCH
add esp, 8
jmp .Lt_01B6
.Lt_01C2:
push dword ptr [Lt_042B]
push dword ptr [Lt_0429]
push dword ptr [Lt_0428]
call HFLUSHADDR
add esp, 12
jmp .Lt_01B6
.Lt_01C3:
mov ebx, dword ptr [Lt_0427]
push dword ptr [ebx+116]
mov ebx, dword ptr [Lt_0427]
push dword ptr [ebx+120]
push dword ptr [Lt_042A]
push dword ptr [Lt_0429]
push dword ptr [Lt_0428]
call HFLUSHMEM
add esp, 20
jmp .Lt_01B6
.Lt_01C4:
mov ebx, dword ptr [Lt_0427]
push dword ptr [ebx+124]
mov ebx, dword ptr [Lt_0427]
push dword ptr [ebx+120]
mov ebx, dword ptr [Lt_0427]
push dword ptr [ebx+116]
push dword ptr [Lt_0428]
call HFLUSHDBG
add esp, 16
jmp .Lt_01B6
.Lt_01C5:
mov ebx, dword ptr [Lt_0427]
push dword ptr [ebx+116]
push dword ptr [Lt_0428]
call HFLUSHLIT
add esp, 8
jmp .Lt_01B6
.Lt_01B7:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967295
cmp ebx, 29
ja .Lt_01B6
mov ebx, dword ptr [ebp-4]
jmp dword ptr [.LT_01C6+ebx*4-4]
.LT_01C6:
.int .Lt_01BD
.int .Lt_01BC
.int .Lt_01BA
.int .Lt_01B9
.int .Lt_01BE
.int .Lt_01C2
.int .Lt_01C1
.int .Lt_01B6
.int .Lt_01C0
.int .Lt_01B6
.int .Lt_01BF
.int .Lt_01C3
.int .Lt_01B6
.int .Lt_01BB
.int .Lt_01B6
.int .Lt_01B6
.int .Lt_01B6
.int .Lt_01B6
.int .Lt_01B6
.int .Lt_01B6
.int .Lt_01B6
.int .Lt_01B6
.int .Lt_01B6
.int .Lt_01B6
.int .Lt_01B6
.int .Lt_01B6
.int .Lt_01C5
.int .Lt_01B6
.int .Lt_01B6
.int .Lt_01C4
.Lt_01B6:
cmp dword ptr [ENV+116], 1
jl .Lt_01C8
mov ebx, dword ptr [Lt_0428]
sal ebx, 4
cmp dword ptr [AST_OPTB+ebx], 9
je .Lt_01CA
cmp dword ptr [Lt_042B], 0
je .Lt_01CC
mov ebx, dword ptr [Lt_042B]
cmp dword ptr [ebx+16], 0
jne .Lt_01CE
mov ebx, dword ptr [Lt_042B]
mov dword ptr [ebx+16], 1
.Lt_01CE:
.Lt_01CC:
.Lt_01CB:
.Lt_01CA:
.Lt_01C9:
.Lt_01C8:
.Lt_01C7:
push dword ptr [Lt_0427]
call FLISTGETNEXT
add esp, 4
mov dword ptr [Lt_0427], eax
.Lt_01B5:
cmp dword ptr [Lt_0427], 0
jne .Lt_01B3
.Lt_01B4:
mov dword ptr [CTX+60], 0
mov dword ptr [CTX+56], 0
lea eax, [CTX]
push eax
call FLISTRESET
add esp, 4
lea eax, [CTX+64]
push eax
call FLISTRESET
add esp, 4
call HFREEPRESERVEDREGS
.Lt_01B0:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0428,4
.balign 4
	.lcomm	Lt_0427,4
.balign 4
	.lcomm	Lt_0429,4
.balign 4
	.lcomm	Lt_042A,4
.balign 4
	.lcomm	Lt_042B,4

.section .text
.balign 16
HFLUSHBRANCH:
push ebp
mov ebp, esp
sub esp, 4
.Lt_01CF:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_01D2
.Lt_01D4:
push dword ptr [ebp+12]
call EMITLABEL
add esp, 4
jmp .Lt_01D1
.Lt_01D5:
push dword ptr [ebp+12]
call EMITJUMP
add esp, 4
jmp .Lt_01D1
.Lt_01D6:
push 0
push dword ptr [ebp+12]
call EMITCALL
add esp, 8
jmp .Lt_01D1
.Lt_01D7:
push 0
call EMITRET
add esp, 4
jmp .Lt_01D1
.Lt_01D8:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call EMITBRANCH
add esp, 8
jmp .Lt_01D1
.Lt_01D2:
mov eax, dword ptr [ebp-4]
add eax, 4294967198
cmp eax, 3
ja .Lt_01D8
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_01D9+eax*4-392]
.LT_01D9:
.int .Lt_01D5
.int .Lt_01D6
.int .Lt_01D4
.int .Lt_01D7
.Lt_01D1:
.Lt_01D0:
mov esp, ebp
pop ebp
ret
.balign 16
HFREEPRESERVEDREGS:
push ebx
.Lt_01DA:
mov dword ptr [Lt_042C], 0
.Lt_01DF:
mov eax, dword ptr [Lt_042C]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_042C]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+28]
add esp, 4
mov dword ptr [Lt_042D], eax
.Lt_01E0:
cmp dword ptr [Lt_042D], -1
je .Lt_01E1
push dword ptr [Lt_042D]
mov eax, dword ptr [Lt_042C]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_042C]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+16]
add esp, 8
test eax, eax
jne .Lt_01E3
push dword ptr [Lt_042D]
mov eax, dword ptr [Lt_042C]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_042C]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+12]
add esp, 8
.Lt_01E3:
.Lt_01E2:
push dword ptr [Lt_042D]
mov ebx, dword ptr [Lt_042C]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_042C]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax+32]
add esp, 8
mov dword ptr [Lt_042D], eax
jmp .Lt_01E0
.Lt_01E1:
.Lt_01DD:
inc dword ptr [Lt_042C]
.Lt_01DC:
cmp dword ptr [Lt_042C], 1
jle .Lt_01DF
.Lt_01DE:
.Lt_01DB:
pop ebx
ret

.section .bss
.balign 4
	.lcomm	Lt_042C,4
.balign 4
	.lcomm	Lt_042D,4

.section .text
.balign 16
HPRESERVEREG:
push ebp
mov ebp, esp
sub esp, 240
push ebx
mov dword ptr [ebp-4], 0
.Lt_01E4:
cmp dword ptr [ebp+8], 0
je .Lt_01E7
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_01E8
mov dword ptr [ebp-240], 24
jmp .Lt_042E
.Lt_01E8:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-240], ebx
.Lt_042E:
mov ebx, dword ptr [ebp-240]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 24
jne .Lt_01EB
mov dword ptr [ebp-12], 12
.Lt_01EB:
.Lt_01EA:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_01E6
.Lt_01E7:
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-12], -2147483648
mov dword ptr [ebp-8], -1
.Lt_01E6:
lea eax, [ebp-100]
push edi
push esi
mov edi, eax
mov esi, dword ptr [ebp+8]
mov ecx, 17
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push dword ptr [ebp-8]
call dword ptr [EMIT+168]
add esp, 8
mov dword ptr [ebp-20], eax
mov eax, dword ptr [ebp-12]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_01ED
lea ebx, [ebp-168]
mov eax, dword ptr [ebp+8]
push edi
push esi
mov edi, ebx
mov esi, dword ptr [eax+52]
mov ecx, 17
rep movsd
pop esi
pop edi
lea eax, [ebp-168]
mov dword ptr [ebp-48], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
push dword ptr [ebx+12]
push dword ptr [ebp-8]
call dword ptr [EMIT+168]
add esp, 8
mov dword ptr [ebp-24], eax
jmp .Lt_01EC
.Lt_01ED:
mov dword ptr [ebp-24], -1
.Lt_01EC:
mov eax, dword ptr [ebp-24]
and eax, dword ptr [ebp-20]
je .Lt_01EF
mov dword ptr [ebp-4], -1
jmp .Lt_01E5
.Lt_01EF:
.Lt_01EE:
cmp dword ptr [ebp-20], 0
jne .Lt_01F1
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call dword ptr [EMIT+172]
add esp, 8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], -1
jne .Lt_01F3
mov dword ptr [ebp-4], 0
jmp .Lt_01E5
.Lt_01F3:
.Lt_01F2:
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-28]
mov eax, dword ptr [ebp-8]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
.Lt_01F1:
.Lt_01F0:
cmp dword ptr [ebp-24], 0
jne .Lt_01F5
push 8
push 0
call dword ptr [EMIT+172]
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], -1
jne .Lt_01F7
cmp dword ptr [ebp-20], 0
jne .Lt_01F9
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-8]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+12]
add esp, 8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-88]
mov dword ptr [ebx+12], eax
.Lt_01F9:
.Lt_01F8:
mov dword ptr [ebp-4], 0
jmp .Lt_01E5
.Lt_01F7:
.Lt_01F6:
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [ebp-32]
push dword ptr [REGTB]
mov eax, dword ptr [REGTB]
call dword ptr [eax+8]
add esp, 16
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+52]
mov dword ptr [ecx+12], eax
.Lt_01F5:
.Lt_01F4:
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
not eax
test eax, eax
je .Lt_01FB
lea eax, [ebp-100]
push eax
push dword ptr [ebp+8]
call EMITMOV
add esp, 8
jmp .Lt_01FA
.Lt_01FB:
cmp dword ptr [ebp-20], 0
jne .Lt_01FC
mov eax, dword ptr [ebp-12]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [ebp-12]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_01FE
lea ecx, [ebp-236]
push ecx
push edi
push esi
mov edi, ecx
mov esi, dword ptr [ebp+8]
mov ecx, 17
rep movsd
pop esi
pop edi
pop ecx
mov dword ptr [ebp-232], 8
mov dword ptr [ebp-184], 0
mov dword ptr [ebp-96], 8
mov dword ptr [ebp-48], 0
lea ecx, [ebp-100]
push ecx
lea ecx, [ebp-236]
push ecx
call EMITMOV
add esp, 8
jmp .Lt_01FD
.Lt_01FE:
lea ecx, [ebp-100]
push ecx
push dword ptr [ebp+8]
call EMITMOV
add esp, 8
.Lt_01FD:
jmp .Lt_01FA
.Lt_01FC:
lea ecx, [ebp-168]
push ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+52]
call EMITMOV
add esp, 8
.Lt_01FA:
cmp dword ptr [ebp-20], 0
jne .Lt_0200
push dword ptr [ebp-88]
mov ecx, dword ptr [ebp-8]
push dword ptr [REGTB+ecx*4]
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [REGTB+ecx*4]
call dword ptr [eax+12]
add esp, 8
.Lt_0200:
.Lt_01FF:
cmp dword ptr [ebp-24], 0
jne .Lt_0202
push dword ptr [ebp-156]
push dword ptr [REGTB]
mov eax, dword ptr [REGTB]
call dword ptr [eax+12]
add esp, 8
.Lt_0202:
.Lt_0201:
mov dword ptr [ebp-4], -1
.Lt_01E5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HPRESERVEREGS:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_0203:
mov dword ptr [ebp-20], 0
.Lt_0208:
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp-20], 0
jne .Lt_020A
cmp dword ptr [ebp+8], 0
je .Lt_020C
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 4
jne .Lt_020F
.Lt_0210:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-4], eax
jmp .Lt_020D
.Lt_020F:
cmp dword ptr [ebp-24], 2
je .Lt_0212
.Lt_0213:
cmp dword ptr [ebp-24], 3
jne .Lt_0211
.Lt_0212:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov dword ptr [ebp+8], ebx
cmp dword ptr [ebp+8], 0
je .Lt_0215
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-4], eax
.Lt_0215:
.Lt_0214:
.Lt_0211:
.Lt_020D:
mov dword ptr [ebp+8], 0
.Lt_020C:
.Lt_020B:
.Lt_020A:
.Lt_0209:
mov eax, dword ptr [ebp-20]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+28]
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0216:
cmp dword ptr [ebp-8], -1
je .Lt_0217
push dword ptr [ebp-8]
mov eax, dword ptr [ebp-20]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+16]
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-4]
cmp ebx, dword ptr [ebp-8]
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0219
lea ebx, [ebp-16]
push ebx
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-20]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax+36]
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
je .Lt_021B
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.Lt_021B:
.Lt_021A:
push dword ptr [ebp-12]
call HPRESERVEREG
add esp, 4
test eax, eax
jne .Lt_021D
push 0
push dword ptr [ebp-12]
call dword ptr [IR+268]
add esp, 8
.Lt_021D:
.Lt_021C:
.Lt_0219:
.Lt_0218:
push dword ptr [ebp-8]
mov eax, dword ptr [ebp-20]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+32]
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_0216
.Lt_0217:
.Lt_0206:
inc dword ptr [ebp-20]
.Lt_0205:
cmp dword ptr [ebp-20], 1
jle .Lt_0208
.Lt_0207:
.Lt_0204:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HLOADPOINTER:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_021E:
cmp dword ptr [ebp+8], 0
je .Lt_0221
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0222
mov dword ptr [ebp-16], 24
jmp .Lt_0435
.Lt_0222:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_0435:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 24
jne .Lt_0225
mov dword ptr [ebp-8], 12
.Lt_0225:
.Lt_0224:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-12], eax
jmp .Lt_0220
.Lt_0221:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], -2147483648
mov dword ptr [ebp-12], -1
.Lt_0220:
push dword ptr [ebp+8]
call HLOADIDX
add esp, 4
cmp dword ptr [ebp-4], 4
jne .Lt_0227
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_0228
mov dword ptr [ebp-16], 24
jmp .Lt_0436
.Lt_0228:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_0436:
mov eax, dword ptr [ebp-16]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-12]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.Lt_0227:
.Lt_0226:
.Lt_021F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HLOADRESULT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_022A:
cmp dword ptr [ebp+12], 0
je .Lt_022D
cmp dword ptr [ebp+12], 0
je .Lt_022F
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0230
mov dword ptr [ebp-28], 24
jmp .Lt_0437
.Lt_0230:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_0437:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 24
jne .Lt_0233
mov dword ptr [ebp-8], 12
.Lt_0233:
.Lt_0232:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-12], eax
jmp .Lt_022E
.Lt_022F:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], -2147483648
mov dword ptr [ebp-12], -1
.Lt_022E:
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call dword ptr [EMIT+176]
add esp, 16
mov eax, dword ptr [ebp-8]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-8]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0235
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-24], eax
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-12]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [eax], 4
.Lt_0235:
.Lt_0234:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 4
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 8
jmp .Lt_022C
.Lt_022D:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
and ebx, 480
je .Lt_0236
mov dword ptr [ebp-28], 24
jmp .Lt_0438
.Lt_0236:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+88]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_0438:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
cmp ebx, 1
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+96]
cmp ecx, 1
setne cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_0239
call EMITPOPST0
.Lt_0239:
.Lt_0238:
.Lt_022C:
.Lt_022B:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFLUSHCALL:
push ebp
mov ebp, esp
.Lt_023A:
cmp dword ptr [ebp+8], 102
jne .Lt_023D
.Lt_023E:
push 0
call HPRESERVEREGS
add esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITCALL
add esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call HLOADRESULT
add esp, 8
jmp .Lt_023C
.Lt_023D:
cmp dword ptr [ebp+8], 103
jne .Lt_023F
.Lt_0240:
push dword ptr [ebp+20]
call HPRESERVEREGS
add esp, 4
push dword ptr [ebp+20]
call HLOADPOINTER
add esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+20]
call EMITCALLPTR
add esp, 8
push 0
push dword ptr [ebp+20]
call HFREEREG
add esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call HLOADRESULT
add esp, 8
jmp .Lt_023C
.Lt_023F:
cmp dword ptr [ebp+8], 104
jne .Lt_0241
.Lt_0242:
push dword ptr [ebp+20]
call HLOADPOINTER
add esp, 4
push dword ptr [ebp+20]
call EMITJUMPPTR
add esp, 4
push 0
push dword ptr [ebp+20]
call HFREEREG
add esp, 8
.Lt_0241:
.Lt_0243:
.Lt_023C:
.Lt_023B:
mov esp, ebp
pop ebp
ret
.balign 16
HFLUSHSTACK:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0244:
cmp dword ptr [ebp+8], 91
jne .Lt_0247
push dword ptr [ebp+16]
call EMITSTACKALIGN
add esp, 4
jmp .Lt_0245
.Lt_0247:
.Lt_0246:
cmp dword ptr [ebp+12], 0
je .Lt_0249
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_043F], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_024A
mov dword ptr [ebp-4], 24
jmp .Lt_043D
.Lt_024A:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_043D:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_0440], ebx
cmp dword ptr [Lt_0440], 24
jne .Lt_024D
mov dword ptr [Lt_0440], 12
.Lt_024D:
.Lt_024C:
mov ebx, dword ptr [Lt_0440]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_0441], eax
jmp .Lt_0248
.Lt_0249:
mov dword ptr [Lt_043F], -1
mov dword ptr [Lt_0440], -2147483648
mov dword ptr [Lt_0441], -1
.Lt_0248:
push dword ptr [ebp+12]
call HLOADIDX
add esp, 4
cmp dword ptr [Lt_043F], 4
jne .Lt_024F
mov eax, dword ptr [Lt_0440]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0440]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0251
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_0444], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [Lt_0444]
mov eax, dword ptr [Lt_0441]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0441]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_0440], 8
.Lt_0251:
.Lt_0250:
mov ebx, dword ptr [Lt_0440]
and ebx, 480
je .Lt_0252
mov dword ptr [ebp-4], 24
jmp .Lt_043E
.Lt_0252:
mov ebx, dword ptr [Lt_0440]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_043E:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [Lt_0441]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_0441]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.Lt_024F:
.Lt_024E:
cmp dword ptr [ebp+8], 88
jne .Lt_0255
.Lt_0256:
push dword ptr [ebp+12]
call EMITPUSH
add esp, 4
jmp .Lt_0254
.Lt_0255:
cmp dword ptr [ebp+8], 90
jne .Lt_0257
.Lt_0258:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITPUSHUDT
add esp, 8
jmp .Lt_0254
.Lt_0257:
cmp dword ptr [ebp+8], 89
jne .Lt_0259
.Lt_025A:
push dword ptr [ebp+12]
call EMITPOP
add esp, 4
.Lt_0259:
.Lt_0254:
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 8
.Lt_0245:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_043F,4
.balign 4
	.lcomm	Lt_0440,4
.balign 4
	.lcomm	Lt_0441,4
.balign 4
	.lcomm	Lt_0444,4

.section .text
.balign 16
HFLUSHUOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_025B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
mov dword ptr [Lt_0449], ebx
cmp dword ptr [ebp+12], 0
je .Lt_025E
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
mov dword ptr [Lt_044A], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_025F
mov dword ptr [ebp-4], 24
jmp .Lt_0445
.Lt_025F:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0445:
mov eax, dword ptr [ebp-4]
mov dword ptr [Lt_044B], eax
cmp dword ptr [Lt_044B], 24
jne .Lt_0262
mov dword ptr [Lt_044B], 12
.Lt_0262:
.Lt_0261:
mov eax, dword ptr [Lt_044B]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [Lt_044C], ebx
jmp .Lt_025D
.Lt_025E:
mov dword ptr [Lt_044A], -1
mov dword ptr [Lt_044B], -2147483648
mov dword ptr [Lt_044C], -1
.Lt_025D:
cmp dword ptr [ebp+16], 0
je .Lt_0264
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [Lt_044D], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0265
mov dword ptr [ebp-4], 24
jmp .Lt_0446
.Lt_0265:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0446:
mov eax, dword ptr [ebp-4]
mov dword ptr [Lt_044E], eax
cmp dword ptr [Lt_044E], 24
jne .Lt_0268
mov dword ptr [Lt_044E], 12
.Lt_0268:
.Lt_0267:
mov eax, dword ptr [Lt_044E]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax]
mov dword ptr [Lt_044F], ebx
jmp .Lt_0263
.Lt_0264:
mov dword ptr [Lt_044D], -1
mov dword ptr [Lt_044E], -2147483648
mov dword ptr [Lt_044F], -1
.Lt_0263:
push dword ptr [ebp+12]
call HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call HLOADIDX
add esp, 4
cmp dword ptr [ebp+16], 0
je .Lt_026A
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp+12], ebx
je .Lt_026C
mov ebx, dword ptr [Lt_044E]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_044E]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_026E
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+52]
mov dword ptr [Lt_0452], ebx
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [Lt_0452]
mov ebx, dword ptr [Lt_044F]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_044F]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [Lt_044E], 8
.Lt_026E:
.Lt_026D:
mov eax, dword ptr [Lt_044E]
and eax, 480
je .Lt_026F
mov dword ptr [ebp-4], 24
jmp .Lt_0447
.Lt_026F:
mov eax, dword ptr [Lt_044E]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0447:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [Lt_044F]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_044F]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.Lt_026C:
.Lt_026B:
.Lt_026A:
.Lt_0269:
cmp dword ptr [ebp+16], 0
je .Lt_0272
mov ebx, dword ptr [Lt_044B]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_044B]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0274
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+52]
mov dword ptr [Lt_0452], ebx
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [Lt_0452]
mov ebx, dword ptr [Lt_044C]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_044C]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [Lt_044B], 8
.Lt_0274:
.Lt_0273:
cmp dword ptr [ebp+8], 75
jne .Lt_0276
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 0
.Lt_0276:
.Lt_0275:
mov eax, dword ptr [Lt_044B]
and eax, 480
je .Lt_0277
mov dword ptr [ebp-4], 24
jmp .Lt_0448
.Lt_0277:
mov eax, dword ptr [Lt_044B]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0448:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [Lt_044C]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_044C]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
cmp dword ptr [ebp+8], 75
jne .Lt_027A
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [Lt_0449]
mov dword ptr [ebx+20], eax
.Lt_027A:
.Lt_0279:
.Lt_0272:
.Lt_0271:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_027C
.Lt_027E:
push dword ptr [ebp+12]
call EMITNEG
add esp, 4
jmp .Lt_027B
.Lt_027F:
push dword ptr [ebp+12]
call EMITNOT
add esp, 4
jmp .Lt_027B
.Lt_0280:
push dword ptr [ebp+12]
call EMITHADD
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 0
jmp .Lt_027B
.Lt_0281:
push dword ptr [ebp+12]
call EMITABS
add esp, 4
jmp .Lt_027B
.Lt_0282:
push dword ptr [ebp+12]
call EMITSGN
add esp, 4
jmp .Lt_027B
.Lt_0283:
push dword ptr [ebp+12]
call EMITFIX
add esp, 4
jmp .Lt_027B
.Lt_0284:
push dword ptr [ebp+12]
call EMITFRAC
add esp, 4
jmp .Lt_027B
.Lt_0285:
push dword ptr [ebp+12]
call EMITCONVFD2FS
add esp, 4
jmp .Lt_027B
.Lt_0286:
push dword ptr [ebp+12]
call EMITSIN
add esp, 4
jmp .Lt_027B
.Lt_0287:
push dword ptr [ebp+12]
call EMITASIN
add esp, 4
jmp .Lt_027B
.Lt_0288:
push dword ptr [ebp+12]
call EMITCOS
add esp, 4
jmp .Lt_027B
.Lt_0289:
push dword ptr [ebp+12]
call EMITACOS
add esp, 4
jmp .Lt_027B
.Lt_028A:
push dword ptr [ebp+12]
call EMITTAN
add esp, 4
jmp .Lt_027B
.Lt_028B:
push dword ptr [ebp+12]
call EMITATAN
add esp, 4
jmp .Lt_027B
.Lt_028C:
push dword ptr [ebp+12]
call EMITSQRT
add esp, 4
jmp .Lt_027B
.Lt_028D:
push dword ptr [ebp+12]
call EMITRSQRT
add esp, 4
jmp .Lt_027B
.Lt_028E:
push dword ptr [ebp+12]
call EMITRCP
add esp, 4
jmp .Lt_027B
.Lt_028F:
push dword ptr [ebp+12]
call EMITLOG
add esp, 4
jmp .Lt_027B
.Lt_0290:
push dword ptr [ebp+12]
call EMITEXP
add esp, 4
jmp .Lt_027B
.Lt_0291:
push dword ptr [ebp+12]
call EMITFLOOR
add esp, 4
jmp .Lt_027B
.Lt_0292:
push dword ptr [ebp+12]
call EMITSWZREP
add esp, 4
jmp .Lt_027B
.Lt_027C:
mov eax, dword ptr [ebp-4]
add eax, 4294967244
cmp eax, 23
ja .Lt_027B
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_0293+eax*4-208]
.LT_0293:
.int .Lt_027F
.int .Lt_027B
.int .Lt_027E
.int .Lt_0280
.int .Lt_0281
.int .Lt_0282
.int .Lt_0286
.int .Lt_0287
.int .Lt_0288
.int .Lt_0289
.int .Lt_028A
.int .Lt_028B
.int .Lt_027B
.int .Lt_028C
.int .Lt_028D
.int .Lt_028E
.int .Lt_028F
.int .Lt_0290
.int .Lt_0291
.int .Lt_0283
.int .Lt_0284
.int .Lt_027B
.int .Lt_0285
.int .Lt_0292
.Lt_027B:
cmp dword ptr [ebp+16], 0
je .Lt_0295
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp+12], eax
je .Lt_0297
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call EMITMOV
add esp, 8
.Lt_0297:
.Lt_0296:
.Lt_0295:
.Lt_0294:
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 8
.Lt_025C:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_044A,4
.balign 4
	.lcomm	Lt_044B,4
.balign 4
	.lcomm	Lt_044C,4
.balign 4
	.lcomm	Lt_044D,4
.balign 4
	.lcomm	Lt_044E,4
.balign 4
	.lcomm	Lt_044F,4
.balign 4
	.lcomm	Lt_0452,4
.balign 4
	.lcomm	Lt_0449,4

.section .text
.balign 16
HFLUSHBOP:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0298:
cmp dword ptr [ebp+12], 0
je .Lt_029B
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_045C], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_029C
mov dword ptr [ebp-4], 24
jmp .Lt_0455
.Lt_029C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_0455:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_045D], ebx
cmp dword ptr [Lt_045D], 24
jne .Lt_029F
mov dword ptr [Lt_045D], 12
.Lt_029F:
.Lt_029E:
mov ebx, dword ptr [Lt_045D]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_045E], eax
jmp .Lt_029A
.Lt_029B:
mov dword ptr [Lt_045C], -1
mov dword ptr [Lt_045D], -2147483648
mov dword ptr [Lt_045E], -1
.Lt_029A:
cmp dword ptr [ebp+16], 0
je .Lt_02A1
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_045F], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_02A2
mov dword ptr [ebp-4], 24
jmp .Lt_0456
.Lt_02A2:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_0456:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_0460], ebx
cmp dword ptr [Lt_0460], 24
jne .Lt_02A5
mov dword ptr [Lt_0460], 12
.Lt_02A5:
.Lt_02A4:
mov ebx, dword ptr [Lt_0460]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_0461], eax
jmp .Lt_02A0
.Lt_02A1:
mov dword ptr [Lt_045F], -1
mov dword ptr [Lt_0460], -2147483648
mov dword ptr [Lt_0461], -1
.Lt_02A0:
cmp dword ptr [ebp+20], 0
je .Lt_02A7
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_0462], ebx
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_02A8
mov dword ptr [ebp-4], 24
jmp .Lt_0457
.Lt_02A8:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_0457:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_0463], ebx
cmp dword ptr [Lt_0463], 24
jne .Lt_02AB
mov dword ptr [Lt_0463], 12
.Lt_02AB:
.Lt_02AA:
mov ebx, dword ptr [Lt_0463]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_0464], eax
jmp .Lt_02A6
.Lt_02A7:
mov dword ptr [Lt_0462], -1
mov dword ptr [Lt_0463], -2147483648
mov dword ptr [Lt_0464], -1
.Lt_02A6:
push dword ptr [ebp+12]
call HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call HLOADIDX
add esp, 4
push dword ptr [ebp+20]
call HLOADIDX
add esp, 4
cmp dword ptr [ebp+20], 0
jne .Lt_02AD
cmp dword ptr [Lt_045F], 0
je .Lt_02AF
mov eax, dword ptr [Lt_0460]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0460]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_02B1
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_0467], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [Lt_0467]
mov eax, dword ptr [Lt_0461]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0461]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_0460], 8
.Lt_02B1:
.Lt_02B0:
mov ebx, dword ptr [Lt_0460]
and ebx, 480
je .Lt_02B2
mov dword ptr [ebp-4], 24
jmp .Lt_0458
.Lt_02B2:
mov ebx, dword ptr [Lt_0460]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_0458:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [Lt_0461]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_0461]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.Lt_02AF:
.Lt_02AE:
jmp .Lt_02AC
.Lt_02AD:
cmp dword ptr [Lt_045F], 4
jne .Lt_02B5
mov eax, dword ptr [Lt_0460]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0460]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_02B7
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_0467], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [Lt_0467]
mov eax, dword ptr [Lt_0461]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0461]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_0460], 8
.Lt_02B7:
.Lt_02B6:
mov ebx, dword ptr [Lt_0460]
and ebx, 480
je .Lt_02B8
mov dword ptr [ebp-8], 24
jmp .Lt_0459
.Lt_02B8:
mov ebx, dword ptr [Lt_0460]
and ebx, 31
mov dword ptr [ebp-8], ebx
.Lt_0459:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [Lt_0461]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_0461]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.Lt_02B5:
.Lt_02B4:
mov eax, dword ptr [Lt_045D]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_045D]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_02BB
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_0467], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [Lt_0467]
mov eax, dword ptr [Lt_045E]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_045E]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_045D], 8
.Lt_02BB:
.Lt_02BA:
mov ebx, dword ptr [Lt_045D]
and ebx, 480
je .Lt_02BC
mov dword ptr [ebp-4], 24
jmp .Lt_045A
.Lt_02BC:
mov ebx, dword ptr [Lt_045D]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_045A:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [Lt_045E]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_045E]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.Lt_02AC:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_02BF
.Lt_02C1:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITADD
add esp, 8
jmp .Lt_02BE
.Lt_02C2:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITSUB
add esp, 8
jmp .Lt_02BE
.Lt_02C3:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITMUL
add esp, 8
jmp .Lt_02BE
.Lt_02C4:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITDIV
add esp, 8
jmp .Lt_02BE
.Lt_02C5:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITINTDIV
add esp, 8
jmp .Lt_02BE
.Lt_02C6:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITMOD
add esp, 8
jmp .Lt_02BE
.Lt_02C7:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITSHL
add esp, 8
jmp .Lt_02BE
.Lt_02C8:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITSHR
add esp, 8
jmp .Lt_02BE
.Lt_02C9:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITAND
add esp, 8
jmp .Lt_02BE
.Lt_02CA:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITOR
add esp, 8
jmp .Lt_02BE
.Lt_02CB:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITXOR
add esp, 8
jmp .Lt_02BE
.Lt_02CC:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITEQV
add esp, 8
jmp .Lt_02BE
.Lt_02CD:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITIMP
add esp, 8
jmp .Lt_02BE
.Lt_02CE:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITATN2
add esp, 8
jmp .Lt_02BE
.Lt_02CF:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITPOW
add esp, 8
jmp .Lt_02BE
.Lt_02BF:
mov eax, dword ptr [ebp-4]
add eax, 4294967268
cmp eax, 36
ja .Lt_02BE
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_02D0+eax*4-112]
.LT_02D0:
.int .Lt_02C1
.int .Lt_02C2
.int .Lt_02C3
.int .Lt_02C4
.int .Lt_02C5
.int .Lt_02C6
.int .Lt_02C9
.int .Lt_02CA
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02CB
.int .Lt_02CC
.int .Lt_02CD
.int .Lt_02C7
.int .Lt_02C8
.int .Lt_02CF
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02BE
.int .Lt_02CE
.Lt_02BE:
cmp dword ptr [ebp+20], 0
je .Lt_02D2
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebp+12], eax
je .Lt_02D4
mov eax, dword ptr [Lt_0463]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0463]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_02D6
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_0467], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+20]
push dword ptr [Lt_0467]
mov eax, dword ptr [Lt_0464]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0464]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_0463], 8
.Lt_02D6:
.Lt_02D5:
mov ebx, dword ptr [Lt_0463]
and ebx, 480
je .Lt_02D7
mov dword ptr [ebp-4], 24
jmp .Lt_045B
.Lt_02D7:
mov ebx, dword ptr [Lt_0463]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_045B:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+20]
mov ebx, dword ptr [Lt_0464]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_0464]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
push dword ptr [ebp+12]
push dword ptr [ebp+20]
call EMITMOV
add esp, 8
.Lt_02D4:
.Lt_02D3:
.Lt_02D2:
.Lt_02D1:
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 8
push 0
push dword ptr [ebp+20]
call HFREEREG
add esp, 8
.Lt_0299:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_045C,4
.balign 4
	.lcomm	Lt_045D,4
.balign 4
	.lcomm	Lt_045E,4
.balign 4
	.lcomm	Lt_045F,4
.balign 4
	.lcomm	Lt_0460,4
.balign 4
	.lcomm	Lt_0461,4
.balign 4
	.lcomm	Lt_0462,4
.balign 4
	.lcomm	Lt_0463,4
.balign 4
	.lcomm	Lt_0464,4
.balign 4
	.lcomm	Lt_0467,4

.section .text
.balign 16
HFLUSHCOMP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_02D9:
cmp dword ptr [ebp+12], 0
je .Lt_02DC
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_0474], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_02DD
mov dword ptr [ebp-4], 24
jmp .Lt_046E
.Lt_02DD:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_046E:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_0475], ebx
cmp dword ptr [Lt_0475], 24
jne .Lt_02E0
mov dword ptr [Lt_0475], 12
.Lt_02E0:
.Lt_02DF:
mov ebx, dword ptr [Lt_0475]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_0476], eax
jmp .Lt_02DB
.Lt_02DC:
mov dword ptr [Lt_0474], -1
mov dword ptr [Lt_0475], -2147483648
mov dword ptr [Lt_0476], -1
.Lt_02DB:
cmp dword ptr [ebp+16], 0
je .Lt_02E2
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_0477], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_02E3
mov dword ptr [ebp-4], 24
jmp .Lt_046F
.Lt_02E3:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_046F:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_0478], ebx
cmp dword ptr [Lt_0478], 24
jne .Lt_02E6
mov dword ptr [Lt_0478], 12
.Lt_02E6:
.Lt_02E5:
mov ebx, dword ptr [Lt_0478]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_0479], eax
jmp .Lt_02E1
.Lt_02E2:
mov dword ptr [Lt_0477], -1
mov dword ptr [Lt_0478], -2147483648
mov dword ptr [Lt_0479], -1
.Lt_02E1:
cmp dword ptr [ebp+20], 0
je .Lt_02E8
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_047A], ebx
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_02E9
mov dword ptr [ebp-4], 24
jmp .Lt_0470
.Lt_02E9:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_0470:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_047B], ebx
cmp dword ptr [Lt_047B], 24
jne .Lt_02EC
mov dword ptr [Lt_047B], 12
.Lt_02EC:
.Lt_02EB:
mov ebx, dword ptr [Lt_047B]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_047C], eax
jmp .Lt_02E7
.Lt_02E8:
mov dword ptr [Lt_047A], -1
mov dword ptr [Lt_047B], -2147483648
mov dword ptr [Lt_047C], -1
.Lt_02E7:
push dword ptr [ebp+12]
call HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call HLOADIDX
add esp, 4
push dword ptr [ebp+20]
call HLOADIDX
add esp, 4
mov dword ptr [Lt_047D], 0
cmp dword ptr [ebp+20], 0
jne .Lt_02EE
cmp dword ptr [Lt_0479], 0
jne .Lt_02F0
cmp dword ptr [Lt_0477], 0
je .Lt_02F2
cmp dword ptr [Lt_0476], 1
je .Lt_02F4
mov dword ptr [Lt_047D], -1
.Lt_02F4:
.Lt_02F3:
.Lt_02F2:
.Lt_02F1:
.Lt_02F0:
.Lt_02EF:
.Lt_02EE:
.Lt_02ED:
mov eax, dword ptr [Lt_0477]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [Lt_047D]
je .Lt_02F6
mov eax, dword ptr [Lt_0478]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0478]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_02F8
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_0481], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [Lt_0481]
mov eax, dword ptr [Lt_0479]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0479]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_0478], 8
.Lt_02F8:
.Lt_02F7:
mov ebx, dword ptr [Lt_0478]
and ebx, 480
je .Lt_02F9
mov dword ptr [ebp-4], 24
jmp .Lt_0471
.Lt_02F9:
mov ebx, dword ptr [Lt_0478]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_0471:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [Lt_0479]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_0479]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [Lt_0477], 4
.Lt_02F6:
.Lt_02F5:
mov dword ptr [Lt_047D], 0
cmp dword ptr [ebp+20], 0
setne al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp+20]
cmp ebx, dword ptr [ebp+12]
sete cl
shr ecx, 1
sbb ecx, ecx
and eax, ecx
je .Lt_02FC
mov dword ptr [Lt_047D], -1
jmp .Lt_02FB
.Lt_02FC:
cmp dword ptr [Lt_0476], 1
jne .Lt_02FD
mov dword ptr [Lt_047D], -1
jmp .Lt_02FB
.Lt_02FD:
cmp dword ptr [Lt_0474], 0
jne .Lt_02FE
mov dword ptr [Lt_047D], -1
jmp .Lt_02FB
.Lt_02FE:
mov ecx, dword ptr [Lt_0474]
cmp ecx, 5
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [Lt_0477]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_02FF
mov dword ptr [Lt_047D], -1
jmp .Lt_02FB
.Lt_02FF:
cmp dword ptr [Lt_0477], 4
je .Lt_0300
cmp dword ptr [Lt_0477], 0
je .Lt_0302
mov dword ptr [Lt_047D], -1
.Lt_0302:
.Lt_0301:
jmp .Lt_02FB
.Lt_0300:
cmp dword ptr [Lt_0474], 5
jne .Lt_0303
mov dword ptr [Lt_047D], -1
.Lt_0303:
.Lt_02FB:
mov eax, dword ptr [Lt_0474]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [Lt_047D]
je .Lt_0305
mov eax, dword ptr [Lt_0475]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [Lt_0475]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0307
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+52]
mov dword ptr [Lt_0481], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [Lt_0481]
mov eax, dword ptr [Lt_0476]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0476]
mov ecx, dword ptr [REGTB+eax*4]
call dword ptr [ecx]
add esp, 16
mov dword ptr [Lt_0475], 8
.Lt_0307:
.Lt_0306:
mov ecx, dword ptr [Lt_0475]
and ecx, 480
je .Lt_0308
mov dword ptr [ebp-4], 24
jmp .Lt_0472
.Lt_0308:
mov ecx, dword ptr [Lt_0475]
and ecx, 31
mov dword ptr [ebp-4], ecx
.Lt_0472:
mov ecx, dword ptr [ebp-4]
imul ecx, 28
push dword ptr [SYMB_DTYPETB+ecx+4]
push 0
push dword ptr [ebp+12]
mov ecx, dword ptr [Lt_0476]
push dword ptr [REGTB+ecx*4]
mov ecx, dword ptr [Lt_0476]
mov eax, dword ptr [REGTB+ecx*4]
call dword ptr [eax]
add esp, 16
.Lt_0305:
.Lt_0304:
cmp dword ptr [ebp+20], 0
je .Lt_030B
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
je .Lt_030D
mov eax, dword ptr [Lt_047B]
and eax, 480
je .Lt_030E
mov dword ptr [ebp-4], 24
jmp .Lt_0473
.Lt_030E:
mov eax, dword ptr [Lt_047B]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0473:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [Lt_047C]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_047C]
mov ecx, dword ptr [REGTB+eax*4]
call dword ptr [ecx+4]
add esp, 16
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+12], eax
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 4
.Lt_030D:
.Lt_030C:
.Lt_030B:
.Lt_030A:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0311
.Lt_0313:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call EMITEQ
add esp, 16
jmp .Lt_0310
.Lt_0314:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call EMITNE
add esp, 16
jmp .Lt_0310
.Lt_0315:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call EMITGT
add esp, 16
jmp .Lt_0310
.Lt_0316:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call EMITLT
add esp, 16
jmp .Lt_0310
.Lt_0317:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call EMITLE
add esp, 16
jmp .Lt_0310
.Lt_0318:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call EMITGE
add esp, 16
jmp .Lt_0310
.Lt_0311:
mov eax, dword ptr [ebp-4]
add eax, 4294967251
cmp eax, 5
ja .Lt_0310
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_0319+eax*4-180]
.LT_0319:
.int .Lt_0313
.int .Lt_0315
.int .Lt_0316
.int .Lt_0314
.int .Lt_0318
.int .Lt_0317
.Lt_0310:
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 8
cmp dword ptr [ebp+20], 0
je .Lt_031B
push 0
push dword ptr [ebp+20]
call HFREEREG
add esp, 8
.Lt_031B:
.Lt_031A:
.Lt_02DA:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_0489,12
.balign 4
	.lcomm	Lt_0474,4
.balign 4
	.lcomm	Lt_0475,4
.balign 4
	.lcomm	Lt_0476,4
.balign 4
	.lcomm	Lt_0477,4
.balign 4
	.lcomm	Lt_0478,4
.balign 4
	.lcomm	Lt_0479,4
.balign 4
	.lcomm	Lt_047A,4
.balign 4
	.lcomm	Lt_047B,4
.balign 4
	.lcomm	Lt_047C,4
.balign 4
	.lcomm	Lt_0481,4
.balign 4
	.lcomm	Lt_047D,4

.section .text
.balign 16
HSPILLREGS:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_031C:
mov dword ptr [ebp-16], 0
.Lt_0321:
mov eax, dword ptr [ebp-16]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+28]
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0322:
cmp dword ptr [ebp-12], -1
je .Lt_0323
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-16]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+16]
add esp, 8
test eax, eax
jne .Lt_0325
lea eax, [ebp-8]
push eax
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-16]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+36]
add esp, 12
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call dword ptr [IR+268]
add esp, 8
.Lt_0325:
.Lt_0324:
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-16]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+32]
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_0322
.Lt_0323:
.Lt_031F:
inc dword ptr [ebp-16]
.Lt_031E:
cmp dword ptr [ebp-16], 1
jle .Lt_0321
.Lt_0320:
.Lt_031D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFLUSHSTORE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0326:
cmp dword ptr [ebp+8], 87
jne .Lt_0329
call HSPILLREGS
jmp .Lt_0327
.Lt_0329:
.Lt_0328:
cmp dword ptr [ebp+12], 0
je .Lt_032B
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_048D], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_032C
mov dword ptr [ebp-4], 24
jmp .Lt_048A
.Lt_032C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_048A:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_048E], ebx
cmp dword ptr [Lt_048E], 24
jne .Lt_032F
mov dword ptr [Lt_048E], 12
.Lt_032F:
.Lt_032E:
mov ebx, dword ptr [Lt_048E]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_048F], eax
jmp .Lt_032A
.Lt_032B:
mov dword ptr [Lt_048D], -1
mov dword ptr [Lt_048E], -2147483648
mov dword ptr [Lt_048F], -1
.Lt_032A:
cmp dword ptr [ebp+16], 0
je .Lt_0331
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_0490], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0332
mov dword ptr [ebp-4], 24
jmp .Lt_048B
.Lt_0332:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_048B:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_0491], ebx
cmp dword ptr [Lt_0491], 24
jne .Lt_0335
mov dword ptr [Lt_0491], 12
.Lt_0335:
.Lt_0334:
mov ebx, dword ptr [Lt_0491]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_0492], eax
jmp .Lt_0330
.Lt_0331:
mov dword ptr [Lt_0490], -1
mov dword ptr [Lt_0491], -2147483648
mov dword ptr [Lt_0492], -1
.Lt_0330:
push dword ptr [ebp+12]
call HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call HLOADIDX
add esp, 4
mov eax, dword ptr [Lt_0490]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_0490]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [Lt_048F]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .Lt_0337
mov ebx, dword ptr [Lt_0491]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [Lt_0491]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0339
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+52]
mov dword ptr [Lt_0498], ebx
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [Lt_0498]
mov ebx, dword ptr [Lt_0492]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_0492]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [Lt_0491], 8
.Lt_0339:
.Lt_0338:
mov eax, dword ptr [Lt_0491]
and eax, 480
je .Lt_033A
mov dword ptr [ebp-4], 24
jmp .Lt_048C
.Lt_033A:
mov eax, dword ptr [Lt_0491]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_048C:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [Lt_0492]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_0492]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.Lt_0337:
.Lt_0336:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITSTORE
add esp, 8
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 8
.Lt_0327:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_048D,4
.balign 4
	.lcomm	Lt_048E,4
.balign 4
	.lcomm	Lt_048F,4
.balign 4
	.lcomm	Lt_0490,4
.balign 4
	.lcomm	Lt_0491,4
.balign 4
	.lcomm	Lt_0492,4
.balign 4
	.lcomm	Lt_0498,4

.section .text
.balign 16
HFLUSHLOAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_033C:
cmp dword ptr [ebp+12], 0
je .Lt_033F
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_049C], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0340
mov dword ptr [ebp-4], 24
jmp .Lt_0499
.Lt_0340:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_0499:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_049D], ebx
cmp dword ptr [Lt_049D], 24
jne .Lt_0343
mov dword ptr [Lt_049D], 12
.Lt_0343:
.Lt_0342:
mov ebx, dword ptr [Lt_049D]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_049E], eax
jmp .Lt_033E
.Lt_033F:
mov dword ptr [Lt_049C], -1
mov dword ptr [Lt_049D], -2147483648
mov dword ptr [Lt_049E], -1
.Lt_033E:
push dword ptr [ebp+12]
call HLOADIDX
add esp, 4
cmp dword ptr [ebp+8], 85
jne .Lt_0345
.Lt_0346:
mov eax, dword ptr [Lt_049D]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_049D]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0348
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_04A1], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [Lt_04A1]
mov eax, dword ptr [Lt_049E]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_049E]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_049D], 8
.Lt_0348:
.Lt_0347:
mov ebx, dword ptr [Lt_049D]
and ebx, 480
je .Lt_0349
mov dword ptr [ebp-4], 24
jmp .Lt_049A
.Lt_0349:
mov ebx, dword ptr [Lt_049D]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_049A:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [Lt_049E]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_049E]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
jmp .Lt_0344
.Lt_0345:
cmp dword ptr [ebp+8], 86
jne .Lt_034B
.Lt_034C:
cmp dword ptr [Lt_049C], 4
jne .Lt_034E
mov eax, dword ptr [Lt_049D]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_049D]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0350
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_04A1], eax
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [Lt_04A1]
mov eax, dword ptr [Lt_049E]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_049E]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
push dword ptr [SYMB_DTYPETB+228]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [Lt_049E]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_049E]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [Lt_04A4], eax
jmp .Lt_034F
.Lt_0350:
mov eax, dword ptr [Lt_049D]
and eax, 480
je .Lt_0351
mov dword ptr [ebp-4], 24
jmp .Lt_049B
.Lt_0351:
mov eax, dword ptr [Lt_049D]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_049B:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [Lt_049E]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_049E]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [Lt_04A4], eax
.Lt_034F:
jmp .Lt_034D
.Lt_034E:
mov dword ptr [Lt_04A4], -1
.Lt_034D:
push offset Lt_04A5
push offset Lt_04A6
push dword ptr [Lt_049E]
push dword ptr [Lt_049D]
call dword ptr [EMIT+176]
add esp, 16
mov eax, dword ptr [Lt_04A4]
cmp dword ptr [Lt_04A6], eax
je .Lt_0354
mov eax, dword ptr [Lt_049D]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_049D]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0356
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [Lt_04A1], eax
push dword ptr [ebp+16]
push dword ptr [Lt_04A1]
push dword ptr [Lt_04A5]
mov eax, dword ptr [Lt_049E]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_049E]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [Lt_04A1]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [Lt_04A1]
mov dword ptr [eax], 4
.Lt_0356:
.Lt_0355:
push 0
push dword ptr [ebp+16]
push dword ptr [Lt_04A6]
mov eax, dword ptr [Lt_049E]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_049E]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 4
mov eax, dword ptr [AST+40]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+96], 1
je .Lt_0358
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+16], 0
.Lt_0358:
.Lt_0357:
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call EMITLOAD
add esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 8
.Lt_0354:
.Lt_0353:
.Lt_034B:
.Lt_0344:
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 8
.Lt_033D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_049C,4
.balign 4
	.lcomm	Lt_049D,4
.balign 4
	.lcomm	Lt_049E,4
.balign 4
	.lcomm	Lt_04A4,4
.balign 4
	.lcomm	Lt_04A1,4
.balign 4
	.lcomm	Lt_04A6,4
.balign 4
	.lcomm	Lt_04A5,4

.section .text
.balign 16
HFLUSHCONVERT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_0359:
cmp dword ptr [ebp+12], 0
je .Lt_035C
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_04AF], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_035D
mov dword ptr [ebp-4], 24
jmp .Lt_04A9
.Lt_035D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_04A9:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_04B0], ebx
cmp dword ptr [Lt_04B0], 24
jne .Lt_0360
mov dword ptr [Lt_04B0], 12
.Lt_0360:
.Lt_035F:
mov ebx, dword ptr [Lt_04B0]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_04B1], eax
jmp .Lt_035B
.Lt_035C:
mov dword ptr [Lt_04AF], -1
mov dword ptr [Lt_04B0], -2147483648
mov dword ptr [Lt_04B1], -1
.Lt_035B:
cmp dword ptr [ebp+16], 0
je .Lt_0362
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_04B2], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0363
mov dword ptr [ebp-4], 24
jmp .Lt_04AA
.Lt_0363:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_04AA:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_04B3], ebx
cmp dword ptr [Lt_04B3], 24
jne .Lt_0366
mov dword ptr [Lt_04B3], 12
.Lt_0366:
.Lt_0365:
mov ebx, dword ptr [Lt_04B3]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_04B4], eax
jmp .Lt_0361
.Lt_0362:
mov dword ptr [Lt_04B2], -1
mov dword ptr [Lt_04B3], -2147483648
mov dword ptr [Lt_04B4], -1
.Lt_0361:
push dword ptr [ebp+12]
call HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call HLOADIDX
add esp, 4
mov dword ptr [Lt_04B5], 0
mov eax, dword ptr [Lt_04B4]
cmp eax, dword ptr [Lt_04B1]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [Lt_04B2]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0368
cmp dword ptr [Lt_04B4], 1
jne .Lt_036A
mov ebx, dword ptr [IR+276]
and ebx, 1
test ebx, ebx
je .Lt_036C
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+16]
mov dword ptr [eax+16], ecx
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+16], 0
jne .Lt_036E
jmp .Lt_035A
.Lt_036E:
jmp .Lt_036B
.Lt_036C:
mov ecx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+12]
mov dword ptr [eax+12], ebx
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+12], -1
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 4
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+12]
mov ebx, dword ptr [Lt_04B1]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_04B1]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax+20]
add esp, 16
jmp .Lt_035A
.Lt_036B:
.Lt_036A:
.Lt_0369:
push dword ptr [ebp+16]
call dword ptr [IR+260]
add esp, 4
cmp eax, 2147483647
jne .Lt_0370
mov eax, dword ptr [Lt_04B0]
and eax, 480
je .Lt_0371
mov dword ptr [ebp-4], 24
jmp .Lt_04AB
.Lt_0371:
mov eax, dword ptr [Lt_04B0]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_04AB:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .Lt_0376
.Lt_0377:
cmp dword ptr [ebp-8], 8
jne .Lt_0375
.Lt_0376:
jmp .Lt_0373
.Lt_0375:
mov ebx, dword ptr [Lt_04B3]
and ebx, 480
je .Lt_0379
mov dword ptr [ebp-12], 24
jmp .Lt_04AC
.Lt_0379:
mov ebx, dword ptr [Lt_04B3]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_04AC:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 1
je .Lt_037E
.Lt_037F:
cmp dword ptr [ebp-16], 8
jne .Lt_037D
.Lt_037E:
jmp .Lt_037B
.Lt_037D:
mov dword ptr [Lt_04B5], -1
.Lt_0380:
.Lt_037B:
.Lt_0378:
.Lt_0373:
.Lt_0370:
.Lt_036F:
.Lt_0368:
.Lt_0367:
cmp dword ptr [Lt_04B5], 0
je .Lt_0382
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [eax+12]
mov dword ptr [ebx+12], ecx
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx], 4
push 0
push dword ptr [ebp+12]
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+12]
mov ecx, dword ptr [Lt_04B1]
push dword ptr [REGTB+ecx*4]
mov ecx, dword ptr [Lt_04B1]
mov ebx, dword ptr [REGTB+ecx*4]
call dword ptr [ebx+20]
add esp, 16
jmp .Lt_0381
.Lt_0382:
cmp dword ptr [Lt_04B2], 4
jne .Lt_0384
mov ebx, dword ptr [Lt_04B3]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [Lt_04B3]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0386
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+52]
mov dword ptr [Lt_04BA], ebx
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [Lt_04BA]
mov ebx, dword ptr [Lt_04B4]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_04B4]
mov ecx, dword ptr [REGTB+ebx*4]
call dword ptr [ecx]
add esp, 16
mov dword ptr [Lt_04B3], 8
.Lt_0386:
.Lt_0385:
mov ecx, dword ptr [Lt_04B3]
and ecx, 480
je .Lt_0387
mov dword ptr [ebp-8], 24
jmp .Lt_04AD
.Lt_0387:
mov ecx, dword ptr [Lt_04B3]
and ecx, 31
mov dword ptr [ebp-8], ecx
.Lt_04AD:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
push dword ptr [SYMB_DTYPETB+ecx+4]
push 0
push dword ptr [ebp+16]
mov ecx, dword ptr [Lt_04B4]
push dword ptr [REGTB+ecx*4]
mov ecx, dword ptr [Lt_04B4]
mov ebx, dword ptr [REGTB+ecx*4]
call dword ptr [ebx]
add esp, 16
.Lt_0384:
.Lt_0383:
mov ebx, dword ptr [Lt_04B0]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [Lt_04B0]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_038A
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+52]
mov dword ptr [Lt_04BA], ebx
push dword ptr [SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [Lt_04BA]
mov ebx, dword ptr [Lt_04B1]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_04B1]
mov ecx, dword ptr [REGTB+ebx*4]
call dword ptr [ecx+4]
add esp, 16
mov ecx, dword ptr [Lt_04BA]
mov dword ptr [ecx+12], eax
mov eax, dword ptr [Lt_04BA]
mov dword ptr [eax], 4
mov dword ptr [Lt_04B0], 8
.Lt_038A:
.Lt_0389:
mov eax, dword ptr [Lt_04B0]
and eax, 480
je .Lt_038B
mov dword ptr [ebp-4], 24
jmp .Lt_04AE
.Lt_038B:
mov eax, dword ptr [Lt_04B0]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_04AE:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [Lt_04B1]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_04B1]
mov ecx, dword ptr [REGTB+eax*4]
call dword ptr [ecx+4]
add esp, 16
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+12], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 4
.Lt_0381:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITLOAD
add esp, 8
cmp dword ptr [Lt_04B5], 0
jne .Lt_038E
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 8
jmp .Lt_038D
.Lt_038E:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax+12], -1
.Lt_038D:
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 8
.Lt_035A:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_04AF,4
.balign 4
	.lcomm	Lt_04B0,4
.balign 4
	.lcomm	Lt_04B1,4
.balign 4
	.lcomm	Lt_04B2,4
.balign 4
	.lcomm	Lt_04B3,4
.balign 4
	.lcomm	Lt_04B4,4
.balign 4
	.lcomm	Lt_04B5,4
.balign 4
	.lcomm	Lt_04BA,4

.section .text
.balign 16
HFLUSHADDR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_038F:
cmp dword ptr [ebp+12], 0
je .Lt_0392
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_04C1], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0393
mov dword ptr [ebp-4], 24
jmp .Lt_04BD
.Lt_0393:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_04BD:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_04C2], ebx
cmp dword ptr [Lt_04C2], 24
jne .Lt_0396
mov dword ptr [Lt_04C2], 12
.Lt_0396:
.Lt_0395:
mov ebx, dword ptr [Lt_04C2]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_04C3], eax
jmp .Lt_0391
.Lt_0392:
mov dword ptr [Lt_04C1], -1
mov dword ptr [Lt_04C2], -2147483648
mov dword ptr [Lt_04C3], -1
.Lt_0391:
cmp dword ptr [ebp+16], 0
je .Lt_0398
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [Lt_04C4], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0399
mov dword ptr [ebp-4], 24
jmp .Lt_04BE
.Lt_0399:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_04BE:
mov ebx, dword ptr [ebp-4]
mov dword ptr [Lt_04C5], ebx
cmp dword ptr [Lt_04C5], 24
jne .Lt_039C
mov dword ptr [Lt_04C5], 12
.Lt_039C:
.Lt_039B:
mov ebx, dword ptr [Lt_04C5]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [Lt_04C6], eax
jmp .Lt_0397
.Lt_0398:
mov dword ptr [Lt_04C4], -1
mov dword ptr [Lt_04C5], -2147483648
mov dword ptr [Lt_04C6], -1
.Lt_0397:
push dword ptr [ebp+12]
call HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call HLOADIDX
add esp, 4
cmp dword ptr [Lt_04C1], 4
jne .Lt_039E
mov eax, dword ptr [Lt_04C2]
and eax, 480
je .Lt_039F
mov dword ptr [ebp-4], 24
jmp .Lt_04BF
.Lt_039F:
mov eax, dword ptr [Lt_04C2]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_04BF:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [Lt_04C3]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [Lt_04C3]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.Lt_039E:
.Lt_039D:
cmp dword ptr [Lt_04C4], 4
jne .Lt_03A2
mov ebx, dword ptr [Lt_04C5]
and ebx, 480
je .Lt_03A3
mov dword ptr [ebp-4], 24
jmp .Lt_04C0
.Lt_03A3:
mov ebx, dword ptr [Lt_04C5]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_04C0:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [Lt_04C6]
push dword ptr [REGTB+ebx*4]
mov ebx, dword ptr [Lt_04C6]
mov eax, dword ptr [REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.Lt_03A2:
.Lt_03A1:
cmp dword ptr [ebp+8], 22
jne .Lt_03A6
.Lt_03A7:
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call EMITADDROF
add esp, 8
jmp .Lt_03A5
.Lt_03A6:
cmp dword ptr [ebp+8], 76
jne .Lt_03A8
.Lt_03A9:
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call EMITDEREF
add esp, 8
.Lt_03A8:
.Lt_03A5:
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 8
.Lt_0390:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_04C1,4
.balign 4
	.lcomm	Lt_04C2,4
.balign 4
	.lcomm	Lt_04C3,4
.balign 4
	.lcomm	Lt_04C4,4
.balign 4
	.lcomm	Lt_04C5,4
.balign 4
	.lcomm	Lt_04C6,4

.section .text
.balign 16
HFLUSHMEM:
push ebp
mov ebp, esp
sub esp, 4
.Lt_03AA:
push dword ptr [ebp+12]
call HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call HLOADIDX
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_03AD
.Lt_03AF:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITMEMMOVE
add esp, 12
jmp .Lt_03AC
.Lt_03B0:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITMEMSWAP
add esp, 12
jmp .Lt_03AC
.Lt_03B1:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITMEMCLEAR
add esp, 8
jmp .Lt_03AC
.Lt_03B2:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call EMITSTKCLEAR
add esp, 8
jmp .Lt_03AC
.Lt_03AD:
mov eax, dword ptr [ebp-4]
add eax, 4294967191
cmp eax, 3
ja .Lt_03AC
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_03B3+eax*4-420]
.LT_03B3:
.int .Lt_03AF
.int .Lt_03B0
.int .Lt_03B1
.int .Lt_03B2
.Lt_03AC:
push 0
push dword ptr [ebp+12]
call HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call HFREEREG
add esp, 8
.Lt_03AB:
mov esp, ebp
pop ebp
ret
.balign 16
HFLUSHDBG:
push ebp
mov ebp, esp
sub esp, 4
.Lt_03B4:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_03B7
.Lt_03B9:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITDBGLINEBEGIN
add esp, 12
jmp .Lt_03B6
.Lt_03BA:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call EMITDBGLINEEND
add esp, 8
jmp .Lt_03B6
.Lt_03BB:
push dword ptr [ebp+16]
call EMITDBGSCOPEBEGIN
add esp, 4
jmp .Lt_03B6
.Lt_03BC:
push dword ptr [ebp+16]
call EMITDBGSCOPEEND
add esp, 4
jmp .Lt_03B6
.Lt_03B7:
mov eax, dword ptr [ebp-4]
add eax, 4294967183
cmp eax, 3
ja .Lt_03B6
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_03BD+eax*4-452]
.LT_03BD:
.int .Lt_03B9
.int .Lt_03BA
.int .Lt_03BB
.int .Lt_03BC
.Lt_03B6:
.Lt_03B5:
mov esp, ebp
pop ebp
ret
.balign 16
HFLUSHLIT:
push ebp
mov ebp, esp
.Lt_03BE:
cmp dword ptr [ebp+8], 117
jne .Lt_03C1
.Lt_03C2:
push dword ptr [ebp+12]
call EMITCOMMENT
add esp, 4
jmp .Lt_03C0
.Lt_03C1:
cmp dword ptr [ebp+8], 118
jne .Lt_03C3
.Lt_03C4:
push dword ptr [ebp+12]
call EMITASM
add esp, 4
.Lt_03C3:
.Lt_03C0:
cmp dword ptr [ebp+12], 0
je .Lt_03C6
push dword ptr [ebp+12]
call free
add esp, 4
.Lt_03C6:
.Lt_03C5:
.Lt_03BF:
mov esp, ebp
pop ebp
ret
.balign 16
HFREEIDX:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_03C7:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_03CA
jmp .Lt_03C8
.Lt_03CA:
.Lt_03C9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_03CC
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+12], -1
je .Lt_03CE
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call HFREEREG
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+48], 0
.Lt_03CE:
.Lt_03CD:
.Lt_03CC:
.Lt_03CB:
.Lt_03C8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
HFREEREG:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_03CF:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+8], 0
jne .Lt_03D2
jmp .Lt_03D0
.Lt_03D2:
.Lt_03D1:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HFREEIDX
add esp, 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .Lt_03D4
jmp .Lt_03D0
.Lt_03D4:
.Lt_03D3:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], -1
jne .Lt_03D6
jmp .Lt_03D0
.Lt_03D6:
.Lt_03D5:
mov dword ptr [ebp-8], 2147483647
cmp dword ptr [ebp+12], 0
jne .Lt_03D8
push dword ptr [ebp+8]
call dword ptr [IR+260]
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_03D8:
.Lt_03D7:
cmp dword ptr [ebp-8], 2147483647
jne .Lt_03DA
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
je .Lt_03DC
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+12], -1
je .Lt_03DE
push -1
push dword ptr [ebp-12]
call HFREEREG
add esp, 8
.Lt_03DE:
.Lt_03DD:
.Lt_03DC:
.Lt_03DB:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_03DF
mov dword ptr [ebp-16], 24
jmp .Lt_04C7
.Lt_03DF:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_04C7:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [SYMB_DTYPETB+ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-4]
push dword ptr [REGTB+eax*4]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [REGTB+eax*4]
call dword ptr [ebx+12]
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], -1
.Lt_03DA:
.Lt_03D9:
.Lt_03D0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_GETDISTANCE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_03E1:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], 0
jne .Lt_03E4
mov dword ptr [ebp-4], 2147483647
jmp .Lt_03E2
.Lt_03E4:
.Lt_03E3:
push dword ptr [CTX+60]
call FLISTGETNEXT
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_03E6
mov dword ptr [ebp-4], 2147483647
jmp .Lt_03E2
.Lt_03E6:
.Lt_03E5:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [ebx]
sub ecx, dword ptr [eax]
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-16], 0
jge .Lt_03E8
mov dword ptr [ebp-4], 2147483647
jmp .Lt_03E7
.Lt_03E8:
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ecx
.Lt_03E7:
.Lt_03E2:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_LOADVR:
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_03E9:
lea eax, [ebp-68]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 17
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+12]
cmp dword ptr [eax], 4
je .Lt_03EC
cmp dword ptr [ebp+16], 0
jne .Lt_03EE
mov dword ptr [ebp-68], 4
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
mov dword ptr [ebp-64], ebx
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebp-56], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-16], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+16]
mov dword ptr [ebp-52], ebx
push dword ptr [ebp+12]
lea ebx, [ebp-68]
push ebx
call EMITLOAD
add esp, 8
.Lt_03EE:
.Lt_03ED:
push -1
push dword ptr [ebp+12]
call HFREEIDX
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 4
.Lt_03EC:
.Lt_03EB:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ENV+116]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+16], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_03F0
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+16], 1
.Lt_03F0:
.Lt_03EF:
.Lt_03EA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_STOREVR:
push ebp
mov ebp, esp
sub esp, 144
push ebx
push esi
.Lt_03F1:
cmp dword ptr [ebp+12], 0
je .Lt_03F4
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+8], eax
.Lt_03F4:
.Lt_03F3:
lea eax, [ebp-68]
push edi
mov edi, eax
mov esi, dword ptr [ebp+8]
mov ecx, 17
rep movsd
pop edi
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+4]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_03F6
lea ecx, [ebp-136]
mov ebx, dword ptr [ebp+8]
push ecx
push edi
mov edi, ecx
mov esi, dword ptr [ebx+52]
mov ecx, 17
rep movsd
pop edi
pop ecx
lea ebx, [ebp-136]
mov dword ptr [ebp-16], ebx
.Lt_03F6:
.Lt_03F5:
push dword ptr [ebp+8]
call dword ptr [IR+260]
add esp, 4
cmp eax, 2147483647
je .Lt_03F8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call SYMBADDANDALLOCATETEMPVAR
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+32], eax
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+32]
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [ebx+48]
mov ecx, dword ptr [ebx+52]
mov dword ptr [eax+36], esi
mov dword ptr [eax+40], ecx
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+12], -1
mov esi, dword ptr [ebp+8]
mov ecx, dword ptr [esi+4]
cmp ecx, 13
sete cl
shr ecx, 1
sbb ecx, ecx
mov esi, dword ptr [ebp+8]
mov eax, dword ptr [esi+4]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ecx, eax
je .Lt_03FA
mov eax, dword ptr [ebp+8]
mov ecx, dword ptr [eax+52]
mov dword ptr [ecx+12], -1
mov ecx, dword ptr [ebp+8]
mov eax, dword ptr [ecx+52]
mov dword ptr [eax], 1
mov eax, dword ptr [ebp+8]
mov esi, dword ptr [eax+36]
mov ecx, dword ptr [eax+40]
add esi, 4
adc ecx, 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebx+36], esi
mov dword ptr [ebx+40], ecx
.Lt_03FA:
.Lt_03F9:
cmp dword ptr [ENV+116], 1
jl .Lt_03FC
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+16], 1
.Lt_03FC:
.Lt_03FB:
lea esi, [ebp-68]
push esi
push dword ptr [ebp+8]
call EMITSTORE
add esp, 8
.Lt_03F8:
.Lt_03F7:
mov esi, dword ptr [ebp-64]
cmp esi, 13
sete dl
mov esi, edx
shr esi, 1
sbb esi, esi
mov ecx, dword ptr [ebp-64]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or esi, ecx
je .Lt_03FE
push dword ptr [ebp-124]
push dword ptr [REGTB]
mov ecx, dword ptr [REGTB]
call dword ptr [ecx+12]
add esp, 8
.Lt_03FE:
.Lt_03FD:
mov ecx, dword ptr [ebp-64]
and ecx, 480
je .Lt_03FF
mov dword ptr [ebp-144], 24
jmp .Lt_04CA
.Lt_03FF:
mov ecx, dword ptr [ebp-64]
and ecx, 31
mov dword ptr [ebp-144], ecx
.Lt_04CA:
mov ecx, dword ptr [ebp-144]
imul ecx, 28
mov esi, dword ptr [SYMB_DTYPETB+ecx]
mov dword ptr [ebp-140], esi
push dword ptr [ebp-56]
mov esi, dword ptr [ebp-140]
push dword ptr [REGTB+esi*4]
mov esi, dword ptr [ebp-140]
mov ecx, dword ptr [REGTB+esi*4]
call dword ptr [ecx+12]
add esp, 8
.Lt_03F2:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_XCHGTOS:
push ebp
mov ebp, esp
.Lt_0401:
mov dword ptr [Lt_04D1], 4
mov dword ptr [Lt_04D1+4], 16
mov eax, dword ptr [ebp+8]
mov dword ptr [Lt_04D1+12], eax
push offset Lt_04D1
call EMITXCHGTOS
add esp, 4
.Lt_0402:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	Lt_04D1,68

.section .data
.balign 4

.globl IRTAC_VTBL
IRTAC_VTBL:
.int _INIT
.int _END
.int _EMITBEGIN
.int _EMITEND
.int _GETOPTIONVALUE
.long 0
.int _PROCBEGIN
.int _PROCEND
.int _PROCALLOCARG
.int _PROCALLOCLOCAL
.int _PROCGETFRAMEREGNAME
.int _SCOPEBEGIN
.int _SCOPEEND
.int _PROCALLOCSTATICVARS
.int _EMITCONVERT
.int _EMITLABEL
.int _EMITLABELNF
.int _EMITRETURN
.int _EMITPROCBEGIN
.int _EMITPROCEND
.int _EMITPUSHARG
.int _EMITASMLINE
.int _EMITCOMMENT
.int _EMITBOP
.int _EMITUOP
.int _EMITSTORE
.int _EMITSPILLREGS
.int _EMITLOAD
.int _EMITLOADRES
.int _EMITSTACK
.int _EMITADDR
.int _EMITCALL
.int _EMITCALLPTR
.int _EMITSTACKALIGN
.int _EMITJUMPPTR
.int _EMITBRANCH
.int _EMITJMPTB
.int _EMITMEM
.int _EMITMACRO
.int _EMITSCOPEBEGIN
.int _EMITSCOPEEND
.int _EMITDECL
.int _EMITDBG
.int _EMITVARINIBEGIN
.int _EMITVARINIEND
.int _EMITVARINII
.int _EMITVARINIF
.int _EMITVARINIOFS
.int _EMITVARINISTR
.int _EMITVARINIWSTR
.int _EMITVARINIPAD
.int _EMITVARINISCOPEBEGIN
.int _EMITVARINISCOPEEND
.int _EMITFBCTINFBEGIN
.int _EMITFBCTINFSTRING
.int _EMITFBCTINFEND
.int _ALLOCVREG
.int _ALLOCVRIMM
.int _ALLOCVRIMMF
.int _ALLOCVRVAR
.int _ALLOCVRIDX
.int _ALLOCVRPTR
.int _ALLOCVROFS
.int _SETVREGDATATYPE
.int _GETDISTANCE
.int _LOADVR
.int _STOREVR
.int _XCHGTOS

.section .bss
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48
.balign 4
	.lcomm	Lt_0071,36
.balign 4
	.lcomm	CTX,120
.balign 4
	.lcomm	REGTB,8

.section .data
.balign 4
Lt_010F:	.ascii	"+\0"

.section .ctors
.int fb_ctor__irztac
