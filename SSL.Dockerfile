# build environment
FROM node:12.2.0-alpine as build
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json /app/package.json
RUN npm install --silent
RUN npm install @vue/cli@4.3.1 -g
COPY . /app
RUN npm run build

# production environment
FROM nginx:1.16.0-alpine
COPY --from=build /app/dist /usr/share/nginx/html
RUN apk add inotify-tools certbot openssl
WORKDIR /app
COPY /SSL/entrypoint.sh nginx-letsencrypt
COPY /SSL/certbot.sh certbot.sh
COPY /SSL/default.conf /etc/nginx/conf.d/default.conf
COPY /SSL/ssl-options/ /etc/ssl-options
RUN chmod +x nginx-letsencrypt && \
    chmod +x certbot.sh 
ENTRYPOINT ["./nginx-letsencrypt"]