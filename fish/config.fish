# cowsay on launch
fortune -s | cowsay

# modify the path
set -gx PATH ~/.scripts $PATH /usr/local/bin /usr/sbin /sbin /usr/games/bin
set -gx JAVA_HOME /opt/icedtea-bin-3.0.1

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
