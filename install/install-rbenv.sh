# uninstall ruby
sudo apt-get remove ruby
sudo dpkg -S /usr/bin/ruby1.9.1
sudo apt-get remove ruby1.9.1 libruby1.9.1
# uninstall rvm
rvm implode
# install common lib
sudo apt-get install build-essential libreadline-dev libssl-dev zlib1g-dev libxml2-dev libxslt-dev
sudo apt-get install curl git git-core
sudo apt-get install libmysqlclient-dev
sudo apt-get install libsqlite3-dev
sudo apt-get install libxslt-dev libxml2-dev libssl-dev
sudo apt-add-repository -y ppa:chris-lea/node.js
sudo apt-get -y update
sudo apt-get -y install nodejs

# install rbenv to /opt/rbenv
sudo mkdir /opt/rbenv
sudo chown -R alan:alan /opt/rbenv
git clone https://github.com/sstephenson/rbenv.git /opt/rbenv

cat <<_RBENV > rbenv.sh
export RBENV_ROOT="/opt/rbenv"
if [ -d "\${RBENV_ROOT}" ]; then
  export PATH="\${RBENV_ROOT}/bin:\${PATH}"
  eval "\$(rbenv init -)"
fi
_RBENV
sudo chmod +x rbenv.sh
sudo cp rbenv.sh /etc/profile.d/
sudo chown root:root /etc/profile.d/rbenv.sh
source /etc/profile.d/rbenv.sh
echo "source /etc/profile.d/rbenv.sh" >> .bashrc

# check rbenv
rbenv -v

# install rbenv plugins, include ruby-build
curl https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
# install the dependencies
# rbenv bootstrap-ubuntu-12-04
# install ruby-build
# git clone https://github.com/sstephenson/ruby-build.git /opt/rbenv/plugins/ruby-build

# Install ruby
rbenv install 2.0.0-p247
rbenv rehash
rbenv global 2.0.0-p247
rbenv rehash

# check ruby
ruby -v

# install gems
gem install bundler
rbenv rehash

# install rails
gem install rails --version 4.0.0
rbenv rehash

# check rails
rails -v

# install mysql2-..-gem
gem install mysql2
gem install sqlite3
