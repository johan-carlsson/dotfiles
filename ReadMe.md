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
```
git submodule add  https://github.com/godlygeek/tabular.git vim/bundle/tabular
```

###Update git submodules
```
git submodule foreach git pull origin master
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
And add this line to .bashrc or .zshrc

```
source ~/dotfiles/tmux/alias
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

##Gnome-terminal
Install solarized colors to gnome-terminal with ~/dotfiles/linux/gnome-terminal/gnome-terminal-colors-solarized/install.sh 
And add this line to .bashrc or .zshrc

```
source ~/dotfiles/linux/gnome-terminal/bashrc
```

##Powerline
Add this to .bashrc
```
source ~/dotfiles/powerline/bashrc
```
Run these commands
```
~/dotfiles/powerline/powerline
python setup.py install
sudo python setup.py install

ln -s ~/dotfiles/powerline/config ~/.config/powerline
cp  ~/dotfiles/powerline/fonts/PowerlineSymbols.otf ~/.fonts/
sudo fc-cache -vf ~/.fonts/
cp  ~/dotfiles/powerline/fonts/10-powerline-symbols.conf ~/.config/fontconfig/conf.d/
#OR (For older versions)
cp  ~/dotfiles/powerline/fonts/10-powerline-symbols.conf ~/.fonts.conf.d/
```
Logout or restart

