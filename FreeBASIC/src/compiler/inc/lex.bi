''	FreeBASIC - 32-bit BASIC Compiler.
''	Copyright (C) 2004-2005 Andre Victor T. Vicentini (av1ctor@yahoo.com.br)
''
''	This program is free software; you can redistribute it and/or modify
''	it under the terms of the GNU General Public License as published by
''	the Free Software Foundation; either version 2 of the License, or
''	(at your option) any later version.
''
''	This program is distributed in the hope that it will be useful,
''	but WITHOUT ANY WARRANTY; without even the implied warranty of
''	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
''	GNU General Public License for more details.
''
''	You should have received a copy of the GNU General Public License
''	along with this program; if not, write to the Free Software
''	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA.


''
'' lex protos
''

type FBTOKEN
	id				as integer
	class			as integer
	typ				as integer
	text			as string * FB.MAXNAMELEN
	littext			as string * FB.MAXLITLEN 	'' used by lit-strings
	tlen			as integer
end type


declare sub 		lexInit                 ( )
declare sub 		lexEnd					( )

declare sub 		lexSaveCtx				( byval level as integer )
declare sub 		lexRestoreCtx			( byval level as integer )


declare function 	lexCurrentChar          ( byval skipwhitespc as integer = FALSE ) as integer
declare function 	lexEatChar              ( ) as integer
declare function 	lexLookAheadChar        ( ) as integer
declare sub 		lexNextToken 			( t as FBTOKEN, byval checkLineCont as integer = TRUE, byval checkDefine as integer = TRUE )

declare function 	lexCurrentToken 		( byval checkLineCont as integer = TRUE, byval checkDefine as integer = TRUE ) as integer
declare function 	lexCurrentTokenClass 	( byval checkLineCont as integer = TRUE, byval checkDefine as integer = TRUE ) as integer
declare function 	lexTokenText 			( ) as string
declare function 	lexTokenTextLen 		( ) as integer
declare function 	lexTokenType 			( ) as integer

declare function 	lexEatToken 			( byval checkLineCont as integer = TRUE, byval checkDefine as integer = TRUE ) as string
declare sub 		lexSkipToken			( byval checkLineCont as integer = TRUE, byval checkDefine as integer = TRUE )

declare function 	lexLookAheadClass 		( byval k as integer ) as integer
declare function 	lexLookAhead 			( byval k as integer ) as integer

declare function 	lexLineNum 				( ) as integer
declare function 	lexColNum 				( ) as integer

declare sub 		lexReadLine				( byval endchar as integer = INVALID, dst as string, byval skipline as integer = FALSE )
declare sub 		lexSkipLine				( )

declare sub 		lexSetCurrentToken		( byval id as integer, byval class as integer )

declare function 	lexPreProcessor 		( ) as integer
