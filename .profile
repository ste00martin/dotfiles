export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/Cellar/mysql@5.6/5.6.34/bin:$PATH"

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

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

VOLTA_DIRECTORY="~/repos/volta"
alias volta="cd ${VOLTA_DIRECTORY}"
alias lambda="cd ${VOLTA_DIRECTORY}/lambda"
alias mobile="cd ${VOLTA_DIRECTORY}/mobile"
alias eslint="cd ${VOLTA_DIRECTORY}/eslint-config-volta"
alias challenges="cd ${VOLTA_DIRECTORY}/code-challenge-responses/"

SecretProfile=~/.secret-profile
if [ -e "$SecretProfile" ]; then
    source $SecretProfile
else
    echo "your super secret profile does not exist"
fi
