Prezto — Instantly Awesome Zsh
==============================

Prezto is the configuration framework for [Zsh][1]; it enriches the command line
interface environment with sane defaults, aliases, functions, auto completion,
and prompt themes.

Installation
------------

Most of the information below is for archival purposes only. This repo is now included inside of my shell setup repo located here:
https://github.com/monteros/Settinguptheshell

Cloning that repo and following the install instructions there should provide a fully functioning zprezto (along with everything else I have setup). If you only want zprezto just follow the instructions below. I've made some changes to address cryptic issues from the original author.



Prezto will work with any recent release of Zsh, but the minimum required
version is 4.3.17.

  1. Launch Zsh:

        zsh

  2. Clone the repository:

        git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

  3. Create a new Zsh configuration by copying the Zsh configuration files
     provided. To avoid errors, start zsh in your terminal.:

        setopt EXTENDED_GLOB
        for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
          ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
        done

  4. Set Zsh as your default shell:

        chsh -s /bin/zsh

  5. Open a new Zsh terminal window or tab.

### Troubleshooting

The below statement was provided by the original author. It is both cryptic and basically wrong depending upon the interpretation of the below statement which you may happen to be experiencing. I've left it to document how horrible it is to provide non-help.

> If you are not able to find certain commands after switching to *Prezto*,
> modify the `PATH` variable in *~/.zprofile* then open a new Zsh terminal
> window or tab.

I've fixed the installation instructions above to cover the common issues with installation. If you are having an issue with installing and you get an error similar to that quoted below please review the edited instructions above.
> $ setopt EXTENDED_GLOB
> bash: setopt: command not found

Basically, enter a zsh shell before executed the setopt command. The original instructions say to do this but it can be missed. I missed it. Just be sure you're in zsh.

I know it's a silly mistake but the original author / current maintainer seemed to go out of his way to prevent any good discussion on this or related issues by directing users from one git comment to the next saying that the issue was covered in issue #365 in a comment in issue #231 (https://github.com/sorin-ionescu/prezto/issues/231) but in issue #365 (https://github.com/sorin-ionescu/prezto/issues/365) he states that issue #365 is a duplicate of issue #231... I don't know how that's helpful. 

Making someone waste their time debugging something is not useful. It is rather ironic that people install zsh and zprezto are probably looking to make their working environment more efficient and when they get to zprezto they find an arbitrary test of suitability that totally wastes their time.


Updating
--------

Make sure you are in the .zprezto directory and pull the latest changes and update submodules.

    git pull && git submodule update --init --recursive

Usage
-----

Prezto has many features disabled by default. Read the source code and
accompanying README files to learn of what is available.

### Modules

  1. Browse */modules* to see what is available.
  2. Load the modules you need in *~/.zpreztorc* then open a new Zsh terminal
     window or tab.

### Themes

  1. For a list of themes, type `prompt -l`.
  2. To preview a theme, type `prompt -p name`.
  3. Load the theme you like in *~/.zpreztorc* then open a new Zsh terminal
     window or tab.

     ![sorin theme][2]

Customization
-------------

The project is managed via [Git][3]. It is highly recommended that you fork this
project; so, that you can commit your changes and push them to [GitHub][4] to
not lose them. If you do not know how to use Git, follow this [tutorial][5] and
bookmark this [reference][6].

Resources
---------

The [Zsh Reference Card][7] and the [zsh-lovers][8] man page are indispensable.

License
-------

(The MIT License)

Copyright (c) 2009-2011 Robby Russell and contributors.

Copyright (c) 2011-2015 Sorin Ionescu and contributors.

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[1]: http://www.zsh.org
[2]: http://i.imgur.com/nrGV6pg.png "sorin theme"
[3]: http://git-scm.com
[4]: https://github.com
[5]: http://gitimmersion.com
[6]: http://gitref.org
[7]: http://www.bash2zsh.com/zsh_refcard/refcard.pdf
[8]: http://grml.org/zsh/zsh-lovers.html
