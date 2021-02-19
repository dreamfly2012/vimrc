syntax on 

set relativenumber

set number 

set showcmd " show command in line

set mouse=a " mouse enable

set encoding=utf-8 

set ruler 

set shiftwidth=4 

set softtabstop=4 

set tabstop=4 

set expandtab 

set scrolloff=15 

set history=1000 " record history nums

set wildmenu

set wildmode=longest:list,full " show recommend command you can use tab 

set autoread " when other file change the file ,it will tell you

set nobackup 

filetype plugin indent on 

filetype indent on 

set backupcopy=yes 

set ignorecase smartcase 

set nowrapscan 

set incsearch 

set hlsearch

set noerrorbells 

set novisualbell  
set magic 

set hidden 

set guioptions-=T 

set guioptions-=m 

set smartindent 

set backspace=indent,eol,start

set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\

if has("multi_byte")

set encoding=utf-8

set termencoding=utf-8

set formatoptions+=mM

set fencs=utf-8,gbk

endif

if has("autocmd")
    autocmd! bufwritepost vimrc source $MYVIMRC
endif

vmap <C-c> "+y
vmap <C-v> "+p
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
inoremap jk  <ESC>

let g:go_fmt_command="goimports"

let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']
:nn <M-1> 1gt
:nn <M-2> 2gt
:nn <M-3> 3gt
:nn <M-4> 4gt
:nn <M-5> 5gt
:nn <M-6> 6gt
:nn <M-7> 7gt
:nn <M-8> 8gt
:nn <M-9> 9gt
:nn <M-0> :tablast<CR>

let hasVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')


if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
    let hasVundle=0
endif

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Yggdroot/LeaderF'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'fatih/vim-go'
Plugin 'dgryski/vim-godef'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'
