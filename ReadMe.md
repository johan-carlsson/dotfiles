##Install vim 
Delete or move old .vim and .vimrc first

```
ln -s ~/Dropbox/dotfiles/vim/ ~/.vim
ln -s ~/Dropbox/dotfiles/vim/vimrc ~/.vimrc
ln -s ~/Dropbox/dotfiles/vim/gvimrc ~/.gvimrc
```

##Install zsh
Delete or move old .oh-my-zsh and .zshrc first

```
ln -s ~/Dropbox/dotfiles/zsh/oh-my-zsh/ ~/.oh-my-zsh
ln -s ~/Dropbox/dotfiles/zsh/zshrc ~/.zshrc
```
Add your custom local paths to ~/.paths 


###Set zsh as your default shell:
```
chsh -s /bin/zsh
```

###Install tmux.conf
```
ln -s ~/Dropbox/dotfiles/tmux.conf ~/.tmux.conf
```
###Install Svengelska keyboard layout
###Note ln does not work use cp
```
cp -r ~/Dropbox/dotfiles/osx/Svengelska.bundle ~/Library/Keyboard\ Layouts/Svengelska.bundle
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
