#!/bin/sh
# to setup on a new local system:

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git python wget zsh vim ruby

# Setup Git
git config --global core.ignorecase false

# Setup Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install zsh-autosuggestions
which zsh | sudo tee -a /etc/shells
chsh -s `which zsh`
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Vundle for Vim plugins!
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall # install plugins from command line

# Ruby installs
gem install rails
gem install rubocop
gem install bundler

# homebrew must haves
brew install hub
brew install gpg
brew install cmake
brew install redis
brew install mysql
brew install postgres
brew install awscli
brew install heroku

# Install NVM
https://github.com/creationix/nvm/blob/master/README.md
nvm install 10
nvm alias default 10

npm install -g bower
npm install -g yarn
npm install -g grunt-cli

# You Complete Me install
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
sh ./install.sh --clang-completer

# Must Have GUI apps
brew tap caskroom/cask
brew tap caskroom/versions

brew cask install visual-studio-code java iterm2 spectacle postgres slack
