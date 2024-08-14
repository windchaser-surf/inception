wp core download --allow-root

mv /var/www/html/wordpress/wp-config-sample.php /var/www/html/wordpress/wp-config.php 

wp config set DB_NAME $DB_NAME --allow-root
wp config set DB_USER $DB_USER --allow-root
wp config set DB_PASSWORD $DB_PW --allow-root
wp config set DB_HOST $DB_HOST --allow-root
wp config set WP_CACHE true --allow-root
wp core install --url=fwechsle.42.fr --title=$WP_TITLE --admin_user=$WP_ADMIN --admin_password=$WP_ADMIN_PW --admin_email=$WP_ADMIN_EMAIL --allow-root
wp user create $WP_USER $WP_EMAIL --user_pass=$WP_PW --role=$WP_ROLE --allow-root
wp config set WP_REDIS_HOST redis --allow-root
wp config set WP_REDIS_PORT 6379 --allow-root

wp plugin install redis-cache --activate --allow-root

wp redis enable --allow-root

php-fpm7.4 -F
