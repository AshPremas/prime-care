FROM php:8.2-apache

# Install extensions for MySQL
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Enable Apache Rewrite module
RUN a2enmod rewrite

# Copy app files to web root
COPY . /var/www/html/

# Set correct permissions (optional, useful if file write needed)
RUN chown -R www-data:www-data /var/www/html

# Expose port 80
EXPOSE 80
