# up to you (me) if you want to run this as a file or copy paste at your leisure

# let's do some admin type stuff
# add myself to wheel group
sudo groupadd -G $USER wheel

# Change ownership of /usr/local
sudo chown -R $USER /usr/local

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

# install some homebrew stuff
# . .brew

# https://rvm.io
# rvm for the rubiess
# curl -L https://get.rvm.io | bash -s stable --ruby;
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# rvm install 1.8.7;
rvm install 1.9.3;
rvm --default 1.9.3;
rvm use 1.9.3;
ruby -v;
which ruby;
gem install rails;

# Install Compass
# http://compass-style.org/install/
gem update --system;
gem install compass;

# install nvm "Node Version Manager"
curl https://raw.github.com/creationix/nvm/master/install.sh | sh
[[ -s "$HOME/.nvm/nvm.sh" ]] && . "$HOME/.nvm/nvm.sh"

# install the latest version of node
nvm install v0.8
nvm install v0.9
nvm install v0.10
nvm alias default 0.8
nvm use 0.8

# install npm
curl https://npmjs.org/install.sh | sh

# # install Yeoman, Bower, and Grunt Init
# npm install -g yo bower grunt-init grunt-cli jshint

# # install some templates
# mkdir ~/.grunt-init
# git clone git@github.com:gruntjs/grunt-init-gruntfile.git ~/.grunt-init/gruntfile
# git clone git@github.com:gruntjs/grunt-init-commonjs.git ~/.grunt-init/commonjs
# git clone git@github.com:gruntjs/grunt-init-gruntplugin.git ~/.grunt-init/gruntplugin
# git clone git@github.com:gruntjs/grunt-init-jquery.git ~/.grunt-init/jquery
# git clone git@github.com:gruntjs/grunt-init-node.git ~/.grunt-init/node

# for the c alias (syntax highlighted cat)
sudo easy_install Pygments