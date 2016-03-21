" Compatible with both terminal dan GUI (neovim-qt)
colorscheme lucius
if has("win32") || has("win64")
    source $VIM/vimfiles/general.vim
    source $VIM/vimfiles/plugins.vim
    source $VIM/vimfiles/functions.vim
    source $VIM/vimfiles/key_mappings.vim
    "Use local vimrc if available {
    if filereadable(expand("$VIM/vimfiles/local.vim"))
        source $VIM/vimfiles/local.vim 
    endif 
"}
else
    source $HOME/.vim/general.vim
    source $HOME/.vim/plugins.vim
    source $HOME/.vim/functions.vim
    source $HOME/.vim/key_mappings.vim
    source $HOME/.vim/config.vim
    "Use local vimrc if available {
    if filereadable(expand("$HOME/.vim/local.vim"))
        source $HOME/.vim/local.vim 
    endif 
"}
endif

