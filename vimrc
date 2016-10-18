
" General {{{
"===============================================================

    set nocompatible                " required for powerline?
    syntax enable                   " enable syntax processing
    set wildmenu                    " visual autocomplete for command menu
    set lazyredraw                  " redraw only when we need to.
    inoremap df <esc>
    "" turn off search highlight 
    "" nnoremap <leader><space> :nohlsearch<CR>

"===============================================================
" }}}

" Appearance {{{
"===============================================================

    colorscheme vice 
    set number                      " show line numbers
    set showcmd                     " show command in bottom bar
    set cursorline                  " highlights line number that cursor is on
    set showmatch                   " highlight matching [{()}]
    set incsearch                   " search as characters are entered
    set hlsearch                    " highlight matches
    set t_Co=256                    " use 256 colors 

"===============================================================
" }}}

" Navigation {{{
"===============================================================

    " move to beginning of line
    nnoremap B ^

    " move to end of line
    nnoremap E $
    
    " disable default move to start 
    nnoremap $ <nop>

    " disable default move to end
    nnoremap ^ <nop>

    " prevent cursor from skipping over wrapped line
    nnoremap j gj

    " prevent cursor from skipping over wrapped line
    nnoremap k gk

"===============================================================
" }}}

" Formatting {{{
"===============================================================

    set tabstop=4           " number of visual spaces per TAB
    set softtabstop=4       " number of spaces in tab when editing
    set shiftwidth=4        " number of spaces inserted per tab
    set expandtab           " tabs are spaces
    filetype indent on              " load filetype-specific indent files

"===============================================================
" }}}

" Folding {{{
"===============================================================

    " foldmethod=marker               " fold by markers rather than indent
    " foldlevel=0                     " fold by default 
    set modelines=1                 " only do this for this file

    set foldenable                  " enable folding
    set foldlevelstart=10           " open most folds by default
    set foldnestmax=10              " 10 nested fold max

    " use space to open/close folds
    nnoremap <space> za
    set foldmethod=indent           " fold based on indent level


"===============================================================
" }}}

" Extras {{{
"===============================================================

    " <Ctrl-l> redraws the screen and removes any search highlighting.
    nnoremap <silent> <C-l> :nohl<CR><C-l>

    " let mapleader=","

    " toggle gundo
    " https://github.com/sjl/gundo.vim
    " nnoremap <leader>u :GundoToggle<CR>

    set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

    " Always show statusline
    set laststatus=2

"===============================================================
" }}}

" vim:foldmethod=marker:foldlevel=0
