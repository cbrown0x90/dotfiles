# cowsay on launch
fortune -s | cowsay

# modify the path
set -gx PATH ~/.scripts $PATH /usr/local/bin /usr/sbin /sbin
set -gx JAVA_HOME /opt/icedtea-bin-3.0.1
set -gx ANDROID_SWT /usr/share/swt-3.7/lib

# load the color scheme
eval sh /home/chris/.config/base16-shell/base16-twilight.dark.sh

# remove the fish greeting
set fish_greeting ""

# load other files
. $HOME/.config/fish/aliases.fish
. $HOME/.config/fish/colors.fish
