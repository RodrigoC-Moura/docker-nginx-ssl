# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Remove the default Nginx configuration file
RUN rm /etc/nginx/conf.d/default.conf

# Copy the custom Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/

# Copy SSL certificate and key
COPY ssl/server.crt /etc/nginx/ssl/
COPY ssl/server.key /etc/nginx/ssl/

# Copy HTML files to the default Nginx HTML directory
COPY html/ /usr/share/nginx/html/
