# Homebrew
set PATH /opt/homebrew/bin $PATH
set PATH /opt/homebrew/sbin $PATH

# Composer
set PATH vendor/bin $PATH

# Brew Cask
# set -gx HOMEBREW_CASK_OPTS --appdir=~/Applications

# FNM (Node)
#fnm env | source
set PATH node_modules/.bin $PATH

set fish_greeting

# Android setup
# set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/temurin-17.jdk/Contents/Home
# set -gx GRADLE_HOME /usr/local/Cellar/gradle/5.4.1/bin
# set -gx ANDROID_SDK_ROOT $HOME/Library/Android/sdk
# set -gx ANDROID_HOME $HOME/Library/Android/sdk
# set PATH $ANDROID_SDK_ROOT/platform-tools $PATH
# set PATH $ANDROID_SDK_ROOT/emulator $PATH
# set PATH $ANDROID_SDK_ROOT/tools/bin $PATH

# Aliases
alias grep "grep --color"
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# Node
set -gx NODE_ENV development
