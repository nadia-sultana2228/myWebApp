# Use the official NGINX image from Docker Hub
FROM nginx:latest

# Remove the default server definition
RUN rm /etc/nginx/conf.d/default.conf

# Expose port 80 for the web server
EXPOSE 80

# Start NGINX in the foreground
CMD ["nginx", "-g", "daemon off;"]
