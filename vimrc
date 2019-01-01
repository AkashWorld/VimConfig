execute pathogen#infect()
set exrc
set visualbell
set secure
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
set shiftwidth=4
set noshiftround
set smartindent
set autoindent
autocmd BufWritePre * :%s/\s\+$//e
set hlsearch
nnoremap <silenc> <Esc> :nohlsearch<Bar>:echo<CR>
set showmatch

let g:nerdtree_tabs_open_on_console_startup=1
autocmd VimEnter * :NERDTreeTabsOpen
autocmd VimEnter * :vertical resize -5
autocmd VimEnter * :wincmd p
nmap <leader>n :NERDTreeTabsToggle<CR>

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
let g:syntastic_cpp_remove_include_errors=1

"
" YouCompleteMe options
"

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_register_as_syntastic_checker = 1 "default 1
let g:Show_diagnostics_ui = 1 "default 1
