#!/bin/sh

# Create a tmux session for a rails project

# Get to the directory, open Atom, and show git branches
dir="~/Projects/rails/"$1
tmux -2 new-session -d -s $1 -n 'git' 'cd '"$dir"'; atom .; git branch; bash'

# Tail the dev log in a new window
tmux new-window -n 'devlog' 'tail -f '"$dir"'/log/development.log; read'

# Run the console in a new window
tmux new-window -n 'console' 'cd '"$dir"'; rails c'

# Then select the git window and attach the session
tmux select-window -t $1:1
tmux -2 attach-session -t $1
