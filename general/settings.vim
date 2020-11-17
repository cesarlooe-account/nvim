syntax enable			          " Highlight de sintaxis

set hidden			            " Requerido para abrir múltiples buffers
set nowrap			            " Perimte las líneas muy largas
set encoding=utf-8
set fileencoding=utf-8
set ruler			              " Muestra el cursor en la posición actual
set pumheight=10		        " Popup en INSERT (autocompletar) más pequeño
set cmdheight=2			        " Más espacio para los mensajes
set mouse=a			            " Habilita el mouse
set splitbelow			        " Divisiones verticales por defecto hacia abajo
set splitright			        " Divisiones horizontales por defecto hacia la derecha
set t_Co=256			          " Soporte para 256 colores
set conceallevel=0		      " Para ver símbolos especiales en markdown
set tabstop=2			          " Insertar 2 espacios para un tab
set shiftwidth=2		        " Cambia el número de espacios insertados para la indentación
set expandtab			          " Convierte tabs en espacios
set smarttab			          " Automáticamente reconoce la identación 2 vs 4
set smartindent			        " Indentación inteligente
set autoindent			        " Indentación automática
set laststatus=2		        " Siempre muestra la barra de estado
set number			            " Muestra los números de línea
set cursorline			        " Resalta la línea actual
set background=dark		      " Indica a VIM el tipo de color de fondo
set showtabline=2		        " Siempre muestra líneas de indentación (verticales para cada nivel)
set noshowmode			        " Para que no muestre --INSERT-- y otros ya que tenemos el status bar
set updatetime=100		      " Autocompletado más rápido
set timeoutlen=100          " Por defecto es 1000ms (Para ejecutar comandos con la tecla líder)
set clipboard=unnamedplus 	" Para compartir el clipboard con el sistema
set signcolumn=yes  		    " Siempre muestra la columna de signos (donde van los breakpoints)
set shortmess+=c   		      " No pasa mensajes a |ins-completion-menu|
set incsearch               " Búsqueda incremental
set foldmethod=indent       " Tipo de fold
set foldlevelstart=99       " Para que inicie sin hacer fold

set iskeyword+=-		        " Para tratar a las palabras separadas por guiones como un sola palabra
set whichwrap+=<,>,h,l,[,]	" Cambio de línea al moverse a izquierda o derecha del primer/último caracter

set nobackup                " Recomendado por CoC
set nowritebackup           " Recomendado por CoC

set formatoptions-=cro		  " Evita que las nuevas líneas continúen como comentaros por defecto
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let html_no_rendering=1
