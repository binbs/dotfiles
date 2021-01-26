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

" Python-mode settings" ----------- {{{
" python executables for different plugins
" pymode settings
let g:pymode = 1
let g:pymode_warnings = 1
" let g:pymode_paths = []
"trim whitespace on save
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
let g:pymode_python='python3'
let g:pymode_options_max_line_length = 87
" ====  ============================
" Key   Command
" ====  ============================
" [[    Jump to previous class or function (normal, visual, operator modes)
" ]]    Jump to next class or function  (normal, visual, operator modes)
" [M    Jump to previous class or method (normal, visual, operator modes)
" ]M    Jump to next class or method (normal, visual, operator modes)
" aC    Select a class. Ex: vaC, daC, yaC, caC (normal, operator modes)
" iC    Select inner class. Ex: viC, diC, yiC, ciC (normal, operator modes)
" aM    Select a function or method. Ex: vaM, daM, yaM, caM (normal, operator modes)
" iM    Select inner function or method. Ex: viM, diM, yiM, ciM (normal, operator modes)
" ====  ============================
let g:pymode_motion = 1

let g:pymode_quickfix_minheight = 6
let g:pymode_quickfix_maxheight = 12
let g:pymode_preview_height = &previewheight
let g:pymode_preview_position = 'botright'

" code folding
let g:pymode_folding=1

" pep8 indents
let g:pymode_indent=1
"
" documentation
let g:pymode_doc=1
let g:pymode_doc_bind='K'

" virtualenv
let g:pymode_virtualenv=1

" code running
let g:pymode_run=1
let g:pymode_run_bind='<leader>r'

" breakpoints
let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader>b'

" lints
" *:PymodeLint* -- Check code in current buffer
" *:PymodeLintToggle* -- Toggle code checking
" *:PymodeLintAuto* -- Fix PEP8 errors in current buffer automatically
let g:pymode_lint=1
let g:pymode_lint_on_write = 1
let g:pymode_lint_message = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']
" let g:pymode_lint_ignore = ["E501", "W",]
let g:pymode_lint_ignore = ["E501"]
" opens up a new window to show lints
let g:pymode_lint_cwindow = 1
let g:pymode_lint_signs = 1
let g:pymode_lint_todo_symbol = 'WW'
let g:pymode_lint_comment_symbol = 'CC'
let g:pymode_lint_visual_symbol = 'RR'
let g:pymode_lint_error_symbol = 'EE'
let g:pymode_lint_info_symbol = 'II'
let g:pymode_lint_pyflakes_symbol = 'FF'

" syntax highlight
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=0
let g:pymode_syntax_all=1

" rope
" |:PymodeRopeAutoImport| -- Resolve import for element under cursor
" |:PymodeRopeModuleToPackage| -- Convert current module to package
" |:PymodeRopeNewProject| -- Open new Rope project in current working directory
" |:PymodeRopeRedo| -- Redo changes from last refactoring
" |:PymodeRopeRegenerate| -- Regenerate the project cache
" |:PymodeRopeRenameModule| -- Rename current module
" |:PymodeRopeUndo| -- Undo changes from last refactoring
let g:pymode_rope_lookup_project = 0
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_auto_project=0
let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_autoimport_generate=0
let g:pymode_rope_guess_project=0
" Keymap for rename method/function/class/variables under cursor
let g:pymode_rope_rename_bind = '<C-c>rr'
" REname current module
let g:pymode_rope_rename_module_bind = '<C-c>r1r'
" organizes imports. unused ones are being dropped.
let g:pymode_rope_organize_imports_bind = '<C-c>ro'
let g:pymode_rope_autoimport_bind = '<C-c>ra'
" convert module to package
let g:pymode_rope_module_to_package_bind = '<C-c>r1p'
"extracting from selected lines
let g:pymode_rope_extract_method_bind = '<C-c>rm'
let g:pymode_rope_extract_variable_bind = '<C-c>rl'
" It happens when you perform move refactoring on a method of a class. In this
" refactoring, a method of a class is moved to the class of one of its
" attributes. The old method will call the new method. If you want to change all
" of the occurrences of the old method to use the new method you can inline it
" afterwards.
let g:pymode_rope_move_bind = '<C-c>rv'

" Change function signature ~
let g:pymode_rope_change_signature_bind = '<C-c>rs'

" }}}
