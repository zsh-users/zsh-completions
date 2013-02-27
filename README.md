zsh-completions
===============

**Additional completion definitions for [Zsh](http://www.zsh.org).**

*This projects aims at gathering/developing new completion scripts that are not available in Zsh yet. The scripts are meant to be contributed to the Zsh project when stable enough.*


Status
------
See [issues](https://github.com/zsh-users/zsh-completions/issues) for details on each completion definition.


Usage
-----

#### Using packages

* Arch Linux: [AUR/zsh-completions](https://aur.archlinux.org/packages.php?ID=54111) / [AUR/zsh-completions-git](https://aur.archlinux.org/packages.php?ID=51001)
* Gentoo: [scrill overlay](http://gpo.zugaina.org/app-shells/zsh-completions)
* Mac OS: [Homebrew](https://github.com/mxcl/homebrew/blob/master/Library/Formula/zsh-completions.rb)
* Debian based distributions (Debian/Ubuntu/Linux Mint...): Packager needed, please get in touch !
* RPM based distributions (Fedora/RHEL/CentOS...): Packager needed, please get in touch !


#### Manual installation

* Clone the repository:

        git clone git://github.com/zsh-users/zsh-completions.git

* Include the directory in your `$fpath`, for example by adding in `~/.zshrc`:

        fpath=(path/to/zsh-completions/src $fpath)

* You may have to force rebuild `zcompdump`:

        rm -f ~/.zcompdump; compinit

Contributing
------------

Contributions are welcome, just make sure you follow the guidelines:

 * Please add a header containing authors, license info, status and origin of the script (example [here](src/_ack)).
 * Please try to follow [Zsh completion style guide](https://github.com/zsh-users/zsh/blob/master/Etc/completion-style-guide).
 * Send a pull request or ask for committer access.


License
-------
See each file for license details.

