# IAC Serverless API

Basic infrastructure-as-code for a serverless API.

Artifacts:
- AWS ECR
- AWS Lambda

# Requirements
- Terraform CLI
- Docker
- AWS CLI

# How to use
1. Using `terraform.tfvars.template` as a guide, create `terraform.tfvars` and define values for deployment.
2. Run `terraform init`.
3. Run `terraform plan` and review the plan.
4. Run `terraform apply`.
