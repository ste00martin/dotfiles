source ~/.profile

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
alias git=hub

## Shortcuts for work
alias cds="cd ~/repos/chipotle/chipotle-cms/public/themes/chipotle-demo-theme"
alias cms="cd ~/repos/chipotle/chipotle-cms"

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

# Prompt
PROMPT='%{$fg_bold[white]%} %n:%c> %{$reset_color%}'
RPROMPT='   %{$fg_bold[white]%}$(parse_git_branch)%{$reset_color%}'

