if &compatible
     set nocompatible               " Be iMproved
endif
if g:isWIN ""has("win32") || has("win64")
    call plug#begin('$VIM/vimfiles/plugged')
else
    call plug#begin('$HOME/.vim/plugged')
endif
" 缓冲区插件
Plug 'bsdelf/bufferhint'
nnoremap - :call bufferhint#Popup()<CR>
nnoremap \ :call bufferhint#LoadPrevious()<CR>
" 快速去行尾空格 [, + <Space>]
Plug 'bronson/vim-trailing-whitespace'
" quick locate file or function
" 文件搜索
" change to https://github.com/ctrlpvim/ctrlp.vim
" ctrlp ctrlpfunky
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
" 自动补全html/xml标签
Plug 'docunext/closetag.vim'
" quick movement
" easymotion
"更高效的移动 [,, + w/fx/h/j/k/l]
Plug 'Lokaltog/vim-easymotion'
" 快速赋值语句对齐
Plug 'junegunn/vim-easy-align'
" signature
" 显示marks - 方便自己进行标记和跳转
" m[a-zA-Z] add mark
" '[a-zA-Z] go to mark
" m<Space>  del all marks
" m/        list all marks
Plug 'kshenoy/vim-signature'
" 自动补全单引号，双引号等
Plug 'Raimondi/delimitMate'
" syntastic
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
"代码片段快速插入
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" 快速加入修改环绕字符
" for repeat -> enhance surround.vim, . to repeat command
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
" quick selection and edit
" expandregion
" 选中区块
Plug 'terryma/vim-expand-region'
" 多光标选中编辑
" multiplecursors
Plug 'terryma/vim-multiple-cursors'
" quickrun
Plug 'thinca/vim-quickrun'
" 更高效的行内移动, f/F/t/T, 才触发
" quickscope
Plug 'unblevable/quick-scope'
Plug 'vim-scripts/matchit.zip'
"代码自动补全
if has("win64")
    Plug 'snakeleon/YouCompleteMe-x64'
elseif has("win32")
    Plug 'snakeleon/YouCompleteMe-x86'
else
    Plug 'Valloric/YouCompleteMe',{'do': 'git submodule update --init --recursive && ./install.py --clang-completer --gocode-completer  --tern-completer'} "{
            "\'build': {
            "\ 'linux': './install.py --clang-completer --gocode-completer  --tern-completer',
            "\ 'mac': './install.py',
            "\ 'Unix': './install.py'}}
endif
" git
" fugitive
Plug 'tpope/vim-fugitive'
" use CTRL-A/CTRL-X to increment dates,time ...
Plug 'tpope/vim-speeddating'
" gitgutter
Plug 'airblade/vim-gitgutter'
Plug 'jreybert/vimagit'
" gundo
" edit history, 可以查看回到某个历史状态
Plug 'sjl/gundo.vim'

" view
" airline
" 状态栏增强展示
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" rainbow_parentheses
" 括号显示增强
Plug 'kien/rainbow_parentheses.vim'
" 主题 solarized
" solarized
Plug 'altercation/vim-colors-solarized'
" molokai
" 主题 molokai
Plug 'tomasr/molokai'
" 括号匹配
Plug 'jiangmiao/auto-pairs'
" nav
" nerdtree nerdtreetabs
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
" ctrlspace
Plug 'szw/vim-ctrlspace'
" tagbar
Plug 'majutsushi/tagbar'
Plug 'jacoborus/tender.vim'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'lvht/fzf-mru'|Plug 'junegunn/fzf'
" text object
" 支持自定义文本对象
Plug 'kana/vim-textobj-user'
" 增加行文本对象: l   dal yal cil
Plug 'kana/vim-textobj-line'
" 增加文件文本对象: e   dae yae cie
Plug 'kana/vim-textobj-entire'
" 增加缩进文本对象: i   dai yai cii - 相同缩进属于同一块
Plug 'kana/vim-textobj-indent'
Plug 'shougo/vimproc.vim', {'do': 'make'} "" { 'build' : { 'linux' : 'make','unix':'gmake','mac':'make',  },  }
 "调换参数,如(item1,item2),光标在item2,然后:SidewaysLeft,item2与item1位置调换"
Plug 'AndrewRadev/sideways.vim'
"重命名当前文件 :Rename othername
Plug 'danro/rename.vim'
Plug 'bash-support.vim'
"vim中文帮助
Plug 'becaning/vimdoccn'
"other
Plug 'chriskempson/base16-shell'
Plug 'digitaltoad/vim-pug'
Plug 'EasyGrep'
Plug 'Lokaltog/vim-powerline'
Plug 'edkolev/promptline.vim'
Plug 'ervandew/supertab'
"Plug 'fholgado/minibufexpl.vim'
 " tabular: 自动对齐
Plug 'godlygeek/tabular'
Plug 'Townk/vim-autoclose'
Plug 'tomtom/tcomment_vim'
Plug 'gtags.vim'
"颜色查看 :XtermColorTable Press #/t/f
Plug 'guns/xterm-color-table.vim'
Plug 'cscope_macros.vim'
Plug 'mkitt/tabline.vim'
Plug 'mtth/scratch.vim'
Plug 'mileszs/ack.vim'
Plug 'pbrisbin/vim-mkdir'
Plug 'mhinz/vim-signify'
" Plug 'mhinz/vim-startify'
Plug 'shougo/unite.vim'
Plug 'shougo/vimshell.vim'
Plug 'Shougo/vimfiler.vim'
Plug 'vim-scripts/fencview.vim'
Plug 'vim-scripts/l9'
Plug 'vim-scripts/FuzzyFinder'
Plug 'vim-scripts/taglist.vim'
Plug 'vimwiki/vimwiki'
" Plug 'vim-scripts/ZoomWin.git'
Plug 'vim-scripts/winmanager'
Plug 'pthrasher/conqueterm-vim'
" Changes Vim working directory to project root (identified by presence of
" known directory or file)
Plug 'airblade/vim-rooter'
" 异步检测
Plug 'w0rp/ale'
let g:ale_emit_conflict_warnings = 0
Plug 'google/yapf'
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>
"插件 plugins
if g:isWIN
    if filereadable(expand("$VIM/vimfiles/local.vim"))
        source $VIM/vimfiles/local.vim
    endif
else
    if filereadable(expand("$HOME/.vim/local.vim"))
        source $HOME/.vim/local.vim
    endif
endif
"call neobundle#end()
call plug#end()
filetype plugin indent on

"NeoBundleCheck

"let g:neobundle#install_process_timeout = 1500

" syntastic {{{
    " dependence
    " 1. shellcheck `brew install shellcheck` https://github.com/koalaman/shellcheck

    let g:syntastic_error_symbol='>>'
    let g:syntastic_warning_symbol='>'
    let g:syntastic_check_on_open=1
    let g:syntastic_check_on_wq=0
    let g:syntastic_enable_highlighting=1

    " checkers
    " 最轻量
    " let g:syntastic_python_checkers=['pyflakes'] " 使用pyflakes
    " 中等
    " error code: http://pep8.readthedocs.org/en/latest/intro.html#error-codes
    let g:syntastic_python_checkers=['pyflakes', 'pep8'] " 使用pyflakes,速度比pylint快
    let g:syntastic_python_pep8_args='--ignore=E501,E225,E124,E712'
    " 重量级, 但是足够强大, 定制完成后相当个性化
    " pylint codes: http://pylint-messages.wikidot.com/all-codes
    " let g:syntastic_python_checkers=['pyflakes', 'pylint'] " 使用pyflakes,速度比pylint快
    " let g:syntastic_python_checkers=['pylint'] " 使用pyflakes,速度比pylint快
    " let g:syntastic_python_pylint_args='--disable=C0111,R0903,C0301'

    " if js
    " let g:syntastic_javascript_checkers = ['jsl', 'jshint']
    " let g:syntastic_html_checkers=['tidy', 'jshint']

    " to see error location list
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_enable_signs = 1
    let g:syntastic_auto_loc_list = 0
    let g:syntastic_auto_jump = 0
    let g:syntastic_loc_list_height = 5

    function! ToggleErrors()
        let old_last_winnr = winnr('$')
        lclose
        if old_last_winnr == winnr('$')
            " Nothing was closed, open syntastic_error location panel
            Errors
        endif
    endfunction
    nnoremap <Leader>s :call ToggleErrors()<cr>

    " ,en ,ep to jump between errors
    function! <SID>LocationPrevious()
    try
        lprev
    catch /^Vim\%((\a\+)\)\=:E553/
        llast
    endtry
    endfunction

    function! <SID>LocationNext()
    try
        lnext
    catch /^Vim\%((\a\+)\)\=:E553/
        lfirst
    endtry
    endfunction

    nnoremap <silent> <Plug>LocationPrevious    :<C-u>exe 'call <SID>LocationPrevious()'<CR>
    nnoremap <silent> <Plug>LocationNext        :<C-u>exe 'call <SID>LocationNext()'<CR>
    nmap <silent> <Leader>ep    <Plug>LocationPrevious
    nmap <silent> <Leader>en    <Plug>LocationNext

    " 修改高亮的背景色, 适应主题
    highlight SyntasticErrorSign guifg=white guibg=black

    " 禁止插件检查java
    " thanks to @marsqing, see https://github.com/wklken/k-vim/issues/164
    let g:syntastic_mode_map = {'mode': 'active', 'passive_filetypes': ['java'] }
" }}}


" ################### 自动补全 ###################

" YouCompleteMe {{{
    "youcompleteme  默认tab  s-tab 和自动补全冲突
    let g:ycm_key_list_select_completion=['<c-n>']
    "let g:ycm_key_list_select_completion = ['<Down>']
    let g:ycm_key_list_previous_completion=['<c-p>']
    "let g:ycm_key_list_previous_completion = ['<Up>']
    let g:ycm_complete_in_comments = 1  "在注释输入中也能补全
    let g:ycm_complete_in_strings = 1   "在字符串输入中也能补全
    let g:ycm_use_ultisnips_completer = 1 "提示UltiSnips
    let g:ycm_collect_identifiers_from_comments_and_strings = 1   "注释和字符串中的文字也会被收入补全
    let g:ycm_collect_identifiers_from_tags_files = 1
    " 开启语法关键字补全
    let g:ycm_seed_identifiers_with_syntax=1

    "let g:ycm_seed_identifiers_with_syntax=1   "语言关键字补全, 不过python关键字都很短，所以，需要的自己打开

    " 跳转到定义处, 分屏打开
    let g:ycm_goto_buffer_command = 'horizontal-split'
    " nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
    nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
    nnoremap <leader>gd :YcmCompleter GoToDeclaration<CR>

    " 引入，可以补全系统，以及python的第三方包 针对新老版本YCM做了兼容
    " old version
    if has("win64")
        let g:ycm_global_ycm_extra_conf = $VIM.'/vimfiles/plugged/YouCompleteMe-x64/python/.ycm_extra_conf.py'
    elseif has("win32")
        let g:ycm_global_ycm_extra_conf = $VIM.'/vimfiles/plugged/YouCompleteMe-x86/python/.ycm_extra_conf.py'
    else
        if !empty(glob("~/.vim/plugged/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"))
            let g:ycm_global_ycm_extra_conf = "$HOME/.vim/plugged/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
        endif
    " new version
        if !empty(glob("~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"))
            let g:ycm_global_ycm_extra_conf = "$HOME/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
        endif
    endif

    " 直接触发自动补全 insert模式下
    " let g:ycm_key_invoke_completion = '<C-Space>'
    " 黑名单,不启用
    let g:ycm_filetype_blacklist = {
        \ 'tagbar' : 1,
        \ 'gitcommit' : 1,
        \}
" }}}


" ultisnips {{{
    let g:UltiSnipsExpandTrigger       = "<tab>"
    let g:UltiSnipsJumpForwardTrigger  = "<tab>"
    let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
    let g:UltiSnipsSnippetDirectories  = ['UltiSnips']
    let g:UltiSnipsSnippetsDir = '~/.vim/UltiSnips'
    " 定义存放代码片段的文件夹 .vim/UltiSnips下，使用自定义和默认的，将会的到全局，有冲突的会提示
    " 进入对应filetype的snippets进行编辑
    map <leader>us :UltiSnipsEdit<CR>

    " ctrl+j/k 进行选择
    func! g:JInYCM()
        if pumvisible()
            return "\<C-n>"
        else
            return "\<c-j>"
        endif
    endfunction

    func! g:KInYCM()
        if pumvisible()
            return "\<C-p>"
        else
            return "\<c-k>"
        endif
    endfunction
    inoremap <c-j> <c-r>=g:JInYCM()<cr>
    au BufEnter,BufRead * exec "inoremap <silent> " . g:UltiSnipsJumpBackwordTrigger . " <C-R>=g:KInYCM()<cr>"
    let g:UltiSnipsJumpBackwordTrigger = "<c-k>"
" }}}


" delimitMate {{{
    " for python docstring ",优化输入
    au FileType python let b:delimitMate_nesting_quotes = ['"']
    au FileType php let delimitMate_matchpairs = "(:),[:],{:}"
    " 关闭某些类型文件的自动补全
    "au FileType mail let b:delimitMate_autoclose = 0
" }}}


" closetag {{{
    let g:closetag_html_style=1
" }}}

" ################### 快速编码 ###################

" nerdcommenter {{{
    let g:NERDSpaceDelims=1
    "TODO: for python, one space
" }}}

" trailingwhitespace {{{
    map <leader><space> :FixWhitespace<cr>
" }}}

" easyalign {{{
    vmap <Leader>a <Plug>(EasyAlign)
    nmap <Leader>a <Plug>(EasyAlign)
    if !exists('g:easy_align_delimiters')
    let g:easy_align_delimiters = {}
    endif
    let g:easy_align_delimiters['#'] = { 'pattern': '#', 'ignore_groups': ['String'] }
" }}}

" ################### 快速移动 ###################

" easymotion {{{
    let g:EasyMotion_smartcase = 1
    "let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
    map <Leader><leader>h <Plug>(easymotion-linebackward)
    map <Leader><Leader>j <Plug>(easymotion-j)
    map <Leader><Leader>k <Plug>(easymotion-k)
    map <Leader><leader>l <Plug>(easymotion-lineforward)
    " 重复上一次操作, 类似repeat插件, 很强大
    map <Leader><leader>. <Plug>(easymotion-repeat)
" }}}


" quickscope {{{
    let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
    " macvim/gvim会有问题, 暂时注解
    " let g:qs_first_occurrence_highlight_color = '#afff5f' " gui vim
    " let g:qs_first_occurrence_highlight_color = 155       " terminal vim
    " let g:qs_second_occurrence_highlight_color = '#5fffff'  " gui vim
    " let g:qs_second_occurrence_highlight_color = 81         " terminal vim
" }}}

" ################### 快速选中 ###################

" expandregion {{{
    " map + <Plug>(expand_region_expand)
    " map _ <Plug>(expand_region_shrink)
    vmap v <Plug>(expand_region_expand)
    vmap V <Plug>(expand_region_shrink)
    " Extend the global default
    call expand_region#custom_text_objects({
      \ 'a]' :1,
      \ 'ab' :1,
      \ 'aB' :1,
      \ 'ii' :0,
      \ 'ai' :0,
      \ })
" }}}

" multiplecursors {{{
    let g:multi_cursor_use_default_mapping=0
    " Default mapping
    let g:multi_cursor_next_key='<C-m>'
    let g:multi_cursor_prev_key='<C-p>'
    let g:multi_cursor_skip_key='<C-x>'
    let g:multi_cursor_quit_key='<Esc>'
" }}}

" ################### 功能相关 ###################

" ctrlp ctrlpfunky{{{
    let g:ctrlp_map = '<leader>p'
    let g:ctrlp_cmd = 'CtrlP'
    map <leader>f :CtrlPMRU<CR>
    let g:ctrlp_custom_ignore = {
        \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
        \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc)$',
        \ }
    let g:ctrlp_working_path_mode=0
    let g:ctrlp_match_window_bottom=1
    let g:ctrlp_max_height=15
    let g:ctrlp_match_window_reversed=0
    let g:ctrlp_mruf_max=500
    let g:ctrlp_follow_symlinks=1
    " 如果安装了ag, 使用ag
    " if executable('ag')
    " " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
    " let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
    " " ag is fast enough that CtrlP doesn't need to cache
    " let g:ctrlp_use_caching = 0
    " endif

    " ctrlpfunky
    " ctrlp插件1 - 不用ctag进行函数快速跳转
    nnoremap <Leader>fu :CtrlPFunky<Cr>
    " narrow the list down with a word under cursor
    nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
    let g:ctrlp_funky_syntax_highlight = 1

    let g:ctrlp_extensions = ['funky']
" }}}


" ctrlsf {{{
    nmap \ <Plug>CtrlSFCwordPath<CR>
    " let g:ctrlsf_position = 'below'
    " let g:ctrlsf_winsize = '30%'
    let g:ctrlsf_auto_close = 0
    let g:ctrlsf_confirm_save = 0
    " Note: cannot use <CR> or <C-m> for open
    " Use : <sapce> or <tab>
    let g:ctrlsf_mapping = {
        \ "open"  : "<Space>",
        \ "openb" : "O",
        \ "tab"   : "t",
        \ "tabb"  : "T",
        \ "prevw" : "p",
        \ "quit"  : "q",
        \ "next"  : "<C-J>",
        \ "prev"  : "<C-K>",
        \ "pquit" : "q",
        \ }
" }}}

" git.  git操作还是习惯命令行,vim里面处理简单diff编辑操作

" fugitive {{{
    " :Gdiff  :Gstatus :Gvsplit
    nnoremap <leader>ge :Gdiff<CR>
    " not ready to open
    " <leader>gb maps to :Gblame<CR>
    " <leader>gs maps to :Gstatus<CR>
    " <leader>gd maps to :Gdiff<CR>  和现有冲突
    " <leader>gl maps to :Glog<CR>
    " <leader>gc maps to :Gcommit<CR>
    " <leader>gp maps to :Git push<CR>
" }}}

" gitgutter {{{
    " 同git diff,实时展示文件中修改的行
    " 只是不喜欢除了行号多一列, 默认关闭,gs时打开
    let g:gitgutter_map_keys = 0
    let g:gitgutter_enabled = 0
    let g:gitgutter_highlight_lines = 1
    nnoremap <leader>gs :GitGutterToggle<CR>
" }}}

" gundo {{{
    noremap <leader>h :GundoToggle<CR>
" }}}

" ################### 显示增强 ###################

" airline {{{
if g:isWIN =~ 0
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif
    let g:airline_left_sep = '▶'
    let g:airline_left_alt_sep = '❯'
    let g:airline_right_sep = '◀'
    let g:airline_right_alt_sep = '❮'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
endif
    " 是否打开tabline
    " let g:airline#extensions#tabline#enabled = 1
" }}}



" rainbow_parentheses {{{
    " 不加入这行, 防止黑色括号出现, 很难识别
    " \ ['black',       'SeaGreen3'],
    let g:rbpt_colorpairs = [
        \ ['brown',       'RoyalBlue3'],
        \ ['Darkblue',    'SeaGreen3'],
        \ ['darkgray',    'DarkOrchid3'],
        \ ['darkgreen',   'firebrick3'],
        \ ['darkcyan',    'RoyalBlue3'],
        \ ['darkred',     'SeaGreen3'],
        \ ['darkmagenta', 'DarkOrchid3'],
        \ ['brown',       'firebrick3'],
        \ ['gray',        'RoyalBlue3'],
        \ ['darkmagenta', 'DarkOrchid3'],
        \ ['Darkblue',    'firebrick3'],
        \ ['darkgreen',   'RoyalBlue3'],
        \ ['darkcyan',    'SeaGreen3'],
        \ ['darkred',     'DarkOrchid3'],
        \ ['red',         'firebrick3'],
        \ ]

    let g:rbpt_max = 16
    let g:rbpt_loadcmd_toggle = 0
    au VimEnter * RainbowParenthesesToggle
    au Syntax * RainbowParenthesesLoadRound
    au Syntax * RainbowParenthesesLoadSquare
    au Syntax * RainbowParenthesesLoadBraces
" }}}


" ################### 显示增强-主题 ###################"

" solarized {{{
    let g:solarized_termtrans=1
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    " let g:solarized_termcolors=256
" }}}

" molokai {{{
    " monokai原始背景色
    let g:molokai_original = 1
    let g:rehash256 = 1
" }}}

" ################### 快速导航 ###################
" deoplete
let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1
let g:deoplete#sources = { '_': ['buffer', 'file'] }

let g:ackprg = 'ag --vimgrep'
nnoremap <silent> <C-p> :FZF<CR>
nnoremap <silent> <C-u> :FZFMru<CR>

" bison {{{
function! GoToYaccRule()
	let name = expand('<cword>')
	let pattern = "^".name.":"
	call search(pattern, "swp")
endfunction
autocmd FileType yacc nnoremap <C-]> :call GoToYaccRule()<CR>
" }}}

let g:fzf_mru_file_list_size = 100

let g:airline_powerline_fonts = 1
let g:airline_theme = 'tender'

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" nerdtree nerdtreetabs {{{
    map <leader>l :NERDTreeToggle<CR>
    let NERDTreeHighlightCursorline=1
    let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
    "close vim if the only window left open is a NERDTree
    " s/v 分屏打开文件
    let g:NERDTreeMapOpenSplit = 's'
    let g:NERDTreeMapOpenVSplit = 'v'


    " nerdtreetabs
    " NERD Tree
    nnoremap <silent> <leader>e :NERDTreeToggle<CR>
    nnoremap <silent> <leader>f :NERDTreeFind<CR>
    let NERDTreeMinimalUI = 1
    " 关闭同步
    let g:nerdtree_tabs_synchronize_view=0
    let g:nerdtree_tabs_synchronize_focus=0
    " 是否自动开启nerdtree
    " thank to @ListenerRi, see https://github.com/wklken/k-vim/issues/165
    let g:nerdtree_tabs_open_on_console_startup=0
    let g:nerdtree_tabs_open_on_gui_startup=0
" }}}


" Vim Workspace Controller
" ctrlspace {{{
    let g:airline_exclude_preview = 1
    hi CtrlSpaceSelected guifg=#586e75 guibg=#eee8d5 guisp=#839496 gui=reverse,bold ctermfg=10 ctermbg=7 cterm=reverse,bold
    hi CtrlSpaceNormal   guifg=#839496 guibg=#021B25 guisp=#839496 gui=NONE ctermfg=12 ctermbg=0 cterm=NONE
    hi CtrlSpaceSearch   guifg=#cb4b16 guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold
    hi CtrlSpaceStatus   guifg=#839496 guibg=#002b36 gui=reverse term=reverse cterm=reverse ctermfg=12 ctermbg=8
" }}}


" 标签导航
" tagbar {{{
    nmap <F9> :TagbarToggle<CR>
    let g:tagbar_autofocus = 1
    " let g:tagbar_autoshowtag = 1
    " let g:tagbar_show_visibility = 1
    " for ruby
    let g:tagbar_type_ruby = {
        \ 'kinds' : [
            \ 'm:modules',
            \ 'c:classes',
            \ 'd:describes',
            \ 'C:contexts',
            \ 'f:methods',
            \ 'F:singleton methods'
        \ ]
    \ }

    " go语言的tagbar配置
    " 1. install gotags 'go get -u github.com/jstemmer/gotags'
    " 2. make sure `gotags` in you shell PATH, you can call check it with `which gotags`
    " for gotags. work with tagbar
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
" }}}


" ################### 语言相关 ###################

" quickrun {{{
    let g:quickrun_config = {
    \   "_" : {
    \       "outputter" : "message",
    \   },
    \}

    let g:quickrun_no_default_key_mappings = 1
    nmap <Leader>r <Plug>(quickrun)
    map <F10> :QuickRun<CR>
" }}}


" pythonsyntax {{{
    let python_highlight_all = 1
" }}}


" vimgo {{{
    let g:go_highlight_functions = 1
    let g:go_highlight_methods = 1
    let g:go_highlight_structs = 1
    let g:go_highlight_operators = 1
    let g:go_highlight_build_constraints = 1

    let g:go_fmt_fail_silently = 1
    " let g:go_fmt_command = "goimports"
    " let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
" }}}

" markdown {{{
    let g:vim_markdown_folding_disabled=1
" }}}


" javascript {{{
    " pangloss/vim-javascript
    let g:html_indent_inctags = "html,body,head,tbody"
    let g:html_indent_script1 = "inc"
    let g:html_indent_style1 = "inc"
" }}}

" json {{{
    let g:vim_json_syntax_conceal = 0
" }}}

" css {{{
" }}}

" nginx {{{
" }}}


" ####### temp #######

" beta {{{
    " python code format
    " format all file
    autocmd FileType python nnoremap <leader>y :0,$!yapf<Cr>
    " format select block
    " autocmd FileType python vnoremap <leader>y :!yapf<Cr>

    " Plug 'mindriot101/vim-yapf'
    " scriptencoding utf-8
    " let g:yapf_style = "google"
    " let g:yapf_style = "pep8"
    " setenv PYTHONIOENCODING UTF-8
    " nnoremap <leader>y :call Yapf()<cr>
" }}}

"------------------------------------------- end of configs --------------------------------------------
