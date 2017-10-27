call plug#begin('~/.vim/plugged')
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-sensible'
Plug 'colepeters/spacemacs-theme.vim'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'flazz/vim-colorschemes'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'vim-scripts/VimITunes.vim'
call plug#end()

set relativenumber
set number
set tabstop=2 
set shiftwidth=2 
set expandtab
set encoding=utf8
set rtp+=/usr/local/opt/fzf

nmap <leader>' :NERDTreeToggle<CR>
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)
" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
nmap <Space><Space> :FZF<CR>

colorscheme 256-grayvim

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'atomic'
let g:VimITunesMapPrefix = ",x"
" ,xq    Quit iTunes
" ,xs    Toggle Shuffle Mode
" ,xp    Toggle Pause Mode
" ,xl    Next Song
" ,xh    Previous Song
" ,xk    Volume Up
" ,xj    Volume Down
" ,xm    Mute
" ,x?    Display Song Title
" ,xd    Disable the current song
" ,xe    Enable the current song
