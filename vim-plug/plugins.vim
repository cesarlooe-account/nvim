call plug#begin('~/.config/nvim/autoload/plugged')

" Temas
Plug 'christianchiarulli/nvcode.vim'
" Status Line
Plug 'vim-airline/vim-airline'
" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Comentarios
Plug 'tpope/vim-commentary'
" Which Key
Plug 'liuchengxu/vim-which-key'
" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'yuki-ycino/fzf-preview.vim', { 'branch': 'release', 'do': ':UpdateRemotePlugins' }
Plug 'junegunn/fzf.vim'
" Ag (Búsquedas)
Plug 'rking/ag.vim'
" Indent Lines
Plug 'nathanaelkane/vim-indent-guides'
" Vista
Plug 'liuchengxu/vista.vim'
" Undo Time Travel
Plug 'mbbill/undotree'
" Ranger
Plug 'kevinhwang91/rnvimr'
" Snippets
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
" Tabline (para mostrar los buffers)
Plug 'mg979/vim-xtabline'
" Para cerrar buffers
Plug 'moll/vim-bbye'
" Buscar y reemplazar
Plug 'brooth/far.vim'
" Auto indent settings
Plug 'tpope/vim-sleuth'
" Syntax Support
Plug 'sheerun/vim-polyglot'
" Cool Icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
" Pares automáticos '(' '[' '{'
Plug 'jiangmiao/auto-pairs'
" Closetags
Plug 'alvan/vim-closetag'
" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
"Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'
Plug 'rhysd/git-messenger.vim'
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }
endif
" Start Screen
Plug 'mhinz/vim-startify'
" Interactive code
Plug 'metakirby5/codi.vim'
" Better tabline
Plug 'romgrk/barbar.nvim'
" Auto change html tags
Plug 'AndrewRadev/tagalong.vim'
" Smooth Scrolling
Plug 'psliwka/vim-smoothie'
" Highlight Current Word
" Plug 'dominikduda/vim_current_word'
" Easymotion
Plug 'easymotion/vim-easymotion'
" Have the file system follow you around
Plug 'airblade/vim-rooter'

call plug#end()


