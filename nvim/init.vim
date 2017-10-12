"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let g:python_host_prog=$PYENV_ROOT.'/versions/2.7.14/bin/python'
let g:python3_host_prog=$PYENV_ROOT.'/versions/3.6.3/bin/python'

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  let s:toml = '~/.config/nvim/dein-plugins.toml'
  let s:lazy_toml = '~/.config/nvim/dein-lazy-plugins.toml'
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
"Denite Settings
noremap <C-B> :Denite buffer<CR>
noremap <C-F> :Denite -buffer-name=file file<CR>
"NerdTree Settings
noremap <C-n> :NERDTreeToggle<CR>
"neovimrc
" set char to utf-8
set fenc=utf-8
" do not create backup file
set nobackup
" do not create swap file
set noswapfile
" auto read if file has been changed
set autoread
" it can open if buffer is being edited
set hidden
" disp input command
set showcmd

" show cursor number
set number
" enhance selected line number
set cursorline
hi clear CursorLine
hi CursorLineNr term=bold   cterm=NONE ctermfg=228 ctermbg=NONE
" anlyze before line and add indent
set smartindent
" disp coressponding brackets
set showmatch
" disp status line
set laststatus=2
" completion command line 
set wildmode=list:longest
" set tab to space
set expandtab
" tab is 2 space
set tabstop=2
set shiftwidth=2

" search settings
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
" double tap Esc to no hilite
nmap <Esc><Esc> :nohlsearch<CR><Esc>
