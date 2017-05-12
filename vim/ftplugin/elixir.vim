map <leader>t :execute "!mix test " . expand('%:p') .":" . line('.') <cr>
nmap <leader>T :!mix test<cr>

