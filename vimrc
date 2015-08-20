 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""
""基本设置{}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set sw=4
set ts=4
set et
set smarttab
set smartindent
set lbr
set fo+=mB
set sm
set selection=inclusive
set mousemodel=popup
set mouse=v
"set clipboard=unnamed

set cul "高亮光标所在行
set cuc
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示  
set go=             " 不要图形按钮  
autocmd InsertEnter * se cul    " 用浅色高亮当前行  
set ruler           " 显示标尺  
set showcmd         " 输入的命令显示出来，看的清楚些  
"set whichwrap+=<,>,h,l   " 允许backspace和光标键跨越行边界(不建议)  
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离  
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容  
set laststatus=2    " 启动显示状态行(1),总是显示状态行(2)  
set foldenable      " 允许折叠  
set foldmethod=manual   " 手动折叠  
"set fdm=marker ""indent ""更多的缩进表示更高级别的折叠
set nocompatible  "去掉讨厌的有关vi一致性模式，避免以前版本的一些bug和局限  
" 显示中文帮助
if version >= 603
    set helplang=cn
    set encoding=utf-8
endif
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4
set shiftwidth=4
" 不要用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
set smarttab
" 显示行号
set number
" 历史记录数
set history=1000
"搜索逐字符高亮
set hlsearch
set incsearch
"语言设置
set langmenu=zh_CN.UTF-8
set helplang=cn
" 总是显示状态行
set cmdheight=2
" 侦测文件类型
filetype on
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

set magic                   " 设置魔术
set guioptions-=T           " 隐藏工具栏
set guioptions-=m           " 隐藏菜单栏
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase

set linespace=0
" 增强模式中的命令行自动完成操作
set wildmenu
" 使回格键（backspace）正常处理indent, eol, start等
set backspace=2
" 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）
set mouse=a
"set selection=exclusive
set selectmode=mouse,key
" 通过使用: commands命令，告诉我们文件的哪一行被改变过
set report=0
" 在被分割的窗口间显示空白，便于阅读
set fillchars=vert:\ ,stl:\ ,stlnc:\
" 高亮显示匹配的括号
set showmatch
" 匹配括号高亮的时间（单位是十分之一秒）
set matchtime=1


set iskeyword+=.
set termencoding=utf-8
set encoding=utf8
set fileencodings=utf8,gbk,cp936,gb2312,gb18030,latin-1
set nobomb
"""colorscheme
colorscheme solarized


filetype plugin indent on 
""""""""""""""""""""基本设置}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 方法{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""判断操作系统类型
if(has("win32") || has("win64"))
    let g:isWIN = 1
    let g:isMAC = 0
else
    if system("uname") =~ "Darwin"
        let g:isWIN = 0
        let g:isMAC = 1
    else
        let g:isWIN = 0
        let g:isMAC = 0
    endif
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if g:isWIN

    set guifont=Microsoft\ Yahei\ 13,WenQuanYi\ Zen\ Hei\ 13

else
    
    set guifont=DejaVu\ Sans\ Mono\ 13 

endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function AddCDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/c.txt
    else
        set dict+=~/.vim/dict/c.txt
    endif
    set complete+=k
endfunction

function AddCPPDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/c.txt
        set dict+=$VIM/vimfiles/dict/cpp-stdlib.txt
        set dict+=$VIM/vimfiles/dict/cpp-boost.txt
    else
        set dict+=~/.vim/dict/c.txt
        set dict+=~/.vim/dict/cpp-stdlib.txt
        set dict+=~/.vim/dict/cpp-boost.txt
    endif
    set complete+=k
endfunction

function AddJavaDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/java.txt
    else
        set dict+=~/.vim/dict/java.txt
    endif
    set complete+=k
endfunction

function AddLuaDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/lua.txt
    else
        set dict+=~/.vim/dict/lua.txt
    endif
    set complete+=k
endfunction

function AddPerlDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/perl.txt
    else
        set dict+=~/.vim/dict/perl.txt
    endif
    set complete+=k
endfunction

function AddPHPDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/php.txt
    else
        set dict+=~/.vim/dict/php.txt
    endif
    set complete+=k
endfunction

function AddPythonDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/python.txt
    else
        set dict+=~/.vim/dict/python.txt
    endif
    set complete+=k
endfunction

function AddRubyDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/ruby.txt
    else
        set dict+=~/.vim/dict/ruby.txt
    endif
    set complete+=k
endfunction

function AddScalaDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/scala.txt
    else
        set dict+=~/.vim/dict/scala.txt
    endif
    set complete+=k
endfunction

function AddJavaScriptDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/javascript.txt
        set dict+=$VIM/vimfiles/dict/node.txt
    else
        set dict+=~/.vim/dict/javascript.txt
        set dict+=~/.vim/dict/node.txt
    endif
    set complete+=k
endfunction

function AddCSSDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/css.txt
    else
        set dict+=~/.vim/dict/css.txt
    endif
    set complete+=k
endfunction
"C，C++ 按F6编译运行
"func! CompileRunGcc()
"    exec "w"
"    if &filetype == 'c'
"        exec "!g++ % -o %<"
"        exec "!time ./%<"
"    elseif &filetype == 'cpp'
"        exec "!g++ % -o %<"
"        exec "!time ./%<"
"    elseif &filetype == 'java' 
"        exec "!javac %" 
"        exec "!time java %<"
"    elseif &filetype == 'sh'
"        :!time bash %
"    elseif &filetype == 'python'
"        exec "!time python2.7 %"
"    elseif &filetype == 'html'
"        exec "!firefox % &"
"    elseif &filetype == 'go'
""        exec "!go build %<"
"        exec "!time go run %"
"    elseif &filetype == 'mkd'
"        exec "!~/.vim/markdown.pl % > %.html &"
"        exec "!firefox %.html &"
"    endif
"endfunc

"<F8>C,C++的调试

func! Rungdb()
    exec "w"
    exec "!g++ % -g -o %<"
    exec "!gdb ./%<"
endfunc

"定义FormartSrc() F6
func FormartSrc()
    exec "w"
    if &filetype == 'c'
        exec "!astyle --style=ansi -a --suffix=none %"
    elseif &filetype == 'cpp' || &filetype == 'hpp'
        exec "r !astyle --style=ansi --one-line=keep-statements -a --suffix=none %> /dev/null 2>&1"
    elseif &filetype == 'perl'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'py'||&filetype == 'python'
        exec "r !autopep8 -i --aggressive %"
    elseif &filetype == 'java'
        exec "!astyle --style=java --suffix=none %"
    elseif &filetype == 'jsp'
        exec "!astyle --style=gnu --suffix=none %"
    elseif &filetype == 'xml'
        exec "!astyle --style=gnu --suffix=none %"
    else
        exec "normal gg=G"
        return
    endif
    exec "e! %"
endfunc
"结束定义FormartSrc

" \rt                 一键替换全部Tab为空格
func! RemoveTabs()
    if &shiftwidth == 2
        exec "%s/   /  /g"
    elseif &shiftwidth == 4
        exec "%s/   /    /g"
    elseif &shiftwidth == 6
        exec "%s/   /      /g"
    elseif &shiftwidth == 8
        exec "%s/   /        /g"
    else
        exec "%s/   / /g"
    end
endfunc

" ======= 编译 && 运行 && 模板 ======= "

" 编译并运行<F7>
func! Compile_Run_Code()
    exec "w"
    if &filetype == "c"
        if g:isWIN
            exec "!gcc -Wall -std=c11 -o %:r %:t && %:r.exe"
        else
            exec "!clang -Wall -std=c11 -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "cpp"
        if g:isWIN
            exec "!g++ -Wall -std=c++14 -o %:r %:t && %:r.exe"
        else
            exec "!clang++ -Wall -std=c++14 -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "d"
        if g:isWIN
            exec "!dmd -wi %:t && del %:r.obj && %:r.exe"
        elseif g:isMAC
            exec "!dmd -wi %:t && rm %:r.o && ./%:r"
        else
            exec "!gdc -Wall -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "go"
        exec "!go run %:t"
    elseif &filetype == "rust"
        if g:isWIN
            exec "!rustc %:t && %:r.exe"
        else
            exec "!rustc %:t && ./%:r"
        endif
    elseif &filetype == "swift"
        exec "!swift %:t"
    elseif &filetype == "java"
        exec "!javac %:t && java %:r"
    elseif &filetype == "groovy"
        exec "!groovy %:t"
    elseif &filetype == "kotlin"
        exec "!kotlinc-jvm %:t -include-runtime -d %:r.jar && java -jar %:r.jar"
    elseif &filetype == "scala"
        exec "!scala %:t"
    elseif &filetype == "clojure"
        exec "!clojure -i %:t"
    elseif &filetype == "cs"
        if g:isWIN
            exec "!csc %:t && %:r.exe"
        else
            exec "!mcs %:t && mono %:r.exe"
        endif
    elseif &filetype == "fsharp"
        if g:isWIN
            exec "!fsc %:t && %:r.exe"
        else
            exec "!fsharpc %:t && ./%:r"
        endif
    elseif &filetype == "scheme"
        exec "!guile -l %:t"
    elseif &filetype == "racket"
        exec "!racket -fi %:t"
    elseif &filetype == "lisp"
        if g:isWIN || g:isMAC
            exec "!ccl -l %:t"
        else
            exec "!clisp -i %:t"
        endif
    elseif &filetype == "ocaml"
        if g:isWIN
            exec "!ocamlc -o %:r.exe %:t && %:r.exe"
        else
            exec "!ocamlc -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "haskell"
        if g:isWIN
            exec "!ghc -o %:r %:t && %:r.exe"
        else
            exec "!ghc -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "lua"
        exec "!lua %:t"
    elseif &filetype == "perl"
        exec "!perl %:t"
    elseif &filetype == "php"
        exec "!php %:t"
    elseif &filetype == "python"
        exec "!python %:t"
    elseif &filetype == "ruby"
        exec "!ruby %:t"
    elseif &filetype == "elixir"
        exec "!elixir %:t"
    elseif &filetype == "julia"
        exec "!julia %:t"
    elseif &filetype == "dart"
        exec "!dart %:t"
    elseif &filetype == "haxe"
        exec "!haxe -main %:r --interp"
    elseif &filetype == "io"
        exec "!io %:t"
    elseif &filetype == "r"
        exec "!Rscript %:t"
    elseif &filetype == "coffee"
        exec "!coffee -c %:t && node %:r.js"
    elseif &filetype == "typescript"
        exec "!tsc %:t && node %:r.js"
    elseif &filetype == "ls"
        exec "!lsc -c %:t && node %:r.js"
    elseif &filetype == "javascript"
        exec "!node %:t"
    elseif &filetype == "sh"
        exec "!bash %:t"
    elseif &filetype == "mkd"
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc

""定义函数SetTitle，自动插入文件头 
func SetTitle() 
    "如果文件类型为.sh文件 
    if &filetype == 'sh' 
        call setline(1,"\#!/bin/bash") 
        call append(line("."), "") 
    elseif &filetype == 'python'
        call setline(1,"#!/usr/bin/env python")
        call append(line("."),"# coding=utf-8")
        call append(line(".")+1, "") 

    elseif &filetype == 'ruby'
        call setline(1,"#!/usr/bin/env ruby")
        call append(line("."),"# encoding: utf-8")
        call append(line(".")+1, "")

"    elseif &filetype == 'mkd'
"        call setline(1,"<head><meta charset=\"UTF-8\"></head>")
    else 
        call setline(1, "/* =========================================================*") 
        call append(line("."),   "  * File Name: ".expand("%")) 
        call append(line(".")+1, "  * Author: loonor") 
        call append(line(".")+2, "  * Mail: loonor@163.com") 
        call append(line(".")+3, "  * Created Time: ".strftime("%c"))
        call append(line(".")+4, "  * Discription:")
        call append(line(".")+5, "  *=========================================================*/") 
    endif
    if expand("%:e") == 'cpp'
        call append(line(".")+6, "//#include <iostream>")
        call append(line(".")+7, "//using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "//#include <stdio.h>")
        call append(line(".")+7, "") 
    endif
    if expand("%:e") == 'h'
        call append(line(".")+8, "#ifndef _".toupper(expand("%:r"))."_H")
        call append(line(".")+9, "#define _".toupper(expand("%:r"))."_H")
        call append(line(".")+10,"")
        call append(line(".")+11, "#endif")
    endif
    if &filetype == 'java'
        call append(line(".")+6,"public class ".expand("%:r"))
        call append(line(".")+7,"")
    endif
    "新建文件后，自动定位到文件末尾
    autocmd BufNewFile * normal G
endfunc 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""方法}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""文件设置{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""vundle
""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/Auto-Pairs'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-scripts/CaptureClipboard'
Plugin 'wincent/command-t'
Plugin 'chrisbra/csv.vim'
Plugin 'tacahiroy/ctrlp-funky' 
Plugin 'vim-scripts/ctrlp-modified.vim'
Plugin 'vim-scripts/ctrlp.vim'
Plugin 'dart-lang/dart-vim-Plugin'
Plugin 'vim-scripts/Django-Projects' 
Plugin 'vim-scripts/django_templates.vim' 
Plugin 'mattn/emmet-vim'
Plugin 'vim-scripts/fencview.vim' 
Plugin 'vim-scripts/FuzzyFinder'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'vim-scripts/gtk-vim-syntax'
Plugin 'sjl/gundo.vim'
Plugin 'raichoo/haskell-vim'
Plugin 'othree/html5.vim'
Plugin 'Yggdroot/indentLine' 
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'vim-scripts/Javascript-OmniCompletion-with-YUI-and-j'
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-scripts/jsbeautify' 
Plugin 'vim-scripts/jslint.vim'
Plugin 'JuliaLang/julia-vim'
Plugin 'udalov/kotlin-vim'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/last_edit_marker.vim'
Plugin 'Valloric/ListToggle'
Plugin 'scrooloose/nerdtree'
"""Plugin 'vim-scripts/nimrod.vim' 
Plugin 'shawncplus/phpcomplete.vim' 
Plugin 'spf13/PIV'
Plugin 'edkolev/promptline.vim'
Plugin 'kevinw/pyflakes-vim'
Plugin 'vim-scripts/python-imports.vim'
Plugin 'klen/python-mode'
Plugin 'phildawes/racer'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'rust-lang/rust.vim' 
Plugin 'rhysd/rust-doc.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'rstacruz/sparkup'
Plugin 'vim-scripts/SQLComplete.vim'
Plugin 'ervandew/supertab'
Plugin 'vim-scripts/synmark.vim'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/taglist.vim' 
Plugin 'vim-scripts/The-NERD-Commenter' 
Plugin 'tomtom/tlib_vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'SirVer/ultisnips'
Plugin 'jdonaldson/vaxe'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'bling/vim-airline'
Plugin 'xsbeats/vim-blade'
Plugin 'vim-scripts/VimClojure'
Plugin 'rmartinho/vim-cpp11'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'OrangeT/vim-csharp'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'skammer/vim-css-color'
Plugin 'bartlomiejdanek/vim-dart'
Plugin 'becaning/vimdoccn'
Plugin 'elixir-lang/vim-elixir'
Plugin 'oscarh/vimerl'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-projectionist'
Plugin 'fsharp/vim-fsharp'
Plugin 'fatih/vim-go'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'andreimaxim/vim-io'
Plugin 'digitaltoad/vim-jade'
Plugin 'bpdp/vim-java'
Plugin 'pangloss/vim-javascript'
Plugin 'Glench/Vim-Jinja2-Syntax'
Plugin 'jason0x43/vim-js-indent'
Plugin 'leshill/vim-json'
Plugin 'briancollins/vim-jst'
Plugin 'groenewege/vim-less'
Plugin 'ninegrid/vim-livescript'
Plugin 'plasticboy/vim-markdown'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'fatih/vim-nginx'
Plugin 'tpope/vim-pathogen'
Plugin 'vim-perl/vim-perl'
Plugin 'wlangstroth/vim-racket'
Plugin 'tpope/vim-rails'
Plugin 'vim-ruby/vim-ruby'
Plugin 'derekwyatt/vim-scala'
Plugin 'vim-scripts/Vim-Script-Updater'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-git'
Plugin 'kballard/vim-swift'
Plugin 'evidens/vim-twig'
Plugin 'vimwiki/vimwiki' 
"""Plugin 'gmarik/Vundle.vim'
Plugin 'zah/nim.vim'
Plugin 'burnettk/vim-angular'
Plugin 'claco/jasmine.vim'
Plugin 'matthewsimo/angular-vim-snippets'
"""
"Plugin 'Valloric/YouCompleteMe' 
Plugin 'vim-scripts/AutoComplPop'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet.vim'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'Shougo/vimproc.vim'
Plugin 'cespare/vim-toml'
"""
Plugin 'mtth/scratch.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

autocmd FileType html,css EmmetInstall

 """"""""""
" 对部分语言设置单独的缩进
au FileType groovy,scala,clojure,scheme,racket,lisp,lua,ruby,eruby,slim,elixir,julia,dart,haxe,coffee,jade,sh set shiftwidth=2
au FileType groovy,scala,clojure,scheme,racket,lisp,lua,ruby,eruby,slim,elixir,julia,dart,haxe,coffee,jade,sh set tabstop=2

" 根据后缀名指定文件类型
au BufRead,BufNewFile *.h        setlocal ft=c
au BufRead,BufNewFile *.m        setlocal ft=objc
au BufRead,BufNewFile *.di       setlocal ft=d
au BufRead,BufNewFile *.cl       setlocal ft=lisp
au BufRead,BufNewFile *.phpt     setlocal ft=php
au BufRead,BufNewFile *.inc      setlocal ft=php
au BufRead,BufNewFile *.sql      setlocal ft=mysql
au BufRead,BufNewFile *.tpl      setlocal ft=smarty
au BufRead,BufNewFile *.txt      setlocal ft=txt
au BufRead,BufNewFile *.log      setlocal ft=conf
au BufRead,BufNewFile hosts      setlocal ft=conf
au BufRead,BufNewFile http*.conf setlocal ft=apache
au BufRead,BufNewFile *.conf     setlocal ft=nginx
au BufRead,BufNewFile *.ini      setlocal ft=dosini
"markdown配置
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
au BufRead,BufNewFile *.{go}   set filetype=go
au BufRead,BufNewFile *.{js}   set filetype=javascript

"golang
"Processing... % (ctrl+c to stop)
let g:fencview_autodetect=0
set rtp+=~/go/gopath/src/github.com/nsf/gocode/vim

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
       \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
            \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
    \ }

" """""""""""""""""""""""""""""""""""""""""""

" 针对部分语言加减指定字符的单词属性
au FileType clojure  set iskeyword-=.
au FileType clojure  set iskeyword-=>
au FileType perl,php set iskeyword-=.
au FileType perl,php set iskeyword-=$
au FileType perl,php set iskeyword-=-
au FileType ruby     set iskeyword+=!
au FileType ruby     set iskeyword+=?



" 针对部分语言添加字典补全
"au FileType c          call AddCDict()
"au FileType cpp        call AddCPPDict()
"au FileType java       call AddJavaDict()
"au FileType lua        call AddLuaDict()
"au FileType perl       call AddPerlDict()
"au FileType php        call AddPHPDict()
"au FileType python     call AddPythonDict()
"au FileType ruby       call AddRubyDict()
"au FileType scala      call AddScalaDict()
"au FileType javascript call AddJavaScriptDict()
"au FileType css        call AddCSSDict()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickfix模式
autocmd FileType c,cpp map <buffer> <leader><space> :w<cr>:make<cr>
"代码补全 
set completeopt=preview,menu 
filetype plugin indent on 
" set mapleader
let mapleader = ","

"列出当前目录文件  
map <F6> :NERDTreeToggle<CR>
imap <F6> <ESC> :NERDTreeToggle<CR>
if has("autocmd")
      autocmd BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \   exe "normal g`\"" |
          \ endif
endif
"当打开vim且没有文件时自动打开NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif


"C，C++ 按F6编译运行
"map <F6> :call CompileRunGcc()<CR>

"代码格式优化化

map <F5> :call FormartSrc()<CR><CR>

:nmap <silent>  <F12> <ESC>:GundoToggle<RETURN>

map <F7> :call Compile_Run_Code()<CR><CR>

"C,C++的调试
map <F8> :call Rungdb()<CR>

:nmap <silent> <F9> <ESC>:TagbarToggle<RETURN>
" shift tab pages
map <S-Left> :tabp<CR>
map <S-Right> :tabn<CR>
map <C-A> ggVG$"+y
" 选中状态下 Ctrl+c 复制
vmap <C-c> "+y 

"rkdown to HTML  
nmap md :!~/.vim/markdown.pl % > %.html <CR><CR>
nmap fi :!firefox %.html & <CR><CR>
nmap \ \cc
vmap \ \cc

"将tab替换为空格
nmap tt :%s/\t/    /g<CR>


" 加载pathogen插件管理器
execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"snipMate Tag智能补全
"let g:snips_author = 'loonor'
"if g:isWIN
"    let g:snippets_dir = $VIM.'/snippets/'
"else
""    let g:snippets_dir = '~/.vim/snippets/'
"endif
"let g:snipMate                             = {}
" 不使用插件自带的默认继承
"let g:snipMate.no_default_aliases          = 1
" 设置补全项之间的继承关系，比如 PHP补全继承HTML的补全
"let g:snipMate.scope_aliases               = {}
"let g:snipMate.scope_aliases['c']          = 'cpp,gtk'
"let g:snipMate.scope_aliases['objc']       = 'objc,cpp'
"let g:snipMate.scope_aliases['scheme']     = 'racket'
"let g:snipMate.scope_aliases['php']        = 'php,html'
"let g:snipMate.scope_aliases['typescript'] = 'typescript,javascript'
"let g:snipMate.scope_aliases['scss']       = 'scss,css'
"let g:snipMate.scope_aliases['less']       = 'less,css'
"let g:snipMate.scope_aliases['xhtml']      = 'html'
"let g:snipMate.scope_aliases['blade']      = 'blade,html'
"let g:snipMate.scope_aliases['html.twig']  = 'twig,html'
"let g:snipMate.scope_aliases['jinja.twig'] = 'twig,html'
"let g:snipMate.scope_aliases['jinja']      = 'jinja,html'
"let g:snipMate.scope_aliases['eruby']      = 'eruby,html'
"let g:snipMate.scope_aliases['jst']        = 'jst,html'
"let g:snipMate.scope_aliases['mustache']   = 'mustache,html'


" NERD_commenter      注释处理插件
let NERDSpaceDelims = 1                        " 自动添加前置空格

" Indent_guides       显示对齐线
let g:indent_guides_enable_on_vim_startup = 0  " 默认关闭
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸

" AirLine             彩色状态栏
let g:airline_theme = 'badwolf'                " 设置主题

" Promptline          终端辅助工具
let g:promptline_powerline_symbols = 0         " 关闭特殊符号
let g:promptline_preset = {
        \'a'    : [ '\u' ],
        \'b'    : [ promptline#slices#cwd() ],
        \'c'    : [ promptline#slices#vcs_branch(), promptline#slices#git_status() ],
        \'warn' : [ promptline#slices#last_exit_code() ]
        \}                                     " 自定义命令行显示

" GitGutter           Git辅助插件
let g:gitgutter_enabled               = 0      " 默认不开启
let g:gitgutter_signs                 = 0      " 默认不开启提示
let g:gitgutter_highlight_lines       = 0      " 默认不高亮行
let g:gitgutter_sign_added            = '+'    " 自定义新增指示符
let g:gitgutter_sign_modified         = '>'    " 自定义修改指示符
let g:gitgutter_sign_removed          = '-'    " 自定义删除指示符
let g:gitgutter_sign_modified_removed = '->'   " 自定义既修改又删除指示符

"syntastic相关
execute pathogen#infect()
let g:syntastic_python_checkers=['pylint']
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
let g:syntastic_check_on_open = 1              " 默认开启
let g:syntastic_mode_map      = {'mode': 'active',
            \'active_filetypes':  [],
            \'passive_filetypes': ['html', 'css', 'xhtml', 'go', 'groovy', 'scala', 'clojure', 'racket', 'typescript', 'eruby', 'slim', 'jade', 'scss', 'less']
            \}                                 " 指定不需要检查的语言 [主要是因为开启这些语言的语法检查会妨碍到正常的工作]
" 自定义编译器和编译参数
let g:syntastic_c_compiler = 'gcc'
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_c_compiler_options = '-std=c11 -Wall'
let g:syntastic_cpp_compiler_options = '-std=c++14 -Wall'

" javascript-libraries-syntax                    指定需要高亮的JS库
let g:used_javascript_libs = 'jquery,requirejs,backbone,underscore,prelude,angularjs,angularui,react'

" minibufexpl插件的一般设置
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1  
nmap tl :Tlist<cr>
nmap tb :TagbarToggle<CR>
"python补全
"let g:pydiction_location = '~/.vim/after/complete-dict'
"let g:pydiction_menu_height = 20
"let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
"let g:miniBufExplMapWindowNavVim = 1
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplModSelTarget = 1

"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


"ctrlp设置
"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc,*.png,*.jpg,*.gif  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = '\v\.(exe|so|dll)$'
let g:ctrlp_extensions = ['funky']

let NERDTreeIgnore=['\.pyc']

""neocomplete  不起用
"""let g:neocomplcache_enable_at_startup = 0

" YCM settings

"" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:SuperTabDefaultCompletionType = '<C-n>'
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
""Do not ask when starting vim
"let g:ycm_confirm_extra_conf = 0
"let g:syntastic_always_populate_loc_list = 1
"let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_server_use_vim_stdout = 1
"let g:ycm_server_log_level = 'debug'
"let g:ycm_key_invoke_completion = '<C-Space>'

"let g:ycm_min_num_of_chars_for_completion = 2

"let g:ycm_min_num_identifier_candidate_chars = 0

"let g:ycm_auto_trigger = 1

"let g:ycm_filetype_whitelist = { '*': 1 }
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>   “按,jd 会跳转到定义
"let g:ycm_collect_identifiers_from_tag_files = 1 "使用ctags生成的tags文件
"let g:ycm_filetype_blacklist = {
"      \ 'tagbar' : 1,
""      \ 'qf' : 1,
""      \ 'notes' : 1,
""      \ 'markdown' : 1,
""      \ 'unite' : 1,
""      \ 'text' : 1,
""      \ 'vimwiki' : 1,
""      \ 'pandoc' : 1,
""      \ 'infolog' : 1,
""      \ 'mail' : 1
""      \}
"""不自动完成的项
"let g:ycm_filetype_specific_completion_to_disable = {
"     \ 'gitcommit': 1
"      \}
"
"
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""
"fun! JumpToDef()
"  if exists("*GotoDefinition_" . &filetype)
"    call GotoDefinition_{&filetype}()
"  else
"    exe "norm! \<C-]>"
"  endif
"endf
"
"" Jump to tag
"nn <M-g> :call JumpToDef()<cr>
"ino <M-g> <esc>:call JumpToDef()<cr>i
""""""""""""""""""""""""""""""""""""""""""""""
"
" vim-go custom mappings

au FileType go nmap <Leader>s <Plug>(go-implements)

au FileType go nmap <Leader>i <Plug>(go-info)

au FileType go nmap <Leader>gd <Plug>(go-doc)

au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <leader>r <Plug>(go-run)

au FileType go nmap <leader>b <Plug>(go-build)

au FileType go nmap <leader>t <Plug>(go-test)

au FileType go nmap <leader>c <Plug>(go-coverage)

au FileType go nmap <Leader>ds <Plug>(go-def-split)

au FileType go nmap <Leader>dv <Plug>(go-def-vertical)

au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>e <Plug>(go-rename)

let g:go_fmt_command = "goimports"

" ======= 自定义快捷键 ======= "
" 保存在terminal模式下不好用,gvim时好使
nmap <c-s> :update<CR>
imap <c-s> <ESC>:update<CR>
vmap <c-s> <ESC>:update<CR>

" Ctrl + ]            tags选择性跳转
nmap <c-]> g<c-]>
vmap <c-]> g<c-]>

" Ctrl + J            光标移下一行行首[插入模式]、切换下窗口[Normal模式]
imap <c-j> <ESC><Down>I
map <c-j> <c-w><c-j>
" Ctrl + K            光标移上一行行尾[插入模式]、切换上窗口[Normal模式]
imap <c-k> <ESC><Up>A
map <c-k> <c-w><c-k>

" Alt + e
"imap <m-e> <ESC><End>A
" Alt + a
imap <m-a> <Home>
nmap <m-a> <Home>
" Alt  + H            光标左移一格
imap <m-h> <Left>

" Alt  + J            光标下移一格
imap <m-j> <Down>

" Alt  + K            光标上移一格
imap <m-k> <Up>

" Alt  + L            光标右移一格
imap <m-l> <Right>

" ,v                  从公共剪贴板粘贴
imap <leader>v <ESC>"+p
nmap <leader>v "+p
vmap <leader>v "+p

" ,bb                 按=号对齐代码 [Tabular插件]
nmap <leader>bb :Tab /=<CR>

" ,bn                 自定义对齐    [Tabular插件]
nmap <leader>bn :Tab /

" ,nt                 打开NERDTree窗口，在左侧栏显示
nmap <leader>nt :NERDTree<CR>

" ,fe                 打开文件编码窗口，在右侧栏显示 [FencView插件]
nmap <leader>fe :FencView<CR>

" ,ff                 打开文件搜索窗口，在最下方显示 [CtrlP插件]
nmap <leader>ff :CtrlPMixed<CR>


" \gi                 开启或关闭GitGutter [GitGutter插件]
nmap <leader>gi :GitGutterToggle<CR>:GitGutterSignsToggle<CR>:GitGutterLineHighlightsToggle<CR>

" \gd                 打开Git文件对比模式 [竖直] [GitGutter插件]
nmap <leader>gd :Gdiff<CR>

" \gs                 打开Git文件对比模式 [水平] [GitGutter插件]
nmap <leader>gs :Gsdiff<CR>

" \rb                 一键去除所有尾部空白
imap <leader>rb <ESC>:let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nmap <leader>rb :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
vmap <leader>rb <ESC>:let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" \rm                 一键去除字符
imap <leader>rm <ESC>:%s/<c-v><c-m>//g<CR>
nmap <leader>rm :%s/<c-v><c-m>//g<CR>
vmap <leader>rm <ESC>:%s/<c-v><c-m>//g<CR>


imap <leader>rt <ESC>:call RemoveTabs()<CR>
nmap <leader>rt :call RemoveTabs()<CR>
vmap <leader>rt <ESC>:call RemoveTabs()<CR>

" \th                 一键生成与当前编辑文件同名的HTML文件 [不输出行号]
imap <leader>th <ESC>:set nonumber<CR>:set norelativenumber<CR><ESC>:TOhtml<CR><ESC>:w %:r.html<CR><ESC>:q<CR>:set number<CR>:set relativenumber<CR>
nmap <leader>th <ESC>:set nonumber<CR>:set norelativenumber<CR><ESC>:TOhtml<CR><ESC>:w %:r.html<CR><ESC>:q<CR>:set number<CR>:set relativenumber<CR>
vmap <leader>th <ESC>:set nonumber<CR>:set norelativenumber<CR><ESC>:TOhtml<CR><ESC>:w %:r.html<CR><ESC>:q<CR>:set number<CR>:set relativenumber<CR>

" \wa                 一键编译所有Vimwiki源文件
imap <leader>wa <ESC>\ww<ESC>:VimwikiAll2HTML<CR>:qa<CR>
nmap <leader>wa <ESC>\ww<ESC>:VimwikiAll2HTML<CR>:qa<CR>
vmap <leader>wa <ESC>\ww<ESC>:VimwikiAll2HTML<CR>:qa<CR>

" \ev                 编辑当前所使用的Vim配置文件
nmap <leader>ev <ESC>:e $MYVIMRC<CR>

" \php                一键切换到PHP语法高亮
imap <leader>php <ESC>:se ft=php<CR>li
nmap <leader>php <ESC>:se ft=php<CR>

" \js                 一键切换到JavaScript语法高亮
imap <leader>js <ESC>:se ft=javascript<CR>li
nmap <leader>js <ESC>:se ft=javascript<CR>

" \css                一键切换到CSS语法高亮
imap <leader>css <ESC>:se ft=css<CR>li
nmap <leader>css <ESC>:se ft=css<CR>

" \html               一键切换到HTML语法高亮
imap <leader>html <ESC>:se ft=html<CR>li
nmap <leader>html <ESC>:se ft=html<CR>

" ,rr        一键保存、编译、运行
imap <leader>rr <ESC>:call Compile_Run_Code()<CR>
nmap <leader>rr :call Compile_Run_Code()<CR>
vmap <leader>rr <ESC>:call Compile_Run_Code()<CR>

set hidden
let g:racer_cmd = "$HOME/github/racer/target/release/racer"
let $RUST_SRC_PATH="/home/loonor/github/rust-lang/rust/src/"
let g:rust_doc#downloaded_rust_doc_dir = '~/.multirust/toolchains/nightly'
autocmd FileType apache set commentstring=#\ %s

augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/dart-vim-plugin
endif

let g:ghcmod_ghc_options = ['-idir1', '-idir2']
let g:ghcmod_open_quickfix_function = 'GhcModQuickFix'
function! GhcModQuickFix()
  " for unite.vim and unite-quickfix
  :Unite -no-empty quickfix

  " for ctrlp
  :CtrlPQuickfix

  " for FuzzyFinder
  :FufQuickfix
endfunction
let g:haskell_enable_quantification = 1 ""to enable highlighting of forall
let g:haskell_enable_recursivedo = 1 ""to enable highlighting of mdo and rec
let g:haskell_enable_arrowsyntax = 1 ""to enable highlighting of proc
let g:haskell_enable_pattern_synonyms = 1 ""to enable highlighting of pattern
let g:haskell_enable_typeroles = 1 ""to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1 ""to enable highlighting of static

;;set vim-clang
let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'
" assuming you want to use snipmate snippet engine

call pathogen#infect()
call pathogen#helptags()
syntax enable
filetype plugin indent on
" 当前目录文件很多时，会导致第一次保存非常慢
call pymode#default('g:pymode_rope_autoimport', 0)
let g:pymode_rope = 0 
"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py,*.go exec ":call SetTitle()" 

"Use local vimrc if available {
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local 
endif 
"}
