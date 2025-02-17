export ANDI_PROJECTS_ROOT="/home/andi/projects"
alias ebase="cd $ANDI_PROJECTS_ROOT/edscha/code/ebase5"
alias tio="cd $ANDI_PROJECTS_ROOT/ticket-io/"
alias schooljet="cd $ANDI_PROJECTS_ROOT/schooljet/"
alias solawi="cd $ANDI_PROJECTS_ROOT/solawi/"

alias pbcopy="xclip -sel clip"

alias git-remove-untracked="git fetch -p ; git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d"
alias curltime="curl -w \"@$HOME/dotfiles/curl-timing.txt\""

alias git-clean-merged-branches='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'

alias emu="cd /home/andi/Android/Sdk/emulator/ && /home/andi/Android/Sdk/emulator/emulator -avd Pixel_6_API_34"

alias dcu="docker compose up -d"
alias dcd="docker compose down"
alias dc="docker compose"

alias ll="ls -als"