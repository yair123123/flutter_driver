FROM cirrusci/flutter:3.19.6 AS build

WORKDIR /app

COPY pubspec.yaml pubspec.lock ./
RUN flutter pub get

COPY . .
RUN flutter build web --release

FROM nginx:alpine

RUN rm /etc/nginx/nginx.conf && rm /etc/nginx/conf.d/default.conf

RUN mkdir -p /home/temp/client_body /home/temp/proxy /home/temp/fastcgi /home/temp/uwsgi /home/temp/scgi && \
    chmod -R 777 /home/temp

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

COPY --from=build /app/build/web /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
