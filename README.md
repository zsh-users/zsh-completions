zsh-completions
===============

**Additional completion definitions for [Zsh](http://www.zsh.org).**

*This projects aims at gathering/developing new completion scripts that are not available in Zsh yet. The scripts are meant to be contributed to the Zsh project when stable enough.*


Status
------
See [issues](https://github.com/zsh-users/zsh-completions/issues) for details on each completion definition.

Gentoo's completions have been removed, as they are maintained upstream. See: [Gentoo zsh-completions](https://github.com/gentoo/gentoo-zsh-completions)

Usage
-----

#### Using packages

* Arch Linux: [community/zsh-completions](https://www.archlinux.org/packages/zsh-completions) / [AUR/zsh-completions-git](https://aur.archlinux.org/packages/zsh-completions-git/)
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


#### Using antigen
Add
```bash
antigen bundle zsh-lovers/zsh-completions
```

to your `.zshrc`. This will automatically clone the repository and add zsh-completions/src to your `$fpath`. You may have to rebuild zcompdump as listed above under Manual Installation.


Contributing
------------

Contributions are welcome, just make sure you follow the guidelines:

 * Completions are not accepted when already available in their original project.
 * Please do not just copy/paste someone else completion, ask before.
 * Completions only partially implemented are not accepted.
 * Please add a header containing authors, license info, status and origin of the script (example [here](src/_ack)).
 * Please try to follow [Zsh completion style guide](https://github.com/zsh-users/zsh/blob/master/Etc/completion-style-guide).
 * Send a pull request or ask for committer access.


License
-------
See each file for license details.
