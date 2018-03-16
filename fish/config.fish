# cowsay on launch
fortune -s | cowsay

eval (python -m virtualfish auto_activation)

# modify the path
set -gx JAVA_HOME /opt/oracle-jdk-bin-1.8.0
set -gx PATH ~/.scripts $PATH /usr/local/bin /usr/sbin /sbin $JAVA_HOME/bin
set -gx ANDROID_SWT /usr/share/swt-3.7/lib
set -gx VDPAU_DRIVER nouveau
set -gx VDPAU_DRIVER nouveau

# load the color scheme
eval sh /home/chris/.config/base16-shell/base16-twilight.dark.sh

# remove the fish greeting
set fish_greeting ""

# load other files
. $HOME/.config/fish/aliases.fish
. $HOME/.config/fish/colors.fish
