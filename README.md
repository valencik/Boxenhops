Boxenhops
=========

Web development and Hackathon themed Boxen repository.

This is a template Boxen project designed for your organization to fork and
modify appropriately.
The Boxen rubygem and the Boxen puppet modules are only a framework for getting
things done.
This repository template is just a basic example of _how_ to do things with them.

## Getting Started

To give you a brief overview, we're going to:

* Install dependencies (basically Xcode)
* Bootstrap a boxen for your self/team/org/company
* Then convert your local copy of that boxen to the post-bootstrapped version

There are a few potential conflicts to keep in mind.
Boxen does its best not to get in the way of a dirty system,
but you should check into the following before attempting to install your
boxen on any machine (we do some checks before every Boxen run to try
and detect most of these and tell you anyway):

* Boxen __requires__ at least the Xcode Command Line Tools installed.
* Boxen __will not__ work with an existing rvm install.
* Boxen __may not__ play nice with a GitHub username that includes dash(-)
* Boxen __may not__ play nice with an existing rbenv install.
* Boxen __may not__ play nice with an existing chruby install.
* Boxen __may not__ play nice with an existing homebrew install.
* Boxen __may not__ play nice with an existing nvm install.
* Boxen __recommends__ installing the full Xcode.

### Dependencies

**Install the Xcode Command Lines Tools and/or full Xcode.**
This will grant you the most predictable behavior in building apps like
MacVim.

How do you do it?

#### OS X 10.9 (Mavericks)

If you are using [`b26abd0` of boxen-web](https://github.com/boxen/boxen-web/commit/b26abd0d681129eba0b5f46ed43110d873d8fdc2)
or newer, it will be automatically installed as part of Boxen.
Otherwise, follow instructions below.

#### OS X < 10.9

1. Install Xcode from the Mac App Store.
1. Open Xcode.
1. Open the Preferences window (`Cmd-,`).
1. Go to the Downloads tab.
1. Install the Command Line Tools.

### Bootstrapping

Create a **new** git repository somewhere on the internet.
It can be private or public -- it really doesn't matter.
If you're making a repository on GitHub, you _may not_ want to fork this repo
to get started.
The reason for that is that you can't really make private forks of public
repositories easily.

Once you've done that, you can run the following to bootstrap
your boxen:

```
sudo mkdir -p /opt/boxen
sudo chown ${USER}:staff /opt/boxen
git clone https://github.com/boxen/our-boxen /opt/boxen/repo
cd /opt/boxen/repo
git remote rm origin
git remote add origin <the location of my new git repository>
git push -u origin master
```

Now that your boxen is bootstrapped, you can run the following to
install the default configuration from this repo:

```
cd /opt/boxen/repo
./script/boxen
```

### Distributing

That's enough to get your boxen into a usable state on other machines,
usually.
From there, we recommend setting up
[boxen-web](https://github.com/boxen/boxen-web)
as an easy way to automate letting other folks install your boxen.

If you _don't_ want to use boxen-web, folks can get using your boxen like so:

```
sudo mkdir -p /opt/boxen
sudo chown ${USER}:staff /opt/boxen
git clone <location of my new git repository> /opt/boxen/repo
cd /opt/boxen/repo
./script/boxen
```

Keep in mind this requires you to encrypt your hard drive by default.
If you do not want to do encrypt your hard drive, you can use the `--no-fde`.

```
./script/boxen --no-fde
```

It should run successfully, and should tell you to source a shell script
in your environment.
For users without a bash or zsh config or a `~/.profile` file,
Boxen will create a shim for you that will work correctly.
If you do have a `~/.bashrc` or `~/.zshrc`, your shell will not use
`~/.profile` so you'll need to add a line like so at _the end of your config_:

``` sh
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
```

This Boxen configuration project provides the following by default:

* iTerm2
* Node.js 0.8 / 0.10.13
* rbenv, Ruby 1.9.3 / 2.0.0
* Homebrew, Git, Hub, dnsmasq 
* ack, Findutils, GNU tar
* Shiftit
* Opera, nginx
* VLC
* Virtualbox
* Mou
* Colloquy
* DropBox
* Java
* Mongodb
* f.lux
* Transmission, Cyberduck

## Getting Started

See the [Our-Boxen documentation.](https://github.com/boxen/our-boxen)

## Customizing

You can always check out the number of existing modules we already
provide as optional installs under the
[boxen organization](https://github.com/boxen). These modules are all
tested to be compatible with Boxen. Use the `Puppetfile` to pull them
in dependencies automatically whenever `boxen` is run.


## Help!

<<<<<<< HEAD
See [FAQ](https://github.com/boxen/our-boxen/blob/master/docs/faq.md).
