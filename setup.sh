#!/usr/bin/env sh

set -e

# add the community package repo
echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories
# and add the main package repo, but on the edge branch
echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories

apk update

# add a virtual framebuffer
apk add xvfb
# add chrome
apk add chromium
# add firefox (once it's actually ready)
# apk add firefox
