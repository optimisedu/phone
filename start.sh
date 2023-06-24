#! bin/bash
# basic termux setup
# First get fast repos and upgrade pkgs
RSYNC_PASSWORD=termuxmirror rsync -a --delete rsync@grimler.se::termux termux &&echo mirror synced
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

if [ -f ~/.zshrc ]; then
    . ~/.zshrc
    else 
        touch .zshrc && echo zshrc created
fi

# barbones setup
pkg install -y git
pkg install -y zsh
pkg install -y curl libcurl wget
#languages
pkg install -y python python3 ruby nodejs
pkg install -y neofetch

python -m ensurepip --upgrade
# infinitely extendable with Tool-X, but hard to use on the phone
pkg install -y Tool-X

#Change shell to zsh
chsh -s zsh
# install p10k manual
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k  # switch gitee for github if for a slight extra security level
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
# install zsh-autosuggestions manually (opt out for slow phones)
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# install zsh-syntax-highlighting

#aliases
alias tool='Tool-X'
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
echo run tool to install further tools


