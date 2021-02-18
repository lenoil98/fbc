	.intel_syntax noprefix

.section .text
.balign 16

.globl _RTLMACROMODINIT@0
_RTLMACROMODINIT@0:
.Lt_00EF:
cmp dword ptr [_ENV+136], 3
jne .Lt_00F2
push offset _MACRODATAQB
call _HADDMACROS@4
jmp .Lt_00F1
.Lt_00F2:
push offset _MACRODATA
call _HADDMACROS@4
.Lt_00F1:
.Lt_00F0:
ret
.balign 16

.globl _RTLMACROMODEND@0
_RTLMACROMODEND@0:
.Lt_00F3:
.Lt_00F4:
ret
.balign 16
_fb_ctor__rtlzmacro:
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
_HADDMACRO@4:
push ebp
mov ebp, esp
sub esp, 32
push ebx
.Lt_00C8:
mov dword ptr [ebp-4], -1
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+8]
dec ebx
mov dword ptr [ebp-28], ebx
jmp .Lt_00CB
.Lt_00CE:
or dword ptr [ebp-8], 8
mov ebx, dword ptr [ebp-24]
sal ebx, 2
mov eax, dword ptr [ebp+8]
add eax, ebx
push dword ptr [eax+12]
push dword ptr [ebp-16]
call _SYMBADDDEFINEPARAM@8
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-12], 0
jne .Lt_00D0
mov eax, dword ptr [ebp-16]
mov dword ptr [ebp-12], eax
.Lt_00D0:
.Lt_00CF:
.Lt_00CC:
inc dword ptr [ebp-24]
.Lt_00CB:
mov eax, dword ptr [ebp-28]
cmp dword ptr [ebp-24], eax
jle .Lt_00CE
.Lt_00CD:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 16
test ebx, ebx
je .Lt_00D2
cmp dword ptr [_ENV+152], 0
jne .Lt_00D4
mov dword ptr [ebp-4], 0
.Lt_00D4:
.Lt_00D3:
.Lt_00D2:
.Lt_00D1:
mov ebx, dword ptr [ebp+8]
mov eax, dword ptr [ebx+4]
and eax, 8192
test eax, eax
je .Lt_00D6
cmp dword ptr [_ENV+104], 1
jne .Lt_00D8
mov dword ptr [ebp-4], 0
or dword ptr [ebp-8], 2
.Lt_00D8:
.Lt_00D7:
.Lt_00D6:
.Lt_00D5:
mov dword ptr [ebp-20], 0
cmp dword ptr [ebp-4], 0
je .Lt_00DA
mov dword ptr [ebp-24], 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax+28]
mov dword ptr [ebp-28], ebx
.Lt_00DB:
mov ebx, dword ptr [ebp-28]
cmp dword ptr [ebx], -1
je .Lt_00DC
mov ebx, dword ptr [ebp-28]
push dword ptr [ebx]
push dword ptr [ebp-24]
call _SYMBADDDEFINETOK@8
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-20], 0
jne .Lt_00DE
mov eax, dword ptr [ebp-24]
mov dword ptr [ebp-20], eax
.Lt_00DE:
.Lt_00DD:
mov eax, dword ptr [ebp-28]
mov ebx, dword ptr [eax]
mov dword ptr [ebp-32], ebx
cmp dword ptr [ebp-32], 0
je .Lt_00E2
.Lt_00E3:
cmp dword ptr [ebp-32], 1
jne .Lt_00E1
.Lt_00E2:
mov ebx, dword ptr [ebp-28]
mov eax, dword ptr [ebp-24]
mov ecx, dword ptr [ebx+4]
mov dword ptr [eax+4], ecx
jmp .Lt_00DF
.Lt_00E1:
cmp dword ptr [ebp-32], 2
jne .Lt_00E4
.Lt_00E5:
mov ecx, dword ptr [ebp-28]
push dword ptr [ecx+4]
mov ecx, dword ptr [ebp-24]
lea eax, [ecx+4]
push eax
call _ZSTRASSIGN@8
.Lt_00E4:
.Lt_00DF:
add dword ptr [ebp-28], 8
jmp .Lt_00DB
.Lt_00DC:
.Lt_00DA:
.Lt_00D9:
push dword ptr [ebp-8]
push dword ptr [ebp-12]
mov eax, dword ptr [ebp+8]
push dword ptr [eax+8]
push dword ptr [ebp-20]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _SYMBADDDEFINEMACRO@20
.Lt_00C9:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HADDMACROS@4:
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_00E6:
.Lt_00E8:
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax], 0
je .Lt_00E9
mov dword ptr [ebp-4], -1
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 32768
je .Lt_00EB
call _FBIS64BIT@0
not eax
and dword ptr [ebp-4], eax
jmp .Lt_00EA
.Lt_00EB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax+4]
and ebx, 65536
je .Lt_00EC
call _FBIS64BIT@0
and dword ptr [ebp-4], eax
.Lt_00EC:
.Lt_00EA:
cmp dword ptr [ebp-4], 0
je .Lt_00EE
push dword ptr [ebp+8]
call _HADDMACRO@4
.Lt_00EE:
.Lt_00ED:
add dword ptr [ebp+8], 124
jmp .Lt_00E8
.Lt_00E9:
.Lt_00E7:
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
_MACRODATA:
.int _Lt_005F
.int 0
.int 3
.int _Lt_0060
.int _Lt_0061
.int _Lt_0062
.skip 4,0
.int 2
.int _Lt_0063
.int 0
.long 0
.int 2
.int _Lt_0064
.int 0
.long 1
.int 2
.int _Lt_0065
.int 0
.long 2
.int 2
.int _Lt_0066
.int -1
.skip 4,0
.skip 32,0
.int _Lt_0067
.int 0
.int 4
.int _Lt_0060
.int _Lt_0061
.int _Lt_0062
.int _Lt_0068
.int 2
.int _Lt_0063
.int 0
.long 0
.int 2
.int _Lt_0064
.int 0
.long 1
.int 2
.int _Lt_0065
.int 0
.long 2
.int 2
.int _Lt_0069
.int 0
.long 3
.int 2
.int _Lt_006A
.int -1
.skip 4,0
.skip 16,0
.int _Lt_006B
.int 8192
.int 2
.int _Lt_0068
.int _Lt_006C
.skip 8,0
.int 2
.int _Lt_006D
.int 0
.long 1
.int 2
.int _Lt_006E
.int 0
.long 0
.int 2
.int _Lt_006F
.int -1
.skip 4,0
.skip 48,0
.int _Lt_0070
.int 8192
.int 2
.int _Lt_0068
.int _Lt_006C
.skip 8,0
.int 2
.int _Lt_0071
.int 0
.long 1
.int 2
.int _Lt_0072
.int 0
.long 0
.int 2
.int _Lt_0073
.int 0
.long 1
.int 2
.int _Lt_0074
.int -1
.skip 4,0
.skip 32,0
.int _Lt_0075
.int 16
.int 1
.int _Lt_0076
.skip 12,0
.int 2
.int _Lt_0077
.int 0
.long 0
.int 2
.int _Lt_0078
.int 1
.long 0
.int 2
.int _Lt_0079
.int -1
.skip 4,0
.skip 48,0
.int _Lt_007A
.int 16
.int 1
.int _Lt_0076
.skip 12,0
.int 2
.int _Lt_0077
.int 0
.long 0
.int 2
.int _Lt_007B
.int 1
.long 0
.int 2
.int _Lt_0079
.int -1
.skip 4,0
.skip 48,0
.int _Lt_007C
.int 0
.int 2
.int _Lt_006C
.int _Lt_007D
.skip 8,0
.int 2
.int _Lt_007E
.int 0
.long 0
.int 2
.int _Lt_007F
.int 0
.long 1
.int 2
.int _Lt_0080
.int -1
.skip 4,0
.skip 48,0
.int _Lt_0081
.int 0
.int 3
.int _Lt_0082
.int _Lt_0083
.int _Lt_0084
.skip 4,0
.int 2
.int _Lt_0085
.int 0
.long 0
.int 2
.int _Lt_0086
.int 0
.long 0
.int 2
.int _Lt_0087
.int 0
.long 1
.int 2
.int _Lt_0088
.int 0
.long 1
.int 2
.int _Lt_0089
.int 0
.long 2
.int 2
.int _Lt_008A
.int -1
.skip 4,0
.int _Lt_008B
.int 0
.int 1
.int _Lt_008C
.skip 12,0
.int 2
.int _Lt_008D
.int 0
.long 0
.int 2
.int _Lt_008E
.int -1
.skip 4,0
.skip 64,0
.int _Lt_008F
.int 32768
.int 1
.int _Lt_008C
.skip 12,0
.int 2
.int _Lt_008D
.int 0
.long 0
.int 2
.int _Lt_0090
.int -1
.skip 4,0
.skip 64,0
.int _Lt_008F
.int 65536
.int 1
.int _Lt_008C
.skip 12,0
.int 2
.int _Lt_0091
.int 0
.long 0
.int 2
.int _Lt_0092
.int -1
.skip 4,0
.skip 64,0
.int _Lt_0093
.int 0
.int 1
.int _Lt_008C
.skip 12,0
.int 2
.int _Lt_008D
.int 0
.long 0
.int 2
.int _Lt_0094
.int -1
.skip 4,0
.skip 64,0
.int _Lt_0095
.int 0
.int 1
.int _Lt_008C
.skip 12,0
.int 2
.int _Lt_0091
.int 0
.long 0
.int 2
.int _Lt_0096
.int -1
.skip 4,0
.skip 64,0
.int _Lt_0097
.int 0
.int 2
.int _Lt_008C
.int _Lt_0098
.skip 8,0
.int 2
.int _Lt_0099
.int 0
.long 0
.int 2
.int _Lt_009A
.int 0
.long 0
.int 2
.int _Lt_009B
.int 0
.long 1
.int 2
.int _Lt_009C
.int -1
.skip 4,0
.skip 32,0
.int _Lt_009D
.int 0
.int 2
.int _Lt_008C
.int _Lt_0098
.skip 8,0
.int 2
.int _Lt_009E
.int 0
.long 0
.int 2
.int _Lt_009F
.int 0
.long 0
.int 2
.int _Lt_009B
.int 0
.long 1
.int 2
.int _Lt_00A0
.int -1
.skip 4,0
.skip 32,0
.int _Lt_00A1
.int 0
.int 2
.int _Lt_008C
.int _Lt_0098
.skip 8,0
.int 2
.int _Lt_009E
.int 0
.long 0
.int 2
.int _Lt_00A2
.int 0
.long 0
.int 2
.int _Lt_009B
.int 0
.long 1
.int 2
.int _Lt_00A0
.int -1
.skip 4,0
.skip 32,0
.long 0
.skip 120,0
.balign 4
_Lt_005F:	.ascii	"RGB\0"
.balign 4
_Lt_0060:	.ascii	"R\0"
.balign 4
_Lt_0061:	.ascii	"G\0"
.balign 4
_Lt_0062:	.ascii	"B\0"
.balign 4
_Lt_0063:	.ascii	"culng((culng(cubyte(\0"
.balign 4
_Lt_0064:	.ascii	")) shl 16) or (culng(cubyte(\0"
.balign 4
_Lt_0065:	.ascii	")) shl 8) or culng(cubyte(\0"
.balign 4
_Lt_0066:	.ascii	")) or (&hFF000000ul))\0"
.balign 4
_Lt_0067:	.ascii	"RGBA\0"
.balign 4
_Lt_0068:	.ascii	"A\0"
.balign 4
_Lt_0069:	.ascii	")) or (culng(cubyte(\0"
.balign 4
_Lt_006A:	.ascii	")) shl 24))\0"
.balign 4
_Lt_006B:	.ascii	"VA_ARG\0"
.balign 4
_Lt_006C:	.ascii	"T\0"
.balign 4
_Lt_006D:	.ascii	"peek(\0"
.balign 4
_Lt_006E:	.ascii	",\0"
.balign 4
_Lt_006F:	.ascii	")\0"
.balign 4
_Lt_0070:	.ascii	"VA_NEXT\0"
.balign 4
_Lt_0071:	.ascii	"(cptr(\0"
.balign 4
_Lt_0072:	.ascii	" ptr, cptr(byte ptr, \0"
.balign 4
_Lt_0073:	.ascii	") + (sizeof(\0"
.balign 4
_Lt_0074:	.ascii	") + sizeof(any ptr)-1 and -sizeof(any ptr)) ) )\0"
.balign 4
_Lt_0075:	.ascii	"ASSERT\0"
.balign 4
_Lt_0076:	.ascii	"E\0"
.balign 4
_Lt_0077:	.ascii	"if (\0"
.balign 4
_Lt_0078:	.ascii	") = 0 then fb_Assert(__FILE__, __LINE__, __FUNCTION__, \0"
.balign 4
_Lt_0079:	.ascii	") end if\0"
.balign 4
_Lt_007A:	.ascii	"ASSERTWARN\0"
.balign 4
_Lt_007B:	.ascii	") = 0 then fb_AssertWarn(__FILE__, __LINE__, __FUNCTION__, \0"
.balign 4
_Lt_007C:	.ascii	"OFFSETOF\0"
.balign 4
_Lt_007D:	.ascii	"F\0"
.balign 4
_Lt_007E:	.ascii	"cint( @cast( \0"
.balign 4
_Lt_007F:	.ascii	" ptr, 0 )->\0"
.balign 4
_Lt_0080:	.ascii	" )\0"
.balign 4
_Lt_0081:	.ascii	"__FB_MIN_VERSION__\0"
.balign 4
_Lt_0082:	.ascii	"MAJOR\0"
.balign 4
_Lt_0083:	.ascii	"MINOR\0"
.balign 4
_Lt_0084:	.ascii	"PATCH_LEVEL\0"
.balign 4
_Lt_0085:	.ascii	"((__FB_VER_MAJOR__ > (\0"
.balign 4
_Lt_0086:	.ascii	")) or ((__FB_VER_MAJOR__ = (\0"
.balign 4
_Lt_0087:	.ascii	")) and ((__FB_VER_MINOR__ > (\0"
.balign 4
_Lt_0088:	.ascii	")) or (__FB_VER_MINOR__ = (\0"
.balign 4
_Lt_0089:	.ascii	") and __FB_VER_PATCH__ >= (\0"
.balign 4
_Lt_008A:	.ascii	")))))\0"
.balign 4
_Lt_008B:	.ascii	"LOWORD\0"
.balign 4
_Lt_008C:	.ascii	"X\0"
.balign 4
_Lt_008D:	.ascii	"(cuint(\0"
.balign 4
_Lt_008E:	.ascii	") and &h0000FFFF)\0"
.balign 4
_Lt_008F:	.ascii	"HIWORD\0"
.balign 4
_Lt_0090:	.ascii	") shr 16)\0"
.balign 4
_Lt_0091:	.ascii	"((cuint(\0"
.balign 4
_Lt_0092:	.ascii	") and &hFFFF0000u) shr 16)\0"
.balign 4
_Lt_0093:	.ascii	"LOBYTE\0"
.balign 4
_Lt_0094:	.ascii	") and &h000000FF)\0"
.balign 4
_Lt_0095:	.ascii	"HIBYTE\0"
.balign 4
_Lt_0096:	.ascii	") and &h0000FF00) shr 8)\0"
.balign 4
_Lt_0097:	.ascii	"BIT\0"
.balign 4
_Lt_0098:	.ascii	"Y\0"
.balign 4
_Lt_0099:	.ascii	"(((\0"
.balign 4
_Lt_009A:	.ascii	") and (cast(typeof(\0"
.balign 4
_Lt_009B:	.ascii	"), 1) shl (\0"
.balign 4
_Lt_009C:	.ascii	"))) <> 0)\0"
.balign 4
_Lt_009D:	.ascii	"BITSET\0"
.balign 4
_Lt_009E:	.ascii	"((\0"
.balign 4
_Lt_009F:	.ascii	") or (cast(typeof(\0"
.balign 4
_Lt_00A0:	.ascii	")))\0"
.balign 4
_Lt_00A1:	.ascii	"BITRESET\0"
.balign 4
_Lt_00A2:	.ascii	") and not (cast(typeof(\0"
.balign 4
_MACRODATAQB:
.int _Lt_00A4
.int 0
.int 3
.int _Lt_0060
.int _Lt_0061
.int _Lt_0062
.skip 4,0
.int 2
.int _Lt_00A5
.int 0
.long 0
.int 2
.int _Lt_00A6
.int 0
.long 1
.int 2
.int _Lt_00A7
.int 0
.long 2
.int 2
.int _Lt_00A8
.int -1
.skip 4,0
.skip 32,0
.int _Lt_00A9
.int 0
.int 4
.int _Lt_0060
.int _Lt_0061
.int _Lt_0062
.int _Lt_0068
.int 2
.int _Lt_00A5
.int 0
.long 0
.int 2
.int _Lt_00A6
.int 0
.long 1
.int 2
.int _Lt_00A7
.int 0
.long 2
.int 2
.int _Lt_00AA
.int 0
.long 3
.int 2
.int _Lt_00AB
.int -1
.skip 4,0
.skip 16,0
.int _Lt_00AC
.int 8192
.int 2
.int _Lt_0068
.int _Lt_006C
.skip 8,0
.int 2
.int _Lt_006D
.int 0
.long 1
.int 2
.int _Lt_006E
.int 0
.long 0
.int 2
.int _Lt_006F
.int -1
.skip 4,0
.skip 48,0
.int _Lt_00AD
.int 8192
.int 2
.int _Lt_0068
.int _Lt_006C
.skip 8,0
.int 2
.int _Lt_00AE
.int 0
.long 1
.int 2
.int _Lt_00AF
.int 0
.long 0
.int 2
.int _Lt_00B0
.int 0
.long 1
.int 2
.int _Lt_00B1
.int -1
.skip 4,0
.skip 32,0
.int _Lt_00B2
.int 16
.int 1
.int _Lt_0076
.skip 12,0
.int 2
.int _Lt_0077
.int 0
.long 0
.int 2
.int _Lt_0078
.int 1
.long 0
.int 2
.int _Lt_0079
.int -1
.skip 4,0
.skip 48,0
.int _Lt_00B3
.int 16
.int 1
.int _Lt_0076
.skip 12,0
.int 2
.int _Lt_0077
.int 0
.long 0
.int 2
.int _Lt_007B
.int 1
.long 0
.int 2
.int _Lt_0079
.int -1
.skip 4,0
.skip 48,0
.int _Lt_00B4
.int 32768
.int 2
.int _Lt_006C
.int _Lt_007D
.skip 8,0
.int 2
.int _Lt_00B5
.int 0
.long 0
.int 2
.int _Lt_00B6
.int 0
.long 1
.int 2
.int _Lt_0080
.int -1
.skip 4,0
.skip 48,0
.int _Lt_00B4
.int 65536
.int 2
.int _Lt_006C
.int _Lt_007D
.skip 8,0
.int 2
.int _Lt_00B7
.int 0
.long 0
.int 2
.int _Lt_00B6
.int 0
.long 1
.int 2
.int _Lt_0080
.int -1
.skip 4,0
.skip 48,0
.int _Lt_0081
.int 0
.int 3
.int _Lt_0082
.int _Lt_0083
.int _Lt_0084
.skip 4,0
.int 2
.int _Lt_0085
.int 0
.long 0
.int 2
.int _Lt_0086
.int 0
.long 0
.int 2
.int _Lt_0087
.int 0
.long 1
.int 2
.int _Lt_0088
.int 0
.long 1
.int 2
.int _Lt_0089
.int 0
.long 2
.int 2
.int _Lt_008A
.int -1
.skip 4,0
.int _Lt_00B8
.int 0
.int 1
.int _Lt_008C
.skip 12,0
.int 2
.int _Lt_00B9
.int 0
.long 0
.int 2
.int _Lt_008E
.int -1
.skip 4,0
.skip 64,0
.int _Lt_00BA
.int 0
.int 1
.int _Lt_008C
.skip 12,0
.int 2
.int _Lt_00B9
.int 0
.long 0
.int 2
.int _Lt_00BB
.int -1
.skip 4,0
.skip 64,0
.int _Lt_00BC
.int 0
.int 1
.int _Lt_008C
.skip 12,0
.int 2
.int _Lt_00B9
.int 0
.long 0
.int 2
.int _Lt_0094
.int -1
.skip 4,0
.skip 64,0
.int _Lt_00BD
.int 0
.int 1
.int _Lt_008C
.skip 12,0
.int 2
.int _Lt_00BE
.int 0
.long 0
.int 2
.int _Lt_00BF
.int -1
.skip 4,0
.skip 64,0
.int _Lt_00C0
.int 0
.int 2
.int _Lt_008C
.int _Lt_0098
.skip 8,0
.int 2
.int _Lt_0099
.int 0
.long 0
.int 2
.int _Lt_00C1
.int 0
.long 0
.int 2
.int _Lt_00C2
.int 0
.long 1
.int 2
.int _Lt_009C
.int -1
.skip 4,0
.skip 32,0
.int _Lt_00C3
.int 0
.int 2
.int _Lt_008C
.int _Lt_0098
.skip 8,0
.int 2
.int _Lt_009E
.int 0
.long 0
.int 2
.int _Lt_00C4
.int 0
.long 0
.int 2
.int _Lt_00C2
.int 0
.long 1
.int 2
.int _Lt_00A0
.int -1
.skip 4,0
.skip 32,0
.int _Lt_00C5
.int 0
.int 2
.int _Lt_008C
.int _Lt_0098
.skip 8,0
.int 2
.int _Lt_009E
.int 0
.long 0
.int 2
.int _Lt_00C6
.int 0
.long 0
.int 2
.int _Lt_00C2
.int 0
.long 1
.int 2
.int _Lt_00A0
.int -1
.skip 4,0
.skip 32,0
.long 0
.skip 120,0
.balign 4
_Lt_00A4:	.ascii	"__RGB\0"
.balign 4
_Lt_00A5:	.ascii	"__culng((__culng(__cubyte(\0"
.balign 4
_Lt_00A6:	.ascii	")) __shl 16) or (__culng(__cubyte(\0"
.balign 4
_Lt_00A7:	.ascii	")) __shl 8) or __culng(__cubyte(\0"
.balign 4
_Lt_00A8:	.ascii	")) or &hFF000000ul)\0"
.balign 4
_Lt_00A9:	.ascii	"__RGBA\0"
.balign 4
_Lt_00AA:	.ascii	")) or (__culng(__cubyte(\0"
.balign 4
_Lt_00AB:	.ascii	")) __shl 24))\0"
.balign 4
_Lt_00AC:	.ascii	"__VA_ARG\0"
.balign 4
_Lt_00AD:	.ascii	"__VA_NEXT\0"
.balign 4
_Lt_00AE:	.ascii	"(__cptr(\0"
.balign 4
_Lt_00AF:	.ascii	" __ptr, __cptr(__byte __ptr, \0"
.balign 4
_Lt_00B0:	.ascii	") + (__sizeof(\0"
.balign 4
_Lt_00B1:	.ascii	") + __sizeof(any __ptr)-1 and -__sizeof(any __ptr)) ) )\0"
.balign 4
_Lt_00B2:	.ascii	"__ASSERT\0"
.balign 4
_Lt_00B3:	.ascii	"__ASSERTWARN\0"
.balign 4
_Lt_00B4:	.ascii	"__OFFSETOF\0"
.balign 4
_Lt_00B5:	.ascii	"clng( @__cast( \0"
.balign 4
_Lt_00B6:	.ascii	" __ptr, 0 )->\0"
.balign 4
_Lt_00B7:	.ascii	"__clngint( @__cast( \0"
.balign 4
_Lt_00B8:	.ascii	"__LOWORD\0"
.balign 4
_Lt_00B9:	.ascii	"(__cuint(\0"
.balign 4
_Lt_00BA:	.ascii	"__HIWORD\0"
.balign 4
_Lt_00BB:	.ascii	") __shr 16)\0"
.balign 4
_Lt_00BC:	.ascii	"__LOBYTE\0"
.balign 4
_Lt_00BD:	.ascii	"__HIBYTE\0"
.balign 4
_Lt_00BE:	.ascii	"((__cuint(\0"
.balign 4
_Lt_00BF:	.ascii	") and &h0000FF00) __shr 8)\0"
.balign 4
_Lt_00C0:	.ascii	"__BIT\0"
.balign 4
_Lt_00C1:	.ascii	") and (__cast(__typeof(\0"
.balign 4
_Lt_00C2:	.ascii	"), 1) __shl (\0"
.balign 4
_Lt_00C3:	.ascii	"__BITSET\0"
.balign 4
_Lt_00C4:	.ascii	") or (__cast(__typeof(\0"
.balign 4
_Lt_00C5:	.ascii	"__BITRESET\0"
.balign 4
_Lt_00C6:	.ascii	") and not (__cast(__typeof(\0"

.section .ctors
.int _fb_ctor__rtlzmacro
