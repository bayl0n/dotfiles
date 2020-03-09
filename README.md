# dotfiles
The dotfiles I use for vim and other applications

## What I am using
At the moment, I am testing out 'The ultimate Vim configuration' from https://github.com/amix/vimrc.

## Configuring vim to how I like it

So in the case that I want to set up vim in a new linux terminal, whether it be a virtual machine or a web sever, here are the steps to get it up and running.

I usually stick to debian-based distros such as Ubuntu, so I'll be using their package managers.

### Installing git

The first step is to install git so I can access repos for plugins and such.

```
sudo apt-get install git
```

### Installing the vimrc

Here I install 'The ultimate Vim configuration' from https://github.com/amix/vimrc.

```
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh
```

### To get the latest version of it

In order to update the vim config for amix's repo, here are the commands to do it (from his README.md)

```
cd ~/.vim_runtime
git pull --rebase
python update_plugins.py
```
