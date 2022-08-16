set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

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

let g:ycm_enable_semantic_highlighting=1
nmap <F5> <Plug>(YCMFindSymbolInWorkspace)
nmap <F6> <Plug>(YCMFindSymbolInDocument)
nmap <S-Tab> <Plug>(YCMHover)
nmap <F2> :YcmCompleter GoTo %<cr>
nmap <F3> :YcmCompleter GoToDefinition %<cr>
nmap <F4> :YcmCompleter GoToReferences %<cr>
call prop_type_add('YCM_HL_variable', {'highlight': 'Normal'})
call prop_type_add('YCM_HL_parameter', {'highlight': 'Normal'})
call prop_type_add('YCM_HL_enumMember', {'highlight': 'Normal'})
call prop_type_add('YCM_HL_member', {'highlight': 'Normal'})
call prop_type_add('YCM_HL_property', {'highlight': 'Normal'})
" hi YCMInverse term=bold cterm=bold gui=bold
" highlight YcmErrorLine guibg=#3f0000
highlight Pmenu ctermbg=gray guibg=gray

set tabstop=2
set shiftwidth=2
set expandtab
set updatetime=2000

