# Use the official PHP image as base
FROM php:8.0-apache

# Install MySQL extension for PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy the application files into the container
COPY . /var/www/html

# Set the working directory
WORKDIR /var/www/html

# Expose port 80 for web server
EXPOSE 80

# Start PHP built-in web server
CMD ["apache2-foreground"]
