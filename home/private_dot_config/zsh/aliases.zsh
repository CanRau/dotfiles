# list top 10 most frequently used shell commands
# https://coderwall.com/p/eidi5q/create-a-zsh-function
alias top10="history | commands | sort -rn | head"

####
## from https://github.com/mathiasbynens/dotfiles/blob/master/.aliases
####

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

# Google Chrome
alias chrome='/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

# Recursively delete `.DS_Store` files
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"