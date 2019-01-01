execute pathogen#infect()
filetype on
syntax on
set guifont=Consolas\ Regular:h14
colorscheme srcery
if has('nvim') || has('termguicolors')
    set termguicolors
endif
let g:lightline = {'colorscheme': 'srcery',}

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
autocmd VimEnter * vertical resize -5
autocmd VimEnter * wincmd p
autocmd VimEnter * set splitbelow
autocmd VimEnter * term ++rows=9 bash
autocmd VimEnter * wincmd k

map <Leader>n <plug>NERDTreeTabs<CR>
let g:nerdtree_tabs_open_on_console_startup=1
let g:rainbow_active = 1
let g:ackprg = 'ag --nogroup --nocolor --column'

noremap <F3> :Autoformat<CR>
set relativenumber
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

noremap <F1> :w<CR>
noremap <F2> :Errors<CR>
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=1


