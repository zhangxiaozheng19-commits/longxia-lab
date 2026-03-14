FROM nginx:alpine
COPY . /usr/share/nginx/html/


RUN sed -i 's/listen       80;/listen       9000;/' /etc/nginx/conf.d/default.conf

RUN mkdir -p /opt/application
COPY run.sh /opt/application/run.sh
RUN chmod +x /opt/application/run.sh

EXPOSE 9000
CMD ["/opt/application/run.sh"]
