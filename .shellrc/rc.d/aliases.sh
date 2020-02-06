alias .=source

alias 'rm=rm'
alias 'rmr=rm -r'

# -------------------------------------------------------------------
# Some custom git aliases
# In addition to ZSHs git plugin
# https://github.com/ohmyzsh/ohmyzsh/blob/master/plugins/git/git.plugin.zsh
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

alias lc='eval $(fc -ln 1 | pick)'

# zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.bash
# fpath=(~/.zsh $fpath)
#setopt no_complete_aliases
#setopt complete_aliases

# ----------------------
# DOTFILES
# ----------------------
alias dotfiles='git --git-dir=$HOME/.dotfiles/repo --work-tree=$HOME'
alias d='dotfiles'
alias da='dotfiles add'
alias dss='dotfiles status --short --untracked-files=no'
alias dapa='dotfiles add --patch'
alias dc='dotfiles checkout'
alias dcm='dotfiles commit --message'
alias dp='dotfiles push'
alias dd='dotfiles diff'
alias dlol='dotfiles log --graph --pretty="%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset"'
compdef _git dotfiles=git d=git da=git-add dc=git-checkout
compdef _git hub=git