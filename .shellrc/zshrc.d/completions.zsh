fpath=(~/.zsh/completions $fpath)
# Autocompletion for git-friendly
fpath=($(brew --prefix)/share/zsh/functions $fpath)

# Caching autocompletion
# https://blog.callstack.io/supercharge-your-terminal-with-zsh-8b369d689770
autoload -Uz compinit
if [[ -n ~/.shellrc/zshrc.d/.zcompdump(#qN.mh+24) ]]; then
  compinit -i -d "${ZSH_COMPDUMP}" # based on https://unix.stackexchange.com/a/391670 not working tho
else
  compinit -C -i -d "${ZSH_COMPDUMP}" # based on https://unix.stackexchange.com/a/391670 not working tho
fi

# Menu-like autocompletion selection
zmodload -i zsh/complist

# Automatically list choices on ambiguous completion
setopt auto_list
# Automatically use menu completion
setopt auto_menu
# Move cursor to end if word had one match
setopt always_to_end

# Select completions with arrow keys
zstyle ':completion:*' menu select
# Group results by category
zstyle ':completion:*' group-name ''
# Enable approximate matches for completion
zstyle ':completion:::::' completer _expand _complete _ignored _approximate
# Case and hyphen insensitive
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
# Use caching so that commands like apt and dpkg complete are useable
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH_CACHE_DIR

#zstyle ':completion:*:*:git:*' user-commands new-branch:'custom new branch function'
#zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' matcher-list 'r:|=*' 'l:|=* r:|=*'

autoload -Uz _git && _git
compdef __git_branch_names branch br