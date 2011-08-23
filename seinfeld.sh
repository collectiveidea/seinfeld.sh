#!/bin/sh

echo "Last OSS Commit: $(curl -s "http://calendaraboutnothing.com/~$(git config --get github.user).json" | sed -E 's/.*"(.*)"].*/\1/')"
