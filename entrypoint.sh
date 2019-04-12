#!/usr/bin/env sh

set -e

# start our virtual framebuffer
Xvfb :99 -ac &

export CHROME_BIN=/usr/bin/chromium-browser
export CHROME_PATH=/usr/lib/chromium/

# run chrome in headless mode
chromium-browser --headless --disable-gpu --no-sandbox --remote-debugging-port=9222 http://localhost &

# execute arguments
sh -c "npm $*"
