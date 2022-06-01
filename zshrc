echo "starting antigene ..."
source ~/dotfiles/antigen/antigen.zsh
source ~/.machine.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

zstyle ':completion:*' use-cache yes

echo "adding bundles to antigene ..."
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle adb
antigen bundle git
antigen bundle git-flow
antigen bundle gradle
antigen bundle npm
antigen bundle yarn
antigen bundle history
antigen bundle nvm
antigen bundle rvm

antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-history-substring-search

# https://github.com/lukechilds/zsh-better-npm-completion
antigen bundle lukechilds/zsh-better-npm-completion

# kubectl autocompletion
if [ /usr/bin/kubectl ]; then source <(kubectl completion zsh); fi # Fügen Sie der Zsh-Shell dauerhaft Autocomplete hinzu

echo "... antigene bundles loaded"
# Load the theme.
# antigen theme nebirhos
# antigen theme jonathan # https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#jonathan
# antigen theme robbyrussell # https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#robbyrussell
antigen theme kennethreitz # https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#kennethreitz
# antigen theme simple # https://github.com/ohmyzsh/ohmyzsh/wiki/Themes#simple
echo "loaded antigene theme"
# Tell antigen that you're done.
antigen apply
echo "applied antigene"

############ my own PROMPT
# Based on nebirhos but with linebreak
# PROMPT="$HOST_PROMPT_$RUBY_PROMPT_$GIT_PROMPT
# %{$fg_bold[green]%}%n@$HOST ➜ %{$reset_color%} "

echo "extend path..."

echo "export things"
#export GIT_AUTHOR_NAME="Andi Bade"
#export GIT_AUTHOR_EMAIL="andi.bade@gmail.com"
#export GIT_COMMITTER_NAME="Andi Bade"
#export GIT_COMMITTER_EMAIL="andi.bade@gmail.com"

export EDITOR='codium --wait'
export VISUAL='codium --wait'

export PATH="/home/andi/.yarn/bin:$PATH"
export JAVA_OPTS="-Xms128m -Xmx4096m"
export PATH="$PATH:$HOME/.npm/bin"
export VAULT_ADDR="https://vault.cloud.kbs.de"

# https://docs.microsoft.com/de-de/sql/linux/sql-server-linux-setup-tools?view=sql-server-ver15#ubuntu
export PATH="$PATH:/opt/mssql-tools/bin/"

echo "exported all environment variables"

echo "creating aliases ..."
alias bt='cd /home/andi/Projekte/brautagebuch/brautagebuchapp/'
alias pi='cd /home/andi/Projekte/raspberry/'
alias k3s='cd /home/andi/Projekte/raspberry/pi-k8s'
alias ebase='cd /home/andi/Projekte/edscha/code/ebase5'
alias tio='cd /home/andi/Projekte/ticket-io/'

alias awsume=". awsume"

echo "creating kbs aliases"
export KBS_HOME="~/Projekte/kbs"
alias mux="tmuxinator"
echo "... aliases created"

myip() {
  ip=`dig +short myip.opendns.com @resolver1.opendns.com`
  echo $ip | xclip -sel clip
  echo "your current ip $fg[green] $ip $fg[default] is now in your clipboard"
}

alias pbcopy="xclip -sel clip"

kill_foxit() {
  kill $(ps aux | grep '[f]oxit' | awk '{print $2}')
}

withPassword() {
  echo -n Password:
  read -s password
}

export EBI_HOME="/home/andi/Projekte/kbs/ebi"

ebiNpmActivate() {
  export NODE_EXTRA_CA_CERTS='/home/andi/certificates/ebi-cacert.pem'
  sudo npm config -g set cafile $NODE_EXTRA_CA_CERTS
  npm config set registry https://nexus.cloud.kbs.de/repository/npm-all
}

ebiNpmDeactivate() {
  npm config set registry https://registry.npmjs.org/
  sudo npm config -g rm cafile
}

echo "activating pyenv..."
export PATH="/home/andi/.pyenv/shims:/home/andi/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
echo "... pyenv activated"

echo "adding cargo (rust) to path..."
export PATH="/home/andi/.cargo/bin:$PATH"

BEEP_SOUND="/usr/share/sounds/gnome/default/alerts/drip.ogg"
echo "beep mit pyenv..."
alias beep="paplay $BEEP_SOUND"

alias mount-paperless="sudo mount 192.168.178.200:/export/scan-ohne-paperless /home/andi/Documents/Scan && sudo mount 192.168.178.200:/export/paperless-consumer /home/andi/Documents/paperless-ng-consumer"

. $(pack completion --shell zsh)
if [ /usr/bin/kubectl ]; then source <(kubectl completion zsh); fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/andi/.sdkman"
[[ -s "/home/andi/.sdkman/bin/sdkman-init.sh" ]] && source "/home/andi/.sdkman/bin/sdkman-init.sh"
if [ -e /home/andi/.nix-profile/etc/profile.d/nix.sh ]; then . /home/andi/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# Created by `pipx` on 2022-05-09 09:40:16
export PATH="$PATH:/home/andi/.local/bin"

# pipx autocompletion
eval "$(register-python-argcomplete pipx)"