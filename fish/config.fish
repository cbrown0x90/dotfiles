fortune -s | cowsay -f (ls /home/chris/.scripts/cowsay | shuf | head -n 1)

set -gx PATH $PATH /usr/local/bin

export LC_CTYPE=en_US.UTF-8
export TERM='screen-256color'

eval sh /home/chris/.config/base16-shell/base16-twilight.dark.sh

set fish_greeting ""

# Load aliases
if [ -f $HOME/.config/fish/aliases.fish ]
    . $HOME/.config/fish/aliases.fish
end
if [ -f $HOME/.config/fish/colors.fish ]
	. $HOME/.config/fish/colors.fish
end

env -i HOME=$HOME dash -l -c printenv | sed -e '/PATH/s/:/ /g;s/=/ /;s/^/set -x /' | source
