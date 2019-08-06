FROM sismics/apache2:latest
RUN apt-get update && apt-get install -y wget && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN wget -q https://packages.sury.org/php/apt.gpg -O- | apt-key add -
RUN apt-get update && apt-get install -y git ca-certificates apt-transport-https lsb-release curl nano unzip && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN curl -s https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer
# TODO: add website

RUN rm -fr /var/www/html/*
ADD www /var/www/html
