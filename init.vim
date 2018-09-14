"~_~_~_~_~_~_~_~_~_~_~"   ^  ^
"        VIMRC        "
"~_~_~_~_~_~_~_~_~_~_~"

"--------------
" Health Checks:
"
" Python
" -------
"let g:python_host_prog = '/Users/u6064854/.pyenv/versions/neovim2/bin/python'
" General Settings
" ----
"set runtimepath=~/workspace/1ak31sha,$VIMRUNTIME

  if has("autocmd")
  "autocmd Filetype java setlocal omnifunc=javacomplete#Complete
endif
setlocal omnifunc=javacomplete#Complete
setlocal completefunc=javacomplete#CompleteParamsInfo
"set autochdir "automatically change directory if file opened is not in current dir
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
set expandtab
set autoread                    "Reload files changed outside vim
set path+=**
set wildmenu
set gdefault
" Status line
set statusline+=%F
"supposed to tunoff auto-comment, but this actually happens in the after-directory
autocmd FileType * setlocal formatoptions=jql
autocmd Filetype ruby setlocal tabstop=2
autocmd Filetype rb setlocal tabstop=2
autocmd Filetype json setlocal tabstop=2
autocmd Filetype * setlocal tabstop=2
autocmd FileType java set tags=~/.tags

"au FocusGained,BufEnter * :silent! ! " auto reload any chan ges when focus gained or buf enter
"au FocusLost,WinLeave * :silent! noautocmd w " files always saved when leaving a buffer
"let g:ackprg = 'ag --nogroup --nocolor --column'

" -------
" PLUGINS
" -------
call plug#begin('~/.config/nvim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'altercation/solarized'
  Plug 'crusoexia/vim-monokai'
  Plug 'joshdick/onedark.vim'
  Plug 'lambdalisue/suda.vim'
  Plug 'dracula/vim', { 'as': 'dracula' }
  " Syntax
  Plug 'vim-scripts/groovy.vim'
  Plug 'mxw/vim-jsx'
  Plug 'dag/vim-fish'
  Plug 'darthmall/vim-vue'

   "Linting
   Plug 'jvenant/vim-java-imports'
   Plug 'prettier/vim-prettier'
"    Plug 'sbdchd/neoformat'
   Plug 'terryma/vim-smooth-scroll'
  "if has('nvim')
  "  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  "else
  "  Plug 'Shougo/deoplete.nvim'
"    Plug 'roxma/nvim-yarp'
"    Plug 'roxma/vim-hug-neovim-rpc'
"  endif
  "let g:deoplete#enable_at_startup = 1

  Plug 'Shougo/neosnippet.vim'
  Plug 'Shougo/neosnippet-snippets'

  Plug 'rking/ag.vim'
  Plug 'itchyny/lightline.vim' " -Configurability. You can create your own component and easily add to the statusline and the tabline. Orthogonality. The plugin does not rely on the implementation of other plugins. Such plugin crossing settings should be configured by users.
  Plug 'artur-shaik/vim-javacomplete2'
  Plug 'w0rp/ale'
  Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
  Plug 'pangloss/vim-javascript'

  " Navigation
  "Plug 'cloudhead/neovim-fuzzy'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
  Plug 'mhartington/oceanic-next'
  Plug 'ervandew/supertab'

  Plug 'tpope/vim-cucumber'
  Plug 'tpope/vim-fugitive'
  Plug 'tpope/vim-surround'

  Plug 'benmills/vimux'
  Plug 'honza/vim-snippets'

  "COLORS
  Plug 'altercation/vim-colors-solarized'
    "Plug 'Chiel92/vim-autoformat'
  Plug 'terryma/vim-multiple-cursors'
" Plug '~/.config/nvim/scripts/ColDevicons'
  " Plug 'ryanoasis/vim-devicons'
  " Disbaled due to annoying errors, plus i dont htink it was doing anything atm
  "Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
"  Plug 'SirVer/ultisnips'
  " Plug 'neomake/neomake' "| Plug 'dojoteef/neomake-autolint'

call plug#end()
"

" -----------
" MAPPINGS
" -----------
"<Bs> BACK
"<Del> DELETE
let mapleader = " "

" COMMAND MODE
" ------------
" cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
" -> use this instead :w suda://%

" VISUAL
" ------
xnoremap K :move '<-2<CR>gv=gv
xnoremap J :move '>+1<CR>gv=gv
xnoremap <Leader>d y`>p
vnoremap <C-c> "*y
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

" INSERT MODE
" -----------

"inoremap <ctrl> <esc>
" type an opening brace and it auto does the closing, putting you inside the braces
"imap ( ()<C-[>i

" NORMAL MODE
" -----------
nnoremap <Leader>html :-1read $DOTFILES/testhtml.html<CR>1jf>a
nnoremap <leader>pi   :PlugInstall
nnoremap <Leader>r    :source $DOTFILES/init.vim<CR>
nnoremap <Leader>q    :q<CR>
nnoremap <Leader>s    :w<CR>
nnoremap <Leader>d    <S-v>yp
nnoremap <Leader>t    :tabnew<CR>
nnoremap <leader>f    :NERDTreeFind<CR>
nnoremap <silent>     <Leader>z :call Zap()<CR>
nnoremap <silent>     <Leader>c :call Cycle_numbering()<CR>
nnoremap <silent>     <Leader>9 :call Cycle_colors()<CR>
nnoremap <C-p>        :FZF<CR>

<<<<<<< HEAD
nnoremap <Leader>/ I//<esc>j
nnoremap <Leader>" I"<esc>j
nnoremap <Leader>3 I#<esc>j
nnoremap <Leader>8 :call Smart_commenting()<CR>
=======
nnoremap <Leader>r :source ~/workspace/dotfiles/init.vim<CR>
nnoremap <Leader>q :q<CR>
nnoremap <silent> <Leader>z :call Zap()<CR>
"nnoremap <Leader>f :Neoformat<CR> -> removed in favour of prettier
nnoremap <silent> <Leader>c :call Cycle_numbering()<CR>
nnoremap <C-p> :FuzzyOpen<CR>
noremap <Leader>s :w<CR>
nnoremap <Leader>html :-1read ~/workspace/dotfiles/testhtml.html<CR>1jf>a
nnoremap <Leader>d <S-v>yp 
nnoremap <Leader>t :tabnew<CR> 
nnoremap <leader>f :NERDTreeFind<CR>

" TODO return the cursor position back to where it was
nnoremap <Leader>/ I//<esc>j
nnoremap <Leader>" I"<esc>j
nnoremap <Leader>3 I#<esc>j 

" -----------
" VISUAL MODE
" -----------
"vnoremap <C-c> "*y
vnoremap <C-c> "+y
vnoremap <Leader>c "+y

>>>>>>> ubuntu

" ----------------------
" PLUGIN CONFIGURATIONS
" ----------------------

" FZF "
" -----
" Default fzf layout
" - down / up / left / right
"    let g:fzf_layout = { 'down': '~40%' }
let g:fzf_layout = { 'up': '~40%' }
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'

" PRETTIER "
" ----------
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
"let g:prettier#config#semi = 'false'
"let g:prettier#config#bracket_spacing = 'true'

"Smooth Scroll "
"---------------
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>

" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-w>     <Plug>(neosnippet_expand_or_jump)
smap <C-w>     <Plug>(neosnippet_expand_or_jump)
xmap <C-w>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
let g:neosnippet#snippets_directory='~/workspace/1ak31sha/vimsnips/'

" AG - the silver surfer "
" ------------------------
let g:ag_working_path_mode="r"


" ALE "
" -----
let b:ale_linters = ['eslint']

" ----------------------
" Autoformat
" ----------------------
"noremap <F3> :Autoformat<CR>
"let g:autoformat_autoindent = 0
"let g:autoformat_retab = 0
"let g:autoformat_remove_trailing_spaces = 0
"au BufWrite * :Autoformat


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
"let g:deoplete#enable_at_startup = 1
"let g:deoplete#omni#functions = {}
"let g:deoplete#omni#functions.javascript = [
"  \ 'tern#Complete',
"  \ 'jspc#omni'
"\]

" ---------
" Nerd Tree
" ---------
"  m    - menu
"  C-b  - open sidebar
"  C-ww - sidebar focus toggle
"
nnoremap <C-q> :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree "// Open the tree by default
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMapOpenInTab='t'

" ---------
" Neomake
" ---------
"jcall neomake#configure#automake('n')

" -------
" CTRL-P
"--------
let g:ctrlp_show_hidden = 1

" -----------
" UltiSnips
" -----------
"let g:UltiSnipsExpandTrigger="<tab>"

let g:UltiSnipsExpandTrigger='<leader>e'
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/workspace/1ak31sha/vimsnips"
" ---------
" AUTOCMD
" ---------
"autocmd! BufWritePost,BufEnter * Neomake
autocmd BufNewFile,BufRead *.sharedrc   set syntax=perl
" Jump to the main window.
autocmd VimEnter * wincmd p
"au Bufread,BufNewFile *.feature set filetype=gherkin
"au! Syntax gherkin source ~/.vim/syntax/cucumber.vim

" Code Folding (i didnt like it)
"augroup javascript_folding
"    au!
"    au FileType javascript setlocal foldmethod=syntax
"  augroup END


"filetype plugin indent on
if has("nvim")
  " Make escape work in the Neovim terminal.
  tnoremap <Esc> <C-\><C-n>

  " Make navigation into and out of Neovim terminal splits nicer.
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l

  " I like relative numbering when in normal mode.
  autocmd TermOpen * setlocal conceallevel=0 colorcolumn=0 relativenumber modifiable

  " Prefer Neovim terminal insert mode to normal mode.
  autocmd BufEnter term://* startinsert
endif

" --------
"  Airline
" --------
let g:airline_powerline_fonts = 1


syntax on
set termguicolors


" GUI MODE ONLY
"" Visual Mode Orange Background, Black Text
"hi Visual          guifg=#000000 guibg=#FD971F
"
"" Default Colors for CursorLine
"highlight CursorLine guibg=#3E3D32
"highlight Cursor guibg=#A6E22E;
"
"" Change Color when entering Insert Mode
"autocmd InsertEnter * highlight  CursorLine guibg=#323D3E
"autocmd InsertEnter * highlight  Cursor guibg=#00AAFF;
"
"" Revert Color to default when leaving Insert Mode
"autocmd InsertLeave * highlight  CursorLine guibg=#3E3D32
"autocmd InsertLeave * highlight  Cursor guibg=#A6E22E;

" -------------
" COLOR SCHEMES
" -------------
"autocmd BufEnter * colorscheme default
colorscheme monokai
"colorscheme inkpot
"color dracula
"colorscheme blue

"colorscheme molokai
syntax enable
" set background=light
" colorscheme solarized
"let g:neomake_autolint_enabled

" Trailing whitespace and tabs are forbidden, so highlight them.
highlight ForbiddenWhitespace ctermbg=red guibg=red
match ForbiddenWhitespace /\s\+$\|\t/
" Do not highlight spaces at the end of line while typing on that line.
autocmd InsertEnter * match ForbiddenWhitespace /\t\|\s\+\%#\@<!$/

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
  let schemes = ['monokai' , 'dracula', 'solarized', 'onedark' ]
  let cur_scheme = eval("g:colors_name")
  let i = index(schemes,cur_scheme)
  let j = (i+1)%len(schemes)
  let next_color = schemes[j]
  execute ("colorscheme " . next_color)
  echo next_color
endfunction

function! Smart_commenting() abort
  let commentDict= {
        \  'javascript': '//',
        \ 'java': '//',
        \ 'tmux': '#',
        \ 'bash': '#',
        \ 'vim': '"',
        \ 'vue': '//',
        \   }
echo commentDict
  let curr_line = getline('.')
  echo curr_line
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
 " let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
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

" this shit doesnt work. i want my tab color brighter and more apparent
hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
hi TabLine ctermfg=Blue ctermbg=Yellow
hi TabLineSel ctermfg=Red ctermbg=Yellow
hi Title ctermfg=LightBlue ctermbg=Magenta


"let k = 5
"echo

