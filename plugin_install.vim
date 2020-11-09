if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

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
   Plug 'elzr/vim-json'
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

"Plug 'vim-scripts/DrawIt' -> causes 1 sec delay on leader binding
"Plug 'Shougo/neosnippet.vim'
"Plug 'Shougo/neosnippet-snippets'

"https://github.com/andymass/vim-matchup/

"Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
"causes big lag. need to try removing custom colors



call plug#end()
