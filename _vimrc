" -----------------   Author: Ruchee
" -----------------    Email: my@ruchee.com
" -----------------  WebSite: http://www.ruchee.com
" -----------------     Date: 2012-01-04

" Ctrl + K     --光标移上一行末尾
" Ctrl + H     --光标移行首
" Ctrl + L     --光标移行尾
" Ctrl + Z     --取代ESC模式键 [和Lingos快捷键有冲突]
" Ctrl + S     --保存文件
" Ctrl + C     --编译 [支持C/C++、Java、Haskell]
" Ctrl + R     --运行 [支持C/C++、Java、Haskell、Lua、Perl、Python、Ruby]
" Ctrl + ]     --转到函数定义
" Ctrl + T     --返回调用函数
" Ctrl + E     --添加注释 [插入模式下] [添加的是C语言的行注释，所以适用于C/C++/Java等]
" Ctrl + E     --一步加载语法模板和作者、时间信息 [非插入模式下] [本质是:LoadTemplate和:AuthorInfoDetect的结合]

" <C-P>                  --单词补全
" <C-X><C-L>             --整行补全
" Tab键                  --插入模式下的全功能语法结构补全 [snipMate插件]

" wm                     --开启文档浏览窗口
" \ww                    --进入vimWiki模式

" za                     --打开或关闭当前折叠
" zM                     --关闭所有折叠
" zR                     --打开所有折叠

" :set syntax=cpp        --手动选择语法高亮 [或 :set filetype=cpp]

" :%!xxd                 --转储二进制文件，以十六进制形式显示
" :%!xxd -r              --还原二进制文件



" ---------- 主要插件详细用法说明 ---------------------

" :Tlist                 --呼出变量和函数列表 [TagList插件]
" :FencView              --查看文件编码和更改文件编码 [FencView插件]
" :LoadTemplate          --呼出语法模板 [Load_Template插件]
" :AuthorInfoDetect      --添加作者、时间等信息 [NERD_commenter && authorinfo插件]

" ---------- a.vim [自动切换C/C++同名头文件] ----------
"
" :A                     --切换同名头文件并独占整个屏幕
" :AS                    --切换同名头文件并垂直分屏，头文件在上
" :AV                    --切换同名头文件并水平分割，头文件在左

" ---------- mark.vim [追踪高亮指定关键字] ------------
"
" \m                     --normal模式下，在想要高亮的单词上面敲击\m即可高亮或取消高亮该单词
" :Mark                  --取消所有高亮
" :Mark abc              --指定高亮单词 abc 或取消高亮 abc

" ---------- NERDTree [智能文件浏览器] ----------------
"
" :NERDTree              --启动NERDTree插件
" o [小写]               --切换当前文件或目录的打开、关闭状态
" u                      --打开上层目录
" p [小写]               --返回上层目录
" P [大写]               --返回根目录
" K                      --转到当前目录第一个节点
" J                      --转到当前目录最后的节点
" m                      --显示文件系统菜单 [增、删、移]
" ?                      --弹出帮助菜单
" q                      --退出该插件

" ---------- snipMate [语法结构补全] -------------------
" --------- 例如：在编辑C/C++源文件时，输入单词main，然后按TAB键，Vim将自动补全成完整的main函数
" --------- 更多补全请自行查看vimfiles目录下的snippets文件夹
" --------- 此处只说明了C/C++的补全用法，很多经过了我的修改和调整，你也可以自行调整成适合自己的补全样式
"
" main                   -- C/C++语言 main 函数
" inc                    -- #include <>
" iinc                   -- #include ""
" incs                   -- #include <stdio.h> or #include <iostream>
" using                  -- using namespace std;
" def                    -- #define
" un                     -- unsigned
" re                     -- return
" p                      -- printf("\n");
" s                      -- scanf("");
" fpr                    -- fprintf(abc, "\n");
" if                     -- if(){}
" elif                   -- elseif(){}
" el                     -- else{}
" t                      -- a ? b : c
" do                     -- do{}while();
" wh                     -- while(){}
" for                    -- for(){}
" forr                   -- for(i = 0; i < 10; i++){}
" cl                     -- class abc{};
" fun                    -- void abc(){}
" fund                   -- void abc();
" td                     -- typedef a b;
" st                     -- struct abc{};
" tds                    -- typedef struct _abc{}abc;
" tde                    -- typedef enum{};
" .                      -- []





" 配色方案
colorscheme desert           " 灰褐色

" 字体、字号
set guifont=Courier\ New:h10

set tabstop=4                " 设置tab键的宽度
set shiftwidth=4             " 换行时行间交错使用4个空格
set autoindent               " 自动对齐
set backspace=2              " 设置退格键可用
set cindent shiftwidth=4     " 自动缩进4空格
set smartindent              " 智能自动缩进
set ai!                      " 设置自动缩进
set nu!                      " 显示行号
"set showmatch               " 显示括号配对情况
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 查找book时，当输入/b时会自动找到
set hlsearch                 " 开启高亮显示结果
set incsearch                " 开启实时搜索功能
set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
set vb t_vb=                 " 关闭提示音
"set cursorline              " 突出显示当前行
set hidden                   " 允许在有未保存的修改时切换缓冲区
set list                     " 显示Tab符，使用一高亮竖线代替
set listchars=tab:\|\ ,


syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on

if has("gui_running")
    au GUIEnter * simalt ~x  " 窗口启动时自动最大化
    "set guioptions-=m       " 隐藏菜单栏
    set guioptions-=T        " 隐藏工具栏
    "set guioptions-=L       " 隐藏左侧滚动条
    "set guioptions-=r       " 隐藏右侧滚动条
    "set guioptions-=b       " 隐藏底部滚动条
    "set showtabline=0       " 隐藏Tab栏
endif

set writebackup              " 设置无备份文件
set nobackup
set autochdir                " 设定文件浏览器目录为当前目录
"set nowrap                  " 设置不自动换行
set foldmethod=syntax        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠

" 每行超过80个的字符用下划线标示
au BufRead,BufNewFile *.asm,*.c,*.cpp,*.java,*.cs,*.sh,*.lua,*.pl,*.pm,*.py,*.rb,*.hs,*.vim 2match Underlined /.\%81v/


" 编码设置
"set encoding=utf-8
set fileencodings=utf-8,cp936,gbk,gb18030,big5,latin1


" For Haskell
:let hs_highlight_delimiters=1            " 高亮定界符
:let hs_highlight_boolean=1               " 把True和False识别为关键字
:let hs_highlight_types=1                 " 把基本类型的名字识别为关键字
:let hs_highlight_more_types=1            " 把更多常用类型识别为关键字
:let hs_highlight_debug=1                 " 高亮调试函数的名字
:let hs_allow_hash_operator=1             " 阻止把#高亮为错误


set laststatus=2                          " 开启状态栏信息
set cmdheight=2                           " 命令行的高度，默认为1，这里设为2

" 状态行显示的内容 [包括系统平台、文件类型、坐标、所占比例、时间等]
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%L,%v][%p%%]\ %y%r%m%*%=\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}



" ######### 括号、引号、中括号等自动匹配 ######### "

:inoremap ( ()<ESC>i

:inoremap ) <c-r>=ClosePair(')')<CR>

:inoremap { {}<ESC>i

:inoremap } <c-r>=ClosePair('}')<CR>

:inoremap [ []<ESC>i

:inoremap ] <c-r>=ClosePair(']')<CR>

":inoremap < <><ESC>i

":inoremap > <c-r>=ClosePair('>')<CR>

:inoremap " ""<ESC>i

:inoremap ' ''<ESC>i

:inoremap ` ``<ESC>i

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf




" ######### 自定义快捷键 ######### "

" Ctrl + K 将光标移到上一行的末尾
imap ^K <ESC>kA

" Ctrl + L 将光标移到行尾
imap ^L <ESC>A

" Ctrl + H 将光标移到行首
imap ^H <ESC>I

" Ctrl + Z 取代ESC模式键
:inoremap ^Z <ESC>

" Ctrl + S 保存文件
map ^S <ESC>:w<CR>
imap ^S <ESC>:w<CR>a
vmap ^S <ESC>:w<CR>

" Ctrl + E 一步加载语法模板和作者、时间信息 [非插入模式]
map ^E <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi
vmap ^E <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi

" Ctrl + E 在当前行添加C语言行注释 [插入模式]
imap ^E /*  */<ESC>hhi





" ######### 第三方插件 ######### "

" WinManager 直接输入 wm 命令即可开启文件浏览窗口
let g:winManagerWindowLayout='FileExplorer'
nmap wm :WMToggle<cr>

" MiniBufExplorer 多个文件切换 可使用鼠标双击相应文件名进行切换
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

" TagList 键入:Tlist开启
let Tlist_Show_One_File=1                             " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                           " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=1                          " 在右侧窗口中显示

" ctags
" --先在项目顶层目录执行ctags -R，然后打开源文件，在命令模式中执行如：set tags=../../tags
" --这样在函数名上按 <C-]> 即可转到函数定义，按 <C-T> 可以返回调用地址
" --如果长时间需要在该目录工作，也可以将tags路径写入配置文件

"set tags+=C:\Develop\MinGW\include\tags              " For C/C++
"set tags+=C:\Develop\GTK\include\tags                " For GTK+
"set tags+=C:\Develop\Lua\lua\tags                    " For Lua
"set tags+=G:\Cygwin\usr\include\tags                 " For Cygwin

" TxtBrowser 高亮TXT文本文件
au BufRead,BufNewFile *.txt setlocal ft=txt

" fencview 自动编码识别     :FencView   查看文件编码和更改文件编码
let g:fencview_autodetect=1

" Load_Template 根据文件后缀自动加载模板，使用:LoadTemplate呼出
let g:template_path='D:\Apps\Gvim\vimfiles\template\'

" NERD_commenter && authorinfo 自动添加作者、时间等信息，使用:AuthorInfoDetect呼出
let g:vimrc_author='Ruchee'
let g:vimrc_email='my@ruchee.com'
let g:vimrc_homepage='http://www.ruchee.com'





" ######### 一键保存和编译 ######### "
" ######### 如此处没有配置你需要的编程语言，请参照示例自行配置，很简单的

" 编译C源文件
func! CompileGcc()
    exec "w"
    let compilecmd="!gcc -Wall -pedantic -std=c99 "
    let compileflag="-o %<"
    exec compilecmd." % ".compileflag
endfunc

" 编译C++源文件
func! CompileCpp()
    exec "w"
    let compilecmd="!g++ -Wall -pedantic -std=c++98 "
    let compileflag="-o %<"
    exec compilecmd." % ".compileflag
endfunc

" 编译Java源文件
func! CompileJava()
    exec "w"
    exec "!javac %"
endfunc

" 编译Haskell源文件
func! CompileHaskell()
    exec "w"
    let compilecmd="!ghc --make "
    let compileflag="-o %<"
    exec compilecmd." % ".compileflag
endfunc

" 运行Lua源文件
func! RunLua()
    exec "w"
    exec "!lua %"
endfunc

" 运行Perl源文件
func! RunPerl()
    exec "w"
    exec "!perl %"
endfunc

" 运行Python源文件
func! RunPython()
    exec "w"
    exec "!python %"
endfunc

" 运行Ruby源文件
func! RunRuby()
    exec "w"
    exec "!ruby %"
endfunc


" 根据文件类型自动选择相应的编译函数
func! CompileCode()
        exec "w"
        if &filetype == "c"
            exec "call CompileGcc()"
        elseif &filetype == "cpp"
            exec "call CompileCpp()"
        elseif &filetype == "java"
            exec "call CompileJava()"
        elseif &filetype == "haskell"
            exec "call CompileHaskell()"
        elseif &filetype == "lua"
            exec "call RunLua()"
        elseif &filetype == "perl"
            exec "call RunPerl()"
        elseif &filetype == "python"
            exec "call RunPython()"
        elseif &filetype == "ruby"
            exec "call RunRuby()"
        endif
endfunc

" 运行可执行文件
func! RunResult()
        exec "w"
        if &filetype == "c"
            exec "! %<"
        elseif &filetype == "cpp"
            exec "! %<"
        elseif &filetype == "java"
            exec "!java %<"
        elseif &filetype == "haskell"
            exec "! %<"
        elseif &filetype == "lua"
            exec "!lua %<.lua"
        elseif &filetype == "perl"
            exec "!perl %<.pl"
        elseif &filetype == "python"
            exec "!python %<.py"
        elseif &filetype == "ruby"
            exec "!ruby %<.rb"
        endif
endfunc


" Ctrl + C 一键保存、编译
map ^C :call CompileCode()<CR>
imap ^C <ESC>:call CompileCode()<CR>
vmap ^C <ESC>:call CompileCode()<CR>

" Ctrl + R 一键保存、运行
map ^R :call RunResult()<CR>
imap ^R <ESC>:call RunResult()<CR>
vmap ^R <ESC>:call RunResult()<CR>




" ######### VimWiki 写作助手 ######### "

" 使用鼠标映射
let g:vimwiki_use_mouse = 1

" 不要将驼峰式词组作为 Wiki 词条
let g:vimwiki_camel_case = 0

" 声明可以在wiki里面使用的HTML标签
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h4,h5,h6,pre'

let g:vimwiki_list = [{
\ 'path': 'D:/Apps/Gvim/mysite/wiki',
\ 'path_html': 'D:/Apps/Gvim/mysite/html/',
\ 'html_header': 'D:/Apps/Gvim/mysite/template/header.html',
\ 'html_footer': 'D:/Apps/Gvim/mysite/template/footer.html',
\ 'auto_export': 1,
\ 'nested_syntaxes': {'Asm': 'asm', 'C': 'c', 'C++': 'cpp','Java': 'java', 'Haskell': 'haskell', 'Lua': 'lua', 'Perl': 'perl', 'Python': 'python', 'PHP': 'php', 'HTML': 'html', 'Bash': 'sh', 'Vim': 'vim', 'Make': 'make', 'Automake': 'AUTOMAKE'},}]
