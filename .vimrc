
"GENERAL

"preferences
let mapleader = ","
let tabSize=2
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
set spellfile=~/.vim/spell/en.utf-8.add
set spell spelllang=en_us
set nospell


"AUTOCMDS

" swap escape and caps lock (uncomment if needed)
"autocmd VimEnter * silent! !setxkbmap -option caps:swapescape
" spell options
autocmd FileType *.html,*.md,*.txt,*.tex setlocal spell
" disable autocomment on new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" markdown autoreload
autocmd BufWritePost *.md silent !pandoc --quiet <afile> -f markdown -t html -s -o /tmp/<afile>:r.html && open -g /tmp/<afile>:r.html
" LaTeX autoreload
autocmd BufWritePost *.tex silent !pdflatex -output-directory=/tmp/ <afile> > /dev/null && open -ga skim /tmp/<afile>:r.pdf 2> /dev/null

"VISUAL SETTINGS

syntax on
" enable 256 colors
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
" colorscheme settings
colorscheme purify
highlight Comment gui=italic cterm=italic
highlight CursorLineNr gui=none cterm=none
