echo "  ___         _                _           _     _    __ _ _        "
echo " |   \ _ _ _ | |_  _ _ __  ___( )___    __| |___| |_ / _(_) |___ ___"
echo " | |) | '_| || | || | '  \/ -_)/(_-<  _/ _\` / _ \  _|  _| | / -_|_-<"
echo " |___/|_|  \__/ \_,_|_|_|_\___| /__/ (_)__,_\___/\__|_| |_|_\___/__/"
echo "                                                                    "
echo ""

if ! [ -x "$(command -v node)" ]; then
  echo "Installing NodeJS (8 LTS)"
  wget -qO- https://deb.nodesource.com/setup_8.x | sudo -E bash -
  sudo apt install -y nodejs  
fi

if ! [ -x "$(command -v git)" ]; then
  sudo apt install -y git
fi
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


node install.js