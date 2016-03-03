# the fish prompt command
function fish_prompt
	set_color blue
	echo -n "$USER"
	set_color normal
	echo -n "@"
	set_color red
	echo -n (hostname -s) ""
	set_color $fish_color_cwd
	echo -n $PWD | sed -e "s|^$HOME|~|" -e 's|^/private||'
	set_color normal
	echo -n ' $ '
end
