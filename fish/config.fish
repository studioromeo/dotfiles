# Homebrew
set -gx PATH /usr/local/bin $PATH

# Composer
set -gx PATH vendor/bin $PATH
set -gx PATH node_modules/.bin $PATH

# Brew Cask
set -gx HOMEBREW_CASK_OPTS --appdir=~/Applications

alias grep "grep --color"
alias music "open -n -a 'Google Chrome' --args '--app=https://music.google.com' '--profile-directory=Profile 1'"

set fish_greeting

status --is-interactive; and . (rbenv init -|psub)

# Init node
bass source ~/.nvm/nvm.sh

set -g JAVA_HOME (/usr/libexec/java_home)
set -gx ANDROID_HOME ~/code/android/
set -gx PATH ~/code/android/tools ~/code/android/platform-tools $PATH
