#!/bin/bash

CDN_DISTRIBUTION_ID=EQGDHJNVU8W3X
aws cloudfront create-invalidation --distribution-id $CDN_DISTRIBUTION_ID --paths "/*"
