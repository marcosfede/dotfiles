let using_neovim = has('nvim')
let using_vim = !using_neovim

if has('python3')
endif
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " file browser
Plug 'scrooloose/nerdcommenter' " code comment
Plug 'vim-scripts/IndexedSearch' " Search results counter
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" Plug 'Raimondi/delimitMate' " auto close parenthesis, etc
Plug 'tpope/vim-surround' " surround
Plug 'tpope/vim-fugitive' " git
Plug 'michaeljsmith/vim-indent-object' " indent text object
Plug 'jeetsukumaran/vim-indentwise' " Indentation based movements
Plug 'sheerun/vim-polyglot' " Better language packs
Plug 'lilydjwg/colorizer' " Paint css colors with the real color
Plug 't9md/vim-choosewin' " Window chooser
Plug 'valloric/MatchTagAlways' " Highlight matching html tags
Plug 'mattn/emmet-vim' " emmet
Plug 'vim-scripts/YankRing.vim' " yank history navigation
Plug 'vim-utils/vim-man' " see man pages in vim
Plug 'vim-airline/vim-airline' " airline
Plug 'vim-airline/vim-airline-themes' " themes for vim-airline
Plug 'jremmen/vim-ripgrep'
Plug 'mbbill/undotree'
Plug 'vuciv/vim-bujo'
" language specific
" Plug 'git@github.com:moll/vim-node.git'
" Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'git@github.com:Valloric/YouCompleteMe.git'
" themes
Plug 'KeitaNakamura/neodark.vim'
Plug 'gruvbox-community/gruvbox'
call plug#end()

if (using_neovim)
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
  set termguicolors
endif

if executable('rg')
    let g:rg_derive_root='true'
endif

set nocompatible " disable vi compat
filetype plugin on " allow plugins by file type (required for plugins!)
filetype indent on
syntax on " syntax highlight on
set noswapfile
set nobackup
set encoding=utf-8
set clipboard=unnamedplus
set noerrorbells " disable beeping
set vb t_vb= " disable beeping
set rnu " enable relative line numbers
set number
set nowrap
" Tab control
set expandtab
set completeopt+=longest
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
set autochdir " sets the cwd to whatever file is in view.  This allows better omni completion.
autocmd BufWritePre * %s/\s\+$//e " unix file endings
set hidden " opening a new file when the current buffer has unsaved changes causes files to be hidden instead of closed
set title " set terminal title
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set ls=2 " always show status bar
set wildmode=list:longest " autocompletion of files and commands behaves like shell (complete only the common part, list the options that match)
set guicursor=
set smartindent
set scrolloff=8
" save as sudo
ca w!! w !sudo tee "%"
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.
set updatetime=250
" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" THEME
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_invert_selection='0'
let g:neodark#background = '#202020'
if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif
set background=dark    " Setting dark mode
colorscheme neodark

" nerdtree
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden=1 " show hidden files in NERDTree
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']

" vim TODO
let g:bujo#todo_file_path = $HOME . "/.cache/bujo"

" Autocompletion
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd BufEnter *.tsx set filetype=typescript

" airline options
let g:airline_powerline_fonts = 1
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_theme='base16'

" ==========  KEY BINDINGS ==========================================================

let mapleader= " "

" For simple sizing of splits.
map - <C-W>-
map + <C-W>+
" move between splits
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
nnoremap <Leader>gd :GoDef<Enter>
nnoremap <Leader>pt :NERDTreeToggle<Enter>
noremap <silent> <Leader>pv :NERDTreeFind<CR>
nnoremap <silent> <Leader>vr :vertical resize 30<CR>
nnoremap <silent> <Leader>r+ :vertical resize +5<CR>
nnoremap <silent> <Leader>r- :vertical resize -5<CR>
nnoremap <silent> <Leader>;; iif err != nil { <esc>o} <esc>:w<CR>
nmap <leader><leader> V
vmap <Leader>y "+y
vmap <Leader>= <C-W><C-=>

" clear search results
nnoremap <silent> // :noh<CR>

" YCM
" nnoremap <silent> <Leader>gd :YcmCompleter GoTo<CR>
" nnoremap <silent> <Leader>gf :YcmCompleter FixIt<CR>

" COC
inoremap <silent><expr> <C-space> coc#refresh()

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <leader>cr :CocRestart

" FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

" Ability to add python breakpoints
au FileType python map <silent> <leader>b Oimport ipdb; ipdb.set_trace()<esc>

" Fzf
" file finder mapping
nmap ,e :Files<CR>
" tags (symbols) in current file finder mapping
nmap ,g :BTag<CR>
" the same, but with the word under the cursor pre filled
nmap ,wg :execute ":BTag " . expand('<cword>')<CR>
" tags (symbols) in all files finder mapping
nmap ,G :Tags<CR>
" the same, but with the word under the cursor pre filled
nmap ,wG :execute ":Tags " . expand('<cword>')<CR>
" general code finder in current file mapping
nmap ,f :BLines<CR>
" the same, but with the word under the cursor pre filled
nmap ,wf :execute ":BLines " . expand('<cword>')<CR>
" general code finder in all files mapping
nmap ,F :Lines<CR>
" the same, but with the word under the cursor pre filled
nmap ,wF :execute ":Lines " . expand('<cword>')<CR>
" commands finder mapping
nmap ,c :Commands<CR>

" Undotree
nnoremap <leader>u :UndotreeShow<CR>

" Window Chooser
nmap  -  <Plug>(choosewin)
let g:choosewin_overlay_enable = 1 " show big letters

" vim TODO
nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal
