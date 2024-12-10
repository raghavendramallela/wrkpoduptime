#!/bin/sh

# Print a message indicating the startup delay
echo "Waiting for 2 minutes before starting Nginx..."

# Sleep for 2 minutes (120 seconds)
sleep 120

# Start Nginx
echo "Starting Nginx after 2-minute delay"
/usr/local/openresty/bin/openresty -g "daemon off;"
