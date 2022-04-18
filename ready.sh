#!/bin/sh
gnome-terminal  --tab --title="http8081" --command="bash -c 'cd /home/e/httpserver; ./starthttp.sh; $SHELL'"
gnome-terminal  --tab --title="pwn4444" --command="bash -c 'cd /home/e/httpserver; pwncat -l -v 4444; $SHELL'"
gnome-terminal  --tab --title="pwn5555" --command="bash -c 'cd /home/e/httpserver; pwncat -l -v 5555; $SHELL'"
