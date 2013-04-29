#!/bin/bash
# get user name
me="/Users";
if [ "$USER" != "root" ]; then
	me="$me/$USER";
else
	me="$me/$SUDO_USER";
fi
cd "$(dirname "$0")"
git pull;
git submodule foreach git pull origin master;
# function doIt() {
# 	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "*.sh" --exclude "*.md" --exclude "nosync/" -av . ~
# }
# if [ "$1" == "--force" -o "$1" == "-f" ]; then
# 	doIt
# else
# 	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
# 	echo
# 	if [[ $REPLY =~ ^[Yy]$ ]]; then
# 		doIt
# 	fi
# fi
# unset doIt
dotfiles="$me/Dropbox/bin/larry/dotfiles";
library="$me/Library";
appsupport="$library/Application Support";

# create symbolic link for MAMP mysql
# ln -sf "/Applications/MAMP/Library/bin/mysql" "/usr/local/bin/mysql";

# create symbolic links of my TextMate Theme to TextMate and Sublime Edit 2
ln -sf "$dotfiles/Sublime/Packages/User/Sunburst-psyrendust.tmTheme" "$appsupport/TextMate/Themes/Sunburst-psyrendust.tmTheme";
rm -rf "$appsupport/Sublime Text 2/Packages/User";
ln -sf "$dotfiles/Sublime/Packages/User" "$appsupport/Sublime Text 2/Packages/User";

# create symbolic link to Sublime Edit 2
ln -sf "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" "/bin/sbl";

# create symbolic links for all the dotfiles
ln -sf "$dotfiles/.ackrc" "$me/.ackrc";
ln -sf "$dotfiles/.aliases" "$me/.aliases";
ln -sf "$dotfiles/.bash_prompt" "$me/.bash_prompt";
ln -sf "$dotfiles/.bash_profile" "$me/.bash_profile";
ln -sf "$dotfiles/.bashrc" "$me/.bashrc";
ln -sf "$dotfiles/.brew" "$me/.brew";
ln -sf "$dotfiles/.exports" "$me/.exports";
ln -sf "$dotfiles/.extra" "$me/.extra";
ln -sf "$dotfiles/.functions" "$me/.functions";
ln -sf "$dotfiles/.gitattributes" "$me/.gitattributes";
ln -sf "$dotfiles/.gitconfig" "$me/.gitconfig";
ln -sf "$dotfiles/.gitk" "$me/.gitk";
ln -sf "$dotfiles/.inputrc" "$me/.inputrc";
ln -sf "$dotfiles/.osx" "$me/.osx";
ln -sf "$dotfiles/.rvmrc" "$me/.rvmrc";
ln -sf "$dotfiles/.vimrc" "$me/.vimrc";
ln -sf "$dotfiles/.zshrc" "$me/.zshrc";
ln -sf "$dotfiles/mm.cfg" "$me/mm.cfg";

ln -sf "$dotfiles/QuickLook" "$library/QuickLook"

rm -rf "$me/.vim";
ln -sf "$dotfiles/.vim" "$me/.vim";

source ~/.bash_profile
killall -9 "Sublime Text 2"
open -a "/Applications/Sublime Text 2.app"
