call plug#begin('~/.vim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'ajh17/Spacegray.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'xolox/vim-easytags'
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-misc'
Plug 'rizzatti/dash.vim'
call plug#end()
filetype plugin indent on    " required

set backspace=indent,eol,start

colorscheme spacegray
set number
set relativenumber
set ruler
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set showcmd
set wildmenu
set lazyredraw
set showmatch
set laststatus=2
set cursorline
set background=dark
let g:spacegray_underline_search = 1
let g:spacegray_italicize_comments = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1 
let g:airline_theme='hybrid'
let g:hybrid_custom_term_colors = 1
let g:hybrid_reduced_contrast = 1 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
nmap <silent> <leader>f :NERDTreeTabsFind<CR>
nmap <silent> <leader>d :Dash 
let g:nerdtree_tabs_open_on_console_startup = 1
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1
let g:tagbar_autoclose=2

nmap <silent> <leader>b :TagbarToggle<CR>
