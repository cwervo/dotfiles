" Specify a directory for plugins
" - For Neovim: " - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')
"
" " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" " Themes
" Plug 'dracula/vim'
" " Plug 'ryanoasis/vim-devicons'
" Plug 'nanotech/jellybeans.vim'
" Plug 'chriskempson/vim-tomorrow-theme'
Plug 'junegunn/seoul256.vim'
" Plug 'vim-scripts/ecostation'
" Plug 'sickill/vim-monokai'
" Plug 'tomasr/molokai'
" Plug 'NLKNguyen/papercolor-theme'

" Plug 'junegunn/vim-easy-align'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" " Make hex color codes pretty according to their corresponding color!
" Plug 'ap/vim-css-color'

" " Remove bad whitespace
" Plug 'bitc/vim-bad-whitespace'

" " Alters vim search with true incremental search and
" " search result numbering in the statusline
Plug 'osyo-manga/vim-anzu'
" " Extends the * searching for granular visual selections
" Plug 'bronson/vim-visual-star-search'

" " Fuzzy file search with Ctrl P
" Plug 'ctrlpvim/ctrlp.vim'

" " gc{motion} comments out the motion, gcc comments linewise
" Plug 'tomtom/tcomment_vim'
" " Substituting and replacing words and changing case and conventions (to add
" " an under_score or not?) -- take a look at the doc for more.
" Plug 'tpope/vim-abolish'
" " Convenient wrappers for Unix commands, like :Chmod, :Rename, :Find, :SudoWrite, and
" " :SudoEdit (among others).
" Plug 'tpope/vim-eunuch'
" " Kickass git wrapper for vim with :Git {git commands}
" Plug 'tpope/vim-fugitive'
" Plug 'tpope/vim-rhubarb'
" " Vim runtime files for Haml, Sass, and SCSS
" Plug 'tpope/vim-haml'
" " Change single to double quote with cs'" or surround a word with quotes like
" " so: ysaw"" or delete surrounding single quotes with ds' or surround a line
" " in parenthesis with yss) or visually select a block and use S<some-tag
" " some-properties> to surround the block with relevant markup (and delete a
" " surrounding tag with dst)
" Plug 'tpope/vim-surround'
" " Useful bracket ([,]) mappings like [e and ]e which move text up and down,
" " respectively (mapped to the up & down arrows). Loads more stuff to play around with
Plug 'tpope/vim-unimpaired'
" " Make many commands (a lot of Tim Pope's plugins, mainly) repeatable with
" " the . command
" Plug 'tpope/vim-repeat'
" " Now just use :Bundle to call bundler from inside vim!
" Plug 'tpope/vim-bundler'
" " Add on to the built-in netrw directory tree
" Plug 'tpope/vim-vinegar'
" " The next two come as a pair
" " Plug 'tpope/vim-sexp-mappings-for-regular-people'
" " Plug 'guns/vim-sexp'
" " Fireplace supports a Clojure REPL from Vim :D
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Plug 'tpope/vim-salve'
" " Highlight the matching tag in XML/ HTML editing
" Plug 'Valloric/MatchTagAlways'
" " Auto-pairs bracket, parens, and quotes
" Plug 'vim-scripts/Auto-Pairs'
" " Close all help windows with :HelpAllClose
" Plug 'vim-scripts/HelpClose'
" " Misc. things for xolox and other plugin authors
" Plug 'xolox/vim-misc'
" " Quickfix enter plugin
" Plug 'yssl/QFEnter'

Plug 'junegunn/fzf'
" "
" " Tabs!!!
" Plug 'ervandew/supertab'
" " Tabs!!!
" Plug 'godlygeek/tabular'

" " Emmet HTML expansion.
Plug 'mattn/emmet-vim'

" " Vim gutter gets Git symbols (signs), v pretty
" " Plug 'mhinz/vim-signify'
" Plug 'airblade/vim-gitgutter'

" " Vim Indent Guides with <leader>ig
" Plug 'nathanaelkane/vim-indent-guides'

" " Flow support :)
" Plug 'flowtype/vim-flow'

" " Markdown preview
" " NOTE: Requires rust to be installed on the machine. https://www.rust-lang.org/en-US/install.html
" " From: https://github.com/euclio/vim-markdown-composer
" function! BuildComposer(info)
"   if a:info.status != 'unchanged' || a:info.force
"     if has('nvim')
"       !cargo build --release
"     else
"       !cargo build --release --no-default-features --features json-rpc
"     endif
"   endif
" endfunction
" Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

" " Autocomplete brackets, parens, and quotes
" Plug 'Raimondi/delimitMate'

" " Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" " Great collections of useful snips like `box` and `lorem`
" Plug 'honza/vim-snippets'

" " A better Join command with delimiter options, repeatable counts, and revere
" " joining
" Plug 'sk1418/Join'
" " Use ctrl-n for multiple cursors over words, and then c to change all
" " instances of that word, and any other mappings.
" Plug 'terryma/vim-multiple-cursors'
" " Extended % matching for HTML, LaTeX, and many other languages
" Plug 'tmhedberg/matchit'

" Plug 'cespare/vim-toml'

" " Make session management easy!
" Plug 'vim-scripts/restore_view.vim'
" " Rainbow parentheses!
" Plug 'luochen1990/rainbow'

" " Editor Config for consistency
" Plug 'editorconfig/editorconfig-vim'

" Add shiny new autocomplete with Deoplete!
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugs' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif


" Plug 'machakann/vim-highlightedyank'

Plug 'vim-syntastic/syntastic'

" " Lazy-load a bunch of should-be-standard extensions (replaces a bunch of
" " extensions that I added individually)
" Plug 'sheerun/vim-polyglot'
" Plug 'jxnblk/vim-mdx-js'

" " Official Tidal Cycles version:
" Plug 'tidalcycles/vim-tidal'
" ----
" Fork that doesn't require tmux:
" Plug 'flupe/vim-tidal'
" ----
" Fork that just fixed tmux version, still requires `make install`
" Plug 'purpleposeidon/vim-tidal'

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()
