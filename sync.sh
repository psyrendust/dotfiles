#!/bin/bash
# get user name
me="/Users";
if [ "$USER" != "root" ]; then
	me="$me/$USER";
else
	me="$me/$SUDO_USER";
fi
cd "$(dirname "$0")"
git pull
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "*.sh" --exclude "*.md" --exclude "nosync/" -av . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
# copy my tmTheme to TextMate and Sublime Edit 2
SUBLIME="$me/Library/Application Support/Sublime Text 2/Packages/User";
rsync "nosync/Sunburst-psyrendust.tmTheme" "$me/Library/Application Support/TextMate/Themes/Sunburst-psyrendust.tmTheme";
rsync "nosync/Sunburst-psyrendust.tmTheme" "$SUBLIME/Sunburst-psyrendust.tmTheme";
rsync "nosync/BracketHighlighter.sublime-settings" "$SUBLIME/BracketHighlighter.sublime-settings";
rsync "nosync/Preferences.sublime-settings" "$SUBLIME/Preferences.sublime-settings";
rsync "nosync/Default (Linux).sublime-keymap" "$SUBLIME/Default (Linux).sublime-keymap";
rsync "nosync/Default (OSX).sublime-keymap" "$SUBLIME/Default (OSX).sublime-keymap";
rsync "nosync/Default (Windows).sublime-keymap" "$SUBLIME/Default (Windows).sublime-keymap";

source ~/.bash_profile