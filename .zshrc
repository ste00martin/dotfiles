
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/repos/moveloot_server/keys/ml_ec2_key.pem | /usr/bin/head -1)"
#export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"

export JAVA_HOME=$(/usr/libexec/java_home)
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
alias textur="psql -h textur-mepwknbdst.cpxmzuem2qct.us-west-2.redshift.amazonaws.com -p 5439 -U stefan textur"
alias ml_prod="ssh -i ~/repos/moveloot_server/keys/ml_ec2_key.pem ubuntu@52.27.4.141"
alias ml_sandbox="ssh -i ~/moveloot_server/keys/ml_ec2_key.pem ubuntu@sandbox.moveloot.com"
alias ml_stage="ssh -i ~/moveloot_server/keys/ml_ec2_key.pem ubuntu@54.213.3.137"
alias ml_pac="ssh -i ~/moveloot_server/keys/ml_ec2_key.pem ubuntu@54.191.112.57"
alias tron_prod="ssh -i ~/moveloot_server/keys/ml_ec2_key.pem ubuntu@ec2-54-186-8-23.us-west-2.compute.amazonaws.com"


setopt APPEND_HISTORY



function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
RPROMPT='%{$fg_bold[white]%}$(parse_git_branch)%{$reset_color%}'

