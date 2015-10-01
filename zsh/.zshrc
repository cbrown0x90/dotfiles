source /usr/share/zsh/scripts/antigen/antigen.zsh

antigen bundle git
antigen bundle pip
antigen bundle rsync
antigen bundle python
antigen bundle virtualenvwrapper
antigen bundle node
antigen bundle npm
antigen bundle bundler
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle kennethreitz/autoenv
antigen bundle command-not-found
antigen bundle history
antigen bundle fabric

# Created by newuser for 5.1.1
autoload -U compinit
compinit

export LC_CTYPE=en_US.UTF-8

autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "
alias ll='ls --color=auto -l'
alias la='ls --color=auto -a'
alias lla='ls --color=auto -a -l'
alias l='ls --color=auto'
alias ls='ls --color=auto'
alias 'sudo pacman -R'='sudo pacman -Rns'
alias please='eval "sudo $(fc -ln -1)"'
alias c=clear

if [[ $TERM == 'screen' ]]; then
    export TERM='screen-256color'
fi
source /usr/share/doc/pkgfile/command-not-found.zsh
