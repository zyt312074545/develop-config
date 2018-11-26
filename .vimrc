set tabstop=4
set nu
set showmatch
set cursorline
set ruler
set autoindent
set backspace=2
set hlsearch
syntax enable
let mapleader = ","

" 插件管理
call plug#begin('~/.vim/plugged')
Plug 'python-mode/python-mode', { 'branch': 'develop' }
Plug '/usr/local/opt/fzf'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
call plug#end()

"插件设置
" ===================================================
" Python-mode settings
" ===================================================
let g:pymode_python = 'python3'
let g:pymode = 1
let g:pymode_warnings = 1
let g:pymode_paths = []
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
let g:pymode_options_max_line_length = 79
let g:pymode_options_colorcolumn = 1
let g:pymode_quickfix_minheight = 3
let g:pymode_quickfix_maxheight = 6
let g:pymode_indent = 1

" Breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'
let g:pymode_breakpoint_cmd = ''

" Code checking
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_unmodified = 0
let g:pymode_lint_on_fly = 0
let g:pymode_lint_message = 1
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']

" Rope support
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 1
let g:pymode_rope_completion_bind = '<C-Space>'

" Syntax
let g:pymode_syntax = 1
let g:pymode_syntax_slow_sync = 1
let g:pymode_syntax_all = 1

" ===================================================
" NERDTree setting
" ===================================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']
autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
nmap <C-n> :NERDTreeToggle<cr>

