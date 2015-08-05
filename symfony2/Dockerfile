FROM debian:wheezy
MAINTAINER Pierre Brun <pbrun.pro+github@gmail.com>

ENV RELEASE wheezy
ENV DEBIAN_FRONTEND noninteractive
ENV SHELL /bin/bash

RUN apt-get update;apt-get -y upgrade

# Install apache, PHP, and supplimentary programs. curl and lynx-cur are for debugging the container.
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install apache2 libapache2-mod-php5 php5-mysql php5-gd php-pear php-apc php5-curl curl php5-adodb php-gettext git acl php5-mcrypt php5-curl jpegoptim php5-gd php5-memcached php5-intl rubygems build-essential

# Enable apache mods and uglify*
RUN curl --silent --location https://deb.nodesource.com/setup_0.12 | bash -;DEBIAN_FRONTEND=noninteractive apt-get install --yes nodejs
RUN a2enmod php5;a2enmod rewrite;npm install -g bower;npm install -g uglify-js;npm install -g uglifycss;gem install capifony

COPY scripts/run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 80

CMD ["/run.sh"]

VOLUME ["/var/www"]