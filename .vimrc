syntax on 

let g:dracula_italic=0
" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


call plug#begin('~/.vim/plugged') 

"php
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-projectionist'
Plug 'noahfrederick/vim-composer'
Plug 'noahfrederick/vim-laravel'
Plug 'jwalton512/vim-blade'
Plug 'junegunn/limelight.vim'        
Plug 'junegunn/goyo.vim' 
"lsp
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
"explorer tree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"search files
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
"golang
Plug 'fatih/vim-go'
Plug 'dgryski/vim-godef'
"bottom status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
"git 
Plug 'airblade/vim-gitgutter'
"surround
Plug 'tpope/vim-surround'
Plug 'craigemery/vim-autotag'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-syntastic/syntastic'
"http rest
Plug 'diepm/vim-rest-console'
"markdown
Plug 'gabrielelana/vim-markdown'
Plug 'godlygeek/tabular' 
Plug 'plasticboy/vim-markdown'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'joker1007/vim-markdown-quote-syntax'
Plug 'Chiel92/vim-autoformat'
"javascript
Plug 'posva/vim-vue'
Plug 'MaraniMatias/vue-formatter'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
"theme
"Plug 'sickill/vim-monokai'
Plug 'dracula/vim'
call plug#end()

packadd termdebug

colorscheme dracula

set t_Co=256

set relativenumber

hi Normal ctermbg=NONE

"ctermbg=NONE

set mouse=a 

set clipboard=unnamed

set number 

set showcmd " show command in line

set mouse=a " mouse enable

set encoding=utf-8 

set ruler 

set shiftwidth=4 

set softtabstop=4 

set tabstop=4 
set expandtab 
set winheight=10

set scrolloff=15 

set history=1000 " record history nums

set wildmenu

set wildmode=longest:list,full " show recommend command you can use tab 

set autoread " when other file change the file ,it will tell you

set hlsearch

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

"set hidden 

set splitbelow

set splitright

set smarttab

set guioptions-=T 

set guioptions-=m 

set smartindent 

set backspace=indent,eol,start

set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ %c:%l/%L%)\

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'Gray'
let g:limelight_conceal_ctermfg = 240
" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'
" 包含的前后段的数量
let g:limelight_paragraph_span = 1
" Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1
" Goyo配置
let g:goyo_width = 86
let g:goyo_height = 90
let g:goyo_linenr = 0
" 进入goyo模式后自动触发limelight，退出则关闭
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

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
inoremap jk  <ESC>
nmap <silent> <C-F8> <Plug>MarkdownPreview
imap <silent> <C-F8> <Plug>MarkdownPreview
" for normal mode
nmap <silent> <C-F9> <Plug>StopMarkdownPreview
" for insert mode
imap <silent> <C-F9> <Plug>StopMarkdownPreview
vnoremap <C-y> "+y
nnoremap <C-f> :FZF<CR>

"window resize
nnoremap w= :resize +3<CR>
nnoremap w- :resize -3<CR>
nnoremap w, :vert resize -3<CR> 
nnoremap w. :vert resize +3<CR>
"termdebug
nnoremap <F11> :Step<CR>
nnoremap <F5> :Run<CR>
nnoremap <F10> :Over<CR>
nnoremap <F9> :Break<CR>
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
"python format
nnoremap <F6> :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

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

let g:NERDTreeGitStatusPorcelainVersion=1
let g:gitgutter_enabled = 1
let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']
let g:vim_markdown_folding_disabled = 1
" Tab completion
imap <c-space> <Plug>(asyncomplete_force_refresh)
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>\<cr>" : "\<cr>"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd FileType vue syntax sync fromstart
"代码格式化的快捷键，设置为F9
let g:prettier#autoformat = 0
autocmd FileType vue noremap <buffer> <F9> :%!vue-formatter<CR>
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
"启用eslint代码检查，如果不想受限制，可以注释掉
let g:syntastic_javascript_checkers = ['eslint']

