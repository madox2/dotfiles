#!/bin/bash

file=`mktemp`.sh
tmux capture-pane -pS -100000 > $file
tmux new-window -n:mywindow "vim '+$' $file"
