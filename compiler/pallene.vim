" The opening 'if' and closing 'let' are boilerplate. KEEP THEM THERE.
" (they tell vim to not load this if compiler has already been enabled for this
" buffer)
if exists("b:current_compiler")
    finish
endif
" ----------------------------------------------------------------------

set makeprg=\./pallenec\ %
set errorformat=type\ error:\ %f:%l:%c:\ %m

" ----------------------------------------------------------------------
let b:current_compiler = "pallenec" 



