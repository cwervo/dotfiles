" -----
" Color
" -----
" let g:seoul256_background = 235
colorscheme seoul256
" colorscheme jellybeans
" colorscheme monokai
" colorscheme Tomorrow-Night-Blue

" --------------
" Sytastic stuff
" --------------

" Enable Syntastic to automatically load errors into the location list
let g:syntastic_always_populate_loc_list = 1

" Enable Syntastic to check for errors when a file is loaded into Vim
let g:syntastic_check_on_open = 1
" let g:syntastic_enable_signs=1

" Use custom error and warning symbols to Syntastic
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

" " Set Python default to Python3
" let g:syntastic_python_python_exec = '/path/to/python3'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ---------------
" Airline Settings
" --------------
" Add vim-airline buffer list to the top of Vim
let g:airline#extensions#tabline#enabled = 1

" Define airline plugin font for compatability
let g:airline_powerline_fonts = 1
"
" Powerline theme
let g:airline_theme = 'base16'
" let g:airline_theme = 'wombat'
" let g:airline_theme = 'light'

" Always on Rainbow parens
let g:rainbow_active = 1

" Custom coloring for Rainbow Plugin
let g:rainbow_conf = {
            \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
            \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
            \   'operators': '_,_',
            \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
            \   'separately': {
            \       '*': {},
            \       'tex': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
            \       },
            \       'lisp': {
            \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
            \       },
            \       'vim': {
            \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
            \       },
            \       'html': {
            \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
            \       },
            \       'css': 0,
            \   }
            \}

" Set TeX previewer to default Mac viewer, "Preview"
let g:livepreview_previewer = 'open -a Preview'

" Anzi Search statusline
set statusline=%{anzu#search_status()}

" JSON.vim, turn off quote concealment
let g:vim_json_syntax_conceal = 0

" From Nate's vimrc!
" https://github.com/nwjsmith/dotfiles/blob/ba82a88ba874b953c0e38a127bda7dc8a109faf7/vimrc#L74-L84
" Use the ripgrep if available
if executable('rg')
  " Use rg instead of grep
  set grepprg=rg\ --column\ --color=never

  " Use rg for ctrlp for listing files
  let g:ctrlp_user_command = 'rg %s --files --color=never --glob ""'

  " rg is fast enough that we don't need caching
  let g:ctrlp_use_caching = 0
endif

" -------
" Javascript stuff syntax
" -------
" Turn on Flow plugin for pangloss/vim-javascript
let g:javascript_plugin_flow = 1
" Require .esx file extension?
let g:jsx_ext_required = 0

let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 'never'
" disable the Ale HTML linters
let g:ale_linters = {
\   'html': [],
\}
let g:ale_set_highlights = 0

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = [
\ 'prettier_eslint'
\]
let g:ale_fix_on_save = 0
let g:ale_javascript_prettier_options = '--single-quote'

let g:deoplete#enable_at_startup = 1
