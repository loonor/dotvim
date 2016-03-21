 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

let g:asterisk#keeppos = 1

if g:isWIN
    let g:snippets_dir = '$VIM/vimfiles/bundle/vim-snippets/snippets/'
else
    let g:snippets_dir = '~/.vim/bundle/vim-snippets/snippets/'
endif

"let g:limelight_conceal_ctermfg = 'gray'
""let g:limelight_conceal_ctermfg = 240

"let g:mustache_abbreviations = 1


let NERDTreeHiJackNetrw = 0
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=30
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=0
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" nerd_commenter      注释处理插件
 let nerdspacedelims = 1 

"better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:make = 'gmake'
if system('uname -o') =~ '^GNU/'
        let g:make = 'make'
endif

let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"

""vim-unimpaired
nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [egv
vmap <C-Down> ]egv

" airline             彩色状态栏
let g:airline_theme = 'luna'                " 设置主题
let g:airline_powerline_fonts = 1
if g:airline_powerline_fonts == 0
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline_left_sep = '▶'
    let g:airline_left_alt_sep = '❯'
    let g:airline_right_sep = '◀'
    let g:airline_right_alt_sep = '❮'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '§'
    let g:airline_symbols.whitespace = 'Ξ'
    let g:airline_symbols.readonly = ''
endif
"set laststatus=2

if g:isWIN ""has("win32") || has("win64")
    let g:ycm_global_ycm_extra_conf = '$VIM/vimfiles/.ycm_extra_conf.py'
else
    let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
endif
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_confirm_extra_conf=0    
let g:ycm_server_use_vim_stdout = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:go_fmt_command = "goimports"

"let g:html_indent_inctags = "html,body,head,tbody"
"let g:html_indent_script1 = "inc"
"let g:html_indent_style1 = "inc"

let g:user_emmet_install_global = 0
autocmd filetype html,css EmmetInstall

let g:pymode_indent = 0

"let g:nodejs_complete_config = {
"\  'js_compl_fn': 'jscomplete#CompleteJS',
"\  'max_node_compl_len': 15
"\}


let g:instant_markdown_slow = 1


set rtp+=$GOPATH/src/github.com/nsf/gocode/vim
""tagbar for go
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

" for # indent, python文件中输入新行时#号注释不切回行首
autocmd BufNewFile,BufRead *.py inoremap # X<c-h>#
let g:redl_use_vsplit = 1

"" 开启rust的自动reformat的功能
let g:rustfmt_autosave = 1
set hidden
if g:isWIN
    let g:racer_cmd=$RACER_CMD
    let RUST_SRC_PATH=$RUST_SRC_PATH
    let g:rust_doc#downloaded_rust_doc_dir ="$MULTIRUST/toolchains/nightly"
else
    let g:racer_cmd = $RACER_CMD """/home/loonor/github/racer/target/release/racer"
    let RUST_SRC_PATH=$RUST_SRC_PATH"""/home/loonor/github/rust/src"
    let g:rust_doc#downloaded_rust_doc_dir = "$MULTIRUST/toolchains/nightly"
endif
call pathogen#infect()
call pathogen#helptags()
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on













