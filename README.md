# dotfiles
The dotfiles I use for vim and other applications

## What I am using
At the moment, I am testing out 'The ultimate Vim configuration' from https://github.com/amix/vimrc.

Here are some basic commands I use to get it up and running.

### Installing the vimrc
```
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_basic_vimrc.sh
```

### To get the latest version of it
```
cd ~/.vim_runtime
git pull --rebase
python update_plugins.py
```
