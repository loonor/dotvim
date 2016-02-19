#!/usr/bin/env bash
export VIM_REPO="https://github.com/loonor/dotvim.git"
export VIM_DIR="${HOME}/.vim"
export NEOBUNDLE_DIR="${VIM_DIR}/bundle/neobundle.vim"
export NEOBUNDLE_REPO="https://github.com/Shougo/neobundle.vim"

if [-d $VIM_DIR]; then
  mv -f "$HOME/.vim_bak"
fi 

git clone $VIM_REPO $VIM_DIR
git clone $NEOBUNDLE_REPO $NEOBUNDLE_DIR

# Install bundle with vundle
vim +NeoBundleInstall +qall
echo "...Done."


