

"~_~_~_~_~_~_~_~_~_~_~"
"                     "
"        VIMRC        "
"        -----        "
"~_~_~_~_~_~_~_~_~_~_~"

"  ~ Table of Contents ~
" -----------------------
"
" Use <Shift>* on a word to follow it.
"
" MAPPINGS
" ..CTRL_MAPPINGS
" ..LEADER_MAPPINGS
" AUTOCMD
" SET_OPTIONS
" JAVA
" COLOR_SCHEME
" PLUGINS
" PLUGIN_CONFIGURATIONS
" ..AG
" ..ALE
" ..Closetag
" ..CTRL-P
" ..DevIcons
" ..Deoplete
" ..FZF_config
" ..Git_Gutter
" ..Lightline
" ..Nerd_Tree
" ..Neosnippet
" ..Prettier
" ..UltiSnips
" ..vim_javascript
" FUNCTIONS
" TERMINAL_MODE
"
" ~------------------~ "


" --
" ABREVIATIONS
" --

" iabbrev div <div>
" iabbrev" dv </div>

" -----------
" MAPPINGS
" -----------

"a - insert to the right
"b - back a work
"c - 
"d - delete
"e - end of a word
"f - find
"gg - go to beginning
"G - go to end
"h - left
"i - insert left
"j - down
"k - up
"l - right
"o - insert below
"O - insert above
"p
"q - 
"r 
"s replace and insert
"t
"u
"v - visual mode
"w - a word ( no /-^...)
"W - blackspace delimited word
"x - delete char
"y - yank
"zz - quit?

let mapleader = " "

nmap 1 $
" CTRL_MAPPINGS
" -------------

" <C-a> // reserved by tmux prefix
" <C-b> // toggle nerdTree
" <C-c> copy to os clipboard
nmap <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
" <C-e> scroll without moving cursor
" <C-f>
" <C-g>
nmap <S-h> zH
" <C-i
" <C-j
" <C-k
nmap <S-l> zL
" <C-m>
" <C-n> multiple cursors
" <C-o>
nmap <C-p> :FZF<CR>
" <C-q> nerdTree focus
" <C-r> redo
" <C-s>
" <C-t>
nmap <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
" <C-v
" <C-w> with arrow key -> move buffers
" <C-x
" <C-y> scroll up without moving cursor
" <C-z> quit without asking
nmap <C-/> :call Smart_commenting()<CR>


" LEADER_MAPPINGS
" ---------------

nmap <leader>a :Ag<space>
"    <leader>b
nmap <Leader>c :call Cycle_numbering()<CR>
nmap <Leader>d <S-v>yp
"    <leader>e
nmap <leader>f :NERDTreeFind<CR>
"    <leader>g
nmap <Leader>h :sp<CR><C-w><Down>
"    <leader>i
"    <leader>j
"    <leader>k
"    <leader>l
"    <leader>m
nmap <leader>m :call DisplayTag()<CR>
nmap <leader>o :call DisplayGivenTag()<CR>
nnoremap <leader>n :call RebuildTags()<CR>
"    <leader>n
"    <leader>o
"nmap <leader>p :PrettierCli <--config ./.prettierrc>
"nmap <leader>p :PrettierCli <q-args> '--trailing-comma all"
nmap <leader>p :Prettier<CR>
"nmap <Leader>py <Plug>(Prettier)
nmap <Leader>q :q<CR>
nmap <Leader>r :source $DOTFILES/init.vim<CR>
nmap <Leader>s :w<CR>
nmap <Leader>t :tabnew<CR>
"    <leader>u
nmap <Leader>v :vsp<CR><C-w><Right>
" gets you sudo access to a file without having to exit vim. promts for password
"nmap <leader>w  :f<space>
nmap <leader>x  :w suda://%<CR>
nmap <leader>y :YAMLFormat<CR>
nmap <Leader>z :call Zap()<CR>
nmap <leader>1 :tabn 1<CR>
nmap <leader>2 2gt
nmap <leader>3 3gt
nmap <leader>4 4gt
nmap <leader>5 5gt
nmap <leader>6 6gt
nmap <leader>7 7gt
nmap <leader>8 :call Smart_commenting()<CR>
nmap <silent>     <Leader>9 :call Cycle_colors()<CR>

nmap <Leader>m1       :mksession! $DOTFILES/learning.vim<CR>
nmap <Leader>l1       :source $DOTFILES/learning.vim<CR>
nmap <leader>pi   :PlugInstall<CR>
nmap <leader>ch   :checkhealth<CR>
nmap <Leader>html :-1read $DOTFILES/testhtml.html<CR>1jf>a

" surround
nmap <leader>'        viwS'<CR>
nmap <leader>"        viwS"<CR>
nmap <leader>(        viwS(<CR>
nmap <leader>[        viwS[<CR>
nmap <leader>{        viwS{<CR>

" VISUAL
vnoremap <C-c>        "*y
vnoremap <C-x>        "*d
xnoremap <Leader>d    y`>p
xnoremap J            :move '>+1<CR>gv=gv
xnoremap K            :move '<-2<CR>gv=gv
vnoremap <C-r>        "hy:%s/<C-r>h//gc<left><left><left>
vmap <C-\>            di/*<CR>*/<CR><esc>kkp
vmap <C-s>            :call Split_Long_Lines_Max_80()<CR>
"vmap <C-j>            :call Block_comment()<CR>
vmap <Leader>< <Esc>:call VisualHTMLTagWrap()<CR>
" INSERT MODE
" -----------



"inoremap <ctrl> <esc>
" type an opening brace and it auto does the closing, putting you inside the braces
"imap ( ()<C-[>i

" COMMAND MODE
" ------------
" cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
" -> use this instead :w suda://%

"<Bs> BACK
"<Del> DELETE

" -------
" PLUGINS
" -------
call plug#begin('~/.config/nvim/plugged')

" Color Schemes
" -------------
Plug 'altercation/solarized'
Plug 'crusoexia/vim-monokai'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'altercation/vim-colors-solarized'
Plug 'mhartington/oceanic-next'
Plug 'itchyny/lightline.vim' " -Configurability. You can create your own component and easily add to the statusline and the tabline. Orthogonality. The plugin does not rely on the implementation of other plugins. Such plugin crossing settings should be configured by users.
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-scripts/AfterColors.vim'
Plug 'mkitt/tabline.vim'
"Plug 'NovaDev94/lightline-onedark'
"Plug 'https://github.com/gko/vim-coloresque'
Plug 'https://github.com/ap/vim-css-color'

" Ruby
" ----
Plug 'vim-ruby/vim-ruby'

" Syntax
" ------
Plug 'junegunn/vim-emoji'
Plug 'vim-scripts/groovy.vim'
Plug 'mxw/vim-jsx'
Plug 'dag/vim-fish'
Plug 'darthmall/vim-vue'
Plug 'tpope/vim-cucumber'
Plug 'artur-shaik/vim-javacomplete2'
"Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
"Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'pangloss/vim-javascript'
Plug 'tarekbecker/vim-yaml-formatter'  " pip3 install pyyaml

" Linting
" ------
Plug 'w0rp/ale'
"Plug 'vim-syntastic/syntastic'
Plug 'jvenant/vim-java-imports'
Plug 'prettier/vim-prettier'

" Navigation
" ----------
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'benmills/vimux'
Plug 'ervandew/supertab'

" Git
" ---
Plug 'tpope/vim-fugitive'
"Plug 'Xuyuanp/nerdtree-git-plugin'

" Tools
" -----
Plug 'rking/ag.vim'   " silver searcher
Plug 'lambdalisue/suda.vim' " get sudo on the file
Plug 'terryma/vim-smooth-scroll'
Plug 'ashisha/image.vim'
"Plug 'https://github.com/szw/vim-tags'
Plug 'webastien/vim-ctags'

" Text maniulation
" ----------------
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'
Plug 'othree/xml.vim'
"Plug 'jasonwoodland/vim-html-closer' -> only works on html files, no jsx
"Plug 'honza/vim-snippets'
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'

" :help deoplete-options
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1

" this is the tern plugin that for sure is needed
Plug 'carlitux/deoplete-ternjs' , { 'do': 'npm install -g tern' }
" this tern didnt seem to work
" Plug 'ternjs/tern_for_vim'

"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ryanoasis/vim-devicons'
call plug#end()
"
" ----------------------
" PLUGIN_CONFIGURATIONS
" ----------------------

" AG - the silver surfer
" ----------------------
let g:ag_working_path_mode="r"

" ALE
" -----
"let g:ale_linters = ['eslint']
"let b:ale_linters = ['eslint']
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_linters = {
\   'javascript': ['eslint'],
\}
let g:ale_javascript_eslint_options='-c ~/workspace/emcm-ui/packages/eslint-config/eslintrc.json'
"let g:ale_javascript_eslint_options='-c ~/workspace/emcm-ui/.eslintrc.js'

" ----------------------
" Autoformat
" ----------------------
"noremap <F3> :Autoformat<CR>
"let g:autoformat_autoindent = 0
"let g:autoformat_retab = 0
"let g:autoformat_remove_trailing_spaces = 0
"au BufWrite * :Autoformat

" --------
" Closetag
" --------
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx, *.js'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,js'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '<leader>>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '>'


" CTRL-P
"--------
let g:ctrlp_show_hidden = 1

" ---------
" DevIcons
" ---------
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''

let g:DevIconsEnableFoldersOpenClose = 1
let g:webdevicons_gui_glyph_fix = 1

" ---------
" Deoplete
" ---------
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#omni#functions = {}
"let g:deoplete#omni#functions.javascript = [
"  \ 'tern#Complete',
"  \ 'jspc#omni'
"\]

" FZF_config
" ---
let g:fzf_layout = { 'up': '~40%' }
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
let g:fzf_colors =
      \ { 'fg':      ['fg', 'monokai'],
      \ 'bg':      ['bg', 'monokai'],
      \ 'hl':      ['fg', 'monokai'],
      \ 'fg+':     ['fg', 'monokai', 'CursorColumn', 'Normal'],
      \ 'bg+':     ['bg', 'monokai', 'CursorColumn'],
      \ 'hl+':     ['fg', 'monokai'],
      \ 'info':    ['fg', 'monokai'],
      \ 'border':  ['fg', 'monokai'],
      \ 'prompt':  ['fg', 'green'],
      \ 'pointer': ['fg', 'monokai'],
      \ 'marker':  ['fg', 'monokai'],
      \ 'spinner': ['fg', 'monokai'],
      \ 'header':  ['fg', 'monokai'] }
" Default fzf layout
" - down / up / left / right
"    let g:fzf_layout = { 'down': '~40%' }

" Git_Gutter
"-----------
let g:gitgutter_sign_added = emoji#for('small_blue_diamond')
let g:gitgutter_sign_modified = emoji#for('small_orange_diamond')
let g:gitgutter_sign_removed = emoji#for('small_red_triangle')
let g:gitgutter_sign_modified_removed = emoji#for('collision')
set completefunc=emoji#complete

" Lightline
" ---------
"let g:lightline = {
"  \   'colorscheme': 'onedark'
"  \}
let g:lightline = {
      \ 'enable': {
      \   'tabline': 0
      \ }
      \ }

" Nerd_Tree
" ---------
nnoremap <C-q> :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeMapOpenInTab='t'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd vimenter * NERDTree "// Open the tree by default
let g:NERDTreeLimitedSyntax = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:monokai_blue = "66D9EF"
let s:monokai_green = "A6E22E"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "F92672"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
" Vim-nerdtree-syntax-highlight
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange
let g:NERDTreeExactMatchHighlightColor['.gitconfig'] = s:git_orange
let g:NERDTreeExactMatchHighlightColor['.agignore'] = s:rspec_red
let g:NERDTreeExactMatchHighlightColor['tags'] = s:rspec_red
let g:NERDTreeExactMatchHighlightColor['.bashrc'] = s:monokai_green
let g:NERDTreeExactMatchHighlightColor['.bash_profile'] = s:monokai_green
let g:NERDTreeExactMatchHighlightColor['.tmux.conf'] = s:pink
let g:NERDTreeExactMatchHighlightColor['config.fish'] = s:monokai_blue
let g:NERDTreeExactMatchHighlightColor['Dockerfile'] = s:monokai_blue
" -----------------------------
"Disable uncommon file extensions highlighting (this is a good idea if you are experiencing lag when scrolling. Find more about lag on next session.)
"let g:NERDTreeExactMatchHighlightColor =
"     \{ '.gitignore': 's:rspec_red'
"    \} " this line is needed to avoid error
"let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreeExactMatchHighlightColor['Dockerfile'] = s:aqua "
"let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
""let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreeExactMatchHighlightColor['config.fish'] = s:salmon "
"let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreeExtensionHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreeExtensionHighlightColor['css'] = s:blue " sets the color of css files to blue
"let g:NERDTreePatternMatchHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreePatternMatchHighlightColor['.tmux.conf'] = s:rspec_red " sets the color for files ending with _spec.rb

" Neomake
" ---------
"jcall neomake#configure#automake('n')

" Neosnippet
" ----------
let g:neosnippet#disable_runtime_snippets = {
      \   '_' : 1,
      \ }

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-w>     <Plug>(neosnippet_expand_or_jump)
smap <C-w>     <Plug>(neosnippet_expand_or_jump)
xmap <C-w>     <Plug>(neosnippet_expand_target)
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
let g:neosnippet#snippets_directory='$DOTFILES/neosnips/'
" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
      \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"


" Prettier
" --------
"--trailing-comma all --tab-width 2 --no-semi false
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#semi = 'false'
" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#tab_width = 2
let g:prettier#exec_cmd_path = "/usr/local/bin/prettier"
" print semicolons
" Prettier default: true
" print spaces between brackets
" Prettier default: true
" put > on the last line instead of new line
" Prettier default: false
" let g:prettier#config#jsx_bracket_same_line = 'true'
" none|es5|all
" Prettier default: none
" let g:prettier#config#trailing_comma = 'all'
"let g:prettier#config#bracket_spacing = 'true'

" UltiSnips
" -----------
let g:UltiSnipsUsePythonVersion = 3

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger="<leader-j>"
let g:UltiSnipsJumpBackwardTrigger="<leader>k"
let g:UltiSnipsEditSplit="vertical"
" DONT USE THIS DIRECTORY CONFIG - doesnt work
" must set runtimepath for snipets folder and name folder as UltiSnips
"let g:UltiSnipsSnippetsDir="$DOTFILES/vimsnips"
"let g:UltiSnipsSnippetDirectories=["$DOTFILES/vimsnips", "UltiSnips"]
"let g:UltiSnipsExpandTrigger="<tab>"


"  vim_javascript
"  --------------
"let g:javascript_conceal_arrow_function = "≠"
"let g:javascript_conceal_arrow_function = "⇒"

"enable this if using above settings. i use fira font ligatures instead now
"set conceallevel=1

" ----------------------------
" END OF PLUGIN CONFIGURATIONS
" ----------------------------

" ---------
" AUTOCMD
" ---------
" Jump to the main window.
autocmd VimEnter * wincmd p

autocmd FileType * setlocal formatoptions=jql
autocmd Filetype ruby setlocal tabstop=2
autocmd Filetype rb setlocal tabstop=2
autocmd Filetype json setlocal tabstop=2
autocmd Filetype * setlocal tabstop=2
autocmd FileType java set tags=~/.tags
autocmd FileType markdown set spell spelllang=en_us

" I like relative numbering when in normal mode.
autocmd TermOpen * setlocal conceallevel=0 colorcolumn=0 relativenumber modifiable

" Prefer Neovim terminal insert mode to normal mode.
autocmd BufEnter term://* startinsert

"autocmd! BufWritePost,BufEnter * Neomake
autocmd BufNewFile,BufRead *.sharedrc   set syntax=perl
au BufNewFile,BufRead *.ejs set filetype=html
"au Bufread,BufNewFile *.feature set filetype=gherkin
"au! Syntax gherkin source ~/.vim/syntax/cucumber.vim

" Code Folding (i didnt like it)
"augroup javascript_folding
"    au!
"    au FileType javascript setlocal foldmethod=syntax
"  augroup END

" -------------
" TERMINAL_MODE
"--------------
"filetype plugin indent on
if has("nvim")
  " Make escape work in the Neovim terminal.
  tnoremap <Esc> <C-\><C-n>

  " Make navigation into and out of Neovim terminal splits nicer.
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l

endif

" -----------
" SET_OPTIONS
" -----------
set runtimepath+=$DOTFILES/vimsnips
set nowrap
set nocursorline
set encoding=utf8
set nocp   " 'compatible' is not set
set noswapfile
set nopaste
set guicursor=n-v-c-sm:block,i-ci-ve:ver55,r-cr-o:hor20
set number
set relativenumber
set shiftwidth=2
set expandtab "puts spaces for tabs
set autoread                    "Reload files changed outside vim
set path+=**
set wildmenu
set gdefault
" Status line
set statusline+=%F
set showtabline=2
"supposed to tunoff auto-comment, but this actually happens in the after-directory
let g:javascript_plugin_jsdoc = 1
set conceallevel=0
set termguicolors
set cuc cul"
" the length to be used for the gq command that splits lines
set textwidth=80



syntax on

" ----
" JAVA
" ----
setlocal omnifunc=javacomplete#Complete
setlocal completefunc=javacomplete#CompleteParamsInfo

" -------------
" COLOR_SCHEME
" -------------
colorscheme monokai
" put this in the monokai plugin's monokai.vim file
"call s:h("TabLineSel",    { "bg": s:orange})

" needed this when using conceal characters
"autocmd ColorScheme * highlight Conceal guibg=None
"syntax match Entity "===" conceal cchar=⟺
"syntax match Entity "===" conceal cchar=p

syntax enable

" Trailing whitespace and tabs are forbidden, so highlight them.
highlight ForbiddenWhitespace ctermbg=yellow guibg=yellow
match ForbiddenWhitespace /\s\+$\|\t/
" Do not highlight spaces at the end of line while typing on that line.
autocmd InsertEnter * match ForbiddenWhitespace /\t\|\s\+\%#\@<!$/

" ---------
" FUNCTIONS
" ---------
function! SetGMark(mark, filename, line_nr)
  let l:mybuf = bufnr(a:filename, 1)
  call setpos("'".a:mark, [l:mybuf, a:line_nr, 1, 0])
endf

function! VisualHTMLTagWrap()
  let tag = input("Tag to wrap block: ")
  if len(tag) > 0
    normal `>
    if &selection == 'exclusive'
      exe "normal i</".tag.">"
    else
      exe "normal a</".tag.">"
    endif
    normal `<
    exe "normal i<".tag.">"
    normal `<
  endif
endfunction

call SetGMark('A', '~/file.txt', 10)

function! Multiple_cursors_before()
  if exists(':NeoCompleteLock')==2
    exe 'NeoCompleteLock'
  endif
endfunction

function! Multiple_cursors_after()
  if exists(':NeoCompleteUnlock')==2
    exe 'NeoCompleteUnlock'
  endif
endfunction
" Cycle through relativenumber + number, number (only), and no numbering.
function! Cycle_numbering() abort
  if exists('+relativenumber')
    execute {
          \ '00': 'set relativenumber   | set number',
          \ '01': 'set norelativenumber | set number',
          \ '10': 'set norelativenumber | set nonumber',
          \ '11': 'set norelativenumber | set number' }[&number . &relativenumber]
  else
    " No relative numbering, just toggle numbers on and off.
    set number!<CR>
  endif
endfunction

" Cycle through relativenumber + number, number (only), and no numbering.
function! Cycle_colors() abort
  let schemes = ['monokai', 'dracula', 'solarized', 'onedark', 'OceanicNext' ]
  let cur_scheme = eval("g:colors_name")
  let i = index(schemes,cur_scheme)
  let j = (i+1)%len(schemes)
  let next_color = schemes[j]
  execute ("colorscheme " . next_color)
  echo next_color
endfunction

function! s:get_visual_selection()
    " Why is this not a built-in Vim script function?!
    let [line_start, column_start] = getpos("'<")[1:2]
    let [line_end, column_end] = getpos("'>")[1:2]
    let lines = getline(line_start, line_end)
    if len(lines) == 0
        return ''
    endif
    let lines[-1] = lines[-1][: column_end - (&selection == 'inclusive' ? 1 : 2)]
    let lines[0] = lines[0][column_start - 1:]
    return join(lines, "\n")
endfunction



function! Block_comment() abort
  call feedkeys("dO\/*\<esc>pi*\\")
endfunction

" not needed anymore after discovering gq. leave it here incase i want something custom
function! Split_Long_Lines_Max_80() abort
  let curr_line = getline('.')
echo curr_line[80]
endfunction

function! Smart_commenting() abort
  let commentDict= {
        \ 'javascript': '//',
        \ 'javascript.jsx': '//',
        \ 'vim': '"',
        \ 'tmux': '#',
        \ 'fish': '#',
        \ 'bash': '#',
        \ 'ruby': '#',
        \ 'perl': '#',
        \ 'vue': '//',
        \ 'java': '//',
        \ 'yaml': '#',
        \ 'cpp': '//',
        \   }
  echo commentDict
  let curr_line = getline('.')
  let type = &filetype
  if( has_key(commentDict, type))
    let commentChar = commentDict[type]
    let checkForExistingComment = matchstrpos(curr_line, commentChar)
    let res = matchstr(curr_line, '^\s*' . commentChar)
    if (checkForExistingComment[1] > -1 && res != '')
      call feedkeys("0")
      let i = 0
      while i < checkForExistingComment[1]
        call feedkeys("l")
        let i += 1
      endwhile
      for  i in range(1,len(commentChar))
        call feedkeys("xj")
      endfor
    else
      call feedkeys("I" . commentChar . "\<esc>j")
    endif
  else
    echo "filetype '" . &filetype . "' is not configured"
  endif
endfunction

" Zap trailing whitespace.
function! Zap() abort
  let l:pos=getcurpos()
  let l:search=@/
  keepjumps %substitute/\s\+$//e
  let @/=l:search
  nohlsearch
  call setpos('.', l:pos)
endfunction
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
"  let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sql'] = ''
"nmap <C-9> :call VimuxRunCommand("echo test")<cr>
"However, if you want Deoplete to play nice with multiple omnifunctions provided by third-party plugins, you should use these Deoplete-specific settings:
"autocmd BufEnter *.js colorscheme Tomorrow-Night
"autocmd BufEnter *.json colorscheme Tomorrow
"set cursorline
" If you are using a console version of Vim, or dealing
" with a file that changes externally (e.g. a web server log)
" then Vim does not always check to see if the file has been changed.
" The GUI version of Vim will check more often (for example on Focus change),
" and prompt you if you want to reload the file.
"
" There can be cases where you can be working away, and Vim does not
" realize the file has changed. This command will force Vim to check
" more often.
"
" Calling this command sets up autocommands that check to see if the
" current buffer has been modified outside of vim (using checktime)
" and, if it has, reload it for you.
"
" This check is done whenever any of the following events are triggered:
" * BufEnter
" * CursorMoved
" * CursorMovedI
" * CursorHold
" * CursorHoldI
"
" In other words, this check occurs whenever you enter a buffer, move the cursor,
" or just wait without doing anything for 'updatetime' milliseconds.
"
" Normally it will ask you if you want to load the file, even if you haven't made
" any changes in vim. This can get annoying, however, if you frequently need to reload
" the file, so if you would rather have it to reload the buffer *without*
" prompting you, add a bang (!) after the command (WatchForChanges!).
" This will set the autoread option for that buffer in addition to setting up the
" autocommands.
"
" If you want to turn *off* watching for the buffer, just call the command again while
" in the same buffer. Each time you call the command it will toggle between on and off.
"
" WatchForChanges sets autocommands that are triggered while in *any* buffer.
" If you want vim to only check for changes to that buffer while editing the buffer
" that is being watched, use WatchForChangesWhileInThisBuffer instead.
"
command! -bang WatchForChanges                  :call WatchForChanges(@%,  {'toggle': 1, 'autoread': <bang>0})
command! -bang WatchForChangesWhileInThisBuffer :call WatchForChanges(@%,  {'toggle': 1, 'autoread': <bang>0, 'while_in_this_buffer_only': 1})
command! -bang WatchForChangesAllFile           :call WatchForChanges('*', {'toggle': 1, 'autoread': <bang>0})
" WatchForChanges function
"
" This is used by the WatchForChanges* commands, but it can also be
" useful to call this from scripts. For example, if your script executes a
" long-running process, you can have your script run that long-running process
" in the background so that you can continue editing other files, redirects its
" output to a file, and open the file in another buffer that keeps reloading itself
" as more output from the long-running command becomes available.
"
" Arguments:
" * bufname: The name of the buffer/file to watch for changes.
"     Use '*' to watch all files.
" * options (optional): A Dict object with any of the following keys:
"   * autoread: If set to 1, causes autoread option to be turned on for the buffer in
"     addition to setting up the autocommands.
"   * toggle: If set to 1, causes this behavior to toggle between on and off.
"     Mostly useful for mappings and commands. In scripts, you probably want to
"     explicitly enable or disable it.
"   * disable: If set to 1, turns off this behavior (removes the autocommand group).
"   * while_in_this_buffer_only: If set to 0 (default), the events will be triggered no matter which
"     buffer you are editing. (Only the specified buffer will be checked for changes,
"     though, still.) If set to 1, the events will only be triggered while
"     editing the specified buffer.
"   * more_events: If set to 1 (the default), creates autocommands for the events
"     listed above. Set to 0 to not create autocommands for CursorMoved, CursorMovedI,
"     (Presumably, having too much going on for those events could slow things down,
"     since they are triggered so frequently...)
function! WatchForChanges(bufname, ...)
  " Figure out which options are in effect
  if a:bufname == '*'
    let id = 'WatchForChanges'.'AnyBuffer'
    " If you try to do checktime *, you'll get E93: More than one match for * is given
    let bufspec = ''
  else
    if bufnr(a:bufname) == -1
      echoerr "Buffer " . a:bufname . " doesn't exist"
      return
    end
    let id = 'WatchForChanges'.bufnr(a:bufname)
    let bufspec = a:bufname
  end
  if len(a:000) == 0
    let options = {}
  else
    if type(a:1) == type({})
      let options = a:1
    else
      echoerr "Argument must be a Dict"
    end
  end
  let autoread    = has_key(options, 'autoread')    ? options['autoread']    : 0
  let toggle      = has_key(options, 'toggle')      ? options['toggle']      : 0
  let disable     = has_key(options, 'disable')     ? options['disable']     : 0
  let more_events = has_key(options, 'more_events') ? options['more_events'] : 1
  let while_in_this_buffer_only = has_key(options, 'while_in_this_buffer_only') ? options['while_in_this_buffer_only'] : 0
  if while_in_this_buffer_only
    let event_bufspec = a:bufname
  else
    let event_bufspec = '*'
  end
  let reg_saved = @"
  "let autoread_saved = &autoread
  let msg = "\n"
  " Check to see if the autocommand already exists
  redir @"
  silent! exec 'au '.id
  redir END
  let l:defined = (@" !~ 'E216: No such group or event:')
  " If not yet defined...
  if !l:defined
    if l:autoread
      let msg = msg . 'Autoread enabled - '
      if a:bufname == '*'
        set autoread
      else
        setlocal autoread
      end
    end
    silent! exec 'augroup '.id
    if a:bufname != '*'
      "exec "au BufDelete    ".a:bufname . " :silent! au! ".id . " | silent! augroup! ".id
      "exec "au BufDelete    ".a:bufname . " :echomsg 'Removing autocommands for ".id."' | au! ".id . " | augroup! ".id
      exec "au BufDelete    ".a:bufname . " execute 'au! ".id."' | execute 'augroup! ".id."'"
    end
    exec "au BufEnter     ".event_bufspec . " :checktime ".bufspec
    exec "au CursorHold   ".event_bufspec . " :checktime ".bufspec
    exec "au CursorHoldI  ".event_bufspec . " :checktime ".bufspec
    " The following events might slow things down so we provide a way to disable them...
    " vim docs warn:
    "   Careful: Don't do anything that the user does
    "   not expect or that is slow.
    if more_events
      exec "au CursorMoved  ".event_bufspec . " :checktime ".bufspec
      exec "au CursorMovedI ".event_bufspec . " :checktime ".bufspec
    end
  augroup END
  let msg = msg . 'Now watching ' . bufspec . ' for external updates...'
end
" If they want to disable it, or it is defined and they want to toggle it,
if l:disable || (l:toggle && l:defined)
  if l:autoread
    let msg = msg . 'Autoread disabled - '
    if a:bufname == '*'
      set noautoread
    else
      setlocal noautoread
    end
  end
  " Using an autogroup allows us to remove it easily with the following
  " command. If we do not use an autogroup, we cannot remove this
  " single :checktime command
  " augroup! checkforupdates
  silent! exec 'au! '.id
  silent! exec 'augroup! '.id
  let msg = msg . 'No longer watching ' . bufspec . ' for external updates.'
elseif l:defined
  let msg = msg . 'Already watching ' . bufspec . ' for external updates'
end
" this is the annoying message that was appearing when opening vim
" echo msg
let @"=reg_saved
endfunction

let autoreadargs={'autoread':1}
execute WatchForChanges("*",autoreadargs)

