# IAC Elastic Kubernetes Service Cluster

Basic infrastructure-as-code for EKS Cluster.

Artifacts:
- AWS EKS

# Requirements
- Terraform CLI
- Kubernetes
- AWS CLI

# How to use
1. Using `terraform.tfvars.template` as a guide, create `terraform.tfvars` and define values for deployment.
2. Run `terraform init`.
3. Run `terraform plan` and review the plan.
4. Run `terraform apply`.
