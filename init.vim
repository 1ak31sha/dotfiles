"~_~_~_~_~_~_~_~_~_~_~"
"                     "
"        VIMRC        "
"                     "
"~_~_~_~_~_~_~_~_~_~_~"
set shiftwidth=2
set expandtab
autocmd Filetype ruby setlocal tabstop=2
autocmd Filetype rb setlocal tabstop=2
let g:ackprg = 'ag --nogroup --nocolor --column'
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol='👩 '
set nocp   " 'compatible' is not set
set encoding=utf8
"set cursorline
set number
call plug#begin('~/.config/nvim/plugged')
  Plug 'benmills/vimux'
  Plug 'tpope/vim-fugitive'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'neomake/neomake' "| Plug 'dojoteef/neomake-autolint'
  Plug 'ervandew/supertab'  
  Plug 'w0rp/ale'
  "    autocompletion plugins 
  Plug 'SirVer/ultisnips'
  Plug 'honza/vim-snippets'
  Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'mxw/vim-jsx'
  Plug 'vim-airline/vim-airline'  
  Plug 'mhartington/oceanic-next'
  Plug 'tpope/vim-surround'
  Plug 'cloudhead/neovim-fuzzy'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'tpope/vim-cucumber'  
  Plug 'ryanoasis/vim-devicons'
 " Plug 'terryma/vim-multiple-cursors'
 Plug '~/.config/nvim/scripts/ColDevicons'
call plug#end()
"
let g:python3_host_prog = '/Users/u6064854/.pyenv/versions/neovim3/bin/python'
let g:python_host_prog = '/Users/u6064854/.pyenv/versions/neovim2/bin/python'
let g:deoplete#enable_at_startup = 1
" Epnable completion where available.

" Nerd Tree
" ---------
nnoremap <C-b> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree "// Open the tree by default
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Neomake
call neomake#configure#automake('n')
autocmd BufNewFile,BufRead *.sharedrc   set syntax=perl
"let g:neomake_autolint_enabled

"let g:neomake_javascript_jscs_maker = {
"    \ 'exe': 'jscs',
"    \ 'args': ['--no-color', '--preset', 'airbnb', '--reporter', 'inline', '--esnext'],
"    \ 'errorformat': '%f: line %l\, col %c\, %m',
"    \ }

"let g:neomake_javascript_enabled_makers = ['eslint']
"let g:neomake_javascript_enabled_makers = ['jscs']
""Olet g:neomake_javascript_enabled_makers = ['eslint']	
"let g:ale_completion_enabled = 1
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

syntax enable
colorscheme monokai
autocmd BufEnter * colorscheme default
"autocmd BufEnter *.js colorscheme Tomorrow-Night
"autocmd BufEnter *.json colorscheme Tomorrow

autocmd! BufWritePost,BufEnter * Neomake

" Jump to the main window.
autocmd VimEnter * wincmd p
nnoremap <C-p> :FuzzyOpen<CR>
noremap s :w<CR>
"nmap <C-9> :call VimuxRunCommand("echo test")<cr>
"However, if you want Deoplete to play nice with multiple omnifunctions provided by third-party plugins, you should use these Deoplete-specific settings:

filetype plugin indent on

let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]

if exists('g:loaded_webdevicons')
"""  call webdevicons#refresh()
endif


let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:webdevicons_gui_glyph_fix = 1

"  let g:NERDDTreeGitStatusNodeColorization = 1
 "<BS>
" 
"  let g:webdevicons_enable_denite = 0
 " " let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['vim'] = ''
  "kklet g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
 " let g:WebDevIconsOS = 'Darwin'
 " let g:WebDevIconsUnicodeDecorateFolderNodes = 1
 " let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
 " let g:WebDevIconsUnicodeDecorateFolderNodes = 1
 " let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
 " let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
 " let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
 " let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tsx'] = ''
 " let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
 " let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
 " let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
 " let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
 " let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sql'] = ''
  syntax on
  filetype plugin indent on
  set termguicolors
  let g:airline_powerline_fonts = 1
