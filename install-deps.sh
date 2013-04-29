# up to you (me) if you want to run this as a file or copy paste at your leisure


# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
sudo bash < <( curl https://raw.github.com/jamiew/git-friendly/master/install.sh)

# I'm assuming that you have xCode 4.5.x+ installed. If so rvm won't work
# because of:
#   The provided compiler '/usr/bin/gcc' is LLVM based, it is not yet fully
#   supported by ruby and gems, please read `rvm requirements`.
# Fix is here:
#   http://caiustheory.com/install-gcc-421-apple-build-56663-with-xcode-42
# Instructions:
# 1. Grab and unpack the tarball
#   mkdir ~/tmp && cd ~/tmp;
#   curl -O http://opensource.apple.com/tarballs/gcc/gcc-5666.3.tar.gz;
#   tar zxf gcc-5666.3.tar.gz && cd gcc-5666.3;
# 2. Setup some stuff it requires
#   mkdir -p build/obj build/dst build/sym
# And then build it. You should go make a cup of tea or five whilst this runs.
#   gnumake install RC_OS=macos RC_ARCHS='i386 x86_64' TARGETS='i386 x86_64' SRCROOT=`pwd` OBJROOT=`pwd`/build/obj DSTROOT=`pwd`/build/dst SYMROOT=`pwd`/build/sym;
# 3. And finally install it
#   sudo ditto build/dst /
#   rm -rf ~/tmp

# https://rvm.io
# rvm for the rubiess
curl -L https://get.rvm.io | bash -s stable --ruby;
rvm install 1.8.7;
rvm install 1.9.2;
rvm --default 1.9.2;
ruby -v;
which ruby;
gem install rails;

# Install Compass
# http://compass-style.org/install/
gem update --system;
gem install compass;

# homebrew!
# you need the code CLI tools YOU FOOL.
ruby <(curl -fsSkL raw.github.com/mxcl/homebrew/go)

# Change ownership of /usr/local
sudo chown -R $USER /usr/local

# install some homebrew stuff!
. .brew

# install nvm "Node Version Manager"
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# install the latest version of node
nvm install 0.8

# install npm
curl https://npmjs.org/install.sh | sh

# install Yeoman, Bower, and Grunt Init
npm install -g yo bower grunt-init grunt-cli

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
