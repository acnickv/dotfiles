# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

#parse_git_branch() {
#    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
#}

EDITOR=vim
VISUAL=vim
PATH=$PATH:$HOME/.local/bin:$HOME/bin

#export PS1="\e[90m[\u@\h \W] \D{%F %T}\n\e[92m`parse_git_branch`\e[0m\$ "

export PATH EDITOR VISUAL

systemctl --user import-environment PATH
systemctl --user import-environment DISPLAY

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
