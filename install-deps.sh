# up to you (me) if you want to run this as a file or copy paste at your leisure


# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
sudo bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby
rvm install 1.8.7
rvm install 1.9.2
rvm --default 1.9.2
ruby -v
which ruby
gem install rails

# Install Compass
# http://compass-style.org/install/
gem update --system
gem install compass

# homebrew!
# you need the code CLI tools YOU FOOL.
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)

# Change ownership of /usr/local
sudo chown -R $USER /usr/local

# install some homebrew stuff!
. .brew

# install npm
curl https://npmjs.org/install.sh | sh

# install Yeoman
npm install yeoman -g

# https://github.com/isaacs/nave
# needs npm, obviously.
# TODO: I think i'd rather curl down the nave.sh, symlink it into /bin and use that for initial node install.
npm install -g nave

# https://github.com/rupa/z
# z, oh how i love you
mkdir -p ~/dev/z
curl https://raw.github.com/rupa/z/master/z.sh > ~/dev/z/z.sh
chmod +x ~/dev/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# add this to the bash_profile file if it aint there.
#   . ~/dev/z/z.sh


# cd ~/dev
# git clone git://github.com/dronir/SpotifyControl.git



# my magic photobooth symlink -> dropbox. I love it.
# first move Photo Booth folder out of Pictures
# then start Photo Booth. It'll ask where to put the library.
# put it in Dropbox/public

# now you can record photobooth videos quickly and they upload to dropbox DURING RECORDING
# then you grab public URL and send off your video message in a heartbeat.


# for the c alias (syntax highlighted cat)
sudo easy_install Pygments


# chrome canary as default
# on a mac you can set chrome canary as your default inside of Safari preferences :)


