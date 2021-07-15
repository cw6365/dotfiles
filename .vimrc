let mapleader = " "
set encoding=utf-8
set backspace=2   " Backspace deletes like most programs in insert mode
set nowritebackup
set noswapfile
set history=50
set ruler
set showcmd
set incsearch
set laststatus=2
set autowrite
set modelines=0
set nomodeline
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set nojoinspaces
" colorscheme onedark
set number
" highlight Normal ctermbg=None
" highlight LineNr ctermfg=DarkGrey
syntax on
inoremap jj <Esc>
set relativenumber
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>
noremap <leader>/ :Commentary<cr>
nnoremap gc cm
cmap w!! %!sudo tee > /dev/null

" nerdtree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>. :NERDTreeToggle<Cr>

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in fzf for listing files. Lightning fast and respects .gitignore
  let $FZF_DEFAULT_COMMAND = 'ag --literal --files-with-matches --nocolor --hidden -g ""'

  if !exists(":Ag")
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap \ :Ag<SPACE>
  endif
endif

call plug#begin('~/.vim/plugged')
  Plug 'junegunn/vim-easy-align'
  Plug 'preservim/nerdtree'
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'kana/vim-textobj-user'
  Plug 'nelstrom/vim-textobj-rubyblock'
  Plug 'psliwka/vim-smoothie'
" Initialize plugin system
call plug#end()

nnoremap <leader>p :Files<Cr>
nnoremap <leader>P :Files!<Cr>
nnoremap <leader>b :Buffers<Cr>

" rubyblock requirements
runtime macros/matchit.vim
set nocompatible
if has("autocmd")
  filetype indent plugin on
endif
