# Use official PHP image with Apache
FROM php:8.1-apache

# Copy all your project files to the web server folder inside the container
COPY . /var/www/html/

# Enable Apache mod_rewrite (if you need .htaccess or pretty URLs)
RUN a2enmod rewrite

# Expose port 80 for web traffic
EXPOSE 80
