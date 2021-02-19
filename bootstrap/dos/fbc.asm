	.intel_syntax noprefix

.section .text
.balign 16

.globl _main
_main:
push ebp
mov ebp, esp
and esp, 0xFFFFFFF0
sub esp, 32
push ebx
mov dword ptr [ebp-4], 0
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_Init
add esp, 12
call _fb_InitSignals
call _fb_CpuDetect
shr eax, 28
cmp eax, 4
jae .Lt_0004
push 1
push 44
push offset _Lt_0005
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
call _fb_End
add esp, 4
.Lt_0004:
.Lt_0002:
call _FBCINIT
cmp dword ptr [ebp+8], 1
jne .Lt_07C4
push 0
call _HPRINTOPTIONS
add esp, 4
push 1
call _FBCEND
add esp, 4
.Lt_07C4:
.Lt_07C3:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPARSEARGS
add esp, 8
cmp dword ptr [_FBC+60], 0
je .Lt_07C6
push dword ptr [_FBC+56]
call _HPRINTVERSION
add esp, 4
push 0
call _FBCEND
add esp, 4
.Lt_07C6:
.Lt_07C5:
cmp dword ptr [_FBC+56], 0
je .Lt_07C8
push 0
call _HPRINTVERSION
add esp, 4
.Lt_07C8:
.Lt_07C7:
cmp dword ptr [_FBC+64], 0
je .Lt_07CA
push dword ptr [_FBC+56]
call _HPRINTOPTIONS
add esp, 4
push 1
call _FBCEND
add esp, 4
.Lt_07CA:
.Lt_07C9:
call _FBCDETERMINEPREFIX
call _FBCSETUPCOMPILERPATHS
cmp dword ptr [_FBC+56], 0
je .Lt_07CC
call _FBCPRINTTARGETINFO
.Lt_07CC:
.Lt_07CB:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 261
lea eax, [_FBC+2654]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _FBADDINCLUDEPATH
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD
add esp, 4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
lea eax, [_FBC+188]
push eax
call _LISTGETHEAD
add esp, 4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
lea ecx, [_FBC+252]
push ecx
call _LISTGETHEAD
add esp, 4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
lea ecx, [_FBC+220]
push ecx
call _LISTGETHEAD
add esp, 4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-20], ebx
cmp dword ptr [_FBC+68], 0
jl .Lt_07CF
mov ebx, dword ptr [_FBC+68]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
jne .Lt_07D2
.Lt_07D3:
push 1
call _FBGETHOSTID
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_07D0
.Lt_07D2:
cmp dword ptr [ebp-24], 1
jne .Lt_07D4
.Lt_07D5:
push 1
call _FBGETTARGETID
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_07D0
.Lt_07D4:
cmp dword ptr [ebp-24], 2
jne .Lt_07D6
.Lt_07D7:
cmp dword ptr [ebp-20], 0
je .Lt_07D9
call _FBCDETERMINEMAINNAME
.Lt_07D9:
.Lt_07D8:
call _HSETOUTNAME
push 1
lea eax, [_FBC+428]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_07D0
.Lt_07D6:
cmp dword ptr [ebp-24], 3
jne .Lt_07DA
.Lt_07DB:
push 1
lea eax, [_FBC+2915]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_07D0
.Lt_07DA:
cmp dword ptr [ebp-24], 4
jne .Lt_07DC
.Lt_07DD:
push 1
push 0
push offset _Lt_0000
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_07DC:
.Lt_07D0:
push 0
call _FBCEND
add esp, 4
.Lt_07CF:
.Lt_07CE:
call _FBCDETERMINEMAINNAME
cmp dword ptr [ebp-20], 0
jne .Lt_07DF
push dword ptr [_FBC+56]
call _HPRINTOPTIONS
add esp, 4
push 1
call _FBCEND
add esp, 4
.Lt_07DF:
.Lt_07DE:
call _HCOMPILEMODULES
call _HCOMPILEXPM
test eax, eax
jne .Lt_07E1
push 1
call _FBCEND
add esp, 4
.Lt_07E1:
.Lt_07E0:
cmp dword ptr [_FBC+36], 0
je .Lt_07E3
push 0
call _FBCEND
add esp, 4
.Lt_07E3:
.Lt_07E2:
push 2
call _FBGETOPTION
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call _FBGETOPTION
add esp, 4
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_07E5
call _HCOMPILESTAGE2MODULES
.Lt_07E5:
.Lt_07E4:
cmp dword ptr [_FBC+44], 0
je .Lt_07E7
push 0
call _FBCEND
add esp, 4
.Lt_07E7:
.Lt_07E6:
call _HASSEMBLEMODULES
call _HASSEMBLERCS
call _HASSEMBLEXPM
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 3
jne .Lt_07E9
push 0
call _FBCEND
add esp, 4
.Lt_07E9:
.Lt_07E8:
call _HSETDEFAULTLIBPATHS
push 34
call _FBGETOPTION
add esp, 4
mov ebx, eax
call _FBISCROSSCOMP
not eax
and ebx, eax
je .Lt_07EB
call _HCOLLECTOBJINFO
.Lt_07EB:
.Lt_07EA:
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 1
jne .Lt_07ED
call _HARCHIVEFILES
test eax, eax
jne .Lt_07EF
push 1
call _FBCEND
add esp, 4
.Lt_07EF:
.Lt_07EE:
push 0
call _FBCEND
add esp, 4
.Lt_07ED:
.Lt_07EC:
cmp dword ptr [_FBC+2120], 0
jne .Lt_07F1
call _HADDDEFAULTLIBS
.Lt_07F1:
.Lt_07F0:
call _HLINKFILES
test eax, eax
jne .Lt_07F3
push 1
call _FBCEND
add esp, 4
.Lt_07F3:
.Lt_07F2:
push 0
call _FBCEND
add esp, 4
.Lt_0003:
push 0
call _fb_End
add esp, 4
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN11TSTRSETITEMaSERKS_:
push ebp
mov ebp, esp
push ebx
.Lt_0014:
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
.Lt_0015:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN9FBCIOFILEC1Ev:
push ebp
mov ebp, esp
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
.Lt_0024:
.Lt_0025:
mov esp, ebp
pop ebp
ret
.balign 16
__ZN9FBCIOFILEaSERKS_:
push ebp
mov ebp, esp
push ebx
.Lt_0026:
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
mov ecx, dword ptr [ebp+12]
add ecx, 16
mov ebx, dword ptr [ebp+8]
add ebx, 16
mov eax, dword ptr [ecx]
mov dword ptr [ebx], eax
.Lt_0027:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN9FBCIOFILED1Ev:
push ebp
mov ebp, esp
push ebx
.Lt_002A:
.Lt_002B:
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN6FBCCTXC1Ev:
push ebp
mov ebp, esp
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
mov eax, dword ptr [ebp+8]
add eax, 136
lea ebx, [eax]
push ebx
call __ZN9FBCIOFILEC1Ev
add esp, 4
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
.Lt_002C:
.Lt_002D:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN6FBCCTXaSERKS_:
push ebp
mov ebp, esp
push ebx
.Lt_002E:
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
call _fb_StrAssign
add esp, 20
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
mov ecx, dword ptr [ebp+12]
add ecx, 136
lea ebx, [ecx]
push ebx
mov ebx, dword ptr [ebp+8]
add ebx, 136
lea ecx, [ebx]
push ecx
call __ZN9FBCIOFILEaSERKS_
add esp, 8
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
add eax, 952
mov ebx, dword ptr [ebp+8]
add ebx, 952
mov ecx, dword ptr [eax]
mov dword ptr [ebx], ecx
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
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
call _fb_StrAssign
add esp, 20
mov ecx, dword ptr [ebp+8]
add ecx, 3176
mov ebx, dword ptr [ebp+12]
add ebx, 3176
mov eax, dword ptr [ebx]
mov dword ptr [ecx], eax
mov eax, dword ptr [ebx+4]
mov dword ptr [ecx+4], eax
.Lt_002F:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
__ZN6FBCCTXD1Ev:
push ebp
mov ebp, esp
push ebx
.Lt_0032:
.Lt_0033:
mov eax, dword ptr [ebp+8]
add eax, 136
lea ebx, [eax]
push ebx
call __ZN9FBCIOFILED1Ev
add esp, 4
mov ebx, dword ptr [ebp+8]
add ebx, 8
lea eax, [ebx]
push eax
call _fb_StrDelete
add esp, 4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_FBCINIT:
.Lt_0042:
mov dword ptr [_FBC+20], -1
mov dword ptr [_FBC+24], -1
mov dword ptr [_FBC+32], -1
push -1
push 20
push 64
lea eax, [_FBC+72]
push eax
call _LISTINIT
add esp, 16
push -1
push 20
push 16
lea eax, [_FBC+104]
push eax
call _LISTINIT
add esp, 16
push 16
lea eax, [_FBC+156]
push eax
call _STRLISTINIT
add esp, 8
push 64
lea eax, [_FBC+188]
push eax
call _STRLISTINIT
add esp, 8
push 16
lea eax, [_FBC+220]
push eax
call _STRLISTINIT
add esp, 8
push 16
lea eax, [_FBC+252]
push eax
call _STRSETINIT
add esp, 8
push 16
lea eax, [_FBC+296]
push eax
call _STRSETINIT
add esp, 8
push 32
lea eax, [_FBC+340]
push eax
call _STRSETINIT
add esp, 8
push 32
lea eax, [_FBC+384]
push eax
call _STRSETINIT
add esp, 8
call _FBGLOBALINIT
push 10
call _FBGETOPTION
add esp, 4
mov dword ptr [_FBC+3176], eax
mov dword ptr [_FBC+68], -1
.Lt_0043:
ret
.balign 16
_HSETOUTNAME:
push ebp
mov ebp, esp
sub esp, 44
.Lt_0044:
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_0047
jmp .Lt_0045
.Lt_0047:
.Lt_0046:
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 1
jne .Lt_0049
push 0
push -1
push 3
push offset _Lt_004B
push -1
push -1
lea eax, [_FBC+689]
push eax
call _HSTRIPPATH
add esp, 4
push eax
push -1
push 4
push offset _Lt_004A
push -1
lea eax, [_FBC+689]
push eax
call _HSTRIPFILENAME
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0045
.Lt_0049:
.Lt_0048:
push 0
push 261
lea eax, [_FBC+689]
push eax
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign
add esp, 20
push 0
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0051
.Lt_0052:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 3
je .Lt_0056
.Lt_0057:
cmp dword ptr [ebp-8], 1
je .Lt_0056
.Lt_0058:
cmp dword ptr [ebp-8], 0
je .Lt_0056
.Lt_0059:
cmp dword ptr [ebp-8], 4
jne .Lt_0055
.Lt_0056:
push 0
push -1
push 5
push offset _Lt_001B
push 261
lea eax, [_FBC+428]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0053
.Lt_0055:
cmp dword ptr [ebp-8], 11
jne .Lt_005B
.Lt_005C:
push 0
push -1
push 6
push offset _Lt_005D
push 261
lea eax, [_FBC+428]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign
add esp, 20
.Lt_005B:
.Lt_0053:
jmp .Lt_004F
.Lt_0051:
cmp dword ptr [ebp-4], 2
jne .Lt_005F
.Lt_0060:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 1
je .Lt_0064
.Lt_0065:
cmp dword ptr [ebp-8], 0
jne .Lt_0063
.Lt_0064:
push 0
push -1
push 5
push offset _Lt_0066
push 261
lea eax, [_FBC+428]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign
add esp, 20
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
push 0
push -1
push 4
push offset _Lt_0070
push -1
push -1
lea eax, [_FBC+428]
push eax
call _HSTRIPPATH
add esp, 4
push eax
push -1
push 4
push offset _Lt_004A
push -1
lea eax, [_FBC+428]
push eax
call _HSTRIPFILENAME
add esp, 4
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0061
.Lt_0068:
cmp dword ptr [ebp-8], 3
jne .Lt_0074
.Lt_0075:
push 0
push -1
push 5
push offset _Lt_0076
push 261
lea eax, [_FBC+428]
push eax
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
lea eax, [ebp-20]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0074:
.Lt_0061:
.Lt_005F:
.Lt_004F:
.Lt_0045:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCEND:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0078:
lea eax, [_FBC+156]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_007A:
cmp dword ptr [ebp-4], 0
je .Lt_007B
push dword ptr [ebp-4]
call _fb_FileKill
add esp, 4
test eax, eax
je .Lt_007D
.Lt_007D:
.Lt_007C:
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_007A
.Lt_007B:
push dword ptr [ebp+8]
call _fb_End
add esp, 4
.Lt_0079:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCADDTEMP:
push ebp
mov ebp, esp
.Lt_007E:
push dword ptr [ebp+8]
lea eax, [_FBC+156]
push eax
call _STRLISTAPPEND
add esp, 8
.Lt_007F:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCADDOBJ:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0080:
lea eax, [_FBC+188]
push eax
call _LISTNEWNODE
add esp, 4
mov dword ptr [ebp-8], eax
push 0
push -1
push dword ptr [ebp+8]
push -1
push dword ptr [ebp-8]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0081:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HGET1STOUTPUTLINEFROMCOMMAND:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0082:
call _fb_FileFree
mov dword ptr [ebp-16], eax
push 0
push 0
push dword ptr [ebp-16]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpenPipe
add esp, 28
test eax, eax
je .Lt_0085
jmp .Lt_0083
.Lt_0085:
.Lt_0084:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp-16]
call _fb_FileInput
add esp, 4
push 0
push -1
lea eax, [ebp-28]
push eax
call _fb_InputString
add esp, 12
push dword ptr [ebp-16]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_0086
push 0
push 0
push offset _Lt_0087
push 260
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0086:
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0083
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0083:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_FBCBUILDPATHTOLIBFILE:
push ebp
mov ebp, esp
sub esp, 92
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0088:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
push -1
push 2
push offset _Lt_001C
push 261
lea eax, [_FBC+2915]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _HFILEEXISTS
add esp, 4
test eax, eax
je .Lt_008D
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0089
.Lt_008D:
.Lt_008C:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-64]
push eax
lea eax, [ebp-60]
push eax
push 3
call _FBCFINDBIN
add esp, 12
call _FBGETCPUFAMILY
mov dword ptr [ebp-92], eax
cmp dword ptr [ebp-92], 0
jne .Lt_0091
.Lt_0092:
push 0
push 6
push offset _Lt_0093
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_008F
.Lt_0091:
cmp dword ptr [ebp-92], 1
jne .Lt_0094
.Lt_0095:
push 0
push 6
push offset _Lt_0096
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_008F
.Lt_0094:
cmp dword ptr [ebp-92], 4
jne .Lt_0097
.Lt_0098:
push 0
push 6
push offset _Lt_0093
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_008F
.Lt_0097:
cmp dword ptr [ebp-92], 5
jne .Lt_0099
.Lt_009A:
push 0
push 6
push offset _Lt_0096
push -1
lea eax, [ebp-60]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0099:
.Lt_008F:
push 0
push -1
push -1
push 0
push dword ptr [ebp+8]
push 19
push offset _Lt_009B
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-60]
push eax
call _HGET1STOUTPUTLINEFROMCOMMAND
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_009F
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0089
.Lt_009F:
.Lt_009E:
push -1
push dword ptr [ebp-24]
call _HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00A1
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0089
.Lt_00A1:
.Lt_00A0:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0089:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_FBCFINDLIBFILE:
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
push 0
push -1
push dword ptr [ebp+8]
call _FBCBUILDPATHTOLIBFILE
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_00A5
push dword ptr [ebp-24]
call _HFILEEXISTS
add esp, 4
test eax, eax
jne .Lt_00A7
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
.Lt_00A7:
.Lt_00A6:
.Lt_00A5:
.Lt_00A4:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_00A3:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_FBCADDDEFLIBPATH:
push ebp
mov ebp, esp
.Lt_00A8:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+384]
push eax
call _STRSETADD
add esp, 12
.Lt_00A9:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCADDLIBPATHFOR:
push ebp
mov ebp, esp
sub esp, 24
.Lt_00AA:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push dword ptr [ebp+8]
call _FBCBUILDPATHTOLIBFILE
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _HSTRIPFILENAME
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_00AE
lea eax, [ebp-12]
push eax
call _FBCADDDEFLIBPATH
add esp, 4
.Lt_00AE:
.Lt_00AD:
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_00AB:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCFINDBIN:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.Lt_00AF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [_Lt_0800], eax
jne .Lt_00B2
push 0
push -1
push offset _Lt_0801
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [_Lt_0802]
mov dword ptr [eax], ebx
jmp .Lt_00B0
.Lt_00B2:
.Lt_00B1:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], 0
push 0
push -1
push 0
mov ebx, dword ptr [ebp+8]
sal ebx, 4
lea eax, [_TOOLNAMES+ebx]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_GetEnviron
add esp, 4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
push -1
push dword ptr [ebp+12]
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_00B4
push 0
push -1
push 5
push offset _Lt_001B
push -1
push 16
mov eax, dword ptr [ebp+8]
sal eax, 4
lea ebx, [_TOOLNAMES+eax]
push ebx
push 261
lea ebx, [_FBC+2393]
push ebx
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea ebx, [ebp-12]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HFILEEXISTS
add esp, 4
test eax, eax
jne .Lt_00B8
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .Lt_00BA
push 0
push -1
push 5
push offset _Lt_001B
push -1
push 16
mov eax, dword ptr [ebp+8]
sal eax, 4
lea ebx, [_TOOLNAMES+eax]
push ebx
push 129
lea ebx, [_FBC+1859]
push ebx
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea ebx, [ebp-36]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
jmp .Lt_00B9
.Lt_00BA:
push 0
push 16
mov eax, dword ptr [ebp+8]
sal eax, 4
lea ebx, [_TOOLNAMES+eax]
push ebx
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_00B9:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], -1
.Lt_00B8:
.Lt_00B7:
.Lt_00B4:
.Lt_00B3:
mov ebx, dword ptr [ebp+8]
mov dword ptr [_Lt_0800], ebx
push 0
push -1
push dword ptr [ebp+12]
push -1
push offset _Lt_0801
call _fb_StrAssign
add esp, 20
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [_Lt_0802], eax
.Lt_00B0:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0800:
.int -1

.section .bss
.balign 4
	.lcomm	_Lt_0802,4
.balign 4
	.lcomm	_Lt_0801,12

.section .text
.balign 16
_FBCRUNBIN:
push ebp
mov ebp, esp
sub esp, 72
mov dword ptr [ebp-4], 0
.Lt_00BD:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-12]
push eax
lea eax, [ebp-24]
push eax
push dword ptr [ebp+12]
call _FBCFINDBIN
add esp, 12
cmp dword ptr [_FBC+56], 0
je .Lt_00C0
push 2
push 3
push offset _Lt_00C1
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push -1
push dword ptr [ebp+16]
push -1
push 2
push offset _Lt_00C3
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_00C0:
.Lt_00BF:
cmp dword ptr [ebp-12], 0
jne .Lt_00C7
push dword ptr [ebp+16]
lea eax, [ebp-24]
push eax
call _fb_Exec
add esp, 8
mov dword ptr [ebp-8], eax
jmp .Lt_00C6
.Lt_00C7:
push -1
push dword ptr [ebp+16]
push -1
push 2
push offset _Lt_00C3
push -1
lea eax, [ebp-24]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_Shell
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_00C6:
cmp dword ptr [ebp-8], 0
jne .Lt_00CB
mov dword ptr [ebp-4], -1
jmp .Lt_00CA
.Lt_00CB:
cmp dword ptr [ebp-8], 0
jge .Lt_00CC
push 0
push 6
push -1
push dword ptr [ebp-24]
push 91
call _ERRREPORTEX
add esp, 20
jmp .Lt_00CA
.Lt_00CC:
cmp dword ptr [_FBC+56], 0
je .Lt_00CE
push 1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr
add esp, 4
push eax
push -1
push 29
push offset _Lt_00D0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 11
push offset _Lt_00CF
push 0
push dword ptr [ebp+8]
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_00CE:
.Lt_00CD:
.Lt_00CA:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_00BE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HPUTLDARGSINTOFILE:
push ebp
mov ebp, esp
sub esp, 72
mov dword ptr [ebp-4], 0
.Lt_00D5:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
lea eax, [_FBC+428]
push eax
call _HSTRIPFILENAME
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 10
push offset _Lt_00D7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
call _fb_FileFree
mov dword ptr [ebp-32], eax
push 0
push dword ptr [ebp-32]
push 0
push 0
push 3
lea eax, [ebp-16]
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_00D9
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_00D6
.Lt_00D9:
.Lt_00D8:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
push 1
lea eax, [ebp-28]
push eax
push dword ptr [ebp-36]
call _fb_PrintString
add esp, 12
push dword ptr [ebp-32]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_00DB
push 0
push 0
push offset _Lt_0087
push 475
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00DB:
cmp dword ptr [_FBC+40], 0
jne .Lt_00DD
lea eax, [ebp-16]
push eax
call _FBCADDTEMP
add esp, 4
.Lt_00DD:
.Lt_00DC:
cmp dword ptr [_FBC+56], 0
je .Lt_00DF
push 2
push 4
push offset _Lt_00E1
push -1
push -1
lea eax, [ebp-16]
push eax
push 16
push offset _Lt_00E0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push dword ptr [ebp+8]
push 0
call _fb_PrintString
add esp, 12
.Lt_00DF:
.Lt_00DE:
push 0
push -1
push -1
lea eax, [ebp-16]
push eax
push 2
push offset _Lt_00E4
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_00D6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_CLEARDEFLIST:
push ebp
mov ebp, esp
sub esp, 52
mov dword ptr [ebp-4], 0
.Lt_00E6:
call _fb_FileFree
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_00E9
mov dword ptr [ebp-4], 0
jmp .Lt_00E7
.Lt_00E9:
.Lt_00E8:
push 0
push -1
push 11
push offset _Lt_00EA
push -1
push dword ptr [ebp+8]
call _HSTRIPEXT
add esp, 4
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
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
call _fb_FileFree
mov dword ptr [ebp-36], eax
push 0
push dword ptr [ebp-36]
push 0
push 0
push 3
lea eax, [ebp-20]
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_00ED
push dword ptr [ebp-8]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_00EE
push 0
push 0
push offset _Lt_0087
push 500
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00EE:
mov dword ptr [ebp-4], 0
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_00E7
.Lt_00ED:
.Lt_00EC:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
.Lt_00EF:
push dword ptr [ebp-8]
call _fb_FileEof
add esp, 4
test eax, eax
jne .Lt_00F0
push 0
push -1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-8]
call _fb_FileLineInput
add esp, 16
push 5
push offset _Lt_00F1
push -1
push 4
lea eax, [ebp-48]
push eax
call _fb_RIGHT
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_00F3
push 0
push -1
push -1
lea eax, [ebp-48]
push eax
call _fb_StrLen
add esp, 8
add eax, -4
push eax
lea eax, [ebp-48]
push eax
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
.Lt_00F3:
.Lt_00F2:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-52], eax
push 1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-52]
call _fb_PrintString
add esp, 12
jmp .Lt_00EF
.Lt_00F0:
push dword ptr [ebp-36]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_00F5
push 0
push 0
push offset _Lt_0087
push 515
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00F5:
push dword ptr [ebp-8]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_00F6
push 0
push 0
push offset _Lt_0087
push 516
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00F6:
push dword ptr [ebp+8]
call _fb_FileKill
add esp, 4
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push dword ptr [ebp-20]
call _rename
add esp, 8
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_00E7
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.Lt_00E7:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HGENERATEEMPTYDEFFILE:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00F7:
call _fb_FileFree
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 3
push dword ptr [ebp+8]
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_00FA
jmp .Lt_00F8
.Lt_00FA:
.Lt_00F9:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
push 1
push 7
push offset _Lt_00FC
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp-12]
call _fb_PrintString
add esp, 12
push dword ptr [ebp-8]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_00FD
push 0
push 0
push offset _Lt_0087
push 530
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00FD:
mov dword ptr [ebp-4], -1
.Lt_00F8:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_MAKEIMPLIB:
push ebp
mov ebp, esp
sub esp, 112
mov dword ptr [ebp-4], 0
.Lt_00FE:
push dword ptr [ebp+12]
call _CLEARDEFLIST
add esp, 4
test eax, eax
jne .Lt_0101
jmp .Lt_00FF
.Lt_0101:
.Lt_0100:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _fb_FileLen
add esp, 4
cmp edx, 0
jne .Lt_0103
cmp eax, 0
jne .Lt_0103
.Lt_0804:
push dword ptr [ebp+12]
call _HGENERATEEMPTYDEFFILE
add esp, 4
test eax, eax
jne .Lt_0105
jmp .Lt_00FF
.Lt_0105:
.Lt_0104:
.Lt_0103:
.Lt_0102:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push -1
push 2
push offset _Lt_0107
push -1
push -1
push dword ptr [ebp+12]
push 8
push offset _Lt_0106
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 13
push offset _Lt_010B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [_FBC+428]
push eax
call _HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0107
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 8
push offset _Lt_010D
push -1
push -1
push dword ptr [ebp+8]
push -1
push 4
push offset _Lt_004A
push -1
push -1
lea eax, [_FBC+428]
push eax
call _HSTRIPFILENAME
add esp, 4
push eax
push 16
push offset _Lt_010C
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
push 5
push offset _Lt_0113
call _FBCRUNBIN
add esp, 12
test eax, eax
jne .Lt_0115
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_00FF
.Lt_0115:
.Lt_0114:
cmp dword ptr [_FBC+40], 0
jne .Lt_0117
push dword ptr [ebp+12]
call _FBCADDTEMP
add esp, 4
.Lt_0117:
.Lt_0116:
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_00FF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HFINDLIB:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0118:
push 0
push -1
push dword ptr [ebp+8]
call _FBCBUILDPATHTOLIBFILE
add esp, 4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit
add esp, 20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_011B
push 0
push 3
push offset _Lt_011C
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0107
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_011A
.Lt_011B:
push 0
push 1
push -1
push dword ptr [ebp+8]
push 23
call _ERRREPORTEX
add esp, 20
.Lt_011A:
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0119:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_FBCLINKERISGOLD:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_011D:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
push 2
call _FBCFINDBIN
add esp, 12
push 0
push 11
push offset _Lt_0120
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 8
push offset _Lt_0121
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-16]
push eax
call _HGET1STOUTPUTLINEFROMCOMMAND
add esp, 4
push eax
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_011E
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_011E:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_FBCISUSINGGOLDLINKER:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0122:
call _FBTARGETSUPPORTSELF
test eax, eax
je .Lt_0125
call _FBCLINKERISGOLD
mov dword ptr [ebp-4], eax
jmp .Lt_0123
.Lt_0125:
.Lt_0124:
mov dword ptr [ebp-4], 0
.Lt_0123:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HLINKFILES:
push ebp
mov ebp, esp
sub esp, 128
push ebx
mov dword ptr [ebp-4], 0
.Lt_0126:
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
call _HSETOUTNAME
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .Lt_012A
.Lt_012B:
call _FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .Lt_012E
.Lt_012F:
push 0
push 11
push offset _Lt_0130
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_012C
.Lt_012E:
cmp dword ptr [ebp-52], 1
jne .Lt_0131
.Lt_0132:
push 0
push 12
push offset _Lt_0133
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0131:
.Lt_012C:
jmp .Lt_0128
.Lt_012A:
cmp dword ptr [ebp-48], 2
jne .Lt_0134
.Lt_0135:
call _FBGETCPUFAMILY
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .Lt_0138
.Lt_0139:
push 0
push 13
push offset _Lt_013A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0136
.Lt_0138:
cmp dword ptr [ebp-52], 1
jne .Lt_013B
.Lt_013C:
push 0
push 15
push offset _Lt_013D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0136
.Lt_013B:
cmp dword ptr [ebp-52], 2
jne .Lt_013E
.Lt_013F:
push 0
push 22
push offset _Lt_0140
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_013E:
.Lt_0136:
.Lt_0134:
.Lt_0128:
push 0
push 5
push offset _Lt_0143
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [_FBC+428]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0142
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push 0
mov ebx, eax
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0145
push 0
push 6
push offset _Lt_0146
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 261
lea eax, [_FBC+428]
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 7
push offset _Lt_0148
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 4
push offset _Lt_0149
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [_FBC+188]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-60], eax
.Lt_014A:
cmp dword ptr [ebp-60], 0
je .Lt_014B
push 0
push -1
push -1
push 2
push offset _Lt_0107
push -1
push -1
push dword ptr [ebp-60]
push 3
push offset _Lt_011C
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-60], eax
jmp .Lt_014A
.Lt_014B:
lea eax, [_FBC+220]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
je .Lt_0150
push 0
push 5
push offset _Lt_0151
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0150:
.Lt_014F:
.Lt_0152:
cmp dword ptr [ebp-60], 0
je .Lt_0153
push 0
push -1
push -1
push 2
push offset _Lt_0107
push -1
push -1
push dword ptr [ebp-60]
push 3
push offset _Lt_011C
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-60]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-60], eax
jmp .Lt_0152
.Lt_0153:
lea eax, [ebp-16]
push eax
call _HPUTLDARGSINTOFILE
add esp, 4
test eax, eax
jne .Lt_0158
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0127
.Lt_0158:
.Lt_0157:
lea eax, [ebp-16]
push eax
push 9
push offset _Lt_0159
call _FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0127
.Lt_0145:
.Lt_0144:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .Lt_015B
.Lt_015D:
push 129
lea eax, [_FBC+1217]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_015F
push 0
push 8
push offset _Lt_0160
push 129
lea eax, [_FBC+1217]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_015E
.Lt_015F:
push 4
push offset _Lt_0161
push 129
lea eax, [_FBC+1217]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0163
push 0
push 8
push offset _Lt_0164
push 129
lea eax, [_FBC+1217]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0163:
.Lt_0162:
.Lt_015E:
push 0
push 13
push offset _Lt_0165
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 129
lea eax, [_FBC+1217]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
jne .Lt_0167
push 0
push -1
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 261
lea eax, [_FBC+428]
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call _HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 30
push offset _Lt_016A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
call _FBGETCPUFAMILY
test eax, eax
jne .Lt_016C
push 0
push 26
push offset _Lt_016D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_016B
.Lt_016C:
push 0
push 22
push offset _Lt_016E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_016B:
.Lt_0167:
.Lt_0166:
jmp .Lt_015A
.Lt_016F:
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
jne .Lt_0171
push 0
push -1
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 0
push -1
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 0
push 261
lea eax, [_FBC+428]
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-60]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-72]
call _HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 12
push offset _Lt_0174
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [_FBC+428]
push eax
call _HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 4
push offset _Lt_004A
push -1
push 3
lea eax, [ebp-28]
push eax
call _fb_LEFT
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0176
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
call _fb_StrLen
add esp, 8
add eax, -3
push eax
lea eax, [ebp-28]
push eax
call _fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0176:
.Lt_0175:
jmp .Lt_0170
.Lt_0171:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
jmp .Lt_0178
.Lt_017A:
push 0
push 38
push offset _Lt_017B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0177
.Lt_017C:
push 0
push 38
push offset _Lt_017D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0177
.Lt_017E:
push 0
push 33
push offset _Lt_017F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0177
.Lt_0180:
call _FBGETCPUFAMILY
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .Lt_0183
.Lt_0184:
push 0
push 36
push offset _Lt_0185
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0181
.Lt_0183:
cmp dword ptr [ebp-56], 1
jne .Lt_0186
.Lt_0187:
push 0
push 45
push offset _Lt_0188
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0181
.Lt_0186:
cmp dword ptr [ebp-56], 2
jne .Lt_0189
.Lt_018A:
push 0
push 42
push offset _Lt_018B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0181
.Lt_0189:
cmp dword ptr [ebp-56], 3
jne .Lt_018C
.Lt_018D:
push 0
push 44
push offset _Lt_018E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_018C:
.Lt_0181:
jmp .Lt_0177
.Lt_018F:
push 0
push 40
push offset _Lt_0190
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0177
.Lt_0191:
push 0
push 36
push offset _Lt_0192
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0177
.Lt_0178:
mov eax, dword ptr [ebp-52]
add eax, 4294967294
cmp eax, 8
ja .Lt_0177
mov eax, dword ptr [ebp-52]
jmp dword ptr [_.LT_0193+eax*4-8]
_.LT_0193:
.int .Lt_0180
.int .Lt_0177
.int .Lt_0177
.int .Lt_017A
.int .Lt_017C
.int .Lt_017E
.int .Lt_0191
.int .Lt_0177
.int .Lt_018F
.Lt_0177:
.Lt_0170:
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
push 28
mov ebx, eax
call _FBGETOPTION
add esp, 4
or ebx, eax
je .Lt_0195
push 0
push 18
push offset _Lt_0196
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0195:
.Lt_0194:
jmp .Lt_015A
.Lt_0197:
push 0
push 66
push offset _Lt_0198
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_015A
.Lt_0199:
push 0
push 4
push offset _Lt_019A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 8
call _FBGETOPTION
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 26
push offset _Lt_01A0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-52], 0
.Lt_01A4:
push 0
push 5
push offset _Lt_01A5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 32
mov eax, dword ptr [ebp-52]
sal eax, 5
lea ebx, [_Lt_080A+eax]
push ebx
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign
add esp, 20
.Lt_01A2:
inc dword ptr [ebp-52]
.Lt_01A1:
cmp dword ptr [ebp-52], 3
jle .Lt_01A4
.Lt_01A3:
push 0
push 14
push offset _Lt_01A6
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_01A7
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 11
push offset _Lt_01A8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_01A9
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 129
lea eax, [_FBC+1217]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_01AB
push 0
push 11
push offset _Lt_01A8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push offset _Lt_01AC
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_01AB:
.Lt_01AA:
jmp .Lt_015A
.Lt_015B:
cmp dword ptr [ebp-48], 11
ja .Lt_015A
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.LT_01AD+eax*4]
_.LT_01AD:
.int .Lt_015D
.int .Lt_015D
.int .Lt_016F
.int .Lt_015A
.int .Lt_0197
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_016F
.int .Lt_0199
.Lt_015A:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 3
jne .Lt_01AF
push 0
push 6
push offset _Lt_01B0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [_FBC+2915]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 13
push offset _Lt_01B2
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_01AE
.Lt_01AF:
push 34
call _FBGETOPTION
add esp, 4
push 3
mov ebx, eax
call _FBGETOPTION
add esp, 4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
call _FBCISUSINGGOLDLINKER
not eax
and ebx, eax
je .Lt_01B4
push 0
push 3
push offset _Lt_011C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [_FBC+2915]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 12
push offset _Lt_01B6
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_01B4:
.Lt_01B3:
.Lt_01AE:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .Lt_01B8
.Lt_01BA:
push 33
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
push 0
push 10
push offset _Lt_01BB
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-52]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_01BC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push dword ptr [ebp-52]
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
jne .Lt_01BE
push 0
push -1
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
push 0
push 261
lea eax, [_FBC+428]
push eax
push -1
lea eax, [ebp-64]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 5
push offset _Lt_01C0
push -1
lea eax, [ebp-40]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [ebp-64]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 16
push offset _Lt_01C1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-40]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0107
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_01BE:
.Lt_01BD:
jmp .Lt_01B7
.Lt_01C2:
push 0
push 23
push offset _Lt_01C3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_01B7
.Lt_01B8:
cmp dword ptr [ebp-48], 4
ja .Lt_01B7
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.LT_01C4+eax*4]
_.LT_01C4:
.int .Lt_01BA
.int .Lt_01BA
.int .Lt_01B7
.int .Lt_01B7
.int .Lt_01C2
.Lt_01B7:
cmp dword ptr [_FBC+2124], 0
je .Lt_01C6
push 0
push 10
push offset _Lt_01C7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_01C6:
.Lt_01C5:
push 261
lea eax, [_FBC+956]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_01C9
push 0
push 7
push offset _Lt_01CA
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [_FBC+956]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_01C9:
.Lt_01C8:
push 13
call _FBGETOPTION
add esp, 4
test eax, eax
jne .Lt_01CC
push 21
call _FBGETOPTION
add esp, 4
test eax, eax
jne .Lt_01CE
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
push 3
mov ebx, eax
call _FBGETOPTION
add esp, 4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_01D0
push 0
push 4
push offset _Lt_01D1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_01D0:
.Lt_01CF:
.Lt_01CE:
.Lt_01CD:
.Lt_01CC:
.Lt_01CB:
lea eax, [_FBC+384]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .Lt_01D3
push 0
push 6
push offset _Lt_01D4
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_01D2
.Lt_01D3:
push 0
push 5
push offset _Lt_01D5
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign
add esp, 20
.Lt_01D2:
.Lt_01D6:
cmp dword ptr [ebp-48], 0
je .Lt_01D7
push 0
push -1
push -1
push 2
push offset _Lt_0107
push -1
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
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-48], eax
jmp .Lt_01D6
.Lt_01D7:
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .Lt_01DC
.Lt_01DE:
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
jne .Lt_01E0
push 0
push -1
push offset _Lt_01E1
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_01DF
.Lt_01E0:
push 0
push -1
push offset _Lt_01E1
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 21
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_01E3
push 0
push -1
push offset _Lt_01E4
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_01E3:
.Lt_01E2:
.Lt_01DF:
jmp .Lt_01DB
.Lt_01E5:
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
jne .Lt_01E7
push 0
push -1
push offset _Lt_01E8
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_01E6
.Lt_01E7:
push 0
push -1
push offset _Lt_01E9
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 21
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_01EB
push 0
push -1
push offset _Lt_01EC
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_01EB:
.Lt_01EA:
.Lt_01E6:
push 0
push -1
push offset _Lt_01ED
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_01DB
.Lt_01EE:
push 21
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_01F0
push 0
push -1
push offset _Lt_01E4
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_01EF
.Lt_01F0:
push 0
push -1
push offset _Lt_01E1
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_01EF:
jmp .Lt_01DB
.Lt_01F1:
push 0
call _FBGETOPTION
add esp, 4
test eax, eax
jne .Lt_01F3
push 21
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_01F5
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
jmp .Lt_01F7
.Lt_01F9:
push 0
push -1
push offset _Lt_01E4
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_01F6
.Lt_01FA:
push 0
push -1
push offset _Lt_01FB
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_01F6
.Lt_01F7:
mov eax, dword ptr [ebp-52]
add eax, 4294967288
cmp eax, 2
ja .Lt_01FA
mov eax, dword ptr [ebp-52]
jmp dword ptr [_.LT_01FC+eax*4-32]
_.LT_01FC:
.int .Lt_01F9
.int .Lt_01FA
.int .Lt_01F9
.Lt_01F6:
jmp .Lt_01F4
.Lt_01F5:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
jmp .Lt_01FE
.Lt_0200:
push 0
push -1
push offset _Lt_01E1
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_01FD
.Lt_0201:
push 0
push -1
push offset _Lt_0202
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_01FD
.Lt_01FE:
mov eax, dword ptr [ebp-52]
add eax, 4294967288
cmp eax, 2
ja .Lt_0201
mov eax, dword ptr [ebp-52]
jmp dword ptr [_.LT_0203+eax*4-32]
_.LT_0203:
.int .Lt_0200
.int .Lt_0201
.int .Lt_0200
.Lt_01FD:
.Lt_01F4:
.Lt_01F3:
.Lt_01F2:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
je .Lt_0205
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 8
je .Lt_0207
push 0
push -1
push offset _Lt_0208
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0207:
.Lt_0206:
push 32
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_020A
push 0
push -1
push offset _Lt_020B
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0209
.Lt_020A:
push 0
push -1
push offset _Lt_01ED
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0209:
.Lt_0205:
.Lt_0204:
jmp .Lt_01DB
.Lt_020C:
push 0
push -1
push offset _Lt_01E1
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_01DB
.Lt_01DC:
cmp dword ptr [ebp-48], 10
ja .Lt_01DB
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.LT_020D+eax*4]
_.LT_020D:
.int .Lt_01E5
.int .Lt_01DE
.int .Lt_01F1
.int .Lt_01EE
.int .Lt_020C
.int .Lt_01F1
.int .Lt_01F1
.int .Lt_01F1
.int .Lt_01F1
.int .Lt_01F1
.int .Lt_01F1
.Lt_01DB:
cmp dword ptr [_FBC+2120], 0
jne .Lt_020F
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .Lt_0211
push 0
push 3
push offset _Lt_011C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [_FBC+2915]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_001C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 32
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_0213
push 0
push 11
push offset _Lt_0214
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0212
.Lt_0213:
push 0
push 8
push offset _Lt_0215
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0212:
push 0
push 2
push offset _Lt_0107
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0211:
.Lt_0210:
.Lt_020F:
.Lt_020E:
lea eax, [_FBC+188]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-48], eax
.Lt_0216:
cmp dword ptr [ebp-48], 0
je .Lt_0217
push 0
push -1
push -1
push 2
push offset _Lt_0107
push -1
push -1
push dword ptr [ebp-48]
push 3
push offset _Lt_011C
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-48], eax
jmp .Lt_0216
.Lt_0217:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
je .Lt_021C
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .Lt_021E
push 0
push 6
push offset _Lt_021F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_021E:
.Lt_021D:
.Lt_021C:
.Lt_021B:
lea eax, [_FBC+220]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-48], eax
.Lt_0220:
cmp dword ptr [ebp-48], 0
je .Lt_0221
push 0
push -1
push -1
push 2
push offset _Lt_0107
push -1
push -1
push dword ptr [ebp-48]
push 3
push offset _Lt_011C
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-48], eax
jmp .Lt_0220
.Lt_0221:
lea eax, [_FBC+340]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-48], eax
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-52], eax
.Lt_0225:
cmp dword ptr [ebp-48], 0
je .Lt_0226
cmp dword ptr [ebp-52], 0
je .Lt_0227
push -1
lea eax, [ebp-28]
push eax
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
call _fb_StrCompare
add esp, 16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
jmp .Lt_0806
.Lt_0227:
mov dword ptr [ebp-56], -1
.Lt_0806:
cmp dword ptr [ebp-56], 0
je .Lt_022A
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
push 4
push offset _Lt_022B
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
.Lt_022A:
.Lt_0229:
push dword ptr [ebp-48]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-48], eax
jmp .Lt_0225
.Lt_0226:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
je .Lt_022F
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .Lt_0231
push 0
push 6
push offset _Lt_0232
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0230
.Lt_0231:
push 0
push 6
push offset _Lt_0233
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0230:
.Lt_022F:
.Lt_022E:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .Lt_0235
.Lt_0237:
push 32
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_0239
push 0
push -1
push offset _Lt_023A
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0238
.Lt_0239:
push 0
push -1
push offset _Lt_023B
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0238:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 8
je .Lt_023D
push 0
push -1
push offset _Lt_023E
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_023D:
.Lt_023C:
jmp .Lt_0234
.Lt_023F:
push 0
push -1
push offset _Lt_023B
call _HFINDLIB
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0234
.Lt_0235:
cmp dword ptr [ebp-48], 10
ja .Lt_0234
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.LT_0240+eax*4]
_.LT_0240:
.int .Lt_023F
.int .Lt_0234
.int .Lt_0237
.int .Lt_0234
.int .Lt_0234
.int .Lt_0237
.int .Lt_0237
.int .Lt_0237
.int .Lt_0237
.int .Lt_0234
.int .Lt_0237
.Lt_0234:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
jne .Lt_0242
push 0
push 26
push offset _Lt_0243
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0242:
.Lt_0241:
push 0
push 2
push offset _Lt_00C3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 128
lea eax, [_FBC+1474]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HPUTLDARGSINTOFILE
add esp, 4
test eax, eax
jne .Lt_0245
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0127
.Lt_0245:
.Lt_0244:
mov dword ptr [ebp-44], 2
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
jne .Lt_0247
mov dword ptr [ebp-44], 12
.Lt_0247:
.Lt_0246:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-44]
push offset _Lt_0248
call _FBCRUNBIN
add esp, 12
test eax, eax
jne .Lt_024A
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0127
.Lt_024A:
.Lt_0249:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-48], eax
jmp .Lt_024C
.Lt_024E:
call _fb_FileFree
mov dword ptr [ebp-52], eax
push 0
push dword ptr [ebp-52]
push 0
push 3
push 0
lea eax, [_FBC+428]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_0250
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0127
.Lt_0250:
.Lt_024F:
push 4
push 33
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-56], eax
lea eax, [ebp-56]
push eax
push 533
push dword ptr [ebp-52]
call _fb_FilePut
add esp, 16
test eax, eax
je .Lt_0252
push 0
push 0
push offset _Lt_0087
push 1083
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0252:
push dword ptr [ebp-52]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_0253
push 0
push 0
push offset _Lt_0087
push 1085
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0253:
jmp .Lt_024B
.Lt_0254:
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
jne .Lt_0256
lea eax, [ebp-40]
push eax
lea eax, [ebp-28]
push eax
call _MAKEIMPLIB
add esp, 8
test eax, eax
jne .Lt_0258
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0127
.Lt_0258:
.Lt_0257:
.Lt_0256:
.Lt_0255:
jmp .Lt_024B
.Lt_0259:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 129
lea eax, [_FBC+1988]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_025B
push 0
push -1
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 261
lea eax, [_FBC+428]
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push 129
lea eax, [_FBC+1988]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
.Lt_025B:
.Lt_025A:
push 0
push 9
push offset _Lt_025E
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 129
lea eax, [_FBC+1988]
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_025F
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 13
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_0261
push 0
push 12
push offset _Lt_0263
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
push 0
push 261
lea eax, [_FBC+428]
push eax
push -1
lea eax, [ebp-128]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 7
push offset _Lt_0266
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [ebp-128]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0261:
.Lt_0260:
push 0
push 8
push offset _Lt_0268
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
push 0
push 261
lea eax, [_FBC+428]
push eax
push -1
lea eax, [ebp-88]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_026A
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0142
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
lea eax, [ebp-88]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 3
push offset _Lt_026B
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 261
lea eax, [_FBC+428]
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0142
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
cmp dword ptr [_FBC+56], 0
jne .Lt_026D
push 0
push 6
push offset _Lt_026E
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_026D:
.Lt_026C:
cmp dword ptr [_FBC+56], 0
je .Lt_0270
push 2
push 6
push offset _Lt_0271
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
lea eax, [ebp-72]
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_0270:
.Lt_026F:
mov dword ptr [ebp-92], 0
lea eax, [ebp-92]
push eax
lea eax, [ebp-60]
push eax
push 8
call _FBCFINDBIN
add esp, 12
push -1
lea eax, [ebp-72]
push eax
push -1
push 2
push offset _Lt_00C3
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
lea eax, [ebp-104]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat
add esp, 20
push eax
call _fb_Shell
add esp, 4
mov dword ptr [ebp-76], eax
cmp dword ptr [ebp-76], 0
je .Lt_0276
cmp dword ptr [_FBC+56], 0
je .Lt_0278
push 1
push -1
push dword ptr [ebp-76]
call _fb_IntToStr
add esp, 4
push eax
push 24
push offset _Lt_0279
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_0278:
.Lt_0277:
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_0127
.Lt_0276:
.Lt_0275:
lea eax, [_FBC+428]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileKill
add esp, 4
lea eax, [ebp-72]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-60]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_024B
.Lt_024C:
cmp dword ptr [ebp-48], 4
ja .Lt_024B
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.LT_027B+eax*4]
_.LT_027B:
.int .Lt_0254
.int .Lt_0254
.int .Lt_024B
.int .Lt_024E
.int .Lt_0259
.Lt_024B:
mov dword ptr [ebp-4], -1
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0127:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_080A:
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
_HREADOBJINFO:
push ebp
mov ebp, esp
sub esp, 20
.Lt_027C:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_027E:
lea eax, [ebp-12]
push eax
call _OBJINFOREADNEXT
add esp, 4
mov dword ptr [ebp-20], eax
jmp .Lt_0282
.Lt_0284:
push 0
lea eax, [ebp-12]
push eax
lea eax, [_FBC+340]
push eax
call _STRSETADD
add esp, 12
jmp .Lt_0281
.Lt_0285:
push 0
lea eax, [ebp-12]
push eax
lea eax, [_FBC+384]
push eax
call _STRSETADD
add esp, 12
jmp .Lt_0281
.Lt_0286:
cmp dword ptr [_FBC+3180], 0
jne .Lt_0288
push 0
push 1
push -1
call _OBJINFOGETFILENAME
push eax
push 20
call _ERRREPORTWARNEX
add esp, 20
mov dword ptr [_FBC+3180], -1
push -1
push 30
call _FBSETOPTION
add esp, 8
.Lt_0288:
.Lt_0287:
jmp .Lt_0281
.Lt_0289:
push -1
push 31
call _FBSETOPTION
add esp, 8
jmp .Lt_0281
.Lt_028A:
push dword ptr [ebp-12]
call _FBGETLANGID
add esp, 4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], -1
jne .Lt_028C
mov dword ptr [ebp-16], 0
.Lt_028C:
.Lt_028B:
mov eax, dword ptr [_FBC+3176]
cmp dword ptr [ebp-16], eax
je .Lt_028E
push 0
push 1
push -1
call _OBJINFOGETFILENAME
push eax
push 21
call _ERRREPORTWARNEX
add esp, 20
mov eax, dword ptr [ebp-16]
mov dword ptr [_FBC+3176], eax
push dword ptr [ebp-16]
push 10
call _FBSETOPTION
add esp, 8
.Lt_028E:
.Lt_028D:
jmp .Lt_0281
.Lt_028F:
jmp .Lt_027F
jmp .Lt_0281
.Lt_0282:
cmp dword ptr [ebp-20], 4
ja .Lt_028F
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_0290+eax*4]
_.LT_0290:
.int .Lt_0284
.int .Lt_0285
.int .Lt_0286
.int .Lt_0289
.int .Lt_028A
.Lt_0281:
.Lt_0280:
jmp .Lt_027E
.Lt_027F:
call _OBJINFOREADEND
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_027D:
mov esp, ebp
pop ebp
ret
.balign 16
_HCOLLECTOBJINFO:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0291:
lea eax, [_FBC+188]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0293:
cmp dword ptr [ebp-4], 0
je .Lt_0294
push dword ptr [ebp-4]
call _OBJINFOREADOBJ
add esp, 4
call _HREADOBJINFO
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0293
.Lt_0294:
lea eax, [_FBC+340]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_0295:
cmp dword ptr [ebp-8], 0
je .Lt_0296
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .Lt_0298
lea eax, [_FBC+384]
push eax
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
call _OBJINFOREADLIB
add esp, 8
call _HREADOBJINFO
.Lt_0298:
.Lt_0297:
push dword ptr [ebp-8]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0295
.Lt_0296:
lea eax, [_FBC+220]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0299:
cmp dword ptr [ebp-4], 0
je .Lt_029A
push dword ptr [ebp-4]
call _OBJINFOREADLIBFILE
add esp, 4
call _HREADOBJINFO
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0299
.Lt_029A:
.Lt_0292:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFATALINVALIDOPTION:
push ebp
mov ebp, esp
sub esp, 36
.Lt_029B:
push 0
push 1
push -1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0142
push -1
push -1
push dword ptr [ebp+8]
push 2
push offset _Lt_0142
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
push 81
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
push 1
call _FBCEND
add esp, 4
.Lt_029C:
mov esp, ebp
pop ebp
ret
.balign 16
_HCHECKWAITINGOBJFILE:
push ebp
mov ebp, esp
sub esp, 24
.Lt_02A0:
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_02A3
push 0
push 1
push -1
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
lea eax, [_FBC+8]
push eax
push 4
push offset _Lt_0141
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
push 292
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign
add esp, 20
.Lt_02A3:
.Lt_02A2:
.Lt_02A1:
mov esp, ebp
pop ebp
ret
.balign 16
_HSETIOFILE:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_02A6:
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrAssign
add esp, 20
push -1
lea ebx, [_FBC+8]
push ebx
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_02A9
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
cmp dword ptr [ebp+16], 0
je .Lt_02AB
push 0
push -1
push 3
push offset _Lt_02AC
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_02AA
.Lt_02AB:
push 0
push -1
push 3
push offset _Lt_02AC
push -1
push dword ptr [ebp+12]
call _HSTRIPEXT
add esp, 4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign
add esp, 20
.Lt_02AA:
mov eax, dword ptr [ebp+8]
mov dword ptr [_FBC+4], eax
jmp .Lt_02A8
.Lt_02A9:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], -1
.Lt_02A8:
lea eax, [_FBC+8]
push eax
call _FBCADDOBJ
add esp, 4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign
add esp, 20
.Lt_02A7:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HADDBAS:
push ebp
mov ebp, esp
.Lt_02AF:
push 0
push dword ptr [ebp+8]
lea eax, [_FBC+72]
push eax
call _LISTNEWNODE
add esp, 4
push eax
call _HSETIOFILE
add esp, 12
.Lt_02B0:
mov esp, ebp
pop ebp
ret
.balign 16
_HPARSEGNUTRIPLET:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_02CB:
mov dword ptr [ebp-4], 0
.Lt_02D0:
mov eax, dword ptr [ebp-4]
push dword ptr [_GNUOSMAP+eax*8]
call _fb_StrAllocTempDescZ
add esp, 4
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
test eax, eax
jle .Lt_02D2
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [_GNUOSMAP+eax*8+4]
mov dword ptr [ebx], ecx
jmp .Lt_02CF
.Lt_02D2:
.Lt_02D1:
.Lt_02CE:
inc dword ptr [ebp-4]
.Lt_02CD:
cmp dword ptr [ebp-4], 10
jle .Lt_02D0
.Lt_02CF:
cmp dword ptr [ebp+12], 0
jle .Lt_02D4
push 0
push -1
mov ecx, dword ptr [ebp+12]
dec ecx
push ecx
push dword ptr [ebp+8]
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-16], 0
.Lt_02D8:
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [_GNUARCHMAP+eax*8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_02DA
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [_GNUARCHMAP+eax*8+4]
mov dword ptr [ecx], ebx
jmp .Lt_02D7
.Lt_02DA:
.Lt_02D9:
.Lt_02D6:
inc dword ptr [ebp-16]
.Lt_02D5:
cmp dword ptr [ebp-16], 12
jle .Lt_02D8
.Lt_02D7:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete
add esp, 4
.Lt_02D4:
.Lt_02D3:
.Lt_02CC:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPARSETARGETARG:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_02DF:
mov eax, dword ptr [ebp+12]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+16]
mov dword ptr [eax], -1
mov eax, dword ptr [ebp+20]
mov dword ptr [eax], 0
push 0
push -1
push 0
push dword ptr [ebp+8]
call _fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-20], 0
.Lt_02E4:
push 0
mov eax, dword ptr [ebp-20]
imul eax, 12
push dword ptr [_FBOSARCHMAP+eax]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_02E6
mov eax, dword ptr [ebp-20]
imul eax, 12
mov ebx, dword ptr [ebp+12]
mov ecx, dword ptr [_FBOSARCHMAP+eax+4]
mov dword ptr [ebx], ecx
mov ecx, dword ptr [ebp-20]
imul ecx, 12
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [_FBOSARCHMAP+ecx+8]
mov dword ptr [ebx], eax
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_02E0
.Lt_02E6:
.Lt_02E5:
.Lt_02E2:
inc dword ptr [ebp-20]
.Lt_02E1:
cmp dword ptr [ebp-20], 11
jle .Lt_02E4
.Lt_02E3:
push 1
push offset _Lt_02E7
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr
add esp, 12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .Lt_02E9
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
mov eax, dword ptr [ebp-16]
dec eax
push eax
lea eax, [ebp-12]
push eax
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _FBIDENTIFYOS
add esp, 4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen
add esp, 8
sub eax, dword ptr [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call _fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-40]
push eax
call _FBCPUTYPEFROMCPUFAMILYID
add esp, 4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete
add esp, 4
.Lt_02E9:
.Lt_02E8:
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
je .Lt_02ED
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HPARSEGNUTRIPLET
add esp, 16
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], -1
.Lt_02ED:
.Lt_02EC:
lea ecx, [ebp-12]
push ecx
call _fb_StrDelete
add esp, 4
.Lt_02E0:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HANDLEOPT:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_02F0:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_02F3
.Lt_02F5:
push dword ptr [ebp+12]
call _FBCADDOBJ
add esp, 4
jmp .Lt_02F2
.Lt_02F6:
push 7
push offset _Lt_02F7
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_FBC+28], eax
push dword ptr [ebp+12]
call _FBIDENTIFYFBCARCH
add esp, 4
mov dword ptr [_FBC+24], eax
cmp dword ptr [_FBC+24], 0
jge .Lt_02F9
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push 7
push offset _Lt_02FA
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _HFATALINVALIDOPTION
add esp, 4
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_02F9:
.Lt_02F8:
jmp .Lt_02F2
.Lt_02FD:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 4
push offset _Lt_0301
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0300
.Lt_0302:
mov dword ptr [_FBC+32], 1
jmp .Lt_02FE
.Lt_0300:
push 6
push offset _Lt_0304
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0303
.Lt_0305:
mov dword ptr [_FBC+32], 0
jmp .Lt_02FE
.Lt_0303:
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_0306:
.Lt_02FE:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_02F2
.Lt_0307:
push dword ptr [ebp+12]
call _HADDBAS
add esp, 4
jmp .Lt_02F2
.Lt_0308:
push 3
push 0
call _FBSETOPTION
add esp, 8
mov dword ptr [_FBC+52], -1
jmp .Lt_02F2
.Lt_0309:
mov dword ptr [_FBC+52], -1
jmp .Lt_02F2
.Lt_030A:
push dword ptr [ebp+12]
call _FBADDPREDEFINE
add esp, 4
jmp .Lt_02F2
.Lt_030B:
push 2
push 0
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_030C:
push -1
push 15
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_030D:
push -1
push 20
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_030E:
push -1
push 14
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_030F:
push -1
push 12
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0310:
push -1
push 13
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0311:
push -1
push 18
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0312:
push -1
push 19
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0313:
push -1
push 15
call _FBSETOPTION
add esp, 8
push -1
push 16
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0314:
push -1
push 15
call _FBSETOPTION
add esp, 8
push -1
push 16
call _FBSETOPTION
add esp, 8
push -1
push 17
call _FBSETOPTION
add esp, 8
push -1
push 18
call _FBSETOPTION
add esp, 8
push -1
push 20
call _FBSETOPTION
add esp, 8
push -1
push 19
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0315:
push -1
push 28
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0316:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _FBGETLANGID
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_0318
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_0318:
.Lt_0317:
push dword ptr [ebp-8]
push 10
call _FBSETOPTION
add esp, 8
push -1
push 11
call _FBSETOPTION
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [_FBC+3176], eax
jmp .Lt_02F2
.Lt_0319:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
push 8
push offset _Lt_031D
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_031C
.Lt_031E:
mov dword ptr [ebp-8], 0
jmp .Lt_031A
.Lt_031C:
push 5
push offset _Lt_0320
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_031F
.Lt_0321:
mov dword ptr [ebp-8], 1
jmp .Lt_031A
.Lt_031F:
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_0322:
.Lt_031A:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-8]
push 6
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0323:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
push 4
push offset _Lt_0327
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_0329
.Lt_032A:
push 4
push offset _Lt_0328
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0326
.Lt_0329:
mov dword ptr [ebp-8], 0
jmp .Lt_0324
.Lt_0326:
push 4
push offset _Lt_032C
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_032B
.Lt_032D:
mov dword ptr [ebp-8], 1
jmp .Lt_0324
.Lt_032B:
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_032E:
.Lt_0324:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-8]
push 5
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_032F:
push -1
push 12
call _FBSETOPTION
add esp, 8
push -1
push 13
call _FBSETOPTION
add esp, 8
push -1
push 14
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0330:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 4
push offset _Lt_0334
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0333
.Lt_0335:
mov dword ptr [_FBC+20], 0
jmp .Lt_0331
.Lt_0333:
push 4
push offset _Lt_0039
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0336
.Lt_0337:
mov dword ptr [_FBC+20], 1
jmp .Lt_0331
.Lt_0336:
push 5
push offset _Lt_0339
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0338
.Lt_033A:
mov dword ptr [_FBC+20], 2
jmp .Lt_0331
.Lt_0338:
push 6
push offset _Lt_033C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_033B
.Lt_033D:
mov dword ptr [_FBC+20], 3
jmp .Lt_0331
.Lt_033B:
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_033E:
.Lt_0331:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_02F2
.Lt_033F:
mov dword ptr [_FBC+64], -1
jmp .Lt_02F2
.Lt_0340:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _FBADDINCLUDEPATH
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_02F2
.Lt_0342:
push dword ptr [ebp+12]
call _FBADDPREINCLUDE
add esp, 4
jmp .Lt_02F2
.Lt_0343:
push 0
push dword ptr [ebp+12]
lea eax, [_FBC+252]
push eax
call _STRSETADD
add esp, 12
jmp .Lt_02F2
.Lt_0344:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _FBGETLANGID
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_0346
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_0346:
.Lt_0345:
push dword ptr [ebp-8]
push 10
call _FBSETOPTION
add esp, 8
mov eax, dword ptr [ebp-8]
mov dword ptr [_FBC+3176], eax
jmp .Lt_02F2
.Lt_0347:
push 1
push 0
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0348:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+689]
push eax
call _fb_StrAssign
add esp, 20
mov dword ptr [_FBC+952], -1
jmp .Lt_02F2
.Lt_0349:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+956]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_02F2
.Lt_034A:
push 4
push offset _Lt_034B
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_034D
mov dword ptr [ebp-8], 2147483647
jmp .Lt_034C
.Lt_034D:
push dword ptr [ebp+12]
call _fb_VALINT
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jg .Lt_034F
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_034F:
.Lt_034E:
.Lt_034C:
push dword ptr [ebp-8]
push 24
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0350:
push -1
push 30
call _FBSETOPTION
add esp, 8
mov dword ptr [_FBC+3180], -1
jmp .Lt_02F2
.Lt_0351:
mov dword ptr [_FBC+2120], -1
jmp .Lt_02F2
.Lt_0352:
push 0
push 23
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0353:
push 0
push 34
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0354:
mov dword ptr [_FBC+2128], 0
jmp .Lt_02F2
.Lt_0355:
call _HCHECKWAITINGOBJFILE
cmp dword ptr [_FBC+4], 0
je .Lt_0357
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [_FBC+4]
push dword ptr [eax+12]
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_FBC+4]
mov dword ptr [eax+16], -1
jmp .Lt_0356
.Lt_0357:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0356:
jmp .Lt_02F2
.Lt_0358:
push 4
push offset _Lt_0359
push -1
push dword ptr [ebp+12]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_035B
mov dword ptr [ebp-8], 3
jmp .Lt_035A
.Lt_035B:
push dword ptr [ebp+12]
call _fb_VALINT
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jge .Lt_035D
mov dword ptr [ebp-8], 0
jmp .Lt_035C
.Lt_035D:
cmp dword ptr [ebp-8], 3
jle .Lt_035E
mov dword ptr [ebp-8], 3
.Lt_035E:
.Lt_035C:
.Lt_035A:
push dword ptr [ebp-8]
push 8
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_035F:
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
lea eax, [_FBC+296]
push eax
call _STRSETADD
add esp, 12
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_02F2
.Lt_0361:
push -1
push 32
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0362:
push -1
push 1
call _FBSETOPTION
add esp, 8
mov dword ptr [_FBC+36], -1
jmp .Lt_02F2
.Lt_0363:
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV
add esp, 4
push eax
push 261
lea eax, [_FBC+2132]
push eax
call _fb_StrAssign
add esp, 20
push 92
lea eax, [_FBC+2132]
push eax
call _HREPLACESLASH
add esp, 8
jmp .Lt_02F2
.Lt_0364:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 5
push offset _Lt_0368
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0367
.Lt_0369:
mov dword ptr [_FBC+68], 0
jmp .Lt_0365
.Lt_0367:
push 7
push offset _Lt_036B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_036A
.Lt_036C:
mov dword ptr [_FBC+68], 1
jmp .Lt_0365
.Lt_036A:
push 2
push offset _Lt_036E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_036D
.Lt_036F:
mov dword ptr [_FBC+68], 2
jmp .Lt_0365
.Lt_036D:
push 9
push offset _Lt_0371
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0370
.Lt_0372:
mov dword ptr [_FBC+68], 3
jmp .Lt_0365
.Lt_0370:
push 6
push offset _Lt_0374
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0373
.Lt_0375:
mov dword ptr [_FBC+68], 4
jmp .Lt_0365
.Lt_0373:
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_0376:
.Lt_0365:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_02F2
.Lt_0377:
push -1
push 21
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0378:
push 3
push 0
call _FBSETOPTION
add esp, 8
mov dword ptr [_FBC+36], -1
mov dword ptr [_FBC+40], -1
jmp .Lt_02F2
.Lt_0379:
mov dword ptr [_FBC+40], -1
jmp .Lt_02F2
.Lt_037A:
push 3
push 0
call _FBSETOPTION
add esp, 8
mov dword ptr [_FBC+44], -1
mov dword ptr [_FBC+48], -1
jmp .Lt_02F2
.Lt_037B:
mov dword ptr [_FBC+48], -1
jmp .Lt_02F2
.Lt_037C:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [_FBC+1217]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 4
push offset _Lt_0161
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_037F
.Lt_0380:
push 1
push 36
call _FBSETOPTION
add esp, 8
.Lt_037F:
.Lt_037D:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_02F2
.Lt_0381:
push -1
push 35
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0382:
mov dword ptr [_FBC+2124], -1
jmp .Lt_02F2
.Lt_0383:
mov dword ptr [_FBC+2128], -1
jmp .Lt_02F2
.Lt_0384:
push dword ptr [ebp+12]
call _fb_VALINT
add esp, 4
sal eax, 10
push eax
push 33
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_0385:
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
call _HPARSETARGETARG
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
je .Lt_0387
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_0387:
.Lt_0386:
push dword ptr [ebp-8]
push 3
call _FBSETOPTION
add esp, 8
push dword ptr [ebp-12]
push 4
call _FBSETOPTION
add esp, 8
mov ebx, dword ptr [ebp-8]
cmp ebx, 3
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
je .Lt_0389
push 0
push -1
push dword ptr [ebp+12]
push 129
lea ebx, [_FBC+1730]
push ebx
call _fb_StrAssign
add esp, 20
push 0
push -1
push 2
push offset _Lt_02E7
push 129
lea ebx, [_FBC+1730]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat
add esp, 20
push eax
push 129
lea eax, [_FBC+1859]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0389:
.Lt_0388:
jmp .Lt_02F2
.Lt_038B:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [_FBC+1988]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_02F2
.Lt_038C:
mov dword ptr [_FBC+56], -1
jmp .Lt_02F2
.Lt_038D:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2
add esp, 8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
push 5
push offset _Lt_0391
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_0392
.Lt_0393:
push 2
push offset _Lt_0008
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0390
.Lt_0392:
mov dword ptr [ebp-8], 0
jmp .Lt_038E
.Lt_0390:
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0394
.Lt_0395:
mov dword ptr [ebp-8], 1
jmp .Lt_038E
.Lt_0394:
push 2
push offset _Lt_0397
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0396
.Lt_0398:
mov dword ptr [ebp-8], 2
jmp .Lt_038E
.Lt_0396:
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_0399:
.Lt_038E:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
push dword ptr [ebp-8]
push 7
call _FBSETOPTION
add esp, 8
jmp .Lt_02F2
.Lt_039A:
mov dword ptr [_FBC+60], -1
jmp .Lt_02F2
.Lt_039B:
mov dword ptr [ebp-8], -1
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit
add esp, 20
push 4
push offset _Lt_039F
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_039E
.Lt_03A0:
mov dword ptr [ebp-8], 0
jmp .Lt_039C
.Lt_039E:
push 5
push offset _Lt_03A2
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03A1
.Lt_03A3:
mov dword ptr [ebp-8], 4
jmp .Lt_039C
.Lt_03A1:
push 6
push offset _Lt_03A5
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03A4
.Lt_03A6:
push 25
call _FBGETOPTION
add esp, 4
or eax, 2
push eax
push 25
call _FBSETOPTION
add esp, 8
jmp .Lt_039C
.Lt_03A4:
push 7
push offset _Lt_03A8
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03A7
.Lt_03A9:
push 25
call _FBGETOPTION
add esp, 4
or eax, 1
push eax
push 25
call _FBSETOPTION
add esp, 8
jmp .Lt_039C
.Lt_03A7:
push 5
push offset _Lt_03AB
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03AA
.Lt_03AC:
push 25
call _FBGETOPTION
add esp, 4
or eax, 8
push eax
push 25
call _FBSETOPTION
add esp, 8
jmp .Lt_039C
.Lt_03AA:
push 11
push offset _Lt_03AE
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03AD
.Lt_03AF:
push 25
call _FBGETOPTION
add esp, 4
or eax, 32
push eax
push 25
call _FBSETOPTION
add esp, 8
jmp .Lt_039C
.Lt_03AD:
push 10
push offset _Lt_03B1
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03B0
.Lt_03B2:
push 25
call _FBGETOPTION
add esp, 4
or eax, 128
push eax
push 25
call _FBSETOPTION
add esp, 8
mov dword ptr [ebp-8], 0
jmp .Lt_039C
.Lt_03B0:
push 8
push offset _Lt_03B4
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03B3
.Lt_03B5:
push 25
call _FBGETOPTION
add esp, 4
or eax, 64
push eax
push 25
call _FBSETOPTION
add esp, 8
mov dword ptr [ebp-8], 0
jmp .Lt_039C
.Lt_03B3:
push 7
push offset _Lt_03B7
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03B6
.Lt_03B8:
push 25
call _FBGETOPTION
add esp, 4
or eax, 256
push eax
push 25
call _FBSETOPTION
add esp, 8
jmp .Lt_039C
.Lt_03B6:
push 9
push offset _Lt_03BA
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03B9
.Lt_03BB:
push -233
push 25
call _FBSETOPTION
add esp, 8
cmp dword ptr [ebp-8], 1
jle .Lt_03BD
mov dword ptr [ebp-8], 1
.Lt_03BD:
.Lt_03BC:
jmp .Lt_039C
.Lt_03B9:
push dword ptr [ebp+12]
call _fb_VALINT
add esp, 4
mov dword ptr [ebp-8], eax
.Lt_03BE:
.Lt_039C:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
cmp dword ptr [ebp-8], 0
jl .Lt_03C0
push dword ptr [ebp-8]
push 22
call _FBSETOPTION
add esp, 8
.Lt_03C0:
.Lt_03BF:
jmp .Lt_02F2
.Lt_03C1:
push 0
push -1
push -1
push 2
push offset _Lt_00C3
push -1
push -1
push offset _Lt_00C3
push offset _Lt_01BC
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HREPLACE
add esp, 12
push eax
push 2
push offset _Lt_00C3
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 128
lea eax, [_FBC+1346]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 128
lea eax, [_FBC+1346]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_02F2
.Lt_03C5:
push 0
push -1
push -1
push 2
push offset _Lt_00C3
push -1
push -1
push offset _Lt_00C3
push offset _Lt_01BC
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HREPLACE
add esp, 12
push eax
push 2
push offset _Lt_00C3
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 128
lea eax, [_FBC+1602]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 128
lea eax, [_FBC+1602]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_02F2
.Lt_03C9:
push 0
push -1
push -1
push 2
push offset _Lt_00C3
push -1
push -1
push offset _Lt_00C3
push offset _Lt_01BC
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HREPLACE
add esp, 12
push eax
push 2
push offset _Lt_00C3
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 128
lea eax, [_FBC+1474]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 128
lea eax, [_FBC+1474]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_02F2
.Lt_03CD:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_02F2
.Lt_03CE:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 13
push offset _Lt_03D2
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03D1
.Lt_03D3:
push -1
push 26
call _FBSETOPTION
add esp, 8
jmp .Lt_03CF
.Lt_03D1:
push 14
push offset _Lt_03D5
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03D4
.Lt_03D6:
push -1
push 27
call _FBSETOPTION
add esp, 8
jmp .Lt_03CF
.Lt_03D4:
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_03D7:
.Lt_03CF:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_02F2
.Lt_02F3:
cmp dword ptr [ebp-4], 65
ja .Lt_02F2
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_03D8+eax*4]
_.LT_03D8:
.int .Lt_02F5
.int .Lt_02F6
.int .Lt_02FD
.int .Lt_0307
.int .Lt_0308
.int .Lt_0309
.int .Lt_030A
.int .Lt_030B
.int .Lt_030B
.int .Lt_030C
.int .Lt_030D
.int .Lt_030E
.int .Lt_030F
.int .Lt_0310
.int .Lt_0311
.int .Lt_0312
.int .Lt_0313
.int .Lt_0314
.int .Lt_0315
.int .Lt_0316
.int .Lt_0319
.int .Lt_0323
.int .Lt_032F
.int .Lt_0330
.int .Lt_033F
.int .Lt_0340
.int .Lt_0342
.int .Lt_0343
.int .Lt_0344
.int .Lt_0347
.int .Lt_0348
.int .Lt_0349
.int .Lt_034A
.int .Lt_0350
.int .Lt_0351
.int .Lt_0352
.int .Lt_0353
.int .Lt_0354
.int .Lt_0355
.int .Lt_0358
.int .Lt_035F
.int .Lt_0361
.int .Lt_0362
.int .Lt_0363
.int .Lt_0364
.int .Lt_0377
.int .Lt_0378
.int .Lt_0379
.int .Lt_037A
.int .Lt_037B
.int .Lt_037C
.int .Lt_0381
.int .Lt_0382
.int .Lt_0383
.int .Lt_0384
.int .Lt_0385
.int .Lt_038B
.int .Lt_038C
.int .Lt_038D
.int .Lt_039A
.int .Lt_039B
.int .Lt_03C1
.int .Lt_03C5
.int .Lt_03C9
.int .Lt_03CD
.int .Lt_03CE
.Lt_02F2:
.Lt_02F1:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_PARSEOPTION:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_03D9:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_03DC
.Lt_03DE:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_03E1
mov dword ptr [ebp-4], 0
jmp .Lt_03DA
.Lt_03E1:
.Lt_03E0:
push 5
push offset _Lt_03E2
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03E4
mov dword ptr [ebp-4], 1
jmp .Lt_03DA
.Lt_03E4:
.Lt_03E3:
push 4
push offset _Lt_03E5
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03E7
mov dword ptr [ebp-4], 2
jmp .Lt_03DA
.Lt_03E7:
.Lt_03E6:
jmp .Lt_03DB
.Lt_03E8:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_03EB
mov dword ptr [ebp-4], 3
jmp .Lt_03DA
.Lt_03EB:
.Lt_03EA:
jmp .Lt_03DB
.Lt_03EC:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_03EF
mov dword ptr [ebp-4], 4
jmp .Lt_03DA
.Lt_03EF:
.Lt_03EE:
jmp .Lt_03DB
.Lt_03F0:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_03F3
mov dword ptr [ebp-4], 5
jmp .Lt_03DA
.Lt_03F3:
.Lt_03F2:
jmp .Lt_03DB
.Lt_03F4:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_03F7
mov dword ptr [ebp-4], 6
jmp .Lt_03DA
.Lt_03F7:
.Lt_03F6:
push 4
push offset _Lt_03F8
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03FA
mov dword ptr [ebp-4], 7
jmp .Lt_03DA
.Lt_03FA:
.Lt_03F9:
push 6
push offset _Lt_03FB
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_03FD
mov dword ptr [ebp-4], 8
jmp .Lt_03DA
.Lt_03FD:
.Lt_03FC:
jmp .Lt_03DB
.Lt_03FE:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0401
mov dword ptr [ebp-4], 9
jmp .Lt_03DA
.Lt_0401:
.Lt_0400:
push 3
push offset _Lt_0402
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0404
mov dword ptr [ebp-4], 16
jmp .Lt_03DA
.Lt_0404:
.Lt_0403:
push 7
push offset _Lt_0405
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0407
mov dword ptr [ebp-4], 10
jmp .Lt_03DA
.Lt_0407:
.Lt_0406:
push 8
push offset _Lt_0408
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_040A
mov dword ptr [ebp-4], 11
jmp .Lt_03DA
.Lt_040A:
.Lt_0409:
push 7
push offset _Lt_040B
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_040D
mov dword ptr [ebp-4], 12
jmp .Lt_03DA
.Lt_040D:
.Lt_040C:
push 11
push offset _Lt_040E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0410
mov dword ptr [ebp-4], 13
jmp .Lt_03DA
.Lt_0410:
.Lt_040F:
push 10
push offset _Lt_0411
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0413
mov dword ptr [ebp-4], 14
jmp .Lt_03DA
.Lt_0413:
.Lt_0412:
push 9
push offset _Lt_0414
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0416
mov dword ptr [ebp-4], 15
jmp .Lt_03DA
.Lt_0416:
.Lt_0415:
push 4
push offset _Lt_0417
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0419
mov dword ptr [ebp-4], 17
jmp .Lt_03DA
.Lt_0419:
.Lt_0418:
push 7
push offset _Lt_041A
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_041C
mov dword ptr [ebp-4], 18
jmp .Lt_03DA
.Lt_041C:
.Lt_041B:
jmp .Lt_03DB
.Lt_041D:
push 10
push offset _Lt_041F
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0421
mov dword ptr [ebp-4], 19
jmp .Lt_03DA
.Lt_0421:
.Lt_0420:
push 7
push offset _Lt_0422
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0424
mov dword ptr [ebp-4], 20
jmp .Lt_03DA
.Lt_0424:
.Lt_0423:
push 4
push offset _Lt_0425
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0427
mov dword ptr [ebp-4], 21
jmp .Lt_03DA
.Lt_0427:
.Lt_0426:
jmp .Lt_03DB
.Lt_0428:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_042B
mov dword ptr [ebp-4], 22
jmp .Lt_03DA
.Lt_042B:
.Lt_042A:
push 4
push offset _Lt_042C
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_042E
mov dword ptr [ebp-4], 23
jmp .Lt_03DA
.Lt_042E:
.Lt_042D:
jmp .Lt_03DB
.Lt_042F:
push 5
push offset _Lt_0431
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0433
mov dword ptr [ebp-4], 24
jmp .Lt_03DA
.Lt_0433:
.Lt_0432:
jmp .Lt_03DB
.Lt_0434:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0437
mov dword ptr [ebp-4], 25
jmp .Lt_03DA
.Lt_0437:
.Lt_0436:
push 8
push offset _Lt_0438
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_043A
mov dword ptr [ebp-4], 26
jmp .Lt_03DA
.Lt_043A:
.Lt_0439:
jmp .Lt_03DB
.Lt_043B:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_043E
mov dword ptr [ebp-4], 27
jmp .Lt_03DA
.Lt_043E:
.Lt_043D:
push 5
push offset _Lt_043F
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0441
mov dword ptr [ebp-4], 28
jmp .Lt_03DA
.Lt_0441:
.Lt_0440:
push 4
push offset _Lt_004A
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0443
mov dword ptr [ebp-4], 29
jmp .Lt_03DA
.Lt_0443:
.Lt_0442:
jmp .Lt_03DB
.Lt_0444:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0447
mov dword ptr [ebp-4], 30
jmp .Lt_03DA
.Lt_0447:
.Lt_0446:
push 4
push offset _Lt_0448
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_044A
mov dword ptr [ebp-4], 31
jmp .Lt_03DA
.Lt_044A:
.Lt_0449:
push 7
push offset _Lt_044B
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_044D
mov dword ptr [ebp-4], 32
jmp .Lt_03DA
.Lt_044D:
.Lt_044C:
push 3
push offset _Lt_044E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0450
mov dword ptr [ebp-4], 33
jmp .Lt_03DA
.Lt_0450:
.Lt_044F:
jmp .Lt_03DB
.Lt_0451:
push 10
push offset _Lt_0453
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0455
mov dword ptr [ebp-4], 35
jmp .Lt_03DA
.Lt_0455:
.Lt_0454:
push 10
push offset _Lt_0456
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0458
mov dword ptr [ebp-4], 34
jmp .Lt_03DA
.Lt_0458:
.Lt_0457:
push 10
push offset _Lt_0459
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_045B
mov dword ptr [ebp-4], 36
jmp .Lt_03DA
.Lt_045B:
.Lt_045A:
push 8
push offset _Lt_045C
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_045E
mov dword ptr [ebp-4], 37
jmp .Lt_03DA
.Lt_045E:
.Lt_045D:
jmp .Lt_03DB
.Lt_045F:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0462
mov dword ptr [ebp-4], 38
jmp .Lt_03DA
.Lt_0462:
.Lt_0461:
jmp .Lt_03DB
.Lt_0463:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_0466
mov dword ptr [ebp-4], 39
jmp .Lt_03DA
.Lt_0466:
.Lt_0465:
jmp .Lt_03DB
.Lt_0467:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_046A
mov dword ptr [ebp-4], 40
jmp .Lt_03DA
.Lt_046A:
.Lt_0469:
push 4
push offset _Lt_046B
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_046D
mov dword ptr [ebp-4], 41
jmp .Lt_03DA
.Lt_046D:
.Lt_046C:
push 3
push offset _Lt_046E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0470
mov dword ptr [ebp-4], 42
jmp .Lt_03DA
.Lt_0470:
.Lt_046F:
push 7
push offset _Lt_0471
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0473
mov dword ptr [ebp-4], 43
jmp .Lt_03DA
.Lt_0473:
.Lt_0472:
push 6
push offset _Lt_0474
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0476
mov dword ptr [ebp-4], 44
jmp .Lt_03DA
.Lt_0476:
.Lt_0475:
push 8
push offset _Lt_0477
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0479
mov dword ptr [ebp-4], 45
jmp .Lt_03DA
.Lt_0479:
.Lt_0478:
jmp .Lt_03DB
.Lt_047A:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_047D
mov dword ptr [ebp-4], 46
jmp .Lt_03DA
.Lt_047D:
.Lt_047C:
push 3
push offset _Lt_047E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0480
mov dword ptr [ebp-4], 48
jmp .Lt_03DA
.Lt_0480:
.Lt_047F:
jmp .Lt_03DB
.Lt_0481:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0484
mov dword ptr [ebp-4], 47
jmp .Lt_03DA
.Lt_0484:
.Lt_0483:
push 3
push offset _Lt_0485
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0487
mov dword ptr [ebp-4], 49
jmp .Lt_03DA
.Lt_0487:
.Lt_0486:
jmp .Lt_03DB
.Lt_0488:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_048B
mov dword ptr [ebp-4], 50
jmp .Lt_03DA
.Lt_048B:
.Lt_048A:
push 13
push offset _Lt_048C
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_048E
mov dword ptr [ebp-4], 51
jmp .Lt_03DA
.Lt_048E:
.Lt_048D:
push 7
push offset _Lt_048F
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0491
mov dword ptr [ebp-4], 52
jmp .Lt_03DA
.Lt_0491:
.Lt_0490:
push 6
push offset _Lt_0492
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_0494
mov dword ptr [ebp-4], 53
jmp .Lt_03DA
.Lt_0494:
.Lt_0493:
jmp .Lt_03DB
.Lt_0495:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0498
mov dword ptr [ebp-4], 54
jmp .Lt_03DA
.Lt_0498:
.Lt_0497:
push 7
push offset _Lt_036B
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_049A
mov dword ptr [ebp-4], 55
jmp .Lt_03DA
.Lt_049A:
.Lt_0499:
push 6
push offset _Lt_049B
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_049D
mov dword ptr [ebp-4], 56
jmp .Lt_03DA
.Lt_049D:
.Lt_049C:
jmp .Lt_03DB
.Lt_049E:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_04A1
mov dword ptr [ebp-4], 57
jmp .Lt_03DA
.Lt_04A1:
.Lt_04A0:
push 4
push offset _Lt_04A2
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04A4
mov dword ptr [ebp-4], 58
jmp .Lt_03DA
.Lt_04A4:
.Lt_04A3:
push 8
push offset _Lt_04A5
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04A7
mov dword ptr [ebp-4], 59
jmp .Lt_03DA
.Lt_04A7:
.Lt_04A6:
jmp .Lt_03DB
.Lt_04A8:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_04AB
mov dword ptr [ebp-4], 60
jmp .Lt_03DA
.Lt_04AB:
.Lt_04AA:
jmp .Lt_03DB
.Lt_04AC:
push 3
push offset _Lt_04AE
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04B0
mov dword ptr [ebp-4], 61
jmp .Lt_03DA
.Lt_04B0:
.Lt_04AF:
push 3
push offset _Lt_04B1
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04B3
mov dword ptr [ebp-4], 63
jmp .Lt_03DA
.Lt_04B3:
.Lt_04B2:
push 3
push offset _Lt_04B4
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04B6
mov dword ptr [ebp-4], 62
jmp .Lt_03DA
.Lt_04B6:
.Lt_04B5:
jmp .Lt_03DB
.Lt_04B7:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_04B9
mov dword ptr [ebp-4], 64
jmp .Lt_03DA
.Lt_04B9:
.Lt_04B8:
jmp .Lt_03DB
.Lt_04BA:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_04BD
mov dword ptr [ebp-4], 65
jmp .Lt_03DA
.Lt_04BD:
.Lt_04BC:
jmp .Lt_03DB
.Lt_04BE:
push 9
push offset _Lt_04BF
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04C1
mov dword ptr [ebp-4], 59
jmp .Lt_03DA
.Lt_04C1:
.Lt_04C0:
push 6
push offset _Lt_04C2
push 0
push dword ptr [ebp+8]
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04C4
mov dword ptr [ebp-4], 24
jmp .Lt_03DA
.Lt_04C4:
.Lt_04C3:
jmp .Lt_03DB
.Lt_03DC:
mov eax, dword ptr [ebp-8]
add eax, 4294967251
cmp eax, 77
ja .Lt_03DB
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_04C5+eax*4-180]
_.LT_04C5:
.int .Lt_04BE
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03F0
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_0463
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_0481
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_04AC
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_03DE
.int .Lt_03E8
.int .Lt_03EC
.int .Lt_03F4
.int .Lt_03FE
.int .Lt_041D
.int .Lt_0428
.int .Lt_042F
.int .Lt_0434
.int .Lt_03DB
.int .Lt_03DB
.int .Lt_043B
.int .Lt_0444
.int .Lt_0451
.int .Lt_045F
.int .Lt_0467
.int .Lt_03DB
.int .Lt_047A
.int .Lt_0488
.int .Lt_0495
.int .Lt_03DB
.int .Lt_049E
.int .Lt_04A8
.int .Lt_04B7
.int .Lt_03DB
.int .Lt_04BA
.Lt_03DB:
mov dword ptr [ebp-4], -1
.Lt_03DA:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HANDLEARG:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_04C6:
cmp dword ptr [_FBC], 0
jl .Lt_04C9
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_04CB
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_04CB:
.Lt_04CA:
push dword ptr [ebp+8]
push dword ptr [_FBC]
call _HANDLEOPT
add esp, 8
mov dword ptr [_FBC], -1
jmp .Lt_04C7
.Lt_04C9:
.Lt_04C8:
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_04CD
jmp .Lt_04C7
.Lt_04CD:
.Lt_04CC:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov al, byte ptr [ebx]
mov byte ptr [ebp-4], al
movzx eax, byte ptr [ebp-4]
cmp eax, 45
jne .Lt_04D0
.Lt_04D1:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
inc ebx
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
movzx eax, byte ptr [ebx]
test eax, eax
jne .Lt_04D3
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_04D3:
.Lt_04D2:
push dword ptr [ebp-8]
call _PARSEOPTION
add esp, 4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jge .Lt_04D5
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_04D5:
.Lt_04D4:
mov eax, dword ptr [ebp-12]
cmp dword ptr [_OPTION_TAKES_ARGUMENT+eax*4], 0
je .Lt_04D7
mov eax, dword ptr [ebp-12]
mov dword ptr [_FBC], eax
jmp .Lt_04D6
.Lt_04D7:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _HANDLEOPT
add esp, 8
.Lt_04D6:
jmp .Lt_04CE
.Lt_04D0:
movzx eax, byte ptr [ebp-4]
cmp eax, 64
jne .Lt_04D8
.Lt_04D9:
cmp dword ptr [_Lt_0818], 128
jle .Lt_04DB
push 0
push 1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 27
call _ERRREPORTEX
add esp, 20
push 1
call _FBCEND
add esp, 4
.Lt_04DB:
.Lt_04DA:
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
dec eax
push eax
push dword ptr [ebp+8]
call _fb_RIGHT
add esp, 8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign
add esp, 20
push -1
push dword ptr [ebp+8]
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_04DD
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_04DD:
.Lt_04DC:
inc dword ptr [_Lt_0818]
push dword ptr [ebp+8]
call _PARSEARGSFROMFILE
add esp, 4
dec dword ptr [_Lt_0818]
jmp .Lt_04CE
.Lt_04D8:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HGETFILEEXT
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push 0
lea eax, [ebp-16]
push eax
call _fb_StrLcase2
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 4
push offset _Lt_04E1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04E0
.Lt_04E2:
push dword ptr [ebp+8]
call _HADDBAS
add esp, 4
jmp .Lt_04DF
.Lt_04E0:
push 2
push offset _Lt_0460
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04E3
.Lt_04E4:
push dword ptr [ebp+8]
call _FBCADDOBJ
add esp, 4
jmp .Lt_04DF
.Lt_04E3:
push 2
push offset _Lt_03DF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04E5
.Lt_04E6:
push dword ptr [ebp+8]
lea eax, [_FBC+220]
push eax
call _STRLISTAPPEND
add esp, 8
jmp .Lt_04DF
.Lt_04E5:
push 3
push offset _Lt_04E8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_04EA
.Lt_04EB:
push 4
push offset _Lt_04E9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04E7
.Lt_04EA:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+104]
push eax
call _LISTNEWNODE
add esp, 4
push eax
call _HSETIOFILE
add esp, 12
jmp .Lt_04DF
.Lt_04E7:
push 4
push offset _Lt_04ED
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
jne .Lt_04EC
.Lt_04EE:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_04F0
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_04F0:
.Lt_04EF:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+136]
push eax
call _HSETIOFILE
add esp, 12
jmp .Lt_04DF
.Lt_04EC:
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION
add esp, 4
.Lt_04F1:
.Lt_04DF:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04DE:
.Lt_04CE:
.Lt_04C7:
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_0818:
.int 0

.section .text
.balign 16
_PARSEARGSFROMFILE:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.Lt_04F2:
call _fb_FileFree
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_04F5
push 0
push 1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 26
call _ERRREPORTEX
add esp, 20
push 1
call _FBCEND
add esp, 4
.Lt_04F5:
.Lt_04F4:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
.Lt_04F6:
push dword ptr [ebp-4]
call _fb_FileEof
add esp, 4
test eax, eax
jne .Lt_04F7
push 0
push -1
lea eax, [ebp-16]
push eax
push dword ptr [ebp-4]
call _fb_FileLineInput
add esp, 16
push 0
push -1
lea eax, [ebp-16]
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
.Lt_04F8:
push -1
lea eax, [ebp-16]
push eax
call _fb_StrLen
add esp, 8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_04FC
jmp .Lt_04F9
.Lt_04FC:
.Lt_04FB:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
.Lt_04FD:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-36], eax
jge .Lt_04FE
mov eax, dword ptr [ebp-16]
add eax, dword ptr [ebp-36]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ebx
jmp .Lt_0500
.Lt_0502:
cmp dword ptr [ebp-40], 0
jne .Lt_0504
jmp .Lt_04FE
.Lt_0504:
.Lt_0503:
jmp .Lt_04FF
.Lt_0505:
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebp-40], ebx
jne .Lt_0508
mov dword ptr [ebp-40], 0
jmp .Lt_0507
.Lt_0508:
cmp dword ptr [ebp-40], 0
jne .Lt_0509
mov ebx, dword ptr [ebp-44]
mov dword ptr [ebp-40], ebx
.Lt_0509:
.Lt_0507:
jmp .Lt_04FF
.Lt_0500:
mov ebx, dword ptr [ebp-48]
add ebx, 4294967264
cmp ebx, 7
ja .Lt_04FF
mov ebx, dword ptr [ebp-48]
jmp dword ptr [_.LT_050A+ebx*4-128]
_.LT_050A:
.int .Lt_0502
.int .Lt_04FF
.int .Lt_0505
.int .Lt_04FF
.int .Lt_04FF
.int .Lt_04FF
.int .Lt_04FF
.int .Lt_0505
.Lt_04FF:
inc dword ptr [ebp-36]
jmp .Lt_04FD
.Lt_04FE:
cmp dword ptr [ebp-36], 0
jne .Lt_050C
mov dword ptr [ebp-36], 1
jmp .Lt_050B
.Lt_050C:
push 0
push -1
push dword ptr [ebp-36]
lea ebx, [ebp-16]
push ebx
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-28]
push eax
call _fb_TRIM
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-28]
push eax
call _STRUNQUOTE
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _HANDLEARG
add esp, 4
.Lt_050B:
push 0
push -1
mov eax, dword ptr [ebp-32]
sub eax, dword ptr [ebp-36]
push eax
lea eax, [ebp-16]
push eax
call _fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
.Lt_04FA:
jmp .Lt_04F8
.Lt_04F9:
jmp .Lt_04F6
.Lt_04F7:
push dword ptr [ebp-4]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_050D
push 0
push 0
push offset _Lt_0087
push 2355
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_050D:
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_04F3:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HTARGETNEEDSPIC:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_050E:
mov dword ptr [ebp-4], 0
call _FBGETCPUFAMILY
test eax, eax
je .Lt_0511
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-8], eax
jmp .Lt_0513
.Lt_0515:
mov dword ptr [ebp-4], -1
jmp .Lt_0512
.Lt_0513:
mov eax, dword ptr [ebp-8]
add eax, 4294967294
cmp eax, 8
ja .Lt_0512
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0516+eax*4-8]
_.LT_0516:
.int .Lt_0515
.int .Lt_0512
.int .Lt_0512
.int .Lt_0515
.int .Lt_0515
.int .Lt_0515
.int .Lt_0515
.int .Lt_0512
.int .Lt_0515
.Lt_0512:
.Lt_0511:
.Lt_0510:
.Lt_050F:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HPARSEARGS:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
.Lt_0517:
mov dword ptr [_FBC], -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-20], eax
jmp .Lt_051A
.Lt_051D:
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
call _fb_StrAssign
add esp, 20
lea ebx, [ebp-12]
push ebx
call _HANDLEARG
add esp, 4
.Lt_051B:
inc dword ptr [ebp-16]
.Lt_051A:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jle .Lt_051D
.Lt_051C:
cmp dword ptr [_FBC], 0
jl .Lt_051F
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
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _HFATALINVALIDOPTION
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_051F:
.Lt_051E:
call _HCHECKWAITINGOBJFILE
push 5
call _FBGETOPTION
add esp, 4
test eax, eax
jne .Lt_0522
push 7
call _FBGETOPTION
add esp, 4
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
push 6
mov ebx, eax
call _FBGETOPTION
add esp, 4
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0524
push 0
push 1
push -1
push offset _Lt_0000
push 284
call _ERRREPORTEX
add esp, 20
push 1
call _FBCEND
add esp, 4
.Lt_0524:
.Lt_0523:
.Lt_0522:
.Lt_0521:
cmp dword ptr [_FBC+24], 0
jl .Lt_0526
push dword ptr [_FBC+24]
push 4
call _FBSETOPTION
add esp, 8
.Lt_0526:
.Lt_0525:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBGETCPUFAMILY
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0528
push 0
push 1
push -1
call _FBGETFBCARCH
push eax
push 82
call _ERRREPORTEX
add esp, 20
push 1
call _FBCEND
add esp, 4
.Lt_0528:
.Lt_0527:
call _FBGETCPUFAMILY
test eax, eax
jne .Lt_052A
push 0
push 2
call _FBSETOPTION
add esp, 8
jmp .Lt_0529
.Lt_052A:
push 1
push 2
call _FBSETOPTION
add esp, 8
.Lt_0529:
cmp dword ptr [_FBC+20], 0
jl .Lt_052C
push dword ptr [_FBC+20]
push 2
call _FBSETOPTION
add esp, 8
.Lt_052C:
.Lt_052B:
push 2
call _FBGETOPTION
add esp, 4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBGETCPUFAMILY
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 2
call _FBGETOPTION
add esp, 4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov esi, eax
call _FBGETCPUFAMILY
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and esi, eax
or ebx, esi
je .Lt_052E
push 0
push 1
push -1
call _FBGETFBCARCH
push eax
push 83
call _ERRREPORTEX
add esp, 20
push 1
call _FBCEND
add esp, 4
.Lt_052E:
.Lt_052D:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-16], eax
jmp .Lt_0530
.Lt_0532:
jmp .Lt_052F
.Lt_0533:
lea eax, [_FBC+104]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_0535
push 0
push 1
push -1
mov eax, dword ptr [ebp-20]
push dword ptr [eax]
push 291
call _ERRREPORTEX
add esp, 20
push 1
call _FBCEND
add esp, 4
.Lt_0535:
.Lt_0534:
jmp .Lt_052F
.Lt_0530:
cmp dword ptr [ebp-16], 4
ja .Lt_0533
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_0536+eax*4]
_.LT_0536:
.int .Lt_0532
.int .Lt_0532
.int .Lt_0533
.int .Lt_0533
.int .Lt_0532
.Lt_052F:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-16], eax
jmp .Lt_0538
.Lt_053A:
jmp .Lt_0537
.Lt_053B:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_053D
push 0
push 1
push -1
push dword ptr [_FBC+136]
push 291
call _ERRREPORTEX
add esp, 20
push 1
call _FBCEND
add esp, 4
.Lt_053D:
.Lt_053C:
jmp .Lt_0537
.Lt_0538:
mov eax, dword ptr [ebp-16]
add eax, 4294967294
cmp eax, 8
ja .Lt_053B
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_053E+eax*4-8]
_.LT_053E:
.int .Lt_053A
.int .Lt_053B
.int .Lt_053B
.int .Lt_053A
.int .Lt_053A
.int .Lt_053A
.int .Lt_053A
.int .Lt_053A
.int .Lt_053A
.Lt_0537:
cmp dword ptr [_FBC+32], 0
jl .Lt_0540
call _FBGETCPUFAMILY
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_0544
.Lt_0545:
cmp dword ptr [ebp-16], 1
jne .Lt_0543
.Lt_0544:
jmp .Lt_0541
.Lt_0543:
push 0
push 1
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
call _FBGETTARGETID
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-28]
push 319
call _ERRREPORTEX
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0546:
.Lt_0541:
push 2
call _FBGETOPTION
add esp, 4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call _FBGETOPTION
add esp, 4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
mov eax, dword ptr [_FBC+32]
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0549
push 0
push 1
push -1
push offset _Lt_0000
push 84
call _ERRREPORTEX
add esp, 20
.Lt_0549:
.Lt_0548:
push dword ptr [_FBC+32]
push 9
call _FBSETOPTION
add esp, 8
.Lt_0540:
.Lt_053F:
push 0
call _FBGETOPTION
add esp, 4
cmp eax, 2
jne .Lt_054B
call _HTARGETNEEDSPIC
test eax, eax
je .Lt_054D
push -1
push 32
call _FBSETOPTION
add esp, 8
.Lt_054D:
.Lt_054C:
.Lt_054B:
.Lt_054A:
push 32
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_054F
push 0
call _FBGETOPTION
add esp, 4
test eax, eax
jne .Lt_0551
push 0
push 1
push -1
push offset _Lt_0000
push 85
call _ERRREPORTEX
add esp, 20
jmp .Lt_0550
.Lt_0551:
call _HTARGETNEEDSPIC
test eax, eax
jne .Lt_0552
push 0
push 1
push -1
push offset _Lt_0000
push 86
call _ERRREPORTEX
add esp, 20
.Lt_0552:
.Lt_0550:
.Lt_054F:
.Lt_054E:
push -1
push 33
call _FBSETOPTION
add esp, 8
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0518:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_FBCDETERMINEPREFIX:
push ebp
mov ebp, esp
sub esp, 36
.Lt_0553:
push 261
lea eax, [_FBC+2132]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_0556
push 0
push -1
push 2
push offset _Lt_001C
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push -1
call _fb_ExePath
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV
add esp, 4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+2132]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
push 0
push -1
push 4
push offset _Lt_055A
push 261
lea eax, [_FBC+2132]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+2132]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_0555
.Lt_0556:
push 0
push -1
push 2
push offset _Lt_001C
push 261
lea eax, [_FBC+2132]
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+2132]
push eax
call _fb_StrAssign
add esp, 20
.Lt_0555:
.Lt_0554:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCSETUPCOMPILERPATHS:
push ebp
mov ebp, esp
sub esp, 168
.Lt_055D:
push 0
push -1
call _FBGETTARGETID
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 8
push offset _Lt_055F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 4
push offset _Lt_004A
push -1
lea eax, [ebp-36]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push 129
lea eax, [_FBC+1859]
push eax
push -1
push 2
push offset _Lt_001C
push -1
push 4
push offset _Lt_0560
push 261
lea eax, [_FBC+2132]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+2393]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 2
push offset _Lt_001C
push -1
push 8
push offset _Lt_0438
push 261
lea eax, [_FBC+2132]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+2654]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
push -1
push 2
push offset _Lt_001C
push -1
push -1
lea eax, [ebp-24]
push eax
push -1
push 2
push offset _Lt_001C
push -1
push -1
lea eax, [ebp-36]
push eax
push 261
lea eax, [_FBC+2132]
push eax
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 261
lea eax, [_FBC+2915]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_055E:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCPRINTTARGETINFO:
push ebp
mov ebp, esp
sub esp, 36
.Lt_056C:
push 0
push -1
call _FBGETTARGETID
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push -1
push 0
call _FBGETFBCARCH
push eax
push 3
push offset _Lt_056E
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 3
push offset _Lt_056E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
call _FBGETBITS
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 4
push offset _Lt_0571
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 129
lea eax, [_FBC+1730]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_0573
push 0
push 3
push offset _Lt_0574
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 129
lea eax, [_FBC+1730]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0575
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0573:
.Lt_0572:
push 2
push 7
push offset _Lt_0576
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
lea eax, [ebp-12]
push eax
push 0
call _fb_PrintString
add esp, 12
push 2
push 8
push offset _Lt_0577
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 2
call _FBGETOPTION
add esp, 4
push eax
call _FBGETBACKENDNAME
add esp, 4
push eax
push 0
call _fb_PrintString
add esp, 12
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_056D:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCDETERMINEMAINNAME:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0578:
push 261
lea eax, [_FBC+689]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_057B
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_057D
push 0
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
push 261
lea ebx, [_FBC+689]
push ebx
call _fb_StrAssign
add esp, 20
jmp .Lt_057C
.Lt_057D:
lea ebx, [_FBC+188]
push ebx
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_057F
push 0
push -1
push dword ptr [ebp-20]
push 261
lea eax, [_FBC+689]
push eax
call _fb_StrAssign
add esp, 20
jmp .Lt_057E
.Lt_057F:
push 0
push 8
push offset _Lt_0580
push 261
lea eax, [_FBC+689]
push eax
call _fb_StrAssign
add esp, 20
.Lt_057E:
.Lt_057C:
push 0
push -1
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push 261
lea eax, [_FBC+689]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _HSTRIPEXT
add esp, 4
push eax
push 261
lea eax, [_FBC+689]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_057B:
.Lt_057A:
.Lt_0579:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETASMNAME:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0582:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .Lt_0585
mov eax, offset _Lt_0586
mov dword ptr [ebp-16], eax
jmp .Lt_0584
.Lt_0585:
mov eax, offset _Lt_02AC
mov dword ptr [ebp-16], eax
.Lt_0584:
push 2
call _FBGETOPTION
add esp, 4
cmp eax, 3
jne .Lt_0588
mov eax, offset _Lt_0589
mov dword ptr [ebp-16], eax
.Lt_0588:
.Lt_0587:
cmp dword ptr [ebp+12], 1
jne .Lt_058B
push 2
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 1
jne .Lt_058E
.Lt_058F:
mov eax, offset _Lt_0590
mov dword ptr [ebp-16], eax
jmp .Lt_058C
.Lt_058E:
cmp dword ptr [ebp-44], 2
jne .Lt_0591
.Lt_0592:
mov eax, offset _Lt_0593
mov dword ptr [ebp-16], eax
.Lt_0591:
.Lt_058C:
.Lt_058B:
.Lt_058A:
push 0
push -1
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
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0583:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HCOMPILEBAS:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.Lt_0595:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 1
push dword ptr [ebp+8]
call _HGETASMNAME
add esp, 8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_FBC+40]
not eax
push 2
mov ebx, eax
call _FBGETOPTION
add esp, 4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_FBC+48]
not ecx
or eax, ecx
and ebx, eax
je .Lt_0598
lea eax, [ebp-24]
push eax
call _FBCADDTEMP
add esp, 4
.Lt_0598:
.Lt_0597:
push 1
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_059A
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .Lt_059C
push 0
push -1
push 8
push offset _Lt_059D
push -1
lea eax, [ebp-36]
push eax
call _HSTRIPEXT
add esp, 4
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
.Lt_059C:
.Lt_059B:
.Lt_059A:
.Lt_0599:
cmp dword ptr [_FBC+56], 0
je .Lt_05A0
push 2
push 11
push offset _Lt_05A1
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 0
call _fb_PrintString
add esp, 12
push 0
push 4
push offset _Lt_05A2
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 0
lea eax, [ebp-24]
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_05A4
push 0
push -1
lea eax, [ebp-36]
push eax
push 6
push offset _Lt_05A5
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_05A4:
.Lt_05A3:
cmp dword ptr [ebp+12], 0
je .Lt_05A8
push 0
push 14
push offset _Lt_05A9
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_05A7
.Lt_05A8:
cmp dword ptr [ebp+16], 0
je .Lt_05AA
push 0
push 23
push offset _Lt_05AB
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_05AA:
.Lt_05A7:
push 1
push 0
call _fb_PrintVoid
add esp, 8
.Lt_05A0:
.Lt_059F:
mov dword ptr [ebp-12], 0
push 10
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-4], eax
push 0
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
je .Lt_05AD
push 3
push 0
call _FBSETOPTION
add esp, 8
.Lt_05AD:
.Lt_05AC:
.Lt_05AE:
push dword ptr [ebp-12]
push dword ptr [ebp+12]
call _FBINIT
add esp, 8
cmp dword ptr [ebp+16], 0
je .Lt_05B2
lea eax, [_FBC+384]
push eax
lea eax, [_FBC+340]
push eax
call _FBSETLIBS
add esp, 8
jmp .Lt_05B1
.Lt_05B2:
lea eax, [_FBC+296]
push eax
lea eax, [_FBC+252]
push eax
call _FBSETLIBS
add esp, 8
.Lt_05B1:
push dword ptr [ebp+12]
lea eax, [ebp-36]
push eax
push dword ptr [ebp-24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _FBCOMPILE
add esp, 16
call _ERRGETCOUNT
test eax, eax
jle .Lt_05B4
push 1
call _FBCEND
add esp, 4
.Lt_05B4:
.Lt_05B3:
call _FBSHOULDRESTART
test eax, eax
jne .Lt_05B6
jmp .Lt_05AF
.Lt_05B6:
.Lt_05B5:
inc dword ptr [ebp-12]
call _FBEND
.Lt_05B0:
jmp .Lt_05AE
.Lt_05AF:
cmp dword ptr [ebp+16], 0
jne .Lt_05B8
lea eax, [_FBC+384]
push eax
lea eax, [_FBC+340]
push eax
call _FBGETLIBS
add esp, 8
.Lt_05B8:
.Lt_05B7:
call _FBEND
push dword ptr [ebp-8]
push 0
call _FBSETOPTION
add esp, 8
push dword ptr [ebp-4]
push 10
call _FBSETOPTION
add esp, 8
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0596:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCOMPILEMODULES:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_05B9:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
push 0
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .Lt_05BE
.Lt_05BF:
cmp dword ptr [ebp-28], 2
jne .Lt_05BD
.Lt_05BE:
mov dword ptr [ebp-8], -1
jmp .Lt_05BB
.Lt_05BD:
mov eax, dword ptr [_FBC+952]
mov dword ptr [ebp-8], eax
.Lt_05C0:
.Lt_05BB:
cmp dword ptr [ebp-8], 0
je .Lt_05C2
push 0
push -1
lea eax, [_FBC+689]
push eax
call _HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign
add esp, 20
.Lt_05C2:
.Lt_05C1:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_05C4
lea eax, [_FBC+252]
push eax
lea eax, [_FBC+340]
push eax
call _STRSETCOPY
add esp, 8
lea eax, [_FBC+296]
push eax
lea eax, [_FBC+384]
push eax
call _STRSETCOPY
add esp, 8
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05BA
.Lt_05C4:
.Lt_05C3:
.Lt_05C5:
cmp dword ptr [ebp-8], 0
je .Lt_05C9
push -1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
mov eax, dword ptr [ebp-24]
lea ebx, [eax]
push ebx
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-36]
call _HSTRIPPATH
add esp, 4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05C9:
.Lt_05C8:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-24]
call _HCOMPILEBAS
add esp, 12
push dword ptr [ebp-24]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-24], eax
.Lt_05C7:
cmp dword ptr [ebp-24], 0
jne .Lt_05C5
.Lt_05C6:
lea eax, [ebp-20]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05BA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPARSEXPM:
push ebp
mov ebp, esp
sub esp, 144
push ebx
mov dword ptr [ebp-4], 0
.Lt_05CB:
push 0
push -1
push 28
push offset _Lt_05CD
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
push 0
push -1
push 21
push offset _Lt_05CF
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
push 0
push -1
push 20
push offset _Lt_05D1
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
call _fb_FileFree
mov dword ptr [ebp-44], eax
push 0
push dword ptr [ebp-44]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_05D4
jmp .Lt_05CC
.Lt_05D4:
.Lt_05D3:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
lea eax, [ebp-56]
push eax
push dword ptr [ebp-44]
call _fb_FileLineInput
add esp, 16
push 10
push offset _Lt_05D5
push -1
push 0
lea eax, [ebp-56]
push eax
call _fb_StrUcase2
add esp, 8
push eax
call _fb_StrCompare
add esp, 16
test eax, eax
je .Lt_05D7
push dword ptr [ebp-44]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_05D8
push 0
push 0
push offset _Lt_0087
push 2886
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_05D8:
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05CC
.Lt_05D7:
.Lt_05D6:
mov dword ptr [ebp-60], 0
.Lt_05D9:
push dword ptr [ebp-44]
call _fb_FileEof
add esp, 4
test eax, eax
jne .Lt_05DA
push 0
push -1
lea eax, [ebp-56]
push eax
push dword ptr [ebp-44]
call _fb_FileLineInput
add esp, 16
push 0
push -1
push -1
lea eax, [ebp-56]
push eax
call _fb_StrLen
add esp, 8
push 1
push offset _Lt_0107
mov ebx, eax
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-56]
push eax
push 1
call _fb_StrInstr
add esp, 12
sub ebx, eax
inc ebx
push ebx
lea ebx, [ebp-56]
push ebx
call _fb_RIGHT
add esp, 8
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push 1
push offset _Lt_0107
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
lea eax, [ebp-56]
push eax
push 2
call _fb_StrInstr
add esp, 12
push eax
lea eax, [ebp-56]
push eax
call _fb_LEFT
add esp, 8
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
push -1
lea eax, [ebp-56]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_05DC
cmp dword ptr [ebp-60], 0
je .Lt_05DE
push 0
push -1
push 5
push offset _Lt_05DF
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
.Lt_05DE:
.Lt_05DD:
push 0
push -1
push -1
push -1
lea eax, [ebp-56]
push eax
push 3
push offset _Lt_05E1
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-60], -1
.Lt_05DC:
.Lt_05DB:
jmp .Lt_05D9
.Lt_05DA:
push dword ptr [ebp-44]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_05E4
push 0
push 0
push offset _Lt_0087
push 2916
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_05E4:
cmp dword ptr [ebp-60], 0
jne .Lt_05E6
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05CC
.Lt_05E6:
.Lt_05E5:
push 0
push -1
push 5
push offset _Lt_05E7
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
push 0
push -1
push 4
push offset _Lt_05E9
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
push 0
push -1
push 67
push offset _Lt_05EB
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
push 0
push -1
push 74
push offset _Lt_05EF
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign
add esp, 20
mov dword ptr [ebp-4], -1
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05CC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCOMPILEXPM:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.Lt_05F1:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jne .Lt_05F4
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05F2
.Lt_05F4:
.Lt_05F3:
push 0
push -1
lea eax, [_FBC+136]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push -1
push dword ptr [_FBC+148]
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_05F6
push 0
push -1
push dword ptr [_FBC+148]
call _HSTRIPEXT
add esp, 4
push eax
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrAssign
add esp, 20
.Lt_05F6:
.Lt_05F5:
push 0
push 5
push offset _Lt_05F7
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrConcatAssign
add esp, 20
cmp dword ptr [_FBC+56], 0
je .Lt_05F9
push 2
push 13
push offset _Lt_05FA
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push -1
lea eax, [_FBC+136]
push eax
push -1
push 5
push offset _Lt_05A2
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_05F9:
.Lt_05F8:
lea eax, [ebp-28]
push eax
lea eax, [ebp-16]
push eax
call _HPARSEXPM
add esp, 8
test eax, eax
jne .Lt_05FE
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05F2
.Lt_05FE:
.Lt_05FD:
call _fb_FileFree
mov dword ptr [ebp-32], eax
push 0
push dword ptr [ebp-32]
push 0
push 0
push 3
lea eax, [_FBC+136]
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_0600
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_05F2
.Lt_0600:
.Lt_05FF:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
push 0
lea eax, [ebp-28]
push eax
push dword ptr [ebp-36]
call _fb_PrintString
add esp, 12
push dword ptr [ebp-32]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_0602
push 0
push 0
push offset _Lt_0087
push 2972
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0602:
cmp dword ptr [_FBC+40], 0
jne .Lt_0604
lea eax, [_FBC+136]
push eax
call _FBCADDTEMP
add esp, 4
.Lt_0604:
.Lt_0603:
push 0
push 0
lea eax, [_FBC+136]
push eax
call _HCOMPILEBAS
add esp, 12
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_05F2:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCOMPILESTAGE2MODULE:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_0605:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push 2
push dword ptr [ebp+8]
call _HGETASMNAME
add esp, 8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign
add esp, 20
mov eax, dword ptr [_FBC+48]
not eax
push 3
mov ebx, eax
call _FBGETOPTION
add esp, 4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_FBC+52]
not ecx
or eax, ecx
and ebx, eax
je .Lt_0608
lea eax, [ebp-28]
push eax
call _FBCADDTEMP
add esp, 4
.Lt_0608:
.Lt_0607:
push 2
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .Lt_060B
.Lt_060C:
call _FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_060F
.Lt_0610:
push 0
push 6
push offset _Lt_0611
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_060D
.Lt_060F:
cmp dword ptr [ebp-36], 1
jne .Lt_0612
.Lt_0613:
push 0
push 6
push offset _Lt_0614
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_060D
.Lt_0612:
cmp dword ptr [ebp-36], 4
jne .Lt_0615
.Lt_0616:
push 0
push 6
push offset _Lt_0611
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_060D
.Lt_0615:
cmp dword ptr [ebp-36], 5
jne .Lt_0617
.Lt_0618:
push 0
push 6
push offset _Lt_0614
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0617:
.Lt_060D:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .Lt_061A
cmp dword ptr [_FBC+28], 0
je .Lt_061C
push 0
push 14
push offset _Lt_061D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_061B
.Lt_061C:
push 0
push -1
push -1
push 2
push offset _Lt_00C3
push -1
push 0
call _FBGETGCCARCH
push eax
push 7
push offset _Lt_061E
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
.Lt_061B:
.Lt_061A:
.Lt_0619:
push 32
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_0623
push 0
push 7
push offset _Lt_0624
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0623:
.Lt_0622:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .Lt_0626
push 0
push 90
push offset _Lt_0629
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 30
push offset _Lt_062A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0625
.Lt_0626:
push 0
push 90
push offset _Lt_062C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 70
push offset _Lt_062D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0625:
push 0
push 11
push offset _Lt_062E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 39
push offset _Lt_062F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .Lt_0631
push 0
push 3
push offset _Lt_0632
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 8
call _FBGETOPTION
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_00C3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0631:
.Lt_0630:
push 0
push 22
push offset _Lt_0633
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .Lt_0635
push 0
push 17
push offset _Lt_0636
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0635:
.Lt_0634:
push 0
push 17
push offset _Lt_0637
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 9
push offset _Lt_0638
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 68
push offset _Lt_0639
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 13
push offset _Lt_063A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 13
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_063C
push 0
push 4
push offset _Lt_063D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_063C:
.Lt_063B:
push 5
call _FBGETOPTION
add esp, 4
cmp eax, 1
jne .Lt_063F
push 0
push 21
push offset _Lt_0640
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_063F:
.Lt_063E:
call _FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .Lt_0644
.Lt_0645:
cmp dword ptr [ebp-36], 1
jne .Lt_0643
.Lt_0644:
push 9
call _FBGETOPTION
add esp, 4
test eax, eax
jne .Lt_0647
push 0
push 13
push offset _Lt_0648
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0647:
.Lt_0646:
.Lt_0643:
.Lt_0641:
jmp .Lt_0609
.Lt_060B:
cmp dword ptr [ebp-32], 2
jne .Lt_0649
.Lt_064A:
call _FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_064D
.Lt_064E:
push 0
push 12
push offset _Lt_064F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_064B
.Lt_064D:
cmp dword ptr [ebp-36], 1
jne .Lt_0650
.Lt_0651:
push 0
push 15
push offset _Lt_0652
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_064B
.Lt_0650:
cmp dword ptr [ebp-36], 2
jne .Lt_0653
.Lt_0654:
push 0
push 12
push offset _Lt_0655
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_064B
.Lt_0653:
cmp dword ptr [ebp-36], 3
jne .Lt_0656
.Lt_0657:
push 0
push 16
push offset _Lt_0658
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_064B
.Lt_0656:
cmp dword ptr [ebp-36], 4
jne .Lt_0659
.Lt_065A:
push 0
push 16
push offset _Lt_065B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_064B
.Lt_0659:
cmp dword ptr [ebp-36], 5
jne .Lt_065C
.Lt_065D:
push 0
push 18
push offset _Lt_065E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_065C:
.Lt_064B:
push 32
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_0660
push 0
push 23
push offset _Lt_0661
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0660:
.Lt_065F:
push 0
push 3
push offset _Lt_0632
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 8
call _FBGETOPTION
add esp, 4
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_00C3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
call _FBGETCPUFAMILY
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .Lt_0665
.Lt_0666:
cmp dword ptr [ebp-36], 1
jne .Lt_0664
.Lt_0665:
push 9
call _FBGETOPTION
add esp, 4
test eax, eax
jne .Lt_0668
push 0
push 24
push offset _Lt_0669
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0668:
.Lt_0667:
.Lt_0664:
.Lt_0662:
.Lt_0649:
.Lt_0609:
push 0
push 2
push offset _Lt_0107
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 1
push dword ptr [ebp+8]
call _HGETASMNAME
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_066A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 5
push offset _Lt_066B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 2
push offset _Lt_0107
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 128
lea eax, [_FBC+1602]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 2
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .Lt_066E
.Lt_066F:
mov dword ptr [ebp-36], 3
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
jne .Lt_0671
mov dword ptr [ebp-36], 13
.Lt_0671:
.Lt_0670:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-36]
push offset _Lt_0672
call _FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
jmp .Lt_066C
.Lt_066E:
cmp dword ptr [ebp-32], 2
jne .Lt_0673
.Lt_0674:
lea eax, [ebp-16]
push eax
push 4
push offset _Lt_0675
call _FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
.Lt_0673:
.Lt_066C:
lea eax, [ebp-28]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_0606:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HCOMPILESTAGE2MODULES:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0676:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_0678:
cmp dword ptr [ebp-4], 0
je .Lt_0679
push dword ptr [ebp-4]
call _HCOMPILESTAGE2MODULE
add esp, 4
test eax, eax
jne .Lt_067B
push 1
call _FBCEND
add esp, 4
.Lt_067B:
.Lt_067A:
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_0678
.Lt_0679:
.Lt_0677:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLEMODULE:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.Lt_067C:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
call _FBGETCPUFAMILY
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .Lt_0680
.Lt_0681:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
jne .Lt_0683
push 0
push 12
push offset _Lt_0684
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0682
.Lt_0683:
push 0
push 6
push offset _Lt_0685
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0682:
jmp .Lt_067E
.Lt_0680:
cmp dword ptr [ebp-60], 1
jne .Lt_0686
.Lt_0687:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
jne .Lt_0689
push 0
push 14
push offset _Lt_068A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
jmp .Lt_0688
.Lt_0689:
push 0
push 6
push offset _Lt_068B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0688:
.Lt_0686:
.Lt_067E:
push 13
call _FBGETOPTION
add esp, 4
test eax, eax
jne .Lt_068D
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 9
je .Lt_068F
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .Lt_0691
push 0
push 24
push offset _Lt_0692
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_0691:
.Lt_0690:
.Lt_068F:
.Lt_068E:
.Lt_068D:
.Lt_068C:
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
jne .Lt_0694
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_067D
.Lt_0694:
.Lt_0693:
push 0
push 2
push offset _Lt_0107
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push 2
push dword ptr [ebp+8]
call _HGETASMNAME
add esp, 8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push 3
push offset _Lt_066A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset _Lt_0107
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 5
push offset _Lt_066B
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 128
lea eax, [_FBC+1346]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
mov dword ptr [ebp-56], 0
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
jne .Lt_0699
mov dword ptr [ebp-56], 10
.Lt_0699:
.Lt_0698:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-56]
push offset _Lt_069A
call _FBCRUNBIN
add esp, 12
test eax, eax
jne .Lt_069C
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
jmp .Lt_067D
.Lt_069C:
.Lt_069B:
cmp dword ptr [_FBC+52], 0
jne .Lt_069E
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _FBCADDTEMP
add esp, 4
.Lt_069E:
.Lt_069D:
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_067D:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLEMODULES:
push ebp
mov ebp, esp
sub esp, 4
.Lt_069F:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_06A1:
cmp dword ptr [ebp-4], 0
je .Lt_06A2
push dword ptr [ebp-4]
call _HASSEMBLEMODULE
add esp, 4
test eax, eax
jne .Lt_06A4
push 1
call _FBCEND
add esp, 4
.Lt_06A4:
.Lt_06A3:
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_06A1
.Lt_06A2:
.Lt_06A0:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLERC:
push ebp
mov ebp, esp
sub esp, 88
push ebx
mov dword ptr [ebp-4], 0
.Lt_06A5:
push 0
push 37
push offset _Lt_06A7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 0
push -1
push -1
push 2
push offset _Lt_0107
push -1
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 3
push offset _Lt_011C
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push 0
push -1
push -1
push 2
push offset _Lt_0107
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 3
push offset _Lt_011C
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-16]
push eax
push 7
push offset _Lt_06AE
call _FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
cmp dword ptr [_FBC+52], 0
jne .Lt_06B0
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _FBCADDTEMP
add esp, 4
.Lt_06B0:
.Lt_06AF:
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06A6:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLERCS:
push ebp
mov ebp, esp
sub esp, 4
.Lt_06B1:
lea eax, [_FBC+104]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-4], eax
.Lt_06B3:
cmp dword ptr [ebp-4], 0
je .Lt_06B4
push dword ptr [ebp-4]
call _HASSEMBLERC
add esp, 4
test eax, eax
jne .Lt_06B6
push 1
call _FBCEND
add esp, 4
.Lt_06B6:
.Lt_06B5:
push dword ptr [ebp-4]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-4], eax
jmp .Lt_06B3
.Lt_06B4:
.Lt_06B2:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLEXPM:
.Lt_06B7:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_06BA
push 2
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_06BC
lea eax, [_FBC+136]
push eax
call _HCOMPILESTAGE2MODULE
add esp, 4
.Lt_06BC:
.Lt_06BB:
lea eax, [_FBC+136]
push eax
call _HASSEMBLEMODULE
add esp, 4
test eax, eax
jne .Lt_06BE
push 1
call _FBCEND
add esp, 4
.Lt_06BE:
.Lt_06BD:
.Lt_06BA:
.Lt_06B9:
.Lt_06B8:
ret
.balign 16
_HCOMPILEFBCTINF:
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-4], 0
.Lt_06BF:
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILEC1Ev
add esp, 4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 12
push offset _Lt_001F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push 0
push 12
push offset _Lt_001E
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-36]
mov dword ptr [ebp-12], eax
cmp dword ptr [_FBC+56], 0
je .Lt_06C2
push 2
push 10
push offset _Lt_06C3
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
lea eax, [ebp-24]
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_06C2:
.Lt_06C1:
call _fb_FileFree
mov dword ptr [ebp-40], eax
push 0
push dword ptr [ebp-40]
push 0
push 0
push 3
lea eax, [ebp-24]
push eax
call _fb_FileOpen
add esp, 24
test eax, eax
je .Lt_06C5
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILED1Ev
add esp, 4
jmp .Lt_06C0
.Lt_06C5:
.Lt_06C4:
push dword ptr [ebp-40]
call _fb_FileClose
add esp, 4
test eax, eax
je .Lt_06C6
push 0
push 0
push offset _Lt_0087
push 3348
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_06C6:
cmp dword ptr [_FBC+40], 0
jne .Lt_06C8
lea eax, [ebp-24]
push eax
call _FBCADDTEMP
add esp, 4
.Lt_06C8:
.Lt_06C7:
push -1
push 0
lea eax, [ebp-24]
push eax
call _HCOMPILEBAS
add esp, 12
push 2
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_06CA
lea eax, [ebp-24]
push eax
call _HCOMPILESTAGE2MODULE
add esp, 4
.Lt_06CA:
.Lt_06C9:
lea eax, [ebp-24]
push eax
call _HASSEMBLEMODULE
add esp, 4
mov dword ptr [ebp-4], eax
lea eax, [ebp-36]
push eax
call _fb_StrDelete
add esp, 4
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILED1Ev
add esp, 4
.Lt_06C0:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HARCHIVEFILES:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov dword ptr [ebp-4], 0
.Lt_06CB:
call _HSETOUTNAME
lea eax, [_FBC+428]
push eax
call _fb_StrAllocTempDescZ
add esp, 4
push eax
call _fb_FileKill
add esp, 4
test eax, eax
je .Lt_06CE
.Lt_06CE:
.Lt_06CD:
push 0
push -1
push 3
push offset _Lt_025F
push -1
push 261
lea eax, [_FBC+428]
push eax
push 7
push offset _Lt_06D0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit
add esp, 20
push 34
call _FBGETOPTION
add esp, 4
mov ebx, eax
call _FBISCROSSCOMP
not eax
and ebx, eax
je .Lt_06D4
call _HCOMPILEFBCTINF
test eax, eax
je .Lt_06D6
push 0
push 15
push offset _Lt_06D9
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_06D6:
.Lt_06D5:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 12
push offset _Lt_001E
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-56]
push eax
call _FBCADDTEMP
add esp, 4
lea eax, [ebp-56]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06D4:
.Lt_06D3:
lea eax, [_FBC+188]
push eax
call _LISTGETHEAD
add esp, 4
mov dword ptr [ebp-44], eax
.Lt_06DB:
cmp dword ptr [ebp-44], 0
je .Lt_06DC
push 0
push -1
push -1
push 3
push offset _Lt_066A
push -1
push -1
push dword ptr [ebp-44]
push 2
push offset _Lt_0107
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-44]
call _LISTGETNEXT
add esp, 4
mov dword ptr [ebp-44], eax
jmp .Lt_06DB
.Lt_06DC:
lea eax, [ebp-16]
push eax
push 1
push offset _Lt_06E0
call _FBCRUNBIN
add esp, 12
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06CC:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSETDEFAULTLIBPATHS:
push ebp
mov ebp, esp
sub esp, 28
.Lt_06E1:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 261
lea eax, [_FBC+2915]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
call _FBCADDDEFLIBPATH
add esp, 4
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset _Lt_0009
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _FBCADDDEFLIBPATH
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 3
call _FBGETOPTION
add esp, 4
cmp eax, 11
je .Lt_06E6
push offset _Lt_06E7
call _FBCADDLIBPATHFOR
add esp, 4
.Lt_06E6:
.Lt_06E5:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
jne .Lt_06EA
.Lt_06EB:
push offset _Lt_06EC
call _FBCADDLIBPATHFOR
add esp, 4
jmp .Lt_06E8
.Lt_06EA:
cmp dword ptr [ebp-28], 0
jne .Lt_06ED
.Lt_06EE:
push offset _Lt_06EF
call _FBCADDLIBPATHFOR
add esp, 4
.Lt_06ED:
.Lt_06E8:
.Lt_06E2:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCADDDEFLIB:
push ebp
mov ebp, esp
sub esp, 12
.Lt_06F0:
push -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 0
push 0
push dword ptr [ebp+8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-12]
push eax
lea eax, [_FBC+340]
push eax
call _STRSETADD
add esp, 12
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06F1:
mov esp, ebp
pop ebp
ret
.balign 16
_HGETFBLIBNAMESUFFIX:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_06F3:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 30
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_06F6
push 0
push 3
push offset _Lt_044E
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_06F6:
.Lt_06F5:
push 32
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_06F8
push 0
push 4
push offset _Lt_046B
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign
add esp, 20
.Lt_06F8:
.Lt_06F7:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign
add esp, 20
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
.Lt_06F4:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult
add esp, 4
mov esp, ebp
pop ebp
ret
.balign 16
_HADDDEFAULTLIBS:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_06F9:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
call _HGETFBLIBNAMESUFFIX
push eax
push 3
push offset _Lt_0021
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-24]
call _FBCADDDEFLIB
add esp, 4
lea eax, [ebp-24]
push eax
call _fb_StrDelete
add esp, 4
push 31
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_06FE
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
call _HGETFBLIBNAMESUFFIX
push eax
push 6
push offset _Lt_06FF
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign
add esp, 20
push dword ptr [ebp-48]
call _FBCADDDEFLIB
add esp, 4
lea eax, [ebp-48]
push eax
call _fb_StrDelete
add esp, 4
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-52], eax
jmp .Lt_0703
.Lt_0705:
push offset _Lt_0706
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0707
call _FBCADDDEFLIB
add esp, 4
jmp .Lt_0702
.Lt_0708:
push offset _Lt_0709
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_070A
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_070B
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_070C
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_070D
call _FBCADDDEFLIB
add esp, 4
jmp .Lt_0702
.Lt_0703:
cmp dword ptr [ebp-52], 10
ja .Lt_0702
mov eax, dword ptr [ebp-52]
jmp dword ptr [_.LT_070E+eax*4]
_.LT_070E:
.int .Lt_0705
.int .Lt_0705
.int .Lt_0708
.int .Lt_0702
.int .Lt_0702
.int .Lt_0708
.int .Lt_0708
.int .Lt_0708
.int .Lt_0708
.int .Lt_0708
.int .Lt_0708
.Lt_0702:
.Lt_06FE:
.Lt_06FD:
push 3
call _FBGETOPTION
add esp, 4
mov dword ptr [ebp-28], eax
jmp .Lt_0710
.Lt_0712:
push offset _Lt_0039
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_02B4
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0713
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0714
call _FBCADDDEFLIB
add esp, 4
push 21
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_0716
push offset _Lt_0717
call _FBCADDDEFLIB
add esp, 4
.Lt_0716:
.Lt_0715:
jmp .Lt_070F
.Lt_0718:
push offset _Lt_0039
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0719
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_071A
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_071B
call _FBCADDDEFLIB
add esp, 4
jmp .Lt_070F
.Lt_071C:
push offset _Lt_0039
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_03ED
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0445
call _FBCADDDEFLIB
add esp, 4
push 30
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_071E
push offset _Lt_071A
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_071F
call _FBCADDDEFLIB
add esp, 4
.Lt_071E:
.Lt_071D:
jmp .Lt_070F
.Lt_0720:
push offset _Lt_0039
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_071A
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_03ED
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0445
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_071B
call _FBCADDDEFLIB
add esp, 4
jmp .Lt_070F
.Lt_0721:
push offset _Lt_0039
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_071A
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_03ED
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0445
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_071B
call _FBCADDDEFLIB
add esp, 4
jmp .Lt_070F
.Lt_0722:
push -1
push offset _Lt_0723
call _FBCFINDLIBFILE
add esp, 4
push eax
call _fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_0724
mov ebx, eax
call _FBCFINDLIBFILE
add esp, 4
push eax
call _fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0726
push offset _Lt_0727
call _FBCADDDEFLIB
add esp, 4
jmp .Lt_0725
.Lt_0726:
push offset _Lt_071B
call _FBCADDDEFLIB
add esp, 4
.Lt_0725:
push offset _Lt_0445
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0728
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_071A
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0039
call _FBCADDDEFLIB
add esp, 4
push -1
push offset _Lt_0729
call _FBCFINDLIBFILE
add esp, 4
push eax
call _fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_072A
mov ebx, eax
call _FBCFINDLIBFILE
add esp, 4
push eax
call _fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_072C
push offset _Lt_072D
call _FBCADDDEFLIB
add esp, 4
.Lt_072C:
.Lt_072B:
push offset _Lt_03ED
call _FBCADDDEFLIB
add esp, 4
jmp .Lt_070F
.Lt_072E:
push offset _Lt_0039
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_071A
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_03ED
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0445
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_071B
call _FBCADDDEFLIB
add esp, 4
jmp .Lt_070F
.Lt_072F:
push offset _Lt_0039
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_071A
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_03ED
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0445
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_071B
call _FBCADDDEFLIB
add esp, 4
jmp .Lt_070F
.Lt_0730:
push offset _Lt_0039
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0731
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0713
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0714
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0732
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0733
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0734
call _FBCADDDEFLIB
add esp, 4
push -1
push offset _Lt_0729
call _FBCFINDLIBFILE
add esp, 4
push eax
call _fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_0735
mov ebx, eax
call _FBCFINDLIBFILE
add esp, 4
push eax
call _fb_StrLen
add esp, 8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0737
push offset _Lt_072D
call _FBCADDDEFLIB
add esp, 4
.Lt_0737:
.Lt_0736:
push 21
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_0739
push offset _Lt_0717
call _FBCADDDEFLIB
add esp, 4
.Lt_0739:
.Lt_0738:
jmp .Lt_070F
.Lt_073A:
push offset _Lt_0039
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_06FF
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_073B
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_073C
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_03ED
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_073D
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_073E
call _FBCADDDEFLIB
add esp, 4
push offset _Lt_0445
call _FBCADDDEFLIB
add esp, 4
push 21
call _FBGETOPTION
add esp, 4
test eax, eax
je .Lt_0740
push offset _Lt_0717
call _FBCADDDEFLIB
add esp, 4
.Lt_0740:
.Lt_073F:
jmp .Lt_070F
.Lt_0710:
cmp dword ptr [ebp-28], 10
ja .Lt_070F
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.LT_0741+eax*4]
_.LT_0741:
.int .Lt_0730
.int .Lt_0712
.int .Lt_0722
.int .Lt_071C
.int .Lt_073A
.int .Lt_0720
.int .Lt_0721
.int .Lt_0721
.int .Lt_072F
.int .Lt_0718
.int .Lt_072E
.Lt_070F:
.Lt_06FA:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPRINTOPTIONS:
push ebp
mov ebp, esp
.Lt_0742:
push 1
push 34
push offset _Lt_0744
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 12
push offset _Lt_0745
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 57
push offset _Lt_0746
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 59
push offset _Lt_0747
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 35
push offset _Lt_0748
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 8
push offset _Lt_0749
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 63
push offset _Lt_074A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 49
push offset _Lt_074B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 57
push offset _Lt_074C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 69
push offset _Lt_074D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 48
push offset _Lt_074E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 44
push offset _Lt_074F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 46
push offset _Lt_0750
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 41
push offset _Lt_0751
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 33
push offset _Lt_0752
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 69
push offset _Lt_0753
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 48
push offset _Lt_0754
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .Lt_0756
push 1
push 47
push offset _Lt_0757
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 60
push offset _Lt_0758
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 38
push offset _Lt_0759
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 33
push offset _Lt_075A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 50
push offset _Lt_075B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 47
push offset _Lt_075C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_0756:
.Lt_0755:
push 1
push 41
push offset _Lt_075D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 62
push offset _Lt_075E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 53
push offset _Lt_075F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 61
push offset _Lt_0760
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 65
push offset _Lt_0761
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 33
push offset _Lt_0762
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 75
push offset _Lt_0763
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .Lt_0765
push 1
push 51
push offset _Lt_0766
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 43
push offset _Lt_0767
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 38
push offset _Lt_0768
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_0764
.Lt_0765:
push 1
push 51
push offset _Lt_0769
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_0764:
push 1
push 40
push offset _Lt_076A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 50
push offset _Lt_076B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 58
push offset _Lt_076C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 36
push offset _Lt_076D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 64
push offset _Lt_076E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 42
push offset _Lt_076F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 76
push offset _Lt_0770
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 43
push offset _Lt_0771
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 39
push offset _Lt_0772
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 45
push offset _Lt_0773
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 55
push offset _Lt_0774
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 63
push offset _Lt_0775
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 78
push offset _Lt_0776
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 71
push offset _Lt_0777
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 74
push offset _Lt_0778
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 50
push offset _Lt_0779
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 44
push offset _Lt_077A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 80
push offset _Lt_077B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 67
push offset _Lt_077C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 47
push offset _Lt_077D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 53
push offset _Lt_077E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 51
push offset _Lt_077F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 69
push offset _Lt_0780
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .Lt_0782
push 1
push 73
push offset _Lt_0783
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_0782:
.Lt_0781:
push 1
push 44
push offset _Lt_0784
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 65
push offset _Lt_0785
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 48
push offset _Lt_0786
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 60
push offset _Lt_0787
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 47
push offset _Lt_0788
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 41
push offset _Lt_0789
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 66
push offset _Lt_078A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 73
push offset _Lt_078B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 67
push offset _Lt_078C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 75
push offset _Lt_078D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .Lt_078F
push 1
push 47
push offset _Lt_0790
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
jmp .Lt_078E
.Lt_078F:
push 1
push 47
push offset _Lt_0790
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_078E:
push 1
push 47
push offset _Lt_0791
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 29
push offset _Lt_0792
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 61
push offset _Lt_0793
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 40
push offset _Lt_0794
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 70
push offset _Lt_0795
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .Lt_0797
push 1
push 38
push offset _Lt_0798
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 39
push offset _Lt_0799
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 44
push offset _Lt_079A
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 57
push offset _Lt_079B
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 49
push offset _Lt_079C
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 50
push offset _Lt_079D
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 45
push offset _Lt_079E
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 49
push offset _Lt_079F
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_0797:
.Lt_0796:
push 1
push 39
push offset _Lt_07A0
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 72
push offset _Lt_07A1
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 39
push offset _Lt_07A2
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 58
push offset _Lt_07A3
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
cmp dword ptr [ebp+8], 0
je .Lt_07A5
push 1
push 56
push offset _Lt_07A6
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 70
push offset _Lt_07A7
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_07A5:
.Lt_07A4:
.Lt_0743:
mov esp, ebp
pop ebp
ret
.balign 16
_HPRINTVERSION:
push ebp
mov ebp, esp
sub esp, 60
.Lt_07AE:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 1
push 5
push offset _Lt_07B6
push -1
push -1
call _FBGETHOSTBITS
push eax
call _fb_IntToStr
add esp, 4
push eax
push -1
push 3
push offset _Lt_0574
push -1
push -1
call _FBGETHOSTID
push eax
push 61
push offset _Lt_07B5
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat
add esp, 20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat
add esp, 20
push eax
push 0
call _fb_PrintString
add esp, 12
push 1
push 55
push offset _Lt_07BB
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen
add esp, 8
test eax, eax
jle .Lt_07BD
push 1
lea eax, [ebp-12]
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_07BD:
.Lt_07BC:
cmp dword ptr [ebp+8], 0
je .Lt_07BF
call _FBCPRINTTARGETINFO
jmp .Lt_07C1
push 1
push 14
push offset _Lt_07C2
call _fb_StrAllocTempDescZEx
add esp, 8
push eax
push 0
call _fb_PrintString
add esp, 12
.Lt_07C1:
.Lt_07C0:
.Lt_07BF:
.Lt_07BE:
lea eax, [ebp-12]
push eax
call _fb_StrDelete
add esp, 4
.Lt_07AF:
mov esp, ebp
pop ebp
ret
.balign 16
__GLOBAL__I:
.Lt_07F5:
push offset _FBC
call __ZN6FBCCTXC1Ev
add esp, 4
.Lt_07F6:
ret
.balign 16
__GLOBAL__D:
.Lt_07F8:
push offset _FBC
call __ZN6FBCCTXD1Ev
add esp, 4
.Lt_07F9:
ret

.section .data
.balign 4
_Lt_0000:	.ascii	"\0"
.balign 4
_Lt_0005:	.ascii	"This program requires at least a 486 to run.\0"
.balign 4
_Lt_0006:	.ascii	"1\0"
.balign 4
_Lt_0008:	.ascii	"0\0"
.balign 4
_Lt_0009:	.ascii	".\0"
.balign 4
_Lt_001B:	.ascii	".exe\0"
.balign 4
_Lt_001C:	.ascii	"\\\0"
.balign 4
_Lt_001E:	.ascii	"__fb_ct.inf\0"
.balign 4
_Lt_001F:	.ascii	"__fb_ct.bas\0"
.balign 4
_Lt_0021:	.ascii	"fb\0"
.balign 4
_TOOLNAMES:
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
.balign 4
_Lt_0039:	.ascii	"gcc\0"

.section .bss
.balign 4
	.lcomm	_FBC,3184

.section .data
.balign 4
_Lt_004A:	.ascii	"lib\0"
.balign 4
_Lt_004B:	.ascii	".a\0"
.balign 4
_Lt_005D:	.ascii	".html\0"
.balign 4
_Lt_0066:	.ascii	".dll\0"
.balign 4
_Lt_0070:	.ascii	".so\0"
.balign 4
_Lt_0076:	.ascii	".dxe\0"
.balign 4
_Lt_0087:	.ascii	"src/compiler/fbc.bas\0"
.balign 4
_Lt_0093:	.ascii	" -m32\0"
.balign 4
_Lt_0096:	.ascii	" -m64\0"
.balign 4
_Lt_009B:	.ascii	" -print-file-name=\0"
.balign 4
_Lt_00C1:	.ascii	": \0"
.balign 4
_Lt_00C3:	.ascii	" \0"
.balign 4
_Lt_00CF:	.ascii	" failed: '\0"
.balign 4
_Lt_00D0:	.ascii	"' terminated with exit code \0"
.balign 4
_Lt_00D7:	.ascii	"ldopt.tmp\0"
.balign 4
_Lt_00E0:	.ascii	"ld options in '\0"
.balign 4
_Lt_00E1:	.ascii	"': \0"
.balign 4
_Lt_00E4:	.ascii	"@\0"
.balign 4
_Lt_00EA:	.ascii	".clean.def\0"
.balign 4
_Lt_00F1:	.ascii	"DATA\0"
.balign 4
_Lt_00FC:	.ascii	"EXPORTS\0"
.balign 4
_Lt_0106:	.ascii	"--def \"\0"
.balign 4
_Lt_0107:	.ascii	"\"\0"
.balign 4
_Lt_010B:	.ascii	" --dllname \"\0"
.balign 4
_Lt_010C:	.ascii	" --output-lib \"\0"
.balign 4
_Lt_010D:	.ascii	".dll.a\"\0"
.balign 4
_Lt_0113:	.ascii	"creating import library\0"
.balign 4
_Lt_011C:	.ascii	" \"\0"
.balign 4
_Lt_0120:	.ascii	" --version\0"
.balign 4
_Lt_0121:	.ascii	"GNU gold\0"
.balign 4
_Lt_0130:	.ascii	"-m i386pe \0"
.balign 4
_Lt_0133:	.ascii	"-m i386pep \0"
.balign 4
_Lt_013A:	.ascii	"-m elf_i386 \0"
.balign 4
_Lt_013D:	.ascii	"-m elf_x86_64 \0"
.balign 4
_Lt_0140:	.ascii	"-m armelf_linux_eabi \0"
.balign 4
_Lt_0141:	.ascii	"-o \0"
.balign 4
_Lt_0142:	.ascii	"\"\0"
.balign 4
_Lt_0143:	.ascii	"-o \"\0"
.balign 4
_Lt_0146:	.ascii	" -I \"\0"
.balign 4
_Lt_0148:	.ascii	"_il.a\"\0"
.balign 4
_Lt_0149:	.ascii	" -U\0"
.balign 4
_Lt_0151:	.ascii	" -lc\0"
.balign 4
_Lt_0159:	.ascii	"making DXE\0"
.balign 4
_Lt_0160:	.ascii	"console\0"
.balign 4
_Lt_0161:	.ascii	"gui\0"
.balign 4
_Lt_0164:	.ascii	"windows\0"
.balign 4
_Lt_0165:	.ascii	" -subsystem \0"
.balign 4
_Lt_016A:	.ascii	" --dll --enable-stdcall-fixup\0"
.balign 4
_Lt_016D:	.ascii	" -e _DllMainCRTStartup@12\0"
.balign 4
_Lt_016E:	.ascii	" -e DllMainCRTStartup\0"
.balign 4
_Lt_0174:	.ascii	" -shared -h\0"
.balign 4
_Lt_017B:	.ascii	" -dynamic-linker /libexec/ld-elf.so.1\0"
.balign 4
_Lt_017D:	.ascii	" -dynamic-linker /libexec/ld-elf.so.2\0"
.balign 4
_Lt_017F:	.ascii	" -dynamic-linker /lib/64/ld.so.1\0"
.balign 4
_Lt_0185:	.ascii	" -dynamic-linker /lib/ld-linux.so.2\0"
.balign 4
_Lt_0188:	.ascii	" -dynamic-linker /lib64/ld-linux-x86-64.so.2\0"
.balign 4
_Lt_018B:	.ascii	" -dynamic-linker /lib/ld-linux-armhf.so.3\0"
.balign 4
_Lt_018E:	.ascii	" -dynamic-linker /lib/ld-linux-aarch64.so.1\0"
.balign 4
_Lt_0190:	.ascii	" -dynamic-linker /usr/libexec/ld.elf_so\0"
.balign 4
_Lt_0192:	.ascii	" -dynamic-linker /usr/libexec/ld.so\0"
.balign 4
_Lt_0196:	.ascii	" --export-dynamic\0"
.balign 4
_Lt_0198:	.ascii	" -nostdlib --file-alignment 0x20 --section-alignment 0x20 -shared\0"
.balign 4
_Lt_019A:	.ascii	" -O\0"
.balign 4
_Lt_01A0:	.ascii	" -Wno-warn-absolute-paths\0"
.balign 4
_Lt_01A5:	.ascii	" -s \0"
.balign 4
_Lt_01A6:	.ascii	" --shell-file\0"
.balign 4
_Lt_01A7:	.ascii	"fb_shell.html\0"
.balign 4
_Lt_01A8:	.ascii	" --post-js\0"
.balign 4
_Lt_01A9:	.ascii	"fb_rtlib.js\0"
.balign 4
_Lt_01AC:	.ascii	"termlib_min.js\0"
.balign 4
_Lt_01B0:	.ascii	" -T \"\0"
.balign 4
_Lt_01B2:	.ascii	"\\i386go32.x\"\0"
.balign 4
_Lt_01B6:	.ascii	"\\fbextra.x\"\0"
.balign 4
_Lt_01BB:	.ascii	" --stack \0"
.balign 4
_Lt_01BC:	.ascii	",\0"
.balign 4
_Lt_01C0:	.ascii	".def\0"
.balign 4
_Lt_01C1:	.ascii	" --output-def \"\0"
.balign 4
_Lt_01C3:	.ascii	" -e _WinMainCRTStartup\0"
.balign 4
_Lt_01C7:	.ascii	" -Bstatic\0"
.balign 4
_Lt_01CA:	.ascii	" -Map \0"
.balign 4
_Lt_01D1:	.ascii	" -s\0"
.balign 4
_Lt_01D4:	.ascii	" -L \"\0"
.balign 4
_Lt_01D5:	.ascii	" -L\"\0"
.balign 4
_Lt_01E1:	.ascii	"crt0.o\0"
.balign 4
_Lt_01E4:	.ascii	"gcrt0.o\0"
.balign 4
_Lt_01E8:	.ascii	"dllcrt2.o\0"
.balign 4
_Lt_01E9:	.ascii	"crt2.o\0"
.balign 4
_Lt_01EC:	.ascii	"gcrt2.o\0"
.balign 4
_Lt_01ED:	.ascii	"crtbegin.o\0"
.balign 4
_Lt_01FB:	.ascii	"gcrt1.o\0"
.balign 4
_Lt_0202:	.ascii	"crt1.o\0"
.balign 4
_Lt_0208:	.ascii	"crti.o\0"
.balign 4
_Lt_020B:	.ascii	"crtbeginS.o\0"
.balign 4
_Lt_0214:	.ascii	"fbrt0pic.o\0"
.balign 4
_Lt_0215:	.ascii	"fbrt0.o\0"
.balign 4
_Lt_021F:	.ascii	" \"-(\"\0"
.balign 4
_Lt_022B:	.ascii	" -l\0"
.balign 4
_Lt_0232:	.ascii	" \"-)\"\0"
.balign 4
_Lt_0233:	.ascii	" -lfb\0"
.balign 4
_Lt_023A:	.ascii	"crtendS.o\0"
.balign 4
_Lt_023B:	.ascii	"crtend.o\0"
.balign 4
_Lt_023E:	.ascii	"crtn.o\0"
.balign 4
_Lt_0243:	.ascii	" -macosx_version_min 10.6\0"
.balign 4
_Lt_0248:	.ascii	"linking\0"
.balign 4
_Lt_025E:	.ascii	"-TITLE:\"\0"
.balign 4
_Lt_025F:	.ascii	"\" \0"
.balign 4
_Lt_0263:	.ascii	"-DUMPINFO:\"\0"
.balign 4
_Lt_0266:	.ascii	".cxbe\"\0"
.balign 4
_Lt_0268:	.ascii	" -OUT:\"\0"
.balign 4
_Lt_026A:	.ascii	".xbe\0"
.balign 4
_Lt_026B:	.ascii	" \"\0"
.balign 4
_Lt_026E:	.ascii	" >nul\0"
.balign 4
_Lt_0271:	.ascii	"cxbe: \0"
.balign 4
_Lt_0279:	.ascii	"cxbe failed: exit code \0"
.balign 4
_Lt_02AC:	.ascii	".o\0"
.balign 4
_GNUOSMAP:
.int _Lt_02B1
.int 2
.int _Lt_02B2
.int 0
.int _Lt_02B3
.int 3
.int _Lt_02B4
.int 1
.int _Lt_02B5
.int 9
.int _Lt_02B6
.int 5
.int _Lt_02B7
.int 6
.int _Lt_02B8
.int 7
.int _Lt_02B9
.int 10
.int _Lt_02BA
.int 8
.int _Lt_02BB
.int 4
.balign 4
_Lt_02B1:	.ascii	"linux\0"
.balign 4
_Lt_02B2:	.ascii	"mingw\0"
.balign 4
_Lt_02B3:	.ascii	"djgpp\0"
.balign 4
_Lt_02B4:	.ascii	"cygwin\0"
.balign 4
_Lt_02B5:	.ascii	"darwin\0"
.balign 4
_Lt_02B6:	.ascii	"freebsd\0"
.balign 4
_Lt_02B7:	.ascii	"dragonfly\0"
.balign 4
_Lt_02B8:	.ascii	"solaris\0"
.balign 4
_Lt_02B9:	.ascii	"netbsd\0"
.balign 4
_Lt_02BA:	.ascii	"openbsd\0"
.balign 4
_Lt_02BB:	.ascii	"xbox\0"
.balign 4
_GNUARCHMAP:
.int _Lt_02BD
.int 0
.int _Lt_02BE
.int 1
.int _Lt_02BF
.int 2
.int _Lt_02C0
.int 3
.int _Lt_02C1
.int 1
.int _Lt_02C2
.int 13
.int _Lt_02C3
.int 13
.int _Lt_02C4
.int 14
.int _Lt_02C5
.int 15
.int _Lt_02C6
.int 15
.int _Lt_02C7
.int 16
.int _Lt_02C8
.int 17
.int _Lt_02C9
.int 18
.balign 4
_Lt_02BD:	.ascii	"i386\0"
.balign 4
_Lt_02BE:	.ascii	"i486\0"
.balign 4
_Lt_02BF:	.ascii	"i586\0"
.balign 4
_Lt_02C0:	.ascii	"i686\0"
.balign 4
_Lt_02C1:	.ascii	"x86\0"
.balign 4
_Lt_02C2:	.ascii	"x86_64\0"
.balign 4
_Lt_02C3:	.ascii	"amd64\0"
.balign 4
_Lt_02C4:	.ascii	"armv6\0"
.balign 4
_Lt_02C5:	.ascii	"armv7a\0"
.balign 4
_Lt_02C6:	.ascii	"arm\0"
.balign 4
_Lt_02C7:	.ascii	"aarch64\0"
.balign 4
_Lt_02C8:	.ascii	"powerpc\0"
.balign 4
_Lt_02C9:	.ascii	"powerpc64\0"
.balign 4
_FBOSARCHMAP:
.int _Lt_02DB
.int 0
.int 1
.int _Lt_02DC
.int 0
.int 13
.int _Lt_02B7
.int 6
.int 13
.int _Lt_02B8
.int 7
.int 13
.int _Lt_02DD
.int 3
.int 1
.int _Lt_02BB
.int 4
.int 1
.int _Lt_02B4
.int 1
.int 1
.int _Lt_02B5
.int 9
.int 1
.int _Lt_02B6
.int 5
.int 1
.int _Lt_02B1
.int 2
.int 1
.int _Lt_02B9
.int 10
.int 1
.int _Lt_02BA
.int 8
.int 1
.balign 4
_Lt_02DB:	.ascii	"win32\0"
.balign 4
_Lt_02DC:	.ascii	"win64\0"
.balign 4
_Lt_02DD:	.ascii	"dos\0"
.balign 4
_Lt_02E7:	.ascii	"-\0"
.balign 4
_OPTION_TAKES_ARGUMENT:
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
.balign 4
_Lt_02F7:	.ascii	"native\0"
.balign 4
_Lt_02FA:	.ascii	"-arch \0"
.balign 4
_Lt_0301:	.ascii	"att\0"
.balign 4
_Lt_0304:	.ascii	"intel\0"
.balign 4
_Lt_031D:	.ascii	"PRECISE\0"
.balign 4
_Lt_0320:	.ascii	"FAST\0"
.balign 4
_Lt_0327:	.ascii	"X87\0"
.balign 4
_Lt_0328:	.ascii	"FPU\0"
.balign 4
_Lt_032C:	.ascii	"SSE\0"
.balign 4
_Lt_0334:	.ascii	"gas\0"
.balign 4
_Lt_0339:	.ascii	"llvm\0"
.balign 4
_Lt_033C:	.ascii	"gas64\0"
.balign 4
_Lt_034B:	.ascii	"inf\0"
.balign 4
_Lt_0359:	.ascii	"max\0"
.balign 4
_Lt_0368:	.ascii	"host\0"
.balign 4
_Lt_036B:	.ascii	"target\0"
.balign 4
_Lt_036E:	.ascii	"x\0"
.balign 4
_Lt_0371:	.ascii	"fblibdir\0"
.balign 4
_Lt_0374:	.ascii	"sha-1\0"
.balign 4
_Lt_0391:	.ascii	"NONE\0"
.balign 4
_Lt_0397:	.ascii	"2\0"
.balign 4
_Lt_039F:	.ascii	"all\0"
.balign 4
_Lt_03A2:	.ascii	"none\0"
.balign 4
_Lt_03A5:	.ascii	"param\0"
.balign 4
_Lt_03A8:	.ascii	"escape\0"
.balign 4
_Lt_03AB:	.ascii	"next\0"
.balign 4
_Lt_03AE:	.ascii	"signedness\0"
.balign 4
_Lt_03B1:	.ascii	"constness\0"
.balign 4
_Lt_03B4:	.ascii	"funcptr\0"
.balign 4
_Lt_03B7:	.ascii	"suffix\0"
.balign 4
_Lt_03BA:	.ascii	"pedantic\0"
.balign 4
_Lt_03D2:	.ascii	"gosub-setjmp\0"
.balign 4
_Lt_03D5:	.ascii	"valist-as-ptr\0"
.balign 4
_Lt_03DF:	.ascii	"a\0"
.balign 4
_Lt_03E2:	.ascii	"arch\0"
.balign 4
_Lt_03E5:	.ascii	"asm\0"
.balign 4
_Lt_03ED:	.ascii	"c\0"
.balign 4
_Lt_03F8:	.ascii	"dll\0"
.balign 4
_Lt_03FB:	.ascii	"dylib\0"
.balign 4
_Lt_0402:	.ascii	"ex\0"
.balign 4
_Lt_0405:	.ascii	"earray\0"
.balign 4
_Lt_0408:	.ascii	"eassert\0"
.balign 4
_Lt_040B:	.ascii	"edebug\0"
.balign 4
_Lt_040E:	.ascii	"edebuginfo\0"
.balign 4
_Lt_0411:	.ascii	"elocation\0"
.balign 4
_Lt_0414:	.ascii	"enullptr\0"
.balign 4
_Lt_0417:	.ascii	"exx\0"
.balign 4
_Lt_041A:	.ascii	"export\0"
.balign 4
_Lt_041F:	.ascii	"forcelang\0"
.balign 4
_Lt_0422:	.ascii	"fpmode\0"
.balign 4
_Lt_0425:	.ascii	"fpu\0"
.balign 4
_Lt_042C:	.ascii	"gen\0"
.balign 4
_Lt_0431:	.ascii	"help\0"
.balign 4
_Lt_0438:	.ascii	"include\0"
.balign 4
_Lt_043F:	.ascii	"lang\0"
.balign 4
_Lt_0445:	.ascii	"m\0"
.balign 4
_Lt_0448:	.ascii	"map\0"
.balign 4
_Lt_044B:	.ascii	"maxerr\0"
.balign 4
_Lt_044E:	.ascii	"mt\0"
.balign 4
_Lt_0453:	.ascii	"noerrline\0"
.balign 4
_Lt_0456:	.ascii	"nodeflibs\0"
.balign 4
_Lt_0459:	.ascii	"noobjinfo\0"
.balign 4
_Lt_045C:	.ascii	"nostrip\0"
.balign 4
_Lt_0460:	.ascii	"o\0"
.balign 4
_Lt_046B:	.ascii	"pic\0"
.balign 4
_Lt_046E:	.ascii	"pp\0"
.balign 4
_Lt_0471:	.ascii	"prefix\0"
.balign 4
_Lt_0474:	.ascii	"print\0"
.balign 4
_Lt_0477:	.ascii	"profile\0"
.balign 4
_Lt_047E:	.ascii	"rr\0"
.balign 4
_Lt_0485:	.ascii	"RR\0"
.balign 4
_Lt_048C:	.ascii	"showincludes\0"
.balign 4
_Lt_048F:	.ascii	"static\0"
.balign 4
_Lt_0492:	.ascii	"strip\0"
.balign 4
_Lt_049B:	.ascii	"title\0"
.balign 4
_Lt_04A2:	.ascii	"vec\0"
.balign 4
_Lt_04A5:	.ascii	"version\0"
.balign 4
_Lt_04AE:	.ascii	"Wa\0"
.balign 4
_Lt_04B1:	.ascii	"Wl\0"
.balign 4
_Lt_04B4:	.ascii	"Wc\0"
.balign 4
_Lt_04BF:	.ascii	"-version\0"
.balign 4
_Lt_04C2:	.ascii	"-help\0"
.balign 4
_Lt_04E1:	.ascii	"bas\0"
.balign 4
_Lt_04E8:	.ascii	"rc\0"
.balign 4
_Lt_04E9:	.ascii	"res\0"
.balign 4
_Lt_04ED:	.ascii	"xpm\0"
.balign 4
_Lt_055A:	.ascii	"..\\\0"
.balign 4
_Lt_055F:	.ascii	"freebas\0"
.balign 4
_Lt_0560:	.ascii	"bin\0"
.balign 4
_Lt_056E:	.ascii	", \0"
.balign 4
_Lt_0571:	.ascii	"bit\0"
.balign 4
_Lt_0574:	.ascii	" (\0"
.balign 4
_Lt_0575:	.ascii	")\0"
.balign 4
_Lt_0576:	.ascii	"target:\0"
.balign 4
_Lt_0577:	.ascii	"backend:\0"
.balign 4
_Lt_0580:	.ascii	"unnamed\0"
.balign 4
_Lt_0586:	.ascii	".asm\0"
.balign 4
_Lt_0589:	.ascii	".a64\0"
.balign 4
_Lt_0590:	.ascii	".c\0"
.balign 4
_Lt_0593:	.ascii	".ll\0"
.balign 4
_Lt_059D:	.ascii	".pp.bas\0"
.balign 4
_Lt_05A1:	.ascii	"compiling: \0"
.balign 4
_Lt_05A2:	.ascii	" -o \0"
.balign 4
_Lt_05A5:	.ascii	" -pp \0"
.balign 4
_Lt_05A9:	.ascii	" (main module)\0"
.balign 4
_Lt_05AB:	.ascii	" (FB compile-time info)\0"
.balign 4
_Lt_05CD:	.ascii	"\ndim shared as zstring ptr \0"
.balign 4
_Lt_05CF:	.ascii	"fb_program_icon_data\0"
.balign 4
_Lt_05D1:	.ascii	"(0 to ...) = _\n{ _\n\0"
.balign 4
_Lt_05D5:	.ascii	"/* XPM */\0"
.balign 4
_Lt_05DF:	.ascii	", _\n\0"
.balign 4
_Lt_05E1:	.ascii	"\t@\0"
.balign 4
_Lt_05E7:	.ascii	" _ \n\0"
.balign 4
_Lt_05E9:	.ascii	"}\n\n\0"
.balign 4
_Lt_05EB:	.ascii	"extern as zstring ptr ptr fb_program_icon alias \"fb_program_icon\"\n\0"
.balign 4
_Lt_05EF:	.ascii	"dim shared as zstring ptr ptr fb_program_icon = @fb_program_icon_data(0)\n\0"
.balign 4
_Lt_05F7:	.ascii	".bas\0"
.balign 4
_Lt_05FA:	.ascii	"parsing xpm: \0"
.balign 4
_Lt_0611:	.ascii	"-m32 \0"
.balign 4
_Lt_0614:	.ascii	"-m64 \0"
.balign 4
_Lt_061D:	.ascii	"-mcpu=native \0"
.balign 4
_Lt_061E:	.ascii	"-mcpu=\0"
.balign 4
_Lt_0624:	.ascii	"-fPIC \0"
.balign 4
_Lt_0629:	.ascii	"-S -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable \0"
.balign 4
_Lt_062A:	.ascii	"-Wno-unused-but-set-variable \0"
.balign 4
_Lt_062C:	.ascii	"-c -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable \0"
.balign 4
_Lt_062D:	.ascii	"-Wno-warn-absolute-paths -s ASYNCIFY=1 -s RETAIN_COMPILER_SETTINGS=1 \0"
.balign 4
_Lt_062E:	.ascii	"-Wno-main \0"
.balign 4
_Lt_062F:	.ascii	"-Werror-implicit-function-declaration \0"
.balign 4
_Lt_0632:	.ascii	"-O\0"
.balign 4
_Lt_0633:	.ascii	"-fno-strict-aliasing \0"
.balign 4
_Lt_0636:	.ascii	"-frounding-math \0"
.balign 4
_Lt_0637:	.ascii	"-fno-math-errno \0"
.balign 4
_Lt_0638:	.ascii	"-fwrapv \0"
.balign 4
_Lt_0639:	.ascii	"-fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables \0"
.balign 4
_Lt_063A:	.ascii	"-Wno-format \0"
.balign 4
_Lt_063D:	.ascii	"-g \0"
.balign 4
_Lt_0640:	.ascii	"-mfpmath=sse -msse2 \0"
.balign 4
_Lt_0648:	.ascii	"-masm=intel \0"
.balign 4
_Lt_064F:	.ascii	"-march=x86 \0"
.balign 4
_Lt_0652:	.ascii	"-march=x86-64 \0"
.balign 4
_Lt_0655:	.ascii	"-march=arm \0"
.balign 4
_Lt_0658:	.ascii	"-march=armv8-a \0"
.balign 4
_Lt_065B:	.ascii	"-march=powerpc \0"
.balign 4
_Lt_065E:	.ascii	"-march=powerpc64 \0"
.balign 4
_Lt_0661:	.ascii	"-relocation-model=pic \0"
.balign 4
_Lt_0669:	.ascii	"--x86-asm-syntax=intel \0"
.balign 4
_Lt_066A:	.ascii	"\" \0"
.balign 4
_Lt_066B:	.ascii	"-o \"\0"
.balign 4
_Lt_0672:	.ascii	"compiling C\0"
.balign 4
_Lt_0675:	.ascii	"compiling LLVM IR\0"
.balign 4
_Lt_0684:	.ascii	"-arch i386 \0"
.balign 4
_Lt_0685:	.ascii	"--32 \0"
.balign 4
_Lt_068A:	.ascii	"-arch x86_64 \0"
.balign 4
_Lt_068B:	.ascii	"--64 \0"
.balign 4
_Lt_0692:	.ascii	"--strip-local-absolute \0"
.balign 4
_Lt_069A:	.ascii	"assembling\0"
.balign 4
_Lt_06A7:	.ascii	"--output-format=coff --include-dir=.\0"
.balign 4
_Lt_06AE:	.ascii	"compiling rc\0"
.balign 4
_Lt_06C3:	.ascii	"creating: \0"
.balign 4
_Lt_06D0:	.ascii	"-rsc \"\0"
.balign 4
_Lt_06D9:	.ascii	"\"__fb_ct.inf\" \0"
.balign 4
_Lt_06E0:	.ascii	"archiving\0"
.balign 4
_Lt_06E7:	.ascii	"libgcc.a\0"
.balign 4
_Lt_06EC:	.ascii	"libm.a\0"
.balign 4
_Lt_06EF:	.ascii	"libmingw32.a\0"
.balign 4
_Lt_06FF:	.ascii	"fbgfx\0"
.balign 4
_Lt_0706:	.ascii	"gdi32\0"
.balign 4
_Lt_0707:	.ascii	"winmm\0"
.balign 4
_Lt_0709:	.ascii	"X11\0"
.balign 4
_Lt_070A:	.ascii	"Xext\0"
.balign 4
_Lt_070B:	.ascii	"Xpm\0"
.balign 4
_Lt_070C:	.ascii	"Xrandr\0"
.balign 4
_Lt_070D:	.ascii	"Xrender\0"
.balign 4
_Lt_0713:	.ascii	"kernel32\0"
.balign 4
_Lt_0714:	.ascii	"user32\0"
.balign 4
_Lt_0717:	.ascii	"gmon\0"
.balign 4
_Lt_0719:	.ascii	"System\0"
.balign 4
_Lt_071A:	.ascii	"pthread\0"
.balign 4
_Lt_071B:	.ascii	"ncurses\0"
.balign 4
_Lt_071F:	.ascii	"socket\0"
.balign 4
_Lt_0723:	.ascii	"libtinfo.a\0"
.balign 4
_Lt_0724:	.ascii	"libtinfo.so\0"
.balign 4
_Lt_0727:	.ascii	"tinfo\0"
.balign 4
_Lt_0728:	.ascii	"dl\0"
.balign 4
_Lt_0729:	.ascii	"libgcc_eh.a\0"
.balign 4
_Lt_072A:	.ascii	"libgcc_eh.so\0"
.balign 4
_Lt_072D:	.ascii	"gcc_eh\0"
.balign 4
_Lt_0731:	.ascii	"msvcrt\0"
.balign 4
_Lt_0732:	.ascii	"mingw32\0"
.balign 4
_Lt_0733:	.ascii	"mingwex\0"
.balign 4
_Lt_0734:	.ascii	"moldname\0"
.balign 4
_Lt_0735:	.ascii	"libgcc_eh.dll.a\0"
.balign 4
_Lt_073B:	.ascii	"openxdk\0"
.balign 4
_Lt_073C:	.ascii	"hal\0"
.balign 4
_Lt_073D:	.ascii	"usb\0"
.balign 4
_Lt_073E:	.ascii	"xboxkrnl\0"
.balign 4
_Lt_0744:	.ascii	"usage: fbc [options] <input files>\0"
.balign 4
_Lt_0745:	.ascii	"input files:\0"
.balign 4
_Lt_0746:	.ascii	"  *.a = static library, *.o = object file, *.bas = source\0"
.balign 4
_Lt_0747:	.ascii	"  *.rc = resource script, *.res = compiled resource (win32)\0"
.balign 4
_Lt_0748:	.ascii	"  *.xpm = icon resource (*nix/*bsd)\0"
.balign 4
_Lt_0749:	.ascii	"options:\0"
.balign 4
_Lt_074A:	.ascii	"  @<file>          Read more command line arguments from a file\0"
.balign 4
_Lt_074B:	.ascii	"  -a <file>        Treat file as .o/.a input file\0"
.balign 4
_Lt_074C:	.ascii	"  -arch <type>     Set target architecture (default: 486)\0"
.balign 4
_Lt_074D:	.ascii	"  -asm att|intel   Set asm format (-gen gcc|llvm, x86 or x86_64 only)\0"
.balign 4
_Lt_074E:	.ascii	"  -b <file>        Treat file as .bas input file\0"
.balign 4
_Lt_074F:	.ascii	"  -c               Compile only, do not link\0"
.balign 4
_Lt_0750:	.ascii	"  -C               Preserve temporary .o files\0"
.balign 4
_Lt_0751:	.ascii	"  -d <name>[=<val>]  Add a global #define\0"
.balign 4
_Lt_0752:	.ascii	"  -dll             Same as -dylib\0"
.balign 4
_Lt_0753:	.ascii	"  -dylib           Create a DLL (win32) or shared library (*nix/*BSD)\0"
.balign 4
_Lt_0754:	.ascii	"  -e               Enable runtime error checking\0"
.balign 4
_Lt_0757:	.ascii	"  -earray          Enable array bounds checking\0"
.balign 4
_Lt_0758:	.ascii	"  -eassert         Enable assert() and assertwarn() checking\0"
.balign 4
_Lt_0759:	.ascii	"  -edebug          Enable __FB_DEBUG__\0"
.balign 4
_Lt_075A:	.ascii	"  -edebuginfo      Add debug info\0"
.balign 4
_Lt_075B:	.ascii	"  -elocation       Enable error location reporting\0"
.balign 4
_Lt_075C:	.ascii	"  -enullptr        Enable null-pointer checking\0"
.balign 4
_Lt_075D:	.ascii	"  -ex              -e plus RESUME support\0"
.balign 4
_Lt_075E:	.ascii	"  -exx             -ex plus array bounds/null-pointer checking\0"
.balign 4
_Lt_075F:	.ascii	"  -export          Export symbols for dynamic linkage\0"
.balign 4
_Lt_0760:	.ascii	"  -forcelang <name>  Override #lang statements in source code\0"
.balign 4
_Lt_0761:	.ascii	"  -fpmode fast|precise  Select floating-point math accuracy/speed\0"
.balign 4
_Lt_0762:	.ascii	"  -fpu x87|sse     Set target FPU\0"
.balign 4
_Lt_0763:	.ascii	"  -g               Add debug info, enable __FB_DEBUG__, and enable assert()\0"
.balign 4
_Lt_0766:	.ascii	"  -gen gas         Select GNU gas assembler backend\0"
.balign 4
_Lt_0767:	.ascii	"  -gen gcc         Select GNU gcc C backend\0"
.balign 4
_Lt_0768:	.ascii	"  -gen llvm        Select LLVM backend\0"
.balign 4
_Lt_0769:	.ascii	"  -gen gas|gcc|llvm  Select code generation backend\0"
.balign 4
_Lt_076A:	.ascii	"  [-]-help         Show this help output\0"
.balign 4
_Lt_076B:	.ascii	"  -i <path>        Add an include file search path\0"
.balign 4
_Lt_076C:	.ascii	"  -include <file>  Pre-#include a file for each input .bas\0"
.balign 4
_Lt_076D:	.ascii	"  -l <name>        Link in a library\0"
.balign 4
_Lt_076E:	.ascii	"  -lang <name>     Select FB dialect: fb, deprecated, fblite, qb\0"
.balign 4
_Lt_076F:	.ascii	"  -lib             Create a static library\0"
.balign 4
_Lt_0770:	.ascii	"  -m <name>        Specify main module (default if not -c: first input .bas)\0"
.balign 4
_Lt_0771:	.ascii	"  -map <file>      Save linking map to file\0"
.balign 4
_Lt_0772:	.ascii	"  -maxerr <n>      Only show <n> errors\0"
.balign 4
_Lt_0773:	.ascii	"  -mt              Use thread-safe FB runtime\0"
.balign 4
_Lt_0774:	.ascii	"  -nodeflibs       Do not include the default libraries\0"
.balign 4
_Lt_0775:	.ascii	"  -noerrline       Do not show source context in error messages\0"
.balign 4
_Lt_0776:	.ascii	"  -noobjinfo       Do not read/write compile-time info from/to .o and .a files\0"
.balign 4
_Lt_0777:	.ascii	"  -nostrip         Do not strip symbol information from the output file\0"
.balign 4
_Lt_0778:	.ascii	"  -o <file>        Set .o (or -pp .bas) file name for prev/next input file\0"
.balign 4
_Lt_0779:	.ascii	"  -O <value>       Optimization level (default: 0)\0"
.balign 4
_Lt_077A:	.ascii	"  -p <path>        Add a library search path\0"
.balign 4
_Lt_077B:	.ascii	"  -pic             Generate position-independent code (non-x86 Unix shared libs)\0"
.balign 4
_Lt_077C:	.ascii	"  -pp              Write out preprocessed input file (.pp.bas) only\0"
.balign 4
_Lt_077D:	.ascii	"  -prefix <path>   Set the compiler prefix path\0"
.balign 4
_Lt_077E:	.ascii	"  -print host|target  Display host/target system name\0"
.balign 4
_Lt_077F:	.ascii	"  -print fblibdir  Display the compiler's lib/ path\0"
.balign 4
_Lt_0780:	.ascii	"  -print x         Display output binary/library file name (if known)\0"
.balign 4
_Lt_0783:	.ascii	"  -print sha-1     Display compiler's source code commit sha-1 (if known)\0"
.balign 4
_Lt_0784:	.ascii	"  -profile         Enable function profiling\0"
.balign 4
_Lt_0785:	.ascii	"  -r               Write out .asm/.c/.ll (-gen gas/gcc/llvm) only\0"
.balign 4
_Lt_0786:	.ascii	"  -rr              Write out the final .asm only\0"
.balign 4
_Lt_0787:	.ascii	"  -R               Preserve temporary .asm/.c/.ll/.def files\0"
.balign 4
_Lt_0788:	.ascii	"  -RR              Preserve the final .asm file\0"
.balign 4
_Lt_0789:	.ascii	"  -s console|gui   Select win32 subsystem\0"
.balign 4
_Lt_078A:	.ascii	"  -showincludes    Display a tree of file names of #included files\0"
.balign 4
_Lt_078B:	.ascii	"  -static          Prefer static libraries over dynamic ones when linking\0"
.balign 4
_Lt_078C:	.ascii	"  -strip           Omit all symbol information from the output file\0"
.balign 4
_Lt_078D:	.ascii	"  -t <value>       Set .exe stack size in kbytes, default: 1024 (win32/dos)\0"
.balign 4
_Lt_0790:	.ascii	"  -target <name>   Set cross-compilation target\0"
.balign 4
_Lt_0791:	.ascii	"  -title <name>    Set XBE display title (xbox)\0"
.balign 4
_Lt_0792:	.ascii	"  -v               Be verbose\0"
.balign 4
_Lt_0793:	.ascii	"  -vec <n>         Automatic vectorization level (default: 0)\0"
.balign 4
_Lt_0794:	.ascii	"  [-]-version      Show compiler version\0"
.balign 4
_Lt_0795:	.ascii	"  -w all|pedantic|<n>  Set min warning level: all, pedantic or a value\0"
.balign 4
_Lt_0798:	.ascii	"  -w all           Enable all warnings\0"
.balign 4
_Lt_0799:	.ascii	"  -w none          Disable all warnings\0"
.balign 4
_Lt_079A:	.ascii	"  -w param         Enable parameter warnings\0"
.balign 4
_Lt_079B:	.ascii	"  -w escape        Enable string escape sequence warnings\0"
.balign 4
_Lt_079C:	.ascii	"  -w next          Enable next statement warnings\0"
.balign 4
_Lt_079D:	.ascii	"  -w signedness    Enable type signedness warnings\0"
.balign 4
_Lt_079E:	.ascii	"  -w constness     Enable const type warnings\0"
.balign 4
_Lt_079F:	.ascii	"  -w suffix        Enable invalid suffix warnings\0"
.balign 4
_Lt_07A0:	.ascii	"  -Wa <a,b,c>      Pass options to 'as'\0"
.balign 4
_Lt_07A1:	.ascii	"  -Wc <a,b,c>      Pass options to 'gcc' (-gen gcc) or 'llc' (-gen llvm)\0"
.balign 4
_Lt_07A2:	.ascii	"  -Wl <a,b,c>      Pass options to 'ld'\0"
.balign 4
_Lt_07A3:	.ascii	"  -x <file>        Set output executable/library file name\0"
.balign 4
_Lt_07A6:	.ascii	"  -z gosub-setjmp  Use setjmp/longjmp to implement GOSUB\0"
.balign 4
_Lt_07A7:	.ascii	"  -z valist-as-ptr Use pointer expressions to implement CVA_*() macros\0"
.balign 4
_Lt_07B5:	.ascii	"FreeBASIC Compiler - Version 1.08.0 (2021-02-18), built for \0"
.balign 4
_Lt_07B6:	.ascii	"bit)\0"
.balign 4
_Lt_07BB:	.ascii	"Copyright (C) 2004-2021 The FreeBASIC development team.\0"
.balign 4
_Lt_07C2:	.ascii	"source sha-1: \0"

.section .ctors
.int __GLOBAL__I

.section .dtors
.int __GLOBAL__D
