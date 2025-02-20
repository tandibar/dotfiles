source $HOME/dotfiles/shell/path.zsh

# so that commands are green or red
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH="$HOME/.local/share/sheldon/repos/github.com/ohmyzsh/ohmyzsh"

eval "$(sheldon source)"

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

source $HOME/dotfiles/shell/aliases.zsh
source $HOME/dotfiles/shell/functions.zsh
source $HOME/dotfiles/shell/install-scripts.zsh

export HOST_IP=$(hostname -I | awk '{print $1}')
export NODE_OPTIONS=--max_old_space_size=16384

export BROWSER=google-chrome

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
