# # Colors
autoload -U colors
colors
setopt prompt_subst

# # Show completion on first TAB
setopt menucomplete

# # Load completions for Ruby, Git, etc.
autoload compinit
compinit

