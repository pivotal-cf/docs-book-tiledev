## PCF Services Documentation Template

This template helps Pivotal development teams prepare documentation for Pivotal Cloud Foundry (PCF) services that appear on [Pivotal Network](https://network.pivotal.io/).

**Breaking Change**:

The 2.10 and later docs have been migrated to [docs.vmware.com](https://docs.vmware.com). For these branches, this repo is only being used for redirects located in the `redirects.rb` file.

For all files related to this documentation, including the table of contents (`toc.md`), see the content repo [pivotal-cf/docs-tiledev](https://github.com/pivotal-cf/docs-tiledev).

### <a id='overview'></a>Overview

Every PCF service has (or should have) documentation on the main Pivotal documentation site, [docs.pivotal.io](http://docs.pivotal.io) under **Pivotal Cloud Foundry Services**.

### <a id='template'></a>How To Use This Template

You can use this template to develop documentation for a new PCF service. It includes sections for a Product Snapshot, prerequisites, instructions for installation and use, release notes, license information, and other generally useful and expected documentation.

To begin using this repo to develop your documentation, perform the following steps:

1. Clone this repo onto your local machine.
1. Work your way through each topic, replacing the placeholders in ALL-CAPS and following the instructions in **bold**.
1. Complete the subnav by replacing the placeholders in ALL-CAPS in the subnav file at `book/master_middleman/source/subnavs/service_subnav.erb` in this repo.
1. View your documentation as a live local site in a browser, by following the steps below in the [How To Use Bookbinder To View Your Docs](#bookbinder) section.
1. When you've finished your documentation, push your docs up to the remote and email the PCF Docs Team at cf-docs@pivotal.io.

### <a id='bookbinder'></a>How To Use Bookbinder To View Your Docs

[Bookbinder](https://github.com/pivotal-cf/bookbinder/blob/main/README.md) is a command-line utility for stitching Markdown docs into a hostable web app. The PCF Docs Team uses Bookbinder to publish our docs site, but you can also use Bookbinder to view a live version of your documentation on your local machine.

Bookbinder draws the content for the site from `docs-content`, the subnav from `docs-book`, and various layout configuration and assets from `docs-layout`.

To use Bookbinder to view your documentation, perform the following steps:

1. On your local machine, `cd` into `docs-book` in the cloned repo.
1. Run `bundle install` to make sure you have all the necessary gems installed.
1. Build your documentation site with `bookbinder` in one of the two following ways:
	* Run `bookbinder watch` to build an interactive version of the docs and navigate to `localhost:4567/myservice/` in a browser. (It may take a moment for the site to load at first.) This builds a site from your content repo at `docs-content`, and then watches that repo to update the site if you make any changes to the repo.
	* Run `bookbinder bind local` to build a Rack web-app of the book. After the bind has completed, `cd` into the `final_app` directory and run `rackup`. Then navigate to `localhost:9292/myservice/` in a browser.

### <a id='zero-to-bookbinder'></a>Zero to Bookbinder: How to Install Bookbinder and Build, View, and Edit Your Docs from Nothing

If you are reading this, Pivotal has invited you to a git repo where you can build and edit documentation in the Ruby / Markdown / HTML format that the online publishing tool [Bookbinder](https://github.com/pivotal-cf/bookbinder/blob/main/README.md) uses to build Pivotal's documentation.

Here's how to install Bookbinder and build your docs from the repo, starting from scratch, on a Mac OS X machine.

<p class="note"><strong>Note</strong>: All steps below are implicitly preceded with, "If you haven't already..." You should skip any installation steps that have already contributed to your environment.</p>

#### Install Ruby

In Terminal window:

1. Make and `cd` into a workspace directory.

    `$ mkdir workspace`

     `$ cd workspace`

1. Follow the instructions at `http://brew.sh` to install brew / homebrew

    `$ /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`

1. Install your own (non-system) ruby.

    `$ brew install ruby`

#### Set up Git

1. Download and Install git by following the instructions at [git-scm.com](https://git-scm.com/download/).

1. Install your own (non-system) bash-completion (optional).

    `$ brew install git bash-completion`

1. If you don't already have one, generate a public/private RSA key pair, and save the key to your `~/.ssh` directory.
    ```
    $ ssh-keygen
    Generating public/private rsa key pair.
    Enter file in which to save the key (/Users/YOUR-USERID/.ssh/id_rsa):
    ```

1. Get a [Github](http://github.com) account.

1. Add your RSA public key to your Github account / profile page.

    `$ cat ~/.ssh/id_rsa.pub # copy and paste this into Github profile page as new key`

#### Get the Correct Ruby Version

1. Install a Ruby manager such as chruby.

    `$ brew install chruby`

1. Add your Ruby manager to your `~/.bashrc` by appending the following line:

    `source /usr/local/opt/chruby/share/chruby/chruby.sh`

1. Install the `ruby-install` installer.

    `$ brew install ruby-install`

1. Run `ruby-install` to install Ruby.

    `$ ruby-install ruby 2.3`

#### Install Bookbinder

1. Install `bundler`.

    `$ gem install bundler`

1. Install bookbinder (the `bookbindery` gem).

    `$ gem install bookbindery`

#### Build the Docs Locally

1. Clone the docs template repo you will be building from.

    `$ git clone git@github.com:pivotal-cf-experimental/docs-pcfservices-template`

1. `cd` into the `book` subdirectory of the repo.

   `$ cd docs-partners-template/docs-book`

1. Run `bundle install` to install all book dependencies.

    `$ bundle install`

1. Run `bookbinder watch` to build the book on your machine. If it doesn't succeed, try prepending the command with `bundle exec` so that bookbinder uses local gems instead of global gems.

   `$ bundle exec bookbinder watch`

1. Browse to `localhost:4567` to view the book locally and "watch" any changes that you make to source `html.md.erb` files. As you make and save changes to the local source files for your site, you will see them in your browser after a slight delay.

![PCF Service Template landing page](book/master_middleman/source/images/pcfservices-template-landing.png)

![PCF Service Template service index page](book/master_middleman/source/images/pcfservices-template-service-index.png)

After each session of writing or revising your docs source files, commit and push them to your github repo.

Happy documenting!
