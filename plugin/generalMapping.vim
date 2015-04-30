""
" With a map leader it's possible to do extra key combinations
" aslike <leader>w saves the current file
""
let mapleader = ","
let g:mapleader = ","
"let maplocalleader = ","

""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
" see helperfunction.vim
""
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

""
" Moving around, tabs, windows and buffers
" and searching option
"
" gj and gk permit to move up and down the cursor to the character just under or above
" the cursor when a line have a multiline presentation
"
" VisualSelection('vg') -> call vimgrep with the selection as pattern
"
" visualselection('replace') -> Search and replace the selection with a pattern
"
" DRAWBACK: It avoids the capability to use command <dj> which delete the line and 
"           that just above
" TODO: ca vg add a <space> on command deployed.
""
map j gj
map k gk
map <space> /
map <c-space> ?
map <S-space> :
vnoremap <silent> vg :call VisualSelection('vg')<CR>
ca vg vimgrep // **/*.*<left><left><left><left><left><left><left><left>
vnoremap <silent> <leader>r :call visualselection('replace')<CR>

""
" Smart way to move between windows split
" C-j,k,h,l
""
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

""
" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
" TOFIX: <M-j> doesn't work properly with mapping <Space> /
""
nmap <M-j> mz:m+<cr>`z 
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

""
" Leader shortcut
""

""
" CONCERN: Buffer manipulation
" :Bclose -> close the current buffer
" :1,1000 db! -> close  all the buffers
""
map <leader>bd :Bclose<cr>

""
" CONCERN: tab navigation
"  te: Opens a new tab with the current buffer's path
"      Super useful when editing files in the same directory
""
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tt :NERDTreeToggle .<CR>
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

""
" CONCERN: FuzzyTab
"""
map <leader>ff :FufFile<CR>
map <leader>ct :Ctrlp<CR>

""
" Misc
"
" setlocal paste! -> toggle paste mode on/off
""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm 
map <leader>pp :setlocal paste!<cr>
nmap <leader>w :w!<cr>
" rapid swaping from clipboard
nmap <leader>P ggVG"+P
nmap <leader>a ggVG
nmap <leader>x ggVGx
nmap <leader>p "+p
nmap <leader><S-p> "+P
vmap <leader>y "+y 

""
" remap exp
" useful when using fuck*** keyboard with Esc key at foufnilesbainsdpis
""
imap ² <Esc>

""
" Cabbrev
""
ca tn tabnew
ca tt NERDTreeToggle .
ca stw call StripTrailingWhitespaces()

