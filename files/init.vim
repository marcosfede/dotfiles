call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'whatyouhide/vim-gotham'
Plug 'Valloric/YouCompleteMe'
Plug 'ternjs/tern_for_vim'
Plug 'Yggdroot/indentLine'
call plug#end()
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark    " Setting dark mode
let g:airline_powerline_fonts = 1
let g:gruvbox_italic=1
colorscheme gruvbox

map <silent> <C-n> :NERDTreeToggle<CR>
set rnu
