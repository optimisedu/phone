#! bin/bash
# basic termux setup
# First get fast repos and upgrade pkgs
# Changelog: 25/06/20203
# --error handling
#
# todo:
# --add arch and ubuntu optional
# --add homebrew
# --add ssh
# --add ssh keygen
# --add ssh-copy-id
# --TESTING - This is a minimal setup script for zsh/omzsh and p10k
# -- GUI AND FLUTTERBOX

set -o errexit

shopt -s globstar >>~/.bashrc

export LD_PRELOAD=${PREFIX}/lib/libtermux-exec.so
termux-setup-storage
RSYNC_PASSWORD=termuxmirror rsync -a --delete rsync@grimler.se::termux termux &&echo mirror synced

if ping -c 1 google.com; then
  echo "It appears you have a working internet connection"
else
    echo "It appears you don't have a working internet connection"
    exit 1
fi


pkg update && pkg upgrade -y
pkg install x11-repo -y
pkg install root-repo -y
pkg install termux-api -y
pkg install termux-tools -y
# check for bash and zsh, if not found, create them
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
    else 
        touch .bashrc && echo bashrc created
fi

# barbones setup
pkg install -y git
pkg install -y zsh
pkg install -y curl libcurl wget
#languages
pkg install -y python python3 ruby nodejs php
python -m ensurepip --upgrade
pkg install -y neofetch
pkg install -y openssh
pkg install -y openssl
pkg install -y openssl-tool
pkg install -y openssl-dev
pkg install -y tigervnc
pkg install -y fluxbox

# infinitely extendable with Tool-X, but hard to use on the phone
pkg install -y Tool-X

#Change shell to zsh
chsh -s zsh
# install p10k manual
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k  # switch gitee for github if for a slight extra security level(chinese mirror)
source '~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
# install zsh-autosuggestions manually (opt out for slow phones)
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh >>~/.zshrc
# install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.zsh/zsh-syntax-highlighting
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh >>~/.zshrc

#aliases
export alias -g tool='Tool-X'
# ensure python is working and then alias
function pton() {
    if [ -f /data/data/com.termux/files/usr/bin/python ]; then
        alias pton='python'
    elif [ -f /data/data/com.termux/files/usr/bin/python2 ]; then
        alias pton='python2'
    elif [ -f /data/data/com.termux/files/usr/bin/python3 ]; then
        alias pton='python3'
    else
        echo "python not found"
    fi
}


echo syntax-highlighting and aliases successful \n
echo run tool to install further tools \n
echo arch and ubuntu config coming. Real OS needed for Homebrew \n
echo tool option 255 is metasploit \n
echo now setup vncserver -localhost \n
echo then run fluxbox \n
echo fluxbox-generate_menu \n
