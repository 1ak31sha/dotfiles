"~_~_~_~_~_~_~_~_~_~_~"
"                     "
"        VIMRC        "
"                     "
"~_~_~_~_~_~_~_~_~_~_~"

" -------
" Python
" -------

let g:python_host_prog = '/Users/u6064854/.pyenv/versions/neovim2/bin/python'

" ----
" Set
" ----
set nocursorline
set encoding=utf8
set nocp   " 'compatible' is not set
set number
set shiftwidth=2
set expandtab
autocmd Filetype ruby setlocal tabstop=2
autocmd Filetype rb setlocal tabstop=2
"let g:ackprg = 'ag --nogroup --nocolor --column'

" -------
" PLUGINS
" -------
call plug#begin('~/.config/nvim/plugged')

  Plug 'vim-airline/vim-airline'  
  Plug 'w0rp/ale'
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'mxw/vim-jsx'
  Plug 'cloudhead/neovim-fuzzy'
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  " Plug 'neomake/neomake' "| Plug 'dojoteef/neomake-autolint'
  Plug 'mhartington/oceanic-next'
  Plug 'ervandew/supertab'  
  Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'SirVer/ultisnips'
  Plug 'tpope/vim-cucumber'  
  Plug 'tpope/vim-fugitive'
  " Plug 'ryanoasis/vim-devicons'
  Plug 'tpope/vim-surround'
  Plug 'honza/vim-snippets'
  Plug 'benmills/vimux'
"  Plug 'terryma/vim-multiple-cursors'
" Plug '~/.config/nvim/scripts/ColDevicons'

call plug#end()
"

" ----------------------
" PLUGIN CONFIGURATIONS
" ----------------------

" ---------
" DevIcons
" ---------
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol='👩 '
if exists('g:loaded_webdevicons')
"""  call webdevicons#refresh()
endif
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1
let g:webdevicons_gui_glyph_fix = 1

" ---------
" Deoplete
" ---------
" let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]

" ---------
" Nerd Tree
" ---------
nnoremap <C-b> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree "// Open the tree by default
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ---------
" Neomake
" ---------
"jcall neomake#configure#automake('n')

" -----------
" UltiSnips
" -----------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" ---------
" AUTOCMD
" ---------
"autocmd! BufWritePost,BufEnter * Neomake
autocmd BufNewFile,BufRead *.sharedrc   set syntax=perl
" Jump to the main window.
autocmd VimEnter * wincmd p

" ----------
"  REMAPS
" ----------
nnoremap <C-p> :FuzzyOpen<CR>
let mapleader = ","
noremap <Leader>s :w<CR>

filetype plugin indent on

" --------
"  Airline
" -------- 
let g:airline_powerline_fonts = 1


syntax on
set termguicolors



" Visual Mode Orange Background, Black Text
hi Visual          guifg=#000000 guibg=#FD971F

" Default Colors for CursorLine
highlight CursorLine guibg=#3E3D32
highlight Cursor guibg=#A6E22E;

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine guibg=#323D3E
autocmd InsertEnter * highlight  Cursor guibg=#00AAFF;

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine guibg=#3E3D32
autocmd InsertLeave * highlight  Cursor guibg=#A6E22E;


"autocmd BufEnter * colorscheme default
colorscheme monokai
syntax enable
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
 "nmap <C-9> :call VimuxRunCommand("echo test")<cr>
"However, if you want Deoplete to play nice with multiple omnifunctions provided by third-party plugins, you should use these Deoplete-specific settings:
"autocmd BufEnter *.js colorscheme Tomorrow-Night
"autocmd BufEnter *.json colorscheme Tomorrow
"set cursorline

