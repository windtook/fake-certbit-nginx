/etc/init.d/nginx start
/usr/bin/certbot --nginx -n --no-eff-email --email $EMAIL --agree-tos -d $DOMAIN
[ $? == 0 ] && /etc/init.d/nginx restart