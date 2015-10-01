#!/bin/bash
scrot /tmp/screen_locked.png
mogrify -scale 5% -scale 2000% /tmp/screen_locked.png
i3lock -i /tmp/screen_locked.png
rm /tmp/screen_locked.png
