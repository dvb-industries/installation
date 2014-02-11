Installation
============

Ideas how to setup a work laptop.

Hardware
--------

I have bought a [Dell Inspiron 17R][laptop].

The laptop sports an Qualcomm Atheros Wireless Network adaptor as seen
by the output of the following command.

```
lspci -nnk | grep -iA2 net
```

=output

```
02:00.0 Network controller [0280]: Qualcomm Atheros QCA9565 / AR9565 Wireless Network Adapter [168c:0036] (rev 01)
	Subsystem: Dell Device [1028:020c]
```

In order to retrieve correct drivers follow the instructions on [this
blog post][atheros-driver].

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

### Register ssh key

[GitHub][] hosts the repository that is used. In order to have write
access to the cookbooks repositories it is necessary to register an
ssh key.

You can find details in the [documentation][ssh-documentation].

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

### Chef Solo

We will rely on Chef to provision the laptop. Because we do not
want to depend on Chef Server we will use [chef-solo][].

Below is commands will add install chef on the laptop.

The installation procedure depends on curl so we need to install that.

```shell
sudo apt-get install curl
```
```shell
curl -L https://www.opscode.com/chef/install.sh | sudo bash
```

### Run Chef Solo

To let chef provision execute the following command

```shell
sudo chef-solo -c provision.rb -j provision.json
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
[GitHub]: https://github.com/
[ssh-documentation]: https://help.github.com/articles/generating-ssh-keys
[chef-solo]: http://wiki.opscode.com/display/chef/Chef+Solo
[atheros-driver]: http://www.childsplay.mobi/blog/?p=194