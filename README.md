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
ln -s ~/.vim/fonts ~/.fonts
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



##### Installing plugin as a git submodule
```
cd ~/.vim/
git submodule add http://github.com/user/someplugin.git bundle/someplugin
git add .
git commit -m "Install plugin as a submodule."
```
