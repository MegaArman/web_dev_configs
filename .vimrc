set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'

" HTML snippets
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'Raimondi/delimitMate'

"linter
Plugin 'vim-syntastic/syntastic'

" Tab to autocomplete
Plugin 'ervandew/supertab'

" Search and replace:
" :Far foo bar **/*.py
" :Fardo
Plugin 'brooth/far.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent off    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

syntax on
colorscheme industry
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent
set number
set pastetoggle=<F2>

" Resume from previous line 
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Shortcuts
" Paste on new line with o
:nmap o :pu<CR>

" :vs newfile.js to open a newfile in new pane (lets you yank & paste between them)
" :e to edit a new file in the current pane

" If on Linux you can Cntrl-Shift-C to copy from one buffer:
set clipboard=unnamed
vnoremap <C-Shift-C> :w !xclip -i -sel c<CR><CR>

" Fedora -install vim-X11 and use command vimx to allow copy paste!
" can add alias vim='vimx' to bashrc

