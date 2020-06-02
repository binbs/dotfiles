
execute pathogen#infect()
source $HOME/.vim_mapping

" General Settings----------- {{{
set nocompatible              " required
set hidden
set showtabline=0

filetype on
filetype plugin on
filetype plugin indent on
if filereadable(expand("~/.vimrc_background"))
  source ~/.vimrc_background
endif
set encoding=utf-8
set t_Co=256                                " 256 colors
set guifont=mononoki\ Nerd\ Font\ 18
colorscheme wombat256mod                    " set vim colorscheme
let g:airline_theme='wombat'                " set airline theme
syntax enable                               " enable syntax highlighting

set shell=/bin/bash
set number                                  " show line numbers
set relativenumber
set ruler
set ttyfast                                 " terminal acceleration

set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files

set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?

set scrolloff=10                            " let 10 lines before/after cursor during scroll

set clipboard=unnamed                       " use system clipboard

set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...

" }}}

"Tabs/Buffers ----------- {{{
tab sball
set switchbuf=usetab
" always draw statusline....
set laststatus=2
" }}}

" Search Settings----------- {{{
set incsearch	                            " incremental search
set hlsearch	                            " highlight search results
set smartcase                               " setting case insensitivity for all-small letter searches
" }}}


" Airline Settings----------- {{{
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1
" }}}

" Tagbar Settings----------- {{{
let g:tagbar_autofocus=1
let g:tagbar_width=42
" }}}

" NERDTree Settings----------- {{{
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=30
nmap <C-n> :NERDTreeToggle<CR>
" }}}

" NERDCommenter Settings" ----------- {{{
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" just for refernce, check
" https://github.com/preservim/nerdcommenter
" for more
" nnoremap <leader>cc     :NERDCommenterComment<CR>
" nnoremap <leader>cn     :NERDCommenterNested<CR>
" nnoremap <leader>c<space>     :NERDCommenterToggle<CR>
" nnoremap <leader>cm     :NERDCommenterMinimal<CR>
" nnoremap <leader>ci     :NERDCommenterInvert<CR>
" nnoremap <leader>cs     :NERDCommenterSexy<CR>
" nnoremap <leader>cy     :NERDCommenterYank<CR>
" nnoremap <leader>c$     :NERDCommenterToEOL<CR>
" nnoremap <leader>cA     :NERDCommenterAppend<CR>
" }}}

" SnipMAte Settings----------- {{{
let g:snippets_dir='~/.vim/vim-snippets/snippets'
" }}}

" Indent Guzides Settings----------- {{{
set listchars=tab:›\ ,trail:•,extends:#,nbsp:.
" }}}

" Python settings" ----------- {{{
" python executables for different plugins
let g:pymode_python='python3'


let g:ale_emit_conflict_warnings = 0
let g:pymode_rope_lookup_project = 0

" rope
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_auto_project=0
let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_autoimport_generate=0
let g:pymode_rope_guess_project=0

" documentation
let g:pymode_doc=0
let g:pymode_doc_bind='K'

" lints
let g:pymode_lint=0

" virtualenv
let g:pymode_virtualenv=1

" breakpoints
let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader>b'

" syntax highlight
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all


" code folding
let g:pymode_folding=0

" pep8 indents
let g:pymode_indent=1

" code running
let g:pymode_run=1
let g:pymode_run_bind='<F5>'

let g:pymode_rope_lookup_project = 0


" highlight 'long' lines (>= 80 symbols) in python files
augroup vimrc_pythoncommands
    autocmd!
    autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,rst,c,cpp match Excess /\%81v.*/
    autocmd FileType python,rst,c,cpp set nowrap
    autocmd FileType python,rst,c,cpp set colorcolumn=88
augroup END
" }}}


"\vimrc_startupcode ----------- {{{
augroup vimrc_startupcode
    autocmd!
    autocmd StdinReadPre * let g:isReadingFromStdin = 1
    autocmd VimEnter * nested if !argc() && !exists('g:isReadingFromStdin') | Startify | endif
    autocmd VimEnter * nested if !argc() && !exists('g:isReadingFromStdin') | NERDTree | endif
augroup END
" }}}

