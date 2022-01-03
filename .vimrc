"Plug settings
call plug#begin()
Plug 'fxn/vim-monochrome'
Plug 'sheerun/vim-polyglot'
Plug 'NLKNguyen/papercolor-theme'
Plug 'itchyny/lightline.vim'
call plug#end()

"Theme
set background=light
colorscheme PaperColor

"Status line
let g:lightline = {'colorscheme':'PaperColor'}
set laststatus=2
set statusline=
set statusline+=%m%r%w%q\ %a%f
set statusline+=%=%=%=
set statusline+=%l:%v\ \ %P\|%L
set statusline+=%=
set statusline+=\ %{%MyNeomakeStatusLine()%}
set statusline+=.\ %y

"vim-polyglot settings
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_auto_sameids = 1

" Basic Settings
set renderoptions=type:directx
set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set wildmenu
set history=100
set guifont=Fira\ Code:h12 
set encoding=utf-8


"Map keys
nnoremap <C-v> "+gP
cnoremap <C-v> <C-r>+
inoremap <C-v> <esc>"+gP
vnoremap <C-v> "+gP
vnoremap <C-c> "+y
vnoremap <C-x> "+x

"Compile CPP
autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r -Wl,--stack,268435456<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>
autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $
