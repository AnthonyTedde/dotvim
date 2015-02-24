""
" Minimal number of screen lines to keep above and below the cursor.
" scrolloff
"""
set so=9
""
" wildmenu: to tesl :color<tab> 
""
set wildmenu 
set wildignore=*.o,*~,*.pyc
""
"Show the line and column number of the cursor position, separated by a comma.
""
set ruler
""
" Command height on bottom
""
set cmdheight=2
""
" set hid == set hidden
" when several files are loaded into buffer this option
" leave bn(buffernext) bp(bufferPreviou) alone if some files
" have been updated without beeing saved before
""
set hid
""
"http://vim.wikia.com/wiki/Backspace_and_delete_problems
""
set backspace=eol,start,indent
set whichwrap+=h,l
""
"case sensitive options
" searching options
""
set ignorecase
set smartcase 
set hlsearch
set incsearch
set lazyredraw
set magic
""
" Misc
""
" use key: % for nagivate between {}[]() 
set showmatch 
" speed cursor blinking 
set mat=5 
" No annoying sound on errors
" http://vim.wikia.com/wiki/Disable_beeping
"  !!!!!!!!!!! NOT WORK !!!!!!!!!!!!!!!
set noerrorbells
set novisualbell
set t_vb=
"timeout in milisecond
set tm=500 
"put a line at 80 character
set cc=80 "cc = colorcolumn
