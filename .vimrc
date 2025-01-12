"System
set nocompatible    "不使用vi

"操作
set history=100       "history中需要记录的行数
set confirm              "未保存时提示
set backspace=2     "退格键正常使用
set tabstop=4       "tab显示为4格
set expandtab       "tab为4空格而不是制表符

"auto correct spelling error
setlocal spell
set spell spelllang=en,cjk
inoremap <C-l> <c-g>u<Esc>[s1z=']a<c-g>u
autocmd FileType markdown set spell spelllang=en,cjk
set langmenu=en_US.UTF-8

" 检测函数（检测光标位置处文字的样式名）
function! <SID>SynStack()
    echo map(synstack(line('.'),col('.')),'synIDattr(v:val, "name")')
endfunc

" 绑定检测键位（按键后样式名信息会输出在指令栏的位置）
nnoremap <leader>yi :call <SID>SynStack()<CR>
"<leader>:\


"文件格式
"set fileencodings=utf-8,gb312,gb18030,gbk,ucs-bom,cp936,latin1
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set enc=utf8
set fencs=utf8,gbk,gb2312,gb18030
set encoding=utf8

"显示
set number relativenumber "显示相对行号
set nonu                  "行号
set conceallevel=2 "缩略显示
set concealcursor="nc"
let g:tex_conceal='abdmg'
set wrap           "自动换行
syntax on          "语法匹配
syntax enable
colorscheme molokai
set background=dark
set showmatch             "匹配括号
set matchtime=5          "匹配括号显示时间
set lcs=tab:>-,lead:.,trail:_,extends:>,precedes:<           "空格符显示列表
set list                                                     "是否显示空格符
set ambiwidth=double     "设置双字宽显示, 显示部分完整字体
set vb t_vb=
au GuiEnter * set t_vb=

set nofoldenable         "禁止折叠

set cursorcolumn         "十字架
set cursorline

" Set cursor shape and color
if &term =~ "xterm"
    " INSERT mode
    let &t_SI = "\<Esc>[6 q" . "\<Esc>]12;blue\x7"
    " REPLACE mode
    let &t_SR = "\<Esc>[3 q" . "\<Esc>]12;red\x7"
    " NORMAL mode
    let &t_EI = "\<Esc>[2 q" . "\<Esc>]12;green\x7"
endif
" 1 -> blinking block  闪烁的方块
" 2 -> solid block  不闪烁的方块
" 3 -> blinking underscore  闪烁的下划线
" 4 -> solid underscore  不闪烁的下划线
" 5 -> blinking vertical bar  闪烁的竖线
" 6 -> solid vertical bar  不闪烁的竖线

"-----------------map---------------------------

imap jj <Esc>:w<CR>

"--------------Vim-Plug--------------
call plug#begin('~/.vim/vim-plug')

"---markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'dkarter/bullets.vim'
Plug 'SirVer/ultisnips'
"Plug 'iamcco/markdown-preview.nvim', {'do':{-> mdkp#util#install()}, 'for':['markdown','vim-plug']}
Plug 'tpope/vim-surround'
Plug 'itchyny/lightline.vim'
"Plug 'jiangmiao/auto-pairs'
Plug 'ZSaberLv0/ZFVimIM'
Plug 'ZSaberLv0/ZFVimJob'

call plug#end()

"***************************************
"--------------Plugin-settings----------
"***************************************

"---palsticboy/vim-markdown
    let g:vim_markdown_math=1
    let g:vim_markdown_conceal_code_blocks=0
    let g:vim_markdown_new_list_item_indent = 0
    let g:vim_markdown_floking_disabled = 1             "禁止折叠

"---SirVer/ultisnips
"see the help: :help UltiSnips
    let g:UltiSnipsExpandTrigger = '<c-tab>'
    let g:UltiSnipsListSnippets = '<c-j>'
    let g:UltiSnipsJumpForwardTrigger = '<tab>'
    let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
    let g:UltiSnipsEditSplit="tabdo"
    let g:UltiSnipsEditSplit="vertical"
    cmap use UltiSnipsEdit

"---iamcco/markdown-preview.nvim
    nmap <F8> <Plug>MarkdownPreview

"---itchyny/lightline
set laststatus=2
set noshowmode

let g:lightline = {
    \'colorscheme':'deus_my',
    \'mode_map':{
    \   'n' : 'N',
    \   'i' : 'I',
    \   'R' : 'R',
    \   'v' : 'V',
    \   'V' : 'V',
    \   "\<C-v>": 'V',
    \   'c' : 'N',
    \   's' : 'S',
    \   'S' : 'S',
    \   "\<C-s>": 'S',
    \   't': 'T',
    \},
    \'active':{
    \   'left':[['mode','paste'],['bufnum'],['filename','fileencoding','fileformat']],
    \   'right':[['mode','paste'],['lineinfo'],['time']],
    \},
    \'component':{
    \   'filename':'%t%m%r%h%w %y',
    \   'lineinfo':'%3p%% %3l:%2c',
    \   'time':'%{strftime("%y-%m-%d  %a %H:%m")}',
    \},
    \}

"---dkarter/bullets.vim
let g:bullets_renumber_on_change=0 "禁止自动重排序 手动排序命令gN
let g:bullets_pad_right=0

"---ZSaberLv0/ZFVimIM
"function! s:myLocalDb()
"    let db = ZFVimIM_dbInit({
"                \   'name' : 'flypy',
"                \ })
"    call ZFVimIM_cloudRegister({
"                \   'mode' : 'local',
"                \   'dbId' : db['dbId'],
"                \   'repoPath' : '~/.vim/ZFVimIM',
"                \   'dbFile' : 'flypy.txt'
"                \ })
"endfunction
"autocmd User ZFVimIM_event_OnDbInit call s:myLocalDb()
""-------------highlight----------------
"hi! link conceal texmathzonex
"hi! nontext ctermfg=0 ctermbg=NONE guifg=gray guibg=NONE
"hi! specialkey ctermfg=0 ctermbg=NONE guifg=gray guibg=NONE
