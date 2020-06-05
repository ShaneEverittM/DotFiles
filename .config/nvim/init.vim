" context free things
set shell=/bin/bash
let mapleader = "\<Space>"
" Jump to start and end of line using the home row keys
map H ^
map L $
" Quick-save
nmap <leader>w :w<CR>

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
map \ <Plug>(easymotion-prefix)
" set the runtime path to include Vundle and initialize
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'asvetliakov/vim-easymotion'

if exists('g:vscode')
    " vscode stuff
    nnoremap <silent> <leader>gh  :<C-u>call VSCodeNotify('editor.action.showDefinitionPreviewHover', { 'query': expand('<cword>')})<CR>
else

    Plugin 'itchyny/lightline.vim'
    Plugin 'dag/vim-fish'
    filetype plugin indent on
    " =============================================================================
    " # GUI settings
    " =============================================================================
    set relativenumber
    set number
    set mouse=a
    syntax on
    set noshowmode
    set shortmess+=F


    " Ctrl+c and Ctrl+j as Esc
    " Ctrl-j is a little awkward unfortunately:
    " https://github.com/neovim/neovim/issues/5916
    " So we also map Ctrl+k
    inoremap <C-j> <Esc>

    nnoremap <C-k> <Esc>
    inoremap <C-k> <Esc>
    vnoremap <C-k> <Esc>
    snoremap <C-k> <Esc>
    xnoremap <C-k> <Esc>
    cnoremap <C-k> <Esc>
    onoremap <C-k> <Esc>
    lnoremap <C-k> <Esc>
    tnoremap <C-k> <Esc>

    nnoremap <C-c> <Esc>
    inoremap <C-c> <Esc>
    vnoremap <C-c> <Esc>
    snoremap <C-c> <Esc>
    xnoremap <C-c> <Esc>
    cnoremap <C-c> <Esc>
    onoremap <C-c> <Esc>
    lnoremap <C-c> <Esc>
    tnoremap <C-c> <Esc>
endif
call vundle#end()
