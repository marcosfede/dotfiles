call plug#begin('~/.vim/plugged')
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'tpope/vim-fugitive' " amazing git wrapper for vim
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes' " themes for vim-airline
Plug 'morhetz/gruvbox'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'whatyouhide/vim-gotham'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'ternjs/tern_for_vim'
Plug 'svermeulen/vim-easyclip'
Plug 'Valloric/YouCompleteMe'
Plug 'Yggdroot/indentLine'
Plug 'Raimondi/delimitMate'
Plug 'tpope/vim-commentary'
Plug 'ervandew/supertab'
call plug#end()
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif
set background=dark    " Setting dark mode
let g:airline_powerline_fonts = 1
let g:gruvbox_italic=1
colorscheme gruvbox
" airline options
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='base16'
" use system clipboard by default
set clipboard=unnamed
" key bindings
map <silent> <C-n> :NERDTreeToggle<CR>
"enable relative line numbers
set rnu
set number
"remap m to gm to be compatible with move text plugin
nnoremap gm m
" Unbind the cursor keys in insert, normal and visual modes.
for prefix in ['i', 'n', 'v']
  for key in ['<Up>', '<Down>', '<Left>', '<Right>']
    exe prefix . "noremap " . key . " <Nop>"
  endfor
endfor
" set a map leader for more key combos
let mapleader = ','
let g:mapleader = ','
" new lines with enter and shift enter
nmap <C-o> O<Esc>j
nmap <CR> o<Esc>k
" Tab control
set noexpandtab " insert tabs rather than spaces for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
set completeopt+=longest
" set terminal title
set title 
" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros
nmap <leader>, :w<cr>
" moving up and down work as you would expect
nnoremap <silent> j gj
nnoremap <silent> k gk
nnoremap <silent> ^ g^
nnoremap <silent> $ g$
" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>
" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" json hides string quotes
let g:vim_json_syntax_conceal = 0
" set python3 for YCM
let g:ycm_python_binary_path = 'python3'
" do not autostart YCM
let g:loaded_youcompleteme = 1
