# Lines configured by zsh-newuser-install
HISTFILE=~/.zhistfile
HISTSIZE=1000
SAVEHIST=1000

# -- Bindkeys --
bindkey -v
bindkey '^R' history-incremental-search-backward
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/<user>/.zshrc'

# Tab complete
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

autoload -U colors && colors
# End of lines added by compinstall

# Prompt
# It's all jank beacuse IDK what I'm doing but prompt fade blue adds color as an
# option to konsole and then I load the theme I want.
autoload -Uz promptinit
promptinit
prompt fade blue
source ~/.config/zsh/agnoster.zsh-theme

# -- Aliases --
alias ls='ls --color=auto'
alias ll="ls -al --color=auto"
alias pbcopy="xclip -selection clipboard"
alias docker="podman"
alias cp='cp -iv'
alias rcp='rsync -v --progress'

