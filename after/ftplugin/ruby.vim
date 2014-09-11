""
" General command
""
nmap <leader>n :Rails new 
nmap <leader>v :Rails!
nmap <leader>l :Rlog
""
" Navigation
""
" toggle spec file
" controller <-> spec file
nmap <leader>a :A<CR>
nmap <leader>av :AV<CR>
nmap <leader>as :AS<CR>
nmap <leader>at :AT<CR>
" toogle Related file
" Controller's method <-> View
nmap <leader>r :R<CR>
nmap <leader>rv :RV<CR>
nmap <leader>rs :RS<CR>
nmap <leader>rt :RT<CR>
" Go to such file
nmap <leader>c      :Econtroller<CR>
nmap <leader>e      :Eenvironment 
nmap <leader>f      :Efixtures<CR>
nmap <leader>h      :Ehelper<CR>
nmap <leader>ro     :Einitializer<CR>
nmap <leader>ini    :Einitializer 
nmap <leader>js     :Javascript<CR>
nmap <leader>lay    :Elayout<CR>
nmap <leader>gem    :Elib<CR>
nmap <leader>mig    :Emigration<CR>
nmap <leader>m      :Emodel<CR>
nmap <leader>css    :Estylesheet<CR>
nmap <leader>ut     :Eunittest<CR>
nmap <leader>v      :Eview<CR>
