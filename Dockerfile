FROM amazonlinux

WORKDIR /tmp

RUN yum -y install python3 aws-cli tree && \
    curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    pip3 install certbot-dns-route53

COPY run.sh /tmp

CMD ["./run.sh"]
