" Base Vim Configuration for 0x1G
" Clean, foundational settings for scripting and infrastructure work

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Syntax highlighting
syntax on

" Show line numbers
set number

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Enable auto-indenting
set smartindent

" Highlight search results
set hlsearch

" Incremental search (shows match while typing)
set incsearch

" Ignore case when searching (unless capital letters used)
set ignorecase
set smartcase

" Enable mouse support (useful for resizing or copy/paste in terminal)
set mouse=a

" Prevent line wrapping
set nowrap

" Better backspace behavior in insert mode
set backspace=indent,eol,start

" Show command in the last line of the screen
set showcmd

" Show matching brackets when text indicator is over them
set showmatch

