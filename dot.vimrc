" Vundle, the plug-in manager for Vim
" https://github.com/VundleVim/Vundle.vim
"
"add a github vim plugin
"Bundle 'xxx/xxx'
"run: BundleInstall,  ref boot/gnome-vim
"
"====Basic settings
set nocompatible               " be iMproved
filetype off                   " required!
"无论何种模式，都开启鼠标,在终端里很有用。虽然能导致无法复制的问题，也比取消了方便
"can use mouse click to resize multi-window size
set mouse=a
set number                     " display line number  " set nu
set ignorecase

" system clipboard
set clipboard=unnamed
" ctrl + c
vmap  <C-c> "+y
" ctrl + x
vmap <C-x> "+x
" ctrl + v
nnoremap <C-v> "+gP 

" softtabs, 2 spaces
" good for enter to new line!!!
set tabstop=2
set shiftwidth=2
set expandtab

"==== Bundle manage plugins
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" Bundle 'gmarik/vundle' 
" update to below: 
Bundle 'VundleVim/Vundle.vim'

" Bundle分为三类：
" * 在Github vim-scripts 用户下的repos,只需要写出repos名称
"   https://github.com/vim-scripts?tab=repositories
" * 在Github其他用户下的repos, 需要写出”用户名/repos名”
" * 不在Github上的插件，需要写出git全路径

"my Bundles here
" original repos on github
" Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" Bundle 'rodjek/vim-puppet.git'
Bundle 'scrooloose/nerdcommenter'
"echo "Plugin 'rking/ag.vim'" >> ~/.vimrc && vim +BundleInstall
":Ag search_str
Plugin 'rking/ag.vim'
"let g:agprg="/usr/bin/ag --column"

"  Coffee script
"Plugin 'kchmck/vim-coffee-script'
"Bundle 'kchmck/vim-coffee-script'

" vim-scripts repos
" need wmctrl on ubuntu by sudo apt-get install wmctrl
"Bundle 'shell.vim--Odding'
" Bundle 'ctags.vim'
" Bundle 'taglist.vim'
"Bundle 'FuzzyFinder'
Bundle 'The-NERD-tree'
Bundle 'NERD_Tree-and-ack'
Bundle 'snipMate'
Bundle 'SnipMgr'
Bundle 'L9'

" color solution
Bundle 'molokai'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'

syntax enable
filetype plugin indent on     " required! 
filetype plugin on     
let mapleader=","

"==NERD tree settings
map <silent> <F1> :NERDTreeToggle<CR>
map <silent> <F2> :NERDTreeToggle<CR>
cmap w!! %!sudo tee>/dev/null %

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

" insert date 
" :iab <expr> dts strftime("%c")
:nnoremap <F9> "=strftime("%Y-%m-%d %H:%M")<CR>P
:inoremap <F9> <C-R>=strftime("%Y-%m-%d %H:%M")<CR>
:nnoremap <F10> "=strftime("%Y-%m-%d %H:%M")<CR>P
:inoremap <F10> <C-R>=strftime("%Y-%m-%d %H:%M")<CR>
