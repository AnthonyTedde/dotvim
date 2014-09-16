""
" Apparence, colors and Fonts
""
colorscheme solarized
set background=dark
set guifont=Consolas:h12
""
" Delete toolbar (T)
" (e) for using guitablabel and change text  in the labels
"" 
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set guitablabel=%M\ %t
    let g:solarized_termcolors=   256 
endif
""
" solarized options
""
let g:solarized_termcolors=   16      
let g:solarized_italic    =   0
let g:solarized_contrast  =   "high"
let g:solarized_visibility=   "high"

""
" configure character when set list is activated
" <C-v> u00ac   :   ¬
" <C-v> u25b8   :   ▸
""
set listchars=tab:▸\ ,eol:¬

""
" Use the appropriate number of spaces to insert a <Tab>.
" With expandtab, using space instead of tabulation
" best practice softtabstop == shiftwidth
" One line configuration:
" set ts=4 sts=4 sw=8 expandtab
" default configuration:
" set ts=8 sts=0 sw=8 noexpandtab
""
set expandtab 
set smarttab 
set shiftwidth=4
set tabstop=4
set softtabstop=4

""
" custom behavior depending on the filetype.
" check filetype:
" :set ft ?
" :set filetype?
" update filetype:
" setfiletype <filetype>
""
if has("autocmd")
    "filetype must be on. see .vimrc
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab 
endif

