execute pathogen#infect()
map <space> <leader>
set exrc
set visualbell
set secure
filetype on
syntax on
set guifont=Consolas\ Regular:h14
colorscheme srcery
let g:lightline = {
      \ 'colorscheme': 'srcery',
      \ }
"color nachtleben
set laststatus=2
if has('nvim') || has('termguicolors')
    set termguicolors
endif
if !has('gui_running')
  set t_Co=256
endif
hi Normal guibg=NONE ctermbg=NONE

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
nmap <leader>n :NERDTreeTabsToggle<CR>

let g:rainbow_active = 1
let g:ackprg = 'ag --nogroup --nocolor --column'

set number
set relativenumber

noremap <leader>D <C-T>
noremap <leader>d <C-]>
noremap <leader>U :UpdateTags -R<CR>
noremap <leader>t :tabedit ./
noremap <leader>T :tabclose<CR>
noremap <leader>R :so ~/.vimrc<CR>
noremap <F1> :Autoformat<CR>
noremap <F2> :Errors<CR>
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_loc_list_height=1
"let g:syntastic_cpp_remove_include_errors=1
"
"
" YouCompleteMe options
"

let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:Show_diagnostics_ui = 1 "default 1
let g:ycm_enable_diagnostic_highlighting = 1
let g:ycm_python_binary_path='/usr/bin/python3'

let g:session_autosave_periodic = 1
