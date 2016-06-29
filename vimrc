" =============================================================================
"                                  VUNDLE
" ============================================================================= 
" =================================Set up==================================

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" =================================Plugins================================

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My favourite theme
Plugin 'trusktr/seti.vim'

" To easily browse files 
Plugin 'scrooloose/nerdtree'

" Better support for Javascript 
Plugin 'pangloss/vim-javascript'

" Colour JS based on scope
Plugin 'bigfish/vim-js-context-coloring'

" Code completion as you type
Plugin 'Valloric/YouCompleteMe'

" For linting
Plugin 'scrooloose/syntastic'

" Better JSX support
Plugin 'mxw/vim-jsx'

" Display indents
Plugin 'Yggdroot/indentLine'

" Insert or delete brackets, parens, quotes in pair 
Plugin 'jiangmiao/auto-pairs'

" Quick sorround with enclosures
Plugin 'tpope/vim-surround'

" Make JSON files look pretty 
Plugin 'elzr/vim-json'

" Easily toggle comments
Plugin 'scrooloose/nerdcommenter'

" Easily do Git stuff
Plugin 'tpope/vim-fugitive'

" Show Git diff
Plugin 'airblade/vim-gitgutter'

" =================================Finish up==============================

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" =============================================================================
"                                  VUNDLE
" ============================================================================= 

" =============================================================================
"                             MY COMMANDS 
" =============================================================================

" ============================Add Functionality===========================

" Make backspace work norally when in insert mode
set backspace=indent,eol,start

"" ============================Set up the UI===============================

" Use seti colour theme 
syntax on
colorscheme seti

" Show line numbers by default
set number

" Indicate 80 characters mark
set colorcolumn=80

" ============================Movements===================================

" Move to the beginning/end of line
nnoremap bl ^
nnoremap el $

" ============================Shortcuts===================================

" Change the mapleader from \ to '
let mapleader="'"

" nm is <escape> when in insert and visual mode
inoremap nm <esc>
vnoremap nm <esc>

" Insert enter in normal mode
nnoremap <CR> i<Right><CR><esc>

" Insert space in normal mode
nnoremap <space> i<Right><space><esc>

" Easily display files 
map <F3> :NERDTreeToggle<CR>

" Easily shift between panes 
nnoremap <F8> <C-w>w 

" Easily save changes to file 
map <leader>s :up<CR>

" Colour JS files based on scope
nnoremap sc :JSContextColorToggle<CR>

" Show indent lines
nnoremap in :IndentLinesToggle<CR>

" Vertically split pane
map <F9> :vsplit<CR>

" Autoformat current file
nnoremap <leader>f mkgg=G'k

" Toggle comments
map <leader>c :call NERDComment(0,"toggle")<CR>

" View changed files from last commit
map <leader>gs :Gstatus<CR>

" Save and quit
map <leader>wq :wq<CR>

" Quit without saving
map <leader>q :q!<CR>

" Replace tabs with spaces
map <leader>ts :%s/\t/  /g<CR>
" ============================Configure Nerd Tree=========================

" Show hidden files by default
let NERDTreeShowHidden=1

" ============================Configure Syntastic=========================

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_check_on_up = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" ============================Configure Nerd Commenter====================

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" =================Ensure 2 space indentation for JSX=====================

" Use spaces instead of tabs for indentation 
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Turn on indentation by plugins (just to be sure)
filetype plugin indent on

" Apply these changes after all other plugins to ensure they are applied
autocmd Filetype jsx setlocal ts=2 sw=2 expandtab
autocmd FileType javascript setlocal ts=2 sw=2 expandtab

" =============================================================================
"                             MY COMMANDS 
" =============================================================================

