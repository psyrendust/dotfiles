#!/bin/bash
# get user name
me="/Users";
if [ "$USER" != "root" ]; then
	me="$me/$USER";
else
	me="$me/$SUDO_USER";
fi
cd "$(dirname "$0")"
# git pull;
# git submodule foreach git pull origin master;

dotfiles="$me/Dropbox/bin/larry/dotfiles";
library="$me/Library";
appsupport="$library/Application Support";

# create symbolic link for MAMP mysql
ln -sf "/Applications/MAMP/Library/bin/mysql" "/usr/local/bin/mysql";

# create symbolic links of my TextMate Theme to TextMate and Sublime Edit 2
# ln -sf "$dotfiles/Sublime/Packages/User/Sunburst-psyrendust.tmTheme" "$appsupport/TextMate/Themes/Sunburst-psyrendust.tmTheme";
rm -rf "$appsupport/Sublime Text 2/Packages/User";
ln -sf "$dotfiles/Sublime/Packages/User" "$appsupport/Sublime Text 2/Packages/User";

# create a symbolic link to the Soda Theme
rm -rf "$appsupport/Sublime Text 2/Packages/Theme - Soda";
ln -s "$dotfiles/Sublime/Packages/Theme - Soda" "$appsupport/Sublime Text 2/Packages/Theme - Soda"

# create symbolic links for all the dotfiles
# ln -sf "$dotfiles/.ackrc" "$me/.ackrc";
# ln -sf "$dotfiles/.aliases" "$me/.aliases";
# ln -sf "$dotfiles/.bash_prompt" "$me/.bash_prompt";
ln -sf "$dotfiles/.bash_profile" "$me/.bash_profile";
# ln -sf "$dotfiles/.bashrc" "$me/.bashrc";
# ln -sf "$dotfiles/.brew" "$me/.brew";
# ln -sf "$dotfiles/.exports" "$me/.exports";
# ln -sf "$dotfiles/.extra" "$me/.extra";
# ln -sf "$dotfiles/.functions" "$me/.functions";
# ln -sf "$dotfiles/.gitattributes" "$me/.gitattributes";
ln -sf "$dotfiles/.gitconfig" "$me/.gitconfig";
ln -sf "$dotfiles/.jekyllconfig" "$me/.jekyllconfig";
# ln -sf "$dotfiles/.gitk" "$me/.gitk";
# ln -sf "$dotfiles/.inputrc" "$me/.inputrc";
# ln -sf "$dotfiles/.osx" "$me/.osx";
# ln -sf "$dotfiles/.rvmrc" "$me/.rvmrc";
# ln -sf "$dotfiles/.vimrc" "$me/.vimrc";
# ln -sf "$dotfiles/.zshrc" "$me/.zshrc";
ln -sf "$dotfiles/mm.cfg" "$me/mm.cfg";

rm -rf "$library/QuickLook";
ln -sf "$dotfiles/QuickLook" "$library/QuickLook";

source ~/.bash_profile
killall -9 "Sublime Text 2"
open -a "/Applications/Sublime Text 2.app"