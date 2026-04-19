# Create bucket for Terraform state
aws s3 mb s3://pra64489 --region us-east-1

# Enable versioning for state history
aws s3api put-bucket-versioning \
  --bucket pra64489 \
  --versioning-configuration Status=Enabled

# Enable encryption
aws s3api put-bucket-encryption \
  --bucket pra64489 \
  --server-side-encryption-configuration '{
    "Rules": [{
      "ApplyServerSideEncryptionByDefault": {
        "SSEAlgorithm": "AES256"
      }
    }]
  }'