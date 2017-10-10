# !/bin/sh

# Remember to make this executalbe and readable script
# chmod a+rx brewInstalls.sh

echo Installing Brew Packages
brew install tmux
brew install ctags
brew install openssl

echo Installing casks
brew cask install iterm2
brew cask install google-chrome
brew cask install google-drive
brew cask install slack
brew cask install firefox
brew cask install robomongo
brew cask install atom
brew cask install docker
brew cask install spotify
brew cask install tunnelblick
brew cask install postman
brew cask install avast-security

