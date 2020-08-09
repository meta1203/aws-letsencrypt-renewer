#!/bin/bash

certbot certonly -d ${SITE} -d *.${SITE} --dns-route53 --logs-dir /tmp/letsencrypt/log/ --config-dir /tmp/letsencrypt/config/ --work-dir /tmp/letsencrypt/work/ -m ${EMAIL} --agree-tos --non-interactive --server https://acme-v02.api.letsencrypt.org/directory

tree /tmp/letsencrypt/config/
aws s3 cp /tmp/letsencrypt/config/live/${SITE}/fullchain.pem s3://${S3_PUBLIC_KEY}
aws s3 cp /tmp/letsencrypt/config/live/${SITE}/privkey.pem s3://${S3_PRIVATE_KEY}
