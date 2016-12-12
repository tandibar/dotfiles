echo "set things"
# set PATH "/Users/andi/.rvm/gems/ruby-1.9.3-p392/bin:/Users/andi/.rvm/gems/ruby-1.9.3-p392@global/bin:/Users/andi/.rvm/rubies/ruby-1.9.3-p392/bin:/Users/andi/.rvm/bin:/usr/local/heroku/bin:/Users/andi/bin:/usr/local/bin:/usr/local/share/npm/bin:/usr/local/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/share/npm/bin:/Users/andi/.rvm/bin"
# PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
set -x PATH "$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
set -x PATH "/usr/local/opt/gnu-sed/libexec/gnubin:$PATH" # add gnu sed
set PATH $PATH /Users/andreasbade/Library/Python/2.7/bin # add python bin

set -x GIT_AUTHOR_NAME "Andreas Bade"
set -x GIT_AUTHOR_EMAIL "andreas.bade@identpro.de"
set -x GIT_COMMITTER_NAME "Andreas Bade"
set -x GIT_COMMITTER_EMAIL "andreas.bade@identpro.de"

set -x NODE_PATH /usr/local/lib/node
set -x NODE_PATH $NODE_PATH:/usr/local/lib/node_modules
set -x JAVA_HOME (eval /usr/libexec/java_home)

set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

set -x FINDERBOX_APP_RELEASE_KEYSTORE /Users/andreasbade/Projekte/finderbox/Keys/finderbox-app-release.keystore
set -x FINDERBOX_APP_RELEASE_STORE_PW 2klickklack2

set -x MAVEN_OPTS -Xmx2048m
set -x GRADLE_OPTS "-Xms1024m -Xmx4096m"
set -x JRUBY_OPTS "-J-XX:ReservedCodeCacheSize=100m -J-Xmn512m -J-Xms2048m -J-Xmx2048m -J-server"
set -x ANDROID_HOME /usr/local/opt/android-sdk

set -x EDITOR 'atom'
set -x VISUAL 'atom'
set -x SOLR_BIN /usr/local/Cellar/solr/3.4.0/libexec/example

set -x FINDERBOX_MAVEN_REPO_HOST_NAME 'finderbox-ci.cloudapp.net:10022/home/maven/releases'
set -x FINDERBOX_MAVEN_REPO_PASSWORD '3aqNPG0UKEgvJHgrqcJK'

set -x FINDERBOX_HOME "/Users/andreasbade/repos/finderbox/finderbox-home"
set -x ANSIBLE_VAULT_PASSWORD_FILE "$HOME/.ansible_vault_pass.txt"

echo "exported all environment variables"
rvm default

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

alias mux tmuxinator
