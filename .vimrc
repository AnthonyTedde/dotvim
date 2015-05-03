""
" pathogen used to load all bundles
""
execute pathogen#infect()
" Enable syntax highlighting
syntax enable
syntax on
filetype plugin indent on
""
" reload file while updating from another source
""
set autoread
""
"The command-lines that you enter are remembered in a history table.  You can
"recall them with the up and down cursor keys.  There are actually five
" default 20
""
set history=700
""
"Generate the help tags file(s) for directory {dir}.
""
Helptags
""
"no backup, swapfile nor whitebackup
""
set nobackup
set nowb
set noswapfile
""
" Linebreak on 500 characters
""
set lbr
set tw=500
""
" autoindent, smartindent, wrap lines
""
set ai 
set si 
set wrap 
""
" laststatus=2: Always show the status line
" To hide stl: Laststatus =0
"
" Format the status line
" %F Absolute path (%f relative)
" %m [+] if file is modified
" %r [RO] if readonly
" %h [Help] if help file is open
" %w [Preview] When a preview window is open (:help preview-window)
""
set laststatus =2
set statusline =<%F%m%r%h%w\>\ 
set statusline +=[Format=%{&ff}]\ 
set statusline +=[Type=%y]\ 
set statusline +=[ASCII=\%03.3b]\ 
set statusline +=[HEX=\%02.2B]\ 
set statusline +=[VCol=%02v]\ 
set statusline +=[%p%%]\ [Len=%L]
""
"By default this option is on and the Vi defaults are used for the options.
""
set nocompatible 
" 
" File encodingn, encoding
"
set fenc=UTF-8
set enc=UTF-8
""
" line number
""
set number 
""
" Ultisnips
""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<C-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Set omnifunc
" Base omnicomplete
set omnifunc=syntaxcomplete#Complete
" Add Omnicomplete option for ruby and rails
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

""
" customize Ctrlp
""
let g:ctrlp_working_path_mode = 'ra'

""
" R Plugin
""
let vimrplugin_routnotab=1
""
" emmet
""
let g:user_emmet_leader_key='<c-y>'
