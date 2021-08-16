" The opening 'if' and closing 'let' are boilerplate. KEEP THEM THERE.
" (they tell vim to not load this if another plugin has already been
"  enabled for this buffer)
if exists("b:did_ftplugin")
  finish
endif
" ----------------------------------------------------------------------


" Set 'formatoptions' to break comment lines but not other lines,
" and insert the comment leader when hitting <CR> or using "o".
setlocal fo-=t fo+=croql

" so ":make" will compile a pallene file; from Practical Vim, p.272
setlocal makeprg=\./pallenec\ %

" this catches errors so we can use vim's quickfix; again from p. 272
" (we are configuring 'errorformat')
setlocal efm=type\ error:\ %f:%l:%c:\ %m

" ----------------------------------------------------------------------
let b:did_ftplugin = 1
