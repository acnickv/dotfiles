# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
# echo 'Loaded .bashrc'

# User specific aliases and functions
function load-sshkeys() {
    for i in `ls -1 ~/.ssh/*pub`; 
    do 
        ssh-add ${i%%\.pub}; 
    done
}

parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

export PS1="\[\e[90m\][\u@\h \W] \D{%F %T}\n\[\e[92m\]\$(parse_git_branch)\[\e[0m\]\$ "

# Adjust the definitions of color for directories and symbolic links:
#  - directories will now be a bold purple / magenta
#  - symlinks will now be a bold, underlined purple / magenta
export LS_COLORS=$LS_COLORS:'di=1;35:ln=1;4;35'

alias cfg='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias xup='xrdb ~/.Xresources'

