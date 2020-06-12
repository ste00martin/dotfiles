#!/bin/sh
# to setup on a new local system:

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# homebrew must haves
brew install awscli
brew install cmake
brew install git
brew install gpg
brew install hub
brew install mysql
brew install postgres
brew install python
brew install redis
brew install vim
brew install wget
brew install yarn
brew install zsh
brew install watchman
brew install direnv

# Must Have GUI apps
# Note: do each one step wise, these get finnicky and usually require passwords
brew tap homebrew/cask-cask
brew tap caskroom/versions

# Work Smart.
brew cask install spectacle
brew cask install flux
brew cask install stretchly
brew cask install iterm2
brew cask install visual-studio-code

# Mobile development
brew cask install java
brew cask install android-studio

# nice apps for lesiure
brew cask install dbeaver-community
brew cask install postman
brew cask install postgres
brew cask install spotify
