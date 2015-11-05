set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'





Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
"Plugin 'Valloric/YouCompleteMe'


Plugin 'fatih/vim-go'
" Plugin 'ervandew/supertab'






call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set expandtab
"set tabstop=4
"set shiftwidth=4
set autoindent
set smartindent
"set bg=dark

set nocompatible
set backspace=2


" copy and paste
set clipboard=unnamed

set paste

" dont create swap files
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files

" for rubocop
let g:syntastic_ruby_checkers   = ['rubocop', 'mri']
let g:syntastic_ruby_rubocop_exec = 'RBENV_VERSION=2.1.2 /Users/stefan/.rvm/gems/ruby-2.1.2/bin/rubocop'

" For airline
set laststatus=2
set encoding=utf-8
let g:airline_powerline_fonts=1
set clipboard=unnamed

set sw=2

" remove all trailing whitespace always
autocmd BufWritePre * :%s/\s\+$//e


syntax on
