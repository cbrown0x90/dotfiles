# convient aliases
alias ll 'ls -Fl --color=auto'
alias l 'ls -F --color=auto'
alias la 'ls -Fa --color=auto'
alias lla 'ls -Fla --color=auto'
alias ping 'ping -c3'
alias scrot 'scrot -e \'mv $f ~/Pictures/Screenshots/\''
alias vim nvim
alias c 'clear'

# typing please runs last command with sudo
function please
    eval sudo $history[1]
end
