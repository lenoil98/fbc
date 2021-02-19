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
call ___main
push 0
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _fb_Init@12
call _fb_InitSignals@0
call _fb_CpuDetect
shr eax, 28
cmp eax, 4
jae .Lt_0004
push 1
push 44
push offset _Lt_0005
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
call _fb_End@4
.Lt_0004:
.Lt_0002:
call _FBCINIT@0
cmp dword ptr [ebp+8], 1
jne .Lt_07B3
push 0
call _HPRINTOPTIONS@4
push 1
call _FBCEND@4
.Lt_07B3:
.Lt_07B2:
push dword ptr [ebp+12]
push dword ptr [ebp+8]
call _HPARSEARGS@8
cmp dword ptr [_FBC+60], 0
je .Lt_07B5
push dword ptr [_FBC+56]
call _HPRINTVERSION@4
push 0
call _FBCEND@4
.Lt_07B5:
.Lt_07B4:
cmp dword ptr [_FBC+56], 0
je .Lt_07B7
push 0
call _HPRINTVERSION@4
.Lt_07B7:
.Lt_07B6:
cmp dword ptr [_FBC+64], 0
je .Lt_07B9
push dword ptr [_FBC+56]
call _HPRINTOPTIONS@4
push 1
call _FBCEND@4
.Lt_07B9:
.Lt_07B8:
call _FBCDETERMINEPREFIX@0
call _FBCSETUPCOMPILERPATHS@0
cmp dword ptr [_FBC+56], 0
je .Lt_07BB
call _FBCPRINTTARGETINFO@0
.Lt_07BB:
.Lt_07BA:
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
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _FBADDINCLUDEPATH@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
test eax, eax
setne bl
shr ebx, 1
sbb ebx, ebx
lea eax, [_FBC+188]
push eax
call _LISTGETHEAD@4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
lea ecx, [_FBC+252]
push ecx
call _LISTGETHEAD@4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
lea ecx, [_FBC+220]
push ecx
call _LISTGETHEAD@4
test eax, eax
setne cl
shr ecx, 1
sbb ecx, ecx
or ebx, ecx
mov dword ptr [ebp-20], ebx
cmp dword ptr [_FBC+68], 0
jl .Lt_07BE
mov ebx, dword ptr [_FBC+68]
mov dword ptr [ebp-24], ebx
cmp dword ptr [ebp-24], 0
jne .Lt_07C1
.Lt_07C2:
push 1
call _FBGETHOSTID@0
push eax
push 0
call _fb_PrintString@12
jmp .Lt_07BF
.Lt_07C1:
cmp dword ptr [ebp-24], 1
jne .Lt_07C3
.Lt_07C4:
push 1
call _FBGETTARGETID@0
push eax
push 0
call _fb_PrintString@12
jmp .Lt_07BF
.Lt_07C3:
cmp dword ptr [ebp-24], 2
jne .Lt_07C5
.Lt_07C6:
cmp dword ptr [ebp-20], 0
je .Lt_07C8
call _FBCDETERMINEMAINNAME@0
.Lt_07C8:
.Lt_07C7:
call _HSETOUTNAME@0
push 1
lea eax, [_FBC+428]
push eax
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
jmp .Lt_07BF
.Lt_07C5:
cmp dword ptr [ebp-24], 3
jne .Lt_07C9
.Lt_07CA:
push 1
lea eax, [_FBC+2915]
push eax
call _fb_StrAllocTempDescZ@4
push eax
push 0
call _fb_PrintString@12
jmp .Lt_07BF
.Lt_07C9:
cmp dword ptr [ebp-24], 4
jne .Lt_07CB
.Lt_07CC:
push 1
push 0
push offset _Lt_0000
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.Lt_07CB:
.Lt_07BF:
push 0
call _FBCEND@4
.Lt_07BE:
.Lt_07BD:
call _FBCDETERMINEMAINNAME@0
cmp dword ptr [ebp-20], 0
jne .Lt_07CE
push dword ptr [_FBC+56]
call _HPRINTOPTIONS@4
push 1
call _FBCEND@4
.Lt_07CE:
.Lt_07CD:
call _HCOMPILEMODULES@0
call _HCOMPILEXPM@0
test eax, eax
jne .Lt_07D0
push 1
call _FBCEND@4
.Lt_07D0:
.Lt_07CF:
cmp dword ptr [_FBC+36], 0
je .Lt_07D2
push 0
call _FBCEND@4
.Lt_07D2:
.Lt_07D1:
push 2
call _FBGETOPTION@4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 3
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_07D4
call _HCOMPILESTAGE2MODULES@0
.Lt_07D4:
.Lt_07D3:
cmp dword ptr [_FBC+44], 0
je .Lt_07D6
push 0
call _FBCEND@4
.Lt_07D6:
.Lt_07D5:
call _HASSEMBLEMODULES@0
call _HASSEMBLERCS@0
call _HASSEMBLEXPM@0
push 0
call _FBGETOPTION@4
cmp eax, 3
jne .Lt_07D8
push 0
call _FBCEND@4
.Lt_07D8:
.Lt_07D7:
call _HSETDEFAULTLIBPATHS@0
push 34
call _FBGETOPTION@4
mov ebx, eax
call _FBISCROSSCOMP@0
not eax
and ebx, eax
je .Lt_07DA
call _HCOLLECTOBJINFO@0
.Lt_07DA:
.Lt_07D9:
push 0
call _FBGETOPTION@4
cmp eax, 1
jne .Lt_07DC
call _HARCHIVEFILES@0
test eax, eax
jne .Lt_07DE
push 1
call _FBCEND@4
.Lt_07DE:
.Lt_07DD:
push 0
call _FBCEND@4
.Lt_07DC:
.Lt_07DB:
cmp dword ptr [_FBC+2120], 0
jne .Lt_07E0
call _HADDDEFAULTLIBS@0
.Lt_07E0:
.Lt_07DF:
call _HLINKFILES@0
test eax, eax
jne .Lt_07E2
push 1
call _FBCEND@4
.Lt_07E2:
.Lt_07E1:
push 0
call _FBCEND@4
.Lt_0003:
push 0
call _fb_End@4
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrDelete@4
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrAssign@20
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
call _fb_StrDelete@4
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_FBCINIT@0:
.Lt_0042:
mov dword ptr [_FBC+20], -1
mov dword ptr [_FBC+24], -1
mov dword ptr [_FBC+32], -1
push -1
push 20
push 64
lea eax, [_FBC+72]
push eax
call _LISTINIT@16
push -1
push 20
push 16
lea eax, [_FBC+104]
push eax
call _LISTINIT@16
push 16
lea eax, [_FBC+156]
push eax
call _STRLISTINIT@8
push 64
lea eax, [_FBC+188]
push eax
call _STRLISTINIT@8
push 16
lea eax, [_FBC+220]
push eax
call _STRLISTINIT@8
push 16
lea eax, [_FBC+252]
push eax
call _STRSETINIT@8
push 16
lea eax, [_FBC+296]
push eax
call _STRSETINIT@8
push 32
lea eax, [_FBC+340]
push eax
call _STRSETINIT@8
push 32
lea eax, [_FBC+384]
push eax
call _STRSETINIT@8
call _FBGLOBALINIT@0
push 10
call _FBGETOPTION@4
mov dword ptr [_FBC+3176], eax
mov dword ptr [_FBC+68], -1
.Lt_0043:
ret
.balign 16
_HSETOUTNAME@0:
push ebp
mov ebp, esp
sub esp, 44
.Lt_0044:
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_0047
jmp .Lt_0045
.Lt_0047:
.Lt_0046:
push 0
call _FBGETOPTION@4
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
call _HSTRIPPATH@4
push eax
push -1
push 4
push offset _Lt_004A
push -1
lea eax, [_FBC+689]
push eax
call _HSTRIPFILENAME@4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign@20
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
call _fb_StrAssign@20
push 0
call _FBGETOPTION@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
jne .Lt_0051
.Lt_0052:
push 3
call _FBGETOPTION@4
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
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign@20
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
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign@20
.Lt_005B:
.Lt_0053:
jmp .Lt_004F
.Lt_0051:
cmp dword ptr [ebp-4], 2
jne .Lt_005F
.Lt_0060:
push 3
call _FBGETOPTION@4
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
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign@20
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
call _HSTRIPPATH@4
push eax
push -1
push 4
push offset _Lt_004A
push -1
lea eax, [_FBC+428]
push eax
call _HSTRIPFILENAME@4
push eax
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
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign@20
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
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign@20
.Lt_0074:
.Lt_0061:
.Lt_005F:
.Lt_004F:
.Lt_0045:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCEND@4:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0078:
lea eax, [_FBC+156]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.Lt_007A:
cmp dword ptr [ebp-4], 0
je .Lt_007B
push dword ptr [ebp-4]
call _fb_FileKill@4
test eax, eax
je .Lt_007D
.Lt_007D:
.Lt_007C:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .Lt_007A
.Lt_007B:
push dword ptr [ebp+8]
call _fb_End@4
.Lt_0079:
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCADDTEMP@4:
push ebp
mov ebp, esp
.Lt_007E:
push dword ptr [ebp+8]
lea eax, [_FBC+156]
push eax
call _STRLISTAPPEND@8
.Lt_007F:
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCADDOBJ@4:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_0080:
lea eax, [_FBC+188]
push eax
call _LISTNEWNODE@4
mov dword ptr [ebp-8], eax
push 0
push -1
push dword ptr [ebp+8]
push -1
push dword ptr [ebp-8]
call _fb_StrAssign@20
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-4], eax
.Lt_0081:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGET1STOUTPUTLINEFROMCOMMAND@4:
push ebp
mov ebp, esp
sub esp, 28
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0082:
call _fb_FileFree@0
mov dword ptr [ebp-16], eax
push 0
push 0
push dword ptr [ebp-16]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpenPipe@28
test eax, eax
je .Lt_0085
jmp .Lt_0083
.Lt_0085:
.Lt_0084:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push dword ptr [ebp-16]
call _fb_FileInput@4
push 0
push -1
lea eax, [ebp-28]
push eax
call _fb_InputString@12
push dword ptr [ebp-16]
call _fb_FileClose@4
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
call _fb_StrInit@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
jmp .Lt_0083
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.Lt_0083:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCBUILDPATHTOLIBFILE@4:
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
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _HFILEEXISTS@4
test eax, eax
je .Lt_008D
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
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
call _FBCFINDBIN@12
call _FBGETCPUFAMILY@0
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
call _fb_StrConcatAssign@20
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
call _fb_StrConcatAssign@20
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
call _fb_StrConcatAssign@20
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
call _fb_StrConcatAssign@20
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-60]
push eax
call _HGET1STOUTPUTLINEFROMCOMMAND@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
test eax, eax
jne .Lt_009F
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
jmp .Lt_0089
.Lt_009F:
.Lt_009E:
push -1
push dword ptr [ebp-24]
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00A1
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
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
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0089:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCFINDLIBFILE@4:
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
call _FBCBUILDPATHTOLIBFILE@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_00A5
push dword ptr [ebp-24]
call _HFILEEXISTS@4
test eax, eax
jne .Lt_00A7
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
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
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_00A3:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCADDDEFLIBPATH@4:
push ebp
mov ebp, esp
.Lt_00A8:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+384]
push eax
call _STRSETADD@12
.Lt_00A9:
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCADDLIBPATHFOR@4:
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
call _FBCBUILDPATHTOLIBFILE@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-24]
call _HSTRIPFILENAME@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push 0
push -1
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_00AE
lea eax, [ebp-12]
push eax
call _FBCADDDEFLIBPATH@4
.Lt_00AE:
.Lt_00AD:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_00AB:
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCFINDBIN@12:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.Lt_00AF:
mov eax, dword ptr [ebp+8]
cmp dword ptr [_Lt_07EF], eax
jne .Lt_00B2
push 0
push -1
push offset _Lt_07F0
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
mov eax, dword ptr [ebp+16]
mov ebx, dword ptr [_Lt_07F1]
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
call _fb_StrAllocTempDescZ@4
push eax
call _fb_StrUcase2@8
push eax
call _fb_GetEnviron@4
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push -1
push dword ptr [ebp+12]
call _fb_StrLen@8
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
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HFILEEXISTS@4
test eax, eax
jne .Lt_00B8
push 3
call _FBGETOPTION@4
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
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
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
call _fb_StrAssign@20
.Lt_00B9:
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], -1
.Lt_00B8:
.Lt_00B7:
.Lt_00B4:
.Lt_00B3:
mov ebx, dword ptr [ebp+8]
mov dword ptr [_Lt_07EF], ebx
push 0
push -1
push dword ptr [ebp+12]
push -1
push offset _Lt_07F0
call _fb_StrAssign@20
mov ebx, dword ptr [ebp+16]
mov eax, dword ptr [ebx]
mov dword ptr [_Lt_07F1], eax
.Lt_00B0:
pop ebx
mov esp, ebp
pop ebp
ret 12

.section .data
.balign 4
_Lt_07EF:
.int -1

.section .bss
.balign 4
	.lcomm	_Lt_07F1,4
.balign 4
	.lcomm	_Lt_07F0,12

.section .text
.balign 16
_FBCRUNBIN@12:
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
call _FBCFINDBIN@12
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
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
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
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
.Lt_00C0:
.Lt_00BF:
cmp dword ptr [ebp-12], 0
jne .Lt_00C7
push dword ptr [ebp+16]
lea eax, [ebp-24]
push eax
call _fb_Exec@8
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
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
call _fb_Shell@4
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
call _ERRREPORTEX@20
jmp .Lt_00CA
.Lt_00CC:
cmp dword ptr [_FBC+56], 0
je .Lt_00CE
push 1
push -1
push dword ptr [ebp-8]
call _fb_IntToStr@4
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
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
.Lt_00CE:
.Lt_00CD:
.Lt_00CA:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_00BE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 12
.balign 16
_HPUTLDARGSINTOFILE@4:
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
call _HSTRIPFILENAME@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push 10
push offset _Lt_00D7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
call _fb_FileFree@0
mov dword ptr [ebp-32], eax
push 0
push dword ptr [ebp-32]
push 0
push 0
push 3
lea eax, [ebp-16]
push eax
call _fb_FileOpen@24
test eax, eax
je .Lt_00D9
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_00D6
.Lt_00D9:
.Lt_00D8:
push 0
push -1
push dword ptr [ebp+8]
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push -1
push offset _Lt_00DB
push offset _Lt_00DA
push dword ptr [ebp-28]
call _HREPLACE@12
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
push 1
lea eax, [ebp-28]
push eax
push dword ptr [ebp-36]
call _fb_PrintString@12
push dword ptr [ebp-32]
call _fb_FileClose@4
test eax, eax
je .Lt_00DD
push 0
push 0
push offset _Lt_0087
push 475
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00DD:
cmp dword ptr [_FBC+40], 0
jne .Lt_00DF
lea eax, [ebp-16]
push eax
call _FBCADDTEMP@4
.Lt_00DF:
.Lt_00DE:
cmp dword ptr [_FBC+56], 0
je .Lt_00E1
push 2
push 4
push offset _Lt_00E3
push -1
push -1
lea eax, [ebp-16]
push eax
push 16
push offset _Lt_00E2
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
push 1
push dword ptr [ebp+8]
push 0
call _fb_PrintString@12
.Lt_00E1:
.Lt_00E0:
push 0
push -1
push -1
lea eax, [ebp-16]
push eax
push 2
push offset _Lt_00E6
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_00D6:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_CLEARDEFLIST@4:
push ebp
mov ebp, esp
sub esp, 52
mov dword ptr [ebp-4], 0
.Lt_00E8:
call _fb_FileFree@0
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .Lt_00EB
mov dword ptr [ebp-4], 0
jmp .Lt_00E9
.Lt_00EB:
.Lt_00EA:
push 0
push -1
push 11
push offset _Lt_00EC
push -1
push dword ptr [ebp+8]
call _HSTRIPEXT@4
push eax
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
lea eax, [ebp-32]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
call _fb_FileFree@0
mov dword ptr [ebp-36], eax
push 0
push dword ptr [ebp-36]
push 0
push 0
push 3
lea eax, [ebp-20]
push eax
call _fb_FileOpen@24
test eax, eax
je .Lt_00EF
push dword ptr [ebp-8]
call _fb_FileClose@4
test eax, eax
je .Lt_00F0
push 0
push 0
push offset _Lt_0087
push 500
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00F0:
mov dword ptr [ebp-4], 0
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .Lt_00E9
.Lt_00EF:
.Lt_00EE:
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
.Lt_00F1:
push dword ptr [ebp-8]
call _fb_FileEof@4
test eax, eax
jne .Lt_00F2
push 0
push -1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-8]
call _fb_FileLineInput@16
push 5
push offset _Lt_00F3
push -1
push 4
lea eax, [ebp-48]
push eax
call _fb_RIGHT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_00F5
push 0
push -1
push -1
lea eax, [ebp-48]
push eax
call _fb_StrLen@8
add eax, -4
push eax
lea eax, [ebp-48]
push eax
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
.Lt_00F5:
.Lt_00F4:
mov eax, dword ptr [ebp-36]
mov dword ptr [ebp-52], eax
push 1
lea eax, [ebp-48]
push eax
push dword ptr [ebp-52]
call _fb_PrintString@12
jmp .Lt_00F1
.Lt_00F2:
push dword ptr [ebp-36]
call _fb_FileClose@4
test eax, eax
je .Lt_00F7
push 0
push 0
push offset _Lt_0087
push 515
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00F7:
push dword ptr [ebp-8]
call _fb_FileClose@4
test eax, eax
je .Lt_00F8
push 0
push 0
push offset _Lt_0087
push 516
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00F8:
push dword ptr [ebp+8]
call _fb_FileKill@4
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
call _fb_StrDelete@4
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .Lt_00E9
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.Lt_00E9:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGENERATEEMPTYDEFFILE@4:
push ebp
mov ebp, esp
sub esp, 12
mov dword ptr [ebp-4], 0
.Lt_00F9:
call _fb_FileFree@0
mov dword ptr [ebp-8], eax
push 0
push dword ptr [ebp-8]
push 0
push 0
push 3
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .Lt_00FC
jmp .Lt_00FA
.Lt_00FC:
.Lt_00FB:
mov eax, dword ptr [ebp-8]
mov dword ptr [ebp-12], eax
push 1
push 7
push offset _Lt_00FE
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp-12]
call _fb_PrintString@12
push dword ptr [ebp-8]
call _fb_FileClose@4
test eax, eax
je .Lt_00FF
push 0
push 0
push offset _Lt_0087
push 530
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_00FF:
mov dword ptr [ebp-4], -1
.Lt_00FA:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_MAKEIMPLIB@8:
push ebp
mov ebp, esp
sub esp, 112
mov dword ptr [ebp-4], 0
.Lt_0100:
push dword ptr [ebp+12]
call _CLEARDEFLIST@4
test eax, eax
jne .Lt_0103
jmp .Lt_0101
.Lt_0103:
.Lt_0102:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _fb_FileLen@4
cmp edx, 0
jne .Lt_0105
cmp eax, 0
jne .Lt_0105
.Lt_07F3:
push dword ptr [ebp+12]
call _HGENERATEEMPTYDEFFILE@4
test eax, eax
jne .Lt_0107
jmp .Lt_0101
.Lt_0107:
.Lt_0106:
.Lt_0105:
.Lt_0104:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push -1
push 2
push offset _Lt_0109
push -1
push -1
push dword ptr [ebp+12]
push 8
push offset _Lt_0108
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push 13
push offset _Lt_010D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [_FBC+428]
push eax
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0109
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 8
push offset _Lt_010F
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
call _HSTRIPFILENAME@4
push eax
push 16
push offset _Lt_010E
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-100], 0
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
lea eax, [ebp-100]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
lea eax, [ebp-112]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
push 5
push offset _Lt_0115
call _FBCRUNBIN@12
test eax, eax
jne .Lt_0117
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_0101
.Lt_0117:
.Lt_0116:
cmp dword ptr [_FBC+40], 0
jne .Lt_0119
push dword ptr [ebp+12]
call _FBCADDTEMP@4
.Lt_0119:
.Lt_0118:
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_0101:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 8
.balign 16
_HFINDLIB@4:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_011A:
push 0
push -1
push dword ptr [ebp+8]
call _FBCBUILDPATHTOLIBFILE@4
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrInit@20
push -1
lea eax, [ebp-24]
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_011D
push 0
push 3
push offset _Lt_011E
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0109
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_011C
.Lt_011D:
push 0
push 1
push -1
push dword ptr [ebp+8]
push 23
call _ERRREPORTEX@20
.Lt_011C:
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_011B:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 4
.balign 16
_FBCLINKERISGOLD@0:
push ebp
mov ebp, esp
sub esp, 20
mov dword ptr [ebp-4], 0
.Lt_011F:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-20]
push eax
lea eax, [ebp-16]
push eax
push 2
call _FBCFINDBIN@12
push 0
push 11
push offset _Lt_0122
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 8
push offset _Lt_0123
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-16]
push eax
call _HGET1STOUTPUTLINEFROMCOMMAND@4
push eax
push 1
call _fb_StrInstr@12
test eax, eax
setg al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_0120
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_0120:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_FBCISUSINGGOLDLINKER@0:
push ebp
mov ebp, esp
sub esp, 4
mov dword ptr [ebp-4], 0
.Lt_0124:
call _FBTARGETSUPPORTSELF@0
test eax, eax
je .Lt_0127
call _FBCLINKERISGOLD@0
mov dword ptr [ebp-4], eax
jmp .Lt_0125
.Lt_0127:
.Lt_0126:
mov dword ptr [ebp-4], 0
.Lt_0125:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HLINKFILES@0:
push ebp
mov ebp, esp
sub esp, 128
push ebx
push esi
mov dword ptr [ebp-4], 0
.Lt_0128:
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
call _HSETOUTNAME@0
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-48], eax
cmp dword ptr [ebp-48], 0
jne .Lt_012C
.Lt_012D:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .Lt_0130
.Lt_0131:
push 0
push 11
push offset _Lt_0132
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_012E
.Lt_0130:
cmp dword ptr [ebp-52], 1
jne .Lt_0133
.Lt_0134:
push 0
push 12
push offset _Lt_0135
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0133:
.Lt_012E:
jmp .Lt_012A
.Lt_012C:
cmp dword ptr [ebp-48], 2
jne .Lt_0136
.Lt_0137:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-52], eax
cmp dword ptr [ebp-52], 0
jne .Lt_013A
.Lt_013B:
push 0
push 13
push offset _Lt_013C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0138
.Lt_013A:
cmp dword ptr [ebp-52], 1
jne .Lt_013D
.Lt_013E:
push 0
push 15
push offset _Lt_013F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0138
.Lt_013D:
cmp dword ptr [ebp-52], 2
jne .Lt_0140
.Lt_0141:
push 0
push 22
push offset _Lt_0142
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0140:
.Lt_0138:
.Lt_0136:
.Lt_012A:
push 0
push 5
push offset _Lt_0145
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+428]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0144
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-48], eax
jmp .Lt_0147
.Lt_0149:
push 129
lea eax, [_FBC+1217]
push eax
call _fb_StrLen@8
test eax, eax
jne .Lt_014B
push 0
push 8
push offset _Lt_014C
push 129
lea eax, [_FBC+1217]
push eax
call _fb_StrAssign@20
jmp .Lt_014A
.Lt_014B:
push 4
push offset _Lt_014D
push 129
lea eax, [_FBC+1217]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_014F
push 0
push 8
push offset _Lt_0150
push 129
lea eax, [_FBC+1217]
push eax
call _fb_StrAssign@20
.Lt_014F:
.Lt_014E:
.Lt_014A:
push 0
push 13
push offset _Lt_0151
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 129
lea eax, [_FBC+1217]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .Lt_0153
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
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-72]
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
push 0
push 30
push offset _Lt_0156
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
call _FBGETCPUFAMILY@0
test eax, eax
jne .Lt_0158
push 0
push 26
push offset _Lt_0159
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0157
.Lt_0158:
push 0
push 22
push offset _Lt_015A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0157:
.Lt_0153:
.Lt_0152:
jmp .Lt_0146
.Lt_015B:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .Lt_015D
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
call _fb_StrAssign@20
lea eax, [ebp-60]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-72]
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
push 0
push 12
push offset _Lt_0160
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [_FBC+428]
push eax
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 4
push offset _Lt_004A
push -1
push 3
lea eax, [ebp-28]
push eax
call _fb_LEFT@8
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0162
push 0
push -1
push -1
lea eax, [ebp-28]
push eax
call _fb_StrLen@8
add eax, -3
push eax
lea eax, [ebp-28]
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
.Lt_0162:
.Lt_0161:
jmp .Lt_015C
.Lt_015D:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-52], eax
jmp .Lt_0164
.Lt_0166:
push 0
push 38
push offset _Lt_0167
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0163
.Lt_0168:
push 0
push 38
push offset _Lt_0169
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0163
.Lt_016A:
push 0
push 33
push offset _Lt_016B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0163
.Lt_016C:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-56], eax
cmp dword ptr [ebp-56], 0
jne .Lt_016F
.Lt_0170:
push 0
push 36
push offset _Lt_0171
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_016D
.Lt_016F:
cmp dword ptr [ebp-56], 1
jne .Lt_0172
.Lt_0173:
push 0
push 45
push offset _Lt_0174
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_016D
.Lt_0172:
cmp dword ptr [ebp-56], 2
jne .Lt_0175
.Lt_0176:
push 0
push 42
push offset _Lt_0177
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_016D
.Lt_0175:
cmp dword ptr [ebp-56], 3
jne .Lt_0178
.Lt_0179:
push 0
push 44
push offset _Lt_017A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0178:
.Lt_016D:
jmp .Lt_0163
.Lt_017B:
push 0
push 40
push offset _Lt_017C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0163
.Lt_017D:
push 0
push 36
push offset _Lt_017E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0163
.Lt_0164:
mov eax, dword ptr [ebp-52]
add eax, 4294967294
cmp eax, 8
ja .Lt_0163
mov eax, dword ptr [ebp-52]
jmp dword ptr [_.LT_017F+eax*4-8]
_.LT_017F:
.int .Lt_016C
.int .Lt_0163
.int .Lt_0163
.int .Lt_0166
.int .Lt_0168
.int .Lt_016A
.int .Lt_017D
.int .Lt_0163
.int .Lt_017B
.Lt_0163:
.Lt_015C:
push 0
call _FBGETOPTION@4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
push 28
mov ebx, eax
call _FBGETOPTION@4
or ebx, eax
je .Lt_0181
push 0
push 18
push offset _Lt_0182
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0181:
.Lt_0180:
jmp .Lt_0146
.Lt_0183:
push 0
push 66
push offset _Lt_0184
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0146
.Lt_0185:
push 0
push 4
push offset _Lt_0186
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 8
call _FBGETOPTION@4
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 26
push offset _Lt_018C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-52], 0
.Lt_0190:
push 0
push 5
push offset _Lt_0191
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 32
mov eax, dword ptr [ebp-52]
sal eax, 5
lea ebx, [_Lt_07F7+eax]
push ebx
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign@20
.Lt_018E:
inc dword ptr [ebp-52]
.Lt_018D:
cmp dword ptr [ebp-52], 3
jle .Lt_0190
.Lt_018F:
push 0
push 14
push offset _Lt_0192
push -1
lea ebx, [ebp-16]
push ebx
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0193
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 11
push offset _Lt_0194
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0195
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 129
lea eax, [_FBC+1217]
push eax
call _fb_StrLen@8
test eax, eax
jne .Lt_0197
push 0
push 11
push offset _Lt_0194
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push offset _Lt_0198
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0197:
.Lt_0196:
jmp .Lt_0146
.Lt_0147:
cmp dword ptr [ebp-48], 11
ja .Lt_0146
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.LT_0199+eax*4]
_.LT_0199:
.int .Lt_0149
.int .Lt_0149
.int .Lt_015B
.int .Lt_0146
.int .Lt_0183
.int .Lt_015B
.int .Lt_015B
.int .Lt_015B
.int .Lt_015B
.int .Lt_015B
.int .Lt_015B
.int .Lt_0185
.Lt_0146:
push 3
call _FBGETOPTION@4
cmp eax, 3
jne .Lt_019B
push 0
push 6
push offset _Lt_019C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+2915]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 13
push offset _Lt_019E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_019A
.Lt_019B:
push 34
call _FBGETOPTION@4
push 3
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 3
call _FBGETOPTION@4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
call _FBCISUSINGGOLDLINKER@0
not eax
and ebx, eax
je .Lt_01A0
push 0
push 3
push offset _Lt_011E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+2915]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 12
push offset _Lt_01A2
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01A0:
.Lt_019F:
.Lt_019A:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-48], eax
jmp .Lt_01A4
.Lt_01A6:
push 33
call _FBGETOPTION@4
mov dword ptr [ebp-52], eax
push 0
push 10
push offset _Lt_01A7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-52]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_01A8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push dword ptr [ebp-52]
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .Lt_01AA
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
call _fb_StrAssign@20
lea eax, [ebp-64]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
push 0
push 5
push offset _Lt_01AC
push -1
lea eax, [ebp-40]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-64]
push eax
call _fb_StrDelete@4
push 0
push 16
push offset _Lt_01AD
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-40]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0109
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01AA:
.Lt_01A9:
jmp .Lt_01A3
.Lt_01AE:
push 0
push 23
push offset _Lt_01AF
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_01A3
.Lt_01A4:
cmp dword ptr [ebp-48], 4
ja .Lt_01A3
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.LT_01B0+eax*4]
_.LT_01B0:
.int .Lt_01A6
.int .Lt_01A6
.int .Lt_01A3
.int .Lt_01A3
.int .Lt_01AE
.Lt_01A3:
cmp dword ptr [_FBC+2124], 0
je .Lt_01B2
push 0
push 10
push offset _Lt_01B3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01B2:
.Lt_01B1:
push 261
lea eax, [_FBC+956]
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_01B5
push 0
push 7
push offset _Lt_01B6
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+956]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01B5:
.Lt_01B4:
push 13
call _FBGETOPTION@4
test eax, eax
jne .Lt_01B8
push 21
call _FBGETOPTION@4
test eax, eax
jne .Lt_01BA
push 3
call _FBGETOPTION@4
cmp eax, 9
setne al
shr eax, 1
sbb eax, eax
push 3
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_01BC
push 0
push 4
push offset _Lt_01BD
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01BC:
.Lt_01BB:
.Lt_01BA:
.Lt_01B9:
.Lt_01B8:
.Lt_01B7:
lea eax, [_FBC+384]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-48], eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
push 3
call _FBGETOPTION@4
cmp eax, 11
je .Lt_01BF
push 0
push 6
push offset _Lt_01C0
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
jmp .Lt_01BE
.Lt_01BF:
push 0
push 5
push offset _Lt_01C1
push -1
lea eax, [ebp-60]
push eax
call _fb_StrAssign@20
.Lt_01BE:
.Lt_01C2:
cmp dword ptr [ebp-48], 0
je .Lt_01C3
push 0
push -1
push -1
push 2
push offset _Lt_0109
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
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _LISTGETNEXT@4
mov dword ptr [ebp-48], eax
jmp .Lt_01C2
.Lt_01C3:
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-48], eax
jmp .Lt_01C8
.Lt_01CA:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .Lt_01CC
push 0
push -1
push offset _Lt_01CD
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_01CB
.Lt_01CC:
push 0
push -1
push offset _Lt_01CD
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 21
call _FBGETOPTION@4
test eax, eax
je .Lt_01CF
push 0
push -1
push offset _Lt_01D0
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01CF:
.Lt_01CE:
.Lt_01CB:
jmp .Lt_01C7
.Lt_01D1:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .Lt_01D3
push 0
push -1
push offset _Lt_01D4
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_01D2
.Lt_01D3:
push 0
push -1
push offset _Lt_01D5
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 21
call _FBGETOPTION@4
test eax, eax
je .Lt_01D7
push 0
push -1
push offset _Lt_01D8
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01D7:
.Lt_01D6:
.Lt_01D2:
push 0
push -1
push offset _Lt_01D9
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_01C7
.Lt_01DA:
push 21
call _FBGETOPTION@4
test eax, eax
je .Lt_01DC
push 0
push -1
push offset _Lt_01D0
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_01DB
.Lt_01DC:
push 0
push -1
push offset _Lt_01CD
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01DB:
jmp .Lt_01C7
.Lt_01DD:
push 0
call _FBGETOPTION@4
test eax, eax
jne .Lt_01DF
push 21
call _FBGETOPTION@4
test eax, eax
je .Lt_01E1
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-52], eax
jmp .Lt_01E3
.Lt_01E5:
push 0
push -1
push offset _Lt_01D0
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_01E2
.Lt_01E6:
push 0
push -1
push offset _Lt_01E7
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_01E2
.Lt_01E3:
mov eax, dword ptr [ebp-52]
add eax, 4294967288
cmp eax, 2
ja .Lt_01E6
mov eax, dword ptr [ebp-52]
jmp dword ptr [_.LT_01E8+eax*4-32]
_.LT_01E8:
.int .Lt_01E5
.int .Lt_01E6
.int .Lt_01E5
.Lt_01E2:
jmp .Lt_01E0
.Lt_01E1:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-52], eax
jmp .Lt_01EA
.Lt_01EC:
push 0
push -1
push offset _Lt_01CD
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_01E9
.Lt_01ED:
push 0
push -1
push offset _Lt_01EE
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_01E9
.Lt_01EA:
mov eax, dword ptr [ebp-52]
add eax, 4294967288
cmp eax, 2
ja .Lt_01ED
mov eax, dword ptr [ebp-52]
jmp dword ptr [_.LT_01EF+eax*4-32]
_.LT_01EF:
.int .Lt_01EC
.int .Lt_01ED
.int .Lt_01EC
.Lt_01E9:
.Lt_01E0:
.Lt_01DF:
.Lt_01DE:
push 3
call _FBGETOPTION@4
cmp eax, 9
je .Lt_01F1
push 3
call _FBGETOPTION@4
cmp eax, 8
je .Lt_01F3
push 0
push -1
push offset _Lt_01F4
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01F3:
.Lt_01F2:
push 32
call _FBGETOPTION@4
test eax, eax
je .Lt_01F6
push 0
push -1
push offset _Lt_01F7
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_01F5
.Lt_01F6:
push 0
push -1
push offset _Lt_01D9
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01F5:
.Lt_01F1:
.Lt_01F0:
jmp .Lt_01C7
.Lt_01F8:
push 0
push -1
push offset _Lt_01CD
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_01C7
.Lt_01C8:
cmp dword ptr [ebp-48], 10
ja .Lt_01C7
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.LT_01F9+eax*4]
_.LT_01F9:
.int .Lt_01D1
.int .Lt_01CA
.int .Lt_01DD
.int .Lt_01DA
.int .Lt_01F8
.int .Lt_01DD
.int .Lt_01DD
.int .Lt_01DD
.int .Lt_01DD
.int .Lt_01DD
.int .Lt_01DD
.Lt_01C7:
cmp dword ptr [_FBC+2120], 0
jne .Lt_01FB
push 3
call _FBGETOPTION@4
cmp eax, 11
je .Lt_01FD
push 0
push 3
push offset _Lt_011E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+2915]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_001C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 32
call _FBGETOPTION@4
test eax, eax
je .Lt_01FF
push 0
push 11
push offset _Lt_0200
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_01FE
.Lt_01FF:
push 0
push 8
push offset _Lt_0201
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01FE:
push 0
push 2
push offset _Lt_0109
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_01FD:
.Lt_01FC:
.Lt_01FB:
.Lt_01FA:
lea eax, [_FBC+188]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-48], eax
.Lt_0202:
cmp dword ptr [ebp-48], 0
je .Lt_0203
push 0
push -1
push -1
push 2
push offset _Lt_0109
push -1
push -1
push dword ptr [ebp-48]
push 3
push offset _Lt_011E
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _LISTGETNEXT@4
mov dword ptr [ebp-48], eax
jmp .Lt_0202
.Lt_0203:
push 3
call _FBGETOPTION@4
cmp eax, 9
je .Lt_0208
push 3
call _FBGETOPTION@4
cmp eax, 11
je .Lt_020A
push 0
push 6
push offset _Lt_020B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_020A:
.Lt_0209:
.Lt_0208:
.Lt_0207:
lea eax, [_FBC+220]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-48], eax
.Lt_020C:
cmp dword ptr [ebp-48], 0
je .Lt_020D
push 0
push -1
push -1
push 2
push offset _Lt_0109
push -1
push -1
push dword ptr [ebp-48]
push 3
push offset _Lt_011E
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _LISTGETNEXT@4
mov dword ptr [ebp-48], eax
jmp .Lt_020C
.Lt_020D:
lea eax, [_FBC+340]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-48], eax
push 0
call _FBGETOPTION@4
cmp eax, 2
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-52], eax
.Lt_0211:
cmp dword ptr [ebp-48], 0
je .Lt_0212
cmp dword ptr [ebp-52], 0
je .Lt_0213
push -1
lea eax, [ebp-28]
push eax
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
call _fb_StrCompare@16
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-56], eax
jmp .Lt_07F5
.Lt_0213:
mov dword ptr [ebp-56], -1
.Lt_07F5:
cmp dword ptr [ebp-56], 0
je .Lt_0216
push 0
push -1
push -1
push -1
mov eax, dword ptr [ebp-48]
lea ebx, [eax]
push ebx
push 4
push offset _Lt_0217
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea ebx, [ebp-68]
push ebx
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
.Lt_0216:
.Lt_0215:
push dword ptr [ebp-48]
call _LISTGETNEXT@4
mov dword ptr [ebp-48], eax
jmp .Lt_0211
.Lt_0212:
push 3
call _FBGETOPTION@4
cmp eax, 9
je .Lt_021B
push 3
call _FBGETOPTION@4
cmp eax, 11
je .Lt_021D
push 0
push 6
push offset _Lt_021E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_021C
.Lt_021D:
push 0
push 6
push offset _Lt_021F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_021C:
.Lt_021B:
.Lt_021A:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-48], eax
jmp .Lt_0221
.Lt_0223:
push 32
call _FBGETOPTION@4
test eax, eax
je .Lt_0225
push 0
push -1
push offset _Lt_0226
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0224
.Lt_0225:
push 0
push -1
push offset _Lt_0227
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0224:
push 3
call _FBGETOPTION@4
cmp eax, 8
je .Lt_0229
push 0
push -1
push offset _Lt_022A
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0229:
.Lt_0228:
jmp .Lt_0220
.Lt_022B:
push 0
push -1
push offset _Lt_0227
call _HFINDLIB@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0220
.Lt_0221:
cmp dword ptr [ebp-48], 10
ja .Lt_0220
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.LT_022C+eax*4]
_.LT_022C:
.int .Lt_022B
.int .Lt_0220
.int .Lt_0223
.int .Lt_0220
.int .Lt_0220
.int .Lt_0223
.int .Lt_0223
.int .Lt_0223
.int .Lt_0223
.int .Lt_0220
.int .Lt_0223
.Lt_0220:
push 3
call _FBGETOPTION@4
cmp eax, 9
jne .Lt_022E
push 0
push 26
push offset _Lt_022F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_022E:
.Lt_022D:
push 0
push 2
push offset _Lt_00C3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 128
lea eax, [_FBC+1474]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 3
call _FBGETOPTION@4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
push -1
lea ebx, [ebp-16]
push ebx
mov ebx, eax
call _fb_StrLen@8
push 129
lea ecx, [_FBC+1859]
push ecx
mov esi, eax
call _fb_StrLen@8
neg eax
add eax, 2040
cmp esi, eax
setg dl
mov esi, edx
shr esi, 1
sbb esi, esi
or ebx, esi
je .Lt_0232
lea esi, [ebp-16]
push esi
call _HPUTLDARGSINTOFILE@4
test eax, eax
jne .Lt_0234
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_0129
.Lt_0234:
.Lt_0233:
.Lt_0232:
.Lt_0231:
mov dword ptr [ebp-44], 2
push 3
call _FBGETOPTION@4
cmp eax, 11
jne .Lt_0236
mov dword ptr [ebp-44], 12
.Lt_0236:
.Lt_0235:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-44]
push offset _Lt_0237
call _FBCRUNBIN@12
test eax, eax
jne .Lt_0239
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_0129
.Lt_0239:
.Lt_0238:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-48], eax
jmp .Lt_023B
.Lt_023D:
call _fb_FileFree@0
mov dword ptr [ebp-52], eax
push 0
push dword ptr [ebp-52]
push 0
push 3
push 0
lea eax, [_FBC+428]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileOpen@24
test eax, eax
je .Lt_023F
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_0129
.Lt_023F:
.Lt_023E:
push 4
push 33
call _FBGETOPTION@4
mov dword ptr [ebp-56], eax
lea eax, [ebp-56]
push eax
push 533
push dword ptr [ebp-52]
call _fb_FilePut@16
test eax, eax
je .Lt_0241
push 0
push 0
push offset _Lt_0087
push 1083
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0241:
push dword ptr [ebp-52]
call _fb_FileClose@4
test eax, eax
je .Lt_0242
push 0
push 0
push offset _Lt_0087
push 1085
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_0242:
jmp .Lt_023A
.Lt_0243:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .Lt_0245
lea eax, [ebp-40]
push eax
lea eax, [ebp-28]
push eax
call _MAKEIMPLIB@8
test eax, eax
jne .Lt_0247
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_0129
.Lt_0247:
.Lt_0246:
.Lt_0245:
.Lt_0244:
jmp .Lt_023A
.Lt_0248:
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
push 129
lea eax, [_FBC+1988]
push eax
call _fb_StrLen@8
test eax, eax
jne .Lt_024A
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
call _fb_StrAssign@20
lea eax, [ebp-128]
push eax
call _HSTRIPEXT@4
push eax
push 129
lea eax, [_FBC+1988]
push eax
call _fb_StrAssign@20
lea eax, [ebp-128]
push eax
call _fb_StrDelete@4
.Lt_024A:
.Lt_0249:
push 0
push 9
push offset _Lt_024D
push -1
lea eax, [ebp-72]
push eax
call _fb_StrAssign@20
push 0
push 129
lea eax, [_FBC+1988]
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_024E
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
push 13
call _FBGETOPTION@4
test eax, eax
je .Lt_0250
push 0
push 12
push offset _Lt_0252
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
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
call _fb_StrAssign@20
lea eax, [ebp-128]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
push 0
push 7
push offset _Lt_0255
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-128]
push eax
call _fb_StrDelete@4
.Lt_0250:
.Lt_024F:
push 0
push 8
push offset _Lt_0257
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
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
call _fb_StrAssign@20
lea eax, [ebp-88]
push eax
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_0259
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0144
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
lea eax, [ebp-88]
push eax
call _fb_StrDelete@4
push 0
push 3
push offset _Lt_025A
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
push 0
push 261
lea eax, [_FBC+428]
push eax
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0144
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [_FBC+56], 0
jne .Lt_025C
push 0
push 6
push offset _Lt_025D
push -1
lea eax, [ebp-72]
push eax
call _fb_StrConcatAssign@20
.Lt_025C:
.Lt_025B:
cmp dword ptr [_FBC+56], 0
je .Lt_025F
push 2
push 6
push offset _Lt_0260
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
lea eax, [ebp-72]
push eax
push 0
call _fb_PrintString@12
.Lt_025F:
.Lt_025E:
mov dword ptr [ebp-92], 0
lea eax, [ebp-92]
push eax
lea eax, [ebp-60]
push eax
push 8
call _FBCFINDBIN@12
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
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
mov dword ptr [ebp-108], 0
lea eax, [ebp-116]
push eax
call _fb_StrConcat@20
push eax
call _fb_Shell@4
mov dword ptr [ebp-76], eax
cmp dword ptr [ebp-76], 0
je .Lt_0265
cmp dword ptr [_FBC+56], 0
je .Lt_0267
push 1
push -1
push dword ptr [ebp-76]
call _fb_IntToStr@4
push eax
push 24
push offset _Lt_0268
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
mov dword ptr [ebp-120], 0
lea eax, [ebp-128]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
.Lt_0267:
.Lt_0266:
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_0129
.Lt_0265:
.Lt_0264:
lea eax, [_FBC+428]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileKill@4
lea eax, [ebp-72]
push eax
call _fb_StrDelete@4
lea eax, [ebp-60]
push eax
call _fb_StrDelete@4
jmp .Lt_023A
.Lt_023B:
cmp dword ptr [ebp-48], 4
ja .Lt_023A
mov eax, dword ptr [ebp-48]
jmp dword ptr [_.LT_026A+eax*4]
_.LT_026A:
.int .Lt_0243
.int .Lt_0243
.int .Lt_023A
.int .Lt_023D
.int .Lt_0248
.Lt_023A:
mov dword ptr [ebp-4], -1
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_0129:
mov eax, dword ptr [ebp-4]
pop esi
pop ebx
mov esp, ebp
pop ebp
ret

.section .data
.balign 4
_Lt_07F7:
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
_HREADOBJINFO@0:
push ebp
mov ebp, esp
sub esp, 20
.Lt_026B:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_026D:
lea eax, [ebp-12]
push eax
call _OBJINFOREADNEXT@4
mov dword ptr [ebp-20], eax
jmp .Lt_0271
.Lt_0273:
push 0
lea eax, [ebp-12]
push eax
lea eax, [_FBC+340]
push eax
call _STRSETADD@12
jmp .Lt_0270
.Lt_0274:
push 0
lea eax, [ebp-12]
push eax
lea eax, [_FBC+384]
push eax
call _STRSETADD@12
jmp .Lt_0270
.Lt_0275:
cmp dword ptr [_FBC+3180], 0
jne .Lt_0277
push 0
push 1
push -1
call _OBJINFOGETFILENAME@0
push eax
push 20
call _ERRREPORTWARNEX@20
mov dword ptr [_FBC+3180], -1
push -1
push 30
call _FBSETOPTION@8
.Lt_0277:
.Lt_0276:
jmp .Lt_0270
.Lt_0278:
push -1
push 31
call _FBSETOPTION@8
jmp .Lt_0270
.Lt_0279:
push dword ptr [ebp-12]
call _FBGETLANGID@4
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], -1
jne .Lt_027B
mov dword ptr [ebp-16], 0
.Lt_027B:
.Lt_027A:
mov eax, dword ptr [_FBC+3176]
cmp dword ptr [ebp-16], eax
je .Lt_027D
push 0
push 1
push -1
call _OBJINFOGETFILENAME@0
push eax
push 21
call _ERRREPORTWARNEX@20
mov eax, dword ptr [ebp-16]
mov dword ptr [_FBC+3176], eax
push dword ptr [ebp-16]
push 10
call _FBSETOPTION@8
.Lt_027D:
.Lt_027C:
jmp .Lt_0270
.Lt_027E:
jmp .Lt_026E
jmp .Lt_0270
.Lt_0271:
cmp dword ptr [ebp-20], 4
ja .Lt_027E
mov eax, dword ptr [ebp-20]
jmp dword ptr [_.LT_027F+eax*4]
_.LT_027F:
.int .Lt_0273
.int .Lt_0274
.int .Lt_0275
.int .Lt_0278
.int .Lt_0279
.Lt_0270:
.Lt_026F:
jmp .Lt_026D
.Lt_026E:
call _OBJINFOREADEND@0
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_026C:
mov esp, ebp
pop ebp
ret
.balign 16
_HCOLLECTOBJINFO@0:
push ebp
mov ebp, esp
sub esp, 8
push ebx
.Lt_0280:
lea eax, [_FBC+188]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.Lt_0282:
cmp dword ptr [ebp-4], 0
je .Lt_0283
push dword ptr [ebp-4]
call _OBJINFOREADOBJ@4
call _HREADOBJINFO@0
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .Lt_0282
.Lt_0283:
lea eax, [_FBC+340]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-8], eax
.Lt_0284:
cmp dword ptr [ebp-8], 0
je .Lt_0285
mov eax, dword ptr [ebp-8]
cmp dword ptr [eax+12], 0
jne .Lt_0287
lea eax, [_FBC+384]
push eax
mov eax, dword ptr [ebp-8]
lea ebx, [eax]
push ebx
call _OBJINFOREADLIB@8
call _HREADOBJINFO@0
.Lt_0287:
.Lt_0286:
push dword ptr [ebp-8]
call _LISTGETNEXT@4
mov dword ptr [ebp-8], eax
jmp .Lt_0284
.Lt_0285:
lea eax, [_FBC+220]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.Lt_0288:
cmp dword ptr [ebp-4], 0
je .Lt_0289
push dword ptr [ebp-4]
call _OBJINFOREADLIBFILE@4
call _HREADOBJINFO@0
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .Lt_0288
.Lt_0289:
.Lt_0281:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HFATALINVALIDOPTION@4:
push ebp
mov ebp, esp
sub esp, 36
.Lt_028A:
push 0
push 1
push -1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
push 2
push offset _Lt_0144
push -1
push -1
push dword ptr [ebp+8]
push 2
push offset _Lt_0144
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
push 81
call _ERRREPORTEX@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
push 1
call _FBCEND@4
.Lt_028B:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCHECKWAITINGOBJFILE@0:
push ebp
mov ebp, esp
sub esp, 24
.Lt_028F:
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_0292
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
push offset _Lt_0143
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
push 292
call _ERRREPORTEX@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign@20
.Lt_0292:
.Lt_0291:
.Lt_0290:
mov esp, ebp
pop ebp
ret
.balign 16
_HSETIOFILE@12:
push ebp
mov ebp, esp
sub esp, 12
push ebx
.Lt_0295:
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
call _fb_StrAssign@20
push -1
lea ebx, [_FBC+8]
push ebx
call _fb_StrLen@8
test eax, eax
jne .Lt_0298
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], 0
cmp dword ptr [ebp+16], 0
je .Lt_029A
push 0
push -1
push 3
push offset _Lt_029B
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign@20
jmp .Lt_0299
.Lt_029A:
push 0
push -1
push 3
push offset _Lt_029B
push -1
push dword ptr [ebp+12]
call _HSTRIPEXT@4
push eax
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
lea eax, [ebp-12]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign@20
.Lt_0299:
mov eax, dword ptr [ebp+8]
mov dword ptr [_FBC+4], eax
jmp .Lt_0297
.Lt_0298:
mov eax, dword ptr [ebp+8]
mov dword ptr [eax+16], -1
.Lt_0297:
lea eax, [_FBC+8]
push eax
call _FBCADDOBJ@4
mov ebx, dword ptr [ebp+8]
mov dword ptr [ebx+12], eax
push 0
push 1
push offset _Lt_0000
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign@20
.Lt_0296:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HADDBAS@4:
push ebp
mov ebp, esp
.Lt_029E:
push 0
push dword ptr [ebp+8]
lea eax, [_FBC+72]
push eax
call _LISTNEWNODE@4
push eax
call _HSETIOFILE@12
.Lt_029F:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HPARSEGNUTRIPLET@16:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_02BA:
mov dword ptr [ebp-4], 0
.Lt_02BF:
mov eax, dword ptr [ebp-4]
push dword ptr [_GNUOSMAP+eax*8]
call _fb_StrAllocTempDescZ@4
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr@12
test eax, eax
jle .Lt_02C1
mov eax, dword ptr [ebp-4]
mov ebx, dword ptr [ebp+16]
mov ecx, dword ptr [_GNUOSMAP+eax*8+4]
mov dword ptr [ebx], ecx
jmp .Lt_02BE
.Lt_02C1:
.Lt_02C0:
.Lt_02BD:
inc dword ptr [ebp-4]
.Lt_02BC:
cmp dword ptr [ebp-4], 10
jle .Lt_02BF
.Lt_02BE:
cmp dword ptr [ebp+12], 0
jle .Lt_02C3
push 0
push -1
mov ecx, dword ptr [ebp+12]
dec ecx
push ecx
push dword ptr [ebp+8]
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-16], 0
.Lt_02C7:
push 0
mov eax, dword ptr [ebp-16]
push dword ptr [_GNUARCHMAP+eax*8]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_02C9
mov eax, dword ptr [ebp-16]
mov ecx, dword ptr [ebp+20]
mov ebx, dword ptr [_GNUARCHMAP+eax*8+4]
mov dword ptr [ecx], ebx
jmp .Lt_02C6
.Lt_02C9:
.Lt_02C8:
.Lt_02C5:
inc dword ptr [ebp-16]
.Lt_02C4:
cmp dword ptr [ebp-16], 12
jle .Lt_02C7
.Lt_02C6:
lea ebx, [ebp-12]
push ebx
call _fb_StrDelete@4
.Lt_02C3:
.Lt_02C2:
.Lt_02BB:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HPARSETARGETARG@16:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_02CE:
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
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-20], 0
.Lt_02D3:
push 0
mov eax, dword ptr [ebp-20]
imul eax, 12
push dword ptr [_FBOSARCHMAP+eax]
push -1
lea eax, [ebp-12]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_02D5
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
call _fb_StrDelete@4
jmp .Lt_02CF
.Lt_02D5:
.Lt_02D4:
.Lt_02D1:
inc dword ptr [ebp-20]
.Lt_02D0:
cmp dword ptr [ebp-20], 11
jle .Lt_02D3
.Lt_02D2:
push 1
push offset _Lt_02D6
call _fb_StrAllocTempDescZEx@8
push eax
push dword ptr [ebp+8]
push 1
call _fb_StrInstr@12
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
jle .Lt_02D8
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
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _FBIDENTIFYOS@4
mov ebx, dword ptr [ebp+12]
mov dword ptr [ebx], eax
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
push 0
push -1
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen@8
sub eax, dword ptr [ebp-16]
push eax
lea eax, [ebp-12]
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-40]
push eax
call _fb_StrAssign@20
lea eax, [ebp-40]
push eax
call _FBCPUTYPEFROMCPUFAMILYID@4
mov ebx, dword ptr [ebp+16]
mov dword ptr [ebx], eax
lea eax, [ebp-40]
push eax
call _fb_StrDelete@4
.Lt_02D8:
.Lt_02D7:
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
je .Lt_02DC
push dword ptr [ebp+16]
push dword ptr [ebp+12]
push dword ptr [ebp-16]
push dword ptr [ebp+8]
call _HPARSEGNUTRIPLET@16
mov ecx, dword ptr [ebp+20]
mov dword ptr [ecx], -1
.Lt_02DC:
.Lt_02DB:
lea ecx, [ebp-12]
push ecx
call _fb_StrDelete@4
.Lt_02CF:
pop ebx
mov esp, ebp
pop ebp
ret 16
.balign 16
_HANDLEOPT@8:
push ebp
mov ebp, esp
sub esp, 40
push ebx
.Lt_02DF:
mov eax, dword ptr [ebp+8]
mov dword ptr [ebp-4], eax
jmp .Lt_02E2
.Lt_02E4:
push dword ptr [ebp+12]
call _FBCADDOBJ@4
jmp .Lt_02E1
.Lt_02E5:
push 7
push offset _Lt_02E6
push -1
push dword ptr [ebp+12]
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [_FBC+28], eax
push dword ptr [ebp+12]
call _FBIDENTIFYFBCARCH@4
mov dword ptr [_FBC+24], eax
cmp dword ptr [_FBC+24], 0
jge .Lt_02E8
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
push -1
push dword ptr [ebp+12]
push 7
push offset _Lt_02E9
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HFATALINVALIDOPTION@4
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.Lt_02E8:
.Lt_02E7:
jmp .Lt_02E1
.Lt_02EC:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_02F0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_02EF
.Lt_02F1:
mov dword ptr [_FBC+32], 1
jmp .Lt_02ED
.Lt_02EF:
push 6
push offset _Lt_02F3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_02F2
.Lt_02F4:
mov dword ptr [_FBC+32], 0
jmp .Lt_02ED
.Lt_02F2:
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@4
.Lt_02F5:
.Lt_02ED:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_02E1
.Lt_02F6:
push dword ptr [ebp+12]
call _HADDBAS@4
jmp .Lt_02E1
.Lt_02F7:
push 3
push 0
call _FBSETOPTION@8
mov dword ptr [_FBC+52], -1
jmp .Lt_02E1
.Lt_02F8:
mov dword ptr [_FBC+52], -1
jmp .Lt_02E1
.Lt_02F9:
push dword ptr [ebp+12]
call _FBADDPREDEFINE@4
jmp .Lt_02E1
.Lt_02FA:
push 2
push 0
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_02FB:
push -1
push 15
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_02FC:
push -1
push 20
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_02FD:
push -1
push 14
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_02FE:
push -1
push 12
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_02FF:
push -1
push 13
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0300:
push -1
push 18
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0301:
push -1
push 19
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0302:
push -1
push 15
call _FBSETOPTION@8
push -1
push 16
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0303:
push -1
push 15
call _FBSETOPTION@8
push -1
push 16
call _FBSETOPTION@8
push -1
push 17
call _FBSETOPTION@8
push -1
push 18
call _FBSETOPTION@8
push -1
push 20
call _FBSETOPTION@8
push -1
push 19
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0304:
push -1
push 28
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0305:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _FBGETLANGID@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_0307
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@4
.Lt_0307:
.Lt_0306:
push dword ptr [ebp-8]
push 10
call _FBSETOPTION@8
push -1
push 11
call _FBSETOPTION@8
mov eax, dword ptr [ebp-8]
mov dword ptr [_FBC+3176], eax
jmp .Lt_02E1
.Lt_0308:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 8
push offset _Lt_030C
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_030B
.Lt_030D:
mov dword ptr [ebp-8], 0
jmp .Lt_0309
.Lt_030B:
push 5
push offset _Lt_030F
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_030E
.Lt_0310:
mov dword ptr [ebp-8], 1
jmp .Lt_0309
.Lt_030E:
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@4
.Lt_0311:
.Lt_0309:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-8]
push 6
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0312:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_0316
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
je .Lt_0318
.Lt_0319:
push 4
push offset _Lt_0317
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0315
.Lt_0318:
mov dword ptr [ebp-8], 0
jmp .Lt_0313
.Lt_0315:
push 4
push offset _Lt_031B
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_031A
.Lt_031C:
mov dword ptr [ebp-8], 1
jmp .Lt_0313
.Lt_031A:
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@4
.Lt_031D:
.Lt_0313:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-8]
push 5
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_031E:
push -1
push 12
call _FBSETOPTION@8
push -1
push 13
call _FBSETOPTION@8
push -1
push 14
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_031F:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_0323
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0322
.Lt_0324:
mov dword ptr [_FBC+20], 0
jmp .Lt_0320
.Lt_0322:
push 4
push offset _Lt_0039
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0325
.Lt_0326:
mov dword ptr [_FBC+20], 1
jmp .Lt_0320
.Lt_0325:
push 5
push offset _Lt_0328
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0327
.Lt_0329:
mov dword ptr [_FBC+20], 2
jmp .Lt_0320
.Lt_0327:
push 6
push offset _Lt_032B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_032A
.Lt_032C:
mov dword ptr [_FBC+20], 3
jmp .Lt_0320
.Lt_032A:
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@4
.Lt_032D:
.Lt_0320:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_02E1
.Lt_032E:
mov dword ptr [_FBC+64], -1
jmp .Lt_02E1
.Lt_032F:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _FBADDINCLUDEPATH@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_02E1
.Lt_0331:
push dword ptr [ebp+12]
call _FBADDPREINCLUDE@4
jmp .Lt_02E1
.Lt_0332:
push 0
push dword ptr [ebp+12]
lea eax, [_FBC+252]
push eax
call _STRSETADD@12
jmp .Lt_02E1
.Lt_0333:
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _FBGETLANGID@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], -1
jne .Lt_0335
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@4
.Lt_0335:
.Lt_0334:
push dword ptr [ebp-8]
push 10
call _FBSETOPTION@8
mov eax, dword ptr [ebp-8]
mov dword ptr [_FBC+3176], eax
jmp .Lt_02E1
.Lt_0336:
push 1
push 0
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0337:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+689]
push eax
call _fb_StrAssign@20
mov dword ptr [_FBC+952], -1
jmp .Lt_02E1
.Lt_0338:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+956]
push eax
call _fb_StrAssign@20
jmp .Lt_02E1
.Lt_0339:
push 4
push offset _Lt_033A
push -1
push dword ptr [ebp+12]
call _fb_StrCompare@16
test eax, eax
jne .Lt_033C
mov dword ptr [ebp-8], 2147483647
jmp .Lt_033B
.Lt_033C:
push dword ptr [ebp+12]
call _fb_VALINT@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jg .Lt_033E
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@4
.Lt_033E:
.Lt_033D:
.Lt_033B:
push dword ptr [ebp-8]
push 24
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_033F:
push -1
push 30
call _FBSETOPTION@8
mov dword ptr [_FBC+3180], -1
jmp .Lt_02E1
.Lt_0340:
mov dword ptr [_FBC+2120], -1
jmp .Lt_02E1
.Lt_0341:
push 0
push 23
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0342:
push 0
push 34
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0343:
mov dword ptr [_FBC+2128], 0
jmp .Lt_02E1
.Lt_0344:
call _HCHECKWAITINGOBJFILE@0
cmp dword ptr [_FBC+4], 0
je .Lt_0346
push 0
push -1
push dword ptr [ebp+12]
push -1
mov eax, dword ptr [_FBC+4]
push dword ptr [eax+12]
call _fb_StrAssign@20
mov eax, dword ptr [_FBC+4]
mov dword ptr [eax+16], -1
jmp .Lt_0345
.Lt_0346:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [_FBC+8]
push eax
call _fb_StrAssign@20
.Lt_0345:
jmp .Lt_02E1
.Lt_0347:
push 4
push offset _Lt_0348
push -1
push dword ptr [ebp+12]
call _fb_StrCompare@16
test eax, eax
jne .Lt_034A
mov dword ptr [ebp-8], 3
jmp .Lt_0349
.Lt_034A:
push dword ptr [ebp+12]
call _fb_VALINT@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp-8], 0
jge .Lt_034C
mov dword ptr [ebp-8], 0
jmp .Lt_034B
.Lt_034C:
cmp dword ptr [ebp-8], 3
jle .Lt_034D
mov dword ptr [ebp-8], 3
.Lt_034D:
.Lt_034B:
.Lt_0349:
push dword ptr [ebp-8]
push 8
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_034E:
push 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
lea eax, [_FBC+296]
push eax
call _STRSETADD@12
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_02E1
.Lt_0350:
push -1
push 32
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0351:
push -1
push 1
call _FBSETOPTION@8
mov dword ptr [_FBC+36], -1
jmp .Lt_02E1
.Lt_0352:
push 0
push -1
push dword ptr [ebp+12]
call _PATHSTRIPDIV@4
push eax
push 261
lea eax, [_FBC+2132]
push eax
call _fb_StrAssign@20
push 92
lea eax, [_FBC+2132]
push eax
call _HREPLACESLASH@8
jmp .Lt_02E1
.Lt_0353:
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_0357
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0356
.Lt_0358:
mov dword ptr [_FBC+68], 0
jmp .Lt_0354
.Lt_0356:
push 7
push offset _Lt_035A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0359
.Lt_035B:
mov dword ptr [_FBC+68], 1
jmp .Lt_0354
.Lt_0359:
push 2
push offset _Lt_035D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_035C
.Lt_035E:
mov dword ptr [_FBC+68], 2
jmp .Lt_0354
.Lt_035C:
push 9
push offset _Lt_0360
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_035F
.Lt_0361:
mov dword ptr [_FBC+68], 3
jmp .Lt_0354
.Lt_035F:
push 6
push offset _Lt_0363
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0362
.Lt_0364:
mov dword ptr [_FBC+68], 4
jmp .Lt_0354
.Lt_0362:
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@4
.Lt_0365:
.Lt_0354:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_02E1
.Lt_0366:
push -1
push 21
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0367:
push 3
push 0
call _FBSETOPTION@8
mov dword ptr [_FBC+36], -1
mov dword ptr [_FBC+40], -1
jmp .Lt_02E1
.Lt_0368:
mov dword ptr [_FBC+40], -1
jmp .Lt_02E1
.Lt_0369:
push 3
push 0
call _FBSETOPTION@8
mov dword ptr [_FBC+44], -1
mov dword ptr [_FBC+48], -1
jmp .Lt_02E1
.Lt_036A:
mov dword ptr [_FBC+48], -1
jmp .Lt_02E1
.Lt_036B:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [_FBC+1217]
push eax
call _fb_StrAssign@20
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_014D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_036E
.Lt_036F:
push 1
push 36
call _FBSETOPTION@8
.Lt_036E:
.Lt_036C:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_02E1
.Lt_0370:
push -1
push 35
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0371:
mov dword ptr [_FBC+2124], -1
jmp .Lt_02E1
.Lt_0372:
mov dword ptr [_FBC+2128], -1
jmp .Lt_02E1
.Lt_0373:
push dword ptr [ebp+12]
call _fb_VALINT@4
sal eax, 10
push eax
push 33
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0374:
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
call _HPARSETARGETARG@16
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
je .Lt_0376
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@4
.Lt_0376:
.Lt_0375:
push dword ptr [ebp-8]
push 3
call _FBSETOPTION@8
push dword ptr [ebp-12]
push 4
call _FBSETOPTION@8
mov ebx, dword ptr [ebp-8]
test ebx, ebx
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
je .Lt_0378
push 0
push -1
push dword ptr [ebp+12]
push 129
lea ebx, [_FBC+1730]
push ebx
call _fb_StrAssign@20
push 0
push -1
push 2
push offset _Lt_02D6
push 129
lea ebx, [_FBC+1730]
push ebx
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat@20
push eax
push 129
lea eax, [_FBC+1859]
push eax
call _fb_StrAssign@20
.Lt_0378:
.Lt_0377:
jmp .Lt_02E1
.Lt_037A:
push 0
push -1
push dword ptr [ebp+12]
push 129
lea eax, [_FBC+1988]
push eax
call _fb_StrAssign@20
jmp .Lt_02E1
.Lt_037B:
mov dword ptr [_FBC+56], -1
jmp .Lt_02E1
.Lt_037C:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrUcase2@8
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 5
push offset _Lt_0380
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
je .Lt_0381
.Lt_0382:
push 2
push offset _Lt_0008
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_037F
.Lt_0381:
mov dword ptr [ebp-8], 0
jmp .Lt_037D
.Lt_037F:
push 2
push offset _Lt_0006
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0383
.Lt_0384:
mov dword ptr [ebp-8], 1
jmp .Lt_037D
.Lt_0383:
push 2
push offset _Lt_0386
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0385
.Lt_0387:
mov dword ptr [ebp-8], 2
jmp .Lt_037D
.Lt_0385:
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@4
.Lt_0388:
.Lt_037D:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
push dword ptr [ebp-8]
push 7
call _FBSETOPTION@8
jmp .Lt_02E1
.Lt_0389:
mov dword ptr [_FBC+60], -1
jmp .Lt_02E1
.Lt_038A:
mov dword ptr [ebp-8], -1
push 0
push -1
push dword ptr [ebp+12]
push -1
lea eax, [ebp-20]
push eax
call _fb_StrInit@20
push 4
push offset _Lt_038E
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_038D
.Lt_038F:
mov dword ptr [ebp-8], 0
jmp .Lt_038B
.Lt_038D:
push 5
push offset _Lt_0391
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0390
.Lt_0392:
mov dword ptr [ebp-8], 4
jmp .Lt_038B
.Lt_0390:
push 6
push offset _Lt_0394
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0393
.Lt_0395:
push 25
call _FBGETOPTION@4
or eax, 2
push eax
push 25
call _FBSETOPTION@8
jmp .Lt_038B
.Lt_0393:
push 7
push offset _Lt_0397
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0396
.Lt_0398:
push 25
call _FBGETOPTION@4
or eax, 1
push eax
push 25
call _FBSETOPTION@8
jmp .Lt_038B
.Lt_0396:
push 5
push offset _Lt_039A
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_0399
.Lt_039B:
push 25
call _FBGETOPTION@4
or eax, 8
push eax
push 25
call _FBSETOPTION@8
jmp .Lt_038B
.Lt_0399:
push 11
push offset _Lt_039D
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_039C
.Lt_039E:
push 25
call _FBGETOPTION@4
or eax, 32
push eax
push 25
call _FBSETOPTION@8
jmp .Lt_038B
.Lt_039C:
push 10
push offset _Lt_03A0
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_039F
.Lt_03A1:
push 25
call _FBGETOPTION@4
or eax, 128
push eax
push 25
call _FBSETOPTION@8
mov dword ptr [ebp-8], 0
jmp .Lt_038B
.Lt_039F:
push 8
push offset _Lt_03A3
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_03A2
.Lt_03A4:
push 25
call _FBGETOPTION@4
or eax, 64
push eax
push 25
call _FBSETOPTION@8
mov dword ptr [ebp-8], 0
jmp .Lt_038B
.Lt_03A2:
push 7
push offset _Lt_03A6
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_03A5
.Lt_03A7:
push 25
call _FBGETOPTION@4
or eax, 256
push eax
push 25
call _FBSETOPTION@8
jmp .Lt_038B
.Lt_03A5:
push 9
push offset _Lt_03A9
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_03A8
.Lt_03AA:
push -233
push 25
call _FBSETOPTION@8
cmp dword ptr [ebp-8], 1
jle .Lt_03AC
mov dword ptr [ebp-8], 1
.Lt_03AC:
.Lt_03AB:
jmp .Lt_038B
.Lt_03A8:
push dword ptr [ebp+12]
call _fb_VALINT@4
mov dword ptr [ebp-8], eax
.Lt_03AD:
.Lt_038B:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
cmp dword ptr [ebp-8], 0
jl .Lt_03AF
push dword ptr [ebp-8]
push 22
call _FBSETOPTION@8
.Lt_03AF:
.Lt_03AE:
jmp .Lt_02E1
.Lt_03B0:
push 0
push -1
push -1
push 2
push offset _Lt_00C3
push -1
push -1
push offset _Lt_00C3
push offset _Lt_01A8
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HREPLACE@12
push eax
push 2
push offset _Lt_00C3
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push 128
lea eax, [_FBC+1346]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push 128
lea eax, [_FBC+1346]
push eax
call _fb_StrAssign@20
jmp .Lt_02E1
.Lt_03B4:
push 0
push -1
push -1
push 2
push offset _Lt_00C3
push -1
push -1
push offset _Lt_00C3
push offset _Lt_01A8
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HREPLACE@12
push eax
push 2
push offset _Lt_00C3
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push 128
lea eax, [_FBC+1602]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push 128
lea eax, [_FBC+1602]
push eax
call _fb_StrAssign@20
jmp .Lt_02E1
.Lt_03B8:
push 0
push -1
push -1
push 2
push offset _Lt_00C3
push -1
push -1
push offset _Lt_00C3
push offset _Lt_01A8
mov eax, dword ptr [ebp+12]
push dword ptr [eax]
call _HREPLACE@12
push eax
push 2
push offset _Lt_00C3
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push 128
lea eax, [_FBC+1474]
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push 128
lea eax, [_FBC+1474]
push eax
call _fb_StrAssign@20
jmp .Lt_02E1
.Lt_03BC:
push 0
push -1
push dword ptr [ebp+12]
push 261
lea eax, [_FBC+428]
push eax
call _fb_StrAssign@20
jmp .Lt_02E1
.Lt_03BD:
push 0
push -1
push 0
push dword ptr [ebp+12]
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 13
push offset _Lt_03C1
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_03C0
.Lt_03C2:
push -1
push 26
call _FBSETOPTION@8
jmp .Lt_03BE
.Lt_03C0:
push 14
push offset _Lt_03C4
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_03C3
.Lt_03C5:
push -1
push 27
call _FBSETOPTION@8
jmp .Lt_03BE
.Lt_03C3:
push dword ptr [ebp+12]
call _HFATALINVALIDOPTION@4
.Lt_03C6:
.Lt_03BE:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_02E1
.Lt_02E2:
cmp dword ptr [ebp-4], 65
ja .Lt_02E1
mov eax, dword ptr [ebp-4]
jmp dword ptr [_.LT_03C7+eax*4]
_.LT_03C7:
.int .Lt_02E4
.int .Lt_02E5
.int .Lt_02EC
.int .Lt_02F6
.int .Lt_02F7
.int .Lt_02F8
.int .Lt_02F9
.int .Lt_02FA
.int .Lt_02FA
.int .Lt_02FB
.int .Lt_02FC
.int .Lt_02FD
.int .Lt_02FE
.int .Lt_02FF
.int .Lt_0300
.int .Lt_0301
.int .Lt_0302
.int .Lt_0303
.int .Lt_0304
.int .Lt_0305
.int .Lt_0308
.int .Lt_0312
.int .Lt_031E
.int .Lt_031F
.int .Lt_032E
.int .Lt_032F
.int .Lt_0331
.int .Lt_0332
.int .Lt_0333
.int .Lt_0336
.int .Lt_0337
.int .Lt_0338
.int .Lt_0339
.int .Lt_033F
.int .Lt_0340
.int .Lt_0341
.int .Lt_0342
.int .Lt_0343
.int .Lt_0344
.int .Lt_0347
.int .Lt_034E
.int .Lt_0350
.int .Lt_0351
.int .Lt_0352
.int .Lt_0353
.int .Lt_0366
.int .Lt_0367
.int .Lt_0368
.int .Lt_0369
.int .Lt_036A
.int .Lt_036B
.int .Lt_0370
.int .Lt_0371
.int .Lt_0372
.int .Lt_0373
.int .Lt_0374
.int .Lt_037A
.int .Lt_037B
.int .Lt_037C
.int .Lt_0389
.int .Lt_038A
.int .Lt_03B0
.int .Lt_03B4
.int .Lt_03B8
.int .Lt_03BC
.int .Lt_03BD
.Lt_02E1:
.Lt_02E0:
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_PARSEOPTION@4:
push ebp
mov ebp, esp
sub esp, 8
push ebx
mov dword ptr [ebp-4], 0
.Lt_03C8:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-8], ebx
jmp .Lt_03CB
.Lt_03CD:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_03D0
mov dword ptr [ebp-4], 0
jmp .Lt_03C9
.Lt_03D0:
.Lt_03CF:
push 5
push offset _Lt_03D1
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_03D3
mov dword ptr [ebp-4], 1
jmp .Lt_03C9
.Lt_03D3:
.Lt_03D2:
push 4
push offset _Lt_03D4
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_03D6
mov dword ptr [ebp-4], 2
jmp .Lt_03C9
.Lt_03D6:
.Lt_03D5:
jmp .Lt_03CA
.Lt_03D7:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_03DA
mov dword ptr [ebp-4], 3
jmp .Lt_03C9
.Lt_03DA:
.Lt_03D9:
jmp .Lt_03CA
.Lt_03DB:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_03DE
mov dword ptr [ebp-4], 4
jmp .Lt_03C9
.Lt_03DE:
.Lt_03DD:
jmp .Lt_03CA
.Lt_03DF:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_03E2
mov dword ptr [ebp-4], 5
jmp .Lt_03C9
.Lt_03E2:
.Lt_03E1:
jmp .Lt_03CA
.Lt_03E3:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_03E6
mov dword ptr [ebp-4], 6
jmp .Lt_03C9
.Lt_03E6:
.Lt_03E5:
push 4
push offset _Lt_03E7
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_03E9
mov dword ptr [ebp-4], 7
jmp .Lt_03C9
.Lt_03E9:
.Lt_03E8:
push 6
push offset _Lt_03EA
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_03EC
mov dword ptr [ebp-4], 8
jmp .Lt_03C9
.Lt_03EC:
.Lt_03EB:
jmp .Lt_03CA
.Lt_03ED:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_03F0
mov dword ptr [ebp-4], 9
jmp .Lt_03C9
.Lt_03F0:
.Lt_03EF:
push 3
push offset _Lt_03F1
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_03F3
mov dword ptr [ebp-4], 16
jmp .Lt_03C9
.Lt_03F3:
.Lt_03F2:
push 7
push offset _Lt_03F4
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_03F6
mov dword ptr [ebp-4], 10
jmp .Lt_03C9
.Lt_03F6:
.Lt_03F5:
push 8
push offset _Lt_03F7
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_03F9
mov dword ptr [ebp-4], 11
jmp .Lt_03C9
.Lt_03F9:
.Lt_03F8:
push 7
push offset _Lt_03FA
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_03FC
mov dword ptr [ebp-4], 12
jmp .Lt_03C9
.Lt_03FC:
.Lt_03FB:
push 11
push offset _Lt_03FD
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_03FF
mov dword ptr [ebp-4], 13
jmp .Lt_03C9
.Lt_03FF:
.Lt_03FE:
push 10
push offset _Lt_0400
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0402
mov dword ptr [ebp-4], 14
jmp .Lt_03C9
.Lt_0402:
.Lt_0401:
push 9
push offset _Lt_0403
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0405
mov dword ptr [ebp-4], 15
jmp .Lt_03C9
.Lt_0405:
.Lt_0404:
push 4
push offset _Lt_0406
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0408
mov dword ptr [ebp-4], 17
jmp .Lt_03C9
.Lt_0408:
.Lt_0407:
push 7
push offset _Lt_0409
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_040B
mov dword ptr [ebp-4], 18
jmp .Lt_03C9
.Lt_040B:
.Lt_040A:
jmp .Lt_03CA
.Lt_040C:
push 10
push offset _Lt_040E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0410
mov dword ptr [ebp-4], 19
jmp .Lt_03C9
.Lt_0410:
.Lt_040F:
push 7
push offset _Lt_0411
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0413
mov dword ptr [ebp-4], 20
jmp .Lt_03C9
.Lt_0413:
.Lt_0412:
push 4
push offset _Lt_0414
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0416
mov dword ptr [ebp-4], 21
jmp .Lt_03C9
.Lt_0416:
.Lt_0415:
jmp .Lt_03CA
.Lt_0417:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_041A
mov dword ptr [ebp-4], 22
jmp .Lt_03C9
.Lt_041A:
.Lt_0419:
push 4
push offset _Lt_041B
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_041D
mov dword ptr [ebp-4], 23
jmp .Lt_03C9
.Lt_041D:
.Lt_041C:
jmp .Lt_03CA
.Lt_041E:
push 5
push offset _Lt_0420
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0422
mov dword ptr [ebp-4], 24
jmp .Lt_03C9
.Lt_0422:
.Lt_0421:
jmp .Lt_03CA
.Lt_0423:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0426
mov dword ptr [ebp-4], 25
jmp .Lt_03C9
.Lt_0426:
.Lt_0425:
push 8
push offset _Lt_0427
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0429
mov dword ptr [ebp-4], 26
jmp .Lt_03C9
.Lt_0429:
.Lt_0428:
jmp .Lt_03CA
.Lt_042A:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_042D
mov dword ptr [ebp-4], 27
jmp .Lt_03C9
.Lt_042D:
.Lt_042C:
push 5
push offset _Lt_042E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0430
mov dword ptr [ebp-4], 28
jmp .Lt_03C9
.Lt_0430:
.Lt_042F:
push 4
push offset _Lt_004A
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0432
mov dword ptr [ebp-4], 29
jmp .Lt_03C9
.Lt_0432:
.Lt_0431:
jmp .Lt_03CA
.Lt_0433:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0436
mov dword ptr [ebp-4], 30
jmp .Lt_03C9
.Lt_0436:
.Lt_0435:
push 4
push offset _Lt_0437
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0439
mov dword ptr [ebp-4], 31
jmp .Lt_03C9
.Lt_0439:
.Lt_0438:
push 7
push offset _Lt_043A
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_043C
mov dword ptr [ebp-4], 32
jmp .Lt_03C9
.Lt_043C:
.Lt_043B:
push 3
push offset _Lt_043D
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_043F
mov dword ptr [ebp-4], 33
jmp .Lt_03C9
.Lt_043F:
.Lt_043E:
jmp .Lt_03CA
.Lt_0440:
push 10
push offset _Lt_0442
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0444
mov dword ptr [ebp-4], 35
jmp .Lt_03C9
.Lt_0444:
.Lt_0443:
push 10
push offset _Lt_0445
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0447
mov dword ptr [ebp-4], 34
jmp .Lt_03C9
.Lt_0447:
.Lt_0446:
push 10
push offset _Lt_0448
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_044A
mov dword ptr [ebp-4], 36
jmp .Lt_03C9
.Lt_044A:
.Lt_0449:
push 8
push offset _Lt_044B
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_044D
mov dword ptr [ebp-4], 37
jmp .Lt_03C9
.Lt_044D:
.Lt_044C:
jmp .Lt_03CA
.Lt_044E:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0451
mov dword ptr [ebp-4], 38
jmp .Lt_03C9
.Lt_0451:
.Lt_0450:
jmp .Lt_03CA
.Lt_0452:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_0455
mov dword ptr [ebp-4], 39
jmp .Lt_03C9
.Lt_0455:
.Lt_0454:
jmp .Lt_03CA
.Lt_0456:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0459
mov dword ptr [ebp-4], 40
jmp .Lt_03C9
.Lt_0459:
.Lt_0458:
push 4
push offset _Lt_045A
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_045C
mov dword ptr [ebp-4], 41
jmp .Lt_03C9
.Lt_045C:
.Lt_045B:
push 3
push offset _Lt_045D
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_045F
mov dword ptr [ebp-4], 42
jmp .Lt_03C9
.Lt_045F:
.Lt_045E:
push 7
push offset _Lt_0460
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0462
mov dword ptr [ebp-4], 43
jmp .Lt_03C9
.Lt_0462:
.Lt_0461:
push 6
push offset _Lt_0463
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0465
mov dword ptr [ebp-4], 44
jmp .Lt_03C9
.Lt_0465:
.Lt_0464:
push 8
push offset _Lt_0466
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0468
mov dword ptr [ebp-4], 45
jmp .Lt_03C9
.Lt_0468:
.Lt_0467:
jmp .Lt_03CA
.Lt_0469:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_046C
mov dword ptr [ebp-4], 46
jmp .Lt_03C9
.Lt_046C:
.Lt_046B:
push 3
push offset _Lt_046D
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_046F
mov dword ptr [ebp-4], 48
jmp .Lt_03C9
.Lt_046F:
.Lt_046E:
jmp .Lt_03CA
.Lt_0470:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0473
mov dword ptr [ebp-4], 47
jmp .Lt_03C9
.Lt_0473:
.Lt_0472:
push 3
push offset _Lt_0474
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0476
mov dword ptr [ebp-4], 49
jmp .Lt_03C9
.Lt_0476:
.Lt_0475:
jmp .Lt_03CA
.Lt_0477:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_047A
mov dword ptr [ebp-4], 50
jmp .Lt_03C9
.Lt_047A:
.Lt_0479:
push 13
push offset _Lt_047B
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_047D
mov dword ptr [ebp-4], 51
jmp .Lt_03C9
.Lt_047D:
.Lt_047C:
push 7
push offset _Lt_047E
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0480
mov dword ptr [ebp-4], 52
jmp .Lt_03C9
.Lt_0480:
.Lt_047F:
push 6
push offset _Lt_0481
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0483
mov dword ptr [ebp-4], 53
jmp .Lt_03C9
.Lt_0483:
.Lt_0482:
jmp .Lt_03CA
.Lt_0484:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0487
mov dword ptr [ebp-4], 54
jmp .Lt_03C9
.Lt_0487:
.Lt_0486:
push 7
push offset _Lt_035A
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0489
mov dword ptr [ebp-4], 55
jmp .Lt_03C9
.Lt_0489:
.Lt_0488:
push 6
push offset _Lt_048A
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_048C
mov dword ptr [ebp-4], 56
jmp .Lt_03C9
.Lt_048C:
.Lt_048B:
jmp .Lt_03CA
.Lt_048D:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_0490
mov dword ptr [ebp-4], 57
jmp .Lt_03C9
.Lt_0490:
.Lt_048F:
push 4
push offset _Lt_0491
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0493
mov dword ptr [ebp-4], 58
jmp .Lt_03C9
.Lt_0493:
.Lt_0492:
push 8
push offset _Lt_0494
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_0496
mov dword ptr [ebp-4], 59
jmp .Lt_03C9
.Lt_0496:
.Lt_0495:
jmp .Lt_03CA
.Lt_0497:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_049A
mov dword ptr [ebp-4], 60
jmp .Lt_03C9
.Lt_049A:
.Lt_0499:
jmp .Lt_03CA
.Lt_049B:
push 3
push offset _Lt_049D
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_049F
mov dword ptr [ebp-4], 61
jmp .Lt_03C9
.Lt_049F:
.Lt_049E:
push 3
push offset _Lt_04A0
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_04A2
mov dword ptr [ebp-4], 63
jmp .Lt_03C9
.Lt_04A2:
.Lt_04A1:
push 3
push offset _Lt_04A3
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_04A5
mov dword ptr [ebp-4], 62
jmp .Lt_03C9
.Lt_04A5:
.Lt_04A4:
jmp .Lt_03CA
.Lt_04A6:
mov eax, dword ptr [ebp+8]
movzx ebx, byte ptr [eax+1]
test ebx, ebx
jne .Lt_04A8
mov dword ptr [ebp-4], 64
jmp .Lt_03C9
.Lt_04A8:
.Lt_04A7:
jmp .Lt_03CA
.Lt_04A9:
mov ebx, dword ptr [ebp+8]
movzx eax, byte ptr [ebx+1]
test eax, eax
jne .Lt_04AC
mov dword ptr [ebp-4], 65
jmp .Lt_03C9
.Lt_04AC:
.Lt_04AB:
jmp .Lt_03CA
.Lt_04AD:
push 9
push offset _Lt_04AE
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_04B0
mov dword ptr [ebp-4], 59
jmp .Lt_03C9
.Lt_04B0:
.Lt_04AF:
push 6
push offset _Lt_04B1
push 0
push dword ptr [ebp+8]
call _fb_StrCompare@16
test eax, eax
jne .Lt_04B3
mov dword ptr [ebp-4], 24
jmp .Lt_03C9
.Lt_04B3:
.Lt_04B2:
jmp .Lt_03CA
.Lt_03CB:
mov eax, dword ptr [ebp-8]
add eax, 4294967251
cmp eax, 77
ja .Lt_03CA
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_04B4+eax*4-180]
_.LT_04B4:
.int .Lt_04AD
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03DF
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_0452
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_0470
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_049B
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_03CD
.int .Lt_03D7
.int .Lt_03DB
.int .Lt_03E3
.int .Lt_03ED
.int .Lt_040C
.int .Lt_0417
.int .Lt_041E
.int .Lt_0423
.int .Lt_03CA
.int .Lt_03CA
.int .Lt_042A
.int .Lt_0433
.int .Lt_0440
.int .Lt_044E
.int .Lt_0456
.int .Lt_03CA
.int .Lt_0469
.int .Lt_0477
.int .Lt_0484
.int .Lt_03CA
.int .Lt_048D
.int .Lt_0497
.int .Lt_04A6
.int .Lt_03CA
.int .Lt_04A9
.Lt_03CA:
mov dword ptr [ebp-4], -1
.Lt_03C9:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HANDLEARG@4:
push ebp
mov ebp, esp
sub esp, 16
push ebx
.Lt_04B5:
cmp dword ptr [_FBC], 0
jl .Lt_04B8
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
test eax, eax
jne .Lt_04BA
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@4
.Lt_04BA:
.Lt_04B9:
push dword ptr [ebp+8]
push dword ptr [_FBC]
call _HANDLEOPT@8
mov dword ptr [_FBC], -1
jmp .Lt_04B6
.Lt_04B8:
.Lt_04B7:
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
test eax, eax
jne .Lt_04BC
jmp .Lt_04B6
.Lt_04BC:
.Lt_04BB:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
mov al, byte ptr [ebx]
mov byte ptr [ebp-4], al
movzx eax, byte ptr [ebp-4]
cmp eax, 45
jne .Lt_04BF
.Lt_04C0:
mov eax, dword ptr [ebp+8]
mov ebx, dword ptr [eax]
inc ebx
mov dword ptr [ebp-8], ebx
mov ebx, dword ptr [ebp-8]
movzx eax, byte ptr [ebx]
test eax, eax
jne .Lt_04C2
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@4
.Lt_04C2:
.Lt_04C1:
push dword ptr [ebp-8]
call _PARSEOPTION@4
mov dword ptr [ebp-12], eax
cmp dword ptr [ebp-12], 0
jge .Lt_04C4
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@4
.Lt_04C4:
.Lt_04C3:
mov eax, dword ptr [ebp-12]
cmp dword ptr [_OPTION_TAKES_ARGUMENT+eax*4], 0
je .Lt_04C6
mov eax, dword ptr [ebp-12]
mov dword ptr [_FBC], eax
jmp .Lt_04C5
.Lt_04C6:
push dword ptr [ebp+8]
push dword ptr [ebp-12]
call _HANDLEOPT@8
.Lt_04C5:
jmp .Lt_04BD
.Lt_04BF:
movzx eax, byte ptr [ebp-4]
cmp eax, 64
jne .Lt_04C7
.Lt_04C8:
cmp dword ptr [_Lt_0807], 128
jle .Lt_04CA
push 0
push 1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 27
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.Lt_04CA:
.Lt_04C9:
push 0
push -1
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
dec eax
push eax
push dword ptr [ebp+8]
call _fb_RIGHT@8
push eax
push -1
push dword ptr [ebp+8]
call _fb_StrAssign@20
push -1
push dword ptr [ebp+8]
call _fb_StrLen@8
test eax, eax
jne .Lt_04CC
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@4
.Lt_04CC:
.Lt_04CB:
inc dword ptr [_Lt_0807]
push dword ptr [ebp+8]
call _PARSEARGSFROMFILE@4
dec dword ptr [_Lt_0807]
jmp .Lt_04BD
.Lt_04C7:
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _HGETFILEEXT@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 0
push -1
push 0
lea eax, [ebp-16]
push eax
call _fb_StrLcase2@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 4
push offset _Lt_04D0
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_04CF
.Lt_04D1:
push dword ptr [ebp+8]
call _HADDBAS@4
jmp .Lt_04CE
.Lt_04CF:
push 2
push offset _Lt_044F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_04D2
.Lt_04D3:
push dword ptr [ebp+8]
call _FBCADDOBJ@4
jmp .Lt_04CE
.Lt_04D2:
push 2
push offset _Lt_03CE
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_04D4
.Lt_04D5:
push dword ptr [ebp+8]
lea eax, [_FBC+220]
push eax
call _STRLISTAPPEND@8
jmp .Lt_04CE
.Lt_04D4:
push 3
push offset _Lt_04D7
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
je .Lt_04D9
.Lt_04DA:
push 4
push offset _Lt_04D8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_04D6
.Lt_04D9:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+104]
push eax
call _LISTNEWNODE@4
push eax
call _HSETIOFILE@12
jmp .Lt_04CE
.Lt_04D6:
push 4
push offset _Lt_04DC
push -1
lea eax, [ebp-16]
push eax
call _fb_StrCompare@16
test eax, eax
jne .Lt_04DB
.Lt_04DD:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_04DF
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@4
.Lt_04DF:
.Lt_04DE:
push -1
push dword ptr [ebp+8]
lea eax, [_FBC+136]
push eax
call _HSETIOFILE@12
jmp .Lt_04CE
.Lt_04DB:
push dword ptr [ebp+8]
call _HFATALINVALIDOPTION@4
.Lt_04E0:
.Lt_04CE:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_04CD:
.Lt_04BD:
.Lt_04B6:
pop ebx
mov esp, ebp
pop ebp
ret 4

.section .data
.balign 4
_Lt_0807:
.int 0

.section .text
.balign 16
_PARSEARGSFROMFILE@4:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.Lt_04E1:
call _fb_FileFree@0
mov dword ptr [ebp-4], eax
push 0
push dword ptr [ebp-4]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .Lt_04E4
push 0
push 1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
push 26
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.Lt_04E4:
.Lt_04E3:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
.Lt_04E5:
push dword ptr [ebp-4]
call _fb_FileEof@4
test eax, eax
jne .Lt_04E6
push 0
push -1
lea eax, [ebp-16]
push eax
push dword ptr [ebp-4]
call _fb_FileLineInput@16
push 0
push -1
lea eax, [ebp-16]
push eax
call _fb_TRIM@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
.Lt_04E7:
push -1
lea eax, [ebp-16]
push eax
call _fb_StrLen@8
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 0
jne .Lt_04EB
jmp .Lt_04E8
.Lt_04EB:
.Lt_04EA:
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-40], 0
.Lt_04EC:
mov eax, dword ptr [ebp-32]
cmp dword ptr [ebp-36], eax
jge .Lt_04ED
mov eax, dword ptr [ebp-16]
add eax, dword ptr [ebp-36]
movzx ebx, byte ptr [eax]
mov dword ptr [ebp-44], ebx
mov ebx, dword ptr [ebp-44]
mov dword ptr [ebp-48], ebx
jmp .Lt_04EF
.Lt_04F1:
cmp dword ptr [ebp-40], 0
jne .Lt_04F3
jmp .Lt_04ED
.Lt_04F3:
.Lt_04F2:
jmp .Lt_04EE
.Lt_04F4:
mov ebx, dword ptr [ebp-44]
cmp dword ptr [ebp-40], ebx
jne .Lt_04F7
mov dword ptr [ebp-40], 0
jmp .Lt_04F6
.Lt_04F7:
cmp dword ptr [ebp-40], 0
jne .Lt_04F8
mov ebx, dword ptr [ebp-44]
mov dword ptr [ebp-40], ebx
.Lt_04F8:
.Lt_04F6:
jmp .Lt_04EE
.Lt_04EF:
mov ebx, dword ptr [ebp-48]
add ebx, 4294967264
cmp ebx, 7
ja .Lt_04EE
mov ebx, dword ptr [ebp-48]
jmp dword ptr [_.LT_04F9+ebx*4-128]
_.LT_04F9:
.int .Lt_04F1
.int .Lt_04EE
.int .Lt_04F4
.int .Lt_04EE
.int .Lt_04EE
.int .Lt_04EE
.int .Lt_04EE
.int .Lt_04F4
.Lt_04EE:
inc dword ptr [ebp-36]
jmp .Lt_04EC
.Lt_04ED:
cmp dword ptr [ebp-36], 0
jne .Lt_04FB
mov dword ptr [ebp-36], 1
jmp .Lt_04FA
.Lt_04FB:
push 0
push -1
push dword ptr [ebp-36]
lea ebx, [ebp-16]
push ebx
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-28]
push eax
call _fb_TRIM@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-28]
push eax
call _STRUNQUOTE@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _HANDLEARG@4
.Lt_04FA:
push 0
push -1
mov eax, dword ptr [ebp-32]
sub eax, dword ptr [ebp-36]
push eax
lea eax, [ebp-16]
push eax
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
.Lt_04E9:
jmp .Lt_04E7
.Lt_04E8:
jmp .Lt_04E5
.Lt_04E6:
push dword ptr [ebp-4]
call _fb_FileClose@4
test eax, eax
je .Lt_04FC
push 0
push 0
push offset _Lt_0087
push 2355
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_04FC:
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_04E2:
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HTARGETNEEDSPIC@0:
push ebp
mov ebp, esp
sub esp, 8
mov dword ptr [ebp-4], 0
.Lt_04FD:
mov dword ptr [ebp-4], 0
call _FBGETCPUFAMILY@0
test eax, eax
je .Lt_0500
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-8], eax
jmp .Lt_0502
.Lt_0504:
mov dword ptr [ebp-4], -1
jmp .Lt_0501
.Lt_0502:
mov eax, dword ptr [ebp-8]
add eax, 4294967294
cmp eax, 8
ja .Lt_0501
mov eax, dword ptr [ebp-8]
jmp dword ptr [_.LT_0505+eax*4-8]
_.LT_0505:
.int .Lt_0504
.int .Lt_0501
.int .Lt_0501
.int .Lt_0504
.int .Lt_0504
.int .Lt_0504
.int .Lt_0504
.int .Lt_0501
.int .Lt_0504
.Lt_0501:
.Lt_0500:
.Lt_04FF:
.Lt_04FE:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HPARSEARGS@8:
push ebp
mov ebp, esp
sub esp, 28
push ebx
push esi
.Lt_0506:
mov dword ptr [_FBC], -1
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
mov dword ptr [ebp-16], 1
mov eax, dword ptr [ebp+8]
dec eax
mov dword ptr [ebp-20], eax
jmp .Lt_0509
.Lt_050C:
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
call _fb_StrAssign@20
lea ebx, [ebp-12]
push ebx
call _HANDLEARG@4
.Lt_050A:
inc dword ptr [ebp-16]
.Lt_0509:
mov ebx, dword ptr [ebp-20]
cmp dword ptr [ebp-16], ebx
jle .Lt_050C
.Lt_050B:
cmp dword ptr [_FBC], 0
jl .Lt_050E
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
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _HFATALINVALIDOPTION@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_050E:
.Lt_050D:
call _HCHECKWAITINGOBJFILE@0
push 5
call _FBGETOPTION@4
test eax, eax
jne .Lt_0511
push 7
call _FBGETOPTION@4
cmp eax, 1
setge al
shr eax, 1
sbb eax, eax
push 6
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 1
sete al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0513
push 0
push 1
push -1
push offset _Lt_0000
push 284
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.Lt_0513:
.Lt_0512:
.Lt_0511:
.Lt_0510:
cmp dword ptr [_FBC+24], 0
jl .Lt_0515
push dword ptr [_FBC+24]
push 4
call _FBSETOPTION@8
.Lt_0515:
.Lt_0514:
push 3
call _FBGETOPTION@4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBGETCPUFAMILY@0
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
je .Lt_0517
push 0
push 1
push -1
call _FBGETFBCARCH@0
push eax
push 82
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.Lt_0517:
.Lt_0516:
call _FBGETCPUFAMILY@0
test eax, eax
jne .Lt_0519
push 0
push 2
call _FBSETOPTION@8
jmp .Lt_0518
.Lt_0519:
push 1
push 2
call _FBSETOPTION@8
.Lt_0518:
cmp dword ptr [_FBC+20], 0
jl .Lt_051B
push dword ptr [_FBC+20]
push 2
call _FBSETOPTION@8
.Lt_051B:
.Lt_051A:
push 2
call _FBGETOPTION@4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov ebx, eax
call _FBGETCPUFAMILY@0
test eax, eax
setne al
shr eax, 1
sbb eax, eax
and ebx, eax
push 2
call _FBGETOPTION@4
cmp eax, 3
sete al
shr eax, 1
sbb eax, eax
mov esi, eax
call _FBGETCPUFAMILY@0
cmp eax, 1
setne al
shr eax, 1
sbb eax, eax
and esi, eax
or ebx, esi
je .Lt_051D
push 0
push 1
push -1
call _FBGETFBCARCH@0
push eax
push 83
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.Lt_051D:
.Lt_051C:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-16], eax
jmp .Lt_051F
.Lt_0521:
jmp .Lt_051E
.Lt_0522:
lea eax, [_FBC+104]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_0524
push 0
push 1
push -1
mov eax, dword ptr [ebp-20]
push dword ptr [eax]
push 291
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.Lt_0524:
.Lt_0523:
jmp .Lt_051E
.Lt_051F:
cmp dword ptr [ebp-16], 4
ja .Lt_0522
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_0525+eax*4]
_.LT_0525:
.int .Lt_0521
.int .Lt_0521
.int .Lt_0522
.int .Lt_0522
.int .Lt_0521
.Lt_051E:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-16], eax
jmp .Lt_0527
.Lt_0529:
jmp .Lt_0526
.Lt_052A:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_052C
push 0
push 1
push -1
push dword ptr [_FBC+136]
push 291
call _ERRREPORTEX@20
push 1
call _FBCEND@4
.Lt_052C:
.Lt_052B:
jmp .Lt_0526
.Lt_0527:
mov eax, dword ptr [ebp-16]
add eax, 4294967294
cmp eax, 8
ja .Lt_052A
mov eax, dword ptr [ebp-16]
jmp dword ptr [_.LT_052D+eax*4-8]
_.LT_052D:
.int .Lt_0529
.int .Lt_052A
.int .Lt_052A
.int .Lt_0529
.int .Lt_0529
.int .Lt_0529
.int .Lt_0529
.int .Lt_0529
.int .Lt_0529
.Lt_0526:
cmp dword ptr [_FBC+32], 0
jl .Lt_052F
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-16], eax
cmp dword ptr [ebp-16], 0
je .Lt_0533
.Lt_0534:
cmp dword ptr [ebp-16], 1
jne .Lt_0532
.Lt_0533:
jmp .Lt_0530
.Lt_0532:
push 0
push 1
push -1
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
call _FBGETTARGETID@0
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-28]
push 319
call _ERRREPORTEX@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.Lt_0535:
.Lt_0530:
push 2
call _FBGETOPTION@4
test eax, eax
sete al
shr eax, 1
sbb eax, eax
push 2
mov ebx, eax
call _FBGETOPTION@4
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
je .Lt_0538
push 0
push 1
push -1
push offset _Lt_0000
push 84
call _ERRREPORTEX@20
.Lt_0538:
.Lt_0537:
push dword ptr [_FBC+32]
push 9
call _FBSETOPTION@8
.Lt_052F:
.Lt_052E:
push 0
call _FBGETOPTION@4
cmp eax, 2
jne .Lt_053A
call _HTARGETNEEDSPIC@0
test eax, eax
je .Lt_053C
push -1
push 32
call _FBSETOPTION@8
.Lt_053C:
.Lt_053B:
.Lt_053A:
.Lt_0539:
push 32
call _FBGETOPTION@4
test eax, eax
je .Lt_053E
push 0
call _FBGETOPTION@4
test eax, eax
jne .Lt_0540
push 0
push 1
push -1
push offset _Lt_0000
push 85
call _ERRREPORTEX@20
jmp .Lt_053F
.Lt_0540:
call _HTARGETNEEDSPIC@0
test eax, eax
jne .Lt_0541
push 0
push 1
push -1
push offset _Lt_0000
push 86
call _ERRREPORTEX@20
.Lt_0541:
.Lt_053F:
.Lt_053E:
.Lt_053D:
push -1
push 33
call _FBSETOPTION@8
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_0507:
pop esi
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_FBCDETERMINEPREFIX@0:
push ebp
mov ebp, esp
sub esp, 36
.Lt_0542:
push 261
lea eax, [_FBC+2132]
push eax
call _fb_StrLen@8
test eax, eax
jne .Lt_0545
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
call _fb_ExePath@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _PATHSTRIPDIV@4
push eax
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+2132]
push eax
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
push 0
push -1
push 4
push offset _Lt_0549
push 261
lea eax, [_FBC+2132]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+2132]
push eax
call _fb_StrAssign@20
jmp .Lt_0544
.Lt_0545:
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
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+2132]
push eax
call _fb_StrAssign@20
.Lt_0544:
.Lt_0543:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCSETUPCOMPILERPATHS@0:
push ebp
mov ebp, esp
sub esp, 168
.Lt_054C:
push 0
push -1
call _FBGETTARGETID@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 10
push offset _Lt_054E
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 4
push offset _Lt_004A
push -1
lea eax, [ebp-36]
push eax
call _fb_StrInit@20
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
push offset _Lt_054F
push 261
lea eax, [_FBC+2132]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+2393]
push eax
call _fb_StrAssign@20
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
push offset _Lt_0427
push 261
lea eax, [_FBC+2132]
push eax
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+2654]
push eax
call _fb_StrAssign@20
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
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-156], 0
mov dword ptr [ebp-152], 0
mov dword ptr [ebp-148], 0
lea eax, [ebp-156]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-168], 0
mov dword ptr [ebp-164], 0
mov dword ptr [ebp-160], 0
lea eax, [ebp-168]
push eax
call _fb_StrConcat@20
push eax
push 261
lea eax, [_FBC+2915]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_054D:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCPRINTTARGETINFO@0:
push ebp
mov ebp, esp
sub esp, 36
.Lt_055B:
push 0
push -1
call _FBGETTARGETID@0
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrInit@20
push 0
push -1
push -1
push 0
call _FBGETFBCARCH@0
push eax
push 3
push offset _Lt_055D
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
push 0
push 3
push offset _Lt_055D
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
call _FBGETBITS@0
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 4
push offset _Lt_0560
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 129
lea eax, [_FBC+1730]
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_0562
push 0
push 3
push offset _Lt_0563
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 129
lea eax, [_FBC+1730]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0564
push -1
lea eax, [ebp-12]
push eax
call _fb_StrConcatAssign@20
.Lt_0562:
.Lt_0561:
push 2
push 7
push offset _Lt_0565
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
lea eax, [ebp-12]
push eax
push 0
call _fb_PrintString@12
push 2
push 8
push offset _Lt_0566
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 2
call _FBGETOPTION@4
push eax
call _FBGETBACKENDNAME@4
push eax
push 0
call _fb_PrintString@12
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_055C:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCDETERMINEMAINNAME@0:
push ebp
mov ebp, esp
sub esp, 20
push ebx
.Lt_0567:
push 261
lea eax, [_FBC+689]
push eax
call _fb_StrLen@8
test eax, eax
jne .Lt_056A
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
cmp dword ptr [ebp-4], 0
je .Lt_056C
push 0
push -1
mov eax, dword ptr [ebp-4]
lea ebx, [eax]
push ebx
push 261
lea ebx, [_FBC+689]
push ebx
call _fb_StrAssign@20
jmp .Lt_056B
.Lt_056C:
lea ebx, [_FBC+188]
push ebx
call _LISTGETHEAD@4
mov dword ptr [ebp-20], eax
cmp dword ptr [ebp-20], 0
je .Lt_056E
push 0
push -1
push dword ptr [ebp-20]
push 261
lea eax, [_FBC+689]
push eax
call _fb_StrAssign@20
jmp .Lt_056D
.Lt_056E:
push 0
push 8
push offset _Lt_056F
push 261
lea eax, [_FBC+689]
push eax
call _fb_StrAssign@20
.Lt_056D:
.Lt_056B:
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
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _HSTRIPEXT@4
push eax
push 261
lea eax, [_FBC+689]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_056A:
.Lt_0569:
.Lt_0568:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HGETASMNAME@8:
push ebp
mov ebp, esp
sub esp, 44
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_0571:
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 3
call _FBGETOPTION@4
cmp eax, 11
je .Lt_0574
mov eax, offset _Lt_0575
mov dword ptr [ebp-16], eax
jmp .Lt_0573
.Lt_0574:
mov eax, offset _Lt_029B
mov dword ptr [ebp-16], eax
.Lt_0573:
push 2
call _FBGETOPTION@4
cmp eax, 3
jne .Lt_0577
mov eax, offset _Lt_0578
mov dword ptr [ebp-16], eax
.Lt_0577:
.Lt_0576:
cmp dword ptr [ebp+12], 1
jne .Lt_057A
push 2
call _FBGETOPTION@4
mov dword ptr [ebp-44], eax
cmp dword ptr [ebp-44], 1
jne .Lt_057D
.Lt_057E:
mov eax, offset _Lt_057F
mov dword ptr [ebp-16], eax
jmp .Lt_057B
.Lt_057D:
cmp dword ptr [ebp-44], 2
jne .Lt_0580
.Lt_0581:
mov eax, offset _Lt_0582
mov dword ptr [ebp-16], eax
.Lt_0580:
.Lt_057B:
.Lt_057A:
.Lt_0579:
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
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
.Lt_0572:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCOMPILEBAS@12:
push ebp
mov ebp, esp
sub esp, 48
push ebx
.Lt_0584:
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
call _HGETASMNAME@8
push eax
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [_FBC+40]
not eax
push 2
mov ebx, eax
call _FBGETOPTION@4
test eax, eax
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_FBC+48]
not ecx
or eax, ecx
and ebx, eax
je .Lt_0587
lea eax, [ebp-24]
push eax
call _FBCADDTEMP@4
.Lt_0587:
.Lt_0586:
push 1
call _FBGETOPTION@4
test eax, eax
je .Lt_0589
push 0
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [ebp+8]
cmp dword ptr [eax+16], 0
jne .Lt_058B
push 0
push -1
push 8
push offset _Lt_058C
push -1
lea eax, [ebp-36]
push eax
call _HSTRIPEXT@4
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
.Lt_058B:
.Lt_058A:
.Lt_0589:
.Lt_0588:
cmp dword ptr [_FBC+56], 0
je .Lt_058F
push 2
push 11
push offset _Lt_0590
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 0
call _fb_PrintString@12
push 0
push 4
push offset _Lt_0591
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 0
lea eax, [ebp-24]
push eax
push 0
call _fb_PrintString@12
push 1
call _FBGETOPTION@4
test eax, eax
je .Lt_0593
push 0
push -1
lea eax, [ebp-36]
push eax
push 6
push offset _Lt_0594
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
.Lt_0593:
.Lt_0592:
cmp dword ptr [ebp+12], 0
je .Lt_0597
push 0
push 14
push offset _Lt_0598
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .Lt_0596
.Lt_0597:
cmp dword ptr [ebp+16], 0
je .Lt_0599
push 0
push 23
push offset _Lt_059A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.Lt_0599:
.Lt_0596:
push 1
push 0
call _fb_PrintVoid@8
.Lt_058F:
.Lt_058E:
mov dword ptr [ebp-12], 0
push 10
call _FBGETOPTION@4
mov dword ptr [ebp-4], eax
push 0
call _FBGETOPTION@4
mov dword ptr [ebp-8], eax
cmp dword ptr [ebp+16], 0
je .Lt_059C
push 3
push 0
call _FBSETOPTION@8
.Lt_059C:
.Lt_059B:
.Lt_059D:
push dword ptr [ebp-12]
push dword ptr [ebp+12]
call _FBINIT@8
cmp dword ptr [ebp+16], 0
je .Lt_05A1
lea eax, [_FBC+384]
push eax
lea eax, [_FBC+340]
push eax
call _FBSETLIBS@8
jmp .Lt_05A0
.Lt_05A1:
lea eax, [_FBC+296]
push eax
lea eax, [_FBC+252]
push eax
call _FBSETLIBS@8
.Lt_05A0:
push dword ptr [ebp+12]
lea eax, [ebp-36]
push eax
push dword ptr [ebp-24]
mov eax, dword ptr [ebp+8]
push dword ptr [eax]
call _FBCOMPILE@16
call _ERRGETCOUNT@0
test eax, eax
jle .Lt_05A3
push 1
call _FBCEND@4
.Lt_05A3:
.Lt_05A2:
call _FBSHOULDRESTART@0
test eax, eax
jne .Lt_05A5
jmp .Lt_059E
.Lt_05A5:
.Lt_05A4:
inc dword ptr [ebp-12]
call _FBEND@0
.Lt_059F:
jmp .Lt_059D
.Lt_059E:
cmp dword ptr [ebp+16], 0
jne .Lt_05A7
lea eax, [_FBC+384]
push eax
lea eax, [_FBC+340]
push eax
call _FBGETLIBS@8
.Lt_05A7:
.Lt_05A6:
call _FBEND@0
push dword ptr [ebp-8]
push 0
call _FBSETOPTION@8
push dword ptr [ebp-4]
push 10
call _FBSETOPTION@8
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_0585:
pop ebx
mov esp, ebp
pop ebp
ret 12
.balign 16
_HCOMPILEMODULES@0:
push ebp
mov ebp, esp
sub esp, 36
push ebx
.Lt_05A8:
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-4], 0
push 0
call _FBGETOPTION@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 0
je .Lt_05AD
.Lt_05AE:
cmp dword ptr [ebp-28], 2
jne .Lt_05AC
.Lt_05AD:
mov dword ptr [ebp-8], -1
jmp .Lt_05AA
.Lt_05AC:
mov eax, dword ptr [_FBC+952]
mov dword ptr [ebp-8], eax
.Lt_05AF:
.Lt_05AA:
cmp dword ptr [ebp-8], 0
je .Lt_05B1
push 0
push -1
lea eax, [_FBC+689]
push eax
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrAssign@20
.Lt_05B1:
.Lt_05B0:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-24], eax
cmp dword ptr [ebp-24], 0
jne .Lt_05B3
lea eax, [_FBC+252]
push eax
lea eax, [_FBC+340]
push eax
call _STRSETCOPY@8
lea eax, [_FBC+296]
push eax
lea eax, [_FBC+384]
push eax
call _STRSETCOPY@8
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
jmp .Lt_05A9
.Lt_05B3:
.Lt_05B2:
.Lt_05B4:
cmp dword ptr [ebp-8], 0
je .Lt_05B8
push -1
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push -1
mov eax, dword ptr [ebp-24]
lea ebx, [eax]
push ebx
call _HSTRIPEXT@4
push eax
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-36]
call _HSTRIPPATH@4
push eax
push -1
lea eax, [ebp-20]
push eax
call _fb_StrCompare@16
test eax, eax
sete al
shr eax, 1
sbb eax, eax
mov dword ptr [ebp-4], eax
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
.Lt_05B8:
.Lt_05B7:
push 0
push dword ptr [ebp-4]
push dword ptr [ebp-24]
call _HCOMPILEBAS@12
push dword ptr [ebp-24]
call _LISTGETNEXT@4
mov dword ptr [ebp-24], eax
.Lt_05B6:
cmp dword ptr [ebp-24], 0
jne .Lt_05B4
.Lt_05B5:
lea eax, [ebp-20]
push eax
call _fb_StrDelete@4
.Lt_05A9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPARSEXPM@8:
push ebp
mov ebp, esp
sub esp, 144
push ebx
mov dword ptr [ebp-4], 0
.Lt_05BA:
push 0
push -1
push 28
push offset _Lt_05BC
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
lea eax, [ebp-16]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push 0
push -1
push 21
push offset _Lt_05BE
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push 0
push -1
push 20
push offset _Lt_05C0
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
call _fb_FileFree@0
mov dword ptr [ebp-44], eax
push 0
push dword ptr [ebp-44]
push 0
push 0
push 2
push dword ptr [ebp+8]
call _fb_FileOpen@24
test eax, eax
je .Lt_05C3
jmp .Lt_05BB
.Lt_05C3:
.Lt_05C2:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push -1
lea eax, [ebp-56]
push eax
push dword ptr [ebp-44]
call _fb_FileLineInput@16
push 10
push offset _Lt_05C4
push -1
push 0
lea eax, [ebp-56]
push eax
call _fb_StrUcase2@8
push eax
call _fb_StrCompare@16
test eax, eax
je .Lt_05C6
push dword ptr [ebp-44]
call _fb_FileClose@4
test eax, eax
je .Lt_05C7
push 0
push 0
push offset _Lt_0087
push 2886
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_05C7:
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
jmp .Lt_05BB
.Lt_05C6:
.Lt_05C5:
mov dword ptr [ebp-60], 0
.Lt_05C8:
push dword ptr [ebp-44]
call _fb_FileEof@4
test eax, eax
jne .Lt_05C9
push 0
push -1
lea eax, [ebp-56]
push eax
push dword ptr [ebp-44]
call _fb_FileLineInput@16
push 0
push -1
push -1
lea eax, [ebp-56]
push eax
call _fb_StrLen@8
push 1
push offset _Lt_0109
mov ebx, eax
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-56]
push eax
push 1
call _fb_StrInstr@12
sub ebx, eax
inc ebx
push ebx
lea ebx, [ebp-56]
push ebx
call _fb_RIGHT@8
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
push 0
push -1
push 1
push offset _Lt_0109
call _fb_StrAllocTempDescZEx@8
push eax
lea eax, [ebp-56]
push eax
push 2
call _fb_StrInstr@12
push eax
lea eax, [ebp-56]
push eax
call _fb_LEFT@8
push eax
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
push -1
lea eax, [ebp-56]
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_05CB
cmp dword ptr [ebp-60], 0
je .Lt_05CD
push 0
push -1
push 5
push offset _Lt_05CE
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-144], 0
mov dword ptr [ebp-140], 0
mov dword ptr [ebp-136], 0
lea eax, [ebp-144]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
.Lt_05CD:
.Lt_05CC:
push 0
push -1
push -1
push -1
lea eax, [ebp-56]
push eax
push 3
push offset _Lt_05D0
mov dword ptr [ebp-120], 0
mov dword ptr [ebp-116], 0
mov dword ptr [ebp-112], 0
lea eax, [ebp-120]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-132], 0
mov dword ptr [ebp-128], 0
mov dword ptr [ebp-124], 0
lea eax, [ebp-132]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
mov dword ptr [ebp-60], -1
.Lt_05CB:
.Lt_05CA:
jmp .Lt_05C8
.Lt_05C9:
push dword ptr [ebp-44]
call _fb_FileClose@4
test eax, eax
je .Lt_05D3
push 0
push 0
push offset _Lt_0087
push 2916
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_05D3:
cmp dword ptr [ebp-60], 0
jne .Lt_05D5
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
jmp .Lt_05BB
.Lt_05D5:
.Lt_05D4:
push 0
push -1
push 5
push offset _Lt_05D6
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
lea eax, [ebp-72]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push 0
push -1
push 4
push offset _Lt_05D8
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
lea eax, [ebp-84]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push 0
push -1
push 67
push offset _Lt_05DA
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-96], 0
mov dword ptr [ebp-92], 0
mov dword ptr [ebp-88], 0
lea eax, [ebp-96]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
push 0
push -1
push 74
push offset _Lt_05DE
push -1
push dword ptr [ebp+12]
mov dword ptr [ebp-108], 0
mov dword ptr [ebp-104], 0
mov dword ptr [ebp-100], 0
lea eax, [ebp-108]
push eax
call _fb_StrConcat@20
push eax
push -1
push dword ptr [ebp+12]
call _fb_StrAssign@20
mov dword ptr [ebp-4], -1
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
.Lt_05BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 8
.balign 16
_HCOMPILEXPM@0:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.Lt_05E0:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen@8
test eax, eax
jne .Lt_05E3
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_05E1
.Lt_05E3:
.Lt_05E2:
push 0
push -1
lea eax, [_FBC+136]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push -1
push dword ptr [_FBC+148]
call _fb_StrLen@8
test eax, eax
jle .Lt_05E5
push 0
push -1
push dword ptr [_FBC+148]
call _HSTRIPEXT@4
push eax
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrAssign@20
.Lt_05E5:
.Lt_05E4:
push 0
push 5
push offset _Lt_05E6
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrConcatAssign@20
cmp dword ptr [_FBC+56], 0
je .Lt_05E8
push 2
push 13
push offset _Lt_05E9
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push -1
lea eax, [_FBC+136]
push eax
push -1
push 5
push offset _Lt_0591
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
.Lt_05E8:
.Lt_05E7:
lea eax, [ebp-28]
push eax
lea eax, [ebp-16]
push eax
call _HPARSEXPM@8
test eax, eax
jne .Lt_05ED
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_05E1
.Lt_05ED:
.Lt_05EC:
call _fb_FileFree@0
mov dword ptr [ebp-32], eax
push 0
push dword ptr [ebp-32]
push 0
push 0
push 3
lea eax, [_FBC+136]
push eax
call _fb_FileOpen@24
test eax, eax
je .Lt_05EF
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_05E1
.Lt_05EF:
.Lt_05EE:
mov eax, dword ptr [ebp-32]
mov dword ptr [ebp-36], eax
push 0
lea eax, [ebp-28]
push eax
push dword ptr [ebp-36]
call _fb_PrintString@12
push dword ptr [ebp-32]
call _fb_FileClose@4
test eax, eax
je .Lt_05F1
push 0
push 0
push offset _Lt_0087
push 2972
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_05F1:
cmp dword ptr [_FBC+40], 0
jne .Lt_05F3
lea eax, [_FBC+136]
push eax
call _FBCADDTEMP@4
.Lt_05F3:
.Lt_05F2:
push 0
push 0
lea eax, [_FBC+136]
push eax
call _HCOMPILEBAS@12
mov dword ptr [ebp-4], -1
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_05E1:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HCOMPILESTAGE2MODULE@4:
push ebp
mov ebp, esp
sub esp, 68
push ebx
mov dword ptr [ebp-4], 0
.Lt_05F4:
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
call _HGETASMNAME@8
push eax
push -1
lea eax, [ebp-28]
push eax
call _fb_StrAssign@20
mov eax, dword ptr [_FBC+48]
not eax
push 3
mov ebx, eax
call _FBGETOPTION@4
cmp eax, 11
setne al
shr eax, 1
sbb eax, eax
mov ecx, dword ptr [_FBC+52]
not ecx
or eax, ecx
and ebx, eax
je .Lt_05F7
lea eax, [ebp-28]
push eax
call _FBCADDTEMP@4
.Lt_05F7:
.Lt_05F6:
push 2
call _FBGETOPTION@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .Lt_05FA
.Lt_05FB:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_05FE
.Lt_05FF:
push 0
push 6
push offset _Lt_0600
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_05FC
.Lt_05FE:
cmp dword ptr [ebp-36], 1
jne .Lt_0601
.Lt_0602:
push 0
push 6
push offset _Lt_0603
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_05FC
.Lt_0601:
cmp dword ptr [ebp-36], 4
jne .Lt_0604
.Lt_0605:
push 0
push 6
push offset _Lt_0600
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_05FC
.Lt_0604:
cmp dword ptr [ebp-36], 5
jne .Lt_0606
.Lt_0607:
push 0
push 6
push offset _Lt_0603
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0606:
.Lt_05FC:
push 3
call _FBGETOPTION@4
cmp eax, 11
je .Lt_0609
cmp dword ptr [_FBC+28], 0
je .Lt_060B
push 0
push 14
push offset _Lt_060C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_060A
.Lt_060B:
push 0
push -1
push -1
push 2
push offset _Lt_00C3
push -1
push 0
call _FBGETGCCARCH@0
push eax
push 7
push offset _Lt_060D
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
lea eax, [ebp-44]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
.Lt_060A:
.Lt_0609:
.Lt_0608:
push 32
call _FBGETOPTION@4
test eax, eax
je .Lt_0612
push 0
push 7
push offset _Lt_0613
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0612:
.Lt_0611:
push 3
call _FBGETOPTION@4
cmp eax, 11
je .Lt_0615
push 0
push 90
push offset _Lt_0618
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 30
push offset _Lt_0619
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0614
.Lt_0615:
push 0
push 90
push offset _Lt_061B
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 70
push offset _Lt_061C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0614:
push 0
push 11
push offset _Lt_061D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 39
push offset _Lt_061E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 3
call _FBGETOPTION@4
cmp eax, 11
je .Lt_0620
push 0
push 3
push offset _Lt_0621
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 8
call _FBGETOPTION@4
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00C3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0620:
.Lt_061F:
push 0
push 22
push offset _Lt_0622
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 3
call _FBGETOPTION@4
cmp eax, 11
je .Lt_0624
push 0
push 17
push offset _Lt_0625
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0624:
.Lt_0623:
push 0
push 17
push offset _Lt_0626
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 9
push offset _Lt_0627
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 68
push offset _Lt_0628
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 13
push offset _Lt_0629
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 13
call _FBGETOPTION@4
test eax, eax
je .Lt_062B
push 0
push 4
push offset _Lt_062C
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_062B:
.Lt_062A:
push 5
call _FBGETOPTION@4
cmp eax, 1
jne .Lt_062E
push 0
push 21
push offset _Lt_062F
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_062E:
.Lt_062D:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .Lt_0633
.Lt_0634:
cmp dword ptr [ebp-36], 1
jne .Lt_0632
.Lt_0633:
push 9
call _FBGETOPTION@4
test eax, eax
jne .Lt_0636
push 0
push 13
push offset _Lt_0637
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0636:
.Lt_0635:
.Lt_0632:
.Lt_0630:
jmp .Lt_05F8
.Lt_05FA:
cmp dword ptr [ebp-32], 2
jne .Lt_0638
.Lt_0639:
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
jne .Lt_063C
.Lt_063D:
push 0
push 12
push offset _Lt_063E
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_063A
.Lt_063C:
cmp dword ptr [ebp-36], 1
jne .Lt_063F
.Lt_0640:
push 0
push 15
push offset _Lt_0641
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_063A
.Lt_063F:
cmp dword ptr [ebp-36], 2
jne .Lt_0642
.Lt_0643:
push 0
push 12
push offset _Lt_0644
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_063A
.Lt_0642:
cmp dword ptr [ebp-36], 3
jne .Lt_0645
.Lt_0646:
push 0
push 16
push offset _Lt_0647
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_063A
.Lt_0645:
cmp dword ptr [ebp-36], 4
jne .Lt_0648
.Lt_0649:
push 0
push 16
push offset _Lt_064A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_063A
.Lt_0648:
cmp dword ptr [ebp-36], 5
jne .Lt_064B
.Lt_064C:
push 0
push 18
push offset _Lt_064D
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_064B:
.Lt_063A:
push 32
call _FBGETOPTION@4
test eax, eax
je .Lt_064F
push 0
push 23
push offset _Lt_0650
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_064F:
.Lt_064E:
push 0
push 3
push offset _Lt_0621
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 8
call _FBGETOPTION@4
push eax
call _fb_IntToStr@4
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_00C3
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-36], eax
cmp dword ptr [ebp-36], 0
je .Lt_0654
.Lt_0655:
cmp dword ptr [ebp-36], 1
jne .Lt_0653
.Lt_0654:
push 9
call _FBGETOPTION@4
test eax, eax
jne .Lt_0657
push 0
push 24
push offset _Lt_0658
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0657:
.Lt_0656:
.Lt_0653:
.Lt_0651:
.Lt_0638:
.Lt_05F8:
push 0
push 2
push offset _Lt_0109
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 1
push dword ptr [ebp+8]
call _HGETASMNAME@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0659
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 5
push offset _Lt_065A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
lea eax, [ebp-28]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 2
push offset _Lt_0109
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 128
lea eax, [_FBC+1602]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 2
call _FBGETOPTION@4
mov dword ptr [ebp-32], eax
cmp dword ptr [ebp-32], 1
jne .Lt_065D
.Lt_065E:
mov dword ptr [ebp-36], 3
push 3
call _FBGETOPTION@4
cmp eax, 11
jne .Lt_0660
mov dword ptr [ebp-36], 13
.Lt_0660:
.Lt_065F:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-36]
push offset _Lt_0661
call _FBCRUNBIN@12
mov dword ptr [ebp-4], eax
jmp .Lt_065B
.Lt_065D:
cmp dword ptr [ebp-32], 2
jne .Lt_0662
.Lt_0663:
lea eax, [ebp-16]
push eax
push 4
push offset _Lt_0664
call _FBCRUNBIN@12
mov dword ptr [ebp-4], eax
.Lt_0662:
.Lt_065B:
lea eax, [ebp-28]
push eax
call _fb_StrDelete@4
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_05F5:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HCOMPILESTAGE2MODULES@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_0665:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.Lt_0667:
cmp dword ptr [ebp-4], 0
je .Lt_0668
push dword ptr [ebp-4]
call _HCOMPILESTAGE2MODULE@4
test eax, eax
jne .Lt_066A
push 1
call _FBCEND@4
.Lt_066A:
.Lt_0669:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .Lt_0667
.Lt_0668:
.Lt_0666:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLEMODULE@4:
push ebp
mov ebp, esp
sub esp, 60
mov dword ptr [ebp-4], 0
.Lt_066B:
mov dword ptr [ebp-16], 0
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
call _FBGETCPUFAMILY@0
mov dword ptr [ebp-60], eax
cmp dword ptr [ebp-60], 0
jne .Lt_066F
.Lt_0670:
push 3
call _FBGETOPTION@4
cmp eax, 9
jne .Lt_0672
push 0
push 12
push offset _Lt_0673
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0671
.Lt_0672:
push 0
push 6
push offset _Lt_0674
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0671:
jmp .Lt_066D
.Lt_066F:
cmp dword ptr [ebp-60], 1
jne .Lt_0675
.Lt_0676:
push 3
call _FBGETOPTION@4
cmp eax, 9
jne .Lt_0678
push 0
push 14
push offset _Lt_0679
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
jmp .Lt_0677
.Lt_0678:
push 0
push 6
push offset _Lt_067A
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0677:
.Lt_0675:
.Lt_066D:
push 13
call _FBGETOPTION@4
test eax, eax
jne .Lt_067C
push 3
call _FBGETOPTION@4
cmp eax, 9
je .Lt_067E
push 3
call _FBGETOPTION@4
cmp eax, 11
je .Lt_0680
push 0
push 24
push offset _Lt_0681
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_0680:
.Lt_067F:
.Lt_067E:
.Lt_067D:
.Lt_067C:
.Lt_067B:
push 3
call _FBGETOPTION@4
cmp eax, 11
jne .Lt_0683
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_066C
.Lt_0683:
.Lt_0682:
push 0
push 2
push offset _Lt_0109
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push 2
push dword ptr [ebp+8]
call _HGETASMNAME@8
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push 3
push offset _Lt_0659
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_0109
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 5
push offset _Lt_065A
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push 128
lea eax, [_FBC+1346]
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
mov dword ptr [ebp-56], 0
push 3
call _FBGETOPTION@4
cmp eax, 11
jne .Lt_0688
mov dword ptr [ebp-56], 10
.Lt_0688:
.Lt_0687:
lea eax, [ebp-16]
push eax
push dword ptr [ebp-56]
push offset _Lt_0689
call _FBCRUNBIN@12
test eax, eax
jne .Lt_068B
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
jmp .Lt_066C
.Lt_068B:
.Lt_068A:
cmp dword ptr [_FBC+52], 0
jne .Lt_068D
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _FBCADDTEMP@4
.Lt_068D:
.Lt_068C:
mov dword ptr [ebp-4], -1
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_066C:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret 4
.balign 16
_HASSEMBLEMODULES@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_068E:
lea eax, [_FBC+72]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.Lt_0690:
cmp dword ptr [ebp-4], 0
je .Lt_0691
push dword ptr [ebp-4]
call _HASSEMBLEMODULE@4
test eax, eax
jne .Lt_0693
push 1
call _FBCEND@4
.Lt_0693:
.Lt_0692:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .Lt_0690
.Lt_0691:
.Lt_068F:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLERC@4:
push ebp
mov ebp, esp
sub esp, 88
push ebx
mov dword ptr [ebp-4], 0
.Lt_0694:
push 0
push 37
push offset _Lt_0696
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 0
push -1
push -1
push 2
push offset _Lt_0109
push -1
push -1
mov eax, dword ptr [ebp+8]
lea ebx, [eax]
push ebx
push 3
push offset _Lt_011E
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea ebx, [ebp-28]
push ebx
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
lea eax, [ebp-52]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push 0
push -1
push -1
push 2
push offset _Lt_0109
push -1
push -1
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
push 3
push offset _Lt_011E
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
lea eax, [ebp-64]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
mov dword ptr [ebp-68], 0
lea eax, [ebp-76]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-88], 0
mov dword ptr [ebp-84], 0
mov dword ptr [ebp-80], 0
lea eax, [ebp-88]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
lea eax, [ebp-16]
push eax
push 7
push offset _Lt_069D
call _FBCRUNBIN@12
mov dword ptr [ebp-4], eax
cmp dword ptr [_FBC+52], 0
jne .Lt_069F
mov eax, dword ptr [ebp+8]
push dword ptr [eax+12]
call _FBCADDTEMP@4
.Lt_069F:
.Lt_069E:
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_0695:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret 4
.balign 16
_HASSEMBLERCS@0:
push ebp
mov ebp, esp
sub esp, 4
.Lt_06A0:
lea eax, [_FBC+104]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-4], eax
.Lt_06A2:
cmp dword ptr [ebp-4], 0
je .Lt_06A3
push dword ptr [ebp-4]
call _HASSEMBLERC@4
test eax, eax
jne .Lt_06A5
push 1
call _FBCEND@4
.Lt_06A5:
.Lt_06A4:
push dword ptr [ebp-4]
call _LISTGETNEXT@4
mov dword ptr [ebp-4], eax
jmp .Lt_06A2
.Lt_06A3:
.Lt_06A1:
mov esp, ebp
pop ebp
ret
.balign 16
_HASSEMBLEXPM@0:
.Lt_06A6:
push -1
lea eax, [_FBC+136]
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_06A9
push 2
call _FBGETOPTION@4
test eax, eax
je .Lt_06AB
lea eax, [_FBC+136]
push eax
call _HCOMPILESTAGE2MODULE@4
.Lt_06AB:
.Lt_06AA:
lea eax, [_FBC+136]
push eax
call _HASSEMBLEMODULE@4
test eax, eax
jne .Lt_06AD
push 1
call _FBCEND@4
.Lt_06AD:
.Lt_06AC:
.Lt_06A9:
.Lt_06A8:
.Lt_06A7:
ret
.balign 16
_HCOMPILEFBCTINF@0:
push ebp
mov ebp, esp
sub esp, 40
mov dword ptr [ebp-4], 0
.Lt_06AE:
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILEC1Ev
add esp, 4
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
push 0
push 16
push offset _Lt_001F
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
push 0
push 12
push offset _Lt_001E
push -1
lea eax, [ebp-36]
push eax
call _fb_StrAssign@20
lea eax, [ebp-36]
mov dword ptr [ebp-12], eax
cmp dword ptr [_FBC+56], 0
je .Lt_06B1
push 2
push 10
push offset _Lt_06B2
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
lea eax, [ebp-24]
push eax
push 0
call _fb_PrintString@12
.Lt_06B1:
.Lt_06B0:
call _fb_FileFree@0
mov dword ptr [ebp-40], eax
push 0
push dword ptr [ebp-40]
push 0
push 0
push 3
lea eax, [ebp-24]
push eax
call _fb_FileOpen@24
test eax, eax
je .Lt_06B4
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILED1Ev
add esp, 4
jmp .Lt_06AF
.Lt_06B4:
.Lt_06B3:
push dword ptr [ebp-40]
call _fb_FileClose@4
test eax, eax
je .Lt_06B5
push 0
push 0
push offset _Lt_0087
push 3348
call _fb_ErrorThrowAt
add esp, 16
jmp eax
.Lt_06B5:
cmp dword ptr [_FBC+40], 0
jne .Lt_06B7
lea eax, [ebp-24]
push eax
call _FBCADDTEMP@4
.Lt_06B7:
.Lt_06B6:
push -1
push 0
lea eax, [ebp-24]
push eax
call _HCOMPILEBAS@12
push 2
call _FBGETOPTION@4
test eax, eax
je .Lt_06B9
lea eax, [ebp-24]
push eax
call _HCOMPILESTAGE2MODULE@4
.Lt_06B9:
.Lt_06B8:
lea eax, [ebp-24]
push eax
call _HASSEMBLEMODULE@4
mov dword ptr [ebp-4], eax
lea eax, [ebp-36]
push eax
call _fb_StrDelete@4
lea eax, [ebp-24]
push eax
call __ZN9FBCIOFILED1Ev
add esp, 4
.Lt_06AF:
mov eax, dword ptr [ebp-4]
mov esp, ebp
pop ebp
ret
.balign 16
_HARCHIVEFILES@0:
push ebp
mov ebp, esp
sub esp, 80
push ebx
mov dword ptr [ebp-4], 0
.Lt_06BA:
call _HSETOUTNAME@0
lea eax, [_FBC+428]
push eax
call _fb_StrAllocTempDescZ@4
push eax
call _fb_FileKill@4
test eax, eax
je .Lt_06BD
.Lt_06BD:
.Lt_06BC:
push 0
push -1
push 3
push offset _Lt_024E
push -1
push 261
lea eax, [_FBC+428]
push eax
push 7
push offset _Lt_06BF
mov dword ptr [ebp-28], 0
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
lea eax, [ebp-28]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-40], 0
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
lea eax, [ebp-40]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrInit@20
push 34
call _FBGETOPTION@4
mov ebx, eax
call _FBISCROSSCOMP@0
not eax
and ebx, eax
je .Lt_06C3
call _HCOMPILEFBCTINF@0
test eax, eax
je .Lt_06C5
push 0
push 15
push offset _Lt_06C8
push -1
lea eax, [ebp-16]
push eax
call _fb_StrConcatAssign@20
.Lt_06C5:
.Lt_06C4:
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
push 0
push 12
push offset _Lt_001E
push -1
lea eax, [ebp-56]
push eax
call _fb_StrAssign@20
lea eax, [ebp-56]
push eax
call _FBCADDTEMP@4
lea eax, [ebp-56]
push eax
call _fb_StrDelete@4
.Lt_06C3:
.Lt_06C2:
lea eax, [_FBC+188]
push eax
call _LISTGETHEAD@4
mov dword ptr [ebp-44], eax
.Lt_06CA:
cmp dword ptr [ebp-44], 0
je .Lt_06CB
push 0
push -1
push -1
push 3
push offset _Lt_0659
push -1
push -1
push dword ptr [ebp-44]
push 2
push offset _Lt_0109
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
mov dword ptr [ebp-48], 0
lea eax, [ebp-56]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-68], 0
mov dword ptr [ebp-64], 0
mov dword ptr [ebp-60], 0
lea eax, [ebp-68]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
mov dword ptr [ebp-80], 0
mov dword ptr [ebp-76], 0
mov dword ptr [ebp-72], 0
lea eax, [ebp-80]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-16]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-44]
call _LISTGETNEXT@4
mov dword ptr [ebp-44], eax
jmp .Lt_06CA
.Lt_06CB:
lea eax, [ebp-16]
push eax
push 1
push offset _Lt_06CF
call _FBCRUNBIN@12
mov dword ptr [ebp-4], eax
lea eax, [ebp-16]
push eax
call _fb_StrDelete@4
.Lt_06BB:
mov eax, dword ptr [ebp-4]
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HSETDEFAULTLIBPATHS@0:
push ebp
mov ebp, esp
sub esp, 28
.Lt_06D0:
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
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
call _FBCADDDEFLIBPATH@4
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push 2
push offset _Lt_0009
push -1
lea eax, [ebp-24]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _FBCADDDEFLIBPATH@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push 3
call _FBGETOPTION@4
cmp eax, 11
je .Lt_06D5
push offset _Lt_06D6
call _FBCADDLIBPATHFOR@4
.Lt_06D5:
.Lt_06D4:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-28], eax
cmp dword ptr [ebp-28], 3
jne .Lt_06D9
.Lt_06DA:
push offset _Lt_06DB
call _FBCADDLIBPATHFOR@4
jmp .Lt_06D7
.Lt_06D9:
cmp dword ptr [ebp-28], 0
jne .Lt_06DC
.Lt_06DD:
push offset _Lt_06DE
call _FBCADDLIBPATHFOR@4
.Lt_06DC:
.Lt_06D7:
.Lt_06D1:
mov esp, ebp
pop ebp
ret
.balign 16
_FBCADDDEFLIB@4:
push ebp
mov ebp, esp
sub esp, 12
.Lt_06DF:
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
call _fb_StrAssign@20
lea eax, [ebp-12]
push eax
lea eax, [_FBC+340]
push eax
call _STRSETADD@12
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_06E0:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HGETFBLIBNAMESUFFIX@0:
push ebp
mov ebp, esp
sub esp, 24
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
.Lt_06E2:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 30
call _FBGETOPTION@4
test eax, eax
je .Lt_06E5
push 0
push 3
push offset _Lt_043D
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.Lt_06E5:
.Lt_06E4:
push 32
call _FBGETOPTION@4
test eax, eax
je .Lt_06E7
push 0
push 4
push offset _Lt_045A
push -1
lea eax, [ebp-24]
push eax
call _fb_StrConcatAssign@20
.Lt_06E7:
.Lt_06E6:
push 0
push -1
lea eax, [ebp-24]
push eax
push -1
lea eax, [ebp-12]
push eax
call _fb_StrAssign@20
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
.Lt_06E3:
lea eax, [ebp-12]
push eax
call _fb_StrAllocTempResult@4
mov esp, ebp
pop ebp
ret
.balign 16
_HADDDEFAULTLIBS@0:
push ebp
mov ebp, esp
sub esp, 52
push ebx
.Lt_06E8:
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
push 0
push -1
push -1
call _HGETFBLIBNAMESUFFIX@0
push eax
push 3
push offset _Lt_0021
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
call _FBCADDDEFLIB@4
lea eax, [ebp-24]
push eax
call _fb_StrDelete@4
push 31
call _FBGETOPTION@4
test eax, eax
je .Lt_06ED
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
push 0
push -1
push -1
call _HGETFBLIBNAMESUFFIX@0
push eax
push 6
push offset _Lt_06EE
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
push -1
lea eax, [ebp-48]
push eax
call _fb_StrAssign@20
push dword ptr [ebp-48]
call _FBCADDDEFLIB@4
lea eax, [ebp-48]
push eax
call _fb_StrDelete@4
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-52], eax
jmp .Lt_06F2
.Lt_06F4:
push offset _Lt_06F5
call _FBCADDDEFLIB@4
push offset _Lt_06F6
call _FBCADDDEFLIB@4
jmp .Lt_06F1
.Lt_06F7:
push offset _Lt_06F8
call _FBCADDDEFLIB@4
push offset _Lt_06F9
call _FBCADDDEFLIB@4
push offset _Lt_06FA
call _FBCADDDEFLIB@4
push offset _Lt_06FB
call _FBCADDDEFLIB@4
push offset _Lt_06FC
call _FBCADDDEFLIB@4
jmp .Lt_06F1
.Lt_06F2:
cmp dword ptr [ebp-52], 10
ja .Lt_06F1
mov eax, dword ptr [ebp-52]
jmp dword ptr [_.LT_06FD+eax*4]
_.LT_06FD:
.int .Lt_06F4
.int .Lt_06F4
.int .Lt_06F7
.int .Lt_06F1
.int .Lt_06F1
.int .Lt_06F7
.int .Lt_06F7
.int .Lt_06F7
.int .Lt_06F7
.int .Lt_06F7
.int .Lt_06F7
.Lt_06F1:
.Lt_06ED:
.Lt_06EC:
push 3
call _FBGETOPTION@4
mov dword ptr [ebp-28], eax
jmp .Lt_06FF
.Lt_0701:
push offset _Lt_0039
call _FBCADDDEFLIB@4
push offset _Lt_02A3
call _FBCADDDEFLIB@4
push offset _Lt_0702
call _FBCADDDEFLIB@4
push offset _Lt_0703
call _FBCADDDEFLIB@4
push 21
call _FBGETOPTION@4
test eax, eax
je .Lt_0705
push offset _Lt_0706
call _FBCADDDEFLIB@4
.Lt_0705:
.Lt_0704:
jmp .Lt_06FE
.Lt_0707:
push offset _Lt_0039
call _FBCADDDEFLIB@4
push offset _Lt_0708
call _FBCADDDEFLIB@4
push offset _Lt_0709
call _FBCADDDEFLIB@4
push offset _Lt_070A
call _FBCADDDEFLIB@4
jmp .Lt_06FE
.Lt_070B:
push offset _Lt_0039
call _FBCADDDEFLIB@4
push offset _Lt_03DC
call _FBCADDDEFLIB@4
push offset _Lt_0434
call _FBCADDDEFLIB@4
push 30
call _FBGETOPTION@4
test eax, eax
je .Lt_070D
push offset _Lt_0709
call _FBCADDDEFLIB@4
push offset _Lt_070E
call _FBCADDDEFLIB@4
.Lt_070D:
.Lt_070C:
jmp .Lt_06FE
.Lt_070F:
push offset _Lt_0039
call _FBCADDDEFLIB@4
push offset _Lt_0709
call _FBCADDDEFLIB@4
push offset _Lt_03DC
call _FBCADDDEFLIB@4
push offset _Lt_0434
call _FBCADDDEFLIB@4
push offset _Lt_070A
call _FBCADDDEFLIB@4
jmp .Lt_06FE
.Lt_0710:
push offset _Lt_0039
call _FBCADDDEFLIB@4
push offset _Lt_0709
call _FBCADDDEFLIB@4
push offset _Lt_03DC
call _FBCADDDEFLIB@4
push offset _Lt_0434
call _FBCADDDEFLIB@4
push offset _Lt_070A
call _FBCADDDEFLIB@4
jmp .Lt_06FE
.Lt_0711:
push -1
push offset _Lt_0712
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_0713
mov ebx, eax
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0715
push offset _Lt_0716
call _FBCADDDEFLIB@4
jmp .Lt_0714
.Lt_0715:
push offset _Lt_070A
call _FBCADDDEFLIB@4
.Lt_0714:
push offset _Lt_0434
call _FBCADDDEFLIB@4
push offset _Lt_0717
call _FBCADDDEFLIB@4
push offset _Lt_0709
call _FBCADDDEFLIB@4
push offset _Lt_0039
call _FBCADDDEFLIB@4
push -1
push offset _Lt_0718
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_0719
mov ebx, eax
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_071B
push offset _Lt_071C
call _FBCADDDEFLIB@4
.Lt_071B:
.Lt_071A:
push offset _Lt_03DC
call _FBCADDDEFLIB@4
jmp .Lt_06FE
.Lt_071D:
push offset _Lt_0039
call _FBCADDDEFLIB@4
push offset _Lt_0709
call _FBCADDDEFLIB@4
push offset _Lt_03DC
call _FBCADDDEFLIB@4
push offset _Lt_0434
call _FBCADDDEFLIB@4
push offset _Lt_070A
call _FBCADDDEFLIB@4
jmp .Lt_06FE
.Lt_071E:
push offset _Lt_0039
call _FBCADDDEFLIB@4
push offset _Lt_0709
call _FBCADDDEFLIB@4
push offset _Lt_03DC
call _FBCADDDEFLIB@4
push offset _Lt_0434
call _FBCADDDEFLIB@4
push offset _Lt_070A
call _FBCADDDEFLIB@4
jmp .Lt_06FE
.Lt_071F:
push offset _Lt_0039
call _FBCADDDEFLIB@4
push offset _Lt_0720
call _FBCADDDEFLIB@4
push offset _Lt_0702
call _FBCADDDEFLIB@4
push offset _Lt_0703
call _FBCADDDEFLIB@4
push offset _Lt_0721
call _FBCADDDEFLIB@4
push offset _Lt_0722
call _FBCADDDEFLIB@4
push offset _Lt_0723
call _FBCADDDEFLIB@4
push -1
push offset _Lt_0718
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
push -1
push offset _Lt_0724
mov ebx, eax
call _FBCFINDLIBFILE@4
push eax
call _fb_StrLen@8
test eax, eax
setg al
shr eax, 1
sbb eax, eax
or ebx, eax
je .Lt_0726
push offset _Lt_071C
call _FBCADDDEFLIB@4
.Lt_0726:
.Lt_0725:
push 21
call _FBGETOPTION@4
test eax, eax
je .Lt_0728
push offset _Lt_0706
call _FBCADDDEFLIB@4
.Lt_0728:
.Lt_0727:
jmp .Lt_06FE
.Lt_0729:
push offset _Lt_0039
call _FBCADDDEFLIB@4
push offset _Lt_06EE
call _FBCADDDEFLIB@4
push offset _Lt_072A
call _FBCADDDEFLIB@4
push offset _Lt_072B
call _FBCADDDEFLIB@4
push offset _Lt_03DC
call _FBCADDDEFLIB@4
push offset _Lt_072C
call _FBCADDDEFLIB@4
push offset _Lt_072D
call _FBCADDDEFLIB@4
push offset _Lt_0434
call _FBCADDDEFLIB@4
push 21
call _FBGETOPTION@4
test eax, eax
je .Lt_072F
push offset _Lt_0706
call _FBCADDDEFLIB@4
.Lt_072F:
.Lt_072E:
jmp .Lt_06FE
.Lt_06FF:
cmp dword ptr [ebp-28], 10
ja .Lt_06FE
mov eax, dword ptr [ebp-28]
jmp dword ptr [_.LT_0730+eax*4]
_.LT_0730:
.int .Lt_071F
.int .Lt_0701
.int .Lt_0711
.int .Lt_070B
.int .Lt_0729
.int .Lt_070F
.int .Lt_0710
.int .Lt_0710
.int .Lt_071E
.int .Lt_0707
.int .Lt_071D
.Lt_06FE:
.Lt_06E9:
pop ebx
mov esp, ebp
pop ebp
ret
.balign 16
_HPRINTOPTIONS@4:
push ebp
mov ebp, esp
.Lt_0731:
push 1
push 34
push offset _Lt_0733
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 12
push offset _Lt_0734
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 57
push offset _Lt_0735
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 59
push offset _Lt_0736
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 35
push offset _Lt_0737
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 8
push offset _Lt_0738
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 63
push offset _Lt_0739
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 49
push offset _Lt_073A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 57
push offset _Lt_073B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 69
push offset _Lt_073C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 48
push offset _Lt_073D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 44
push offset _Lt_073E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 46
push offset _Lt_073F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 41
push offset _Lt_0740
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 33
push offset _Lt_0741
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 69
push offset _Lt_0742
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 48
push offset _Lt_0743
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .Lt_0745
push 1
push 47
push offset _Lt_0746
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 60
push offset _Lt_0747
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 38
push offset _Lt_0748
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 33
push offset _Lt_0749
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 50
push offset _Lt_074A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 47
push offset _Lt_074B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.Lt_0745:
.Lt_0744:
push 1
push 41
push offset _Lt_074C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 62
push offset _Lt_074D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 53
push offset _Lt_074E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 61
push offset _Lt_074F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 65
push offset _Lt_0750
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 33
push offset _Lt_0751
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 75
push offset _Lt_0752
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .Lt_0754
push 1
push 51
push offset _Lt_0755
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 43
push offset _Lt_0756
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 38
push offset _Lt_0757
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .Lt_0753
.Lt_0754:
push 1
push 51
push offset _Lt_0758
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.Lt_0753:
push 1
push 40
push offset _Lt_0759
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 50
push offset _Lt_075A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 58
push offset _Lt_075B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 36
push offset _Lt_075C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 64
push offset _Lt_075D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 42
push offset _Lt_075E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 76
push offset _Lt_075F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 43
push offset _Lt_0760
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 39
push offset _Lt_0761
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 45
push offset _Lt_0762
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 55
push offset _Lt_0763
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 63
push offset _Lt_0764
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 78
push offset _Lt_0765
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 71
push offset _Lt_0766
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 74
push offset _Lt_0767
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 50
push offset _Lt_0768
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 44
push offset _Lt_0769
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 80
push offset _Lt_076A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 67
push offset _Lt_076B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 47
push offset _Lt_076C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 53
push offset _Lt_076D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 51
push offset _Lt_076E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 69
push offset _Lt_076F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .Lt_0771
push 1
push 73
push offset _Lt_0772
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.Lt_0771:
.Lt_0770:
push 1
push 44
push offset _Lt_0773
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 65
push offset _Lt_0774
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 48
push offset _Lt_0775
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 60
push offset _Lt_0776
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 47
push offset _Lt_0777
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 41
push offset _Lt_0778
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 66
push offset _Lt_0779
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 73
push offset _Lt_077A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 67
push offset _Lt_077B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 75
push offset _Lt_077C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .Lt_077E
push 1
push 47
push offset _Lt_077F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
jmp .Lt_077D
.Lt_077E:
push 1
push 47
push offset _Lt_077F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.Lt_077D:
push 1
push 47
push offset _Lt_0780
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 29
push offset _Lt_0781
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 61
push offset _Lt_0782
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 40
push offset _Lt_0783
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 70
push offset _Lt_0784
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .Lt_0786
push 1
push 38
push offset _Lt_0787
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 39
push offset _Lt_0788
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 44
push offset _Lt_0789
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 57
push offset _Lt_078A
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 49
push offset _Lt_078B
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 50
push offset _Lt_078C
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 45
push offset _Lt_078D
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 49
push offset _Lt_078E
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.Lt_0786:
.Lt_0785:
push 1
push 39
push offset _Lt_078F
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 72
push offset _Lt_0790
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 39
push offset _Lt_0791
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 58
push offset _Lt_0792
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
cmp dword ptr [ebp+8], 0
je .Lt_0794
push 1
push 56
push offset _Lt_0795
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push 1
push 70
push offset _Lt_0796
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.Lt_0794:
.Lt_0793:
.Lt_0732:
mov esp, ebp
pop ebp
ret 4
.balign 16
_HPRINTVERSION@4:
push ebp
mov ebp, esp
sub esp, 60
.Lt_079D:
mov dword ptr [ebp-12], 0
mov dword ptr [ebp-8], 0
mov dword ptr [ebp-4], 0
push 1
push 5
push offset _Lt_07A5
push -1
push -1
call _FBGETHOSTBITS@0
push eax
call _fb_IntToStr@4
push eax
push -1
push 3
push offset _Lt_0563
push -1
push -1
call _FBGETHOSTID@0
push eax
push 61
push offset _Lt_07A4
mov dword ptr [ebp-24], 0
mov dword ptr [ebp-20], 0
mov dword ptr [ebp-16], 0
lea eax, [ebp-24]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-36], 0
mov dword ptr [ebp-32], 0
mov dword ptr [ebp-28], 0
lea eax, [ebp-36]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-48], 0
mov dword ptr [ebp-44], 0
mov dword ptr [ebp-40], 0
lea eax, [ebp-48]
push eax
call _fb_StrConcat@20
push eax
mov dword ptr [ebp-60], 0
mov dword ptr [ebp-56], 0
mov dword ptr [ebp-52], 0
lea eax, [ebp-60]
push eax
call _fb_StrConcat@20
push eax
push 0
call _fb_PrintString@12
push 1
push 55
push offset _Lt_07AA
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
push -1
lea eax, [ebp-12]
push eax
call _fb_StrLen@8
test eax, eax
jle .Lt_07AC
push 1
lea eax, [ebp-12]
push eax
push 0
call _fb_PrintString@12
.Lt_07AC:
.Lt_07AB:
cmp dword ptr [ebp+8], 0
je .Lt_07AE
call _FBCPRINTTARGETINFO@0
jmp .Lt_07B0
push 1
push 14
push offset _Lt_07B1
call _fb_StrAllocTempDescZEx@8
push eax
push 0
call _fb_PrintString@12
.Lt_07B0:
.Lt_07AF:
.Lt_07AE:
.Lt_07AD:
lea eax, [ebp-12]
push eax
call _fb_StrDelete@4
.Lt_079E:
mov esp, ebp
pop ebp
ret 4
.balign 16
__GLOBAL__I:
.Lt_07E4:
push offset _FBC
call __ZN6FBCCTXC1Ev
add esp, 4
.Lt_07E5:
ret
.balign 16
__GLOBAL__D:
.Lt_07E7:
push offset _FBC
call __ZN6FBCCTXD1Ev
add esp, 4
.Lt_07E8:
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
_Lt_001F:	.ascii	"__fb_ct.inf.bas\0"
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
_Lt_00DA:	.ascii	"\\\0"
.balign 4
_Lt_00DB:	.ascii	"\\\\\0"
.balign 4
_Lt_00E2:	.ascii	"ld options in '\0"
.balign 4
_Lt_00E3:	.ascii	"': \0"
.balign 4
_Lt_00E6:	.ascii	"@\0"
.balign 4
_Lt_00EC:	.ascii	".clean.def\0"
.balign 4
_Lt_00F3:	.ascii	"DATA\0"
.balign 4
_Lt_00FE:	.ascii	"EXPORTS\0"
.balign 4
_Lt_0108:	.ascii	"--def \"\0"
.balign 4
_Lt_0109:	.ascii	"\"\0"
.balign 4
_Lt_010D:	.ascii	" --dllname \"\0"
.balign 4
_Lt_010E:	.ascii	" --output-lib \"\0"
.balign 4
_Lt_010F:	.ascii	".dll.a\"\0"
.balign 4
_Lt_0115:	.ascii	"creating import library\0"
.balign 4
_Lt_011E:	.ascii	" \"\0"
.balign 4
_Lt_0122:	.ascii	" --version\0"
.balign 4
_Lt_0123:	.ascii	"GNU gold\0"
.balign 4
_Lt_0132:	.ascii	"-m i386pe \0"
.balign 4
_Lt_0135:	.ascii	"-m i386pep \0"
.balign 4
_Lt_013C:	.ascii	"-m elf_i386 \0"
.balign 4
_Lt_013F:	.ascii	"-m elf_x86_64 \0"
.balign 4
_Lt_0142:	.ascii	"-m armelf_linux_eabi \0"
.balign 4
_Lt_0143:	.ascii	"-o \0"
.balign 4
_Lt_0144:	.ascii	"\"\0"
.balign 4
_Lt_0145:	.ascii	"-o \"\0"
.balign 4
_Lt_014C:	.ascii	"console\0"
.balign 4
_Lt_014D:	.ascii	"gui\0"
.balign 4
_Lt_0150:	.ascii	"windows\0"
.balign 4
_Lt_0151:	.ascii	" -subsystem \0"
.balign 4
_Lt_0156:	.ascii	" --dll --enable-stdcall-fixup\0"
.balign 4
_Lt_0159:	.ascii	" -e _DllMainCRTStartup@12\0"
.balign 4
_Lt_015A:	.ascii	" -e DllMainCRTStartup\0"
.balign 4
_Lt_0160:	.ascii	" -shared -h\0"
.balign 4
_Lt_0167:	.ascii	" -dynamic-linker /libexec/ld-elf.so.1\0"
.balign 4
_Lt_0169:	.ascii	" -dynamic-linker /libexec/ld-elf.so.2\0"
.balign 4
_Lt_016B:	.ascii	" -dynamic-linker /lib/64/ld.so.1\0"
.balign 4
_Lt_0171:	.ascii	" -dynamic-linker /lib/ld-linux.so.2\0"
.balign 4
_Lt_0174:	.ascii	" -dynamic-linker /lib64/ld-linux-x86-64.so.2\0"
.balign 4
_Lt_0177:	.ascii	" -dynamic-linker /lib/ld-linux-armhf.so.3\0"
.balign 4
_Lt_017A:	.ascii	" -dynamic-linker /lib/ld-linux-aarch64.so.1\0"
.balign 4
_Lt_017C:	.ascii	" -dynamic-linker /usr/libexec/ld.elf_so\0"
.balign 4
_Lt_017E:	.ascii	" -dynamic-linker /usr/libexec/ld.so\0"
.balign 4
_Lt_0182:	.ascii	" --export-dynamic\0"
.balign 4
_Lt_0184:	.ascii	" -nostdlib --file-alignment 0x20 --section-alignment 0x20 -shared\0"
.balign 4
_Lt_0186:	.ascii	" -O\0"
.balign 4
_Lt_018C:	.ascii	" -Wno-warn-absolute-paths\0"
.balign 4
_Lt_0191:	.ascii	" -s \0"
.balign 4
_Lt_0192:	.ascii	" --shell-file\0"
.balign 4
_Lt_0193:	.ascii	"fb_shell.html\0"
.balign 4
_Lt_0194:	.ascii	" --post-js\0"
.balign 4
_Lt_0195:	.ascii	"fb_rtlib.js\0"
.balign 4
_Lt_0198:	.ascii	"termlib_min.js\0"
.balign 4
_Lt_019C:	.ascii	" -T \"\0"
.balign 4
_Lt_019E:	.ascii	"\\i386go32.x\"\0"
.balign 4
_Lt_01A2:	.ascii	"\\fbextra.x\"\0"
.balign 4
_Lt_01A7:	.ascii	" --stack \0"
.balign 4
_Lt_01A8:	.ascii	",\0"
.balign 4
_Lt_01AC:	.ascii	".def\0"
.balign 4
_Lt_01AD:	.ascii	" --output-def \"\0"
.balign 4
_Lt_01AF:	.ascii	" -e _WinMainCRTStartup\0"
.balign 4
_Lt_01B3:	.ascii	" -Bstatic\0"
.balign 4
_Lt_01B6:	.ascii	" -Map \0"
.balign 4
_Lt_01BD:	.ascii	" -s\0"
.balign 4
_Lt_01C0:	.ascii	" -L \"\0"
.balign 4
_Lt_01C1:	.ascii	" -L\"\0"
.balign 4
_Lt_01CD:	.ascii	"crt0.o\0"
.balign 4
_Lt_01D0:	.ascii	"gcrt0.o\0"
.balign 4
_Lt_01D4:	.ascii	"dllcrt2.o\0"
.balign 4
_Lt_01D5:	.ascii	"crt2.o\0"
.balign 4
_Lt_01D8:	.ascii	"gcrt2.o\0"
.balign 4
_Lt_01D9:	.ascii	"crtbegin.o\0"
.balign 4
_Lt_01E7:	.ascii	"gcrt1.o\0"
.balign 4
_Lt_01EE:	.ascii	"crt1.o\0"
.balign 4
_Lt_01F4:	.ascii	"crti.o\0"
.balign 4
_Lt_01F7:	.ascii	"crtbeginS.o\0"
.balign 4
_Lt_0200:	.ascii	"fbrt0pic.o\0"
.balign 4
_Lt_0201:	.ascii	"fbrt0.o\0"
.balign 4
_Lt_020B:	.ascii	" \"-(\"\0"
.balign 4
_Lt_0217:	.ascii	" -l\0"
.balign 4
_Lt_021E:	.ascii	" \"-)\"\0"
.balign 4
_Lt_021F:	.ascii	" -lfb\0"
.balign 4
_Lt_0226:	.ascii	"crtendS.o\0"
.balign 4
_Lt_0227:	.ascii	"crtend.o\0"
.balign 4
_Lt_022A:	.ascii	"crtn.o\0"
.balign 4
_Lt_022F:	.ascii	" -macosx_version_min 10.6\0"
.balign 4
_Lt_0237:	.ascii	"linking\0"
.balign 4
_Lt_024D:	.ascii	"-TITLE:\"\0"
.balign 4
_Lt_024E:	.ascii	"\" \0"
.balign 4
_Lt_0252:	.ascii	"-DUMPINFO:\"\0"
.balign 4
_Lt_0255:	.ascii	".cxbe\"\0"
.balign 4
_Lt_0257:	.ascii	" -OUT:\"\0"
.balign 4
_Lt_0259:	.ascii	".xbe\0"
.balign 4
_Lt_025A:	.ascii	" \"\0"
.balign 4
_Lt_025D:	.ascii	" >nul\0"
.balign 4
_Lt_0260:	.ascii	"cxbe: \0"
.balign 4
_Lt_0268:	.ascii	"cxbe failed: exit code \0"
.balign 4
_Lt_029B:	.ascii	".o\0"
.balign 4
_GNUOSMAP:
.int _Lt_02A0
.int 2
.int _Lt_02A1
.int 0
.int _Lt_02A2
.int 3
.int _Lt_02A3
.int 1
.int _Lt_02A4
.int 9
.int _Lt_02A5
.int 5
.int _Lt_02A6
.int 6
.int _Lt_02A7
.int 7
.int _Lt_02A8
.int 10
.int _Lt_02A9
.int 8
.int _Lt_02AA
.int 4
.balign 4
_Lt_02A0:	.ascii	"linux\0"
.balign 4
_Lt_02A1:	.ascii	"mingw\0"
.balign 4
_Lt_02A2:	.ascii	"djgpp\0"
.balign 4
_Lt_02A3:	.ascii	"cygwin\0"
.balign 4
_Lt_02A4:	.ascii	"darwin\0"
.balign 4
_Lt_02A5:	.ascii	"freebsd\0"
.balign 4
_Lt_02A6:	.ascii	"dragonfly\0"
.balign 4
_Lt_02A7:	.ascii	"solaris\0"
.balign 4
_Lt_02A8:	.ascii	"netbsd\0"
.balign 4
_Lt_02A9:	.ascii	"openbsd\0"
.balign 4
_Lt_02AA:	.ascii	"xbox\0"
.balign 4
_GNUARCHMAP:
.int _Lt_02AC
.int 0
.int _Lt_02AD
.int 1
.int _Lt_02AE
.int 2
.int _Lt_02AF
.int 3
.int _Lt_02B0
.int 1
.int _Lt_02B1
.int 13
.int _Lt_02B2
.int 13
.int _Lt_02B3
.int 14
.int _Lt_02B4
.int 15
.int _Lt_02B5
.int 15
.int _Lt_02B6
.int 16
.int _Lt_02B7
.int 17
.int _Lt_02B8
.int 18
.balign 4
_Lt_02AC:	.ascii	"i386\0"
.balign 4
_Lt_02AD:	.ascii	"i486\0"
.balign 4
_Lt_02AE:	.ascii	"i586\0"
.balign 4
_Lt_02AF:	.ascii	"i686\0"
.balign 4
_Lt_02B0:	.ascii	"x86\0"
.balign 4
_Lt_02B1:	.ascii	"x86_64\0"
.balign 4
_Lt_02B2:	.ascii	"amd64\0"
.balign 4
_Lt_02B3:	.ascii	"armv6\0"
.balign 4
_Lt_02B4:	.ascii	"armv7a\0"
.balign 4
_Lt_02B5:	.ascii	"arm\0"
.balign 4
_Lt_02B6:	.ascii	"aarch64\0"
.balign 4
_Lt_02B7:	.ascii	"powerpc\0"
.balign 4
_Lt_02B8:	.ascii	"powerpc64\0"
.balign 4
_FBOSARCHMAP:
.int _Lt_02CA
.int 0
.int 1
.int _Lt_02CB
.int 0
.int 13
.int _Lt_02A6
.int 6
.int 13
.int _Lt_02A7
.int 7
.int 13
.int _Lt_02CC
.int 3
.int 1
.int _Lt_02AA
.int 4
.int 1
.int _Lt_02A3
.int 1
.int 1
.int _Lt_02A4
.int 9
.int 1
.int _Lt_02A5
.int 5
.int 1
.int _Lt_02A0
.int 2
.int 1
.int _Lt_02A8
.int 10
.int 1
.int _Lt_02A9
.int 8
.int 1
.balign 4
_Lt_02CA:	.ascii	"win32\0"
.balign 4
_Lt_02CB:	.ascii	"win64\0"
.balign 4
_Lt_02CC:	.ascii	"dos\0"
.balign 4
_Lt_02D6:	.ascii	"-\0"
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
_Lt_02E6:	.ascii	"native\0"
.balign 4
_Lt_02E9:	.ascii	"-arch \0"
.balign 4
_Lt_02F0:	.ascii	"att\0"
.balign 4
_Lt_02F3:	.ascii	"intel\0"
.balign 4
_Lt_030C:	.ascii	"PRECISE\0"
.balign 4
_Lt_030F:	.ascii	"FAST\0"
.balign 4
_Lt_0316:	.ascii	"X87\0"
.balign 4
_Lt_0317:	.ascii	"FPU\0"
.balign 4
_Lt_031B:	.ascii	"SSE\0"
.balign 4
_Lt_0323:	.ascii	"gas\0"
.balign 4
_Lt_0328:	.ascii	"llvm\0"
.balign 4
_Lt_032B:	.ascii	"gas64\0"
.balign 4
_Lt_033A:	.ascii	"inf\0"
.balign 4
_Lt_0348:	.ascii	"max\0"
.balign 4
_Lt_0357:	.ascii	"host\0"
.balign 4
_Lt_035A:	.ascii	"target\0"
.balign 4
_Lt_035D:	.ascii	"x\0"
.balign 4
_Lt_0360:	.ascii	"fblibdir\0"
.balign 4
_Lt_0363:	.ascii	"sha-1\0"
.balign 4
_Lt_0380:	.ascii	"NONE\0"
.balign 4
_Lt_0386:	.ascii	"2\0"
.balign 4
_Lt_038E:	.ascii	"all\0"
.balign 4
_Lt_0391:	.ascii	"none\0"
.balign 4
_Lt_0394:	.ascii	"param\0"
.balign 4
_Lt_0397:	.ascii	"escape\0"
.balign 4
_Lt_039A:	.ascii	"next\0"
.balign 4
_Lt_039D:	.ascii	"signedness\0"
.balign 4
_Lt_03A0:	.ascii	"constness\0"
.balign 4
_Lt_03A3:	.ascii	"funcptr\0"
.balign 4
_Lt_03A6:	.ascii	"suffix\0"
.balign 4
_Lt_03A9:	.ascii	"pedantic\0"
.balign 4
_Lt_03C1:	.ascii	"gosub-setjmp\0"
.balign 4
_Lt_03C4:	.ascii	"valist-as-ptr\0"
.balign 4
_Lt_03CE:	.ascii	"a\0"
.balign 4
_Lt_03D1:	.ascii	"arch\0"
.balign 4
_Lt_03D4:	.ascii	"asm\0"
.balign 4
_Lt_03DC:	.ascii	"c\0"
.balign 4
_Lt_03E7:	.ascii	"dll\0"
.balign 4
_Lt_03EA:	.ascii	"dylib\0"
.balign 4
_Lt_03F1:	.ascii	"ex\0"
.balign 4
_Lt_03F4:	.ascii	"earray\0"
.balign 4
_Lt_03F7:	.ascii	"eassert\0"
.balign 4
_Lt_03FA:	.ascii	"edebug\0"
.balign 4
_Lt_03FD:	.ascii	"edebuginfo\0"
.balign 4
_Lt_0400:	.ascii	"elocation\0"
.balign 4
_Lt_0403:	.ascii	"enullptr\0"
.balign 4
_Lt_0406:	.ascii	"exx\0"
.balign 4
_Lt_0409:	.ascii	"export\0"
.balign 4
_Lt_040E:	.ascii	"forcelang\0"
.balign 4
_Lt_0411:	.ascii	"fpmode\0"
.balign 4
_Lt_0414:	.ascii	"fpu\0"
.balign 4
_Lt_041B:	.ascii	"gen\0"
.balign 4
_Lt_0420:	.ascii	"help\0"
.balign 4
_Lt_0427:	.ascii	"include\0"
.balign 4
_Lt_042E:	.ascii	"lang\0"
.balign 4
_Lt_0434:	.ascii	"m\0"
.balign 4
_Lt_0437:	.ascii	"map\0"
.balign 4
_Lt_043A:	.ascii	"maxerr\0"
.balign 4
_Lt_043D:	.ascii	"mt\0"
.balign 4
_Lt_0442:	.ascii	"noerrline\0"
.balign 4
_Lt_0445:	.ascii	"nodeflibs\0"
.balign 4
_Lt_0448:	.ascii	"noobjinfo\0"
.balign 4
_Lt_044B:	.ascii	"nostrip\0"
.balign 4
_Lt_044F:	.ascii	"o\0"
.balign 4
_Lt_045A:	.ascii	"pic\0"
.balign 4
_Lt_045D:	.ascii	"pp\0"
.balign 4
_Lt_0460:	.ascii	"prefix\0"
.balign 4
_Lt_0463:	.ascii	"print\0"
.balign 4
_Lt_0466:	.ascii	"profile\0"
.balign 4
_Lt_046D:	.ascii	"rr\0"
.balign 4
_Lt_0474:	.ascii	"RR\0"
.balign 4
_Lt_047B:	.ascii	"showincludes\0"
.balign 4
_Lt_047E:	.ascii	"static\0"
.balign 4
_Lt_0481:	.ascii	"strip\0"
.balign 4
_Lt_048A:	.ascii	"title\0"
.balign 4
_Lt_0491:	.ascii	"vec\0"
.balign 4
_Lt_0494:	.ascii	"version\0"
.balign 4
_Lt_049D:	.ascii	"Wa\0"
.balign 4
_Lt_04A0:	.ascii	"Wl\0"
.balign 4
_Lt_04A3:	.ascii	"Wc\0"
.balign 4
_Lt_04AE:	.ascii	"-version\0"
.balign 4
_Lt_04B1:	.ascii	"-help\0"
.balign 4
_Lt_04D0:	.ascii	"bas\0"
.balign 4
_Lt_04D7:	.ascii	"rc\0"
.balign 4
_Lt_04D8:	.ascii	"res\0"
.balign 4
_Lt_04DC:	.ascii	"xpm\0"
.balign 4
_Lt_0549:	.ascii	"..\\\0"
.balign 4
_Lt_054E:	.ascii	"freebasic\0"
.balign 4
_Lt_054F:	.ascii	"bin\0"
.balign 4
_Lt_055D:	.ascii	", \0"
.balign 4
_Lt_0560:	.ascii	"bit\0"
.balign 4
_Lt_0563:	.ascii	" (\0"
.balign 4
_Lt_0564:	.ascii	")\0"
.balign 4
_Lt_0565:	.ascii	"target:\0"
.balign 4
_Lt_0566:	.ascii	"backend:\0"
.balign 4
_Lt_056F:	.ascii	"unnamed\0"
.balign 4
_Lt_0575:	.ascii	".asm\0"
.balign 4
_Lt_0578:	.ascii	".a64\0"
.balign 4
_Lt_057F:	.ascii	".c\0"
.balign 4
_Lt_0582:	.ascii	".ll\0"
.balign 4
_Lt_058C:	.ascii	".pp.bas\0"
.balign 4
_Lt_0590:	.ascii	"compiling: \0"
.balign 4
_Lt_0591:	.ascii	" -o \0"
.balign 4
_Lt_0594:	.ascii	" -pp \0"
.balign 4
_Lt_0598:	.ascii	" (main module)\0"
.balign 4
_Lt_059A:	.ascii	" (FB compile-time info)\0"
.balign 4
_Lt_05BC:	.ascii	"\ndim shared as zstring ptr \0"
.balign 4
_Lt_05BE:	.ascii	"fb_program_icon_data\0"
.balign 4
_Lt_05C0:	.ascii	"(0 to ...) = _\n{ _\n\0"
.balign 4
_Lt_05C4:	.ascii	"/* XPM */\0"
.balign 4
_Lt_05CE:	.ascii	", _\n\0"
.balign 4
_Lt_05D0:	.ascii	"\t@\0"
.balign 4
_Lt_05D6:	.ascii	" _ \n\0"
.balign 4
_Lt_05D8:	.ascii	"}\n\n\0"
.balign 4
_Lt_05DA:	.ascii	"extern as zstring ptr ptr fb_program_icon alias \"fb_program_icon\"\n\0"
.balign 4
_Lt_05DE:	.ascii	"dim shared as zstring ptr ptr fb_program_icon = @fb_program_icon_data(0)\n\0"
.balign 4
_Lt_05E6:	.ascii	".bas\0"
.balign 4
_Lt_05E9:	.ascii	"parsing xpm: \0"
.balign 4
_Lt_0600:	.ascii	"-m32 \0"
.balign 4
_Lt_0603:	.ascii	"-m64 \0"
.balign 4
_Lt_060C:	.ascii	"-mcpu=native \0"
.balign 4
_Lt_060D:	.ascii	"-mcpu=\0"
.balign 4
_Lt_0613:	.ascii	"-fPIC \0"
.balign 4
_Lt_0618:	.ascii	"-S -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable \0"
.balign 4
_Lt_0619:	.ascii	"-Wno-unused-but-set-variable \0"
.balign 4
_Lt_061B:	.ascii	"-c -nostdlib -nostdinc -Wall -Wno-unused-label -Wno-unused-function -Wno-unused-variable \0"
.balign 4
_Lt_061C:	.ascii	"-Wno-warn-absolute-paths -s ASYNCIFY=1 -s RETAIN_COMPILER_SETTINGS=1 \0"
.balign 4
_Lt_061D:	.ascii	"-Wno-main \0"
.balign 4
_Lt_061E:	.ascii	"-Werror-implicit-function-declaration \0"
.balign 4
_Lt_0621:	.ascii	"-O\0"
.balign 4
_Lt_0622:	.ascii	"-fno-strict-aliasing \0"
.balign 4
_Lt_0625:	.ascii	"-frounding-math \0"
.balign 4
_Lt_0626:	.ascii	"-fno-math-errno \0"
.balign 4
_Lt_0627:	.ascii	"-fwrapv \0"
.balign 4
_Lt_0628:	.ascii	"-fno-exceptions -fno-unwind-tables -fno-asynchronous-unwind-tables \0"
.balign 4
_Lt_0629:	.ascii	"-Wno-format \0"
.balign 4
_Lt_062C:	.ascii	"-g \0"
.balign 4
_Lt_062F:	.ascii	"-mfpmath=sse -msse2 \0"
.balign 4
_Lt_0637:	.ascii	"-masm=intel \0"
.balign 4
_Lt_063E:	.ascii	"-march=x86 \0"
.balign 4
_Lt_0641:	.ascii	"-march=x86-64 \0"
.balign 4
_Lt_0644:	.ascii	"-march=arm \0"
.balign 4
_Lt_0647:	.ascii	"-march=armv8-a \0"
.balign 4
_Lt_064A:	.ascii	"-march=powerpc \0"
.balign 4
_Lt_064D:	.ascii	"-march=powerpc64 \0"
.balign 4
_Lt_0650:	.ascii	"-relocation-model=pic \0"
.balign 4
_Lt_0658:	.ascii	"--x86-asm-syntax=intel \0"
.balign 4
_Lt_0659:	.ascii	"\" \0"
.balign 4
_Lt_065A:	.ascii	"-o \"\0"
.balign 4
_Lt_0661:	.ascii	"compiling C\0"
.balign 4
_Lt_0664:	.ascii	"compiling LLVM IR\0"
.balign 4
_Lt_0673:	.ascii	"-arch i386 \0"
.balign 4
_Lt_0674:	.ascii	"--32 \0"
.balign 4
_Lt_0679:	.ascii	"-arch x86_64 \0"
.balign 4
_Lt_067A:	.ascii	"--64 \0"
.balign 4
_Lt_0681:	.ascii	"--strip-local-absolute \0"
.balign 4
_Lt_0689:	.ascii	"assembling\0"
.balign 4
_Lt_0696:	.ascii	"--output-format=coff --include-dir=.\0"
.balign 4
_Lt_069D:	.ascii	"compiling rc\0"
.balign 4
_Lt_06B2:	.ascii	"creating: \0"
.balign 4
_Lt_06BF:	.ascii	"-rsc \"\0"
.balign 4
_Lt_06C8:	.ascii	"\"__fb_ct.inf\" \0"
.balign 4
_Lt_06CF:	.ascii	"archiving\0"
.balign 4
_Lt_06D6:	.ascii	"libgcc.a\0"
.balign 4
_Lt_06DB:	.ascii	"libm.a\0"
.balign 4
_Lt_06DE:	.ascii	"libmingw32.a\0"
.balign 4
_Lt_06EE:	.ascii	"fbgfx\0"
.balign 4
_Lt_06F5:	.ascii	"gdi32\0"
.balign 4
_Lt_06F6:	.ascii	"winmm\0"
.balign 4
_Lt_06F8:	.ascii	"X11\0"
.balign 4
_Lt_06F9:	.ascii	"Xext\0"
.balign 4
_Lt_06FA:	.ascii	"Xpm\0"
.balign 4
_Lt_06FB:	.ascii	"Xrandr\0"
.balign 4
_Lt_06FC:	.ascii	"Xrender\0"
.balign 4
_Lt_0702:	.ascii	"kernel32\0"
.balign 4
_Lt_0703:	.ascii	"user32\0"
.balign 4
_Lt_0706:	.ascii	"gmon\0"
.balign 4
_Lt_0708:	.ascii	"System\0"
.balign 4
_Lt_0709:	.ascii	"pthread\0"
.balign 4
_Lt_070A:	.ascii	"ncurses\0"
.balign 4
_Lt_070E:	.ascii	"socket\0"
.balign 4
_Lt_0712:	.ascii	"libtinfo.a\0"
.balign 4
_Lt_0713:	.ascii	"libtinfo.so\0"
.balign 4
_Lt_0716:	.ascii	"tinfo\0"
.balign 4
_Lt_0717:	.ascii	"dl\0"
.balign 4
_Lt_0718:	.ascii	"libgcc_eh.a\0"
.balign 4
_Lt_0719:	.ascii	"libgcc_eh.so\0"
.balign 4
_Lt_071C:	.ascii	"gcc_eh\0"
.balign 4
_Lt_0720:	.ascii	"msvcrt\0"
.balign 4
_Lt_0721:	.ascii	"mingw32\0"
.balign 4
_Lt_0722:	.ascii	"mingwex\0"
.balign 4
_Lt_0723:	.ascii	"moldname\0"
.balign 4
_Lt_0724:	.ascii	"libgcc_eh.dll.a\0"
.balign 4
_Lt_072A:	.ascii	"openxdk\0"
.balign 4
_Lt_072B:	.ascii	"hal\0"
.balign 4
_Lt_072C:	.ascii	"usb\0"
.balign 4
_Lt_072D:	.ascii	"xboxkrnl\0"
.balign 4
_Lt_0733:	.ascii	"usage: fbc [options] <input files>\0"
.balign 4
_Lt_0734:	.ascii	"input files:\0"
.balign 4
_Lt_0735:	.ascii	"  *.a = static library, *.o = object file, *.bas = source\0"
.balign 4
_Lt_0736:	.ascii	"  *.rc = resource script, *.res = compiled resource (win32)\0"
.balign 4
_Lt_0737:	.ascii	"  *.xpm = icon resource (*nix/*bsd)\0"
.balign 4
_Lt_0738:	.ascii	"options:\0"
.balign 4
_Lt_0739:	.ascii	"  @<file>          Read more command line arguments from a file\0"
.balign 4
_Lt_073A:	.ascii	"  -a <file>        Treat file as .o/.a input file\0"
.balign 4
_Lt_073B:	.ascii	"  -arch <type>     Set target architecture (default: 486)\0"
.balign 4
_Lt_073C:	.ascii	"  -asm att|intel   Set asm format (-gen gcc|llvm, x86 or x86_64 only)\0"
.balign 4
_Lt_073D:	.ascii	"  -b <file>        Treat file as .bas input file\0"
.balign 4
_Lt_073E:	.ascii	"  -c               Compile only, do not link\0"
.balign 4
_Lt_073F:	.ascii	"  -C               Preserve temporary .o files\0"
.balign 4
_Lt_0740:	.ascii	"  -d <name>[=<val>]  Add a global #define\0"
.balign 4
_Lt_0741:	.ascii	"  -dll             Same as -dylib\0"
.balign 4
_Lt_0742:	.ascii	"  -dylib           Create a DLL (win32) or shared library (*nix/*BSD)\0"
.balign 4
_Lt_0743:	.ascii	"  -e               Enable runtime error checking\0"
.balign 4
_Lt_0746:	.ascii	"  -earray          Enable array bounds checking\0"
.balign 4
_Lt_0747:	.ascii	"  -eassert         Enable assert() and assertwarn() checking\0"
.balign 4
_Lt_0748:	.ascii	"  -edebug          Enable __FB_DEBUG__\0"
.balign 4
_Lt_0749:	.ascii	"  -edebuginfo      Add debug info\0"
.balign 4
_Lt_074A:	.ascii	"  -elocation       Enable error location reporting\0"
.balign 4
_Lt_074B:	.ascii	"  -enullptr        Enable null-pointer checking\0"
.balign 4
_Lt_074C:	.ascii	"  -ex              -e plus RESUME support\0"
.balign 4
_Lt_074D:	.ascii	"  -exx             -ex plus array bounds/null-pointer checking\0"
.balign 4
_Lt_074E:	.ascii	"  -export          Export symbols for dynamic linkage\0"
.balign 4
_Lt_074F:	.ascii	"  -forcelang <name>  Override #lang statements in source code\0"
.balign 4
_Lt_0750:	.ascii	"  -fpmode fast|precise  Select floating-point math accuracy/speed\0"
.balign 4
_Lt_0751:	.ascii	"  -fpu x87|sse     Set target FPU\0"
.balign 4
_Lt_0752:	.ascii	"  -g               Add debug info, enable __FB_DEBUG__, and enable assert()\0"
.balign 4
_Lt_0755:	.ascii	"  -gen gas         Select GNU gas assembler backend\0"
.balign 4
_Lt_0756:	.ascii	"  -gen gcc         Select GNU gcc C backend\0"
.balign 4
_Lt_0757:	.ascii	"  -gen llvm        Select LLVM backend\0"
.balign 4
_Lt_0758:	.ascii	"  -gen gas|gcc|llvm  Select code generation backend\0"
.balign 4
_Lt_0759:	.ascii	"  [-]-help         Show this help output\0"
.balign 4
_Lt_075A:	.ascii	"  -i <path>        Add an include file search path\0"
.balign 4
_Lt_075B:	.ascii	"  -include <file>  Pre-#include a file for each input .bas\0"
.balign 4
_Lt_075C:	.ascii	"  -l <name>        Link in a library\0"
.balign 4
_Lt_075D:	.ascii	"  -lang <name>     Select FB dialect: fb, deprecated, fblite, qb\0"
.balign 4
_Lt_075E:	.ascii	"  -lib             Create a static library\0"
.balign 4
_Lt_075F:	.ascii	"  -m <name>        Specify main module (default if not -c: first input .bas)\0"
.balign 4
_Lt_0760:	.ascii	"  -map <file>      Save linking map to file\0"
.balign 4
_Lt_0761:	.ascii	"  -maxerr <n>      Only show <n> errors\0"
.balign 4
_Lt_0762:	.ascii	"  -mt              Use thread-safe FB runtime\0"
.balign 4
_Lt_0763:	.ascii	"  -nodeflibs       Do not include the default libraries\0"
.balign 4
_Lt_0764:	.ascii	"  -noerrline       Do not show source context in error messages\0"
.balign 4
_Lt_0765:	.ascii	"  -noobjinfo       Do not read/write compile-time info from/to .o and .a files\0"
.balign 4
_Lt_0766:	.ascii	"  -nostrip         Do not strip symbol information from the output file\0"
.balign 4
_Lt_0767:	.ascii	"  -o <file>        Set .o (or -pp .bas) file name for prev/next input file\0"
.balign 4
_Lt_0768:	.ascii	"  -O <value>       Optimization level (default: 0)\0"
.balign 4
_Lt_0769:	.ascii	"  -p <path>        Add a library search path\0"
.balign 4
_Lt_076A:	.ascii	"  -pic             Generate position-independent code (non-x86 Unix shared libs)\0"
.balign 4
_Lt_076B:	.ascii	"  -pp              Write out preprocessed input file (.pp.bas) only\0"
.balign 4
_Lt_076C:	.ascii	"  -prefix <path>   Set the compiler prefix path\0"
.balign 4
_Lt_076D:	.ascii	"  -print host|target  Display host/target system name\0"
.balign 4
_Lt_076E:	.ascii	"  -print fblibdir  Display the compiler's lib/ path\0"
.balign 4
_Lt_076F:	.ascii	"  -print x         Display output binary/library file name (if known)\0"
.balign 4
_Lt_0772:	.ascii	"  -print sha-1     Display compiler's source code commit sha-1 (if known)\0"
.balign 4
_Lt_0773:	.ascii	"  -profile         Enable function profiling\0"
.balign 4
_Lt_0774:	.ascii	"  -r               Write out .asm/.c/.ll (-gen gas/gcc/llvm) only\0"
.balign 4
_Lt_0775:	.ascii	"  -rr              Write out the final .asm only\0"
.balign 4
_Lt_0776:	.ascii	"  -R               Preserve temporary .asm/.c/.ll/.def files\0"
.balign 4
_Lt_0777:	.ascii	"  -RR              Preserve the final .asm file\0"
.balign 4
_Lt_0778:	.ascii	"  -s console|gui   Select win32 subsystem\0"
.balign 4
_Lt_0779:	.ascii	"  -showincludes    Display a tree of file names of #included files\0"
.balign 4
_Lt_077A:	.ascii	"  -static          Prefer static libraries over dynamic ones when linking\0"
.balign 4
_Lt_077B:	.ascii	"  -strip           Omit all symbol information from the output file\0"
.balign 4
_Lt_077C:	.ascii	"  -t <value>       Set .exe stack size in kbytes, default: 1024 (win32/dos)\0"
.balign 4
_Lt_077F:	.ascii	"  -target <name>   Set cross-compilation target\0"
.balign 4
_Lt_0780:	.ascii	"  -title <name>    Set XBE display title (xbox)\0"
.balign 4
_Lt_0781:	.ascii	"  -v               Be verbose\0"
.balign 4
_Lt_0782:	.ascii	"  -vec <n>         Automatic vectorization level (default: 0)\0"
.balign 4
_Lt_0783:	.ascii	"  [-]-version      Show compiler version\0"
.balign 4
_Lt_0784:	.ascii	"  -w all|pedantic|<n>  Set min warning level: all, pedantic or a value\0"
.balign 4
_Lt_0787:	.ascii	"  -w all           Enable all warnings\0"
.balign 4
_Lt_0788:	.ascii	"  -w none          Disable all warnings\0"
.balign 4
_Lt_0789:	.ascii	"  -w param         Enable parameter warnings\0"
.balign 4
_Lt_078A:	.ascii	"  -w escape        Enable string escape sequence warnings\0"
.balign 4
_Lt_078B:	.ascii	"  -w next          Enable next statement warnings\0"
.balign 4
_Lt_078C:	.ascii	"  -w signedness    Enable type signedness warnings\0"
.balign 4
_Lt_078D:	.ascii	"  -w constness     Enable const type warnings\0"
.balign 4
_Lt_078E:	.ascii	"  -w suffix        Enable invalid suffix warnings\0"
.balign 4
_Lt_078F:	.ascii	"  -Wa <a,b,c>      Pass options to 'as'\0"
.balign 4
_Lt_0790:	.ascii	"  -Wc <a,b,c>      Pass options to 'gcc' (-gen gcc) or 'llc' (-gen llvm)\0"
.balign 4
_Lt_0791:	.ascii	"  -Wl <a,b,c>      Pass options to 'ld'\0"
.balign 4
_Lt_0792:	.ascii	"  -x <file>        Set output executable/library file name\0"
.balign 4
_Lt_0795:	.ascii	"  -z gosub-setjmp  Use setjmp/longjmp to implement GOSUB\0"
.balign 4
_Lt_0796:	.ascii	"  -z valist-as-ptr Use pointer expressions to implement CVA_*() macros\0"
.balign 4
_Lt_07A4:	.ascii	"FreeBASIC Compiler - Version 1.08.0 (2021-02-18), built for \0"
.balign 4
_Lt_07A5:	.ascii	"bit)\0"
.balign 4
_Lt_07AA:	.ascii	"Copyright (C) 2004-2021 The FreeBASIC development team.\0"
.balign 4
_Lt_07B1:	.ascii	"source sha-1: \0"

.section .ctors
.int __GLOBAL__I

.section .dtors
.int __GLOBAL__D
