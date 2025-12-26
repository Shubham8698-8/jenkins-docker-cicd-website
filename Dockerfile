# use nginx web server
FROM nginx:letest
copy index.html /usr/shear/nginx/html/index.html
EXPOSE 80
