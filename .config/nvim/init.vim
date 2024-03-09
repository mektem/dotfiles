set nocompatible
filetype plugin on
syntax on

set fileformat=unix
set encoding=utf8
set relativenumber
set wrap

set tabstop=4
set shiftwidth=4
set softtabstop=4
"set expandtab
set smarttab
set autoindent
set colorcolumn=80
highlight ColorColumn ctermbg=8

set clipboard^=unnamed,unnamedplus
set list listchars=tab:>-,trail:_,extends:>,precedes:<,nbsp:~
set showbreak=>

let mapleader=" "

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Start NERDTree and put the cursor back in the other window.
autocmd VIMENTER * NERDTree | wincmd p

" open in new tab
" let NERDTreeMapOpenInTab='<ENTER>'

" toggle with \
nnoremap \ :NERDTreeToggle %<CR>

" close NERDTree on file close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") 
     \ && b:NERDTree.isTabTree()) | q | endif

" plugins
call plug#begin('~/local/share/nvim/plugged')
	Plug 'vimwiki/vimwiki'
	Plug 'preservim/nerdtree'
	Plug 'Xuyuanp/nerdtree-git-plugin'
	Plug 'junegunn/goyo.vim'
	Plug 'christoomey/vim-tmux-navigator'
call plug#end()

" spelling
map <F6> :setlocal spell! spelllang=gb<CR>


" disable macro mode
map q <Nop>

" remove arrow keys
" nmap <Left> <Nop>
" nmap <Right> <Nop>
" nmap <Up> <Nop>
" nmap <Down> <Nop>

" better nav between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" tabs
nnoremap <leader>1 1gt
nnoremap <leader>2 2gt
nnoremap <leader>3 3gt
nnoremap <leader>4 4gt
nnoremap <leader>5 5gt
nnoremap <leader>6 6gt
nnoremap <leader>7 7gt
nnoremap <leader>8 8gt
nnoremap <leader>9 9gt
nnoremap <leader>0 :tablast<CR>

autocmd BufEnter,BufRead,BufNewFile *.md set filetype=markdown
set rtp+=$HOMEBREW_PREFIX/opt/fzf
