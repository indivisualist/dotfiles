HISTFILE=~/.histfile
HISTSIZE=20000
SAVEHIST=20000
setopt appendhistory extendedglob
bindkey -v
zstyle :compinstall filename '/home/matthias/.zshrc'

autoload -Uz compinit promptinit colors
compinit
promptinit
colors

PROMPT="%~%{$fg[red]%}%#%{$reset_color%} "
#RPROMPT="[%n@%m]"
