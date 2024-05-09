" :help normal-index
"Global""""""""""""""""""""""""""""""""""""""""""""
"Look at that https://github.com/hrsh7th/nvim-cmp

syntax on 		                    " Enable sintax highlight
set nu rnu		                    " Enable hybrids line numbers
set showtabline=2	                " Enable the tabline
set tabstop=4		                " show existing tab with 4 width
set softtabstop=4	                " show existing tab with 4 width
set shiftwidth=4	                " When identing with > use 4 spaces

set noshowmode                      " Desable the alert-mode in the bottom of the window (The -- INSERT --) (it's just because i'm using lightline plugin)

set guicursor=n-v-c-i:block         " Set the cursor as block in insert mode

set nocompatible                    " Polyglot needs

set hidden                          " Hides the current buffer when a new file is openned

set incsearch                       " Incremental search
set ignorecase                      " Ingore case in search
set smartcase                       " Consider case if there is a upper case character

" set scrolloff=8

set colorcolumn=120
set signcolumn=yes                  " add a column on left to listing    

set cmdheight=2                     " More space for messages
set encoding=utf-8                  " Set utf-8 as default

set nobackup                        " Disable backups files
set nowritebackup                   " Disable backups files

set splitright                      " Create split on right
set splitbelow                      " Create split on down

set autoread                        " When you edit another file, the change will be showed at the same time
set mouse=a                         " Enable mouse to usage

set laststatus=3

filetype on                         " Detect and set filetypes option and trigger the filetype event
filetype plugin on                  " Load the plugin file for the file type, if any
filetype indent on                  " Load the indent file for the file type, if any


" Leader
let mapleader=","


"Remaps""""""""""""""""""""""""""""""""""""""""
nmap <C-q> :q<CR>
nmap <C-s> :w<CR>
nmap <C-m> i<CR><ESC>
nmap <C-p> :Files<CR>
nmap ; :
nmap <leader>da :NvimTreeToggle<CR> 


imap <C-q> <ESC>:q <CR>
imap <C-s> <ESC>:w<CR>a


"Plugins""""""""""""""""""""""""""""""""""""""""
call plug#begin()
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "Using :Files will open an window to search all files
    Plug 'junegunn/fzf.vim' "Using :Files will open an window to search all files

    Plug 'psliwka/vim-smoothie' "Do as the C-d and C-u be more smoothie(not C-y and C-e)

    Plug 'windwp/nvim-autopairs' "Auto pairs

    Plug 'sheerun/vim-polyglot' "Polyglot

    Plug 'mattn/emmet-vim'      "Emmet

    Plug 'morhetz/gruvbox'      "Gruvbox theme
    Plug 'ful1e5/onedark.nvim'  "Onedark theme 

    Plug 'francoiscabrol/ranger.vim' "Ranger
    Plug 'rbgrouleff/bclose.vim' "Ranger

    Plug 'kyazdani42/nvim-web-devicons' " optional
    Plug 'kyazdani42/nvim-tree.lua' "Tree for nvim

    Plug 'itchyny/lightline.vim' "Be better the information in the botton of the window
call plug#end()


" Polyglot
let g:polyglot_disabled = ['ftdetect']


"lightline
let g:lightline = {
            \ 'colorscheme': 'one',
            \ }

" Color scheme
colorscheme onedark


" Emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


"Nvim-tree Nvim-autopairs config
lua << EOF
require("nvim-autopairs").setup {}
require("nvim-tree").setup {
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    }
}
EOF

