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
"func SetTitle() 
"    "如果文件类型为.sh文件 
"    if &filetype == 'sh' 
"        call setline(1,"\#!/bin/bash") 
"        call append(line("."), "") 
"    elseif &filetype == 'python'
"        call setline(1,"#!/usr/bin/env python3")
"        call append(line("."),"# encoding=utf-8")
"        call append(line(".")+1, "") 
"
"    elseif &filetype == 'ruby'
"        call setline(1,"#!/usr/bin/env ruby")
"        call append(line("."),"# encoding: utf-8")
"        call append(line(".")+1, "")
"
"    elseif &filetype == 'html'
"        call setline(1,"<!DOCTYPE html>")
"        call append(line("."), "<html>")
"        call append(line(".")+1, "<head>")
"        call append(line(".")+2, "<title>   </title>")
"        call append(line(".")+3, "</head>")
"        call append(line(".")+4, "<body>")
"        call append(line(".")+5, "")
"        call append(line(".")+6, "</body>")
"        call append(line(".")+7, "</html>")
"    elseif &filetype == 'php'
"        
"        call setline(1, "<?php ") 
"        call append(line("."),   "//  * File Name: ".expand("%")) 
"        call append(line(".")+1, "//  * Author: loonor") 
"        call append(line(".")+2, "//  * Mail: loonor@163.com") 
"        call append(line(".")+3, "//  * Created Time: ".strftime("%c"))
"        call append(line(".")+4, "//  * Discription:")
"        call append(line(".")+5, "") 
"        call append(line(".")+6, "//namespace ;")
"        call append(line(".")+7, "")
"    else 
"        call setline(1, "/* =========================================================*") 
"        call append(line("."),   "  * File Name: ".expand("%")) 
"        call append(line(".")+1, "  * Author: loonor") 
"        call append(line(".")+2, "  * Mail: loonor@163.com") 
"        call append(line(".")+3, "  * Created Time: ".strftime("%c"))
"        call append(line(".")+4, "  * Discription:")
"        call append(line(".")+5, "  *=========================================================*/") 
"        call append(line(".")+6, "")
"    endif
"    if expand("%:e") == 'cpp'
"        call append(line(".")+6, "//#include <iostream>")
"        call append(line(".")+7, "//using namespace std;")
"        "call append(line(".")+8, "")
"    endif
"    if &filetype == 'c'
"        call append(line(".")+6, "//#include <stdio.h>")
"        call append(line(".")+7, "") 
"    endif
"    if expand("%:e") == 'h'
"        call append(line(".")+8, "#ifndef _".toupper(expand("%:r"))."_H")
"        call append(line(".")+9, "#define _".toupper(expand("%:r"))."_H")
"        call append(line(".")+10,"")
"        call append(line(".")+11, "#endif")
"    endif
"    if &filetype == 'java'
"        call append(line(".")+6,"public class ")
"        call append(line(".")+7,"")
"    endif
"    "新建文件后，自动定位到文件末尾
"    autocmd BufNewFile * normal G
"endfunc 
function! GhcModQuickFix()
  " for unite.vim and unite-quickfix
  :Unite -no-empty quickfix

  " for ctrlp
  :CtrlPQuickfix

  " for FuzzyFinder
  :FufQuickfix
endfunction
