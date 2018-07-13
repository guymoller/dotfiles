set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive.git'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-eunuch'
Plugin 'valloric/MatchTagAlways'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'thoughtbot/vim-rspec'
Plugin 'valloric/youcompleteme'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'vim-airline/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'posva/vim-vue'
Plugin 'airblade/vim-gitgutter'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'mileszs/ack.vim'
Plugin 'machakann/vim-highlightedyank'
" Plugin 'ryanoasis/vim-devicons'
" Keep Plugin commands between vundle#begin/end.
" The following are examples of different formats supported.

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on
" syntax enable
syntax on
set number
set clipboard+=unnamedplus
set mouse=a
set smartindent
set noautoindent
set autoread
set expandtab
set shiftwidth=2
set softtabstop=2
colorscheme railscasts
nnoremap <c-s> :w<CR>
inoremap <c-s> <Esc>:w<CR>l
vnoremap <c-s> <Esc>:w<CR>
map ü <C-]>
map ö [
map ä ]
map Ö {
map Ä }
map ß /
let mapleader = "-"
set cursorline
" set cursorcolumn
map <C-n> :NERDTreeToggle<CR>
" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp$\|node_modules$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
" filetype indent off
let g:ctrlp_use_caching = 0
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
let g:tagbar_type_ruby = {
    \ 'kinds' : [
        \ 'm:modules',
        \ 'c:classes',
        \ 'd:describes',
        \ 'C:contexts',
        \ 'f:methods',
        \ 'F:singleton methods'
    \ ]
    \ }
set encoding=utf8
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let NERDTreeShowHidden=1
