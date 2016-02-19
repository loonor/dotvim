let mapleader = ","
"列出当前目录文件  
map <F6> :NERDTreeToggle<CR>
imap <F6> <ESC> :NERDTreeToggle<CR>
"代码格式优化化
map <f5> :call FormartSrc()<cr><cr>

:nmap <silent>  <f12> <esc>:GundoToggle<return>

map <f7> :call Compile_Run_Code()<cr><cr>

"c,c++的调试
map <f8> :call Rungdb()<cr>

:nmap <silent> <f9> <esc>:TagbarToggle<return>
" shift tab pages
map <s-left> :tabp<cr>
map <s-right> :tabn<cr>
map <c-a> ggvg$"+y
" 选中状态下 ctrl+c 复制
vmap <c-c> "+y 

"rkdown to html  
nmap md :!~/.vim/markdown.pl % > %.html <cr><cr>
nmap fi :!firefox %.html & <cr><cr>
nmap \ \cc
vmap \ \cc

"将tab替换为空格
nmap tt :%s/\t/    /g<cr>
nmap tl :Tlist<cr>
nmap tb :TagbarToggle<cr>
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
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

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

" ======= 自定义快捷键 ======= "
" 保存在terminal模式下不好用,gvim时好使
nmap <c-s> :update<CR>
imap <c-s> <ESC><ESC>:update<CR>
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
"nmap <leader>ff :CtrlPMixed<CR>


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

imap <silent> <C-S-K> <Plug>clj_repl_uphist.
