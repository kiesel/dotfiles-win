export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="candy"
# Uncomment the following line to disable command auto-correction.
DISABLE_CORRECTION="true"
zstyle ':completion:*' special-dirs true

plugins=(git svn ssh-agent)

source $ZSH/oh-my-zsh.sh
source $HOME/.homesick/repos/homeshick/homeshick.sh

# User configuration
export PATH="$PATH:/home/Alex/bin"

export BASE="/home/kiesel"

#ps faux | grep -q '/usr/bin/nc'
#if [ $? -ne 0 ]; then
#  nohup ~/bin/net-invoke.sh >~/net-invoke.log &
#fi
