#!/usr/bin/env zsh

echo $PWD
#rcfiles=(zlogin  zlogout  zpreztorc  zprofile  zshenv  zshrc)
rcfiles=(zpreztorc  zprofile  zshenv  zshrc)
vfile=(vim vimrc)
for fd in $rcfiles; do
  if [[ -e ${ZDOTDIR:-$HOME}/.$fd ]]
  then
    ls -l ${ZDOTDIR:-$HOME}/.$fd
  fi
done

