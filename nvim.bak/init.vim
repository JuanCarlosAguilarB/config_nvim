" abilitar números de línea
set number

" Uso de espacios en lugar de tabulaciones
set expandtab
set tabstop=4
set shiftwidth=4

" Resaltar sintaxis
syntax enable


" Vim-Plug
call plug#begin('~/.local/share/nvim/plugged')

" Ejemplo de plugin (NERDTree)
Plug 'preservim/nerdtree'

call plug#end()


" Instalación de Vim-Plug (si aún no está instalado)
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
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

call plug#end()

" Configuraciones adicionales para los plugins, como mapeos de teclas, etc.

Plug 'preservim/nerdtree'

" Mapeo de teclas para abrir NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>



"#-----------------------------------------------

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
"
"
"
"
"
"
" for java spring 

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

" Autocompletado para Java (Usando coc.nvim)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-java'

" Explorador de archivos
Plug 'preservim/nerdtree'

" Administrador de ventanas
Plug 'vim-airline/vim-airline'

" Linting y corrección de estilo
Plug 'dense-analysis/ale'

" Soporte para Git
Plug 'tpope/vim-fugitive'

" Tema gruvbox
Plug 'morhetz/gruvbox'

" Plugin para integración con Spring (opcional)
" Plug 'coursier/vim-spring-boot'

call plug#end()

" Configuraciones adicionales para los plugins, como mapeos de teclas, etc.




" Autocompletado para Java (Usando coc.nvim)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-java'

" Explorador de archivos
Plug 'preservim/nerdtree'

" Administrador de ventanas
Plug 'vim-airline/vim-airline'

" Linting y corrección de estilo
Plug 'dense-analysis/ale'

" Soporte para Git
Plug 'tpope/vim-fugitive'

" Tema gruvbox
Plug 'morhetz/gruvbox'

" Plugin para integración con Spring Boot
Plug 'coursier/vim-spring-boot'

call plug#end()

" Configuraciones adicionales para los plugins, como mapeos de teclas, etc
"
"
"

