call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'rizzatti/dash.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'flazz/vim-colorschemes'
Plug 'tmhedberg/SimpylFold'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'lervag/vimtex'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/vim-easy-align'
Plug 'joonty/vim-do'
call plug#end()

set encoding=utf8
set relativenumber
set hlsearch
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw "redraw only when needed
set incsearch "search as characters are entered
set hlsearch "highlight matches
set nocompatible
"set background=dark
set ignorecase
set smartcase
set incsearch
set foldmethod=indent
set foldlevel=99
set splitbelow
set splitright
"powerline
set laststatus=2
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 11
filetype plugin indent on

filetype off
syntax on
let g:solarized_termcolors=256
colorscheme molokai

autocmd BufWritePre * %s/\s\+$//e
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1
let g:indentLine_char = '|'
autocmd FileType java setlocal omnifunc=javacomplete#Complete
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

imap <leader>o ö
imap <leader>O Ö
imap <leader>u ü
imap <leader>U Ü
imap <leader>a ä
imap <leader>A Ä
imap <leader>s ß
imap <C-j>I <Plug>(JavaComplete-Imports-AddMissing)
imap <C-j>R <Plug>(JavaComplete-Imports-RemoveUnused)
imap <C-j>i <Plug>(JavaComplete-Imports-AddSmart)
imap <C-j>ii <Plug>(JavaComplete-Imports-Add)
imap <C-j>jM <Plug>(JavaComplete-Generate-AbstractMethods)
imap <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
imap <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
imap <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)
nmap <leader>jI <Plug>(JavaComplete-Imports-AddMissing)
nmap <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
nmap <leader>jii <Plug>(JavaComplete-Imports-Add)
nmap <leader>jA <Plug>(JavaComplete-Generate-Accessors)
nmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
nmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
nmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
nmap <leader>jts <Plug>(JavaComplete-Generate-ToString)
nmap <leader>jeq <Plug>(JavaComplete-Generate-EqualsAndHashCode)
nmap <leader>jc <Plug>(JavaComplete-Generate-Constructor)
nmap <leader>jcc <Plug>(JavaComplete-Generate-DefaultConstructor)
nmap <leader>jM <Plug>(JavaComplete-Generate-AbstractMethods)
nmap <leader>v :vsplit
nmap <leader>h :split
nmap <silent> <leader>d <Plug>DashSearch
nmap <C-t> :tabnew
nmap <C-c> ea,<Esc>
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <space> za
nnoremap <Leader>' :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>\ :NERDTreeFind<CR>
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
vmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
vmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
vmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
