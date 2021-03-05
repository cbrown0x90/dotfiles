# cowsay on launch
fortune -s | cowsay

# modify the path
set -gx PATH $PATH $HOME/.scripts

# ?
export LC_CTYPE=en_US.UTF-8

# remove the fish greeting
set fish_greeting ""

# load other files
. $HOME/.config/fish/aliases.fish
. $HOME/.config/fish/colors.fish

if status is-interactive
    switch $TERM

        # Fix DEL key in st
        case 'st*'
            set -gx is_simple_terminal 1

        case "linux"
            set -e is_simple_terminal
    end

    if set -q is_simple_terminal
        tput smkx ^/dev/null
        function fish_enable_keypad_transmit --on-event fish_postexec
            tput smkx ^/dev/null
        end

        function fish_disable_keypad_transmit --on-event fish_preexec
            tput rmkx ^/dev/null
        end
    end
end
