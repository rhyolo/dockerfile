FROM registry.redhat.io/ubi7/ubi:latest

EXPOSE 8080

RUN mkdir /var/run/web/ && \
    echo "Hello dockerfile" > /var/run/web/index.html

CMD cd /var/run/web && python -m SimpleHTTPServer 8080
