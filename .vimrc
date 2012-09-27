" Search-related options
:set hlsearch
:set incsearch
:set smartcase
nnoremap <CR> :noh<CR><CR>


set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

" eliminate problems with pubkey authorization and https 
let g:vundle_default_git_proto = 'git'
 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " ...
 Bundle 'Zenburn'
 Bundle 'easymotion'
 Bundle 'LaTeX-Box' 
 Bundle 'surround' 
 Bundle 'yankring' 
 Bundle 'scratch' 
 Bundle 'NrrwRgn'
 
 Bundle 'Powerline' 
 let g:Powerline_symbols = 'fancy'
 set encoding=utf-8
 set laststatus=2


 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

 " Bundle 'LaTeX-Box' 
 " Fonts
 set guifont=Monaco\ for\ Powerline:h12
 
 " Personal settings
 
 " Colors
 colorscheme zenburn
 
 " Cursor position
 set ruler
 
 " Case-insensitive searches
 set ignorecase

 " auto-revert-buffer
 set autoread

 " Filetype detection
 filetype plugin on
 filetype indent on
 
 " Command History
 set history=1000
 
 :let mapleader = ","
 
 
 " Bindings similar to the ones I use in evil-mode
 " Save buffer
 noremap <leader>s :w<cr>
 
 " Find file
 noremap <leader>f :edit<Space>
 
 " Kill buffer
 noremap <leader>k :bd<cr>
 
 " Switch to buffer
 noremap <leader>b :buffer<Space>
 
 " List buffers
 noremap <leader>B :ls!<cr>
 
 " Fill-paragraph
 noremap <leader>q {gq}
 
 " Window management and navigation
 nmap <leader>3 :vsplit<cr>
 nmap <leader>2 :split<cr>
 nmap <leader>1 <C-W>o
 nmap <leader>0 <C-W>c
 
 noremap + <C-a>
 noremap - <C-x>
 
 " Break lines
 nmap <leader>J m`i<cr><esc>``
 
 " Emacs-like C-A and C-E in insert mode
 inoremap <C-a> <esc>0i
 inoremap <C-e> <esc>$a
 
 " C-g to cancel
 imap <C-g> <Esc>
 cmap <C-g> <C-c>


 " Keep visual selection after indents
 
 vnoremap < <gv
 vnoremap > >gv


 " Hidden buffers
 set hidden
 
 " GUI options
 
 
 if has("gui_running")
     set guioptions=egmt
 endif
 
 
 runtime macros/matchit.vim
 
 " Relative numbering
 
 function! ToggleRnu()
    if (&relativenumber==1)
      :set rnu! 
    else
      :set rnu
    endif
 endfunction
 
 nmap <leader>r :call ToggleRnu()<cr>
 
 " line numbering
 function! ToggleNu()
    if (&number==1)
      :set nu! 
    else
      :set nu
    endif
 endfunction
 
 nmap <leader>l :call ToggleRnu()<cr>
