" Modified version of:
" https://github.com/mutewinter/dot_vim/blob/master/config.vim
" ---------------------------------------------
" Regular Vim Configuration
" ---------------------------------------------
"
" ---------------
" Color
" ---------------
" Force 256 color mode if available
if $TERM =~ "-256color"
    set t_Co=256
endif

au BufNewFile,BufRead *.rs set filetype=rust

" ---------------
" File Locations
" -----------------------------
set autochdir
set backup
set backupdir=~/.vim/.backup// " Double // causes backups to use full file path
set directory=~/.vim/.tmp//
set writebackup
set spellfile=~/.vim/spell/custom.en.utf-8.add
" Persistent Undo
set undodir=~/.vim/.undo
set undofile

" ---------------
" UI
" ---------------
set ruler          " Ruler on
set number         " Line numbers on so I can easily jump with <line#>gg
"set relativenumber " Lune numbers change to show how far away they are from the current line
" set nowrap         " Line wrapping off
set breakindent
let &showbreak = '↳ '
set wrap
set laststatus=2   " Always show the statusline
set cmdheight=2    " Make the command area two lines high
set encoding=utf-8
set noshowmode     " Don't show the mode since Powerline shows it
set title          " Set the title of the window in the terminal to the file
if exists('+colorcolumn')
    set colorcolumn=80 " Color the 80th column differently as a wrapping guide.
endif
" This is useful for the gitgutter plugin, but shortens the delay for all
" plugins as well, which is nice!
" https://github.com/airblade/vim-gitgutter#troubleshooting
" At 100ms this would cause glitches pre-7.4.427[1], but should be fine
" because now we're on Vim 8 & modern NeoVim
" [1] : https://www.reddit.com/r/vim/comments/3ql651/what_do_you_set_your_updatetime_to/
set updatetime=100

" ---------------
" Behaviors
" ---------------
syntax enable
au BufRead,BufNewFile *.md set spell textwidth=80
au BufRead,BufNewFile *.mkd set spell textwidth=80
au BufRead,BufNewFile *.markdown set spell textwidth=80
au BufRead,BufNewFile README set spell
au BufRead,BufNewFile *.txt set spell
set wildmenu            " visual autocomplete for command menu
set hidden             " Change buffer - without saving
set history=300         " Number of things to remember in history.
set cf                 " Enable error files & error jumping, this is what makes prompt on exit!
set clipboard=unnamed " Yanks go on clipboard instead.
set autowrite          " Writes on make/shell commands
set ttimeout
set ttimeoutlen=100    " Time to wait for a command (after leader for example).

set formatoptions=crql
set nrformats= " Disable Vim's default (oct, hex), which make 07 an octal.
set iskeyword+=\$,-   " Add extra characters that are valid parts of variables
set nostartofline      " Don't go to the start of the line after some commands
set scrolloff=99        " Keep 99 lines below the last line when scrolling, effectively shifting the middle of the screen on scroll.
set scrolloff=5        " Keep 5 lines below the last line when scrolling.
set gdefault           " this makes search/replace global by default
set switchbuf=useopen  " Switch to an existing buffer if one exists
set whichwrap+=<,>,h,l,[,]
set splitright
set splitbelow

" ---------------
" Text Format
" ---------------
filetype indent on
set tabstop=4 " number of visual spaces per tab"
set softtabstop=4 " number of spaces in tab when editing"
set backspace=indent,eol,start " Delete everything with backspace
set shiftwidth=4 " Tabs under smart indent
set shiftround
set cindent
set autoindent
set smarttab
set expandtab " tabs are spaces"

" ---------------
" Searching
" ---------------
set ignorecase " Case insensitive search
set smartcase  " Non-case sensitive search
set incsearch  " Incremental search
set infercase " infer the case of the match based on the current item.
set hlsearch   " Highlight search results
set wildignore+=*.o,*.obj,*.exe,*.so,*.dll,*.pyc,.svn,.hg,.bzr,.git,
            \.sass-cache,*.class,*.scssc,*.cssc,sprockets%*,*.lessc,*/node_modules/*,
            \rake-pipeline-*

" From: https://github.com/kien/ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" From: https://gist.github.com/csswizardry/9a33342dace4786a9fee35c73fa5deeb
" Don't offer to open certain files/directories
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=node_modules/*,bower_components/*

" Allow visual mode to search with * (forward-looking) and # (backward-looking)
" Taken from:
"
" http://got-ravings.blogspot.com/2008/07/vim-pr0n-visual-search-mappings.html
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction

vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>)

" ---------------
" Visual
" ---------------
highlight LineNr ctermfg=30
set cursorline
highlight cursorline term=underline cterm=underline
set showmatch   " Show matching brackets.
set matchtime=2 " How many tenths of a second to blink
" Show invisible characters
set list

" Show trailing spaces as dots and carats for extended lines.
" From Janus, http://git.io/PLbAlw

" Reset the listchars
set listchars=""
" make tabs visible
set listchars=tab:▸▸
" show trailing spaces as dots
set listchars+=trail:•
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=extends:>
" The character to show in the last column when wrap is off and the line
" continues beyond the right of the screen
set listchars+=precedes:<

" ---------------
" Sounds
" ---------------
set noerrorbells
set novisualbell
set t_vb=

" ---------------
" Mouse
" ---------------
set mousehide  " Hide mouse after chars typed
set mouse=a    " Mouse in all modes

" Better complete options to speed it up
set complete=.,w,b,u,U

" --------------
" Folds
" --------------
set fdc=1

" --------------
" Carp syntax hack
" --------------
au BufNewFile,BufRead,BufReadPost *.carp set filetype=clojure

" ------
"  Conda config, based off of: https://gist.github.com/yeekeiji/8143b9174f87715f95aa14dd99679b5f
" ------
let g:python3_host_prog = '~/miniconda3/envs/neovim'
" Don't know how to get python2 working, so deoplete is broken for now
" let g:python_host_prog = '~/miniconda3/envs/neovim2'
