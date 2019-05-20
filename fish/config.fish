# Homebrew
set -gx PATH /usr/local/bin $PATH

# Composer
set -gx PATH vendor/bin $PATH
set -gx PATH node_modules/.bin $PATH

# Brew Cask
set -gx HOMEBREW_CASK_OPTS --appdir=~/Applications

set fish_greeting

status --is-interactive; and . (rbenv init -|psub)

# Init node
bass source ~/.nvm/nvm.sh

# Andorid setup
set -gx JAVA_HOME (/usr/libexec/java_home) 
set -gx GRADLE_HOME /usr/local/Cellar/gradle/5.2.1/bin
set -gx ANDROID_SDK_ROOT $HOME/Library/Android/sdk
set -gx PATH $ANDROID_SDK_ROOT/platform-tools $PATH
set -gx PATH $ANDROID_SDK_ROOT/emulator $PATH
set -gx PATH $ANDROID_SDK_ROOT/tools/bin $PATH

# Aliases
alias grep "grep --color"
