##Install 
```
 ln -s ~/Dropbox/dotfiles ~/dotfiles
```

##Install vim 
Delete or move old .vim folder

```
ln -s ~/Dropbox/dotfiles/vim/ ~/.vim
```

Add this line to .vimrc
```
so $HOME/dotfiles/vim/vimrc
```

Add this line to .gvimrc
```
so $HOME/dotfiles/vim/gvimrc
```

##Install zsh
Delete or move old .oh-my-zsh first

```
ln -s ~/dotfiles/zsh/oh-my-zsh/ ~/.oh-my-zsh
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
```

Add this line to .zshrc
```
source ~/dotfiles/zsh/zshrc
```


###Set zsh as your default shell:
```
chsh -s /bin/zsh
```

###Install tmux.conf
```
ln -s ~/Dropbox/dotfiles/tmux.conf ~/.tmux.conf
```

##Install ackrc
```
ln -s ~/dotfiles/ack/ackrc ~/.ackrc
```

###Install Svengelska keyboard layout
###Note ln does not work use cp
```
cp -r ~/Dropbox/dotfiles/osx/Svengelska.bundle ~/Library/Keyboard\ Layouts/Svengelska.bundle
```

###Install osx bash and zsh environments settings
Add this line to .bashrc or .zshrc
```
source ~/dotfiles/osx/environment
```

###Install unix(osx and linux) bash and zsh environments settings
Add this line to .bashrc or .zshrc
```
source ~/dotfiles/unix/environment
```


###Fetch git submodules
```
git submodule init
git submodule update
```
If your behinde a proxy you might have to do:
```
env GIT_SSL_NO_VERIFY=true git submodule update

```
###Add git submodule
Dont forget to use the http:// protocol
```
git submodule add  http://github.com/godlygeek/tabular.git vim/bundle/tabular
```
