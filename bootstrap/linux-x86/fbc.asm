	.intel_syntax noprefix

.section .text
.balign 16

.globl main
main:
.type main, @function
push ebp
mov ebp, esp
and esp, 0xFFFFFFF0
sub esp, 44
push ebx
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call fb_Init
add esp, 16
call fb_InitSignals
call fb_CpuDetect
shr eax, 28
cmp eax, 4
jae .Lt_0004
sub esp, 4
push 1
push 44
push offset Lt_0005
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 12
push 1
call fb_End
add esp, 16
.Lt_0004:
.Lt_0002:
call FBCINIT
cmp dword ptr [ebp+8], 1
jne .Lt_079A
sub esp, 12
push 0
call HPRINTOPTIONS
add esp, 16
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_079A:
.Lt_0799:
sub esp, 8
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call HPARSEARGS
add esp, 16
cmp dword ptr [FBC+60], 0
je .Lt_079C
sub esp, 12
push dword ptr [FBC+56]
call HPRINTVERSION
add esp, 16
sub esp, 12
push 0
call FBCEND
add esp, 16
.Lt_079C:
.Lt_079B:
cmp dword ptr [FBC+56], 0
je .Lt_079E
sub esp, 12
push 0
call HPRINTVERSION
add esp, 16
.Lt_079E:
.Lt_079D:
cmp dword ptr [FBC+64], 0
je .Lt_07A0
sub esp, 12
push dword ptr [FBC+56]
call HPRINTOPTIONS
add esp, 16
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_07A0:
.Lt_079F:
call FBCDETERMINEPREFIX
call FBCSETUPCOMPILERPATHS
cmp dword ptr [FBC+56], 0
je .Lt_07A2
call FBCPRINTTARGETINFO
.Lt_07A2:
.Lt_07A1:
sub esp, 12
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 261
lea eax, [FBC+2654]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call FBADDINCLUDEPATH
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
sub esp, 12
lea eax, [FBC+188]
push eax
call LISTGETHEAD
add esp, 16
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
sub esp, 12
lea ecx, [FBC+252]
push ecx
call LISTGETHEAD
add esp, 16
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
sub esp, 12
lea ecx, [FBC+220]
push ecx
call LISTGETHEAD
add esp, 16
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-20], ebx
cmp dword ptr [FBC+68], 0
jl .Lt_07A5
mov ebx, dword ptr [FBC+68]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
jne .Lt_07A8
.Lt_07A9:
sub esp, 4
push 1
sub esp, 8
call FBGETHOSTID
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_07A6
.Lt_07A8:
cmp dword ptr [ebp-24], 1
jne .Lt_07AA
.Lt_07AB:
sub esp, 4
push 1
sub esp, 8
call FBGETTARGETID
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_07A6
.Lt_07AA:
cmp dword ptr [ebp-24], 2
jne .Lt_07AC
.Lt_07AD:
cmp dword ptr [ebp-20], 0
je .Lt_07AF
call FBCDETERMINEMAINNAME
.Lt_07AF:
.Lt_07AE:
call HSETOUTNAME
sub esp, 4
push 1
sub esp, 4
lea eax, [FBC+428]
push eax
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_07A6
.Lt_07AC:
cmp dword ptr [ebp-24], 3
jne .Lt_07B0
.Lt_07B1:
sub esp, 4
push 1
sub esp, 4
lea eax, [FBC+2915]
push eax
call fb_StrAllocTempDescZ
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_07A6
.Lt_07B0:
cmp dword ptr [ebp-24], 4
jne .Lt_07B2
.Lt_07B3:
sub esp, 4
push 1
push 0
push offset Lt_0000
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_07B2:
.Lt_07A6:
sub esp, 12
push 0
call FBCEND
add esp, 16
.Lt_07A5:
.Lt_07A4:
call FBCDETERMINEMAINNAME
cmp dword ptr [ebp-20], 0
jne .Lt_07B5
sub esp, 12
push dword ptr [FBC+56]
call HPRINTOPTIONS
add esp, 16
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_07B5:
.Lt_07B4:
call HCOMPILEMODULES
call HCOMPILEXPM
test eax, eax
jne .Lt_07B7
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_07B7:
.Lt_07B6:
cmp dword ptr [FBC+36], 0
je .Lt_07B9
sub esp, 12
push 0
call FBCEND
add esp, 16
.Lt_07B9:
.Lt_07B8:
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
sub esp, 12
push 2
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_07BB
call HCOMPILESTAGE2MODULES
.Lt_07BB:
.Lt_07BA:
cmp dword ptr [FBC+44], 0
je .Lt_07BD
sub esp, 12
push 0
call FBCEND
add esp, 16
.Lt_07BD:
.Lt_07BC:
call HASSEMBLEMODULES
call HASSEMBLERCS
call HASSEMBLEXPM
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 3
jne .Lt_07BF
sub esp, 12
push 0
call FBCEND
add esp, 16
.Lt_07BF:
.Lt_07BE:
call HSETDEFAULTLIBPATHS
sub esp, 12
push 34
call FBGETOPTION
add esp, 16
mov ebx, eax
call FBISCROSSCOMP
not eax
and ebx, eax
je .Lt_07C1
call HCOLLECTOBJINFO
.Lt_07C1:
.Lt_07C0:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 1
jne .Lt_07C3
call HARCHIVEFILES
test eax, eax
jne .Lt_07C5
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_07C5:
.Lt_07C4:
sub esp, 12
push 0
call FBCEND
add esp, 16
.Lt_07C3:
.Lt_07C2:
cmp dword ptr [FBC+2120], 0
jne .Lt_07C7
call HADDDEFAULTLIBS
.Lt_07C7:
.Lt_07C6:
call HLINKFILES
test eax, eax
jne .Lt_07C9
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_07C9:
.Lt_07C8:
sub esp, 12
push 0
call FBCEND
add esp, 16
.Lt_0003:
sub esp, 12
push 0
call fb_End
add esp, 16
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size main, .-main
.balign 16
_ZN11TSTRSETITEMaSERKS_:
.type _ZN11TSTRSETITEMaSERKS_, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0014:
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
.Lt_0015:
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN11TSTRSETITEMaSERKS_, .-_ZN11TSTRSETITEMaSERKS_
.balign 16
_ZN9FBCIOFILEC1Ev:
.type _ZN9FBCIOFILEC1Ev, @function
push ebp
mov ebp, esp
sub esp, 8
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 12
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 16
mov dword ptr [eax], 0
.Lt_0023:
.Lt_0024:
mov esp, ebp
pop ebp
ret
.size _ZN9FBCIOFILEC1Ev, .-_ZN9FBCIOFILEC1Ev
.balign 16
_ZN9FBCIOFILEaSERKS_:
.type _ZN9FBCIOFILEaSERKS_, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0025:
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
mov ecx, dword ptr [ebp+12]
add ecx, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
.Lt_0026:
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN9FBCIOFILEaSERKS_, .-_ZN9FBCIOFILEaSERKS_
.balign 16
_ZN9FBCIOFILED1Ev:
.type _ZN9FBCIOFILED1Ev, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0029:
.Lt_002A:
sub esp, 12
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call fb_StrDelete
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN9FBCIOFILED1Ev, .-_ZN9FBCIOFILED1Ev
.balign 16
_ZN6FBCCTXC1Ev:
.type _ZN6FBCCTXC1Ev, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
mov eax, dword ptr [ebp+8]
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 4
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 8
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
mov dword ptr [eax+8], 0
mov eax, dword ptr [ebp+8]
add eax, 20
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 24
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 28
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 32
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 36
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 40
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 44
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 48
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 52
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 56
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 60
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 64
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 68
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 72
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 8
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 104
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 8
rep stosd
pop edi
pop eax
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 136
lea ebx, [eax]
push ebx
call _ZN9FBCIOFILEC1Ev
add esp, 16
mov ebx, dword ptr [ebp+8]
add ebx, 156
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 8
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 188
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 8
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 220
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 8
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 252
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 11
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 296
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 11
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 340
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 11
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 384
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 11
rep stosd
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 428
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 689
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 952
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 956
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 1217
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 1346
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 96
rep stosd
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 1730
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 1859
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 1988
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 32
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 2120
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 2124
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 2128
mov dword ptr [eax], 0
mov eax, dword ptr [ebp+8]
add eax, 2132
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 2393
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 2654
lea ebx, [eax]
push edi
mov edi, ebx
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
mov ebx, dword ptr [ebp+8]
add ebx, 2915
lea eax, [ebx]
push eax
push edi
mov edi, eax
xor eax, eax
mov ecx, 65
rep stosd
mov byte ptr [edi], al
pop edi
pop eax
mov eax, dword ptr [ebp+8]
add eax, 3176
mov dword ptr [eax], 0
mov dword ptr [eax+4], 0
.Lt_002B:
.Lt_002C:
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN6FBCCTXC1Ev, .-_ZN6FBCCTXC1Ev
.balign 16
_ZN6FBCCTXaSERKS_:
.type _ZN6FBCCTXaSERKS_, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_002D:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [ebp+8]
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 4
mov ebx, dword ptr [ebp+8]
add ebx, 4
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp+12]
add eax, 8
lea ebx, [eax]
push ebx
push -1
mov ebx, dword ptr [ebp+8]
add ebx, 8
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
add eax, 20
mov ebx, dword ptr [ebp+8]
add ebx, 20
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 24
mov ebx, dword ptr [ebp+8]
add ebx, 24
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 28
mov ebx, dword ptr [ebp+8]
add ebx, 28
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 32
mov ebx, dword ptr [ebp+8]
add ebx, 32
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 36
mov ebx, dword ptr [ebp+8]
add ebx, 36
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 40
mov ebx, dword ptr [ebp+8]
add ebx, 40
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 44
mov ebx, dword ptr [ebp+8]
add ebx, 44
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 48
mov ebx, dword ptr [ebp+8]
add ebx, 48
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 52
mov ebx, dword ptr [ebp+8]
add ebx, 52
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 56
mov ebx, dword ptr [ebp+8]
add ebx, 56
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 60
mov ebx, dword ptr [ebp+8]
add ebx, 60
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 64
mov ebx, dword ptr [ebp+8]
add ebx, 64
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 68
mov ebx, dword ptr [ebp+8]
add ebx, 68
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+8]
add ecx, 72
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 72
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 8
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
add eax, 104
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 104
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 8
rep movsd
pop esi
pop edi
pop ecx
sub esp, 8
mov ecx, dword ptr [ebp+12]
add ecx, 136
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 136
lea ecx, [ebx]
push ecx
call _ZN9FBCIOFILEaSERKS_
add esp, 16
mov ecx, dword ptr [ebp+8]
add ecx, 156
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 156
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 8
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
add eax, 188
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 188
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 8
rep movsd
pop esi
pop edi
pop ecx
mov ecx, dword ptr [ebp+8]
add ecx, 220
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 220
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 8
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
add eax, 252
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 252
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 11
rep movsd
pop esi
pop edi
pop ecx
mov ecx, dword ptr [ebp+8]
add ecx, 296
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 296
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 11
rep movsd
pop esi
pop edi
mov eax, dword ptr [ebp+8]
add eax, 340
lea ebx, [eax]
mov eax, dword ptr [ebp+12]
add eax, 340
lea ecx, [eax]
push ecx
push edi
push esi
mov edi, ebx
mov esi, ecx
mov ecx, 11
rep movsd
pop esi
pop edi
pop ecx
mov ecx, dword ptr [ebp+8]
add ecx, 384
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 384
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 11
rep movsd
pop esi
pop edi
sub esp, 12
push 0
push 261
mov eax, dword ptr [ebp+12]
add eax, 428
lea ebx, [eax]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 428
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 261
mov eax, dword ptr [ebp+12]
add eax, 689
lea ebx, [eax]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 689
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
add eax, 952
mov ebx, dword ptr [ebp+8]
add ebx, 952
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
sub esp, 12
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 956
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 956
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 129
mov ecx, dword ptr [ebp+12]
add ecx, 1217
lea ebx, [ecx]
push ebx
push 129
mov ebx, dword ptr [ebp+8]
add ebx, 1217
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 32
mov ecx, dword ptr [ebp+8]
add ecx, 1346
lea ebx, [ecx]
mov ecx, dword ptr [ebp+12]
add ecx, 1346
lea eax, [ecx]
push edi
push esi
mov edi, ebx
mov esi, eax
mov ecx, 96
rep movsd
pop esi
pop edi
sub esp, 12
push 0
push 129
mov eax, dword ptr [ebp+12]
add eax, 1730
lea ebx, [eax]
push ebx
push 129
mov ebx, dword ptr [ebp+8]
add ebx, 1730
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 129
mov eax, dword ptr [ebp+12]
add eax, 1859
lea ebx, [eax]
push ebx
push 129
mov ebx, dword ptr [ebp+8]
add ebx, 1859
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 129
mov eax, dword ptr [ebp+12]
add eax, 1988
lea ebx, [eax]
push ebx
push 129
mov ebx, dword ptr [ebp+8]
add ebx, 1988
lea eax, [ebx]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+12]
add eax, 2120
mov ebx, dword ptr [ebp+8]
add ebx, 2120
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp+12]
add ecx, 2124
mov ebx, dword ptr [ebp+8]
add ebx, 2124
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
mov eax, dword ptr [ebp+12]
add eax, 2128
mov ebx, dword ptr [ebp+8]
add ebx, 2128
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
sub esp, 12
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 2132
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 2132
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 2393
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 2393
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 2654
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 2654
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 261
mov ecx, dword ptr [ebp+12]
add ecx, 2915
lea ebx, [ecx]
push ebx
push 261
mov ebx, dword ptr [ebp+8]
add ebx, 2915
lea ecx, [ebx]
push ecx
call fb_StrAssign
add esp, 32
mov ecx, dword ptr [ebp+8]
add ecx, 3176
mov ebx, dword ptr [ebp+12]
add ebx, 3176
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx+4], eax
.Lt_002E:
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN6FBCCTXaSERKS_, .-_ZN6FBCCTXaSERKS_
.balign 16
_ZN6FBCCTXD1Ev:
.type _ZN6FBCCTXD1Ev, @function
push ebp
mov ebp, esp
sub esp, 4
push ebx
.Lt_0031:
.Lt_0032:
sub esp, 12
mov eax, dword ptr [ebp+8]
add eax, 136
lea ebx, [eax]
push ebx
call _ZN9FBCIOFILED1Ev
add esp, 16
sub esp, 12
mov ebx, dword ptr [ebp+8]
add ebx, 8
lea eax, [ebx]
push eax
call fb_StrDelete
add esp, 16
pop ebx
mov esp, ebp
pop ebp
ret
.size _ZN6FBCCTXD1Ev, .-_ZN6FBCCTXD1Ev
.balign 16
FBCINIT:
.type FBCINIT, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0041:
mov dword ptr [FBC+20], -1
mov dword ptr [FBC+24], -1
mov dword ptr [FBC+32], -1
push -1
push 20
push 64
lea eax, [FBC+72]
push eax
call LISTINIT
add esp, 16
push -1
push 20
push 16
lea eax, [FBC+104]
push eax
call LISTINIT
add esp, 16
sub esp, 8
push 16
lea eax, [FBC+156]
push eax
call STRLISTINIT
add esp, 16
sub esp, 8
push 64
lea eax, [FBC+188]
push eax
call STRLISTINIT
add esp, 16
sub esp, 8
push 16
lea eax, [FBC+220]
push eax
call STRLISTINIT
add esp, 16
sub esp, 8
push 16
lea eax, [FBC+252]
push eax
call STRSETINIT
add esp, 16
sub esp, 8
push 16
lea eax, [FBC+296]
push eax
call STRSETINIT
add esp, 16
sub esp, 8
push 32
lea eax, [FBC+340]
push eax
call STRSETINIT
add esp, 16
sub esp, 8
push 32
lea eax, [FBC+384]
push eax
call STRSETINIT
add esp, 16
call FBGLOBALINIT
sub esp, 12
push 10
call FBGETOPTION
add esp, 16
mov dword ptr [FBC+3176], eax
mov dword ptr [FBC+68], -1
.Lt_0042:
mov esp, ebp
pop ebp
ret
.size FBCINIT, .-FBCINIT
.balign 16
HSETOUTNAME:
.type HSETOUTNAME, @function
push ebp
mov ebp, esp
sub esp, 56
.Lt_0043:
sub esp, 8
push 261
lea eax, [FBC+428]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_0046
jmp .Lt_0044
.Lt_0046:
.Lt_0045:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 1
jne .Lt_0048
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_004A
push -1
sub esp, 4
push -1
sub esp, 12
lea eax, [FBC+689]
push eax
call HSTRIPPATH
add esp, 16
push eax
push -1
sub esp, 4
push 4
push offset Lt_0049
push -1
sub esp, 4
lea eax, [FBC+689]
push eax
call HSTRIPFILENAME
add esp, 8
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+428]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0044
.Lt_0048:
.Lt_0047:
sub esp, 12
push 0
push 261
lea eax, [FBC+689]
push eax
push 261
lea eax, [FBC+428]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0050
.Lt_0051:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 3
je .Lt_0055
.Lt_0056:
cmp dword ptr [ebp-8], 1
je .Lt_0055
.Lt_0057:
cmp dword ptr [ebp-8], 0
je .Lt_0055
.Lt_0058:
cmp dword ptr [ebp-8], 4
jne .Lt_0054
.Lt_0055:
sub esp, 12
push 0
push -1
sub esp, 8
push 5
push offset Lt_0059
push 261
lea eax, [FBC+428]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+428]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0052
.Lt_0054:
cmp dword ptr [ebp-8], 11
jne .Lt_005B
.Lt_005C:
sub esp, 12
push 0
push -1
sub esp, 8
push 6
push offset Lt_005D
push 261
lea eax, [FBC+428]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+428]
push eax
call fb_StrAssign
add esp, 32
.Lt_005B:
.Lt_0052:
jmp .Lt_004E
.Lt_0050:
cmp dword ptr [ebp-4], 2
jne .Lt_005F
.Lt_0060:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
je .Lt_0064
.Lt_0065:
cmp dword ptr [ebp-8], 0
jne .Lt_0063
.Lt_0064:
sub esp, 12
push 0
push -1
sub esp, 8
push 5
push offset Lt_0066
push 261
lea eax, [FBC+428]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+428]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0061
.Lt_0063:
cmp dword ptr [ebp-8], 2
je .Lt_0069
.Lt_006A:
cmp dword ptr [ebp-8], 9
je .Lt_0069
.Lt_006B:
cmp dword ptr [ebp-8], 5
je .Lt_0069
.Lt_006C:
cmp dword ptr [ebp-8], 8
je .Lt_0069
.Lt_006D:
cmp dword ptr [ebp-8], 10
je .Lt_0069
.Lt_006E:
cmp dword ptr [ebp-8], 6
je .Lt_0069
.Lt_006F:
cmp dword ptr [ebp-8], 7
jne .Lt_0068
.Lt_0069:
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_0070
push -1
sub esp, 4
push -1
sub esp, 12
lea eax, [FBC+428]
push eax
call HSTRIPPATH
add esp, 16
push eax
push -1
sub esp, 4
push 4
push offset Lt_0049
push -1
sub esp, 4
lea eax, [FBC+428]
push eax
call HSTRIPFILENAME
add esp, 8
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+428]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0061
.Lt_0068:
cmp dword ptr [ebp-8], 3
jne .Lt_0074
.Lt_0075:
sub esp, 12
push 0
push -1
sub esp, 8
push 5
push offset Lt_0076
push 261
lea eax, [FBC+428]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+428]
push eax
call fb_StrAssign
add esp, 32
.Lt_0074:
.Lt_0061:
.Lt_005F:
.Lt_004E:
.Lt_0044:
mov esp, ebp
pop ebp
ret
.size HSETOUTNAME, .-HSETOUTNAME
.balign 16
FBCEND:
.type FBCEND, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0078:
sub esp, 12
lea eax, [FBC+156]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_007A:
cmp dword ptr [ebp-4], 0
je .Lt_007B
sub esp, 12
push dword ptr [ebp-4]
call fb_FileKill
add esp, 16
test eax, eax
je .Lt_007D
.Lt_007D:
.Lt_007C:
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_007A
.Lt_007B:
sub esp, 12
push dword ptr [ebp+8]
call fb_End
add esp, 16
.Lt_0079:
mov esp, ebp
pop ebp
ret
.size FBCEND, .-FBCEND
.balign 16
FBCADDTEMP:
.type FBCADDTEMP, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_007E:
sub esp, 8
push dword ptr [ebp+8]
lea eax, [FBC+156]
push eax
call STRLISTAPPEND
add esp, 16
.Lt_007F:
mov esp, ebp
pop ebp
ret
.size FBCADDTEMP, .-FBCADDTEMP
.balign 16
FBCADDOBJ:
.type FBCADDOBJ, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0080:
sub esp, 12
lea eax, [FBC+188]
push eax
call LISTNEWNODE
add esp, 16
mov dword ptr [ebp-8], eax
sub esp, 12
push 0
push -1
push dword ptr [ebp+8]
push -1
push dword ptr [ebp-8]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0081:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size FBCADDOBJ, .-FBCADDOBJ
.balign 16
HGET1STOUTPUTLINEFROMCOMMAND:
.type HGET1STOUTPUTLINEFROMCOMMAND, @function
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0082:
call fb_FileFree
mov dword ptr [ebp-16], eax
sub esp, 4
push 0
push 0
push dword ptr [ebp-16]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpenPipe
add esp, 32
test eax, eax
je .Lt_0085
jmp .Lt_0083
.Lt_0085:
.Lt_0084:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push dword ptr [ebp-16]
call fb_FileInput
add esp, 16
sub esp, 4
push 0
push -1
lea eax, [ebp-28]
push eax
call fb_InputString
add esp, 16
sub esp, 12
push dword ptr [ebp-16]
call fb_FileClose
add esp, 16
test eax, eax
je .Lt_0086
push 0
push 0
push offset Lt_0087
push 260
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0086:
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0083
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.Lt_0083:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HGET1STOUTPUTLINEFROMCOMMAND, .-HGET1STOUTPUTLINEFROMCOMMAND
.balign 16
FBCBUILDPATHTOLIBFILE:
.type FBCBUILDPATHTOLIBFILE, @function
push ebp
mov ebp, esp
sub esp, 104
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0088:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp+8]
push -1
sub esp, 4
push 2
push offset Lt_001B
push 261
lea eax, [FBC+2915]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-24]
call HFILEEXISTS
add esp, 16
test eax, eax
je .Lt_008D
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0089
.Lt_008D:
.Lt_008C:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 4
mov dword ptr [ebp-64], 0
lea eax, [ebp-64]
push eax
lea eax, [ebp-60]
push eax
push 3
call FBCFINDBIN
add esp, 16
call FBGETCPUFAMILY
mov dword ptr [ebp-92], eax
cmp dword ptr [ebp-92], 0
jne .Lt_0091
.Lt_0092:
sub esp, 12
push 0
push 6
push offset Lt_0093
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_008F
.Lt_0091:
cmp dword ptr [ebp-92], 1
jne .Lt_0094
.Lt_0095:
sub esp, 12
push 0
push 6
push offset Lt_0096
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_008F
.Lt_0094:
cmp dword ptr [ebp-92], 4
jne .Lt_0097
.Lt_0098:
sub esp, 12
push 0
push 6
push offset Lt_0093
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_008F
.Lt_0097:
cmp dword ptr [ebp-92], 5
jne .Lt_0099
.Lt_009A:
sub esp, 12
push 0
push 6
push offset Lt_0096
push -1
lea eax, [ebp-60]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0099:
.Lt_008F:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 0
push dword ptr [ebp+8]
push 19
push offset Lt_009B
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-60]
push eax
call HGET1STOUTPUTLINEFROMCOMMAND
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_009F
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0089
.Lt_009F:
.Lt_009E:
push -1
sub esp, 8
push dword ptr [ebp-24]
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00A1
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0089
.Lt_00A1:
.Lt_00A0:
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_0089:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size FBCBUILDPATHTOLIBFILE, .-FBCBUILDPATHTOLIBFILE
.balign 16
FBCFINDLIBFILE:
.type FBCFINDLIBFILE, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_00A2:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call FBCBUILDPATHTOLIBFILE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_00A5
sub esp, 12
push dword ptr [ebp-24]
call HFILEEXISTS
add esp, 16
test eax, eax
jne .Lt_00A7
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_00A3:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size FBCFINDLIBFILE, .-FBCFINDLIBFILE
.balign 16
FBCADDDEFLIBPATH:
.type FBCADDDEFLIBPATH, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_00A8:
sub esp, 4
push -1
push dword ptr [ebp+8]
lea eax, [FBC+384]
push eax
call STRSETADD
add esp, 16
.Lt_00A9:
mov esp, ebp
pop ebp
ret
.size FBCADDDEFLIBPATH, .-FBCADDDEFLIBPATH
.balign 16
FBCADDLIBPATHFOR:
.type FBCADDLIBPATHFOR, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_00AA:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call FBCBUILDPATHTOLIBFILE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call HSTRIPFILENAME
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-12]
push eax
call PATHSTRIPDIV
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_00AE
sub esp, 12
lea eax, [ebp-12]
push eax
call FBCADDDEFLIBPATH
add esp, 16
.Lt_00AE:
.Lt_00AD:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_00AB:
mov esp, ebp
pop ebp
ret
.size FBCADDLIBPATHFOR, .-FBCADDLIBPATHFOR
.balign 16
FBCFINDBIN:
.type FBCFINDBIN, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_00AF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [Lt_07D6], eax
jne .Lt_00B2
sub esp, 12
push 0
push -1
push offset Lt_07D7
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [Lt_07D8]
mov dword ptr [eax], ebx
jmp .Lt_00B0
.Lt_00B2:
.Lt_00B1:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 0
sub esp, 12
push 0
push -1
sub esp, 8
sub esp, 12
push 0
mov ebx, dword ptr [ebp+8]
sal ebx, 4
lea eax, [TOOLNAMES+ebx]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_StrUcase2
add esp, 20
push eax
call fb_GetEnviron
add esp, 12
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push dword ptr [ebp+12]
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_00B4
sub esp, 12
push 0
push -1
sub esp, 8
push 1
push offset Lt_0000
push -1
sub esp, 4
push 16
mov eax, dword ptr [ebp+8]
sal eax, 4
lea ebx, [TOOLNAMES+eax]
push ebx
push 261
lea ebx, [FBC+2393]
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HFILEEXISTS
add esp, 16
test eax, eax
jne .Lt_00B8
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .Lt_00BA
sub esp, 12
push 0
push -1
sub esp, 8
push 1
push offset Lt_0000
push -1
sub esp, 4
push 16
mov eax, dword ptr [ebp+8]
sal eax, 4
lea ebx, [TOOLNAMES+eax]
push ebx
push 129
lea ebx, [FBC+1859]
push ebx
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea ebx, [ebp-36]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
jmp .Lt_00B9
.Lt_00BA:
sub esp, 12
push 0
push 16
mov eax, dword ptr [ebp+8]
sal eax, 4
lea ebx, [TOOLNAMES+eax]
push ebx
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.Lt_00B9:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], -1
.Lt_00B8:
.Lt_00B7:
.Lt_00B4:
.Lt_00B3:
mov ebx, dword ptr [ebp+8]
mov dword ptr [Lt_07D6], ebx
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
push offset Lt_07D7
call fb_StrAssign
add esp, 32
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [Lt_07D8], eax
.Lt_00B0:
pop ebx
mov esp, ebp
pop ebp
ret
.size FBCFINDBIN, .-FBCFINDBIN

.section .data
.balign 4
Lt_07D6:
.int -1

.section .bss
.balign 4
	.lcomm	Lt_07D8,4
.balign 4
	.lcomm	Lt_07D7,12

.section .text
.balign 16
FBCRUNBIN:
.type FBCRUNBIN, @function
push ebp
mov ebp, esp
sub esp, 72
mov dword ptr [ebp-4], 0
.Lt_00BD:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 4
lea eax, [ebp-12]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+12]
call FBCFINDBIN
add esp, 16
cmp dword ptr [FBC+56], 0
je .Lt_00C0
sub esp, 4
push 2
sub esp, 4
push 3
push offset Lt_00C1
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
sub esp, 4
push -1
push dword ptr [ebp+16]
push -1
sub esp, 4
push 2
push offset Lt_00C3
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_00C0:
.Lt_00BF:
sub esp, 8
push dword ptr [ebp+16]
lea eax, [ebp-24]
push eax
call fb_Exec
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jne .Lt_00C7
mov dword ptr [ebp-4], -1
jmp .Lt_00C6
.Lt_00C7:
cmp dword ptr [ebp-8], 0
jge .Lt_00C8
sub esp, 12
push 0
push 6
push -1
push dword ptr [ebp-24]
push 91
call ERRREPORTEX
add esp, 32
jmp .Lt_00C6
.Lt_00C8:
cmp dword ptr [FBC+56], 0
je .Lt_00CA
sub esp, 4
push 1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp-8]
call fb_IntToStr
add esp, 16
push eax
push -1
sub esp, 4
push 29
push offset Lt_00CC
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push -1
sub esp, 4
push 11
push offset Lt_00CB
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_00CA:
.Lt_00C9:
.Lt_00C6:
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_00BE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size FBCRUNBIN, .-FBCRUNBIN
.balign 16
CLEARDEFLIST:
.type CLEARDEFLIST, @function
push ebp
mov ebp, esp
sub esp, 56
mov dword ptr [ebp-4], 0
.Lt_00D1:
call fb_FileFree
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 32
test eax, eax
je .Lt_00D4
mov dword ptr [ebp-4], 0
jmp .Lt_00D2
.Lt_00D4:
.Lt_00D3:
sub esp, 12
push 0
push -1
sub esp, 8
push 11
push offset Lt_00D5
push -1
sub esp, 4
push dword ptr [ebp+8]
call HSTRIPEXT
add esp, 8
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
call fb_FileFree
mov dword ptr [ebp-36], eax
sub esp, 8
push 0
push dword ptr [ebp-36]
push 0
push 0
push 3
lea eax, [ebp-20]
push eax
call fb_FileOpen
add esp, 32
test eax, eax
je .Lt_00D8
sub esp, 12
push dword ptr [ebp-8]
call fb_FileClose
add esp, 16
test eax, eax
je .Lt_00D9
push 0
push 0
push offset Lt_0087
push 500
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00D9:
mov dword ptr [ebp-4], 0
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00D2
.Lt_00D8:
.Lt_00D7:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
.Lt_00DA:
sub esp, 12
push dword ptr [ebp-8]
call fb_FileEof
add esp, 16
test eax, eax
jne .Lt_00DB
push 0
push -1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-8]
call fb_FileLineInput
add esp, 16
push 5
push offset Lt_00DC
push -1
sub esp, 12
push 4
lea eax, [ebp-48]
push eax
call fb_RIGHT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00DE
sub esp, 12
push 0
push -1
sub esp, 4
push -1
lea eax, [ebp-48]
push eax
call fb_StrLen
add esp, 8
add eax, -4
push eax
lea eax, [ebp-48]
push eax
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 32
.Lt_00DE:
.Lt_00DD:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-52], eax
sub esp, 4
push 1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-52]
call fb_PrintString
add esp, 16
jmp .Lt_00DA
.Lt_00DB:
sub esp, 12
push dword ptr [ebp-36]
call fb_FileClose
add esp, 16
test eax, eax
je .Lt_00E0
push 0
push 0
push offset Lt_0087
push 515
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00E0:
sub esp, 12
push dword ptr [ebp-8]
call fb_FileClose
add esp, 16
test eax, eax
je .Lt_00E1
push 0
push 0
push offset Lt_0087
push 516
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00E1:
sub esp, 12
push dword ptr [ebp+8]
call fb_FileKill
add esp, 16
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [ebp-20]
call rename
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00D2
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.Lt_00D2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size CLEARDEFLIST, .-CLEARDEFLIST
.balign 16
HGENERATEEMPTYDEFFILE:
.type HGENERATEEMPTYDEFFILE, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_00E2:
call fb_FileFree
mov dword ptr [ebp-8], eax
sub esp, 8
push 0
push dword ptr [ebp-8]
push 0
push 0
push 3
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 32
test eax, eax
je .Lt_00E5
jmp .Lt_00E3
.Lt_00E5:
.Lt_00E4:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
sub esp, 4
push 1
push 7
push offset Lt_00E7
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-12]
call fb_PrintString
add esp, 16
sub esp, 12
push dword ptr [ebp-8]
call fb_FileClose
add esp, 16
test eax, eax
je .Lt_00E8
push 0
push 0
push offset Lt_0087
push 530
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00E8:
mov dword ptr [ebp-4], -1
.Lt_00E3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HGENERATEEMPTYDEFFILE, .-HGENERATEEMPTYDEFFILE
.balign 16
MAKEIMPLIB:
.type MAKEIMPLIB, @function
push ebp
mov ebp, esp
sub esp, 120
mov dword ptr [ebp-4], 0
.Lt_00E9:
sub esp, 12
push dword ptr [ebp+12]
call CLEARDEFLIST
add esp, 16
test eax, eax
jne .Lt_00EC
jmp .Lt_00EA
.Lt_00EC:
.Lt_00EB:
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call fb_FileLen
add esp, 16
cmp edx, 0
jne .Lt_00EE
cmp eax, 0
jne .Lt_00EE
.Lt_07DA:
sub esp, 12
push dword ptr [ebp+12]
call HGENERATEEMPTYDEFFILE
add esp, 16
test eax, eax
jne .Lt_00F0
jmp .Lt_00EA
.Lt_00F0:
.Lt_00EF:
.Lt_00EE:
.Lt_00ED:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F2
push -1
sub esp, 4
push -1
push dword ptr [ebp+12]
push 8
push offset Lt_00F1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 13
push offset Lt_00F6
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [FBC+428]
push eax
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00F2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 8
push offset Lt_00F8
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
push -1
sub esp, 4
push 4
push offset Lt_0049
push -1
sub esp, 4
push -1
sub esp, 12
lea eax, [FBC+428]
push eax
call HSTRIPFILENAME
add esp, 16
push eax
push 16
push offset Lt_00F7
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 4
lea eax, [ebp-16]
push eax
push 5
push offset Lt_00FE
call FBCRUNBIN
add esp, 16
test eax, eax
jne .Lt_0100
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_00EA
.Lt_0100:
.Lt_00FF:
cmp dword ptr [FBC+40], 0
jne .Lt_0102
sub esp, 12
push dword ptr [ebp+12]
call FBCADDTEMP
add esp, 16
.Lt_0102:
.Lt_0101:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_00EA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size MAKEIMPLIB, .-MAKEIMPLIB
.balign 16
HFINDLIB:
.type HFINDLIB, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0103:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+8]
call FBCBUILDPATHTOLIBFILE
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrInit
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_0106
sub esp, 12
push 0
push 3
push offset Lt_0107
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00F2
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0105
.Lt_0106:
sub esp, 12
push 0
push 1
push -1
push dword ptr [ebp+8]
push 23
call ERRREPORTEX
add esp, 32
.Lt_0105:
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_0104:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HFINDLIB, .-HFINDLIB
.balign 16
FBCLINKERISGOLD:
.type FBCLINKERISGOLD, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-4], 0
.Lt_0108:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
sub esp, 4
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
push 2
call FBCFINDBIN
add esp, 16
sub esp, 12
push 0
push 11
push offset Lt_010B
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 4
sub esp, 4
push 8
push offset Lt_010C
call fb_StrAllocTempDescZEx
add esp, 12
push eax
sub esp, 4
lea eax, [ebp-16]
push eax
call HGET1STOUTPUTLINEFROMCOMMAND
add esp, 8
push eax
push 1
call fb_StrInstr
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0109
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_0109:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size FBCLINKERISGOLD, .-FBCLINKERISGOLD
.balign 16
FBCISUSINGGOLDLINKER:
.type FBCISUSINGGOLDLINKER, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_010D:
call FBTARGETSUPPORTSELF
test eax, eax
je .Lt_0110
call FBCLINKERISGOLD
mov dword ptr [ebp-4], eax
jmp .Lt_010E
.Lt_0110:
.Lt_010F:
mov dword ptr [ebp-4], 0
.Lt_010E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size FBCISUSINGGOLDLINKER, .-FBCISUSINGGOLDLINKER
.balign 16
HLINKFILES:
.type HLINKFILES, @function
push ebp
mov ebp, esp
sub esp, 132
push ebx
mov dword ptr [ebp-4], 0
.Lt_0111:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-4], 0
call HSETOUTNAME
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .Lt_0115
.Lt_0116:
call FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .Lt_0119
.Lt_011A:
sub esp, 12
push 0
push 11
push offset Lt_011B
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0117
.Lt_0119:
cmp dword ptr [ebp-52], 1
jne .Lt_011C
.Lt_011D:
sub esp, 12
push 0
push 12
push offset Lt_011E
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_011C:
.Lt_0117:
jmp .Lt_0113
.Lt_0115:
cmp dword ptr [ebp-48], 2
jne .Lt_011F
.Lt_0120:
call FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .Lt_0123
.Lt_0124:
sub esp, 12
push 0
push 13
push offset Lt_0125
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0121
.Lt_0123:
cmp dword ptr [ebp-52], 1
jne .Lt_0126
.Lt_0127:
sub esp, 12
push 0
push 15
push offset Lt_0128
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0121
.Lt_0126:
cmp dword ptr [ebp-52], 2
jne .Lt_0129
.Lt_012A:
sub esp, 12
push 0
push 22
push offset Lt_012B
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0129:
.Lt_0121:
.Lt_011F:
.Lt_0113:
sub esp, 12
push 0
push 5
push offset Lt_012E
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+428]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_012D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .Lt_0130
.Lt_0132:
sub esp, 8
push 129
lea eax, [FBC+1217]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_0134
sub esp, 12
push 0
push 8
push offset Lt_0135
push 129
lea eax, [FBC+1217]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0133
.Lt_0134:
push 4
push offset Lt_0136
push 129
lea eax, [FBC+1217]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0138
sub esp, 12
push 0
push 8
push offset Lt_0139
push 129
lea eax, [FBC+1217]
push eax
call fb_StrAssign
add esp, 32
.Lt_0138:
.Lt_0137:
.Lt_0133:
sub esp, 12
push 0
push 13
push offset Lt_013A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 129
lea eax, [FBC+1217]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .Lt_013C
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 261
lea eax, [FBC+428]
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 30
push offset Lt_013F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
call FBGETCPUFAMILY
test eax, eax
jne .Lt_0141
sub esp, 12
push 0
push 26
push offset Lt_0142
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0140
.Lt_0141:
sub esp, 12
push 0
push 22
push offset Lt_0143
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0140:
.Lt_013C:
.Lt_013B:
jmp .Lt_012F
.Lt_0144:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .Lt_0146
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
sub esp, 8
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 261
lea eax, [FBC+428]
push eax
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 12
push offset Lt_0149
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [FBC+428]
push eax
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
push 4
push offset Lt_0049
push -1
sub esp, 12
push 3
lea eax, [ebp-28]
push eax
call fb_LEFT
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_014B
sub esp, 12
push 0
push -1
sub esp, 4
push -1
lea eax, [ebp-28]
push eax
call fb_StrLen
add esp, 8
add eax, -3
push eax
lea eax, [ebp-28]
push eax
call fb_RIGHT
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
.Lt_014B:
.Lt_014A:
jmp .Lt_0145
.Lt_0146:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
jmp .Lt_014D
.Lt_014F:
sub esp, 12
push 0
push 38
push offset Lt_0150
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_014C
.Lt_0151:
sub esp, 12
push 0
push 38
push offset Lt_0152
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_014C
.Lt_0153:
sub esp, 12
push 0
push 33
push offset Lt_0154
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_014C
.Lt_0155:
call FBGETCPUFAMILY
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .Lt_0158
.Lt_0159:
sub esp, 12
push 0
push 36
push offset Lt_015A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0156
.Lt_0158:
cmp dword ptr [ebp-56], 1
jne .Lt_015B
.Lt_015C:
sub esp, 12
push 0
push 45
push offset Lt_015D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0156
.Lt_015B:
cmp dword ptr [ebp-56], 2
jne .Lt_015E
.Lt_015F:
sub esp, 12
push 0
push 42
push offset Lt_0160
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0156
.Lt_015E:
cmp dword ptr [ebp-56], 3
jne .Lt_0161
.Lt_0162:
sub esp, 12
push 0
push 44
push offset Lt_0163
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0161:
.Lt_0156:
jmp .Lt_014C
.Lt_0164:
sub esp, 12
push 0
push 40
push offset Lt_0165
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_014C
.Lt_0166:
sub esp, 12
push 0
push 36
push offset Lt_0167
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_014C
.Lt_014D:
mov eax, dword ptr [ebp-52]
add eax, 4294967294
cmp eax, 8
ja .Lt_014C
mov eax, dword ptr [ebp-52]
jmp dword ptr [.LT_0168+eax*4-8]
.LT_0168:
.int .Lt_0155
.int .Lt_014C
.int .Lt_014C
.int .Lt_014F
.int .Lt_0151
.int .Lt_0153
.int .Lt_0166
.int .Lt_014C
.int .Lt_0164
.Lt_014C:
.Lt_0145:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push 28
mov ebx, eax
call FBGETOPTION
add esp, 16
or ebx, eax
je .Lt_016A
sub esp, 12
push 0
push 18
push offset Lt_016B
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_016A:
.Lt_0169:
jmp .Lt_012F
.Lt_016C:
sub esp, 12
push 0
push 66
push offset Lt_016D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_012F
.Lt_016E:
sub esp, 12
push 0
push 4
push offset Lt_016F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 8
call FBGETOPTION
add esp, 4
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 26
push offset Lt_0175
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-52], 0
.Lt_0179:
sub esp, 12
push 0
push 5
push offset Lt_017A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 32
mov eax, dword ptr [ebp-52]
sal eax, 5
lea ebx, [Lt_07DE+eax]
push ebx
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 32
.Lt_0177:
inc dword ptr [ebp-52]
.Lt_0176:
cmp dword ptr [ebp-52], 3
jle .Lt_0179
.Lt_0178:
sub esp, 12
push 0
push 14
push offset Lt_017B
push -1
lea ebx, [ebp-16]
push ebx
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_017C
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 11
push offset Lt_017D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_017E
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 129
lea eax, [FBC+1217]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_0180
sub esp, 12
push 0
push 11
push offset Lt_017D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0181
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0180:
.Lt_017F:
jmp .Lt_012F
.Lt_0130:
cmp dword ptr [ebp-48], 11
ja .Lt_012F
mov eax, dword ptr [ebp-48]
jmp dword ptr [.LT_0182+eax*4]
.LT_0182:
.int .Lt_0132
.int .Lt_0132
.int .Lt_0144
.int .Lt_012F
.int .Lt_016C
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_0144
.int .Lt_016E
.Lt_012F:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 3
jne .Lt_0184
sub esp, 12
push 0
push 6
push offset Lt_0185
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+2915]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 13
push offset Lt_0187
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0183
.Lt_0184:
sub esp, 12
push 34
call FBGETOPTION
add esp, 16
sub esp, 12
push 3
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
call FBCISUSINGGOLDLINKER
not eax
and ebx, eax
je .Lt_0189
sub esp, 12
push 0
push 3
push offset Lt_0107
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+2915]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 12
push offset Lt_018B
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0189:
.Lt_0188:
.Lt_0183:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .Lt_018D
.Lt_018F:
sub esp, 12
push 33
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
sub esp, 12
push 0
push 10
push offset Lt_0190
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-52]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0191
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp-52]
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .Lt_0193
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 261
lea eax, [FBC+428]
push eax
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_0195
push -1
lea eax, [ebp-40]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 16
push offset Lt_0196
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-40]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00F2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0193:
.Lt_0192:
jmp .Lt_018C
.Lt_0197:
sub esp, 12
push 0
push 23
push offset Lt_0198
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_018C
.Lt_018D:
cmp dword ptr [ebp-48], 4
ja .Lt_018C
mov eax, dword ptr [ebp-48]
jmp dword ptr [.LT_0199+eax*4]
.LT_0199:
.int .Lt_018F
.int .Lt_018F
.int .Lt_018C
.int .Lt_018C
.int .Lt_0197
.Lt_018C:
cmp dword ptr [FBC+2124], 0
je .Lt_019B
sub esp, 12
push 0
push 10
push offset Lt_019C
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_019B:
.Lt_019A:
sub esp, 8
push 261
lea eax, [FBC+956]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_019E
sub esp, 12
push 0
push 7
push offset Lt_019F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+956]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_019E:
.Lt_019D:
sub esp, 12
push 13
call FBGETOPTION
add esp, 16
test eax, eax
jne .Lt_01A1
sub esp, 12
push 21
call FBGETOPTION
add esp, 16
test eax, eax
jne .Lt_01A3
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
sub esp, 12
push 3
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_01A5
sub esp, 12
push 0
push 4
push offset Lt_01A6
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01A5:
.Lt_01A4:
.Lt_01A3:
.Lt_01A2:
.Lt_01A1:
.Lt_01A0:
sub esp, 12
lea eax, [FBC+384]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .Lt_01A8
sub esp, 12
push 0
push 6
push offset Lt_01A9
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_01A7
.Lt_01A8:
sub esp, 12
push 0
push 5
push offset Lt_01AA
push -1
lea eax, [ebp-60]
push eax
call fb_StrAssign
add esp, 32
.Lt_01A7:
.Lt_01AB:
cmp dword ptr [ebp-48], 0
je .Lt_01AC
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F2
push -1
sub esp, 4
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
push -1
lea ebx, [ebp-60]
push ebx
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea ebx, [ebp-72]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-48], eax
jmp .Lt_01AB
.Lt_01AC:
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .Lt_01B1
.Lt_01B3:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .Lt_01B5
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01B6
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01B4
.Lt_01B5:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01B6
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 21
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_01B8
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01B9
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01B8:
.Lt_01B7:
.Lt_01B4:
jmp .Lt_01B0
.Lt_01BA:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .Lt_01BC
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01BD
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01BB
.Lt_01BC:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01BE
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 21
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_01C0
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01C1
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01C0:
.Lt_01BF:
.Lt_01BB:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01C2
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01B0
.Lt_01C3:
sub esp, 12
push 21
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_01C5
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01B9
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01C4
.Lt_01C5:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01B6
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01C4:
jmp .Lt_01B0
.Lt_01C6:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
test eax, eax
jne .Lt_01C8
sub esp, 12
push 21
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_01CA
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
jmp .Lt_01CC
.Lt_01CE:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01B9
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01CB
.Lt_01CF:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01D0
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01CB
.Lt_01CC:
mov eax, dword ptr [ebp-52]
add eax, 4294967288
cmp eax, 2
ja .Lt_01CF
mov eax, dword ptr [ebp-52]
jmp dword ptr [.LT_01D1+eax*4-32]
.LT_01D1:
.int .Lt_01CE
.int .Lt_01CF
.int .Lt_01CE
.Lt_01CB:
jmp .Lt_01C9
.Lt_01CA:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
jmp .Lt_01D3
.Lt_01D5:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01B6
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01D2
.Lt_01D6:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01D7
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01D2
.Lt_01D3:
mov eax, dword ptr [ebp-52]
add eax, 4294967288
cmp eax, 2
ja .Lt_01D6
mov eax, dword ptr [ebp-52]
jmp dword ptr [.LT_01D8+eax*4-32]
.LT_01D8:
.int .Lt_01D5
.int .Lt_01D6
.int .Lt_01D5
.Lt_01D2:
.Lt_01C9:
.Lt_01C8:
.Lt_01C7:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
je .Lt_01DA
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 8
je .Lt_01DC
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01DD
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01DC:
.Lt_01DB:
sub esp, 12
push 32
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_01DF
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01E0
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01DE
.Lt_01DF:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01C2
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01DE:
.Lt_01DA:
.Lt_01D9:
jmp .Lt_01B0
.Lt_01E1:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_01B6
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01B0
.Lt_01B1:
cmp dword ptr [ebp-48], 10
ja .Lt_01B0
mov eax, dword ptr [ebp-48]
jmp dword ptr [.LT_01E2+eax*4]
.LT_01E2:
.int .Lt_01BA
.int .Lt_01B3
.int .Lt_01C6
.int .Lt_01C3
.int .Lt_01E1
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.int .Lt_01C6
.Lt_01B0:
cmp dword ptr [FBC+2120], 0
jne .Lt_01E4
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .Lt_01E6
sub esp, 12
push 0
push 3
push offset Lt_0107
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+2915]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_001B
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 32
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_01E8
sub esp, 12
push 0
push 11
push offset Lt_01E9
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_01E7
.Lt_01E8:
sub esp, 12
push 0
push 8
push offset Lt_01EA
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01E7:
sub esp, 12
push 0
push 2
push offset Lt_00F2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01E6:
.Lt_01E5:
.Lt_01E4:
.Lt_01E3:
sub esp, 12
lea eax, [FBC+188]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-48], eax
.Lt_01EB:
cmp dword ptr [ebp-48], 0
je .Lt_01EC
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F2
push -1
sub esp, 4
push -1
push dword ptr [ebp-48]
push 3
push offset Lt_0107
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-48], eax
jmp .Lt_01EB
.Lt_01EC:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
je .Lt_01F1
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .Lt_01F3
sub esp, 12
push 0
push 6
push offset Lt_01F4
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_01F3:
.Lt_01F2:
.Lt_01F1:
.Lt_01F0:
sub esp, 12
lea eax, [FBC+220]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-48], eax
.Lt_01F5:
cmp dword ptr [ebp-48], 0
je .Lt_01F6
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F2
push -1
sub esp, 4
push -1
push dword ptr [ebp-48]
push 3
push offset Lt_0107
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-48], eax
jmp .Lt_01F5
.Lt_01F6:
sub esp, 12
lea eax, [FBC+340]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-48], eax
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-52], eax
.Lt_01FA:
cmp dword ptr [ebp-48], 0
je .Lt_01FB
cmp dword ptr [ebp-52], 0
je .Lt_01FC
push -1
lea eax, [ebp-28]
push eax
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
call fb_StrCompare
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
jmp .Lt_07DC
.Lt_01FC:
mov dword ptr [ebp-56], -1
.Lt_07DC:
cmp dword ptr [ebp-56], 0
je .Lt_01FF
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
push 4
push offset Lt_0200
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
.Lt_01FF:
.Lt_01FE:
sub esp, 12
push dword ptr [ebp-48]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-48], eax
jmp .Lt_01FA
.Lt_01FB:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
je .Lt_0204
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .Lt_0206
sub esp, 12
push 0
push 6
push offset Lt_0207
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0205
.Lt_0206:
sub esp, 12
push 0
push 6
push offset Lt_0208
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0205:
.Lt_0204:
.Lt_0203:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .Lt_020A
.Lt_020C:
sub esp, 12
push 32
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_020E
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_020F
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_020D
.Lt_020E:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0210
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_020D:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 8
je .Lt_0212
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0213
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0212:
.Lt_0211:
jmp .Lt_0209
.Lt_0214:
sub esp, 12
push 0
push -1
sub esp, 8
push offset Lt_0210
call HFINDLIB
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0209
.Lt_020A:
cmp dword ptr [ebp-48], 10
ja .Lt_0209
mov eax, dword ptr [ebp-48]
jmp dword ptr [.LT_0215+eax*4]
.LT_0215:
.int .Lt_0214
.int .Lt_0209
.int .Lt_020C
.int .Lt_0209
.int .Lt_0209
.int .Lt_020C
.int .Lt_020C
.int .Lt_020C
.int .Lt_020C
.int .Lt_0209
.int .Lt_020C
.Lt_0209:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
jne .Lt_0217
sub esp, 12
push 0
push 26
push offset Lt_0218
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0217:
.Lt_0216:
sub esp, 12
push 0
push 2
push offset Lt_00C3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 128
lea eax, [FBC+1474]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-44], 2
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
jne .Lt_021A
mov dword ptr [ebp-44], 12
.Lt_021A:
.Lt_0219:
sub esp, 4
lea eax, [ebp-16]
push eax
push dword ptr [ebp-44]
push offset Lt_021B
call FBCRUNBIN
add esp, 16
test eax, eax
jne .Lt_021D
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0112
.Lt_021D:
.Lt_021C:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-48], eax
jmp .Lt_021F
.Lt_0221:
call fb_FileFree
mov dword ptr [ebp-52], eax
sub esp, 8
push 0
push dword ptr [ebp-52]
push 0
push 3
push 0
lea eax, [FBC+428]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileOpen
add esp, 32
test eax, eax
je .Lt_0223
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0112
.Lt_0223:
.Lt_0222:
push 4
sub esp, 8
push 33
call FBGETOPTION
add esp, 12
mov dword ptr [ebp-56], eax
lea eax, [ebp-56]
push eax
push 533
push dword ptr [ebp-52]
call fb_FilePut
add esp, 16
test eax, eax
je .Lt_0225
push 0
push 0
push offset Lt_0087
push 1083
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0225:
sub esp, 12
push dword ptr [ebp-52]
call fb_FileClose
add esp, 16
test eax, eax
je .Lt_0226
push 0
push 0
push offset Lt_0087
push 1085
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0226:
jmp .Lt_021E
.Lt_0227:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .Lt_0229
sub esp, 8
lea eax, [ebp-40]
push eax
lea eax, [ebp-28]
push eax
call MAKEIMPLIB
add esp, 16
test eax, eax
jne .Lt_022B
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0112
.Lt_022B:
.Lt_022A:
.Lt_0229:
.Lt_0228:
jmp .Lt_021E
.Lt_022C:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
sub esp, 8
push 129
lea eax, [FBC+1988]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_022E
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 261
lea eax, [FBC+428]
push eax
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call HSTRIPEXT
add esp, 12
push eax
push 129
lea eax, [FBC+1988]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 16
.Lt_022E:
.Lt_022D:
sub esp, 12
push 0
push 9
push offset Lt_0231
push -1
lea eax, [ebp-72]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 129
lea eax, [FBC+1988]
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0232
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 13
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_0234
sub esp, 12
push 0
push 12
push offset Lt_0236
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 261
lea eax, [FBC+428]
push eax
push -1
lea eax, [ebp-128]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 7
push offset Lt_0239
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-128]
push eax
call fb_StrDelete
add esp, 16
.Lt_0234:
.Lt_0233:
sub esp, 12
push 0
push 8
push offset Lt_023B
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 261
lea eax, [FBC+428]
push eax
push -1
lea eax, [ebp-88]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_023D
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_012D
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
lea eax, [ebp-88]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 3
push offset Lt_023E
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 261
lea eax, [FBC+428]
push eax
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_012D
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [FBC+56], 0
jne .Lt_0240
sub esp, 12
push 0
push 6
push offset Lt_0241
push -1
lea eax, [ebp-72]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0240:
.Lt_023F:
cmp dword ptr [FBC+56], 0
je .Lt_0243
sub esp, 4
push 2
push 6
push offset Lt_0244
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
lea eax, [ebp-72]
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_0243:
.Lt_0242:
sub esp, 4
mov dword ptr [ebp-92], 0
lea eax, [ebp-92]
push eax
lea eax, [ebp-60]
push eax
push 8
call FBCFINDBIN
add esp, 16
sub esp, 12
push -1
lea eax, [ebp-72]
push eax
push -1
sub esp, 4
push 2
push offset Lt_00C3
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call fb_StrConcat
add esp, 20
push eax
call fb_Shell
add esp, 16
mov dword ptr [ebp-76], eax
cmp dword ptr [ebp-76], 0
je .Lt_0249
cmp dword ptr [FBC+56], 0
je .Lt_024B
sub esp, 4
push 1
sub esp, 4
push -1
sub esp, 12
push dword ptr [ebp-76]
call fb_IntToStr
add esp, 16
push eax
push 24
push offset Lt_024C
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_024B:
.Lt_024A:
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0112
.Lt_0249:
.Lt_0248:
sub esp, 12
lea eax, [FBC+428]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 16
sub esp, 12
lea eax, [ebp-72]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-60]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_021E
.Lt_021F:
cmp dword ptr [ebp-48], 4
ja .Lt_021E
mov eax, dword ptr [ebp-48]
jmp dword ptr [.LT_024E+eax*4]
.LT_024E:
.int .Lt_0227
.int .Lt_0227
.int .Lt_021E
.int .Lt_0221
.int .Lt_022C
.Lt_021E:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_0112:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HLINKFILES, .-HLINKFILES

.section .data
.balign 4
Lt_07DE:
.ascii "CASE_INSENSITIVE_FS=1\0"
.skip 10,0
.ascii "TOTAL_MEMORY=67108864\0"
.skip 10,0
.ascii "ALLOW_MEMORY_GROWTH=1\0"
.skip 10,0
.ascii "RETAIN_COMPILER_SETTINGS=1\0"
.skip 5,0

.section .text
.balign 16
HREADOBJINFO:
.type HREADOBJINFO, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_024F:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0251:
sub esp, 12
lea eax, [ebp-12]
push eax
call OBJINFOREADNEXT
add esp, 16
mov dword ptr [ebp-20], eax
jmp .Lt_0255
.Lt_0257:
sub esp, 4
push 0
lea eax, [ebp-12]
push eax
lea eax, [FBC+340]
push eax
call STRSETADD
add esp, 16
jmp .Lt_0254
.Lt_0258:
sub esp, 4
push 0
lea eax, [ebp-12]
push eax
lea eax, [FBC+384]
push eax
call STRSETADD
add esp, 16
jmp .Lt_0254
.Lt_0259:
cmp dword ptr [FBC+3180], 0
jne .Lt_025B
sub esp, 12
push 0
push 1
push -1
sub esp, 8
call OBJINFOGETFILENAME
add esp, 8
push eax
push 20
call ERRREPORTWARNEX
add esp, 32
mov dword ptr [FBC+3180], -1
sub esp, 8
push -1
push 30
call FBSETOPTION
add esp, 16
.Lt_025B:
.Lt_025A:
jmp .Lt_0254
.Lt_025C:
sub esp, 8
push -1
push 31
call FBSETOPTION
add esp, 16
jmp .Lt_0254
.Lt_025D:
sub esp, 12
push dword ptr [ebp-12]
call FBGETLANGID
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], -1
jne .Lt_025F
mov dword ptr [ebp-16], 0
.Lt_025F:
.Lt_025E:
mov eax, dword ptr [FBC+3176]
cmp dword ptr [ebp-16], eax
je .Lt_0261
sub esp, 12
push 0
push 1
push -1
sub esp, 8
call OBJINFOGETFILENAME
add esp, 8
push eax
push 21
call ERRREPORTWARNEX
add esp, 32
mov eax, dword ptr [ebp-16]
mov dword ptr [FBC+3176], eax
sub esp, 8
push dword ptr [ebp-16]
push 10
call FBSETOPTION
add esp, 16
.Lt_0261:
.Lt_0260:
jmp .Lt_0254
.Lt_0262:
jmp .Lt_0252
jmp .Lt_0254
.Lt_0255:
cmp dword ptr [ebp-20], 4
ja .Lt_0262
mov eax, dword ptr [ebp-20]
jmp dword ptr [.LT_0263+eax*4]
.LT_0263:
.int .Lt_0257
.int .Lt_0258
.int .Lt_0259
.int .Lt_025C
.int .Lt_025D
.Lt_0254:
.Lt_0253:
jmp .Lt_0251
.Lt_0252:
call OBJINFOREADEND
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_0250:
mov esp, ebp
pop ebp
ret
.size HREADOBJINFO, .-HREADOBJINFO
.balign 16
HCOLLECTOBJINFO:
.type HCOLLECTOBJINFO, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0264:
sub esp, 12
lea eax, [FBC+188]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0266:
cmp dword ptr [ebp-4], 0
je .Lt_0267
sub esp, 12
push dword ptr [ebp-4]
call OBJINFOREADOBJ
add esp, 16
call HREADOBJINFO
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0266
.Lt_0267:
sub esp, 12
lea eax, [FBC+340]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0268:
cmp dword ptr [ebp-8], 0
je .Lt_0269
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .Lt_026B
sub esp, 8
lea eax, [FBC+384]
push eax
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
call OBJINFOREADLIB
add esp, 16
call HREADOBJINFO
.Lt_026B:
.Lt_026A:
sub esp, 12
push dword ptr [ebp-8]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_0268
.Lt_0269:
sub esp, 12
lea eax, [FBC+220]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_026C:
cmp dword ptr [ebp-4], 0
je .Lt_026D
sub esp, 12
push dword ptr [ebp-4]
call OBJINFOREADLIBFILE
add esp, 16
call HREADOBJINFO
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_026C
.Lt_026D:
.Lt_0265:
pop ebx
mov esp, ebp
pop ebp
ret
.size HCOLLECTOBJINFO, .-HCOLLECTOBJINFO
.balign 16
HFATALINVALIDOPTION:
.type HFATALINVALIDOPTION, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_026E:
sub esp, 12
push 0
push 1
push -1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 4
push 0
push -1
sub esp, 8
push 2
push offset Lt_012D
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
push 2
push offset Lt_012D
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-36]
push 81
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_026F:
mov esp, ebp
pop ebp
ret
.size HFATALINVALIDOPTION, .-HFATALINVALIDOPTION
.balign 16
HCHECKWAITINGOBJFILE:
.type HCHECKWAITINGOBJFILE, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_0273:
sub esp, 8
push -1
lea eax, [FBC+8]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_0276
sub esp, 12
push 0
push 1
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 4
push 0
push -1
sub esp, 8
push -1
lea eax, [FBC+8]
push eax
push 4
push offset Lt_012C
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-24]
push 292
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 32
.Lt_0276:
.Lt_0275:
.Lt_0274:
mov esp, ebp
pop ebp
ret
.size HCHECKWAITINGOBJFILE, .-HCHECKWAITINGOBJFILE
.balign 16
HSETIOFILE:
.type HSETIOFILE, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0279:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea ebx, [FBC+8]
push ebx
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_027C
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
cmp dword ptr [ebp+16], 0
je .Lt_027E
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_027F
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_027D
.Lt_027E:
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_027F
push -1
sub esp, 4
push dword ptr [ebp+12]
call HSTRIPEXT
add esp, 8
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 32
.Lt_027D:
mov eax, dword ptr [ebp+8]
mov dword ptr [FBC+4], eax
jmp .Lt_027B
.Lt_027C:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], -1
.Lt_027B:
sub esp, 12
lea eax, [FBC+8]
push eax
call FBCADDOBJ
add esp, 16
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
sub esp, 12
push 0
push 1
push offset Lt_0000
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 32
.Lt_027A:
pop ebx
mov esp, ebp
pop ebp
ret
.size HSETIOFILE, .-HSETIOFILE
.balign 16
HADDBAS:
.type HADDBAS, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0282:
sub esp, 4
push 0
push dword ptr [ebp+8]
lea eax, [FBC+72]
push eax
call LISTNEWNODE
add esp, 4
push eax
call HSETIOFILE
add esp, 16
.Lt_0283:
mov esp, ebp
pop ebp
ret
.size HADDBAS, .-HADDBAS
.balign 16
HPARSEGNUTRIPLET:
.type HPARSEGNUTRIPLET, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_029E:
mov dword ptr [ebp-4], 0
.Lt_02A3:
sub esp, 4
sub esp, 8
mov eax, dword ptr [ebp-4]
push dword ptr [GNUOSMAP+eax*8]
call fb_StrAllocTempDescZ
add esp, 12
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 16
test eax, eax
jle .Lt_02A5
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [GNUOSMAP+eax*8+4]
mov dword ptr [ebx], ecx
jmp .Lt_02A2
.Lt_02A5:
.Lt_02A4:
.Lt_02A1:
inc dword ptr [ebp-4]
.Lt_02A0:
cmp dword ptr [ebp-4], 10
jle .Lt_02A3
.Lt_02A2:
cmp dword ptr [ebp+12], 0
jle .Lt_02A7
sub esp, 12
push 0
push -1
sub esp, 4
mov ecx, dword ptr [ebp+12]
dec ecx
push ecx
push dword ptr [ebp+8]
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-16], 0
.Lt_02AB:
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [GNUARCHMAP+eax*8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_02AD
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [GNUARCHMAP+eax*8+4]
mov dword ptr [ecx], ebx
jmp .Lt_02AA
.Lt_02AD:
.Lt_02AC:
.Lt_02A9:
inc dword ptr [ebp-16]
.Lt_02A8:
cmp dword ptr [ebp-16], 12
jle .Lt_02AB
.Lt_02AA:
sub esp, 12
lea ebx, [ebp-12]
push ebx
call fb_StrDelete
add esp, 16
.Lt_02A7:
.Lt_02A6:
.Lt_029F:
pop ebx
mov esp, ebp
pop ebp
ret
.size HPARSEGNUTRIPLET, .-HPARSEGNUTRIPLET
.balign 16
HPARSETARGETARG:
.type HPARSETARGETARG, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_02B2:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+8]
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-20], 0
.Lt_02B7:
push 0
mov eax, dword ptr [ebp-20]
imul eax, 12
push dword ptr [FBOSARCHMAP+eax]
push -1
lea eax, [ebp-12]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_02B9
mov eax, dword ptr [ebp-20]
imul eax, 12
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [FBOSARCHMAP+eax+4]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-20]
imul ecx, 12
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [FBOSARCHMAP+ecx+8]
mov dword ptr [ebx], eax
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_02B3
.Lt_02B9:
.Lt_02B8:
.Lt_02B5:
inc dword ptr [ebp-20]
.Lt_02B4:
cmp dword ptr [ebp-20], 11
jle .Lt_02B7
.Lt_02B6:
sub esp, 4
sub esp, 4
push 1
push offset Lt_02BA
call fb_StrAllocTempDescZEx
add esp, 12
push eax
push dword ptr [ebp+8]
push 1
call fb_StrInstr
add esp, 16
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .Lt_02BC
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp-16]
dec eax
push eax
lea eax, [ebp-12]
push eax
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call FBIDENTIFYOS
add esp, 16
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
sub esp, 4
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 8
sub eax, dword ptr [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call fb_RIGHT
add esp, 12
push eax
push -1
lea eax, [ebp-40]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call FBCPUTYPEFROMCPUFAMILYID
add esp, 16
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
sub esp, 12
lea eax, [ebp-40]
push eax
call fb_StrDelete
add esp, 16
.Lt_02BC:
.Lt_02BB:
mov eax, dword ptr [ebp+12]
mov ebx, dword ptr [eax]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp+16]
mov ecx, dword ptr [eax]
test ecx, ecx
setl cl
shr ecx, 1
sbb ecx, ecx
and ebx, ecx
je .Lt_02C0
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call HPARSEGNUTRIPLET
add esp, 16
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], -1
.Lt_02C0:
.Lt_02BF:
sub esp, 12
lea ecx, [ebp-12]
push ecx
call fb_StrDelete
add esp, 16
.Lt_02B3:
pop ebx
mov esp, ebp
pop ebp
ret
.size HPARSETARGETARG, .-HPARSETARGETARG
.balign 16
HANDLEOPT:
.type HANDLEOPT, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_02C3:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_02C6
.Lt_02C8:
sub esp, 12
push dword ptr [ebp+12]
call FBCADDOBJ
add esp, 16
jmp .Lt_02C5
.Lt_02C9:
push 7
push offset Lt_02CA
push -1
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [FBC+28], eax
sub esp, 12
push dword ptr [ebp+12]
call FBIDENTIFYFBCARCH
add esp, 16
mov dword ptr [FBC+24], eax
cmp dword ptr [FBC+24], 0
jge .Lt_02CC
sub esp, 12
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
sub esp, 8
push -1
push dword ptr [ebp+12]
push 7
push offset Lt_02CD
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call HFATALINVALIDOPTION
add esp, 16
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.Lt_02CC:
.Lt_02CB:
jmp .Lt_02C5
.Lt_02D0:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_02D4
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_02D3
.Lt_02D5:
mov dword ptr [FBC+32], 1
jmp .Lt_02D1
.Lt_02D3:
push 6
push offset Lt_02D7
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_02D6
.Lt_02D8:
mov dword ptr [FBC+32], 0
jmp .Lt_02D1
.Lt_02D6:
sub esp, 12
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.Lt_02D9:
.Lt_02D1:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_02C5
.Lt_02DA:
sub esp, 12
push dword ptr [ebp+12]
call HADDBAS
add esp, 16
jmp .Lt_02C5
.Lt_02DB:
sub esp, 8
push 3
push 0
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+52], -1
jmp .Lt_02C5
.Lt_02DC:
mov dword ptr [FBC+52], -1
jmp .Lt_02C5
.Lt_02DD:
sub esp, 12
push dword ptr [ebp+12]
call FBADDPREDEFINE
add esp, 16
jmp .Lt_02C5
.Lt_02DE:
sub esp, 8
push 2
push 0
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_02DF:
sub esp, 8
push -1
push 15
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_02E0:
sub esp, 8
push -1
push 20
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_02E1:
sub esp, 8
push -1
push 14
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_02E2:
sub esp, 8
push -1
push 12
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_02E3:
sub esp, 8
push -1
push 13
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_02E4:
sub esp, 8
push -1
push 18
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_02E5:
sub esp, 8
push -1
push 19
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_02E6:
sub esp, 8
push -1
push 15
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 16
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_02E7:
sub esp, 8
push -1
push 15
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 16
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 17
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 18
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 20
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 19
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_02E8:
sub esp, 8
push -1
push 28
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_02E9:
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call FBGETLANGID
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_02EB
sub esp, 12
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.Lt_02EB:
.Lt_02EA:
sub esp, 8
push dword ptr [ebp-8]
push 10
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 11
call FBSETOPTION
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [FBC+3176], eax
jmp .Lt_02C5
.Lt_02EC:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
push 8
push offset Lt_02F0
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_02EF
.Lt_02F1:
mov dword ptr [ebp-8], 0
jmp .Lt_02ED
.Lt_02EF:
push 5
push offset Lt_02F3
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_02F2
.Lt_02F4:
mov dword ptr [ebp-8], 1
jmp .Lt_02ED
.Lt_02F2:
sub esp, 12
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.Lt_02F5:
.Lt_02ED:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp-8]
push 6
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_02F6:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_02FA
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .Lt_02FC
.Lt_02FD:
push 4
push offset Lt_02FB
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_02F9
.Lt_02FC:
mov dword ptr [ebp-8], 0
jmp .Lt_02F7
.Lt_02F9:
push 4
push offset Lt_02FF
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_02FE
.Lt_0300:
mov dword ptr [ebp-8], 1
jmp .Lt_02F7
.Lt_02FE:
sub esp, 12
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.Lt_0301:
.Lt_02F7:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp-8]
push 5
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_0302:
sub esp, 8
push -1
push 12
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 13
call FBSETOPTION
add esp, 16
sub esp, 8
push -1
push 14
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_0303:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_0307
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0306
.Lt_0308:
mov dword ptr [FBC+20], 0
jmp .Lt_0304
.Lt_0306:
push 4
push offset Lt_0038
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0309
.Lt_030A:
mov dword ptr [FBC+20], 1
jmp .Lt_0304
.Lt_0309:
push 5
push offset Lt_030C
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_030B
.Lt_030D:
mov dword ptr [FBC+20], 2
jmp .Lt_0304
.Lt_030B:
push 6
push offset Lt_030F
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_030E
.Lt_0310:
mov dword ptr [FBC+20], 3
jmp .Lt_0304
.Lt_030E:
sub esp, 12
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.Lt_0311:
.Lt_0304:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_02C5
.Lt_0312:
mov dword ptr [FBC+64], -1
jmp .Lt_02C5
.Lt_0313:
sub esp, 12
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call PATHSTRIPDIV
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call FBADDINCLUDEPATH
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_02C5
.Lt_0315:
sub esp, 12
push dword ptr [ebp+12]
call FBADDPREINCLUDE
add esp, 16
jmp .Lt_02C5
.Lt_0316:
sub esp, 4
push 0
push dword ptr [ebp+12]
lea eax, [FBC+252]
push eax
call STRSETADD
add esp, 16
jmp .Lt_02C5
.Lt_0317:
sub esp, 12
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call FBGETLANGID
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_0319
sub esp, 12
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.Lt_0319:
.Lt_0318:
sub esp, 8
push dword ptr [ebp-8]
push 10
call FBSETOPTION
add esp, 16
mov eax, dword ptr [ebp-8]
mov dword ptr [FBC+3176], eax
jmp .Lt_02C5
.Lt_031A:
sub esp, 8
push 1
push 0
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_031B:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+689]
push eax
call fb_StrAssign
add esp, 32
mov dword ptr [FBC+952], -1
jmp .Lt_02C5
.Lt_031C:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+956]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_02C5
.Lt_031D:
push 4
push offset Lt_031E
push -1
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0320
mov dword ptr [ebp-8], 2147483647
jmp .Lt_031F
.Lt_0320:
sub esp, 12
push dword ptr [ebp+12]
call fb_VALINT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jg .Lt_0322
sub esp, 12
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.Lt_0322:
.Lt_0321:
.Lt_031F:
sub esp, 8
push dword ptr [ebp-8]
push 24
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_0323:
sub esp, 8
push -1
push 30
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+3180], -1
jmp .Lt_02C5
.Lt_0324:
mov dword ptr [FBC+2120], -1
jmp .Lt_02C5
.Lt_0325:
sub esp, 8
push 0
push 23
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_0326:
sub esp, 8
push 0
push 34
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_0327:
mov dword ptr [FBC+2128], 0
jmp .Lt_02C5
.Lt_0328:
call HCHECKWAITINGOBJFILE
cmp dword ptr [FBC+4], 0
je .Lt_032A
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [FBC+4]
push dword ptr [eax+12]
call fb_StrAssign
add esp, 32
mov eax, dword ptr [FBC+4]
mov dword ptr [eax+16], -1
jmp .Lt_0329
.Lt_032A:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [FBC+8]
push eax
call fb_StrAssign
add esp, 32
.Lt_0329:
jmp .Lt_02C5
.Lt_032B:
push 4
push offset Lt_032C
push -1
push dword ptr [ebp+12]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_032E
mov dword ptr [ebp-8], 3
jmp .Lt_032D
.Lt_032E:
sub esp, 12
push dword ptr [ebp+12]
call fb_VALINT
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jge .Lt_0330
mov dword ptr [ebp-8], 0
jmp .Lt_032F
.Lt_0330:
cmp dword ptr [ebp-8], 3
jle .Lt_0331
mov dword ptr [ebp-8], 3
.Lt_0331:
.Lt_032F:
.Lt_032D:
sub esp, 8
push dword ptr [ebp-8]
push 8
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_0332:
sub esp, 4
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
sub esp, 4
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call PATHSTRIPDIV
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 24
lea eax, [ebp-16]
push eax
lea eax, [FBC+296]
push eax
call STRSETADD
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_02C5
.Lt_0334:
sub esp, 8
push -1
push 32
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_0335:
sub esp, 8
push -1
push 1
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+36], -1
jmp .Lt_02C5
.Lt_0336:
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [ebp+12]
call PATHSTRIPDIV
add esp, 12
push eax
push 261
lea eax, [FBC+2132]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push 47
lea eax, [FBC+2132]
push eax
call HREPLACESLASH
add esp, 16
jmp .Lt_02C5
.Lt_0337:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 5
push offset Lt_033B
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_033A
.Lt_033C:
mov dword ptr [FBC+68], 0
jmp .Lt_0338
.Lt_033A:
push 7
push offset Lt_033E
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_033D
.Lt_033F:
mov dword ptr [FBC+68], 1
jmp .Lt_0338
.Lt_033D:
push 2
push offset Lt_0341
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0340
.Lt_0342:
mov dword ptr [FBC+68], 2
jmp .Lt_0338
.Lt_0340:
push 9
push offset Lt_0344
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0343
.Lt_0345:
mov dword ptr [FBC+68], 3
jmp .Lt_0338
.Lt_0343:
push 6
push offset Lt_0347
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0346
.Lt_0348:
mov dword ptr [FBC+68], 4
jmp .Lt_0338
.Lt_0346:
sub esp, 12
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.Lt_0349:
.Lt_0338:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_02C5
.Lt_034A:
sub esp, 8
push -1
push 21
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_034B:
sub esp, 8
push 3
push 0
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+36], -1
mov dword ptr [FBC+40], -1
jmp .Lt_02C5
.Lt_034C:
mov dword ptr [FBC+40], -1
jmp .Lt_02C5
.Lt_034D:
sub esp, 8
push 3
push 0
call FBSETOPTION
add esp, 16
mov dword ptr [FBC+44], -1
mov dword ptr [FBC+48], -1
jmp .Lt_02C5
.Lt_034E:
mov dword ptr [FBC+48], -1
jmp .Lt_02C5
.Lt_034F:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [FBC+1217]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_0136
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0352
.Lt_0353:
sub esp, 8
push 1
push 36
call FBSETOPTION
add esp, 16
.Lt_0352:
.Lt_0350:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_02C5
.Lt_0354:
sub esp, 8
push -1
push 35
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_0355:
mov dword ptr [FBC+2124], -1
jmp .Lt_02C5
.Lt_0356:
mov dword ptr [FBC+2128], -1
jmp .Lt_02C5
.Lt_0357:
sub esp, 8
sub esp, 4
push dword ptr [ebp+12]
call fb_VALINT
add esp, 8
sal eax, 10
push eax
push 33
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_0358:
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-16]
push eax
lea eax, [ebp-12]
push eax
lea eax, [ebp-8]
push eax
push dword ptr [ebp+12]
call HPARSETARGETARG
add esp, 16
mov eax, dword ptr [ebp-8]
test eax, eax
setl al
shr eax, 1
sbb eax, eax
mov ebx, dword ptr [ebp-12]
test ebx, ebx
setl bl
shr ebx, 1
sbb ebx, ebx
or eax, ebx
je .Lt_035A
sub esp, 12
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.Lt_035A:
.Lt_0359:
sub esp, 8
push dword ptr [ebp-8]
push 3
call FBSETOPTION
add esp, 16
sub esp, 8
push dword ptr [ebp-12]
push 4
call FBSETOPTION
add esp, 16
mov ebx, dword ptr [ebp-8]
cmp ebx, 2
setne bl
shr ebx, 1
sbb ebx, ebx
mov eax, dword ptr [ebp-12]
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
or ebx, eax
or ebx, dword ptr [ebp-16]
je .Lt_035C
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 129
lea ebx, [FBC+1730]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_02BA
push 129
lea ebx, [FBC+1730]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 28
push eax
push 129
lea eax, [FBC+1859]
push eax
call fb_StrAssign
add esp, 32
.Lt_035C:
.Lt_035B:
jmp .Lt_02C5
.Lt_035E:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [FBC+1988]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_02C5
.Lt_035F:
mov dword ptr [FBC+56], -1
jmp .Lt_02C5
.Lt_0360:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrUcase2
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
push 5
push offset Lt_0364
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .Lt_0365
.Lt_0366:
push 2
push offset Lt_0008
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0363
.Lt_0365:
mov dword ptr [ebp-8], 0
jmp .Lt_0361
.Lt_0363:
push 2
push offset Lt_0006
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0367
.Lt_0368:
mov dword ptr [ebp-8], 1
jmp .Lt_0361
.Lt_0367:
push 2
push offset Lt_036A
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0369
.Lt_036B:
mov dword ptr [ebp-8], 2
jmp .Lt_0361
.Lt_0369:
sub esp, 12
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.Lt_036C:
.Lt_0361:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
sub esp, 8
push dword ptr [ebp-8]
push 7
call FBSETOPTION
add esp, 16
jmp .Lt_02C5
.Lt_036D:
mov dword ptr [FBC+60], -1
jmp .Lt_02C5
.Lt_036E:
mov dword ptr [ebp-8], -1
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-20]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_0372
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0371
.Lt_0373:
mov dword ptr [ebp-8], 0
jmp .Lt_036F
.Lt_0371:
push 5
push offset Lt_0375
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0374
.Lt_0376:
mov dword ptr [ebp-8], 4
jmp .Lt_036F
.Lt_0374:
push 6
push offset Lt_0378
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0377
.Lt_0379:
sub esp, 8
sub esp, 4
push 25
call FBGETOPTION
add esp, 8
or eax, 2
push eax
push 25
call FBSETOPTION
add esp, 16
jmp .Lt_036F
.Lt_0377:
push 7
push offset Lt_037B
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_037A
.Lt_037C:
sub esp, 8
sub esp, 4
push 25
call FBGETOPTION
add esp, 8
or eax, 1
push eax
push 25
call FBSETOPTION
add esp, 16
jmp .Lt_036F
.Lt_037A:
push 5
push offset Lt_037E
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_037D
.Lt_037F:
sub esp, 8
sub esp, 4
push 25
call FBGETOPTION
add esp, 8
or eax, 8
push eax
push 25
call FBSETOPTION
add esp, 16
jmp .Lt_036F
.Lt_037D:
push 11
push offset Lt_0381
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0380
.Lt_0382:
sub esp, 8
sub esp, 4
push 25
call FBGETOPTION
add esp, 8
or eax, 32
push eax
push 25
call FBSETOPTION
add esp, 16
jmp .Lt_036F
.Lt_0380:
push 10
push offset Lt_0384
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0383
.Lt_0385:
sub esp, 8
sub esp, 4
push 25
call FBGETOPTION
add esp, 8
or eax, 128
push eax
push 25
call FBSETOPTION
add esp, 16
mov dword ptr [ebp-8], 0
jmp .Lt_036F
.Lt_0383:
push 8
push offset Lt_0387
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0386
.Lt_0388:
sub esp, 8
sub esp, 4
push 25
call FBGETOPTION
add esp, 8
or eax, 64
push eax
push 25
call FBSETOPTION
add esp, 16
mov dword ptr [ebp-8], 0
jmp .Lt_036F
.Lt_0386:
push 7
push offset Lt_038A
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0389
.Lt_038B:
sub esp, 8
sub esp, 4
push 25
call FBGETOPTION
add esp, 8
or eax, 256
push eax
push 25
call FBSETOPTION
add esp, 16
jmp .Lt_036F
.Lt_0389:
push 9
push offset Lt_038D
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_038C
.Lt_038E:
sub esp, 8
push -233
push 25
call FBSETOPTION
add esp, 16
cmp dword ptr [ebp-8], 1
jle .Lt_0390
mov dword ptr [ebp-8], 1
.Lt_0390:
.Lt_038F:
jmp .Lt_036F
.Lt_038C:
sub esp, 12
push dword ptr [ebp+12]
call fb_VALINT
add esp, 16
mov dword ptr [ebp-8], eax
.Lt_0391:
.Lt_036F:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
cmp dword ptr [ebp-8], 0
jl .Lt_0393
sub esp, 8
push dword ptr [ebp-8]
push 22
call FBSETOPTION
add esp, 16
.Lt_0393:
.Lt_0392:
jmp .Lt_02C5
.Lt_0394:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00C3
push -1
sub esp, 4
push -1
sub esp, 4
push offset Lt_00C3
push offset Lt_0191
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HREPLACE
add esp, 16
push eax
push 2
push offset Lt_00C3
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 32
push eax
push 128
lea eax, [FBC+1346]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push 128
lea eax, [FBC+1346]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_02C5
.Lt_0398:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00C3
push -1
sub esp, 4
push -1
sub esp, 4
push offset Lt_00C3
push offset Lt_0191
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HREPLACE
add esp, 16
push eax
push 2
push offset Lt_00C3
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 32
push eax
push 128
lea eax, [FBC+1602]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push 128
lea eax, [FBC+1602]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_02C5
.Lt_039C:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00C3
push -1
sub esp, 4
push -1
sub esp, 4
push offset Lt_00C3
push offset Lt_0191
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call HREPLACE
add esp, 16
push eax
push 2
push offset Lt_00C3
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 32
push eax
push 128
lea eax, [FBC+1474]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push 128
lea eax, [FBC+1474]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_02C5
.Lt_03A0:
sub esp, 12
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [FBC+428]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_02C5
.Lt_03A1:
sub esp, 12
push 0
push -1
sub esp, 4
push 0
push dword ptr [ebp+12]
call fb_StrLcase2
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 13
push offset Lt_03A5
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03A4
.Lt_03A6:
sub esp, 8
push -1
push 26
call FBSETOPTION
add esp, 16
jmp .Lt_03A2
.Lt_03A4:
push 14
push offset Lt_03A8
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03A7
.Lt_03A9:
sub esp, 8
push -1
push 27
call FBSETOPTION
add esp, 16
jmp .Lt_03A2
.Lt_03A7:
sub esp, 12
push dword ptr [ebp+12]
call HFATALINVALIDOPTION
add esp, 16
.Lt_03AA:
.Lt_03A2:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_02C5
.Lt_02C6:
cmp dword ptr [ebp-4], 65
ja .Lt_02C5
mov eax, dword ptr [ebp-4]
jmp dword ptr [.LT_03AB+eax*4]
.LT_03AB:
.int .Lt_02C8
.int .Lt_02C9
.int .Lt_02D0
.int .Lt_02DA
.int .Lt_02DB
.int .Lt_02DC
.int .Lt_02DD
.int .Lt_02DE
.int .Lt_02DE
.int .Lt_02DF
.int .Lt_02E0
.int .Lt_02E1
.int .Lt_02E2
.int .Lt_02E3
.int .Lt_02E4
.int .Lt_02E5
.int .Lt_02E6
.int .Lt_02E7
.int .Lt_02E8
.int .Lt_02E9
.int .Lt_02EC
.int .Lt_02F6
.int .Lt_0302
.int .Lt_0303
.int .Lt_0312
.int .Lt_0313
.int .Lt_0315
.int .Lt_0316
.int .Lt_0317
.int .Lt_031A
.int .Lt_031B
.int .Lt_031C
.int .Lt_031D
.int .Lt_0323
.int .Lt_0324
.int .Lt_0325
.int .Lt_0326
.int .Lt_0327
.int .Lt_0328
.int .Lt_032B
.int .Lt_0332
.int .Lt_0334
.int .Lt_0335
.int .Lt_0336
.int .Lt_0337
.int .Lt_034A
.int .Lt_034B
.int .Lt_034C
.int .Lt_034D
.int .Lt_034E
.int .Lt_034F
.int .Lt_0354
.int .Lt_0355
.int .Lt_0356
.int .Lt_0357
.int .Lt_0358
.int .Lt_035E
.int .Lt_035F
.int .Lt_0360
.int .Lt_036D
.int .Lt_036E
.int .Lt_0394
.int .Lt_0398
.int .Lt_039C
.int .Lt_03A0
.int .Lt_03A1
.Lt_02C5:
.Lt_02C4:
pop ebx
mov esp, ebp
pop ebp
ret
.size HANDLEOPT, .-HANDLEOPT
.balign 16
PARSEOPTION:
.type PARSEOPTION, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
mov dword ptr [ebp-4], 0
.Lt_03AC:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_03AF
.Lt_03B1:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_03B4
mov dword ptr [ebp-4], 0
jmp .Lt_03AD
.Lt_03B4:
.Lt_03B3:
push 5
push offset Lt_03B5
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03B7
mov dword ptr [ebp-4], 1
jmp .Lt_03AD
.Lt_03B7:
.Lt_03B6:
push 4
push offset Lt_03B8
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03BA
mov dword ptr [ebp-4], 2
jmp .Lt_03AD
.Lt_03BA:
.Lt_03B9:
jmp .Lt_03AE
.Lt_03BB:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_03BE
mov dword ptr [ebp-4], 3
jmp .Lt_03AD
.Lt_03BE:
.Lt_03BD:
jmp .Lt_03AE
.Lt_03BF:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_03C2
mov dword ptr [ebp-4], 4
jmp .Lt_03AD
.Lt_03C2:
.Lt_03C1:
jmp .Lt_03AE
.Lt_03C3:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_03C6
mov dword ptr [ebp-4], 5
jmp .Lt_03AD
.Lt_03C6:
.Lt_03C5:
jmp .Lt_03AE
.Lt_03C7:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_03CA
mov dword ptr [ebp-4], 6
jmp .Lt_03AD
.Lt_03CA:
.Lt_03C9:
push 4
push offset Lt_03CB
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03CD
mov dword ptr [ebp-4], 7
jmp .Lt_03AD
.Lt_03CD:
.Lt_03CC:
push 6
push offset Lt_03CE
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03D0
mov dword ptr [ebp-4], 8
jmp .Lt_03AD
.Lt_03D0:
.Lt_03CF:
jmp .Lt_03AE
.Lt_03D1:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_03D4
mov dword ptr [ebp-4], 9
jmp .Lt_03AD
.Lt_03D4:
.Lt_03D3:
push 3
push offset Lt_03D5
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03D7
mov dword ptr [ebp-4], 16
jmp .Lt_03AD
.Lt_03D7:
.Lt_03D6:
push 7
push offset Lt_03D8
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03DA
mov dword ptr [ebp-4], 10
jmp .Lt_03AD
.Lt_03DA:
.Lt_03D9:
push 8
push offset Lt_03DB
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03DD
mov dword ptr [ebp-4], 11
jmp .Lt_03AD
.Lt_03DD:
.Lt_03DC:
push 7
push offset Lt_03DE
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03E0
mov dword ptr [ebp-4], 12
jmp .Lt_03AD
.Lt_03E0:
.Lt_03DF:
push 11
push offset Lt_03E1
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03E3
mov dword ptr [ebp-4], 13
jmp .Lt_03AD
.Lt_03E3:
.Lt_03E2:
push 10
push offset Lt_03E4
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03E6
mov dword ptr [ebp-4], 14
jmp .Lt_03AD
.Lt_03E6:
.Lt_03E5:
push 9
push offset Lt_03E7
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03E9
mov dword ptr [ebp-4], 15
jmp .Lt_03AD
.Lt_03E9:
.Lt_03E8:
push 4
push offset Lt_03EA
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03EC
mov dword ptr [ebp-4], 17
jmp .Lt_03AD
.Lt_03EC:
.Lt_03EB:
push 7
push offset Lt_03ED
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03EF
mov dword ptr [ebp-4], 18
jmp .Lt_03AD
.Lt_03EF:
.Lt_03EE:
jmp .Lt_03AE
.Lt_03F0:
push 10
push offset Lt_03F2
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03F4
mov dword ptr [ebp-4], 19
jmp .Lt_03AD
.Lt_03F4:
.Lt_03F3:
push 7
push offset Lt_03F5
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03F7
mov dword ptr [ebp-4], 20
jmp .Lt_03AD
.Lt_03F7:
.Lt_03F6:
push 4
push offset Lt_03F8
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03FA
mov dword ptr [ebp-4], 21
jmp .Lt_03AD
.Lt_03FA:
.Lt_03F9:
jmp .Lt_03AE
.Lt_03FB:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_03FE
mov dword ptr [ebp-4], 22
jmp .Lt_03AD
.Lt_03FE:
.Lt_03FD:
push 4
push offset Lt_03FF
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0401
mov dword ptr [ebp-4], 23
jmp .Lt_03AD
.Lt_0401:
.Lt_0400:
jmp .Lt_03AE
.Lt_0402:
push 5
push offset Lt_0404
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0406
mov dword ptr [ebp-4], 24
jmp .Lt_03AD
.Lt_0406:
.Lt_0405:
jmp .Lt_03AE
.Lt_0407:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_040A
mov dword ptr [ebp-4], 25
jmp .Lt_03AD
.Lt_040A:
.Lt_0409:
push 8
push offset Lt_040B
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_040D
mov dword ptr [ebp-4], 26
jmp .Lt_03AD
.Lt_040D:
.Lt_040C:
jmp .Lt_03AE
.Lt_040E:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0411
mov dword ptr [ebp-4], 27
jmp .Lt_03AD
.Lt_0411:
.Lt_0410:
push 5
push offset Lt_0412
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0414
mov dword ptr [ebp-4], 28
jmp .Lt_03AD
.Lt_0414:
.Lt_0413:
push 4
push offset Lt_0049
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0416
mov dword ptr [ebp-4], 29
jmp .Lt_03AD
.Lt_0416:
.Lt_0415:
jmp .Lt_03AE
.Lt_0417:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_041A
mov dword ptr [ebp-4], 30
jmp .Lt_03AD
.Lt_041A:
.Lt_0419:
push 4
push offset Lt_041B
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_041D
mov dword ptr [ebp-4], 31
jmp .Lt_03AD
.Lt_041D:
.Lt_041C:
push 7
push offset Lt_041E
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0420
mov dword ptr [ebp-4], 32
jmp .Lt_03AD
.Lt_0420:
.Lt_041F:
push 3
push offset Lt_0421
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0423
mov dword ptr [ebp-4], 33
jmp .Lt_03AD
.Lt_0423:
.Lt_0422:
jmp .Lt_03AE
.Lt_0424:
push 10
push offset Lt_0426
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0428
mov dword ptr [ebp-4], 35
jmp .Lt_03AD
.Lt_0428:
.Lt_0427:
push 10
push offset Lt_0429
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_042B
mov dword ptr [ebp-4], 34
jmp .Lt_03AD
.Lt_042B:
.Lt_042A:
push 10
push offset Lt_042C
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_042E
mov dword ptr [ebp-4], 36
jmp .Lt_03AD
.Lt_042E:
.Lt_042D:
push 8
push offset Lt_042F
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0431
mov dword ptr [ebp-4], 37
jmp .Lt_03AD
.Lt_0431:
.Lt_0430:
jmp .Lt_03AE
.Lt_0432:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0435
mov dword ptr [ebp-4], 38
jmp .Lt_03AD
.Lt_0435:
.Lt_0434:
jmp .Lt_03AE
.Lt_0436:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_0439
mov dword ptr [ebp-4], 39
jmp .Lt_03AD
.Lt_0439:
.Lt_0438:
jmp .Lt_03AE
.Lt_043A:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_043D
mov dword ptr [ebp-4], 40
jmp .Lt_03AD
.Lt_043D:
.Lt_043C:
push 4
push offset Lt_043E
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0440
mov dword ptr [ebp-4], 41
jmp .Lt_03AD
.Lt_0440:
.Lt_043F:
push 3
push offset Lt_0441
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0443
mov dword ptr [ebp-4], 42
jmp .Lt_03AD
.Lt_0443:
.Lt_0442:
push 7
push offset Lt_0444
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0446
mov dword ptr [ebp-4], 43
jmp .Lt_03AD
.Lt_0446:
.Lt_0445:
push 6
push offset Lt_0447
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0449
mov dword ptr [ebp-4], 44
jmp .Lt_03AD
.Lt_0449:
.Lt_0448:
push 8
push offset Lt_044A
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_044C
mov dword ptr [ebp-4], 45
jmp .Lt_03AD
.Lt_044C:
.Lt_044B:
jmp .Lt_03AE
.Lt_044D:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0450
mov dword ptr [ebp-4], 46
jmp .Lt_03AD
.Lt_0450:
.Lt_044F:
push 3
push offset Lt_0451
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0453
mov dword ptr [ebp-4], 48
jmp .Lt_03AD
.Lt_0453:
.Lt_0452:
jmp .Lt_03AE
.Lt_0454:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0457
mov dword ptr [ebp-4], 47
jmp .Lt_03AD
.Lt_0457:
.Lt_0456:
push 3
push offset Lt_0458
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_045A
mov dword ptr [ebp-4], 49
jmp .Lt_03AD
.Lt_045A:
.Lt_0459:
jmp .Lt_03AE
.Lt_045B:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_045E
mov dword ptr [ebp-4], 50
jmp .Lt_03AD
.Lt_045E:
.Lt_045D:
push 13
push offset Lt_045F
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0461
mov dword ptr [ebp-4], 51
jmp .Lt_03AD
.Lt_0461:
.Lt_0460:
push 7
push offset Lt_0462
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0464
mov dword ptr [ebp-4], 52
jmp .Lt_03AD
.Lt_0464:
.Lt_0463:
push 6
push offset Lt_0465
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0467
mov dword ptr [ebp-4], 53
jmp .Lt_03AD
.Lt_0467:
.Lt_0466:
jmp .Lt_03AE
.Lt_0468:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_046B
mov dword ptr [ebp-4], 54
jmp .Lt_03AD
.Lt_046B:
.Lt_046A:
push 7
push offset Lt_033E
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_046D
mov dword ptr [ebp-4], 55
jmp .Lt_03AD
.Lt_046D:
.Lt_046C:
push 6
push offset Lt_046E
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0470
mov dword ptr [ebp-4], 56
jmp .Lt_03AD
.Lt_0470:
.Lt_046F:
jmp .Lt_03AE
.Lt_0471:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0474
mov dword ptr [ebp-4], 57
jmp .Lt_03AD
.Lt_0474:
.Lt_0473:
push 4
push offset Lt_0475
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0477
mov dword ptr [ebp-4], 58
jmp .Lt_03AD
.Lt_0477:
.Lt_0476:
push 8
push offset Lt_0478
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_047A
mov dword ptr [ebp-4], 59
jmp .Lt_03AD
.Lt_047A:
.Lt_0479:
jmp .Lt_03AE
.Lt_047B:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_047E
mov dword ptr [ebp-4], 60
jmp .Lt_03AD
.Lt_047E:
.Lt_047D:
jmp .Lt_03AE
.Lt_047F:
push 3
push offset Lt_0481
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0483
mov dword ptr [ebp-4], 61
jmp .Lt_03AD
.Lt_0483:
.Lt_0482:
push 3
push offset Lt_0484
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0486
mov dword ptr [ebp-4], 63
jmp .Lt_03AD
.Lt_0486:
.Lt_0485:
push 3
push offset Lt_0487
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0489
mov dword ptr [ebp-4], 62
jmp .Lt_03AD
.Lt_0489:
.Lt_0488:
jmp .Lt_03AE
.Lt_048A:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_048C
mov dword ptr [ebp-4], 64
jmp .Lt_03AD
.Lt_048C:
.Lt_048B:
jmp .Lt_03AE
.Lt_048D:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_0490
mov dword ptr [ebp-4], 65
jmp .Lt_03AD
.Lt_0490:
.Lt_048F:
jmp .Lt_03AE
.Lt_0491:
push 9
push offset Lt_0492
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0494
mov dword ptr [ebp-4], 59
jmp .Lt_03AD
.Lt_0494:
.Lt_0493:
push 6
push offset Lt_0495
push 0
push dword ptr [ebp+8]
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0497
mov dword ptr [ebp-4], 24
jmp .Lt_03AD
.Lt_0497:
.Lt_0496:
jmp .Lt_03AE
.Lt_03AF:
mov eax, dword ptr [ebp-8]
add eax, 4294967251
cmp eax, 77
ja .Lt_03AE
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_0498+eax*4-180]
.LT_0498:
.int .Lt_0491
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03C3
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_0436
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_0454
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_047F
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_03B1
.int .Lt_03BB
.int .Lt_03BF
.int .Lt_03C7
.int .Lt_03D1
.int .Lt_03F0
.int .Lt_03FB
.int .Lt_0402
.int .Lt_0407
.int .Lt_03AE
.int .Lt_03AE
.int .Lt_040E
.int .Lt_0417
.int .Lt_0424
.int .Lt_0432
.int .Lt_043A
.int .Lt_03AE
.int .Lt_044D
.int .Lt_045B
.int .Lt_0468
.int .Lt_03AE
.int .Lt_0471
.int .Lt_047B
.int .Lt_048A
.int .Lt_03AE
.int .Lt_048D
.Lt_03AE:
mov dword ptr [ebp-4], -1
.Lt_03AD:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size PARSEOPTION, .-PARSEOPTION
.balign 16
HANDLEARG:
.type HANDLEARG, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0499:
cmp dword ptr [FBC], 0
jl .Lt_049C
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_049E
sub esp, 12
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.Lt_049E:
.Lt_049D:
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [FBC]
call HANDLEOPT
add esp, 16
mov dword ptr [FBC], -1
jmp .Lt_049A
.Lt_049C:
.Lt_049B:
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_04A0
jmp .Lt_049A
.Lt_04A0:
.Lt_049F:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov al, byte ptr [ebx]
mov byte ptr [ebp-4], al
movzx eax, byte ptr [ebp-4]
cmp eax, 45
jne .Lt_04A3
.Lt_04A4:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
inc ebx
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
movzx eax, byte ptr [ebx]
test eax, eax
jne .Lt_04A6
sub esp, 12
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.Lt_04A6:
.Lt_04A5:
sub esp, 12
push dword ptr [ebp-8]
call PARSEOPTION
add esp, 16
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jge .Lt_04A8
sub esp, 12
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.Lt_04A8:
.Lt_04A7:
mov eax, dword ptr [ebp-12]
cmp dword ptr [OPTION_TAKES_ARGUMENT+eax*4], 0
je .Lt_04AA
mov eax, dword ptr [ebp-12]
mov dword ptr [FBC], eax
jmp .Lt_04A9
.Lt_04AA:
sub esp, 8
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call HANDLEOPT
add esp, 16
.Lt_04A9:
jmp .Lt_04A1
.Lt_04A3:
movzx eax, byte ptr [ebp-4]
cmp eax, 64
jne .Lt_04AB
.Lt_04AD:
cmp dword ptr [Lt_07EC], 128
jle .Lt_04AF
sub esp, 12
push 0
push 1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 27
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_04AF:
.Lt_04AE:
sub esp, 12
push 0
push -1
sub esp, 4
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 8
dec eax
push eax
push dword ptr [ebp+8]
call fb_RIGHT
add esp, 12
push eax
push -1
push dword ptr [ebp+8]
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push dword ptr [ebp+8]
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_04B1
sub esp, 12
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.Lt_04B1:
.Lt_04B0:
inc dword ptr [Lt_07EC]
sub esp, 12
push dword ptr [ebp+8]
call PARSEARGSFROMFILE
add esp, 16
dec dword ptr [Lt_07EC]
jmp .Lt_04A1
.Lt_04AB:
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call HGETFILEEXT
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
push 4
push offset Lt_04B5
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04B4
.Lt_04B6:
sub esp, 12
push dword ptr [ebp+8]
call HADDBAS
add esp, 16
jmp .Lt_04B3
.Lt_04B4:
push 2
push offset Lt_0433
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04B7
.Lt_04B8:
sub esp, 12
push dword ptr [ebp+8]
call FBCADDOBJ
add esp, 16
jmp .Lt_04B3
.Lt_04B7:
push 2
push offset Lt_03B2
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04B9
.Lt_04BA:
sub esp, 8
push dword ptr [ebp+8]
lea eax, [FBC+220]
push eax
call STRLISTAPPEND
add esp, 16
jmp .Lt_04B3
.Lt_04B9:
push 3
push offset Lt_04BC
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .Lt_04BE
.Lt_04BF:
push 4
push offset Lt_04BD
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04BB
.Lt_04BE:
sub esp, 4
push -1
push dword ptr [ebp+8]
lea eax, [FBC+104]
push eax
call LISTNEWNODE
add esp, 4
push eax
call HSETIOFILE
add esp, 16
jmp .Lt_04B3
.Lt_04BB:
push 4
push offset Lt_04C1
push -1
lea eax, [ebp-16]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04C0
.Lt_04C2:
sub esp, 8
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_04C4
sub esp, 12
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.Lt_04C4:
.Lt_04C3:
sub esp, 4
push -1
push dword ptr [ebp+8]
lea eax, [FBC+136]
push eax
call HSETIOFILE
add esp, 16
jmp .Lt_04B3
.Lt_04C0:
sub esp, 12
push dword ptr [ebp+8]
call HFATALINVALIDOPTION
add esp, 16
.Lt_04C5:
.Lt_04B3:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_04B2:
.Lt_04A1:
.Lt_049A:
pop ebx
mov esp, ebp
pop ebp
ret
.size HANDLEARG, .-HANDLEARG

.section .data
.balign 4
Lt_07EC:
.int 0

.section .text
.balign 16
PARSEARGSFROMFILE:
.type PARSEARGSFROMFILE, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_04C6:
call fb_FileFree
mov dword ptr [ebp-4], eax
sub esp, 8
push 0
push dword ptr [ebp-4]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 32
test eax, eax
je .Lt_04C9
sub esp, 12
push 0
push 1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 26
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_04C9:
.Lt_04C8:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
.Lt_04CA:
sub esp, 12
push dword ptr [ebp-4]
call fb_FileEof
add esp, 16
test eax, eax
jne .Lt_04CB
push 0
push -1
lea eax, [ebp-16]
push eax
push dword ptr [ebp-4]
call fb_FileLineInput
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-16]
push eax
call fb_TRIM
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
.Lt_04CC:
sub esp, 8
push -1
lea eax, [ebp-16]
push eax
call fb_StrLen
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_04D0
jmp .Lt_04CD
.Lt_04D0:
.Lt_04CF:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
.Lt_04D1:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-36], eax
jge .Lt_04D2
mov eax, dword ptr [ebp-16]
add eax, dword ptr [ebp-36]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ebx
jmp .Lt_04D4
.Lt_04D6:
cmp dword ptr [ebp-40], 0
jne .Lt_04D8
jmp .Lt_04D2
.Lt_04D8:
.Lt_04D7:
jmp .Lt_04D3
.Lt_04D9:
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebp-40], ebx
jne .Lt_04DC
mov dword ptr [ebp-40], 0
jmp .Lt_04DB
.Lt_04DC:
cmp dword ptr [ebp-40], 0
jne .Lt_04DD
mov ebx, dword ptr [ebp-44]
mov dword ptr [ebp-40], ebx
.Lt_04DD:
.Lt_04DB:
jmp .Lt_04D3
.Lt_04D4:
mov ebx, dword ptr [ebp-48]
add ebx, 4294967264
cmp ebx, 7
ja .Lt_04D3
mov ebx, dword ptr [ebp-48]
jmp dword ptr [.LT_04DE+ebx*4-128]
.LT_04DE:
.int .Lt_04D6
.int .Lt_04D3
.int .Lt_04D9
.int .Lt_04D3
.int .Lt_04D3
.int .Lt_04D3
.int .Lt_04D3
.int .Lt_04D9
.Lt_04D3:
inc dword ptr [ebp-36]
jmp .Lt_04D1
.Lt_04D2:
cmp dword ptr [ebp-36], 0
jne .Lt_04E0
mov dword ptr [ebp-36], 1
jmp .Lt_04DF
.Lt_04E0:
sub esp, 12
push 0
push -1
sub esp, 4
push dword ptr [ebp-36]
lea ebx, [ebp-16]
push ebx
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-28]
push eax
call fb_TRIM
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [ebp-28]
push eax
call STRUNQUOTE
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call HANDLEARG
add esp, 16
.Lt_04DF:
sub esp, 12
push 0
push -1
sub esp, 4
mov eax, dword ptr [ebp-32]
sub eax, dword ptr [ebp-36]
push eax
lea eax, [ebp-16]
push eax
call fb_RIGHT
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
.Lt_04CE:
jmp .Lt_04CC
.Lt_04CD:
jmp .Lt_04CA
.Lt_04CB:
sub esp, 12
push dword ptr [ebp-4]
call fb_FileClose
add esp, 16
test eax, eax
je .Lt_04E1
push 0
push 0
push offset Lt_0087
push 2355
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_04E1:
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_04C7:
pop ebx
mov esp, ebp
pop ebp
ret
.size PARSEARGSFROMFILE, .-PARSEARGSFROMFILE
.balign 16
HTARGETNEEDSPIC:
.type HTARGETNEEDSPIC, @function
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_04E2:
mov dword ptr [ebp-4], 0
call FBGETCPUFAMILY
test eax, eax
je .Lt_04E5
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-8], eax
jmp .Lt_04E7
.Lt_04E9:
mov dword ptr [ebp-4], -1
jmp .Lt_04E6
.Lt_04E7:
mov eax, dword ptr [ebp-8]
add eax, 4294967294
cmp eax, 8
ja .Lt_04E6
mov eax, dword ptr [ebp-8]
jmp dword ptr [.LT_04EA+eax*4-8]
.LT_04EA:
.int .Lt_04E9
.int .Lt_04E6
.int .Lt_04E6
.int .Lt_04E9
.int .Lt_04E9
.int .Lt_04E9
.int .Lt_04E9
.int .Lt_04E6
.int .Lt_04E9
.Lt_04E6:
.Lt_04E5:
.Lt_04E4:
.Lt_04E3:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HTARGETNEEDSPIC, .-HTARGETNEEDSPIC
.balign 16
HPARSEARGS:
.type HPARSEARGS, @function
push ebp
mov ebp, esp
sub esp, 32
push ebx
push esi
.Lt_04EB:
mov dword ptr [FBC], -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-20], eax
jmp .Lt_04EE
.Lt_04F1:
sub esp, 12
push 0
push 0
mov eax, dword ptr [ebp-16]
sal eax, 2
mov ebx, dword ptr [ebp+12]
add ebx, eax
push dword ptr [ebx]
push -1
lea ebx, [ebp-12]
push ebx
call fb_StrAssign
add esp, 32
sub esp, 12
lea ebx, [ebp-12]
push ebx
call HANDLEARG
add esp, 16
.Lt_04EF:
inc dword ptr [ebp-16]
.Lt_04EE:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jle .Lt_04F1
.Lt_04F0:
cmp dword ptr [FBC], 0
jl .Lt_04F3
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 0
mov ebx, dword ptr [ebp+8]
sal ebx, 2
mov eax, dword ptr [ebp+12]
add eax, ebx
push dword ptr [eax-4]
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call HFATALINVALIDOPTION
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_04F3:
.Lt_04F2:
call HCHECKWAITINGOBJFILE
sub esp, 12
push 5
call FBGETOPTION
add esp, 16
test eax, eax
jne .Lt_04F6
sub esp, 12
push 7
call FBGETOPTION
add esp, 16
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
sub esp, 12
push 6
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_04F8
sub esp, 12
push 0
push 1
push -1
push offset Lt_0000
push 284
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_04F8:
.Lt_04F7:
.Lt_04F6:
.Lt_04F5:
cmp dword ptr [FBC+24], 0
jl .Lt_04FA
sub esp, 8
push dword ptr [FBC+24]
push 4
call FBSETOPTION
add esp, 16
.Lt_04FA:
.Lt_04F9:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call FBGETCPUFAMILY
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_04FC
sub esp, 12
push 0
push 1
push -1
sub esp, 8
call FBGETFBCARCH
add esp, 8
push eax
push 82
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_04FC:
.Lt_04FB:
call FBGETCPUFAMILY
test eax, eax
jne .Lt_04FE
sub esp, 8
push 0
push 2
call FBSETOPTION
add esp, 16
jmp .Lt_04FD
.Lt_04FE:
sub esp, 8
push 1
push 2
call FBSETOPTION
add esp, 16
.Lt_04FD:
cmp dword ptr [FBC+20], 0
jl .Lt_0500
sub esp, 8
push dword ptr [FBC+20]
push 2
call FBSETOPTION
add esp, 16
.Lt_0500:
.Lt_04FF:
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call FBGETCPUFAMILY
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov esi, eax
call FBGETCPUFAMILY
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and esi, eax
or ebx, esi
je .Lt_0502
sub esp, 12
push 0
push 1
push -1
sub esp, 8
call FBGETFBCARCH
add esp, 8
push eax
push 83
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_0502:
.Lt_0501:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-16], eax
jmp .Lt_0504
.Lt_0506:
jmp .Lt_0503
.Lt_0507:
sub esp, 12
lea eax, [FBC+104]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_0509
sub esp, 12
push 0
push 1
push -1
mov eax, dword ptr [ebp-20]
push dword ptr [eax]
push 291
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_0509:
.Lt_0508:
jmp .Lt_0503
.Lt_0504:
cmp dword ptr [ebp-16], 4
ja .Lt_0507
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_050A+eax*4]
.LT_050A:
.int .Lt_0506
.int .Lt_0506
.int .Lt_0507
.int .Lt_0507
.int .Lt_0506
.Lt_0503:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-16], eax
jmp .Lt_050C
.Lt_050E:
jmp .Lt_050B
.Lt_050F:
sub esp, 8
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_0511
sub esp, 12
push 0
push 1
push -1
push dword ptr [FBC+136]
push 291
call ERRREPORTEX
add esp, 32
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_0511:
.Lt_0510:
jmp .Lt_050B
.Lt_050C:
mov eax, dword ptr [ebp-16]
add eax, 4294967294
cmp eax, 8
ja .Lt_050F
mov eax, dword ptr [ebp-16]
jmp dword ptr [.LT_0512+eax*4-8]
.LT_0512:
.int .Lt_050E
.int .Lt_050F
.int .Lt_050F
.int .Lt_050E
.int .Lt_050E
.int .Lt_050E
.int .Lt_050E
.int .Lt_050E
.int .Lt_050E
.Lt_050B:
cmp dword ptr [FBC+32], 0
jl .Lt_0514
call FBGETCPUFAMILY
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_0518
.Lt_0519:
cmp dword ptr [ebp-16], 1
jne .Lt_0517
.Lt_0518:
jmp .Lt_0515
.Lt_0517:
sub esp, 12
push 0
push 1
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 4
push 0
push -1
sub esp, 12
call FBGETTARGETID
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 24
push dword ptr [ebp-28]
push 319
call ERRREPORTEX
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.Lt_051A:
.Lt_0515:
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
sub esp, 12
push 2
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [FBC+32]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_051D
sub esp, 12
push 0
push 1
push -1
push offset Lt_0000
push 84
call ERRREPORTEX
add esp, 32
.Lt_051D:
.Lt_051C:
sub esp, 8
push dword ptr [FBC+32]
push 9
call FBSETOPTION
add esp, 16
.Lt_0514:
.Lt_0513:
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
cmp eax, 2
jne .Lt_051F
call HTARGETNEEDSPIC
test eax, eax
je .Lt_0521
sub esp, 8
push -1
push 32
call FBSETOPTION
add esp, 16
.Lt_0521:
.Lt_0520:
.Lt_051F:
.Lt_051E:
sub esp, 12
push 32
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_0523
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
test eax, eax
jne .Lt_0525
sub esp, 12
push 0
push 1
push -1
push offset Lt_0000
push 85
call ERRREPORTEX
add esp, 32
jmp .Lt_0524
.Lt_0525:
call HTARGETNEEDSPIC
test eax, eax
jne .Lt_0526
sub esp, 12
push 0
push 1
push -1
push offset Lt_0000
push 86
call ERRREPORTEX
add esp, 32
.Lt_0526:
.Lt_0524:
.Lt_0523:
.Lt_0522:
sub esp, 8
push -1
push 33
call FBSETOPTION
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_04EC:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.size HPARSEARGS, .-HPARSEARGS
.balign 16
FBCDETERMINEPREFIX:
.type FBCDETERMINEPREFIX, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_0527:
sub esp, 8
push 261
lea eax, [FBC+2132]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_052A
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_001B
push -1
sub esp, 4
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
sub esp, 12
call fb_ExePath
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call PATHSTRIPDIV
add esp, 8
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+2132]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_052E
push 261
lea eax, [FBC+2132]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+2132]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0529
.Lt_052A:
sub esp, 12
push 0
push -1
sub esp, 8
push 2
push offset Lt_001B
push 261
lea eax, [FBC+2132]
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+2132]
push eax
call fb_StrAssign
add esp, 32
.Lt_0529:
.Lt_0528:
mov esp, ebp
pop ebp
ret
.size FBCDETERMINEPREFIX, .-FBCDETERMINEPREFIX
.balign 16
FBCSETUPCOMPILERPATHS:
.type FBCSETUPCOMPILERPATHS, @function
push ebp
mov ebp, esp
sub esp, 168
.Lt_0531:
sub esp, 12
push 0
push -1
sub esp, 12
call FBGETTARGETID
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 0
push 10
push offset Lt_0533
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0049
push -1
lea eax, [ebp-36]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 129
lea eax, [FBC+1859]
push eax
push -1
sub esp, 4
push 2
push offset Lt_001B
push -1
sub esp, 4
push 4
push offset Lt_0534
push 261
lea eax, [FBC+2132]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+2393]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-24]
push eax
push -1
sub esp, 4
push 2
push offset Lt_001B
push -1
sub esp, 4
push 8
push offset Lt_040B
push 261
lea eax, [FBC+2132]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+2654]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
push -1
sub esp, 4
push 2
push offset Lt_001B
push -1
sub esp, 4
push -1
lea eax, [ebp-24]
push eax
push -1
sub esp, 4
push 2
push offset Lt_001B
push -1
sub esp, 4
push -1
lea eax, [ebp-36]
push eax
push 261
lea eax, [FBC+2132]
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call fb_StrConcat
add esp, 28
push eax
push 261
lea eax, [FBC+2915]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_0532:
mov esp, ebp
pop ebp
ret
.size FBCSETUPCOMPILERPATHS, .-FBCSETUPCOMPILERPATHS
.balign 16
FBCPRINTTARGETINFO:
.type FBCPRINTTARGETINFO, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_0540:
sub esp, 12
push 0
push -1
sub esp, 12
call FBGETTARGETID
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 0
call FBGETFBCARCH
push eax
push 3
push offset Lt_0542
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_0542
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
sub esp, 4
call FBGETBITS
add esp, 4
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 4
push offset Lt_0545
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 8
push 129
lea eax, [FBC+1730]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_0547
sub esp, 12
push 0
push 3
push offset Lt_0548
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 129
lea eax, [FBC+1730]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_0549
push -1
lea eax, [ebp-12]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0547:
.Lt_0546:
sub esp, 4
push 2
push 7
push offset Lt_054A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
lea eax, [ebp-12]
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 2
push 8
push offset Lt_054B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
sub esp, 4
push 2
call FBGETOPTION
add esp, 4
push eax
call FBGETBACKENDNAME
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_0541:
mov esp, ebp
pop ebp
ret
.size FBCPRINTTARGETINFO, .-FBCPRINTTARGETINFO
.balign 16
FBCDETERMINEMAINNAME:
.type FBCDETERMINEMAINNAME, @function
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_054C:
sub esp, 8
push 261
lea eax, [FBC+689]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_054F
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_0551
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
push 261
lea ebx, [FBC+689]
push ebx
call fb_StrAssign
add esp, 32
jmp .Lt_0550
.Lt_0551:
sub esp, 12
lea ebx, [FBC+188]
push ebx
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_0553
sub esp, 12
push 0
push -1
push dword ptr [ebp-20]
push 261
lea eax, [FBC+689]
push eax
call fb_StrAssign
add esp, 32
jmp .Lt_0552
.Lt_0553:
sub esp, 12
push 0
push 8
push offset Lt_0554
push 261
lea eax, [FBC+689]
push eax
call fb_StrAssign
add esp, 32
.Lt_0552:
.Lt_0550:
sub esp, 12
push 0
push -1
sub esp, 8
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 261
lea eax, [FBC+689]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call HSTRIPEXT
add esp, 12
push eax
push 261
lea eax, [FBC+689]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_054F:
.Lt_054E:
.Lt_054D:
pop ebx
mov esp, ebp
pop ebp
ret
.size FBCDETERMINEMAINNAME, .-FBCDETERMINEMAINNAME
.balign 16
HGETASMNAME:
.type HGETASMNAME, @function
push ebp
mov ebp, esp
sub esp, 56
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0556:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .Lt_0559
mov eax, offset Lt_055A
mov dword ptr [ebp-16], eax
jmp .Lt_0558
.Lt_0559:
mov eax, offset Lt_027F
mov dword ptr [ebp-16], eax
.Lt_0558:
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
cmp eax, 3
jne .Lt_055C
mov eax, offset Lt_055D
mov dword ptr [ebp-16], eax
.Lt_055C:
.Lt_055B:
cmp dword ptr [ebp+12], 1
jne .Lt_055F
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 1
jne .Lt_0562
.Lt_0563:
mov eax, offset Lt_0564
mov dword ptr [ebp-16], eax
jmp .Lt_0560
.Lt_0562:
cmp dword ptr [ebp-44], 2
jne .Lt_0565
.Lt_0566:
mov eax, offset Lt_0567
mov dword ptr [ebp-16], eax
.Lt_0565:
.Lt_0560:
.Lt_055F:
.Lt_055E:
sub esp, 12
push 0
push -1
sub esp, 8
push 0
push dword ptr [ebp-16]
push -1
lea eax, [ebp-28]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
.Lt_0557:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HGETASMNAME, .-HGETASMNAME
.balign 16
HCOMPILEBAS:
.type HCOMPILEBAS, @function
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_0569:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 12
push 0
push -1
sub esp, 4
push 1
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [FBC+40]
not eax
sub esp, 12
push 2
mov ebx, eax
call FBGETOPTION
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [FBC+48]
not ecx
or eax, ecx
and ebx, eax
je .Lt_056C
sub esp, 12
lea eax, [ebp-24]
push eax
call FBCADDTEMP
add esp, 16
.Lt_056C:
.Lt_056B:
sub esp, 12
push 1
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_056E
sub esp, 12
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .Lt_0570
sub esp, 12
push 0
push -1
sub esp, 8
push 8
push offset Lt_0571
push -1
sub esp, 4
lea eax, [ebp-36]
push eax
call HSTRIPEXT
add esp, 8
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
.Lt_0570:
.Lt_056F:
.Lt_056E:
.Lt_056D:
cmp dword ptr [FBC+56], 0
je .Lt_0574
sub esp, 4
push 2
push 11
push offset Lt_0575
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 0
push 4
push offset Lt_0576
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 0
lea eax, [ebp-24]
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 12
push 1
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_0578
sub esp, 4
push 0
sub esp, 4
push -1
lea eax, [ebp-36]
push eax
push 6
push offset Lt_0579
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_0578:
.Lt_0577:
cmp dword ptr [ebp+12], 0
je .Lt_057C
sub esp, 4
push 0
push 14
push offset Lt_057D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_057B
.Lt_057C:
cmp dword ptr [ebp+16], 0
je .Lt_057E
sub esp, 4
push 0
push 23
push offset Lt_057F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_057E:
.Lt_057B:
sub esp, 8
push 1
push 0
call fb_PrintVoid
add esp, 16
.Lt_0574:
.Lt_0573:
mov dword ptr [ebp-12], 0
sub esp, 12
push 10
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
je .Lt_0581
sub esp, 8
push 3
push 0
call FBSETOPTION
add esp, 16
.Lt_0581:
.Lt_0580:
.Lt_0582:
sub esp, 8
push dword ptr [ebp-12]
push dword ptr [ebp+12]
call FBINIT
add esp, 16
cmp dword ptr [ebp+16], 0
je .Lt_0586
sub esp, 8
lea eax, [FBC+384]
push eax
lea eax, [FBC+340]
push eax
call FBSETLIBS
add esp, 16
jmp .Lt_0585
.Lt_0586:
sub esp, 8
lea eax, [FBC+296]
push eax
lea eax, [FBC+252]
push eax
call FBSETLIBS
add esp, 16
.Lt_0585:
push dword ptr [ebp+12]
lea eax, [ebp-36]
push eax
push dword ptr [ebp-24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call FBCOMPILE
add esp, 16
call ERRGETCOUNT
test eax, eax
jle .Lt_0588
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_0588:
.Lt_0587:
call FBSHOULDRESTART
test eax, eax
jne .Lt_058A
jmp .Lt_0583
.Lt_058A:
.Lt_0589:
inc dword ptr [ebp-12]
call FBEND
.Lt_0584:
jmp .Lt_0582
.Lt_0583:
cmp dword ptr [ebp+16], 0
jne .Lt_058C
sub esp, 8
lea eax, [FBC+384]
push eax
lea eax, [FBC+340]
push eax
call FBGETLIBS
add esp, 16
.Lt_058C:
.Lt_058B:
call FBEND
sub esp, 8
push dword ptr [ebp-8]
push 0
call FBSETOPTION
add esp, 16
sub esp, 8
push dword ptr [ebp-4]
push 10
call FBSETOPTION
add esp, 16
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_056A:
pop ebx
mov esp, ebp
pop ebp
ret
.size HCOMPILEBAS, .-HCOMPILEBAS
.balign 16
HCOMPILEMODULES:
.type HCOMPILEMODULES, @function
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_058D:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
sub esp, 12
push 0
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .Lt_0592
.Lt_0593:
cmp dword ptr [ebp-28], 2
jne .Lt_0591
.Lt_0592:
mov dword ptr [ebp-8], -1
jmp .Lt_058F
.Lt_0591:
mov eax, dword ptr [FBC+952]
mov dword ptr [ebp-8], eax
.Lt_0594:
.Lt_058F:
cmp dword ptr [ebp-8], 0
je .Lt_0596
sub esp, 12
push 0
push -1
sub esp, 8
lea eax, [FBC+689]
push eax
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrAssign
add esp, 32
.Lt_0596:
.Lt_0595:
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_0598
sub esp, 8
lea eax, [FBC+252]
push eax
lea eax, [FBC+340]
push eax
call STRSETCOPY
add esp, 16
sub esp, 8
lea eax, [FBC+296]
push eax
lea eax, [FBC+384]
push eax
call STRSETCOPY
add esp, 16
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_058E
.Lt_0598:
.Lt_0597:
.Lt_0599:
cmp dword ptr [ebp-8], 0
je .Lt_059D
push -1
sub esp, 8
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
sub esp, 8
mov eax, dword ptr [ebp-24]
lea ebx, [eax]
push ebx
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call HSTRIPPATH
add esp, 12
push eax
push -1
lea eax, [ebp-20]
push eax
call fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
.Lt_059D:
.Lt_059C:
sub esp, 4
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-24]
call HCOMPILEBAS
add esp, 16
sub esp, 12
push dword ptr [ebp-24]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-24], eax
.Lt_059B:
cmp dword ptr [ebp-24], 0
jne .Lt_0599
.Lt_059A:
sub esp, 12
lea eax, [ebp-20]
push eax
call fb_StrDelete
add esp, 16
.Lt_058E:
pop ebx
mov esp, ebp
pop ebp
ret
.size HCOMPILEMODULES, .-HCOMPILEMODULES
.balign 16
HPARSEXPM:
.type HPARSEXPM, @function
push ebp
mov ebp, esp
sub esp, 148
push ebx
mov dword ptr [ebp-4], 0
.Lt_059F:
sub esp, 12
push 0
push -1
sub esp, 8
push 28
push offset Lt_05A1
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 21
push offset Lt_05A3
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 20
push offset Lt_05A5
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
call fb_FileFree
mov dword ptr [ebp-44], eax
sub esp, 8
push 0
push dword ptr [ebp-44]
push 0
push 0
push 2
push dword ptr [ebp+8]
call fb_FileOpen
add esp, 32
test eax, eax
je .Lt_05A8
jmp .Lt_05A0
.Lt_05A8:
.Lt_05A7:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
lea eax, [ebp-56]
push eax
push dword ptr [ebp-44]
call fb_FileLineInput
add esp, 16
push 10
push offset Lt_05A9
push -1
sub esp, 12
push 0
lea eax, [ebp-56]
push eax
call fb_StrUcase2
add esp, 20
push eax
call fb_StrCompare
add esp, 16
test eax, eax
je .Lt_05AB
sub esp, 12
push dword ptr [ebp-44]
call fb_FileClose
add esp, 16
test eax, eax
je .Lt_05AC
push 0
push 0
push offset Lt_0087
push 2886
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_05AC:
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_05A0
.Lt_05AB:
.Lt_05AA:
mov dword ptr [ebp-60], 0
.Lt_05AD:
sub esp, 12
push dword ptr [ebp-44]
call fb_FileEof
add esp, 16
test eax, eax
jne .Lt_05AE
push 0
push -1
lea eax, [ebp-56]
push eax
push dword ptr [ebp-44]
call fb_FileLineInput
add esp, 16
sub esp, 12
push 0
push -1
sub esp, 4
push -1
lea eax, [ebp-56]
push eax
call fb_StrLen
add esp, 8
sub esp, 12
sub esp, 4
push 1
push offset Lt_00F2
mov ebx, eax
call fb_StrAllocTempDescZEx
add esp, 12
push eax
lea eax, [ebp-56]
push eax
push 1
call fb_StrInstr
add esp, 24
sub ebx, eax
inc ebx
push ebx
lea ebx, [ebp-56]
push ebx
call fb_RIGHT
add esp, 12
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
sub esp, 12
sub esp, 4
push 1
push offset Lt_00F2
call fb_StrAllocTempDescZEx
add esp, 12
push eax
lea eax, [ebp-56]
push eax
push 2
call fb_StrInstr
add esp, 24
push eax
lea eax, [ebp-56]
push eax
call fb_LEFT
add esp, 12
push eax
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
lea eax, [ebp-56]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_05B0
cmp dword ptr [ebp-60], 0
je .Lt_05B2
sub esp, 12
push 0
push -1
sub esp, 8
push 5
push offset Lt_05B3
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
.Lt_05B2:
.Lt_05B1:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push -1
lea eax, [ebp-56]
push eax
push 3
push offset Lt_05B5
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
mov dword ptr [ebp-60], -1
.Lt_05B0:
.Lt_05AF:
jmp .Lt_05AD
.Lt_05AE:
sub esp, 12
push dword ptr [ebp-44]
call fb_FileClose
add esp, 16
test eax, eax
je .Lt_05B8
push 0
push 0
push offset Lt_0087
push 2916
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_05B8:
cmp dword ptr [ebp-60], 0
jne .Lt_05BA
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_05A0
.Lt_05BA:
.Lt_05B9:
sub esp, 12
push 0
push -1
sub esp, 8
push 5
push offset Lt_05BB
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 4
push offset Lt_05BD
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 67
push offset Lt_05BF
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 74
push offset Lt_05C3
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
push dword ptr [ebp+12]
call fb_StrAssign
add esp, 32
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.Lt_05A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HPARSEXPM, .-HPARSEXPM
.balign 16
HCOMPILEXPM:
.type HCOMPILEXPM, @function
push ebp
mov ebp, esp
sub esp, 72
mov dword ptr [ebp-4], 0
.Lt_05C5:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 8
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jne .Lt_05C8
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_05C6
.Lt_05C8:
.Lt_05C7:
sub esp, 12
push 0
push -1
lea eax, [FBC+136]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 8
push -1
push dword ptr [FBC+148]
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_05CA
sub esp, 12
push 0
push -1
sub esp, 8
push dword ptr [FBC+148]
call HSTRIPEXT
add esp, 12
push eax
push -1
lea eax, [FBC+136]
push eax
call fb_StrAssign
add esp, 32
.Lt_05CA:
.Lt_05C9:
sub esp, 12
push 0
push 5
push offset Lt_05CB
push -1
lea eax, [FBC+136]
push eax
call fb_StrConcatAssign
add esp, 32
cmp dword ptr [FBC+56], 0
je .Lt_05CD
sub esp, 4
push 2
push 13
push offset Lt_05CE
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
sub esp, 4
push -1
lea eax, [FBC+136]
push eax
push -1
sub esp, 4
push 5
push offset Lt_0576
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_05CD:
.Lt_05CC:
sub esp, 8
lea eax, [ebp-28]
push eax
lea eax, [ebp-16]
push eax
call HPARSEXPM
add esp, 16
test eax, eax
jne .Lt_05D2
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_05C6
.Lt_05D2:
.Lt_05D1:
call fb_FileFree
mov dword ptr [ebp-32], eax
sub esp, 8
push 0
push dword ptr [ebp-32]
push 0
push 0
push 3
lea eax, [FBC+136]
push eax
call fb_FileOpen
add esp, 32
test eax, eax
je .Lt_05D4
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_05C6
.Lt_05D4:
.Lt_05D3:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
sub esp, 4
push 0
lea eax, [ebp-28]
push eax
push dword ptr [ebp-36]
call fb_PrintString
add esp, 16
sub esp, 12
push dword ptr [ebp-32]
call fb_FileClose
add esp, 16
test eax, eax
je .Lt_05D6
push 0
push 0
push offset Lt_0087
push 2972
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_05D6:
cmp dword ptr [FBC+40], 0
jne .Lt_05D8
sub esp, 12
lea eax, [FBC+136]
push eax
call FBCADDTEMP
add esp, 16
.Lt_05D8:
.Lt_05D7:
sub esp, 4
push 0
push 0
lea eax, [FBC+136]
push eax
call HCOMPILEBAS
add esp, 16
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_05C6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HCOMPILEXPM, .-HCOMPILEXPM
.balign 16
HCOMPILESTAGE2MODULE:
.type HCOMPILESTAGE2MODULE, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_05D9:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
sub esp, 12
push 0
push -1
sub esp, 4
push 2
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-28]
push eax
call fb_StrAssign
add esp, 32
mov eax, dword ptr [FBC+48]
not eax
sub esp, 12
push 3
mov ebx, eax
call FBGETOPTION
add esp, 16
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [FBC+52]
not ecx
or eax, ecx
and ebx, eax
je .Lt_05DC
sub esp, 12
lea eax, [ebp-28]
push eax
call FBCADDTEMP
add esp, 16
.Lt_05DC:
.Lt_05DB:
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .Lt_05DF
.Lt_05E0:
call FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_05E3
.Lt_05E4:
sub esp, 12
push 0
push 6
push offset Lt_05E5
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_05E1
.Lt_05E3:
cmp dword ptr [ebp-36], 1
jne .Lt_05E6
.Lt_05E7:
sub esp, 12
push 0
push 6
push offset Lt_05E8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_05E1
.Lt_05E6:
cmp dword ptr [ebp-36], 4
jne .Lt_05E9
.Lt_05EA:
sub esp, 12
push 0
push 6
push offset Lt_05E5
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_05E1
.Lt_05E9:
cmp dword ptr [ebp-36], 5
jne .Lt_05EB
.Lt_05EC:
sub esp, 12
push 0
push 6
push offset Lt_05E8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_05EB:
.Lt_05E1:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .Lt_05EE
cmp dword ptr [FBC+28], 0
je .Lt_05F0
sub esp, 12
push 0
push 14
push offset Lt_05F1
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_05EF
.Lt_05F0:
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00C3
push -1
sub esp, 4
push 0
call FBGETGCCARCH
push eax
push 7
push offset Lt_05F2
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
.Lt_05EF:
.Lt_05EE:
.Lt_05ED:
sub esp, 12
push 32
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_05F7
sub esp, 12
push 0
push 7
push offset Lt_05F8
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_05F7:
.Lt_05F6:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .Lt_05FA
sub esp, 12
push 0
push 90
push offset Lt_05FD
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 30
push offset Lt_05FE
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_05F9
.Lt_05FA:
sub esp, 12
push 0
push 90
push offset Lt_0600
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 70
push offset Lt_0601
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_05F9:
sub esp, 12
push 0
push 11
push offset Lt_0602
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 39
push offset Lt_0603
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .Lt_0605
sub esp, 12
push 0
push 3
push offset Lt_0606
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 8
call FBGETOPTION
add esp, 4
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00C3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0605:
.Lt_0604:
sub esp, 12
push 0
push 22
push offset Lt_0607
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .Lt_0609
sub esp, 12
push 0
push 17
push offset Lt_060A
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0609:
.Lt_0608:
sub esp, 12
push 0
push 17
push offset Lt_060B
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 9
push offset Lt_060C
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 68
push offset Lt_060D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 13
push offset Lt_060E
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 13
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_0610
sub esp, 12
push 0
push 4
push offset Lt_0611
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0610:
.Lt_060F:
sub esp, 12
push 5
call FBGETOPTION
add esp, 16
cmp eax, 1
jne .Lt_0613
sub esp, 12
push 0
push 21
push offset Lt_0614
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0613:
.Lt_0612:
call FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .Lt_0618
.Lt_0619:
cmp dword ptr [ebp-36], 1
jne .Lt_0617
.Lt_0618:
sub esp, 12
push 9
call FBGETOPTION
add esp, 16
test eax, eax
jne .Lt_061B
sub esp, 12
push 0
push 13
push offset Lt_061C
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_061B:
.Lt_061A:
.Lt_0617:
.Lt_0615:
jmp .Lt_05DD
.Lt_05DF:
cmp dword ptr [ebp-32], 2
jne .Lt_061D
.Lt_061E:
call FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_0621
.Lt_0622:
sub esp, 12
push 0
push 12
push offset Lt_0623
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_061F
.Lt_0621:
cmp dword ptr [ebp-36], 1
jne .Lt_0624
.Lt_0625:
sub esp, 12
push 0
push 15
push offset Lt_0626
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_061F
.Lt_0624:
cmp dword ptr [ebp-36], 2
jne .Lt_0627
.Lt_0628:
sub esp, 12
push 0
push 12
push offset Lt_0629
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_061F
.Lt_0627:
cmp dword ptr [ebp-36], 3
jne .Lt_062A
.Lt_062B:
sub esp, 12
push 0
push 16
push offset Lt_062C
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_061F
.Lt_062A:
cmp dword ptr [ebp-36], 4
jne .Lt_062D
.Lt_062E:
sub esp, 12
push 0
push 16
push offset Lt_062F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_061F
.Lt_062D:
cmp dword ptr [ebp-36], 5
jne .Lt_0630
.Lt_0631:
sub esp, 12
push 0
push 18
push offset Lt_0632
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0630:
.Lt_061F:
sub esp, 12
push 32
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_0634
sub esp, 12
push 0
push 23
push offset Lt_0635
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0634:
.Lt_0633:
sub esp, 12
push 0
push 3
push offset Lt_0606
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push 8
call FBGETOPTION
add esp, 4
push eax
call fb_IntToStr
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00C3
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
call FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .Lt_0639
.Lt_063A:
cmp dword ptr [ebp-36], 1
jne .Lt_0638
.Lt_0639:
sub esp, 12
push 9
call FBGETOPTION
add esp, 16
test eax, eax
jne .Lt_063C
sub esp, 12
push 0
push 24
push offset Lt_063D
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_063C:
.Lt_063B:
.Lt_0638:
.Lt_0636:
.Lt_061D:
.Lt_05DD:
sub esp, 12
push 0
push 2
push offset Lt_00F2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 1
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_063E
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 5
push offset Lt_063F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 2
push offset Lt_00F2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 128
lea eax, [FBC+1602]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .Lt_0642
.Lt_0643:
mov dword ptr [ebp-36], 3
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
jne .Lt_0645
mov dword ptr [ebp-36], 13
.Lt_0645:
.Lt_0644:
sub esp, 4
lea eax, [ebp-16]
push eax
push dword ptr [ebp-36]
push offset Lt_0646
call FBCRUNBIN
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0640
.Lt_0642:
cmp dword ptr [ebp-32], 2
jne .Lt_0647
.Lt_0648:
sub esp, 4
lea eax, [ebp-16]
push eax
push 4
push offset Lt_0649
call FBCRUNBIN
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0647:
.Lt_0640:
sub esp, 12
lea eax, [ebp-28]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_05DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HCOMPILESTAGE2MODULE, .-HCOMPILESTAGE2MODULE
.balign 16
HCOMPILESTAGE2MODULES:
.type HCOMPILESTAGE2MODULES, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_064A:
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_064C:
cmp dword ptr [ebp-4], 0
je .Lt_064D
sub esp, 12
push dword ptr [ebp-4]
call HCOMPILESTAGE2MODULE
add esp, 16
test eax, eax
jne .Lt_064F
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_064F:
.Lt_064E:
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_064C
.Lt_064D:
.Lt_064B:
mov esp, ebp
pop ebp
ret
.size HCOMPILESTAGE2MODULES, .-HCOMPILESTAGE2MODULES
.balign 16
HASSEMBLEMODULE:
.type HASSEMBLEMODULE, @function
push ebp
mov ebp, esp
sub esp, 72
mov dword ptr [ebp-4], 0
.Lt_0650:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
call FBGETCPUFAMILY
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .Lt_0654
.Lt_0655:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
jne .Lt_0657
sub esp, 12
push 0
push 12
push offset Lt_0658
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_0656
.Lt_0657:
sub esp, 12
push 0
push 6
push offset Lt_0659
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0656:
jmp .Lt_0652
.Lt_0654:
cmp dword ptr [ebp-60], 1
jne .Lt_065A
.Lt_065B:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
jne .Lt_065D
sub esp, 12
push 0
push 14
push offset Lt_065E
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
jmp .Lt_065C
.Lt_065D:
sub esp, 12
push 0
push 6
push offset Lt_065F
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_065C:
.Lt_065A:
.Lt_0652:
sub esp, 12
push 13
call FBGETOPTION
add esp, 16
test eax, eax
jne .Lt_0661
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 9
je .Lt_0663
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .Lt_0665
sub esp, 12
push 0
push 24
push offset Lt_0666
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_0665:
.Lt_0664:
.Lt_0663:
.Lt_0662:
.Lt_0661:
.Lt_0660:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
jne .Lt_0668
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0651
.Lt_0668:
.Lt_0667:
sub esp, 12
push 0
push 2
push offset Lt_00F2
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 4
push 2
push dword ptr [ebp+8]
call HGETASMNAME
add esp, 12
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push 3
push offset Lt_063E
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F2
push -1
sub esp, 4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 5
push offset Lt_063F
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 128
lea eax, [FBC+1346]
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
mov dword ptr [ebp-56], 0
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
jne .Lt_066D
mov dword ptr [ebp-56], 10
.Lt_066D:
.Lt_066C:
sub esp, 4
lea eax, [ebp-16]
push eax
push dword ptr [ebp-56]
push offset Lt_066E
call FBCRUNBIN
add esp, 16
test eax, eax
jne .Lt_0670
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
jmp .Lt_0651
.Lt_0670:
.Lt_066F:
cmp dword ptr [FBC+52], 0
jne .Lt_0672
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call FBCADDTEMP
add esp, 16
.Lt_0672:
.Lt_0671:
mov dword ptr [ebp-4], -1
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_0651:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HASSEMBLEMODULE, .-HASSEMBLEMODULE
.balign 16
HASSEMBLEMODULES:
.type HASSEMBLEMODULES, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0673:
sub esp, 12
lea eax, [FBC+72]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0675:
cmp dword ptr [ebp-4], 0
je .Lt_0676
sub esp, 12
push dword ptr [ebp-4]
call HASSEMBLEMODULE
add esp, 16
test eax, eax
jne .Lt_0678
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_0678:
.Lt_0677:
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0675
.Lt_0676:
.Lt_0674:
mov esp, ebp
pop ebp
ret
.size HASSEMBLEMODULES, .-HASSEMBLEMODULES
.balign 16
HASSEMBLERC:
.type HASSEMBLERC, @function
push ebp
mov ebp, esp
sub esp, 100
push ebx
mov dword ptr [ebp-4], 0
.Lt_0679:
sub esp, 12
push 0
push 37
push offset Lt_067B
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F2
push -1
sub esp, 4
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 3
push offset Lt_0107
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 2
push offset Lt_00F2
push -1
sub esp, 4
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 3
push offset Lt_0107
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 4
lea eax, [ebp-16]
push eax
push 7
push offset Lt_0682
call FBCRUNBIN
add esp, 16
mov dword ptr [ebp-4], eax
cmp dword ptr [FBC+52], 0
jne .Lt_0684
sub esp, 12
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call FBCADDTEMP
add esp, 16
.Lt_0684:
.Lt_0683:
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_067A:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HASSEMBLERC, .-HASSEMBLERC
.balign 16
HASSEMBLERCS:
.type HASSEMBLERCS, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0685:
sub esp, 12
lea eax, [FBC+104]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-4], eax
.Lt_0687:
cmp dword ptr [ebp-4], 0
je .Lt_0688
sub esp, 12
push dword ptr [ebp-4]
call HASSEMBLERC
add esp, 16
test eax, eax
jne .Lt_068A
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_068A:
.Lt_0689:
sub esp, 12
push dword ptr [ebp-4]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-4], eax
jmp .Lt_0687
.Lt_0688:
.Lt_0686:
mov esp, ebp
pop ebp
ret
.size HASSEMBLERCS, .-HASSEMBLERCS
.balign 16
HASSEMBLEXPM:
.type HASSEMBLEXPM, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_068B:
sub esp, 8
push -1
lea eax, [FBC+136]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_068E
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_0690
sub esp, 12
lea eax, [FBC+136]
push eax
call HCOMPILESTAGE2MODULE
add esp, 16
.Lt_0690:
.Lt_068F:
sub esp, 12
lea eax, [FBC+136]
push eax
call HASSEMBLEMODULE
add esp, 16
test eax, eax
jne .Lt_0692
sub esp, 12
push 1
call FBCEND
add esp, 16
.Lt_0692:
.Lt_0691:
.Lt_068E:
.Lt_068D:
.Lt_068C:
mov esp, ebp
pop ebp
ret
.size HASSEMBLEXPM, .-HASSEMBLEXPM
.balign 16
HCOMPILEFBCTINF:
.type HCOMPILEFBCTINF, @function
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-4], 0
.Lt_0693:
sub esp, 12
lea eax, [ebp-24]
push eax
call _ZN9FBCIOFILEC1Ev
add esp, 16
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
sub esp, 12
push 0
push 16
push offset Lt_001E
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push 0
push 12
push offset Lt_001D
push -1
lea eax, [ebp-36]
push eax
call fb_StrAssign
add esp, 32
lea eax, [ebp-36]
mov dword ptr [ebp-12], eax
cmp dword ptr [FBC+56], 0
je .Lt_0696
sub esp, 4
push 2
push 10
push offset Lt_0697
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
lea eax, [ebp-24]
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_0696:
.Lt_0695:
call fb_FileFree
mov dword ptr [ebp-40], eax
sub esp, 8
push 0
push dword ptr [ebp-40]
push 0
push 0
push 3
lea eax, [ebp-24]
push eax
call fb_FileOpen
add esp, 32
test eax, eax
je .Lt_0699
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call _ZN9FBCIOFILED1Ev
add esp, 16
jmp .Lt_0694
.Lt_0699:
.Lt_0698:
sub esp, 12
push dword ptr [ebp-40]
call fb_FileClose
add esp, 16
test eax, eax
je .Lt_069A
push 0
push 0
push offset Lt_0087
push 3348
call fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_069A:
cmp dword ptr [FBC+40], 0
jne .Lt_069C
sub esp, 12
lea eax, [ebp-24]
push eax
call FBCADDTEMP
add esp, 16
.Lt_069C:
.Lt_069B:
sub esp, 4
push -1
push 0
lea eax, [ebp-24]
push eax
call HCOMPILEBAS
add esp, 16
sub esp, 12
push 2
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_069E
sub esp, 12
lea eax, [ebp-24]
push eax
call HCOMPILESTAGE2MODULE
add esp, 16
.Lt_069E:
.Lt_069D:
sub esp, 12
lea eax, [ebp-24]
push eax
call HASSEMBLEMODULE
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-36]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call _ZN9FBCIOFILED1Ev
add esp, 16
.Lt_0694:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.size HCOMPILEFBCTINF, .-HCOMPILEFBCTINF
.balign 16
HARCHIVEFILES:
.type HARCHIVEFILES, @function
push ebp
mov ebp, esp
sub esp, 84
push ebx
mov dword ptr [ebp-4], 0
.Lt_069F:
call HSETOUTNAME
sub esp, 12
lea eax, [FBC+428]
push eax
call fb_StrAllocTempDescZ
add esp, 4
push eax
call fb_FileKill
add esp, 16
test eax, eax
je .Lt_06A2
.Lt_06A2:
.Lt_06A1:
sub esp, 12
push 0
push -1
sub esp, 8
push 3
push offset Lt_0232
push -1
sub esp, 4
push 261
lea eax, [FBC+428]
push eax
push 7
push offset Lt_06A4
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrInit
add esp, 32
sub esp, 12
push 34
call FBGETOPTION
add esp, 16
mov ebx, eax
call FBISCROSSCOMP
not eax
and ebx, eax
je .Lt_06A8
call HCOMPILEFBCTINF
test eax, eax
je .Lt_06AA
sub esp, 12
push 0
push 15
push offset Lt_06AD
push -1
lea eax, [ebp-16]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_06AA:
.Lt_06A9:
sub esp, 12
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 12
push offset Lt_001D
push -1
lea eax, [ebp-56]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call FBCADDTEMP
add esp, 16
sub esp, 12
lea eax, [ebp-56]
push eax
call fb_StrDelete
add esp, 16
.Lt_06A8:
.Lt_06A7:
sub esp, 12
lea eax, [FBC+188]
push eax
call LISTGETHEAD
add esp, 16
mov dword ptr [ebp-44], eax
.Lt_06AF:
cmp dword ptr [ebp-44], 0
je .Lt_06B0
sub esp, 12
push 0
push -1
sub esp, 8
push -1
sub esp, 12
push 3
push offset Lt_063E
push -1
sub esp, 4
push -1
push dword ptr [ebp-44]
push 2
push offset Lt_00F2
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call fb_StrConcat
add esp, 32
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-16]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
push dword ptr [ebp-44]
call LISTGETNEXT
add esp, 16
mov dword ptr [ebp-44], eax
jmp .Lt_06AF
.Lt_06B0:
sub esp, 4
lea eax, [ebp-16]
push eax
push 1
push offset Lt_06B4
call FBCRUNBIN
add esp, 16
mov dword ptr [ebp-4], eax
sub esp, 12
lea eax, [ebp-16]
push eax
call fb_StrDelete
add esp, 16
.Lt_06A0:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.size HARCHIVEFILES, .-HARCHIVEFILES
.balign 16
HSETDEFAULTLIBPATHS:
.type HSETDEFAULTLIBPATHS, @function
push ebp
mov ebp, esp
sub esp, 40
.Lt_06B5:
sub esp, 12
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 261
lea eax, [FBC+2915]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call FBCADDDEFLIBPATH
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset Lt_0009
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call FBCADDDEFLIBPATH
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
cmp eax, 11
je .Lt_06BA
sub esp, 12
push offset Lt_06BB
call FBCADDLIBPATHFOR
add esp, 16
.Lt_06BA:
.Lt_06B9:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
jne .Lt_06BE
.Lt_06BF:
sub esp, 12
push offset Lt_06C0
call FBCADDLIBPATHFOR
add esp, 16
jmp .Lt_06BC
.Lt_06BE:
cmp dword ptr [ebp-28], 0
jne .Lt_06C1
.Lt_06C2:
sub esp, 12
push offset Lt_06C3
call FBCADDLIBPATHFOR
add esp, 16
.Lt_06C1:
.Lt_06BC:
.Lt_06B6:
mov esp, ebp
pop ebp
ret
.size HSETDEFAULTLIBPATHS, .-HSETDEFAULTLIBPATHS
.balign 16
FBCADDDEFLIB:
.type FBCADDDEFLIB, @function
push ebp
mov ebp, esp
sub esp, 24
.Lt_06C4:
sub esp, 4
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 4
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 24
lea eax, [ebp-12]
push eax
lea eax, [FBC+340]
push eax
call STRSETADD
add esp, 16
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_06C5:
mov esp, ebp
pop ebp
ret
.size FBCADDDEFLIB, .-FBCADDDEFLIB
.balign 16
HGETFBLIBNAMESUFFIX:
.type HGETFBLIBNAMESUFFIX, @function
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_06C7:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
sub esp, 12
push 30
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_06CA
sub esp, 12
push 0
push 3
push offset Lt_0421
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_06CA:
.Lt_06C9:
sub esp, 12
push 32
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_06CC
sub esp, 12
push 0
push 4
push offset Lt_043E
push -1
lea eax, [ebp-24]
push eax
call fb_StrConcatAssign
add esp, 32
.Lt_06CC:
.Lt_06CB:
sub esp, 12
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call fb_StrAssign
add esp, 32
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
.Lt_06C8:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrAllocTempResult
add esp, 16
mov esp, ebp
pop ebp
ret
.size HGETFBLIBNAMESUFFIX, .-HGETFBLIBNAMESUFFIX
.balign 16
HADDDEFAULTLIBS:
.type HADDDEFAULTLIBS, @function
push ebp
mov ebp, esp
sub esp, 68
push ebx
.Lt_06CD:
sub esp, 12
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
sub esp, 8
push -1
call HGETFBLIBNAMESUFFIX
push eax
push 3
push offset Lt_0020
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-24]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call FBCADDDEFLIB
add esp, 16
sub esp, 12
lea eax, [ebp-24]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 31
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_06D2
sub esp, 12
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
sub esp, 8
push -1
call HGETFBLIBNAMESUFFIX
push eax
push 6
push offset Lt_06D3
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 28
push eax
push -1
lea eax, [ebp-48]
push eax
call fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call FBCADDDEFLIB
add esp, 16
sub esp, 12
lea eax, [ebp-48]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-52], eax
jmp .Lt_06D7
.Lt_06D9:
sub esp, 12
push offset Lt_06DA
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06DB
call FBCADDDEFLIB
add esp, 16
jmp .Lt_06D6
.Lt_06DC:
sub esp, 12
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 15
push offset Lt_06DD
push -1
lea eax, [ebp-64]
push eax
call fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call FBCADDDEFLIBPATH
add esp, 16
sub esp, 12
lea eax, [ebp-64]
push eax
call fb_StrDelete
add esp, 16
sub esp, 12
push offset Lt_06DF
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06E0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06E1
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06E2
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06E3
call FBCADDDEFLIB
add esp, 16
jmp .Lt_06D6
.Lt_06D7:
cmp dword ptr [ebp-52], 10
ja .Lt_06D6
mov eax, dword ptr [ebp-52]
jmp dword ptr [.LT_06E4+eax*4]
.LT_06E4:
.int .Lt_06D9
.int .Lt_06D9
.int .Lt_06DC
.int .Lt_06D6
.int .Lt_06D6
.int .Lt_06DC
.int .Lt_06DC
.int .Lt_06DC
.int .Lt_06DC
.int .Lt_06DC
.int .Lt_06DC
.Lt_06D6:
.Lt_06D2:
.Lt_06D1:
sub esp, 12
push 3
call FBGETOPTION
add esp, 16
mov dword ptr [ebp-28], eax
jmp .Lt_06E6
.Lt_06E8:
sub esp, 12
push offset Lt_0038
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0287
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06E9
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06EA
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push 21
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_06EC
sub esp, 12
push offset Lt_06ED
call FBCADDDEFLIB
add esp, 16
.Lt_06EC:
.Lt_06EB:
jmp .Lt_06E5
.Lt_06EE:
sub esp, 12
push offset Lt_0038
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06EF
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06F0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06F1
call FBCADDDEFLIB
add esp, 16
jmp .Lt_06E5
.Lt_06F2:
sub esp, 12
push offset Lt_0038
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_03C0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0418
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push 30
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_06F4
sub esp, 12
push offset Lt_06F0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06F5
call FBCADDDEFLIB
add esp, 16
.Lt_06F4:
.Lt_06F3:
jmp .Lt_06E5
.Lt_06F6:
sub esp, 12
push offset Lt_0038
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06F0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_03C0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0418
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06F1
call FBCADDDEFLIB
add esp, 16
jmp .Lt_06E5
.Lt_06F7:
sub esp, 12
push offset Lt_0038
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06F0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_03C0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0418
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06F1
call FBCADDDEFLIB
add esp, 16
jmp .Lt_06E5
.Lt_06F8:
sub esp, 8
push -1
push offset Lt_06F9
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
sub esp, 8
push -1
push offset Lt_06FA
mov ebx, eax
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_06FC
sub esp, 12
push offset Lt_06FD
call FBCADDDEFLIB
add esp, 16
jmp .Lt_06FB
.Lt_06FC:
sub esp, 12
push offset Lt_06F1
call FBCADDDEFLIB
add esp, 16
.Lt_06FB:
sub esp, 12
push offset Lt_0418
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06FE
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06F0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0038
call FBCADDDEFLIB
add esp, 16
sub esp, 8
push -1
push offset Lt_06FF
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
sub esp, 8
push -1
push offset Lt_0700
mov ebx, eax
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0702
sub esp, 12
push offset Lt_0703
call FBCADDDEFLIB
add esp, 16
.Lt_0702:
.Lt_0701:
sub esp, 12
push offset Lt_03C0
call FBCADDDEFLIB
add esp, 16
jmp .Lt_06E5
.Lt_0704:
sub esp, 12
push offset Lt_0038
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06F0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_03C0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0418
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06F1
call FBCADDDEFLIB
add esp, 16
jmp .Lt_06E5
.Lt_0705:
sub esp, 12
push offset Lt_0038
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06F0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_03C0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0418
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06F1
call FBCADDDEFLIB
add esp, 16
jmp .Lt_06E5
.Lt_0706:
sub esp, 12
push offset Lt_0038
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0707
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06E9
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06EA
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0708
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0709
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_070A
call FBCADDDEFLIB
add esp, 16
sub esp, 8
push -1
push offset Lt_06FF
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
sub esp, 8
push -1
push offset Lt_070B
mov ebx, eax
call FBCFINDLIBFILE
add esp, 4
push eax
call fb_StrLen
add esp, 16
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_070D
sub esp, 12
push offset Lt_0703
call FBCADDDEFLIB
add esp, 16
.Lt_070D:
.Lt_070C:
sub esp, 12
push 21
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_070F
sub esp, 12
push offset Lt_06ED
call FBCADDDEFLIB
add esp, 16
.Lt_070F:
.Lt_070E:
jmp .Lt_06E5
.Lt_0710:
sub esp, 12
push offset Lt_0038
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_06D3
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0711
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0712
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_03C0
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0713
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0714
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push offset Lt_0418
call FBCADDDEFLIB
add esp, 16
sub esp, 12
push 21
call FBGETOPTION
add esp, 16
test eax, eax
je .Lt_0716
sub esp, 12
push offset Lt_06ED
call FBCADDDEFLIB
add esp, 16
.Lt_0716:
.Lt_0715:
jmp .Lt_06E5
.Lt_06E6:
cmp dword ptr [ebp-28], 10
ja .Lt_06E5
mov eax, dword ptr [ebp-28]
jmp dword ptr [.LT_0717+eax*4]
.LT_0717:
.int .Lt_0706
.int .Lt_06E8
.int .Lt_06F8
.int .Lt_06F2
.int .Lt_0710
.int .Lt_06F6
.int .Lt_06F7
.int .Lt_06F7
.int .Lt_0705
.int .Lt_06EE
.int .Lt_0704
.Lt_06E5:
.Lt_06CE:
pop ebx
mov esp, ebp
pop ebp
ret
.size HADDDEFAULTLIBS, .-HADDDEFAULTLIBS
.balign 16
HPRINTOPTIONS:
.type HPRINTOPTIONS, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_0718:
sub esp, 4
push 1
push 34
push offset Lt_071A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 12
push offset Lt_071B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 57
push offset Lt_071C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 59
push offset Lt_071D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 35
push offset Lt_071E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 8
push offset Lt_071F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 63
push offset Lt_0720
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 49
push offset Lt_0721
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 57
push offset Lt_0722
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 69
push offset Lt_0723
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 48
push offset Lt_0724
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 44
push offset Lt_0725
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 46
push offset Lt_0726
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 41
push offset Lt_0727
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 33
push offset Lt_0728
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 69
push offset Lt_0729
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 48
push offset Lt_072A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .Lt_072C
sub esp, 4
push 1
push 47
push offset Lt_072D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 60
push offset Lt_072E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 38
push offset Lt_072F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 33
push offset Lt_0730
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 50
push offset Lt_0731
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 47
push offset Lt_0732
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_072C:
.Lt_072B:
sub esp, 4
push 1
push 41
push offset Lt_0733
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 62
push offset Lt_0734
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 53
push offset Lt_0735
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 61
push offset Lt_0736
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 65
push offset Lt_0737
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 33
push offset Lt_0738
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 75
push offset Lt_0739
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .Lt_073B
sub esp, 4
push 1
push 51
push offset Lt_073C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 43
push offset Lt_073D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 38
push offset Lt_073E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_073A
.Lt_073B:
sub esp, 4
push 1
push 51
push offset Lt_073F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_073A:
sub esp, 4
push 1
push 40
push offset Lt_0740
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 50
push offset Lt_0741
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 58
push offset Lt_0742
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 36
push offset Lt_0743
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 64
push offset Lt_0744
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 42
push offset Lt_0745
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 76
push offset Lt_0746
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 43
push offset Lt_0747
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 39
push offset Lt_0748
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 45
push offset Lt_0749
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 55
push offset Lt_074A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 63
push offset Lt_074B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 78
push offset Lt_074C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 71
push offset Lt_074D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 74
push offset Lt_074E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 50
push offset Lt_074F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 44
push offset Lt_0750
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 80
push offset Lt_0751
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 67
push offset Lt_0752
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 47
push offset Lt_0753
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 53
push offset Lt_0754
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 51
push offset Lt_0755
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 69
push offset Lt_0756
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .Lt_0758
sub esp, 4
push 1
push 73
push offset Lt_0759
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_0758:
.Lt_0757:
sub esp, 4
push 1
push 44
push offset Lt_075A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 65
push offset Lt_075B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 48
push offset Lt_075C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 60
push offset Lt_075D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 47
push offset Lt_075E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 41
push offset Lt_075F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 66
push offset Lt_0760
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 73
push offset Lt_0761
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 67
push offset Lt_0762
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 75
push offset Lt_0763
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .Lt_0765
sub esp, 4
push 1
push 47
push offset Lt_0766
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
jmp .Lt_0764
.Lt_0765:
sub esp, 4
push 1
push 47
push offset Lt_0766
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_0764:
sub esp, 4
push 1
push 47
push offset Lt_0767
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 29
push offset Lt_0768
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 61
push offset Lt_0769
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 40
push offset Lt_076A
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 70
push offset Lt_076B
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .Lt_076D
sub esp, 4
push 1
push 38
push offset Lt_076E
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 39
push offset Lt_076F
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 44
push offset Lt_0770
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 57
push offset Lt_0771
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 49
push offset Lt_0772
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 50
push offset Lt_0773
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 45
push offset Lt_0774
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 49
push offset Lt_0775
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_076D:
.Lt_076C:
sub esp, 4
push 1
push 39
push offset Lt_0776
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 72
push offset Lt_0777
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 39
push offset Lt_0778
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 58
push offset Lt_0779
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
cmp dword ptr [ebp+8], 0
je .Lt_077B
sub esp, 4
push 1
push 56
push offset Lt_077C
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 70
push offset Lt_077D
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_077B:
.Lt_077A:
.Lt_0719:
mov esp, ebp
pop ebp
ret
.size HPRINTOPTIONS, .-HPRINTOPTIONS
.balign 16
HPRINTVERSION:
.type HPRINTVERSION, @function
push ebp
mov ebp, esp
sub esp, 72
.Lt_0784:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
sub esp, 4
push 1
sub esp, 4
push 5
push offset Lt_078C
push -1
sub esp, 4
push -1
sub esp, 12
sub esp, 4
call FBGETHOSTBITS
add esp, 4
push eax
call fb_IntToStr
add esp, 16
push eax
push -1
sub esp, 4
push 3
push offset Lt_0548
push -1
sub esp, 4
push -1
call FBGETHOSTID
push eax
push 61
push offset Lt_078B
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call fb_StrConcat
add esp, 24
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call fb_StrConcat
add esp, 24
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 4
push 1
push 55
push offset Lt_0791
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
sub esp, 8
push -1
lea eax, [ebp-12]
push eax
call fb_StrLen
add esp, 16
test eax, eax
jle .Lt_0793
sub esp, 4
push 1
lea eax, [ebp-12]
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_0793:
.Lt_0792:
cmp dword ptr [ebp+8], 0
je .Lt_0795
call FBCPRINTTARGETINFO
jmp .Lt_0797
sub esp, 4
push 1
push 14
push offset Lt_0798
call fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call fb_PrintString
add esp, 16
.Lt_0797:
.Lt_0796:
.Lt_0795:
.Lt_0794:
sub esp, 12
lea eax, [ebp-12]
push eax
call fb_StrDelete
add esp, 16
.Lt_0785:
mov esp, ebp
pop ebp
ret
.size HPRINTVERSION, .-HPRINTVERSION
.balign 16
_GLOBAL__I:
.type _GLOBAL__I, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_07CB:
sub esp, 12
push offset FBC
call _ZN6FBCCTXC1Ev
add esp, 16
.Lt_07CC:
mov esp, ebp
pop ebp
ret
.size _GLOBAL__I, .-_GLOBAL__I
.balign 16
_GLOBAL__D:
.type _GLOBAL__D, @function
push ebp
mov ebp, esp
sub esp, 8
.Lt_07CE:
sub esp, 12
push offset FBC
call _ZN6FBCCTXD1Ev
add esp, 16
.Lt_07CF:
mov esp, ebp
pop ebp
ret
.size _GLOBAL__D, .-_GLOBAL__D

.section .rodata
.balign 4
Lt_0000:	.ascii	"\0"
.balign 4
Lt_0005:	.ascii	"This program requires at least a 486 to run.\0"
.balign 4
Lt_0006:	.ascii	"1\0"
.balign 4
Lt_0008:	.ascii	"0\0"
.balign 4
Lt_0009:	.ascii	".\0"
.balign 4
Lt_001B:	.ascii	"/\0"
.balign 4
Lt_001D:	.ascii	"__fb_ct.inf\0"
.balign 4
Lt_001E:	.ascii	"__fb_ct.inf.bas\0"
.balign 4
Lt_0020:	.ascii	"fb\0"

.section .data
.balign 4
TOOLNAMES:
.ascii "as\0"
.skip 13,0
.ascii "ar\0"
.skip 13,0
.ascii "ld\0"
.skip 13,0
.ascii "gcc\0"
.skip 12,0
.ascii "llc\0"
.skip 12,0
.ascii "dlltool\0"
.skip 8,0
.ascii "GoRC\0"
.skip 11,0
.ascii "windres\0"
.skip 8,0
.ascii "cxbe\0"
.skip 11,0
.ascii "dxe3gen\0"
.skip 8,0
.ascii "emcc\0"
.skip 11,0
.ascii "emar\0"
.skip 11,0
.ascii "emcc\0"
.skip 11,0
.ascii "emcc\0"
.skip 11,0

.section .rodata
.balign 4
Lt_0038:	.ascii	"gcc\0"

.section .bss
.balign 4
	.lcomm	FBC,3184

.section .rodata
.balign 4
Lt_0049:	.ascii	"lib\0"
.balign 4
Lt_004A:	.ascii	".a\0"
.balign 4
Lt_0059:	.ascii	".exe\0"
.balign 4
Lt_005D:	.ascii	".html\0"
.balign 4
Lt_0066:	.ascii	".dll\0"
.balign 4
Lt_0070:	.ascii	".so\0"
.balign 4
Lt_0076:	.ascii	".dxe\0"
.balign 4
Lt_0087:	.ascii	"src/compiler/fbc.bas\0"
.balign 4
Lt_0093:	.ascii	" -m32\0"
.balign 4
Lt_0096:	.ascii	" -m64\0"
.balign 4
Lt_009B:	.ascii	" -print-file-name=\0"
.balign 4
Lt_00C1:	.ascii	": \0"
.balign 4
Lt_00C3:	.ascii	" \0"
.balign 4
Lt_00CB:	.ascii	" failed: '\0"
.balign 4
Lt_00CC:	.ascii	"' terminated with exit code \0"
.balign 4
Lt_00D5:	.ascii	".clean.def\0"
.balign 4
Lt_00DC:	.ascii	"DATA\0"
.balign 4
Lt_00E7:	.ascii	"EXPORTS\0"
.balign 4
Lt_00F1:	.ascii	"--def \"\0"
.balign 4
Lt_00F2:	.ascii	"\"\0"
.balign 4
Lt_00F6:	.ascii	" --dllname \"\0"
.balign 4
Lt_00F7:	.ascii	" --output-lib \"\0"
.balign 4
Lt_00F8:	.ascii	".dll.a\"\0"
.balign 4
Lt_00FE:	.ascii	"creating import library\0"
.balign 4
Lt_0107:	.ascii	" \"\0"
.balign 4
Lt_010B:	.ascii	" --version\0"
.balign 4
Lt_010C:	.ascii	"GNU gold\0"
.balign 4
Lt_011B:	.ascii	"-m i386pe \0"
.balign 4
Lt_011E:	.ascii	"-m i386pep \0"
.balign 4
Lt_0125:	.ascii	"-m elf_i386 \0"
.balign 4
Lt_0128:	.ascii	"-m elf_x86_64 \0"
.balign 4
Lt_012B:	.ascii	"-m armelf_linux_eabi \0"
.balign 4
Lt_012C:	.ascii	"-o \0"
.balign 4
Lt_012D:	.ascii	"\"\0"
.balign 4
Lt_012E:	.ascii	"-o \"\0"
.balign 4
Lt_0135:	.ascii	"console\0"
.balign 4
Lt_0136:	.ascii	"gui\0"
.balign 4
Lt_0139:	.ascii	"windows\0"
.balign 4
Lt_013A:	.ascii	" -subsystem \0"
.balign 4
Lt_013F:	.ascii	" --dll --enable-stdcall-fixup\0"
.balign 4
Lt_0142:	.ascii	" -e _DllMainCRTStartup@12\0"
.balign 4
Lt_0143:	.ascii	" -e DllMainCRTStartup\0"
.balign 4
Lt_0149:	.ascii	" -shared -h\0"
.balign 4
Lt_0150:	.ascii	" -dynamic-linker /libexec/ld-elf.so.1\0"
.balign 4
Lt_0152:	.ascii	" -dynamic-linker /libexec/ld-elf.so.2\0"
.balign 4
Lt_0154:	.ascii	" -dynamic-linker /lib/64/ld.so.1\0"
.balign 4
Lt_015A:	.ascii	" -dynamic-linker /lib/ld-linux.so.2\0"
.balign 4
Lt_015D:	.ascii	" -dynamic-linker /lib64/ld-linux-x86-64.so.2\0"
.balign 4
Lt_0160:	.ascii	" -dynamic-linker /lib/ld-linux-armhf.so.3\0"
.balign 4
Lt_0163:	.ascii	" -dynamic-linker /lib/ld-linux-aarch64.so.1\0"
.balign 4
Lt_0165:	.ascii	" -dynamic-linker /usr/libexec/ld.elf_so\0"
.balign 4
Lt_0167:	.ascii	" -dynamic-linker /usr/libexec/ld.so\0"
.balign 4
Lt_016B:	.ascii	" --export-dynamic\0"
.balign 4
Lt_016D:	.ascii	" -nostdlib --file-alignment 0x20 --section-alignment 0x20 -shared\0"
.balign 4
Lt_016F:	.ascii	" -O\0"
.balign 4
Lt_0175:	.ascii	" -Wno-warn-absolute-paths\0"
.balign 4
Lt_017A:	.ascii	" -s \0"
.balign 4
Lt_017B:	.ascii	" --shell-file\0"
.balign 4
Lt_017C:	.ascii	"fb_shell.html\0"
.balign 4
Lt_017D:	.ascii	" --post-js\0"
.balign 4
Lt_017E:	.ascii	"fb_rtlib.js\0"
.balign 4
Lt_0181:	.ascii	"termlib_min.js\0"
.balign 4
Lt_0185:	.ascii	" -T \"\0"
.balign 4
Lt_0187:	.ascii	"/i386go32.x\"\0"
.balign 4
Lt_018B:	.ascii	"/fbextra.x\"\0"
.balign 4
Lt_0190:	.ascii	" --stack \0"
.balign 4
Lt_0191:	.ascii	",\0"
.balign 4
Lt_0195:	.ascii	".def\0"
.balign 4
Lt_0196:	.ascii	" --output-def \"\0"
.balign 4
Lt_0198:	.ascii	" -e _WinMainCRTStartup\0"
.balign 4
Lt_019C:	.ascii	" -Bstatic\0"
.balign 4
Lt_019F:	.ascii	" -Map \0"
.balign 4
Lt_01A6:	.ascii	" -s\0"
.balign 4
Lt_01A9:	.ascii	" -L \"\0"
.balign 4
Lt_01AA:	.ascii	" -L\"\0"
.balign 4
Lt_01B6:	.ascii	"crt0.o\0"
.balign 4
Lt_01B9:	.ascii	"gcrt0.o\0"
.balign 4
Lt_01BD:	.ascii	"dllcrt2.o\0"
.balign 4
Lt_01BE:	.ascii	"crt2.o\0"
.balign 4
Lt_01C1:	.ascii	"gcrt2.o\0"
.balign 4
Lt_01C2:	.ascii	"crtbegin.o\0"
.balign 4
Lt_01D0:	.ascii	"gcrt1.o\0"
.balign 4
Lt_01D7:	.ascii	"crt1.o\0"
.balign 4
Lt_01DD:	.ascii	"crti.o\0"
.balign 4
Lt_01E0:	.ascii	"crtbeginS.o\0"
.balign 4
Lt_01E9:	.ascii	"fbrt0pic.o\0"
.balign 4
Lt_01EA:	.ascii	"fbrt0.o\0"
.balign 4
Lt_01F4:	.ascii	" \"-(\"\0"
.balign 4
Lt_0200:	.ascii	" -l\0"
.balign 4
Lt_0207:	.ascii	" \"-)\"\0"
.balign 4
Lt_0208:	.ascii	" -lfb\0"
.balign 4
Lt_020F:	.ascii	"crtendS.o\0"
.balign 4
Lt_0210:	.ascii	"crtend.o\0"
.balign 4
Lt_0213:	.ascii	"crtn.o\0"
.balign 4
Lt_0218:	.ascii	" -macosx_version_min 10.6\0"
.balign 4
Lt_021B:	.ascii	"linking\0"
.balign 4
Lt_0231:	.ascii	"-TITLE:\"\0"
.balign 4
Lt_0232:	.ascii	"\" \0"
.balign 4
Lt_0236:	.ascii	"-DUMPINFO:\"\0"
.balign 4
Lt_0239:	.ascii	".cxbe\"\0"
.balign 4
Lt_023B:	.ascii	" -OUT:\"\0"
.balign 4
Lt_023D:	.ascii	".xbe\0"
.balign 4
Lt_023E:	.ascii	" \"\0"
.balign 4
Lt_0241:	.ascii	" >nul\0"
.balign 4
Lt_0244:	.ascii	"cxbe: \0"
.balign 4
Lt_024C:	.ascii	"cxbe failed: exit code \0"
.balign 4
Lt_027F:	.ascii	".o\0"

.section .data
.balign 4
GNUOSMAP:
.int Lt_0284
.int 2
.int Lt_0285
.int 0
.int Lt_0286
.int 3
.int Lt_0287
.int 1
.int Lt_0288
.int 9
.int Lt_0289
.int 5
.int Lt_028A
.int 6
.int Lt_028B
.int 7
.int Lt_028C
.int 10
.int Lt_028D
.int 8
.int Lt_028E
.int 4

.section .rodata
.balign 4
Lt_0284:	.ascii	"linux\0"
.balign 4
Lt_0285:	.ascii	"mingw\0"
.balign 4
Lt_0286:	.ascii	"djgpp\0"
.balign 4
Lt_0287:	.ascii	"cygwin\0"
.balign 4
Lt_0288:	.ascii	"darwin\0"
.balign 4
Lt_0289:	.ascii	"freebsd\0"
.balign 4
Lt_028A:	.ascii	"dragonfly\0"
.balign 4
Lt_028B:	.ascii	"solaris\0"
.balign 4
Lt_028C:	.ascii	"netbsd\0"
.balign 4
Lt_028D:	.ascii	"openbsd\0"
.balign 4
Lt_028E:	.ascii	"xbox\0"

.section .data
.balign 4
GNUARCHMAP:
.int Lt_0290
.int 0
.int Lt_0291
.int 1
.int Lt_0292
.int 2
.int Lt_0293
.int 3
.int Lt_0294
.int 1
.int Lt_0295
.int 13
.int Lt_0296
.int 13
.int Lt_0297
.int 14
.int Lt_0298
.int 15
.int Lt_0299
.int 15
.int Lt_029A
.int 16
.int Lt_029B
.int 17
.int Lt_029C
.int 18

.section .rodata
.balign 4
Lt_0290:	.ascii	"i386\0"
.balign 4
Lt_0291:	.ascii	"i486\0"
.balign 4
Lt_0292:	.ascii	"i586\0"
.balign 4
Lt_0293:	.ascii	"i686\0"
.balign 4
Lt_0294:	.ascii	"x86\0"
.balign 4
Lt_0295:	.ascii	"x86_64\0"
.balign 4
Lt_0296:	.ascii	"amd64\0"
.balign 4
Lt_0297:	.ascii	"armv6\0"
.balign 4
Lt_0298:	.ascii	"armv7a\0"
.balign 4
Lt_0299:	.ascii	"arm\0"
.balign 4
Lt_029A:	.ascii	"aarch64\0"
.balign 4
Lt_029B:	.ascii	"powerpc\0"
.balign 4
Lt_029C:	.ascii	"powerpc64\0"

.section .data
.balign 4
FBOSARCHMAP:
.int Lt_02AE
.int 0
.int 1
.int Lt_02AF
.int 0
.int 13
.int Lt_028A
.int 6
.int 13
.int Lt_028B
.int 7
.int 13
.int Lt_02B0
.int 3
.int 1
.int Lt_028E
.int 4
.int 1
.int Lt_0287
.int 1
.int 1
.int Lt_0288
.int 9
.int 1
.int Lt_0289
.int 5
.int 1
.int Lt_0284
.int 2
.int 1
.int Lt_028C
.int 10
.int 1
.int Lt_028D
.int 8
.int 1

.section .rodata
.balign 4
Lt_02AE:	.ascii	"win32\0"
.balign 4
Lt_02AF:	.ascii	"win64\0"
.balign 4
Lt_02B0:	.ascii	"dos\0"
.balign 4
Lt_02BA:	.ascii	"-\0"

.section .data
.balign 4
OPTION_TAKES_ARGUMENT:
.int -1
.int -1
.int -1
.int -1
.int 0
.int 0
.int -1
.int 0
.int 0
.int 0
.int 0
.int 0
.int 0
.int 0
.int 0
.int 0
.int 0
.int 0
.int 0
.int -1
.int -1
.int -1
.int 0
.int -1
.int 0
.int -1
.int -1
.int -1
.int -1
.int 0
.int -1
.int -1
.int -1
.int 0
.int 0
.int 0
.int 0
.int 0
.int -1
.int -1
.int -1
.int 0
.int 0
.int -1
.int -1
.int 0
.int 0
.int 0
.int 0
.int 0
.int -1
.int 0
.int 0
.int 0
.int -1
.int -1
.int -1
.int 0
.int -1
.int 0
.int -1
.int -1
.int -1
.int -1
.int -1
.int -1

.section .rodata
.balign 4
Lt_02CA:	.ascii	"native\0"
.balign 4
Lt_02CD:	.ascii	"-arch \0"
.balign 4
Lt_02D4:	.ascii	"att\0"
.balign 4
Lt_02D7:	.ascii	"intel\0"
.balign 4
Lt_02F0:	.ascii	"PRECISE\0"
.balign 4
Lt_02F3:	.ascii	"FAST\0"
.balign 4
Lt_02FA:	.ascii	"X87\0"
.balign 4
Lt_02FB:	.ascii	"FPU\0"
.balign 4
Lt_02FF:	.ascii	"SSE\0"
.balign 4
Lt_0307:	.ascii	"gas\0"
.balign 4
Lt_030C:	.ascii	"llvm\0"
.balign 4
Lt_030F:	.ascii	"gas64\0"
.balign 4
Lt_031E:	.ascii	"inf\0"
.balign 4
Lt_032C:	.ascii	"max\0"
.balign 4
Lt_033B:	.ascii	"host\0"
.balign 4
Lt_033E:	.ascii	"target\0"
.balign 4
Lt_0341:	.ascii	"x\0"
.balign 4
Lt_0344:	.ascii	"fblibdir\0"
.balign 4
Lt_0347:	.ascii	"sha-1\0"
.balign 4
Lt_0364:	.ascii	"NONE\0"
.balign 4
Lt_036A:	.ascii	"2\0"
.balign 4
Lt_0372:	.ascii	"all\0"
.balign 4
Lt_0375:	.ascii	"none\0"
.balign 4
Lt_0378:	.ascii	"param\0"
.balign 4
Lt_037B:	.ascii	"escape\0"
.balign 4
Lt_037E:	.ascii	"next\0"
.balign 4
Lt_0381:	.ascii	"signedness\0"
.balign 4
Lt_0384:	.ascii	"constness\0"
.balign 4
Lt_0387:	.ascii	"funcptr\0"
.balign 4
Lt_038A:	.ascii	"suffix\0"
.balign 4
Lt_038D:	.ascii	"pedantic\0"
.balign 4
Lt_03A5:	.ascii	"gosub-setjmp\0"
.balign 4
Lt_03A8:	.ascii	"valist-as-ptr\0"
.balign 4
Lt_03B2:	.ascii	"a\0"
.balign 4
Lt_03B5:	.ascii	"arch\0"
.balign 4
Lt_03B8:	.ascii	"asm\0"
.balign 4
Lt_03C0:	.ascii	"c\0"
.balign 4
Lt_03CB:	.ascii	"dll\0"
.balign 4
Lt_03CE:	.ascii	"dylib\0"
.balign 4
Lt_03D5:	.ascii	"ex\0"
.balign 4
Lt_03D8:	.ascii	"earray\0"
.balign 4
Lt_03DB:	.ascii	"eassert\0"
.balign 4
Lt_03DE:	.ascii	"edebug\0"
.balign 4
Lt_03E1:	.ascii	"edebuginfo\0"
.balign 4
Lt_03E4:	.ascii	"elocation\0"
.balign 4
Lt_03E7:	.ascii	"enullptr\0"
.balign 4
Lt_03EA:	.ascii	"exx\0"
.balign 4
Lt_03ED:	.ascii	"export\0"
.balign 4
Lt_03F2:	.ascii	"forcelang\0"
.balign 4
Lt_03F5:	.ascii	"fpmode\0"
.balign 4
Lt_03F8:	.ascii	"fpu\0"
.balign 4
Lt_03FF:	.ascii	"gen\0"
.balign 4
Lt_0404:	.ascii	"help\0"
.balign 4
Lt_040B:	.ascii	"include\0"
.balign 4
Lt_0412:	.ascii	"lang\0"
.balign 4
Lt_0418:	.ascii	"m\0"
.balign 4
Lt_041B:	.ascii	"map\0"
.balign 4
Lt_041E:	.ascii	"maxerr\0"
.balign 4
Lt_0421:	.ascii	"mt\0"
.balign 4
Lt_0426:	.ascii	"noerrline\0"
.balign 4
Lt_0429:	.ascii	"nodeflibs\0"
.balign 4
Lt_042C:	.ascii	"noobjinfo\0"
.balign 4
Lt_042F:	.ascii	"nostrip\0"
.balign 4
Lt_0433:	.ascii	"o\0"
.balign 4
Lt_043E:	.ascii	"pic\0"
.balign 4
Lt_0441:	.ascii	"pp\0"
.balign 4
Lt_0444:	.ascii	"prefix\0"
.balign 4
Lt_0447:	.ascii	"print\0"
.balign 4
Lt_044A:	.ascii	"profile\0"
.balign 4
Lt_0451:	.ascii	"rr\0"
.balign 4
Lt_0458:	.ascii	"RR\0"
.balign 4
Lt_045F:	.ascii	"showincludes\0"
.balign 4
Lt_0462:	.ascii	"static\0"
.balign 4
Lt_0465:	.ascii	"strip\0"
.balign 4
Lt_046E:	.ascii	"title\0"
.balign 4
Lt_0475:	.ascii	"vec\0"
.balign 4
Lt_0478:	.ascii	"version\0"
.balign 4
Lt_0481:	.ascii	"Wa\0"
.balign 4
Lt_0484:	.ascii	"Wl\0"
.balign 4
Lt_0487:	.ascii	"Wc\0"
.balign 4
Lt_0492:	.ascii	"-version\0"
.balign 4
Lt_0495:	.ascii	"-help\0"
.balign 4
Lt_04B5:	.ascii	"bas\0"
.balign 4
Lt_04BC:	.ascii	"rc\0"
.balign 4
Lt_04BD:	.ascii	"res\0"
.balign 4
Lt_04C1:	.ascii	"xpm\0"
.balign 4
Lt_052E:	.ascii	"../\0"
.balign 4
Lt_0533:	.ascii	"freebasic\0"
.balign 4
Lt_0534:	.ascii	"bin\0"
.balign 4
Lt_0542:	.ascii	", \0"
.balign 4
Lt_0545:	.ascii	"bit\0"
.balign 4
Lt_0548:	.ascii	" (\0"
.balign 4
Lt_0549:	.ascii	")\0"
.balign 4
Lt_054A:	.ascii	"target:\0"
.balign 4
Lt_054B:	.ascii	"backend:\0"
.balign 4
Lt_0554:	.ascii	"unnamed\0"
.balign 4
Lt_055A:	.ascii	".asm\0"
.balign 4
Lt_055D:	.ascii	".a64\0"
.balign 4
Lt_0564:	.ascii	".c\0"
.balign 4
Lt_0567:	.ascii	".ll\0"
.balign 4
Lt_0571:	.ascii	".pp.bas\0"
.balign 4
Lt_0575:	.ascii	"compiling: \0"
.balign 4
Lt_0576:	.ascii	" -o \0"
.balign 4
Lt_0579:	.ascii	" -pp \0"
.balign 4
Lt_057D:	.ascii	" (main module)\0"
.balign 4
Lt_057F:	.ascii	" (FB compile-time info)\0"
.balign 4
Lt_05A1:	.ascii	"\ndim shared as zstring ptr \0"
.balign 4
Lt_05A3:	.ascii	"fb_program_icon_data\0"
.balign 4
Lt_05A5:	.ascii	"(0 to ...) = _\n{ _\n\0"
.balign 4
Lt_05A9:	.ascii	"/* XPM */\0"
.balign 4
Lt_05B3:	.ascii	", _\n\0"
.balign 4
Lt_05B5:	.ascii	"\t@\0"
.balign 4
Lt_05BB:	.ascii	" _ \n\0"
.balign 4
Lt_05BD:	.ascii	"}\n\n\0"
.balign 4
Lt_05BF:	.ascii	"extern as zstring ptr ptr fb_program_icon alias \"fb_program_icon\"\n\0"
.balign 4
Lt_05C3:	.ascii	"dim shared as zstring ptr ptr fb_program_icon = @fb_program_icon_data(0)\n\0"
.balign 4
Lt_05CB:	.ascii	".bas\0"
.balign 4
Lt_05CE:	.ascii	"parsing xpm: \0"
.balign 4
Lt_05E5:	.ascii	"-m32 \0"
.balign 4
Lt_05E8:	.ascii	"-m64 \0"
.balign 4
Lt_05F1:	.ascii	"-mcpu=native \0"
.balign 4
Lt_05F2:	.ascii	"-mcpu=\0"
.balign 4
Lt_05F8:	.ascii	"-fPIC \0"
.balign 4
Lt_05FD:	.ascii	"-S -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable \0"
.balign 4
Lt_05FE:	.ascii	"-Wno-unused-but-set-variable \0"
.balign 4
Lt_0600:	.ascii	"-c -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable \0"
.balign 4
Lt_0601:	.ascii	"-Wno-warn-absolute-paths -s ASYNCIFY=1 -s RETAIN_COMPILER_SETTINGS=1 \0"
.balign 4
Lt_0602:	.ascii	"-Wno-main \0"
.balign 4
Lt_0603:	.ascii	"-Werror-implicit-function-declaration \0"
.balign 4
Lt_0606:	.ascii	"-O\0"
.balign 4
Lt_0607:	.ascii	"-fno-strict-aliasing \0"
.balign 4
Lt_060A:	.ascii	"-frounding-math \0"
.balign 4
Lt_060B:	.ascii	"-fno-math-errno \0"
.balign 4
Lt_060C:	.ascii	"-fwrapv \0"
.balign 4
Lt_060D:	.ascii	"-fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables \0"
.balign 4
Lt_060E:	.ascii	"-Wno-format \0"
.balign 4
Lt_0611:	.ascii	"-g \0"
.balign 4
Lt_0614:	.ascii	"-mfpmath=sse -msse2 \0"
.balign 4
Lt_061C:	.ascii	"-masm=intel \0"
.balign 4
Lt_0623:	.ascii	"-march=x86 \0"
.balign 4
Lt_0626:	.ascii	"-march=x86-64 \0"
.balign 4
Lt_0629:	.ascii	"-march=arm \0"
.balign 4
Lt_062C:	.ascii	"-march=armv8-a \0"
.balign 4
Lt_062F:	.ascii	"-march=powerpc \0"
.balign 4
Lt_0632:	.ascii	"-march=powerpc64 \0"
.balign 4
Lt_0635:	.ascii	"-relocation-model=pic \0"
.balign 4
Lt_063D:	.ascii	"--x86-asm-syntax=intel \0"
.balign 4
Lt_063E:	.ascii	"\" \0"
.balign 4
Lt_063F:	.ascii	"-o \"\0"
.balign 4
Lt_0646:	.ascii	"compiling C\0"
.balign 4
Lt_0649:	.ascii	"compiling LLVM IR\0"
.balign 4
Lt_0658:	.ascii	"-arch i386 \0"
.balign 4
Lt_0659:	.ascii	"--32 \0"
.balign 4
Lt_065E:	.ascii	"-arch x86_64 \0"
.balign 4
Lt_065F:	.ascii	"--64 \0"
.balign 4
Lt_0666:	.ascii	"--strip-local-absolute \0"
.balign 4
Lt_066E:	.ascii	"assembling\0"
.balign 4
Lt_067B:	.ascii	"--output-format=coff --include-dir=.\0"
.balign 4
Lt_0682:	.ascii	"compiling rc\0"
.balign 4
Lt_0697:	.ascii	"creating: \0"
.balign 4
Lt_06A4:	.ascii	"-rsc \"\0"
.balign 4
Lt_06AD:	.ascii	"\"__fb_ct.inf\" \0"
.balign 4
Lt_06B4:	.ascii	"archiving\0"
.balign 4
Lt_06BB:	.ascii	"libgcc.a\0"
.balign 4
Lt_06C0:	.ascii	"libm.a\0"
.balign 4
Lt_06C3:	.ascii	"libmingw32.a\0"
.balign 4
Lt_06D3:	.ascii	"fbgfx\0"
.balign 4
Lt_06DA:	.ascii	"gdi32\0"
.balign 4
Lt_06DB:	.ascii	"winmm\0"
.balign 4
Lt_06DD:	.ascii	"/usr/X11R6/lib\0"
.balign 4
Lt_06DF:	.ascii	"X11\0"
.balign 4
Lt_06E0:	.ascii	"Xext\0"
.balign 4
Lt_06E1:	.ascii	"Xpm\0"
.balign 4
Lt_06E2:	.ascii	"Xrandr\0"
.balign 4
Lt_06E3:	.ascii	"Xrender\0"
.balign 4
Lt_06E9:	.ascii	"kernel32\0"
.balign 4
Lt_06EA:	.ascii	"user32\0"
.balign 4
Lt_06ED:	.ascii	"gmon\0"
.balign 4
Lt_06EF:	.ascii	"System\0"
.balign 4
Lt_06F0:	.ascii	"pthread\0"
.balign 4
Lt_06F1:	.ascii	"ncurses\0"
.balign 4
Lt_06F5:	.ascii	"socket\0"
.balign 4
Lt_06F9:	.ascii	"libtinfo.a\0"
.balign 4
Lt_06FA:	.ascii	"libtinfo.so\0"
.balign 4
Lt_06FD:	.ascii	"tinfo\0"
.balign 4
Lt_06FE:	.ascii	"dl\0"
.balign 4
Lt_06FF:	.ascii	"libgcc_eh.a\0"
.balign 4
Lt_0700:	.ascii	"libgcc_eh.so\0"
.balign 4
Lt_0703:	.ascii	"gcc_eh\0"
.balign 4
Lt_0707:	.ascii	"msvcrt\0"
.balign 4
Lt_0708:	.ascii	"mingw32\0"
.balign 4
Lt_0709:	.ascii	"mingwex\0"
.balign 4
Lt_070A:	.ascii	"moldname\0"
.balign 4
Lt_070B:	.ascii	"libgcc_eh.dll.a\0"
.balign 4
Lt_0711:	.ascii	"openxdk\0"
.balign 4
Lt_0712:	.ascii	"hal\0"
.balign 4
Lt_0713:	.ascii	"usb\0"
.balign 4
Lt_0714:	.ascii	"xboxkrnl\0"
.balign 4
Lt_071A:	.ascii	"usage: fbc [options] <input files>\0"
.balign 4
Lt_071B:	.ascii	"input files:\0"
.balign 4
Lt_071C:	.ascii	"  *.a = static library, *.o = object file, *.bas = source\0"
.balign 4
Lt_071D:	.ascii	"  *.rc = resource script, *.res = compiled resource (win32)\0"
.balign 4
Lt_071E:	.ascii	"  *.xpm = icon resource (*nix/*bsd)\0"
.balign 4
Lt_071F:	.ascii	"options:\0"
.balign 4
Lt_0720:	.ascii	"  @<file>          Read more command line arguments from a file\0"
.balign 4
Lt_0721:	.ascii	"  -a <file>        Treat file as .o/.a input file\0"
.balign 4
Lt_0722:	.ascii	"  -arch <type>     Set target architecture (default: 486)\0"
.balign 4
Lt_0723:	.ascii	"  -asm att|intel   Set asm format (-gen gcc|llvm, x86 or x86_64 only)\0"
.balign 4
Lt_0724:	.ascii	"  -b <file>        Treat file as .bas input file\0"
.balign 4
Lt_0725:	.ascii	"  -c               Compile only, do not link\0"
.balign 4
Lt_0726:	.ascii	"  -C               Preserve temporary .o files\0"
.balign 4
Lt_0727:	.ascii	"  -d <name>[=<val>]  Add a global #define\0"
.balign 4
Lt_0728:	.ascii	"  -dll             Same as -dylib\0"
.balign 4
Lt_0729:	.ascii	"  -dylib           Create a DLL (win32) or shared library (*nix/*BSD)\0"
.balign 4
Lt_072A:	.ascii	"  -e               Enable runtime error checking\0"
.balign 4
Lt_072D:	.ascii	"  -earray          Enable array bounds checking\0"
.balign 4
Lt_072E:	.ascii	"  -eassert         Enable assert() and assertwarn() checking\0"
.balign 4
Lt_072F:	.ascii	"  -edebug          Enable __FB_DEBUG__\0"
.balign 4
Lt_0730:	.ascii	"  -edebuginfo      Add debug info\0"
.balign 4
Lt_0731:	.ascii	"  -elocation       Enable error location reporting\0"
.balign 4
Lt_0732:	.ascii	"  -enullptr        Enable null-pointer checking\0"
.balign 4
Lt_0733:	.ascii	"  -ex              -e plus RESUME support\0"
.balign 4
Lt_0734:	.ascii	"  -exx             -ex plus array bounds/null-pointer checking\0"
.balign 4
Lt_0735:	.ascii	"  -export          Export symbols for dynamic linkage\0"
.balign 4
Lt_0736:	.ascii	"  -forcelang <name>  Override #lang statements in source code\0"
.balign 4
Lt_0737:	.ascii	"  -fpmode fast|precise  Select floating-point math accuracy/speed\0"
.balign 4
Lt_0738:	.ascii	"  -fpu x87|sse     Set target FPU\0"
.balign 4
Lt_0739:	.ascii	"  -g               Add debug info, enable __FB_DEBUG__, and enable assert()\0"
.balign 4
Lt_073C:	.ascii	"  -gen gas         Select GNU gas assembler backend\0"
.balign 4
Lt_073D:	.ascii	"  -gen gcc         Select GNU gcc C backend\0"
.balign 4
Lt_073E:	.ascii	"  -gen llvm        Select LLVM backend\0"
.balign 4
Lt_073F:	.ascii	"  -gen gas|gcc|llvm  Select code generation backend\0"
.balign 4
Lt_0740:	.ascii	"  [-]-help         Show this help output\0"
.balign 4
Lt_0741:	.ascii	"  -i <path>        Add an include file search path\0"
.balign 4
Lt_0742:	.ascii	"  -include <file>  Pre-#include a file for each input .bas\0"
.balign 4
Lt_0743:	.ascii	"  -l <name>        Link in a library\0"
.balign 4
Lt_0744:	.ascii	"  -lang <name>     Select FB dialect: fb, deprecated, fblite, qb\0"
.balign 4
Lt_0745:	.ascii	"  -lib             Create a static library\0"
.balign 4
Lt_0746:	.ascii	"  -m <name>        Specify main module (default if not -c: first input .bas)\0"
.balign 4
Lt_0747:	.ascii	"  -map <file>      Save linking map to file\0"
.balign 4
Lt_0748:	.ascii	"  -maxerr <n>      Only show <n> errors\0"
.balign 4
Lt_0749:	.ascii	"  -mt              Use thread-safe FB runtime\0"
.balign 4
Lt_074A:	.ascii	"  -nodeflibs       Do not include the default libraries\0"
.balign 4
Lt_074B:	.ascii	"  -noerrline       Do not show source context in error messages\0"
.balign 4
Lt_074C:	.ascii	"  -noobjinfo       Do not read/write compile-time info from/to .o and .a files\0"
.balign 4
Lt_074D:	.ascii	"  -nostrip         Do not strip symbol information from the output file\0"
.balign 4
Lt_074E:	.ascii	"  -o <file>        Set .o (or -pp .bas) file name for prev/next input file\0"
.balign 4
Lt_074F:	.ascii	"  -O <value>       Optimization level (default: 0)\0"
.balign 4
Lt_0750:	.ascii	"  -p <path>        Add a library search path\0"
.balign 4
Lt_0751:	.ascii	"  -pic             Generate position-independent code (non-x86 Unix shared libs)\0"
.balign 4
Lt_0752:	.ascii	"  -pp              Write out preprocessed input file (.pp.bas) only\0"
.balign 4
Lt_0753:	.ascii	"  -prefix <path>   Set the compiler prefix path\0"
.balign 4
Lt_0754:	.ascii	"  -print host|target  Display host/target system name\0"
.balign 4
Lt_0755:	.ascii	"  -print fblibdir  Display the compiler's lib/ path\0"
.balign 4
Lt_0756:	.ascii	"  -print x         Display output binary/library file name (if known)\0"
.balign 4
Lt_0759:	.ascii	"  -print sha-1     Display compiler's source code commit sha-1 (if known)\0"
.balign 4
Lt_075A:	.ascii	"  -profile         Enable function profiling\0"
.balign 4
Lt_075B:	.ascii	"  -r               Write out .asm/.c/.ll (-gen gas/gcc/llvm) only\0"
.balign 4
Lt_075C:	.ascii	"  -rr              Write out the final .asm only\0"
.balign 4
Lt_075D:	.ascii	"  -R               Preserve temporary .asm/.c/.ll/.def files\0"
.balign 4
Lt_075E:	.ascii	"  -RR              Preserve the final .asm file\0"
.balign 4
Lt_075F:	.ascii	"  -s console|gui   Select win32 subsystem\0"
.balign 4
Lt_0760:	.ascii	"  -showincludes    Display a tree of file names of #included files\0"
.balign 4
Lt_0761:	.ascii	"  -static          Prefer static libraries over dynamic ones when linking\0"
.balign 4
Lt_0762:	.ascii	"  -strip           Omit all symbol information from the output file\0"
.balign 4
Lt_0763:	.ascii	"  -t <value>       Set .exe stack size in kbytes, default: 1024 (win32/dos)\0"
.balign 4
Lt_0766:	.ascii	"  -target <name>   Set cross-compilation target\0"
.balign 4
Lt_0767:	.ascii	"  -title <name>    Set XBE display title (xbox)\0"
.balign 4
Lt_0768:	.ascii	"  -v               Be verbose\0"
.balign 4
Lt_0769:	.ascii	"  -vec <n>         Automatic vectorization level (default: 0)\0"
.balign 4
Lt_076A:	.ascii	"  [-]-version      Show compiler version\0"
.balign 4
Lt_076B:	.ascii	"  -w all|pedantic|<n>  Set min warning level: all, pedantic or a value\0"
.balign 4
Lt_076E:	.ascii	"  -w all           Enable all warnings\0"
.balign 4
Lt_076F:	.ascii	"  -w none          Disable all warnings\0"
.balign 4
Lt_0770:	.ascii	"  -w param         Enable parameter warnings\0"
.balign 4
Lt_0771:	.ascii	"  -w escape        Enable string escape sequence warnings\0"
.balign 4
Lt_0772:	.ascii	"  -w next          Enable next statement warnings\0"
.balign 4
Lt_0773:	.ascii	"  -w signedness    Enable type signedness warnings\0"
.balign 4
Lt_0774:	.ascii	"  -w constness     Enable const type warnings\0"
.balign 4
Lt_0775:	.ascii	"  -w suffix        Enable invalid suffix warnings\0"
.balign 4
Lt_0776:	.ascii	"  -Wa <a,b,c>      Pass options to 'as'\0"
.balign 4
Lt_0777:	.ascii	"  -Wc <a,b,c>      Pass options to 'gcc' (-gen gcc) or 'llc' (-gen llvm)\0"
.balign 4
Lt_0778:	.ascii	"  -Wl <a,b,c>      Pass options to 'ld'\0"
.balign 4
Lt_0779:	.ascii	"  -x <file>        Set output executable/library file name\0"
.balign 4
Lt_077C:	.ascii	"  -z gosub-setjmp  Use setjmp/longjmp to implement GOSUB\0"
.balign 4
Lt_077D:	.ascii	"  -z valist-as-ptr Use pointer expressions to implement CVA_*() macros\0"
.balign 4
Lt_078B:	.ascii	"FreeBASIC Compiler - Version 1.08.0 (2021-02-17), built for \0"
.balign 4
Lt_078C:	.ascii	"bit)\0"
.balign 4
Lt_0791:	.ascii	"Copyright (C) 2004-2021 The FreeBASIC development team.\0"
.balign 4
Lt_0798:	.ascii	"source sha-1: \0"

.section .ctors, "aw", @progbits
.int _GLOBAL__I

.section .dtors, "aw", @progbits
.int _GLOBAL__D
