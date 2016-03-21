set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'Valloric/YouCompleteMe'
Plugin 'JamshedVesuna/vim-markdown-preview'
call vundle#end()

"not enabled since overrides tabstop/shiftwidth :(
"filetype plugin indent on
syntax on
set encoding=utf-8

"indentation
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set autoindent
set smartindent

"miscellaeneous
set laststatus=2
set nocompatible
set showmode
set showcmd
set ttyfast
set ignorecase
set smartcase
set showmatch
set textwidth=100
"nice, but means copy-paste adds nasty trailing whitespace :(
"set colorcolumn=81

"highlight trailing whitespace
set list
set listchars=trail:.

"colour scheme
set background=dark
se t_Co=16
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"
let g:solarized_termcolors = 16
colorscheme solarized

"YCM options.
let g:ycm_complete_in_comments = 1
let g:ycm_autoclose_preview_window_after_completion = 1
"YCM aliases.
command YGo YcmCompleter GoTo
command YInc YcmCompleter GoToInclude
command YImp YcmCompleter GoToImplementation
command YDec YcmCompleter GoToDeclaration
command YDef YcmCompleter GoToDefinition
command YType YcmCompleter GetType
command YParent YcmCompleter GetParent
command YDoc YcmCompleter GetDoc
command YFix YcmCompleter FixIt
