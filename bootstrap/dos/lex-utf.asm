	.intel_syntax noprefix

.section .text
.balign 16

.globl _LEXREADUTF8
_LEXREADUTF8:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00A7:
mov dword ptr [ebp-4], 0
call _HUTF8TOCHAR
mov dword ptr [ebp-4], eax
jmp .Lt_00A9
.Lt_00AA:
jmp .Lt_00AB
call _HUTF8TOUTF16LE
mov dword ptr [ebp-4], eax
jmp .Lt_00A9
.Lt_00AB:
call _HUTF8TOUTF32LE
mov dword ptr [ebp-4], eax
.Lt_00A9:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+4316], ebx
mov ebx, dword ptr [_LEX+213248]
lea eax, [ebx+4324]
mov ebx, dword ptr [_LEX+213248]
mov dword ptr [ebx+4320], eax
.Lt_00A8:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXREADUTF16LE
_LEXREADUTF16LE:
push ebx
.Lt_00D5:
call _HUTF16LETOCHAR
mov dword ptr [_Lt_00DA], eax
jmp .Lt_00D7
.Lt_00D8:
jmp .Lt_00D9
call _HUTF16LETOUTF16LE
mov dword ptr [_Lt_00DA], eax
jmp .Lt_00D7
.Lt_00D9:
call _HUTF16LETOUTF32LE
mov dword ptr [_Lt_00DA], eax
.Lt_00D7:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [_Lt_00DA]
mov dword ptr [eax+4316], ebx
mov ebx, dword ptr [_LEX+213248]
lea eax, [ebx+4324]
mov ebx, dword ptr [_LEX+213248]
mov dword ptr [ebx+4320], eax
.Lt_00D6:
pop ebx
ret

.section .bss
.balign 4
	.lcomm	_Lt_00DA,4

.section .text
.balign 16

.globl _LEXREADUTF16BE
_LEXREADUTF16BE:
push ebx
.Lt_0102:
call _HUTF16BETOCHAR
mov dword ptr [_Lt_0107], eax
jmp .Lt_0104
.Lt_0105:
jmp .Lt_0106
call _HUTF16BETOUTF16LE
mov dword ptr [_Lt_0107], eax
jmp .Lt_0104
.Lt_0106:
call _HUTF16BETOUTF32LE
mov dword ptr [_Lt_0107], eax
.Lt_0104:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [_Lt_0107]
mov dword ptr [eax+4316], ebx
mov ebx, dword ptr [_LEX+213248]
lea eax, [ebx+4324]
mov ebx, dword ptr [_LEX+213248]
mov dword ptr [ebx+4320], eax
.Lt_0103:
pop ebx
ret

.section .bss
.balign 4
	.lcomm	_Lt_0107,4

.section .text
.balign 16

.globl _LEXREADUTF32LE
_LEXREADUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0129:
mov dword ptr [ebp-4], 0
call _HUTF32LETOCHAR
mov dword ptr [ebp-4], eax
jmp .Lt_012B
.Lt_012C:
jmp .Lt_012D
call _HUTF32LETOUTF16LE
mov dword ptr [ebp-4], eax
jmp .Lt_012B
.Lt_012D:
call _HUTF32LETOUTF32LE
mov dword ptr [ebp-4], eax
.Lt_012B:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+4316], ebx
mov ebx, dword ptr [_LEX+213248]
lea eax, [ebx+4324]
mov ebx, dword ptr [_LEX+213248]
mov dword ptr [ebx+4320], eax
.Lt_012A:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16

.globl _LEXREADUTF32BE
_LEXREADUTF32BE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_014D:
mov dword ptr [ebp-4], 0
call _HUTF32BETOCHAR
mov dword ptr [ebp-4], eax
jmp .Lt_014F
.Lt_0150:
jmp .Lt_0151
call _HUTF32BETOUTF16LE
mov dword ptr [ebp-4], eax
jmp .Lt_014F
.Lt_0151:
call _HUTF32BETOUTF32LE
mov dword ptr [ebp-4], eax
.Lt_014F:
mov eax, dword ptr [_LEX+213248]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+4316], ebx
mov ebx, dword ptr [_LEX+213248]
lea eax, [ebx+4324]
mov ebx, dword ptr [_LEX+213248]
mov dword ptr [ebx+4320], eax
.Lt_014E:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_fb_ctor__lexzutf:
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
_HUTF8TOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0069:
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
mov dword ptr [_Lt_0152], ebx
mov dword ptr [_Lt_0153], 0
.Lt_006C:
cmp dword ptr [_Lt_0153], 8192
jge .Lt_006D
push dword ptr [_ENV+276]
call _fb_FileEof
add esp, 4
test eax, eax
je .Lt_006F
jmp .Lt_006D
.Lt_006F:
.Lt_006E:
push 1
push offset _Lt_0154
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_0071
jmp .Lt_006D
.Lt_0071:
.Lt_0070:
movzx eax, byte ptr [_Lt_0154]
movzx ebx, byte ptr [_UTF8_TRAILINGTB+eax]
mov dword ptr [_Lt_0155], ebx
mov dword ptr [_Lt_0156], 0
mov ebx, offset _Lt_0154
mov dword ptr [_Lt_0157], ebx
cmp dword ptr [_Lt_0155], 0
jle .Lt_0073
push dword ptr [_Lt_0155]
push offset _Lt_0154 + 1
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_0075
jmp .Lt_006D
.Lt_0075:
.Lt_0074:
mov eax, dword ptr [_Lt_0155]
mov dword ptr [_Lt_0158], eax
.Lt_0076:
mov eax, dword ptr [_Lt_0157]
movzx ebx, byte ptr [eax]
add dword ptr [_Lt_0156], ebx
inc dword ptr [_Lt_0157]
shl dword ptr [_Lt_0156], 6
dec dword ptr [_Lt_0158]
.Lt_0078:
cmp dword ptr [_Lt_0158], 0
jg .Lt_0076
.Lt_0077:
.Lt_0073:
.Lt_0072:
mov ebx, dword ptr [_Lt_0157]
movzx eax, byte ptr [ebx]
add dword ptr [_Lt_0156], eax
mov eax, dword ptr [_Lt_0155]
mov ebx, dword ptr [_UTF8_OFFSETSTB+eax*4]
sub dword ptr [_Lt_0156], ebx
cmp dword ptr [_Lt_0156], 255
jbe .Lt_007A
mov dword ptr [_Lt_0156], 63
.Lt_007A:
.Lt_0079:
mov bl, byte ptr [_Lt_0156]
mov eax, dword ptr [_Lt_0152]
mov byte ptr [eax], bl
inc dword ptr [_Lt_0152]
inc dword ptr [_Lt_0153]
jmp .Lt_006C
.Lt_006D:
mov ebx, dword ptr [_Lt_0153]
mov dword ptr [ebp-4], ebx
.Lt_006A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0154,7
.balign 4
	.lcomm	_Lt_0157,4
.balign 4
	.lcomm	_Lt_0156,4
.balign 4
	.lcomm	_Lt_0152,4
.balign 4
	.lcomm	_Lt_0153,4
.balign 4
	.lcomm	_Lt_0155,4
.balign 4
	.lcomm	_Lt_0158,4

.section .text
.balign 16
_HUTF8TOUTF16LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_007C:
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
mov dword ptr [_Lt_0159], ebx
mov dword ptr [_Lt_015A], 0
.Lt_007F:
cmp dword ptr [_Lt_015A], 8192
jge .Lt_0080
push dword ptr [_ENV+276]
call _fb_FileEof
add esp, 4
test eax, eax
je .Lt_0082
jmp .Lt_0080
.Lt_0082:
.Lt_0081:
push 1
push offset _Lt_015B
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_0084
jmp .Lt_0080
.Lt_0084:
.Lt_0083:
movzx eax, byte ptr [_Lt_015B]
movzx ebx, byte ptr [_UTF8_TRAILINGTB+eax]
mov dword ptr [_Lt_015C], ebx
mov dword ptr [_Lt_015D], 0
mov ebx, offset _Lt_015B
mov dword ptr [_Lt_015E], ebx
cmp dword ptr [_Lt_015C], 0
jle .Lt_0086
push dword ptr [_Lt_015C]
push offset _Lt_015B + 1
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_0088
jmp .Lt_0080
.Lt_0088:
.Lt_0087:
mov eax, dword ptr [_Lt_015C]
mov dword ptr [_Lt_015F], eax
.Lt_0089:
mov eax, dword ptr [_Lt_015E]
movzx ebx, byte ptr [eax]
add dword ptr [_Lt_015D], ebx
inc dword ptr [_Lt_015E]
shl dword ptr [_Lt_015D], 6
dec dword ptr [_Lt_015F]
.Lt_008B:
cmp dword ptr [_Lt_015F], 0
jg .Lt_0089
.Lt_008A:
.Lt_0086:
.Lt_0085:
mov ebx, dword ptr [_Lt_015E]
movzx eax, byte ptr [ebx]
add dword ptr [_Lt_015D], eax
mov eax, dword ptr [_Lt_015C]
mov ebx, dword ptr [_UTF8_OFFSETSTB+eax*4]
sub dword ptr [_Lt_015D], ebx
cmp dword ptr [_Lt_015D], 65535
jbe .Lt_008D
cmp dword ptr [_Lt_015A], 8191
jge .Lt_008F
mov ebx, dword ptr [_Lt_015D]
shr ebx, 10
add ebx, 55296
mov eax, dword ptr [_Lt_0159]
mov word ptr [eax], bx
add dword ptr [_Lt_0159], 2
inc dword ptr [_Lt_015A]
.Lt_008F:
.Lt_008E:
mov ebx, dword ptr [_Lt_015D]
and ebx, 1023
add ebx, 56320
mov dword ptr [_Lt_015D], ebx
.Lt_008D:
.Lt_008C:
mov bx, word ptr [_Lt_015D]
mov eax, dword ptr [_Lt_0159]
mov word ptr [eax], bx
add dword ptr [_Lt_0159], 2
inc dword ptr [_Lt_015A]
jmp .Lt_007F
.Lt_0080:
mov ebx, dword ptr [_Lt_015A]
mov dword ptr [ebp-4], ebx
.Lt_007D:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_015B,7
.balign 4
	.lcomm	_Lt_015E,4
.balign 4
	.lcomm	_Lt_015D,4
.balign 4
	.lcomm	_Lt_0159,4
.balign 4
	.lcomm	_Lt_015A,4
.balign 4
	.lcomm	_Lt_015C,4
.balign 4
	.lcomm	_Lt_015F,4

.section .text
.balign 16
_HUTF8TOUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0090:
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
mov dword ptr [_Lt_0160], ebx
mov dword ptr [_Lt_0161], 0
.Lt_0093:
cmp dword ptr [_Lt_0161], 8192
jge .Lt_0094
push dword ptr [_ENV+276]
call _fb_FileEof
add esp, 4
test eax, eax
je .Lt_0096
jmp .Lt_0094
.Lt_0096:
.Lt_0095:
push 1
push offset _Lt_0162
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_0098
jmp .Lt_0094
.Lt_0098:
.Lt_0097:
movzx eax, byte ptr [_Lt_0162]
movzx ebx, byte ptr [_UTF8_TRAILINGTB+eax]
mov dword ptr [_Lt_0163], ebx
mov dword ptr [_Lt_0164], 0
mov ebx, offset _Lt_0162
mov dword ptr [_Lt_0165], ebx
cmp dword ptr [_Lt_0163], 0
jle .Lt_009A
push dword ptr [_Lt_0163]
push offset _Lt_0162 + 1
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_009C
jmp .Lt_0094
.Lt_009C:
.Lt_009B:
mov eax, dword ptr [_Lt_0163]
mov dword ptr [_Lt_0166], eax
.Lt_009D:
mov eax, dword ptr [_Lt_0165]
movzx ebx, byte ptr [eax]
add dword ptr [_Lt_0164], ebx
inc dword ptr [_Lt_0165]
shl dword ptr [_Lt_0164], 6
dec dword ptr [_Lt_0166]
.Lt_009F:
cmp dword ptr [_Lt_0166], 0
jg .Lt_009D
.Lt_009E:
.Lt_009A:
.Lt_0099:
mov ebx, dword ptr [_Lt_0165]
movzx eax, byte ptr [ebx]
add dword ptr [_Lt_0164], eax
mov eax, dword ptr [_Lt_0163]
mov ebx, dword ptr [_UTF8_OFFSETSTB+eax*4]
sub dword ptr [_Lt_0164], ebx
mov ebx, dword ptr [_Lt_0160]
mov eax, dword ptr [_Lt_0164]
mov dword ptr [ebx], eax
add dword ptr [_Lt_0160], 4
inc dword ptr [_Lt_0161]
jmp .Lt_0093
.Lt_0094:
mov eax, dword ptr [_Lt_0161]
mov dword ptr [ebp-4], eax
.Lt_0091:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0162,7
.balign 4
	.lcomm	_Lt_0165,4
.balign 4
	.lcomm	_Lt_0164,4
.balign 4
	.lcomm	_Lt_0160,4
.balign 4
	.lcomm	_Lt_0161,4
.balign 4
	.lcomm	_Lt_0163,4
.balign 4
	.lcomm	_Lt_0166,4

.section .text
.balign 16
_HUTF16LETOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00AC:
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
mov dword ptr [_Lt_0167], ebx
mov dword ptr [_Lt_0168], 0
.Lt_00AE:
cmp dword ptr [_Lt_0168], 8192
jge .Lt_00AF
push dword ptr [_ENV+276]
call _fb_FileEof
add esp, 4
test eax, eax
je .Lt_00B1
jmp .Lt_00AF
.Lt_00B1:
.Lt_00B0:
push 2
push offset _Lt_0169
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_00B3
jmp .Lt_00AF
.Lt_00B3:
.Lt_00B2:
movzx eax, word ptr [_Lt_0169]
cmp eax, 255
jle .Lt_00B5
movzx eax, word ptr [_Lt_0169]
cmp eax, 55296
jl .Lt_00B7
movzx eax, word ptr [_Lt_0169]
cmp eax, 56319
jg .Lt_00B9
push 2
push offset _Lt_0169
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_00BB
jmp .Lt_00AF
.Lt_00BB:
.Lt_00BA:
.Lt_00B9:
.Lt_00B8:
.Lt_00B7:
.Lt_00B6:
mov word ptr [_Lt_0169], 63
.Lt_00B5:
.Lt_00B4:
mov al, byte ptr [_Lt_0169]
mov ebx, dword ptr [_Lt_0167]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0167]
inc dword ptr [_Lt_0168]
jmp .Lt_00AE
.Lt_00AF:
mov eax, dword ptr [_Lt_0168]
mov dword ptr [ebp-4], eax
.Lt_00AD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0169,2
.balign 4
	.lcomm	_Lt_0167,4
.balign 4
	.lcomm	_Lt_0168,4

.section .text
.balign 16
_HUTF16LETOUTF16LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_00BC:
push 8193
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
push ebx
push 0
push dword ptr [_ENV+276]
call _fb_FileGetWstr
add esp, 16
test eax, eax
jne .Lt_00BF
push 0
push 2
push dword ptr [_ENV+276]
call _fb_FileTell
add esp, 4
mov ebx, dword ptr [_LEX+213248]
mov esi, dword ptr [ebx+12520]
mov ecx, esi
sar ecx, 31
sub eax, esi
sbb edx, ecx
mov edi, eax
mov ebx, edx
push ebx
push edi
call ___udivdi3
add esp, 16
mov edi, eax
mov dword ptr [ebp-4], edi
jmp .Lt_00BE
.Lt_00BF:
mov dword ptr [ebp-4], 0
.Lt_00BE:
.Lt_00BD:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HUTF16LETOUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00C0:
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
mov dword ptr [_Lt_016A], ebx
mov dword ptr [_Lt_016B], 0
.Lt_00C2:
cmp dword ptr [_Lt_016B], 8192
jge .Lt_00C3
push dword ptr [_ENV+276]
call _fb_FileEof
add esp, 4
test eax, eax
je .Lt_00C5
jmp .Lt_00C3
.Lt_00C5:
.Lt_00C4:
push 2
push offset _Lt_016C
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_00C7
jmp .Lt_00C3
.Lt_00C7:
.Lt_00C6:
movzx eax, word ptr [_Lt_016C]
mov dword ptr [_Lt_016D], eax
cmp dword ptr [_Lt_016D], 55296
jb .Lt_00C9
cmp dword ptr [_Lt_016D], 56319
ja .Lt_00CB
push 2
push offset _Lt_016C
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_00CD
jmp .Lt_00C3
.Lt_00CD:
.Lt_00CC:
mov eax, dword ptr [_Lt_016D]
add eax, 4294912000
shl eax, 10
movzx ebx, word ptr [_Lt_016C]
add eax, ebx
add eax, 9216
mov dword ptr [_Lt_016D], eax
.Lt_00CB:
.Lt_00CA:
.Lt_00C9:
.Lt_00C8:
mov eax, dword ptr [_Lt_016A]
mov ebx, dword ptr [_Lt_016D]
mov dword ptr [eax], ebx
add dword ptr [_Lt_016A], 4
inc dword ptr [_Lt_016B]
jmp .Lt_00C2
.Lt_00C3:
mov ebx, dword ptr [_Lt_016B]
mov dword ptr [ebp-4], ebx
.Lt_00C1:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_016C,2
.balign 4
	.lcomm	_Lt_016D,4
.balign 4
	.lcomm	_Lt_016A,4
.balign 4
	.lcomm	_Lt_016B,4

.section .text
.balign 16
_HUTF16BETOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DB:
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
mov dword ptr [_Lt_016E], ebx
mov dword ptr [_Lt_016F], 0
.Lt_00DD:
cmp dword ptr [_Lt_016F], 8192
jge .Lt_00DE
push dword ptr [_ENV+276]
call _fb_FileEof
add esp, 4
test eax, eax
je .Lt_00E0
jmp .Lt_00DE
.Lt_00E0:
.Lt_00DF:
push 2
push offset _Lt_0170
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_00E2
jmp .Lt_00DE
.Lt_00E2:
.Lt_00E1:
movzx eax, word ptr [_Lt_0170]
sar eax, 8
movzx ebx, word ptr [_Lt_0170]
sal ebx, 8
and ebx, 65280
or eax, ebx
mov word ptr [_Lt_0170], ax
movzx eax, word ptr [_Lt_0170]
cmp eax, 255
jle .Lt_00E4
movzx eax, word ptr [_Lt_0170]
cmp eax, 55296
jl .Lt_00E6
movzx eax, word ptr [_Lt_0170]
cmp eax, 56319
jg .Lt_00E8
push 2
push offset _Lt_0170
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_00EA
jmp .Lt_00DE
.Lt_00EA:
.Lt_00E9:
.Lt_00E8:
.Lt_00E7:
.Lt_00E6:
.Lt_00E5:
mov word ptr [_Lt_0170], 63
.Lt_00E4:
.Lt_00E3:
mov al, byte ptr [_Lt_0170]
mov ebx, dword ptr [_Lt_016E]
mov byte ptr [ebx], al
inc dword ptr [_Lt_016E]
inc dword ptr [_Lt_016F]
jmp .Lt_00DD
.Lt_00DE:
mov eax, dword ptr [_Lt_016F]
mov dword ptr [ebp-4], eax
.Lt_00DC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0170,2
.balign 4
	.lcomm	_Lt_016E,4
.balign 4
	.lcomm	_Lt_016F,4

.section .text
.balign 16
_HUTF16BETOUTF16LE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EB:
call _HUTF16LETOUTF16LE
mov dword ptr [_Lt_0171], eax
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
mov dword ptr [_Lt_0172], ebx
mov dword ptr [_Lt_0173], 1
mov ebx, dword ptr [_Lt_0171]
mov dword ptr [ebp-8], ebx
jmp .Lt_00EE
.Lt_00F1:
mov ebx, dword ptr [_Lt_0172]
mov ax, word ptr [ebx]
mov word ptr [_Lt_0174], ax
movzx eax, word ptr [_Lt_0174]
sar eax, 8
movzx ebx, word ptr [_Lt_0174]
sal ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [_Lt_0172]
mov word ptr [ebx], ax
add dword ptr [_Lt_0172], 2
.Lt_00EF:
inc dword ptr [_Lt_0173]
.Lt_00EE:
mov eax, dword ptr [ebp-8]
cmp dword ptr [_Lt_0173], eax
jle .Lt_00F1
.Lt_00F0:
mov eax, dword ptr [_Lt_0171]
mov dword ptr [ebp-4], eax
.Lt_00EC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0172,4
.balign 4
	.lcomm	_Lt_0174,2
.balign 4
	.lcomm	_Lt_0173,4
.balign 4
	.lcomm	_Lt_0171,4

.section .text
.balign 16
_HUTF16BETOUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00F2:
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
mov dword ptr [_Lt_0175], ebx
mov dword ptr [_Lt_0176], 0
.Lt_00F4:
cmp dword ptr [_Lt_0176], 8192
jge .Lt_00F5
push dword ptr [_ENV+276]
call _fb_FileEof
add esp, 4
test eax, eax
je .Lt_00F7
jmp .Lt_00F5
.Lt_00F7:
.Lt_00F6:
push 2
push offset _Lt_0177
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_00F9
jmp .Lt_00F5
.Lt_00F9:
.Lt_00F8:
movzx eax, word ptr [_Lt_0177]
sar eax, 8
movzx ebx, word ptr [_Lt_0177]
sal ebx, 8
and ebx, 65280
or eax, ebx
mov ecx, eax
mov dword ptr [_Lt_0178], ecx
cmp dword ptr [_Lt_0178], 55296
jb .Lt_00FB
cmp dword ptr [_Lt_0178], 56319
ja .Lt_00FD
push 2
push offset _Lt_0177
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_00FF
jmp .Lt_00F5
.Lt_00FF:
.Lt_00FE:
mov eax, dword ptr [_Lt_0178]
add eax, 4294912000
shl eax, 10
movzx ecx, word ptr [_Lt_0177]
sar ecx, 8
movzx ebx, word ptr [_Lt_0177]
sal ebx, 8
and ebx, 65280
or ecx, ebx
mov esi, ecx
add eax, esi
add eax, 9216
mov dword ptr [_Lt_0178], eax
.Lt_00FD:
.Lt_00FC:
.Lt_00FB:
.Lt_00FA:
mov eax, dword ptr [_Lt_0175]
mov esi, dword ptr [_Lt_0178]
mov dword ptr [eax], esi
add dword ptr [_Lt_0175], 4
inc dword ptr [_Lt_0176]
jmp .Lt_00F4
.Lt_00F5:
mov esi, dword ptr [_Lt_0176]
mov dword ptr [ebp-4], esi
.Lt_00F3:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0177,2
.balign 4
	.lcomm	_Lt_0178,4
.balign 4
	.lcomm	_Lt_0175,4
.balign 4
	.lcomm	_Lt_0176,4

.section .text
.balign 16
_HUTF32LETOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0108:
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
mov dword ptr [_Lt_0179], ebx
mov dword ptr [_Lt_017A], 0
.Lt_010A:
cmp dword ptr [_Lt_017A], 8192
jge .Lt_010B
push dword ptr [_ENV+276]
call _fb_FileEof
add esp, 4
test eax, eax
je .Lt_010D
jmp .Lt_010B
.Lt_010D:
.Lt_010C:
push 4
push offset _Lt_017B
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_010F
jmp .Lt_010B
.Lt_010F:
.Lt_010E:
cmp dword ptr [_Lt_017B], 255
jbe .Lt_0111
mov dword ptr [_Lt_017B], 63
.Lt_0111:
.Lt_0110:
mov al, byte ptr [_Lt_017B]
mov ebx, dword ptr [_Lt_0179]
mov byte ptr [ebx], al
inc dword ptr [_Lt_0179]
inc dword ptr [_Lt_017A]
jmp .Lt_010A
.Lt_010B:
mov eax, dword ptr [_Lt_017A]
mov dword ptr [ebp-4], eax
.Lt_0109:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_017B,4
.balign 4
	.lcomm	_Lt_0179,4
.balign 4
	.lcomm	_Lt_017A,4

.section .text
.balign 16
_HUTF32LETOUTF16LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0112:
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
mov dword ptr [_Lt_017C], ebx
mov dword ptr [_Lt_017D], 0
.Lt_0114:
cmp dword ptr [_Lt_017D], 8192
jge .Lt_0115
push dword ptr [_ENV+276]
call _fb_FileEof
add esp, 4
test eax, eax
je .Lt_0117
jmp .Lt_0115
.Lt_0117:
.Lt_0116:
push 4
push offset _Lt_017E
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_0119
jmp .Lt_0115
.Lt_0119:
.Lt_0118:
cmp dword ptr [_Lt_017E], 65535
jbe .Lt_011B
cmp dword ptr [_Lt_017D], 8191
jge .Lt_011D
mov eax, dword ptr [_Lt_017E]
shr eax, 10
add eax, 55296
mov ebx, dword ptr [_Lt_017C]
mov word ptr [ebx], ax
add dword ptr [_Lt_017C], 2
inc dword ptr [_Lt_017D]
.Lt_011D:
.Lt_011C:
mov eax, dword ptr [_Lt_017E]
and eax, 1023
add eax, 56320
mov dword ptr [_Lt_017E], eax
.Lt_011B:
.Lt_011A:
mov ax, word ptr [_Lt_017E]
mov ebx, dword ptr [_Lt_017C]
mov word ptr [ebx], ax
add dword ptr [_Lt_017C], 2
inc dword ptr [_Lt_017D]
jmp .Lt_0114
.Lt_0115:
mov eax, dword ptr [_Lt_017D]
mov dword ptr [ebp-4], eax
.Lt_0113:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_017E,4
.balign 4
	.lcomm	_Lt_017C,4
.balign 4
	.lcomm	_Lt_017D,4

.section .text
.balign 16
_HUTF32LETOUTF32LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_011E:
push 8193
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
push ebx
push 0
push dword ptr [_ENV+276]
call _fb_FileGetWstr
add esp, 16
test eax, eax
jne .Lt_0121
push 0
push 4
push dword ptr [_ENV+276]
call _fb_FileTell
add esp, 4
mov ebx, dword ptr [_LEX+213248]
mov esi, dword ptr [ebx+12520]
mov ecx, esi
sar ecx, 31
sub eax, esi
sbb edx, ecx
mov edi, eax
mov ebx, edx
push ebx
push edi
call ___udivdi3
add esp, 16
mov edi, eax
mov dword ptr [ebp-4], edi
jmp .Lt_0120
.Lt_0121:
mov dword ptr [ebp-4], 0
.Lt_0120:
.Lt_011F:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HUTF32BETOCHAR:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_012E:
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
mov dword ptr [_Lt_017F], ebx
mov dword ptr [_Lt_0180], 0
.Lt_0130:
cmp dword ptr [_Lt_0180], 8192
jge .Lt_0131
push dword ptr [_ENV+276]
call _fb_FileEof
add esp, 4
test eax, eax
je .Lt_0133
jmp .Lt_0131
.Lt_0133:
.Lt_0132:
push 4
push offset _Lt_0181
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_0135
jmp .Lt_0131
.Lt_0135:
.Lt_0134:
mov eax, dword ptr [_Lt_0181]
shr eax, 24
mov ebx, dword ptr [_Lt_0181]
shl ebx, 8
and ebx, 16711680
or eax, ebx
mov ebx, dword ptr [_Lt_0181]
shr ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [_Lt_0181]
shl ebx, 24
or eax, ebx
mov dword ptr [_Lt_0181], eax
cmp dword ptr [_Lt_0181], 255
jbe .Lt_0137
mov dword ptr [_Lt_0181], 63
.Lt_0137:
.Lt_0136:
mov al, byte ptr [_Lt_0181]
mov ebx, dword ptr [_Lt_017F]
mov byte ptr [ebx], al
inc dword ptr [_Lt_017F]
inc dword ptr [_Lt_0180]
jmp .Lt_0130
.Lt_0131:
mov eax, dword ptr [_Lt_0180]
mov dword ptr [ebp-4], eax
.Lt_012F:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0181,4
.balign 4
	.lcomm	_Lt_017F,4
.balign 4
	.lcomm	_Lt_0180,4

.section .text
.balign 16
_HUTF32BETOUTF16LE:
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0138:
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
mov dword ptr [_Lt_0182], ebx
mov dword ptr [_Lt_0183], 0
.Lt_013A:
cmp dword ptr [_Lt_0183], 8192
jge .Lt_013B
push dword ptr [_ENV+276]
call _fb_FileEof
add esp, 4
test eax, eax
je .Lt_013D
jmp .Lt_013B
.Lt_013D:
.Lt_013C:
push 4
push offset _Lt_0184
push 0
push dword ptr [_ENV+276]
call _fb_FileGet
add esp, 16
test eax, eax
je .Lt_013F
jmp .Lt_013B
.Lt_013F:
.Lt_013E:
mov eax, dword ptr [_Lt_0184]
shr eax, 24
mov ebx, dword ptr [_Lt_0184]
shl ebx, 8
and ebx, 16711680
or eax, ebx
mov ebx, dword ptr [_Lt_0184]
shr ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [_Lt_0184]
shl ebx, 24
or eax, ebx
mov dword ptr [_Lt_0184], eax
cmp dword ptr [_Lt_0184], 65535
jbe .Lt_0141
cmp dword ptr [_Lt_0183], 8191
jge .Lt_0143
mov eax, dword ptr [_Lt_0184]
shr eax, 10
add eax, 55296
mov ebx, dword ptr [_Lt_0182]
mov word ptr [ebx], ax
add dword ptr [_Lt_0182], 2
inc dword ptr [_Lt_0183]
.Lt_0143:
.Lt_0142:
mov eax, dword ptr [_Lt_0184]
and eax, 1023
add eax, 56320
mov dword ptr [_Lt_0184], eax
.Lt_0141:
.Lt_0140:
mov ax, word ptr [_Lt_0184]
mov ebx, dword ptr [_Lt_0182]
mov word ptr [ebx], ax
add dword ptr [_Lt_0182], 2
inc dword ptr [_Lt_0183]
jmp .Lt_013A
.Lt_013B:
mov eax, dword ptr [_Lt_0183]
mov dword ptr [ebp-4], eax
.Lt_0139:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0184,4
.balign 4
	.lcomm	_Lt_0182,4
.balign 4
	.lcomm	_Lt_0183,4

.section .text
.balign 16
_HUTF32BETOUTF32LE:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_0144:
call _HUTF32LETOUTF32LE
mov dword ptr [_Lt_0185], eax
mov eax, dword ptr [_LEX+213248]
lea ebx, [eax+4324]
mov dword ptr [_Lt_0186], ebx
mov dword ptr [_Lt_0187], 1
mov ebx, dword ptr [_Lt_0185]
mov dword ptr [ebp-8], ebx
jmp .Lt_0147
.Lt_014A:
mov ebx, dword ptr [_Lt_0186]
mov eax, dword ptr [ebx]
mov dword ptr [_Lt_0188], eax
mov eax, dword ptr [_Lt_0188]
shr eax, 24
mov ebx, dword ptr [_Lt_0188]
shl ebx, 8
and ebx, 16711680
or eax, ebx
mov ebx, dword ptr [_Lt_0188]
shr ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [_Lt_0188]
shl ebx, 24
or eax, ebx
mov ebx, dword ptr [_Lt_0186]
mov dword ptr [ebx], eax
add dword ptr [_Lt_0186], 4
.Lt_0148:
inc dword ptr [_Lt_0187]
.Lt_0147:
mov eax, dword ptr [ebp-8]
cmp dword ptr [_Lt_0187], eax
jle .Lt_014A
.Lt_0149:
mov eax, dword ptr [_Lt_0185]
mov dword ptr [ebp-4], eax
.Lt_0145:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .bss
.balign 4
	.lcomm	_Lt_0186,4
.balign 4
	.lcomm	_Lt_0188,4
.balign 4
	.lcomm	_Lt_0187,4
.balign 4
	.lcomm	_Lt_0185,4
.balign 4
	.lcomm	_Lt_005B,36
.balign 4
	.lcomm	_Lt_005C,36
.balign 4
	.lcomm	_Lt_005D,48

.section .data
.balign 4
_UTF8_TRAILINGTB:
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 0
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 1
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 2
.byte 3
.byte 3
.byte 3
.byte 3
.byte 3
.byte 3
.byte 3
.byte 3
.byte 4
.byte 4
.byte 4
.byte 4
.byte 5
.byte 5
.byte 5
.byte 5
.balign 4
_UTF8_OFFSETSTB:
.int 0
.int 12416
.int 925824
.int 63447168
.int 4194836608
.int 2181570688

.section .ctors
.int _fb_ctor__lexzutf
