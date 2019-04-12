#!/usr/bin/env sh

set -e

# start our virtual framebuffer
Xvfb :99 -ac &

# run chrome in headless mode
chromium-browser --headless --disable-gpu --remote-debugging-port=9222 http://localhost &

# execute arguments
sh -c "npm $*"
