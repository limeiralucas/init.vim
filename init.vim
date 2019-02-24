set number
set nocompatible
set hidden
set autochdir
set encoding=utf-8
set noshowmode

autocmd BufRead,BufNewFile *.jinja2 set syntax=htmldjango

let g:python3_host_prog = '/anaconda3/bin/python3'
let g:python_host_prog  = '/usr/local/bin/python2'

call plug#begin('~/.config/nvim/plugged')

Plug 'mhartington/oceanic-next'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-signify'
Plug 'tweekmonster/django-plus.vim'
Plug 'lervag/vimtex'
Plug 'Konfekt/FastFold'
Plug 'matze/vim-tex-fold'
Plug 'numkil/ag.nvim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

Plug 'zchee/deoplete-jedi'
Plug 'Shougo/echodoc.vim'

call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

" Theme
syntax enable
colorscheme OceanicNext

let g:deoplete#enable_at_startup = 1
set completeopt+=noinsert
set completeopt-=preview

let g:deoplete#enable_ignore_case = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline_powerline_fonts = 1

let g:echodoc#enable_at_startup = 1

let g:text_flavor = 'latex'
let g:text_conceal = ''
let g:vimtext_fold_manual = 1
let g:vimtext_latexmk_continuous = 1
let g:vimtext_compiler_progname = 'nvr'

let g:vimtext_view_method = 'skim'

" Keybindings
map <M-/> :NERDTreeToggle<CR>
nnoremap <C-Tab> :bn<CR>
inoremap <expr><C-n> deoplete#mappings#manual_complete()
