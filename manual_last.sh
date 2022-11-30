#######################
### Set up Postgres ###
####################### 
sudo -u postgres createuser --interactive # create a user (with same name as the linux username ==> nexus)

sudo -u postgres psql
# inside the psql console
create database nexus;
\q

sudo -u nexus psql
# inside the psql console
ALTER USER nexus WITH PASSWORD 'nexus';
\q


####################
### Set up Redis ###
####################
sudo gedit /etc/redis/redis.conf
supervised systemd # probabbly on line 147 (earlier it would be supervised no, change no to systemd)
sudo systemctl restart redis.service
sudo systemctl status redis
redis-cli ping # to test the installation

