" Vim-Plug
call plug#begin('~/.local/share/nvim/plugged')

" Ejemplo de plugin (NERDTree)
Plug 'preservim/nerdtree'

call plug#end()



"set ocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.
"
"

call plug#begin('~/.vim/plugged')

" Plugin Section
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv
" move split panes to left/bottom/top/right
 nnoremap <A-h> <C-W>H
 nnoremap <A-j> <C-W>J
 nnoremap <A-k> <C-W>K
 nnoremap <A-l> <C-W>L
" move between panes to left/bottom/top/right
 nnoremap <C-h> <C-w>h
 nnoremap <C-j> <C-w>j
 nnoremap <C-k> <C-w>k
 nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>


" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>
" copies filepath to clipboard by pressing yf
:nnoremap <silent> yf :let @+=expand('%:p')<CR>
" copies pwd to clipboard: command yd
:nnoremap <silent> yd :let @+=expand('%:p:h')<CR>
" Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif




" Plugins
call plug#begin('~/.local/share/nvim/plugged')

" Autocompletado
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Explorador de archivos
Plug 'preservim/nerdtree'

" Administrador de ventanas
Plug 'vim-airline/vim-airline'

" Linting y corrección de estilo
Plug 'dense-analysis/ale'

" Resaltado de sintaxis mejorado
Plug 'sheerun/vim-polyglot'

" Soporte para Git
Plug 'tpope/vim-fugitive'

" Soporte para snippets de código
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Tema gruvbox
Plug 'morhetz/gruvbox'

" Iconos de archivo
Plug 'ryanoasis/vim-devicons'

" Búsqueda rápida de archivos y buffers
Plug 'ctrlpvim/ctrlp.vim'

" Navegación y búsqueda
Plug 'easymotion/vim-easymotion'

call plug#end()

" Configuraciones adicionales para los plugins, como mapeos de teclas, etc.

" Mapeo para abrir NerdTree
nnoremap <C-n> :NERDTreeToggle<CR>

" Mapeo para cerrar NerdTree
nnoremap <C-w><C-n> :NERDTreeClose<CR>


autocmd FileType java nnoremap <C-k> :call CommentToggle()<CR>

function! CommentToggle()
    execute 'normal! I// '
    execute 'normal! ^'
endfunction




autocmd FileType java nnoremap <C-u> :call UncommentToggle()<CR>

function! UncommentToggle()
    let comment_str = '^\s*//\s*'
    let line = getline('.')
    if match(line, comment_str) >= 0
        let uncommented_line = substitute(line, comment_str, '', '')
        execute 'normal! ^' . strlen(uncommented_line)
    else
        execute 'normal! ^'
    endif
endfunction

