#!/bin/bash
cd $HOME/.vim/bundle/
for name in $(ls)
do
  cd $name
  git remote -v
  cd ..
done
exit
