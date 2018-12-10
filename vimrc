execute pathogen#infect()
filetype on
syntax on
colorscheme snazzy
set guifont=Consolas\ Regular:h14
map <leader>s :source ~/.vimrc<CR>
filetype indent on
set nowrap
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set smartindent
set autoindent
autocmd BufWritePre * :%s/\s\+$//e
set hlsearch
nnoremap <silenc> <Esc> :nohlsearch<Bar>:echo<CR>
set showmatch
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
let NERDTreeShowHidden = 1
let NERDTreeMapActivateNode='<right>'
nmap <leader>n :NerdTreeToggle<CR>
autocmd VimEnter * TerminalSplit bash
