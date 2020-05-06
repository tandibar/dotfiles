echo "setup pyenv"
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
status --is-interactive; and pyenv init - | source
status --is-interactive; and pyenv virtualenv-init - | source


echo "erstelle aliase"
alias mux tmuxinator

echo "setze EBI_HOME"
set -x EBI_HOME /home/andi/Projekte/kbs/ebi
set -x EDITOR code --wait
