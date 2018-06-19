# cowsay on launch
fortune -s | cowsay

# modify the path
set -gx PATH ~/.scripts $PATH /usr/local/bin /usr/sbin /sbin
set -gx VDPAU_DRIVER nouveau
set -gx VDPAU_DRIVER nouveau

# remove the fish greeting
set fish_greeting ""

# load other files
. $HOME/.config/fish/aliases.fish
. $HOME/.config/fish/colors.fish
