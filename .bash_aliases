alias ll='ls -lah'

alias git=hub

# GIT
alias gs='git status'
alias gss='git status --short'
alias ga='git add'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push'
alias gco='git checkout'
alias gl='git log'
alias gd='git diff'

# NPM
alias npm-default='npm config set registry https://registry.npmjs.org'
alias npm-verdaccio='npm config set registry http://localhost:4873/'

# NGINX
alias nginx.start='brew services start nginx'
alias nginx.restart='brew services restart nginx'
alias nginx.stop='brew services stop nginx'
alias nginx.test='sudo nginx -t'
