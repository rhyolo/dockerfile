FROM registry.redhat.io/ubi7/ubi:latest

EXPOSE 8080

RUN echo "Hello world" > /var/run/web/index.html

CMD cd /var/run/web && python -m SimpleHTTPServer 8080
