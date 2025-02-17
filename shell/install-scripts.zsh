install-zellij() {
  curl -L https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz -o zellij.tar.gz
  tar -xvf zellij.tar.gz
  chmod +x zellij
  sudo mv zellij /home/andi/bin
}
