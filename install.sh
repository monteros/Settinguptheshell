#!/usr/bin/env zsh

# This file obviously requires zsh to be installed.
# Author: caoimhinp

setopt EXTENDED_GLOB

# Check for the proper files
echo "Checking for the proper files..."
if [ -e './.zprezto' ]
then
  echo "Found .zprezto."
  echo "Linking files."
  for rcfile in "${ZDOTDIR:-$HOME}"./.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
  done
  if [ -e './.vim' && -e './.vimrc' ]
  then
    echo "Found Vim files."
    echo "Linking."
    ln -s "./.vim" "${ZDOTDIR:-$HOME}/.vim"
    ln -s "./.vimrc" "${ZDOTDIR:-$HOME}/.vimrc"
  else
    echo "Vim files not done. Exiting."
    exit 1
  fi
else
  echo "Run this from the directory where you have cloned the project."
  exit 1
fi
echo "See... I like you. That wasn't so bad, was it?"
