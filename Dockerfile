# use nginx web server
FROM nginx:letest
COPY index.html /usr/shear/nginx/html/index.html
EXPOSE 80
