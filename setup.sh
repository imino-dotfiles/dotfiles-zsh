#! /bin/zsh

function yayinstall() {
    cd $HOME
    git clone https://aur.archlinux.org/yay
    makepkg -sri
    cd ..
    rm -rf yay
}

which yay > /dev/null 2&>1 | yayinstall

yay -S zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"
