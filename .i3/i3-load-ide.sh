#!/bin/bash


# FIXME: This does not currently work.
# kill any windows that might exist within the first workspace.  then load the primary layout
i3-msg 'focus parent; focus parent; focus parent; focus parent; focus parent; focus parent; focus parent; kill'
i3-msg 'append_layout /home/nvalentino/.i3/workspace-ide.json'


# Start programs
if [ ! -x /usr/bin/urxvt ] ; then {
    zenity --info --text 'urxvt client is not installed / available'
} else {
    /usr/bin/urxvt --title "urxvt - `pwd`" &
    /usr/bin/urxvt --title "urxvt - `pwd`" &
}
fi

[ -x /usr/bin/atom ] && /usr/bin/atom -n `pwd`
