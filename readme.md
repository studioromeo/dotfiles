# dotfiles

These are my dotfiles. Feel free to take what you need however I accept no responsibility if it buggers anything up!

## Installation

Install the necessary command line tools:

```sh
    xcode-select --install
```

Next clone down the dotfiles and cd into the directory.

```sh
    git clone https://github.com/studioromeo/zotfiles.git ~/.dotfiles
    cd ~/.dotfiles
```

Some things are secret and can't be stored in the repository so next copy the `group_vars/all.yaml.dist` and edit the file with the correct details.

```sh
    cp all.yaml.dist all.yaml
```

Finally run ansible to set the machine up

```sh
    ansible-playbook playbook.yaml --ask-become-pass
```

## Thanks

With thanks to the [dotfiles](http://dotfiles.github.io/) for providing inspiration for these dotfiles
