let using_neovim = has('nvim')
let using_vim = !using_neovim

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " file browser
Plug 'scrooloose/nerdcommenter' " code comment
Plug 'vim-scripts/IndexedSearch' " Search results counter
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
" Plug 'Raimondi/delimitMate' " auto close parenthesis, etc
Plug 'tpope/vim-surround' " surround
Plug 'tpope/vim-fugitive' " git
Plug 'michaeljsmith/vim-indent-object' " indent text object
Plug 'jeetsukumaran/vim-indentwise' " Indentation based movements
Plug 'sheerun/vim-polyglot' " Better language packs
Plug 'lilydjwg/colorizer' " Paint css colors with the real color
Plug 'valloric/MatchTagAlways' " Highlight matching html tags
Plug 'nelstrom/vim-visual-star-search' " visual search with * and #
Plug 'mattn/emmet-vim' " emmet
Plug 'vim-scripts/YankRing.vim' " yank history navigation
Plug 'vim-utils/vim-man' " see man pages in vim
Plug 'vim-airline/vim-airline' " airline
Plug 'vim-airline/vim-airline-themes' " themes for vim-airline
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
let g:rg_derive_root='true'


set nocompatible " disable vi compat
filetype plugin on " allow plugins by file type (required for plugins!)
filetype indent on
syntax on " syntax highlight on
set noswapfile
set nobackup
set nowritebackup
set encoding=utf-8
set clipboard^=unnamed,unnamedplus
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
set mouse=a " scroll with mouse
" save as sudo
ca w!! w !sudo tee "%"
" Give more space for displaying messages.
set cmdheight=2
" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable delays and poor user experience.
set updatetime=50
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
colorscheme gruvbox

" stop vim-router changing dir automatically
let g:rooter_manual_only = 1

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

" FZF
let g:fzf_history_dir = '~/.local/share/fzf-history'
let g:fzf_buffers_jump = 1
let $FZF_DEFAULT_OPTS = '--layout=reverse --inline-info'
let $FZF_DEFAULT_COMMAND="rg --files -uu --follow --glob '!**/.git/**' --glob '!**/node_modules/**'"
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }
"
" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Overrite FZF Files command
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--inline-info']}), <bang>0)

 " Make Ripgrep ONLY search file contents and not filenames
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --hidden --smart-case --no-heading --color=always --glob "!.git/*" '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}, 'up:60%')
  \           : fzf#vim#with_preview({'options': '--delimiter : --nth 4.. -e'}, 'right:50%', '?'),
  \   <bang>0)

" COC
command! -nargs=0 Prettier :CocCommand prettier.formatFile

" ==========  KEY BINDINGS ==========================================================

let mapleader= " "

" search and replace stuff
nnoremap <leader>r :%s///g<Left><Left>
nnoremap <leader>rc :%s///gc<Left><Left><Left>
xnoremap <leader>r :s///g<Left><Left>
xnoremap <leader>rc :s///gc<Left><Left><Left>
" type a replacement term and press . to repeat. comparable to multiple cursors
nnoremap <silent> s* :let @/='\<'.expand('<cword>').'\>'<CR>cgn
xnoremap <silent> s* :sy:let @/=@s<CR>cgn

" For simple sizing of splits.
map - <C-W>-
map + <C-W>+
" move between splits
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>
nnoremap <Leader>gd :GoDef<Enter>
nnoremap <Leader>n :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>tf :NERDTreeFind<CR>
nnoremap <silent> <Leader>vr :vertical resize 30<CR>
nnoremap <silent> <Leader>r+ :vertical resize +5<CR>
nnoremap <silent> <Leader>r- :vertical resize -5<CR>
" select entire line with double leader
nmap <leader><leader> V
vmap <Leader>y "+y
vmap <Leader>= <C-W><C-=>
" navigate through buffers
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>

" clear search results
nnoremap <silent> // :noh<CR>

" COC
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gt <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)
nmap <leader>rr <Plug>(coc-rename)
nmap <leader>g[ <Plug>(coc-diagnostic-prev)
nmap <leader>g] <Plug>(coc-diagnostic-next)
nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
nnoremap <silent><nowait> <leader>ge  :<C-u>CocList diagnostics<cr>
nnoremap <leader>cr :CocRestart

" FuGITive
nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>

" Fzf
" file finder mapping
nmap <leader>p :Files<CR>
" general code finder in current file mapping
nmap <leader>f :BLines<CR>
" the same, but with the word under the cursor pre filled
nmap <leader>wf :execute ":BLines " . expand('<cword>')<CR>
" general code finder in all files mapping
nmap <leader>F :Lines<CR>
" the same, but with the word under the cursor pre filled
nmap <leader>wF :execute ":Lines " . expand('<cword>')<CR>
nmap <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>

" Undotree
nnoremap <leader>u :UndotreeShow<CR>

" vim TODO
nmap <Leader>tu <Plug>BujoChecknormal
nmap <Leader>th <Plug>BujoAddnormal
