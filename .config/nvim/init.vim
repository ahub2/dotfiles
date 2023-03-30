if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.local/share/nvim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'


    Plug 'tpope/vim-fugitive'
    Plug 'dense-analysis/ale'
    Plug 'chriskempson/base16-vim'

    Plug 'vimwiki/vimwiki'

    "language support
    Plug 'tbastos/vim-lua'
    Plug 'ziglang/zig.vim'



call plug#end()

"vimwiki
set nocompatible
filetype plugin on
syntax on

"enable ale completion
let g:ale_completion_enabled = 1

"airline setup
    "let g:airline_extensions = []
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#ale#enabled = 1
    let g:airline_powerline_fonts = 1
    let g:airline_theme='simple'

"syntax numbers, wildmode
    syntax on
    set ruler
    set number "relativenumber
    set wildmode=longest,list,full

"Tab Config
    set expandtab   "converts tabs to spaces
    set shiftwidth=4
    set tabstop=4

"split navigation
    nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>
    nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>

    nnoremap  <F2> :ALEGoToDefinition<Enter>

    

"make vim use system clipboard by default. ONLY FOR NEOVIM
    set clipboard+=unnamedplus

    let vim_markdown_preview_browser='librewolf'
    let vim_markdown_preview_use_xdg_open=1

"enable unicode support if possible
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  " Uncomment to have 'bomb' on by default for new files.
  " Note, this will not apply to the first, empty buffer created at Vim startup.
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif
