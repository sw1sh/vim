set shell=zsh

" <Leader>
let mapleader=","

" Clipboard handle
set clipboard=unnamedplus

" Mouse on
set mouse=a

" EasyMotion binds
Bundle 'Lokaltog/vim-easymotion'
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

" Tabs
nnoremap <left> :tabprevious<CR>
nnoremap <right> :tabnext<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
noremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" Persistent undo
set undodir=/tmp/
set undofile

" Toggle highlight
map <leader>h :set hlsearch!<cr>
