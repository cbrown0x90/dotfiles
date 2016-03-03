# cowsay on launch
fortune -s | cowsay -f (ls /home/chris/.scripts/cowsay | shuf | head -n 1)

# modify the path
set -gx PATH $PATH /usr/local/bin

# ?
export LC_CTYPE=en_US.UTF-8
export TERM='screen-256color'

# load the color scheme
eval sh /home/chris/.config/base16-shell/base16-twilight.dark.sh

# remove the fish greeting
set fish_greeting ""

# load other files
. $HOME/.config/fish/aliases.fish
. $HOME/.config/fish/colors.fish
