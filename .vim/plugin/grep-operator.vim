" vim: set ft=vim:
nnoremap <leader>G :set operatorfunc=<SID>GrepOperator<CR>g@
vnoremap <leader>G :<C-u>call <SID>GrepOperator(visualmode())<CR>

function! s:GrepOperator(type)
    let saved_unnamed_register = @@
    if a:type ==# 'v'
        normal! `<v`>y
    elseif a:type ==# 'char'
        normal! `[v`]y
    else
        return
    endif

    "echom shellescape(@@)
    silent execute "grep! -R " shellescape(@@) . " ."
    copen
    let @@ = saved_unnamed_register
endfunction
