#!/usr/bin/env bash

echo -e '\e[92m## Update the system ##\e[0m'
apt update
DEBIAN_FRONTEND=noninteractive apt-get -y -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" full-upgrade
apt -yq autoremove

echo -e '\e[92m## Install NodeJs 12 ##\e[0m'

wget -qO- https://deb.nodesource.com/setup_12.x | -E bash -
apt install -yq nodejs

echo -e '\e[92m## Install Nginx ##\e[0m'

apt install -yq nginx

echo -e '\e[92m## Add index.html ##\e[0m'

if ! [ -L /var/www ]; then
  touch /var/www/html/index.html
  echo '<!DOCTYPE html><html><body>B3 Devops - TP1</body></html>' > /var/www/html/index.html
fi

export DEBIAN_FRONTEND=dialog
echo -e '\e[92m## CONFIGURATION FINISHED !! ##\e[0m'
