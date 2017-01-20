# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
# echo 'Loaded .bashrc'
alias sshp='ssh -A -i ~/.ssh/id_hp_cfarm -l valentn'
alias sshv='ssh -A -i ~/.ssh/id_ecdsa -l nvalentino'

# User specific aliases and functions
ssh-reagent () {
    for agent in /tmp/ssh-*/agent.*; do
        export SSH_AUTH_SOCK=$agent
        if ssh-add -l 2>&1 > /dev/null; then
            echo Found working SSH Agent:
            ssh-add -l
            return
        fi
    done
    echo Cannot find ssh agent - maybe you should reconnect and forward it?
}

function load-sshkeys() {
    for i in `ls -1 ~/.ssh/*pub`; 
    do 
        ssh-add ${i%%\.pub}; 
    done
}

# Adjust the definitions of color for directories and symbolic links:
#  - directories will now be a bold purple / magenta
#  - symlinks will now be a bold, underlined purple / magenta
export LS_COLORS=$LS_COLORS:'di=1;35:ln=1;4;35'

alias cfg='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias xup='xrdb ~/.Xresources'

