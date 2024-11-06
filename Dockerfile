FROM nginx:alpine

# Copy the hello.txt file from repo to Nginx web root
COPY hello.txt /var/www/
# Configure Nginx to serve from /var/www instead of default /usr/share/nginx/html
RUN sed -i 's|root   /usr/share/nginx/html|root   /var/www|g' /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]