" Plugin manager
execute pathogen#infect()
call pathogen#infect('bundle/{}')
call pathogen#helptags()

" <Leader>
let mapleader=","

" Theme
set term=xterm-256color
set t_Co=256
colorscheme railscasts

" Clipboard handle
set clipboard=unnamedplus

" Mouse on
set mouse=a

" Line numbers
set number

" Various options
set nocompatible
syntax on
filetype plugin indent on
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" EasyMotion binds

let g:EasyMotion_smartcase = 1

nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-sl)

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion "

map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

" Swap lines
nnoremap <c-j> :m .+1<CR>==
nnoremap <c-k> :m .-2<CR>==
vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv

" Only for pros
nnoremap ; :
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>


" Transparent background
hi Normal ctermfg=252 ctermbg=none

" Haskell
au BufEnter *.hs compiler ghc
let g:haddock_browser="chrome-browse"

" Tabs
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
noremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" Syntatic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <silent> <Leader>e :Errors<CR>
map <Leader>s :SyntasticToggleMode<CR>
let g:syntastic_auto_loc_list=1

" Reload
map <silent> tu :call GHC_BrowseAll()<CR>
" Type Lookup
map <silent> tw :call GHC_ShowType(1)<CR>
