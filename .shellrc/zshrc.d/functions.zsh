# simple tree if not installed
# https://justin.abrah.ms/dotfiles/zsh.html
if [ -z "\${which tree}" ]; then
  tree () {
      find $@ -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
  }
fi

# src https://superuser.com/a/1132971/817900
function treee() { find $1 -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'; }

#https://coderwall.com/p/eidi5q/create-a-zsh-function
function commands() { awk '{a[$2]++}END{for(i in a){print a[i] " " i}}'; }

# make a dir and cd into it
# https://justin.abrah.ms/dotfiles/zsh.html
mcd () {
    mkdir -p "$@" && cd "$@"
}
