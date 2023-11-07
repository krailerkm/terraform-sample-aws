# Provider configuration

provider "aws" {
  region = var.aws_region
  profile = var.aws_profile  
  
  # Alternatively, you can hardcode the credentials, but this is not recommended due to security concerns:
  # access_key = "your_access_key"
  # secret_key = "your_secret_key"
}