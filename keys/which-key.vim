" Líder de wich-key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Variable para mapeos
let g:which_key_map =  {}

" Mapeos directos
let g:which_key_map['/'] = [':call Comment()'                     , 'Comentar' ]
let g:which_key_map['f'] = [':Files'                              , 'Archivos']
let g:which_key_map['.'] = [ ':e $MYVIMRC'                        , 'Abrir Init' ]
let g:which_key_map[';'] = [ ':Commands'                          , 'Comandos']
let g:which_key_map['='] = [ '<C-W>='                             , 'Balancear ventanas' ]
let g:which_key_map['d'] = [ ':Bdelete'                           , 'Borrar buffer']
" let g:which_key_map['e'] = [ ':CocCommand explorer'               , '' ]
let g:which_key_map['h'] = [ '<C-W>s'                             , 'Dividir (abajo)']
" let g:which_key_map['m'] = [ ':call WindowSwap#EasyWindowSwap()'  , 'move window' ]
let g:which_key_map['n'] = [ ':let @/ = ""'                       , 'Quitar resaltado' ]
let g:which_key_map['p'] = [ ':Files'                             , 'Archivos' ]
let g:which_key_map['q'] = [ 'q'                                  , 'Salir' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'                      , 'Ranger' ]
let g:which_key_map['u'] = [ ':UndotreeToggle'                    , 'Undo Tree']
let g:which_key_map['v'] = [ '<C-W>v'                             , 'Dividir (derecha)']
let g:which_key_map['W'] = [ 'w'                                  , 'Guardar' ]
" let g:which_key_map['z'] = [ 'Goyo'                               , 'Zen' ]

" b para buffer
let g:which_key_map.b = {
  \ 'name' : 'Buffer [+]' ,
  \ '1' : ['b1'        , 'Buffer 1'],
  \ '2' : ['b2'        , 'Buffer 2'],
  \ '3' : ['b3'        , 'Buffer 3'],
  \ '4' : ['b4'        , 'Buffer 4'],
  \ '5' : ['b5'        , 'Buffer 5'],
  \ 'd' : [':Bdelete'  , 'Borrar buffer'],
  \ 'f' : ['bfirst'    , 'Primer buffer'],
  \ 'h' : ['Startify'  , 'Startify'],
  \ 'l' : ['blast'     , 'Último buffer'],
  \ 'n' : ['bnext'     , 'Siguiente buffer'],
  \ 'p' : ['bprevious' , 'Anterior buffer'],
  \ '?' : ['Buffers'   , 'FZF Buffers)'],
  \ }


" e para explorar
let g:which_key_map.e = {
  \ 'name': 'Explorar [+]',
  \ 'd': [':CocCommand explorer'                      , 'Directo'],
  \ 'f': [':CocCommand explorer --preset floating'    , 'Flotante'],
  \ 'i': [':IndentGuidesToggle'                       , 'Guías de Indentación'] 
  \ }


let g:which_key_map.f = {
  \ 'name' : 'Buscar y reemplazar [+]' ,
  \ 'f' : [':Farr --source=vimgrep'    , 'Archivo'],
  \ 'p' : [':Farr --source=rgnvim'     , 'Proyecto'],
  \ }

" g para git
let g:which_key_map.g = {
 \ 'name' : 'Git [+]' ,
 \ 'a' : [':Git add .'                        , 'Add (todos)'],
 \ 'A' : [':Git add %'                        , 'Add (actual)'],
 \ 'b' : [':Git blame'                        , 'Blame'],
 \ 'B' : [':GBrowse'                          , 'Browse'],
 \ 'c' : [':Git commit'                       , 'Commit'],
 \ 'd' : [':Git diff'                         , 'Diff'],
 \ 'D' : [':Gdiffsplit'                       , 'Diff split'],
 \ 'g' : [':GGrep'                            , 'Git grep'],
 \ 'G' : [':Gstatus'                          , 'Status'],
 \ 'h' : [':GitGutterLineHighlightsToggle'    , 'Highlight hunks'],
 \ 'H' : ['<Plug>(GitGutterPreviewHunk)'      , 'Preview hunk'],
 \ 'i' : [':Gist -b'                          , 'Postear gist'],
 \ 'j' : ['<Plug>(GitGutterNextHunk)'         , 'Siguiente hunk'],
 \ 'k' : ['<Plug>(GitGutterPrevHunk)'         , 'Anterior hunk'],
 \ 'l' : [':Git log'                          , 'Log'],
 \ 'm' : ['<Plug>(git-messenger)'             , 'Message'],
 \ 'p' : [':Git push'                         , 'Push'],
 \ 'P' : [':Git pull'                         , 'Pull'],
 \ 'r' : [':GRemove'                          , 'Remove'],
 \ 's' : ['<Plug>(GitGutterStageHunk)'        , 'Stage hunk'],
 \ 'S' : [':!git status'                      , 'Status'],
 \ 't' : [':GitGutterSignsToggle'             , 'Toggle signs'],
 \ 'u' : ['<Plug>(GitGutterUndoHunk)'         , 'undo hunk'],
 \ 'v' : [':GV'                               , 'view commits'],
 \ 'V' : [':GV!'                              , 'view buffer commits'],
 \ }

" l para Language Server Protocol 
let g:which_key_map.l = {
  \ 'name' : 'LSP [+]' ,
  \ '.' : [':CocConfig'                          , 'Configuración'],
  \ ';' : ['<Plug>(coc-refactor)'                , 'Refactorizar'],
  \ 'a' : ['<Plug>(coc-codeaction)'              , 'Acción (Archivo)'],
  \ 'A' : ['<Plug>(coc-codeaction-selected)'     , 'Acción (Selección)'],
  \ 'b' : [':CocNext'                            , 'Siguiente acción'],
  \ 'B' : [':CocPrev'                            , 'Acción anterior'],
  \ 'c' : [':CocList commands'                   , 'Comandos'],
  \ 'd' : ['<Plug>(coc-definition)'              , 'Ir a definición'],
  \ 'D' : ['<Plug>(coc-declaration)'             , 'Ir a declaración'],
  \ 'e' : [':CocList extensions'                 , 'Extensiones'],
  \ 'f' : ['<Plug>(coc-format-selected)'         , 'Formato (Selección)'],
  \ 'F' : ['<Plug>(coc-format)'                  , 'Formato'],
  \ 'h' : ['<Plug>(coc-float-hide)'              , 'Esconder'],
  \ 'i' : ['<Plug>(coc-implementation)'          , 'Implementación'],
  \ 'I' : [':CocList diagnostics'                , 'Diagnósticos'],
  \ 'j' : ['<Plug>(coc-float-jump)'              , 'Float jump'],
  \ 'l' : ['<Plug>(coc-codelens-action)'         , 'Code lens'],
  \ 'n' : ['<Plug>(coc-diagnostic-next)'         , 'Siguiente diagnóstico'],
  \ 'N' : ['<Plug>(coc-diagnostic-next-error)'   , 'Siguiente error'],
  \ 'o' : [':Vista!!'                            , 'Vista outline'],
  \ 'O' : [':CocList outline'                    , 'Coc outline'],
  \ 'p' : ['<Plug>(coc-diagnostic-prev)'         , 'Diagnóstico previo'],
  \ 'P' : ['<Plug>(coc-diagnostic-prev-error)'   , 'Error previo'],
  \ 'q' : ['<Plug>(coc-fix-current)'             , 'Quickfix'],
  \ 'r' : ['<Plug>(coc-references)'              , 'Referencias'],
  \ 'R' : ['<Plug>(coc-rename)'                  , 'Renombrar'],
  \ 's' : [':CocList -I symbols'                 , 'Go to Symbol'],
  \ 'S' : [':CocList snippets'                   , 'Snippets'],
  \ 't' : ['<Plug>(coc-type-definition)'         , 'Type definition'],
  \ 'u' : [':CocListResume'                      , 'CocListResume'],
  \ 'U' : [':CocUpdate'                          , 'Actualizar CoC'],
  \ 'z' : [':CocDisable'                         , 'Deshabilitar CoC'],
  \ 'Z' : [':CocEnable'                          , 'Habilitar CoC'],
  \ }

" s para búsquedas
let g:which_key_map.s = {
    \ 'name' : 'Búsqueda [+]' ,
    \ '/' : [':History/'              , 'Historial'],
    \ ';' : [':Commands'              , 'Comandos'],
    \ 'a' : [':Ag'                    , 'Ag'],
    \ 'b' : [':BLines'                , 'Buffer actual'],
    \ 'B' : [':Buffers'               , 'Buffers'],
    \ 'c' : [':Commits'               , 'Commits'],
    \ 'C' : [':BCommits'              , 'Commits (Buffer)'],
    \ 'f' : [':Files'                 , 'Archivos'],
    \ 'g' : [':GFiles'                , 'Git files'],
    \ 'G' : [':GFiles?'               , 'Git files modificados'],
    \ 'h' : [':History'               , 'Historial de archivos'],
    \ 'H' : [':History:'              , 'Historial de comandos'],
    \ 'l' : [':Lines'                 , 'Líneas'] ,
    \ 'm' : [':Marks'                 , 'Marcas'] ,
    \ 'M' : [':Maps'                  , 'Mapeos'] ,
    \ 'p' : [':Helptags'              , 'Etiquetas de ayuda'] ,
    \ 'P' : [':Tags'                  , 'Etiquetas de proyecto'],
    \ 's' : [':CocList snippets'      , 'Snippets'],
    \ 'S' : [':Colors'                , 'Temas'],
    \ 't' : [':Rg'                    , 'Rg'],
    \ 'T' : [':BTags'                 , 'Etiquetas de buffer'],
    \ 'w' : [':Windows'               , 'Ventanas'],
    \ 'y' : [':Filetypes'             , 'Tipos de Archivos'],
    \ 'z' : [':FZF'                   , 'FZF'],
    \ }

" T is for terminal
let g:which_key_map.T = {
      \ 'name' : 'Tabline [+]' ,
      \ 'b' : [':XTabListBuffers'         , 'list buffers'],
      \ 'd' : [':XTabCloseBuffer'         , 'close buffer'],
      \ 'D' : [':XTabDeleteTab'           , 'close tab'],
      \ 'h' : [':XTabHideBuffer'          , 'hide buffer'],
      \ 'i' : [':XTabInfo'                , 'info'],
      \ 'l' : [':XTabLock'                , 'lock tab'],
      \ 'm' : [':XTabMode'                , 'toggle mode'],
      \ 'n' : [':tabNext'                 , 'next tab'],
      \ 'N' : [':XTabMoveBufferNext'      , 'buffer->'],
      \ 't' : [':tabnew'                  , 'new tab'],
      \ 'p' : [':tabprevious'             , 'prev tab'],
      \ 'P' : [':XTabMoveBufferPrev'      , '<-buffer'],
      \ 'x' : [':XTabPinBuffer'           , 'pin buffer'],
      \ }

" No usar ventana flotante
let g:which_key_use_floating_win = 0

" Esconder la barra de estado
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler

" Abrir con Space
call which_key#register('<Space>', "g:which_key_map")
