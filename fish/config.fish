# Homebrew
set -gx PATH /usr/local/bin /usr/local/sbin $PATH

# Composer
set -gx PATH vendor/bin $PATH
set -gx PATH $HOME/.composer/vendor/bin $PATH

alias grep "grep --color"
alias rm "echo 'Don\'t use this use rmtrash instead'"

set fish_greeting

status --is-interactive; and . (rbenv init -|psub)
