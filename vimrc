"execute pathogen#infect()
call plug#begin()

Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'sillybun/vim-repl' 
Plug 'sillybun/zytutil'
Plug 'luochen1990/rainbow'
Plug 'junegunn/vim-peekaboo'
Plug 'tpope/vim-surround'
Plug 'bronson/vim-visual-star-search'

call plug#end()

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"god dam brackets
inoremap {      {}<Left>
inoremap '      ''<Left>
inoremap (      ()<Left>
inoremap [      []<Left>
inoremap "      ""<Left>


let g:coc_snippet_next = '<tab>'

autocmd! bufwritepost .vimrc source %
syntax enable
set expandtab
colorscheme dracula
filetype indent plugin on
set incsearch
set hlsearch
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
set tabstop=2
set shiftwidth=2
set number relativenumber
set fdm=syntax
nnoremap <C-l> m`o<Esc>`
nnoremap <C-L> m`O<Esc>`
:command W w 
:command Q q
:command Wq wq
:command WQ wq
imap qq <Esc>
imap <C-z> <Esc>:wq<return>
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>

let mapleader = "\<Space>"
let g:rainbow_active = 1

nnoremap <leader>r :REPLToggle<Cr>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsListSnippets="<C-tab>"
"let g:UltiSnipsExpandTrigger = "<C-u>"

set updatetime=100
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
let g:gitgutter_diff_args = '-w'
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=yellow
highlight GitGutterDelete ctermfg=red
highlight GitGutterChangeDelete ctermfg=yellow
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '='

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
