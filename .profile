export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/Cellar/mysql@5.6/5.6.34/bin:$PATH"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

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
alias volta="cd ~/repos/volta/"
alias mobile="cd ~/repos/volta/mobile/"
alias eslint="cd ~/repos/volta/eslint-config-volta/"

SecretProfile=./.secret-profile
if [ -e "$SecretProfile" ]; then
    source $SecretProfile
else
    echo "Secret Profile does not exist"
fi
