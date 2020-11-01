"OPTIONS
set background=dark
set number
set relativenumber
syntax on
filetype plugin indent on
set tabstop=2
set softtabstop=2
set nobackup
set noswapfile
set noundofile
let mapleader = " "

autocmd TextChanged,TextChangedI *.vue silent write

"MAPPINGS
"nnoremap <leader>ev :tabedit $HOME/.vimrc<CR>
"nnoremap <leader>rv :source %<CR>
nnoremap <Tab> gt
nnoremap <S-Tab> gt

inoremap kj <Esc><Esc>
vnoremap kj <Esc><Esc>

"Plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', {'dir': '~/.fzf','do': './install --all'}
Plug 'junegunn/fzf.vim' " needed for previews
Plug 'antoinemadec/coc-fzf'

call plug#end()

colorscheme gruvbox

"COC OPTIONS

"COC fzf
nnoremap <silent> <space><space> :<C-u>CocFzfList<CR>
nnoremap <leader>f :Files!<CR>

" TAB for selection
 inoremap <silent><expr> <TAB>
		 \ pumvisible() ? "\<C-n>" :
		 \ <SID>check_back_space() ? "\<TAB>" :
		 \ coc#refresh()
 inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

 function! s:check_back_space() abort
   let col = col('.') - 1
	 return !col || getline('.')[col - 1]  =~# '\s'
 endfunction

" <CR> to confirm selection
if exists('*complete_info')
	 inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
	 inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

"Coc Prettier
command! -nargs=0 Prettier :CocCommand prettier.formatFile
vnoremap <leader>p :Prettier<CR>
nnoremap <leader>p :Prettier<CR>

