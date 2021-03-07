" jump to topic under cursor
nnoremap <buffer> <CR> <C-]>
nnoremap <buffer> <BS> <C-T>
" jump to next option
nnoremap <buffer> o /'\l\{2,\}'<CR>
nnoremap <buffer> O ?'\l\{2,\}'<CR>
" jump to next subject.
nnoremap <buffer> s /\|\zs\S\+\ze\|<CR>
nnoremap <buffer> S ?\|\zs\S\+\ze\|<CR>
