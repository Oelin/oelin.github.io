echo '[01/12] Install cURL...'

sudo apt install -y curl

echo '[02/12] Install Git...'

sudo apt install -y git

echo '[03/12] Install Python, pip and venv...'

sudo apt install -y python3 python3-pip python3-venv

echo '[04/12] Configure venv...'

python3 -m venv ~/venv

source ~/venv/bin/activate

echo 'source ~/venv/bin/activate' >> ~/.bashrc

echo '[05/12] Install Poetry...'

curl -sSL https://install.python-poetry.org | python3 -

echo '[06/12] Install theme.sh...'

sudo curl -Lo /usr/bin/theme.sh 'https://git.io/JM70M' && sudo chmod +x /usr/bin/theme.sh

echo '[07/12] Configure theme.sh...'

theme.sh spaceduck

echo 'theme.sh `tail -1 ~/.theme_history`' >> ~/.bashrc

echo '[08/12] Install nvm...'

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

echo '[09/12] Configure nvm...'

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

echo '[10/12] Install Node and npm...'

nvm install node

echo '[11/12] Configure path...'

export PATH="/home/user/.local/bin:$PATH"

echo '[12/12] Configure prompt...'

export PS1="\[\033[01;32m\]\$\[\033[00m\] "

source ~/.bashrc
