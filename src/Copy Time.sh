#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Copy time
# @raycast.mode silent
# @raycast.packageName 拷贝时间到剪切板

# Optional parameters:
# @raycast.icon 🕰

# echo $(date "+%Y-%m-%d %H:%M:%S") | pbcopy
echo $(date "+%H:%M")| pbcopy
echo "拷贝成功啦！"

