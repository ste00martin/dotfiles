# to setup on a new local system:

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Setup Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

brew install zsh zsh-completions
which zsh | sudo tee -a /etc/shells
chsh -s `which zsh`

## install custom oh-my-zsh plugins
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions


# Vundle for Vim plugins!
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# setup vundle
vim +PluginInstall +qall # install plugins from command line

# install rvm

# homebrew must haves
brew install git
brew install hub
brew install gpg
brew install cmake
brew install redis
brew install mysql
brew install postgres
brew install awscli
brew install node

npm install -g bower
npm install -g grunt-cli

brew install heroku
gem install rails
gem install rubocop
gem install bundler

# homebrkw nice to haves
brew install qt



# You Complete Me install
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
sh ./install.sh --clang-completer

# Must Have GUI apps
brew tap caskroom/cask
brew tap caskroom/versions

brew cask install sublime-text3
brew cask install java
brew cask install iterm2
brew cask install flux
brew cask install spectacle
brew cask install dropbox
brew cask install skype
brew cask install postgres
brew cask install slack
brew cask install spotify
brew cask install sonos



# Setting up Atom

apm install atom-beautify pigments react angularjs atom-beautify editorconfig linter status-bar-blame
apm install atom-material-ui

