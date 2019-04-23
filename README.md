
A small production environment for laravel on a docker host. 


## Set up 
- Clone repo and cd into
- Set up `.env` file with URL and LABEL (for træfik)

## laravel app set up 
- set up a new or existing project in the `<root>/laraapp` folder. 
- set up `laraapp/.env` file (database, etc)
- blank database if needed ready a sqlite3 database container 
```
touch additional/database.sqlite
```

## Start the Conainter
```
docker-compose up -d` to build
```

## Post Install (and container restart)
After the container is up, run the post install script that will install needed packages (vim, git, curl, mod_rewrite), install composer, run composer install/update, and finally run the php artisan migration to build out the database. Because this installs apache mod_rewrite, Apache2 will have to be restarted. Explore the post-install.sh for more details. 
```
docker-compose exec php-apache bash /additional/post-install.sh
docker-compose restart
```

## quick fix
- Permissions: If you get a 500 error on first go, run the following to map file user and groups back to `www-data`
```
docker-compose exec php-apache bash /additional/fix.permission.sh
```

## Errata
- The `/additional/` folder contains extra pieces. To start, 000-default.conf is overwritten so that the Doc Root becomes /var/www/html/public
