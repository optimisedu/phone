###################################TERMUX ALIASES###############################
#                                 Updated 04.10.2023
#################################################################################
#TODO:
#1.: TERMUX IS A PHONE EMULATOR, AS A RESULT TYPOS AND IDIOCIES SHOULD BE EXTENDED
#2.: ALIASES ARE LARGELY PERSONAL SO ALWAYS A WIP, IT IS STRONGLY RECOMENDED FOR YOU TO FIND YOUR OPTIMAL CONFIG
#3.: THIS IS THE BASE FOR SETTING UP YOUR OWN CONFIG SO IT IS RECOMENDED TO FORK THIS REPO AND GIVE ME A STAR BECAUSE YOU LIKE THE STYLISH USE OF CAPITOLS, ADDITIONALLY THESE ARE THINGS I HAVE FOUND PERSONALLY USEFUL, IT IS LIKELY THAT YOU WILL FIND THAT YOU USE DIFFERENT SHORTHANDS
#4.: ALMOST COMMITTED WITH SINGLE LETTER ALIASES, ALWAYS TEST. ADDITIONALLY FUNCTIONS ARE KEPT IN A SEPERATE FILE
#5.: EXTEND GIT ALIASES (ALL ALIASES GIT IS JUST CURRENTLY LACKING)
#6.: REPLACE EXA WITH LSD (PERSONAL PREFERECE)

#APT+PKG
alias pa="pkg"
alias ap="apt"
alias ud="pkg update"
alias ug="pkg upgrade"
alias ase='apt search'
alias pse='pkg search'
alias bse='brew search'
alias apti='apt install'
alias pki='pkg install'
alias bsi='brew install'

#FILE MANAGEMENT:
alias ls='exa -a --color=always --group-directories-first' # my preferred listing
alias la='exa -at --color=always --group-directories-first'  # all files and dirs including treelisting
alias ll='exa -l --color=always --group-directories-first'  # long format

#PYTHON:
alias pypy='pypy3'
alias pip3='pip'
#if you have used my install script pton is globally aliased to python3:

#RCs
alias nrc='nano ~/.nanorc'
alias brc='nano ~/.basrc'
alias zrc='nano ~/.zshrc'
alias short='nano ~/.bash_aliases'

#GIT
alias gtc='git clone'
alias gta='git add'
alias gtaa='git add -a' #git add all
alias gi="git init -i"

#DISK MANAGEMENT
alias df="df -Tha --total"
alias du="du -ach | sort -h | lolcat"
alias ps="ps auxf" #lightweight htop
alias check='free -m -l -t'

# vim and emacs - added for completion but a lot of work required to have emacs working on a phone. VI is usable.
alias vim="nvim"
alias em="/usr/bin/emacs -nw"
alias emacs="emacsclient -c -a 'emacs'"

#FZF + BAT
#fzf + bat + pistol
alias bfzf="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
alias mfzf="fzf --multi"
alias efzf='fzf --exact'
alias pfzf="fzf --preview 'pistol{}'"

#PACKAGE SPECIFIC
alias tool='Tool-X'

#PERMISSIONS
alias 644='sudo chmod 644'
alias 755='sudo chmod 755'
alias 777='sudo chmod 777'

#MISC
alias read="nano README"
alias whereami='pwd'
alias dc='cd'
alias fhere="find . -name "
