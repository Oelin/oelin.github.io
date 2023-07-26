# Bash.

sudo apt install -y curl

curl https://codeberg.org/kore/.bashrc/raw/branch/main/src/.bashrc > ~/.bashrc

sudo curl -Lo /usr/bin/theme.sh 'https://git.io/JM70M' && sudo chmod +x /usr/bin/theme.sh

# Vim.

sudo apt install -y vim

curl https://codeberg.org/kore/.vimrc/raw/branch/main/src/.vimrc > ~/.vimrc

# Python.

sudo apt install -y python3 python3-full python3-pip python3-venv

sudo curl -sL install.python-poetry.org | python3 -

mkdir ~/.venv

python3 -m venv ~/.venv/venv

# Node.

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash

. ~/.bashrc
