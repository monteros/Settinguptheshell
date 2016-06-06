# Settinguptheshell

This repo is both a location for notes on my shell setup and also a repo to hold the pertinent files. When installing, symlink the repo files to their pertinent locations.

> ln -s <repo clone dir>/.vim ~/.vim

> ln -s <repo clone dir>/.vimrc ~/vimrc

I've setup Vundle and use it to corral the other additions.
Check out the vimrc and browse the bundle directory to see what's installed.
I've included the following color schemes:
peaksea
twilight
candy
solarized

Also have vim-airline installed.

I've decided to put zprezto inside of here as well. I'll write a short script to make all of the appropriate symlinks, including those above.
The following symlinks should be made:
lrwxrwxrwx  1 user user    42 Jun  5 18:04 .vim -> /home/user/Notes/Setting_up_the_shell/.vim
lrwxrwxrwx  1 user user    44 Jun  5 18:04 .vimrc -> /home/user/Notes/Setting_up_the_shell/.vimrc
lrwxrwxrwx  1 user user    34 Jun  4 23:47 .zlogin -> /home/user/.zprezto/runcoms/zlogin
lrwxrwxrwx  1 user user    35 Jun  4 23:47 .zlogout -> /home/user/.zprezto/runcoms/zlogout
lrwxrwxrwx  1 user user    46 Jun  5 19:40 .zprezto -> /home/user/Notes/Setting_up_the_shell/.zprezto
lrwxrwxrwx  1 user user    37 Jun  4 23:47 .zpreztorc -> /home/user/.zprezto/runcoms/zpreztorc
lrwxrwxrwx  1 user user    36 Jun  4 23:47 .zprofile -> /home/user/.zprezto/runcoms/zprofile
lrwxrwxrwx  1 user user    34 Jun  4 23:47 .zshenv -> /home/user/.zprezto/runcoms/zshenv
lrwxrwxrwx  1 user user    33 Jun  4 23:47 .zshrc -> /home/user/.zprezto/runcoms/zshrc



