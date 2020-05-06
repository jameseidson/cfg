
"VUNDLE

set nocompatible              " be iMproved, required
filetype off 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin() "alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
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
"

"GENERAL

"preferences
let mapleader = ","
let tabSize=4
let &softtabstop=tabSize
let &tabstop=tabSize
let &shiftwidth=tabSize
set expandtab
set smarttab
set smartindent
set mouse=a
set number
set showmatch
set wildmenu
set ttyfast
set virtualedit+=block
set whichwrap+=<,>,[,]
set title
set laststatus=2
set backspace=indent,eol,start
set background=dark
set cursorline
set clipboard=unnamed
set scrolloff=9999
set ruler
set formatoptions+=t
set showtabline=1
set splitbelow
set splitright
set diffopt=vertical
set formatoptions-=ro
set autoindent
set autowrite
set incsearch
set hlsearch
set smartcase
set ignorecase

"AUTOCMDS

" swap escape and caps lock (uncomment if needed)
"autocmd VimEnter * silent! !setxkbmap -option caps:swapescape
" disable autocomment on new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" markdown live preview
autocmd BufWritePost *.md silent !pandoc --quiet <afile> -f markdown -t html -s -o /tmp/<afile>:r.html && open -g /tmp/<afile>:r.html
" LaTeX live preview
autocmd BufWritePost *.tex silent !pdflatex -output-directory=/tmp/ <afile> > /dev/null && open -ga skim /tmp/<afile>:r.pdf
" HTML live preview
autocmd BufWritePost *.html silent !open -g <afile>

"VISUAL SETTINGS

syntax on
" enable 256 colors
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
" colorscheme settings
colorscheme antares
highlight Comment gui=italic cterm=italic
highlight CursorLineNr gui=none cterm=none
