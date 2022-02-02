set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'zeis/vim-kolor'
" Plugin 'joshdick/onedark.vim'

Plugin 'preservim/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim' 

Plugin 'vim-syntastic/syntastic' 
Plugin 'nvie/vim-flake8'

Plugin 'kien/ctrlp.vim'
Bundle 'Valloric/YouCompleteMe'

Plugin 'jmcantrell/vim-virtualenv'

Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'craigemery/vim-autotag'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
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
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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


let mapleader = " " " map leader to Space
" https://www.cs.swarthmore.edu/oldhelp/vim/modelines.html
set modeline
set modelines=3
set path+=**

" always show the status bar
set laststatus=2

" always show tab line
set showtabline=2

" enable 256 colors
set t_Co=256

" turn on line numbering
set number

set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8

set tabstop=4
set shiftwidth=4
set colorcolumn=90

" convert all tabs to spaces
set expandtab

" color scheme
syntax on 
let python_highlight_all=1
" colorscheme onedark
filetype on

" code folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <leader>f za

" file browser
map <leader>n :NERDTreeTabsToggle<CR>
let NERDTreeIgnore=['\.pyc$', '__pycache__', '\.sqlite$', '\.sqlite3$']

" specify the area of screen where the splits should occur
set splitbelow
set splitright

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" https://vim.fandom.com/wiki/Moving_lines_up_or_down
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
" inoremap <A-j> <Esc>:m .+1<CR>==gi
" inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv


" move through buffers
nmap <leader>[ :bp!<CR>
nmap <leader>] :bn!<CR>

" close all splits except current one
nmap <leader>x :only<CR>

" tag list
map <leader>t :TagbarToggle<CR>

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Function to activate a virtualenv in the embedded interpreter for
" omnicomplete and other things like that.
function LoadVirtualEnv(path)
    let activate_this = a:path . '/bin/activate_this.py'
    if getftype(a:path) == "dir" && filereadable(activate_this)
        python << EOF
import vim
activate_this = vim.eval('l:activate_this')
execfile(activate_this, dict(__file__=activate_this))
EOF
    endif
endfunction

" Load up a 'stable' virtualenv if one exists in ~/.virtualenv
let defaultvirtualenv = $HOME . "/.virtualenvs/stable"

" Only attempt to load this virtualenv if the defaultvirtualenv
" actually exists, and we aren't running with a virtualenv active.
if has("python")
    if empty($VIRTUAL_ENV) && getftype(defaultvirtualenv) == "dir"
        call LoadVirtualEnv(defaultvirtualenv)
    endif
endif
