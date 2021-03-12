function kbs_npm
  switch "$argv"
    case "a" "activate"
      set -x NODE_EXTRA_CA_CERTS '/home/andi/certificates/ebi-cacert.pem'
      # sudo npm config -g set cafile $NODE_EXTRA_CA_CERTS
      npm config set registry https://nexus.cloud.kbs.de/repository/npm-all
      sudo npm config set registry https://nexus.cloud.kbs.de/repository/npm-all
      echo "KBS npm wurde aktiviert. Es wird jetzt der Nexus als registry verwendet."
      echo "Funktioniert natürlich nur im KBS Dev VPN."
    case "d" "deactivate"

      npm config set registry https://registry.npmjs.org/
      sudo npm config set registry https://registry.npmjs.org/
      # sudo npm config -g rm cafile
      echo "KBS npm wurde deaktiviert. Es wird jetzt wieder die standard Registry von npm verwendet."
    case '*'
      echo "Ich kann nur 'activate' und 'deactivate' bzw. 'd' und 'a' verstehen."
  end
end