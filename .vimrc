set nocompatible              " be iMproved, required
filetype on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin 'flazz/vim-colorschemes'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo

Plugin 'https://github.com/altercation/vim-colors-solarized.git'
let g:solarized_termcolors=256
let g:solarized_termtrans=1

Plugin 'scrooloose/nerdtree'
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_open_on_gui_startup=1

" Plugin 'scrooloose/syntastic'
" let g:syntastic_always_populate_loc_list=1
" let g:syntastic_auto_loc_list=1
" let g:syntastic_check_on_open=1
" let g:syntastic_check_on_wq=0
" let g:syntastic_aggregate_errors=1
" let g:syntastic_enable_balloons=1
" let g:syntastic_enable_signs=1
" let g:syntastic_cpp_check_header=1
" let g:syntastic_cpp_checkers=['clang_check','cppcheck','gcc']
" let g:syntastic_mode_map = {
"      \ "mode":"active",
"      \ "active_filetypes":[],
"      \ "passive_filetypes":[] }


Plugin 'bling/vim-airline'
let g:airline#extensions#tabline#enabled=1

Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

Plugin 'ervandew/supertab'

Plugin 'taglist.vim'
let Tlist_Auto_Open=0

" Plugin 'Valloric/YouCompleteMe'
" Plugin 'Shougo/neocomplete.vim'

" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
syntax enable
set background=dark
colorscheme solarized

set laststatus=2
set ts=4 sw=4 et

" For Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Force 256 color mode if available
set t_Co=256

set ignorecase
set smartcase

" ============= UI =============
set ruler "Show ruler
set number "Show line number
set cmdheight=2
set encoding=utf-8
set title
set mouse=a
set hlsearch
" set mousemodel=extend

" ============= Key Mappings =============
map <C-Up> <C-w><Up>
map <C-Down> <C-w><Down>
map <C-Right> <C-w><Right>
map <C-Left> <C-w><Left>

nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TlistToggle<CR>

nnoremap <C-c> :bn\|:bd #<CR>
nnoremap <C-m> :bn<CR>
nnoremap <C-n> :bp<CR>

" ============= Text =============
set tabstop=3
set autoindent
set smarttab
set expandtab
set backspace=indent,eol,start
set hidden
set nowrap
set clipboard=unnamed
