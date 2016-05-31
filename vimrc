set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" ================ <Vundle Plugins> ======================

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" Use Seti theme for syntax highlighting
Plugin 'trusktr/seti.vim'

" Javascript syntax and indent plugins
Plugin 'pangloss/vim-javascript'

" Enhanced syntax for Javascript
Plugin 'jelera/vim-javascript-syntax'

" JSX syntax highlighting and indenting
Plugin 'mxw/vim-jsx'

" Syntax for JavaScript libraries
Plugin 'othree/javascript-libraries-syntax.vim'

" Auto format (beautify)
Plugin 'maksimr/vim-jsbeautify'

" Syntax highlighting (linter)
Plugin 'scrooloose/syntastic'

" To get project view
Plugin 'scrooloose/nerdtree'

" For indentation guides
Plugin 'nathanaelkane/vim-indent-guides'

" ================ </Vundle Plugins> ======================

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

" My commands

" Show line numbers by default
set number

" Colour the text with seti theme
syntax on
colorscheme seti

" Indicate 80 characters mark
set colorcolumn=80

" Auto format with Ctrl + f
map <c-f> :call JsBeautify()<cr>

" To use JSX in .js files
let g:jsx_ext_required = 0 " Allow JSX in normal JS files

" Set up Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Configure Syntastic to use eslint
let g:syntastic_javascript_checkers = ['eslint']

" Map opening of Nerd Tree to Ctrl + n
map <C-n> :NERDTreeToggle<CR>

" Show hidden files in Nerd Tree by default
let NERDTreeShowHidden=1

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Auto indent pasted text
nnoremap p p=`]<C-o>
nnoremap P P=`]<C-o>

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" For backspace to work in insert mode
set backspace=indent,eol,start

" HTML autocomplete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
