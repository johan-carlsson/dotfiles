##Install 
```
 ln -s ~/Dropbox/dotfiles ~/dotfiles
```

###Fetch git submodules
```
git submodule init
git submodule update
```
If your behinde a proxy you might have to use:

```
env GIT_SSL_NO_VERIFY=true git submodule update
```

###Add git submodule
****Don't forget to use the http:// protocoll due to issues with proxys****
 
```
git submodule add  http://github.com/godlygeek/tabular.git vim/bundle/tabular
```

##Vim 
Delete or move old .vim folder

```
ln -s ~/dotfiles/vim/ ~/.vim
```

Add this line to .vimrc

```
so $HOME/dotfiles/vim/vimrc
```

Add this line to .gvimrc

```
so $HOME/dotfiles/vim/gvimrc
```

Create undo,swap and undo dirs 

Mac

```
mkdir -p ~/Library/Vim/{swap,backup,undo}

```

Linux

```
mkdir -p ~/.local/share/vim/{swap,backup,undo}
```


##Zsh
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

##Bash
Add this to .bashrc

```
 source ~/dotfiles/bash/bashrc
```

Add this to .alias

```
 source ~/dotfiles/bash/alias
```

Add this to .profile or .bash_profile
```
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi

source ~/.alias
```

##Git 
Add this to .gitconfig
```
[include]
  path = ~/dotfiles/git/gitconfig
```

##Tmux
```
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
```

##Ack
```
ln -s ~/dotfiles/ack/ackrc ~/.ackrc
```

##Jboss
Export $JBOSS_HOME,$JBOSS_SERVER and $JBOSS_LOG_DIR environment variables

```
source ~/dotfiles/jboss/alias
```

##Svengelska keyboard layout
****Note ln does not work use cp****

```
cp -r ~/Dropbox/dotfiles/osx/Svengelska.bundle ~/Library/Keyboard\ Layouts/Svengelska.bundle
```

##OSX bash and zsh environments settings
Add this line to .bashrc or .zshrc

```
source ~/dotfiles/osx/environment
```

##Unix(osx and linux) bash and zsh environments settings
Add this line to .bashrc or .zshrc

```
source ~/dotfiles/unix/environment
```

