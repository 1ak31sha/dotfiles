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
" ..ANYFOLD
" ..ALE
" ..Closetag
" ..CTRL-P
" ..DevIcons
" ..Deoplete
" ..FZF_config
" ..Git_Gutter
" ..Lightline
" ..LocalRC
" ..Nerd_Tree
" ..Neosnippet
" ..Prettier
" ..UltiSnips
" ..vim_emoji
" ..vim_javascript
" FUNCTIONS
" TERMINAL_MODE
"
" ~------------------~ "


" --
" ABREVIATIONS
" --

" iabbrev div <div>

" -----------
" MAPPINGS
" -----------

" Here are the vim defaults for reference

"a - insert to the right
"b - back a work
"c - change
"d - delete
"e - end of a word
"f - find
"gg - go to beginning
"G - go to end
"ge - go backward to end of the word
"g= - check spelling
"gz - add to dictionary
"gq - wrap text
"gJ - join lines - tranform block of lines into one line
"g_ - like $ but doesnt select the newline
"h - left
"i - insert left
"j - down
"k - up
"l - right
"o - insert below
"O - insert above
"p - paste
"q - recording
"r - replace
"s - replace and insert
"t - Till. similar to find
"u - undo. :red[o] for redo
"U - undo all changes on a line - overrideen
nmap U :redo<CR>
"v - visual mode
"w - a word ( no /-^...)
"W - blackspace delimited word
"x - delete char
"y - yank
"zz - quit?

" this is the spacebar
let mapleader = " "

" mapping : to ; would require changing all mappings in this vimrc that use :, hence i just did one
" way for now
nmap ; :
"nmap 1 $


" NORMAL MODE CTRL_MAPPINGS
" -------------

" <C-a> // reserved by tmux prefix
" <C-b> // toggle nerdTree
" <C-c> copy to os clipboard
" nmap <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
" <C-e> scroll without moving cursor
nmap <C-f> viw<C-c>:Ag <CR>
" <C-g>
" <C-h> - reserved for Karabiner elements <-
" <C-j> - reserved for Karabiner elements <down arrow>
" <C-k> - reserved for Karabiner elements ^
" <C-l> - reserved for Karabiner elements ->
nmap <C-i> :A<CR>
" <C-j
" <C-k
" <C-m>
" <C-n> multiple cursors
" <C-o>
nmap <C-p> :FZF<CR>
" <C-q> nerdTree focus
" <C-r> redo

nmap <C-s> :PresentingStart<CR>
" <C-t>
" nmap <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
" <C-v
" <C-w> with arrow key -> move buffers
" <C-x
" <C-y> scroll up without moving cursor
" <C-z> quit without asking
nmap <C-/> :call Smart_commenting()<CR>


" LEADER_MAPPINGS
" ---------------

" search for text in project ysing Ag
nmap <leader>a :Ag<space>

" goto the alternate file - tpope projectionist
nmap <leader>b :A<CR>

" cycles the line number settings
nmap <Leader>c :call Cycle_numbering()<CR>

" duplicate the current line
nmap <Leader>d <S-v>yp

" replace :emojis: with actual emoji
nmap <leader>e :%s/:\([^:]\+\):/\=emoji#for(submatch(1), submatch(0))/g<CR>

" locates current file in NERDTree browser
nmap <leader>f :NERDTreeFind<CR>

" used to Close Ag buffers
nmap <leader>g <C-w>j:q<CR>
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
nmap <leader>s :call SavePrint()<CR>

nmap <Leader>t :tabnew<CR>
nmap    <leader>u :call ReloadKeepingSpot2()<CR>
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



" VISUALl CTRL MAPPINGS
xmap <Leader>d    y`>p
vmap <Leader>< <Esc>:call VisualHTMLTagWrap()<CR>
vmap <C-c>        "*y
vmap <C-x>        "*d
vmap <C-r>        "hy:%s/<C-r>h//gc<left><left><left>
vmap <C-\>            di/*<CR>*/<CR><esc>kkp
vmap <C-s>            :call Split_Long_Lines_Max_80()<CR>

xmap <S-j>            :move '>+1<CR>gv=gv
xmap <S-k>            :move '<-2<CR>gv=gv
vmap <S-o>            di{/*<CR>*/}<CR><esc>kkp
nmap <S-h> zH
nmap <S-k> :call moveAndInsert(0)<CR>
nmap <S-j> :call moveAndInsert(1)<CR>
nmap <S-l> zL

" COC MAPS
" --------
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
"nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
"" Manage extensions.
"nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
"" Show commands.
"nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
"" Find symbol of current document.
"nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
"" Search workspace symbols.
"nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
"" Do default action for next item.
"nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
"" Do default action for previous item.
"nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
"" Resume latest coc list.
"nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" INSERT MODE
" -----------

""" TESTING auto piars***
" inoremap {      {}<Left>
" inoremap {<CR>  {<CR>}<Esc>O
" inoremap {{     {
" inoremap {}     {}
" nmap <C-m> :call UltiSnips#JumpForwards


" https://vim.fandom.com/wiki/Automatically_append_closing_characters


"inoremap <ctrl> <esc>
" type an opening brace and it auto does the closing, putting you inside the
" braces
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

Plug 'mhinz/vim-startify'

" Code Pairing
" ------------
Plug 'FredKSchott/CoVim'
" alternative to coVim i still need to try
"https://github.com/Floobits/floobits-vim

" Color Schemes
" -------------
Plug 'crusoexia/vim-monokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
Plug 'Addisonbean/Vim-Xcode-Theme'


  Plug 'vim-scripts/AfterColors.vim'
   Plug 'mkitt/tabline.vim'
"
   Plug 'itchyny/lightline.vim' " -Configurability. You can create your own
"   " component and easily add to the statusline and the tabline. Orthogonality. The
"   " plugin does not rely on the implementation of other plugins. Such plugin
"   " crossing settings should be configured by users.  Plug 'itchyny/vim-gitbranch'
"   " Plug 'rbong/vim-crystalline'
"   "Plug 'https://github.com/gko/vim-coloresque'
   Plug 'https://github.com/ap/vim-css-color'
"
"
"   " Java
"   " ----
   Plug 'vim-scripts/yavdb'
   Plug 'vmarquez/jvdb'
"   "help vebugger-configuration
   Plug 'idanarye/vim-vebugger'
"
"   " Ruby
"   " ----
   Plug 'vim-ruby/vim-ruby'
"
"   " Syntax
"   " ------
   Plug 'junegunn/vim-emoji'
   Plug 'vim-scripts/groovy.vim'
   Plug 'mxw/vim-jsx'
   Plug 'dag/vim-fish'
   Plug 'darthmall/vim-vue'
   Plug 'tpope/vim-cucumber'
   Plug 'artur-shaik/vim-javacomplete2'
"   " Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
"   "// not used, see deoplete below
"   "Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
"   " Plug 'pangloss/vim-javascript'

    " this plugin has performance issues
   "Plug 'othree/yajs.vim'
   Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
   Plug 'tarekbecker/vim-yaml-formatter'  " pip3 install pyyaml
"
"   " Plug 'jiangmiao/auto-pairs' - not bad but ended up being annoying when trying
"   " to add brackets at the end, it would not insert becuase it think i want to
"   " jump out
   Plug 'tpope/vim-commentary'
"
"   " Typescript :(
"   " -------------
"   " Plug 'leafgarland/typescript-vim'
"   " Plug 'ianks/vim-tsx'
   Plug 'HerringtonDarkholme/yats.vim'
"   " Plug 'mhartington/nvim-typescript', {'do': ':!install.sh \| UpdateRemotePlugins'}
"
"   " Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
"   "https://github.com/mhartington/nvim-typescript/issues/139
"   " cd /Users/mark/.cache/vimfiles/repos/github.com/mhartington/nvim-typescript
"   " cd .conf/nvim/nvim-typescript
"   "nvm use system
"   "install.sh
"
"   " Plug 'Shougo/denite.nvim'
"
"
"   " Linting
"   " ------
   Plug 'w0rp/ale'
"   "Plug 'vim-syntastic/syntastic'
   Plug 'jvenant/vim-java-imports'
   Plug 'prettier/vim-prettier'
"
"   " Navigation
"   " ----------
"   Plug 'christoomey/vim-tmux-navigator'
   Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
   Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
"   Plug 'benmills/vimux'
"
"   " conflicting with coc
"   "Plug 'ervandew/supertab'
   Plug 'airblade/vim-rooter'
"
"   " Git
"   " ---
   Plug 'tpope/vim-fugitive'
   Plug 'Xuyuanp/nerdtree-git-plugin'
"
"   " Tools
"   " -----
"   " Plug 'pseewald/vim-anyfold'
"   ":CocInstall coc-json coc-tsserver
   Plug 'neoclide/coc.nvim', {'branch': 'release'}
   Plug 'rking/ag.vim'   " silver searcher
   Plug 'lambdalisue/suda.vim' " get sudo on the file
"   " Plug 'terryma/vim-smooth-scroll'
   Plug 'psliwka/vim-smoothie'
   Plug 'ashisha/image.vim'
"   "Plug 'https://github.com/szw/vim-tags'
   Plug 'webastien/vim-ctags'
   Plug 'thinca/vim-localrc'
   Plug 'tpope/vim-projectionist'
   Plug 'chrisbra/csv.vim'
   Plug 'airblade/vim-gitgutter'
   Plug 'vim-scripts/DrawIt'
"
"   " Text maniulation
"   " ----------------
   Plug 'terryma/vim-multiple-cursors'
   Plug 'tpope/vim-surround'
   Plug 'alvan/vim-closetag'
   Plug 'othree/xml.vim'
   Plug 'adelarsq/vim-matchit'
"
"   " gC in normal mode, <C-g>c in insert mode
    " i never use it since vim has U. so disabling for now
"   "Plug 'tpope/vim-capslock'
"   "Plug 'jasonwoodland/vim-html-closer' -> only works on html files, no jsx
"   "Plug 'honza/vim-snippets'
"   "Plug 'Shougo/neosnippet.vim'
"   "Plug 'Shougo/neosnippet-snippets'
"
"   " :help deoplete-options
"   if has('nvim')
"     "conflicting with coc
"     "Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"   else
"     "Plug 'Shougo/deoplete.nvim'
"     Plug 'roxma/nvim-yarp'
"     Plug 'roxma/vim-hug-neovim-rpc'
"   endif
"   "let g:deoplete#enable_at_startup = 1
"
"   " this is the tern plugin that for sure is needed
"   "conflict fwith coc?
"   Plug 'carlitux/deoplete-ternjs' , { 'do': 'npm install -g tern' }

"   " this tern didnt seem to work
"   " Plug 'ternjs/tern_for_vim'
"
   Plug 'SirVer/ultisnips'
   Plug 'honza/vim-snippets'
   Plug 'ryanoasis/vim-devicons'
"
"
"  ---------
"  NOT USING
"  ---------

"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'

"https://github.com/andymass/vim-matchup/

"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"causes big lag. need to try removing custom colors



call plug#end()
"
" ----------------------
" PLUGIN_CONFIGURATIONS
" ----------------------

" Crystalline
function! StatusLine(current, width)
  let l:s = ''

  if a:current
    let l:s .= crystalline#mode() . crystalline#right_mode_sep('')
  else
    let l:s .= '%#CrystallineInactive#'
  endif
  let l:s .= ' %f%h%w%m%r '
  if a:current
    let l:s .= crystalline#right_sep('', 'Fill') . ' %{fugitive#head()}'
  endif

  let l:s .= '%='
  if a:current
    let l:s .= crystalline#left_sep('', 'Fill') . ' %{&paste ?"PASTE ":""}%{&spell?"SPELL ":""}'
    let l:s .= crystalline#left_mode_sep('')
  endif
  if a:width > 80
    let l:s .= ' %{&ft}[%{&enc}][%{&ffs}] %l/%L %c%V %P '
  else
    let l:s .= ' '
  endif

  return l:s
endfunction

function! TabLine()
  let l:vimlabel = has('nvim') ?  ' NVIM ' : ' VIM '
  return crystalline#bufferline(2, len(l:vimlabel), 1) . '%=%#CrystallineTab# ' . l:vimlabel
endfunction

let g:crystalline_enable_sep = 1
let g:crystalline_statusline_fn = 'StatusLine'
let g:crystalline_tabline_fn = 'TabLine'
let g:crystalline_theme = 'onedark'

set showtabline=2
set guioptions-=e
set laststatus=2


" AG - the silver surfer
" ----------------------
let g:ag_working_path_mode="r"

" ANYFOLD
" -------
filetype plugin indent on " required
" autocmd Filetype * AnyFoldActivate               " activate for all filetypes
" or
" autocmd Filetype <your-filetype> AnyFoldActivate " activate for a specific filetype

set foldlevel=0  " close all folds
" or
" set foldlevel=99 " Open all folds<Paste>


" ALE
" -----
"let g:ale_linters = ['eslint']
"let b:ale_linters = ['eslint']
let b:ale_fixers = ['prettier', 'eslint', 'stylelint']
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver'],
\   'css': ['stylelint'],
\}
" let g:ale_linters = {'jsx': ['stylelint', 'eslint']}
" autocmd BufRead,BufNewFile ~/workspace/emcm-ui/* setlocal
" let g:ale_javascript_eslint_options='-c ~/workspace/emcm-ui/packages/eslint-config/eslintrc.json'
" let g:ale_javascript_eslint_options='-c ~/workspace/emcm-ui/.eslintrc.js'

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
" Use smartcase.
"call deoplete#custom#option('smart_case', v:true)

" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
" inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

" <CR>: close popup and save indent.
" inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
" function! s:my_cr_function() abort
  " return deoplete#close_popup() . "\<CR>"
" endfunction


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
set updatetime=100
let g:gitgutter_sign_added = emoji#for('hatching_chick')
let g:gitgutter_sign_modified = emoji#for('nail_care')
let g:gitgutter_sign_removed = emoji#for('broken_heart')
let g:gitgutter_sign_modified_removed = emoji#for('broken_heart')
set completefunc=emoji#complete

" Lightline
" ---------
let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ 'component': {
      \   'helloworld': 'Hello, world!'
      \ },
      \ }
"let g:lightline = {
"  \   'colorscheme': 'onedark'
"  \}
" let g:lightline = {
      " \ 'enable': {
      " \   'tabline': 0
      " \ },
      " \ 'component_function': {
      " \   'gitbranch': 'gitbranch#name'
      " \ },
      " \ }

"LocalRC
let g:localrc_filename = '.vimrc'

" Nerd_Tree
" ---------
nnoremap <C-q> :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
" nnoremap <C-b> :NERDTreeToggle %<CR>    <- try to make new tabs not in a new directory root. didnt work
let NERDTreeShowHidden=1
let NERDTreeMapOpenInTab='t'
let NERDTreeMinimalUI = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeDirArrows = 1

" close vim if the last buffer open is just a nerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" try to keep new tabs with main directory root. didnt work
" autocmd BufEnter * lcd %:p:h

"let g:NERDTreeSyntaxDisableDefaultExtensions = 1
"let g:NERDTreeSyntaxEnabledExtensions = ['js', 'jsx']

"autocmd vimenter * NERDTree "// Open the tree by default
"let g:NERDTreeLimitedSyntax = 1
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeHighlightCursorline = 0
let g:NERDTreeWinSize = 80

"let g:NERDTreeDisableFileExtensionHighlight = 1
"let g:NERDTreeDisableExactMatchHighlight = 1
"let g:NERDTreeDisablePatternMatchHighlight = 1
"let g:NERDTreeSyntaxDisableDefaultExtensions = 1
"let g:NERDTreeSyntaxEnabledExtensions = ['css', 'less', 'js']

"let g:NERDTreeDisableExactMatchHighlight = 1
"let g:NERDTreeDisablePatternMatchHighlight = 1


let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let g:pink = "f92672"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"

let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'
let s:monokai_blue = "66D9EF"
let s:monokai_green = "A6E22E"
let s:monokai_red = "F92672"
let s:monokai_pumpkinSpice = "FD971F"
" Vim-nerdtree-syntax-highlight
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
"let g:NERDTreeExactMatchHighlightColor['react.jsx'] = g:pink
let g:NERDTreeExactMatchHighlightColor['Dockerfile'] = s:monokai_blue
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error
let g:NERDTreePatternMatchHighlightColor = {}
let g:NERDTreePatternMatchHighlightColor['.*stories\.js$'] = g:pink
let g:NERDTreePatternMatchHighlightColor['.*rehydrator\.js$'] = s:salmon
let g:NERDTreePatternMatchHighlightColor['.*stories\.tsx$'] = g:pink
let g:NERDTreePatternMatchHighlightColor['.*rehydrator\.tsx$'] = s:salmon
let g:NERDTreePatternMatchHighlightColor['.*ignore$'] = s:git_orange
let g:NERDTreePatternMatchHighlightColor['.*rc*$'] = s:salmon
let g:NERDTreePatternMatchHighlightColor['.prettierrc\.yaml$'] = s:salmon
let g:NERDTreePatternMatchHighlightColor['.bash_profile$'] = s:salmon
let g:NERDTreePatternMatchHighlightColor['.gitconfig$'] = s:git_orange
let g:NERDTreePatternMatchHighlightColor['.*\.conf$'] = s:monokai_blue
let g:NERDTreePatternMatchHighlightColor['vim_spelling$'] = s:green
let g:NERDTreePatternMatchHighlightColor['.*component\.ts*$'] = s:monokai_green
let g:NERDTreePatternMatchHighlightColor['.*spec\.ts*$'] = s:rspec_red
let g:NERDTreePatternMatchHighlightColor['.*module\.ts*$'] = s:monokai_blue
let g:NERDTreeExactMatchHighlightColor = {} " this line is needed to avoid error

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


"  vim_emoji
"" ---------
set completefunc=emoji#complete
" for e in emoji#list()
  " call append(line('$'), printf('%s (%s)', emoji#for(e), e))
" endfor


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

" NERDTreeFind command would not work until nerdtree was opened once, so i open
" and close it upon opening vim
autocmd VimEnter * NERDTree
autocmd VimEnter * NERDTreeToggle

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

set timeoutlen=1000

set ttimeoutlen=0

set runtimepath+=$DOTFILES/vimsnips
set nowrap
set fileformat=unix
set nocursorline
set encoding=utf8
set nocp   " 'compatible' is not set
set noswapfile
set nopaste
set guicursor=n-v-c-sm:block,i-ci-ve:ver55,r-cr-o:hor20
set number

" didnt use it often to jump, and line numbers ended up being more useful when debugging
" set relativenumber
set shiftwidth=2
set tabstop=2

" puts spaces for tabs
" sometimes it loses this setting...haven't figured out how but you can manually :setexpand and then :retab
set expandtab
set autoread                    "Reload files changed outside vim
set path+=**
set wildmenu
set gdefault

" status line
set statusline+=%F
set showtabline=2

" supposed to tunoff auto-comment, but this actually happens in the after-directory
let g:javascript_plugin_jsdoc = 1
set conceallevel=0
set termguicolors
set cuc cul"
" the length to be used for the gq command that splits lines
set textwidth=80

" no highlight on search
set nohlsearch


syntax on

""""
" COC settings
"""
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" ----
" JAVA
" ----
setlocal omnifunc=javacomplete#Complete

" disabling cuase...i dont really use java anymore and only one completefunc can be assigned.
"setlocal completefunc=javacomplete#CompleteParamsInfo

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
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


function! InvertArgs()
    " Get the arguments of the current line (remove the spaces)
    let args=substitute(matchstr(getline('.'), '(\zs.*\ze)'), '\s', '', 'g')

    " Split the arguments as a list and reverse the list
    let argsList=split(args, ',')
    call reverse(argsList)

    " Join the reversed list with a comma and a space separing the arguments
    let invertedArgs=join(argsList, ', ')

    " Remove the old arguments and put the new list
    execute "normal! 0f(ci(" . invertedArgs
  endfunction

" todo
function! ReloadKeepingSpot2() abort
    let curr_line = getline('.')
    source $DOTFILES/init.vim
  "call feedkeys(":source $DOTFILES/init.vim")
  call feedkeys(curr_line . "j")
endf

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
          \ '00': 'set norelativenumber | set number',
          \ '01': 'set relativenumber   | set number',
          \ '10': 'set norelativenumber | set nonumber',
          \ '11': 'set norelativenumber | set number' }[&number . &relativenumber]
  else
    " No relative numbering, just toggle numbers on and off.
    set number!<CR>
  endif
endfunction

" Cycle through relativenumber + number, number (only), and no numbering.
function! Cycle_colors() abort
  let schemes = ['monokai', 'dracula', 'OceanicNext', 'gruvbox', 'xcode']
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

function! SavePrint() abort
  call feedkeys(":w\<CR>:echo 'Lakeisha saved <3 ' . strftime(\"%Y-%m-%d %a %T\")\<CR>")
endfunction
function! Smart_commenting() abort
  let commentDict= {
        \ 'javascript': '//',
        \ 'typescript': '//',
        \ 'javascript.jsx': '//',
        \ 'typescript.tsx': '//',
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
      call feedkeys("I" . commentChar . "\<space>\<esc>j")
    endif
  else
    echo "\"filetype '" . &filetype . "' is not configured\" -- Lakeisha"
  endif
endfunction

function! SetMarkForVIMRC() abort
 let l:name=

endfunction

" Zap trailing whitespace.
function! Zap() abort
  let l:pos=getcurpos()
  let l:search=@/
  keepjumps %substitute/\s\+$//e
  let @/=l:search
  nohlsearch
  call setpos('.', l:pos)
  call feedkeys(":set expandtab\<CR>")
  call feedkeys(":retab\<CR>")
endfunction
"let g:neomake_javascript_jscs_maker = {
"    \ 'exe': 'jscs',
"    \ 'args': ['--no-color', '--preset', 'airbnb', '--reporter', 'inline', '--esnext'],
"    \ 'errorformat': '%f: line %l\, col %c\, %m',
"    \ }

" this was used a tr to override eslint config location
" let g:ale_javascript_eslint_options='-c ./packages/eslint-config/eslintrc.json'

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

