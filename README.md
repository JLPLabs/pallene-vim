# pallene-vim
Rudimentary vim 'plugin' for Pallene Development (https://github.com/pallene-lang/pallene)

This is an experiment for the author, who really has no busines creating any kind of language tooling for vim.

## To Install

Assumes vim 8 built-in capability...
```
$ cd ~/.vim/pack/<yournamingscheme>/start
$ git clone https://github.com/jlplabs/pallene-vim.git
```
## Files
A list of the files and what value they provide.

Scoring system
```
.  no value; need to come back to later
+  some value
++ more value
```

```
pallene> tree
.
├── compiler
│   └── pallene.vim          .  a modified version of vim-teal; doesn't add value now, maybe I'll fix it after I catch up to vim-team? 
├── ftdetect
│   └── pallene.vim          +  allows vim to recognize Pallene files (extension = ".pln")
├── ftplugin
│   ├── pallene
│   │   └── running.vim      +  use local leader and 'r' to run a file; if you use '\' as local leader then '\r' will run the file
│   └── pallene.vim          ++ allows ':make' to use ./pallenec AND maps output into Quickfix
├── indent
│   └── pallene.vim          +  basic automatic indenting; much room for improvement (e.g., detect 'end' and auto un-indent)
└── syntax
    └── pallene.vim          ++ syntax coloring of: keywords, types, strings, comments (with spell check limited to comments)
```
