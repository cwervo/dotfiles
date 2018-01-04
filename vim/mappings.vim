" ===============================================================
" Bubble text with Up/Down, mapped to Time Pope's vim-unimpaired
" commands
" ------------------------------------------
" Bubble single lines
nmap <Up> [e
nmap <Down> ]e

" Bubble multiple lines
vmap <Up> [egv
vmap <Down> ]egv"
" ===============================================================

" Map pane switching to Ctrl + its directional home key
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

" Go to the next/previous buffer with Tab/Shift-Tab
map <Tab> :bnext<CR>
map <S-Tab> :bprevious<CR>

" Bind <Esc> to jk
inoremap jk <Esc>
vnoremap v <Esc>

" [F]ormat [e]ntire [f]ile *and* return to the cursor position using a mark!
nnoremap fef mx=ggG='x

let mapleader=" "

" Bring up file tree with <Space>k
map <leader>k :vsp.<cr>"

" Bring up a 'buffer menu' with <Space>[m]enu
:nnoremap <leader>m :buffers<CR>:buffer<Space>

" Delete buffer with <Space>b
map <leader>b :bd<cr>"

" <space>c clears search highlighting
nnoremap <leader>c :noh<cr>

" Remap Emmet expansion to hh making the expansion hh,
let g:user_emmet_leader_key='hh'

" <space>e expands Emmet abbreviations.
map <leader>e $hh,

" Insist that the Explore tree (<Space>k) is in mode 3 (personal preference)
let g:netrw_liststyle=3

let g:multi_cursor_quit_key='<Esc>'

" Anzu search mappings
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)

" This function goes to the current buffer's directory, which is nice when you
" need to make a new file in current working directory
"
" Help from: http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
function! GoToCurrentFileDir()
    :cd %:p:h
    :echo "Cd'd to '" expand("%:p:h") "'?"
endfunction

command! GoToCurrentFileDir execute GoToCurrentFileDir()

" Inspired by: https://gist.github.com/csswizardry/9a33342dace4786a9fee35c73fa5deeb
nnoremap <C-p> :e **/*
