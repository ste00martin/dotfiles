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


# Must Have GUI apps
# Note: do each one step wise, these get finnicky and usually require passwords
brew tap homebrew/cask-cask
brew tap caskroom/versions

brew cask install java
# fill in password

brew cask install android-studio
# open app, go through setup

brew cask install spectacle 
brew cask install postgres
brew cask install dbeaver-community
brew cask install visual-studio-code
brew cask install iterm2
