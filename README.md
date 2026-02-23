# Lab M4.02 - Terraform Variables & Parameterization

## Overview
Multi-environment S3 bucket deployment using Terraform variables.

## Environments
- **Dev:** theoboyesen-dev-bucket (no versioning)
- **Prod:** theoboyesen-prod-bucket (versioning enabled)

## Usage

### Deploy Dev
\`\`\`bash
terraform apply -var-file="dev.tfvars"
\`\`\`

### Deploy Prod
\`\`\`bash
terraform workspace select prod
terraform apply -var-file="prod.tfvars"
\`\`\`

## Variables
- `environment`: dev/staging/prod
- `bucket_prefix`: Bucket name prefix
- `enable_versioning`: Enable S3 versioning
- `aws_region`: AWS region
- `tags`: Resource tags

## Outputs
- `bucket_id`: Bucket name
- `bucket_arn`: Bucket ARN
- `versioning_enabled`: Versioning status
