#!/bin/bash

tmux -S /tmp/pair has-session -t workenv

if [[ $? == 1 ]] ; then
    cdgf
    tmux -S /tmp/pair new-session -d -s workenv -n Vim
fi

tmux -S /tmp/pair -2 attach -t workenv
