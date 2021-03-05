# the fish prompt command
function fish_prompt
    if set -q VIRTUAL_ENV
        echo -n -s (set_color yellow) "[" (basename "$VIRTUAL_ENV") "]" (set_color normal) " "
    end

    set_color blue
    echo -n "$USER"
    set_color normal
    echo -n "@"
    set_color red
    echo -n (hostname -s)" "
    set_color $fish_color_cwd
    echo -n (pwd | sed -e "s|^$HOME|~|")
    set_color normal
    echo -n ' $ '
end
