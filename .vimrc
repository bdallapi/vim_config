set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'Valloric/YouCompleteMe.git'
Plugin 'nvie/vim-flake8.git'
Plugin 'tell-k/vim-autopep8'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'rhysd/vim-clang-format'
Plugin 'ericcurtin/CurtineIncSw.vim'
Plugin 'jez/vim-ispc'
Plugin 'lyuts/vim-rtags'
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

let g:ycm_auto_trigger = 0

set tabstop=4
set shiftwidth=4
set expandtab
set number
set hlsearch
set backspace=indent,eol,start
set mouse=a

set background=dark
colorscheme solarized

if has('gui_running')
    autocmd GUIEnter * set vb t_vb=
endif

let mapleader = ","
nnoremap <leader>m :BufExplorer<CR>

autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>
let g:autopep8_max_line_length=120
let g:autopep8_disable_show_diff=1
let g:autopep8_on_save=1

let g:clang_format#command='clang-format-6.0'
let g:clang_format#detect_style_file=1
let g:clang_format#auto_format=1
let g:ycm_always_populate_location_list=1
let g:ycm_auto_hover=''

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar

nnoremap <leader>d :YcmCompleter GoTo<CR>
nnoremap <leader>g :YcmCompleter GetDoc<CR>
nnoremap <leader>h :call CurtineIncSw()<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>

" cursor shape change in terminal
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

packadd termdebug
let g:termdebug_wide=1
