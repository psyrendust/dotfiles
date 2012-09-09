# Paul's dotfiles.. a fork of mathias's..

[mathias's readme](https://github.com/mathiasbynens/dotfiles/) is awesome. go read it. this repo is mostly for me but you're welcome to make suggestions. I'm mostly catching up to @mathiasbynens, @cowboy, and @gf3.

## Installation

```bash
git clone https://github.com/paulirish/dotfiles.git && cd dotfiles && ./sync.sh
```

To update later on, just run the sync again.

## install the neccessary apps

My basic setup is captured in `install-deps.sh` which adds homebrew, z, nave, etc.

## private config

Toss it into a file called `.extra` which you do not commit to this repo and just keep in your `~/`

I do something nice with my `PATH` there:

```shell
# PATH like a bawss
      PATH=/opt/local/bin
PATH=$PATH:/opt/local/sbin
PATH=$PATH:/bin
PATH=$PATH:~/.rvm/bin
PATH=$PATH:~/code/git-friendly
# ...

export PATH
```

## Syntax highlighting

Is really important. even for these files.

add the below to this file: `~/Library/Application Support/Sublime Text 2/Packages/ShellScript/Shell-Unix-Generic.tmLanguage`

```xml
<string>.aliases</string>
<string>.bash_profile</string>
<string>.bash_prompt</string>
<string>.bashrc</string>
<string>.brew</string>
<string>.exports</string>
<string>.functions</string>
<string>.git</string>
<string>.gitattributes</string>
<string>.gitconfig</string>
<string>.gitignore</string>
<string>.inputrc</string>
<string>.osx</string>
<string>.vim</string>
<string>.vimrc</string>
```



### Sensible OS X defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

## upstream

Suggestions/improvements [welcome back upstream](https://github.com/mathiasbynens/dotfiles/issues)!


## overview of files

####  Automatic config
* `.ackrc` - for ack (better than grep)
* `.vimrc`, `.vim` - vim config, obv.

#### shell environement
* `.aliases`
* `.bash_profile`
* `.bash_prompt`
* `.bashrc`
* `.exports`
* `.functions`

#### manual run
* `install-deps.sh` - random apps i need installed
* `.osx`
* `.brew` - homebrew intialization

#### git, brah
* `.git`
* `.gitattributes`
* `.gitconfig`
* `.gitignore`

* `.inputrc` - tbh i have no idea.

