Coniguración de Neovim
Una vez instalado Neovim, puedes configurarlo según tus preferencias. Aquí hay algunos pasos básicos para empezar:

Configuración del archivo init.vim:
Neovim utiliza un archivo init.vim para su configuración. Puedes crear o editar este archivo en tu directorio de configuración de Neovim:

bash
Copy code
mkdir -p ~/.config/nvim
nvim ~/.config/nvim/init.vim
Esto abrirá Neovim con un archivo nuevo o existente llamado init.vim (en caso de que ya exista). Ahí puedes colocar tus configuraciones personalizadas.

Ejemplo de configuración básica:
Aquí tienes un ejemplo básico de configuración para empezar en tu archivo init.vim:

vim
Copy code
" Habilitar números de línea
set number

" Uso de espacios en lugar de tabulaciones
set expandtab
set tabstop=4
set shiftwidth=4

" Resaltar sintaxis
syntax enable
Puedes personalizar y agregar más configuraciones según tus preferencias.

Instalar plugins:
Puedes utilizar un administrador de plugins como Vim-Plug o Vundle para instalar y administrar plugins en Neovim. Por ejemplo, para Vim-Plug, puedes seguir estos pasos:

Instalar Vim-Plug:

bash
Copy code
sh -c 'curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
Luego, en tu archivo init.vim, puedes agregar secciones para especificar los plugins que deseas instalar y administrar.

vim
Copy code
" Vim-Plug
call plug#begin('~/.local/share/nvim/plugged')

" Ejemplo de plugin (NERDTree)
Plug 'preservim/nerdtree'

call plug#end()
Después de agregar los plugins, guarda el archivo y ejecuta :PlugInstall dentro de Neovim para instalar los plugins que has especificado.f
