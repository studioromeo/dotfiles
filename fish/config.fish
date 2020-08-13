# Homebrew
set -gx PATH /usr/local/bin $PATH

# Composer
set -gx PATH vendor/bin $PATH
set -gx PATH node_modules/.bin $PATH

# Brew Cask
set -gx HOMEBREW_CASK_OPTS --appdir=~/Applications

set fish_greeting

status --is-interactive; and . (rbenv init -|psub)

set -x NVM_DIR ~/.nvm

nvm use default --silent

# Andorid setup
set -gx JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home

set -gx GRADLE_HOME /usr/local/Cellar/gradle/5.4.1/bin
set -gx ANDROID_SDK_ROOT $HOME/Library/Android/sdk
set -gx PATH $ANDROID_SDK_ROOT/platform-tools $PATH
set -gx PATH $ANDROID_SDK_ROOT/emulator $PATH
set -gx PATH $ANDROID_SDK_ROOT/tools/bin $PATH

# Aliases
alias grep "grep --color"
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

# Node
set -gx NODE_ENV development
