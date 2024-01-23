which -s brew
if [[ $? != 0 ]] ; then
  echo "Please run brew.sh first"
else
  echo "Updating Homebrew"
  brew update
fi

# checkout https://gist.github.com/agrcrobles/165ac477a9ee51198f4a870c723cd441
# and original https://gist.github.com/patrickhammond/4ddbe49a67e5eb1b9c03

# Android
brew cask install "android-sdk"
brew cask install "android-studio"

sdkmanager "system-images;android-27;google_apis_playstore;x86"

# Cleanup
echo
echo "Remove outdated versions from the cellar.."
brew cleanup

# Done
echo
echo "done"