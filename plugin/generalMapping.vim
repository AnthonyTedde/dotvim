""
" With a map leader it's possible to do extra key combinations
"  aslike <leader>w saves the current file
""
let mapleader = ","
let g:mapleader = ","
""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
" see helperfunction.vim
""
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>
""
" Moving around, tabs, windows and buffers
""
map j gj
map k gk
map <space> /
map <c-space> ?
map <S-space> :
""
" Smart way to move between windows
" C-j,k,h,l
""
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
""
" Close the current buffer
""
map <leader>bd :Bclose<cr>
""
" Close all the buffers
""
map <leader>ba :1,1000 bd!<cr>
""
" Useful mappings for managing tabs
""
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
ca tn tabnew
ca tt NERDTreeToggle .
map <leader>tt :NERDTreeToggle .<CR>
""
" remap exp
""
imap ² <Esc>
""
" FuzzyTab
"""
map <leader>ff :FufFile<CR>
""
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
""
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/
""
" Switch CWD to the directory of the open buffer
""
map <leader>cd :cd %:p:h<cr>:pwd<cr>

""
" Remap VIM 0 to first non-blank character
""
map 0 ^
""
" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
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
" Delete trailing white space on save, useful for Python and CoffeeScript ;)
""
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()
""
" => vimgrep searching and cope displaying
""
" When you press gv you vimgrep after the selected text
vnoremap <silent> gv :call VisualSelection('gv')<CR>
" Open vimgrep and put the cursor in the right position
map <leader>g :vimgrep // **/*.<left><left><left><left><left><left><left>
" Vimgreps in the current file
map <leader><space> :vimgrep // <C-R>%<C-A><right><right><right><right><right><right><right><right><right>
" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>
""
" => Spell checking
""
" Pressing ,ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>
" Shortcuts using <leader>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
""
" => Misc
""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm 
" Quickly open a buffer for scripbble
map <leader>q :e ~/buffer<cr> 
" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>
" rapide saving
nmap <leader>w :w!<cr>
" rapid swaping from clipboard
nmap <leader>r ggVG"+P
nmap <leader>a ggVG
nmap <leader>x ggVGx
nmap <leader>p "+p
nmap <leader><S-p> "+P
nmap <leader>y "+y
" ctrlp
nmap <leader>c :CtrlP<CR>

""
" Text manipulation
""
ca stw call StripTrailingWhitespaces()
