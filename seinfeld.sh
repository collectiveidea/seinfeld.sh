#!/bin/sh

echo "Last OSS Commit: $(curl -s "http://calendaraboutnothing.com/~$github_username.json" | sed -E 's/.*"(.*)"].*/\1/')"