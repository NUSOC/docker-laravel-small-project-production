apt update 
apt install curl wget vim -y

# install composer
sh curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# redo conf file
cp /additional/000-default.conf /etc/apache2/sites-available/000-default.conf 

#restart apache2
service apache2 restart
