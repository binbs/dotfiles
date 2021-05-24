" Python----------- {{{
" tut noch net so ganz...
" run und debug line wäre auch noch cool
" muss man das hier am besten in das python.vim ft snippet basteln, oder?!

augroup python_setings
autocmd!
    autocmd BufWritePost,FileType python :!black %
augroup END

" }}}"

" vim-slime mappings----------- {{{
let g:slime_cell_delimiter = '#%%'
nmap <buffer> <leader>s <Plug>SlimeSendCell
" " }}}

