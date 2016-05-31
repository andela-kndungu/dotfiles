" =============================================================================
"                                  VUNDLE
" ============================================================================= 
" =================================Set up==================================

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" =================================Plugins=================================

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" My favourite theme
Plugin 'trusktr/seti.vim'

" =================================Finish up===============================

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" =============================================================================
"                                  VUNDLE
" ============================================================================= 

" =============================================================================
"                             MY COMMANDS 
" =============================================================================

" ============================Set up the UI==================================

" Colour the text with seti theme
syntax on
colorscheme seti

" Show line numbers by default
set number

" Indicate 80 characters mark
set colorcolumn=80

" Visual autocomplete for command menu
set wildmenu

" ============================Movements======================================

" Move to the beginning/end of line
nnoremap bl ^
nnoremap el $

" ============================Shortcuts======================================

" nm is <escape>
inoremap nm <esc>
noremap nm <esc>

" Insert enter in normal mode
nnoremap <CR> i<Right><CR><esc>

" Insert space in normal mode
nnoremap <space> i<Right><space><esc>

" Save the current session
nnoremap <leader>s :mksession<CR>

" =============================================================================
"                             MY COMMANDS 
" =============================================================================

