'' main module, FreeBSD front-end
''
'' chng: jul/2007 written [DrV]


#include once "fb.bi"
#include once "fbint.bi"
#include once "fbc.bi"
#include once "hlp.bi"

'':::::
private function _getCStdType _
	( _
		byval ctype as FB_CSTDTYPE _
	) as integer

	if( ctype = FB_CSTDTYPE_SIZET ) then
		function = FB_DATATYPE_UINT
	end if

end function


'':::::
function fbcInit_freebsd( ) as integer

    static as FBC_VTBL vtbl = _
    ( _
		@_getCStdType _
	)

	fbc.vtbl = vtbl

	env.target.wchar.type = FB_DATATYPE_UINT
	env.target.wchar.size = FB_INTEGERSIZE

	env.target.triplet = @ENABLE_FREEBSD
	env.target.define = @"__FB_FREEBSD__"
	env.target.entrypoint = @"main"
	env.target.underprefix = FALSE
	env.target.constsection = @"rodata"

    '' Default calling convention, must match the rtlib's FBCALL
    env.target.fbcall = FB_FUNCMODE_CDECL

    '' Specify whether stdcall or EXTERN "windows" result in STDCALL (with @N),
    '' or STDCALL_MS (without @N).
    env.target.stdcall = FB_FUNCMODE_STDCALL_MS

	return TRUE

end function