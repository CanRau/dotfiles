alias .=source

# -------------------------------------------------------------------
# make some commands (potentially) less destructive
# -------------------------------------------------------------------
alias 'rm=rm'

# list top 10 most frequently used shell commands
# https://coderwall.com/p/eidi5q/create-a-zsh-function
alias top10="history | commands | sort -rn | head"
