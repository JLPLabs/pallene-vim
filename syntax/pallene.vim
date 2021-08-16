" The opening 'if' and closing 'let' are boilerplate. KEEP THEM THERE.
" (they tell vim to not load this if syntax coloring has already been
"  enabled for this buffer)
if exists("b:current_syntax")
    finish
endif
" ----------------------------------------------------------------------

" keywords in Lua
syntax keyword palleneKeyword and break do else elseif end false for
syntax keyword palleneKeyword function goto if in local nil not or repeat
syntax keyword palleneKeyword return then true until while
highlight link palleneKeyword Keyword

" types in Pallene
syntax keyword palleneType boolean integer float
highlight link palleneType Type


" strings
syntax region palleneString start=/\v"/ skip=/\v\\./ end=/\v"/
syntax region palleneString start=/\v'/ skip=/\v\\./ end=/\v'/
highlight link palleneString String

" comments (with spell checking in the comments)
syntax match palleneComment "\v--.*$" contains=@Spell
highlight link palleneComment Comment

" ----------------------------------------------------------------------
let b:current_syntax = "pallene"

