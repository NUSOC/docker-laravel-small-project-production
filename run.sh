
docker-compose up -d
docker-compose exec php-apache apt update 
docker-compose exec php-apache apt install curl wget vim
docker-compose exec php-apache sh curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
docker-compose exec php-apache cp /additional/000-default.conf /etc/apache2/sites-available/000-default.conf 
docker-compose exec php-apache service apache2 restart
docker-compose up -d
