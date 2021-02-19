' TEST_MODE : COMPILE_ONLY_OK

#if not defined(__FB_ASM__) && defined(__FB_PPC__)
	'' x86 and x86_64 only
	#assert defined(__FB_ASM__)
	#assert (__FB_ASM__ = "intel") or (__FB_ASM__ = "att")
#else
	#assert not defined(__FB_ASM__) && defined(__FB_PPC__)
#endif
