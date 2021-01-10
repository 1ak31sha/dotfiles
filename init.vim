" LEGEND
" ------

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
" ..RltvNmbr
" ..UltiSnips
" ..vim_emoji
" ..vim_javascript
" FUNCTIONS
" TERMINAL_MODE

" NOTES
"
" the jsx plugins pangloss/maxmellon have introduced some lag in moving the cursor by holding j or k. but it gives indentation, so it may be worth it. trying it out for now


" CHEATSHEET
" Start hacking
" let name = "John"
" echo "Hello, " . name
" You can either put this in a script (script.vim) and run it (:source script.vim), or you can type the commands individually in normal mode as :let and :echo.

" Learn by example
" function! SuperTab()
"   let l:part = strpart(getline('.'),col('.')-2,1)
"   if (l:part =~ '^\W\?$')
"       return "\<Tab>"
"   else
"       return "\<C-n>"
"   endif
" endfunction

" imap <Tab> <C-R>=SuperTab()<CR>
" Here’s another example with functions, variables and mapping.

" #Variables
" Defining
" let var = "hello"
" Variable prefixes
" let g:ack_options = '-s -H'    " g: global
" let s:ack_program = 'ack'      " s: local (to script)
" let l:foo = 'bar'              " l: local (to function)
" The s: prefix is also available in function names. See :help local-variables

" Other prefixes
" let w:foo = 'bar'    " w: window
" let b:state = 'on'   " b: buffer
" let t:state = 'off'  " t: tab
" echo v:var           " v: vim special
" let @/ = ''          " @  register (this clears last search pattern)
" echo $PATH           " $  env
" Vim options
" echo 'tabstop is ' . &tabstop
" if &insertmode
" echo &g:option
" echo &l:option
" Prefix Vim options with &

" Operators
" a + b             " numbers only!
" 'hello ' . name   " concat
" let var -= 2
" let var += 5
" let var .= 'string'   " concat
" #Strings
" Strings
" let str = "String"
" let str = "String with \n newline"

" let literal = 'literal, no \ escaping'
" let literal = 'that''s enough'  " double '' => '

" echo "result = " . re   " concatenation
" Also see :help literal-string and :help expr-quote. See: Strings

" String functions
" strlen(str)    " length
" len(str)       " same
" strchars(str)  " character length

" split("one two three")       "=> ['one', 'two', 'three']
" split("one.two.three", '.')  "=> ['one', 'two', 'three']

" join(['a', 'b'], ',')  "=> 'a,b'

" tolower('Hello')
" toupper('Hello')
" Also see :help functions See: String functions

" #Functions
" Functions
" " prefix with s: for local script-only functions
" function! s:Initialize(cmd, args)
"   " a: prefix for arguments
"   echo "Command: " . a:cmd

"   return true
" endfunction
" See: Functions

" Namespacing
" function! myplugin#hello()
" Calling functions
" call s:Initialize()
" call s:Initialize("hello")
" Consuming return values
" echo "Result: " . s:Initialize()
" Abortable
" function! myfunction() abort
" endfunction
" Aborts when an error occurs.

" Var arguments
" function! infect(...)
"   echo a:0    "=> 2
"   echo a:1    "=> jake
"   echo a:2    "=> bella

"   for s in a:000  " a list
"     echon ' ' . s
"   endfor
" endfunction

" infect('jake', 'bella')
" See :help function-argument. See: Var arguments

" #Loops
" for s in list
"   echo s
"   continue  " jump to start of loop
"   break     " breaks out of a loop
" endfor
" while x < 5
" endwhile
" #Custom commands
" Custom commands
" command! Save :set fo=want tw=80 nowrap
" Custom commands start with uppercase letters. The ! redefines a command if it already exists.

" Commands calling functions
" command! Save call <SID>foo()
" function! s:foo()
"   ...
" endfunction
" Commands with arguments
" command! -nargs=? Save call script#foo(<args>)
" -nargs=0  0 arguments, default
" -nargs=1  1 argument, includes spaces
" -nargs=?  0 or 1 argument
" -nargs=*  0+ arguments, space separated
" -nargs=+  1+ arguments, space reparated
" #Flow
" Conditionals
" let char = getchar()
" if char == "\<LeftMouse>"
"   " ...
" elseif char == "\<RightMouse>"
"   " ...
" else
"   " ...
" endif
" Truthiness
" if 1 | echo "true"  | endif
" if 0 | echo "false" | endif
" if 1       "=> 1 (true)
" if 0       "=> 0 (false)
" if "1"     "=> 1 (true)
" if "456"   "=> 1 (true)
" if "xfz"   "=> 0 (false)
" No booleans. 0 is false, 1 is true. See: Truthiness

" Operators
" if 3 > 2
" if a && b
" if (a && b) || (c && d)
" if !c
" See :help expression-syntax. See: Operators

" Strings
" if name ==# 'John'     " case-sensitive
" if name ==? 'John'     " case-insensitive
" if name == 'John'      " depends on :set ignorecase

" " also: is#, is?, >=#, >=?, and so on
" Identity operators
" a is b
" a isnot b
" Checks if it’s the same instance object.

" Regexp matches
" "hello" =~ 'xx*'
" "hello" !~ 'xx*'
" "hello" =~ '\v<\d+>'
" \v enables “extended” regex mode which allows word boundary (<>), +, and more.

" Single line
" if empty(a:path) | return [] | endif
" a ? b : c
" Use | to join lines together.

" Boolean logic
" if g:use_dispatch && s:has_dispatch
"   ···
" endif
" #Lists
" Lists
" let mylist = [1, two, 3, "four"]

" let first = mylist[0]
" let last  = mylist[-1]

" " Suppresses errors
" let second = get(mylist, 1)
" let second = get(mylist, 1, "NONE")
" Functions
" len(mylist)
" empty(mylist)

" sort(list)
" let sortedlist = sort(copy(list))

" split('hello there world', ' ')
" Concatenation
" let longlist = mylist + [5, 6]
" let mylist += [7, 8]
" Sublists
" let shortlist = mylist[2:-1]
" let shortlist = mylist[2:]     " same

" let shortlist = mylist[2:2]    " one item
" Push
" let alist = [1, 2, 3]
" let alist = add(alist, 4)
" Map
" call map(files, "bufname(v:val)")  " use v:val for value
" call filter(files, 'v:val != ""')
" #Dictionaries
" Dictionaries
" let colors = {
"   \ "apple": "red",
"   \ "banana": "yellow"
" }

" echo colors["a"]
" echo get(colors, "apple")   " suppress error
" See :help dict

" Using dictionaries
" remove(colors, "apple")
" " :help E715
" if has_key(dict, 'foo')
" if empty(dict)
" keys(dict)
" len(dict)
" max(dict)
" min(dict)
" count(dict, 'x')
" string(dict)
" map(dict, '<>> " . v:val')
" Iteration
" for key in keys(mydict)
"   echo key . ': ' . mydict(key)
" endfor
" Prefixes
" keys(s:)
" Prefixes (s:, g:, l:, etc) are actually dictionaries.

" Extending
" " Extending with more
" let extend(s:fruits, { ... })
" #Casting
" str2float("2.3")
" str2nr("3")
" float2nr("3.14")
" #Numbers
" Numbers
" let int = 1000
" let int = 0xff
" let int = 0755   " octal
" See :help Number. See: Numbers

" Floats
" let fl = 100.1
" let fl = 5.4e4
" See :help Float

" Arithmetic
" 3 / 2     "=> 1, integer division
" 3 / 2.0   "=> 1.5
" 3 * 2.0   "=> 6.0
" Math functions
" sqrt(100)
" floor(3.5)
" ceil(3.3)
" abs(-3.4)

" sin() cos() tan()
" sinh() cosh() tanh()
" asin() acos() atan()
" #Vim-isms
" Execute a command
" execute "vsplit"
" execute "e " . fnameescape(filename)
" Runs an ex command you typically run with :. Also see :help execute. See: Execute a command

" Running keystrokes
" normal G
" normal! G   " skips key mappings

" execute "normal! gg/foo\<cr>dd"
" Use :normal to execute keystrokes as if you’re typing them in normal mode. Combine with :execute for special keystrokes. See: Running keystrokes

" Getting filenames
" echo expand("%")      " path/file.txt
" echo expand("%:t")    " file.txt
" echo expand("%:p:h")  " /home/you/path/file.txt
" echo expand("%:r")    " path/file
" echo expand("%:e")    " txt
" See :help expand

" Silencing
" silent g/Aap/p
" Suppresses output. See :help silent

" Echo
" echoerr 'oh it failed'
" echomsg 'hello there'
" echo 'hello'

" echohl WarningMsg | echomsg "=> " . a:msg | echohl None
" Settings
" set number
" set nonumber
" set number!     " toggle
" set numberwidth=5
" set guioptions+=e
" Prompts
" let result = confirm("Sure?")
" execute "confirm q"
" Built-ins
" has("feature")  " :h feature-list
" executable("python")
" globpath(&rtp, "syntax/c.vim")

" exists("$ENV")
" exists(":command")
" exists("variable")
" exists("+option")
" exists("g:...")
" #Mapping
" Mapping commands
" nmap
" vmap
" imap
" xmap
" nnoremap
" vnoremap
" inoremap
" xnoremap
" ...
" Explanation
" [nvixso](nore)map
"  │       └ don't recurse
"  │
"  └ normal, visual, insert,
"    eX mode, select, operator-pending
" Arguments
" <buffer>  only in current buffer
" <silent>  no echo
" <nowait>
" #Syntax
" Highlights
" hi Comment
"   term=bold,underline
"   gui=bold
"   ctermfg=4
"   guifg=#80a0ff
" Filetype detection
" augroup filetypedetect
"   au! BufNewFile,BufRead *.json setf javascript
" augroup END

" au Filetype markdown setlocal spell
" Conceal
" set conceallevel=2
" syn match newLine "<br>" conceal cchar=}
" hi newLine guifg=green
" Region conceal
" syn region inBold concealends matchgroup=bTag start="<b>" end="</b>"
" hi inBold gui=bold
" hi bTag guifg=blue
" Syntax
" syn match :name ":regex" :flags

" syn region Comment  start="/\*"  end="\*/"
" syn region String   start=+"+    end=+"+   skip=+\\"+

" syn cluster :name contains=:n1,:n2,:n3...

" flags:
"   keepend
"   oneline
"   nextgroup=
"   contains=
"   contained

" hi def link markdownH1 htmlH1
" Include guards
" if exists('g:loaded_myplugin')
"   finish
" endif

" " ...

" let g:loaded_myplugin = 1



" --
" ABREVIATIONS
" --

" iabbrev div <div>

" -----------
" MAPPINGS
" -----------

" Here are the vim defaults for reference

"a - insert to the right
"b - back a word
"c - change
"d - delete
"e - end of a word
"f - find
"gg - go to beginning
"G - go to end
"ge - go backward to end of the word
"go - (NERDTree) open file but keep focus in NERDTree
"g= - check spelling
"gz - add to dictionary
"gq - wrap text
"gJ - join lines - tranform block of lines into one line
"g_ - like $ but doesnt select the newline
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
" gl for 'look' for references
nmap <silent> gl <Plug>(coc-references)
" Symbol renaming.
 nmap <silent>gr <Plug>(coc-rename)


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
nmap <C-i> :A<CR>
" <C-j> - reserved for Karabiner elements <down arrow>
" <C-k> - reserved for Karabiner elements ^
" <C-l> - reserved for Karabiner elements ->
" nmap <C-m> :mks! $DOTFILES/saveSession.vim<CR>
" <C-n> multiple cursors
" <C-o> goes to letter
nmap <C-p> :FZF<CR>
" <C-q> nerdTree focus
" <C-r> red

nmap <C-s> :PresentingStart<CR>
" <C-t>
" nmap <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
" <C-v> -> visual block mode
" <C-w> with arrow key -> move buffers
nmap <C-x> :source $DOTFILES/rooster.vim<CR>
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
" echos the file path releative to working directory
nmap    <leader>j :echo @%<CR>

" k for Kill tags. deletes tag and its closing tag
nmap    <leader>k vat<Esc>`<df>`>F<df>
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

nmap <Leader>t :FloatermNew<CR>
nmap <Leader>v :FloatermToggl<CR>
" nmap <Leader>t :tabnew<CR>
" nmap <Leader>v :vsp<CR><C-w><Right>


nmap    <leader>u :call ReloadKeepingSpot2()<CR>
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

" nmap <Leader>m1       :mksession! $DOTFILES/learning.vim<CR>
" nmap <Leader>l1       :source $DOTFILES/learning.vim<CR>
" nmap <leader>pi   :PlugInstall<CR>
" nmap <leader>ch   :checkhealth<CR>
" nmap <Leader>html :-1read $DOTFILES/testhtml.html<CR>1jf>a

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
" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')




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

" Remap keys for applying codeAction to the current buffer. - auto import and ather actions
 nmap <silent>gb  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

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

inoremap <C-d> <Del>
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

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif



call plug#begin('~/.config/nvim/plugged')


"TODO https://github.com/vifm/neovim-vifm
"TODO https://github.com/jreybert/vimagit

Plug 'mhinz/vim-startify'

" Terminal
" --------
Plug 'voldikss/vim-floaterm'

" Code Pairing
" ------------
Plug 'FredKSchott/CoVim' " alternative to coVim i still need to try https://github.com/Floobits/floobits-vim

" Color Schemes
" -------------
Plug 'crusoexia/vim-monokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'mhartington/oceanic-next'
Plug 'morhetz/gruvbox'
Plug 'Addisonbean/Vim-Xcode-Theme'
Plug 'vim-scripts/AfterColors.vim'
Plug 'https://github.com/ap/vim-css-color'
Plug 'her/synicons.vim'

" StatusLine
" ----------
Plug 'mkitt/tabline.vim'
" Plug 'itchyny/lightline.vim' 'doesnt load on startup. Piece of crap. call lightline#enable or open new file to make it load. battery component didnt work with it

 Plug 'vim-airline/vim-airline'
 Plug 'vim-airline/vim-airline-themes'
Plug 'lambdalisue/battery.vim'
Plug 'lambdalisue/wifi.vim'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'darthmall/vim-vue'
Plug 'elzr/vim-json'


" Typescript :(
" -------------
":CocInstall coc-json coc-tsserver
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkholme/yats.vim' " takes care of Javascript also

" Ruby
" ----
Plug 'vim-ruby/vim-ruby'

" Java
" ----
Plug 'vim-scripts/yavdb'
Plug 'vmarquez/jvdb'
Plug 'idanarye/vim-vebugger' "help vebugger-configuration
Plug 'artur-shaik/vim-javacomplete2'
Plug 'vim-scripts/groovy.vim'
Plug 'tpope/vim-cucumber'
Plug 'jvenant/vim-java-imports'

" Syntax
" ------
Plug 'junegunn/vim-emoji'
Plug 'dag/vim-fish'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tarekbecker/vim-yaml-formatter'  " pip3 install pyyaml


" Linting
" ------
Plug 'w0rp/ale'

 " Git
 " ---
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Tools
" -----
Plug 'adelarsq/vim-matchit'
Plug 'airblade/vim-rooter'
Plug 'alvan/vim-closetag'
" Plug 'ashisha/image.vim'
Plug 'benmills/vimux'
Plug 'chrisbra/csv.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'lambdalisue/suda.vim' " get sudo on the file
Plug 'othree/xml.vim'
Plug 'prettier/vim-prettier'
Plug 'psliwka/vim-smoothie'
Plug 'rking/ag.vim'   " silver searcher
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'terryma/vim-multiple-cursors'
Plug 'thinca/vim-localrc'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-projectionist'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/RltvNmbr.vim'
Plug 'webastien/vim-ctags'

" Snippets
" --------
Plug 'SirVer/ultisnips'

" Icons - must be last
" -----
Plug 'ryanoasis/vim-devicons'

"  ---------
"  NOT USING
"  ---------

 " conflicting with coc
 "Plug 'ervandew/supertab'


"   " gC in normal mode, <C-g>c in insert mode
    " i never use it since vim has U. so disabling for now
"   "Plug 'tpope/vim-capslock'
"   "Plug 'jasonwoodland/vim-html-closer' -> only works on html files, no jsx
"   "Plug 'honza/vim-snippets'
"   "Plug 'Shougo/neosnippet.vim'
"   "Plug 'Shougo/neosnippet-snippets'

"Plug 'https://github.com/szw/vim-tags'

" Plug 'honza/vim-snippets'



"   " Plug 'pseewald/vim-anyfold'

 "Plug 'vim-syntastic/syntastic'


"TS
" Plug 'leafgarland/typescript-vim'
" Plug 'ianks/vim-tsx'
" these two plugins introduced some lag
"Plug 'pangloss/vim-javascript'
"Plug 'maxmellon/vim-jsx-pretty'
   " Plug 'mxw/vim-jsx' |> opting for pangloss & maxmellon's plugins as the indentation works
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
"   " Plug 'jiangmiao/auto-pairs' - not bad but ended up being annoying when trying
"   " to add brackets at the end, it would not insert becuase it think i want to
"   " jump out


 " Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
 "// not used, see deoplete below
 "Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }


"   " component and easily add to the statusline and the tabline. Orthogonality. The
"   " plugin does not rely on the implementation of other plugins. Such plugin
"   " crossing settings should be configured by users.  Plug 'itchyny/vim-gitbranch'
"   " Plug 'rbong/vim-crystalline'
"   "Plug 'https://github.com/gko/vim-coloresque'


"   " Plug 'terryma/vim-smooth-scroll' |> prefer smoothie


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


    " this plugin has performance issues
   "Plug 'othree/yajs.vim'

" Plug 'jason0x43/vim-js-indent', {'for': ['javascript', 'javascript.jsx', 'typescriptreact', 'typescript']} |> didnt work :(
"Plug 'vim-scripts/DrawIt' -> causes 1 sec delay on leader binding
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
"let g:ag_prg="ag --vimgrep --smart-case"
let g:ag_working_path_mode="r"

" AIRLINE
" -----------
" " adding to vim-airline's tabline
" let g:webdevicons_enable_airline_tabline = 1
" " adding to vim-airline's statusline
" let g:webdevicons_enable_airline_statusline = 1
" let g:airline_extensions = []
let g:airline_section_b = '%{airline#util#wrap(airline#extensions#hunks#get_hunks(),100)} %{airline#util#wrap(airline#extensions#branch#get_head(),80)} %{battery#component()} %{wifi#component()}'

  let g:airline_powerline_fonts = 1
  " call airline#parts#define_function('foo', 'battery#component')
  " let g:airline_section_y = airline#section#create_right(['ffenc','foo'])


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
let b:ale_fixers = ['prettier', 'eslint', 'stylelint', 'HTMLHint', 'alex']
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'typescript': ['tsserver'],
\   'css': ['stylelint'],
\   'html': ['htmlhint'],
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
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx, *.js, *.ts, *.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,js,ts,tsx,jsx'

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
let g:webdevicons_enable_ctrlp = 1

" ---------
" DevIcons
" ---------
 " let g:WebDevIconsUnicodeDecorateFolderNodes = 1
" let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
" :let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol='x'

 " let g:DevIconsEnableFoldersOpenClose = 1
" let g:webdevicons_gui_glyph_fix = 1
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1
" let g:webdevicons_enable_denite = 1

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
" let g:gitgutter_sign_modified = emoji#for('nail_care')
let g:gitgutter_sign_removed = emoji#for('broken_heart')
let g:gitgutter_sign_modified_removed = emoji#for('broken_heart')
set completefunc=emoji#complete

" Lightline
" ---------
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'right': [ [ 'lineinfo' ],
      \              [ 'percent' ],
      \              [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ]
      \ },
      \ 'component_function': {
      \   'battery': 'battery#component',
      \ },
      \ 'component': {
      \   'battery': 'battery#component',
      \   'charvaluehex': '0x%B',
      \ },
      \ }
" let g:lightline = {
" \ 'colorscheme': 'wombat',
" \ 'component_function': {
" \   'battery': 'battery#component',
" \ },
" \ },
"       \ 'component_function': {
"       \ 'battery': 'battery#component',

" let g:lightline = {
"       \ 'active': {
"       \   'left': [ [ 'mode', 'paste' ],
"       \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
"       \ },
"       \ 'component_function': {
"       \ 'battery': 'battery#component',
"       \ 'gitbranch': 'gitbranch#name'
"       \ },
"       \ 'component': {
"       \   'helloworld': 'Hello, world!'
"       \ },
"       \ }
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

" let g:NERDTreeFileExtensionHighlightFullName = 1
" let g:NERDTreeExactMatchHighlightFullName = 1
" let g:NERDTreePatternMatchHighlightFullName = 1
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
let g:NERDTreePatternMatchHighlightColor['.vim$'] = g:pink
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

" NerdTreeGitPlugin
" TODO
" let g:NERDTreeGitStatusUseNerdFonts = 0
" let g:gitgutter_sign_added = emoji#for('hatching_chick')
" let g:gitgutter_sign_modified = emoji#for('nail_care')
" let g:gitgutter_sign_removed = emoji#for('broken_heart')
" let g:gitgutter_sign_modified_removed = emoji#for('broken_heart')
" '✗'
      " \ 'Modified'  :emoji#for('nail_care'),
let g:NERDTreeGitStatusIndicatorMapCustom = {
      \ 'Modified'  :'*',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'?',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'x',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }


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

" RltvNmbt
" --------
 "autocmd VimEnter * RltvNmbr

 " Synicons

" This must be set in the plugged/after/synicons.vim
hi DevIconRed        ctermfg=1     guifg=#800000
hi DevIconGreen      ctermfg=2     guifg=#A6E22D
hi DevIconYellow     ctermfg=3     guifg=#FD9720
hi DevIconBlue       ctermfg=4     guifg=#66d9ef
hi DevIconMagenta    ctermfg=5     guifg=#ae81ff
hi DevIconCyan       ctermfg=6     guifg=#E6DB74
hi DevIconWhite      ctermfg=7     guifg=#F92772

" Terminal
" -----------

let g:floaterm_shell = "fish"



" UltiSnips
" -----------
let g:UltiSnipsUsePythonVersion = 3

let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader>k"
let g:UltiSnipsEditSplit="vertical"
" DONT USE THIS DIRECTORY CONFIG - doesnt work
" must set runtimepath for snipets folder and name folder as UltiSnips
"let g:UltiSnipsSnippetsDir="$DOTFILES/vimsnips"
"let g:UltiSnipsSnippetDirectories=["$DOTFILES/vimsnips", "UltiSnips"]
"let g:UltiSnipsExpandTrigger="<tab>"

" R;tvNmbr

"call RltvNmbr#RltvNmbrCtrl(1)

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
"set $RC ~/workspace/dotfiles/init.vim
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
set backspace=indent,eol,start
set timeoutlen=1000

" defaults to terminal font
  " set guifont=FiraCode\ Nerd\ Font\ 11

set ttimeoutlen=0

set runtimepath+=$DOTFILES/vimsnips
set nowrap
set fileformat=unix
set nocursorline
set encoding=UTF-8
set nocp   " 'compatible' is not set. dont need vi compatibility, use vi improved
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
set conceallevel=3
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

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif


" not using
function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd FileType nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd FileType nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction


" hi DevIconRed        ctermfg=1     guifg=#800000
" hi DevIconGreen      ctermfg=2     guifg=#008000
" hi DevIconYellow     ctermfg=3     guifg=#808000
" hi DevIconBlue       ctermfg=4     guifg=#FFFFFF
" hi DevIconMagenta    ctermfg=5     guifg=#800080
" hi DevIconCyan       ctermfg=6     guifg=#FFFFFF
" hi DevIconWhite      ctermfg=7     guifg=#FFFFFF
highlight! link NERDTreeFlags NERDTreeDir
" :hi Directory guifg=#FF0000 ctermfg=red
