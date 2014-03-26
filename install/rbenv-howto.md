# Setting up and installing rbenv, ruby-build, rubies, rbenv-gemset, and bundler

This guide enables you to install (ruby-build) and use (rbenv)
multiple versions of ruby, isolate project gems (gemsets and/or bundler), and
automatically use appropriate combinations of rubies and gems.

## TL;DR Demo

    # Ensure system is in ship-shape.
    aptitude install git zsh libssl-dev zlib1g-dev libreadline-dev libyaml-dev

    # Install rbenv for managing enabling of multiple rubies.
    git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
    echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
    echo 'eval "$(rbenv init -)"' >> ~/.zshrc
    exec $SHELL

    # Install the ruby-build plugin for easy building of rubies.
    mkdir -p ~/.rbenv/plugins
    cd !$
    git clone git://github.com/sstephenson/ruby-build.git
    cd where/ever

    # Install a couple rubies
    rbenv install 1.8.7-p358
    rbenv install 1.9.3-p125
    rbenv rehash
    # Try out a ruby.
    rbenv shell 1.9.3-p125
    # Enable a newly installed ruby, persistently, globally.
    rbenv global 1.9.3-p125
    # Enable a ruby persistently just for this directory.
    rbenv local 1.8.7-p358
    rbenv rehash

    # Install bundler, create a Gemfile, install to project.
    gem install bundler
    >Gemfile <<<'gem "ronn"'
    bundle install --path vendor
    bundle exec gem env

    # (OPTIONAL: for those who maintain gems or have myriad projects)
    # Install rbenv-gemset, create a gemset, install a gem, use it.
    cd ~/.rbenv/plugins
    git clone git://github.com/jamis/rbenv-gemset.git
    rbenv gemset create 1.9.3-p125 helloset
    >.rbenv-gemsets <<<helloset
    rbenv gemset active
    gem install ronn
    rbenv rehash
    rbenv gemset list

Continue reading for explanations and a few more goodies…


## Overview

This covers the process of setting up rbenv and its plugins, and also
touches on moving from RVM to rbenv. This is suited for development
environments, but not needed for production. This does not include anything
about rails (but does ensure you’re well set up and configured to install it).
And none of this should require `sudo`. You may want to consult the
individual project pages at some point to learn more, but this guide should
contain — standalone — every setup instruction needed for all the tools to work.

The two things to accomplish:

1. Having at least one reliable locally installed non-system *Ruby*
2. Project-specific *Gemsets* OR project-local gems

These steps have been tested primarily on Arch and Ubuntu linux. Examples are
using some simple Zsh syntax which is slightly different from bash.

I’ve loved using RVM. It did do a surreptitious thing with my environment (a
shell file clobber setting) that I still don’t have a handle on (beyond
overriding things with shell functions). And it’s a little too sophisticated
to keep in my head everything it’s doing. If `rbenv` can eliminate any of the
magic of environment management, then I’ll give it a go.

My experience is also proving that most of this setup is not necessary for
servers. There it’s working out best to just install an up-to-date ruby from
source (via [Sprinkle](https://github.com/crafterm/sprinkle)).

<!--(ignore this, NYI) As this is a multi-repo configuration, you might want to consider using [git-->
<!--magnet](git://github.com/MicahElliott/git-magnet.git).-->

## Install rbenv

Git it.

    % git clone git://github.com/sstephenson/rbenv.git ~/.rbenv

Enable it.

    % echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
    % echo 'eval "$(rbenv init -)"' >> ~/.zshrc  # or equivalent
    % exec $SHELL

You haven’t done anything interesting yet. Hang tight.

For more rationale details, consult the `rbenv`
[project page](https://github.com/sstephenson/rbenv).

## Install the related `ruby-build` ruby installer

Your system should have gcc et al installed already. In Ubuntu this is
`build-essential` and in Arch you’ve already got them, of course.

Install Ruby-Build:

    % mkdir -p ~/.rbenv/plugins
    % cd ~/.rbenv/plugins
    % git clone git://github.com/sstephenson/ruby-build.git

Now we’re done manually installing things to specific places. Ruby-Build will
do the rest of the dirty work to configure, make, install, etc.

    % cd ~/anywhere

## Install rubies

Packages you’ll want installed in order for your rubies to configure to their
fullest potential (apt packages):

    libssl-dev zlib1g-dev libreadline-dev libyaml-dev flex gettext

Find out which rubies are
[available](https://github.com/sstephenson/ruby-build/tree/master/share/ruby-build).
Wow, you can even tab-complete these:

    % rbenv install 1.8.7-p«tab»
    1.8.7-p249  1.8.7-p302  1.8.7-p334  1.8.7-p352  1.8.7-p357  1.8.7-p358

Get a few (be patient):

    % rbenv install 1.9.3-p125
    % rbenv install jruby-1.6.7
    % rbenv install rbx-2.0.0  # rubinius; why not

You need to “rehash” to regenerate rbenv’s `ruby` “shim” after installing a
new ruby.

    % rbenv rehash

Now do it again for practice:

    % rbenv rehash

You’re going to do that almost every time you install a gem to generate
shims for executables. Get used to it or make `rbenv install` an alias to also
rehash:

    # Abbreviation for "gem install".
    gi() { gem install $@; rbenv rehash; rehash }

You’ve probably already got a system `ruby` installed. See them all now.
(I believe system ruby is not listed here.)

    % rbenv versions
      1.8.7-p358
      1.9.3-p125 (set by /home/mde/.rbenv/version)
      jruby-1.6.7
      rbx-2.0.0-dev

You should know that these are all being installed to your `~/.rbenv/versions`
dir.

Turn one on for persistent “global” use across your system (for your user
anyway).

**NOTE**: RVM users: forget the verb `use`. Your new enablers are `shell`,
`global`, and `local`.

    % rbenv global jruby-1.6.7
    % ruby -ve 'puts "it works"'
    jruby 1.6.7 (ruby-1.8.7-p357) (2012-02-22 3e82bc8) (Java HotSpot(TM)…
    it works

Quickly switch back and forth in a session with: `rbenv shell 1.«tab»`

The `local` command is pretty cool — it lets you auto-enable a specific
`ruby` whenever you enter a directory.

    % <.rbenv-version
    zsh: no such file or directory: .rbenv-version
    % rbenv local 1.9.3-p194
    % <.rbenv-version
    1.9.3-p194

It does so silently, so you might want to do something with your prompt to
indicate what’s active.

    % cd ..; cd -
    <silently enabling 1.9.3-p194>

(If you intend to install ruby 1.8.7, you might or might not need
[this workaround](http://stackoverflow.com/questions/6134456/error-while-installing-ruby-1-8-7-on-fedora-15).)


## Enable RVM-style “gemsets” (optional)

_You can skip this section and go directly the next Bundler section if you want
to just
[always install gems directly into your projects](http://ryan.mcgeary.org/2011/02/09/vendor-everything-still-applies/)._

Use the rbenv “plugin” subtool [rbenv-gemset](https://github.com/jamis/rbenv-gemset).

    % cd ~/.rbenv/plugins
    % git clone git://github.com/jamis/rbenv-gemset.git

You should now have a new `gemset` command in `rbenv`:

    % rbenv gemset «tab»
    active   create   delete   file     list     version

    % rbenv gemset create 1.9.3-p125 helloset

**NOTE**: tab-completion is not yet working for the `gemset` command.

That set up a directory for you in
`~/.rbenv/versions/1.9.3-p125/gemsets/helloset`. But now it’s up to you to do the
other half manually: setting the name of your gemset. You need to create a
tiny file, in this case containing `helloset`.

    % >.rbenv-gemsets
    helloset

Now when you `gem install` (see “Bundler” section below) something it will go
to your `helloset` gem area.

You can combine use of multiple gemsets with it.

The big benefit to this setup is enabling each project to use a different set
of differently versioned gems.

### Set up to use a gemset in a project

    % cd $TMPDIR/hello

    % >.rbenv-gemsets
    helloset


## Set up Bundler for dependency management

[Bundler](http://gembundler.com/v1.1/rationale.html)
is _the_ tool for managing your project dependencies. In fact, we’ll (almost)
never even install a gem directly, without Bundler. It even obviates the need
for gemsets for many project use cases.

**NOTE**: Although the tool is called “Bundler,” its command is actually `bundle`.
This has caused some confusion. You’ll actually be fine whether you install
the `bundle` or `bundler` gem, but the command will always be `bundle`.

Now that you’re working with multiple rubies, every ruby will need its own
bundler.

Now, what `gem` do we actually have?

    % whence -av gem
    gem is /home/mde/.rbenv/shims/gem
    gem is /usr/bin/gem

That didn’t make it too clear. Every ruby actually provides its own `gem`
command (er, maybe not 1.8?). Here’s how to see it:

    % rbenv which gem
    /home/mde/.rbenv/versions/1.9.3-p125/bin/gem

And what Bundler?

    % rbenv which bundle
    rbenv: bundle: command not found

Hmm. Now we can see that we need to install it manually. So this is
bootstrapping; it’ll be the only time we need to use `gem` directly for
installing. (`bundler` is also a good global gemset install; see below.)

    % gem install bundler
    …

    % rbenv which bundle
    /home/mde/.rbenv/versions/1.9.3-p125/bin/bundle

Great. That was quick and easy.

    % which -a bundle
    bundle is /home/mde/.rbenv/shims/bundle
    bundle is /usr/bin/bundle

Now do it for all your rubies (and every time you install another ruby).

### Global gemsets

Like RVM,
[rbenv can do _global_ gemsets](https://github.com/jamis/rbenv-gemset/issues/16),
too (though I haven’t tried it yet).

## Install stuff for your project (finally)

    % >Gemfile
    source "http://rubygems.org"
    gem "ronn", "1.3.2"
    gem "nokogiri"

    % bundle install

## Typical workflow (demo)

    % cd ~/proj/foo
    % rbenv shell 1.9.3-p125
    % rbenv local «tab»
    1.8.7-p358  1.9.3-p125   jruby-1.6.7   rbx-2.0.0-dev  system   --unset
    % rbenv local jruby-1.6.7

Set a local persistent version.

    % rbenv local rbx-2.0.0-dev
    % cat .rbenv-version
    rbx-2.0.0-dev

## Speeding things up a tad

`rbenv` is a handful to be typing often. I presently use:

    % alias rb=rbenv

though `r` and `b` are terribly distant to type on QWERTY.

## Upgrading
Eventually new rubies will release and you’ll want to keep up. This means
moving your installed gems along with them.

FIXME: I HAVEN'T DONE THIS YET

## Set up an informative rbenv-aware prompt (optional)

http://wiki.iany.me/rbenv/
