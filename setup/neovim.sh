#!/bin/bash

pyenv install 2.7.11
pyenv install 3.4.4

pyenv virtualenv 2.7.11 neovim2
pyenv virtualenv 3.4.4 neovim3

sudo add-apt-repository ppa:neovim-ppa/stable

pyenv activate neovim2
pip install neovim
# pyenv which python  # Note the path

pyenv activate neovim3
pip install neovim
# pyenv which python  # Note the path

sudo apt-get install neovim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
sudo update-alternatives --config editor

mkdir ~/.config/nvim
ln -s ~/Dropbox/DotFiles/init.vim ~/.config/nvim/
ln -s ~/Dropbox/DotFiles/vim/after ~/.config/nvim/
ln -s ~/Dropbox/DotFiles/vim/colors ~/.config/nvim/
ln -s ~/Dropbox/DotFiles/vim/syntax ~/.config/nvim/

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd ~/.config/nvim
git clone https://github.com/Shougo/deoplete.nvim.git