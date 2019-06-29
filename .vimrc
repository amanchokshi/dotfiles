"""" VIMRC FILE
" Configuration setting from my Vim editor            


"""" Enable Plug: vim plugin manager


" required before Plug initialization

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


"""" Plugins will be downloaded under the specified directory.

call plug#begin('~/.vim/plugged')

" Declare the list of plugins.

" lightline statusbar
Plug 'https://github.com/itchyny/lightline.vim.git'

call plug#end()


"""" Basic Behavior

set wrap                " wrap lines
set ttyfast             " Rendering
set mouse=a             " enable mouse support
syntax on               " syntax higlighting
set nocompatible        " make Vim behave in a more useful way
set encoding=utf8       " set encoding to UTF-8 (default was "latin1")
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]

" esc key works immediately
set timeoutlen=1000 ttimeoutlen=0



"""" Tab settings

set tabstop=4           " number of spaces per <TAB>
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " set a <TAB> key-press equal to 4 spaces
set softtabstop=4       " number of spaces in tab when editing

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')



"""" Vim Appearance 

silent e                " hide filename in last line
set t_Co=256            " define number of colors
set noshowmode          " don't show 'old status' in last line
set background=dark     " define initial background (light/dark)
colorscheme monochrome  " define color scheme

" customise lightline statusbar

set laststatus=2
set cmdheight=1
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ] ]
      \ },
      \ }

" removes end of buffer ~ signs
highlight EndOfBuffer ctermfg=black ctermbg=black



"""" Hybrid line numbers

set relativenumber
set number
set number relativenumber
set scrolloff=5          " Leave 5 lines of buffer when scrolling
set sidescrolloff=10     " Leave 10 characters of horizontal buffer when scrolling


" Use visual bell instead of beeping when doing something wrong
set visualbell
 
" And reset the terminal code for the visual bell. If visualbell is set, and
" this line is also included, vim will neither flash nor beep. If visualbell
" is unset, this does nothing.
set t_vb=

"""" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright
