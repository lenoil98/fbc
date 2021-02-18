	.intel_syntax noprefix

.section .text
.balign 16
_fb_ctor__irztac:
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
__INIT:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0074:
mov dword ptr [_CTX+60], 0
mov dword ptr [_CTX+56], 0
push 128
push 2048
lea eax, [_CTX]
push eax
call _FLISTINIT
add esp, 12
push 68
push 6144
lea eax, [_CTX+64]
push eax
call _FLISTINIT
add esp, 12
call _EMITINIT
mov dword ptr [ebp-4], 0
.Lt_0079:
push dword ptr [ebp-4]
call _EMITGETREGCLASS
add esp, 4
mov ebx, dword ptr [ebp-4]
mov dword ptr [_REGTB+ebx*4], eax
.Lt_0077:
inc dword ptr [ebp-4]
.Lt_0076:
cmp dword ptr [ebp-4], 1
jle .Lt_0079
.Lt_0078:
.Lt_0075:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__END:
.Lt_007A:
call _EMITEND
lea eax, [_CTX+64]
push eax
call _FLISTEND
add esp, 4
lea eax, [_CTX]
push eax
call _FLISTEND
add esp, 4
mov dword ptr [_CTX+60], 0
mov dword ptr [_CTX+56], 0
.Lt_007B:
ret
.balign 16
__EMITBEGIN:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_007C:
call dword ptr [_EMIT+160]
mov dword ptr [ebp-4], eax
.Lt_007D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__EMITEND:
.Lt_007E:
call dword ptr [_EMIT+164]
.Lt_007F:
ret
.balign 16
__GETOPTIONVALUE:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0080:
push dword ptr [ebp+8]
call dword ptr [_EMIT+156]
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0081:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADIDX:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0082:
cmp dword ptr [ebp+8], 0
jne .Lt_0085
jmp .Lt_0083
.Lt_0085:
.Lt_0084:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 2
je .Lt_0089
.Lt_008A:
cmp dword ptr [ebp-8], 3
jne .Lt_0088
.Lt_0089:
jmp .Lt_0086
.Lt_0088:
jmp .Lt_0083
.Lt_008B:
.Lt_0086:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+48]
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_008D
jmp .Lt_0083
.Lt_008D:
.Lt_008C:
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 0
jne .Lt_008F
jmp .Lt_0083
.Lt_008F:
.Lt_008E:
push dword ptr [_SYMB_DTYPETB+228]
push 0
push dword ptr [ebp-4]
push dword ptr [_REGTB]
mov eax, dword ptr [_REGTB]
call dword ptr [eax]
add esp, 16
.Lt_0083:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HRELINK:
push ebp
mov ebp, esp
push ebx
.Lt_0090:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+56], 0
jne .Lt_0093
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+56], ebx
jmp .Lt_0092
.Lt_0093:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+60]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
.Lt_0092:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+60], eax
.Lt_0091:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMIT:
push ebp
mov ebp, esp
push ebx
.Lt_0094:
lea eax, [_CTX]
push eax
call _FLISTNEWITEM
add esp, 4
mov dword ptr [_Lt_0404], eax
mov eax, dword ptr [_Lt_0404]
mov ebx, dword ptr [_CTX+56]
mov dword ptr [eax], ebx
mov ebx, dword ptr [_Lt_0404]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [_Lt_0404]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+44], ebx
mov ebx, dword ptr [_Lt_0404]
mov dword ptr [ebx+48], 0
mov ebx, dword ptr [_Lt_0404]
mov dword ptr [ebx+52], 0
cmp dword ptr [ebp+12], 0
je .Lt_0097
mov ebx, dword ptr [_Lt_0404]
lea eax, [ebx+44]
push eax
push dword ptr [ebp+12]
call _HRELINK
add esp, 8
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [_Lt_0404]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+12]
cmp dword ptr [ebx+48], 0
je .Lt_0099
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [_Lt_0404]
mov ecx, dword ptr [ebx+48]
mov dword ptr [eax+56], ecx
mov ecx, dword ptr [_Lt_0404]
mov eax, dword ptr [ebp+12]
mov dword ptr [ecx+60], eax
mov eax, dword ptr [_Lt_0404]
mov dword ptr [eax+64], 0
mov eax, dword ptr [_Lt_0404]
lea ecx, [eax+56]
push ecx
mov ecx, dword ptr [ebp+12]
push dword ptr [ecx+48]
call _HRELINK
add esp, 8
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+48]
mov ecx, dword ptr [_Lt_0404]
mov dword ptr [eax+64], ecx
.Lt_0099:
.Lt_0098:
mov ecx, dword ptr [ebp+12]
cmp dword ptr [ecx+52], 0
je .Lt_009B
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [_Lt_0404]
mov ebx, dword ptr [ecx+52]
mov dword ptr [eax+68], ebx
mov ebx, dword ptr [_Lt_0404]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx+72], eax
mov eax, dword ptr [_Lt_0404]
mov dword ptr [eax+76], 0
mov eax, dword ptr [_Lt_0404]
lea ebx, [eax+68]
push ebx
mov ebx, dword ptr [ebp+12]
push dword ptr [ebx+52]
call _HRELINK
add esp, 8
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov ebx, dword ptr [_Lt_0404]
mov dword ptr [eax+64], ebx
.Lt_009B:
.Lt_009A:
.Lt_0097:
.Lt_0096:
mov ebx, dword ptr [_Lt_0404]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+80], eax
mov eax, dword ptr [_Lt_0404]
mov dword ptr [eax+84], 0
mov eax, dword ptr [_Lt_0404]
mov dword ptr [eax+88], 0
cmp dword ptr [ebp+16], 0
je .Lt_009D
mov eax, dword ptr [_Lt_0404]
lea ebx, [eax+80]
push ebx
push dword ptr [ebp+16]
call _HRELINK
add esp, 8
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [_Lt_0404]
mov dword ptr [ebx+64], eax
mov eax, dword ptr [ebp+16]
cmp dword ptr [eax+48], 0
je .Lt_009F
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [_Lt_0404]
mov ecx, dword ptr [eax+48]
mov dword ptr [ebx+92], ecx
mov ecx, dword ptr [_Lt_0404]
mov ebx, dword ptr [ebp+16]
mov dword ptr [ecx+96], ebx
mov ebx, dword ptr [_Lt_0404]
mov dword ptr [ebx+100], 0
mov ebx, dword ptr [_Lt_0404]
lea ecx, [ebx+92]
push ecx
mov ecx, dword ptr [ebp+16]
push dword ptr [ecx+48]
call _HRELINK
add esp, 8
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+48]
mov ecx, dword ptr [_Lt_0404]
mov dword ptr [ebx+64], ecx
.Lt_009F:
.Lt_009E:
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+52], 0
je .Lt_00A1
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [_Lt_0404]
mov eax, dword ptr [ecx+52]
mov dword ptr [ebx+104], eax
mov eax, dword ptr [_Lt_0404]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax+108], ebx
mov ebx, dword ptr [_Lt_0404]
mov dword ptr [ebx+112], 0
mov ebx, dword ptr [_Lt_0404]
lea eax, [ebx+104]
push eax
mov eax, dword ptr [ebp+16]
push dword ptr [eax+52]
call _HRELINK
add esp, 8
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+52]
mov eax, dword ptr [_Lt_0404]
mov dword ptr [ebx+64], eax
.Lt_00A1:
.Lt_00A0:
.Lt_009D:
.Lt_009C:
mov eax, dword ptr [_Lt_0404]
mov ebx, dword ptr [ebp+20]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [_Lt_0404]
mov dword ptr [ebx+12], 0
mov ebx, dword ptr [_Lt_0404]
mov dword ptr [ebx+16], 0
cmp dword ptr [ebp+20], 0
je .Lt_00A3
mov ebx, dword ptr [_Lt_0404]
lea eax, [ebx+8]
push eax
push dword ptr [ebp+20]
call _HRELINK
add esp, 8
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [_Lt_0404]
mov dword ptr [eax+64], ebx
mov ebx, dword ptr [ebp+20]
cmp dword ptr [ebx+48], 0
je .Lt_00A5
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [_Lt_0404]
mov ecx, dword ptr [ebx+48]
mov dword ptr [eax+20], ecx
mov ecx, dword ptr [_Lt_0404]
mov eax, dword ptr [ebp+20]
mov dword ptr [ecx+24], eax
mov eax, dword ptr [_Lt_0404]
mov dword ptr [eax+28], 0
mov eax, dword ptr [_Lt_0404]
lea ecx, [eax+20]
push ecx
mov ecx, dword ptr [ebp+20]
push dword ptr [ecx+48]
call _HRELINK
add esp, 8
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [ecx+48]
mov ecx, dword ptr [_Lt_0404]
mov dword ptr [eax+64], ecx
.Lt_00A5:
.Lt_00A4:
mov ecx, dword ptr [ebp+20]
cmp dword ptr [ecx+52], 0
je .Lt_00A7
mov ecx, dword ptr [ebp+20]
mov eax, dword ptr [_Lt_0404]
mov ebx, dword ptr [ecx+52]
mov dword ptr [eax+32], ebx
mov ebx, dword ptr [_Lt_0404]
mov eax, dword ptr [ebp+20]
mov dword ptr [ebx+36], eax
mov eax, dword ptr [_Lt_0404]
mov dword ptr [eax+40], 0
mov eax, dword ptr [_Lt_0404]
lea ebx, [eax+32]
push ebx
mov ebx, dword ptr [ebp+20]
push dword ptr [ebx+52]
call _HRELINK
add esp, 8
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+52]
mov ebx, dword ptr [_Lt_0404]
mov dword ptr [eax+64], ebx
.Lt_00A7:
.Lt_00A6:
.Lt_00A3:
.Lt_00A2:
mov ebx, dword ptr [_Lt_0404]
mov eax, dword ptr [ebp+24]
mov dword ptr [ebx+116], eax
mov eax, dword ptr [_Lt_0404]
mov ebx, dword ptr [ebp+28]
mov dword ptr [eax+120], ebx
mov ebx, dword ptr [_Lt_0404]
mov eax, dword ptr [ebp+32]
mov dword ptr [ebx+124], eax
inc dword ptr [_CTX+56]
.Lt_0095:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0404,4

.section .text
.balign 16
__PROCBEGIN:
push ebp
mov ebp, esp
.Lt_00A8:
push dword ptr [ebp+8]
call dword ptr [_EMIT+184]
add esp, 4
.Lt_00A9:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCEND:
push ebp
mov ebp, esp
.Lt_00AA:
push dword ptr [ebp+8]
call dword ptr [_EMIT+188]
add esp, 4
.Lt_00AB:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCARG:
push ebp
mov ebp, esp
.Lt_00AC:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [_EMIT+200]
add esp, 8
.Lt_00AD:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCLOCAL:
push ebp
mov ebp, esp
.Lt_00AE:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [_EMIT+204]
add esp, 8
.Lt_00AF:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCGETFRAMEREGNAME:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_00B0:
call dword ptr [_EMIT+180]
mov dword ptr [ebp-4], eax
.Lt_00B1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__SCOPEBEGIN:
push ebp
mov ebp, esp
.Lt_00B2:
push dword ptr [ebp+8]
call dword ptr [_EMIT+212]
add esp, 4
.Lt_00B3:
mov esp, ebp
pop ebp
ret
.balign 16
__SCOPEEND:
push ebp
mov ebp, esp
.Lt_00B4:
push dword ptr [ebp+8]
call dword ptr [_EMIT+216]
add esp, 4
.Lt_00B5:
mov esp, ebp
pop ebp
ret
.balign 16
__PROCALLOCSTATICVARS:
push ebp
mov ebp, esp
.Lt_00B6:
push dword ptr [ebp+8]
call dword ptr [_EMIT+208]
add esp, 4
.Lt_00B7:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLABEL:
push ebp
mov ebp, esp
.Lt_00B8:
call __FLUSH
push dword ptr [ebp+8]
call _EMITLABEL
add esp, 4
.Lt_00B9:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITRETURN:
push ebp
mov ebp, esp
.Lt_00BA:
call __FLUSH
push dword ptr [ebp+8]
call _EMITRET
add esp, 4
.Lt_00BB:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITPROCBEGIN:
push ebp
mov ebp, esp
push ebx
.Lt_00BC:
call __FLUSH
mov dword ptr [_Lt_0405], 0
.Lt_00C1:
mov eax, dword ptr [_Lt_0405]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0405]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+44]
add esp, 4
.Lt_00BF:
inc dword ptr [_Lt_0405]
.Lt_00BE:
cmp dword ptr [_Lt_0405], 1
jle .Lt_00C1
.Lt_00C0:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [_EMIT+192]
add esp, 8
.Lt_00BD:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0405,4

.section .text
.balign 16
__EMITPROCEND:
push ebp
mov ebp, esp
push ebx
.Lt_00C2:
call __FLUSH
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _SYMBPROCCALCBYTESTOPOP
add esp, 4
mov ebx, eax
push ebx
push dword ptr [ebp+8]
call dword ptr [_EMIT+196]
add esp, 16
.Lt_00C3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSCOPEBEGIN:
push ebp
mov ebp, esp
.Lt_00C4:
call __FLUSH
.Lt_00C5:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSCOPEEND:
push ebp
mov ebp, esp
.Lt_00C6:
call __FLUSH
.Lt_00C7:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITBOP:
push ebp
mov ebp, esp
.Lt_00C8:
push 0
push 0
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMIT
add esp, 28
.Lt_00C9:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITUOP:
push ebp
mov ebp, esp
.Lt_00CA:
push 0
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMIT
add esp, 28
.Lt_00CB:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCONVERT:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_00CC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_00CE
mov dword ptr [ebp-4], 24
jmp .Lt_0406
.Lt_00CE:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0406:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 0
jne .Lt_00D2
.Lt_00D3:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 511
cmp eax, 1
jne .Lt_00D5
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 84
call __EMIT
add esp, 28
jmp .Lt_00D4
.Lt_00D5:
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 82
call __EMIT
add esp, 28
.Lt_00D4:
jmp .Lt_00D0
.Lt_00D2:
cmp dword ptr [ebp-8], 1
jne .Lt_00D6
.Lt_00D7:
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 83
call __EMIT
add esp, 28
.Lt_00D6:
.Lt_00D0:
.Lt_00CD:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTORE:
push ebp
mov ebp, esp
.Lt_00D8:
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push 0
call __EMIT
add esp, 28
.Lt_00D9:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSPILLREGS:
.Lt_00DA:
push 0
push 0
push 0
push 0
push 0
push 0
push 87
call __EMIT
add esp, 28
.Lt_00DB:
ret
.balign 16
__EMITLOAD:
push ebp
mov ebp, esp
.Lt_00DC:
push 0
push 0
push 0
push 0
push 0
push dword ptr [ebp+8]
push 85
call __EMIT
add esp, 28
.Lt_00DD:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLOADRES:
push ebp
mov ebp, esp
.Lt_00DE:
push 0
push 0
push 0
push dword ptr [ebp+12]
push 0
push dword ptr [ebp+8]
push 86
call __EMIT
add esp, 28
.Lt_00DF:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTACK:
push ebp
mov ebp, esp
.Lt_00E0:
push 0
push 0
push 0
push 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMIT
add esp, 28
.Lt_00E1:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITPUSHARG:
push ebp
mov ebp, esp
.Lt_00E2:
cmp dword ptr [ebp+20], 0
jne .Lt_00E5
cmp dword ptr [ebp+16], 0
jne .Lt_00E5
.Lt_0407:
push dword ptr [ebp+12]
push 88
call __EMITSTACK
add esp, 8
jmp .Lt_00E4
.Lt_00E5:
push 0
mov eax, dword ptr [ebp+16]
push eax
push 0
push 0
push 0
push dword ptr [ebp+12]
push 90
call __EMIT
add esp, 28
.Lt_00E4:
.Lt_00E3:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITADDR:
push ebp
mov ebp, esp
.Lt_00E6:
push 0
push 0
push 0
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMIT
add esp, 28
.Lt_00E7:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITLABELNF:
push ebp
mov ebp, esp
.Lt_00E8:
push 0
push 0
push dword ptr [ebp+8]
push 0
push 0
push 0
push 100
call __EMIT
add esp, 28
.Lt_00E9:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCALL:
push ebp
mov ebp, esp
.Lt_00EA:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push 0
push 0
push 102
call __EMIT
add esp, 28
.Lt_00EB:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCALLPTR:
push ebp
mov ebp, esp
.Lt_00EC:
push 0
push dword ptr [ebp+20]
push dword ptr [ebp+8]
push dword ptr [ebp+16]
push 0
push dword ptr [ebp+12]
push 103
call __EMIT
add esp, 28
.Lt_00ED:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITSTACKALIGN:
push ebp
mov ebp, esp
.Lt_00EE:
push 0
push dword ptr [ebp+8]
push 0
push 0
push 0
push 0
push 91
call __EMIT
add esp, 28
.Lt_00EF:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITJUMPPTR:
push ebp
mov ebp, esp
.Lt_00F0:
push 0
push 0
push 0
push 0
push 0
push dword ptr [ebp+8]
push 104
call __EMIT
add esp, 28
.Lt_00F1:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITBRANCH:
push ebp
mov ebp, esp
.Lt_00F2:
push 0
push 0
push dword ptr [ebp+12]
push 0
push 0
push 0
push dword ptr [ebp+8]
call __EMIT
add esp, 28
.Lt_00F3:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITJMPTB:
push ebp
mov ebp, esp
.Lt_00F4:
call __FLUSH
push dword ptr [ebp+44]
push dword ptr [ebp+40]
push dword ptr [ebp+36]
push dword ptr [ebp+32]
push dword ptr [ebp+28]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITJMPTB
add esp, 36
.Lt_00F5:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITMEM:
push ebp
mov ebp, esp
.Lt_00F6:
push 0
mov eax, dword ptr [ebp+20]
push eax
push 0
push 0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call __EMIT
add esp, 28
.Lt_00F7:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITMACRO:
push ebp
mov ebp, esp
.Lt_00F8:
.Lt_00F9:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITDECL:
push ebp
mov ebp, esp
.Lt_00FA:
.Lt_00FB:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITDBG:
push ebp
mov ebp, esp
.Lt_00FC:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push 0
push 0
push 0
push dword ptr [ebp+8]
call __EMIT
add esp, 28
.Lt_00FD:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITCOMMENT:
push ebp
mov ebp, esp
.Lt_00FE:
push 0
push 0
push dword ptr [ebp+8]
call _ZSTRDUP
add esp, 4
push eax
push 0
push 0
push 0
push 117
call __EMIT
add esp, 28
.Lt_00FF:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITASMLINE:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_0100:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-16], eax
.Lt_0102:
cmp dword ptr [ebp-16], 0
je .Lt_0103
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-20], ebx
cmp dword ptr [ebp-20], 0
jne .Lt_0106
.Lt_0107:
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0104
.Lt_0106:
cmp dword ptr [ebp-20], 1
jne .Lt_0109
.Lt_010A:
push 0
push -1
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [eax+4]
call _SYMBGETMANGLEDNAME
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [eax+4]
mov ecx, dword ptr [ebx+48]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-40], ecx
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_0408
cmp dword ptr [ebp-40], 0
je .Lt_010D
.Lt_0408:
cmp dword ptr [ebp-36], 0
jl .Lt_010F
jg .Lt_0409
cmp dword ptr [ebp-40], 0
jbe .Lt_010F
.Lt_0409:
push 0
push 2
push offset _Lt_0110
push -1
lea ecx, [ebp-12]
push ecx
call _fb_StrConcatAssign
add esp, 20
.Lt_010F:
.Lt_010E:
push 0
push -1
push dword ptr [ebp-36]
push dword ptr [ebp-40]
call _fb_LongintToStr
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_010D:
.Lt_010C:
.Lt_0109:
.Lt_0104:
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [eax+8]
mov dword ptr [ebp-16], ecx
jmp .Lt_0102
.Lt_0103:
push 0
push 0
push dword ptr [ebp-12]
call _ZSTRDUP
add esp, 4
push eax
push 0
push 0
push 0
push 118
call __EMIT
add esp, 28
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0101:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIBEGIN:
push ebp
mov ebp, esp
.Lt_0111:
push dword ptr [ebp+8]
call _EMITVARINIBEGIN
add esp, 4
.Lt_0112:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIEND:
push ebp
mov ebp, esp
.Lt_0113:
.Lt_0114:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINII:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0115:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
push dword ptr [ebp+8]
call _SYMBGETREALTYPE
add esp, 12
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call _EMITVARINII
add esp, 12
.Lt_0116:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIF:
push ebp
mov ebp, esp
sub esp, 8
.Lt_0117:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-8]
push eax
lea eax, [ebp-4]
push eax
push dword ptr [ebp+8]
call _SYMBGETREALTYPE
add esp, 12
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call _EMITVARINIF
add esp, 12
.Lt_0118:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIOFS:
push ebp
mov ebp, esp
.Lt_0119:
mov eax, dword ptr [ebp+16]
push eax
push dword ptr [ebp+12]
call _SYMBGETMANGLEDNAME
add esp, 4
push eax
call _EMITVARINIOFS
add esp, 8
.Lt_011A:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINISTR:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_011B:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+12], 0
jne .Lt_011E
cmp dword ptr [ebp+8], 0
jne .Lt_011E
.Lt_040A:
push 0
push 0
push 2
call _EMITVARINII
add esp, 12
jmp .Lt_011C
.Lt_011E:
.Lt_011D:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .Lt_0120
jg .Lt_040B
cmp dword ptr [ebp+20], ebx
jbe .Lt_0120
.Lt_040B:
push 0
push 1
push 0
push 9
call _ERRREPORTWARN
add esp, 16
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
mov ebx, dword ptr [ebp+8]
push ebx
push dword ptr [ebp+16]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-16]
call _HESCAPE
add esp, 4
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_011F
.Lt_0120:
push dword ptr [ebp+16]
call _HESCAPE
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_011F:
push dword ptr [ebp-4]
call _EMITVARINISTR
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jg .Lt_0123
jl .Lt_040C
cmp dword ptr [ebp+20], ebx
jae .Lt_0123
.Lt_040C:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp+12]
sub eax, dword ptr [ebp+20]
sbb ebx, dword ptr [ebp+24]
mov ecx, eax
push ecx
call _EMITVARINIPAD
add esp, 4
.Lt_0123:
.Lt_0122:
.Lt_011C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIWSTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
.Lt_0124:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
cmp dword ptr [ebp+12], 0
jne .Lt_0127
cmp dword ptr [ebp+8], 0
jne .Lt_0127
.Lt_040D:
push 0
push 0
push dword ptr [_ENV+248]
call _EMITVARINII
add esp, 12
jmp .Lt_0125
.Lt_0127:
.Lt_0126:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jl .Lt_0129
jg .Lt_040E
cmp dword ptr [ebp+20], ebx
jbe .Lt_0129
.Lt_040E:
push 0
push 1
push 0
push 9
call _ERRREPORTWARN
add esp, 16
mov ebx, dword ptr [ebp+8]
push ebx
push dword ptr [ebp+16]
call _fb_WstrLeft
add esp, 8
mov dword ptr [ebp-12], eax
push dword ptr [ebp-12]
call _HESCAPEW
add esp, 4
mov dword ptr [ebp-4], eax
push dword ptr [ebp-12]
call _fb_WstrDelete
add esp, 4
jmp .Lt_0128
.Lt_0129:
push dword ptr [ebp+16]
call _HESCAPEW
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0128:
mov eax, dword ptr [_SYMB_DTYPETB+200]
mov dword ptr [ebp-8], eax
push dword ptr [ebp-4]
call _EMITVARINIWSTR
add esp, 4
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+24], eax
jg .Lt_012C
jl .Lt_040F
cmp dword ptr [ebp+20], ebx
jae .Lt_012C
.Lt_040F:
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
call _EMITVARINIPAD
add esp, 4
.Lt_012C:
.Lt_012B:
.Lt_0125:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINIPAD:
push ebp
mov ebp, esp
.Lt_012D:
mov eax, dword ptr [ebp+8]
push eax
call _EMITVARINIPAD
add esp, 4
.Lt_012E:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINISCOPEBEGIN:
push ebp
mov ebp, esp
.Lt_012F:
.Lt_0130:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITVARINISCOPEEND:
.Lt_0131:
.Lt_0132:
ret
.balign 16
__EMITFBCTINFBEGIN:
.Lt_0133:
call _EMITFBCTINFBEGIN
.Lt_0134:
ret
.balign 16
__EMITFBCTINFSTRING:
push ebp
mov ebp, esp
.Lt_0135:
push dword ptr [ebp+8]
call _EMITFBCTINFSTRING
add esp, 4
.Lt_0136:
mov esp, ebp
pop ebp
ret
.balign 16
__EMITFBCTINFEND:
.Lt_0137:
call _EMITFBCTINFEND
.Lt_0138:
ret
.balign 16
_HNEWVR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0139:
lea eax, [_CTX+64]
push eax
call _FLISTNEWITEM
add esp, 4
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+16]
mov dword ptr [eax], ebx
mov ebx, dword ptr [ebp+8]
and ebx, 480
je .Lt_013B
mov dword ptr [ebp-12], 24
jmp .Lt_0410
.Lt_013B:
mov ebx, dword ptr [ebp+8]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_0410:
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebp-12]
mov dword ptr [ebx+4], eax
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+8], ebx
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+12], -1
cmp dword ptr [_ENV+116], 0
jne .Lt_013E
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 0
jmp .Lt_013D
.Lt_013E:
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+16], 1
.Lt_013D:
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
.Lt_013A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ALLOCVREG:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_013F:
and dword ptr [ebp+8], 511
push 4
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNEWVR
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
je .Lt_0142
push 4
push 0
push 8
call _HNEWVR
add esp, 12
mov ebx, dword ptr [ebp-8]
mov dword ptr [ebx+52], eax
.Lt_0142:
.Lt_0141:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0140:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ALLOCVRIMM:
push ebp
mov ebp, esp
sub esp, 8
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0143:
and dword ptr [ebp+8], 511
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNEWVR
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
je .Lt_0146
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
call _HNEWVR
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
jmp .Lt_0145
.Lt_0146:
mov esi, dword ptr [ebp-8]
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [ebp+20]
mov dword ptr [esi+24], eax
mov dword ptr [esi+28], ecx
.Lt_0145:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0144:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ALLOCVRIMMF:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_0147:
and dword ptr [ebp+8], 511
mov eax, dword ptr [_IR+276]
and eax, 2
test eax, eax
je .Lt_014A
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNEWVR
add esp, 12
mov dword ptr [ebp-8], eax
mov eax, dword ptr [ebp-8]
push dword ptr [ebp+16]
push dword ptr [ebp+20]
pop dword ptr [eax+28]
pop dword ptr [eax+24]
jmp .Lt_0149
.Lt_014A:
push dword ptr [ebp+8]
push dword ptr [ebp+20]
push dword ptr [ebp+16]
call _SYMBALLOCFLOATCONST
add esp, 12
mov dword ptr [ebp-12], eax
mov eax, dword ptr [ebp-12]
push dword ptr [eax+52]
push dword ptr [eax+48]
push dword ptr [ebp-12]
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call dword ptr [_IR+240]
add esp, 20
mov dword ptr [ebp-8], eax
.Lt_0149:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0148:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
__ALLOCVRVAR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_014B:
and dword ptr [ebp+8], 511
push 1
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNEWVR
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
je .Lt_014E
push 1
push 0
push 8
call _HNEWVR
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
.Lt_014E:
.Lt_014D:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_014C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ALLOCVRIDX:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_014F:
and dword ptr [ebp+8], 511
push 2
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNEWVR
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
je .Lt_0152
push 2
push 0
push 8
call _HNEWVR
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
.Lt_0152:
.Lt_0151:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0150:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ALLOCVRPTR:
push ebp
mov ebp, esp
sub esp, 12
push ebx
mov dword ptr [ebp-4], 0
.Lt_0153:
and dword ptr [ebp+8], 511
push 3
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNEWVR
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
je .Lt_0156
push 3
push 0
push 8
call _HNEWVR
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
.Lt_0156:
.Lt_0155:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0154:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ALLOCVROFS:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0157:
and dword ptr [ebp+8], 511
push 5
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HNEWVR
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
.Lt_0158:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__SETVREGDATATYPE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0159:
and dword ptr [ebp+12], 511
cmp dword ptr [ebp+8], 0
je .Lt_015C
mov eax, dword ptr [ebp+12]
and eax, 480
je .Lt_015D
mov dword ptr [ebp-4], 24
jmp .Lt_041B
.Lt_015D:
mov eax, dword ptr [ebp+12]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_041B:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp+16]
mov dword ptr [ebx+8], eax
.Lt_015C:
.Lt_015B:
.Lt_015A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HRENAME:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_015F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+56]
mov dword ptr [ebp-4], ebx
.Lt_0161:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+4], 0
je .Lt_0165
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp+8]
cmp dword ptr [eax+48], ebx
jne .Lt_0167
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+48], ebx
jmp .Lt_0166
.Lt_0167:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
mov ebx, dword ptr [ebp+12]
mov dword ptr [eax+52], ebx
.Lt_0166:
.Lt_0165:
.Lt_0164:
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebp+12]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+8]
mov dword ptr [ebp-4], ebx
.Lt_0163:
cmp dword ptr [ebp-4], 0
jne .Lt_0161
.Lt_0162:
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
.Lt_0160:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HREUSE:
push ebp
mov ebp, esp
sub esp, 76
push ebx
.Lt_0168:
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
je .Lt_016B
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
mov ebx, dword ptr [ebp-4]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_016C
mov dword ptr [ebp-56], 24
jmp .Lt_041C
.Lt_016C:
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-56], ebx
.Lt_041C:
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebp-16], ebx
cmp dword ptr [ebp-16], 24
jne .Lt_016F
mov dword ptr [ebp-16], 12
.Lt_016F:
.Lt_016E:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-20], eax
jmp .Lt_016A
.Lt_016B:
mov dword ptr [ebp-24], -1
mov dword ptr [ebp-16], -2147483648
mov dword ptr [ebp-20], -1
.Lt_016A:
cmp dword ptr [ebp-8], 0
je .Lt_0171
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-36], ebx
mov ebx, dword ptr [ebp-8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0172
mov dword ptr [ebp-56], 24
jmp .Lt_041D
.Lt_0172:
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-56], ebx
.Lt_041D:
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebp-28], ebx
cmp dword ptr [ebp-28], 24
jne .Lt_0175
mov dword ptr [ebp-28], 12
.Lt_0175:
.Lt_0174:
mov ebx, dword ptr [ebp-28]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-32], eax
jmp .Lt_0170
.Lt_0171:
mov dword ptr [ebp-36], -1
mov dword ptr [ebp-28], -2147483648
mov dword ptr [ebp-32], -1
.Lt_0170:
cmp dword ptr [ebp-12], 0
je .Lt_0177
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-48], ebx
mov ebx, dword ptr [ebp-12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0178
mov dword ptr [ebp-56], 24
jmp .Lt_041E
.Lt_0178:
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-56], ebx
.Lt_041E:
mov ebx, dword ptr [ebp-56]
mov dword ptr [ebp-40], ebx
cmp dword ptr [ebp-40], 24
jne .Lt_017B
mov dword ptr [ebp-40], 12
.Lt_017B:
.Lt_017A:
mov ebx, dword ptr [ebp-40]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-44], eax
jmp .Lt_0176
.Lt_0177:
mov dword ptr [ebp-48], -1
mov dword ptr [ebp-40], -2147483648
mov dword ptr [ebp-44], -1
.Lt_0176:
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax]
mov dword ptr [ebp-56], ebx
cmp dword ptr [ebp-56], 4
jne .Lt_017E
.Lt_017F:
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebp-12], ebx
je .Lt_0181
mov ebx, dword ptr [ebp-40]
and ebx, 480
je .Lt_0182
mov dword ptr [ebp-60], 24
jmp .Lt_041F
.Lt_0182:
mov ebx, dword ptr [ebp-40]
and ebx, 31
mov dword ptr [ebp-60], ebx
.Lt_041F:
mov ebx, dword ptr [ebp-60]
imul ebx, 28
mov dword ptr [ebp-68], ebx
mov ebx, dword ptr [ebp-16]
and ebx, 480
je .Lt_0184
mov dword ptr [ebp-64], 24
jmp .Lt_0420
.Lt_0184:
mov ebx, dword ptr [ebp-16]
and ebx, 31
mov dword ptr [ebp-64], ebx
.Lt_0420:
mov ebx, dword ptr [ebp-64]
imul ebx, 28
mov eax, dword ptr [ebp-68]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+20]
cmp dword ptr [_SYMB_DTYPETB+eax+20], ecx
jne .Lt_0187
push dword ptr [ebp-4]
call dword ptr [_IR+260]
add esp, 4
cmp eax, 2147483647
jne .Lt_0189
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call _HRENAME
add esp, 8
.Lt_0189:
.Lt_0188:
.Lt_0187:
.Lt_0186:
.Lt_0181:
.Lt_0180:
jmp .Lt_017C
.Lt_017E:
cmp dword ptr [ebp-56], 3
je .Lt_018B
.Lt_018C:
cmp dword ptr [ebp-56], 14
jne .Lt_018A
.Lt_018B:
cmp dword ptr [ebp-12], 0
jne .Lt_018E
jmp .Lt_0169
.Lt_018E:
.Lt_018D:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-20], eax
je .Lt_0190
jmp .Lt_0169
.Lt_0190:
.Lt_018F:
mov dword ptr [ebp-60], 0
mov eax, dword ptr [ebp-4]
cmp dword ptr [ebp-12], eax
je .Lt_0192
mov eax, dword ptr [ebp-40]
and eax, 480
je .Lt_0193
mov dword ptr [ebp-68], 24
jmp .Lt_0422
.Lt_0193:
mov eax, dword ptr [ebp-40]
and eax, 31
mov dword ptr [ebp-68], eax
.Lt_0422:
mov eax, dword ptr [ebp-68]
imul eax, 28
mov dword ptr [ebp-76], eax
mov eax, dword ptr [ebp-16]
and eax, 480
je .Lt_0195
mov dword ptr [ebp-72], 24
jmp .Lt_0423
.Lt_0195:
mov eax, dword ptr [ebp-16]
and eax, 31
mov dword ptr [ebp-72], eax
.Lt_0423:
mov eax, dword ptr [ebp-72]
imul eax, 28
mov ecx, dword ptr [ebp-76]
mov ebx, dword ptr [_SYMB_DTYPETB+eax+20]
cmp dword ptr [_SYMB_DTYPETB+ecx+20], ebx
jne .Lt_0198
push dword ptr [ebp-4]
call dword ptr [_IR+260]
add esp, 4
cmp eax, 2147483647
jne .Lt_019A
mov dword ptr [ebp-60], -1
.Lt_019A:
.Lt_0199:
.Lt_0198:
.Lt_0197:
.Lt_0192:
.Lt_0191:
mov dword ptr [ebp-64], 0
mov eax, dword ptr [ebp-52]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax+4]
and ebx, 2
test ebx, ebx
je .Lt_019C
mov ebx, dword ptr [ebp-8]
cmp dword ptr [ebp-12], ebx
je .Lt_019E
mov ebx, dword ptr [ebp-40]
and ebx, 480
je .Lt_019F
mov dword ptr [ebp-68], 24
jmp .Lt_0425
.Lt_019F:
mov ebx, dword ptr [ebp-40]
and ebx, 31
mov dword ptr [ebp-68], ebx
.Lt_0425:
mov ebx, dword ptr [ebp-68]
imul ebx, 28
mov dword ptr [ebp-76], ebx
mov ebx, dword ptr [ebp-28]
and ebx, 480
je .Lt_01A1
mov dword ptr [ebp-72], 24
jmp .Lt_0426
.Lt_01A1:
mov ebx, dword ptr [ebp-28]
and ebx, 31
mov dword ptr [ebp-72], ebx
.Lt_0426:
mov ebx, dword ptr [ebp-72]
imul ebx, 28
mov eax, dword ptr [ebp-76]
mov ecx, dword ptr [_SYMB_DTYPETB+ebx+20]
cmp dword ptr [_SYMB_DTYPETB+eax+20], ecx
jne .Lt_01A4
cmp dword ptr [ebp-36], 0
je .Lt_01A6
push dword ptr [ebp-8]
call dword ptr [_IR+260]
add esp, 4
cmp eax, 2147483647
jne .Lt_01A8
mov dword ptr [ebp-64], -1
.Lt_01A8:
.Lt_01A7:
.Lt_01A6:
.Lt_01A5:
.Lt_01A4:
.Lt_01A3:
.Lt_019E:
.Lt_019D:
.Lt_019C:
.Lt_019B:
mov eax, dword ptr [ebp-64]
and eax, dword ptr [ebp-60]
je .Lt_01AA
mov eax, dword ptr [ebp-4]
cmp dword ptr [eax], 4
je .Lt_01AC
mov dword ptr [ebp-60], 0
.Lt_01AC:
.Lt_01AB:
.Lt_01AA:
.Lt_01A9:
cmp dword ptr [ebp-60], 0
je .Lt_01AE
push dword ptr [ebp-4]
push dword ptr [ebp-12]
call _HRENAME
add esp, 8
jmp .Lt_01AD
.Lt_01AE:
cmp dword ptr [ebp-64], 0
je .Lt_01AF
push 36
mov eax, dword ptr [ebp+8]
lea ecx, [eax+80]
push ecx
mov ecx, dword ptr [ebp+8]
lea eax, [ecx+44]
push eax
call _fb_MemSwap
add esp, 12
push dword ptr [ebp-8]
push dword ptr [ebp-12]
call _HRENAME
add esp, 8
.Lt_01AF:
.Lt_01AD:
.Lt_018A:
.Lt_017C:
.Lt_0169:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__FLUSH:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_01B0:
cmp dword ptr [_CTX+56], 0
jne .Lt_01B3
jmp .Lt_01B1
.Lt_01B3:
.Lt_01B2:
lea eax, [_CTX]
push eax
call _FLISTGETHEAD
add esp, 4
mov dword ptr [_Lt_0428], eax
.Lt_01B4:
mov eax, dword ptr [_Lt_0428]
mov dword ptr [_CTX+60], eax
push dword ptr [_Lt_0428]
call _HREUSE
add esp, 4
mov eax, dword ptr [_Lt_0428]
mov ebx, dword ptr [eax+4]
mov dword ptr [_Lt_0429], ebx
mov ebx, dword ptr [_Lt_0428]
mov eax, dword ptr [ebx+44]
mov dword ptr [_Lt_042A], eax
mov eax, dword ptr [_Lt_0428]
mov ebx, dword ptr [eax+80]
mov dword ptr [_Lt_042B], ebx
mov ebx, dword ptr [_Lt_0428]
mov eax, dword ptr [ebx+8]
mov dword ptr [_Lt_042C], eax
mov eax, dword ptr [_Lt_0429]
sal eax, 4
mov ebx, dword ptr [_AST_OPTB+eax]
mov dword ptr [ebp-4], ebx
jmp .Lt_01B8
.Lt_01BA:
push dword ptr [_Lt_042C]
push dword ptr [_Lt_042A]
push dword ptr [_Lt_0429]
call _HFLUSHUOP
add esp, 12
jmp .Lt_01B7
.Lt_01BB:
push dword ptr [_Lt_042C]
push dword ptr [_Lt_042B]
push dword ptr [_Lt_042A]
push dword ptr [_Lt_0429]
call _HFLUSHBOP
add esp, 16
jmp .Lt_01B7
.Lt_01BC:
mov ebx, dword ptr [_Lt_0428]
push dword ptr [ebx+116]
push dword ptr [_Lt_042C]
push dword ptr [_Lt_042B]
push dword ptr [_Lt_042A]
push dword ptr [_Lt_0429]
call _HFLUSHCOMP
add esp, 20
jmp .Lt_01B7
.Lt_01BD:
push dword ptr [_Lt_042B]
push dword ptr [_Lt_042A]
push dword ptr [_Lt_0429]
call _HFLUSHSTORE
add esp, 12
jmp .Lt_01B7
.Lt_01BE:
push dword ptr [_Lt_042C]
push dword ptr [_Lt_042A]
push dword ptr [_Lt_0429]
call _HFLUSHLOAD
add esp, 12
jmp .Lt_01B7
.Lt_01BF:
push dword ptr [_Lt_042B]
push dword ptr [_Lt_042A]
push dword ptr [_Lt_0429]
call _HFLUSHCONVERT
add esp, 12
jmp .Lt_01B7
.Lt_01C0:
mov ebx, dword ptr [_Lt_0428]
push dword ptr [ebx+120]
push dword ptr [_Lt_042A]
push dword ptr [_Lt_0429]
call _HFLUSHSTACK
add esp, 12
jmp .Lt_01B7
.Lt_01C1:
push dword ptr [_Lt_042C]
push dword ptr [_Lt_042A]
mov ebx, dword ptr [_Lt_0428]
push dword ptr [ebx+120]
mov ebx, dword ptr [_Lt_0428]
push dword ptr [ebx+116]
push dword ptr [_Lt_0429]
call _HFLUSHCALL
add esp, 20
jmp .Lt_01B7
.Lt_01C2:
mov ebx, dword ptr [_Lt_0428]
push dword ptr [ebx+116]
push dword ptr [_Lt_0429]
call _HFLUSHBRANCH
add esp, 8
jmp .Lt_01B7
.Lt_01C3:
push dword ptr [_Lt_042C]
push dword ptr [_Lt_042A]
push dword ptr [_Lt_0429]
call _HFLUSHADDR
add esp, 12
jmp .Lt_01B7
.Lt_01C4:
mov ebx, dword ptr [_Lt_0428]
push dword ptr [ebx+116]
mov ebx, dword ptr [_Lt_0428]
push dword ptr [ebx+120]
push dword ptr [_Lt_042B]
push dword ptr [_Lt_042A]
push dword ptr [_Lt_0429]
call _HFLUSHMEM
add esp, 20
jmp .Lt_01B7
.Lt_01C5:
mov ebx, dword ptr [_Lt_0428]
push dword ptr [ebx+124]
mov ebx, dword ptr [_Lt_0428]
push dword ptr [ebx+120]
mov ebx, dword ptr [_Lt_0428]
push dword ptr [ebx+116]
push dword ptr [_Lt_0429]
call _HFLUSHDBG
add esp, 16
jmp .Lt_01B7
.Lt_01C6:
mov ebx, dword ptr [_Lt_0428]
push dword ptr [ebx+116]
push dword ptr [_Lt_0429]
call _HFLUSHLIT
add esp, 8
jmp .Lt_01B7
.Lt_01B8:
mov ebx, dword ptr [ebp-4]
add ebx, 4294967295
cmp ebx, 29
ja .Lt_01B7
mov ebx, dword ptr [ebp-4]
jmp dword ptr [_.LT_01C7+ebx*4-4]
_.LT_01C7:
.int .Lt_01BE
.int .Lt_01BD
.int .Lt_01BB
.int .Lt_01BA
.int .Lt_01BF
.int .Lt_01C3
.int .Lt_01C2
.int .Lt_01B7
.int .Lt_01C1
.int .Lt_01B7
.int .Lt_01C0
.int .Lt_01C4
.int .Lt_01B7
.int .Lt_01BC
.int .Lt_01B7
.int .Lt_01B7
.int .Lt_01B7
.int .Lt_01B7
.int .Lt_01B7
.int .Lt_01B7
.int .Lt_01B7
.int .Lt_01B7
.int .Lt_01B7
.int .Lt_01B7
.int .Lt_01B7
.int .Lt_01B7
.int .Lt_01C6
.int .Lt_01B7
.int .Lt_01B7
.int .Lt_01C5
.Lt_01B7:
cmp dword ptr [_ENV+116], 1
jl .Lt_01C9
mov ebx, dword ptr [_Lt_0429]
sal ebx, 4
cmp dword ptr [_AST_OPTB+ebx], 9
je .Lt_01CB
cmp dword ptr [_Lt_042C], 0
je .Lt_01CD
mov ebx, dword ptr [_Lt_042C]
cmp dword ptr [ebx+16], 0
jne .Lt_01CF
mov ebx, dword ptr [_Lt_042C]
mov dword ptr [ebx+16], 1
.Lt_01CF:
.Lt_01CD:
.Lt_01CC:
.Lt_01CB:
.Lt_01CA:
.Lt_01C9:
.Lt_01C8:
push dword ptr [_Lt_0428]
call _FLISTGETNEXT
add esp, 4
mov dword ptr [_Lt_0428], eax
.Lt_01B6:
cmp dword ptr [_Lt_0428], 0
jne .Lt_01B4
.Lt_01B5:
mov dword ptr [_CTX+60], 0
mov dword ptr [_CTX+56], 0
lea eax, [_CTX]
push eax
call _FLISTRESET
add esp, 4
lea eax, [_CTX+64]
push eax
call _FLISTRESET
add esp, 4
call _HFREEPRESERVEDREGS
.Lt_01B1:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0429,4
.balign 4
	.lcomm	_Lt_0428,4
.balign 4
	.lcomm	_Lt_042A,4
.balign 4
	.lcomm	_Lt_042B,4
.balign 4
	.lcomm	_Lt_042C,4

.section .text
.balign 16
_HFLUSHBRANCH:
push ebp
mov ebp, esp
sub esp, 4
.Lt_01D0:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_01D3
.Lt_01D5:
push dword ptr [ebp+12]
call _EMITLABEL
add esp, 4
jmp .Lt_01D2
.Lt_01D6:
push dword ptr [ebp+12]
call _EMITJUMP
add esp, 4
jmp .Lt_01D2
.Lt_01D7:
push 0
push dword ptr [ebp+12]
call _EMITCALL
add esp, 8
jmp .Lt_01D2
.Lt_01D8:
push 0
call _EMITRET
add esp, 4
jmp .Lt_01D2
.Lt_01D9:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _EMITBRANCH
add esp, 8
jmp .Lt_01D2
.Lt_01D3:
mov eax, dword ptr [ebp-4]
add eax, 4294967198
cmp eax, 3
ja .Lt_01D9
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_01DA+eax*4-392]
_.LT_01DA:
.int .Lt_01D6
.int .Lt_01D7
.int .Lt_01D5
.int .Lt_01D8
.Lt_01D2:
.Lt_01D1:
mov esp, ebp
pop ebp
ret
.balign 16
_HFREEPRESERVEDREGS:
push ebx
.Lt_01DB:
mov dword ptr [_Lt_042D], 0
.Lt_01E0:
mov eax, dword ptr [_Lt_042D]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_042D]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+28]
add esp, 4
mov dword ptr [_Lt_042E], eax
.Lt_01E1:
cmp dword ptr [_Lt_042E], -1
je .Lt_01E2
push dword ptr [_Lt_042E]
mov eax, dword ptr [_Lt_042D]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_042D]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+16]
add esp, 8
test eax, eax
jne .Lt_01E4
push dword ptr [_Lt_042E]
mov eax, dword ptr [_Lt_042D]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_042D]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+12]
add esp, 8
.Lt_01E4:
.Lt_01E3:
push dword ptr [_Lt_042E]
mov ebx, dword ptr [_Lt_042D]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_042D]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax+32]
add esp, 8
mov dword ptr [_Lt_042E], eax
jmp .Lt_01E1
.Lt_01E2:
.Lt_01DE:
inc dword ptr [_Lt_042D]
.Lt_01DD:
cmp dword ptr [_Lt_042D], 1
jle .Lt_01E0
.Lt_01DF:
.Lt_01DC:
pop ebx
ret

.section .bss
.balign 4
	.lcomm	_Lt_042D,4
.balign 4
	.lcomm	_Lt_042E,4

.section .text
.balign 16
_HPRESERVEREG:
push ebp
mov ebp, esp
sub esp, 240
push ebx
mov dword ptr [ebp-4], 0
.Lt_01E5:
cmp dword ptr [ebp+8], 0
je .Lt_01E8
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-16], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_01E9
mov dword ptr [ebp-240], 24
jmp .Lt_042F
.Lt_01E9:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-240], ebx
.Lt_042F:
mov ebx, dword ptr [ebp-240]
mov dword ptr [ebp-12], ebx
cmp dword ptr [ebp-12], 24
jne .Lt_01EC
mov dword ptr [ebp-12], 12
.Lt_01EC:
.Lt_01EB:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-8], eax
jmp .Lt_01E7
.Lt_01E8:
mov dword ptr [ebp-16], -1
mov dword ptr [ebp-12], -2147483648
mov dword ptr [ebp-8], -1
.Lt_01E7:
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
call dword ptr [_EMIT+168]
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
je .Lt_01EE
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
call dword ptr [_EMIT+168]
add esp, 8
mov dword ptr [ebp-24], eax
jmp .Lt_01ED
.Lt_01EE:
mov dword ptr [ebp-24], -1
.Lt_01ED:
mov eax, dword ptr [ebp-24]
and eax, dword ptr [ebp-20]
je .Lt_01F0
mov dword ptr [ebp-4], -1
jmp .Lt_01E6
.Lt_01F0:
.Lt_01EF:
cmp dword ptr [ebp-20], 0
jne .Lt_01F2
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call dword ptr [_EMIT+172]
add esp, 8
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], -1
jne .Lt_01F4
mov dword ptr [ebp-4], 0
jmp .Lt_01E6
.Lt_01F4:
.Lt_01F3:
push 0
push dword ptr [ebp+8]
push dword ptr [ebp-28]
mov eax, dword ptr [ebp-8]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
.Lt_01F2:
.Lt_01F1:
cmp dword ptr [ebp-24], 0
jne .Lt_01F6
push 8
push 0
call dword ptr [_EMIT+172]
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], -1
jne .Lt_01F8
cmp dword ptr [ebp-20], 0
jne .Lt_01FA
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-8]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-8]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+12]
add esp, 8
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebp-88]
mov dword ptr [ebx+12], eax
.Lt_01FA:
.Lt_01F9:
mov dword ptr [ebp-4], 0
jmp .Lt_01E6
.Lt_01F8:
.Lt_01F7:
push dword ptr [ebp+8]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+52]
push dword ptr [ebp-32]
push dword ptr [_REGTB]
mov eax, dword ptr [_REGTB]
call dword ptr [eax+8]
add esp, 16
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [ebx+52]
mov dword ptr [ecx+12], eax
.Lt_01F6:
.Lt_01F5:
mov eax, dword ptr [ebp-24]
or eax, dword ptr [ebp-20]
not eax
test eax, eax
je .Lt_01FC
lea eax, [ebp-100]
push eax
push dword ptr [ebp+8]
call _EMITMOV
add esp, 8
jmp .Lt_01FB
.Lt_01FC:
cmp dword ptr [ebp-20], 0
jne .Lt_01FD
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
je .Lt_01FF
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
call _EMITMOV
add esp, 8
jmp .Lt_01FE
.Lt_01FF:
lea ecx, [ebp-100]
push ecx
push dword ptr [ebp+8]
call _EMITMOV
add esp, 8
.Lt_01FE:
jmp .Lt_01FB
.Lt_01FD:
lea ecx, [ebp-168]
push ecx
mov ecx, dword ptr [ebp+8]
push dword ptr [ecx+52]
call _EMITMOV
add esp, 8
.Lt_01FB:
cmp dword ptr [ebp-20], 0
jne .Lt_0201
push dword ptr [ebp-88]
mov ecx, dword ptr [ebp-8]
push dword ptr [_REGTB+ecx*4]
mov ecx, dword ptr [ebp-8]
mov eax, dword ptr [_REGTB+ecx*4]
call dword ptr [eax+12]
add esp, 8
.Lt_0201:
.Lt_0200:
cmp dword ptr [ebp-24], 0
jne .Lt_0203
push dword ptr [ebp-156]
push dword ptr [_REGTB]
mov eax, dword ptr [_REGTB]
call dword ptr [eax+12]
add esp, 8
.Lt_0203:
.Lt_0202:
mov dword ptr [ebp-4], -1
.Lt_01E6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPRESERVEREGS:
push ebp
mov ebp, esp
sub esp, 24
push ebx
.Lt_0204:
mov dword ptr [ebp-20], 0
.Lt_0209:
mov dword ptr [ebp-4], -1
cmp dword ptr [ebp-20], 0
jne .Lt_020B
cmp dword ptr [ebp+8], 0
je .Lt_020D
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 4
jne .Lt_0210
.Lt_0211:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-4], eax
jmp .Lt_020E
.Lt_0210:
cmp dword ptr [ebp-24], 2
je .Lt_0213
.Lt_0214:
cmp dword ptr [ebp-24], 3
jne .Lt_0212
.Lt_0213:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov dword ptr [ebp+8], ebx
cmp dword ptr [ebp+8], 0
je .Lt_0216
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+12]
mov dword ptr [ebp-4], eax
.Lt_0216:
.Lt_0215:
.Lt_0212:
.Lt_020E:
mov dword ptr [ebp+8], 0
.Lt_020D:
.Lt_020C:
.Lt_020B:
.Lt_020A:
mov eax, dword ptr [ebp-20]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+28]
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0217:
cmp dword ptr [ebp-8], -1
je .Lt_0218
push dword ptr [ebp-8]
mov eax, dword ptr [ebp-20]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [_REGTB+eax*4]
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
je .Lt_021A
lea ebx, [ebp-16]
push ebx
push dword ptr [ebp-8]
mov ebx, dword ptr [ebp-20]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [ebp-20]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax+36]
add esp, 12
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-16], 0
je .Lt_021C
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.Lt_021C:
.Lt_021B:
push dword ptr [ebp-12]
call _HPRESERVEREG
add esp, 4
test eax, eax
jne .Lt_021E
push 0
push dword ptr [ebp-12]
call dword ptr [_IR+268]
add esp, 8
.Lt_021E:
.Lt_021D:
.Lt_021A:
.Lt_0219:
push dword ptr [ebp-8]
mov eax, dword ptr [ebp-20]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-20]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+32]
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_0217
.Lt_0218:
.Lt_0207:
inc dword ptr [ebp-20]
.Lt_0206:
cmp dword ptr [ebp-20], 1
jle .Lt_0209
.Lt_0208:
.Lt_0205:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADPOINTER:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_021F:
cmp dword ptr [ebp+8], 0
je .Lt_0222
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0223
mov dword ptr [ebp-16], 24
jmp .Lt_0436
.Lt_0223:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_0436:
mov ebx, dword ptr [ebp-16]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 24
jne .Lt_0226
mov dword ptr [ebp-8], 12
.Lt_0226:
.Lt_0225:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-12], eax
jmp .Lt_0221
.Lt_0222:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], -2147483648
mov dword ptr [ebp-12], -1
.Lt_0221:
push dword ptr [ebp+8]
call _HLOADIDX
add esp, 4
cmp dword ptr [ebp-4], 4
jne .Lt_0228
mov eax, dword ptr [ebp-8]
and eax, 480
je .Lt_0229
mov dword ptr [ebp-16], 24
jmp .Lt_0437
.Lt_0229:
mov eax, dword ptr [ebp-8]
and eax, 31
mov dword ptr [ebp-16], eax
.Lt_0437:
mov eax, dword ptr [ebp-16]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+8]
mov eax, dword ptr [ebp-12]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.Lt_0228:
.Lt_0227:
.Lt_0220:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HLOADRESULT:
push ebp
mov ebp, esp
sub esp, 28
push ebx
.Lt_022B:
cmp dword ptr [ebp+12], 0
je .Lt_022E
cmp dword ptr [ebp+12], 0
je .Lt_0230
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-4], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0231
mov dword ptr [ebp-28], 24
jmp .Lt_0438
.Lt_0231:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-28], ebx
.Lt_0438:
mov ebx, dword ptr [ebp-28]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 24
jne .Lt_0234
mov dword ptr [ebp-8], 12
.Lt_0234:
.Lt_0233:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-12], eax
jmp .Lt_022F
.Lt_0230:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], -2147483648
mov dword ptr [ebp-12], -1
.Lt_022F:
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
push dword ptr [ebp-12]
push dword ptr [ebp-8]
call dword ptr [_EMIT+176]
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
je .Lt_0236
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [ebp-24], eax
push dword ptr [ebp+12]
push dword ptr [ebp-24]
push dword ptr [ebp-20]
mov eax, dword ptr [ebp-12]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp-24]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp-24]
mov dword ptr [eax], 4
.Lt_0236:
.Lt_0235:
push 0
push dword ptr [ebp+12]
push dword ptr [ebp-16]
mov eax, dword ptr [ebp-12]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-12]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 4
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
jmp .Lt_022D
.Lt_022E:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+88]
and ebx, 480
je .Lt_0237
mov dword ptr [ebp-28], 24
jmp .Lt_0439
.Lt_0237:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+88]
and eax, 31
mov dword ptr [ebp-28], eax
.Lt_0439:
mov eax, dword ptr [ebp-28]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
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
je .Lt_023A
call _EMITPOPST0
.Lt_023A:
.Lt_0239:
.Lt_022D:
.Lt_022C:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHCALL:
push ebp
mov ebp, esp
.Lt_023B:
cmp dword ptr [ebp+8], 102
jne .Lt_023E
.Lt_023F:
push 0
call _HPRESERVEREGS
add esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITCALL
add esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call _HLOADRESULT
add esp, 8
jmp .Lt_023D
.Lt_023E:
cmp dword ptr [ebp+8], 103
jne .Lt_0240
.Lt_0241:
push dword ptr [ebp+20]
call _HPRESERVEREGS
add esp, 4
push dword ptr [ebp+20]
call _HLOADPOINTER
add esp, 4
push dword ptr [ebp+16]
push dword ptr [ebp+20]
call _EMITCALLPTR
add esp, 8
push 0
push dword ptr [ebp+20]
call _HFREEREG
add esp, 8
push dword ptr [ebp+24]
push dword ptr [ebp+12]
call _HLOADRESULT
add esp, 8
jmp .Lt_023D
.Lt_0240:
cmp dword ptr [ebp+8], 104
jne .Lt_0242
.Lt_0243:
push dword ptr [ebp+20]
call _HLOADPOINTER
add esp, 4
push dword ptr [ebp+20]
call _EMITJUMPPTR
add esp, 4
push 0
push dword ptr [ebp+20]
call _HFREEREG
add esp, 8
.Lt_0242:
.Lt_0244:
.Lt_023D:
.Lt_023C:
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHSTACK:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0245:
cmp dword ptr [ebp+8], 91
jne .Lt_0248
push dword ptr [ebp+16]
call _EMITSTACKALIGN
add esp, 4
jmp .Lt_0246
.Lt_0248:
.Lt_0247:
cmp dword ptr [ebp+12], 0
je .Lt_024A
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_0440], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_024B
mov dword ptr [ebp-4], 24
jmp .Lt_043E
.Lt_024B:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_043E:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_0441], ebx
cmp dword ptr [_Lt_0441], 24
jne .Lt_024E
mov dword ptr [_Lt_0441], 12
.Lt_024E:
.Lt_024D:
mov ebx, dword ptr [_Lt_0441]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_0442], eax
jmp .Lt_0249
.Lt_024A:
mov dword ptr [_Lt_0440], -1
mov dword ptr [_Lt_0441], -2147483648
mov dword ptr [_Lt_0442], -1
.Lt_0249:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
cmp dword ptr [_Lt_0440], 4
jne .Lt_0250
mov eax, dword ptr [_Lt_0441]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0441]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0252
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_0445], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [_Lt_0445]
mov eax, dword ptr [_Lt_0442]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0442]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_0441], 8
.Lt_0252:
.Lt_0251:
mov ebx, dword ptr [_Lt_0441]
and ebx, 480
je .Lt_0253
mov dword ptr [ebp-4], 24
jmp .Lt_043F
.Lt_0253:
mov ebx, dword ptr [_Lt_0441]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_043F:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [_Lt_0442]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_0442]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.Lt_0250:
.Lt_024F:
cmp dword ptr [ebp+8], 88
jne .Lt_0256
.Lt_0257:
push dword ptr [ebp+12]
call _EMITPUSH
add esp, 4
jmp .Lt_0255
.Lt_0256:
cmp dword ptr [ebp+8], 90
jne .Lt_0258
.Lt_0259:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITPUSHUDT
add esp, 8
jmp .Lt_0255
.Lt_0258:
cmp dword ptr [ebp+8], 89
jne .Lt_025A
.Lt_025B:
push dword ptr [ebp+12]
call _EMITPOP
add esp, 4
.Lt_025A:
.Lt_0255:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
.Lt_0246:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0440,4
.balign 4
	.lcomm	_Lt_0441,4
.balign 4
	.lcomm	_Lt_0442,4
.balign 4
	.lcomm	_Lt_0445,4

.section .text
.balign 16
_HFLUSHUOP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_025C:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+20]
mov dword ptr [_Lt_044A], ebx
cmp dword ptr [ebp+12], 0
je .Lt_025F
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx]
mov dword ptr [_Lt_044B], eax
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0260
mov dword ptr [ebp-4], 24
jmp .Lt_0446
.Lt_0260:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0446:
mov eax, dword ptr [ebp-4]
mov dword ptr [_Lt_044C], eax
cmp dword ptr [_Lt_044C], 24
jne .Lt_0263
mov dword ptr [_Lt_044C], 12
.Lt_0263:
.Lt_0262:
mov eax, dword ptr [_Lt_044C]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [_Lt_044D], ebx
jmp .Lt_025E
.Lt_025F:
mov dword ptr [_Lt_044B], -1
mov dword ptr [_Lt_044C], -2147483648
mov dword ptr [_Lt_044D], -1
.Lt_025E:
cmp dword ptr [ebp+16], 0
je .Lt_0265
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [_Lt_044E], eax
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 480
je .Lt_0266
mov dword ptr [ebp-4], 24
jmp .Lt_0447
.Lt_0266:
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0447:
mov eax, dword ptr [ebp-4]
mov dword ptr [_Lt_044F], eax
cmp dword ptr [_Lt_044F], 24
jne .Lt_0269
mov dword ptr [_Lt_044F], 12
.Lt_0269:
.Lt_0268:
mov eax, dword ptr [_Lt_044F]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax]
mov dword ptr [_Lt_0450], ebx
jmp .Lt_0264
.Lt_0265:
mov dword ptr [_Lt_044E], -1
mov dword ptr [_Lt_044F], -2147483648
mov dword ptr [_Lt_0450], -1
.Lt_0264:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
cmp dword ptr [ebp+16], 0
je .Lt_026B
mov ebx, dword ptr [ebp+16]
cmp dword ptr [ebp+12], ebx
je .Lt_026D
mov ebx, dword ptr [_Lt_044F]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_044F]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_026F
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+52]
mov dword ptr [_Lt_0453], ebx
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [_Lt_0453]
mov ebx, dword ptr [_Lt_0450]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_0450]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [_Lt_044F], 8
.Lt_026F:
.Lt_026E:
mov eax, dword ptr [_Lt_044F]
and eax, 480
je .Lt_0270
mov dword ptr [ebp-4], 24
jmp .Lt_0448
.Lt_0270:
mov eax, dword ptr [_Lt_044F]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0448:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [_Lt_0450]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0450]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.Lt_026D:
.Lt_026C:
.Lt_026B:
.Lt_026A:
cmp dword ptr [ebp+16], 0
je .Lt_0273
mov ebx, dword ptr [_Lt_044C]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_044C]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0275
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+52]
mov dword ptr [_Lt_0453], ebx
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [_Lt_0453]
mov ebx, dword ptr [_Lt_044D]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_044D]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [_Lt_044C], 8
.Lt_0275:
.Lt_0274:
cmp dword ptr [ebp+8], 75
jne .Lt_0277
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 0
.Lt_0277:
.Lt_0276:
mov eax, dword ptr [_Lt_044C]
and eax, 480
je .Lt_0278
mov dword ptr [ebp-4], 24
jmp .Lt_0449
.Lt_0278:
mov eax, dword ptr [_Lt_044C]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0449:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [_Lt_044D]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_044D]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
cmp dword ptr [ebp+8], 75
jne .Lt_027B
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [_Lt_044A]
mov dword ptr [ebx+20], eax
.Lt_027B:
.Lt_027A:
.Lt_0273:
.Lt_0272:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_027D
.Lt_027F:
push dword ptr [ebp+12]
call _EMITNEG
add esp, 4
jmp .Lt_027C
.Lt_0280:
push dword ptr [ebp+12]
call _EMITNOT
add esp, 4
jmp .Lt_027C
.Lt_0281:
push dword ptr [ebp+12]
call _EMITHADD
add esp, 4
mov eax, dword ptr [ebp+12]
mov dword ptr [eax+20], 0
jmp .Lt_027C
.Lt_0282:
push dword ptr [ebp+12]
call _EMITABS
add esp, 4
jmp .Lt_027C
.Lt_0283:
push dword ptr [ebp+12]
call _EMITSGN
add esp, 4
jmp .Lt_027C
.Lt_0284:
push dword ptr [ebp+12]
call _EMITFIX
add esp, 4
jmp .Lt_027C
.Lt_0285:
push dword ptr [ebp+12]
call _EMITFRAC
add esp, 4
jmp .Lt_027C
.Lt_0286:
push dword ptr [ebp+12]
call _EMITCONVFD2FS
add esp, 4
jmp .Lt_027C
.Lt_0287:
push dword ptr [ebp+12]
call _EMITSIN
add esp, 4
jmp .Lt_027C
.Lt_0288:
push dword ptr [ebp+12]
call _EMITASIN
add esp, 4
jmp .Lt_027C
.Lt_0289:
push dword ptr [ebp+12]
call _EMITCOS
add esp, 4
jmp .Lt_027C
.Lt_028A:
push dword ptr [ebp+12]
call _EMITACOS
add esp, 4
jmp .Lt_027C
.Lt_028B:
push dword ptr [ebp+12]
call _EMITTAN
add esp, 4
jmp .Lt_027C
.Lt_028C:
push dword ptr [ebp+12]
call _EMITATAN
add esp, 4
jmp .Lt_027C
.Lt_028D:
push dword ptr [ebp+12]
call _EMITSQRT
add esp, 4
jmp .Lt_027C
.Lt_028E:
push dword ptr [ebp+12]
call _EMITRSQRT
add esp, 4
jmp .Lt_027C
.Lt_028F:
push dword ptr [ebp+12]
call _EMITRCP
add esp, 4
jmp .Lt_027C
.Lt_0290:
push dword ptr [ebp+12]
call _EMITLOG
add esp, 4
jmp .Lt_027C
.Lt_0291:
push dword ptr [ebp+12]
call _EMITEXP
add esp, 4
jmp .Lt_027C
.Lt_0292:
push dword ptr [ebp+12]
call _EMITFLOOR
add esp, 4
jmp .Lt_027C
.Lt_0293:
push dword ptr [ebp+12]
call _EMITSWZREP
add esp, 4
jmp .Lt_027C
.Lt_027D:
mov eax, dword ptr [ebp-4]
add eax, 4294967244
cmp eax, 23
ja .Lt_027C
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_0294+eax*4-208]
_.LT_0294:
.int .Lt_0280
.int .Lt_027C
.int .Lt_027F
.int .Lt_0281
.int .Lt_0282
.int .Lt_0283
.int .Lt_0287
.int .Lt_0288
.int .Lt_0289
.int .Lt_028A
.int .Lt_028B
.int .Lt_028C
.int .Lt_027C
.int .Lt_028D
.int .Lt_028E
.int .Lt_028F
.int .Lt_0290
.int .Lt_0291
.int .Lt_0292
.int .Lt_0284
.int .Lt_0285
.int .Lt_027C
.int .Lt_0286
.int .Lt_0293
.Lt_027C:
cmp dword ptr [ebp+16], 0
je .Lt_0296
mov eax, dword ptr [ebp+16]
cmp dword ptr [ebp+12], eax
je .Lt_0298
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call _EMITMOV
add esp, 8
.Lt_0298:
.Lt_0297:
.Lt_0296:
.Lt_0295:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
.Lt_025D:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_044B,4
.balign 4
	.lcomm	_Lt_044C,4
.balign 4
	.lcomm	_Lt_044D,4
.balign 4
	.lcomm	_Lt_044E,4
.balign 4
	.lcomm	_Lt_044F,4
.balign 4
	.lcomm	_Lt_0450,4
.balign 4
	.lcomm	_Lt_0453,4
.balign 4
	.lcomm	_Lt_044A,4

.section .text
.balign 16
_HFLUSHBOP:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0299:
cmp dword ptr [ebp+12], 0
je .Lt_029C
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_045D], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_029D
mov dword ptr [ebp-4], 24
jmp .Lt_0456
.Lt_029D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_0456:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_045E], ebx
cmp dword ptr [_Lt_045E], 24
jne .Lt_02A0
mov dword ptr [_Lt_045E], 12
.Lt_02A0:
.Lt_029F:
mov ebx, dword ptr [_Lt_045E]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_045F], eax
jmp .Lt_029B
.Lt_029C:
mov dword ptr [_Lt_045D], -1
mov dword ptr [_Lt_045E], -2147483648
mov dword ptr [_Lt_045F], -1
.Lt_029B:
cmp dword ptr [ebp+16], 0
je .Lt_02A2
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_0460], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_02A3
mov dword ptr [ebp-4], 24
jmp .Lt_0457
.Lt_02A3:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_0457:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_0461], ebx
cmp dword ptr [_Lt_0461], 24
jne .Lt_02A6
mov dword ptr [_Lt_0461], 12
.Lt_02A6:
.Lt_02A5:
mov ebx, dword ptr [_Lt_0461]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_0462], eax
jmp .Lt_02A1
.Lt_02A2:
mov dword ptr [_Lt_0460], -1
mov dword ptr [_Lt_0461], -2147483648
mov dword ptr [_Lt_0462], -1
.Lt_02A1:
cmp dword ptr [ebp+20], 0
je .Lt_02A8
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_0463], ebx
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_02A9
mov dword ptr [ebp-4], 24
jmp .Lt_0458
.Lt_02A9:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_0458:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_0464], ebx
cmp dword ptr [_Lt_0464], 24
jne .Lt_02AC
mov dword ptr [_Lt_0464], 12
.Lt_02AC:
.Lt_02AB:
mov ebx, dword ptr [_Lt_0464]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_0465], eax
jmp .Lt_02A7
.Lt_02A8:
mov dword ptr [_Lt_0463], -1
mov dword ptr [_Lt_0464], -2147483648
mov dword ptr [_Lt_0465], -1
.Lt_02A7:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+20]
call _HLOADIDX
add esp, 4
cmp dword ptr [ebp+20], 0
jne .Lt_02AE
cmp dword ptr [_Lt_0460], 0
je .Lt_02B0
mov eax, dword ptr [_Lt_0461]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0461]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_02B2
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_0468], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [_Lt_0468]
mov eax, dword ptr [_Lt_0462]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0462]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_0461], 8
.Lt_02B2:
.Lt_02B1:
mov ebx, dword ptr [_Lt_0461]
and ebx, 480
je .Lt_02B3
mov dword ptr [ebp-4], 24
jmp .Lt_0459
.Lt_02B3:
mov ebx, dword ptr [_Lt_0461]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_0459:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [_Lt_0462]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_0462]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.Lt_02B0:
.Lt_02AF:
jmp .Lt_02AD
.Lt_02AE:
cmp dword ptr [_Lt_0460], 4
jne .Lt_02B6
mov eax, dword ptr [_Lt_0461]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0461]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_02B8
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_0468], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [_Lt_0468]
mov eax, dword ptr [_Lt_0462]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0462]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_0461], 8
.Lt_02B8:
.Lt_02B7:
mov ebx, dword ptr [_Lt_0461]
and ebx, 480
je .Lt_02B9
mov dword ptr [ebp-8], 24
jmp .Lt_045A
.Lt_02B9:
mov ebx, dword ptr [_Lt_0461]
and ebx, 31
mov dword ptr [ebp-8], ebx
.Lt_045A:
mov ebx, dword ptr [ebp-8]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [_Lt_0462]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_0462]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.Lt_02B6:
.Lt_02B5:
mov eax, dword ptr [_Lt_045E]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_045E]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_02BC
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_0468], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [_Lt_0468]
mov eax, dword ptr [_Lt_045F]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_045F]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_045E], 8
.Lt_02BC:
.Lt_02BB:
mov ebx, dword ptr [_Lt_045E]
and ebx, 480
je .Lt_02BD
mov dword ptr [ebp-4], 24
jmp .Lt_045B
.Lt_02BD:
mov ebx, dword ptr [_Lt_045E]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_045B:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [_Lt_045F]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_045F]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.Lt_02AD:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_02C0
.Lt_02C2:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITADD
add esp, 8
jmp .Lt_02BF
.Lt_02C3:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITSUB
add esp, 8
jmp .Lt_02BF
.Lt_02C4:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITMUL
add esp, 8
jmp .Lt_02BF
.Lt_02C5:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITDIV
add esp, 8
jmp .Lt_02BF
.Lt_02C6:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITINTDIV
add esp, 8
jmp .Lt_02BF
.Lt_02C7:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITMOD
add esp, 8
jmp .Lt_02BF
.Lt_02C8:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITSHL
add esp, 8
jmp .Lt_02BF
.Lt_02C9:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITSHR
add esp, 8
jmp .Lt_02BF
.Lt_02CA:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITAND
add esp, 8
jmp .Lt_02BF
.Lt_02CB:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITOR
add esp, 8
jmp .Lt_02BF
.Lt_02CC:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITXOR
add esp, 8
jmp .Lt_02BF
.Lt_02CD:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITEQV
add esp, 8
jmp .Lt_02BF
.Lt_02CE:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITIMP
add esp, 8
jmp .Lt_02BF
.Lt_02CF:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITATN2
add esp, 8
jmp .Lt_02BF
.Lt_02D0:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITPOW
add esp, 8
jmp .Lt_02BF
.Lt_02C0:
mov eax, dword ptr [ebp-4]
add eax, 4294967268
cmp eax, 36
ja .Lt_02BF
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_02D1+eax*4-112]
_.LT_02D1:
.int .Lt_02C2
.int .Lt_02C3
.int .Lt_02C4
.int .Lt_02C5
.int .Lt_02C6
.int .Lt_02C7
.int .Lt_02CA
.int .Lt_02CB
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02CC
.int .Lt_02CD
.int .Lt_02CE
.int .Lt_02C8
.int .Lt_02C9
.int .Lt_02D0
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02BF
.int .Lt_02CF
.Lt_02BF:
cmp dword ptr [ebp+20], 0
je .Lt_02D3
mov eax, dword ptr [ebp+20]
cmp dword ptr [ebp+12], eax
je .Lt_02D5
mov eax, dword ptr [_Lt_0464]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0464]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_02D7
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_0468], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+20]
push dword ptr [_Lt_0468]
mov eax, dword ptr [_Lt_0465]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0465]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_0464], 8
.Lt_02D7:
.Lt_02D6:
mov ebx, dword ptr [_Lt_0464]
and ebx, 480
je .Lt_02D8
mov dword ptr [ebp-4], 24
jmp .Lt_045C
.Lt_02D8:
mov ebx, dword ptr [_Lt_0464]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_045C:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+20]
mov ebx, dword ptr [_Lt_0465]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_0465]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
push dword ptr [ebp+12]
push dword ptr [ebp+20]
call _EMITMOV
add esp, 8
.Lt_02D5:
.Lt_02D4:
.Lt_02D3:
.Lt_02D2:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
push 0
push dword ptr [ebp+20]
call _HFREEREG
add esp, 8
.Lt_029A:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_045D,4
.balign 4
	.lcomm	_Lt_045E,4
.balign 4
	.lcomm	_Lt_045F,4
.balign 4
	.lcomm	_Lt_0460,4
.balign 4
	.lcomm	_Lt_0461,4
.balign 4
	.lcomm	_Lt_0462,4
.balign 4
	.lcomm	_Lt_0463,4
.balign 4
	.lcomm	_Lt_0464,4
.balign 4
	.lcomm	_Lt_0465,4
.balign 4
	.lcomm	_Lt_0468,4

.section .text
.balign 16
_HFLUSHCOMP:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_02DA:
cmp dword ptr [ebp+12], 0
je .Lt_02DD
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_0475], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_02DE
mov dword ptr [ebp-4], 24
jmp .Lt_046F
.Lt_02DE:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_046F:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_0476], ebx
cmp dword ptr [_Lt_0476], 24
jne .Lt_02E1
mov dword ptr [_Lt_0476], 12
.Lt_02E1:
.Lt_02E0:
mov ebx, dword ptr [_Lt_0476]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_0477], eax
jmp .Lt_02DC
.Lt_02DD:
mov dword ptr [_Lt_0475], -1
mov dword ptr [_Lt_0476], -2147483648
mov dword ptr [_Lt_0477], -1
.Lt_02DC:
cmp dword ptr [ebp+16], 0
je .Lt_02E3
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_0478], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_02E4
mov dword ptr [ebp-4], 24
jmp .Lt_0470
.Lt_02E4:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_0470:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_0479], ebx
cmp dword ptr [_Lt_0479], 24
jne .Lt_02E7
mov dword ptr [_Lt_0479], 12
.Lt_02E7:
.Lt_02E6:
mov ebx, dword ptr [_Lt_0479]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_047A], eax
jmp .Lt_02E2
.Lt_02E3:
mov dword ptr [_Lt_0478], -1
mov dword ptr [_Lt_0479], -2147483648
mov dword ptr [_Lt_047A], -1
.Lt_02E2:
cmp dword ptr [ebp+20], 0
je .Lt_02E9
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_047B], ebx
mov ebx, dword ptr [ebp+20]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_02EA
mov dword ptr [ebp-4], 24
jmp .Lt_0471
.Lt_02EA:
mov eax, dword ptr [ebp+20]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_0471:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_047C], ebx
cmp dword ptr [_Lt_047C], 24
jne .Lt_02ED
mov dword ptr [_Lt_047C], 12
.Lt_02ED:
.Lt_02EC:
mov ebx, dword ptr [_Lt_047C]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_047D], eax
jmp .Lt_02E8
.Lt_02E9:
mov dword ptr [_Lt_047B], -1
mov dword ptr [_Lt_047C], -2147483648
mov dword ptr [_Lt_047D], -1
.Lt_02E8:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+20]
call _HLOADIDX
add esp, 4
mov dword ptr [_Lt_047E], 0
cmp dword ptr [ebp+20], 0
jne .Lt_02EF
cmp dword ptr [_Lt_047A], 0
jne .Lt_02F1
cmp dword ptr [_Lt_0478], 0
je .Lt_02F3
cmp dword ptr [_Lt_0477], 1
je .Lt_02F5
mov dword ptr [_Lt_047E], -1
.Lt_02F5:
.Lt_02F4:
.Lt_02F3:
.Lt_02F2:
.Lt_02F1:
.Lt_02F0:
.Lt_02EF:
.Lt_02EE:
mov eax, dword ptr [_Lt_0478]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [_Lt_047E]
je .Lt_02F7
mov eax, dword ptr [_Lt_0479]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0479]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_02F9
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_0482], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [_Lt_0482]
mov eax, dword ptr [_Lt_047A]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_047A]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_0479], 8
.Lt_02F9:
.Lt_02F8:
mov ebx, dword ptr [_Lt_0479]
and ebx, 480
je .Lt_02FA
mov dword ptr [ebp-4], 24
jmp .Lt_0472
.Lt_02FA:
mov ebx, dword ptr [_Lt_0479]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_0472:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [_Lt_047A]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_047A]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [_Lt_0478], 4
.Lt_02F7:
.Lt_02F6:
mov dword ptr [_Lt_047E], 0
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
je .Lt_02FD
mov dword ptr [_Lt_047E], -1
jmp .Lt_02FC
.Lt_02FD:
cmp dword ptr [_Lt_0477], 1
jne .Lt_02FE
mov dword ptr [_Lt_047E], -1
jmp .Lt_02FC
.Lt_02FE:
cmp dword ptr [_Lt_0475], 0
jne .Lt_02FF
mov dword ptr [_Lt_047E], -1
jmp .Lt_02FC
.Lt_02FF:
mov ecx, dword ptr [_Lt_0475]
cmp ecx, 5
sete cl
shr ecx, 1
sbb ecx, ecx
mov eax, dword ptr [_Lt_0478]
test eax, eax
sete al
shr eax, 1
sbb eax, eax
and ecx, eax
je .Lt_0300
mov dword ptr [_Lt_047E], -1
jmp .Lt_02FC
.Lt_0300:
cmp dword ptr [_Lt_0478], 4
je .Lt_0301
cmp dword ptr [_Lt_0478], 0
je .Lt_0303
mov dword ptr [_Lt_047E], -1
.Lt_0303:
.Lt_0302:
jmp .Lt_02FC
.Lt_0301:
cmp dword ptr [_Lt_0475], 5
jne .Lt_0304
mov dword ptr [_Lt_047E], -1
.Lt_0304:
.Lt_02FC:
mov eax, dword ptr [_Lt_0475]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
or eax, dword ptr [_Lt_047E]
je .Lt_0306
mov eax, dword ptr [_Lt_0476]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_Lt_0476]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or eax, ecx
je .Lt_0308
mov ecx, dword ptr [ebp+12]
mov eax, dword ptr [ecx+52]
mov dword ptr [_Lt_0482], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [_Lt_0482]
mov eax, dword ptr [_Lt_0477]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0477]
mov ecx, dword ptr [_REGTB+eax*4]
call dword ptr [ecx]
add esp, 16
mov dword ptr [_Lt_0476], 8
.Lt_0308:
.Lt_0307:
mov ecx, dword ptr [_Lt_0476]
and ecx, 480
je .Lt_0309
mov dword ptr [ebp-4], 24
jmp .Lt_0473
.Lt_0309:
mov ecx, dword ptr [_Lt_0476]
and ecx, 31
mov dword ptr [ebp-4], ecx
.Lt_0473:
mov ecx, dword ptr [ebp-4]
imul ecx, 28
push dword ptr [_SYMB_DTYPETB+ecx+4]
push 0
push dword ptr [ebp+12]
mov ecx, dword ptr [_Lt_0477]
push dword ptr [_REGTB+ecx*4]
mov ecx, dword ptr [_Lt_0477]
mov eax, dword ptr [_REGTB+ecx*4]
call dword ptr [eax]
add esp, 16
.Lt_0306:
.Lt_0305:
cmp dword ptr [ebp+20], 0
je .Lt_030C
mov eax, dword ptr [ebp+12]
cmp dword ptr [ebp+20], eax
je .Lt_030E
mov eax, dword ptr [_Lt_047C]
and eax, 480
je .Lt_030F
mov dword ptr [ebp-4], 24
jmp .Lt_0474
.Lt_030F:
mov eax, dword ptr [_Lt_047C]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_0474:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+20]
mov eax, dword ptr [_Lt_047D]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_047D]
mov ecx, dword ptr [_REGTB+eax*4]
call dword ptr [ecx+4]
add esp, 16
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx+12], eax
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 4
.Lt_030E:
.Lt_030D:
.Lt_030C:
.Lt_030B:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_0312
.Lt_0314:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _EMITEQ
add esp, 16
jmp .Lt_0311
.Lt_0315:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _EMITNE
add esp, 16
jmp .Lt_0311
.Lt_0316:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _EMITGT
add esp, 16
jmp .Lt_0311
.Lt_0317:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _EMITLT
add esp, 16
jmp .Lt_0311
.Lt_0318:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _EMITLE
add esp, 16
jmp .Lt_0311
.Lt_0319:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _EMITGE
add esp, 16
jmp .Lt_0311
.Lt_0312:
mov eax, dword ptr [ebp-4]
add eax, 4294967251
cmp eax, 5
ja .Lt_0311
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_031A+eax*4-180]
_.LT_031A:
.int .Lt_0314
.int .Lt_0316
.int .Lt_0317
.int .Lt_0315
.int .Lt_0319
.int .Lt_0318
.Lt_0311:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
cmp dword ptr [ebp+20], 0
je .Lt_031C
push 0
push dword ptr [ebp+20]
call _HFREEREG
add esp, 8
.Lt_031C:
.Lt_031B:
.Lt_02DB:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_048A,12
.balign 4
	.lcomm	_Lt_0475,4
.balign 4
	.lcomm	_Lt_0476,4
.balign 4
	.lcomm	_Lt_0477,4
.balign 4
	.lcomm	_Lt_0478,4
.balign 4
	.lcomm	_Lt_0479,4
.balign 4
	.lcomm	_Lt_047A,4
.balign 4
	.lcomm	_Lt_047B,4
.balign 4
	.lcomm	_Lt_047C,4
.balign 4
	.lcomm	_Lt_047D,4
.balign 4
	.lcomm	_Lt_0482,4
.balign 4
	.lcomm	_Lt_047E,4

.section .text
.balign 16
_HSPILLREGS:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_031D:
mov dword ptr [ebp-16], 0
.Lt_0322:
mov eax, dword ptr [ebp-16]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+28]
add esp, 4
mov dword ptr [ebp-12], eax
.Lt_0323:
cmp dword ptr [ebp-12], -1
je .Lt_0324
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-16]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+16]
add esp, 8
test eax, eax
jne .Lt_0326
lea eax, [ebp-8]
push eax
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-16]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+36]
add esp, 12
mov dword ptr [ebp-4], eax
push dword ptr [ebp-8]
push dword ptr [ebp-4]
call dword ptr [_IR+268]
add esp, 8
.Lt_0326:
.Lt_0325:
push dword ptr [ebp-12]
mov eax, dword ptr [ebp-16]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-16]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+32]
add esp, 8
mov dword ptr [ebp-12], eax
jmp .Lt_0323
.Lt_0324:
.Lt_0320:
inc dword ptr [ebp-16]
.Lt_031F:
cmp dword ptr [ebp-16], 1
jle .Lt_0322
.Lt_0321:
.Lt_031E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHSTORE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0327:
cmp dword ptr [ebp+8], 87
jne .Lt_032A
call _HSPILLREGS
jmp .Lt_0328
.Lt_032A:
.Lt_0329:
cmp dword ptr [ebp+12], 0
je .Lt_032C
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_048E], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_032D
mov dword ptr [ebp-4], 24
jmp .Lt_048B
.Lt_032D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_048B:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_048F], ebx
cmp dword ptr [_Lt_048F], 24
jne .Lt_0330
mov dword ptr [_Lt_048F], 12
.Lt_0330:
.Lt_032F:
mov ebx, dword ptr [_Lt_048F]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_0490], eax
jmp .Lt_032B
.Lt_032C:
mov dword ptr [_Lt_048E], -1
mov dword ptr [_Lt_048F], -2147483648
mov dword ptr [_Lt_0490], -1
.Lt_032B:
cmp dword ptr [ebp+16], 0
je .Lt_0332
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_0491], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0333
mov dword ptr [ebp-4], 24
jmp .Lt_048C
.Lt_0333:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_048C:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_0492], ebx
cmp dword ptr [_Lt_0492], 24
jne .Lt_0336
mov dword ptr [_Lt_0492], 12
.Lt_0336:
.Lt_0335:
mov ebx, dword ptr [_Lt_0492]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_0493], eax
jmp .Lt_0331
.Lt_0332:
mov dword ptr [_Lt_0491], -1
mov dword ptr [_Lt_0492], -2147483648
mov dword ptr [_Lt_0493], -1
.Lt_0331:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
mov eax, dword ptr [_Lt_0491]
cmp eax, 4
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_0491]
test ebx, ebx
setne bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_0490]
test ecx, ecx
sete cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
or eax, ebx
je .Lt_0338
mov ebx, dword ptr [_Lt_0492]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [_Lt_0492]
cmp eax, 14
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_033A
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+52]
mov dword ptr [_Lt_0499], ebx
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [_Lt_0499]
mov ebx, dword ptr [_Lt_0493]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_0493]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [_Lt_0492], 8
.Lt_033A:
.Lt_0339:
mov eax, dword ptr [_Lt_0492]
and eax, 480
je .Lt_033B
mov dword ptr [ebp-4], 24
jmp .Lt_048D
.Lt_033B:
mov eax, dword ptr [_Lt_0492]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_048D:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+16]
mov eax, dword ptr [_Lt_0493]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_0493]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.Lt_0338:
.Lt_0337:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITSTORE
add esp, 8
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
.Lt_0328:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_048E,4
.balign 4
	.lcomm	_Lt_048F,4
.balign 4
	.lcomm	_Lt_0490,4
.balign 4
	.lcomm	_Lt_0491,4
.balign 4
	.lcomm	_Lt_0492,4
.balign 4
	.lcomm	_Lt_0493,4
.balign 4
	.lcomm	_Lt_0499,4

.section .text
.balign 16
_HFLUSHLOAD:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_033D:
cmp dword ptr [ebp+12], 0
je .Lt_0340
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_049D], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0341
mov dword ptr [ebp-4], 24
jmp .Lt_049A
.Lt_0341:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_049A:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_049E], ebx
cmp dword ptr [_Lt_049E], 24
jne .Lt_0344
mov dword ptr [_Lt_049E], 12
.Lt_0344:
.Lt_0343:
mov ebx, dword ptr [_Lt_049E]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_049F], eax
jmp .Lt_033F
.Lt_0340:
mov dword ptr [_Lt_049D], -1
mov dword ptr [_Lt_049E], -2147483648
mov dword ptr [_Lt_049F], -1
.Lt_033F:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
cmp dword ptr [ebp+8], 85
jne .Lt_0346
.Lt_0347:
mov eax, dword ptr [_Lt_049E]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_049E]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0349
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_04A2], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [_Lt_04A2]
mov eax, dword ptr [_Lt_049F]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_049F]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_049E], 8
.Lt_0349:
.Lt_0348:
mov ebx, dword ptr [_Lt_049E]
and ebx, 480
je .Lt_034A
mov dword ptr [ebp-4], 24
jmp .Lt_049B
.Lt_034A:
mov ebx, dword ptr [_Lt_049E]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_049B:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [_Lt_049F]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_049F]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
jmp .Lt_0345
.Lt_0346:
cmp dword ptr [ebp+8], 86
jne .Lt_034C
.Lt_034D:
cmp dword ptr [_Lt_049D], 4
jne .Lt_034F
mov eax, dword ptr [_Lt_049E]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_049E]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0351
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_04A2], eax
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [_Lt_04A2]
mov eax, dword ptr [_Lt_049F]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_049F]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
push dword ptr [_SYMB_DTYPETB+228]
push 0
push dword ptr [ebp+12]
mov ebx, dword ptr [_Lt_049F]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_049F]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
mov dword ptr [_Lt_04A5], eax
jmp .Lt_0350
.Lt_0351:
mov eax, dword ptr [_Lt_049E]
and eax, 480
je .Lt_0352
mov dword ptr [ebp-4], 24
jmp .Lt_049C
.Lt_0352:
mov eax, dword ptr [_Lt_049E]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_049C:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [_Lt_049F]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_049F]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
mov dword ptr [_Lt_04A5], eax
.Lt_0350:
jmp .Lt_034E
.Lt_034F:
mov dword ptr [_Lt_04A5], -1
.Lt_034E:
push offset _Lt_04A6
push offset _Lt_04A7
push dword ptr [_Lt_049F]
push dword ptr [_Lt_049E]
call dword ptr [_EMIT+176]
add esp, 16
mov eax, dword ptr [_Lt_04A5]
cmp dword ptr [_Lt_04A7], eax
je .Lt_0355
mov eax, dword ptr [_Lt_049E]
cmp eax, 13
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_049E]
cmp ebx, 14
sete bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_0357
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+52]
mov dword ptr [_Lt_04A2], eax
push dword ptr [ebp+16]
push dword ptr [_Lt_04A2]
push dword ptr [_Lt_04A6]
mov eax, dword ptr [_Lt_049F]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_049F]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [_Lt_04A2]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_Lt_04A2]
mov dword ptr [eax], 4
.Lt_0357:
.Lt_0356:
push 0
push dword ptr [ebp+16]
push dword ptr [_Lt_04A7]
mov eax, dword ptr [_Lt_049F]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_049F]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+8]
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], 4
mov eax, dword ptr [_AST+40]
mov ebx, dword ptr [eax+12]
cmp dword ptr [ebx+96], 1
je .Lt_0359
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx+16], 0
.Lt_0359:
.Lt_0358:
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call _EMITLOAD
add esp, 8
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
.Lt_0355:
.Lt_0354:
.Lt_034C:
.Lt_0345:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
.Lt_033E:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_049D,4
.balign 4
	.lcomm	_Lt_049E,4
.balign 4
	.lcomm	_Lt_049F,4
.balign 4
	.lcomm	_Lt_04A5,4
.balign 4
	.lcomm	_Lt_04A2,4
.balign 4
	.lcomm	_Lt_04A7,4
.balign 4
	.lcomm	_Lt_04A6,4

.section .text
.balign 16
_HFLUSHCONVERT:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_035A:
cmp dword ptr [ebp+12], 0
je .Lt_035D
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_04B0], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_035E
mov dword ptr [ebp-4], 24
jmp .Lt_04AA
.Lt_035E:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_04AA:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_04B1], ebx
cmp dword ptr [_Lt_04B1], 24
jne .Lt_0361
mov dword ptr [_Lt_04B1], 12
.Lt_0361:
.Lt_0360:
mov ebx, dword ptr [_Lt_04B1]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_04B2], eax
jmp .Lt_035C
.Lt_035D:
mov dword ptr [_Lt_04B0], -1
mov dword ptr [_Lt_04B1], -2147483648
mov dword ptr [_Lt_04B2], -1
.Lt_035C:
cmp dword ptr [ebp+16], 0
je .Lt_0363
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_04B3], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0364
mov dword ptr [ebp-4], 24
jmp .Lt_04AB
.Lt_0364:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_04AB:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_04B4], ebx
cmp dword ptr [_Lt_04B4], 24
jne .Lt_0367
mov dword ptr [_Lt_04B4], 12
.Lt_0367:
.Lt_0366:
mov ebx, dword ptr [_Lt_04B4]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_04B5], eax
jmp .Lt_0362
.Lt_0363:
mov dword ptr [_Lt_04B3], -1
mov dword ptr [_Lt_04B4], -2147483648
mov dword ptr [_Lt_04B5], -1
.Lt_0362:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
mov dword ptr [_Lt_04B6], 0
mov eax, dword ptr [_Lt_04B5]
cmp eax, dword ptr [_Lt_04B2]
sete al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [_Lt_04B3]
cmp ebx, 4
sete bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_0369
cmp dword ptr [_Lt_04B5], 1
jne .Lt_036B
mov ebx, dword ptr [_IR+276]
and ebx, 1
test ebx, ebx
je .Lt_036D
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebp+12]
mov ecx, dword ptr [ebx+16]
mov dword ptr [eax+16], ecx
mov ecx, dword ptr [ebp+16]
cmp dword ptr [ecx+16], 0
jne .Lt_036F
jmp .Lt_035B
.Lt_036F:
jmp .Lt_036C
.Lt_036D:
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
mov ebx, dword ptr [_Lt_04B2]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_04B2]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax+20]
add esp, 16
jmp .Lt_035B
.Lt_036C:
.Lt_036B:
.Lt_036A:
push dword ptr [ebp+16]
call dword ptr [_IR+260]
add esp, 4
cmp eax, 2147483647
jne .Lt_0371
mov eax, dword ptr [_Lt_04B1]
and eax, 480
je .Lt_0372
mov dword ptr [ebp-4], 24
jmp .Lt_04AC
.Lt_0372:
mov eax, dword ptr [_Lt_04B1]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_04AC:
mov eax, dword ptr [ebp-4]
imul eax, 28
mov ebx, dword ptr [_SYMB_DTYPETB+eax+4]
mov dword ptr [ebp-8], ebx
cmp dword ptr [ebp-8], 1
je .Lt_0377
.Lt_0378:
cmp dword ptr [ebp-8], 8
jne .Lt_0376
.Lt_0377:
jmp .Lt_0374
.Lt_0376:
mov ebx, dword ptr [_Lt_04B4]
and ebx, 480
je .Lt_037A
mov dword ptr [ebp-12], 24
jmp .Lt_04AD
.Lt_037A:
mov ebx, dword ptr [_Lt_04B4]
and ebx, 31
mov dword ptr [ebp-12], ebx
.Lt_04AD:
mov ebx, dword ptr [ebp-12]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx+4]
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 1
je .Lt_037F
.Lt_0380:
cmp dword ptr [ebp-16], 8
jne .Lt_037E
.Lt_037F:
jmp .Lt_037C
.Lt_037E:
mov dword ptr [_Lt_04B6], -1
.Lt_0381:
.Lt_037C:
.Lt_0379:
.Lt_0374:
.Lt_0371:
.Lt_0370:
.Lt_0369:
.Lt_0368:
cmp dword ptr [_Lt_04B6], 0
je .Lt_0383
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
mov ecx, dword ptr [_Lt_04B2]
push dword ptr [_REGTB+ecx*4]
mov ecx, dword ptr [_Lt_04B2]
mov ebx, dword ptr [_REGTB+ecx*4]
call dword ptr [ebx+20]
add esp, 16
jmp .Lt_0382
.Lt_0383:
cmp dword ptr [_Lt_04B3], 4
jne .Lt_0385
mov ebx, dword ptr [_Lt_04B4]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_04B4]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_0387
mov ecx, dword ptr [ebp+16]
mov ebx, dword ptr [ecx+52]
mov dword ptr [_Lt_04BB], ebx
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+16]
push dword ptr [_Lt_04BB]
mov ebx, dword ptr [_Lt_04B5]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_04B5]
mov ecx, dword ptr [_REGTB+ebx*4]
call dword ptr [ecx]
add esp, 16
mov dword ptr [_Lt_04B4], 8
.Lt_0387:
.Lt_0386:
mov ecx, dword ptr [_Lt_04B4]
and ecx, 480
je .Lt_0388
mov dword ptr [ebp-8], 24
jmp .Lt_04AE
.Lt_0388:
mov ecx, dword ptr [_Lt_04B4]
and ecx, 31
mov dword ptr [ebp-8], ecx
.Lt_04AE:
mov ecx, dword ptr [ebp-8]
imul ecx, 28
push dword ptr [_SYMB_DTYPETB+ecx+4]
push 0
push dword ptr [ebp+16]
mov ecx, dword ptr [_Lt_04B5]
push dword ptr [_REGTB+ecx*4]
mov ecx, dword ptr [_Lt_04B5]
mov ebx, dword ptr [_REGTB+ecx*4]
call dword ptr [ebx]
add esp, 16
.Lt_0385:
.Lt_0384:
mov ebx, dword ptr [_Lt_04B1]
cmp ebx, 13
sete bl
shr ebx, 1
sbb ebx, ebx
mov ecx, dword ptr [_Lt_04B1]
cmp ecx, 14
sete cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
je .Lt_038B
mov ecx, dword ptr [ebp+12]
mov ebx, dword ptr [ecx+52]
mov dword ptr [_Lt_04BB], ebx
push dword ptr [_SYMB_DTYPETB+228]
push dword ptr [ebp+12]
push dword ptr [_Lt_04BB]
mov ebx, dword ptr [_Lt_04B2]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_04B2]
mov ecx, dword ptr [_REGTB+ebx*4]
call dword ptr [ecx+4]
add esp, 16
mov ecx, dword ptr [_Lt_04BB]
mov dword ptr [ecx+12], eax
mov eax, dword ptr [_Lt_04BB]
mov dword ptr [eax], 4
mov dword ptr [_Lt_04B1], 8
.Lt_038B:
.Lt_038A:
mov eax, dword ptr [_Lt_04B1]
and eax, 480
je .Lt_038C
mov dword ptr [ebp-4], 24
jmp .Lt_04AF
.Lt_038C:
mov eax, dword ptr [_Lt_04B1]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_04AF:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [_Lt_04B2]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_04B2]
mov ecx, dword ptr [_REGTB+eax*4]
call dword ptr [ecx+4]
add esp, 16
mov ecx, dword ptr [ebp+12]
mov dword ptr [ecx+12], eax
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], 4
.Lt_0382:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITLOAD
add esp, 8
cmp dword ptr [_Lt_04B6], 0
jne .Lt_038F
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
jmp .Lt_038E
.Lt_038F:
mov eax, dword ptr [ebp+16]
mov dword ptr [eax+12], -1
.Lt_038E:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
.Lt_035B:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_04B0,4
.balign 4
	.lcomm	_Lt_04B1,4
.balign 4
	.lcomm	_Lt_04B2,4
.balign 4
	.lcomm	_Lt_04B3,4
.balign 4
	.lcomm	_Lt_04B4,4
.balign 4
	.lcomm	_Lt_04B5,4
.balign 4
	.lcomm	_Lt_04B6,4
.balign 4
	.lcomm	_Lt_04BB,4

.section .text
.balign 16
_HFLUSHADDR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0390:
cmp dword ptr [ebp+12], 0
je .Lt_0393
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_04C2], ebx
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_0394
mov dword ptr [ebp-4], 24
jmp .Lt_04BE
.Lt_0394:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_04BE:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_04C3], ebx
cmp dword ptr [_Lt_04C3], 24
jne .Lt_0397
mov dword ptr [_Lt_04C3], 12
.Lt_0397:
.Lt_0396:
mov ebx, dword ptr [_Lt_04C3]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_04C4], eax
jmp .Lt_0392
.Lt_0393:
mov dword ptr [_Lt_04C2], -1
mov dword ptr [_Lt_04C3], -2147483648
mov dword ptr [_Lt_04C4], -1
.Lt_0392:
cmp dword ptr [ebp+16], 0
je .Lt_0399
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax]
mov dword ptr [_Lt_04C5], ebx
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_039A
mov dword ptr [ebp-4], 24
jmp .Lt_04BF
.Lt_039A:
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_04BF:
mov ebx, dword ptr [ebp-4]
mov dword ptr [_Lt_04C6], ebx
cmp dword ptr [_Lt_04C6], 24
jne .Lt_039D
mov dword ptr [_Lt_04C6], 12
.Lt_039D:
.Lt_039C:
mov ebx, dword ptr [_Lt_04C6]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [_Lt_04C7], eax
jmp .Lt_0398
.Lt_0399:
mov dword ptr [_Lt_04C5], -1
mov dword ptr [_Lt_04C6], -2147483648
mov dword ptr [_Lt_04C7], -1
.Lt_0398:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
cmp dword ptr [_Lt_04C2], 4
jne .Lt_039F
mov eax, dword ptr [_Lt_04C3]
and eax, 480
je .Lt_03A0
mov dword ptr [ebp-4], 24
jmp .Lt_04C0
.Lt_03A0:
mov eax, dword ptr [_Lt_04C3]
and eax, 31
mov dword ptr [ebp-4], eax
.Lt_04C0:
mov eax, dword ptr [ebp-4]
imul eax, 28
push dword ptr [_SYMB_DTYPETB+eax+4]
push 0
push dword ptr [ebp+12]
mov eax, dword ptr [_Lt_04C4]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [_Lt_04C4]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx]
add esp, 16
.Lt_039F:
.Lt_039E:
cmp dword ptr [_Lt_04C5], 4
jne .Lt_03A3
mov ebx, dword ptr [_Lt_04C6]
and ebx, 480
je .Lt_03A4
mov dword ptr [ebp-4], 24
jmp .Lt_04C1
.Lt_03A4:
mov ebx, dword ptr [_Lt_04C6]
and ebx, 31
mov dword ptr [ebp-4], ebx
.Lt_04C1:
mov ebx, dword ptr [ebp-4]
imul ebx, 28
push dword ptr [_SYMB_DTYPETB+ebx+4]
push 0
push dword ptr [ebp+16]
mov ebx, dword ptr [_Lt_04C7]
push dword ptr [_REGTB+ebx*4]
mov ebx, dword ptr [_Lt_04C7]
mov eax, dword ptr [_REGTB+ebx*4]
call dword ptr [eax]
add esp, 16
.Lt_03A3:
.Lt_03A2:
cmp dword ptr [ebp+8], 22
jne .Lt_03A7
.Lt_03A8:
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call _EMITADDROF
add esp, 8
jmp .Lt_03A6
.Lt_03A7:
cmp dword ptr [ebp+8], 76
jne .Lt_03A9
.Lt_03AA:
push dword ptr [ebp+12]
push dword ptr [ebp+16]
call _EMITDEREF
add esp, 8
.Lt_03A9:
.Lt_03A6:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
.Lt_0391:
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_04C2,4
.balign 4
	.lcomm	_Lt_04C3,4
.balign 4
	.lcomm	_Lt_04C4,4
.balign 4
	.lcomm	_Lt_04C5,4
.balign 4
	.lcomm	_Lt_04C6,4
.balign 4
	.lcomm	_Lt_04C7,4

.section .text
.balign 16
_HFLUSHMEM:
push ebp
mov ebp, esp
sub esp, 4
.Lt_03AB:
push dword ptr [ebp+12]
call _HLOADIDX
add esp, 4
push dword ptr [ebp+16]
call _HLOADIDX
add esp, 4
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_03AE
.Lt_03B0:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITMEMMOVE
add esp, 12
jmp .Lt_03AD
.Lt_03B1:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITMEMSWAP
add esp, 12
jmp .Lt_03AD
.Lt_03B2:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITMEMCLEAR
add esp, 8
jmp .Lt_03AD
.Lt_03B3:
push dword ptr [ebp+24]
push dword ptr [ebp+20]
call _EMITSTKCLEAR
add esp, 8
jmp .Lt_03AD
.Lt_03AE:
mov eax, dword ptr [ebp-4]
add eax, 4294967191
cmp eax, 3
ja .Lt_03AD
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_03B4+eax*4-420]
_.LT_03B4:
.int .Lt_03B0
.int .Lt_03B1
.int .Lt_03B2
.int .Lt_03B3
.Lt_03AD:
push 0
push dword ptr [ebp+12]
call _HFREEREG
add esp, 8
push 0
push dword ptr [ebp+16]
call _HFREEREG
add esp, 8
.Lt_03AC:
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHDBG:
push ebp
mov ebp, esp
sub esp, 4
.Lt_03B5:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_03B8
.Lt_03BA:
push dword ptr [ebp+20]
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITDBGLINEBEGIN
add esp, 12
jmp .Lt_03B7
.Lt_03BB:
push dword ptr [ebp+16]
push dword ptr [ebp+12]
call _EMITDBGLINEEND
add esp, 8
jmp .Lt_03B7
.Lt_03BC:
push dword ptr [ebp+16]
call _EMITDBGSCOPEBEGIN
add esp, 4
jmp .Lt_03B7
.Lt_03BD:
push dword ptr [ebp+16]
call _EMITDBGSCOPEEND
add esp, 4
jmp .Lt_03B7
.Lt_03B8:
mov eax, dword ptr [ebp-4]
add eax, 4294967183
cmp eax, 3
ja .Lt_03B7
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_03BE+eax*4-452]
_.LT_03BE:
.int .Lt_03BA
.int .Lt_03BB
.int .Lt_03BC
.int .Lt_03BD
.Lt_03B7:
.Lt_03B6:
mov esp, ebp
pop ebp
ret
.balign 16
_HFLUSHLIT:
push ebp
mov ebp, esp
.Lt_03BF:
cmp dword ptr [ebp+8], 117
jne .Lt_03C2
.Lt_03C3:
push dword ptr [ebp+12]
call _EMITCOMMENT
add esp, 4
jmp .Lt_03C1
.Lt_03C2:
cmp dword ptr [ebp+8], 118
jne .Lt_03C4
.Lt_03C5:
push dword ptr [ebp+12]
call _EMITASM
add esp, 4
.Lt_03C4:
.Lt_03C1:
cmp dword ptr [ebp+12], 0
je .Lt_03C7
push dword ptr [ebp+12]
call _free
add esp, 4
.Lt_03C7:
.Lt_03C6:
.Lt_03C0:
mov esp, ebp
pop ebp
ret
.balign 16
_HFREEIDX:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_03C8:
mov dword ptr [ebp-4], 0
cmp dword ptr [ebp+8], 0
jne .Lt_03CB
jmp .Lt_03C9
.Lt_03CB:
.Lt_03CA:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+48]
mov dword ptr [ebp-4], ebx
cmp dword ptr [ebp-4], 0
je .Lt_03CD
mov ebx, dword ptr [ebp-4]
cmp dword ptr [ebx+12], -1
je .Lt_03CF
push dword ptr [ebp+12]
push dword ptr [ebp-4]
call _HFREEREG
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+48], 0
.Lt_03CF:
.Lt_03CE:
.Lt_03CD:
.Lt_03CC:
.Lt_03C9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFREEREG:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_03D0:
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
cmp dword ptr [ebp+8], 0
jne .Lt_03D3
jmp .Lt_03D1
.Lt_03D3:
.Lt_03D2:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HFREEIDX
add esp, 8
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 4
je .Lt_03D5
jmp .Lt_03D1
.Lt_03D5:
.Lt_03D4:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+12], -1
jne .Lt_03D7
jmp .Lt_03D1
.Lt_03D7:
.Lt_03D6:
mov dword ptr [ebp-8], 2147483647
cmp dword ptr [ebp+12], 0
jne .Lt_03D9
push dword ptr [ebp+8]
call dword ptr [_IR+260]
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_03D9:
.Lt_03D8:
cmp dword ptr [ebp-8], 2147483647
jne .Lt_03DB
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+52], 0
je .Lt_03DD
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+52]
mov dword ptr [ebp-12], ebx
mov ebx, dword ptr [ebp-12]
cmp dword ptr [ebx+12], -1
je .Lt_03DF
push -1
push dword ptr [ebp-12]
call _HFREEREG
add esp, 8
.Lt_03DF:
.Lt_03DE:
.Lt_03DD:
.Lt_03DC:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 480
je .Lt_03E0
mov dword ptr [ebp-16], 24
jmp .Lt_04C8
.Lt_03E0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 31
mov dword ptr [ebp-16], ebx
.Lt_04C8:
mov ebx, dword ptr [ebp-16]
imul ebx, 28
mov eax, dword ptr [_SYMB_DTYPETB+ebx]
mov dword ptr [ebp-4], eax
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
mov eax, dword ptr [ebp-4]
push dword ptr [_REGTB+eax*4]
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [_REGTB+eax*4]
call dword ptr [ebx+12]
add esp, 8
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], -1
.Lt_03DB:
.Lt_03DA:
.Lt_03D1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__GETDISTANCE:
push ebp
mov ebp, esp
sub esp, 16
push ebx
mov dword ptr [ebp-4], 0
.Lt_03E2:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
cmp dword ptr [ebp+8], 0
jne .Lt_03E5
mov dword ptr [ebp-4], 2147483647
jmp .Lt_03E3
.Lt_03E5:
.Lt_03E4:
push dword ptr [_CTX+60]
call _FLISTGETNEXT
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jne .Lt_03E7
mov dword ptr [ebp-4], 2147483647
jmp .Lt_03E3
.Lt_03E7:
.Lt_03E6:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+64]
mov eax, dword ptr [ebp-12]
mov ecx, dword ptr [ebx]
sub ecx, dword ptr [eax]
mov dword ptr [ebp-16], ecx
cmp dword ptr [ebp-16], 0
jge .Lt_03E9
mov dword ptr [ebp-4], 2147483647
jmp .Lt_03E8
.Lt_03E9:
mov ecx, dword ptr [ebp-16]
mov dword ptr [ebp-4], ecx
.Lt_03E8:
.Lt_03E3:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__LOADVR:
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_03EA:
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
je .Lt_03ED
cmp dword ptr [ebp+16], 0
jne .Lt_03EF
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
call _EMITLOAD
add esp, 8
.Lt_03EF:
.Lt_03EE:
push -1
push dword ptr [ebp+12]
call _HFREEIDX
add esp, 8
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], 4
.Lt_03ED:
.Lt_03EC:
mov ebx, dword ptr [ebp+12]
mov eax, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
mov eax, dword ptr [_ENV+116]
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
cmp dword ptr [ebp+16], 0
setne bl
shr ebx, 1
sbb ebx, ebx
and eax, ebx
je .Lt_03F1
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx+16], 1
.Lt_03F1:
.Lt_03F0:
.Lt_03EB:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__STOREVR:
push ebp
mov ebp, esp
sub esp, 144
push ebx
push esi
.Lt_03F2:
cmp dword ptr [ebp+12], 0
je .Lt_03F5
mov eax, dword ptr [ebp+12]
mov dword ptr [ebp+8], eax
.Lt_03F5:
.Lt_03F4:
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
je .Lt_03F7
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
.Lt_03F7:
.Lt_03F6:
push dword ptr [ebp+8]
call dword ptr [_IR+260]
add esp, 4
cmp eax, 2147483647
je .Lt_03F9
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+4]
call _SYMBADDANDALLOCATETEMPVAR
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
je .Lt_03FB
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
.Lt_03FB:
.Lt_03FA:
cmp dword ptr [_ENV+116], 1
jl .Lt_03FD
mov esi, dword ptr [ebp+8]
mov dword ptr [esi+16], 1
.Lt_03FD:
.Lt_03FC:
lea esi, [ebp-68]
push esi
push dword ptr [ebp+8]
call _EMITSTORE
add esp, 8
.Lt_03F9:
.Lt_03F8:
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
je .Lt_03FF
push dword ptr [ebp-124]
push dword ptr [_REGTB]
mov ecx, dword ptr [_REGTB]
call dword ptr [ecx+12]
add esp, 8
.Lt_03FF:
.Lt_03FE:
mov ecx, dword ptr [ebp-64]
and ecx, 480
je .Lt_0400
mov dword ptr [ebp-144], 24
jmp .Lt_04CB
.Lt_0400:
mov ecx, dword ptr [ebp-64]
and ecx, 31
mov dword ptr [ebp-144], ecx
.Lt_04CB:
mov ecx, dword ptr [ebp-144]
imul ecx, 28
mov esi, dword ptr [_SYMB_DTYPETB+ecx]
mov dword ptr [ebp-140], esi
push dword ptr [ebp-56]
mov esi, dword ptr [ebp-140]
push dword ptr [_REGTB+esi*4]
mov esi, dword ptr [ebp-140]
mov ecx, dword ptr [_REGTB+esi*4]
call dword ptr [ecx+12]
add esp, 8
.Lt_03F3:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__XCHGTOS:
push ebp
mov ebp, esp
.Lt_0402:
mov dword ptr [_Lt_04D2], 4
mov dword ptr [_Lt_04D2+4], 16
mov eax, dword ptr [ebp+8]
mov dword ptr [_Lt_04D2+12], eax
push offset _Lt_04D2
call _EMITXCHGTOS
add esp, 4
.Lt_0403:
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_04D2,68

.section .data
.balign 4

.globl _IRTAC_VTBL
_IRTAC_VTBL:
.int __INIT
.int __END
.int __EMITBEGIN
.int __EMITEND
.int __GETOPTIONVALUE
.long 0
.int __PROCBEGIN
.int __PROCEND
.int __PROCALLOCARG
.int __PROCALLOCLOCAL
.int __PROCGETFRAMEREGNAME
.int __SCOPEBEGIN
.int __SCOPEEND
.int __PROCALLOCSTATICVARS
.int __EMITCONVERT
.int __EMITLABEL
.int __EMITLABELNF
.int __EMITRETURN
.int __EMITPROCBEGIN
.int __EMITPROCEND
.int __EMITPUSHARG
.int __EMITASMLINE
.int __EMITCOMMENT
.int __EMITBOP
.int __EMITUOP
.int __EMITSTORE
.int __EMITSPILLREGS
.int __EMITLOAD
.int __EMITLOADRES
.int __EMITSTACK
.int __EMITADDR
.int __EMITCALL
.int __EMITCALLPTR
.int __EMITSTACKALIGN
.int __EMITJUMPPTR
.int __EMITBRANCH
.int __EMITJMPTB
.int __EMITMEM
.int __EMITMACRO
.int __EMITSCOPEBEGIN
.int __EMITSCOPEEND
.int __EMITDECL
.int __EMITDBG
.int __EMITVARINIBEGIN
.int __EMITVARINIEND
.int __EMITVARINII
.int __EMITVARINIF
.int __EMITVARINIOFS
.int __EMITVARINISTR
.int __EMITVARINIWSTR
.int __EMITVARINIPAD
.int __EMITVARINISCOPEBEGIN
.int __EMITVARINISCOPEEND
.int __EMITFBCTINFBEGIN
.int __EMITFBCTINFSTRING
.int __EMITFBCTINFEND
.int __ALLOCVREG
.int __ALLOCVRIMM
.int __ALLOCVRIMMF
.int __ALLOCVRVAR
.int __ALLOCVRIDX
.int __ALLOCVRPTR
.int __ALLOCVROFS
.int __SETVREGDATATYPE
.int __GETDISTANCE
.int __LOADVR
.int __STOREVR
.int __XCHGTOS

.section .bss
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48
.balign 4
	.lcomm	_Lt_0072,36
.balign 4
	.lcomm	_CTX,120
.balign 4
	.lcomm	_REGTB,8

.section .data
.balign 4
_Lt_0110:	.ascii	"+\0"

.section .ctors
.int _fb_ctor__irztac
