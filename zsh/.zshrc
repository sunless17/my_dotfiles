# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
setopt autocd extendedglob nomatch cd_silent list_packed correct_all

# auto completion
zstyle :compinstall filename '$HOME/.zshrc'
autoload -Uz compinit
compinit
zstyle ':completion::complete:*' gain-privileges 1

# aliases
alias ls="eza --almost-all"
alias hx="helix"
alias r="rmm"

# plugins first download
source $HOME/.config/zsh-plugs/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh-plugs/zsh-autosuggestions/zsh-autosuggestions.zsh

# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /usr/share/doc/pkgfile/command-not-found.zsh

# fzf and starship
eval "$(fzf --zsh)"
eval "$(starship init zsh)"
