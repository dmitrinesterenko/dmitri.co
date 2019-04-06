#!/bin/bash
aws s3 sync ./public/ s3://dmitri.co/
aws s3api put-object-acl --bucket dmitri.co --acl public-read --key index.html
aws cloudfront create-invalidation --distribution-id E28PFOGKMTLTG6 --paths
/index.html /app.css /app.js /vendor.js
