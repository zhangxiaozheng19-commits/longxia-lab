FROM nginx:alpine
COPY . /usr/share/nginx/html/
RUN mkdir -p /opt/application
COPY run.sh /opt/application/run.sh
RUN chmod +x /opt/application/run.sh
EXPOSE 80
CMD ["/opt/application/run.sh"]
