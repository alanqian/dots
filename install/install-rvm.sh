sudo apt-get install build-essential git-core
bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)

echo '[[ -s "~/.rvm/scripts/rvm" ]] && source "~/.rvm/scripts/rvm"' >> ~/.bashrc
source ~/.bashrc

type rvm | head -1

# rvm install 1.9.3
# rvm use --default 1.9.3
