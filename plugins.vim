" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

if &compatible
     set nocompatible               " Be iMproved
endif

   " Required:
   "set runtimepath+=~/.vim/bundle/neobundle.vim/
if has("win32")
    set rtp+=$VIM/vimfiles/bundle/neobundle.vim/
    call neobundle#begin('$VIM/vimfiles/bundle')
else
    set rtp+=~/.vim/bundle/neobundle.vim/
    call neobundle#begin('~/.vim/bundle/')
endif
 " Required:
 "call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'
"""NeoBundleFetch 'gmarik/vundle.vim'
 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

NeoBundleFetch 'a.vim'
NeoBundleFetch 'andreimaxim/vim-io'
NeoBundleFetch 'bling/vim-airline'
NeoBundleFetch 'vim-airline/vim-airline-themes'
NeoBundleFetch 'bartlomiejdanek/vim-dart'
NeoBundleFetch 'becaning/vimdoccn'
"NeoBundleFetch 'bpdp/vim-java'
NeoBundleFetch 'briancollins/vim-jst'
NeoBundleFetch 'burnettk/vim-angular'

NeoBundleFetch 'claco/jasmine.vim'
NeoBundleFetch 'cscope_macros.vim'
NeoBundleFetch 'cakebaker/scss-syntax.vim'
NeoBundleFetch 'chrisbra/csv.vim'
NeoBundleFetch 'airblade/vim-gitgutter'
NeoBundleFetch 'cespare/vim-toml'

NeoBundleFetch 'dart-lang/dart-vim-plugin'
NeoBundleFetch 'davidhalter/jedi-vim'
NeoBundleFetch 'digitaltoad/vim-jade'
NeoBundleFetch 'derekwyatt/vim-scala'
NeoBundleFetch 'djoshea/vim-matlab'   " matlab/matlab-fold: matlab 语法高亮及代码折叠插件。
NeoBundleFetch 'djoshea/vim-matlab-fold'
"NeoBundleFetch 'dbext.vim'
NeoBundleFetch 'dgrnbrg/vim-redl'

NeoBundleFetch 'eagletmt/ghcmod-vim'
NeoBundleFetch 'EasyGrep'
NeoBundleFetch 'elixir-lang/vim-elixir'
NeoBundleFetch 'edkolev/promptline.vim'
NeoBundleFetch 'ervandew/supertab'
NeoBundleFetch 'evidens/vim-twig'

"NeoBundleFetch 'fsharp/vim-fsharp'
NeoBundleFetch 'fatih/vim-go'
NeoBundleFetch 'fatih/vim-nginx'

" tabular: 自动对齐
NeoBundleFetch 'godlygeek/tabular'
NeoBundleFetch 'glench/vim-jinja2-syntax'
NeoBundleFetch 'groenewege/vim-less'
NeoBundleFetch 'grvcoelho/vim-javascript-snippets'
NeoBundleFetch 'garyburd/go-explorer'
NeoBundleFetch 'gtags.vim'
"NeoBundleFetch 'garbas/vim-snipmate'
NeoBundleFetch 'hail2u/vim-css3-syntax'
NeoBundleFetch 'honza/vim-snippets'
NeoBundleFetch 'jamescarr/snipmate-nodejs.git'
NeoBundleFetch 'jceb/vim-orgmode'
NeoBundleFetch 'jsfaint/gen_tags.vim'
NeoBundleFetch 'jlanzarotta/bufexplorer'
NeoBundleFetch 'jQuery'
NeoBundleFetch 'julialang/julia-vim'
NeoBundleFetch 'jdonaldson/vaxe'
NeoBundleFetch 'jason0x43/vim-js-indent'
NeoBundleFetch 'justmao945/vim-clang'
NeoBundleFetch 'jszakmeister/vim-togglecursor'

NeoBundleFetch 'kchmck/vim-coffee-script.git'
NeoBundleFetch 'kevinw/pyflakes-vim'
NeoBundleFetch 'klen/python-mode'
"NeoBundleFetch 'kballard/vim-swift'

NeoBundleFetch 'leafgarland/typescript-vim'
NeoBundleFetch 'leshill/vim-json'
NeoBundleFetch 'Lokaltog/vim-easymotion'

NeoBundleFetch 'mxw/vim-xhp'
NeoBundle 'mxw/vim-jsx'
let g:jsx_ext_required = 0
NeoBundleFetch 'hhvm/vim-hack'
NeoBundleFetch 'mtth/scratch.vim'
NeoBundleFetch 'marcweber/vim-addon-mw-utils'
NeoBundleFetch 'Mark--Karkat'
NeoBundleFetch 'matchit.zip'
NeoBundleFetch 'majutsushi/tagbar'
NeoBundleFetch 'mileszs/ack.vim'
NeoBundleFetch 'mhinz/vim-signify'
NeoBundleFetch 'mhinz/vim-startify'
let g:startify_custom_header = [
                \ '   __      ___              _  _______     _________ ',
                \ '   \ \    / (_)            | | | |____ \  | |_______|',
                \ '    \ \  / / _ _ __ ___    | | | |    | \ | |_______ ',
                \ '     \ \/ / | | `_ ` _ \   | | | |    | | | |_______|',
                \ '      \  /  | | | | | | |  | | | |____| | | |_______ ',
                \ '       \/   |_|_| |_| |_|  |_| |_|_____/  |_|_______|',
                \ '',
                \ '                                                     ',
                \ '',
                \ ]
let g:startify_custom_footer = [
                \ '',
                \ '',
                \ '                                                     ',
                \ ]
NeoBundleFetch 'mattn/emmet-vim'
NeoBundleFetch 'mustache/vim-mustache-handlebars'
NeoBundleFetch 'matthewsimo/angular-vim-snippets'
NeoBundleFetch 'mikelue/vim-maven-plugin'
NeoBundleFetch 'mattreduce/vim-mix'
NeoBundleFetch 'marijnh/tern_for_vim'
NeoBundleFetch 'moll/vim-node'
NeoBundleFetch 'myhere/vim-nodejs-complete.git'
NeoBundleFetch 'maksimr/vim-jsbeautify'
map <c-f> :call JsBeautify()<cr>
" or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
" for json
autocmd FileType json noremap <buffer> <c-f> :call JsonBeautify()<cr>
" for jsx
autocmd FileType jsx noremap <buffer> <c-f> :call JsxBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>
autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType json vnoremap <buffer> <c-f> :call RangeJsonBeautify()<cr>
autocmd FileType jsx vnoremap <buffer> <c-f> :call RangeJsxBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr>
NeoBundleFetch 'nathanaelkane/vim-indent-guides'
NeoBundleFetch 'ninegrid/vim-livescript'

"NeoBundleFetch 'omnisharp/omnisharp-vim'
NeoBundleFetch 'othree/html5.vim'
NeoBundleFetch 'othree/javascript-libraries-syntax.vim'
NeoBundleFetch 'octol/vim-cpp-enhanced-highlight'
"NeoBundleFetch 'oranget/vim-csharp'
NeoBundleFetch 'oscarh/vimerl'
NeoBundleFetch 'osyo-manga/unite-quickfix'

NeoBundleFetch 'plasticboy/vim-markdown'
NeoBundleFetch 'pangloss/vim-javascript'
"NeoBundleFetch 'phildawes/racer'
NeoBundleFetch 'racer-rust/vim-racer'
NeoBundleFetch 'rust-lang/rust.vim'
NeoBundleFetch 'rhysd/rust-doc.vim'
NeoBundleFetch 'raichoo/haskell-vim'
NeoBundleFetch 'rstacruz/sparkup'
NeoBundleFetch 'rmartinho/vim-cpp11'
NeoBundleFetch 'rizzatti/funcoo.vim.git'
NeoBundleFetch 'rizzatti/dash.vim.git'
"NeoBundleFetch 'Raimondi/delimitMate'
"nmap <Leader>qs <Plug>DashSearch
"nmap <Leader>qa <Plug>DashGlobalSearch
NeoBundleFetch 'rking/ag.vim.git'

NeoBundleFetch 'sjl/gundo.vim'
NeoBundleFetch 'scrooloose/nerdtree'
let NERDTreeHiJackNetrw = 0
NeoBundleFetch 'Xuyuanp/nerdtree-git-plugin'
NeoBundleFetch 'scrooloose/nerdcommenter'
NeoBundleFetch 'shawncplus/phpcomplete.vim' 
NeoBundleFetch 'spf13/piv'
NeoBundleFetch 'scrooloose/syntastic'
NeoBundleFetch 'sirver/ultisnips'
NeoBundleFetch 'skammer/vim-css-color'
NeoBundleFetch 'shougo/unite-help'
NeoBundleFetch 'shougo/unite-outline'
NeoBundleFetch 'shougo/vimshell.vim'
NeoBundleFetch 'shougo/unite.vim'
NeoBundleFetch 'shougo/neomru.vim'
"NeoBundleFetch 'shougo/neocomplcache.vim'
if has('lua')
    NeoBundleFetch 'shougo/neocomplete.vim'
    NeoBundleFetch 'shougo/neosnippet.vim'
endif 
let g:make = 'gmake'
if system('uname -o') =~ '^GNU/'
        let g:make = 'make'
endif
NeoBundleFetch 'shougo/neosnippet-snippets'
NeoBundleFetch 'shougo/vimproc.vim', { 'build' : { 'linux' : 'make','unix':'gmake','mac':'make',  },  }

NeoBundleFetch 'tacahiroy/ctrlp-funky'
NeoBundleFetch 'terryma/vim-multiple-cursors.git'
NeoBundleFetch 'tomtom/tlib_vim'
NeoBundleFetch 'tomtom/tcomment_vim'
NeoBundleFetch 'tsukkee/unite-tag'
NeoBundleFetch 'tpope/vim-fireplace'
NeoBundleFetch 'tpope/vim-projectionist'
NeoBundleFetch 'tpope/vim-speeddating'
NeoBundleFetch 'tpope/vim-pathogen'
NeoBundleFetch 'tpope/vim-rails'
NeoBundleFetch 'tpope/vim-surround'
let g:surround_35 = "#{\r}"
let g:surround_45 = "<% \r %>"
let g:surround_61 = "<%= \r %>"
NeoBundleFetch 'tpope/vim-git'
NeoBundleFetch 'tpope/vim-fugitive'
NeoBundleFetch 'tpope/vim-unimpaired'
nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [egv
vmap <C-Down> ]egv
NeoBundleFetch 'tpope/vim-endwise'
NeoBundleFetch 'tpope/vim-repeat'
NeoBundleFetch 'tpope/vim-abolish'
" commentary: 快速注释。
NeoBundleFetch 'tpope/vim-commentary'
NeoBundleFetch 'tpope/vim-dispatch.git'
NeoBundleFetch 'thinca/vim-themis'
NeoBundleFetch 'thinca/vim-ref'

NeoBundleFetch 'udalov/kotlin-vim'

NeoBundleFetch 'valloric/listtoggle'
NeoBundle 'Valloric/YouCompleteMe', {
     \ 'build'      : {
        \ 'mac'     : './install.py',
        \ 'unix'    : './install.py --clang-completer --system-libclang --system-boost',
        \ 'windows' : 'install.py',
        \ 'cygwin'  : './install.py'
        \ }
     \ }
NeoBundleFetch 'vim-scripts/Auto-Pairs'
NeoBundleFetch 'vim-scripts/CaptureClipboard'
NeoBundleFetch 'vim-scripts/ctrlp-modified.vim'
NeoBundleFetch 'vim-scripts/ctrlp.vim'
NeoBundleFetch 'vim-scripts/Django-Projects' 
NeoBundleFetch 'vim-scripts/django_templates.vim' 
NeoBundleFetch 'vim-scripts/fencview.vim' 
NeoBundleFetch 'vim-scripts/FuzzyFinder'
NeoBundleFetch 'vim-scripts/gtk-vim-syntax'
NeoBundleFetch 'vim-scripts/javascript-omnicompletion-with-yui-and-j'
NeoBundleFetch 'vim-scripts/jsbeautify' 
NeoBundleFetch 'vim-scripts/jslint.vim'
NeoBundleFetch 'vim-scripts/l9'
NeoBundleFetch 'vim-scripts/last_edit_marker.vim'
"""NeoBundleFetch 'vim-scripts/nimrod.vim' 
NeoBundleFetch 'vim-scripts/python-imports.vim'
NeoBundleFetch 'vim-scripts/PDV--phpDocumentor-for-Vim'
NeoBundleFetch 'vim-scripts/synmark.vim'
NeoBundleFetch 'vim-scripts/taglist.vim' 
NeoBundleFetch 'vim-scripts/the-nerd-commenter' 
NeoBundleFetch 'vim-scripts/vimclojure'
NeoBundleFetch 'vim-perl/vim-perl'
NeoBundleFetch 'vim-ruby/vim-ruby'
NeoBundleFetch 'vim-scripts/vim-script-updater'
NeoBundleFetch 'vim-scripts/ZoomWin.git'
map <Leader>z :ZoomWin<CR>
NeoBundleFetch 'vimwiki/vimwiki'  
"NeoBundleFetch 'vim-scripts/autocomplpop'
NeoBundleFetch 'vim-erlang/vim-erlang-runtime'
NeoBundleFetch 'vim-erlang/vim-erlang-tags'
NeoBundleFetch 'vim-erlang/vim-erlang-compiler'
NeoBundleFetch 'vim-erlang/vim-erlang-omnicomplete'
NeoBundleFetch 'vim-scripts/sqlcomplete.vim'
NeoBundleFetch 'wavded/vim-stylus.git'
NeoBundleFetch 'walm/jshint.vim'
NeoBundleFetch 'wincent/command-t'
NeoBundleFetch 'wlangstroth/vim-racket'
NeoBundleFetch 'xml.vim'
NeoBundleFetch 'xsbeats/vim-blade'
NeoBundleFetch 'yggdroot/indentline'
NeoBundleFetch 'zah/nim.vim'
 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
NeoBundleCheck
 
let g:neobundle#install_process_timeout = 1500

let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

let g:user_emmet_install_global = 0
autocmd filetype html,css EmmetInstall

 """"""""""
" 对部分语言设置单独的缩进
au filetype groovy,scala,clojure,scheme,racket,lisp,lua,ruby,eruby,slim,elixir,julia,dart,haxe,coffee,jade,sh set shiftwidth=2
au filetype groovy,scala,clojure,scheme,racket,lisp,lua,ruby,eruby,slim,elixir,julia,dart,haxe,coffee,jade,sh set tabstop=2

" 根据后缀名指定文件类型
au bufread,bufnewfile *.h        setlocal ft=c
au bufread,bufnewfile *.m        setlocal ft=objc
au bufread,bufnewfile *.di       setlocal ft=d
au bufread,bufnewfile *.cl       setlocal ft=lisp
au bufread,bufnewfile *.php      setlocal ft=php
au bufread,bufnewfile *.inc      setlocal ft=php
"au bufread,bufnewfile *.sql      setlocal ft=mysql
au bufread,bufnewfile *.tpl      setlocal ft=smarty
au bufread,bufnewfile *.txt      setlocal ft=txt
au bufread,bufnewfile *.log      setlocal ft=conf
au bufread,bufnewfile hosts      setlocal ft=conf
au bufread,bufnewfile http*.conf setlocal ft=apache
au bufread,bufnewfile *.conf     setlocal ft=nginx
au bufread,bufnewfile *.ini      setlocal ft=dosini
"markdown配置
au bufread,bufnewfile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=mkd
au bufread,bufnewfile *.{go}   set filetype=go
au bufread,bufnewfile *.{js}   set filetype=javascript
au bufread,bufnewfile *.{html,htm,tpl} setlocal ft=html

"golang
"processing... % (ctrl+c to stop)
let g:fencview_autodetect=0
set rtp+=~/gopath/src/github.com/nsf/gocode/vim

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
au filetype clojure  set iskeyword-=.
au filetype clojure  set iskeyword-=>
au filetype perl,php set iskeyword-=.
au filetype perl,php set iskeyword-=$
au filetype perl,php set iskeyword-=-
au filetype ruby     set iskeyword+=!
au filetype ruby     set iskeyword+=?

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"键盘命令
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickfix模式
autocmd filetype c,cpp map <buffer> <leader><space> :w<cr>:make<cr>

set completeopt=preview,menu 
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
if has("autocmd")
      autocmd BufReadPost *
          \ if line("'\"") > 0 && line("'\"") <= line("$") |
          \   exe "normal g`\"" |
          \ endif
endif
"当打开vim且没有文件时自动打开NERDTree
"autocmd vimenter * if !argc() | NERDTree | endif
" 只剩 NERDTree时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 加载pathogen插件管理器
execute pathogen#infect()
let g:snippets_dir = '~/.vim/bundle/vim-snippets/snippets/'
" nerd_commenter      注释处理插件
let nerdspacedelims = 1                        " 自动添加前置空格

" indent_guides       显示对齐线
let g:indent_guides_enable_on_vim_startup = 0  " 默认关闭
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸

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

let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : '标准',
      \ 'i'  : '插入',
      \ 'R'  : '替换',
      \ 'c'  : '命令行',
      \ 'v'  : '可视',
      \ 'V'  : '可视',
      \ '' : '可视',
      \ 's'  : '选择',
      \ 'S'  : '选择',
      \ '' : '选择',
      \ }

set laststatus=2

" airline-tabline扩展设计，若需要更专业的buffer列表显示插件，
" 可以使用 techlivezheng/vim-plugin-minibufexpl 插件！
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':p:t' " 只显示文件名，不显示路径内容。

" promptline          终端辅助工具
let g:promptline_powerline_symbols = 0         " 关闭特殊符号
let g:promptline_preset = {
        \'a'    : [ '\u' ],
        \'b'    : [ promptline#slices#cwd() ],
        \'c'    : [ promptline#slices#vcs_branch(), promptline#slices#git_status() ],
        \'warn' : [ promptline#slices#last_exit_code() ]
        \}                                     " 自定义命令行显示

" gitgutter           git辅助插件
let g:gitgutter_enabled               = 0      " 默认不开启
let g:gitgutter_signs                 = 0      " 默认不开启提示
let g:gitgutter_highlight_lines       = 0      " 默认不高亮行
let g:gitgutter_sign_added            = '+'    " 自定义新增指示符
let g:gitgutter_sign_modified         = '>'    " 自定义修改指示符
let g:gitgutter_sign_removed          = '-'    " 自定义删除指示符
let g:gitgutter_sign_modified_removed = '->'   " 自定义既修改又删除指示符

"syntastic相关
"execute pathogen#infect()
let g:syntastic_enable_signs=1
let g:syntasitc_quiet_message = {'level':'warning'}
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
let g:syntastic_c_compiler_options = '-std=c11 -wall'
let g:syntastic_cpp_compiler_options = '-std=c++14 -wall'

" javascript-libraries-syntax                    指定需要高亮的js库
let g:used_javascript_libs = 'jquery,requirejs,backbone,underscore,prelude,angularjs,angularui,react'

" minibufexpl插件的一般设置
let g:minibufexplmapwindownavvim = 1
let g:minibufexplmapwindownavarrows = 1
let g:minibufexplmapctabswitchbufs = 1
let g:minibufexplmodseltarget = 1  
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
" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'


"ctrlp设置
"
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc,*.png,*.jpg,*.gif     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.pyc,*.png,*.jpg,*.gif  " Windows


let NERDTreeIgnore=['\.pyc']

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"""YouCompleteMe
if has("win32")
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
let g:go_fmt_command = "goimports"
set hidden
let g:racer_cmd = "/home/loonor/github/racer/target/release/racer"
let RUST_SRC_PATH="/home/loonor/github/rust/src"
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

let g:haskell_enable_quantification = 1 ""to enable highlighting of forall
let g:haskell_enable_recursivedo = 1 ""to enable highlighting of mdo and rec
let g:haskell_enable_arrowsyntax = 1 ""to enable highlighting of proc
let g:haskell_enable_pattern_synonyms = 1 ""to enable highlighting of pattern
let g:haskell_enable_typeroles = 1 ""to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1 ""to enable highlighting of static

"""set vim-clang
let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=c++11 -stdlib=libc++'

let g:OmniSharp_selector_ui = 'unite'

call pathogen#infect()
call pathogen#helptags()
" 当前目录文件很多时，会导致第一次保存非常慢
call pymode#default('g:pymode_rope_autoimport', 0)
let g:pymode_rope = 0 
let g:redl_use_vsplit = 1

"新建.c,.h,.sh,.java文件，自动插入文件头 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.rb,*.java,*.py,*.go,*.html,*.php exec ":call SetTitle()" 

" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
"Use local vimrc if available {
if filereadable(expand("~/.vim/local.vim"))
    source ~/.vim/local.vim 
endif 
"}
