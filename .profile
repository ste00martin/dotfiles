export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# History
## After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

## Shortcuts for all
alias gri='grep -iRnf /dev/stdin . <<<'
alias gr='grep -Rnf /dev/stdin . <<<'
alias ocp="rubocop -a"
alias fnd='find . | grep -i '
alias vi=$(which vim)
alias gorepos="cd ~/repos/"

# deep history of file and who changed what
alias git_deep='git log --follow -p -- . <<<'

GITHUB_REPO_DIRECTORY="~/repos"
CMS_DIRECTORY="${GITHUB_REPO_DIRECTORY}/chipotle/chipotle-cms"
THEMES_DIRECTORY="public/themes"
alias cms_deploy="cd ${GITHUB_REPO_DIRECTORY}/chipotle/chipotle-chef/apps/chipotle"
alias cms="cd ${CMS_DIRECTORY}"
alias cdt="cd ${CMS_DIRECTORY}/${THEMES_DIRECTORY}/chipotle-demo-theme"
alias cct="cd ${CMS_DIRECTORY}/${THEMES_DIRECTORY}/chipotle-careers-theme"
alias plt="cd ${CMS_DIRECTORY}/${THEMES_DIRECTORY}/pizzeria-locale-theme"
alias tmt="cd ${CMS_DIRECTORY}/${THEMES_DIRECTORY}/tastymade-theme"
alias skt="cd ${CMS_DIRECTORY}/${THEMES_DIRECTORY}/shophouse-kitchen-theme"

alias chevron="cd ${GITHUB_REPO_DIRECTORY}/chevron-external-sites"
alias fb4b="cd ${GITHUB_REPO_DIRECTORY}/fb4b-prototyping"

