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

" onedark theme
Plug 'https://github.com/joshdick/onedark.vim.git'

" lightline statusbar
Plug 'https://github.com/itchyny/lightline.vim.git'

Plug 'https://github.com/rakr/vim-one.git'

Plug 'sheerun/vim-polyglot'

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

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax on
colorscheme onedark

" customise lightline statusbar

set laststatus=2
set cmdheight=1
let g:lightline = {
      \ 'colorscheme': 'onedark',
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
