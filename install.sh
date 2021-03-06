#!/usr/bin/env zsh

# This file obviously requires zsh to be installed.
# Author: caoimhinp

zfiles=(zlogin zlogout zpreztorc zprofile zshenv zshrc)
vfiles=(vim vimrc)

setopt EXTENDED_GLOB

echo "Checking for and backing up current config..."
for fd in $zfiles; do
  if [[ -a ${ZDOTDIR:-$HOME}/.$fd ]]
  then
    echo "Backing up ${ZDOTDIR:-$HOME}/.${fd}"
    mv ${ZDOTDIR:-$HOME}/.$fd ${ZDOTDIR:-$HOME}/.$fd"_BAK"
  fi
done

for fd in $vfiles; do
  if [[ -a ${ZDOTDIR:-$HOME}/.$fd ]]
  then
    echo "Backing up ${ZDOTDIR:-$HOME}/.${fd}"
    echo "mv ${ZDOTDIR:-$HOME}/.${fd} ${ZDOTDIR:-$HOME}/.${fd}_BAK"
    mv ${ZDOTDIR:-$HOME}/.$fd ${ZDOTDIR:-$HOME}/.$fd"_BAK"
  fi
done

echo "Checking if you're in the right repo..."
if [[ -e $PWD/.zprezto ]]
then
  echo "Found .zprezto. You're in the right directory."
  echo "Linking files."
  for rcfile in $PWD/.zprezto/runcoms/^README.md(.N); do
    echo "ln -s ${rcfile} ${ZDOTDIR:-$HOME}/.${rcfile:t}"
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done
  if [[ -e $PWD/.vim && -e $PWD/.vimrc ]]
  then
    echo "ln -s ${PWD}/.vim ${ZDOTDIR:-$HOME}/.vim"
    ln -s $PWD/.vim "${ZDOTDIR:-$HOME}/.vim"
    echo "ln -s ${PWD}/.vimrc ${ZDOTDIR:-$HOME}/.vimrc"
    ln -s $PWD/.vimrc "${ZDOTDIR:-$HOME}/.vimrc"
  else
    echo "Vim files not done."
  fi
else
  echo "Run this from the directory where you have cloned the project."
  exit 1
fi
echo "See... I like you. That wasn't so bad, was it?"
