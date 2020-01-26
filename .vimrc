set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=indent,eol,start

inoremap jj <Esc>


" set the runtime path to include Vundle and initialize
call plug#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline'
Plugin 'scrooloose/syntastic'
" Plugin 'jceb/vim-orgmode'
" Plugin 'kongo2002/fsharp-vim'
Plugin 'ervandew/supertab'
Plugin 'fsharp/vim-fsharp'
" Plugin 'fsharp/fsharpbinding',{'rtp':'vim'}
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'vim-airline/vim-airline'
" Plugin 'JamshedVesuna/vim-markdown-preview'
Plugin 'suan/vim-instant-markdown'
Plugin 'lambdatoast/elm.vim'

" git repos on your local machine (i.e. when working on your own plugin)


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line



syntax enable
set background=dark
colorscheme solarized

set guifont=Source\ Code\ Pro\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set expandtab 
set number 
set laststatus=2

autocmd FileType fsharp set tabstop=4|set shiftwidth=4
autocmd FileType markdown set tabstop=2|set shiftwidth=2

let g:fsharpbinding_debug = 1
let g:fsharp_xbuild_path = "/usr/local/bin/xbuild"

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

 " To open a new empty buffer
 " This replaces :tabnew which I used to bind to this mapping
 nmap <leader>T :enew<cr>

 " Move to the next buffer
 nmap <leader>l :bnext<CR>

 " Move to the previous buffer
 nmap <leader>h :bprevious<CR>
