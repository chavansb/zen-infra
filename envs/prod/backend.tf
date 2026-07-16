terraform {
  backend "s3" {
    bucket       = "zen-pharma-terraform-state-chavan"
    key          = "envs/prod/terraform.tfstate"
    encrypt      = true
    use_lockfile = true # S3 native locking — requires Terraform 1.10+, no DynamoDB needed
  }
}
