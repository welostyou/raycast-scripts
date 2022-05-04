#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Copy date
# @raycast.mode silent
# @raycast.packageName 拷贝日期到剪切板

# Optional parameters:
# @raycast.icon 📅

# echo $(date "+%Y-%m-%d %H:%M:%S") | pbcopy
echo $(date "+%Y-%m-%d")| pbcopy
echo "拷贝成功啦！"

