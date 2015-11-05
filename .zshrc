source /usr/local/share/zsh/site-functions/_aws

export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/repos/moveloot_server/keys/ml_ec2_key.pem | /usr/bin/head -1)"
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

## # Load completions for Ruby, Git, etc.
autoload compinit
compinit


## Shortcuts
alias gogo="cd ~/.go/src/github.com"
alias gorepos="cd ~/repos/"
alias vi=$(which vim)
alias gomove="cd ~/repos/moveloot_server/"
alias textur="psql -h textur-mepwknbdst.cpxmzuem2qct.us-west-2.redshift.amazonaws.com -p 5439 -U stefan textur"
prod_console="cd moveloot_server && bundle exec rails c"
alias ml_prod="ssh -i ~/repos/moveloot_server/keys/ml_ec2_key.pem ubuntu@52.24.54.47 $prod_console"
alias ml_sandbox="ssh -i ~/repos/moveloot_server/keys/ml_ec2_key.pem ubuntu@sandbox.moveloot.com"
alias ml_stage="ssh -i ~/repos/moveloot_server/keys/ml_ec2_key.pem ubuntu@52.26.225.82"
alias ml_pac="ssh -i ~/repos/moveloot_server/keys/ml_ec2_key.pem ubuntu@54.191.112.57"
alias tron_prod="ssh -i ~/repos/moveloot_server/keys/ml_ec2_key.pem ubuntu@ec2-54-186-8-23.us-west-2.compute.amazonaws.com"
alias gr='grep -Rnf /dev/stdin . <<<'
alias gri='grep -iRnf /dev/stdin . <<<'
alias fnd='find . | grep -i '

alias psql_local='psql moveloot_server_dev'

setopt APPEND_HISTORY

# deep history of file and who changed what
alias git_deep='git log --follow -p -- . <<<'



function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
RPROMPT='  %{$fg_bold[white]%}$(parse_git_branch)%{$reset_color%}'

gomove
