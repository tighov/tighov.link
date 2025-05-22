#!/bin/bash

CDN_DISTRIBUTION_ID=E1NP7SCKKPDT8J
aws cloudfront create-invalidation --distribution-id $CDN_DISTRIBUTION_ID --paths "/*"
