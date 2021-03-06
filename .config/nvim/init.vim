" -------------------------------------------------------------------------- "
"  " My config for use as a backend for VSCode and system configuration."    "
" -------------------------------------------------------------------------- "

" context free things
set shell=/bin/bash

" much more convenient leader
let mapleader = "\<Space>"

" Jump to start and end of line using the home row keys
map H ^
map L $

" Quick-save
nmap <leader>w :w<CR>

" Quickly insert an empty new line without entering insert mode
" (uses mark o to return to the previous cursor column)
nnoremap <Leader>O moO<Esc>`o
nnoremap <Leader>o moo<Esc>`o

" No arrow keys --- force yourself to use the home row
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" set the runtime path to include Vundle and initialize
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" This config file controls the neovim backend I use for VSCode, and this
" section is just for that.
if exists('g:vscode')

    " Simulate hovering with the mouse
    nnoremap <silent> <leader>gh  :<C-u>call VSCodeNotify('editor.action.showDefinitionPreviewHover', { 'query': expand('<cword>')})<CR>
    
    " Easy commit and push
    nnoremap <silent> <leader>gc  :<C-u>call VSCodeNotify('git.commitAll')<CR>
    nnoremap <silent> <leader>gp  :<C-u>call VSCodeNotify('git.push')<CR>

    " Convenient debug
    nnoremap <silent> <leader>r   :<C-u>call VSCodeNotify('workbench.action.debug.run')<CR>
    nnoremap <silent> <leader>s   :<C-u>call VSCodeNotify('workbench.action.debug.stop')<CR>
    nnoremap <silent> <leader>rs  :<C-u>call VSCodeNotify('workbench.action.debug.restart')<CR>

    nnoremap <silent> <leader>rp  :<C-u>call VSCodeNotify('python.execInTerminal')<CR>

    nnoremap <silent> <leader>c  :<C-u>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
else

    Plugin 'itchyny/lightline.vim'
    Plugin 'dag/vim-fish'
    Plugin 'neoclide/coc.nvim', {'branch': 'release'}
    
    filetype plugin indent on



    " use <tab> for trigger completion and navigate to the next complete item
    function! s:check_back_space() abort
	let col = col('.') - 1
    	return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

    set relativenumber
    set number
    set mouse=a
    syntax on
    set noshowmode
	set shortmess+=F
    set tabstop=4
	
endif
call vundle#end()
