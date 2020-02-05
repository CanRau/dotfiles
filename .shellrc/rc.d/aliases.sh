alias .=source

alias 'rm=rm'
alias 'rmr=rm -r'

# -------------------------------------------------------------------
# Some custom git aliases
# -------------------------------------------------------------------
alias git=hub
alias gpr='hub pull-request'
alias gai='git add --interactive'
alias gcoi='git branch -a | ipt | xargs git checkout'
# alias gsti='git stash list | ipt -M "Select stash to apply:" --unquoted | cut -d ":" -f 1 | xargs git stash apply'
alias gsti='git stash list | pick -X | cut -d ":" -f 1 | xargs git stash apply'
# from https://dev.to/nvahalik/git-log-simplify-by-decoration-is-my-new-best-friend-3dc7
alias glal='git log --decorate --graph --simplify-by-decoration --oneline --all'

# does not work with globalias (yet)
alias colorpallete='for code ({000..255}) print -P -- "$code: %F{$code}The quick brown fox jumps over the lazy dog%f"'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias d='dotfiles'
alias da='dotfiles add'
alias dss='dotfiles status --short'
alias dapa='dotfiles add --patch'
alias dc='dotfiles checkout'
alias dcm='dotfiles commit --message'
alias dp='dotfiles push'