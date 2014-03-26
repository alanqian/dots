
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
