VIMUXZ
======
##### VUMUXZ is Vim + TMUX + zsh environment configuration

##### Installing
```
sudo apt-get install curl git git-flow tmux vim zsh
cd ~
git clone https://github.com/yothinix/vimuxz.git ~/.vim
ln -s ~/.vim/gitconfig ~/.gitconfig
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/tmux.conf ~/.tmux.conf
ln -s ~/.vim/fonts ~/.fonts
cd ~/.vim
git submodule update --init --recursive
fc-cache ~/.fonts
```
after this you need to change font configuration in terminal to use **Ubuntu Mono derivative Powerline.ttf**

##### Setting up OH-MY-ZSH
```
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
rm ~/.zshrc
ln -s ~/.vim/zshrc ~/.zshrc
chsh -s /bin/zsh
```
then you need to logout and login again to effect the change in user shell

##### Installing oh-my-zsh additional plugin
```
cd ~/.oh-my-zsh/custom/plugins
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git
```

then you need to reload the zsh configuration by
```
source ~/.zshrc
```


##### Installing plugin as a git submodule
```
cd ~/.vim/
git submodule add http://github.com/user/someplugin.git bundle/someplugin
git add .
git commit -m "Install plugin as a submodule."
```
