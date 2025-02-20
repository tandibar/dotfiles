myip() {
  ip=`dig +short myip.opendns.com @resolver1.opendns.com`
  echo $ip | xclip -sel clip
  echo "your current ip $fg[green] $ip $fg[default] is now in your clipboard"
}

kill_foxit() {
  kill $(ps aux | grep '[f]oxit' | awk '{print $2}')
}

withPassword() {
  echo -n Password:
  read -s password
}

nodeForSudo() {
  sudo ln -s "$NVM_DIR/versions/node/$(nvm version)/bin/node" "/usr/local/bin/node"
  sudo ln -s "$NVM_DIR/versions/node/$(nvm version)/bin/npm" "/usr/local/bin/npm"
  sudo ln -s "$NVM_DIR/versions/node/$(nvm version)/bin/npx" "/usr/local/bin/npx"
}

addHosts() {
  echo "Adding these hosts to /etc/hosts"
  echo "127.0.0.1 solawi-local.app" | sudo tee -a /etc/hosts
  echo "127.0.0.1 hofkollektiv.solawi-local.app" | sudo tee -a /etc/hosts
}