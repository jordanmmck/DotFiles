" Setup {{{
"===============================================================

    " create .vimrc with: source /home/jordan/Dropbox/DotFiles/vimrc
    " create .vim
    " ln -s ~/Dropbox/DotFiles/.vim/after ~/.vim/after
    " ln -s ~/Dropbox/DotFiles/.vim/colors ~/.vim/colors
    " ln -s ~/Dropbox/DotFiles/.vim/syntax ~/.vim/syntax
    " git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    " :PluginInstall
    " sudo apt-get install build-essential cmake
    " sudo apt-get install python-dev python3-dev
    " cd ~/.vim/bundle/YouCompleteMe
    " ./install.py --clang-completer
    " pip3 install flake8

"===============================================================
" }}}

" Vundle {{{
"===============================================================

    " :PluginInstall
    " :PluginUpdate

    set nocompatible              " be iMproved, required
    filetype off                  " required

    " enable filetype plugins
    filetype plugin on

    " set the runtime path to include Vundle and initialize
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'

    " just like airline or powerline
    Plugin 'itchyny/lightline.vim'

    " allows easy surround of word/line with quotes/brackets etc
    Plugin 'tpope/vim-surround'

    " allows easy commenting out of lines/blocks
    Plugin 'tpope/vim-commentary'

    " flake8 py PEP8 style check
    Plugin 'nvie/vim-flake8'

    " fuzzy file search
    " Plugin 'ctrlpvim/ctrlp.vim'

    " file explorer
    Plugin 'scrooloose/nerdtree'

    " https://github.com/Valloric/YouCompleteMe#user-guide
    Plugin 'Valloric/YouCompleteMe'

    call vundle#end()

"===============================================================
" }}}

" Lightline {{{
"===============================================================

    let g:lightline = {
          \ 'colorscheme': 'wombat',
          \ 'component': {
          \   'readonly': '%{&readonly?"":""}',
          \ },
          \ 'separator': { 'left': '', 'right': '' },
          \ 'subseparator': { 'left': '', 'right': '' }
          \ }

"===============================================================
" }}}

" Commentary {{{
"===============================================================

    autocmd FileType py setlocal commentstring=#\ %s
    autocmd FileType js setlocal commentstring=//\ %s
    autocmd FileType c setlocal commentstring=//\ %s
    autocmd FileType java setlocal commentstring=//\ %s
    autocmd FileType txt setlocal commentstring=//\ %s

"===============================================================
" }}}

" Flake8 {{{
"===============================================================

    " pip3 install Flake8
    " autocmd FileType python map <buffer> <F3> :call Flake8()<CR>

"===============================================================
" }}}

" General {{{
"===============================================================

    syntax enable                   " enable syntax processing
    set wildmenu                    " visual autocomplete for command menu
    set lazyredraw                  " redraw only when we need to.

    set hidden
    set history=100
    let mapleader=" "

"===============================================================
" }}}

" Appearance {{{
"===============================================================

    try
        colorscheme vice
    catch
        colorscheme desert
    endtry

    set encoding=UTF-8
    set relativenumber              " show line numbers
    set number
    set showcmd                     " show command in bottom bar
    set cursorline                  " highlights line number that cursor is on
    set showmatch                   " highlight matching [{()}]
    set t_Co=256                    " use 256 colors
    set laststatus=2                " Always show statusline

    " highlight 81st column of wide lines
    highlight ColorColumn ctermbg=magenta
    call matchadd('ColorColumn', '\%81v', 100)

    highlight NonText ctermbg=none
    " color of folded lines
    hi Folded ctermbg=053
    " no-text area transparent
    hi Normal ctermbg=none

"===============================================================
" }}}

" Autocorrect {{{
"===============================================================

    :ab teh the
    :ab recieve receive
    :ab recieved received
    :ab syspl System.out.println

"===============================================================
" }}}

" Backup {{{
"===============================================================

    set nobackup
    set nowb
    set noswapfile

"===============================================================
" }}}

" Ignore {{{
"===============================================================

    " Ignore compiled files
    set wildignore=*.o,*~,*.pyc,*.a
    set wildignore=*.bmp,*.gif,*.ico,*.jpg,*.png
    set wildignore=*.git

"===============================================================
" }}}

" Folding {{{
"===============================================================

    set modelines=1                 " only do this for this file
    set foldenable                  " enable folding
    set foldlevelstart=10           " open most folds by default
    set foldnestmax=10              " 10 nested fold max
    set foldmethod=indent           " fold based on indent level

"===============================================================
" }}}

" Formatting {{{
"===============================================================

    filetype plugin indent on       " load filetype-specific indent files
    filetype plugin on
    set expandtab                   " tabs are spaces
    set shiftwidth=4                " number of spaces inserted per tab
    set softtabstop=4               " number of spaces in tab when editing
    set autoindent                  " copies indentation from prev line
    set wrap

    " Make tabs, trailing whitespace, and non-breaking spaces visible
    exec "set listchars=tab:\uBB\uBB,trail:\uB7,nbsp:~"
    set list

"===============================================================
" }}}

" Remappings {{{
"===============================================================

    " Swap v and CTRL-V, because Block mode is more useful that Visual mode
    nnoremap    v   <C-V>
    nnoremap <C-V>     v
    vnoremap    v   <C-V>
    vnoremap <C-V>     v

    " saves pinky stretching
    imap jj <Esc>

    " Swap : and ; to make colon commands easier to type
    nnoremap  ;  :
    nnoremap  :  ;

    " allows moving up/down wrapped lines more naturally
    nnoremap j gj
    nnoremap k gk

    " remove search highlights
    nnoremap <silent> <C-l> :nohl<CR><C-l>

    " toggle spellcheck
    map <leader>ss ;setlocal spell!<cr>
    " save
    map <leader>w ;w<cr>
    " save and quit
    map <leader>q ;wq<cr>
    " open/close fold
    map <leader>l za<cr>
    " copy to system register
    map <leader>y "+y<cr>
    " paste from system register
    map <leader>p "+p<cr>
    " insert empty line below
    map <leader>j o<esc>cc<esc>kk<cr>
    " insert empty line above
    map <leader>k O<esc>cc<esc><cr>
    " open nerdtree
    map <leader>t ;NERDTree<cr>

"===============================================================
" }}}

" Searching {{{
"===============================================================

    set ignorecase                  " ignore case when searching
    set smartcase
    set incsearch                   " search as characters are entered
    set hlsearch                    " highlight matches
    set magic                       " for regex

"===============================================================
" }}}

" vim:foldmethod=marker:foldlevel=0
