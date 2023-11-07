# terraform-sample-aws
 Demo for terraform on aws
 
main.tf             # Main configuration file that calls other modules
variables.tf        # Definitions of variables used across the configurations
outputs.tf          # Output values after Terraform apply
providers.tf        # Provider configuration
versions.tf         # Required Terraform and provider versions
modules/
├── vpc/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── ec2/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── alb/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── rds/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
├── sns/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
└── cloudwatch/
    ├── main.tf
    ├── variables.tf
    └── outputs.tf
