# the fish prompt command
function fish_prompt
    set_color blue
    echo -n (whoami)
    set_color normal
    echo -n "@"
    set_color red
    echo -n (hostname)" "
    set_color $fish_color_cwd
    echo -n $PWD | sed -e "s|^$HOME|~|" -e 's|^/private||'
    set branch (git branch ^/dev/null | sed -n '/\* /s///p')
    if [ $branch ]
        set_color normal
        echo -n " "
        set_color yellow
        echo -n "["$branch"]"
    end
    set_color normal
    echo -n ' $ '
end
