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

# NVIM
alias nvim-lazy "NVIM_APPNAME='nvim-lazyvim' nvim"

# Added by LM Studio CLI (lms)
set -gx PATH $PATH /Users/rob/.lmstudio/bin
# End of LM Studio CLI section

# Ensure casks that auto update aren't updated by homebrew
set HOMEBREW_NO_UPGRADE_AUTO_UPDATES_CASKS 1
