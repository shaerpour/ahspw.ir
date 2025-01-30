FROM nginx:alpine

WORKDIR /usr/share/nginx/html

COPY conf.d/default.conf /etc/nginx/conf.d/default.conf

COPY index.* shaerpour.txt .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
