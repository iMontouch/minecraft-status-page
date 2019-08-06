FROM sismics/apache2:latest

RUN rm -fr /var/www/html/*
ADD www /var/www/html
