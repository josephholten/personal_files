set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=UTF-8
set guifont=DroidSansMono\ 10
set conceallevel=3

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
    Plugin 'preservim/nerdtree'
    Plugin 'morhetz/gruvbox'
    Plugin 'vim-airline/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    Plugin 'ryanoasis/vim-devicons'
    Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
    " Plugin 'vim-scripts/indentpython.vim'
    " Plugin 'Valloric/YouCompleteMe'
    " Plugin 'itchyny/vim-haskell-indent'
    " Plugin 'neoclide/coc.nvim'



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
filetype plugin indent on    " required
  if has('vim_starting')
    if has('syntax') && !exists('g:syntax_on')
      syntax enable
    end
  end
if exists("g:loaded_webdevicons")
    call webdevicons#refresh()
endif

" gruvbox settings
let g:gruvbox_contrast_dark = 'hard'
set background=dark " darkmode
autocmd vimenter * ++nested colorscheme gruvbox

" nerdtree

let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree
" " Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
" "" Exit Vim if NERDTree is the only window left.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree()
"     \ quit | endi
" autocmd VimEnter * wincmd p

" air-line
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" ----------------------------------------------

" CUSTOM SETTINGS
" allows you to deal with multiple unsaved
" buffers simultaneously without resorting
" to misusing tabs
set hidden

syntax on

" no gui
set guioptions =
set number relativenumber
set renderoptions=type:directx

" Don't break words when wrapping lines
set linebreak

" make wrapped lines more obvious
let &showbreak="↳ "
set cpoptions+=n

" Highlight the line I'm on
set cursorline

" Highlight matching paired delimiter
set showmatch

" display incomplete commands
set showcmd

" Tabs
set tabstop=4
" always uses spaces instead of tab characters
set expandtab
set autoindent
" size of an "indent"
set shiftwidth=4

