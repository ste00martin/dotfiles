export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

#export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"

export JAVA_HOME=$(/usr/libexec/java_home)

# Prompt
PROMPT='%{$fg_bold[white]%} %n:%c> %{$reset_color%}'


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


## Shortcuts
alias gogo="cd ~/.go/src/github.com"
alias pullmaster="bundle && rake db:migrate"
alias rucp="rubocop -a"
alias gorepos="cd ~/repos/"
alias vi=$(which vim)
alias textur="psql -h textur-mepwknbdst.cpxmzuem2qct.us-west-2.redshift.amazonaws.com -p 5439 -U stefan textur"
alias gr='grep -Rnf /dev/stdin . <<<'
alias gri='grep -iRnf /dev/stdin . <<<'
alias fnd='find . | grep -i '

setopt APPEND_HISTORY

# deep history of file and who changed what
alias git_deep='git log --follow -p -- . <<<'


function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
RPROMPT='   %{$fg_bold[white]%}$(parse_git_branch)%{$reset_color%}'

