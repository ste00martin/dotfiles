
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

source .aws_keys

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
alias gogo="cd ~/.go/src/github.com"
alias gorepos="cd ~/repos/"
alias vi=$(which vim)
alias gomove="cd ~/repos/moveloot_server/"

setopt APPEND_HISTORY



function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
RPROMPT='%{$fg_bold[white]%}$(parse_git_branch)%{$reset_color%}'
