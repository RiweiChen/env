set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

" ==============================================

" nerdtree
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

" colorscheme
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'

" syntastic
"Plugin 'scrooloose/syntastic'
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

Plugin 'morhetz/gruvbox'


Bundle "davidhalter/jedi"

"let g:syntastic_python_checkers=['pylint']
"let g:syntastic_python_pylint_args='--disable=C0111,R0903,C0301'
" 使用pylint
"autocmd FileType python compiler pylint
" " 避免每次保存文件都运行一次
"let g:pylint_onwrite = 0
" " F6检查代码
"map <F6> :w<cr>:Pylint<cr>
"

" neocomplcache
Plugin 'Shougo/neocomplcache'

" supertab
Plugin 'ervandew/supertab'

" tagbar
Plugin 'majutsushi/tagbar'

" ctrlp
Plugin 'kien/ctrlp.vim'
Bundle 'Markdown'
Bundle 'Markdown-syntax'

Bundle 'bling/vim-airline'
set laststatus=2


" Indention display
Bundle 'Yggdroot/indentLine'
let g:indentLine_color_term=239
let g:indentLine_char='|'

" markdown, js, ruby and rails
Plugin 'tpope/vim-markdown'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

" rainbow_parentheses 括号匹配高亮
" vim-trailing-whitespace 去除多余空格
" vim-indent-guides 可视化缩进
" vim-powerline 美化状态栏
" vim-easymotion 快速移动
" python-syntax py语法高亮

" ==============================================

" All of your Plugins must be added before the following line
call vundle#end()            " required


filetype plugin indent on    " required
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

" ==============================================
" enable syntax hightlight and completion
syntax on

"--------
" Vim UI
"--------
" color scheme
syntax enable
" set background=dark
" colorscheme solarized


" editor settings
set number           " show line numbers
set title            " show file in titlebar

" Default Indentation
set autoindent

autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=80

" ==============================================

" Nerdtree config
map <C-n> :NERDTreeToggle<CR>  " open NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif  " close vim if the only window left open is a NERDTree



" ==============================================
" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y

set mouse=a
set listchars=tab:>-,trail:-,extends:#,nbsp:-
set shiftwidth=4 " 设定 << 和 >> 命令移动时的宽度为 4
set softtabstop=4 " 使得按退格键时可以一次删掉 4 个空格
set tabstop=8 " 设定 tab 长度为 4
colorscheme gruvbox
set background=dark

set incsearch " 输入搜索内容时就显示搜索结果
set hlsearch " 搜索时高亮显示被找到的文本
set cursorline " 突出显示当前行

" 让缩进显示
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/
