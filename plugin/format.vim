""
" This function strip all trailing whitespaces.
" All which end a line.
""
function! StripTrailingWhitespaces()
    "let _s=@/
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    "let @/=_s
    call cursor(l, c)
endfunction 
