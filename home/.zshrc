# Uncomment the following line to disable command auto-correction.
DISABLE_CORRECTION="true"
zstyle ':completion:*' special-dirs true

# Only run in interactive shell;
if [ -z "$PS1" ]; then
  return;
fi

export \
  WORMHOLE_REMOTE="/home/kiesel" \
  WORMHOLE_LOCAL="A:" \
  WORMHOLE_EDITOR="C:/Program Files/Sublime Text 3/sublime_text.exe"

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
alias reload="source ~/.zshrc"
alias zshrc="vim ~/.zshrc && reload"

eval $(/usr/bin/ssh-pageant -r -a "/tmp/.ssh-pageant-$USERNAME")
(nohup $HOME/bin/wormhole.exe -quiet -configfile=C:/tools/cygwin/home/Alex/.homesick/repos/dotfiles-win/home/.wormhole.yml 2>&1 >/dev/null &)
