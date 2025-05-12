FROM nginx:alpine
# מחק את הקונפיגים הקיימים
RUN rm /etc/nginx/nginx.conf && rm /etc/nginx/conf.d/default.conf

# צור את תיקיית הקבצים הזמניים עם הרשאות
RUN mkdir -p /home/temp/client_body /home/temp/proxy /home/temp/fastcgi /home/temp/uwsgi /home/temp/scgi && \
    chmod -R 777 /home/temp

# העתק את הקבצים החדשים
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

# העתק את Flutter Web
COPY build/web /usr/share/nginx/html
