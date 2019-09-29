"""" NEOVIM CONFIG FILE
" Configuration setting from my Neovim editor            

" Enables base16-shell colors in neovim
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif


""" Vim-Plug
call plug#begin()

" Aesthetics

Plug 'chriskempson/base16-vim'                      " base-16 themes
Plug 'daviesjamie/vim-base16-lightline'             " base-16 lightline
Plug 'https://github.com/itchyny/lightline.vim.git' " lightline statusbar

" Functionality

Plug 'scrooloose/nerdTree'                          " nerd tree
Plug 'tpope/vim-surround'                           " quoting/parenthesizing
Plug 'ctrlpvim/ctrlp.vim'                           " fuzzy search
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " coc Intellisense
Plug 'junegunn/goyo.vim'                            " Clean Writing env
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
Plug 'tmux-plugins/vim-tmux'                        " syntax higlighting
Plug 'lervag/vimtex'
Plug 'neomake/neomake'

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

" silent e                " hide filename in last line
set t_Co=256            " define number of colors
set noshowmode          " don't show 'old status' in last line
set background=dark     " define initial background (light/dark)


syntax on
"colorscheme onedark
colorscheme base16-default-dark

" customise lightline statusbar

set laststatus=2
set cmdheight=1
let g:lightline = {
      \ 'colorscheme': 'base16',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ] ]
      \ },
      \ }


" removes end of buffer ~ signs
" highlight EndOfBuffer ctermfg=black ctermbg=black
hi! EndOfBuffer ctermbg=bg ctermfg=bg guibg=bg guifg=bg



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

" Increase response
set updatetime=28

" Paste outside vim
set clipboard=unnamed

" Use deoplete.
let g:deoplete#enable_at_startup = 1

" Deoplete keybinding - j,k > up,down
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"

" NERDTree on ctrl+n
" let NERDTreeShowHidden=1
map <silent> <C-n> :NERDTreeToggle<CR>

" close Nerd Tree after a file is opened
let g:NERDTreeQuitOnOpen=1

" Nerd Tree keybinding: ctrl-n to toggel nerdtree
nmap <C-n> :NERDTreeToggle<CR>

" Nerd Tree remove help header
let NERDTreeMinimalUI=1

" Customizes look of nerd tree. Green directories
:hi Directory guifg=#FF0000 ctermfg=green
" No trailing slashes
augroup nerdtreehidetirslashes
	autocmd!
	autocmd FileType nerdtree syntax match NERDTreeDirSlash #/$# containedin=NERDTreeDir conceal contained
augroup end

let g:NERDTreeDirArrowExpandable = '❯'
let g:NERDTreeDirArrowCollapsible = '⬧'

""" Markdown Preview config

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = 'safari'

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'


let g:tex_flavor = 'latex'
let g:vimtex_compiler_progname = 'nvr'

let g:polyglot_disabled = ['latex']
let g:vimtex_view_general_viewer = 'open'
let g:vimtex_view_general_options = '-a Skim'

""copy paste stuff
"vnoremap <C-c> "+y
"map <C-v> "+P
