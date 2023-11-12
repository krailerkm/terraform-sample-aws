#terraform {
#  backend "s3" {
#    bucket         = "ecvth-terraform-backend" # Your S3 bucket name
#    key            = "terraform.tfstate" # Path pattern for workspace-specific state files
#    region         = "ap-northeast-2" # Region of your S3 bucket
#    dynamodb_table = "ecvth-terraform-lock-table" # Your DynamoDB table name
#    encrypt        = true # Enable encryption
#    profile        = "default" # AWS profile, if needed
#  }
#}
