" Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

if &compatible
     set nocompatible               " Be iMproved
endif

   " Required:
   "set runtimepath+=~/.vim/bundle/neobundle.vim/
if g:isWIN ""has("win32") || has("win64")
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
"""afirst
NeoBundleFetch 'a.vim'
NeoBundleFetch 'AuthorInfo'
NeoBundleFetch 'AutoTag'
"NeoBundleFetch 'altercation/vim-colors-solarized'
NeoBundleFetch 'AndrewRadev/sideways.vim' "调换参数,如(item1,item2),光标在item2,然后:SidewaysLeft,item2与item1位置调换
NeoBundleFetch 'bogado/file-line' "vim demo.txt:20 光标在第20行
NeoBundleFetch 'danro/rename.vim' "重命名当前文件 :Rename othername
NeoBundleFetch 'bkad/CamelCaseMotion' "移动 w e b
NeoBundleFetch 'bash-support.vim'
NeoBundleFetch 'bronson/vim-trailing-whitespace'  
"" 将代码行最后无效的空格标红
NeoBundleFetch 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"NeoBundleFetch 'becaning/vimdoccn'
"vim中文帮助
"NeoBundleFetch 'beloglazov/vim-online-thesaurus'
"for Vim allowing you to look up words in an online thesaurus :OnlineThesaurusCurrentWord command is mapped to <LocalLeader>K
"disable the default key binding
"let g:online_thesaurus_map_keys = 0
"NeoBundleFetch 'chase/vim-ansible-yaml'
"NeoBundleFetch 'cscope_macros.vim'
"NeoBundleFetch 'chrisbra/csv.vim'
NeoBundleFetch 'chriskempson/base16-shell'
NeoBundleFetch 'digitaltoad/vim-pug'
NeoBundleFetch 'EasyGrep'
NeoBundleFetch 'Lokaltog/vim-powerline'
NeoBundleFetch 'edkolev/promptline.vim'
NeoBundleFetch 'ervandew/supertab' 
NeoBundleFetch 'fholgado/minibufexpl.vim'
 " tabular: 自动对齐
NeoBundleFetch 'godlygeek/tabular'
NeoBundleFetch 'gtags.vim'
"颜色查看 :XtermColorTable Press #/t/f
NeoBundleFetch 'guns/xterm-color-table.vim' 
""这里使用了Ultisnips
"NeoBundleFetch 'garbas/vim-snipmate' 
""查看视图模式V+h/l+*
"NeoBundleFetch 'haya14busa/vim-asterisk' 

""查找:h incsearch.vim
"NeoBundleFetch 'haya14busa/incsearch.vim' 
"NeoBundleFetch 'kana/vim-niceblock'
"NeoBundleFetch 'kana/vim-operator-replace'
"NeoBundle 'kana/vim-operator-user'
"map/nmap:y/Y
"NeoBundleFetch 'haya14busa/vim-operator-flashy' 
NeoBundleFetch 'honza/vim-snippets'

"NeoBundleFetch 'itchyny/vim-cursorword'
NeoBundle 'joedicastro/vim-molokai256'
"if g:isMAC
    "NeoBundleFetch 'jstrater/mpvim'
"endif
""NeoBundleFetch 'jsfaint/gen_tags.vim'
NeoBundleFetch 'jlanzarotta/bufexplorer'
"NeoBundleFetch 'jszakmeister/vim-togglecursor'
"""NeoBundleFetch 'junegunn/goyo.vim'
"""NeoBundleFetch 'junegunn/limelight.vim'
" Color name (:help cterm-colors) or ANSI code

"for place, toggle and display marks nmap:m,
"NeoBundleFetch 'kshenoy/vim-signature' 
"NeoBundleFetch 'kana/vim-textobj-user'
NeoBundleFetch 'Konfekt/FastFold'
NeoBundleFetch 'easymotion/vim-easymotion'
NeoBundleFetch 'lilydjwg/fcitx.vim'
NeoBundleFetch 'mkitt/tabline.vim'
NeoBundleFetch 'mtth/scratch.vim'
"NeoBundleFetch 'marcweber/vim-addon-mw-utils'
NeoBundleFetch 'Mark--Karkat'
NeoBundleFetch 'matchit.zip'
NeoBundleFetch 'majutsushi/tagbar'
NeoBundleFetch 'mileszs/ack.vim'
NeoBundleFetch 'mhinz/vim-signify'
NeoBundleFetch 'mhinz/vim-startify'
"NeoBundleFetch 'mustache/vim-mustache-handlebars'

"NeoBundleLazy 'nielsmadan/harlequin', { 'autoload' : 
        "\ { 'unite_sources' : 'colorscheme',  }}

"NeoBundleFetch 'osyo-manga/unite-quickfix', {'autoload':{'unite_sources':
            "\ ['quickfix', 'location_list']}}
"NeoBundleLazy 'osyo-manga/unite-fold', {'autoload':{'unite_sources':'fold'}}
NeoBundleFetch 'osyo-manga/vim-monster'
"NeoBundleFetch 'osyo-manga/unite-filetype',{ 'autoload' : {'unite_sources' :
            "\ 'filetype', }}
NeoBundleFetch 'pbrisbin/vim-mkdir'
"NeoBundleFetch 'PotatoesMaster/i3-vim-syntax'
NeoBundleFetch 'rafi/awesome-vim-colorschemes'
NeoBundleFetch 'rafi/vim-tagabana'
NeoBundleFetch 'rafi/vim-tinyline'
"NeoBundleFetch 'rafi/vim-unite-issue'
"NeoBundleFetch 'rhysd/clever-f.vim'
"NeoBundleFetch 'rhysd/vim-operator-surround'
NeoBundleFetch 'rizzatti/dash.vim.git'
NeoBundleFetch 'Raimondi/delimitMate'
NeoBundleFetch 'rking/ag.vim.git'
NeoBundleFetch 'sjl/gundo.vim'
NeoBundleLazy 'sjl/badwolf', { 'autoload' :
        \ { 'unite_sources' : 'colorscheme', }}
NeoBundleFetch 'scrooloose/nerdtree'

NeoBundleFetch 'scrooloose/nerdcommenter'

NeoBundleFetch 'scrooloose/syntastic'
NeoBundleFetch 'sirver/ultisnips'

"NeoBundleFetch 'shougo/unite-help',{'autoload':{'unite_sources':'help'}}
"NeoBundleFetch 'shougo/unite-outline',{'autoload':{'unite_sources':'outline'}}
NeoBundleFetch 'shougo/vimshell.vim'
NeoBundleFetch 'Shougo/vimfiler.vim'
NeoBundleFetch 'shougo/unite.vim'
"NeoBundleFetch 'Shougo/junkfile.vim'
"NeoBundleFetch 'Shougo/unite-build'
"NeoBundleFetch 'shougo/neomru.vim', {'autoload':{'unite_sources': 
"            \['file_mru', 'directory_mru']}}
"NeoBundleFetch 'Shougo/vinarise.vim'
"NeoBundleFetch 'Shougo/neossh.vim'
"NeoBundleFetch 'Shougo/echodoc.vim'
NeoBundleFetch 'Shougo/neopairs.vim'
NeoBundleFetch 'Shougo/context_filetype.vim'
NeoBundleFetch 'Shougo/tabpagebuffer.vim'
"NeoBundleFetch 'shougo/neocomplcache.vim'
if has('lua')
    NeoBundleFetch 'shougo/neocomplete.vim'
    NeoBundleFetch 'shougo/neosnippet.vim'
endif 

NeoBundleFetch 'shougo/neosnippet-snippets'
NeoBundleFetch 'shougo/vimproc.vim', { 'build' : { 'linux' : 'make','unix':'gmake','mac':'make',  },  }
NeoBundleFetch 't9md/vim-choosewin'
"NeoBundleFetch 'tacroe/unite-mark', {'autoload':{'unite_sources':'mark'}}
NeoBundleFetch 'tacahiroy/ctrlp-funky'
NeoBundleFetch 'terryma/vim-multiple-cursors.git'
NeoBundleFetch 'terryma/vim-expand-region'
NeoBundleFetch 'tomtom/tlib_vim'
NeoBundleFetch 'tomtom/tcomment_vim'
"NeoBundleFetch 'tsukkee/unite-tag', {'autoload':{'unite_sources':'tag'}}
NeoBundleFetch 'tpope/vim-fireplace'
NeoBundleFetch 'tpope/vim-projectionist'
NeoBundleFetch 'tpope/vim-speeddating'
NeoBundleFetch 'tpope/vim-pathogen'
NeoBundleFetch 'tpope/vim-bundler'
NeoBundleFetch 'tpope/vim-surround'

NeoBundleFetch 'tpope/vim-fugitive'
NeoBundleFetch 'tpope/vim-unimpaired'

NeoBundleFetch 'tpope/vim-endwise'
NeoBundleFetch 'thoughtbot/vim-rspec'
NeoBundleFetch 'tpope/vim-repeat'
NeoBundleFetch 'tpope/vim-abolish'
" commentary: 快速注释。
NeoBundleFetch 'tpope/vim-commentary'
NeoBundleFetch 'tpope/vim-dispatch.git'
"NeoBundleFetch 'thinca/vim-localrc'
NeoBundleFetch 'thinca/vim-themis'
NeoBundleFetch 'thinca/vim-ref'
NeoBundleFetch 'thinca/vim-quickrun'
NeoBundleFetch 'thinca/vim-prettyprint'
"NeoBundleFetch 'thinca/vim-unite-history',{ 'autoload' : { 'unite_sources' :
"            \ ['history/command', 'history/search']}}
"NeoBundleFetch 'ujihisa/unite-colorscheme',{'autoload':{'unite_sources':'colorscheme'}}
NeoBundleLazy 'ujihisa/unite-locate', {'autoload':{'unite_sources':'locate'}}

"NeoBundleLazy 'vim-scripts/summerfruit256.vim', { 'autoload' :
"        \ { 'unite_sources' : 'colorscheme', }}
NeoBundleFetch 'vim-airline/vim-airline-themes'


NeoBundleFetch 'valloric/listtoggle'
NeoBundle 'Valloric/YouCompleteMe', {
     \ 'build'      : {
        \ 'mac'     : './install.py',
        \ 'unix'    : './install.py --clang-completer --gocode-completer --tern-completer',
        \ 'windows' : 'install.py',
        \ 'cygwin'  : './install.py'
        \ }
     \ }

NeoBundleFetch 'vim-scripts/Auto-Pairs'
NeoBundleFetch 'vim-scripts/CaptureClipboard'
NeoBundleFetch 'vim-scripts/ctrlp-modified.vim'
NeoBundleFetch 'kien/ctrlp.vim'
NeoBundleFetch 'vim-scripts/fencview.vim' 
NeoBundleFetch 'vim-scripts/FuzzyFinder'
NeoBundleFetch 'vim-scripts/l9'
NeoBundleFetch 'vim-scripts/last_edit_marker.vim'
NeoBundleFetch 'vim-scripts/synmark.vim'
NeoBundleFetch 'vim-scripts/taglist.vim' 
NeoBundleFetch 'vim-scripts/the-nerd-commenter' 
NeoBundleFetch 'vim-scripts/vim-script-updater'
NeoBundleFetch 'vim-scripts/ZoomWin.git'
"map <Leader>z :ZoomWin<CR>
NeoBundleFetch 'vimwiki/vimwiki'  
"NeoBundleFetch 'vim-scripts/autocomplpop'    ""youcomplete包含
"NeoBundle 'wincent/command-t', {
"    \   'build_commands': ['make', 'ruby'],
"    \   'build': {
"    \      'unix': 'cd ruby/command-t && { make clean; ruby extconf.rb && make }'
"    \   }
"    \ }
NeoBundleFetch 'Xuyuanp/nerdtree-git-plugin'
NeoBundle 'sheerun/vim-polyglot'
"NeoBundleFetch 'xsbeats/vim-blade'
NeoBundleFetch 'nathanaelkane/vim-indent-guides'
""control systems 
NeoBundleFetch 'airblade/vim-gitgutter' "标记修改文件位置
"NeoBundleFetch 'itchyny/vim-gitbranch'
NeoBundleLazy 'joedicastro/vim-github256', { 'autoload' :
        \ { 'unite_sources' : 'colorscheme', }}
"NeoBundleFetch 'joker1007/unite-pull-request'
"let g:github_user=""
NeoBundleLazy 'lambdalisue/vim-gita', {
        \ 'autoload': {
        \   'commands': ['Gita'],
        \}}
NeoBundleFetch 'rhysd/committia.vim'
NeoBundleFetch 'tpope/vim-git'

""tmux
"NeoBundleFetch 'tmux-plugins/vim-tmux'
"NeoBundleFetch 'christoomey/vim-tmux-navigator'

"html
NeoBundleFetch 'mattn/emmet-vim'

"NeoBundleFetch 'mattn/webapi-vim'
NeoBundleFetch 'othree/html5.vim'
"NeoBundleFetch 'rstacruz/sparkup'
"" python
""与youcomplete有矛盾
"""NeoBundleFetch 'davidhalter/jedi-vim' 
"NeoBundleFetch 'hynek/vim-python-pep8-indent'
NeoBundleFetch 'hdima/python-syntax'
"NeoBundleFetch 'klen/python-mode.git'
"NeoBundleFetch 'Glench/Vim-Jinja2-Syntax'
"NeoBundleFetch 'mitsuhiko/vim-jinja'
NeoBundleFetch 'kevinw/pyflakes-vim'
let g:pyflakes_use_quickfix = 0   
"NeoBundleFetch 'lambdalisue/vim-django-support'
"NeoBundleFetch 'vim-scripts/python-imports.vim'
"NeoBundleFetch 'vim-scripts/Django-Projects' 
"NeoBundleFetch 'vim-scripts/django_templates.vim'

""php
NeoBundleFetch 'vim-scripts/PDV--phpDocumentor-for-Vim'
"NeoBundleFetch 'hhvm/vim-hack'
""NeoBundleFetch 'rayburgemeestre/phpfolding.vim'
NeoBundleFetch 'StanAngeloff/php.vim'
NeoBundleFetch 'shawncplus/phpcomplete.vim' 
NeoBundleFetch 'spf13/piv'
""elixir erlang
NeoBundleFetch 'elixir-lang/vim-elixir'
NeoBundleFetch 'mattreduce/vim-mix'
NeoBundleFetch 'oscarh/vimerl'
NeoBundleFetch 'vim-erlang/vim-erlang-runtime'
NeoBundleFetch 'vim-erlang/vim-erlang-tags'
NeoBundleFetch 'vim-erlang/vim-erlang-compiler'
NeoBundleFetch 'vim-erlang/vim-erlang-omnicomplete'
""iolang
"NeoBundleFetch 'andreimaxim/vim-io'
""racket
NeoBundleFetch 'wlangstroth/vim-racket'
""dart lang
"NeoBundleFetch 'bartlomiejdanek/vim-dart' "太older
"NeoBundleFetch 'dart-lang/dart-vim-plugin'
""angular
NeoBundleFetch 'burnettk/vim-angular'
NeoBundleFetch 'matthewsimo/angular-vim-snippets'
""javascript
"NeoBundleFetch 'claco/jasmine.vim' "for Jasmine javascript testing
"NeoBundleFetch 'grvcoelho/vim-javascript-snippets'
"NeoBundleFetch 'heavenshell/vim-jsdoc'
"NeoBundleFetch 'jamescarr/snipmate-nodejs.git'
"NeoBundleFetch 'jason0x43/vim-js-indent'
"NeoBundleFetch 'leafgarland/typescript-vim'
"NeoBundleFetch 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx']  }
"NeoBundleFetch 'marijnh/tern_for_vim'
"NeoBundleFetch 'moll/vim-node'
"NeoBundleFetch 'myhere/vim-nodejs-complete.git'

"NeoBundleFetch 'maksimr/vim-jsbeautify'

"NeoBundleFetch 'ninegrid/vim-livescript'
"NeoBundleFetch 'othree/javascript-libraries-syntax.vim'
"autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
"autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
"autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
"autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
"autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0
"NeoBundleFetch 'othree/yajs.vim'
"NeoBundleFetch 'othree/jspc.vim'
"NeoBundleFetch 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx']  }
"""NeoBundleFetch 'vim-scripts/javascript-omnicompletion-with-yui-and-j'
"""NeoBundleFetch 'vim-scripts/jsbeautify' 
"NeoBundleFetch 'vim-scripts/jslint.vim'
"NeoBundleFetch 'nono/jquery.vim'

""ruby
NeoBundleFetch 'tpope/vim-rails'
NeoBundleFetch 'vim-ruby/vim-ruby'
""json
NeoBundleFetch 'leshill/vim-json'
""coffee
NeoBundleFetch 'kchmck/vim-coffee-script.git'
""clang 
""跟youcomplete不是很和
"NeoBundleFetch 'justmao945/vim-clang' 

"NeoBundleFetch 'octol/vim-cpp-enhanced-highlight'
""rust
NeoBundleFetch 'racer-rust/vim-racer'
NeoBundleFetch 'rust-lang/rust.vim'
NeoBundleFetch 'rhysd/rust-doc.vim'

""swift
"NeoBundleFetch 'kballard/vim-swift'
""org-mode
NeoBundleFetch 'jceb/vim-orgmode'
"markdown
NeoBundleFetch 'suan/vim-instant-markdown'
NeoBundleFetch 'plasticboy/vim-markdown'

""xml
NeoBundleFetch 'sukima/xmledit',{'build' : 'make'}
NeoBundleFetch 'xml.vim'
""elm
"NeoBundleFetch 'ElmCast/elm-vim'
"NeoBundleFetch 'lambdatoast/elm.vim'

""Sassy CSS
"NeoBundleFetch 'cakebaker/scss-syntax.vim'

"NeoBundleFetch 'groenewege/vim-less'
"NeoBundleFetch 'hail2u/vim-css3-syntax'
"NeoBundleFetch 'othree/csscomplete.vim'
"NeoBundleFetch 'skammer/vim-css-color'
"NeoBundleFetch 'wavded/vim-stylus.git'

""golang
NeoBundleFetch 'fatih/vim-go'
NeoBundleFetch 'garyburd/go-explorer'

""haskell
NeoBundleFetch 'eagletmt/ghcmod-vim'
NeoBundleFetch 'raichoo/haskell-vim'
""toml
NeoBundleFetch 'cespare/vim-toml'
""nginx
NeoBundleFetch 'evanmiller/nginx-vim-syntax'
"NeoBundleFetch 'fatih/vim-nginx'
""database
NeoBundleFetch 'dbext.vim'
NeoBundleFetch 'vim-scripts/sqlcomplete.vim'
""clojure
NeoBundleFetch 'dgrnbrg/vim-redl'
NeoBundleFetch 'vim-scripts/vimclojure'
""perl
NeoBundleFetch 'vim-perl/vim-perl'
"julia
"NeoBundleFetch 'julialang/julia-vim'
""haxe
"NeoBundleFetch 'jdonaldson/vaxe'
""maven
"NeoBundleFetch 'mikelue/vim-maven-plugin'
""nim
"NeoBundleFetch 'zah/nim.vim'
""java
"NeoBundleFetch 'bpdp/vim-java'
""scala
"NeoBundleFetch 'derekwyatt/vim-scala'
""matlab
"NeoBundleFetch 'djoshea/vim-matlab'   " matlab/matlab-fold: matlab 语法高亮及代码折叠插件。
"NeoBundleFetch 'djoshea/vim-matlab-fold'
""pony
"NeoBundleFetch 'dleonard0/pony-vim-syntax'
""docker
"NeoBundleFetch 'ekalinin/Dockerfile.vim'
""fsharp
"NeoBundleFetch 'fsharp/vim-fsharp'
"kotlin
"NeoBundleFetch 'udalov/kotlin-vim'
"gtk
"NeoBundleFetch 'vim-scripts/gtk-vim-syntax'
""other
"NeoBundleFetch 'briancollins/vim-jst' "for highlighting and indenting JST/EJS syntax. Based on the eruby syntax from vim-ruby.
call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
NeoBundleCheck
let g:neobundle#install_process_timeout = 1500


