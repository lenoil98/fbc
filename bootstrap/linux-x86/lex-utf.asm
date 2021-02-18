	.intel_syntax noprefix

.section .text
.balign 16

.globl LEXREADUTF8
LEXREADUTF8:
.type LEXREADUTF8, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00A6:
mov dword ptr [ebp-4], 0
jmp .Lt_00A9
call HUTF8TOCHAR
mov dword ptr [ebp-4], eax
jmp .Lt_00A8
.Lt_00A9:
jmp .Lt_00AA
call HUTF8TOUTF16LE
mov dword ptr [ebp-4], eax
jmp .Lt_00A8
.Lt_00AA:
call HUTF8TOUTF32LE
mov dword ptr [ebp-4], eax
.Lt_00A8:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+16604], ebx
mov ebx, dword ptr [LEX+839936]
lea eax, [ebx+16612]
mov ebx, dword ptr [LEX+839936]
mov dword ptr [ebx+16608], eax
.Lt_00A7:
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXREADUTF8, .-LEXREADUTF8
.balign 16

.globl LEXREADUTF16LE
LEXREADUTF16LE:
.type LEXREADUTF16LE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00D4:
jmp .Lt_00D7
call HUTF16LETOCHAR
mov dword ptr [Lt_00D9], eax
jmp .Lt_00D6
.Lt_00D7:
jmp .Lt_00D8
call HUTF16LETOUTF16LE
mov dword ptr [Lt_00D9], eax
jmp .Lt_00D6
.Lt_00D8:
call HUTF16LETOUTF32LE
mov dword ptr [Lt_00D9], eax
.Lt_00D6:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [Lt_00D9]
mov dword ptr [eax+16604], ebx
mov ebx, dword ptr [LEX+839936]
lea eax, [ebx+16612]
mov ebx, dword ptr [LEX+839936]
mov dword ptr [ebx+16608], eax
.Lt_00D5:
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXREADUTF16LE, .-LEXREADUTF16LE

.section .bss
.balign 4
	.lcomm	Lt_00D9,4

.section .text
.balign 16

.globl LEXREADUTF16BE
LEXREADUTF16BE:
.type LEXREADUTF16BE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0101:
jmp .Lt_0104
call HUTF16BETOCHAR
mov dword ptr [Lt_0106], eax
jmp .Lt_0103
.Lt_0104:
jmp .Lt_0105
call HUTF16BETOUTF16LE
mov dword ptr [Lt_0106], eax
jmp .Lt_0103
.Lt_0105:
call HUTF16BETOUTF32LE
mov dword ptr [Lt_0106], eax
.Lt_0103:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [Lt_0106]
mov dword ptr [eax+16604], ebx
mov ebx, dword ptr [LEX+839936]
lea eax, [ebx+16612]
mov ebx, dword ptr [LEX+839936]
mov dword ptr [ebx+16608], eax
.Lt_0102:
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXREADUTF16BE, .-LEXREADUTF16BE

.section .bss
.balign 4
	.lcomm	Lt_0106,4

.section .text
.balign 16

.globl LEXREADUTF32LE
LEXREADUTF32LE:
.type LEXREADUTF32LE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0128:
mov dword ptr [ebp-4], 0
jmp .Lt_012B
call HUTF32LETOCHAR
mov dword ptr [ebp-4], eax
jmp .Lt_012A
.Lt_012B:
jmp .Lt_012C
call HUTF32LETOUTF16LE
mov dword ptr [ebp-4], eax
jmp .Lt_012A
.Lt_012C:
call HUTF32LETOUTF32LE
mov dword ptr [ebp-4], eax
.Lt_012A:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+16604], ebx
mov ebx, dword ptr [LEX+839936]
lea eax, [ebx+16612]
mov ebx, dword ptr [LEX+839936]
mov dword ptr [ebx+16608], eax
.Lt_0129:
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXREADUTF32LE, .-LEXREADUTF32LE
.balign 16

.globl LEXREADUTF32BE
LEXREADUTF32BE:
.type LEXREADUTF32BE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_014C:
mov dword ptr [ebp-4], 0
jmp .Lt_014F
call HUTF32BETOCHAR
mov dword ptr [ebp-4], eax
jmp .Lt_014E
.Lt_014F:
jmp .Lt_0150
call HUTF32BETOUTF16LE
mov dword ptr [ebp-4], eax
jmp .Lt_014E
.Lt_0150:
call HUTF32BETOUTF32LE
mov dword ptr [ebp-4], eax
.Lt_014E:
mov eax, dword ptr [LEX+839936]
mov ebx, dword ptr [ebp-4]
mov dword ptr [eax+16604], ebx
mov ebx, dword ptr [LEX+839936]
lea eax, [ebx+16612]
mov ebx, dword ptr [LEX+839936]
mov dword ptr [ebx+16608], eax
.Lt_014D:
pop ebx
mov esp, ebp
pop ebp
ret
.size LEXREADUTF32BE, .-LEXREADUTF32BE
.balign 16
fb_ctor__lexzutf:
.type fb_ctor__lexzutf, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0002:
.Lt_0003:
mov esp, ebp
pop ebp
ret
.size fb_ctor__lexzutf, .-fb_ctor__lexzutf
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
HUTF8TOCHAR:
.type HUTF8TOCHAR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0068:
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
mov dword ptr [Lt_0151], ebx
mov dword ptr [Lt_0152], 0
.Lt_006B:
cmp dword ptr [Lt_0152], 8192
jge .Lt_006C
sub esp, 12
push dword ptr [ENV+276]
call fb_FileEof
add esp, 16
test eax, eax
je .Lt_006E
jmp .Lt_006C
.Lt_006E:
.Lt_006D:
push 1
push offset Lt_0153
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_0070
jmp .Lt_006C
.Lt_0070:
.Lt_006F:
movzx eax, byte ptr [Lt_0153]
movzx ebx, byte ptr [UTF8_TRAILINGTB+eax]
mov dword ptr [Lt_0154], ebx
mov dword ptr [Lt_0155], 0
mov ebx, offset Lt_0153
mov dword ptr [Lt_0156], ebx
cmp dword ptr [Lt_0154], 0
jle .Lt_0072
push dword ptr [Lt_0154]
push offset Lt_0153 + 1
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_0074
jmp .Lt_006C
.Lt_0074:
.Lt_0073:
mov eax, dword ptr [Lt_0154]
mov dword ptr [Lt_0157], eax
.Lt_0075:
mov eax, dword ptr [Lt_0156]
movzx ebx, byte ptr [eax]
add dword ptr [Lt_0155], ebx
inc dword ptr [Lt_0156]
shl dword ptr [Lt_0155], 6
dec dword ptr [Lt_0157]
.Lt_0077:
cmp dword ptr [Lt_0157], 0
jg .Lt_0075
.Lt_0076:
.Lt_0072:
.Lt_0071:
mov ebx, dword ptr [Lt_0156]
movzx eax, byte ptr [ebx]
add dword ptr [Lt_0155], eax
mov eax, dword ptr [Lt_0154]
mov ebx, dword ptr [UTF8_OFFSETSTB+eax*4]
sub dword ptr [Lt_0155], ebx
cmp dword ptr [Lt_0155], 255
jbe .Lt_0079
mov dword ptr [Lt_0155], 63
.Lt_0079:
.Lt_0078:
mov bl, byte ptr [Lt_0155]
mov eax, dword ptr [Lt_0151]
mov byte ptr [eax], bl
inc dword ptr [Lt_0151]
inc dword ptr [Lt_0152]
jmp .Lt_006B
.Lt_006C:
mov ebx, dword ptr [Lt_0152]
mov dword ptr [ebp-4], ebx
.Lt_0069:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF8TOCHAR, .-HUTF8TOCHAR

.section .bss
.balign 4
	.lcomm	Lt_0153,7
.balign 4
	.lcomm	Lt_0156,4
.balign 4
	.lcomm	Lt_0155,4
.balign 4
	.lcomm	Lt_0151,4
.balign 4
	.lcomm	Lt_0152,4
.balign 4
	.lcomm	Lt_0154,4
.balign 4
	.lcomm	Lt_0157,4

.section .text
.balign 16
HUTF8TOUTF16LE:
.type HUTF8TOUTF16LE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_007B:
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
mov dword ptr [Lt_0158], ebx
mov dword ptr [Lt_0159], 0
.Lt_007E:
cmp dword ptr [Lt_0159], 8192
jge .Lt_007F
sub esp, 12
push dword ptr [ENV+276]
call fb_FileEof
add esp, 16
test eax, eax
je .Lt_0081
jmp .Lt_007F
.Lt_0081:
.Lt_0080:
push 1
push offset Lt_015A
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_0083
jmp .Lt_007F
.Lt_0083:
.Lt_0082:
movzx eax, byte ptr [Lt_015A]
movzx ebx, byte ptr [UTF8_TRAILINGTB+eax]
mov dword ptr [Lt_015B], ebx
mov dword ptr [Lt_015C], 0
mov ebx, offset Lt_015A
mov dword ptr [Lt_015D], ebx
cmp dword ptr [Lt_015B], 0
jle .Lt_0085
push dword ptr [Lt_015B]
push offset Lt_015A + 1
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_0087
jmp .Lt_007F
.Lt_0087:
.Lt_0086:
mov eax, dword ptr [Lt_015B]
mov dword ptr [Lt_015E], eax
.Lt_0088:
mov eax, dword ptr [Lt_015D]
movzx ebx, byte ptr [eax]
add dword ptr [Lt_015C], ebx
inc dword ptr [Lt_015D]
shl dword ptr [Lt_015C], 6
dec dword ptr [Lt_015E]
.Lt_008A:
cmp dword ptr [Lt_015E], 0
jg .Lt_0088
.Lt_0089:
.Lt_0085:
.Lt_0084:
mov ebx, dword ptr [Lt_015D]
movzx eax, byte ptr [ebx]
add dword ptr [Lt_015C], eax
mov eax, dword ptr [Lt_015B]
mov ebx, dword ptr [UTF8_OFFSETSTB+eax*4]
sub dword ptr [Lt_015C], ebx
cmp dword ptr [Lt_015C], 65535
jbe .Lt_008C
cmp dword ptr [Lt_0159], 8191
jge .Lt_008E
mov ebx, dword ptr [Lt_015C]
shr ebx, 10
add ebx, 55296
mov eax, dword ptr [Lt_0158]
mov word ptr [eax], bx
add dword ptr [Lt_0158], 2
inc dword ptr [Lt_0159]
.Lt_008E:
.Lt_008D:
mov ebx, dword ptr [Lt_015C]
and ebx, 1023
add ebx, 56320
mov dword ptr [Lt_015C], ebx
.Lt_008C:
.Lt_008B:
mov bx, word ptr [Lt_015C]
mov eax, dword ptr [Lt_0158]
mov word ptr [eax], bx
add dword ptr [Lt_0158], 2
inc dword ptr [Lt_0159]
jmp .Lt_007E
.Lt_007F:
mov ebx, dword ptr [Lt_0159]
mov dword ptr [ebp-4], ebx
.Lt_007C:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF8TOUTF16LE, .-HUTF8TOUTF16LE

.section .bss
.balign 4
	.lcomm	Lt_015A,7
.balign 4
	.lcomm	Lt_015D,4
.balign 4
	.lcomm	Lt_015C,4
.balign 4
	.lcomm	Lt_0158,4
.balign 4
	.lcomm	Lt_0159,4
.balign 4
	.lcomm	Lt_015B,4
.balign 4
	.lcomm	Lt_015E,4

.section .text
.balign 16
HUTF8TOUTF32LE:
.type HUTF8TOUTF32LE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_008F:
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
mov dword ptr [Lt_015F], ebx
mov dword ptr [Lt_0160], 0
.Lt_0092:
cmp dword ptr [Lt_0160], 8192
jge .Lt_0093
sub esp, 12
push dword ptr [ENV+276]
call fb_FileEof
add esp, 16
test eax, eax
je .Lt_0095
jmp .Lt_0093
.Lt_0095:
.Lt_0094:
push 1
push offset Lt_0161
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_0097
jmp .Lt_0093
.Lt_0097:
.Lt_0096:
movzx eax, byte ptr [Lt_0161]
movzx ebx, byte ptr [UTF8_TRAILINGTB+eax]
mov dword ptr [Lt_0162], ebx
mov dword ptr [Lt_0163], 0
mov ebx, offset Lt_0161
mov dword ptr [Lt_0164], ebx
cmp dword ptr [Lt_0162], 0
jle .Lt_0099
push dword ptr [Lt_0162]
push offset Lt_0161 + 1
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_009B
jmp .Lt_0093
.Lt_009B:
.Lt_009A:
mov eax, dword ptr [Lt_0162]
mov dword ptr [Lt_0165], eax
.Lt_009C:
mov eax, dword ptr [Lt_0164]
movzx ebx, byte ptr [eax]
add dword ptr [Lt_0163], ebx
inc dword ptr [Lt_0164]
shl dword ptr [Lt_0163], 6
dec dword ptr [Lt_0165]
.Lt_009E:
cmp dword ptr [Lt_0165], 0
jg .Lt_009C
.Lt_009D:
.Lt_0099:
.Lt_0098:
mov ebx, dword ptr [Lt_0164]
movzx eax, byte ptr [ebx]
add dword ptr [Lt_0163], eax
mov eax, dword ptr [Lt_0162]
mov ebx, dword ptr [UTF8_OFFSETSTB+eax*4]
sub dword ptr [Lt_0163], ebx
mov ebx, dword ptr [Lt_015F]
mov eax, dword ptr [Lt_0163]
mov dword ptr [ebx], eax
add dword ptr [Lt_015F], 4
inc dword ptr [Lt_0160]
jmp .Lt_0092
.Lt_0093:
mov eax, dword ptr [Lt_0160]
mov dword ptr [ebp-4], eax
.Lt_0090:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF8TOUTF32LE, .-HUTF8TOUTF32LE

.section .bss
.balign 4
	.lcomm	Lt_0161,7
.balign 4
	.lcomm	Lt_0164,4
.balign 4
	.lcomm	Lt_0163,4
.balign 4
	.lcomm	Lt_015F,4
.balign 4
	.lcomm	Lt_0160,4
.balign 4
	.lcomm	Lt_0162,4
.balign 4
	.lcomm	Lt_0165,4

.section .text
.balign 16
HUTF16LETOCHAR:
.type HUTF16LETOCHAR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00AB:
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
mov dword ptr [Lt_0166], ebx
mov dword ptr [Lt_0167], 0
.Lt_00AD:
cmp dword ptr [Lt_0167], 8192
jge .Lt_00AE
sub esp, 12
push dword ptr [ENV+276]
call fb_FileEof
add esp, 16
test eax, eax
je .Lt_00B0
jmp .Lt_00AE
.Lt_00B0:
.Lt_00AF:
push 2
push offset Lt_0168
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_00B2
jmp .Lt_00AE
.Lt_00B2:
.Lt_00B1:
movzx eax, word ptr [Lt_0168]
cmp eax, 255
jle .Lt_00B4
movzx eax, word ptr [Lt_0168]
cmp eax, 55296
jl .Lt_00B6
movzx eax, word ptr [Lt_0168]
cmp eax, 56319
jg .Lt_00B8
push 2
push offset Lt_0168
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_00BA
jmp .Lt_00AE
.Lt_00BA:
.Lt_00B9:
.Lt_00B8:
.Lt_00B7:
.Lt_00B6:
.Lt_00B5:
mov word ptr [Lt_0168], 63
.Lt_00B4:
.Lt_00B3:
mov al, byte ptr [Lt_0168]
mov ebx, dword ptr [Lt_0166]
mov byte ptr [ebx], al
inc dword ptr [Lt_0166]
inc dword ptr [Lt_0167]
jmp .Lt_00AD
.Lt_00AE:
mov eax, dword ptr [Lt_0167]
mov dword ptr [ebp-4], eax
.Lt_00AC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF16LETOCHAR, .-HUTF16LETOCHAR

.section .bss
.balign 4
	.lcomm	Lt_0168,2
.balign 4
	.lcomm	Lt_0166,4
.balign 4
	.lcomm	Lt_0167,4

.section .text
.balign 16
HUTF16LETOUTF16LE:
.type HUTF16LETOUTF16LE, @function
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_00BB:
push 8193
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
push ebx
push 0
push dword ptr [ENV+276]
call fb_FileGetWstr
add esp, 16
test eax, eax
jne .Lt_00BE
push 0
push 2
sub esp, 4
push dword ptr [ENV+276]
call fb_FileTell
add esp, 8
mov ebx, dword ptr [LEX+839936]
mov esi, dword ptr [ebx+49384]
mov ecx, esi
sar ecx, 31
sub eax, esi
sbb edx, ecx
mov edi, eax
mov ebx, edx
push ebx
push edi
call __udivdi3
add esp, 16
mov edi, eax
mov dword ptr [ebp-4], edi
jmp .Lt_00BD
.Lt_00BE:
mov dword ptr [ebp-4], 0
.Lt_00BD:
.Lt_00BC:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF16LETOUTF16LE, .-HUTF16LETOUTF16LE
.balign 16
HUTF16LETOUTF32LE:
.type HUTF16LETOUTF32LE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00BF:
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
mov dword ptr [Lt_0169], ebx
mov dword ptr [Lt_016A], 0
.Lt_00C1:
cmp dword ptr [Lt_016A], 8192
jge .Lt_00C2
sub esp, 12
push dword ptr [ENV+276]
call fb_FileEof
add esp, 16
test eax, eax
je .Lt_00C4
jmp .Lt_00C2
.Lt_00C4:
.Lt_00C3:
push 2
push offset Lt_016B
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_00C6
jmp .Lt_00C2
.Lt_00C6:
.Lt_00C5:
movzx eax, word ptr [Lt_016B]
mov dword ptr [Lt_016C], eax
cmp dword ptr [Lt_016C], 55296
jb .Lt_00C8
cmp dword ptr [Lt_016C], 56319
ja .Lt_00CA
push 2
push offset Lt_016B
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_00CC
jmp .Lt_00C2
.Lt_00CC:
.Lt_00CB:
mov eax, dword ptr [Lt_016C]
add eax, 4294912000
shl eax, 10
movzx ebx, word ptr [Lt_016B]
add eax, ebx
add eax, 9216
mov dword ptr [Lt_016C], eax
.Lt_00CA:
.Lt_00C9:
.Lt_00C8:
.Lt_00C7:
mov eax, dword ptr [Lt_0169]
mov ebx, dword ptr [Lt_016C]
mov dword ptr [eax], ebx
add dword ptr [Lt_0169], 4
inc dword ptr [Lt_016A]
jmp .Lt_00C1
.Lt_00C2:
mov ebx, dword ptr [Lt_016A]
mov dword ptr [ebp-4], ebx
.Lt_00C0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF16LETOUTF32LE, .-HUTF16LETOUTF32LE

.section .bss
.balign 4
	.lcomm	Lt_016B,2
.balign 4
	.lcomm	Lt_016C,4
.balign 4
	.lcomm	Lt_0169,4
.balign 4
	.lcomm	Lt_016A,4

.section .text
.balign 16
HUTF16BETOCHAR:
.type HUTF16BETOCHAR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_00DA:
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
mov dword ptr [Lt_016D], ebx
mov dword ptr [Lt_016E], 0
.Lt_00DC:
cmp dword ptr [Lt_016E], 8192
jge .Lt_00DD
sub esp, 12
push dword ptr [ENV+276]
call fb_FileEof
add esp, 16
test eax, eax
je .Lt_00DF
jmp .Lt_00DD
.Lt_00DF:
.Lt_00DE:
push 2
push offset Lt_016F
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_00E1
jmp .Lt_00DD
.Lt_00E1:
.Lt_00E0:
movzx eax, word ptr [Lt_016F]
sar eax, 8
movzx ebx, word ptr [Lt_016F]
sal ebx, 8
and ebx, 65280
or eax, ebx
mov word ptr [Lt_016F], ax
movzx eax, word ptr [Lt_016F]
cmp eax, 255
jle .Lt_00E3
movzx eax, word ptr [Lt_016F]
cmp eax, 55296
jl .Lt_00E5
movzx eax, word ptr [Lt_016F]
cmp eax, 56319
jg .Lt_00E7
push 2
push offset Lt_016F
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_00E9
jmp .Lt_00DD
.Lt_00E9:
.Lt_00E8:
.Lt_00E7:
.Lt_00E6:
.Lt_00E5:
.Lt_00E4:
mov word ptr [Lt_016F], 63
.Lt_00E3:
.Lt_00E2:
mov al, byte ptr [Lt_016F]
mov ebx, dword ptr [Lt_016D]
mov byte ptr [ebx], al
inc dword ptr [Lt_016D]
inc dword ptr [Lt_016E]
jmp .Lt_00DC
.Lt_00DD:
mov eax, dword ptr [Lt_016E]
mov dword ptr [ebp-4], eax
.Lt_00DB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF16BETOCHAR, .-HUTF16BETOCHAR

.section .bss
.balign 4
	.lcomm	Lt_016F,2
.balign 4
	.lcomm	Lt_016D,4
.balign 4
	.lcomm	Lt_016E,4

.section .text
.balign 16
HUTF16BETOUTF16LE:
.type HUTF16BETOUTF16LE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_00EA:
call HUTF16LETOUTF16LE
mov dword ptr [Lt_0170], eax
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
mov dword ptr [Lt_0171], ebx
mov dword ptr [Lt_0172], 1
mov ebx, dword ptr [Lt_0170]
mov dword ptr [ebp-8], ebx
jmp .Lt_00ED
.Lt_00F0:
mov ebx, dword ptr [Lt_0171]
mov ax, word ptr [ebx]
mov word ptr [Lt_0173], ax
movzx eax, word ptr [Lt_0173]
sar eax, 8
movzx ebx, word ptr [Lt_0173]
sal ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [Lt_0171]
mov word ptr [ebx], ax
add dword ptr [Lt_0171], 2
.Lt_00EE:
inc dword ptr [Lt_0172]
.Lt_00ED:
mov eax, dword ptr [ebp-8]
cmp dword ptr [Lt_0172], eax
jle .Lt_00F0
.Lt_00EF:
mov eax, dword ptr [Lt_0170]
mov dword ptr [ebp-4], eax
.Lt_00EB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF16BETOUTF16LE, .-HUTF16BETOUTF16LE

.section .bss
.balign 4
	.lcomm	Lt_0171,4
.balign 4
	.lcomm	Lt_0173,2
.balign 4
	.lcomm	Lt_0172,4
.balign 4
	.lcomm	Lt_0170,4

.section .text
.balign 16
HUTF16BETOUTF32LE:
.type HUTF16BETOUTF32LE, @function
push ebp
mov ebp, esp
sub esp, 16
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_00F1:
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
mov dword ptr [Lt_0174], ebx
mov dword ptr [Lt_0175], 0
.Lt_00F3:
cmp dword ptr [Lt_0175], 8192
jge .Lt_00F4
sub esp, 12
push dword ptr [ENV+276]
call fb_FileEof
add esp, 16
test eax, eax
je .Lt_00F6
jmp .Lt_00F4
.Lt_00F6:
.Lt_00F5:
push 2
push offset Lt_0176
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_00F8
jmp .Lt_00F4
.Lt_00F8:
.Lt_00F7:
movzx eax, word ptr [Lt_0176]
sar eax, 8
movzx ebx, word ptr [Lt_0176]
sal ebx, 8
and ebx, 65280
or eax, ebx
mov ecx, eax
mov dword ptr [Lt_0177], ecx
cmp dword ptr [Lt_0177], 55296
jb .Lt_00FA
cmp dword ptr [Lt_0177], 56319
ja .Lt_00FC
push 2
push offset Lt_0176
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_00FE
jmp .Lt_00F4
.Lt_00FE:
.Lt_00FD:
mov eax, dword ptr [Lt_0177]
add eax, 4294912000
shl eax, 10
movzx ecx, word ptr [Lt_0176]
sar ecx, 8
movzx ebx, word ptr [Lt_0176]
sal ebx, 8
and ebx, 65280
or ecx, ebx
mov esi, ecx
add eax, esi
add eax, 9216
mov dword ptr [Lt_0177], eax
.Lt_00FC:
.Lt_00FB:
.Lt_00FA:
.Lt_00F9:
mov eax, dword ptr [Lt_0174]
mov esi, dword ptr [Lt_0177]
mov dword ptr [eax], esi
add dword ptr [Lt_0174], 4
inc dword ptr [Lt_0175]
jmp .Lt_00F3
.Lt_00F4:
mov esi, dword ptr [Lt_0175]
mov dword ptr [ebp-4], esi
.Lt_00F2:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF16BETOUTF32LE, .-HUTF16BETOUTF32LE

.section .bss
.balign 4
	.lcomm	Lt_0176,2
.balign 4
	.lcomm	Lt_0177,4
.balign 4
	.lcomm	Lt_0174,4
.balign 4
	.lcomm	Lt_0175,4

.section .text
.balign 16
HUTF32LETOCHAR:
.type HUTF32LETOCHAR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0107:
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
mov dword ptr [Lt_0178], ebx
mov dword ptr [Lt_0179], 0
.Lt_0109:
cmp dword ptr [Lt_0179], 8192
jge .Lt_010A
sub esp, 12
push dword ptr [ENV+276]
call fb_FileEof
add esp, 16
test eax, eax
je .Lt_010C
jmp .Lt_010A
.Lt_010C:
.Lt_010B:
push 4
push offset Lt_017A
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_010E
jmp .Lt_010A
.Lt_010E:
.Lt_010D:
cmp dword ptr [Lt_017A], 255
jbe .Lt_0110
mov dword ptr [Lt_017A], 63
.Lt_0110:
.Lt_010F:
mov al, byte ptr [Lt_017A]
mov ebx, dword ptr [Lt_0178]
mov byte ptr [ebx], al
inc dword ptr [Lt_0178]
inc dword ptr [Lt_0179]
jmp .Lt_0109
.Lt_010A:
mov eax, dword ptr [Lt_0179]
mov dword ptr [ebp-4], eax
.Lt_0108:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF32LETOCHAR, .-HUTF32LETOCHAR

.section .bss
.balign 4
	.lcomm	Lt_017A,4
.balign 4
	.lcomm	Lt_0178,4
.balign 4
	.lcomm	Lt_0179,4

.section .text
.balign 16
HUTF32LETOUTF16LE:
.type HUTF32LETOUTF16LE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0111:
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
mov dword ptr [Lt_017B], ebx
mov dword ptr [Lt_017C], 0
.Lt_0113:
cmp dword ptr [Lt_017C], 8192
jge .Lt_0114
sub esp, 12
push dword ptr [ENV+276]
call fb_FileEof
add esp, 16
test eax, eax
je .Lt_0116
jmp .Lt_0114
.Lt_0116:
.Lt_0115:
push 4
push offset Lt_017D
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_0118
jmp .Lt_0114
.Lt_0118:
.Lt_0117:
cmp dword ptr [Lt_017D], 65535
jbe .Lt_011A
cmp dword ptr [Lt_017C], 8191
jge .Lt_011C
mov eax, dword ptr [Lt_017D]
shr eax, 10
add eax, 55296
mov ebx, dword ptr [Lt_017B]
mov word ptr [ebx], ax
add dword ptr [Lt_017B], 2
inc dword ptr [Lt_017C]
.Lt_011C:
.Lt_011B:
mov eax, dword ptr [Lt_017D]
and eax, 1023
add eax, 56320
mov dword ptr [Lt_017D], eax
.Lt_011A:
.Lt_0119:
mov ax, word ptr [Lt_017D]
mov ebx, dword ptr [Lt_017B]
mov word ptr [ebx], ax
add dword ptr [Lt_017B], 2
inc dword ptr [Lt_017C]
jmp .Lt_0113
.Lt_0114:
mov eax, dword ptr [Lt_017C]
mov dword ptr [ebp-4], eax
.Lt_0112:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF32LETOUTF16LE, .-HUTF32LETOUTF16LE

.section .bss
.balign 4
	.lcomm	Lt_017D,4
.balign 4
	.lcomm	Lt_017B,4
.balign 4
	.lcomm	Lt_017C,4

.section .text
.balign 16
HUTF32LETOUTF32LE:
.type HUTF32LETOUTF32LE, @function
push ebp
mov ebp, esp
sub esp, 12
push ebx
push esi
push edi
mov dword ptr [ebp-4], 0
.Lt_011D:
push 8193
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
push ebx
push 0
push dword ptr [ENV+276]
call fb_FileGetWstr
add esp, 16
test eax, eax
jne .Lt_0120
push 0
push 4
sub esp, 4
push dword ptr [ENV+276]
call fb_FileTell
add esp, 8
mov ebx, dword ptr [LEX+839936]
mov esi, dword ptr [ebx+49384]
mov ecx, esi
sar ecx, 31
sub eax, esi
sbb edx, ecx
mov edi, eax
mov ebx, edx
push ebx
push edi
call __udivdi3
add esp, 16
mov edi, eax
mov dword ptr [ebp-4], edi
jmp .Lt_011F
.Lt_0120:
mov dword ptr [ebp-4], 0
.Lt_011F:
.Lt_011E:
mov eax, dword ptr [ebp-4]
pop edi
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF32LETOUTF32LE, .-HUTF32LETOUTF32LE
.balign 16
HUTF32BETOCHAR:
.type HUTF32BETOCHAR, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_012D:
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
mov dword ptr [Lt_017E], ebx
mov dword ptr [Lt_017F], 0
.Lt_012F:
cmp dword ptr [Lt_017F], 8192
jge .Lt_0130
sub esp, 12
push dword ptr [ENV+276]
call fb_FileEof
add esp, 16
test eax, eax
je .Lt_0132
jmp .Lt_0130
.Lt_0132:
.Lt_0131:
push 4
push offset Lt_0180
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_0134
jmp .Lt_0130
.Lt_0134:
.Lt_0133:
mov eax, dword ptr [Lt_0180]
shr eax, 24
mov ebx, dword ptr [Lt_0180]
shl ebx, 8
and ebx, 16711680
or eax, ebx
mov ebx, dword ptr [Lt_0180]
shr ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [Lt_0180]
shl ebx, 24
or eax, ebx
mov dword ptr [Lt_0180], eax
cmp dword ptr [Lt_0180], 255
jbe .Lt_0136
mov dword ptr [Lt_0180], 63
.Lt_0136:
.Lt_0135:
mov al, byte ptr [Lt_0180]
mov ebx, dword ptr [Lt_017E]
mov byte ptr [ebx], al
inc dword ptr [Lt_017E]
inc dword ptr [Lt_017F]
jmp .Lt_012F
.Lt_0130:
mov eax, dword ptr [Lt_017F]
mov dword ptr [ebp-4], eax
.Lt_012E:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF32BETOCHAR, .-HUTF32BETOCHAR

.section .bss
.balign 4
	.lcomm	Lt_0180,4
.balign 4
	.lcomm	Lt_017E,4
.balign 4
	.lcomm	Lt_017F,4

.section .text
.balign 16
HUTF32BETOUTF16LE:
.type HUTF32BETOUTF16LE, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov dword ptr [ebp-4], 0
.Lt_0137:
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
mov dword ptr [Lt_0181], ebx
mov dword ptr [Lt_0182], 0
.Lt_0139:
cmp dword ptr [Lt_0182], 8192
jge .Lt_013A
sub esp, 12
push dword ptr [ENV+276]
call fb_FileEof
add esp, 16
test eax, eax
je .Lt_013C
jmp .Lt_013A
.Lt_013C:
.Lt_013B:
push 4
push offset Lt_0183
push 0
push dword ptr [ENV+276]
call fb_FileGet
add esp, 16
test eax, eax
je .Lt_013E
jmp .Lt_013A
.Lt_013E:
.Lt_013D:
mov eax, dword ptr [Lt_0183]
shr eax, 24
mov ebx, dword ptr [Lt_0183]
shl ebx, 8
and ebx, 16711680
or eax, ebx
mov ebx, dword ptr [Lt_0183]
shr ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [Lt_0183]
shl ebx, 24
or eax, ebx
mov dword ptr [Lt_0183], eax
cmp dword ptr [Lt_0183], 65535
jbe .Lt_0140
cmp dword ptr [Lt_0182], 8191
jge .Lt_0142
mov eax, dword ptr [Lt_0183]
shr eax, 10
add eax, 55296
mov ebx, dword ptr [Lt_0181]
mov word ptr [ebx], ax
add dword ptr [Lt_0181], 2
inc dword ptr [Lt_0182]
.Lt_0142:
.Lt_0141:
mov eax, dword ptr [Lt_0183]
and eax, 1023
add eax, 56320
mov dword ptr [Lt_0183], eax
.Lt_0140:
.Lt_013F:
mov ax, word ptr [Lt_0183]
mov ebx, dword ptr [Lt_0181]
mov word ptr [ebx], ax
add dword ptr [Lt_0181], 2
inc dword ptr [Lt_0182]
jmp .Lt_0139
.Lt_013A:
mov eax, dword ptr [Lt_0182]
mov dword ptr [ebp-4], eax
.Lt_0138:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF32BETOUTF16LE, .-HUTF32BETOUTF16LE

.section .bss
.balign 4
	.lcomm	Lt_0183,4
.balign 4
	.lcomm	Lt_0181,4
.balign 4
	.lcomm	Lt_0182,4

.section .text
.balign 16
HUTF32BETOUTF32LE:
.type HUTF32BETOUTF32LE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_0143:
call HUTF32LETOUTF32LE
mov dword ptr [Lt_0184], eax
mov eax, dword ptr [LEX+839936]
lea ebx, [eax+16612]
mov dword ptr [Lt_0185], ebx
mov dword ptr [Lt_0186], 1
mov ebx, dword ptr [Lt_0184]
mov dword ptr [ebp-8], ebx
jmp .Lt_0146
.Lt_0149:
mov ebx, dword ptr [Lt_0185]
mov eax, dword ptr [ebx]
mov dword ptr [Lt_0187], eax
mov eax, dword ptr [Lt_0187]
shr eax, 24
mov ebx, dword ptr [Lt_0187]
shl ebx, 8
and ebx, 16711680
or eax, ebx
mov ebx, dword ptr [Lt_0187]
shr ebx, 8
and ebx, 65280
or eax, ebx
mov ebx, dword ptr [Lt_0187]
shl ebx, 24
or eax, ebx
mov ebx, dword ptr [Lt_0185]
mov dword ptr [ebx], eax
add dword ptr [Lt_0185], 4
.Lt_0147:
inc dword ptr [Lt_0186]
.Lt_0146:
mov eax, dword ptr [ebp-8]
cmp dword ptr [Lt_0186], eax
jle .Lt_0149
.Lt_0148:
mov eax, dword ptr [Lt_0184]
mov dword ptr [ebp-4], eax
.Lt_0144:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HUTF32BETOUTF32LE, .-HUTF32BETOUTF32LE

.section .bss
.balign 4
	.lcomm	Lt_0185,4
.balign 4
	.lcomm	Lt_0187,4
.balign 4
	.lcomm	Lt_0186,4
.balign 4
	.lcomm	Lt_0184,4
.balign 4
	.lcomm	Lt_005A,36
.balign 4
	.lcomm	Lt_005B,36
.balign 4
	.lcomm	Lt_005C,48

.section .data
.balign 4
UTF8_TRAILINGTB:
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
UTF8_OFFSETSTB:
.int 0
.int 12416
.int 925824
.int 63447168
.int 4194836608
.int 2181570688

.section .ctors, "aw", @progbits
.int fb_ctor__lexzutf
