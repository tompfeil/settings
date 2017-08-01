" vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdcommenter'
Plugin 'dhruvasagar/vim-table-mode'
"Plugin 'scrooloose/syntastic'
"Plugin 'tpope/vim-rails'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
Plugin 'farseer90718/vim-taskwarrior'
Plugin 'bling/vim-airline'
Plugin 'vimwiki/vimwiki'
"Plugin 'Shougo/unite.vim'
"Plugin 'Chiel92/vim-autoformat'

"" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
"" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
"" The sparkup vim script is in a subdirectory of this repo called vim.
"" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"" Install L9 and avoid a Naming conflict if you've already installed a
"" different version somewhere else.
"Plugin 'ascenator/L9', {'name': 'newL9'}

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


" My own stuff
" nerdcommenter
let mapleader=","

"colorscheme koehler
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set hlsearch
set nowrap
syntax on

" highlight white spaces
hi link localWhitespaceError Error
au Syntax * syn match localWhitespaceError /\(\zs\%#\|\s\)\+$/ display
au Syntax * syn match localWhitespaceError / \+\ze\t/ display

" whitespaces to tabs and vice versa
command! -nargs=1 -range SuperRetab <line1>,<line2>s/\v%(^ *)@<= {<args>}/\t/g
command! -range=% -nargs=0 Tab2Space execute '<line1>,<line2>s#^\t\+#\=repeat(" ", len(submatch(0))*' . &ts . ')'
command! -range=% -nargs=0 Space2Tab execute '<line1>,<line2>s#^\( \{'.&ts.'\}\)\+#\=repeat("\t", len(submatch(0))/' . &ts . ')'

au FileType python setl sw=4 sts=4 ts=4 et
au FileType cpp setl sw=4 sts=4 ts=4 noet
au FileType matlab setl sw=4 sts=4 ts=4 et

""change color scheme for diffs (gvim needs it)
"au FilterWritePre * if &diff | colorscheme koehler | endif
"au BufWinLeave * colorscheme default
:colorscheme elflord

" taskworrior
let g:task_rc_override = 'rc.defaultwidth=0'
let g:task_rc_override = 'rc.defaultheight=0'

" vim airline
set laststatus=2

" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
