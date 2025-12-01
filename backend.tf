terraform {
  backend "s3" {
    bucket = "vpc-terraform-state-file-bucket"
    key    = "eks-prod/terraform.tfstate"
    region = "us-east-1"
    # 4. The DynamoDB table for locking
    # dynamodb_table = "terraform-lock-table"
    # 5. Encrypt state at rest
    encrypt = true
  }
}