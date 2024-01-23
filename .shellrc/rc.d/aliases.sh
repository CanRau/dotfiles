alias .=source

alias 'rm=rm'
alias 'rmr=rm -r'

# -------------------------------------------------------------------
# Some custom git aliases
# -------------------------------------------------------------------
alias git=hub
alias gpr='hub pull-request'
alias gai='git add --interactive'

# does not work with globalias (yet)
alias colorpallete='for code ({000..255}) print -P -- "$code: %F{$code}The quick brown fox jumps over the lazy dog%f"'
