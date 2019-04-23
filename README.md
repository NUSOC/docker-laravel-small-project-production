
A small production environment for laravel. 


## Set up
- Clone repo, rename folder, and cd into
- Set up `.env` file with URL and LABEL (for træfik)

## laravel app set up 
- set up a new or existing project in the `<root>/laraapp` folder. 
- set up `laraapp/.env` file (database, etc)
- blank database if needed `touch laraapp/database.sql` to have a sqlite3 database container ready

## Up
- `docker-compose up` to build

## quick fix
- Permissions: If you get a 500 error on first go, run the following to map file user and groups back to `www-data`
```
docker-compose exec php-apache bash /additional/fix.permission.sh
```

## Errata
- The `/additional/` folder contains extra pieces. To start, 000-default.conf is overwritten so that the Doc Root becomes /var/www/html/public
