
#export GOROOT=/usr/local/bin/go
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin

# Prompt
PROMPT='%{$fg_bold[white]%} %n:%c> %{$reset_color%}'


## # Colors
autoload -U colors
colors
setopt prompt_subst

## Show completion on first TAB
setopt menucomplete

## # Load completions for Ruby, Git, etc.

autoload compinit
compinit


## Shortcuts
alias gotogo="cd ~/.go/src/github.com"
alias gotorepos="cd ~/repos/"
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias vi="/Applications/MacVim.app/Contents/MacOS/Vim"

