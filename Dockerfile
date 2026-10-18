# Use a lightweight Nginx image to serve static files
FROM nginx:alpine

# Copy all your project files into Nginx's web root directory
COPY . /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]
