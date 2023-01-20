FROM wordpress:5-fpm

# Install wp-cli
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
RUN curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x /bin/wp-cli.phar
RUN cd /bin && mv wp-cli.phar wp