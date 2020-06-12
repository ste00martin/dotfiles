export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/.go
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/Cellar/mysql@5.6/5.6.34/bin:$PATH"
export PATH="/usr/bin/python:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
USER_BASE_PATH=$(python -m site --user-base)
export PATH=$PATH:$USER_BASE_PATH/bin

export JAVA_HOME=$(/usr/libexec/java_home)

# export ANDROID_HOME=/Users/stefan-work/Library/Android/sdk
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/platform-tools

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# History
## After each command, append to the history file and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

## Shortcuts for all
alias gri='grep -iRnf --no-messages /dev/stdin . <<<'
alias gr='grep -Rnf /dev/stdin . <<<'
alias ocp="rubocop -a"
alias fnd='find . | grep -i '
alias vi=$(which vim)
alias bfg='java -jar ~/.setup/bfg.jar'

REPOS="~/repos"

# deep history of file and who changed what
alias git_deep='git log --follow -p -- . <<<'

alias scripting="cd ${REPOS}/scripting"

alias git_branch_del='git branch | grep -v "master" | xargs git branch -D'

VOLTA_DIRECTORY="${REPOS}/volta"
alias volt="cd ${VOLTA_DIRECTORY}"
alias lambda="cd ${VOLTA_DIRECTORY}/cloud/lambda"
alias mobile="cd ${VOLTA_DIRECTORY}/mobile"
alias volta_lint="cd ${VOLTA_DIRECTORY}/eslint-config-volta"
alias challenges="cd ${VOLTA_DIRECTORY}/code-challenge-responses/"

SecretProfile=~/.volta.sh
if [ -e "$SecretProfile" ]; then
    source $SecretProfile
else
    echo "your super secret profile does not exist"
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# added by Snowflake SnowSQL installer v1.0
export PATH=/Applications/SnowSQL.app/Contents/MacOS:$PATH

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
