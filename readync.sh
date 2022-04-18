#!/bin/sh
gnome-terminal  --tab --title="http8081" --command="bash -c 'cd /home/e/httpserver; ./starthttp.sh; $SHELL'"
gnome-terminal  --tab --title="nc4444" --command="bash -c 'cd /home/e/httpserver; nc -lvnp 4444; $SHELL'"
gnome-terminal  --tab --title="nc5555" --command="bash -c 'cd /home/e/httpserver; nc -lvnp 5555; $SHELL'"
