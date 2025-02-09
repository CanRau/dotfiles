# Rust
# source "$HOME/.cargo/env"
# source "$HOME/.asdf/plugins/golang/set-env.zsh"

# export PATH="/run/current-system/sw/bin:$PATH"

export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# libpq Postgres binaries
export PATH="/usr/local/opt/libpq/bin:$PATH"

# deno
export PATH="/Users/Can/.deno/bin:$PATH"

# bitwarden
export PATH="/Users/Can/.bitwarden:$PATH"

# Fly CLI
export FLYCTL_INSTALL="/Users/Can/.fly"
export PATH="$FLYCTL_INSTALL/bin:$PATH"

# volta
# export PATH="$VOLTA_HOME/bin:$PATH"

# homebrew
export PATH="/usr/local/sbin:$PATH"

# npm https://docs.npmjs.com/resolving-eacces-permissions-errors-when-installing-packages-globally#manually-change-npms-default-directory
export PATH=~/.npm/bin:$PATH
# global node_modules
export PATH="$PATH:$HOME/.npm-packages/bin"

# local node_modules
export PATH="$PATH:./node_modules/.bin"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/Can/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# ZVM (https://github.com/tristanisham/zvm)
export ZVM_INSTALL="$HOME/.zvm/self"
export PATH="$PATH:$HOME/.zvm/bin"
export PATH="$PATH:$ZVM_INSTALL/"

# Go
# export PATH="$PATH:$(go env GOPATH)/bin"

# Flutter
# export PATH="$PATH:$HOME/Applications/flutter/bin"

# Dart binaries
# export PATH="$PATH:$HOME/.pub-cache/bin"

# Go, https://medium.com/@devesu/golang-quickstart-with-homebrew-macos-f3b3dacbc5dc
# https://gist.github.com/vsouza/77e6b20520d07652ed7d
# export GOPATH=$HOME/go
# export GOROOT=/usr/local/opt/go/libexec
# export PATH=$PATH:$GOPATH/bin
# export PATH=$PATH:$GOROOT/bin

# Android SDK
export PATH="$PATH:$HOME/Library/Android/sdk/tools"
export PATH="$PATH:$HOME/Library/Android/sdk/emulator"
export PATH="$PATH:$HOME/Library/Android/sdk/tools/bin"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools"
export PATH="$PATH:$HOME/Library/Android/sdk/build-tools"
export PATH="$PATH:/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home/bin"

# Yarn
# export PATH="$PATH:$HOME/.config/yarn/yarn-v1.22.10/bin"
# export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"