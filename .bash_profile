ulimit -n 65536 65536

export CLICOLOR=1
force_color_prompt=yes

export VAULT_ADDR=http://127.0.0.1:8200

PATH=/usr/local/bin:$PATH
PATH=$HOME/bin:$PATH

# allow locally installed npm binaries to be executed;
# added by `npm i -g add-local-binaries-to-path`
PATH="$PATH:./node_modules/.bin"

# add users ruby gems source: http://guides.rubygems.org/faqs/
if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -r rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

#add global npm packages to path
export PATH=$HOME/.npm-packages/bin:$PATH

#react native requirements for android studio
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
#export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:~/Library/Android/sdk/platform-tools

export PATH

# source .bash_variables if available
#if [ -f ~/.bash_variables ]; then
#    . ~/.bash_variables
#fi

#export PATH=$HOME/.npm-packages/bin

## added by Can

# show current git branch @url https://coderwall.com/p/fasnya/add-git-branch-name-to-bash-prompt
#parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}
#export PS1="\u@\h \[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "

GIT_PROMPT_ONLY_IN_REPO=1
source ~/.bash-git-prompt/gitprompt.sh

# bash-completion
#[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# source .bash_aliases if available
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# source .bash_functions if available
# Function definitions
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi
