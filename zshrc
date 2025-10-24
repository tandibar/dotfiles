source $HOME/dotfiles/shell/path.zsh

# so that commands are green or red
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH="$HOME/.local/share/sheldon/repos/github.com/ohmyzsh/ohmyzsh"

# has to be before sheldon source, because
# sheldon will load the plugins via oh-my-zsh
plugins=(
  aws
  docker
  docker-compose
  extract
  git
  node
  npm
  nvm
  ssh-agent
  sudo # esc twice
  zsh-interactive-cd
  zsh-navigation-tools # https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/zsh-navigation-tools#introduction
)

eval "$(sheldon source)"

source $HOME/dotfiles/shell/aliases.zsh
source $HOME/dotfiles/shell/functions.zsh
source $HOME/dotfiles/shell/install-scripts.zsh

export HOST_IP=$(hostname -I | awk '{print $1}')
export NODE_OPTIONS=--max_old_space_size=16384

export BROWSER=google-chrome

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/andi/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/andi/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/andi/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/andi/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# AsyncAPI CLI Autocomplete

ASYNCAPI_AC_ZSH_SETUP_PATH=/home/andi/.cache/@asyncapi/cli/autocomplete/zsh_setup && test -f $ASYNCAPI_AC_ZSH_SETUP_PATH && source $ASYNCAPI_AC_ZSH_SETUP_PATH; # asyncapi autocomplete setup


