"vim: set foldmethod=marker foldlevel=0
" VIM-PLUG {{{
call plug#begin('~/.config/nvim/plugged')

Plug 'justinmk/vim-sneak'
Plug 'tpope/vim-surround'
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'haya14busa/incsearch.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --racer-completer --tern-completer --gocode-completer', 'for': ['c', 'cpp', 'rust', 'javascript', 'go'] }
autocmd! User YouCompleteMe if !has('vim_starting') | call youcompleteme#Enable() | endif
Plug 'majutsushi/tagbar'
Plug 'benekastah/neomake', { 'on': 'Neomake' }
Plug 'vim-utils/vim-man', { 'on': 'Man' }
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go', { 'for': 'go' }
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdcommenter'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable', 'for': ['c', 'cpp'] }
Plug 'fholgado/minibufexpl.vim'
Plug 'SirVer/ultisnips'
Plug 'gentoo/gentoo-syntax'
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'morhetz/gruvbox'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'mhinz/vim-grepper'
Plug 'tpope/vim-repeat'

call plug#end()
" }}}
" VIM SETTINGS {{{
set background=dark
let g:gruvbox_italic=1
color gruvbox

set tabstop=8
set shiftwidth=2
set cindent
set expandtab

set number
set cursorline
set smartindent

set ignorecase
set smartcase
" }}}
" PLUGIN SETTINGS {{{
let g:airline_powerline_fonts = 1
let g:delimitMate_expand_cr = 1
let g:delimitMate_expand_space = 1
let g:delimitMate_smart_quotes = 1
let g:syntastic_c_check_header = 1
let g:syntastic_c_no_auto_default_include_dirs = 1
let g:syntastic_c_auto_refresh_includes = 1
let g:sneak#use_ic_scs = 1
let g:incsearch#auto_nohlsearch = 1
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_preview = 1
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_always_populate_location_list = 1
let g:ycm_confirm_extra_conf = 0
let g:ycm_rust_src_path = '/usr/local/src/rust/src'
let g:tagbar_usearrows = 1
let g:UltiSnipsExpandTrigger="<c-k>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:sneak#s_next = 1
let g:rustfmt_autosave = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', "<args>") | let g:Guifont="<args>"
Guifont Hack:h9
" }}}
" AUTORUN {{{
au BufNewFile,BufRead CMakeLists.txt set filetype=cmake
au BufNewFile,BufRead *.go set noet ts=4 sw=4
au BufNewFile,BufRead *.md set tw=80

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
" }}}
" OTHER MAPPINGS {{{
let mapleader=","
let maplocalleader=","
inoremap jk <esc>
" }}}
" NORMAL MODE MAPPINGS {{{
nnoremap ; :
nnoremap : ;

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <silent> <F8> :TagbarToggle<cr>
nnoremap <silent><leader><space> :nohl<cr>
nnoremap <silent><C-P> :FZF<cr>
nnoremap <silent><C-M> :Neomake!<cr>
nnoremap <leader>git :Grepper -tool git -noswitch<cr>
nnoremap <leader>ag :Grepper -tool ag -grepprg ag --vimgrep<cr>
nnoremap <leader>* :Grepper -tool ag -cword -noprompt<cr>
" }}}
" TERMINAL MODE MAPPINGS {{{
tnoremap <Esc> <C-\><C-n>
" "}}}
