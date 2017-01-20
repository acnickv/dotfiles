# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

EDITOR=vim
VISUAL=vim
PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH EDITOR VISUAL

systemctl --user import-environment PATH
systemctl --user import-environment DISPLAY

ssh-reagent
#echo 'Loading .bash_profile'
