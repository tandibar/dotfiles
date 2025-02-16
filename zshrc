ZSH_THEME="spaceship" # https://spaceship-prompt.sh/getting-started/#__tabbed_1_3
source $HOME/dotfiles/shell/path.zsh

# from edgedb-cli installation 
fpath+=~/.zfunc

# so that commands are green or red
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(sheldon source)"

source $HOME/dotfiles/shell/aliases.zsh

export HOST_IP=$(hostname -I | awk '{print $1}')
export NODE_OPTIONS=--max_old_space_size=16384

# edgeDB stuff
source "/home/andi/.config/edgedb/env"

export NVM_DIR="$HOME/.nvm"

export BROWSER=google-chrome