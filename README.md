VIMUXZ
======
##### VUMUXZ is Vim + TMUX + zsh environment configuration

##### Installing
```
apt-get install vim tmux zsh
cd ~
git clone https://github.com/yothinix/vimuxz.git ~/.vim
./init-submodule
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/tmux.conf ~/.tmux.conf
```

##### Installing plugin as a git submodule
```
cd ~/.vim/
git submodule add http://github.com/user/someplugin.git bundle/someplugin
git add .
git commit -m "Install plugin as a submodule."
```
