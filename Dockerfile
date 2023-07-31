# Use a lightweight web server image as the base image
FROM nginx:alpine

# Copy your HTML files to the web server's document root
COPY . /usr/share/nginx/html

# Expose port 80 to allow incoming HTTP traffic
EXPOSE 80

# Start the web server when the container runs
CMD ["nginx", "-g", "daemon off;"]
