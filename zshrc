echo "starting antigene ..."
source ~/dotfiles/antigen/antigen.zsh
source ~/.machine.zsh
source ~/dotfiles/plugins/deploy-to-wildfly/deploy


# Load the oh-my-zsh's library.
antigen use oh-my-zsh

zstyle ':completion:*' use-cache yes

echo "adding bundles to antigene ..."
# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle adb
antigen bundle bower
antigen bundle git
antigen bundle git-flow
antigen bundle gradle
antigen bundle npm
antigen bundle rails
antigen bundle rake-fast
antigen bundle ruby
antigen bundle rvm
antigen bundle osx
antigen bundle history

antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions src
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle clauswitt/zsh-grunt-plugin

# rspec autocompletion by git status
antigen bundle ~/dotfiles/plugins/completions --no-local-clone
# antigen bundle https://github.com/tandibar/dotfiles plugins/completions

echo "... antigene bundles loaded"
# Load the theme.
antigen theme nebirhos
echo "loaded antigene theme 'nebirhos'"
# Tell antigen that you're done.
antigen apply
echo "applied antigene"

############ my own PROMPT
# Based on nebirhos but with linebreak
PROMPT="$HOST_PROMPT_$RUBY_PROMPT_$GIT_PROMPT
%{$fg_bold[green]%}%n@$HOST ➜ %{$reset_color%} "

echo "add azure-cli autocompletion"
. <(azure --completion)

echo "extend path..."
# export PATH="/Users/andi/.rvm/gems/ruby-1.9.3-p392/bin:/Users/andi/.rvm/gems/ruby-1.9.3-p392@global/bin:/Users/andi/.rvm/rubies/ruby-1.9.3-p392/bin:/Users/andi/.rvm/bin:/usr/local/heroku/bin:/Users/andi/bin:/usr/local/bin:/usr/local/share/npm/bin:/usr/local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/share/npm/bin:/Users/andi/.rvm/bin"
# PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH" # add gnu sed
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

echo "export things"
export GIT_AUTHOR_NAME="Andi Bade"
export GIT_AUTHOR_EMAIL="andi.bade@gmail.com"
export GIT_COMMITTER_NAME="Andi Bade"
export GIT_COMMITTER_EMAIL="andi.bade@gmail.com"

export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

export FINDERBOX_APP_RELEASE_KEYSTORE=~/Projekte/finderbox/Keys/finderbox-app-release.keystore
export FINDERBOX_APP_RELEASE_STORE_PW=2klickklack2

export MAVEN_OPTS=-Xmx2048m
export GRADLE_OPTS="-Xms1024m -Xmx4096m"
export JRUBY_OPTS="-J-XX:ReservedCodeCacheSize=100m -J-Xmn512m -J-Xms2048m -J-Xmx2048m -J-server"

export EDITOR='atom'
export VISUAL='atom'
export SOLR_BIN=/usr/local/Cellar/solr/3.4.0/libexec/example

export FINDERBOX_MAVEN_REPO_HOST_NAME='finderbox-ci.cloudapp.net:10022/home/maven/releases'
export FINDERBOX_MAVEN_REPO_PASSWORD='3aqNPG0UKEgvJHgrqcJK'

export FINDERBOX_HOME="~/repos/finderbox/finderbox-home"
export FBX_HOME="~/repos"

export ANSIBLE_VAULT_PASSWORD_FILE=${HOME}/.ansible_vault_pass.txt

echo "exported all environment variables"

echo "creating aliases ..."
alias es_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist"
alias es_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.elasticsearch.plist"
echo "'es_start' and 'es_stop' created"

echo "creating finderbox aliases"
alias fbw="cd $FBX_REPOS/finderbox/finderbox-web-client"
alias fb="cd $FBX_REPOS/finderbox/finderbox"
alias fbm="cd $FBX_REPOS/finderbox-mobileapp"
alias fbam="cd $FBX_REPOS/angular-modules"
alias fr="cd $FBX_REPOS/"
alias fbp="cd $FBX_REPOS/fb-provisioning"
alias fbt="cd $FBX_REPOS/angular-modules/finderbox-translations"
alias fba="cd $FBX_REPOS/angular-modules/finderbox-api"
echo "created finderbox aliases"

echo "creating identplus aliases"
alias spich="cd $IDP_HOME/identpro-spich"
alias base="cd $IDP_HOME/identpro-base"
alias ip="cd $IDP_HOME/identTOP"
alias plus="cd $IDP_HOME/identTOP"
alias ipw="cd $IDP_HOME/identTOP/identplus-web-client/src/main/webapp"
alias ipd="cd $IDP_HOME/identplus-dashboard/"
alias mvni="mvn clean install -DskipTests"
alias mvnp="mvn clean package -DskipTests"
alias mvnd="mvn clean wildfly:deploy -DskipTests"
alias wf="cd $WILDFLY_HOME && ./bin/standalone.sh -Duser.country=DE -Duser.language=de"
echo "created finderbox aliases"

alias git_config_idenpro="git config user.name \"Andi Bade\"; git config user.email \"andreas.bade@identpro.de\""
alias mux="tmuxinator"

echo "... aliases created"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/home/andi/bin/Sencha/Cmd:$PATH"

withPassword() {
  echo -n Password:
  read -s password
}

export EBI_HOME="/home/andi/kbs/ebi"

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

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/andi/.sdkman"
[[ -s "/home/andi/.sdkman/bin/sdkman-init.sh" ]] && source "/home/andi/.sdkman/bin/sdkman-init.sh"
