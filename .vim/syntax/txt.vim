" Vim syntax file


if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

" Comments.
syn match txtComment /#.*$/ contains=@Spell

syn match txtHeading /^\s*\d.*$/ contains=@Spell

syn match txtMinus /-/ contains=@Spell

syn match txtNumerate /(\d*)/ 
syn match txtNumerate /\[\d*\]/ 

highlight default link txtComment Comment
highlight default link txtHeading Constant

highlight default link txtMinus Type
highlight default link txtNumerate Number
