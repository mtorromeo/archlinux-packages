#!/bin/bash

case "$1" in
    stop)
        PID="$2"
        tmux send-keys -t tshock-console e x i t ENTER
        while [ -d /proc/$PID ]; do
            sleep 1
        done
        ;;
    *) exec sudo -u tshock tmux attach -t tshock-console
esac
