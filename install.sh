#!/usr/bin/env bash

set -e

PWD=$(pwd)

ARCH_PACKAGES="git openssh alacritty \
starship ranger bat exa ripgrep fd fzf zoxide zellij grex tokei \
neovim emacs \
noto-fonts-cjk noto-fonts-emoji ttf-hack\
mpv zathura zathura-pdf-poppler \
python-pip gcc clang cargo base-devel \
clash \
librime fcitx5 fcitx5-chinese-addons fcitx5-qt fcitx5-gtk fcitx5-configtool fcitx5-material-color"

ARCHLINUXCN_PACKAGES="netease-cloud-music qq-music-bin yay"
AUR_PACKAGES="microsoft-edge-stable-bin"

if [ "$(command -v pacman)" ]; then
    echo -e '\n[archlinuxcn]\nServer = https://mirrors.ustc.edu.cn/archlinuxcn/$arch' | sudo tee -a /etc/pacman.conf
    sudo pacman -Sy --needed --noconfirm archlinuxcn-keyring
    sudo pacman -Sy --needed --noconfirm $ARCH_PACKAGES
    sudo pacman -Sy --noconfirm --needed $ARCHLINUXCN_PACKAGES
fi

#bash
ln -sfv $PWD/bash $HOME/.config/
echo -e '\n. $HOME/.config/bash/config.sh' >> $HOME/.bashrc
source ~/.config/bash/config.sh

# nodejs
nvm install --lts
npm config set registry https://mirrors.huaweicloud.com/repository/npm/
npm config set sass_binary_site https://repo.huaweicloud.com/node-sass
npm config set electron_mirror https://repo.huaweicloud.com/electron/
npm config set python_mirror https://repo.huaweicloud.com/python

# alacritty
ln -sfv $PWD/alacritty $HOME/.config/

# zathura
ln -sfv $PWD/zathura $HOME/.config/

# fcitx
ln -sfv $PWD/pam_environment $HOME/.pam_environment

# git
git config --global url."https://hub.fastgit.org/".insteadOf "https://github.com/"
git config --global user.name "yangpanda"
git config --global user.email "gnaymuyi@163.com"

# rust
mkdir $HOME/.cargo
ln -sfv $PWD/rust/config $HOME/.cargo/

#emacs
ln -sfv $PWD/emacs $HOME/.config/

# clash
mkdir $HOME/.config/clash
ln -sfv $PWD/clash ~/.config/

## yay
if [ "$(command -v yay)" ]; then
    yay -Sy --needed --noconfirm $AUR_PACKAGES
fi
