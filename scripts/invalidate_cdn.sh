#!/bin/bash

CDN_DISTRIBUTION_ID=E3VZIDXD1BB580
aws cloudfront create-invalidation --distribution-id $CDN_DISTRIBUTION_ID --paths "/*"
