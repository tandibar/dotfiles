echo "setup pyenv"
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source


echo "erstelle aliase"
alias mux tmuxinator

echo "setze EBI_HOME"
set -x EBI_HOME /home/andi/Projekte/kbs/ebi
set -x EDITOR codium --wait

alias asciicast2gif 'docker run --rm -v $PWD:/data asciinema/asciicast2gif'

alias bt 'cd /home/andi/Projekte/brautagebuch/brautagebuchapp/'

set -x PATH /home/andi/.yarn/bin $PATH

set -x JAVA_OPTS "-Xms128m -Xmx4096m"

set -x PATH $PATH $HOME/.npm/bin

set -x VAULT_ADDR https://vault.cloud.kbs.de

rvm default

# deactivate capslock
# gsettings set org.gnome.desktop.input-sources xkb-options "['caps:none']"