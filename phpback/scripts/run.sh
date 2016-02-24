#!/bin/bash

exec /usr/sbin/apache2ctl -D FOREGROUND

curl -X POST -d "hostname=$MYSQL_PORT_3306_TCP_ADDR:$MYSQL_PORT_3306_TCP_PORT&username=$MYSQL_USER&password=$MYSQL_PASSWORD&database=$MYSQL_NAME&adminname=$APP_ADMIN_EMAIL&adminemail=$APP_ADMIN_EMAIL&adminpass=$APP_ADMIN_PWD&adminrpass=$APP_ADMIN_PWD" http://127.0.0.1/install1.php --header "Content-Type:text/html"
curl -X POST -d "title=$APP_TITLE&mainmail=$APP_ADMIN_EMAIL&rpublic=$APP_CAPTCHA_PUBLIC&rprivate=$APP_CAPTCHA_PRIVATE&smtp-host=$APP_SMTP_HOST&smtp-user=$APP_SMTP_USER&smtp-password=$APP_SMTP_PWD&smtp-port=$APP_SMTP_PORT" http://127.0.0.1/install2.php --header "Content-Type:text/html"

rm -rf /var/www/install