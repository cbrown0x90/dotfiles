# convient aliases
alias ll 'ls -Fl --color=auto'
alias l 'ls -F --color=auto'
alias la 'ls -Fa --color=auto'
alias lla 'ls -Fla --color=auto'
alias ping 'ping -c3'
alias c 'clear'
function screenshot --wraps scrot --description 'alias screenshot=scrot -e \'mv $f ~/Pictures/Screenshots\''
    scrot -e 'mv $f ~/Pictures/Screenshots'
end
