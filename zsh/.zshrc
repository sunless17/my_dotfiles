# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob nomatch
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

alias ls="eza --almost-all"
alias hx="helix"
alias r="rmm"

#Default prompt
# PROMPT='%F{blue}%~%f '
# RPROMPT="%T %D{%a %b %d}"

# fzf and starship
eval "$(fzf --zsh)"
eval "$(starship init zsh)"

# plugins
source $HOME/.config/zsh-plugs/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh-plugs/zsh-autosuggestions/zsh-autosuggestions.zsh
