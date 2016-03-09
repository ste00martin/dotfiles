export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export JAVA_HOME=$(/usr/libexec/java_home)

## # Colors
autoload -U colors
colors
setopt prompt_subst

## Show completion on first TAB
setopt menucomplete

## Autosave history
setopt APPEND_HISTORY

## # Load completions for Ruby, Git, etc.
autoload compinit
compinit

## Shortcuts for all
alias gri='grep -iRnf /dev/stdin . <<<'
alias gr='grep -Rnf /dev/stdin . <<<'
alias ocp="rubocop -a"
alias fnd='find . | grep -i '
alias vi=$(which vim)
alias gorepos="cd ~/repos/"
alias git=hub

## Shortcuts for work
alias cds="cd ~/repos/chipotle/chipotle-cms/public/themes/chipotle-demo-theme"
alias cms="cd ~/repos/chipotle/chipotle-cms"

# deep history of file and who changed what
alias git_deep='git log --follow -p -- . <<<'

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Prompt
PROMPT='%{$fg_bold[white]%} %n:%c> %{$reset_color%}'
RPROMPT='   %{$fg_bold[white]%}$(parse_git_branch)%{$reset_color%}'




cms
