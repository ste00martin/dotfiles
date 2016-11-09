export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
#export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

## Shortcuts for all
alias gri='grep -iRnf /dev/stdin . <<<'
alias gr='grep -Rnf /dev/stdin . <<<'
alias ocp="rubocop -a"
alias fnd='find . | grep -i '
alias vi=$(which vim)
alias gorepos="cd ~/repos/"

# deep history of file and who changed what
alias git_deep='git log --follow -p -- . <<<'

CMS_DIRECTORY="~/repos/chipotle/chipotle-cms"
THEMES_DIRECTORY="public/themes"
alias cdt="cd ${CMS_DIRECTORY}/${THEMES_DIRECTORY}/chipotle-demo-theme"
alias cct="cd ${CMS_DIRECTORY}/${THEMES_DIRECTORY}/chipotle-careers-theme"
alias plt="cd ${CMS_DIRECTORY}/${THEMES_DIRECTORY}/pizzeria-locale-theme"
alias skt="cd ${CMS_DIRECTORY}/${THEMES_DIRECTORY}/shophouse-kitchen-theme"
alias cms="cd ${CMS_DIRECTORY}"

