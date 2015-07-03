#!/bin/bash
cd $HOME/.vim/bundle/
for name in $(ls)
do
  echo $name
  cd $name
  git pull
  cd ..
done

