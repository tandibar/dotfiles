install-zellij() {
  curl -L https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz -o zellij.tar.gz
  tar -xvf zellij.tar.gz
  chmod +x zellij
  sudo mv zellij /home/andi/bin
}

installDockerCredHelpers() {
  curl -L https://github.com/docker/docker-credential-helpers/releases/latest/download/docker-credential-pass-v0.8.2.linux-amd64 -o docker-credential-pass
  chmod +x docker-credential-pass
  sudo mv docker-credential-pass /home/andi/bin
}