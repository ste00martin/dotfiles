#!/bin/sh
# to setup on a new local system:

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git python wget zsh vim rbenv

rbenv install 2.2.4

# Setup Git
git config --global core.ignorecase false
git config --global push.default current
git config --global branch.autoSetupMerge always

# Setup Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
brew install zsh-autosuggestions
which zsh | sudo tee -a /etc/shells
chsh -s `which zsh`
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

# Vundle for Vim plugins!
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall # install plugins from command line

# BFG
https://rtyley.github.io/bfg-repo-cleaner/
# save jar to .setup folder
mv ~/Downloads/bfg.jar ~/.setup/

# Ruby installs
gem install rails
gem install rubocop
gem install bundler

# homebrew must haves

brew install hub gpg cmake redis mysql postgres awscli

# Install NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
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
brew tap homebrew/cask-cask

brew cask install visual-studio-code java iterm2 spectacle postgres slack dbeaver-community
