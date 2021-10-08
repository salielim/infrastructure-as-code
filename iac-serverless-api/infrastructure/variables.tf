variable "project_key" {
  description = "Project name or key."
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
