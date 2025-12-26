# Use nginx web server
FROM nginx:latest

# Copy website files to nginx default folder
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80
