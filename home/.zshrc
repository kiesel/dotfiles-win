# Uncomment the following line to disable command auto-correction.
DISABLE_CORRECTION="true"
zstyle ':completion:*' special-dirs true

# Only run in interactive shell;
if [ -z "$PS1" ]; then
  return;
fi

source $HOME/.homesick/repos/homeshick/homeshick.sh
source $HOME/.homesick/repos/zgen/zgen.zsh

if ! zgen saved; then
  zgen oh-my-zsh

  zgen oh-my-zsh plugins/git
  zgen oh-my-zsh themes/ys

  zgen save
fi


# User configuration
export PATH="$PATH:$HOME/bin"

export BASE="/home/kiesel"

alias hs=homeshick
#ps faux | grep -q '/usr/bin/nc'
#if [ $? -ne 0 ]; then
#  nohup ~/bin/net-invoke.sh >~/net-invoke.log &
#fi
