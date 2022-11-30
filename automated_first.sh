# update + upgrade repositories
sudo apt update
sudo apt upgrade

# install basic packages
sudo apt install git build-essential apt-transport-https curl wget mlocate redis-server mysql-server postgresql postgresql-contrib nginx

# remove not needed packages
sudo apt remove gnome-mines gnome-mahjongg gnome-todo gnome-todo-common gnome-sudoku aisleriot firefox
sudo apt autoremove 
sudo snap remove firefox

# install golang
sudo rm -rf /usr/local/go
wget https://go.dev/dl/go1.19.3.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf go1.19.3.linux-amd64.tar.gz
echo 'export PATH="$PATH:/usr/local/go/bin"' >> ~/.bashrc
source ~/.bashrc
rm -rf go1.19.3.linux-amd64.tar.gz

# install nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 16
npm i -g yarn pnpm

# install mongodb
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
systemctl status mongod 


