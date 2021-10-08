variable "project_key" {
  description = "Project name or key."
}

variable "s3_bucket_name" {
  description = "The name of the bucket"
  default     = "iac-serverless-frontend"
}

variable "s3_bucket_env" {
  description = "The AWS S3 bucket environment name."
}

variable "aws_region" {
  description = "The AWS region to create resources in."
  default     = "ap-southeast-2"
}

variable "aws_access_key" {
  description = "The AWS access key."
}

variable "aws_secret_key" {
  description = "The AWS secret key."
}
