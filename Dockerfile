# Use the official NGINX image from Docker Hub
FROM nginx:latest

# Remove the default server definition
RUN rm /etc/nginx/conf.d/default.conf

# Copy your website's content into the container (use the appropriate path to your web files)
COPY ./html /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
