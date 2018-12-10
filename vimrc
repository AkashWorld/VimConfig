execute pathogen#infect()
filetype on
syntax on
colorscheme snazzy
set guifont=Consolas\ Regular:h14

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
autocmd VimEnter * TerminalSplit bash

let NERDTreeShowHidden = 1
let NERDTreeMapActivateNode='<right>'
nmap <leader>n :NerdTreeToggle<CR>

let g:rainbow_active = 1
let g:ackprg = 'ag --nogroup --nocolor --column'
