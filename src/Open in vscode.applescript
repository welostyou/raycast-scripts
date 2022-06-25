#!/usr/bin/osascript

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open in vscode
# @raycast.mode silent
# @raycast.packageName 在vscode中打开当前访达窗口所在目录.

# Optional parameters: 
# @raycast.icon ./vscode-icon.png

# Documentation:
# @raycast.description Open in vscode.

tell application "Finder"
	if application "Finder" is not running then
		return "未打开任何访达窗口!"
	end if
	set folderPath to (POSIX path of (folder of the front window as alias))
	set cmd to "code \"" & (text 1 thru -2 of folderPath) & "\""
	do shell script cmd
	return "成功打开!"
end tell