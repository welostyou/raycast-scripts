#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Create new folder
# @raycast.mode silent
# @raycast.packageName 在当前访达窗口创建一个文件夹.

# Optional parameters: 
# @raycast.icon 📁
# @raycast.argument1 { "type": "text", "placeholder": "Name" }

# Documentation:
# @raycast.description Create new folder.

on run argv

	if application "Finder" is not running then
		return "未打开任何访达窗口!"
	end if

	tell application "Finder"
		make new folder at (folder of the front window as alias) with properties {name:argv}
		return "创建成功！"
	end tell

end run