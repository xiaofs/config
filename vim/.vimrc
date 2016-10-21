"global --- {{{
syntax on
set smartcase
set hlsearch
set incsearch
set showmatch
set textwidth=80
set nobackup

set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

set cinoptions=g0
colors ron
hi PmenuSel ctermbg=lightblue
set encoding=cp936
set fileencodings=utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
let mapleader=','
set guifont=Monaco:h10
" }}}

" plugins --- {{{
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'hallison/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ervandew/supertab'
Plugin 'kshenoy/vim-signature'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'A.vim'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/vcscommand.vim'
Plugin 'iamcco/markdown-preview.vim'
Plugin 'vhdirk/vim-cmake'
Plugin 'Valloric/YouCompleteMe'

call vundle#end() 
filetype plugin indent on
" }}}

" plugin setting --- {{{
"" lightline --- {{{
if !has('gui_running')
      set t_Co=256
endif

colorscheme molokai
let g:lightline = {
      \ 'colorscheme': 'default',
      \ }
set laststatus=2
""}}}
"" nerdtree --- {{{
nnoremap <F12> :NERDTreeToggle<CR>
""}}}
"" tabbar --- {{{
nnoremap <F8> :TagbarToggle<CR>
""}}}
"" ctrlp --- {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
""}}}
"" vim-snipmate --- {{{
imap <Tab> <Plug>snipMateTrigger
imap <C-l> <Plug>snipMateShow
imap <C-n> <Plug>snipMateBack
""}}}
""}}}
"" ctrlp-funky --- {{{
nnoremap <Leader>fu :CtrlPFunky<Cr>
" narrow the list down with a word under cursor
" nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
" 
""}}}
" OmniCppComplete --- {{{
let OmniCpp_MayCompleteScope = 1
" }}} 
""{{{
let g:ycm_key_list_select_completion=['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion=['<C-p>', '<Up>']
" }}}
" markdown-preview --- {{{
let g:mkdp_path_to_chrome = "chrome.exe"
"}}}
" }}}

" filetype setting --- {{{ 
"" vimrc --- {{{
augroup ft_vimrc
		au!
		setlocal number
		autocmd FileType vim setlocal foldmethod=marker
		autocmd FileType vim nnoremap <F5> :so %<CR>
		autocmd FileType vim setlocal foldlevel=99
augroup END
"" }}}
"" cpp --- {{{
augroup ft_cpp
    au!
    setlocal number
    autocmd FileType cpp setlocal foldmethod=marker
augroup END
augroup END
" }}}
"" rust --- {{{
augroup ft_rust
    au!
    setlocal number
    autocmd FileType rust setlocal foldmethod=indent
    autocmd FileType rust setlocal foldlevel=99
    autocmd FileType rust nnoremap <F5> :!cargo run<CR>
augroup END
" }}}

" keys --- {{{
"" windows
nnoremap <leader>o :only<CR>
nnoremap <leader>l <c-w>l
nnoremap <leader>h <c-w>h
nnoremap <leader>j <c-w>j
nnoremap <leader>k <c-w>k
nnoremap <leader>v <c-w>v
nnoremap <leader>s <c-w>s

"" tabs
nnoremap <leader>tt :tabnew<CR>
nnoremap <leader>tn :tabNext<CR>
nnoremap <leader>tp :tabprevious<CR>
nnoremap <leader>tc :tabclose<CR>
nnoremap <leader>tf :tabfirst<CR>
nnoremap <leader>tl :tablast<CR>
nnoremap <leader>to :tabonly<CR>

"" mouse
nnoremap <leader>m :set mouse=a<CR>
nnoremap <leader>M :set mouse=v<CR>
nmap <C-LeftMouse> <C-]>

"" others
highlight Pmenu guibg=darkgrey guifg=black 
highlight PmenuSel guibg=lightgrey guifg=black
" }}}
