# simple tree if not installed
# https://justin.abrah.ms/dotfiles/zsh.html
if [ -z "\${which tree}" ]; then
  tree () {
      find $@ -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
  }
fi

function untar() {
  tar -xzvf $1
}

# src https://superuser.com/a/1132971/817900
function treee() { find $1 -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'; }

#https://coderwall.com/p/eidi5q/create-a-zsh-function
function commands() { awk '{a[$2]++}END{for(i in a){print a[i] " " i}}'; }

# make a dir and cd into it
# https://justin.abrah.ms/dotfiles/zsh.html
function mcd () {
    mkdir -p "$@" && cd "$@"
}

function upgradeall () {
  # in parallel update fly & package managers
  # fly version update & \
  # brew update & \
  # asdf update

  # # then in parallel upgrade the rest
  # asdf plugin update --all & \
  # mise self-update --yes && \
  # mise upgrade
  # mise self-update --yes --quiet & \
  chezmoi upgrade & \
  brew upgrade && \
    mise upgrade
  # & \
  # deno upgrade
  # & \
  # zvm upgrade # & \
  # ni is now handled by asdf CanRau/asdf-ni
  # npm i -g @antfu/ni wrangler & \
  # update all global asdf managed plugins (from https://github.com/asdf-vm/asdf/issues/35#issuecomment-1261491266)
  # for tool in $(asdf plugin list); do
  #   asdf install "${tool}" latest \
  #     &&  asdf global "${tool}" latest \
  #     &&  echo "[asdf]: ${tool} set globally"
  # echo "done" # doesn't work like that 😅
}

# https://github.com/rebuy-de/aws-nuke
function awsnuke () {
  docker run \
    --rm -it \
    -v /Users/Can/.config/aws-nuke/config.yml:/home/aws-nuke/config.yml \
    -v /Users/Can/.aws:/home/aws-nuke/.aws \
    quay.io/rebuy/aws-nuke:v2.14.0 \
    --profile gaiama-infra-prod \
    --config /home/aws-nuke/config.yml \
    --quiet
}