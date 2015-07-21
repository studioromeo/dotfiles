# dotfiles

These are my dotfiles. Feel free to take what you need however I accept no responsibility if it buggers anything up!

## Install

On a fresh installation of OS X install the necessary command line tools:

    sudo softwareupdate -i -a
    xcode-select --install

Next clone down the dotfiles and cd into the directory.

    git clone https://github.com/studioromeo/zotfiles.git ~/.dotfiles
    cd ~/.dotfiles

Some things are secret and can't be stored in the repository so next copy secrets.dist and edit the file with the correct details.

    cp secrets.dist secrets

Finally run the installer which will provision your machine for you. You should be able to run this multiple times

    ./install

## Update

From time to time you may want to update the installed packages.

    cd ~/.dotfiles && ./update

## Thanks

With thanks to the [dotfiles](http://dotfiles.github.io/) for providing inspiration for these dotfiles
