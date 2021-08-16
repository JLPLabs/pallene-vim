" The opening 'if' and closing 'let' are boilerplate. KEEP THEM THERE.
" (they tell vim to not load this command, it has already been enabled for this
" buffer)
if exists("g:pallene_command")
    finish
endif
" ----------------------------------------------------------------------

function! PalleneCompileFile()
    silent !clear
    execute "! ./" . g:pallene_command . " " . bufname("%")
endfunction

nnoremap <buffer> <localleader>r :call PalleneCompileFile()<cr>

" ----------------------------------------------------------------------
let g:pallene_command = "pallenec" 


