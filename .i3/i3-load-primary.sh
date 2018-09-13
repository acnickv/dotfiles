#!/bin/bash

# kill any windows that might exist within the first workspace.  then load the primary layout
i3-msg 'workspace 1; focus parent; focus parent; focus parent; focus parent; focus parent; focus parent; focus parent; kill'
i3-msg 'workspace 1; append_layout /home/nvalentino/.i3/workspace_primary.json'


# Start programs
if [ ! -x /usr/bin/urxvt ] ; then {
    zenity --info --text 'urxvt client is not installed / available'
} else {
    /usr/bin/urxvt -e /usr/bin/htop &
    /usr/bin/urxvt &
    /usr/bin/urxvt &
}
fi

[ -x /usr/bin/code ] && /usr/bin/code -n ~/work/notes/
