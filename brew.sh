which -s brew
if [[ $? != 0 ]] ; then
  echo "Installing Homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Updating Homebrew"
  brew update
fi

echo
echo "Tapping repositories"
# Taps
brew tap "homebrew/bundle"
brew tap "homebrew/cask-fonts"
brew tap "homebrew/cask"
brew tap "homebrew/core"

echo
echo "Installing Binaries"
# Binaries
brew install "bash" # Latest Bash version
brew install "bat"
brew install "bitwarden-cli"
brew install "cocoapods"
brew install "coreutils" # Those that come with macOS are outdated
brew install "fd" # https://github.com/sharkdp/fd
brew install "gifski"
brew install "git"
brew install "go"
brew install "hub"
brew install "vips"
brew install "watchman"
# brew install "yarn" --ignore-dependencies
brew install "zsh"
brew install "zsh-completions"

echo
echo "Installing Apps"
# Apps
brew cask install "bitwarden"
# brew cask install "brave-browser"
# brew cask install "db-browser-for-sqlite"
brew cask install "deluge"
brew cask install "devdocs"
brew cask install "discord"
brew cask install "docker"
brew cask install "emacs"
brew cask install "firefox"
brew cask install "fontbase"
brew cask install "github"
brew cask install "google-backup-and-sync"
brew cask install "google-chrome-canary"
brew cask install "google-chrome"
# brew cask install "hyper"
brew cask install "iina"
# brew cask install "joplin"
brew cask install "karabiner-elements"
# brew cask install "lepton"
# brew cask install "macs-fan-control"
# brew cask install "raindropio"
# brew cask install "reactotron"
# brew cask install "realm-studio"
# brew cask install "shifty"
brew cask install "shotcut"
brew cask install "signal"
brew cask install "skype"
brew cask install "slack"
# brew cask install "smcfancontrol"
brew cask install "spectrum"
brew cask install "sourcetree"
brew cask install "suspicious-package" # https://www.mothersruin.com/software/SuspiciousPackage/
brew cask install "telegram"
brew cask install "vlc"
# brew cask install "zazu"
# brew cask install "Zettlr"

echo
echo "Installing Fonts"
# Font
brew cask install "font-menlo-for-powerline"

echo
echo "Installing Quicklooks"
# Quicklook
brew cask install "qlimagesize"
brew cask install "qlmarkdown"
brew cask install "qlstephen"
brew cask install "quicklook-csv"
brew cask install "quicklook-json"

# Cleanup
echo
echo "Remove outdated versions from the cellar.."
brew cleanup

# Done
echo
echo "done"