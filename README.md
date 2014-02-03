Installation
============

Ideas how to setup a work laptop.

Hardware
--------

I have bought a [Dell Inspiron 17R][laptop].

Software
--------

### Operating System

The operating system will be base upon [Ubuntu][ubuntu] because

1. provisioning of Linux machines is superior.
2. I am familiar with [Ubuntu][ubuntu].

I will opt for a [Long Term Support][LTS], which means I will be
settling for [12.04][].

### git

We will be using the [git][] version control system to retrieve
configurations.

### Shell

I grew fond of the [fish shell][]. It can be installed from their
[PPA][fish-PPA]. To set it as the default shell use [chsh][].

### Editor

Without going into a religous war my editor of choice is
[Emacs][]. The latest version is 24. It can be installed from an
[PPA][emacs-PPA] provided by Damien Cassou.

Emacs should be configured by cloning [.emacs.d][].

### Window Manager

[i3][] is the window manager I will be using. It can be configured by
cloning [.i3][]

Provisioning
------------

The minimal setup to provision a laptop is described below.

### Install git

[git] is used to retrieve the repository that contains cookbooks that
will be used to provision the laptop. You can get it from the package
manager with the following command

```shell
sudo apt-get install git.
```

### Clone Repository

This repository needs to be cloned in order to correctly acquire the
cookbooks. The following sequence of commands will create a scratch
directory, clone the repository and retrieve all [submodules][].

```shell
mkdir ~/scratch
cd ~/scratch
git clone git@github.com:dvb-industries/installation.git
cd installation
git submodule update --init --recursive
```

[laptop]: http://www.dell.com/us/p/inspiron-17r-5721/pd
[ubuntu]: http://www.ubuntu.com/
[LTS]: https://wiki.ubuntu.com/LTS
[12.04]: http://www.ubuntu.com/download/desktop
[fish shell]: http://fishshell.com/
[fish-PPA]: http://fishshell.com/files/2.1.0/linux/index.html#dl-ubuntu12.04
[chsh]: http://en.wikipedia.org/wiki/Chsh
[Emacs]: http://www.gnu.org/software/emacs/
[emacs-PPA]: https://launchpad.net/~cassou/+archive/emacs
[.emacs.d]: https://github.com/dvb-industries/.emacs.d
[git]: http://git-scm.com/
[i3]: http://i3wm.org/
[.i3]: https://github.com/dvb-industries/.i3
[submodules]: http://git-scm.com/docs/git-submodule