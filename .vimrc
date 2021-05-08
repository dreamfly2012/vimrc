syntax on 

set t_Co=256

colorscheme monokai

set relativenumber

set number 

set showcmd " show command in line

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

set hlsearch

filetype plugin indent on 

filetype indent on 

set backupcopy=yes 

set ignorecase smartcase 

set nowrapscan 

set noerrorbells 

set novisualbell  
set magic 

set hidden 

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

inoremap <C-c> "+y
inoremap <C-v> "+p
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap J 10j
nnoremap K 10k
inoremap jk  <ESC>
nnoremap <C-f> :FZF<CR>


"termdebug
nnoremap <F11> :Step<CR>
nnoremap <F5> :Run<CR>
nnoremap <F10> :Over<CR>
nnoremap <F9> :Break<CR>

"php autoimport

set tags+=tags,tags.vendors
function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>

function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>


let g:go_fmt_command="goimports"
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_operators = 1

let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
let g:lsp_diagnostics_echo_cursor = 1
let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']

"gitgutter 
highlight GitGutterAdd    guifg=#009900 ctermfg=2
highlight GitGutterChange guifg=#bbbb00 ctermfg=3
highlight GitGutterDelete guifg=#ff2222 ctermfg=1

let g:gitgutter_enabled = 1
let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']
" Tab completion
imap <c-space> <Plug>(asyncomplete_force_refresh)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
 autocmd FileType vue syntax sync fromstart
"代码格式化的快捷键，设置为F9
 autocmd FileType vue noremap <buffer> <F9> :%!vue-formatter<CR>
"启用eslint代码检查，如果不想受限制，可以注释掉
 let g:syntastic_javascript_checkers = ['eslint']

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


"php 
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-projectionist'
Plugin 'noahfrederick/vim-composer'
Plugin 'noahfrederick/vim-laravel'
Plugin 'jwalton512/vim-blade'

Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
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
Plugin 'tpope/vim-surround'
Plugin 'arnaud-lb/vim-php-namespace'
Plugin 'craigemery/vim-autotag'
Plugin 'mattn/emmet-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'MaraniMatias/vue-formatter'
Plugin 'posva/vim-vue'
Plugin 'vim-syntastic/syntastic'
