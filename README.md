zsh-completions ![GitHub release](https://img.shields.io/github/release/zsh-users/zsh-completions.svg) ![GitHub contributors](https://img.shields.io/github/contributors/zsh-users/zsh-completions.svg) [![IRC](https://img.shields.io/badge/IRC-%23zsh--completions-yellow.svg)](irc://irc.freenode.net/#zsh-completions) [![Gitter](https://badges.gitter.im/zsh-users/zsh-completions.svg)](https://gitter.im/zsh-users/zsh-completions?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge)
=============

**Additional completion definitions for [Zsh](https://www.zsh.org/).**

*This project aims at gathering/developing new completion scripts that are not available in Zsh yet. The scripts may be contributed to the Zsh project when stable enough.*

---

## Usage

### Using packages

| System  | Package |
| ------------- | ------------- |
| Debian / Ubuntu | [zsh-completions OBS repository](https://software.opensuse.org/download.html?project=shells%3Azsh-users%3Azsh-completions&package=zsh-completions) |
| Fedora / CentOS / RHEL / Scientific Linux | [zsh-completions OBS repository](https://software.opensuse.org/download.html?project=shells%3Azsh-users%3Azsh-completions&package=zsh-completions) |
| OpenSUSE / SLE | [zsh-completions OBS repository](https://software.opensuse.org/download.html?project=shells%3Azsh-users%3Azsh-completions&package=zsh-completions) |
| Arch Linux / Manjaro / Antergos / Hyperbola | [zsh-completions](https://www.archlinux.org/packages/zsh-completions), [zsh-completions-git](https://aur.archlinux.org/packages/zsh-completions-git) |
| Gentoo / Funtoo | [app-shells/zsh-completions](https://packages.gentoo.org/packages/app-shells/zsh-completions)  |
| NixOS | [zsh-completions](https://github.com/NixOS/nixpkgs/blob/master/pkgs/shells/zsh/zsh-completions/default.nix) |
| Void Linux | [zsh-completions](https://github.com/void-linux/void-packages/blob/master/srcpkgs/zsh-completions/template) |
| Slackware | [Slackbuilds](https://slackbuilds.org/repository/14.2/system/zsh-completions/) |
| macOS | [homebrew](https://github.com/Homebrew/homebrew-core/blob/master/Formula/z/zsh-completions.rb), [MacPorts](https://github.com/macports/macports-ports/blob/master/sysutils/zsh-completions/Portfile)  |
| NetBSD | [pkgsrc](https://ftp.netbsd.org/pub/pkgsrc/current/pkgsrc/shells/zsh-completions/README.html)  |
| FreeBSD | [shells/zsh-completions](https://www.freshports.org/shells/zsh-completions)  |

---

### Using zsh frameworks

#### [antigen](https://github.com/zsh-users/antigen)

Add `antigen bundle zsh-users/zsh-completions` to your `~/.zshrc`.

#### [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)

To avoid issues with redundant `.zcompdump` cache generation (see [#603](https://github.com/zsh-users/zsh-completions/issues/603)), do **not** load `zsh-completions` as a standard plugin.  
Instead, follow this optimized approach:

1. Clone the repository into your custom plugins directory:

```bash
git clone https://github.com/zsh-users/zsh-completions.git \
  ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
```

2. Update your `~/.zshrc` configuration **before** sourcing oh-my-zsh:

```bash
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src
autoload -U compinit && compinit
source "$ZSH/oh-my-zsh.sh"
```

This prevents `compinit` from being called twice and significantly improves shell startup time.

#### [zinit](https://github.com/zdharma-continuum/zinit)

Add `zinit light zsh-users/zsh-completions` to your `~/.zshrc`.

---

### Manual installation

* Clone the repository:

```bash
git clone https://github.com/zsh-users/zsh-completions.git
```

* Include the directory in your `$fpath`, for example by adding in `~/.zshrc`:

```bash
fpath=(path/to/zsh-completions/src $fpath)
```

* You may have to force rebuild `zcompdump`:

```bash
rm -f ~/.zcompdump; compinit
```

---

### Contributing

Contributions are welcome, see [CONTRIBUTING](https://github.com/zsh-users/zsh-completions/blob/master/CONTRIBUTING.md).

---

## License

Completions use the Zsh license, unless explicitly mentioned in the file header.  
See [LICENSE](https://github.com/zsh-users/zsh-completions/blob/master/LICENSE) for more information.
