" The opening 'if' and closing 'let' are boilerplate. KEEP THEM THERE.
" (they tell vim to not load this if indent has already been enabled for this
" buffer)
if exists("b:did_indent")
    finish
endif
" ----------------------------------------------------------------------

" 'smartindent' works well enough.
setlocal autoindent smartindent nocindent indentexpr=
setlocal cinwords=if,else,while,for,function

" ----------------------------------------------------------------------
let b:did_indent = 1 


