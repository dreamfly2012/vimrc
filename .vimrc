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

set spell spelllang=en_us

set history=1000 " record history nums

set wildmenu

set wildmode=longest:list,full " show recommend command you can use tab 

set autoread " when other file change the file ,it will tell you

set nobackup " 覆盖文件时不备份

set autochdir " 自动切换当前目录为当前文件所在的目录

filetype plugin indent on " 开启插件

filetype indent on " set indent base on filetype such as .py

set backupcopy=yes 

set ignorecase smartcase 

set nowrapscan " 禁止在搜索到文件两端时重新搜索

set incsearch " 输入搜索内容时就显示搜索结果

set hlsearch " 搜索时高亮显示被找到的文本

set noerrorbells " 关闭错误信息响铃

set novisualbell " 关闭使用可视响铃代替呼叫
set magic 

set hidden 

set guioptions-=T " 隐藏工具栏

set guioptions-=m " 隐藏菜单栏

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

" 选中状态下 Ctrl+c 复制

vmap <C-c> "+y
vmap <C-v> "+p

" auto load bundle and bundle plugin



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

Plugin 'Valloric/YouCompleteMe'
