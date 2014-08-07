""
" Apparence, colors and Fonts
""
colorscheme solarized
set background=light
set guifont=Consolas:h12
""
" Delete toolbar (T)
" (e) for using guitablabel and change text  in the labels
"" 
if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set guitablabel=%M\ %t
endif
