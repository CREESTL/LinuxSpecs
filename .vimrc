set nocompatible              " be iMproved, required
filetype off                  " required

" Init Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'flazz/vim-colorschemes'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Line numbers
set number


" Tabs for Python
set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab " Tabs with Spaces
set softtabstop=4 " 4 Spaces in the tab
set autoindent
" Highlignt all Python stuff
let python_highlight_all = 1

" Init 256 colors
set t_Co=256

" Before saving Python files - cut dangling spaces at the end
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``
" Smart indents in Python files after keywords
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

syntax on 

" Hide mouse while typing
set mousehide 
" Terminal encoding
set termencoding=utf-8
" No blinking
set novisualbell
" Smart backspace
set backspace=indent,eol,start whichwrap+=<,>,[,]
" Turn off lines on tabs
set showtabline=1

" Change lines
set wrap
set linebreak

" Turn off .swap files
set nobackup
set noswapfile
set encoding=utf-8 
set fileencodings=utf8,cp1251

set clipboard=unnamed
set ruler

set hidden
nnoremap <C-N> :bnext<CR>
nnoremap <C-P> :bprev<CR>

" Turn the sound off
set visualbell t_vb=


" Set colorscheme and font
set guifont=Monaco:h16
set background=dark
colorscheme gruvbox
