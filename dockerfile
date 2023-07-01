# Use an official PHP Docker image
FROM php:latest

# Set the working directory within the Docker image
WORKDIR /var/www/html

# Copy the application files into the Docker image
COPY . /var/www/html

# Expose port 80 for HTTP
EXPOSE 80

# Install MySQL extension for PHP
RUN docker-php-ext-install mysqli

# Start the PHP development server
CMD ["php", "-S", "0.0.0.0:80"]

