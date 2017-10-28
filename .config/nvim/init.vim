set nocompatible

set number
set list

call plug#begin('~/.local/share/nvim/plugged')

" Graphics
Plug 'dracula/vim'

" File explorer
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'

" Common dev
"Plug 'ludovicchabant/vim-gutentags'
"Plug 'vim-scripts/taglist.vim'
Plug 'xolox/vim-easytags'
Plug 'xolox/vim-misc'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'terryma/vim-multiple-cursors'
Plug 'christoomey/vim-tmux-navigator'

" Python programming
Plug 'davidhalter/jedi-vim'


" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Web stuff
Plug 'digitaltoad/vim-pug'
Plug 'dNitro/vim-pug-complete', { 'for': ['jade', 'pug'] }
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'kchmck/vim-coffee-script'

" Random language
Plug 'fatih/vim-go'
Plug 'mileszs/ack.vim'




" LaTeX
Plug 'lervag/vimtex'


call plug#end()

color dracula

filetype plugin on
filetype indent on
filetype plugin indent on 

syntax on

" NERDTREE CONFIG
" - Open NERDTree when no file is given
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" - Map ctrl+s to NERDTree
nmap <C-s> :NERDTreeToggle<CR>

" TAGBAR CONFIG
nmap <C-A-s> :TagbarToggle<CR>

" SYNTASTIC CONFIG
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" INDENT GUIDE CONFIG
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 1


" WEB STUFF CONFIG
" - Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1

" Other configuration options
" - Make quickfix window
autocmd QuickFixCmdPost * nested cwindow | redraw!
