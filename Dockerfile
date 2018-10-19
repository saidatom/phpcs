FROM php:7.2-cli
MAINTAINER Alexandre Dias <alex.jm.dias@gmail.com>

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get install -y \
    curl \
    git \
  && rm -r /var/lib/apt/lists/*

RUN echo "memory_limit=1024M" > $PHP_INI_DIR/conf.d/memory-limit.ini

RUN echo "date.timezone=${PHP_TIMEZONE:-UTC}" > $PHP_INI_DIR/conf.d/date_timezone.ini

RUN php --version

RUN curl -L https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar -o /usr/local/bin/phpcs

RUN curl -L https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar -o /usr/local/bin/phpcbf

RUN curl -L http://static.phpmd.org/php/latest/phpmd.phar -o /usr/local/bin/phpmd

RUN curl -L https://cs.sensiolabs.org/download/php-cs-fixer-v2.phar -o /usr/local/bin/php-cs-fixer

RUN chmod u+x /usr/local/bin/phpcs

RUN chmod u+x /usr/local/bin/phpcbf

RUN chmod u+x /usr/local/bin/phpmd

RUN chmod u+x /usr/local/bin/php-cs-fixer
