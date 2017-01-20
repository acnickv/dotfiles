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

[ -x /usr/bin/atom ] && /usr/bin/atom -n ~/work/notes/notes.md
#[ -x /usr/bin/atom ] && /usr/bin/atom ~/notes.md ~/snippets.md &
#[ -x /usr/bin/atom ] && /usr/bin/atom ~/Documents/cms_ffm/notes/notes.md ~/Documents/cms_ffm/notes/note    s_devworkstationvm.md ~/Documents/cms_ffm/notes/snippets.md &
# [ -x /usr/bin/pidgin ] && /usr/bin/pidgin &
#[ -x ~/bin/sublime_text ] && ~/bin/sublime_text ~/Documents/cms_ffm/notes/notes.md ~/Documents/cms_ffm/notes/notes_devworkstationvm.md ~/Documents/cms_ffm/notes/snippets.md &

