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