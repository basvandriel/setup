#!/bin/bash
# This file will install all my needed dependencies

# Install PHP dependencies
sudo apt install php7.4 php7.4-curl php7.4-xml php7.4-mbstring php7.4-gd php7.4-mysql php-cli unzip

# Make sure you’re in your home directory, then retrieve the installer using curl:
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php

# Next, we’ll verify that the downloaded installer matches the SHA-384 hash for the latest installer found on the Composer Public Keys / Signatures page. 
HASH=`curl -sS https://composer.github.io/installer.sig`

# Now execute the following PHP code, as provided in the Composer download page, to verify that the installation script is safe to run
echo $HASH
php -r "if (hash_file('SHA384', 'composer-setup.php') === '$HASH') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

# To install composer globally, use the following command which will download and install Composer as a system-wide command named composer, under /usr/local/bin:
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# Cleanup
sudo rm ~/composer-setup.php