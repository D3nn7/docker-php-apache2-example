FROM php:7-apache

COPY 000-default.conf /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite

# Copy application source
COPY src /var/www
RUN chown -R www-data:www-data /var/www

# Expose Port for the Application
EXPOSE 80

# LABEL about the custom image
LABEL maintainer="danny@schapeit.com"
LABEL version="0.1"
LABEL description="Test image for Dockerfile"
