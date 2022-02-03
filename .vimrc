set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'rhysd/vim-clang-format'
Plugin 'ericcurtin/CurtineIncSw.vim'
Plugin 'jez/vim-ispc'
Plugin 'dense-analysis/ale'
call vundle#end()            " required
filetype plugin indent on    " required
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
set number
set hlsearch
set backspace=indent,eol,start
set mouse=a
set ttymouse=sgr

set background=dark
colorscheme solarized

if has('gui_running')
    autocmd GUIEnter * set vb t_vb=
endif

let mapleader = ","
nnoremap <leader>m :BufExplorer<CR>
nnoremap <leader>n :Explore<CR>

let g:clang_format#command='clang-format-6.0'
let g:clang_format#detect_style_file=1
let g:clang_format#auto_format=1

let g:netrw_banner = 0
let g:netrw_liststyle = 3

set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar

let g:ycm_auto_trigger = 0

nnoremap <leader>h :call CurtineIncSw()<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <leader>g :YcmC GoTo<CR>
nnoremap <leader>rw :YcmC RefactorRename
nnoremap <leader>cn :cn<CR>
nnoremap <leader>cp :cp<CR>

" cursor shape change in terminal
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

packadd termdebug
let g:termdebug_wide=1
