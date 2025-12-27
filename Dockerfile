# Use nginx web server
FROM nginx:latest

# Copy website files to nginx default folder
FROM nginx:latest

COPY . /usr/share/nginx/html/

EXPOSE 80


# Expose port 80
EXPOSE 80
