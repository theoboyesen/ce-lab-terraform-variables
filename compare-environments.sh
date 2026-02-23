#!/bin/bash

echo "=== Development Environment ==="
aws s3api get-bucket-versioning --bucket theoboyesen-dev-bucket
aws s3api get-bucket-tagging --bucket theoboyesen-dev-bucket

echo ""
echo "=== Production Environment ==="
aws s3api get-bucket-versioning --bucket theoboyesen-prod-bucket
aws s3api get-bucket-tagging --bucket theoboyesen-prod-bucket

