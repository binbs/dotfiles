" vim: set ft=vim:

" Rust----------- {{{
" this makes make populate the quickfixlist and not open own terminal.
compiler cargo
" This makes the current file compile using cargo build
" and populates the loclist with hints or pints no erors otherwise.
nnoremap <buffer> <F7> :silent make build\|redraw!\|cc<CR>
" nnoremap <buffer> <leader><F7> :silent make run\|redraw!\|cc<CR>
let g:rustfmt_autosave = 1
" nnoremap <buffer> <F5> :!cargo run<CR>
" nnoremap <buffer> <leader><F5> :!cargo test<CR>
" }}}
