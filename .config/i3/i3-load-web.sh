#!/bin/bash

# kill any windows that might exist within the second workspace.  then load the primary layout
i3-msg 'workspace 2; focus parent; focus parent; focus parent; focus parent; focus parent; focus parent; focus parent; kill'

# Start programs
[ -x /usr/bin/google-chrome ] && exec --no-startup-id i3-msg 'workspace 2; exec /usr/bin/google-chrome &'

