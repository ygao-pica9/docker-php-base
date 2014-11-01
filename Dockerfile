FROM tutum/centos:centos6

MAINTAINER pica9

# add additional repos
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
RUN rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

# install apache, php5
RUN yum install -y --enablerepo=remi --enablerepo=remi-php55 \
    httpd \
    gcc \
    php \
    php-common \
    php-pecl-apc \
    php-cli \
    php-pear \
    php-pdo \
    php-pgsql \
    php-pecl-memcache \
    php-pecl-memcached \
    php-gd \
    php-mbstring \
    php-mcrypt \
    php-xml \
    php-devel \
    php-soap \
    php-pecl-http1 \
    zlib-devel \
    curl \
    libcurl-devel \
    git \
    java-1.7.0-openjdk \
    npm

RUN npm install -g bower

#install composer
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/bin/composer
