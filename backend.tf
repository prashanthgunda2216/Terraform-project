terraform {
  backend "s3" {
    bucket       = "pra64489"  # Your bucket name
    key          = "terraform/state/main/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = true  # S3 Native Locking (Terraform 1.13+)
    encrypt      = true
  }
}