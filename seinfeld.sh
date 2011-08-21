#!/bin/bash

curl -s 'http://calendaraboutnothing.com/~bryckbost.json' | awk -v k="text" '{n=split($0,a,","); for (i=1; i<=n; i++) print a[i]}' | sed '/[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}"]/!d' | sed -e 's/["]]*/''/g'