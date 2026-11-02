FROM php:8.1-apache

# Apache rewrite module enable করুন (CodeIgniter রাউটিংয়ের জন্য জরুরি)
RUN a2enmod rewrite

# প্রজেক্টের সব ফাইল সার্ভারের রুট ফোল্ডারে কপি করুন
COPY . /var/www/html/

# ডেটাবেস ব্যবহারের জন্য প্রয়োজনীয় এক্সটেনশন ইনস্টল করুন
RUN docker-php-ext-install mysqli pdo pdo_mysql
