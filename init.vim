"Global"""""""""""""""""""""""""""""""""""""""""""""""
syntax on            " Enable syntax highlight
set nu               " Enable line numbers

set tabstop=4        " Show existing tab with 4 spaces width
set softtabstop=4    " Show existing tab with 4 spaces width
set shiftwidth=4     " When indenting with '>', use 4 spaces width

set expandtab        " On pressing tab, insert 4 spaces
set smarttab         " insert tabs on the start of a line according to shiftwidth
set smartindent      " Automatically inserts one extra level of indentation in some cases

set hidden           " Hides the current buffer when a new file is openned

set incsearch        " Incremental search
set ignorecase       " Ingore case in search
set smartcase        " Consider case if there is a upper case character

set scrolloff=8      " Minimum number of lines to keep above and below the cursor

set colorcolumn=100  " Draws a line at the given line to keep aware of the line size
set signcolumn=yes   " Add a column on the left. Useful for linting

set cmdheight=2      " Give more space for displaying messages
set updatetime=300   " Time in miliseconds to consider the changes

set encoding=utf-8   " The encoding should be utf-8 to activate the font icons

set nobackup         " No backup files
set nowritebackup    " No backup files

set splitright       " Create the vertical splits to the right
set splitbelow       " Create the horizontal splits below

set autoread         " Update vim after file update from outside
set mouse=a          " Enable mouse support

filetype on          " Detect and set the filetype option and trigger the FileType Event
filetype plugin on   " Load the plugin file for the file type, if any
filetype indent on   " Load the indent file for the file type, if any






"Remaps"""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-q> :q!<CR>
nmap <C-s> :w<CR>
nmap <C-x> :wq<CR>
nmap ; :
nmap q :q<CR>






"Plugins"""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
    Plug 'getomni/neovim', { 'branch': 'main' }
    Plug 'sheerun/vim-polyglot'
    Plug 'windwp/nvim-autopairs'
call plug#end()






"Theme"""""""""""""""""""""""""""""""""""""""""""""""
colorscheme omni






"Extension"""""""""""""""""""""""""""""""""""""""""""""""
lua << EOF
require("nvim-autopairs").setup {}
EOF
