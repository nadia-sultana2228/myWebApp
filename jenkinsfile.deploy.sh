# deploy.sh
#!/bin/bash

# Define deployment directory
DEPLOY_DIR="/var/www/html"

# Remove old files
sudo rm -rf $DEPLOY_DIR/*

# Copy new files from Jenkins workspace
sudo cp -r * $DEPLOY_DIR/

# Restart Nginx
sudo systemctl restart nginx

echo "Deployment complete!"

