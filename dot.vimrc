" Vundle, the plug-in manager for Vim
" https://github.com/VundleVim/Vundle.vim
"
" install command: vim +PluginInstall +qall
"
" Plugin分为三类：
" * 在Github vim-scripts 用户下的repos,只需要写出repos名称
"   https://github.com/vim-scripts?tab=repositories
" * 在Github其他用户下的repos, 需要写出”用户名/repos名”
" * 不在Github上的插件，需要写出git全路径

" ==== Basic settings
set nocompatible               " be iMproved
filetype off                   " required!

" ==== Vundle manage plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Plugin 'gmarik/vundle' " old

" === vim-scripts repos
Plugin 'The-NERD-tree'
Plugin 'NERD_Tree-and-ack'
Plugin 'snipMate'
Plugin 'SnipMgr'
Plugin 'L9'
Plugin 'molokai' " color solution

" need wmctrl on ubuntu by sudo apt-get install wmctrl
" Plugin 'shell.vim--Odding'
" Plugin 'ctags.vim'
" Plugin 'taglist.vim'
" Plugin 'FuzzyFinder'

" ===plugin on github
" Plugin 'Lokaltog/vim-easymotion'
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'tpope/vim-fugitive'
" Plugin 'tpope/vim-rails.git'
" Plugin 'rodjek/vim-puppet.git'
" Plugin 'scrooloose/nerdcommenter'
Plugin 'rking/ag.vim'
" :Ag search_str
" let g:agprg="/usr/bin/ag --column"

"  Coffee script
"Plugin 'kchmck/vim-coffee-script'

" non github repos
" Plugin 'git://git.wincent.com/command-t.git'

" more to dig
" https://github.com/Valloric/YouCompleteMe
"

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax enable
filetype plugin indent on     " required! 
" To ignore plugin indent changes, instead use:
"filetype plugin on

let mapleader=","

"==molokai
"use black background solution...
colorscheme molokai
set t_Co=256

"设定文件编码类型，彻底解决编码问题, gb2312编码等
let &termencoding=&encoding
set fileencodings=utf-8,gbk,ucs-bom,cp936

"code folding
"set foldmethod=syntax
"set foldnestmax=5
"autocmd BufEnter * exe "normal zR"

"zo Open the fold on the same line as the cursor
"zc Close the fold that the cursor is inside
"zR Open all folds
"zM Close all folds

"无论何种模式，都开启鼠标,在终端里很有用。虽然能导致无法复制的问题，也比取消了方便
"can use mouse click to resize multi-window size
set mouse=a
set number                     " display line number  " set nu
set ignorecase
" softtabs, 2 spaces
" good for enter to new line!!!
set tabstop=2
set shiftwidth=2
set expandtab

" system clipboard
set clipboard=unnamed

" ctrl + c
vmap  <C-c> "+y
" ctrl + x
vmap <C-x> "+x
" ctrl + v
"nnoremap <C-v> "+gP 

" insert date 
" :iab <expr> dts strftime("%c")
:nnoremap <F9> "=strftime("%Y-%m-%d %H:%M")<CR>P
:inoremap <F9> <C-R>=strftime("%Y-%m-%d %H:%M")<CR>
:nnoremap <F10> "=strftime("%Y-%m-%d %H:%M")<CR>P
:inoremap <F10> <C-R>=strftime("%Y-%m-%d %H:%M")<CR>

"==NERD tree settings
map <silent> <F1> :NERDTreeToggle<CR>
map <silent> <F2> :NERDTreeToggle<CR>
cmap w!! %!sudo tee>/dev/null %
